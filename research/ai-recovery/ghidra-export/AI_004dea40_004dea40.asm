; J460 NPC AI 0x004dea40 AI_004dea40
; types=861
; identities=861.0.0
; entry=004dea40
004dea40  53                        PUSH EBX
004dea41  8bdc                      MOV EBX,ESP
004dea43  83ec08                    SUB ESP,0x8
004dea46  83e4f8                    AND ESP,0xfffffff8
004dea49  83c404                    ADD ESP,0x4
004dea4c  55                        PUSH EBP
004dea4d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004dea50  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004dea54  8bec                      MOV EBP,ESP
004dea56  6aff                      PUSH -0x1
004dea58  68a03aaf00                PUSH 0xaf3aa0
004dea5d  64a100000000              MOV EAX,FS:[0x0]
004dea63  50                        PUSH EAX
004dea64  53                        PUSH EBX
004dea65  83ec70                    SUB ESP,0x70
004dea68  56                        PUSH ESI
004dea69  57                        PUSH EDI
004dea6a  a1b493bf00                MOV EAX,[0x00bf93b4]
004dea6f  33c5                      XOR EAX,EBP
004dea71  50                        PUSH EAX
004dea72  8d45f4                    LEA EAX,[EBP + -0xc]
004dea75  64a300000000              MOV FS:[0x0],EAX
004dea7b  8bf9                      MOV EDI,ECX
004dea7d  a17816c700                MOV EAX,[0x00c71678]
004dea82  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004dea8a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004dea90  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004dea93  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004dea9b  2bf0                      SUB ESI,EAX
004dea9d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004deaa3  8975e8                    MOV dword ptr [EBP + -0x18],ESI
004deaa6  85c0                      TEST EAX,EAX
004deaa8  0f84c3010000              JZ 0x004dec71
004deaae  83f803                    CMP EAX,0x3
004deab1  0f85b0020000              JNZ 0x004ded67
004deab7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004deabb  740d                      JZ 0x004deaca
004deabd  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004deac4  0f85b0000000              JNZ 0x004deb7a
004deaca  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004dead0  83f805                    CMP EAX,0x5
004dead3  7521                      JNZ 0x004deaf6
004dead5  8b07                      MOV EAX,dword ptr [EDI]
004dead7  8d4d80                    LEA ECX,[EBP + -0x80]
004deada  c787c00b000006000000      MOV dword ptr [EDI + 0xbc0],0x6
004deae4  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
004deae7  e88471f5ff                CALL 0x00435c70
004deaec  50                        PUSH EAX
004deaed  8bcf                      MOV ECX,EDI
004deaef  ffd2                      CALL EDX
004deaf1  e971020000                JMP 0x004ded67
004deaf6  8b0c85ac06b600            MOV ECX,dword ptr [EAX*0x4 + 0xb606ac]
004deafd  40                        INC EAX
004deafe  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004deb04  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004deb07  894de4                    MOV dword ptr [EBP + -0x1c],ECX
004deb0a  85f6                      TEST ESI,ESI
004deb0c  0f84c4000000              JZ 0x004debd6
004deb12  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004deb16  8bc6                      MOV EAX,ESI
004deb18  7206                      JC 0x004deb20
004deb1a  8b06                      MOV EAX,dword ptr [ESI]
004deb1c  0f1f4000                  NOP dword ptr [EAX]
004deb20  8a10                      MOV DL,byte ptr [EAX]
004deb22  3a11                      CMP DL,byte ptr [ECX]
004deb24  751a                      JNZ 0x004deb40
004deb26  84d2                      TEST DL,DL
004deb28  7412                      JZ 0x004deb3c
004deb2a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004deb2d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004deb30  750e                      JNZ 0x004deb40
004deb32  83c002                    ADD EAX,0x2
004deb35  83c102                    ADD ECX,0x2
004deb38  84d2                      TEST DL,DL
004deb3a  75e4                      JNZ 0x004deb20
004deb3c  33c0                      XOR EAX,EAX
004deb3e  eb05                      JMP 0x004deb45
004deb40  1bc0                      SBB EAX,EAX
004deb42  83c801                    OR EAX,0x1
004deb45  85c0                      TEST EAX,EAX
004deb47  0f8584000000              JNZ 0x004debd1
004deb4d  384634                    CMP byte ptr [ESI + 0x34],AL
004deb50  7428                      JZ 0x004deb7a
004deb52  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004deb58  8d7748                    LEA ESI,[EDI + 0x48]
004deb5b  751d                      JNZ 0x004deb7a
004deb5d  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004deb60  6a01                      PUSH 0x1
004deb62  51                        PUSH ECX
004deb63  8bce                      MOV ECX,ESI
004deb65  e866baf2ff                CALL 0x0040a5d0
004deb6a  84c0                      TEST AL,AL
004deb6c  740c                      JZ 0x004deb7a
004deb6e  8d4e30                    LEA ECX,[ESI + 0x30]
004deb71  e83ab6f2ff                CALL 0x0040a1b0
004deb76  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004deb7a  33f6                      XOR ESI,ESI
004deb7c  3975e8                    CMP dword ptr [EBP + -0x18],ESI
004deb7f  0f8ee2010000              JLE 0x004ded67
004deb85  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004deb8b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004deb90  40                        INC EAX
004deb91  898710040000              MOV dword ptr [EDI + 0x410],EAX
004deb97  e8c4032100                CALL 0x006eef60
004deb9c  33d2                      XOR EDX,EDX
004deb9e  b903000000                MOV ECX,0x3
004deba3  f7f1                      DIV ECX
004deba5  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004debab  85d2                      TEST EDX,EDX
004debad  7507                      JNZ 0x004debb6
004debaf  40                        INC EAX
004debb0  898710040000              MOV dword ptr [EDI + 0x410],EAX
004debb6  83f823                    CMP EAX,0x23
004debb9  7e0b                      JLE 0x004debc6
004debbb  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004debc1  83f905                    CMP ECX,0x5
004debc4  7c15                      JL 0x004debdb
004debc6  46                        INC ESI
004debc7  3b75e8                    CMP ESI,dword ptr [EBP + -0x18]
004debca  7cc4                      JL 0x004deb90
004debcc  e996010000                JMP 0x004ded67
004debd1  8d7748                    LEA ESI,[EDI + 0x48]
004debd4  eb87                      JMP 0x004deb5d
004debd6  8d7748                    LEA ESI,[EDI + 0x48]
004debd9  eb85                      JMP 0x004deb60
004debdb  8b0c8d5c06b600            MOV ECX,dword ptr [ECX*0x4 + 0xb6065c]
004debe2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004debec  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004debef  894de4                    MOV dword ptr [EBP + -0x1c],ECX
004debf2  85f6                      TEST ESI,ESI
004debf4  7476                      JZ 0x004dec6c
004debf6  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004debfa  8bc6                      MOV EAX,ESI
004debfc  7202                      JC 0x004dec00
004debfe  8b06                      MOV EAX,dword ptr [ESI]
004dec00  8a10                      MOV DL,byte ptr [EAX]
004dec02  3a11                      CMP DL,byte ptr [ECX]
004dec04  751a                      JNZ 0x004dec20
004dec06  84d2                      TEST DL,DL
004dec08  7412                      JZ 0x004dec1c
004dec0a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004dec0d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004dec10  750e                      JNZ 0x004dec20
004dec12  83c002                    ADD EAX,0x2
004dec15  83c102                    ADD ECX,0x2
004dec18  84d2                      TEST DL,DL
004dec1a  75e4                      JNZ 0x004dec00
004dec1c  33c0                      XOR EAX,EAX
004dec1e  eb05                      JMP 0x004dec25
004dec20  1bc0                      SBB EAX,EAX
004dec22  83c801                    OR EAX,0x1
004dec25  85c0                      TEST EAX,EAX
004dec27  753e                      JNZ 0x004dec67
004dec29  384634                    CMP byte ptr [ESI + 0x34],AL
004dec2c  0f8435010000              JZ 0x004ded67
004dec32  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004dec38  8d7748                    LEA ESI,[EDI + 0x48]
004dec3b  0f8526010000              JNZ 0x004ded67
004dec41  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004dec44  6a01                      PUSH 0x1
004dec46  51                        PUSH ECX
004dec47  8bce                      MOV ECX,ESI
004dec49  e882b9f2ff                CALL 0x0040a5d0
004dec4e  84c0                      TEST AL,AL
004dec50  0f8411010000              JZ 0x004ded67
004dec56  8d4e30                    LEA ECX,[ESI + 0x30]
004dec59  e852b5f2ff                CALL 0x0040a1b0
004dec5e  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004dec62  e900010000                JMP 0x004ded67
004dec67  8d7748                    LEA ESI,[EDI + 0x48]
004dec6a  ebd5                      JMP 0x004dec41
004dec6c  8d7748                    LEA ESI,[EDI + 0x48]
004dec6f  ebd3                      JMP 0x004dec44
004dec71  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004dec7b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004dec85  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004dec8f  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004dec95  898734030000              MOV dword ptr [EDI + 0x334],EAX
004dec9b  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004deca1  898738030000              MOV dword ptr [EDI + 0x338],EAX
004deca7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004decaa  85f6                      TEST ESI,ESI
004decac  744d                      JZ 0x004decfb
004decae  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004decb2  8bc6                      MOV EAX,ESI
004decb4  7202                      JC 0x004decb8
004decb6  8b06                      MOV EAX,dword ptr [ESI]
004decb8  b9e804b600                MOV ECX,0xb604e8
004decbd  0f1f00                    NOP dword ptr [EAX]
004decc0  8a10                      MOV DL,byte ptr [EAX]
004decc2  3a11                      CMP DL,byte ptr [ECX]
004decc4  751a                      JNZ 0x004dece0
004decc6  84d2                      TEST DL,DL
004decc8  7412                      JZ 0x004decdc
004decca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004deccd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004decd0  750e                      JNZ 0x004dece0
004decd2  83c002                    ADD EAX,0x2
004decd5  83c102                    ADD ECX,0x2
004decd8  84d2                      TEST DL,DL
004decda  75e4                      JNZ 0x004decc0
004decdc  33c0                      XOR EAX,EAX
004decde  eb05                      JMP 0x004dece5
004dece0  1bc0                      SBB EAX,EAX
004dece2  83c801                    OR EAX,0x1
004dece5  85c0                      TEST EAX,EAX
004dece7  7512                      JNZ 0x004decfb
004dece9  384634                    CMP byte ptr [ESI + 0x34],AL
004decec  742e                      JZ 0x004ded1c
004decee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004decf4  8d7748                    LEA ESI,[EDI + 0x48]
004decf7  7523                      JNZ 0x004ded1c
004decf9  eb03                      JMP 0x004decfe
004decfb  8d7748                    LEA ESI,[EDI + 0x48]
004decfe  6a01                      PUSH 0x1
004ded00  68e804b600                PUSH 0xb604e8
004ded05  8bce                      MOV ECX,ESI
004ded07  e8c4b8f2ff                CALL 0x0040a5d0
004ded0c  84c0                      TEST AL,AL
004ded0e  740c                      JZ 0x004ded1c
004ded10  8d4e30                    LEA ECX,[ESI + 0x30]
004ded13  e898b4f2ff                CALL 0x0040a1b0
004ded18  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004ded1c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004ded22  81f9804ec300              CMP ECX,0xc34e80
004ded28  742a                      JZ 0x004ded54
004ded2a  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
004ded31  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004ded34  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
004ded3b  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004ded3f  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
004ded47  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004ded4c  a1a84ec300                MOV EAX,[0x00c34ea8]
004ded51  894128                    MOV dword ptr [ECX + 0x28],EAX
004ded54  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004ded5a  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004ded61  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004ded67  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004ded6e  8db73c030000              LEA ESI,[EDI + 0x33c]
004ded74  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ded7c  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004ded84  8975d4                    MOV dword ptr [EBP + -0x2c],ESI
004ded87  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ded8f  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004ded97  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ded9f  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004deda3  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
004deda8  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004dedb0  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004dedb8  0f840f060000              JZ 0x004df3cd
004dedbe  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004dedc4  0f57c9                    XORPS XMM1,XMM1
004dedc7  f30f10048d4006b600        MOVSS XMM0,dword ptr [ECX*0x4 + 0xb60640]
004dedd0  0f2fc1                    COMISS XMM0,XMM1
004dedd3  0f8671010000              JBE 0x004def4a
004dedd9  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004deddf  2500000001                AND EAX,0x1000000
004dede4  83c800                    OR EAX,0x0
004dede7  0f855d010000              JNZ 0x004def4a
004deded  e86e012100                CALL 0x006eef60
004dedf2  660f6ec0                  MOVD XMM0,EAX
004dedf6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004dedfa  c1e81f                    SHR EAX,0x1f
004dedfd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004dee06  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004dee0c  f30f101c854006b600        MOVSS XMM3,dword ptr [EAX*0x4 + 0xb60640]
004dee15  660f5ac8                  CVTPD2PS XMM1,XMM0
004dee19  0f28d3                    MOVAPS XMM2,XMM3
004dee1c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004dee24  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004dee2c  f30f580d00a5ba00          ADDSS XMM1,dword ptr [0x00baa500]
004dee34  0f28c1                    MOVAPS XMM0,XMM1
004dee37  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004dee3f  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004dee47  f30f59d9                  MULSS XMM3,XMM1
004dee4b  f30f59d0                  MULSS XMM2,XMM0
004dee4f  f30f115de8                MOVSS dword ptr [EBP + -0x18],XMM3
004dee54  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004dee59  e802012100                CALL 0x006eef60
004dee5e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004dee64  6a00                      PUSH 0x0
004dee66  50                        PUSH EAX
004dee67  6a00                      PUSH 0x0
004dee69  57                        PUSH EDI
004dee6a  6840b6c700                PUSH 0xc7b640
004dee6f  56                        PUSH ESI
004dee70  6a16                      PUSH 0x16
004dee72  68e8030000                PUSH 0x3e8
004dee77  e894f52100                CALL 0x006fe410
004dee7c  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004dee81  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
004dee89  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004dee8e  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
004dee96  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004dee9c  8b0c8d8c06b600            MOV ECX,dword ptr [ECX*0x4 + 0xb6068c]
004deea3  89885c040000              MOV dword ptr [EAX + 0x45c],ECX
004deea9  898860040000              MOV dword ptr [EAX + 0x460],ECX
004deeaf  e8ac002100                CALL 0x006eef60
004deeb4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004deeba  6a00                      PUSH 0x0
004deebc  50                        PUSH EAX
004deebd  6a00                      PUSH 0x0
004deebf  6a00                      PUSH 0x0
004deec1  6840b6c700                PUSH 0xc7b640
004deec6  56                        PUSH ESI
004deec7  6a07                      PUSH 0x7
004deec9  68e8030000                PUSH 0x3e8
004deece  e83df52100                CALL 0x006fe410
004deed3  8bf0                      MOV ESI,EAX
004deed5  e886002100                CALL 0x006eef60
004deeda  8bce                      MOV ECX,ESI
004deedc  660f6ec0                  MOVD XMM0,EAX
004deee0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004deee4  c1e81f                    SHR EAX,0x1f
004deee7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004deef0  8b06                      MOV EAX,dword ptr [ESI]
004deef2  660f5ac8                  CVTPD2PS XMM1,XMM0
004deef6  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004deefe  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004def06  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004def0e  0f28c1                    MOVAPS XMM0,XMM1
004def11  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004def19  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004def21  f30f594de8                MULSS XMM1,dword ptr [EBP + -0x18]
004def26  f30f5945e4                MULSS XMM0,dword ptr [EBP + -0x1c]
004def2b  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004def33  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004def3b  ff500c                    CALL dword ptr [EAX + 0xc]
004def3e  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004def44  8db73c030000              LEA ESI,[EDI + 0x33c]
004def4a  833c8d7006b60000          CMP dword ptr [ECX*0x4 + 0xb60670],0x0
004def52  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
004def59  0f8e69030000              JLE 0x004df2c8
004def5f  90                        NOP
004def60  a17816c700                MOV EAX,[0x00c71678]
004def65  6a00                      PUSH 0x0
004def67  6a00                      PUSH 0x0
004def69  6aff                      PUSH -0x1
004def6b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004def71  8d45a8                    LEA EAX,[EBP + -0x58]
004def74  6aff                      PUSH -0x1
004def76  6855030000                PUSH 0x355
004def7b  81c118120000              ADD ECX,0x1218
004def81  50                        PUSH EAX
004def82  e8d9bff3ff                CALL 0x0041af60
004def87  837db420                  CMP dword ptr [EBP + -0x4c],0x20
004def8b  0f93c0                    SETNC AL
004def8e  807da800                  CMP byte ptr [EBP + -0x58],0x0
004def92  8845ef                    MOV byte ptr [EBP + -0x11],AL
004def95  753b                      JNZ 0x004defd2
004def97  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004def9d  85d2                      TEST EDX,EDX
004def9f  7405                      JZ 0x004defa6
004defa1  83c230                    ADD EDX,0x30
004defa4  eb05                      JMP 0x004defab
004defa6  ba18f6c700                MOV EDX,0xc7f618
004defab  8b4dac                    MOV ECX,dword ptr [EBP + -0x54]
004defae  85c9                      TEST ECX,ECX
004defb0  7419                      JZ 0x004defcb
004defb2  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
004defb5  83c1fc                    ADD ECX,-0x4
004defb8  2902                      SUB dword ptr [EDX],EAX
004defba  51                        PUSH ECX
004defbb  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004defbf  ff15dc87b100              CALL dword ptr [0x00b187dc]
004defc5  8a45ef                    MOV AL,byte ptr [EBP + -0x11]
004defc8  83c404                    ADD ESP,0x4
004defcb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004defd2  84c0                      TEST AL,AL
004defd4  0f85ee020000              JNZ 0x004df2c8
004defda  e881ff2000                CALL 0x006eef60
004defdf  0f57c0                    XORPS XMM0,XMM0
004defe2  f20f2ac0                  CVTSI2SD XMM0,EAX
004defe6  c1e81f                    SHR EAX,0x1f
004defe9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004deff2  660f5ac0                  CVTPD2PS XMM0,XMM0
004deff6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004deffe  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004df006  f30f58c0                  ADDSS XMM0,XMM0
004df00a  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004df00f  e84cff2000                CALL 0x006eef60
004df014  0f57c0                    XORPS XMM0,XMM0
004df017  f20f2ac0                  CVTSI2SD XMM0,EAX
004df01b  c1e81f                    SHR EAX,0x1f
004df01e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df027  660f5ac0                  CVTPD2PS XMM0,XMM0
004df02b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004df033  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004df038  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004df03d  e8fee4f3ff                CALL 0x0041d540
004df042  f30f5945dc                MULSS XMM0,dword ptr [EBP + -0x24]
004df047  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
004df04f  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004df053  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004df058  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004df05d  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004df062  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004df067  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004df06c  e8afe4f3ff                CALL 0x0041d520
004df071  f30f5945dc                MULSS XMM0,dword ptr [EBP + -0x24]
004df076  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004df07e  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
004df083  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
004df08b  f30f5cca                  SUBSS XMM1,XMM2
004df08f  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004df094  f30f5eca                  DIVSS XMM1,XMM2
004df098  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004df09d  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004df0a2  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004df0aa  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004df0b2  f30f5ec2                  DIVSS XMM0,XMM2
004df0b6  f30f2cd1                  CVTTSS2SI EDX,XMM1
004df0ba  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004df0c2  f30f2cc8                  CVTTSS2SI ECX,XMM0
004df0c6  85d2                      TEST EDX,EDX
004df0c8  7823                      JS 0x004df0ed
004df0ca  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004df0cd  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004df0d0  3bd0                      CMP EDX,EAX
004df0d2  7d19                      JGE 0x004df0ed
004df0d4  85c9                      TEST ECX,ECX
004df0d6  7815                      JS 0x004df0ed
004df0d8  8b75e0                    MOV ESI,dword ptr [EBP + -0x20]
004df0db  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
004df0de  8db73c030000              LEA ESI,[EDI + 0x33c]
004df0e4  7d07                      JGE 0x004df0ed
004df0e6  0fafc1                    IMUL EAX,ECX
004df0e9  03c2                      ADD EAX,EDX
004df0eb  eb03                      JMP 0x004df0f0
004df0ed  83c8ff                    OR EAX,0xffffffff
004df0f0  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004df0f3  50                        PUSH EAX
004df0f4  e807173100                CALL 0x007f0800
004df0f9  85c0                      TEST EAX,EAX
004df0fb  0f8eab000000              JLE 0x004df1ac
004df101  51                        PUSH ECX
004df102  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004df105  8d45c8                    LEA EAX,[EBP + -0x38]
004df108  c7042400008042            MOV dword ptr [ESP],0x42800000
004df10f  50                        PUSH EAX
004df110  8d45b8                    LEA EAX,[EBP + -0x48]
004df113  50                        PUSH EAX
004df114  e807f43300                CALL 0x0081e520
004df119  8bf0                      MOV ESI,EAX
004df11b  e840fe2000                CALL 0x006eef60
004df120  660f6ec0                  MOVD XMM0,EAX
004df124  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df128  c1e81f                    SHR EAX,0x1f
004df12b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df134  660f5ac0                  CVTPD2PS XMM0,XMM0
004df138  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004df140  f30f5905fca8ba00          MULSS XMM0,dword ptr [0x00baa8fc]
004df148  f30f5c0570a8ba00          SUBSS XMM0,dword ptr [0x00baa870]
004df150  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004df155  e806fe2000                CALL 0x006eef60
004df15a  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004df15f  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
004df164  660f6ec0                  MOVD XMM0,EAX
004df168  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df16c  c1e81f                    SHR EAX,0x1f
004df16f  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
004df174  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df17d  660f5ac8                  CVTPD2PS XMM1,XMM0
004df181  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004df189  f30f590dfca8ba00          MULSS XMM1,dword ptr [0x00baa8fc]
004df191  f30f5c0d70a8ba00          SUBSS XMM1,dword ptr [0x00baa870]
004df199  f30f580e                  ADDSS XMM1,dword ptr [ESI]
004df19d  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
004df1a0  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004df1a5  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
004df1aa  eb0f                      JMP 0x004df1bb
004df1ac  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
004df1b1  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004df1b6  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
004df1bb  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004df1bf  f30f5cd0                  SUBSS XMM2,XMM0
004df1c3  0f28c1                    MOVAPS XMM0,XMM1
004df1c6  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
004df1cb  f30f59c1                  MULSS XMM0,XMM1
004df1cf  0f28ca                    MOVAPS XMM1,XMM2
004df1d2  f30f59ca                  MULSS XMM1,XMM2
004df1d6  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004df1db  f30f58c1                  ADDSS XMM0,XMM1
004df1df  e86c68f5ff                CALL 0x00435a50
004df1e4  0f57c9                    XORPS XMM1,XMM1
004df1e7  0f2fc1                    COMISS XMM0,XMM1
004df1ea  7627                      JBE 0x004df213
004df1ec  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004df1f4  f30f5ec8                  DIVSS XMM1,XMM0
004df1f8  0f28c1                    MOVAPS XMM0,XMM1
004df1fb  f30f5945e4                MULSS XMM0,dword ptr [EBP + -0x1c]
004df200  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004df205  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004df20a  f30f59c1                  MULSS XMM0,XMM1
004df20e  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004df213  e848fd2000                CALL 0x006eef60
004df218  660f6ec0                  MOVD XMM0,EAX
004df21c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df220  c1e81f                    SHR EAX,0x1f
004df223  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df22c  660f5ac0                  CVTPD2PS XMM0,XMM0
004df230  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004df238  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
004df240  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
004df248  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004df24d  e80efd2000                CALL 0x006eef60
004df252  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
004df257  8d4dc0                    LEA ECX,[EBP + -0x40]
004df25a  660f6ec0                  MOVD XMM0,EAX
004df25e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df262  c1e81f                    SHR EAX,0x1f
004df265  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df26e  8d45c8                    LEA EAX,[EBP + -0x38]
004df271  50                        PUSH EAX
004df272  660f5ac8                  CVTPD2PS XMM1,XMM0
004df276  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004df27e  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
004df286  0f28c1                    MOVAPS XMM0,XMM1
004df289  f30f594de8                MULSS XMM1,dword ptr [EBP + -0x18]
004df28e  f30f5945e4                MULSS XMM0,dword ptr [EBP + -0x1c]
004df293  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
004df298  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004df29c  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
004df2a1  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
004df2a6  e86596ffff                CALL 0x004d8910
004df2ab  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004df2ae  83c404                    ADD ESP,0x4
004df2b1  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004df2b7  41                        INC ECX
004df2b8  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004df2bb  3b0c857006b600            CMP ECX,dword ptr [EAX*0x4 + 0xb60670]
004df2c2  0f8c98fcffff              JL 0x004def60
004df2c8  83bfc00b000004            CMP dword ptr [EDI + 0xbc0],0x4
004df2cf  0f8cf8000000              JL 0x004df3cd
004df2d5  e886fc2000                CALL 0x006eef60
004df2da  f30f100dc0adba00          MOVSS XMM1,dword ptr [0x00baadc0]
004df2e2  660f6ec0                  MOVD XMM0,EAX
004df2e6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df2ea  c1e81f                    SHR EAX,0x1f
004df2ed  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df2f6  660f5ac0                  CVTPD2PS XMM0,XMM0
004df2fa  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004df302  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
004df30a  f30f5cc8                  SUBSS XMM1,XMM0
004df30e  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
004df313  e848fc2000                CALL 0x006eef60
004df318  8bf0                      MOV ESI,EAX
004df31a  83e601                    AND ESI,0x1
004df31d  e83efc2000                CALL 0x006eef60
004df322  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004df328  83f601                    XOR ESI,0x1
004df32b  50                        PUSH EAX
004df32c  83c603                    ADD ESI,0x3
004df32f  8d873c030000              LEA EAX,[EDI + 0x33c]
004df335  56                        PUSH ESI
004df336  6a00                      PUSH 0x0
004df338  6840b6c700                PUSH 0xc7b640
004df33d  50                        PUSH EAX
004df33e  6a02                      PUSH 0x2
004df340  68e8030000                PUSH 0x3e8
004df345  e8d697f4ff                CALL 0x00428b20
004df34a  6a01                      PUSH 0x1
004df34c  8bf0                      MOV ESI,EAX
004df34e  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004df354  6a00                      PUSH 0x0
004df356  68ff000000                PUSH 0xff
004df35b  6aff                      PUSH -0x1
004df35d  8b16                      MOV EDX,dword ptr [ESI]
004df35f  51                        PUSH ECX
004df360  8bce                      MOV ECX,ESI
004df362  ff523c                    CALL dword ptr [EDX + 0x3c]
004df365  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
004df36a  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004df374  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
004df37c  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
004df386  83bfc00b000006            CMP dword ptr [EDI + 0xbc0],0x6
004df38d  753e                      JNZ 0x004df3cd
004df38f  e8ccfb2000                CALL 0x006eef60
004df394  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004df39a  6a00                      PUSH 0x0
004df39c  50                        PUSH EAX
004df39d  6a00                      PUSH 0x0
004df39f  57                        PUSH EDI
004df3a0  6840b6c700                PUSH 0xc7b640
004df3a5  8d873c030000              LEA EAX,[EDI + 0x33c]
004df3ab  50                        PUSH EAX
004df3ac  6a06                      PUSH 0x6
004df3ae  6a3d                      PUSH 0x3d
004df3b0  e85bf02100                CALL 0x006fe410
004df3b5  8bc8                      MOV ECX,EAX
004df3b7  8b10                      MOV EDX,dword ptr [EAX]
004df3b9  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
004df3c0  81886c01000000040000      OR dword ptr [EAX + 0x16c],0x400
004df3ca  ff520c                    CALL dword ptr [EDX + 0xc]
004df3cd  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004df3d0  64890d00000000            MOV dword ptr FS:[0x0],ECX
004df3d7  59                        POP ECX
004df3d8  5f                        POP EDI
004df3d9  5e                        POP ESI
004df3da  8be5                      MOV ESP,EBP
004df3dc  5d                        POP EBP
004df3dd  8be3                      MOV ESP,EBX
004df3df  5b                        POP EBX
004df3e0  c3                        RET
