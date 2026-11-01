; J460 NPC AI 0x004c59d0 REFERENCE_Matriarch_AI
; types=413
; identities=reference_duplicate
; entry=004c59d0
004c59d0  55                        PUSH EBP
004c59d1  8bec                      MOV EBP,ESP
004c59d3  6aff                      PUSH -0x1
004c59d5  689636af00                PUSH 0xaf3696
004c59da  64a100000000              MOV EAX,FS:[0x0]
004c59e0  50                        PUSH EAX
004c59e1  81ec44010000              SUB ESP,0x144
004c59e7  a1b493bf00                MOV EAX,[0x00bf93b4]
004c59ec  33c5                      XOR EAX,EBP
004c59ee  8945f0                    MOV dword ptr [EBP + -0x10],EAX
004c59f1  53                        PUSH EBX
004c59f2  56                        PUSH ESI
004c59f3  57                        PUSH EDI
004c59f4  50                        PUSH EAX
004c59f5  8d45f4                    LEA EAX,[EBP + -0xc]
004c59f8  64a300000000              MOV FS:[0x0],EAX
004c59fe  8bf9                      MOV EDI,ECX
004c5a00  89bdc8feffff              MOV dword ptr [EBP + 0xfffffec8],EDI
004c5a06  a17816c700                MOV EAX,[0x00c71678]
004c5a0b  8b8fc80b0000              MOV ECX,dword ptr [EDI + 0xbc8]
004c5a11  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
004c5a19  898db4feffff              MOV dword ptr [EBP + 0xfffffeb4],ECX
004c5a1f  8b9800830100              MOV EBX,dword ptr [EAX + 0x18300]
004c5a25  899de0feffff              MOV dword ptr [EBP + 0xfffffee0],EBX
004c5a2b  85c9                      TEST ECX,ECX
004c5a2d  0f8516050000              JNZ 0x004c5f49
004c5a33  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004c5a38  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004c5a3f  0f8604050000              JBE 0x004c5f49
004c5a45  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
004c5a4c  0f84f7040000              JZ 0x004c5f49
004c5a52  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004c5a5a  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c5a60  f30f5cd0                  SUBSS XMM2,XMM0
004c5a64  f30f119514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM2
004c5a6c  85c0                      TEST EAX,EAX
004c5a6e  0f88d5040000              JS 0x004c5f49
004c5a74  83f804                    CMP EAX,0x4
004c5a77  0f83be040000              JNC 0x004c5f3b
004c5a7d  f30f1004857001b600        MOVSS XMM0,dword ptr [EAX*0x4 + 0xb60170]
004c5a86  f30f598784030000          MULSS XMM0,dword ptr [EDI + 0x384]
004c5a8e  0f2fc2                    COMISS XMM0,XMM2
004c5a91  0f86a4040000              JBE 0x004c5f3b
004c5a97  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c5a9d  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
004c5aa3  c78508ffffff1c000000      MOV dword ptr [EBP + 0xffffff08],0x1c
004c5aad  e8ce0c4900                CALL 0x00956780
004c5ab2  83ec08                    SUB ESP,0x8
004c5ab5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c5abb  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c5ac3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c5aca  6a00                      PUSH 0x0
004c5acc  6a02                      PUSH 0x2
004c5ace  51                        PUSH ECX
004c5acf  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004c5ad6  ffb508ffffff              PUSH dword ptr [EBP + 0xffffff08]
004c5adc  e84f814600                CALL 0x0092dc30
004c5ae1  8bcf                      MOV ECX,EDI
004c5ae3  e8588d1f00                CALL 0x006be840
004c5ae8  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c5af0  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004c5af8  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004c5b00  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
004c5b08  0f28c1                    MOVAPS XMM0,XMM1
004c5b0b  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
004c5b13  f30f59c1                  MULSS XMM0,XMM1
004c5b17  0f28ca                    MOVAPS XMM1,XMM2
004c5b1a  f30f59ca                  MULSS XMM1,XMM2
004c5b1e  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
004c5b26  f30f58c1                  ADDSS XMM0,XMM1
004c5b2a  e821fff6ff                CALL 0x00435a50
004c5b2f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004c5b36  7637                      JBE 0x004c5b6f
004c5b38  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004c5b40  f30f5ec8                  DIVSS XMM1,XMM0
004c5b44  f30f1095c4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec4]
004c5b4c  0f28c1                    MOVAPS XMM0,XMM1
004c5b4f  f30f59d0                  MULSS XMM2,XMM0
004c5b53  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004c5b5b  f30f59c1                  MULSS XMM0,XMM1
004c5b5f  f30f1195c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM2
004c5b67  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004c5b6f  33db                      XOR EBX,EBX
004c5b71  83bfc40b000002            CMP dword ptr [EDI + 0xbc4],0x2
004c5b78  0f9dc3                    SETGE BL
004c5b7b  43                        INC EBX
004c5b7c  0f1f4000                  NOP dword ptr [EAX]
004c5b80  e8db932200                CALL 0x006eef60
004c5b85  660f6ec0                  MOVD XMM0,EAX
004c5b89  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c5b8d  c1e81f                    SHR EAX,0x1f
004c5b90  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c5b99  660f5ac0                  CVTPD2PS XMM0,XMM0
004c5b9d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c5ba5  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004c5bad  f30f5c0510a9ba00          SUBSS XMM0,dword ptr [0x00baa910]
004c5bb5  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004c5bbd  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004c5bc5  e87679f5ff                CALL 0x0041d540
004c5bca  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004c5bd2  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004c5bda  e84179f5ff                CALL 0x0041d520
004c5bdf  0f28d8                    MOVAPS XMM3,XMM0
004c5be2  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004c5bea  0f28d0                    MOVAPS XMM2,XMM0
004c5bed  0f28cb                    MOVAPS XMM1,XMM3
004c5bf0  f30f598d08ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff08]
004c5bf8  f30f598508ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff08]
004c5c00  f30f5995c4feffff          MULSS XMM2,dword ptr [EBP + 0xfffffec4]
004c5c08  f30f599dc4feffff          MULSS XMM3,dword ptr [EBP + 0xfffffec4]
004c5c10  f30f5cd1                  SUBSS XMM2,XMM1
004c5c14  f30f58d8                  ADDSS XMM3,XMM0
004c5c18  0f28ca                    MOVAPS XMM1,XMM2
004c5c1b  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
004c5c23  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
004c5c2b  0f28c3                    MOVAPS XMM0,XMM3
004c5c2e  f30f119d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM3
004c5c36  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004c5c3e  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004c5c46  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004c5c4e  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
004c5c56  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004c5c5e  e8fd922200                CALL 0x006eef60
004c5c63  8bf0                      MOV ESI,EAX
004c5c65  e8f6922200                CALL 0x006eef60
004c5c6a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c5c70  56                        PUSH ESI
004c5c71  68e8030000                PUSH 0x3e8
004c5c76  660f6ec0                  MOVD XMM0,EAX
004c5c7a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c5c7e  c1e81f                    SHR EAX,0x1f
004c5c81  57                        PUSH EDI
004c5c82  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c5c8b  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004c5c91  50                        PUSH EAX
004c5c92  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004c5c98  50                        PUSH EAX
004c5c99  660f5ac8                  CVTPD2PS XMM1,XMM0
004c5c9d  6a00                      PUSH 0x0
004c5c9f  6a49                      PUSH 0x49
004c5ca1  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004c5ca9  f30f58c9                  ADDSS XMM1,XMM1
004c5cad  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
004c5cb5  0f28c1                    MOVAPS XMM0,XMM1
004c5cb8  f30f598d10ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff10]
004c5cc0  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
004c5cc8  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004c5cd0  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004c5cd8  e8432ef6ff                CALL 0x00428b20
004c5cdd  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004c5ce5  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
004c5ced  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004c5cf5  8b9068010000              MOV EDX,dword ptr [EAX + 0x168]
004c5cfb  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004c5d03  83e2fb                    AND EDX,0xfffffffb
004c5d06  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
004c5d0c  81ca00000080              OR EDX,0x80000000
004c5d12  899068010000              MOV dword ptr [EAX + 0x168],EDX
004c5d18  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
004c5d1e  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004c5d26  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
004c5d2e  e82d922200                CALL 0x006eef60
004c5d33  50                        PUSH EAX
004c5d34  6a04                      PUSH 0x4
004c5d36  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004c5d3c  6a00                      PUSH 0x0
004c5d3e  50                        PUSH EAX
004c5d3f  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004c5d45  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c5d4b  50                        PUSH EAX
004c5d4c  6a02                      PUSH 0x2
004c5d4e  68e8030000                PUSH 0x3e8
004c5d53  e8c82df6ff                CALL 0x00428b20
004c5d58  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
004c5d62  c78050030000000080c1      MOV dword ptr [EAX + 0x350],0xc1800000
004c5d6c  83eb01                    SUB EBX,0x1
004c5d6f  0f850bfeffff              JNZ 0x004c5b80
004c5d75  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
004c5d7c  0f85d5000000              JNZ 0x004c5e57
004c5d82  395f7c                    CMP dword ptr [EDI + 0x7c],EBX
004c5d85  0f84cc000000              JZ 0x004c5e57
004c5d8b  6860d5b100                PUSH 0xb1d560
004c5d90  8d4f78                    LEA ECX,[EDI + 0x78]
004c5d93  e8d850f4ff                CALL 0x0040ae70
004c5d98  84c0                      TEST AL,AL
004c5d9a  0f84b7000000              JZ 0x004c5e57
004c5da0  395f7c                    CMP dword ptr [EDI + 0x7c],EBX
004c5da3  7415                      JZ 0x004c5dba
004c5da5  6874d5b100                PUSH 0xb1d574
004c5daa  8d4f78                    LEA ECX,[EDI + 0x78]
004c5dad  e8be50f4ff                CALL 0x0040ae70
004c5db2  84c0                      TEST AL,AL
004c5db4  0f859d000000              JNZ 0x004c5e57
004c5dba  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c5dbd  85f6                      TEST ESI,ESI
004c5dbf  7445                      JZ 0x004c5e06
004c5dc1  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c5dc5  8bc6                      MOV EAX,ESI
004c5dc7  7202                      JC 0x004c5dcb
004c5dc9  8b06                      MOV EAX,dword ptr [ESI]
004c5dcb  b98001b600                MOV ECX,0xb60180
004c5dd0  8a10                      MOV DL,byte ptr [EAX]
004c5dd2  3a11                      CMP DL,byte ptr [ECX]
004c5dd4  751a                      JNZ 0x004c5df0
004c5dd6  84d2                      TEST DL,DL
004c5dd8  7412                      JZ 0x004c5dec
004c5dda  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c5ddd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c5de0  750e                      JNZ 0x004c5df0
004c5de2  83c002                    ADD EAX,0x2
004c5de5  83c102                    ADD ECX,0x2
004c5de8  84d2                      TEST DL,DL
004c5dea  75e4                      JNZ 0x004c5dd0
004c5dec  33c0                      XOR EAX,EAX
004c5dee  eb05                      JMP 0x004c5df5
004c5df0  1bc0                      SBB EAX,EAX
004c5df2  83c801                    OR EAX,0x1
004c5df5  85c0                      TEST EAX,EAX
004c5df7  750d                      JNZ 0x004c5e06
004c5df9  384634                    CMP byte ptr [ESI + 0x34],AL
004c5dfc  742a                      JZ 0x004c5e28
004c5dfe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c5e04  7522                      JNZ 0x004c5e28
004c5e06  6a01                      PUSH 0x1
004c5e08  688001b600                PUSH 0xb60180
004c5e0d  8d4f48                    LEA ECX,[EDI + 0x48]
004c5e10  e8bb47f4ff                CALL 0x0040a5d0
004c5e15  84c0                      TEST AL,AL
004c5e17  740f                      JZ 0x004c5e28
004c5e19  8d4f78                    LEA ECX,[EDI + 0x78]
004c5e1c  e88f43f4ff                CALL 0x0040a1b0
004c5e21  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004c5e28  f30f1095c4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec4]
004c5e30  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004c5e38  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
004c5e40  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004c5e4a  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004c5e52  e9b0000000                JMP 0x004c5f07
004c5e57  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c5e5d  83f805                    CMP EAX,0x5
004c5e60  0f84b1000000              JZ 0x004c5f17
004c5e66  83f807                    CMP EAX,0x7
004c5e69  0f84a8000000              JZ 0x004c5f17
004c5e6f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c5e72  85f6                      TEST ESI,ESI
004c5e74  7445                      JZ 0x004c5ebb
004c5e76  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c5e7a  8bc6                      MOV EAX,ESI
004c5e7c  7202                      JC 0x004c5e80
004c5e7e  8b06                      MOV EAX,dword ptr [ESI]
004c5e80  b9a001b600                MOV ECX,0xb601a0
004c5e85  8a10                      MOV DL,byte ptr [EAX]
004c5e87  3a11                      CMP DL,byte ptr [ECX]
004c5e89  751a                      JNZ 0x004c5ea5
004c5e8b  84d2                      TEST DL,DL
004c5e8d  7412                      JZ 0x004c5ea1
004c5e8f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c5e92  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c5e95  750e                      JNZ 0x004c5ea5
004c5e97  83c002                    ADD EAX,0x2
004c5e9a  83c102                    ADD ECX,0x2
004c5e9d  84d2                      TEST DL,DL
004c5e9f  75e4                      JNZ 0x004c5e85
004c5ea1  33c0                      XOR EAX,EAX
004c5ea3  eb05                      JMP 0x004c5eaa
004c5ea5  1bc0                      SBB EAX,EAX
004c5ea7  83c801                    OR EAX,0x1
004c5eaa  85c0                      TEST EAX,EAX
004c5eac  750d                      JNZ 0x004c5ebb
004c5eae  384634                    CMP byte ptr [ESI + 0x34],AL
004c5eb1  742a                      JZ 0x004c5edd
004c5eb3  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c5eb9  7522                      JNZ 0x004c5edd
004c5ebb  6a01                      PUSH 0x1
004c5ebd  68a001b600                PUSH 0xb601a0
004c5ec2  8d4f48                    LEA ECX,[EDI + 0x48]
004c5ec5  e80647f4ff                CALL 0x0040a5d0
004c5eca  84c0                      TEST AL,AL
004c5ecc  740f                      JZ 0x004c5edd
004c5ece  8d4f78                    LEA ECX,[EDI + 0x78]
004c5ed1  e8da42f4ff                CALL 0x0040a1b0
004c5ed6  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004c5edd  f30f1095c4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec4]
004c5ee5  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
004c5eed  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
004c5ef5  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
004c5eff  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004c5f07  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004c5f0f  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004c5f17  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c5f1d  f30f109514ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff14]
004c5f25  40                        INC EAX
004c5f26  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c5f2c  8387c00b00005a            ADD dword ptr [EDI + 0xbc0],0x5a
004c5f33  85c0                      TEST EAX,EAX
004c5f35  0f8939fbffff              JNS 0x004c5a74
004c5f3b  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
004c5f43  8b9de0feffff              MOV EBX,dword ptr [EBP + 0xfffffee0]
004c5f49  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c5f4f  83f810                    CMP EAX,0x10
004c5f52  7725                      JA 0x004c5f79
004c5f54  ff24854c804c00            JMP dword ptr [EAX*0x4 + 0x4c804c]
004c5f79  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004c5f7f  85c0                      TEST EAX,EAX
004c5f81  7e07                      JLE 0x004c5f8a
004c5f83  48                        DEC EAX
004c5f84  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004c5f8a  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
004c5f91  0f843a200000              JZ 0x004c7fd1
004c5f97  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
004c5f9c  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
004c5fa3  7629                      JBE 0x004c5fce
004c5fa5  660f6e87c40b0000          MOVD XMM0,dword ptr [EDI + 0xbc4]
004c5fad  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c5fb0  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004c5fb8  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004c5fc0  f30f59c1                  MULSS XMM0,XMM1
004c5fc4  f30f2cc0                  CVTTSS2SI EAX,XMM0
004c5fc8  0187c00b0000              ADD dword ptr [EDI + 0xbc0],EAX
004c5fce  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004c5fd4  85c0                      TEST EAX,EAX
004c5fd6  7e07                      JLE 0x004c5fdf
004c5fd8  48                        DEC EAX
004c5fd9  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004c5fdf  6a00                      PUSH 0x0
004c5fe1  6a0f                      PUSH 0xf
004c5fe3  8bcf                      MOV ECX,EDI
004c5fe5  e826671e00                CALL 0x006ac710
004c5fea  84c0                      TEST AL,AL
004c5fec  0f84df1f0000              JZ 0x004c7fd1
004c5ff2  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004c5ff9  0f85d21f0000              JNZ 0x004c7fd1
004c5fff  e85c8f2200                CALL 0x006eef60
004c6004  83e001                    AND EAX,0x1
004c6007  0f85c41f0000              JNZ 0x004c7fd1
004c600d  a17816c700                MOV EAX,[0x00c71678]
004c6012  33d2                      XOR EDX,EDX
004c6014  33db                      XOR EBX,EBX
004c6016  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
004c601c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004c6022  399064120000              CMP dword ptr [EAX + 0x1264],EDX
004c6028  0f867f000000              JBE 0x004c60ad
004c602e  8bf8                      MOV EDI,EAX
004c6030  8b875c120000              MOV EAX,dword ptr [EDI + 0x125c]
004c6036  8b0c98                    MOV ECX,dword ptr [EAX + EBX*0x4]
004c6039  a17816c700                MOV EAX,[0x00c71678]
004c603e  8d7128                    LEA ESI,[ECX + 0x28]
004c6041  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004c6048  7c05                      JL 0x004c604f
004c604a  833e01                    CMP dword ptr [ESI],0x1
004c604d  740c                      JZ 0x004c605b
004c604f  8b06                      MOV EAX,dword ptr [ESI]
004c6051  83e80a                    SUB EAX,0xa
004c6054  3ddd030000                CMP EAX,0x3dd
004c6059  7728                      JA 0x004c6083
004c605b  8b01                      MOV EAX,dword ptr [ECX]
004c605d  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
004c6060  ffd0                      CALL EAX
004c6062  8b9508ffffff              MOV EDX,dword ptr [EBP + 0xffffff08]
004c6068  84c0                      TEST AL,AL
004c606a  7417                      JZ 0x004c6083
004c606c  8b06                      MOV EAX,dword ptr [ESI]
004c606e  3d9d010000                CMP EAX,0x19d
004c6073  740e                      JZ 0x004c6083
004c6075  3d34010000                CMP EAX,0x134
004c607a  7407                      JZ 0x004c6083
004c607c  42                        INC EDX
004c607d  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
004c6083  43                        INC EBX
004c6084  3b9f64120000              CMP EBX,dword ptr [EDI + 0x1264]
004c608a  72a4                      JC 0x004c6030
004c608c  8bbdc8feffff              MOV EDI,dword ptr [EBP + 0xfffffec8]
004c6092  83fa02                    CMP EDX,0x2
004c6095  7216                      JC 0x004c60ad
004c6097  e8c48e2200                CALL 0x006eef60
004c609c  33d2                      XOR EDX,EDX
004c609e  b964000000                MOV ECX,0x64
004c60a3  f7f1                      DIV ECX
004c60a5  85d2                      TEST EDX,EDX
004c60a7  0f85241f0000              JNZ 0x004c7fd1
004c60ad  a17816c700                MOV EAX,[0x00c71678]
004c60b2  6a00                      PUSH 0x0
004c60b4  6a00                      PUSH 0x0
004c60b6  6aff                      PUSH -0x1
004c60b8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c60be  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004c60c4  6aff                      PUSH -0x1
004c60c6  6834010000                PUSH 0x134
004c60cb  81c118120000              ADD ECX,0x1218
004c60d1  50                        PUSH EAX
004c60d2  e8894ef5ff                CALL 0x0041af60
004c60d7  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004c60de  33c9                      XOR ECX,ECX
004c60e0  33f6                      XOR ESI,ESI
004c60e2  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
004c60ec  89b5f8feffff              MOV dword ptr [EBP + 0xfffffef8],ESI
004c60f2  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
004c60f8  898dfcfeffff              MOV dword ptr [EBP + 0xfffffefc],ECX
004c60fe  33db                      XOR EBX,EBX
004c6100  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004c6104  399dd8feffff              CMP dword ptr [EBP + 0xfffffed8],EBX
004c610a  0f86961e0000              JBE 0x004c7fa6
004c6110  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
004c6116  8b0498                    MOV EAX,dword ptr [EAX + EBX*0x4]
004c6119  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
004c611f  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
004c6125  0f85e01d0000              JNZ 0x004c7f0b
004c612b  3bf1                      CMP ESI,ECX
004c612d  0f84b91d0000              JZ 0x004c7eec
004c6133  8906                      MOV dword ptr [ESI],EAX
004c6135  83c604                    ADD ESI,0x4
004c6138  89b5f8feffff              MOV dword ptr [EBP + 0xfffffef8],ESI
004c613e  e9c81d0000                JMP 0x004c7f0b
004c7eec  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
004c7ef2  50                        PUSH EAX
004c7ef3  56                        PUSH ESI
004c7ef4  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
004c7efa  e8214af6ff                CALL 0x0042c920
004c7eff  8b8dfcfeffff              MOV ECX,dword ptr [EBP + 0xfffffefc]
004c7f05  8bb5f8feffff              MOV ESI,dword ptr [EBP + 0xfffffef8]
004c7f0b  43                        INC EBX
004c7f0c  3b9dd8feffff              CMP EBX,dword ptr [EBP + 0xfffffed8]
004c7f12  0f82f8e1ffff              JC 0x004c6110
004c7f18  8b9df4feffff              MOV EBX,dword ptr [EBP + 0xfffffef4]
004c7f1e  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
004c7f24  3bde                      CMP EBX,ESI
004c7f26  7468                      JZ 0x004c7f90
004c7f28  2bf3                      SUB ESI,EBX
004c7f2a  c1fe02                    SAR ESI,0x2
004c7f2d  85f6                      TEST ESI,ESI
004c7f2f  7504                      JNZ 0x004c7f35
004c7f31  33d2                      XOR EDX,EDX
004c7f33  eb09                      JMP 0x004c7f3e
004c7f35  e826702200                CALL 0x006eef60
004c7f3a  33d2                      XOR EDX,EDX
004c7f3c  f7f6                      DIV ESI
004c7f3e  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
004c7f44  8db7c0030000              LEA ESI,[EDI + 0x3c0]
004c7f4a  8b0493                    MOV EAX,dword ptr [EBX + EDX*0x4]
004c7f4d  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
004c7f53  85c9                      TEST ECX,ECX
004c7f55  741e                      JZ 0x004c7f75
004c7f57  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
004c7f5d  89b5c8feffff              MOV dword ptr [EBP + 0xfffffec8],ESI
004c7f63  81c1cc030000              ADD ECX,0x3cc
004c7f69  50                        PUSH EAX
004c7f6a  e8a1720000                CALL 0x004cf210
004c7f6f  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
004c7f75  8906                      MOV dword ptr [ESI],EAX
004c7f77  85c0                      TEST EAX,EAX
004c7f79  740e                      JZ 0x004c7f89
004c7f7b  56                        PUSH ESI
004c7f7c  8bc8                      MOV ECX,EAX
004c7f7e  e86d5d0000                CALL 0x004cdcf0
004c7f83  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
004c7f89  8bc8                      MOV ECX,EAX
004c7f8b  e8b0f00700                CALL 0x00547040
004c7f90  85db                      TEST EBX,EBX
004c7f92  7412                      JZ 0x004c7fa6
004c7f94  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
004c7f9a  2bc3                      SUB EAX,EBX
004c7f9c  c1f802                    SAR EAX,0x2
004c7f9f  50                        PUSH EAX
004c7fa0  53                        PUSH EBX
004c7fa1  e89a47f4ff                CALL 0x0040c740
004c7fa6  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004c7fad  80bdccfeffff00            CMP byte ptr [EBP + 0xfffffecc],0x0
004c7fb4  751b                      JNZ 0x004c7fd1
004c7fb6  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
004c7fbd  b101                      MOV CL,0x1
004c7fbf  8b95d0feffff              MOV EDX,dword ptr [EBP + 0xfffffed0]
004c7fc5  6a00                      PUSH 0x0
004c7fc7  6a00                      PUSH 0x0
004c7fc9  e8e2c85900                CALL 0x00a648b0
004c7fce  83c408                    ADD ESP,0x8
004c7fd1  83bdb4feffff00            CMP dword ptr [EBP + 0xfffffeb4],0x0
004c7fd8  7555                      JNZ 0x004c802f
004c7fda  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004c7fe1  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
004c7fe9  7515                      JNZ 0x004c8000
004c7feb  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004c7ff3  f30f59c1                  MULSS XMM0,XMM1
004c7ff7  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004c7ffe  722f                      JC 0x004c802f
004c8000  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004c8008  f30f59c1                  MULSS XMM0,XMM1
004c800c  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004c8013  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004c801d  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004c8027  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004c802f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004c8032  64890d00000000            MOV dword ptr FS:[0x0],ECX
004c8039  59                        POP ECX
004c803a  5f                        POP EDI
004c803b  5e                        POP ESI
004c803c  5b                        POP EBX
004c803d  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004c8040  33cd                      XOR ECX,EBP
004c8042  e8e4706200                CALL 0x00aef12b
004c8047  8be5                      MOV ESP,EBP
004c8049  5d                        POP EBP
004c804a  c3                        RET
