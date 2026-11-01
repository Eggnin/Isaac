; J460 NPC AI 0x004bfd30 AI_004bfd30
; types=407
; identities=407.0.0
; entry=004bfd30
004bfd30  53                        PUSH EBX
004bfd31  8bdc                      MOV EBX,ESP
004bfd33  83ec08                    SUB ESP,0x8
004bfd36  83e4f8                    AND ESP,0xfffffff8
004bfd39  83c404                    ADD ESP,0x4
004bfd3c  55                        PUSH EBP
004bfd3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004bfd40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004bfd44  8bec                      MOV EBP,ESP
004bfd46  6aff                      PUSH -0x1
004bfd48  683836af00                PUSH 0xaf3638
004bfd4d  64a100000000              MOV EAX,FS:[0x0]
004bfd53  50                        PUSH EAX
004bfd54  53                        PUSH EBX
004bfd55  b8f02b0000                MOV EAX,0x2bf0
004bfd5a  e801026300                CALL 0x00aeff60
004bfd5f  a1b493bf00                MOV EAX,[0x00bf93b4]
004bfd64  33c5                      XOR EAX,EBP
004bfd66  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004bfd69  56                        PUSH ESI
004bfd6a  57                        PUSH EDI
004bfd6b  50                        PUSH EAX
004bfd6c  8d45f4                    LEA EAX,[EBP + -0xc]
004bfd6f  64a300000000              MOV FS:[0x0],EAX
004bfd75  8bf9                      MOV EDI,ECX
004bfd77  89bd20d7ffff              MOV dword ptr [EBP + 0xffffd720],EDI
004bfd7d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004bfd83  85c0                      TEST EAX,EAX
004bfd85  0f8548010000              JNZ 0x004bfed3
004bfd8b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004bfd93  f30f5f05ecaaba00          MAXSS XMM0,dword ptr [0x00baaaec]
004bfd9b  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004bfda3  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004bfda9  898734030000              MOV dword ptr [EDI + 0x334],EAX
004bfdaf  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004bfdb5  898738030000              MOV dword ptr [EDI + 0x338],EAX
004bfdbb  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004bfdc5  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
004bfdcf  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
004bfdd9  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004bfddc  85f6                      TEST ESI,ESI
004bfdde  744b                      JZ 0x004bfe2b
004bfde0  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004bfde4  8bc6                      MOV EAX,ESI
004bfde6  7202                      JC 0x004bfdea
004bfde8  8b06                      MOV EAX,dword ptr [ESI]
004bfdea  b998d5b100                MOV ECX,0xb1d598
004bfdef  90                        NOP
004bfdf0  8a10                      MOV DL,byte ptr [EAX]
004bfdf2  3a11                      CMP DL,byte ptr [ECX]
004bfdf4  751a                      JNZ 0x004bfe10
004bfdf6  84d2                      TEST DL,DL
004bfdf8  7412                      JZ 0x004bfe0c
004bfdfa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004bfdfd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004bfe00  750e                      JNZ 0x004bfe10
004bfe02  83c002                    ADD EAX,0x2
004bfe05  83c102                    ADD ECX,0x2
004bfe08  84d2                      TEST DL,DL
004bfe0a  75e4                      JNZ 0x004bfdf0
004bfe0c  33c0                      XOR EAX,EAX
004bfe0e  eb05                      JMP 0x004bfe15
004bfe10  1bc0                      SBB EAX,EAX
004bfe12  83c801                    OR EAX,0x1
004bfe15  85c0                      TEST EAX,EAX
004bfe17  7512                      JNZ 0x004bfe2b
004bfe19  384634                    CMP byte ptr [ESI + 0x34],AL
004bfe1c  742e                      JZ 0x004bfe4c
004bfe1e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004bfe24  8d7748                    LEA ESI,[EDI + 0x48]
004bfe27  7523                      JNZ 0x004bfe4c
004bfe29  eb03                      JMP 0x004bfe2e
004bfe2b  8d7748                    LEA ESI,[EDI + 0x48]
004bfe2e  6a01                      PUSH 0x1
004bfe30  6898d5b100                PUSH 0xb1d598
004bfe35  8bce                      MOV ECX,ESI
004bfe37  e894a7f4ff                CALL 0x0040a5d0
004bfe3c  84c0                      TEST AL,AL
004bfe3e  740c                      JZ 0x004bfe4c
004bfe40  8d4e30                    LEA ECX,[ESI + 0x30]
004bfe43  e868a3f4ff                CALL 0x0040a1b0
004bfe48  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004bfe4c  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004bfe53  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004bfe59  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004bfe5f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004bfe65  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004bfe6b  c7878801000003000000      MOV dword ptr [EDI + 0x188],0x3
004bfe75  c7875c03000000000000      MOV dword ptr [EDI + 0x35c],0x0
004bfe7f  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004bfe86  c78754030000401f0000      MOV dword ptr [EDI + 0x354],0x1f40
004bfe90  c7854cd7ffffa7010000      MOV dword ptr [EBP + 0xffffd74c],0x1a7
004bfe9a  e8e1684900                CALL 0x00956780
004bfe9f  83ec08                    SUB ESP,0x8
004bfea2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004bfeaa  c704240000803f            MOV dword ptr [ESP],0x3f800000
004bfeb1  6a00                      PUSH 0x0
004bfeb3  6a02                      PUSH 0x2
004bfeb5  51                        PUSH ECX
004bfeb6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004bfebd  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004bfec3  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004bfec9  e862dd4600                CALL 0x0092dc30
004bfece  e941590000                JMP 0x004c5814
004bfed3  83f802                    CMP EAX,0x2
004bfed6  0f853a010000              JNZ 0x004c0016
004bfedc  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004bfedf  8d7748                    LEA ESI,[EDI + 0x48]
004bfee2  85c9                      TEST ECX,ECX
004bfee4  7447                      JZ 0x004bff2d
004bfee6  83791410                  CMP dword ptr [ECX + 0x14],0x10
004bfeea  8bc1                      MOV EAX,ECX
004bfeec  7202                      JC 0x004bfef0
004bfeee  8b01                      MOV EAX,dword ptr [ECX]
004bfef0  b998d5b100                MOV ECX,0xb1d598
004bfef5  8a10                      MOV DL,byte ptr [EAX]
004bfef7  3a11                      CMP DL,byte ptr [ECX]
004bfef9  751a                      JNZ 0x004bff15
004bfefb  84d2                      TEST DL,DL
004bfefd  7412                      JZ 0x004bff11
004bfeff  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004bff02  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004bff05  750e                      JNZ 0x004bff15
004bff07  83c002                    ADD EAX,0x2
004bff0a  83c102                    ADD ECX,0x2
004bff0d  84d2                      TEST DL,DL
004bff0f  75e4                      JNZ 0x004bfef5
004bff11  33c0                      XOR EAX,EAX
004bff13  eb05                      JMP 0x004bff1a
004bff15  1bc0                      SBB EAX,EAX
004bff17  83c801                    OR EAX,0x1
004bff1a  85c0                      TEST EAX,EAX
004bff1c  750f                      JNZ 0x004bff2d
004bff1e  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004bff21  80783400                  CMP byte ptr [EAX + 0x34],0x0
004bff25  7427                      JZ 0x004bff4e
004bff27  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004bff2b  7521                      JNZ 0x004bff4e
004bff2d  6a01                      PUSH 0x1
004bff2f  6898d5b100                PUSH 0xb1d598
004bff34  8bce                      MOV ECX,ESI
004bff36  e895a6f4ff                CALL 0x0040a5d0
004bff3b  84c0                      TEST AL,AL
004bff3d  740f                      JZ 0x004bff4e
004bff3f  8d4e30                    LEA ECX,[ESI + 0x30]
004bff42  e869a2f4ff                CALL 0x0040a1b0
004bff47  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004bff4b  8d7748                    LEA ESI,[EDI + 0x48]
004bff4e  a17816c700                MOV EAX,[0x00c71678]
004bff53  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004bff59  8b80f8110000              MOV EAX,dword ptr [EAX + 0x11f8]
004bff5f  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004bff65  80b88c00000000            CMP byte ptr [EAX + 0x8c],0x0
004bff6c  751c                      JNZ 0x004bff8a
004bff6e  8d4850                    LEA ECX,[EAX + 0x50]
004bff71  8d873c030000              LEA EAX,[EDI + 0x33c]
004bff77  50                        PUSH EAX
004bff78  e8b3514800                CALL 0x00945130
004bff7d  8b8544d7ffff              MOV EAX,dword ptr [EBP + 0xffffd744]
004bff83  c6808c00000001            MOV byte ptr [EAX + 0x8c],0x1
004bff8a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004bff8e  7409                      JZ 0x004bff99
004bff90  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004bff97  757d                      JNZ 0x004c0016
004bff99  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004bffa3  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
004bffa6  85c9                      TEST ECX,ECX
004bffa8  744e                      JZ 0x004bfff8
004bffaa  83791410                  CMP dword ptr [ECX + 0x14],0x10
004bffae  8bc1                      MOV EAX,ECX
004bffb0  7202                      JC 0x004bffb4
004bffb2  8b01                      MOV EAX,dword ptr [ECX]
004bffb4  b954bcb100                MOV ECX,0xb1bc54
004bffb9  0f1f8000000000            NOP dword ptr [EAX]
004bffc0  8a10                      MOV DL,byte ptr [EAX]
004bffc2  3a11                      CMP DL,byte ptr [ECX]
004bffc4  751a                      JNZ 0x004bffe0
004bffc6  84d2                      TEST DL,DL
004bffc8  7412                      JZ 0x004bffdc
004bffca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004bffcd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004bffd0  750e                      JNZ 0x004bffe0
004bffd2  83c002                    ADD EAX,0x2
004bffd5  83c102                    ADD ECX,0x2
004bffd8  84d2                      TEST DL,DL
004bffda  75e4                      JNZ 0x004bffc0
004bffdc  33c0                      XOR EAX,EAX
004bffde  eb05                      JMP 0x004bffe5
004bffe0  1bc0                      SBB EAX,EAX
004bffe2  83c801                    OR EAX,0x1
004bffe5  85c0                      TEST EAX,EAX
004bffe7  750f                      JNZ 0x004bfff8
004bffe9  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004bffec  80783400                  CMP byte ptr [EAX + 0x34],0x0
004bfff0  7424                      JZ 0x004c0016
004bfff2  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004bfff6  751e                      JNZ 0x004c0016
004bfff8  6a01                      PUSH 0x1
004bfffa  6854bcb100                PUSH 0xb1bc54
004bffff  8bce                      MOV ECX,ESI
004c0001  e8caa5f4ff                CALL 0x0040a5d0
004c0006  84c0                      TEST AL,AL
004c0008  740c                      JZ 0x004c0016
004c000a  8d4e30                    LEA ECX,[ESI + 0x30]
004c000d  e89ea1f4ff                CALL 0x0040a1b0
004c0012  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c0016  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004c001d  0f84af020000              JZ 0x004c02d2
004c0023  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004c002a  8bcf                      MOV ECX,EDI
004c002c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004c0032  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004c0038  e8f3e51e00                CALL 0x006ae630
004c003d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c0043  6a14                      PUSH 0x14
004c0045  e826362400                CALL 0x00703670
004c004a  e811ef2200                CALL 0x006eef60
004c004f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c0055  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c005b  c7854cd7ffffa7010000      MOV dword ptr [EBP + 0xffffd74c],0x1a7
004c0065  660f6ec0                  MOVD XMM0,EAX
004c0069  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c006d  c1e81f                    SHR EAX,0x1f
004c0070  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c0079  660f5ac0                  CVTPD2PS XMM0,XMM0
004c007d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c0085  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004c008d  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
004c0095  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c009d  e8de664900                CALL 0x00956780
004c00a2  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c00aa  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c00b0  83ec08                    SUB ESP,0x8
004c00b3  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c00bb  f30f110424                MOVSS dword ptr [ESP],XMM0
004c00c0  6a00                      PUSH 0x0
004c00c2  6a3c                      PUSH 0x3c
004c00c4  51                        PUSH ECX
004c00c5  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c00cc  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c00d2  e859db4600                CALL 0x0092dc30
004c00d7  e884ee2200                CALL 0x006eef60
004c00dc  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c00e2  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c00e8  c7854cd7ffffa5010000      MOV dword ptr [EBP + 0xffffd74c],0x1a5
004c00f2  660f6ec0                  MOVD XMM0,EAX
004c00f6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c00fa  c1e81f                    SHR EAX,0x1f
004c00fd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c0106  660f5ac0                  CVTPD2PS XMM0,XMM0
004c010a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c0112  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004c011a  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
004c0122  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c012a  e851664900                CALL 0x00956780
004c012f  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c0137  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c013d  83ec08                    SUB ESP,0x8
004c0140  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c0148  f30f110424                MOVSS dword ptr [ESP],XMM0
004c014d  6a00                      PUSH 0x0
004c014f  6a3c                      PUSH 0x3c
004c0151  51                        PUSH ECX
004c0152  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c0159  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c015f  e8ccda4600                CALL 0x0092dc30
004c0164  e8f7ed2200                CALL 0x006eef60
004c0169  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c016f  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c0175  c7854cd7ffffa6010000      MOV dword ptr [EBP + 0xffffd74c],0x1a6
004c017f  660f6ec0                  MOVD XMM0,EAX
004c0183  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c0187  c1e81f                    SHR EAX,0x1f
004c018a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c0193  660f5ac0                  CVTPD2PS XMM0,XMM0
004c0197  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c019f  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004c01a7  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
004c01af  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c01b7  e8c4654900                CALL 0x00956780
004c01bc  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c01c4  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c01ca  83ec08                    SUB ESP,0x8
004c01cd  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c01d5  f30f110424                MOVSS dword ptr [ESP],XMM0
004c01da  6a00                      PUSH 0x0
004c01dc  6a3c                      PUSH 0x3c
004c01de  51                        PUSH ECX
004c01df  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c01e6  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c01ec  e83fda4600                CALL 0x0092dc30
004c01f1  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
004c01f7  33c0                      XOR EAX,EAX
004c01f9  81e100000010              AND ECX,0x10000000
004c01ff  0bc1                      OR EAX,ECX
004c0201  7404                      JZ 0x004c0207
004c0203  b201                      MOV DL,0x1
004c0205  eb02                      JMP 0x004c0209
004c0207  32d2                      XOR DL,DL
004c0209  a17816c700                MOV EAX,[0x00c71678]
004c020e  33c9                      XOR ECX,ECX
004c0210  88954bd7ffff              MOV byte ptr [EBP + 0xffffd74b],DL
004c0216  898d24d7ffff              MOV dword ptr [EBP + 0xffffd724],ECX
004c021c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004c0222  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004c0228  398864120000              CMP dword ptr [EAX + 0x1264],ECX
004c022e  0f869e000000              JBE 0x004c02d2
004c0234  0f1f4000                  NOP dword ptr [EAX]
004c0238  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004c0240  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004c0246  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004c0249  89b54cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ESI
004c024f  84d2                      TEST DL,DL
004c0251  741b                      JZ 0x004c026e
004c0253  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004c0259  33c0                      XOR EAX,EAX
004c025b  81e100000010              AND ECX,0x10000000
004c0261  0bc1                      OR EAX,ECX
004c0263  744e                      JZ 0x004c02b3
004c0265  817e282a010000            CMP dword ptr [ESI + 0x28],0x12a
004c026c  7445                      JZ 0x004c02b3
004c026e  51                        PUSH ECX
004c026f  8bce                      MOV ECX,ESI
004c0271  e8aa8c1e00                CALL 0x006a8f20
004c0276  84c0                      TEST AL,AL
004c0278  7426                      JZ 0x004c02a0
004c027a  8b06                      MOV EAX,dword ptr [ESI]
004c027c  8d8d58d4ffff              LEA ECX,[EBP + 0xffffd458]
004c0282  57                        PUSH EDI
004c0283  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
004c0286  e88510f7ff                CALL 0x00431310
004c028b  8b8d4cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd74c]
004c0291  8d8558d4ffff              LEA EAX,[EBP + 0xffffd458]
004c0297  50                        PUSH EAX
004c0298  ffd6                      CALL ESI
004c029a  8bb54cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd74c]
004c02a0  837e2809                  CMP dword ptr [ESI + 0x28],0x9
004c02a4  8a954bd7ffff              MOV DL,byte ptr [EBP + 0xffffd74b]
004c02aa  7507                      JNZ 0x004c02b3
004c02ac  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
004c02b3  8b8d24d7ffff              MOV ECX,dword ptr [EBP + 0xffffd724]
004c02b9  8b8544d7ffff              MOV EAX,dword ptr [EBP + 0xffffd744]
004c02bf  41                        INC ECX
004c02c0  898d24d7ffff              MOV dword ptr [EBP + 0xffffd724],ECX
004c02c6  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
004c02cc  0f826effffff              JC 0x004c0240
004c02d2  a17816c700                MOV EAX,[0x00c71678]
004c02d7  6a00                      PUSH 0x0
004c02d9  6a00                      PUSH 0x0
004c02db  6aff                      PUSH -0x1
004c02dd  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c02e3  8d85acd5ffff              LEA EAX,[EBP + 0xffffd5ac]
004c02e9  6aff                      PUSH -0x1
004c02eb  6829010000                PUSH 0x129
004c02f0  81c118120000              ADD ECX,0x1218
004c02f6  50                        PUSH EAX
004c02f7  e864acf5ff                CALL 0x0041af60
004c02fc  6a00                      PUSH 0x0
004c02fe  6a00                      PUSH 0x0
004c0300  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004c0307  a17816c700                MOV EAX,[0x00c71678]
004c030c  6aff                      PUSH -0x1
004c030e  6aff                      PUSH -0x1
004c0310  682a010000                PUSH 0x12a
004c0315  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c031b  8d854cd5ffff              LEA EAX,[EBP + 0xffffd54c]
004c0321  81c118120000              ADD ECX,0x1218
004c0327  50                        PUSH EAX
004c0328  e833acf5ff                CALL 0x0041af60
004c032d  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004c0331  8db73c030000              LEA ESI,[EDI + 0x33c]
004c0337  a17816c700                MOV EAX,[0x00c71678]
004c033c  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
004c0344  6aff                      PUSH -0x1
004c0346  56                        PUSH ESI
004c0347  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c034d  8d859cd6ffff              LEA EAX,[EBP + 0xffffd69c]
004c0353  81c118120000              ADD ECX,0x1218
004c0359  50                        PUSH EAX
004c035a  e831a4f5ff                CALL 0x0041a790
004c035f  6a00                      PUSH 0x0
004c0361  6a00                      PUSH 0x0
004c0363  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004c0367  a17816c700                MOV EAX,[0x00c71678]
004c036c  6aff                      PUSH -0x1
004c036e  6a60                      PUSH 0x60
004c0370  68e8030000                PUSH 0x3e8
004c0375  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c037b  8d85b0d6ffff              LEA EAX,[EBP + 0xffffd6b0]
004c0381  81c118120000              ADD ECX,0x1218
004c0387  50                        PUSH EAX
004c0388  e8d3abf5ff                CALL 0x0041af60
004c038d  6a00                      PUSH 0x0
004c038f  6a00                      PUSH 0x0
004c0391  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004c0395  a17816c700                MOV EAX,[0x00c71678]
004c039a  6aff                      PUSH -0x1
004c039c  6a65                      PUSH 0x65
004c039e  68e8030000                PUSH 0x3e8
004c03a3  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c03a9  8d85c0d6ffff              LEA EAX,[EBP + 0xffffd6c0]
004c03af  81c118120000              ADD ECX,0x1218
004c03b5  50                        PUSH EAX
004c03b6  e8a5abf5ff                CALL 0x0041af60
004c03bb  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004c03bf  f30f100e                  MOVSS XMM1,dword ptr [ESI]
004c03c3  a17816c700                MOV EAX,[0x00c71678]
004c03c8  0f28c1                    MOVAPS XMM0,XMM1
004c03cb  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004c03d3  f30f580d28aaba00          ADDSS XMM1,dword ptr [0x00baaa28]
004c03db  6a00                      PUSH 0x0
004c03dd  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c03e3  81c118120000              ADD ECX,0x1218
004c03e9  f30f118528d7ffff          MOVSS dword ptr [EBP + 0xffffd728],XMM0
004c03f1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c03f9  0f28d0                    MOVAPS XMM2,XMM0
004c03fc  f30f118d0cd7ffff          MOVSS dword ptr [EBP + 0xffffd70c],XMM1
004c0404  f30f5c153caaba00          SUBSS XMM2,dword ptr [0x00baaa3c]
004c040c  f30f580578a9ba00          ADDSS XMM0,dword ptr [0x00baa978]
004c0414  6a00                      PUSH 0x0
004c0416  f30f11951cd7ffff          MOVSS dword ptr [EBP + 0xffffd71c],XMM2
004c041e  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c0426  6aff                      PUSH -0x1
004c0428  6aff                      PUSH -0x1
004c042a  6a09                      PUSH 0x9
004c042c  8d45c8                    LEA EAX,[EBP + -0x38]
004c042f  50                        PUSH EAX
004c0430  e82babf5ff                CALL 0x0041af60
004c0435  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
004c0438  33c9                      XOR ECX,ECX
004c043a  8b75cc                    MOV ESI,dword ptr [EBP + -0x34]
004c043d  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
004c0445  85d2                      TEST EDX,EDX
004c0447  0f847d000000              JZ 0x004c04ca
004c044d  f30f10b544d7ffff          MOVSS XMM6,dword ptr [EBP + 0xffffd744]
004c0455  f30f10bd0cd7ffff          MOVSS XMM7,dword ptr [EBP + 0xffffd70c]
004c045d  0f1f00                    NOP dword ptr [EAX]
004c0460  8b048e                    MOV EAX,dword ptr [ESI + ECX*0x4]
004c0463  0f57c0                    XORPS XMM0,XMM0
004c0466  f30f10a740030000          MOVSS XMM4,dword ptr [EDI + 0x340]
004c046e  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004c0476  0f2fe3                    COMISS XMM4,XMM3
004c0479  7642                      JBE 0x004c04bd
004c047b  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004c0483  0f28cb                    MOVAPS XMM1,XMM3
004c0486  f30f58904c030000          ADDSS XMM2,dword ptr [EAX + 0x34c]
004c048e  f30f588850030000          ADDSS XMM1,dword ptr [EAX + 0x350]
004c0496  0f2f9528d7ffff            COMISS XMM2,dword ptr [EBP + 0xffffd728]
004c049d  721e                      JC 0x004c04bd
004c049f  0f2ffa                    COMISS XMM7,XMM2
004c04a2  7219                      JC 0x004c04bd
004c04a4  0f2f8d1cd7ffff            COMISS XMM1,dword ptr [EBP + 0xffffd71c]
004c04ab  7210                      JC 0x004c04bd
004c04ad  0f2ff1                    COMISS XMM6,XMM1
004c04b0  720b                      JC 0x004c04bd
004c04b2  0f28c4                    MOVAPS XMM0,XMM4
004c04b5  f30f5cc3                  SUBSS XMM0,XMM3
004c04b9  f30f58c5                  ADDSS XMM0,XMM5
004c04bd  41                        INC ECX
004c04be  f30f118058030000          MOVSS dword ptr [EAX + 0x358],XMM0
004c04c6  3bca                      CMP ECX,EDX
004c04c8  7296                      JC 0x004c0460
004c04ca  807dc800                  CMP byte ptr [EBP + -0x38],0x0
004c04ce  753a                      JNZ 0x004c050a
004c04d0  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004c04d6  0f57c0                    XORPS XMM0,XMM0
004c04d9  660f1345d8                MOVLPD qword ptr [EBP + -0x28],XMM0
004c04de  85d2                      TEST EDX,EDX
004c04e0  7405                      JZ 0x004c04e7
004c04e2  83c230                    ADD EDX,0x30
004c04e5  eb05                      JMP 0x004c04ec
004c04e7  ba18f6c700                MOV EDX,0xc7f618
004c04ec  85f6                      TEST ESI,ESI
004c04ee  7416                      JZ 0x004c0506
004c04f0  8b46fc                    MOV EAX,dword ptr [ESI + -0x4]
004c04f3  8d4efc                    LEA ECX,[ESI + -0x4]
004c04f6  2902                      SUB dword ptr [EDX],EAX
004c04f8  51                        PUSH ECX
004c04f9  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004c04fd  ff15dc87b100              CALL dword ptr [0x00b187dc]
004c0503  83c404                    ADD ESP,0x4
004c0506  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004c050a  81bf640b000090010000      CMP dword ptr [EDI + 0xb64],0x190
004c0514  8b85bcd6ffff              MOV EAX,dword ptr [EBP + 0xffffd6bc]
004c051a  750d                      JNZ 0x004c0529
004c051c  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004c0523  0f84b4000000              JZ 0x004c05dd
004c0529  33f6                      XOR ESI,ESI
004c052b  85c0                      TEST EAX,EAX
004c052d  0f849d000000              JZ 0x004c05d0
004c0533  8bbdb4d6ffff              MOV EDI,dword ptr [EBP + 0xffffd6b4]
004c0539  0f1f8000000000            NOP dword ptr [EAX]
004c0540  8b0cb7                    MOV ECX,dword ptr [EDI + ESI*0x4]
004c0543  8d9584d5ffff              LEA EDX,[EBP + 0xffffd584]
004c0549  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004c0551  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004c0559  52                        PUSH EDX
004c055a  8b01                      MOV EAX,dword ptr [ECX]
004c055c  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004c055f  c78584d5ffff00000000      MOV dword ptr [EBP + 0xffffd584],0x0
004c0569  c78588d5ffff00000000      MOV dword ptr [EBP + 0xffffd588],0x0
004c0573  c7858cd5ffff00000000      MOV dword ptr [EBP + 0xffffd58c],0x0
004c057d  c78590d5ffff00000000      MOV dword ptr [EBP + 0xffffd590],0x0
004c0587  f30f118d94d5ffff          MOVSS dword ptr [EBP + 0xffffd594],XMM1
004c058f  f30f118598d5ffff          MOVSS dword ptr [EBP + 0xffffd598],XMM0
004c0597  f30f118d9cd5ffff          MOVSS dword ptr [EBP + 0xffffd59c],XMM1
004c059f  f30f1185a0d5ffff          MOVSS dword ptr [EBP + 0xffffd5a0],XMM0
004c05a7  c785a4d5ffff00000000      MOV dword ptr [EBP + 0xffffd5a4],0x0
004c05b1  c785a8d5ffff00000000      MOV dword ptr [EBP + 0xffffd5a8],0x0
004c05bb  ffd0                      CALL EAX
004c05bd  46                        INC ESI
004c05be  3bb5bcd6ffff              CMP ESI,dword ptr [EBP + 0xffffd6bc]
004c05c4  0f8276ffffff              JC 0x004c0540
004c05ca  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c05d0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004c05d7  0f8588510000              JNZ 0x004c5765
004c05dd  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c05e3  83f810                    CMP EAX,0x10
004c05e6  0f848a000000              JZ 0x004c0676
004c05ec  3dbc020000                CMP EAX,0x2bc
004c05f1  0f847f000000              JZ 0x004c0676
004c05f7  3dc6020000                CMP EAX,0x2c6
004c05fc  7478                      JZ 0x004c0676
004c05fe  3dd0020000                CMP EAX,0x2d0
004c0603  7471                      JZ 0x004c0676
004c0605  83f802                    CMP EAX,0x2
004c0608  0f8483000000              JZ 0x004c0691
004c060e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c0612  7445                      JZ 0x004c0659
004c0614  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c061b  743c                      JZ 0x004c0659
004c061d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c0620  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c0624  7202                      JC 0x004c0628
004c0626  8b00                      MOV EAX,dword ptr [EAX]
004c0628  b98400b600                MOV ECX,0xb60084
004c062d  0f1f00                    NOP dword ptr [EAX]
004c0630  8a10                      MOV DL,byte ptr [EAX]
004c0632  3a11                      CMP DL,byte ptr [ECX]
004c0634  751a                      JNZ 0x004c0650
004c0636  84d2                      TEST DL,DL
004c0638  7412                      JZ 0x004c064c
004c063a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c063d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0640  750e                      JNZ 0x004c0650
004c0642  83c002                    ADD EAX,0x2
004c0645  83c102                    ADD ECX,0x2
004c0648  84d2                      TEST DL,DL
004c064a  75e4                      JNZ 0x004c0630
004c064c  33c0                      XOR EAX,EAX
004c064e  eb05                      JMP 0x004c0655
004c0650  1bc0                      SBB EAX,EAX
004c0652  83c801                    OR EAX,0x1
004c0655  85c0                      TEST EAX,EAX
004c0657  7438                      JZ 0x004c0691
004c0659  c7875c03000002000000      MOV dword ptr [EDI + 0x35c],0x2
004c0663  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004c066a  c7875403000000000000      MOV dword ptr [EDI + 0x354],0x0
004c0674  eb1b                      JMP 0x004c0691
004c0676  c7875c03000000000000      MOV dword ptr [EDI + 0x35c],0x0
004c0680  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004c0687  c78754030000401f0000      MOV dword ptr [EDI + 0x354],0x1f40
004c0691  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c0695  0f84b4020000              JZ 0x004c094f
004c069b  689400b600                PUSH 0xb60094
004c06a0  8d4f78                    LEA ECX,[EDI + 0x78]
004c06a3  e828a7f4ff                CALL 0x0040add0
004c06a8  84c0                      TEST AL,AL
004c06aa  0f8431020000              JZ 0x004c08e1
004c06b0  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c06b6  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c06bc  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004c06c6  c7875c03000002000000      MOV dword ptr [EDI + 0x35c],0x2
004c06d0  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004c06d7  c7875403000000000000      MOV dword ptr [EDI + 0x354],0x0
004c06e1  c7854cd7ffff3a010000      MOV dword ptr [EBP + 0xffffd74c],0x13a
004c06eb  e890604900                CALL 0x00956780
004c06f0  83ec08                    SUB ESP,0x8
004c06f3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c06f9  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c0701  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c0708  6a00                      PUSH 0x0
004c070a  6a02                      PUSH 0x2
004c070c  51                        PUSH ECX
004c070d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c0714  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c071a  e811d54600                CALL 0x0092dc30
004c071f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c0725  6a0f                      PUSH 0xf
004c0727  e8442f2400                CALL 0x00703670
004c072c  33c9                      XOR ECX,ECX
004c072e  898d24d7ffff              MOV dword ptr [EBP + 0xffffd724],ECX
004c0734  398da8d6ffff              CMP dword ptr [EBP + 0xffffd6a8],ECX
004c073a  0f8ea1010000              JLE 0x004c08e1
004c0740  8b85a0d6ffff              MOV EAX,dword ptr [EBP + 0xffffd6a0]
004c0746  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004c0749  89b544d7ffff              MOV dword ptr [EBP + 0xffffd744],ESI
004c074f  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
004c0757  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004c075f  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
004c0767  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004c076f  0f28c1                    MOVAPS XMM0,XMM1
004c0772  f30f118d4cd7ffff          MOVSS dword ptr [EBP + 0xffffd74c],XMM1
004c077a  f30f59c1                  MULSS XMM0,XMM1
004c077e  0f28ca                    MOVAPS XMM1,XMM2
004c0781  f30f119530d7ffff          MOVSS dword ptr [EBP + 0xffffd730],XMM2
004c0789  f30f59ca                  MULSS XMM1,XMM2
004c078d  f30f58c1                  ADDSS XMM0,XMM1
004c0791  e8ba52f7ff                CALL 0x00435a50
004c0796  f30f10954cd7ffff          MOVSS XMM2,dword ptr [EBP + 0xffffd74c]
004c079e  0f57e4                    XORPS XMM4,XMM4
004c07a1  0f2fc4                    COMISS XMM0,XMM4
004c07a4  f30f109d30d7ffff          MOVSS XMM3,dword ptr [EBP + 0xffffd730]
004c07ac  7614                      JBE 0x004c07c2
004c07ae  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004c07b6  f30f5ec8                  DIVSS XMM1,XMM0
004c07ba  f30f59d1                  MULSS XMM2,XMM1
004c07be  f30f59d9                  MULSS XMM3,XMM1
004c07c2  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004c07c5  3d2a010000                CMP EAX,0x12a
004c07ca  0f8581000000              JNZ 0x004c0851
004c07d0  8b06                      MOV EAX,dword ptr [ESI]
004c07d2  8d8d30d4ffff              LEA ECX,[EBP + 0xffffd430]
004c07d8  57                        PUSH EDI
004c07d9  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
004c07dc  e82f0bf7ff                CALL 0x00431310
004c07e1  8b8d44d7ffff              MOV ECX,dword ptr [EBP + 0xffffd744]
004c07e7  8d8530d4ffff              LEA EAX,[EBP + 0xffffd430]
004c07ed  50                        PUSH EAX
004c07ee  ffd6                      CALL ESI
004c07f0  6800000010                PUSH 0x10000000
004c07f5  6a00                      PUSH 0x0
004c07f7  8bcf                      MOV ECX,EDI
004c07f9  e8326cf5ff                CALL 0x00417430
004c07fe  84c0                      TEST AL,AL
004c0800  0f85c2000000              JNZ 0x004c08c8
004c0806  8b85a0d6ffff              MOV EAX,dword ptr [EBP + 0xffffd6a0]
004c080c  8b8d24d7ffff              MOV ECX,dword ptr [EBP + 0xffffd724]
004c0812  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004c0815  8d8f84030000              LEA ECX,[EDI + 0x384]
004c081b  f30f108884030000          MOVSS XMM1,dword ptr [EAX + 0x384]
004c0823  8d85acd6ffff              LEA EAX,[EBP + 0xffffd6ac]
004c0829  f30f58c9                  ADDSS XMM1,XMM1
004c082d  f30f588f80030000          ADDSS XMM1,dword ptr [EDI + 0x380]
004c0835  f30f118dacd6ffff          MOVSS dword ptr [EBP + 0xffffd6ac],XMM1
004c083d  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004c0841  0f2fc1                    COMISS XMM0,XMM1
004c0844  0f46c1                    CMOVBE EAX,ECX
004c0847  8b00                      MOV EAX,dword ptr [EAX]
004c0849  898780030000              MOV dword ptr [EDI + 0x380],EAX
004c084f  eb77                      JMP 0x004c08c8
004c0851  83f801                    CMP EAX,0x1
004c0854  7512                      JNZ 0x004c0868
004c0856  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
004c085e  f30f591d7ca8ba00          MULSS XMM3,dword ptr [0x00baa87c]
004c0866  eb17                      JMP 0x004c087f
004c0868  3d29010000                CMP EAX,0x129
004c086d  7559                      JNZ 0x004c08c8
004c086f  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
004c0877  f30f591dfca6ba00          MULSS XMM3,dword ptr [0x00baa6fc]
004c087f  f30f108e6c030000          MOVSS XMM1,dword ptr [ESI + 0x36c]
004c0887  0f2ecc                    UCOMISS XMM1,XMM4
004c088a  9f                        LAHF
004c088b  f6c444                    TEST AH,0x44
004c088e  7b38                      JNP 0x004c08c8
004c0890  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
004c0898  f30f59d0                  MULSS XMM2,XMM0
004c089c  f30f59d8                  MULSS XMM3,XMM0
004c08a0  f30f5ed1                  DIVSS XMM2,XMM1
004c08a4  f30f5ed9                  DIVSS XMM3,XMM1
004c08a8  f30f589660030000          ADDSS XMM2,dword ptr [ESI + 0x360]
004c08b0  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
004c08b8  f30f589e64030000          ADDSS XMM3,dword ptr [ESI + 0x364]
004c08c0  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
004c08c8  8b8d24d7ffff              MOV ECX,dword ptr [EBP + 0xffffd724]
004c08ce  41                        INC ECX
004c08cf  898d24d7ffff              MOV dword ptr [EBP + 0xffffd724],ECX
004c08d5  3b8da8d6ffff              CMP ECX,dword ptr [EBP + 0xffffd6a8]
004c08db  0f8c5ffeffff              JL 0x004c0740
004c08e1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c08e5  7468                      JZ 0x004c094f
004c08e7  686c00b600                PUSH 0xb6006c
004c08ec  8d4f78                    LEA ECX,[EDI + 0x78]
004c08ef  e8dca4f4ff                CALL 0x0040add0
004c08f4  84c0                      TEST AL,AL
004c08f6  7457                      JZ 0x004c094f
004c08f8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c08fe  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c0904  c7854cd7ffff3a010000      MOV dword ptr [EBP + 0xffffd74c],0x13a
004c090e  e86d5e4900                CALL 0x00956780
004c0913  83ec08                    SUB ESP,0x8
004c0916  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c091c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c0924  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c092b  6a00                      PUSH 0x0
004c092d  6a02                      PUSH 0x2
004c092f  51                        PUSH ECX
004c0930  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c0937  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c093d  e8eed24600                CALL 0x0092dc30
004c0942  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c0948  6a0f                      PUSH 0xf
004c094a  e8212d2400                CALL 0x00703670
004c094f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c0955  8db73c030000              LEA ESI,[EDI + 0x33c]
004c095b  56                        PUSH ESI
004c095c  e8ef2f2400                CALL 0x00703950
004c0961  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
004c0966  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004c096a  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004c0972  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
004c097a  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004c0982  f30f11954cd7ffff          MOVSS dword ptr [EBP + 0xffffd74c],XMM2
004c098a  f30f59c0                  MULSS XMM0,XMM0
004c098e  f30f59c9                  MULSS XMM1,XMM1
004c0992  f30f58c1                  ADDSS XMM0,XMM1
004c0996  e8b550f7ff                CALL 0x00435a50
004c099b  0f2f0554abba00            COMISS XMM0,dword ptr [0x00baab54]
004c09a2  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
004c09aa  7622                      JBE 0x004c09ce
004c09ac  f30f10854cd7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd74c]
004c09b4  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
004c09bc  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
004c09c4  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004c09cc  eb3c                      JMP 0x004c0a0a
004c09ce  f30f108d4cd7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd74c]
004c09d6  f30f10154ca4ba00          MOVSS XMM2,dword ptr [0x00baa44c]
004c09de  0f2ecc                    UCOMISS XMM1,XMM4
004c09e1  9f                        LAHF
004c09e2  f6c444                    TEST AH,0x44
004c09e5  7b13                      JNP 0x004c09fa
004c09e7  0f28c1                    MOVAPS XMM0,XMM1
004c09ea  f30f59ca                  MULSS XMM1,XMM2
004c09ee  f30f58c2                  ADDSS XMM0,XMM2
004c09f2  f30f5cc1                  SUBSS XMM0,XMM1
004c09f6  f30f5ed0                  DIVSS XMM2,XMM0
004c09fa  f30f5997b00b0000          MULSS XMM2,dword ptr [EDI + 0xbb0]
004c0a02  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
004c0a0a  f30f109f80030000          MOVSS XMM3,dword ptr [EDI + 0x380]
004c0a12  f30f5e9f84030000          DIVSS XMM3,dword ptr [EDI + 0x384]
004c0a1a  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
004c0a22  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
004c0a2a  0f28c2                    MOVAPS XMM0,XMM2
004c0a2d  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004c0a35  f30f119d30d7ffff          MOVSS dword ptr [EBP + 0xffffd730],XMM3
004c0a3d  f30f5cc8                  SUBSS XMM1,XMM0
004c0a41  0f28c2                    MOVAPS XMM0,XMM2
004c0a44  0f2fcb                    COMISS XMM1,XMM3
004c0a47  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
004c0a4f  0f82fd000000              JC 0x004c0b52
004c0a55  0f2fca                    COMISS XMM1,XMM2
004c0a58  0f86f4000000              JBE 0x004c0b52
004c0a5e  f30f58d4                  ADDSS XMM2,XMM4
004c0a62  f30f2cc2                  CVTTSS2SI EAX,XMM2
004c0a66  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
004c0a6e  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004c0a78  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c0a7b  898524d7ffff              MOV dword ptr [EBP + 0xffffd724],EAX
004c0a81  85f6                      TEST ESI,ESI
004c0a83  744a                      JZ 0x004c0acf
004c0a85  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c0a89  8bc6                      MOV EAX,ESI
004c0a8b  7202                      JC 0x004c0a8f
004c0a8d  8b06                      MOV EAX,dword ptr [ESI]
004c0a8f  b97800b600                MOV ECX,0xb60078
004c0a94  8a10                      MOV DL,byte ptr [EAX]
004c0a96  3a11                      CMP DL,byte ptr [ECX]
004c0a98  751a                      JNZ 0x004c0ab4
004c0a9a  84d2                      TEST DL,DL
004c0a9c  7412                      JZ 0x004c0ab0
004c0a9e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c0aa1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0aa4  750e                      JNZ 0x004c0ab4
004c0aa6  83c002                    ADD EAX,0x2
004c0aa9  83c102                    ADD ECX,0x2
004c0aac  84d2                      TEST DL,DL
004c0aae  75e4                      JNZ 0x004c0a94
004c0ab0  33c0                      XOR EAX,EAX
004c0ab2  eb05                      JMP 0x004c0ab9
004c0ab4  1bc0                      SBB EAX,EAX
004c0ab6  83c801                    OR EAX,0x1
004c0ab9  85c0                      TEST EAX,EAX
004c0abb  7512                      JNZ 0x004c0acf
004c0abd  384634                    CMP byte ptr [ESI + 0x34],AL
004c0ac0  742e                      JZ 0x004c0af0
004c0ac2  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c0ac8  8d7748                    LEA ESI,[EDI + 0x48]
004c0acb  7523                      JNZ 0x004c0af0
004c0acd  eb03                      JMP 0x004c0ad2
004c0acf  8d7748                    LEA ESI,[EDI + 0x48]
004c0ad2  6a01                      PUSH 0x1
004c0ad4  687800b600                PUSH 0xb60078
004c0ad9  8bce                      MOV ECX,ESI
004c0adb  e8f09af4ff                CALL 0x0040a5d0
004c0ae0  84c0                      TEST AL,AL
004c0ae2  740c                      JZ 0x004c0af0
004c0ae4  8d4e30                    LEA ECX,[ESI + 0x30]
004c0ae7  e8c496f4ff                CALL 0x0040a1b0
004c0aec  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c0af0  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c0af6  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c0afc  c7854cd7ffffa6010000      MOV dword ptr [EBP + 0xffffd74c],0x1a6
004c0b06  e8755c4900                CALL 0x00956780
004c0b0b  83ec08                    SUB ESP,0x8
004c0b0e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c0b14  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c0b1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c0b23  6a00                      PUSH 0x0
004c0b25  6a02                      PUSH 0x2
004c0b27  51                        PUSH ECX
004c0b28  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c0b2f  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c0b35  e8f6d04600                CALL 0x0092dc30
004c0b3a  8b8524d7ffff              MOV EAX,dword ptr [EBP + 0xffffd724]
004c0b40  8db73c030000              LEA ESI,[EDI + 0x33c]
004c0b46  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c0b50  eb0a                      JMP 0x004c0b5c
004c0b52  f30f2cc0                  CVTTSS2SI EAX,XMM0
004c0b56  898524d7ffff              MOV dword ptr [EBP + 0xffffd724],EAX
004c0b5c  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004c0b64  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
004c0b68  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004c0b70  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
004c0b75  898510d7ffff              MOV dword ptr [EBP + 0xffffd710],EAX
004c0b7b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004c0b83  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004c0b8b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004c0b93  0f28c8                    MOVAPS XMM1,XMM0
004c0b96  f30f59d2                  MULSS XMM2,XMM2
004c0b9a  f30f59c1                  MULSS XMM0,XMM1
004c0b9e  f30f58c2                  ADDSS XMM0,XMM2
004c0ba2  e8a94ef7ff                CALL 0x00435a50
004c0ba7  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004c0baf  0f57d2                    XORPS XMM2,XMM2
004c0bb2  0f2fc1                    COMISS XMM0,XMM1
004c0bb5  7634                      JBE 0x004c0beb
004c0bb7  0f2fc2                    COMISS XMM0,XMM2
004c0bba  762f                      JBE 0x004c0beb
004c0bbc  f30f5ec8                  DIVSS XMM1,XMM0
004c0bc0  0f28c1                    MOVAPS XMM0,XMM1
004c0bc3  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
004c0bcb  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004c0bd3  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
004c0bdb  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004c0be3  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004c0beb  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c0bf1  83f803                    CMP EAX,0x3
004c0bf4  0f859e0f0000              JNZ 0x004c1b98
004c0bfa  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004c0c00  85d2                      TEST EDX,EDX
004c0c02  7e21                      JLE 0x004c0c25
004c0c04  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004c0c0c  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004c0c14  2bc8                      SUB ECX,EAX
004c0c16  33c0                      XOR EAX,EAX
004c0c18  03ca                      ADD ECX,EDX
004c0c1a  85c9                      TEST ECX,ECX
004c0c1c  0f4fc1                    CMOVG EAX,ECX
004c0c1f  898710040000              MOV dword ptr [EDI + 0x410],EAX
004c0c25  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c0c28  85f6                      TEST ESI,ESI
004c0c2a  740c                      JZ 0x004c0c38
004c0c2c  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c0c30  8bce                      MOV ECX,ESI
004c0c32  7209                      JC 0x004c0c3d
004c0c34  8b0e                      MOV ECX,dword ptr [ESI]
004c0c36  eb05                      JMP 0x004c0c3d
004c0c38  b9eca4b100                MOV ECX,0xb1a4ec
004c0c3d  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004c0c43  8b04853c01b600            MOV EAX,dword ptr [EAX*0x4 + 0xb6013c]
004c0c4a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004c0c50  8a11                      MOV DL,byte ptr [ECX]
004c0c52  3a10                      CMP DL,byte ptr [EAX]
004c0c54  751a                      JNZ 0x004c0c70
004c0c56  84d2                      TEST DL,DL
004c0c58  7412                      JZ 0x004c0c6c
004c0c5a  8a5101                    MOV DL,byte ptr [ECX + 0x1]
004c0c5d  3a5001                    CMP DL,byte ptr [EAX + 0x1]
004c0c60  750e                      JNZ 0x004c0c70
004c0c62  83c102                    ADD ECX,0x2
004c0c65  83c002                    ADD EAX,0x2
004c0c68  84d2                      TEST DL,DL
004c0c6a  75e4                      JNZ 0x004c0c50
004c0c6c  33c0                      XOR EAX,EAX
004c0c6e  eb05                      JMP 0x004c0c75
004c0c70  1bc0                      SBB EAX,EAX
004c0c72  83c801                    OR EAX,0x1
004c0c75  85c0                      TEST EAX,EAX
004c0c77  0f859e000000              JNZ 0x004c0d1b
004c0c7d  85f6                      TEST ESI,ESI
004c0c7f  740c                      JZ 0x004c0c8d
004c0c81  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c0c87  0f85a2020000              JNZ 0x004c0f2f
004c0c8d  8b0d6801b600              MOV ECX,dword ptr [0x00b60168]
004c0c93  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
004c0c9d  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c0ca0  85f6                      TEST ESI,ESI
004c0ca2  746c                      JZ 0x004c0d10
004c0ca4  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c0ca8  8bc6                      MOV EAX,ESI
004c0caa  7204                      JC 0x004c0cb0
004c0cac  8b06                      MOV EAX,dword ptr [ESI]
004c0cae  6690                      NOP
004c0cb0  8a10                      MOV DL,byte ptr [EAX]
004c0cb2  3a11                      CMP DL,byte ptr [ECX]
004c0cb4  751a                      JNZ 0x004c0cd0
004c0cb6  84d2                      TEST DL,DL
004c0cb8  7412                      JZ 0x004c0ccc
004c0cba  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c0cbd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0cc0  750e                      JNZ 0x004c0cd0
004c0cc2  83c002                    ADD EAX,0x2
004c0cc5  83c102                    ADD ECX,0x2
004c0cc8  84d2                      TEST DL,DL
004c0cca  75e4                      JNZ 0x004c0cb0
004c0ccc  33c0                      XOR EAX,EAX
004c0cce  eb05                      JMP 0x004c0cd5
004c0cd0  1bc0                      SBB EAX,EAX
004c0cd2  83c801                    OR EAX,0x1
004c0cd5  85c0                      TEST EAX,EAX
004c0cd7  7526                      JNZ 0x004c0cff
004c0cd9  384634                    CMP byte ptr [ESI + 0x34],AL
004c0cdc  0f844d020000              JZ 0x004c0f2f
004c0ce2  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c0ce8  8d7748                    LEA ESI,[EDI + 0x48]
004c0ceb  0f853e020000              JNZ 0x004c0f2f
004c0cf1  8b0d6801b600              MOV ECX,dword ptr [0x00b60168]
004c0cf7  6a01                      PUSH 0x1
004c0cf9  51                        PUSH ECX
004c0cfa  e919020000                JMP 0x004c0f18
004c0cff  8b0d6801b600              MOV ECX,dword ptr [0x00b60168]
004c0d05  8d7748                    LEA ESI,[EDI + 0x48]
004c0d08  6a01                      PUSH 0x1
004c0d0a  51                        PUSH ECX
004c0d0b  e908020000                JMP 0x004c0f18
004c0d10  6a01                      PUSH 0x1
004c0d12  8d7748                    LEA ESI,[EDI + 0x48]
004c0d15  51                        PUSH ECX
004c0d16  e9fd010000                JMP 0x004c0f18
004c0d1b  85f6                      TEST ESI,ESI
004c0d1d  0f84ec000000              JZ 0x004c0e0f
004c0d23  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c0d2a  0f84df000000              JZ 0x004c0e0f
004c0d30  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c0d33  85c0                      TEST EAX,EAX
004c0d35  740a                      JZ 0x004c0d41
004c0d37  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c0d3b  7209                      JC 0x004c0d46
004c0d3d  8b00                      MOV EAX,dword ptr [EAX]
004c0d3f  eb05                      JMP 0x004c0d46
004c0d41  b8eca4b100                MOV EAX,0xb1a4ec
004c0d46  b9b000b600                MOV ECX,0xb600b0
004c0d4b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c0d50  8a10                      MOV DL,byte ptr [EAX]
004c0d52  3a11                      CMP DL,byte ptr [ECX]
004c0d54  751a                      JNZ 0x004c0d70
004c0d56  84d2                      TEST DL,DL
004c0d58  7412                      JZ 0x004c0d6c
004c0d5a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c0d5d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0d60  750e                      JNZ 0x004c0d70
004c0d62  83c002                    ADD EAX,0x2
004c0d65  83c102                    ADD ECX,0x2
004c0d68  84d2                      TEST DL,DL
004c0d6a  75e4                      JNZ 0x004c0d50
004c0d6c  33c0                      XOR EAX,EAX
004c0d6e  eb05                      JMP 0x004c0d75
004c0d70  1bc0                      SBB EAX,EAX
004c0d72  83c801                    OR EAX,0x1
004c0d75  85c0                      TEST EAX,EAX
004c0d77  0f85b2010000              JNZ 0x004c0f2f
004c0d7d  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004c0d85  8d8d3cd5ffff              LEA ECX,[EBP + 0xffffd53c]
004c0d8b  a17816c700                MOV EAX,[0x00c71678]
004c0d90  f30f58c1                  ADDSS XMM0,XMM1
004c0d94  51                        PUSH ECX
004c0d95  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004c0d9d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c0da3  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c0dab  e8501f3500                CALL 0x00812d00
004c0db0  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c0db8  0f2f4004                  COMISS XMM0,dword ptr [EAX + 0x4]
004c0dbc  0f826d010000              JC 0x004c0f2f
004c0dc2  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c0dc5  85f6                      TEST ESI,ESI
004c0dc7  0f8441010000              JZ 0x004c0f0e
004c0dcd  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c0dd1  8bc6                      MOV EAX,ESI
004c0dd3  7202                      JC 0x004c0dd7
004c0dd5  8b06                      MOV EAX,dword ptr [ESI]
004c0dd7  b9b800b600                MOV ECX,0xb600b8
004c0ddc  0f1f4000                  NOP dword ptr [EAX]
004c0de0  8a10                      MOV DL,byte ptr [EAX]
004c0de2  3a11                      CMP DL,byte ptr [ECX]
004c0de4  0f8509010000              JNZ 0x004c0ef3
004c0dea  84d2                      TEST DL,DL
004c0dec  0f84fd000000              JZ 0x004c0eef
004c0df2  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c0df5  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0df8  0f85f5000000              JNZ 0x004c0ef3
004c0dfe  83c002                    ADD EAX,0x2
004c0e01  83c102                    ADD ECX,0x2
004c0e04  84d2                      TEST DL,DL
004c0e06  75d8                      JNZ 0x004c0de0
004c0e08  33c0                      XOR EAX,EAX
004c0e0a  e9e9000000                JMP 0x004c0ef8
004c0e0f  83bd10d7ffff01            CMP dword ptr [EBP + 0xffffd710],0x1
004c0e16  0f85a1000000              JNZ 0x004c0ebd
004c0e1c  a17816c700                MOV EAX,[0x00c71678]
004c0e21  8d8d44d5ffff              LEA ECX,[EBP + 0xffffd544]
004c0e27  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004c0e2f  51                        PUSH ECX
004c0e30  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c0e38  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c0e3e  e8bd1e3500                CALL 0x00812d00
004c0e43  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004c0e48  0f2f8544d7ffff            COMISS XMM0,dword ptr [EBP + 0xffffd744]
004c0e4f  766c                      JBE 0x004c0ebd
004c0e51  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c0e54  85f6                      TEST ESI,ESI
004c0e56  7459                      JZ 0x004c0eb1
004c0e58  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c0e5c  8bc6                      MOV EAX,ESI
004c0e5e  7202                      JC 0x004c0e62
004c0e60  8b06                      MOV EAX,dword ptr [ESI]
004c0e62  b9b000b600                MOV ECX,0xb600b0
004c0e67  8a10                      MOV DL,byte ptr [EAX]
004c0e69  3a11                      CMP DL,byte ptr [ECX]
004c0e6b  751a                      JNZ 0x004c0e87
004c0e6d  84d2                      TEST DL,DL
004c0e6f  7412                      JZ 0x004c0e83
004c0e71  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c0e74  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0e77  750e                      JNZ 0x004c0e87
004c0e79  83c002                    ADD EAX,0x2
004c0e7c  83c102                    ADD ECX,0x2
004c0e7f  84d2                      TEST DL,DL
004c0e81  75e4                      JNZ 0x004c0e67
004c0e83  33c0                      XOR EAX,EAX
004c0e85  eb05                      JMP 0x004c0e8c
004c0e87  1bc0                      SBB EAX,EAX
004c0e89  83c801                    OR EAX,0x1
004c0e8c  85c0                      TEST EAX,EAX
004c0e8e  7521                      JNZ 0x004c0eb1
004c0e90  384634                    CMP byte ptr [ESI + 0x34],AL
004c0e93  0f8496000000              JZ 0x004c0f2f
004c0e99  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c0e9f  8d7748                    LEA ESI,[EDI + 0x48]
004c0ea2  0f8587000000              JNZ 0x004c0f2f
004c0ea8  6a01                      PUSH 0x1
004c0eaa  68b000b600                PUSH 0xb600b0
004c0eaf  eb67                      JMP 0x004c0f18
004c0eb1  6a01                      PUSH 0x1
004c0eb3  8d7748                    LEA ESI,[EDI + 0x48]
004c0eb6  68b000b600                PUSH 0xb600b0
004c0ebb  eb5b                      JMP 0x004c0f18
004c0ebd  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c0ec0  85f6                      TEST ESI,ESI
004c0ec2  744a                      JZ 0x004c0f0e
004c0ec4  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c0ec8  8bc6                      MOV EAX,ESI
004c0eca  7202                      JC 0x004c0ece
004c0ecc  8b06                      MOV EAX,dword ptr [ESI]
004c0ece  b9b800b600                MOV ECX,0xb600b8
004c0ed3  8a10                      MOV DL,byte ptr [EAX]
004c0ed5  3a11                      CMP DL,byte ptr [ECX]
004c0ed7  751a                      JNZ 0x004c0ef3
004c0ed9  84d2                      TEST DL,DL
004c0edb  7412                      JZ 0x004c0eef
004c0edd  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c0ee0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0ee3  750e                      JNZ 0x004c0ef3
004c0ee5  83c002                    ADD EAX,0x2
004c0ee8  83c102                    ADD ECX,0x2
004c0eeb  84d2                      TEST DL,DL
004c0eed  75e4                      JNZ 0x004c0ed3
004c0eef  33c0                      XOR EAX,EAX
004c0ef1  eb05                      JMP 0x004c0ef8
004c0ef3  1bc0                      SBB EAX,EAX
004c0ef5  83c801                    OR EAX,0x1
004c0ef8  85c0                      TEST EAX,EAX
004c0efa  7512                      JNZ 0x004c0f0e
004c0efc  384634                    CMP byte ptr [ESI + 0x34],AL
004c0eff  742e                      JZ 0x004c0f2f
004c0f01  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c0f07  8d7748                    LEA ESI,[EDI + 0x48]
004c0f0a  7523                      JNZ 0x004c0f2f
004c0f0c  eb03                      JMP 0x004c0f11
004c0f0e  8d7748                    LEA ESI,[EDI + 0x48]
004c0f11  6a01                      PUSH 0x1
004c0f13  68b800b600                PUSH 0xb600b8
004c0f18  8bce                      MOV ECX,ESI
004c0f1a  e8b196f4ff                CALL 0x0040a5d0
004c0f1f  84c0                      TEST AL,AL
004c0f21  740c                      JZ 0x004c0f2f
004c0f23  8d4e30                    LEA ECX,[ESI + 0x30]
004c0f26  e88592f4ff                CALL 0x0040a1b0
004c0f2b  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c0f2f  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004c0f36  7e15                      JLE 0x004c0f4d
004c0f38  f30f100554a0ba00          MOVSS XMM0,dword ptr [0x00baa054]
004c0f40  0f2f8530d7ffff            COMISS XMM0,dword ptr [EBP + 0xffffd730]
004c0f47  0f864a410000              JBE 0x004c5097
004c0f4d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c0f51  0f8440410000              JZ 0x004c5097
004c0f57  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c0f5e  0f8433410000              JZ 0x004c5097
004c0f64  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c0f67  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c0f6b  7202                      JC 0x004c0f6f
004c0f6d  8b00                      MOV EAX,dword ptr [EAX]
004c0f6f  b9b800b600                MOV ECX,0xb600b8
004c0f74  8a10                      MOV DL,byte ptr [EAX]
004c0f76  3a11                      CMP DL,byte ptr [ECX]
004c0f78  751a                      JNZ 0x004c0f94
004c0f7a  84d2                      TEST DL,DL
004c0f7c  7412                      JZ 0x004c0f90
004c0f7e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c0f81  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c0f84  750e                      JNZ 0x004c0f94
004c0f86  83c002                    ADD EAX,0x2
004c0f89  83c102                    ADD ECX,0x2
004c0f8c  84d2                      TEST DL,DL
004c0f8e  75e4                      JNZ 0x004c0f74
004c0f90  33c0                      XOR EAX,EAX
004c0f92  eb05                      JMP 0x004c0f99
004c0f94  1bc0                      SBB EAX,EAX
004c0f96  83c801                    OR EAX,0x1
004c0f99  85c0                      TEST EAX,EAX
004c0f9b  0f85f6400000              JNZ 0x004c5097
004c0fa1  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004c0fa9  83ec08                    SUB ESP,0x8
004c0fac  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c0fb4  d98544d7ffff              FLD dword ptr [EBP + 0xffffd744]
004c0fba  dd1c24                    FSTP qword ptr [ESP]
004c0fbd  e855f96200                CALL 0x00af0917
004c0fc2  d99d44d7ffff              FSTP dword ptr [EBP + 0xffffd744]
004c0fc8  f30f2c8544d7ffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffd744]
004c0fd0  83c408                    ADD ESP,0x8
004c0fd3  85c0                      TEST EAX,EAX
004c0fd5  0f85bc400000              JNZ 0x004c5097
004c0fdb  e880df2200                CALL 0x006eef60
004c0fe0  83e001                    AND EAX,0x1
004c0fe3  7415                      JZ 0x004c0ffa
004c0fe5  f30f100554a0ba00          MOVSS XMM0,dword ptr [0x00baa054]
004c0fed  0f2f8530d7ffff            COMISS XMM0,dword ptr [EBP + 0xffffd730]
004c0ff4  0f869d400000              JBE 0x004c5097
004c0ffa  33d2                      XOR EDX,EDX
004c0ffc  33f6                      XOR ESI,ESI
004c0ffe  899538d7ffff              MOV dword ptr [EBP + 0xffffd738],EDX
004c1004  89b53cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ESI
004c100a  899540d7ffff              MOV dword ptr [EBP + 0xffffd740],EDX
004c1010  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
004c1014  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c101a  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
004c1020  898520d7ffff              MOV dword ptr [EBP + 0xffffd720],EAX
004c1026  81e100000010              AND ECX,0x10000000
004c102c  33c0                      XOR EAX,EAX
004c102e  c6854bd7ffff01            MOV byte ptr [EBP + 0xffffd74b],0x1
004c1035  0bc1                      OR EAX,ECX
004c1037  7506                      JNZ 0x004c103f
004c1039  88954bd7ffff              MOV byte ptr [EBP + 0xffffd74b],DL
004c103f  83bd24d7ffff02            CMP dword ptr [EBP + 0xffffd724],0x2
004c1046  776b                      JA 0x004c10b3
004c1048  8b8520d7ffff              MOV EAX,dword ptr [EBP + 0xffffd720]
004c104e  3d58020000                CMP EAX,0x258
004c1053  742a                      JZ 0x004c107f
004c1055  3dc6020000                CMP EAX,0x2c6
004c105a  7423                      JZ 0x004c107f
004c105c  3dd0020000                CMP EAX,0x2d0
004c1061  741c                      JZ 0x004c107f
004c1063  c78594d6ffff58020000      MOV dword ptr [EBP + 0xffffd694],0x258
004c106d  8d8594d6ffff              LEA EAX,[EBP + 0xffffd694]
004c1073  c78598d6ffffc8000000      MOV dword ptr [EBP + 0xffffd698],0xc8
004c107d  eb1a                      JMP 0x004c1099
004c107f  c7858cd6ffff58020000      MOV dword ptr [EBP + 0xffffd68c],0x258
004c1089  8d858cd6ffff              LEA EAX,[EBP + 0xffffd68c]
004c108f  c78590d6ffff19000000      MOV dword ptr [EBP + 0xffffd690],0x19
004c1099  50                        PUSH EAX
004c109a  6a00                      PUSH 0x0
004c109c  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c10a2  e81901feff                CALL 0x004a11c0
004c10a7  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c10ad  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c10b3  8b8510d7ffff              MOV EAX,dword ptr [EBP + 0xffffd710]
004c10b9  48                        DEC EAX
004c10ba  83f802                    CMP EAX,0x2
004c10bd  0f8713010000              JA 0x004c11d6
004c10c3  80bd4bd7ffff00            CMP byte ptr [EBP + 0xffffd74b],0x0
004c10ca  0f8506010000              JNZ 0x004c11d6
004c10d0  8bce                      MOV ECX,ESI
004c10d2  33c0                      XOR EAX,EAX
004c10d4  2bca                      SUB ECX,EDX
004c10d6  c1f903                    SAR ECX,0x3
004c10d9  83bd20d7ffff64            CMP dword ptr [EBP + 0xffffd720],0x64
004c10e0  7573                      JNZ 0x004c1155
004c10e2  85c9                      TEST ECX,ECX
004c10e4  740b                      JZ 0x004c10f1
004c10e6  833cc264                  CMP dword ptr [EDX + EAX*0x8],0x64
004c10ea  7442                      JZ 0x004c112e
004c10ec  40                        INC EAX
004c10ed  3bc1                      CMP EAX,ECX
004c10ef  72f5                      JC 0x004c10e6
004c10f1  c78584d6ffff64000000      MOV dword ptr [EBP + 0xffffd684],0x64
004c10fb  c78588d6ffff32000000      MOV dword ptr [EBP + 0xffffd688],0x32
004c1105  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c110b  7440                      JZ 0x004c114d
004c110d  c70664000000              MOV dword ptr [ESI],0x64
004c1113  c7460432000000            MOV dword ptr [ESI + 0x4],0x32
004c111a  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c1120  83c608                    ADD ESI,0x8
004c1123  89b53cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ESI
004c1129  e9a2000000                JMP 0x004c11d0
004c112e  8344c20432                ADD dword ptr [EDX + EAX*0x8 + 0x4],0x32
004c1133  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c1139  837cc20400                CMP dword ptr [EDX + EAX*0x8 + 0x4],0x0
004c113e  7d6f                      JGE 0x004c11af
004c1140  c744c20400000000          MOV dword ptr [EDX + EAX*0x8 + 0x4],0x0
004c1148  e97d000000                JMP 0x004c11ca
004c114d  8d8584d6ffff              LEA EAX,[EBP + 0xffffd684]
004c1153  eb68                      JMP 0x004c11bd
004c1155  85c9                      TEST ECX,ECX
004c1157  7412                      JZ 0x004c116b
004c1159  0f1f8000000000            NOP dword ptr [EAX]
004c1160  833cc264                  CMP dword ptr [EDX + EAX*0x8],0x64
004c1164  743f                      JZ 0x004c11a5
004c1166  40                        INC EAX
004c1167  3bc1                      CMP EAX,ECX
004c1169  72f5                      JC 0x004c1160
004c116b  c7857cd6ffff64000000      MOV dword ptr [EBP + 0xffffd67c],0x64
004c1175  c78580d6ffffc8000000      MOV dword ptr [EBP + 0xffffd680],0xc8
004c117f  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c1185  7430                      JZ 0x004c11b7
004c1187  c70664000000              MOV dword ptr [ESI],0x64
004c118d  c74604c8000000            MOV dword ptr [ESI + 0x4],0xc8
004c1194  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c119a  83c608                    ADD ESI,0x8
004c119d  89b53cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ESI
004c11a3  eb2b                      JMP 0x004c11d0
004c11a5  8144c204c8000000          ADD dword ptr [EDX + EAX*0x8 + 0x4],0xc8
004c11ad  eb84                      JMP 0x004c1133
004c11af  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c11b5  eb1f                      JMP 0x004c11d6
004c11b7  8d857cd6ffff              LEA EAX,[EBP + 0xffffd67c]
004c11bd  50                        PUSH EAX
004c11be  56                        PUSH ESI
004c11bf  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c11c5  e8f6fffdff                CALL 0x004a11c0
004c11ca  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c11d0  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c11d6  83bd10d7ffff02            CMP dword ptr [EBP + 0xffffd710],0x2
004c11dd  8b8520d7ffff              MOV EAX,dword ptr [EBP + 0xffffd720]
004c11e3  0f8c93010000              JL 0x004c137c
004c11e9  3d2c010000                CMP EAX,0x12c
004c11ee  0f84b2000000              JZ 0x004c12a6
004c11f4  8bce                      MOV ECX,ESI
004c11f6  33c0                      XOR EAX,EAX
004c11f8  2bca                      SUB ECX,EDX
004c11fa  c1f903                    SAR ECX,0x3
004c11fd  85c9                      TEST ECX,ECX
004c11ff  740e                      JZ 0x004c120f
004c1201  813cc22c010000            CMP dword ptr [EDX + EAX*0x8],0x12c
004c1208  7445                      JZ 0x004c124f
004c120a  40                        INC EAX
004c120b  3bc1                      CMP EAX,ECX
004c120d  72f2                      JC 0x004c1201
004c120f  c78574d6ffff2c010000      MOV dword ptr [EBP + 0xffffd674],0x12c
004c1219  c78578d6ffffc8000000      MOV dword ptr [EBP + 0xffffd678],0xc8
004c1223  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c1229  7443                      JZ 0x004c126e
004c122b  c7062c010000              MOV dword ptr [ESI],0x12c
004c1231  c74604c8000000            MOV dword ptr [ESI + 0x4],0xc8
004c1238  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c123e  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c1244  83c608                    ADD ESI,0x8
004c1247  89b53cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ESI
004c124d  eb3e                      JMP 0x004c128d
004c124f  8144c204c8000000          ADD dword ptr [EDX + EAX*0x8 + 0x4],0xc8
004c1257  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c125d  837cc20400                CMP dword ptr [EDX + EAX*0x8 + 0x4],0x0
004c1262  7d23                      JGE 0x004c1287
004c1264  c744c20400000000          MOV dword ptr [EDX + EAX*0x8 + 0x4],0x0
004c126c  eb13                      JMP 0x004c1281
004c126e  8d8574d6ffff              LEA EAX,[EBP + 0xffffd674]
004c1274  50                        PUSH EAX
004c1275  56                        PUSH ESI
004c1276  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c127c  e83ffffdff                CALL 0x004a11c0
004c1281  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c1287  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c128d  8b8520d7ffff              MOV EAX,dword ptr [EBP + 0xffffd720]
004c1293  83f80d                    CMP EAX,0xd
004c1296  741e                      JZ 0x004c12b6
004c1298  3dbc020000                CMP EAX,0x2bc
004c129d  7417                      JZ 0x004c12b6
004c129f  3dc6020000                CMP EAX,0x2c6
004c12a4  7410                      JZ 0x004c12b6
004c12a6  3dd0020000                CMP EAX,0x2d0
004c12ab  7409                      JZ 0x004c12b6
004c12ad  83bdb8d5ffff02            CMP dword ptr [EBP + 0xffffd5b8],0x2
004c12b4  760d                      JBE 0x004c12c3
004c12b6  80bd4bd7ffff00            CMP byte ptr [EBP + 0xffffd74b],0x0
004c12bd  0f84b9000000              JZ 0x004c137c
004c12c3  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
004c12c9  33c0                      XOR EAX,EAX
004c12cb  81e100000010              AND ECX,0x10000000
004c12d1  0bc1                      OR EAX,ECX
004c12d3  740d                      JZ 0x004c12e2
004c12d5  83bdb8d5ffff00            CMP dword ptr [EBP + 0xffffd5b8],0x0
004c12dc  0f8594000000              JNZ 0x004c1376
004c12e2  8bce                      MOV ECX,ESI
004c12e4  33c0                      XOR EAX,EAX
004c12e6  2bca                      SUB ECX,EDX
004c12e8  c1f903                    SAR ECX,0x3
004c12eb  85c9                      TEST ECX,ECX
004c12ed  740c                      JZ 0x004c12fb
004c12ef  90                        NOP
004c12f0  833cc20d                  CMP dword ptr [EDX + EAX*0x8],0xd
004c12f4  7445                      JZ 0x004c133b
004c12f6  40                        INC EAX
004c12f7  3bc1                      CMP EAX,ECX
004c12f9  72f5                      JC 0x004c12f0
004c12fb  c7856cd6ffff0d000000      MOV dword ptr [EBP + 0xffffd66c],0xd
004c1305  c78570d6ffff64000000      MOV dword ptr [EBP + 0xffffd670],0x64
004c130f  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c1315  7440                      JZ 0x004c1357
004c1317  c7060d000000              MOV dword ptr [ESI],0xd
004c131d  c7460464000000            MOV dword ptr [ESI + 0x4],0x64
004c1324  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c132a  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c1330  83c608                    ADD ESI,0x8
004c1333  89b53cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ESI
004c1339  eb3b                      JMP 0x004c1376
004c133b  8344c20464                ADD dword ptr [EDX + EAX*0x8 + 0x4],0x64
004c1340  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c1346  837cc20400                CMP dword ptr [EDX + EAX*0x8 + 0x4],0x0
004c134b  7d23                      JGE 0x004c1370
004c134d  c744c20400000000          MOV dword ptr [EDX + EAX*0x8 + 0x4],0x0
004c1355  eb13                      JMP 0x004c136a
004c1357  8d856cd6ffff              LEA EAX,[EBP + 0xffffd66c]
004c135d  50                        PUSH EAX
004c135e  56                        PUSH ESI
004c135f  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c1365  e856fefdff                CALL 0x004a11c0
004c136a  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c1370  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c1376  8b8520d7ffff              MOV EAX,dword ptr [EBP + 0xffffd720]
004c137c  83bd10d7ffff03            CMP dword ptr [EBP + 0xffffd710],0x3
004c1383  0f8cdd020000              JL 0x004c1666
004c1389  3dc6020000                CMP EAX,0x2c6
004c138e  0f848e000000              JZ 0x004c1422
004c1394  3dd0020000                CMP EAX,0x2d0
004c1399  0f8483000000              JZ 0x004c1422
004c139f  8bc6                      MOV EAX,ESI
004c13a1  33c9                      XOR ECX,ECX
004c13a3  2bc2                      SUB EAX,EDX
004c13a5  c1f803                    SAR EAX,0x3
004c13a8  85c0                      TEST EAX,EAX
004c13aa  7412                      JZ 0x004c13be
004c13ac  0f1f4000                  NOP dword ptr [EAX]
004c13b0  813ccac6020000            CMP dword ptr [EDX + ECX*0x8],0x2c6
004c13b7  7442                      JZ 0x004c13fb
004c13b9  41                        INC ECX
004c13ba  3bc8                      CMP ECX,EAX
004c13bc  72f2                      JC 0x004c13b0
004c13be  c78564d6ffffc6020000      MOV dword ptr [EBP + 0xffffd664],0x2c6
004c13c8  c78568d6ffff64000000      MOV dword ptr [EBP + 0xffffd668],0x64
004c13d2  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c13d8  7440                      JZ 0x004c141a
004c13da  c706c6020000              MOV dword ptr [ESI],0x2c6
004c13e0  c7460464000000            MOV dword ptr [ESI + 0x4],0x64
004c13e7  8b8d3cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd73c]
004c13ed  83c108                    ADD ECX,0x8
004c13f0  898d3cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ECX
004c13f6  e9a5000000                JMP 0x004c14a0
004c13fb  8344ca0464                ADD dword ptr [EDX + ECX*0x8 + 0x4],0x64
004c1400  8b8538d7ffff              MOV EAX,dword ptr [EBP + 0xffffd738]
004c1406  837cc80400                CMP dword ptr [EAX + ECX*0x8 + 0x4],0x0
004c140b  7d72                      JGE 0x004c147f
004c140d  c744c80400000000          MOV dword ptr [EAX + ECX*0x8 + 0x4],0x0
004c1415  e980000000                JMP 0x004c149a
004c141a  8d8564d6ffff              LEA EAX,[EBP + 0xffffd664]
004c1420  eb6b                      JMP 0x004c148d
004c1422  8bc6                      MOV EAX,ESI
004c1424  33c9                      XOR ECX,ECX
004c1426  2bc2                      SUB EAX,EDX
004c1428  c1f803                    SAR EAX,0x3
004c142b  85c0                      TEST EAX,EAX
004c142d  740f                      JZ 0x004c143e
004c142f  90                        NOP
004c1430  813ccac6020000            CMP dword ptr [EDX + ECX*0x8],0x2c6
004c1437  743f                      JZ 0x004c1478
004c1439  41                        INC ECX
004c143a  3bc8                      CMP ECX,EAX
004c143c  72f2                      JC 0x004c1430
004c143e  c7855cd6ffffc6020000      MOV dword ptr [EBP + 0xffffd65c],0x2c6
004c1448  c78560d6ffff19000000      MOV dword ptr [EBP + 0xffffd660],0x19
004c1452  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c1458  742d                      JZ 0x004c1487
004c145a  c706c6020000              MOV dword ptr [ESI],0x2c6
004c1460  c7460419000000            MOV dword ptr [ESI + 0x4],0x19
004c1467  8b8d3cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd73c]
004c146d  83c108                    ADD ECX,0x8
004c1470  898d3cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ECX
004c1476  eb28                      JMP 0x004c14a0
004c1478  8344ca0419                ADD dword ptr [EDX + ECX*0x8 + 0x4],0x19
004c147d  eb81                      JMP 0x004c1400
004c147f  8b8d3cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd73c]
004c1485  eb1f                      JMP 0x004c14a6
004c1487  8d855cd6ffff              LEA EAX,[EBP + 0xffffd65c]
004c148d  50                        PUSH EAX
004c148e  56                        PUSH ESI
004c148f  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c1495  e826fdfdff                CALL 0x004a11c0
004c149a  8b8d3cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd73c]
004c14a0  8b8538d7ffff              MOV EAX,dword ptr [EBP + 0xffffd738]
004c14a6  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004c14ae  0f2f0534a8ba00            COMISS XMM0,dword ptr [0x00baa834]
004c14b5  0f86a1000000              JBE 0x004c155c
004c14bb  8bf1                      MOV ESI,ECX
004c14bd  33d2                      XOR EDX,EDX
004c14bf  2bf0                      SUB ESI,EAX
004c14c1  c1fe03                    SAR ESI,0x3
004c14c4  85f6                      TEST ESI,ESI
004c14c6  7416                      JZ 0x004c14de
004c14c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004c14d0  813cd0d0020000            CMP dword ptr [EAX + EDX*0x8],0x2d0
004c14d7  7445                      JZ 0x004c151e
004c14d9  42                        INC EDX
004c14da  3bd6                      CMP EDX,ESI
004c14dc  72f2                      JC 0x004c14d0
004c14de  c7852cd6ffffd0020000      MOV dword ptr [EBP + 0xffffd62c],0x2d0
004c14e8  c78530d6ffff2a2c0a00      MOV dword ptr [EBP + 0xffffd630],0xa2c2a
004c14f2  3b8d40d7ffff              CMP ECX,dword ptr [EBP + 0xffffd740]
004c14f8  7443                      JZ 0x004c153d
004c14fa  c701d0020000              MOV dword ptr [ECX],0x2d0
004c1500  c741042a2c0a00            MOV dword ptr [ECX + 0x4],0xa2c2a
004c1507  8b8d3cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd73c]
004c150d  8b8538d7ffff              MOV EAX,dword ptr [EBP + 0xffffd738]
004c1513  83c108                    ADD ECX,0x8
004c1516  898d3cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ECX
004c151c  eb3e                      JMP 0x004c155c
004c151e  8144d0042a2c0a00          ADD dword ptr [EAX + EDX*0x8 + 0x4],0xa2c2a
004c1526  8b8538d7ffff              MOV EAX,dword ptr [EBP + 0xffffd738]
004c152c  837cd00400                CMP dword ptr [EAX + EDX*0x8 + 0x4],0x0
004c1531  7d23                      JGE 0x004c1556
004c1533  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004c153b  eb13                      JMP 0x004c1550
004c153d  8d852cd6ffff              LEA EAX,[EBP + 0xffffd62c]
004c1543  50                        PUSH EAX
004c1544  51                        PUSH ECX
004c1545  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c154b  e870fcfdff                CALL 0x004a11c0
004c1550  8b8538d7ffff              MOV EAX,dword ptr [EBP + 0xffffd738]
004c1556  8b8d3cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd73c]
004c155c  8bd1                      MOV EDX,ECX
004c155e  33f6                      XOR ESI,ESI
004c1560  2bd0                      SUB EDX,EAX
004c1562  c1fa03                    SAR EDX,0x3
004c1565  81bd20d7ffffc8000000      CMP dword ptr [EBP + 0xffffd720],0xc8
004c156f  7573                      JNZ 0x004c15e4
004c1571  85d2                      TEST EDX,EDX
004c1573  740e                      JZ 0x004c1583
004c1575  813cf0c8000000            CMP dword ptr [EAX + ESI*0x8],0xc8
004c157c  7442                      JZ 0x004c15c0
004c157e  46                        INC ESI
004c157f  3bf2                      CMP ESI,EDX
004c1581  72f2                      JC 0x004c1575
004c1583  c785bcd5ffffc8000000      MOV dword ptr [EBP + 0xffffd5bc],0xc8
004c158d  c785c0d5ffff19000000      MOV dword ptr [EBP + 0xffffd5c0],0x19
004c1597  3b8d40d7ffff              CMP ECX,dword ptr [EBP + 0xffffd740]
004c159d  743d                      JZ 0x004c15dc
004c159f  c701c8000000              MOV dword ptr [ECX],0xc8
004c15a5  c7410419000000            MOV dword ptr [ECX + 0x4],0x19
004c15ac  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c15b2  83c608                    ADD ESI,0x8
004c15b5  89b53cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ESI
004c15bb  e9a0000000                JMP 0x004c1660
004c15c0  8344f00419                ADD dword ptr [EAX + ESI*0x8 + 0x4],0x19
004c15c5  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c15cb  837cf20400                CMP dword ptr [EDX + ESI*0x8 + 0x4],0x0
004c15d0  7d6d                      JGE 0x004c163f
004c15d2  c744f20400000000          MOV dword ptr [EDX + ESI*0x8 + 0x4],0x0
004c15da  eb7e                      JMP 0x004c165a
004c15dc  8d85bcd5ffff              LEA EAX,[EBP + 0xffffd5bc]
004c15e2  eb69                      JMP 0x004c164d
004c15e4  85d2                      TEST EDX,EDX
004c15e6  7416                      JZ 0x004c15fe
004c15e8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004c15f0  813cf0c8000000            CMP dword ptr [EAX + ESI*0x8],0xc8
004c15f7  743f                      JZ 0x004c1638
004c15f9  46                        INC ESI
004c15fa  3bf2                      CMP ESI,EDX
004c15fc  72f2                      JC 0x004c15f0
004c15fe  c785c4d5ffffc8000000      MOV dword ptr [EBP + 0xffffd5c4],0xc8
004c1608  c785c8d5ffff64000000      MOV dword ptr [EBP + 0xffffd5c8],0x64
004c1612  3b8d40d7ffff              CMP ECX,dword ptr [EBP + 0xffffd740]
004c1618  742d                      JZ 0x004c1647
004c161a  c701c8000000              MOV dword ptr [ECX],0xc8
004c1620  c7410464000000            MOV dword ptr [ECX + 0x4],0x64
004c1627  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c162d  83c608                    ADD ESI,0x8
004c1630  89b53cd7ffff              MOV dword ptr [EBP + 0xffffd73c],ESI
004c1636  eb28                      JMP 0x004c1660
004c1638  8344f00464                ADD dword ptr [EAX + ESI*0x8 + 0x4],0x64
004c163d  eb86                      JMP 0x004c15c5
004c163f  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c1645  eb1f                      JMP 0x004c1666
004c1647  8d85c4d5ffff              LEA EAX,[EBP + 0xffffd5c4]
004c164d  50                        PUSH EAX
004c164e  51                        PUSH ECX
004c164f  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c1655  e866fbfdff                CALL 0x004a11c0
004c165a  8bb53cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd73c]
004c1660  8b9538d7ffff              MOV EDX,dword ptr [EBP + 0xffffd738]
004c1666  83bd10d7ffff04            CMP dword ptr [EBP + 0xffffd710],0x4
004c166d  0f8ca1010000              JL 0x004c1814
004c1673  80bd4bd7ffff00            CMP byte ptr [EBP + 0xffffd74b],0x0
004c167a  0f8594010000              JNZ 0x004c1814
004c1680  8bce                      MOV ECX,ESI
004c1682  33c0                      XOR EAX,EAX
004c1684  2bca                      SUB ECX,EDX
004c1686  c1f903                    SAR ECX,0x3
004c1689  81bd20d7ffff90010000      CMP dword ptr [EBP + 0xffffd720],0x190
004c1693  7565                      JNZ 0x004c16fa
004c1695  85c9                      TEST ECX,ECX
004c1697  7415                      JZ 0x004c16ae
004c1699  0f1f8000000000            NOP dword ptr [EAX]
004c16a0  813cc290010000            CMP dword ptr [EDX + EAX*0x8],0x190
004c16a7  743a                      JZ 0x004c16e3
004c16a9  40                        INC EAX
004c16aa  3bc1                      CMP EAX,ECX
004c16ac  72f2                      JC 0x004c16a0
004c16ae  c785ccd5ffff90010000      MOV dword ptr [EBP + 0xffffd5cc],0x190
004c16b8  c785d0d5ffff32000000      MOV dword ptr [EBP + 0xffffd5d0],0x32
004c16c2  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c16c8  7423                      JZ 0x004c16ed
004c16ca  c70690010000              MOV dword ptr [ESI],0x190
004c16d0  c7460432000000            MOV dword ptr [ESI + 0x4],0x32
004c16d7  83853cd7ffff08            ADD dword ptr [EBP + 0xffffd73c],0x8
004c16de  e931010000                JMP 0x004c1814
004c16e3  8344c20432                ADD dword ptr [EDX + EAX*0x8 + 0x4],0x32
004c16e8  e9fd000000                JMP 0x004c17ea
004c16ed  8d85ccd5ffff              LEA EAX,[EBP + 0xffffd5cc]
004c16f3  50                        PUSH EAX
004c16f4  56                        PUSH ESI
004c16f5  e90f010000                JMP 0x004c1809
004c16fa  85c9                      TEST ECX,ECX
004c16fc  7410                      JZ 0x004c170e
004c16fe  6690                      NOP
004c1700  813cc290010000            CMP dword ptr [EDX + EAX*0x8],0x190
004c1707  7445                      JZ 0x004c174e
004c1709  40                        INC EAX
004c170a  3bc1                      CMP EAX,ECX
004c170c  72f2                      JC 0x004c1700
004c170e  c785dcd5ffff90010000      MOV dword ptr [EBP + 0xffffd5dc],0x190
004c1718  c785e0d5fffffa000000      MOV dword ptr [EBP + 0xffffd5e0],0xfa
004c1722  3bb540d7ffff              CMP ESI,dword ptr [EBP + 0xffffd740]
004c1728  7443                      JZ 0x004c176d
004c172a  c70690010000              MOV dword ptr [ESI],0x190
004c1730  c74604fa000000            MOV dword ptr [ESI + 0x4],0xfa
004c1737  8b953cd7ffff              MOV EDX,dword ptr [EBP + 0xffffd73c]
004c173d  8b8d38d7ffff              MOV ECX,dword ptr [EBP + 0xffffd738]
004c1743  83c208                    ADD EDX,0x8
004c1746  89953cd7ffff              MOV dword ptr [EBP + 0xffffd73c],EDX
004c174c  eb3e                      JMP 0x004c178c
004c174e  8144c204fa000000          ADD dword ptr [EDX + EAX*0x8 + 0x4],0xfa
004c1756  8b8d38d7ffff              MOV ECX,dword ptr [EBP + 0xffffd738]
004c175c  837cc10400                CMP dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c1761  7d23                      JGE 0x004c1786
004c1763  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c176b  eb13                      JMP 0x004c1780
004c176d  8d85dcd5ffff              LEA EAX,[EBP + 0xffffd5dc]
004c1773  50                        PUSH EAX
004c1774  56                        PUSH ESI
004c1775  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c177b  e840fafdff                CALL 0x004a11c0
004c1780  8b8d38d7ffff              MOV ECX,dword ptr [EBP + 0xffffd738]
004c1786  8b953cd7ffff              MOV EDX,dword ptr [EBP + 0xffffd73c]
004c178c  83bd20d7ffff10            CMP dword ptr [EBP + 0xffffd720],0x10
004c1793  757f                      JNZ 0x004c1814
004c1795  8bf2                      MOV ESI,EDX
004c1797  33c0                      XOR EAX,EAX
004c1799  2bf1                      SUB ESI,ECX
004c179b  c1fe03                    SAR ESI,0x3
004c179e  85f6                      TEST ESI,ESI
004c17a0  740e                      JZ 0x004c17b0
004c17a2  813cc190010000            CMP dword ptr [ECX + EAX*0x8],0x190
004c17a9  7437                      JZ 0x004c17e2
004c17ab  40                        INC EAX
004c17ac  3bc6                      CMP EAX,ESI
004c17ae  72f2                      JC 0x004c17a2
004c17b0  c785f4d5ffff90010000      MOV dword ptr [EBP + 0xffffd5f4],0x190
004c17ba  c785f8d5ffffd0070000      MOV dword ptr [EBP + 0xffffd5f8],0x7d0
004c17c4  3b9540d7ffff              CMP EDX,dword ptr [EBP + 0xffffd740]
004c17ca  7435                      JZ 0x004c1801
004c17cc  c70290010000              MOV dword ptr [EDX],0x190
004c17d2  c74204d0070000            MOV dword ptr [EDX + 0x4],0x7d0
004c17d9  83853cd7ffff08            ADD dword ptr [EBP + 0xffffd73c],0x8
004c17e0  eb32                      JMP 0x004c1814
004c17e2  8144c104d0070000          ADD dword ptr [ECX + EAX*0x8 + 0x4],0x7d0
004c17ea  8b8d38d7ffff              MOV ECX,dword ptr [EBP + 0xffffd738]
004c17f0  837cc10400                CMP dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c17f5  7d1d                      JGE 0x004c1814
004c17f7  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c17ff  eb13                      JMP 0x004c1814
004c1801  8d85f4d5ffff              LEA EAX,[EBP + 0xffffd5f4]
004c1807  50                        PUSH EAX
004c1808  52                        PUSH EDX
004c1809  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c180f  e8acf9fdff                CALL 0x004a11c0
004c1814  e847d72200                CALL 0x006eef60
004c1819  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004c1821  8d8d38d7ffff              LEA ECX,[EBP + 0xffffd738]
004c1827  83c801                    OR EAX,0x1
004c182a  660fd645cc                MOVQ qword ptr [EBP + -0x34],XMM0
004c182f  8945c8                    MOV dword ptr [EBP + -0x38],EAX
004c1832  83ec10                    SUB ESP,0x10
004c1835  a174f6b100                MOV EAX,[0x00b1f674]
004c183a  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004c183d  8bc4                      MOV EAX,ESP
004c183f  0f1045c8                  MOVUPS XMM0,xmmword ptr [EBP + -0x38]
004c1843  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004c1846  e8a5b3fdff                CALL 0x0049cbf0
004c184b  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004c1851  83f864                    CMP EAX,0x64
004c1854  0f8585000000              JNZ 0x004c18df
004c185a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c185d  85f6                      TEST ESI,ESI
004c185f  744a                      JZ 0x004c18ab
004c1861  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c1865  8bc6                      MOV EAX,ESI
004c1867  7202                      JC 0x004c186b
004c1869  8b06                      MOV EAX,dword ptr [ESI]
004c186b  b99c00b600                MOV ECX,0xb6009c
004c1870  8a10                      MOV DL,byte ptr [EAX]
004c1872  3a11                      CMP DL,byte ptr [ECX]
004c1874  751a                      JNZ 0x004c1890
004c1876  84d2                      TEST DL,DL
004c1878  7412                      JZ 0x004c188c
004c187a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c187d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c1880  750e                      JNZ 0x004c1890
004c1882  83c002                    ADD EAX,0x2
004c1885  83c102                    ADD ECX,0x2
004c1888  84d2                      TEST DL,DL
004c188a  75e4                      JNZ 0x004c1870
004c188c  33c0                      XOR EAX,EAX
004c188e  eb05                      JMP 0x004c1895
004c1890  1bc0                      SBB EAX,EAX
004c1892  83c801                    OR EAX,0x1
004c1895  85c0                      TEST EAX,EAX
004c1897  7512                      JNZ 0x004c18ab
004c1899  384634                    CMP byte ptr [ESI + 0x34],AL
004c189c  742e                      JZ 0x004c18cc
004c189e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c18a4  8d7748                    LEA ESI,[EDI + 0x48]
004c18a7  7523                      JNZ 0x004c18cc
004c18a9  eb03                      JMP 0x004c18ae
004c18ab  8d7748                    LEA ESI,[EDI + 0x48]
004c18ae  6a01                      PUSH 0x1
004c18b0  689c00b600                PUSH 0xb6009c
004c18b5  8bce                      MOV ECX,ESI
004c18b7  e8148df4ff                CALL 0x0040a5d0
004c18bc  84c0                      TEST AL,AL
004c18be  740c                      JZ 0x004c18cc
004c18c0  8d4e30                    LEA ECX,[ESI + 0x30]
004c18c3  e8e888f4ff                CALL 0x0040a1b0
004c18c8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c18cc  e88fd62200                CALL 0x006eef60
004c18d1  83c801                    OR EAX,0x1
004c18d4  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c18da  e972020000                JMP 0x004c1b51
004c18df  3dc6020000                CMP EAX,0x2c6
004c18e4  0f8492010000              JZ 0x004c1a7c
004c18ea  3dd0020000                CMP EAX,0x2d0
004c18ef  0f8487010000              JZ 0x004c1a7c
004c18f5  3dc8000000                CMP EAX,0xc8
004c18fa  751e                      JNZ 0x004c191a
004c18fc  6a00                      PUSH 0x0
004c18fe  8d4f48                    LEA ECX,[EDI + 0x48]
004c1901  687cd4b100                PUSH 0xb1d47c
004c1906  e8758af4ff                CALL 0x0040a380
004c190b  c7854cd7ffffa5010000      MOV dword ptr [EBP + 0xffffd74c],0x1a5
004c1915  e9f7010000                JMP 0x004c1b11
004c191a  3d2c010000                CMP EAX,0x12c
004c191f  0f8582000000              JNZ 0x004c19a7
004c1925  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004c192b  8d4f48                    LEA ECX,[EDI + 0x48]
004c192e  6a00                      PUSH 0x0
004c1930  ff34853c01b600            PUSH dword ptr [EAX*0x4 + 0xb6013c]
004c1937  e8448af4ff                CALL 0x0040a380
004c193c  e81fd62200                CALL 0x006eef60
004c1941  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004c1949  51                        PUSH ECX
004c194a  660f6ec0                  MOVD XMM0,EAX
004c194e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c1952  c1e81f                    SHR EAX,0x1f
004c1955  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c195e  660f5ac0                  CVTPD2PS XMM0,XMM0
004c1962  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c196a  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004c1972  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
004c197a  f30f110424                MOVSS dword ptr [ESP],XMM0
004c197f  6a00                      PUSH 0x0
004c1981  6a02                      PUSH 0x2
004c1983  68a7010000                PUSH 0x1a7
004c1988  e8534f4900                CALL 0x009568e0
004c198d  e8ced52200                CALL 0x006eef60
004c1992  33d2                      XOR EDX,EDX
004c1994  b903000000                MOV ECX,0x3
004c1999  f7f1                      DIV ECX
004c199b  42                        INC EDX
004c199c  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
004c19a2  e9aa010000                JMP 0x004c1b51
004c19a7  3d58020000                CMP EAX,0x258
004c19ac  757b                      JNZ 0x004c1a29
004c19ae  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004c19b4  8d4f48                    LEA ECX,[EDI + 0x48]
004c19b7  6a00                      PUSH 0x0
004c19b9  ff34853c01b600            PUSH dword ptr [EAX*0x4 + 0xb6013c]
004c19c0  e8bb89f4ff                CALL 0x0040a380
004c19c5  e896d52200                CALL 0x006eef60
004c19ca  83c801                    OR EAX,0x1
004c19cd  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c19d3  e888d52200                CALL 0x006eef60
004c19d8  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004c19e0  51                        PUSH ECX
004c19e1  660f6ec0                  MOVD XMM0,EAX
004c19e5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c19e9  c1e81f                    SHR EAX,0x1f
004c19ec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c19f5  660f5ac0                  CVTPD2PS XMM0,XMM0
004c19f9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c1a01  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004c1a09  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
004c1a11  f30f110424                MOVSS dword ptr [ESP],XMM0
004c1a16  6a00                      PUSH 0x0
004c1a18  6a02                      PUSH 0x2
004c1a1a  68a7010000                PUSH 0x1a7
004c1a1f  e8bc4e4900                CALL 0x009568e0
004c1a24  e928010000                JMP 0x004c1b51
004c1a29  3d90010000                CMP EAX,0x190
004c1a2e  7514                      JNZ 0x004c1a44
004c1a30  6a00                      PUSH 0x0
004c1a32  8d4f48                    LEA ECX,[EDI + 0x48]
004c1a35  68a400b600                PUSH 0xb600a4
004c1a3a  e84189f4ff                CALL 0x0040a380
004c1a3f  e90d010000                JMP 0x004c1b51
004c1a44  83f80d                    CMP EAX,0xd
004c1a47  7514                      JNZ 0x004c1a5d
004c1a49  6a00                      PUSH 0x0
004c1a4b  8d4f48                    LEA ECX,[EDI + 0x48]
004c1a4e  68e400b600                PUSH 0xb600e4
004c1a53  e82889f4ff                CALL 0x0040a380
004c1a58  e9f4000000                JMP 0x004c1b51
004c1a5d  3df4010000                CMP EAX,0x1f4
004c1a62  0f85e9000000              JNZ 0x004c1b51
004c1a68  6a00                      PUSH 0x0
004c1a6a  8d4f48                    LEA ECX,[EDI + 0x48]
004c1a6d  68f000b600                PUSH 0xb600f0
004c1a72  e80989f4ff                CALL 0x0040a380
004c1a77  e9d5000000                JMP 0x004c1b51
004c1a7c  6a00                      PUSH 0x0
004c1a7e  8d4f48                    LEA ECX,[EDI + 0x48]
004c1a81  687800b600                PUSH 0xb60078
004c1a86  e8f588f4ff                CALL 0x0040a380
004c1a8b  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004c1a93  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
004c1a9b  a17816c700                MOV EAX,[0x00c71678]
004c1aa0  51                        PUSH ECX
004c1aa1  8d8d04d5ffff              LEA ECX,[EBP + 0xffffd504]
004c1aa7  f30f110424                MOVSS dword ptr [ESP],XMM0
004c1aac  51                        PUSH ECX
004c1aad  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c1ab3  e818cf3500                CALL 0x0081e9d0
004c1ab8  8b08                      MOV ECX,dword ptr [EAX]
004c1aba  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004c1ac0  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004c1ac3  898738030000              MOV dword ptr [EDI + 0x338],EAX
004c1ac9  e892d42200                CALL 0x006eef60
004c1ace  83e0f0                    AND EAX,0xfffffff0
004c1ad1  83c810                    OR EAX,0x10
004c1ad4  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c1ada  81bf640b0000d0020000      CMP dword ptr [EDI + 0xb64],0x2d0
004c1ae4  750d                      JNZ 0x004c1af3
004c1ae6  e875d42200                CALL 0x006eef60
004c1aeb  83e001                    AND EAX,0x1
004c1aee  8d5001                    LEA EDX,[EAX + 0x1]
004c1af1  eb0e                      JMP 0x004c1b01
004c1af3  e868d42200                CALL 0x006eef60
004c1af8  33d2                      XOR EDX,EDX
004c1afa  b903000000                MOV ECX,0x3
004c1aff  f7f1                      DIV ECX
004c1b01  0197c40b0000              ADD dword ptr [EDI + 0xbc4],EDX
004c1b07  c7854cd7ffffa6010000      MOV dword ptr [EBP + 0xffffd74c],0x1a6
004c1b11  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c1b17  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c1b1d  e85e4c4900                CALL 0x00956780
004c1b22  83ec08                    SUB ESP,0x8
004c1b25  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c1b2b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c1b33  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c1b3a  6a00                      PUSH 0x0
004c1b3c  6a02                      PUSH 0x2
004c1b3e  51                        PUSH ECX
004c1b3f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c1b46  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c1b4c  e8dfc04600                CALL 0x0092dc30
004c1b51  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004c1b55  8b8d38d7ffff              MOV ECX,dword ptr [EBP + 0xffffd738]
004c1b5b  85c9                      TEST ECX,ECX
004c1b5d  0f8434350000              JZ 0x004c5097
004c1b63  8b8540d7ffff              MOV EAX,dword ptr [EBP + 0xffffd740]
004c1b69  2bc1                      SUB EAX,ECX
004c1b6b  c1f803                    SAR EAX,0x3
004c1b6e  50                        PUSH EAX
004c1b6f  51                        PUSH ECX
004c1b70  e8cb4df6ff                CALL 0x00426940
004c1b75  c78538d7ffff00000000      MOV dword ptr [EBP + 0xffffd738],0x0
004c1b7f  c7853cd7ffff00000000      MOV dword ptr [EBP + 0xffffd73c],0x0
004c1b89  c78540d7ffff00000000      MOV dword ptr [EBP + 0xffffd740],0x0
004c1b93  e9ff340000                JMP 0x004c5097
004c1b98  3d58020000                CMP EAX,0x258
004c1b9d  0f84661f0000              JZ 0x004c3b09
004c1ba3  3dbc020000                CMP EAX,0x2bc
004c1ba8  0f845b1f0000              JZ 0x004c3b09
004c1bae  3dc6020000                CMP EAX,0x2c6
004c1bb3  0f84501f0000              JZ 0x004c3b09
004c1bb9  3dd0020000                CMP EAX,0x2d0
004c1bbe  0f84451f0000              JZ 0x004c3b09
004c1bc4  83f864                    CMP EAX,0x64
004c1bc7  0f850a0a0000              JNZ 0x004c25d7
004c1bcd  8bb7c40b0000              MOV ESI,dword ptr [EDI + 0xbc4]
004c1bd3  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004c1bdb  a174f6b100                MOV EAX,[0x00b1f674]
004c1be0  660fd645cc                MOVQ qword ptr [EBP + -0x34],XMM0
004c1be5  898514d7ffff              MOV dword ptr [EBP + 0xffffd714],EAX
004c1beb  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004c1bee  85f6                      TEST ESI,ESI
004c1bf0  7510                      JNZ 0x004c1c02
004c1bf2  6854bfb600                PUSH 0xb6bf54
004c1bf7  6a10                      PUSH 0x10
004c1bf9  e8c2f65400                CALL 0x00a112c0
004c1bfe  83c408                    ADD ESP,0x8
004c1c01  cc                        INT3
004c1c02  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004c1c05  8bd6                      MOV EDX,ESI
004c1c07  d3ea                      SHR EDX,CL
004c1c09  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004c1c0c  33d6                      XOR EDX,ESI
004c1c0e  8bc2                      MOV EAX,EDX
004c1c10  d3e0                      SHL EAX,CL
004c1c12  8b8d14d7ffff              MOV ECX,dword ptr [EBP + 0xffffd714]
004c1c18  33c2                      XOR EAX,EDX
004c1c1a  8bf0                      MOV ESI,EAX
004c1c1c  33d2                      XOR EDX,EDX
004c1c1e  d3ee                      SHR ESI,CL
004c1c20  83c9ff                    OR ECX,0xffffffff
004c1c23  33f0                      XOR ESI,EAX
004c1c25  8bc6                      MOV EAX,ESI
004c1c27  8975c8                    MOV dword ptr [EBP + -0x38],ESI
004c1c2a  f7f1                      DIV ECX
004c1c2c  6a01                      PUSH 0x1
004c1c2e  03c6                      ADD EAX,ESI
004c1c30  8bcf                      MOV ECX,EDI
004c1c32  898524d7ffff              MOV dword ptr [EBP + 0xffffd724],EAX
004c1c38  8d855cd5ffff              LEA EAX,[EBP + 0xffffd55c]
004c1c3e  50                        PUSH EAX
004c1c3f  e88cf12000                CALL 0x006d0dd0
004c1c44  33c0                      XOR EAX,EAX
004c1c46  33c9                      XOR ECX,ECX
004c1c48  89852cd7ffff              MOV dword ptr [EBP + 0xffffd72c],EAX
004c1c4e  8985f8d6ffff              MOV dword ptr [EBP + 0xffffd6f8],EAX
004c1c54  898d4cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ECX
004c1c5a  898dfcd6ffff              MOV dword ptr [EBP + 0xffffd6fc],ECX
004c1c60  898500d7ffff              MOV dword ptr [EBP + 0xffffd700],EAX
004c1c66  c645fc08                  MOV byte ptr [EBP + -0x4],0x8
004c1c6a  83bd68d5ffff0a            CMP dword ptr [EBP + 0xffffd568],0xa
004c1c71  733b                      JNC 0x004c1cae
004c1c73  8d85fcd5ffff              LEA EAX,[EBP + 0xffffd5fc]
004c1c79  898dfcd5ffff              MOV dword ptr [EBP + 0xffffd5fc],ECX
004c1c7f  50                        PUSH EAX
004c1c80  51                        PUSH ECX
004c1c81  8d8df8d6ffff              LEA ECX,[EBP + 0xffffd6f8]
004c1c87  c78500d6ffff64000000      MOV dword ptr [EBP + 0xffffd600],0x64
004c1c91  e82af5fdff                CALL 0x004a11c0
004c1c96  8b8dfcd6ffff              MOV ECX,dword ptr [EBP + 0xffffd6fc]
004c1c9c  8b85f8d6ffff              MOV EAX,dword ptr [EBP + 0xffffd6f8]
004c1ca2  898d4cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ECX
004c1ca8  89852cd7ffff              MOV dword ptr [EBP + 0xffffd72c],EAX
004c1cae  8bd1                      MOV EDX,ECX
004c1cb0  33c0                      XOR EAX,EAX
004c1cb2  2b952cd7ffff              SUB EDX,dword ptr [EBP + 0xffffd72c]
004c1cb8  c1fa03                    SAR EDX,0x3
004c1cbb  85d2                      TEST EDX,EDX
004c1cbd  7419                      JZ 0x004c1cd8
004c1cbf  8b8d2cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd72c]
004c1cc5  833901                    CMP dword ptr [ECX],0x1
004c1cc8  7454                      JZ 0x004c1d1e
004c1cca  40                        INC EAX
004c1ccb  83c108                    ADD ECX,0x8
004c1cce  3bc2                      CMP EAX,EDX
004c1cd0  72f3                      JC 0x004c1cc5
004c1cd2  8b8d4cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd74c]
004c1cd8  c78504d6ffff01000000      MOV dword ptr [EBP + 0xffffd604],0x1
004c1ce2  c78508d6ffff64000000      MOV dword ptr [EBP + 0xffffd608],0x64
004c1cec  3b8d00d7ffff              CMP ECX,dword ptr [EBP + 0xffffd700]
004c1cf2  7452                      JZ 0x004c1d46
004c1cf4  c70101000000              MOV dword ptr [ECX],0x1
004c1cfa  c7410464000000            MOV dword ptr [ECX + 0x4],0x64
004c1d01  8b95fcd6ffff              MOV EDX,dword ptr [EBP + 0xffffd6fc]
004c1d07  8b85f8d6ffff              MOV EAX,dword ptr [EBP + 0xffffd6f8]
004c1d0d  83c208                    ADD EDX,0x8
004c1d10  8995fcd6ffff              MOV dword ptr [EBP + 0xffffd6fc],EDX
004c1d16  898534d7ffff              MOV dword ptr [EBP + 0xffffd734],EAX
004c1d1c  eb4d                      JMP 0x004c1d6b
004c1d1e  8b8d2cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd72c]
004c1d24  8344c10464                ADD dword ptr [ECX + EAX*0x8 + 0x4],0x64
004c1d29  8b8df8d6ffff              MOV ECX,dword ptr [EBP + 0xffffd6f8]
004c1d2f  898d34d7ffff              MOV dword ptr [EBP + 0xffffd734],ECX
004c1d35  837cc10400                CMP dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c1d3a  7d29                      JGE 0x004c1d65
004c1d3c  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c1d44  eb13                      JMP 0x004c1d59
004c1d46  8d8504d6ffff              LEA EAX,[EBP + 0xffffd604]
004c1d4c  50                        PUSH EAX
004c1d4d  51                        PUSH ECX
004c1d4e  8d8df8d6ffff              LEA ECX,[EBP + 0xffffd6f8]
004c1d54  e867f4fdff                CALL 0x004a11c0
004c1d59  8b85f8d6ffff              MOV EAX,dword ptr [EBP + 0xffffd6f8]
004c1d5f  898534d7ffff              MOV dword ptr [EBP + 0xffffd734],EAX
004c1d65  8b95fcd6ffff              MOV EDX,dword ptr [EBP + 0xffffd6fc]
004c1d6b  8bca                      MOV ECX,EDX
004c1d6d  33c0                      XOR EAX,EAX
004c1d6f  2b8d34d7ffff              SUB ECX,dword ptr [EBP + 0xffffd734]
004c1d75  c1f903                    SAR ECX,0x3
004c1d78  898d44d7ffff              MOV dword ptr [EBP + 0xffffd744],ECX
004c1d7e  85c9                      TEST ECX,ECX
004c1d80  7417                      JZ 0x004c1d99
004c1d82  8b8d34d7ffff              MOV ECX,dword ptr [EBP + 0xffffd734]
004c1d88  833902                    CMP dword ptr [ECX],0x2
004c1d8b  743e                      JZ 0x004c1dcb
004c1d8d  40                        INC EAX
004c1d8e  83c108                    ADD ECX,0x8
004c1d91  3b8544d7ffff              CMP EAX,dword ptr [EBP + 0xffffd744]
004c1d97  72ef                      JC 0x004c1d88
004c1d99  c7850cd6ffff02000000      MOV dword ptr [EBP + 0xffffd60c],0x2
004c1da3  c78510d6ffff64000000      MOV dword ptr [EBP + 0xffffd610],0x64
004c1dad  3b9500d7ffff              CMP EDX,dword ptr [EBP + 0xffffd700]
004c1db3  7438                      JZ 0x004c1ded
004c1db5  c70202000000              MOV dword ptr [EDX],0x2
004c1dbb  c7420464000000            MOV dword ptr [EDX + 0x4],0x64
004c1dc2  8385fcd6ffff08            ADD dword ptr [EBP + 0xffffd6fc],0x8
004c1dc9  eb35                      JMP 0x004c1e00
004c1dcb  8b8d34d7ffff              MOV ECX,dword ptr [EBP + 0xffffd734]
004c1dd1  8344c10464                ADD dword ptr [ECX + EAX*0x8 + 0x4],0x64
004c1dd6  8b8df8d6ffff              MOV ECX,dword ptr [EBP + 0xffffd6f8]
004c1ddc  837cc10400                CMP dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c1de1  7d1d                      JGE 0x004c1e00
004c1de3  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
004c1deb  eb13                      JMP 0x004c1e00
004c1ded  8d850cd6ffff              LEA EAX,[EBP + 0xffffd60c]
004c1df3  50                        PUSH EAX
004c1df4  52                        PUSH EDX
004c1df5  8d8df8d6ffff              LEA ECX,[EBP + 0xffffd6f8]
004c1dfb  e8c0f3fdff                CALL 0x004a11c0
004c1e00  a17816c700                MOV EAX,[0x00c71678]
004c1e05  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004c1e0b  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004c1e11  2501000080                AND EAX,0x80000001
004c1e16  7905                      JNS 0x004c1e1d
004c1e18  48                        DEC EAX
004c1e19  83c8fe                    OR EAX,0xfffffffe
004c1e1c  40                        INC EAX
004c1e1d  83f801                    CMP EAX,0x1
004c1e20  7555                      JNZ 0x004c1e77
004c1e22  c7854cd7ffff00000000      MOV dword ptr [EBP + 0xffffd74c],0x0
004c1e2c  0f1f4000                  NOP dword ptr [EAX]
004c1e30  85f6                      TEST ESI,ESI
004c1e32  7510                      JNZ 0x004c1e44
004c1e34  6854bfb600                PUSH 0xb6bf54
004c1e39  6a10                      PUSH 0x10
004c1e3b  e880f45400                CALL 0x00a112c0
004c1e40  83c408                    ADD ESP,0x8
004c1e43  cc                        INT3
004c1e44  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004c1e47  8bd6                      MOV EDX,ESI
004c1e49  d3ea                      SHR EDX,CL
004c1e4b  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004c1e4e  33d6                      XOR EDX,ESI
004c1e50  8bc2                      MOV EAX,EDX
004c1e52  d3e0                      SHL EAX,CL
004c1e54  8b8d14d7ffff              MOV ECX,dword ptr [EBP + 0xffffd714]
004c1e5a  33c2                      XOR EAX,EDX
004c1e5c  8bf0                      MOV ESI,EAX
004c1e5e  d3ee                      SHR ESI,CL
004c1e60  33f0                      XOR ESI,EAX
004c1e62  8b854cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd74c]
004c1e68  40                        INC EAX
004c1e69  89854cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EAX
004c1e6f  83f80a                    CMP EAX,0xa
004c1e72  7cbc                      JL 0x004c1e30
004c1e74  8975c8                    MOV dword ptr [EBP + -0x38],ESI
004c1e77  0f1045c8                  MOVUPS XMM0,xmmword ptr [EBP + -0x38]
004c1e7b  83ec10                    SUB ESP,0x10
004c1e7e  8d8df8d6ffff              LEA ECX,[EBP + 0xffffd6f8]
004c1e84  8bc4                      MOV EAX,ESP
004c1e86  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004c1e89  e862adfdff                CALL 0x0049cbf0
004c1e8e  8bcf                      MOV ECX,EDI
004c1e90  89850cd7ffff              MOV dword ptr [EBP + 0xffffd70c],EAX
004c1e96  c78508d7ffff50000000      MOV dword ptr [EBP + 0xffffd708],0x50
004c1ea0  e89bc91f00                CALL 0x006be840
004c1ea5  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004c1ead  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004c1eb5  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004c1ebd  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004c1ec5  0f28c1                    MOVAPS XMM0,XMM1
004c1ec8  f30f118d34d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM1
004c1ed0  f30f59c1                  MULSS XMM0,XMM1
004c1ed4  0f28ca                    MOVAPS XMM1,XMM2
004c1ed7  f30f11952cd7ffff          MOVSS dword ptr [EBP + 0xffffd72c],XMM2
004c1edf  f30f59ca                  MULSS XMM1,XMM2
004c1ee3  f30f58c1                  ADDSS XMM0,XMM1
004c1ee7  e8643bf7ff                CALL 0x00435a50
004c1eec  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004c1ef3  7633                      JBE 0x004c1f28
004c1ef5  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004c1efd  f30f5ec8                  DIVSS XMM1,XMM0
004c1f01  0f28c1                    MOVAPS XMM0,XMM1
004c1f04  f30f59852cd7ffff          MULSS XMM0,dword ptr [EBP + 0xffffd72c]
004c1f0c  f30f11852cd7ffff          MOVSS dword ptr [EBP + 0xffffd72c],XMM0
004c1f14  f30f108534d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd734]
004c1f1c  f30f59c1                  MULSS XMM0,XMM1
004c1f20  f30f118534d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM0
004c1f28  a17816c700                MOV EAX,[0x00c71678]
004c1f2d  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004c1f33  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004c1f39  2501000080                AND EAX,0x80000001
004c1f3e  7905                      JNS 0x004c1f45
004c1f40  48                        DEC EAX
004c1f41  83c8fe                    OR EAX,0xfffffffe
004c1f44  40                        INC EAX
004c1f45  83f801                    CMP EAX,0x1
004c1f48  751f                      JNZ 0x004c1f69
004c1f4a  f30f100540a2ba00          MOVSS XMM0,dword ptr [0x00baa240]
004c1f52  e8e9b5f5ff                CALL 0x0041d540
004c1f57  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c1f5f  f30f100540a2ba00          MOVSS XMM0,dword ptr [0x00baa240]
004c1f67  eb1d                      JMP 0x004c1f86
004c1f69  f30f10051cadba00          MOVSS XMM0,dword ptr [0x00baad1c]
004c1f71  e8cab5f5ff                CALL 0x0041d540
004c1f76  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c1f7e  f30f10051cadba00          MOVSS XMM0,dword ptr [0x00baad1c]
004c1f86  e895b5f5ff                CALL 0x0041d520
004c1f8b  f30f10ad34d7ffff          MOVSS XMM5,dword ptr [EBP + 0xffffd734]
004c1f93  0f28d0                    MOVAPS XMM2,XMM0
004c1f96  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c1f9e  0f28ca                    MOVAPS XMM1,XMM2
004c1fa1  f30f59952cd7ffff          MULSS XMM2,dword ptr [EBP + 0xffffd72c]
004c1fa9  0f28d8                    MOVAPS XMM3,XMM0
004c1fac  f30f599d2cd7ffff          MULSS XMM3,dword ptr [EBP + 0xffffd72c]
004c1fb4  f30f59c5                  MULSS XMM0,XMM5
004c1fb8  f30f59cd                  MULSS XMM1,XMM5
004c1fbc  f30f58d0                  ADDSS XMM2,XMM0
004c1fc0  f30f5cd9                  SUBSS XMM3,XMM1
004c1fc4  f30f119510d7ffff          MOVSS dword ptr [EBP + 0xffffd710],XMM2
004c1fcc  f30f119d34d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM3
004c1fd4  85f6                      TEST ESI,ESI
004c1fd6  7510                      JNZ 0x004c1fe8
004c1fd8  6854bfb600                PUSH 0xb6bf54
004c1fdd  6a10                      PUSH 0x10
004c1fdf  e8dcf25400                CALL 0x00a112c0
004c1fe4  83c408                    ADD ESP,0x8
004c1fe7  cc                        INT3
004c1fe8  8b7dcc                    MOV EDI,dword ptr [EBP + -0x34]
004c1feb  8bc6                      MOV EAX,ESI
004c1fed  8bcf                      MOV ECX,EDI
004c1fef  d3e8                      SHR EAX,CL
004c1ff1  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004c1ff4  33c6                      XOR EAX,ESI
004c1ff6  8bd0                      MOV EDX,EAX
004c1ff8  d3e2                      SHL EDX,CL
004c1ffa  8b8d14d7ffff              MOV ECX,dword ptr [EBP + 0xffffd714]
004c2000  33d0                      XOR EDX,EAX
004c2002  8bf2                      MOV ESI,EDX
004c2004  b8abaaaaaa                MOV EAX,0xaaaaaaab
004c2009  d3ee                      SHR ESI,CL
004c200b  33f2                      XOR ESI,EDX
004c200d  f7e6                      MUL ESI
004c200f  8bce                      MOV ECX,ESI
004c2011  c1ea02                    SHR EDX,0x2
004c2014  8d0452                    LEA EAX,[EDX + EDX*0x2]
004c2017  03c0                      ADD EAX,EAX
004c2019  2bc8                      SUB ECX,EAX
004c201b  8d4101                    LEA EAX,[ECX + 0x1]
004c201e  89854cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EAX
004c2024  85f6                      TEST ESI,ESI
004c2026  7510                      JNZ 0x004c2038
004c2028  6854bfb600                PUSH 0xb6bf54
004c202d  6a10                      PUSH 0x10
004c202f  e88cf25400                CALL 0x00a112c0
004c2034  83c408                    ADD ESP,0x8
004c2037  cc                        INT3
004c2038  8bcf                      MOV ECX,EDI
004c203a  8bd6                      MOV EDX,ESI
004c203c  d3ea                      SHR EDX,CL
004c203e  b8abaaaaaa                MOV EAX,0xaaaaaaab
004c2043  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004c2046  33d6                      XOR EDX,ESI
004c2048  8bf2                      MOV ESI,EDX
004c204a  d3e6                      SHL ESI,CL
004c204c  8b8d14d7ffff              MOV ECX,dword ptr [EBP + 0xffffd714]
004c2052  33f2                      XOR ESI,EDX
004c2054  8bfe                      MOV EDI,ESI
004c2056  d3ef                      SHR EDI,CL
004c2058  8b8d0cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd70c]
004c205e  33fe                      XOR EDI,ESI
004c2060  f7e7                      MUL EDI
004c2062  c1ea02                    SHR EDX,0x2
004c2065  8d0452                    LEA EAX,[EDX + EDX*0x2]
004c2068  03c0                      ADD EAX,EAX
004c206a  2bf8                      SUB EDI,EAX
004c206c  8d4701                    LEA EAX,[EDI + 0x1]
004c206f  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c2075  898530d7ffff              MOV dword ptr [EBP + 0xffffd730],EAX
004c207b  33c0                      XOR EAX,EAX
004c207d  898504d7ffff              MOV dword ptr [EBP + 0xffffd704],EAX
004c2083  85c9                      TEST ECX,ECX
004c2085  755b                      JNZ 0x004c20e2
004c2087  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004c208f  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
004c2097  c7854cd7ffff02000000      MOV dword ptr [EBP + 0xffffd74c],0x2
004c20a1  c78530d7ffff06000000      MOV dword ptr [EBP + 0xffffd730],0x6
004c20ab  f30f2cc0                  CVTTSS2SI EAX,XMM0
004c20af  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004c20b7  898508d7ffff              MOV dword ptr [EBP + 0xffffd708],EAX
004c20bd  b801000000                MOV EAX,0x1
004c20c2  f30f118534d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM0
004c20ca  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004c20d2  f30f118510d7ffff          MOVSS dword ptr [EBP + 0xffffd710],XMM0
004c20da  898524d7ffff              MOV dword ptr [EBP + 0xffffd724],EAX
004c20e0  eb17                      JMP 0x004c20f9
004c20e2  83f902                    CMP ECX,0x2
004c20e5  ba01000000                MOV EDX,0x1
004c20ea  0f44c2                    CMOVZ EAX,EDX
004c20ed  898504d7ffff              MOV dword ptr [EBP + 0xffffd704],EAX
004c20f3  8b8524d7ffff              MOV EAX,dword ptr [EBP + 0xffffd724]
004c20f9  50                        PUSH EAX
004c20fa  8d856cd5ffff              LEA EAX,[EBP + 0xffffd56c]
004c2100  8bcf                      MOV ECX,EDI
004c2102  50                        PUSH EAX
004c2103  e8c8ec2000                CALL 0x006d0dd0
004c2108  c645fc09                  MOV byte ptr [EBP + -0x4],0x9
004c210c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c2110  745a                      JZ 0x004c216c
004c2112  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c2119  7551                      JNZ 0x004c216c
004c211b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c211e  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c2122  7202                      JC 0x004c2126
004c2124  8b00                      MOV EAX,dword ptr [EAX]
004c2126  b99c00b600                MOV ECX,0xb6009c
004c212b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c2130  8a10                      MOV DL,byte ptr [EAX]
004c2132  3a11                      CMP DL,byte ptr [ECX]
004c2134  751a                      JNZ 0x004c2150
004c2136  84d2                      TEST DL,DL
004c2138  7412                      JZ 0x004c214c
004c213a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c213d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c2140  750e                      JNZ 0x004c2150
004c2142  83c002                    ADD EAX,0x2
004c2145  83c102                    ADD ECX,0x2
004c2148  84d2                      TEST DL,DL
004c214a  75e4                      JNZ 0x004c2130
004c214c  33c0                      XOR EAX,EAX
004c214e  eb05                      JMP 0x004c2155
004c2150  1bc0                      SBB EAX,EAX
004c2152  83c801                    OR EAX,0x1
004c2155  85c0                      TEST EAX,EAX
004c2157  7513                      JNZ 0x004c216c
004c2159  50                        PUSH EAX
004c215a  68d800b600                PUSH 0xb600d8
004c215f  8d4f48                    LEA ECX,[EDI + 0x48]
004c2162  e81982f4ff                CALL 0x0040a380
004c2167  e9de030000                JMP 0x004c254a
004c216c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c2170  8d4f48                    LEA ECX,[EDI + 0x48]
004c2173  0f84a5030000              JZ 0x004c251e
004c2179  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c2180  0f8498030000              JZ 0x004c251e
004c2186  83c130                    ADD ECX,0x30
004c2189  bad800b600                MOV EDX,0xb600d8
004c218e  e8ed51f4ff                CALL 0x00407380
004c2193  8a08                      MOV CL,byte ptr [EAX]
004c2195  3a0a                      CMP CL,byte ptr [EDX]
004c2197  751a                      JNZ 0x004c21b3
004c2199  84c9                      TEST CL,CL
004c219b  7412                      JZ 0x004c21af
004c219d  8a4801                    MOV CL,byte ptr [EAX + 0x1]
004c21a0  3a4a01                    CMP CL,byte ptr [EDX + 0x1]
004c21a3  750e                      JNZ 0x004c21b3
004c21a5  83c002                    ADD EAX,0x2
004c21a8  83c202                    ADD EDX,0x2
004c21ab  84c9                      TEST CL,CL
004c21ad  75e4                      JNZ 0x004c2193
004c21af  33c0                      XOR EAX,EAX
004c21b1  eb05                      JMP 0x004c21b8
004c21b3  1bc0                      SBB EAX,EAX
004c21b5  83c801                    OR EAX,0x1
004c21b8  85c0                      TEST EAX,EAX
004c21ba  0f858a030000              JNZ 0x004c254a
004c21c0  e89bcd2200                CALL 0x006eef60
004c21c5  33d2                      XOR EDX,EDX
004c21c7  b903000000                MOV ECX,0x3
004c21cc  f7f1                      DIV ECX
004c21ce  85d2                      TEST EDX,EDX
004c21d0  0f8574030000              JNZ 0x004c254a
004c21d6  83bd78d5ffff14            CMP dword ptr [EBP + 0xffffd578],0x14
004c21dd  0f8367030000              JNC 0x004c254a
004c21e3  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004c21eb  51                        PUSH ECX
004c21ec  c704249a99993e            MOV dword ptr [ESP],0x3e99999a
004c21f3  52                        PUSH EDX
004c21f4  6a1e                      PUSH 0x1e
004c21f6  689e000000                PUSH 0x9e
004c21fb  e8e0464900                CALL 0x009568e0
004c2200  e85bcd2200                CALL 0x006eef60
004c2205  83e003                    AND EAX,0x3
004c2208  33f6                      XOR ESI,ESI
004c220a  40                        INC EAX
004c220b  89b52cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ESI
004c2211  8985ecd6ffff              MOV dword ptr [EBP + 0xffffd6ec],EAX
004c2217  85c0                      TEST EAX,EAX
004c2219  0f8419010000              JZ 0x004c2338
004c221f  90                        NOP
004c2220  e83bcd2200                CALL 0x006eef60
004c2225  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004c222d  8bf0                      MOV ESI,EAX
004c222f  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004c2237  f30f118528d7ffff          MOVSS dword ptr [EBP + 0xffffd728],XMM0
004c223f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c2247  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
004c224f  f30f11851cd7ffff          MOVSS dword ptr [EBP + 0xffffd71c],XMM0
004c2257  e804cd2200                CALL 0x006eef60
004c225c  660f6ec0                  MOVD XMM0,EAX
004c2260  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c2264  c1e81f                    SHR EAX,0x1f
004c2267  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c2270  660f5ac0                  CVTPD2PS XMM0,XMM0
004c2274  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c227c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004c2284  f30f58c0                  ADDSS XMM0,XMM0
004c2288  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c2290  e88bb2f5ff                CALL 0x0041d520
004c2295  f30f11850cd7ffff          MOVSS dword ptr [EBP + 0xffffd70c],XMM0
004c229d  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c22a5  e896b2f5ff                CALL 0x0041d540
004c22aa  f30f108d0cd7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd70c]
004c22b2  8d8524d6ffff              LEA EAX,[EBP + 0xffffd624]
004c22b8  f30f59050ca8ba00          MULSS XMM0,dword ptr [0x00baa80c]
004c22c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c22c6  f30f590d0ca8ba00          MULSS XMM1,dword ptr [0x00baa80c]
004c22ce  6a00                      PUSH 0x0
004c22d0  f30f588528d7ffff          ADDSS XMM0,dword ptr [EBP + 0xffffd728]
004c22d8  68acd6c500                PUSH 0xc5d6ac
004c22dd  f30f588d1cd7ffff          ADDSS XMM1,dword ptr [EBP + 0xffffd71c]
004c22e5  68dcd5c500                PUSH 0xc5d5dc
004c22ea  6a00                      PUSH 0x0
004c22ec  56                        PUSH ESI
004c22ed  6a00                      PUSH 0x0
004c22ef  57                        PUSH EDI
004c22f0  6840b6c700                PUSH 0xc7b640
004c22f5  50                        PUSH EAX
004c22f6  6a00                      PUSH 0x0
004c22f8  6828010000                PUSH 0x128
004c22fd  f30f118524d6ffff          MOVSS dword ptr [EBP + 0xffffd624],XMM0
004c2305  f30f118d28d6ffff          MOVSS dword ptr [EBP + 0xffffd628],XMM1
004c230d  e80e68f6ff                CALL 0x00428b20
004c2312  50                        PUSH EAX
004c2313  e899e56200                CALL 0x00af08b1
004c2318  8bb52cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd72c]
004c231e  83c414                    ADD ESP,0x14
004c2321  8944b5c4                  MOV dword ptr [EBP + ESI*0x4 + -0x3c],EAX
004c2325  46                        INC ESI
004c2326  89b52cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ESI
004c232c  3bb5ecd6ffff              CMP ESI,dword ptr [EBP + 0xffffd6ec]
004c2332  0f8ce8feffff              JL 0x004c2220
004c2338  83ee01                    SUB ESI,0x1
004c233b  89b52cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ESI
004c2341  0f8803020000              JS 0x004c254a
004c2347  f30f108d10d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd710]
004c234f  f30f108534d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd734]
004c2357  f30f59c0                  MULSS XMM0,XMM0
004c235b  f30f59c9                  MULSS XMM1,XMM1
004c235f  f30f58c1                  ADDSS XMM0,XMM1
004c2363  e8e836f7ff                CALL 0x00435a50
004c2368  f30f118528d7ffff          MOVSS dword ptr [EBP + 0xffffd728],XMM0
004c2370  8b74b5c4                  MOV ESI,dword ptr [EBP + ESI*0x4 + -0x3c]
004c2374  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004c237b  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004c2381  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004c2387  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
004c2391  e8cacb2200                CALL 0x006eef60
004c2396  660f6ec0                  MOVD XMM0,EAX
004c239a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c239e  c1e81f                    SHR EAX,0x1f
004c23a1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c23aa  660f5ac0                  CVTPD2PS XMM0,XMM0
004c23ae  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c23b6  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004c23be  f30f58c0                  ADDSS XMM0,XMM0
004c23c2  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c23ca  e851b1f5ff                CALL 0x0041d520
004c23cf  f30f11850cd7ffff          MOVSS dword ptr [EBP + 0xffffd70c],XMM0
004c23d7  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c23df  e85cb1f5ff                CALL 0x0041d540
004c23e4  f30f108d0cd7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd70c]
004c23ec  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004c23f2  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004c23fa  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
004c2402  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004c240a  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004c2412  8b08                      MOV ECX,dword ptr [EAX]
004c2414  85c9                      TEST ECX,ECX
004c2416  741e                      JZ 0x004c2436
004c2418  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004c241e  81c1cc030000              ADD ECX,0x3cc
004c2424  8d8544d7ffff              LEA EAX,[EBP + 0xffffd744]
004c242a  50                        PUSH EAX
004c242b  e8e0cd0000                CALL 0x004cf210
004c2430  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004c2436  50                        PUSH EAX
004c2437  8bcf                      MOV ECX,EDI
004c2439  8938                      MOV dword ptr [EAX],EDI
004c243b  e8b0b80000                CALL 0x004cdcf0
004c2440  8b06                      MOV EAX,dword ptr [ESI]
004c2442  8bce                      MOV ECX,ESI
004c2444  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004c2447  ffd0                      CALL EAX
004c2449  f30f108d28d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd728]
004c2451  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
004c2458  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004c2460  7619                      JBE 0x004c247b
004c2462  f30f5ec1                  DIVSS XMM0,XMM1
004c2466  0f28c8                    MOVAPS XMM1,XMM0
004c2469  f30f598510d7ffff          MULSS XMM0,dword ptr [EBP + 0xffffd710]
004c2471  f30f598d34d7ffff          MULSS XMM1,dword ptr [EBP + 0xffffd734]
004c2479  eb10                      JMP 0x004c248b
004c247b  f30f108d34d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd734]
004c2483  f30f108510d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd710]
004c248b  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004c2493  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004c249b  8b8524d7ffff              MOV EAX,dword ptr [EBP + 0xffffd724]
004c24a1  89867c0c0000              MOV dword ptr [ESI + 0xc7c],EAX
004c24a7  8b854cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd74c]
004c24ad  f30f118eb00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM1
004c24b5  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
004c24bd  f30f108534d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd734]
004c24c5  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
004c24cd  f30f108510d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd710]
004c24d5  f30f1186bc0b0000          MOVSS dword ptr [ESI + 0xbbc],XMM0
004c24dd  8886c40b0000              MOV byte ptr [ESI + 0xbc4],AL
004c24e3  8b8530d7ffff              MOV EAX,dword ptr [EBP + 0xffffd730]
004c24e9  8886c50b0000              MOV byte ptr [ESI + 0xbc5],AL
004c24ef  8b8508d7ffff              MOV EAX,dword ptr [EBP + 0xffffd708]
004c24f5  8886c60b0000              MOV byte ptr [ESI + 0xbc6],AL
004c24fb  8b8504d7ffff              MOV EAX,dword ptr [EBP + 0xffffd704]
004c2501  8886c70b0000              MOV byte ptr [ESI + 0xbc7],AL
004c2507  8bb52cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd72c]
004c250d  83ee01                    SUB ESI,0x1
004c2510  89b52cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ESI
004c2516  0f8954feffff              JNS 0x004c2370
004c251c  eb2c                      JMP 0x004c254a
004c251e  6a00                      PUSH 0x0
004c2520  6854bcb100                PUSH 0xb1bc54
004c2525  e8567ef4ff                CALL 0x0040a380
004c252a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c2530  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c2536  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c2540  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
004c254a  80bd6cd5ffff00            CMP byte ptr [EBP + 0xffffd56c],0x0
004c2551  7518                      JNZ 0x004c256b
004c2553  c645fc0a                  MOV byte ptr [EBP + -0x4],0xa
004c2557  b101                      MOV CL,0x1
004c2559  8b9570d5ffff              MOV EDX,dword ptr [EBP + 0xffffd570]
004c255f  6a00                      PUSH 0x0
004c2561  6a00                      PUSH 0x0
004c2563  e848235a00                CALL 0x00a648b0
004c2568  83c408                    ADD ESP,0x8
004c256b  8b8df8d6ffff              MOV ECX,dword ptr [EBP + 0xffffd6f8]
004c2571  85c9                      TEST ECX,ECX
004c2573  7430                      JZ 0x004c25a5
004c2575  8b8500d7ffff              MOV EAX,dword ptr [EBP + 0xffffd700]
004c257b  2bc1                      SUB EAX,ECX
004c257d  c1f803                    SAR EAX,0x3
004c2580  50                        PUSH EAX
004c2581  51                        PUSH ECX
004c2582  e8b943f6ff                CALL 0x00426940
004c2587  c785f8d6ffff00000000      MOV dword ptr [EBP + 0xffffd6f8],0x0
004c2591  c785fcd6ffff00000000      MOV dword ptr [EBP + 0xffffd6fc],0x0
004c259b  c78500d7ffff00000000      MOV dword ptr [EBP + 0xffffd700],0x0
004c25a5  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004c25a9  80bd5cd5ffff00            CMP byte ptr [EBP + 0xffffd55c],0x0
004c25b0  0f85e12a0000              JNZ 0x004c5097
004c25b6  c645fc0b                  MOV byte ptr [EBP + -0x4],0xb
004c25ba  b101                      MOV CL,0x1
004c25bc  8b9560d5ffff              MOV EDX,dword ptr [EBP + 0xffffd560]
004c25c2  6a00                      PUSH 0x0
004c25c4  6a00                      PUSH 0x0
004c25c6  e8e5225a00                CALL 0x00a648b0
004c25cb  83c408                    ADD ESP,0x8
004c25ce  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004c25d2  e9c02a0000                JMP 0x004c5097
004c25d7  3dc8000000                CMP EAX,0xc8
004c25dc  0f85d7010000              JNZ 0x004c27b9
004c25e2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c25e6  8d4f48                    LEA ECX,[EDI + 0x48]
004c25e9  0f8499010000              JZ 0x004c2788
004c25ef  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c25f6  0f848c010000              JZ 0x004c2788
004c25fc  e87f81f4ff                CALL 0x0040a780
004c2601  83f80a                    CMP EAX,0xa
004c2604  0f858d2a0000              JNZ 0x004c5097
004c260a  8d8d50d7ffff              LEA ECX,[EBP + 0xffffd750]
004c2610  e81bc9f7ff                CALL 0x0043ef30
004c2615  33f6                      XOR ESI,ESI
004c2617  c78564d7ffff00004040      MOV dword ptr [EBP + 0xffffd764],0x40400000
004c2621  33c9                      XOR ECX,ECX
004c2623  c7855cd7ffffcdcc4cbe      MOV dword ptr [EBP + 0xffffd75c],0xbe4ccccd
004c262d  c78558d7ffffcdcc4c40      MOV dword ptr [EBP + 0xffffd758],0x404ccccd
004c2637  c785e0d7ffff0000a041      MOV dword ptr [EBP + 0xffffd7e0],0x41a00000
004c2641  898d2cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ECX
004c2647  f30f101524a3ba00          MOVSS XMM2,dword ptr [0x00baa324]
004c264f  8bc1                      MOV EAX,ECX
004c2651  83e800                    SUB EAX,0x0
004c2654  7421                      JZ 0x004c2677
004c2656  83e801                    SUB EAX,0x1
004c2659  7412                      JZ 0x004c266d
004c265b  83e801                    SUB EAX,0x1
004c265e  7553                      JNZ 0x004c26b3
004c2660  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004c2663  0f8401010000              JZ 0x004c276a
004c2669  6a02                      PUSH 0x2
004c266b  eb2e                      JMP 0x004c269b
004c266d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c2671  740a                      JZ 0x004c267d
004c2673  6a01                      PUSH 0x1
004c2675  eb24                      JMP 0x004c269b
004c2677  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c267b  751c                      JNZ 0x004c2699
004c267d  0f2805c0cbba00            MOVAPS XMM0,xmmword ptr [0x00bacbc0]
004c2684  33f6                      XOR ESI,ESI
004c2686  0f1145ac                  MOVUPS xmmword ptr [EBP + -0x54],XMM0
004c268a  8975bc                    MOV dword ptr [EBP + -0x44],ESI
004c268d  c745c00000803f            MOV dword ptr [EBP + -0x40],0x3f800000
004c2694  e9bc000000                JMP 0x004c2755
004c2699  6a00                      PUSH 0x0
004c269b  8d4f78                    LEA ECX,[EDI + 0x78]
004c269e  e8cd85f4ff                CALL 0x0040ac70
004c26a3  f30f101524a3ba00          MOVSS XMM2,dword ptr [0x00baa324]
004c26ab  8bf0                      MOV ESI,EAX
004c26ad  8b8d2cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd72c]
004c26b3  0f2805c0cbba00            MOVAPS XMM0,xmmword ptr [0x00bacbc0]
004c26ba  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
004c26c1  c745c00000803f            MOV dword ptr [EBP + -0x40],0x3f800000
004c26c8  0f1145ac                  MOVUPS xmmword ptr [EBP + -0x54],XMM0
004c26cc  85f6                      TEST ESI,ESI
004c26ce  0f8481000000              JZ 0x004c2755
004c26d4  c785a8d7ffff00000020      MOV dword ptr [EBP + 0xffffd7a8],0x20000000
004c26de  8d8550d7ffff              LEA EAX,[EBP + 0xffffd750]
004c26e4  c785acd7ffff00000000      MOV dword ptr [EBP + 0xffffd7ac],0x0
004c26ee  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004c26f3  f30f5ec2                  DIVSS XMM0,XMM2
004c26f7  50                        PUSH EAX
004c26f8  6a00                      PUSH 0x0
004c26fa  8d45ac                    LEA EAX,[EBP + -0x54]
004c26fd  8d04c8                    LEA EAX,[EAX + ECX*0x8]
004c2700  8bcf                      MOV ECX,EDI
004c2702  50                        PUSH EAX
004c2703  8d8514d6ffff              LEA EAX,[EBP + 0xffffd614]
004c2709  50                        PUSH EAX
004c270a  f30f58058ca8ba00          ADDSS XMM0,dword ptr [0x00baa88c]
004c2712  f30f118554d7ffff          MOVSS dword ptr [EBP + 0xffffd754],XMM0
004c271a  f30f100e                  MOVSS XMM1,dword ptr [ESI]
004c271e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c2726  f30f5eca                  DIVSS XMM1,XMM2
004c272a  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004c2732  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004c273a  f30f118518d6ffff          MOVSS dword ptr [EBP + 0xffffd618],XMM0
004c2742  f30f118d14d6ffff          MOVSS dword ptr [EBP + 0xffffd614],XMM1
004c274a  e8918b2000                CALL 0x006cb2e0
004c274f  8b8d2cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd72c]
004c2755  41                        INC ECX
004c2756  898d2cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ECX
004c275c  83f903                    CMP ECX,0x3
004c275f  0f8d32290000              JGE 0x004c5097
004c2765  e9ddfeffff                JMP 0x004c2647
004c276a  0f2805c0cbba00            MOVAPS XMM0,xmmword ptr [0x00bacbc0]
004c2771  0f1145ac                  MOVUPS xmmword ptr [EBP + -0x54],XMM0
004c2775  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
004c277c  c745c00000803f            MOV dword ptr [EBP + -0x40],0x3f800000
004c2783  e90f290000                JMP 0x004c5097
004c2788  6a00                      PUSH 0x0
004c278a  6854bcb100                PUSH 0xb1bc54
004c278f  e8ec7bf4ff                CALL 0x0040a380
004c2794  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c279a  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c27a0  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c27aa  c787100400003c000000      MOV dword ptr [EDI + 0x410],0x3c
004c27b4  e9de280000                JMP 0x004c5097
004c27b9  3d90010000                CMP EAX,0x190
004c27be  0f859d060000              JNZ 0x004c2e61
004c27c4  68a400b600                PUSH 0xb600a4
004c27c9  8d4f48                    LEA ECX,[EDI + 0x48]
004c27cc  e8ff7cf4ff                CALL 0x0040a4d0
004c27d1  84c0                      TEST AL,AL
004c27d3  7438                      JZ 0x004c280d
004c27d5  8d4f48                    LEA ECX,[EDI + 0x48]
004c27d8  e8a37ff4ff                CALL 0x0040a780
004c27dd  83f803                    CMP EAX,0x3
004c27e0  752b                      JNZ 0x004c280d
004c27e2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c27e8  6a0a                      PUSH 0xa
004c27ea  e8810e2400                CALL 0x00703670
004c27ef  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004c27f7  51                        PUSH ECX
004c27f8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c27ff  6a00                      PUSH 0x0
004c2801  6a1e                      PUSH 0x1e
004c2803  68a9010000                PUSH 0x1a9
004c2808  e8d3404900                CALL 0x009568e0
004c280d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c2811  0f84ae010000              JZ 0x004c29c5
004c2817  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c281e  0f85a1010000              JNZ 0x004c29c5
004c2824  8d4f78                    LEA ECX,[EDI + 0x78]
004c2827  baa400b600                MOV EDX,0xb600a4
004c282c  e84f4bf4ff                CALL 0x00407380
004c2831  8a08                      MOV CL,byte ptr [EAX]
004c2833  3a0a                      CMP CL,byte ptr [EDX]
004c2835  751a                      JNZ 0x004c2851
004c2837  84c9                      TEST CL,CL
004c2839  7412                      JZ 0x004c284d
004c283b  8a4801                    MOV CL,byte ptr [EAX + 0x1]
004c283e  3a4a01                    CMP CL,byte ptr [EDX + 0x1]
004c2841  750e                      JNZ 0x004c2851
004c2843  83c002                    ADD EAX,0x2
004c2846  83c202                    ADD EDX,0x2
004c2849  84c9                      TEST CL,CL
004c284b  75e4                      JNZ 0x004c2831
004c284d  33c0                      XOR EAX,EAX
004c284f  eb05                      JMP 0x004c2856
004c2851  1bc0                      SBB EAX,EAX
004c2853  83c801                    OR EAX,0x1
004c2856  85c0                      TEST EAX,EAX
004c2858  0f8567010000              JNZ 0x004c29c5
004c285e  50                        PUSH EAX
004c285f  681401b600                PUSH 0xb60114
004c2864  8d4f48                    LEA ECX,[EDI + 0x48]
004c2867  e8147bf4ff                CALL 0x0040a380
004c286c  e8efc62200                CALL 0x006eef60
004c2871  33d2                      XOR EDX,EDX
004c2873  b90a000000                MOV ECX,0xa
004c2878  f7f1                      DIV ECX
004c287a  b8f6ffffff                MOV EAX,0xfffffff6
004c287f  2bc2                      SUB EAX,EDX
004c2881  33f6                      XOR ESI,ESI
004c2883  898710040000              MOV dword ptr [EDI + 0x410],EAX
004c2889  89b54cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ESI
004c288f  90                        NOP
004c2890  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c2894  0f84bf000000              JZ 0x004c2959
004c289a  33c0                      XOR EAX,EAX
004c289c  8d4f78                    LEA ECX,[EDI + 0x78]
004c289f  85f6                      TEST ESI,ESI
004c28a1  0f95c0                    SETNZ AL
004c28a4  50                        PUSH EAX
004c28a5  e8c683f4ff                CALL 0x0040ac70
004c28aa  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004c28b0  85c0                      TEST EAX,EAX
004c28b2  0f84a1000000              JZ 0x004c2959
004c28b8  e8a3c62200                CALL 0x006eef60
004c28bd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c28c3  50                        PUSH EAX
004c28c4  6a00                      PUSH 0x0
004c28c6  57                        PUSH EDI
004c28c7  6840b6c700                PUSH 0xc7b640
004c28cc  8d873c030000              LEA EAX,[EDI + 0x33c]
004c28d2  50                        PUSH EAX
004c28d3  6a65                      PUSH 0x65
004c28d5  68e8030000                PUSH 0x3e8
004c28da  e84162f6ff                CALL 0x00428b20
004c28df  8bf0                      MOV ESI,EAX
004c28e1  8b8544d7ffff              MOV EAX,dword ptr [EBP + 0xffffd744]
004c28e7  8b08                      MOV ECX,dword ptr [EAX]
004c28e9  898edc000000              MOV dword ptr [ESI + 0xdc],ECX
004c28ef  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
004c28f2  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004c28f8  898ee0000000              MOV dword ptr [ESI + 0xe0],ECX
004c28fe  c7865803000000007a44      MOV dword ptr [ESI + 0x358],0x447a0000
004c2908  c7865c040000ffffffff      MOV dword ptr [ESI + 0x45c],0xffffffff
004c2912  c78660040000ffffffff      MOV dword ptr [ESI + 0x460],0xffffffff
004c291c  8b08                      MOV ECX,dword ptr [EAX]
004c291e  85c9                      TEST ECX,ECX
004c2920  741e                      JZ 0x004c2940
004c2922  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004c2928  81c1cc030000              ADD ECX,0x3cc
004c292e  8d8544d7ffff              LEA EAX,[EBP + 0xffffd744]
004c2934  50                        PUSH EAX
004c2935  e8d6c80000                CALL 0x004cf210
004c293a  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004c2940  50                        PUSH EAX
004c2941  8bcf                      MOV ECX,EDI
004c2943  8938                      MOV dword ptr [EAX],EDI
004c2945  e8a6b30000                CALL 0x004cdcf0
004c294a  8b06                      MOV EAX,dword ptr [ESI]
004c294c  8bce                      MOV ECX,ESI
004c294e  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004c2951  ffd0                      CALL EAX
004c2953  8bb54cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd74c]
004c2959  46                        INC ESI
004c295a  89b54cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ESI
004c2960  83fe02                    CMP ESI,0x2
004c2963  0f8c27ffffff              JL 0x004c2890
004c2969  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c296f  8d8d4cd7ffff              LEA ECX,[EBP + 0xffffd74c]
004c2975  c7854cd7ffffa5010000      MOV dword ptr [EBP + 0xffffd74c],0x1a5
004c297f  e8fc3d4900                CALL 0x00956780
004c2984  83ec08                    SUB ESP,0x8
004c2987  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c298d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c2995  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c299c  6a00                      PUSH 0x0
004c299e  6a02                      PUSH 0x2
004c29a0  51                        PUSH ECX
004c29a1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c29a8  ffb54cd7ffff              PUSH dword ptr [EBP + 0xffffd74c]
004c29ae  e87db24600                CALL 0x0092dc30
004c29b3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c29b9  6a14                      PUSH 0x14
004c29bb  e8b00c2400                CALL 0x00703670
004c29c0  e9d2260000                JMP 0x004c5097
004c29c5  681401b600                PUSH 0xb60114
004c29ca  8d4f48                    LEA ECX,[EDI + 0x48]
004c29cd  e8fe7af4ff                CALL 0x0040a4d0
004c29d2  84c0                      TEST AL,AL
004c29d4  0f8457040000              JZ 0x004c2e31
004c29da  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
004c29e2  0f57d2                    XORPS XMM2,XMM2
004c29e5  8bcf                      MOV ECX,EDI
004c29e7  e8749d1e00                CALL 0x006ac760
004c29ec  85c0                      TEST EAX,EAX
004c29ee  0f84ba000000              JZ 0x004c2aae
004c29f4  6a02                      PUSH 0x2
004c29f6  8d4f48                    LEA ECX,[EDI + 0x48]
004c29f9  e8a287f4ff                CALL 0x0040b1a0
004c29fe  8bf0                      MOV ESI,EAX
004c2a00  85f6                      TEST ESI,ESI
004c2a02  0f84a6000000              JZ 0x004c2aae
004c2a08  8d8df8d7ffff              LEA ECX,[EBP + 0xffffd7f8]
004c2a0e  e81dc5f7ff                CALL 0x0043ef30
004c2a13  c7850cd8ffff0000c03f      MOV dword ptr [EBP + 0xffffd80c],0x3fc00000
004c2a1d  c78504d8ffff9a9999bd      MOV dword ptr [EBP + 0xffffd804],0xbd99999a
004c2a27  c78500d8ffffcdcc4cc0      MOV dword ptr [EBP + 0xffffd800],0xc04ccccd
004c2a31  c78588d8ffff00007042      MOV dword ptr [EBP + 0xffffd888],0x42700000
004c2a3b  c78550d8ffff00004000      MOV dword ptr [EBP + 0xffffd850],0x400000
004c2a45  c78554d8ffff00000000      MOV dword ptr [EBP + 0xffffd854],0x0
004c2a4f  e80cc52200                CALL 0x006eef60
004c2a54  33d2                      XOR EDX,EDX
004c2a56  b90f000000                MOV ECX,0xf
004c2a5b  f7f1                      DIV ECX
004c2a5d  8d85f8d7ffff              LEA EAX,[EBP + 0xffffd7f8]
004c2a63  8bcf                      MOV ECX,EDI
004c2a65  50                        PUSH EAX
004c2a66  899574d8ffff              MOV dword ptr [EBP + 0xffffd874],EDX
004c2a6c  8d851cd6ffff              LEA EAX,[EBP + 0xffffd61c]
004c2a72  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004c2a76  6a09                      PUSH 0x9
004c2a78  50                        PUSH EAX
004c2a79  f30f118558d8ffff          MOVSS dword ptr [EBP + 0xffffd858],XMM0
004c2a81  8d873c030000              LEA EAX,[EDI + 0x33c]
004c2a87  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004c2a8c  50                        PUSH EAX
004c2a8d  f30f11855cd8ffff          MOVSS dword ptr [EBP + 0xffffd85c],XMM0
004c2a95  c7851cd6ffff00004040      MOV dword ptr [EBP + 0xffffd61c],0x40400000
004c2a9f  c78520d6ffff0000a040      MOV dword ptr [EBP + 0xffffd620],0x40a00000
004c2aa9  e832882000                CALL 0x006cb2e0
004c2aae  8b85ccd6ffff              MOV EAX,dword ptr [EBP + 0xffffd6cc]
004c2ab4  33f6                      XOR ESI,ESI
004c2ab6  85c0                      TEST EAX,EAX
004c2ab8  7445                      JZ 0x004c2aff
004c2aba  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004c2ac0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c2ac4  7434                      JZ 0x004c2afa
004c2ac6  33c0                      XOR EAX,EAX
004c2ac8  8d4f78                    LEA ECX,[EDI + 0x78]
004c2acb  85f6                      TEST ESI,ESI
004c2acd  0f95c0                    SETNZ AL
004c2ad0  50                        PUSH EAX
004c2ad1  e89a81f4ff                CALL 0x0040ac70
004c2ad6  85c0                      TEST EAX,EAX
004c2ad8  741a                      JZ 0x004c2af4
004c2ada  8b8dc4d6ffff              MOV ECX,dword ptr [EBP + 0xffffd6c4]
004c2ae0  8b14b1                    MOV EDX,dword ptr [ECX + ESI*0x4]
004c2ae3  8b08                      MOV ECX,dword ptr [EAX]
004c2ae5  898adc000000              MOV dword ptr [EDX + 0xdc],ECX
004c2aeb  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004c2aee  8982e0000000              MOV dword ptr [EDX + 0xe0],EAX
004c2af4  8b85ccd6ffff              MOV EAX,dword ptr [EBP + 0xffffd6cc]
004c2afa  46                        INC ESI
004c2afb  3bf0                      CMP ESI,EAX
004c2afd  72c1                      JC 0x004c2ac0
004c2aff  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004c2b05  85d2                      TEST EDX,EDX
004c2b07  0f8e90000000              JLE 0x004c2b9d
004c2b0d  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004c2b15  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004c2b1d  2bc8                      SUB ECX,EAX
004c2b1f  2bd1                      SUB EDX,ECX
004c2b21  899710040000              MOV dword ptr [EDI + 0x410],EDX
004c2b27  83fa0a                    CMP EDX,0xa
004c2b2a  7530                      JNZ 0x004c2b5c
004c2b2c  8bb5ccd6ffff              MOV ESI,dword ptr [EBP + 0xffffd6cc]
004c2b32  33c9                      XOR ECX,ECX
004c2b34  85f6                      TEST ESI,ESI
004c2b36  0f845b250000              JZ 0x004c5097
004c2b3c  8bbdc4d6ffff              MOV EDI,dword ptr [EBP + 0xffffd6c4]
004c2b42  8b048f                    MOV EAX,dword ptr [EDI + ECX*0x4]
004c2b45  41                        INC ECX
004c2b46  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
004c2b4d  3bce                      CMP ECX,ESI
004c2b4f  72f1                      JC 0x004c2b42
004c2b51  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c2b57  e93b250000                JMP 0x004c5097
004c2b5c  85d2                      TEST EDX,EDX
004c2b5e  0f8533250000              JNZ 0x004c5097
004c2b64  8b8dbcd6ffff              MOV ECX,dword ptr [EBP + 0xffffd6bc]
004c2b6a  85c9                      TEST ECX,ECX
004c2b6c  741b                      JZ 0x004c2b89
004c2b6e  8bbdb4d6ffff              MOV EDI,dword ptr [EBP + 0xffffd6b4]
004c2b74  8b0497                    MOV EAX,dword ptr [EDI + EDX*0x4]
004c2b77  42                        INC EDX
004c2b78  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
004c2b7f  3bd1                      CMP EDX,ECX
004c2b81  72f1                      JC 0x004c2b74
004c2b83  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c2b89  6a00                      PUSH 0x0
004c2b8b  682001b600                PUSH 0xb60120
004c2b90  8d4f48                    LEA ECX,[EDI + 0x48]
004c2b93  e8e877f4ff                CALL 0x0040a380
004c2b98  e9fa240000                JMP 0x004c5097
004c2b9d  0f89f4240000              JNS 0x004c5097
004c2ba3  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004c2bab  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004c2bb3  2bc8                      SUB ECX,EAX
004c2bb5  8d040a                    LEA EAX,[EDX + ECX*0x1]
004c2bb8  898710040000              MOV dword ptr [EDI + 0x410],EAX
004c2bbe  85c0                      TEST EAX,EAX
004c2bc0  0f85d1240000              JNZ 0x004c5097
004c2bc6  3985bcd6ffff              CMP dword ptr [EBP + 0xffffd6bc],EAX
004c2bcc  0f87c5240000              JA 0x004c5097
004c2bd2  e889c32200                CALL 0x006eef60
004c2bd7  33d2                      XOR EDX,EDX
004c2bd9  b978000000                MOV ECX,0x78
004c2bde  f7f1                      DIV ECX
004c2be0  8bcf                      MOV ECX,EDI
004c2be2  83c23c                    ADD EDX,0x3c
004c2be5  899710040000              MOV dword ptr [EDI + 0x410],EDX
004c2beb  e850bc1f00                CALL 0x006be840
004c2bf0  8db73c030000              LEA ESI,[EDI + 0x33c]
004c2bf6  898528d7ffff              MOV dword ptr [EBP + 0xffffd728],EAX
004c2bfc  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004c2c04  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004c2c0c  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
004c2c10  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004c2c15  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004c2c1a  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004c2c1f  f30f59c0                  MULSS XMM0,XMM0
004c2c23  f30f59c9                  MULSS XMM1,XMM1
004c2c27  f30f58c1                  ADDSS XMM0,XMM1
004c2c2b  e8202ef7ff                CALL 0x00435a50
004c2c30  8d85d0d6ffff              LEA EAX,[EBP + 0xffffd6d0]
004c2c36  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c2c3e  50                        PUSH EAX
004c2c3f  8d4ddc                    LEA ECX,[EBP + -0x24]
004c2c42  e8e9d35400                CALL 0x00a10030
004c2c47  f30f10a5d4d6ffff          MOVSS XMM4,dword ptr [EBP + 0xffffd6d4]
004c2c4f  33d2                      XOR EDX,EDX
004c2c51  f30f109dd0d6ffff          MOVSS XMM3,dword ptr [EBP + 0xffffd6d0]
004c2c59  0f28cc                    MOVAPS XMM1,XMM4
004c2c5c  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004c2c64  0f28c3                    MOVAPS XMM0,XMM3
004c2c67  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
004c2c6e  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004c2c75  f30f119de8d5ffff          MOVSS dword ptr [EBP + 0xffffd5e8],XMM3
004c2c7d  f30f11a5ecd5ffff          MOVSS dword ptr [EBP + 0xffffd5ec],XMM4
004c2c85  f30f59da                  MULSS XMM3,XMM2
004c2c89  89954cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EDX
004c2c8f  f30f59e2                  MULSS XMM4,XMM2
004c2c93  f30f118de4d5ffff          MOVSS dword ptr [EBP + 0xffffd5e4],XMM1
004c2c9b  f30f1185f0d5ffff          MOVSS dword ptr [EBP + 0xffffd5f0],XMM0
004c2ca3  f30f119d1cd7ffff          MOVSS dword ptr [EBP + 0xffffd71c],XMM3
004c2cab  f30f11a5ecd6ffff          MOVSS dword ptr [EBP + 0xffffd6ec],XMM4
004c2cb3  f30f1084d5e4d5ffff        MOVSS XMM0,dword ptr [EBP + EDX*0x8 + 0xffffd5e4]
004c2cbc  83ec0c                    SUB ESP,0xc
004c2cbf  f30f108cd5e8d5ffff        MOVSS XMM1,dword ptr [EBP + EDX*0x8 + 0xffffd5e8]
004c2cc8  a17816c700                MOV EAX,[0x00c71678]
004c2ccd  f30f59ca                  MULSS XMM1,XMM2
004c2cd1  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
004c2cd9  f30f59c2                  MULSS XMM0,XMM2
004c2cdd  0f28d3                    MOVAPS XMM2,XMM3
004c2ce0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c2ce6  8d85d4d5ffff              LEA EAX,[EBP + 0xffffd5d4]
004c2cec  f30f58e1                  ADDSS XMM4,XMM1
004c2cf0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c2cf8  f30f108d44d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd744]
004c2d00  f30f58d0                  ADDSS XMM2,XMM0
004c2d04  c7042400000000            MOV dword ptr [ESP],0x0
004c2d0b  0f28d9                    MOVAPS XMM3,XMM1
004c2d0e  50                        PUSH EAX
004c2d0f  f30f59cc                  MULSS XMM1,XMM4
004c2d13  8d857cd5ffff              LEA EAX,[EBP + 0xffffd57c]
004c2d19  50                        PUSH EAX
004c2d1a  f30f59da                  MULSS XMM3,XMM2
004c2d1e  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004c2d26  f30f581e                  ADDSS XMM3,dword ptr [ESI]
004c2d2a  f30f118dd8d5ffff          MOVSS dword ptr [EBP + 0xffffd5d8],XMM1
004c2d32  f30f119dd4d5ffff          MOVSS dword ptr [EBP + 0xffffd5d4],XMM3
004c2d3a  0f57db                    XORPS XMM3,XMM3
004c2d3d  e80e023500                CALL 0x00812f50
004c2d42  e819c22200                CALL 0x006eef60
004c2d47  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c2d4d  50                        PUSH EAX
004c2d4e  6a00                      PUSH 0x0
004c2d50  57                        PUSH EDI
004c2d51  6840b6c700                PUSH 0xc7b640
004c2d56  8d857cd5ffff              LEA EAX,[EBP + 0xffffd57c]
004c2d5c  50                        PUSH EAX
004c2d5d  6a60                      PUSH 0x60
004c2d5f  68e8030000                PUSH 0x3e8
004c2d64  e8b75df6ff                CALL 0x00428b20
004c2d69  8bf0                      MOV ESI,EAX
004c2d6b  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004c2d71  c7865c040000ffffffff      MOV dword ptr [ESI + 0x45c],0xffffffff
004c2d7b  c78660040000ffffffff      MOV dword ptr [ESI + 0x460],0xffffffff
004c2d85  8b08                      MOV ECX,dword ptr [EAX]
004c2d87  85c9                      TEST ECX,ECX
004c2d89  741e                      JZ 0x004c2da9
004c2d8b  89850cd7ffff              MOV dword ptr [EBP + 0xffffd70c],EAX
004c2d91  81c1cc030000              ADD ECX,0x3cc
004c2d97  8d850cd7ffff              LEA EAX,[EBP + 0xffffd70c]
004c2d9d  50                        PUSH EAX
004c2d9e  e86dc40000                CALL 0x004cf210
004c2da3  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004c2da9  50                        PUSH EAX
004c2daa  8bcf                      MOV ECX,EDI
004c2dac  8938                      MOV dword ptr [EAX],EDI
004c2dae  e83daf0000                CALL 0x004cdcf0
004c2db3  8b8ec4030000              MOV ECX,dword ptr [ESI + 0x3c4]
004c2db9  8d86c4030000              LEA EAX,[ESI + 0x3c4]
004c2dbf  85c9                      TEST ECX,ECX
004c2dc1  741e                      JZ 0x004c2de1
004c2dc3  89850cd7ffff              MOV dword ptr [EBP + 0xffffd70c],EAX
004c2dc9  81c1cc030000              ADD ECX,0x3cc
004c2dcf  8d850cd7ffff              LEA EAX,[EBP + 0xffffd70c]
004c2dd5  50                        PUSH EAX
004c2dd6  e835c40000                CALL 0x004cf210
004c2ddb  8d86c4030000              LEA EAX,[ESI + 0x3c4]
004c2de1  8b8d28d7ffff              MOV ECX,dword ptr [EBP + 0xffffd728]
004c2de7  50                        PUSH EAX
004c2de8  8908                      MOV dword ptr [EAX],ECX
004c2dea  e801af0000                CALL 0x004cdcf0
004c2def  8b06                      MOV EAX,dword ptr [ESI]
004c2df1  8bce                      MOV ECX,ESI
004c2df3  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004c2df6  ffd0                      CALL EAX
004c2df8  8b954cd7ffff              MOV EDX,dword ptr [EBP + 0xffffd74c]
004c2dfe  8db73c030000              LEA ESI,[EDI + 0x33c]
004c2e04  f30f109d1cd7ffff          MOVSS XMM3,dword ptr [EBP + 0xffffd71c]
004c2e0c  42                        INC EDX
004c2e0d  f30f10a5ecd6ffff          MOVSS XMM4,dword ptr [EBP + 0xffffd6ec]
004c2e15  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004c2e1d  89954cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EDX
004c2e23  83fa02                    CMP EDX,0x2
004c2e26  0f8c87feffff              JL 0x004c2cb3
004c2e2c  e966220000                JMP 0x004c5097
004c2e31  682001b600                PUSH 0xb60120
004c2e36  8d4f48                    LEA ECX,[EDI + 0x48]
004c2e39  e81277f4ff                CALL 0x0040a550
004c2e3e  84c0                      TEST AL,AL
004c2e40  0f8451220000              JZ 0x004c5097
004c2e46  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c2e4c  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c2e52  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c2e5c  e936220000                JMP 0x004c5097
004c2e61  83f80d                    CMP EAX,0xd
004c2e64  0f8596030000              JNZ 0x004c3200
004c2e6a  68e400b600                PUSH 0xb600e4
004c2e6f  8d4f48                    LEA ECX,[EDI + 0x48]
004c2e72  e85976f4ff                CALL 0x0040a4d0
004c2e77  84c0                      TEST AL,AL
004c2e79  742f                      JZ 0x004c2eaa
004c2e7b  686c00b600                PUSH 0xb6006c
004c2e80  8d4f48                    LEA ECX,[EDI + 0x48]
004c2e83  e8a881f4ff                CALL 0x0040b030
004c2e88  84c0                      TEST AL,AL
004c2e8a  741e                      JZ 0x004c2eaa
004c2e8c  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004c2e94  51                        PUSH ECX
004c2e95  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c2e9c  6a00                      PUSH 0x0
004c2e9e  6a02                      PUSH 0x2
004c2ea0  68a5010000                PUSH 0x1a5
004c2ea5  e8363a4900                CALL 0x009568e0
004c2eaa  68e400b600                PUSH 0xb600e4
004c2eaf  8d4f48                    LEA ECX,[EDI + 0x48]
004c2eb2  e89976f4ff                CALL 0x0040a550
004c2eb7  84c0                      TEST AL,AL
004c2eb9  7420                      JZ 0x004c2edb
004c2ebb  6a00                      PUSH 0x0
004c2ebd  68f800b600                PUSH 0xb600f8
004c2ec2  8d4f48                    LEA ECX,[EDI + 0x48]
004c2ec5  e8b674f4ff                CALL 0x0040a380
004c2eca  e891c02200                CALL 0x006eef60
004c2ecf  83e00f                    AND EAX,0xf
004c2ed2  83c00c                    ADD EAX,0xc
004c2ed5  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c2edb  68f800b600                PUSH 0xb600f8
004c2ee0  8d4f48                    LEA ECX,[EDI + 0x48]
004c2ee3  e8e875f4ff                CALL 0x0040a4d0
004c2ee8  84c0                      TEST AL,AL
004c2eea  0f8491020000              JZ 0x004c3181
004c2ef0  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004c2ef8  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004c2f00  2bc8                      SUB ECX,EAX
004c2f02  85c9                      TEST ECX,ECX
004c2f04  0f8e77020000              JLE 0x004c3181
004c2f0a  e851c02200                CALL 0x006eef60
004c2f0f  83e003                    AND EAX,0x3
004c2f12  0f8569020000              JNZ 0x004c3181
004c2f18  e843c02200                CALL 0x006eef60
004c2f1d  0f57d2                    XORPS XMM2,XMM2
004c2f20  6a00                      PUSH 0x0
004c2f22  6a00                      PUSH 0x0
004c2f24  660f6ec0                  MOVD XMM0,EAX
004c2f28  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c2f2c  c1e81f                    SHR EAX,0x1f
004c2f2f  6a01                      PUSH 0x1
004c2f31  51                        PUSH ECX
004c2f32  8d8dd8d6ffff              LEA ECX,[EBP + 0xffffd6d8]
004c2f38  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c2f41  a17816c700                MOV EAX,[0x00c71678]
004c2f46  c7042400000000            MOV dword ptr [ESP],0x0
004c2f4d  51                        PUSH ECX
004c2f4e  8d8d0cd5ffff              LEA ECX,[EBP + 0xffffd50c]
004c2f54  660f5ac8                  CVTPD2PS XMM1,XMM0
004c2f58  51                        PUSH ECX
004c2f59  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c2f61  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004c2f69  f30f58c2                  ADDSS XMM0,XMM2
004c2f6d  f30f5cca                  SUBSS XMM1,XMM2
004c2f71  f30f5fca                  MAXSS XMM1,XMM2
004c2f75  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004c2f7d  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
004c2f85  f30f5c0dfca6ba00          SUBSS XMM1,dword ptr [0x00baa6fc]
004c2f8d  f30f5e0d24a3ba00          DIVSS XMM1,dword ptr [0x00baa324]
004c2f95  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004c2f9d  f30f1185dcd6ffff          MOVSS dword ptr [EBP + 0xffffd6dc],XMM0
004c2fa5  f30f118dd8d6ffff          MOVSS dword ptr [EBP + 0xffffd6d8],XMM1
004c2fad  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c2fb3  e868053500                CALL 0x00813520
004c2fb8  8bcf                      MOV ECX,EDI
004c2fba  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004c2fbe  f30f1185d8d6ffff          MOVSS dword ptr [EBP + 0xffffd6d8],XMM0
004c2fc6  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004c2fcb  f30f1185dcd6ffff          MOVSS dword ptr [EBP + 0xffffd6dc],XMM0
004c2fd3  e868b81f00                CALL 0x006be840
004c2fd8  8d8d54d6ffff              LEA ECX,[EBP + 0xffffd654]
004c2fde  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004c2fe6  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004c2fee  8d852cd5ffff              LEA EAX,[EBP + 0xffffd52c]
004c2ff4  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004c2ffc  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004c3004  50                        PUSH EAX
004c3005  f30f118554d6ffff          MOVSS dword ptr [EBP + 0xffffd654],XMM0
004c300d  f30f118d58d6ffff          MOVSS dword ptr [EBP + 0xffffd658],XMM1
004c3015  e816d05400                CALL 0x00a10030
004c301a  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004c301e  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004c3023  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
004c302b  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004c3033  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004c3038  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004c303d  e81ebf2200                CALL 0x006eef60
004c3042  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c3048  50                        PUSH EAX
004c3049  6a00                      PUSH 0x0
004c304b  57                        PUSH EDI
004c304c  8d45dc                    LEA EAX,[EBP + -0x24]
004c304f  50                        PUSH EAX
004c3050  8d85d8d6ffff              LEA EAX,[EBP + 0xffffd6d8]
004c3056  50                        PUSH EAX
004c3057  6a03                      PUSH 0x3
004c3059  6829010000                PUSH 0x129
004c305e  e8bd5af6ff                CALL 0x00428b20
004c3063  898524d7ffff              MOV dword ptr [EBP + 0xffffd724],EAX
004c3069  e8f2be2200                CALL 0x006eef60
004c306e  660f6ec0                  MOVD XMM0,EAX
004c3072  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c3076  c1e81f                    SHR EAX,0x1f
004c3079  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c3082  660f5ac8                  CVTPD2PS XMM1,XMM0
004c3086  0f57c0                    XORPS XMM0,XMM0
004c3089  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004c3091  f30f5cc8                  SUBSS XMM1,XMM0
004c3095  f30f5fc8                  MAXSS XMM1,XMM0
004c3099  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004c30a1  f30f590dc0a8ba00          MULSS XMM1,dword ptr [0x00baa8c0]
004c30a9  f30f5c0d60a8ba00          SUBSS XMM1,dword ptr [0x00baa860]
004c30b1  f30f5e0d24a3ba00          DIVSS XMM1,dword ptr [0x00baa324]
004c30b9  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004c30c1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c30c9  8bcf                      MOV ECX,EDI
004c30cb  f30f580564a9ba00          ADDSS XMM0,dword ptr [0x00baa964]
004c30d3  f30f5c8dd8d6ffff          SUBSS XMM1,dword ptr [EBP + 0xffffd6d8]
004c30db  6800000010                PUSH 0x10000000
004c30e0  6a00                      PUSH 0x0
004c30e2  f30f5c85dcd6ffff          SUBSS XMM0,dword ptr [EBP + 0xffffd6dc]
004c30ea  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004c30ef  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004c30f4  e83743f5ff                CALL 0x00417430
004c30f9  8b8d24d7ffff              MOV ECX,dword ptr [EBP + 0xffffd724]
004c30ff  84c0                      TEST AL,AL
004c3101  7414                      JZ 0x004c3117
004c3103  c7818003000000002041      MOV dword ptr [ECX + 0x380],0x41200000
004c310d  c7818403000000002041      MOV dword ptr [ECX + 0x384],0x41200000
004c3117  c7818801000000000000      MOV dword ptr [ECX + 0x188],0x0
004c3121  8b01                      MOV EAX,dword ptr [ECX]
004c3123  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004c3126  ffd0                      CALL EAX
004c3128  51                        PUSH ECX
004c3129  8d8514d5ffff              LEA EAX,[EBP + 0xffffd514]
004c312f  c704240000e040            MOV dword ptr [ESP],0x40e00000
004c3136  50                        PUSH EAX
004c3137  8d4ddc                    LEA ECX,[EBP + -0x24]
004c313a  e8c1cf5400                CALL 0x00a10100
004c313f  8b9524d7ffff              MOV EDX,dword ptr [EBP + 0xffffd724]
004c3145  8b08                      MOV ECX,dword ptr [EAX]
004c3147  898a60030000              MOV dword ptr [EDX + 0x360],ECX
004c314d  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004c3150  898264030000              MOV dword ptr [EDX + 0x364],EAX
004c3156  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c315c  85c0                      TEST EAX,EAX
004c315e  7f15                      JG 0x004c3175
004c3160  6a00                      PUSH 0x0
004c3162  680801b600                PUSH 0xb60108
004c3167  8d4f48                    LEA ECX,[EDI + 0x48]
004c316a  e81172f4ff                CALL 0x0040a380
004c316f  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c3175  48                        DEC EAX
004c3176  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c317c  e9161f0000                JMP 0x004c5097
004c3181  680801b600                PUSH 0xb60108
004c3186  8d4f48                    LEA ECX,[EDI + 0x48]
004c3189  e8c273f4ff                CALL 0x0040a550
004c318e  84c0                      TEST AL,AL
004c3190  0f84011f0000              JZ 0x004c5097
004c3196  6a00                      PUSH 0x0
004c3198  687800b600                PUSH 0xb60078
004c319d  8d4f48                    LEA ECX,[EDI + 0x48]
004c31a0  c787640b0000bc020000      MOV dword ptr [EDI + 0xb64],0x2bc
004c31aa  e8d171f4ff                CALL 0x0040a380
004c31af  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004c31b7  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
004c31bf  a17816c700                MOV EAX,[0x00c71678]
004c31c4  51                        PUSH ECX
004c31c5  8d8d34d5ffff              LEA ECX,[EBP + 0xffffd534]
004c31cb  f30f110424                MOVSS dword ptr [ESP],XMM0
004c31d0  51                        PUSH ECX
004c31d1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c31d7  e8f4b73500                CALL 0x0081e9d0
004c31dc  8b08                      MOV ECX,dword ptr [EAX]
004c31de  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004c31e4  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004c31e7  898738030000              MOV dword ptr [EDI + 0x338],EAX
004c31ed  e86ebd2200                CALL 0x006eef60
004c31f2  83c801                    OR EAX,0x1
004c31f5  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c31fb  e9971e0000                JMP 0x004c5097
004c3200  3d2c010000                CMP EAX,0x12c
004c3205  0f85cc040000              JNZ 0x004c36d7
004c320b  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004c3211  8b0c853c01b600            MOV ECX,dword ptr [EAX*0x4 + 0xb6013c]
004c3218  8b34854c01b600            MOV ESI,dword ptr [EAX*0x4 + 0xb6014c]
004c321f  898d08d7ffff              MOV dword ptr [EBP + 0xffffd708],ECX
004c3225  8b0c855c01b600            MOV ECX,dword ptr [EAX*0x4 + 0xb6015c]
004c322c  898d44d7ffff              MOV dword ptr [EBP + 0xffffd744],ECX
004c3232  8d4f48                    LEA ECX,[EDI + 0x48]
004c3235  56                        PUSH ESI
004c3236  e89572f4ff                CALL 0x0040a4d0
004c323b  84c0                      TEST AL,AL
004c323d  0f84dd030000              JZ 0x004c3620
004c3243  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
004c324b  8bcf                      MOV ECX,EDI
004c324d  e80e951e00                CALL 0x006ac760
004c3252  85c0                      TEST EAX,EAX
004c3254  0f845b030000              JZ 0x004c35b5
004c325a  8d8da0d8ffff              LEA ECX,[EBP + 0xffffd8a0]
004c3260  e8cbbcf7ff                CALL 0x0043ef30
004c3265  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004c326b  85c0                      TEST EAX,EAX
004c326d  740f                      JZ 0x004c327e
004c326f  c785acd8ffff7b142ebe      MOV dword ptr [EBP + 0xffffd8ac],0xbe2e147b
004c3279  83f802                    CMP EAX,0x2
004c327c  750a                      JNZ 0x004c3288
004c327e  c785acd8ffffec5138be      MOV dword ptr [EBP + 0xffffd8ac],0xbe3851ec
004c3288  0f57db                    XORPS XMM3,XMM3
004c328b  c78534d9ffff06000000      MOV dword ptr [EBP + 0xffffd934],0x6
004c3295  0f57d2                    XORPS XMM2,XMM2
004c3298  c785f8d8ffff00000048      MOV dword ptr [EBP + 0xffffd8f8],0x48000000
004c32a2  0f57c9                    XORPS XMM1,XMM1
004c32a5  c785fcd8ffff00000000      MOV dword ptr [EBP + 0xffffd8fc],0x0
004c32af  8d8d04d4ffff              LEA ECX,[EBP + 0xffffd404]
004c32b5  c785c4d8ffff9cc4803f      MOV dword ptr [EBP + 0xffffd8c4],0x3f80c49c
004c32bf  e8bc27f7ff                CALL 0x00435a80
004c32c4  50                        PUSH EAX
004c32c5  8d8dccd8ffff              LEA ECX,[EBP + 0xffffd8cc]
004c32cb  e8203ff4ff                CALL 0x004071f0
004c32d0  c785b4d8ffff0000c03f      MOV dword ptr [EBP + 0xffffd8b4],0x3fc00000
004c32da  33f6                      XOR ESI,ESI
004c32dc  0f1f4000                  NOP dword ptr [EAX]
004c32e0  8bc6                      MOV EAX,ESI
004c32e2  83e800                    SUB EAX,0x0
004c32e5  742f                      JZ 0x004c3316
004c32e7  83e801                    SUB EAX,0x1
004c32ea  7419                      JZ 0x004c3305
004c32ec  83e801                    SUB EAX,0x1
004c32ef  0f85b6020000              JNZ 0x004c35ab
004c32f5  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004c32f8  0f84b7020000              JZ 0x004c35b5
004c32fe  b802000000                MOV EAX,0x2
004c3303  eb1d                      JMP 0x004c3322
004c3305  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c3309  0f849c020000              JZ 0x004c35ab
004c330f  b801000000                MOV EAX,0x1
004c3314  eb0c                      JMP 0x004c3322
004c3316  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c331a  0f848b020000              JZ 0x004c35ab
004c3320  33c0                      XOR EAX,EAX
004c3322  50                        PUSH EAX
004c3323  8d4f78                    LEA ECX,[EDI + 0x78]
004c3326  e84579f4ff                CALL 0x0040ac70
004c332b  898528d7ffff              MOV dword ptr [EBP + 0xffffd728],EAX
004c3331  85c0                      TEST EAX,EAX
004c3333  0f8472020000              JZ 0x004c35ab
004c3339  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004c333f  c78570ffffff920a86bf      MOV dword ptr [EBP + 0xffffff70],0xbf860a92
004c3349  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004c334c  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
004c3352  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004c3355  8d4588                    LEA EAX,[EBP + -0x78]
004c3358  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004c335b  a17816c700                MOV EAX,[0x00c71678]
004c3360  c78574ffffff920a863f      MOV dword ptr [EBP + 0xffffff74],0x3f860a92
004c336a  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
004c3374  c7857cffffff507756bf      MOV dword ptr [EBP + 0xffffff7c],0xbf567750
004c337e  c745805077563f            MOV dword ptr [EBP + -0x80],0x3f567750
004c3385  c7458435fa0e3e            MOV dword ptr [EBP + -0x7c],0x3e0efa35
004c338c  c74588ab611cbf            MOV dword ptr [EBP + -0x78],0xbf1c61ab
004c3393  c7458cab611c3f            MOV dword ptr [EBP + -0x74],0x3f1c61ab
004c339a  c7459035fa0ebe            MOV dword ptr [EBP + -0x70],0xbe0efa35
004c33a1  8b88f8640200              MOV ECX,dword ptr [EAX + 0x264f8]
004c33a7  b893244992                MOV EAX,0x92492493
004c33ac  2b8f28030000              SUB ECX,dword ptr [EDI + 0x328]
004c33b2  f7e9                      IMUL ECX
004c33b4  03d1                      ADD EDX,ECX
004c33b6  b903000000                MOV ECX,0x3
004c33bb  c1fa02                    SAR EDX,0x2
004c33be  8bc2                      MOV EAX,EDX
004c33c0  c1e81f                    SHR EAX,0x1f
004c33c3  03c2                      ADD EAX,EDX
004c33c5  99                        CDQ
004c33c6  f7f9                      IDIV ECX
004c33c8  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004c33ce  898d30d7ffff              MOV dword ptr [EBP + 0xffffd730],ECX
004c33d4  8bc2                      MOV EAX,EDX
004c33d6  8b95fcd8ffff              MOV EDX,dword ptr [EBP + 0xffffd8fc]
004c33dc  83c1fe                    ADD ECX,-0x2
004c33df  898524d7ffff              MOV dword ptr [EBP + 0xffffd724],EAX
004c33e5  83e2fe                    AND EDX,0xfffffffe
004c33e8  8b4485d8                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x28]
004c33ec  660f6ec1                  MOVD XMM0,ECX
004c33f0  8b8df8d8ffff              MOV ECX,dword ptr [EBP + 0xffffd8f8]
004c33f6  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c33f9  81e1fffff3ff              AND ECX,0xfff3ffff
004c33ff  f30f59054ca5ba00          MULSS XMM0,dword ptr [0x00baa54c]
004c3407  f30f5804b0                ADDSS XMM0,dword ptr [EAX + ESI*0x4]
004c340c  8b8530d7ffff              MOV EAX,dword ptr [EBP + 0xffffd730]
004c3412  83e001                    AND EAX,0x1
004c3415  898df8d8ffff              MOV dword ptr [EBP + 0xffffd8f8],ECX
004c341b  8995fcd8ffff              MOV dword ptr [EBP + 0xffffd8fc],EDX
004c3421  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004c3427  f30f11850cd7ffff          MOVSS dword ptr [EBP + 0xffffd70c],XMM0
004c342f  750a                      JNZ 0x004c343b
004c3431  f30f100d38a0ba00          MOVSS XMM1,dword ptr [0x00baa038]
004c3439  eb08                      JMP 0x004c3443
004c343b  f30f100d28a0ba00          MOVSS XMM1,dword ptr [0x00baa028]
004c3443  83bd44d7ffff00            CMP dword ptr [EBP + 0xffffd744],0x0
004c344a  8d7da0                    LEA EDI,[EBP + -0x60]
004c344d  8d4594                    LEA EAX,[EBP + -0x6c]
004c3450  c7459434000000            MOV dword ptr [EBP + -0x6c],0x34
004c3457  0f45c7                    CMOVNZ EAX,EDI
004c345a  c7459828000000            MOV dword ptr [EBP + -0x68],0x28
004c3461  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c3467  c7459c20000000            MOV dword ptr [EBP + -0x64],0x20
004c346e  c745a050000000            MOV dword ptr [EBP + -0x60],0x50
004c3475  c745a444000000            MOV dword ptr [EBP + -0x5c],0x44
004c347c  c745a838000000            MOV dword ptr [EBP + -0x58],0x38
004c3483  89854cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EAX
004c3489  83fe01                    CMP ESI,0x1
004c348c  750a                      JNZ 0x004c3498
004c348e  8bc1                      MOV EAX,ECX
004c3490  81c900000400              OR ECX,0x40000
004c3496  eb0c                      JMP 0x004c34a4
004c3498  85f6                      TEST ESI,ESI
004c349a  7553                      JNZ 0x004c34ef
004c349c  8bc1                      MOV EAX,ECX
004c349e  81c900000800              OR ECX,0x80000
004c34a4  8bbd24d7ffff              MOV EDI,dword ptr [EBP + 0xffffd724]
004c34aa  0d00004000                OR EAX,0x400000
004c34af  898520d9ffff              MOV dword ptr [EBP + 0xffffd920],EAX
004c34b5  8b854cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd74c]
004c34bb  899524d9ffff              MOV dword ptr [EBP + 0xffffd924],EDX
004c34c1  83ca01                    OR EDX,0x1
004c34c4  8b04b8                    MOV EAX,dword ptr [EAX + EDI*0x4]
004c34c7  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c34cd  89852cd9ffff              MOV dword ptr [EBP + 0xffffd92c],EAX
004c34d3  f7d8                      NEG EAX
004c34d5  89851cd9ffff              MOV dword ptr [EBP + 0xffffd91c],EAX
004c34db  8995fcd8ffff              MOV dword ptr [EBP + 0xffffd8fc],EDX
004c34e1  898df8d8ffff              MOV dword ptr [EBP + 0xffffd8f8],ECX
004c34e7  f30f118dc0d8ffff          MOVSS dword ptr [EBP + 0xffffd8c0],XMM1
004c34ef  e82ca0f5ff                CALL 0x0041d520
004c34f4  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c34fc  f30f10850cd7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd70c]
004c3504  e837a0f5ff                CALL 0x0041d540
004c3509  83bd30d7ffff01            CMP dword ptr [EBP + 0xffffd730],0x1
004c3510  8b8528d7ffff              MOV EAX,dword ptr [EBP + 0xffffd728]
004c3516  f30f1010                  MOVSS XMM2,dword ptr [EAX]
004c351a  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004c351f  f30f5e1524a3ba00          DIVSS XMM2,dword ptr [0x00baa324]
004c3527  c78530d9ffff0000f041      MOV dword ptr [EBP + 0xffffd930],0x41f00000
004c3531  f30f5e0d24a3ba00          DIVSS XMM1,dword ptr [0x00baa324]
004c3539  f30f5815e49fba00          ADDSS XMM2,dword ptr [0x00ba9fe4]
004c3541  f30f580d8ca8ba00          ADDSS XMM1,dword ptr [0x00baa88c]
004c3549  f30f119500d9ffff          MOVSS dword ptr [EBP + 0xffffd900],XMM2
004c3551  f30f118d04d9ffff          MOVSS dword ptr [EBP + 0xffffd904],XMM1
004c3559  740a                      JZ 0x004c3565
004c355b  c78530d9ffff0000a041      MOV dword ptr [EBP + 0xffffd930],0x41a00000
004c3565  f30f108d44d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd744]
004c356d  8d85a0d8ffff              LEA EAX,[EBP + 0xffffd8a0]
004c3573  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004c357b  8bcf                      MOV ECX,EDI
004c357d  50                        PUSH EAX
004c357e  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
004c3586  8d854cd6ffff              LEA EAX,[EBP + 0xffffd64c]
004c358c  6a00                      PUSH 0x0
004c358e  50                        PUSH EAX
004c358f  8d873c030000              LEA EAX,[EDI + 0x33c]
004c3595  f30f11854cd6ffff          MOVSS dword ptr [EBP + 0xffffd64c],XMM0
004c359d  50                        PUSH EAX
004c359e  f30f118d50d6ffff          MOVSS dword ptr [EBP + 0xffffd650],XMM1
004c35a6  e8357d2000                CALL 0x006cb2e0
004c35ab  46                        INC ESI
004c35ac  83fe03                    CMP ESI,0x3
004c35af  0f8c2bfdffff              JL 0x004c32e0
004c35b5  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004c35bd  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
004c35c5  2bd0                      SUB EDX,EAX
004c35c7  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004c35cd  2bc2                      SUB EAX,EDX
004c35cf  898710040000              MOV dword ptr [EDI + 0x410],EAX
004c35d5  85c0                      TEST EAX,EAX
004c35d7  0f8fba1a0000              JG 0x004c5097
004c35dd  6a00                      PUSH 0x0
004c35df  ffb508d7ffff              PUSH dword ptr [EBP + 0xffffd708]
004c35e5  8d4f48                    LEA ECX,[EDI + 0x48]
004c35e8  e8936df4ff                CALL 0x0040a380
004c35ed  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c35f3  85c0                      TEST EAX,EAX
004c35f5  0f8f7afbffff              JG 0x004c3175
004c35fb  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c3601  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c3607  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c3611  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
004c361b  e9771a0000                JMP 0x004c5097
004c3620  ffb508d7ffff              PUSH dword ptr [EBP + 0xffffd708]
004c3626  8d4f48                    LEA ECX,[EDI + 0x48]
004c3629  e8226ff4ff                CALL 0x0040a550
004c362e  84c0                      TEST AL,AL
004c3630  7468                      JZ 0x004c369a
004c3632  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004c3639  753b                      JNZ 0x004c3676
004c363b  8bcf                      MOV ECX,EDI
004c363d  e8feb11f00                CALL 0x006be840
004c3642  8d4ddc                    LEA ECX,[EBP + -0x24]
004c3645  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004c364d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004c3655  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004c365d  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004c3665  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004c366a  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004c366f  e8ecbb1b00                CALL 0x0067f260
004c3674  eb08                      JMP 0x004c367e
004c3676  e8e5b82200                CALL 0x006eef60
004c367b  83e003                    AND EAX,0x3
004c367e  6a00                      PUSH 0x0
004c3680  ff34855c01b600            PUSH dword ptr [EAX*0x4 + 0xb6015c]
004c3687  8d4f48                    LEA ECX,[EDI + 0x48]
004c368a  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004c3690  e8eb6cf4ff                CALL 0x0040a380
004c3695  e9fd190000                JMP 0x004c5097
004c369a  ffb544d7ffff              PUSH dword ptr [EBP + 0xffffd744]
004c36a0  8d4f48                    LEA ECX,[EDI + 0x48]
004c36a3  e8a86ef4ff                CALL 0x0040a550
004c36a8  84c0                      TEST AL,AL
004c36aa  0f84e7190000              JZ 0x004c5097
004c36b0  6a00                      PUSH 0x0
004c36b2  56                        PUSH ESI
004c36b3  8d4f48                    LEA ECX,[EDI + 0x48]
004c36b6  e8c56cf4ff                CALL 0x0040a380
004c36bb  e8a0b82200                CALL 0x006eef60
004c36c0  33d2                      XOR EDX,EDX
004c36c2  b978000000                MOV ECX,0x78
004c36c7  f7f1                      DIV ECX
004c36c9  83c23c                    ADD EDX,0x3c
004c36cc  899710040000              MOV dword ptr [EDI + 0x410],EDX
004c36d2  e9c0190000                JMP 0x004c5097
004c36d7  3df4010000                CMP EAX,0x1f4
004c36dc  0f85b5190000              JNZ 0x004c5097
004c36e2  68eca4b100                PUSH 0xb1a4ec
004c36e7  8d4f48                    LEA ECX,[EDI + 0x48]
004c36ea  e8616ef4ff                CALL 0x0040a550
004c36ef  84c0                      TEST AL,AL
004c36f1  7423                      JZ 0x004c3716
004c36f3  c787c40b0000f4010000      MOV dword ptr [EDI + 0xbc4],0x1f4
004c36fd  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c3707  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
004c3711  e981190000                JMP 0x004c5097
004c3716  8d4f48                    LEA ECX,[EDI + 0x48]
004c3719  e86270f4ff                CALL 0x0040a780
004c371e  83f804                    CMP EAX,0x4
004c3721  0f8c70190000              JL 0x004c5097
004c3727  8d4f48                    LEA ECX,[EDI + 0x48]
004c372a  e85170f4ff                CALL 0x0040a780
004c372f  83f814                    CMP EAX,0x14
004c3732  0f8f5f190000              JG 0x004c5097
004c3738  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004c3740  51                        PUSH ECX
004c3741  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c3748  6a00                      PUSH 0x0
004c374a  6a14                      PUSH 0x14
004c374c  6836010000                PUSH 0x136
004c3751  e88a314900                CALL 0x009568e0
004c3756  a17816c700                MOV EAX,[0x00c71678]
004c375b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004c3761  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
004c3766  f30f118508d7ffff          MOVSS dword ptr [EBP + 0xffffd708],XMM0
004c376e  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
004c3773  f30f118524d7ffff          MOVSS dword ptr [EBP + 0xffffd724],XMM0
004c377b  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
004c3780  f30f118530d7ffff          MOVSS dword ptr [EBP + 0xffffd730],XMM0
004c3788  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
004c378d  f30f118504d7ffff          MOVSS dword ptr [EBP + 0xffffd704],XMM0
004c3795  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004c379d  f30f1185f0d6ffff          MOVSS dword ptr [EBP + 0xffffd6f0],XMM0
004c37a5  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004c37ad  f30f1185f4d6ffff          MOVSS dword ptr [EBP + 0xffffd6f4],XMM0
004c37b5  0f57c0                    XORPS XMM0,XMM0
004c37b8  f30f118534d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM0
004c37c0  f30f11852cd7ffff          MOVSS dword ptr [EBP + 0xffffd72c],XMM0
004c37c8  e893b72200                CALL 0x006eef60
004c37cd  83e003                    AND EAX,0x3
004c37d0  ff248534584c00            JMP dword ptr [EAX*0x4 + 0x4c5834]
004c37d7  e884b72200                CALL 0x006eef60
004c37dc  f30f108d04d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd704]
004c37e4  f30f5c8d24d7ffff          SUBSS XMM1,dword ptr [EBP + 0xffffd724]
004c37ec  f30f109508d7ffff          MOVSS XMM2,dword ptr [EBP + 0xffffd708]
004c37f4  660f6ec0                  MOVD XMM0,EAX
004c37f8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c37fc  c1e81f                    SHR EAX,0x1f
004c37ff  f30f1195f0d6ffff          MOVSS dword ptr [EBP + 0xffffd6f0],XMM2
004c3807  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c3810  660f5ac0                  CVTPD2PS XMM0,XMM0
004c3814  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c381c  f30f59c8                  MULSS XMM1,XMM0
004c3820  f30f100560adba00          MOVSS XMM0,dword ptr [0x00baad60]
004c3828  f30f118534d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM0
004c3830  f30f588d24d7ffff          ADDSS XMM1,dword ptr [EBP + 0xffffd724]
004c3838  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004c3840  f30f118df4d6ffff          MOVSS dword ptr [EBP + 0xffffd6f4],XMM1
004c3848  e945010000                JMP 0x004c3992
004c384d  e80eb72200                CALL 0x006eef60
004c3852  f30f108d04d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd704]
004c385a  f30f5c8d24d7ffff          SUBSS XMM1,dword ptr [EBP + 0xffffd724]
004c3862  660f6ec0                  MOVD XMM0,EAX
004c3866  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c386a  c1e81f                    SHR EAX,0x1f
004c386d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c3876  660f5ac0                  CVTPD2PS XMM0,XMM0
004c387a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c3882  f30f59c8                  MULSS XMM1,XMM0
004c3886  f30f108530d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd730]
004c388e  f30f1185f0d6ffff          MOVSS dword ptr [EBP + 0xffffd6f0],XMM0
004c3896  f30f588d24d7ffff          ADDSS XMM1,dword ptr [EBP + 0xffffd724]
004c389e  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004c38a6  f30f118534d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM0
004c38ae  f30f10057ca7ba00          MOVSS XMM0,dword ptr [0x00baa77c]
004c38b6  f30f118df4d6ffff          MOVSS dword ptr [EBP + 0xffffd6f4],XMM1
004c38be  e9cf000000                JMP 0x004c3992
004c38c3  e898b62200                CALL 0x006eef60
004c38c8  f30f108d30d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd730]
004c38d0  f30f5c8d08d7ffff          SUBSS XMM1,dword ptr [EBP + 0xffffd708]
004c38d8  f30f109524d7ffff          MOVSS XMM2,dword ptr [EBP + 0xffffd724]
004c38e0  660f6ec0                  MOVD XMM0,EAX
004c38e4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c38e8  c1e81f                    SHR EAX,0x1f
004c38eb  f30f1195f4d6ffff          MOVSS dword ptr [EBP + 0xffffd6f4],XMM2
004c38f3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c38fc  660f5ac0                  CVTPD2PS XMM0,XMM0
004c3900  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c3908  f30f59c8                  MULSS XMM1,XMM0
004c390c  0f57c0                    XORPS XMM0,XMM0
004c390f  f30f118534d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM0
004c3917  f30f100508a7ba00          MOVSS XMM0,dword ptr [0x00baa708]
004c391f  eb61                      JMP 0x004c3982
004c3921  e83ab62200                CALL 0x006eef60
004c3926  f30f108d30d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd730]
004c392e  f30f5c8d08d7ffff          SUBSS XMM1,dword ptr [EBP + 0xffffd708]
004c3936  660f6ec0                  MOVD XMM0,EAX
004c393a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c393e  c1e81f                    SHR EAX,0x1f
004c3941  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c394a  660f5ac0                  CVTPD2PS XMM0,XMM0
004c394e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c3956  f30f59c8                  MULSS XMM1,XMM0
004c395a  f30f108504d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd704]
004c3962  f30f1185f4d6ffff          MOVSS dword ptr [EBP + 0xffffd6f4],XMM0
004c396a  f30f100508a7ba00          MOVSS XMM0,dword ptr [0x00baa708]
004c3972  f30f118534d7ffff          MOVSS dword ptr [EBP + 0xffffd734],XMM0
004c397a  f30f1005a8a7ba00          MOVSS XMM0,dword ptr [0x00baa7a8]
004c3982  f30f588d08d7ffff          ADDSS XMM1,dword ptr [EBP + 0xffffd708]
004c398a  f30f118df0d6ffff          MOVSS dword ptr [EBP + 0xffffd6f0],XMM1
004c3992  f30f11852cd7ffff          MOVSS dword ptr [EBP + 0xffffd72c],XMM0
004c399a  e8c1b52200                CALL 0x006eef60
004c399f  f30f108d2cd7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd72c]
004c39a7  f30f5c8d34d7ffff          SUBSS XMM1,dword ptr [EBP + 0xffffd734]
004c39af  660f6ec0                  MOVD XMM0,EAX
004c39b3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c39b7  c1e81f                    SHR EAX,0x1f
004c39ba  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c39c3  660f5ac0                  CVTPD2PS XMM0,XMM0
004c39c7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c39cf  f30f59c1                  MULSS XMM0,XMM1
004c39d3  f30f588534d7ffff          ADDSS XMM0,dword ptr [EBP + 0xffffd734]
004c39db  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c39e3  e8389bf5ff                CALL 0x0041d520
004c39e8  f30f11850cd7ffff          MOVSS dword ptr [EBP + 0xffffd70c],XMM0
004c39f0  f30f108544d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd744]
004c39f8  e8439bf5ff                CALL 0x0041d540
004c39fd  f30f118544d7ffff          MOVSS dword ptr [EBP + 0xffffd744],XMM0
004c3a05  e856b52200                CALL 0x006eef60
004c3a0a  f30f1085f0d6ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd6f0]
004c3a12  660f6ec8                  MOVD XMM1,EAX
004c3a16  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004c3a1a  c1e81f                    SHR EAX,0x1f
004c3a1d  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004c3a26  660f5ad1                  CVTPD2PS XMM2,XMM1
004c3a2a  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004c3a32  0f28ca                    MOVAPS XMM1,XMM2
004c3a35  f30f59950cd7ffff          MULSS XMM2,dword ptr [EBP + 0xffffd70c]
004c3a3d  f30f598d44d7ffff          MULSS XMM1,dword ptr [EBP + 0xffffd744]
004c3a45  f30f591550a9ba00          MULSS XMM2,dword ptr [0x00baa950]
004c3a4d  f30f590d50a9ba00          MULSS XMM1,dword ptr [0x00baa950]
004c3a55  f30f58c1                  ADDSS XMM0,XMM1
004c3a59  f30f1185f0d6ffff          MOVSS dword ptr [EBP + 0xffffd6f0],XMM0
004c3a61  f30f1085f4d6ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd6f4]
004c3a69  f30f58c2                  ADDSS XMM0,XMM2
004c3a6d  f30f1185f4d6ffff          MOVSS dword ptr [EBP + 0xffffd6f4],XMM0
004c3a75  e8e6b42200                CALL 0x006eef60
004c3a7a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c3a80  50                        PUSH EAX
004c3a81  6a00                      PUSH 0x0
004c3a83  57                        PUSH EDI
004c3a84  6840b6c700                PUSH 0xc7b640
004c3a89  8d85f0d6ffff              LEA EAX,[EBP + 0xffffd6f0]
004c3a8f  50                        PUSH EAX
004c3a90  6a16                      PUSH 0x16
004c3a92  68e8030000                PUSH 0x3e8
004c3a97  e88450f6ff                CALL 0x00428b20
004c3a9c  8bf0                      MOV ESI,EAX
004c3a9e  e8bdb42200                CALL 0x006eef60
004c3aa3  8bce                      MOV ECX,ESI
004c3aa5  660f6ec0                  MOVD XMM0,EAX
004c3aa9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c3aad  c1e81f                    SHR EAX,0x1f
004c3ab0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c3ab9  8b06                      MOV EAX,dword ptr [ESI]
004c3abb  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004c3abe  660f5ac8                  CVTPD2PS XMM1,XMM0
004c3ac2  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004c3aca  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
004c3ad2  0f28c1                    MOVAPS XMM0,XMM1
004c3ad5  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004c3add  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004c3ae5  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004c3aed  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004c3af5  ffd0                      CALL EAX
004c3af7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c3afd  6a04                      PUSH 0x4
004c3aff  e86cfb2300                CALL 0x00703670
004c3b04  e98e150000                JMP 0x004c5097
004c3b09  a174f6b100                MOV EAX,[0x00b1f674]
004c3b0e  8bb7c40b0000              MOV ESI,dword ptr [EDI + 0xbc4]
004c3b14  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004c3b1c  89854cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EAX
004c3b22  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004c3b25  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004c3b2b  660fd645cc                MOVQ qword ptr [EBP + -0x34],XMM0
004c3b30  8b0c853c01b600            MOV ECX,dword ptr [EAX*0x4 + 0xb6013c]
004c3b37  898d24d7ffff              MOV dword ptr [EBP + 0xffffd724],ECX
004c3b3d  8b0c855c01b600            MOV ECX,dword ptr [EAX*0x4 + 0xb6015c]
004c3b44  8b04854c01b600            MOV EAX,dword ptr [EAX*0x4 + 0xb6014c]
004c3b4b  898d0cd7ffff              MOV dword ptr [EBP + 0xffffd70c],ECX
004c3b51  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004c3b57  85f6                      TEST ESI,ESI
004c3b59  7510                      JNZ 0x004c3b6b
004c3b5b  6854bfb600                PUSH 0xb6bf54
004c3b60  6a10                      PUSH 0x10
004c3b62  e859d75400                CALL 0x00a112c0
004c3b67  83c408                    ADD ESP,0x8
004c3b6a  cc                        INT3
004c3b6b  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004c3b6e  8bd6                      MOV EDX,ESI
004c3b70  d3ea                      SHR EDX,CL
004c3b72  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004c3b75  33d6                      XOR EDX,ESI
004c3b77  8bc2                      MOV EAX,EDX
004c3b79  d3e0                      SHL EAX,CL
004c3b7b  8b8d4cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd74c]
004c3b81  33c2                      XOR EAX,EDX
004c3b83  8bf0                      MOV ESI,EAX
004c3b85  d3ee                      SHR ESI,CL
004c3b87  33f0                      XOR ESI,EAX
004c3b89  b8abaaaaaa                MOV EAX,0xaaaaaaab
004c3b8e  f7e6                      MUL ESI
004c3b90  8bce                      MOV ECX,ESI
004c3b92  d1ea                      SHR EDX,0x1
004c3b94  8d0452                    LEA EAX,[EDX + EDX*0x2]
004c3b97  2bc8                      SUB ECX,EAX
004c3b99  8d4101                    LEA EAX,[ECX + 0x1]
004c3b9c  898514d7ffff              MOV dword ptr [EBP + 0xffffd714],EAX
004c3ba2  85f6                      TEST ESI,ESI
004c3ba4  7510                      JNZ 0x004c3bb6
004c3ba6  6854bfb600                PUSH 0xb6bf54
004c3bab  6a10                      PUSH 0x10
004c3bad  e80ed75400                CALL 0x00a112c0
004c3bb2  83c408                    ADD ESP,0x8
004c3bb5  cc                        INT3
004c3bb6  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004c3bb9  8bc6                      MOV EAX,ESI
004c3bbb  d3e8                      SHR EAX,CL
004c3bbd  bf30000000                MOV EDI,0x30
004c3bc2  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004c3bc5  33c6                      XOR EAX,ESI
004c3bc7  8bd0                      MOV EDX,EAX
004c3bc9  d3e2                      SHL EDX,CL
004c3bcb  8b8d4cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd74c]
004c3bd1  33d0                      XOR EDX,EAX
004c3bd3  8bf2                      MOV ESI,EDX
004c3bd5  b8abaaaaaa                MOV EAX,0xaaaaaaab
004c3bda  d3ee                      SHR ESI,CL
004c3bdc  33f2                      XOR ESI,EDX
004c3bde  f7e6                      MUL ESI
004c3be0  8975c8                    MOV dword ptr [EBP + -0x38],ESI
004c3be3  d1ea                      SHR EDX,0x1
004c3be5  8d0452                    LEA EAX,[EDX + EDX*0x2]
004c3be8  2bf0                      SUB ESI,EAX
004c3bea  89b5ecd6ffff              MOV dword ptr [EBP + 0xffffd6ec],ESI
004c3bf0  8db5f0d9ffff              LEA ESI,[EBP + 0xffffd9f0]
004c3bf6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
004c3c00  c70601000000              MOV dword ptr [ESI],0x1
004c3c06  8d4e18                    LEA ECX,[ESI + 0x18]
004c3c09  c7460405000000            MOV dword ptr [ESI + 0x4],0x5
004c3c10  c7460807000000            MOV dword ptr [ESI + 0x8],0x7
004c3c17  c7460c00000000            MOV dword ptr [ESI + 0xc],0x0
004c3c1e  c746100000a040            MOV dword ptr [ESI + 0x10],0x40a00000
004c3c25  e806b3f7ff                CALL 0x0043ef30
004c3c2a  c786c0000000ffffffff      MOV dword ptr [ESI + 0xc0],0xffffffff
004c3c34  8db6c8000000              LEA ESI,[ESI + 0xc8]
004c3c3a  c7865cffffffec51b8bd      MOV dword ptr [ESI + 0xffffff5c],0xbdb851ec
004c3c44  c78658ffffff000000c0      MOV dword ptr [ESI + 0xffffff58],0xc0000000
004c3c4e  c78664ffffff9a99993f      MOV dword ptr [ESI + 0xffffff64],0x3f99999a
004c3c58  c746ec00000040            MOV dword ptr [ESI + -0x14],0x40000000
004c3c5f  83ef01                    SUB EDI,0x1
004c3c62  759c                      JNZ 0x004c3c00
004c3c64  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c3c6a  8bcf                      MOV ECX,EDI
004c3c6c  e8cfab1f00                CALL 0x006be840
004c3c71  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004c3c79  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004c3c81  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004c3c89  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004c3c91  f30f118504d7ffff          MOVSS dword ptr [EBP + 0xffffd704],XMM0
004c3c99  0f28c8                    MOVAPS XMM1,XMM0
004c3c9c  0f28c2                    MOVAPS XMM0,XMM2
004c3c9f  f30f119508d7ffff          MOVSS dword ptr [EBP + 0xffffd708],XMM2
004c3ca7  e8b460fdff                CALL 0x00499d60
004c3cac  33c9                      XOR ECX,ECX
004c3cae  f30f1185e8d6ffff          MOVSS dword ptr [EBP + 0xffffd6e8],XMM0
004c3cb6  c78534d7ffff00000000      MOV dword ptr [EBP + 0xffffd734],0x0
004c3cc0  898d2cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ECX
004c3cc6  8bc1                      MOV EAX,ECX
004c3cc8  83e800                    SUB EAX,0x0
004c3ccb  742f                      JZ 0x004c3cfc
004c3ccd  83e801                    SUB EAX,0x1
004c3cd0  7419                      JZ 0x004c3ceb
004c3cd2  83e801                    SUB EAX,0x1
004c3cd5  0f85c1000000              JNZ 0x004c3d9c
004c3cdb  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004c3cde  0f84b8000000              JZ 0x004c3d9c
004c3ce4  b802000000                MOV EAX,0x2
004c3ce9  eb1d                      JMP 0x004c3d08
004c3ceb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c3cef  0f84a7000000              JZ 0x004c3d9c
004c3cf5  b801000000                MOV EAX,0x1
004c3cfa  eb0c                      JMP 0x004c3d08
004c3cfc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c3d00  0f8496000000              JZ 0x004c3d9c
004c3d06  33c0                      XOR EAX,EAX
004c3d08  50                        PUSH EAX
004c3d09  8d4f78                    LEA ECX,[EDI + 0x78]
004c3d0c  e85f6ff4ff                CALL 0x0040ac70
004c3d11  8bf0                      MOV ESI,EAX
004c3d13  85f6                      TEST ESI,ESI
004c3d15  0f847b000000              JZ 0x004c3d96
004c3d1b  8bcf                      MOV ECX,EDI
004c3d1d  e81eab1f00                CALL 0x006be840
004c3d22  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
004c3d27  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004c3d2b  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
004c3d33  f30f5e0d24a3ba00          DIVSS XMM1,dword ptr [0x00baa324]
004c3d3b  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004c3d43  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004c3d4b  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004c3d53  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004c3d5b  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004c3d63  f30f580d8ca8ba00          ADDSS XMM1,dword ptr [0x00baa88c]
004c3d6b  f30f5cd0                  SUBSS XMM2,XMM0
004c3d6f  f30f5cd9                  SUBSS XMM3,XMM1
004c3d73  0f28ca                    MOVAPS XMM1,XMM2
004c3d76  f30f119504d7ffff          MOVSS dword ptr [EBP + 0xffffd704],XMM2
004c3d7e  0f28c3                    MOVAPS XMM0,XMM3
004c3d81  f30f119d08d7ffff          MOVSS dword ptr [EBP + 0xffffd708],XMM3
004c3d89  e8d25ffdff                CALL 0x00499d60
004c3d8e  f30f1185e8d6ffff          MOVSS dword ptr [EBP + 0xffffd6e8],XMM0
004c3d96  8b8d2cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd72c]
004c3d9c  8b9514d7ffff              MOV EDX,dword ptr [EBP + 0xffffd714]
004c3da2  8db5f0d9ffff              LEA ESI,[EBP + 0xffffd9f0]
004c3da8  69c1800c0000              IMUL EAX,ECX,0xc80
004c3dae  03f0                      ADD ESI,EAX
004c3db0  89b54cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ESI
004c3db6  83fa01                    CMP EDX,0x1
004c3db9  750d                      JNZ 0x004c3dc8
004c3dbb  3b8decd6ffff              CMP ECX,dword ptr [EBP + 0xffffd6ec]
004c3dc1  7420                      JZ 0x004c3de3
004c3dc3  e9190b0000                JMP 0x004c48e1
004c3dc8  83fa02                    CMP EDX,0x2
004c3dcb  750d                      JNZ 0x004c3dda
004c3dcd  3b8decd6ffff              CMP ECX,dword ptr [EBP + 0xffffd6ec]
004c3dd3  750e                      JNZ 0x004c3de3
004c3dd5  e9070b0000                JMP 0x004c48e1
004c3dda  83fa03                    CMP EDX,0x3
004c3ddd  0f85fe0a0000              JNZ 0x004c48e1
004c3de3  8b9510d7ffff              MOV EDX,dword ptr [EBP + 0xffffd710]
004c3de9  33c9                      XOR ECX,ECX
004c3deb  898d30d7ffff              MOV dword ptr [EBP + 0xffffd730],ECX
004c3df1  8d4103                    LEA EAX,[ECX + 0x3]
004c3df4  83fa01                    CMP EDX,0x1
004c3df7  7507                      JNZ 0x004c3e00
004c3df9  8bca                      MOV ECX,EDX
004c3dfb  8d4204                    LEA EAX,[EDX + 0x4]
004c3dfe  eb0c                      JMP 0x004c3e0c
004c3e00  83fa02                    CMP EDX,0x2
004c3e03  750d                      JNZ 0x004c3e12
004c3e05  8bc8                      MOV ECX,EAX
004c3e07  b806000000                MOV EAX,0x6
004c3e0c  898d30d7ffff              MOV dword ptr [EBP + 0xffffd730],ECX
004c3e12  2bc1                      SUB EAX,ECX
004c3e14  8d4dc8                    LEA ECX,[EBP + -0x38]
004c3e17  40                        INC EAX
004c3e18  50                        PUSH EAX
004c3e19  e802523200                CALL 0x007e9020
004c3e1e  038530d7ffff              ADD EAX,dword ptr [EBP + 0xffffd730]
004c3e24  8986c0000000              MOV dword ptr [ESI + 0xc0],EAX
004c3e2a  0f8504010000              JNZ 0x004c3f34
004c3e30  b906000000                MOV ECX,0x6
004c3e35  c78530d7ffff00000000      MOV dword ptr [EBP + 0xffffd730],0x0
004c3e3f  2b8d14d7ffff              SUB ECX,dword ptr [EBP + 0xffffd714]
004c3e45  8bc1                      MOV EAX,ECX
004c3e47  890e                      MOV dword ptr [ESI],ECX
004c3e49  99                        CDQ
004c3e4a  2bc2                      SUB EAX,EDX
004c3e4c  8bd0                      MOV EDX,EAX
004c3e4e  d1fa                      SAR EDX,0x1
004c3e50  89951cd7ffff              MOV dword ptr [EBP + 0xffffd71c],EDX
004c3e56  85c9                      TEST ECX,ECX
004c3e58  0f8e770a0000              JLE 0x004c48d5
004c3e5e  8b8514d7ffff              MOV EAX,dword ptr [EBP + 0xffffd714]
004c3e64  f30f1085e8d6ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd6e8]
004c3e6c  8d0c4502000000            LEA ECX,[EAX*0x2 + 0x2]
004c3e73  898d28d7ffff              MOV dword ptr [EBP + 0xffffd728],ECX
004c3e79  8d4e70                    LEA ECX,[ESI + 0x70]
004c3e7c  898d18d7ffff              MOV dword ptr [EBP + 0xffffd718],ECX
004c3e82  8b852cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd72c]
004c3e88  f30f1141c0                MOVSS dword ptr [ECX + -0x40],XMM0
004c3e8d  c7419401000000            MOV dword ptr [ECX + -0x6c],0x1
004c3e94  c741a00000e040            MOV dword ptr [ECX + -0x60],0x40e00000
004c3e9b  85c0                      TEST EAX,EAX
004c3e9d  7508                      JNZ 0x004c3ea7
004c3e9f  810900000008              OR dword ptr [ECX],0x8000000
004c3ea5  eb0b                      JMP 0x004c3eb2
004c3ea7  83f801                    CMP EAX,0x1
004c3eaa  750c                      JNZ 0x004c3eb8
004c3eac  810900000010              OR dword ptr [ECX],0x10000000
004c3eb2  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004c3eb5  894104                    MOV dword ptr [ECX + 0x4],EAX
004c3eb8  8b3e                      MOV EDI,dword ptr [ESI]
004c3eba  03fa                      ADD EDI,EDX
004c3ebc  0fafbd28d7ffff            IMUL EDI,dword ptr [EBP + 0xffffd728]
004c3ec3  8bc7                      MOV EAX,EDI
004c3ec5  897998                    MOV dword ptr [ECX + -0x68],EDI
004c3ec8  99                        CDQ
004c3ec9  f7bd14d7ffff              IDIV dword ptr [EBP + 0xffffd714]
004c3ecf  8bf0                      MOV ESI,EAX
004c3ed1  8bc7                      MOV EAX,EDI
004c3ed3  0fafb534d7ffff            IMUL ESI,dword ptr [EBP + 0xffffd734]
004c3eda  99                        CDQ
004c3edb  89719c                    MOV dword ptr [ECX + -0x64],ESI
004c3ede  8b8d4cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd74c]
004c3ee4  8b09                      MOV ECX,dword ptr [ECX]
004c3ee6  038d1cd7ffff              ADD ECX,dword ptr [EBP + 0xffffd71c]
004c3eec  f7f9                      IDIV ECX
004c3eee  8b9530d7ffff              MOV EDX,dword ptr [EBP + 0xffffd730]
004c3ef4  8b8d18d7ffff              MOV ECX,dword ptr [EBP + 0xffffd718]
004c3efa  0fafc2                    IMUL EAX,EDX
004c3efd  42                        INC EDX
004c3efe  899530d7ffff              MOV dword ptr [EBP + 0xffffd730],EDX
004c3f04  03c6                      ADD EAX,ESI
004c3f06  8bb54cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd74c]
004c3f0c  89419c                    MOV dword ptr [ECX + -0x64],EAX
004c3f0f  81c1c8000000              ADD ECX,0xc8
004c3f15  898d18d7ffff              MOV dword ptr [EBP + 0xffffd718],ECX
004c3f1b  3b16                      CMP EDX,dword ptr [ESI]
004c3f1d  8b951cd7ffff              MOV EDX,dword ptr [EBP + 0xffffd71c]
004c3f23  0f8c59ffffff              JL 0x004c3e82
004c3f29  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c3f2f  e9a1090000                JMP 0x004c48d5
004c3f34  83f801                    CMP EAX,0x1
004c3f37  0f85d8010000              JNZ 0x004c4115
004c3f3d  8b952cd7ffff              MOV EDX,dword ptr [EBP + 0xffffd72c]
004c3f43  8d4e30                    LEA ECX,[ESI + 0x30]
004c3f46  8bc2                      MOV EAX,EDX
004c3f48  c70604000000              MOV dword ptr [ESI],0x4
004c3f4e  c1e81f                    SHR EAX,0x1f
004c3f51  898d30d7ffff              MOV dword ptr [EBP + 0xffffd730],ECX
004c3f57  660f6ec2                  MOVD XMM0,EDX
004c3f5b  89954cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EDX
004c3f61  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c3f65  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c3f6e  660f5ac8                  CVTPD2PS XMM1,XMM0
004c3f72  660f6e8514d7ffff          MOVD XMM0,dword ptr [EBP + 0xffffd714]
004c3f7a  f30f58c9                  ADDSS XMM1,XMM1
004c3f7e  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c3f81  f30f590d08a7ba00          MULSS XMM1,dword ptr [0x00baa708]
004c3f89  f30f5ec8                  DIVSS XMM1,XMM0
004c3f8d  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004c3f95  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c3f98  f30f590568a7ba00          MULSS XMM0,dword ptr [0x00baa768]
004c3fa0  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
004c3fa8  f30f58c8                  ADDSS XMM1,XMM0
004c3fac  f30f1109                  MOVSS dword ptr [ECX],XMM1
004c3fb0  b904000000                MOV ECX,0x4
004c3fb5  83fa02                    CMP EDX,0x2
004c3fb8  7555                      JNZ 0x004c400f
004c3fba  8b55c8                    MOV EDX,dword ptr [EBP + -0x38]
004c3fbd  898d18d7ffff              MOV dword ptr [EBP + 0xffffd718],ECX
004c3fc3  85d2                      TEST EDX,EDX
004c3fc5  751b                      JNZ 0x004c3fe2
004c3fc7  6854bfb600                PUSH 0xb6bf54
004c3fcc  6a10                      PUSH 0x10
004c3fce  e8edd25400                CALL 0x00a112c0
004c3fd3  83c408                    ADD ESP,0x8
004c3fd6  cc                        INT3
004c3fe2  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004c3fe5  8bc2                      MOV EAX,EDX
004c3fe7  d3e8                      SHR EAX,CL
004c3fe9  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
004c3fec  33c2                      XOR EAX,EDX
004c3fee  8bd0                      MOV EDX,EAX
004c3ff0  d3e2                      SHL EDX,CL
004c3ff2  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004c3ff5  33d0                      XOR EDX,EAX
004c3ff7  8bc2                      MOV EAX,EDX
004c3ff9  d3e8                      SHR EAX,CL
004c3ffb  8b8d18d7ffff              MOV ECX,dword ptr [EBP + 0xffffd718]
004c4001  33c2                      XOR EAX,EDX
004c4003  8945c8                    MOV dword ptr [EBP + -0x38],EAX
004c4006  83e001                    AND EAX,0x1
004c4009  89854cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EAX
004c400f  33d2                      XOR EDX,EDX
004c4011  89951cd7ffff              MOV dword ptr [EBP + 0xffffd71c],EDX
004c4017  85c9                      TEST ECX,ECX
004c4019  0f8eba000000              JLE 0x004c40d9
004c401f  8bbd14d7ffff              MOV EDI,dword ptr [EBP + 0xffffd714]
004c4025  8d4e04                    LEA ECX,[ESI + 0x4]
004c4028  8d04bf                    LEA EAX,[EDI + EDI*0x4]
004c402b  03c0                      ADD EAX,EAX
004c402d  898528d7ffff              MOV dword ptr [EBP + 0xffffd728],EAX
004c4033  85d2                      TEST EDX,EDX
004c4035  7e15                      JLE 0x004c404c
004c4037  f30f108164ffffff          MOVSS XMM0,dword ptr [ECX + 0xffffff64]
004c403f  f30f5c05e8a0ba00          SUBSS XMM0,dword ptr [0x00baa0e8]
004c4047  f30f11412c                MOVSS dword ptr [ECX + 0x2c],XMM0
004c404c  894104                    MOV dword ptr [ECX + 0x4],EAX
004c404f  83ff01                    CMP EDI,0x1
004c4052  7512                      JNZ 0x004c4066
004c4054  c70104000000              MOV dword ptr [ECX],0x4
004c405a  8d4713                    LEA EAX,[EDI + 0x13]
004c405d  c7410414000000            MOV dword ptr [ECX + 0x4],0x14
004c4064  eb2e                      JMP 0x004c4094
004c4066  83ff02                    CMP EDI,0x2
004c4069  7512                      JNZ 0x004c407d
004c406b  c70103000000              MOV dword ptr [ECX],0x3
004c4071  8d4717                    LEA EAX,[EDI + 0x17]
004c4074  c7410419000000            MOV dword ptr [ECX + 0x4],0x19
004c407b  eb17                      JMP 0x004c4094
004c407d  83ff03                    CMP EDI,0x3
004c4080  7512                      JNZ 0x004c4094
004c4082  c70102000000              MOV dword ptr [ECX],0x2
004c4088  b81e000000                MOV EAX,0x1e
004c408d  c741041e000000            MOV dword ptr [ECX + 0x4],0x1e
004c4094  99                        CDQ
004c4095  f7ff                      IDIV EDI
004c4097  8b951cd7ffff              MOV EDX,dword ptr [EBP + 0xffffd71c]
004c409d  0faf8534d7ffff            IMUL EAX,dword ptr [EBP + 0xffffd734]
004c40a4  8d0450                    LEA EAX,[EAX + EDX*0x2]
004c40a7  42                        INC EDX
004c40a8  894108                    MOV dword ptr [ECX + 0x8],EAX
004c40ab  81c1c8000000              ADD ECX,0xc8
004c40b1  8b06                      MOV EAX,dword ptr [ESI]
004c40b3  3bd0                      CMP EDX,EAX
004c40b5  898518d7ffff              MOV dword ptr [EBP + 0xffffd718],EAX
004c40bb  8b8528d7ffff              MOV EAX,dword ptr [EBP + 0xffffd728]
004c40c1  89951cd7ffff              MOV dword ptr [EBP + 0xffffd71c],EDX
004c40c7  0f8c66ffffff              JL 0x004c4033
004c40cd  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c40d3  8b8d18d7ffff              MOV ECX,dword ptr [EBP + 0xffffd718]
004c40d9  33c0                      XOR EAX,EAX
004c40db  85c9                      TEST ECX,ECX
004c40dd  0f8ef2070000              JLE 0x004c48d5
004c40e3  8b8d30d7ffff              MOV ECX,dword ptr [EBP + 0xffffd730]
004c40e9  8b954cd7ffff              MOV EDX,dword ptr [EBP + 0xffffd74c]
004c40ef  90                        NOP
004c40f0  83fa01                    CMP EDX,0x1
004c40f3  7510                      JNZ 0x004c4105
004c40f5  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004c40f9  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
004c4101  f30f1101                  MOVSS dword ptr [ECX],XMM0
004c4105  40                        INC EAX
004c4106  81c1c8000000              ADD ECX,0xc8
004c410c  3b06                      CMP EAX,dword ptr [ESI]
004c410e  7ce0                      JL 0x004c40f0
004c4110  e9c0070000                JMP 0x004c48d5
004c4115  83f803                    CMP EAX,0x3
004c4118  0f8566010000              JNZ 0x004c4284
004c411e  b83c000000                MOV EAX,0x3c
004c4123  f30f100d08a2ba00          MOVSS XMM1,dword ptr [0x00baa208]
004c412b  99                        CDQ
004c412c  33c9                      XOR ECX,ECX
004c412e  f7bd14d7ffff              IDIV dword ptr [EBP + 0xffffd714]
004c4134  f30f1015d0a8ba00          MOVSS XMM2,dword ptr [0x00baa8d0]
004c413c  0faf8534d7ffff            IMUL EAX,dword ptr [EBP + 0xffffd734]
004c4143  8b9514d7ffff              MOV EDX,dword ptr [EBP + 0xffffd714]
004c4149  c70602000000              MOV dword ptr [ESI],0x2
004c414f  898d18d7ffff              MOV dword ptr [EBP + 0xffffd718],ECX
004c4155  898528d7ffff              MOV dword ptr [EBP + 0xffffd728],EAX
004c415b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c4160  8b8510d7ffff              MOV EAX,dword ptr [EBP + 0xffffd710]
004c4166  898510d7ffff              MOV dword ptr [EBP + 0xffffd710],EAX
004c416c  83fa01                    CMP EDX,0x1
004c416f  7510                      JNZ 0x004c4181
004c4171  69c1c8000000              IMUL EAX,ECX,0xc8
004c4177  c744300414000000          MOV dword ptr [EAX + ESI*0x1 + 0x4],0x14
004c417f  eb28                      JMP 0x004c41a9
004c4181  83fa02                    CMP EDX,0x2
004c4184  7510                      JNZ 0x004c4196
004c4186  69c1c8000000              IMUL EAX,ECX,0xc8
004c418c  c744300410000000          MOV dword ptr [EAX + ESI*0x1 + 0x4],0x10
004c4194  eb13                      JMP 0x004c41a9
004c4196  83fa03                    CMP EDX,0x3
004c4199  750e                      JNZ 0x004c41a9
004c419b  69c1c8000000              IMUL EAX,ECX,0xc8
004c41a1  c74430040c000000          MOV dword ptr [EAX + ESI*0x1 + 0x4],0xc
004c41a9  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004c41b1  b800000400                MOV EAX,0x40000
004c41b6  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c41b9  69c9c8000000              IMUL ECX,ECX,0xc8
004c41bf  83bd18d7ffff00            CMP dword ptr [EBP + 0xffffd718],0x0
004c41c6  f30f59c1                  MULSS XMM0,XMM1
004c41ca  898d30d7ffff              MOV dword ptr [EBP + 0xffffd730],ECX
004c41d0  f30f5ec2                  DIVSS XMM0,XMM2
004c41d4  f30f11443130              MOVSS dword ptr [ECX + ESI*0x1 + 0x30],XMM0
004c41da  7405                      JZ 0x004c41e1
004c41dc  b800000800                MOV EAX,0x80000
004c41e1  8bbd30d7ffff              MOV EDI,dword ptr [EBP + 0xffffd730]
004c41e7  89851cd7ffff              MOV dword ptr [EBP + 0xffffd71c],EAX
004c41ed  33c0                      XOR EAX,EAX
004c41ef  89854cd7ffff              MOV dword ptr [EBP + 0xffffd74c],EAX
004c41f5  8b443170                  MOV EAX,dword ptr [ECX + ESI*0x1 + 0x70]
004c41f9  8b4c3174                  MOV ECX,dword ptr [ECX + ESI*0x1 + 0x74]
004c41fd  c7443738a69b443b          MOV dword ptr [EDI + ESI*0x1 + 0x38],0x3b449ba6
004c4205  8bbd1cd7ffff              MOV EDI,dword ptr [EBP + 0xffffd71c]
004c420b  0bf8                      OR EDI,EAX
004c420d  8b854cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd74c]
004c4213  0bc1                      OR EAX,ECX
004c4215  81cf00200000              OR EDI,0x2000
004c421b  8b8d30d7ffff              MOV ECX,dword ptr [EBP + 0xffffd730]
004c4221  897c3170                  MOV dword ptr [ECX + ESI*0x1 + 0x70],EDI
004c4225  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c422b  89443174                  MOV dword ptr [ECX + ESI*0x1 + 0x74],EAX
004c422f  8b8518d7ffff              MOV EAX,dword ptr [EBP + 0xffffd718]
004c4235  f7d8                      NEG EAX
004c4237  c744311000008040          MOV dword ptr [ECX + ESI*0x1 + 0x10],0x40800000
004c423f  c74431247b14aebd          MOV dword ptr [ECX + ESI*0x1 + 0x24],0xbdae147b
004c4247  1bc0                      SBB EAX,EAX
004c4249  c74431083c000000          MOV dword ptr [ECX + ESI*0x1 + 0x8],0x3c
004c4251  83e01e                    AND EAX,0x1e
004c4254  038528d7ffff              ADD EAX,dword ptr [EBP + 0xffffd728]
004c425a  8944310c                  MOV dword ptr [ECX + ESI*0x1 + 0xc],EAX
004c425e  8b8d18d7ffff              MOV ECX,dword ptr [EBP + 0xffffd718]
004c4264  41                        INC ECX
004c4265  898d18d7ffff              MOV dword ptr [EBP + 0xffffd718],ECX
004c426b  3b0e                      CMP ECX,dword ptr [ESI]
004c426d  0f8cedfeffff              JL 0x004c4160
004c4273  8b8510d7ffff              MOV EAX,dword ptr [EBP + 0xffffd710]
004c4279  898510d7ffff              MOV dword ptr [EBP + 0xffffd710],EAX
004c427f  e951060000                JMP 0x004c48d5
004c4284  83f806                    CMP EAX,0x6
004c4287  0f858e010000              JNZ 0x004c441b
004c428d  8b9514d7ffff              MOV EDX,dword ptr [EBP + 0xffffd714]
004c4293  83fa01                    CMP EDX,0x1
004c4296  7508                      JNZ 0x004c42a0
004c4298  c70610000000              MOV dword ptr [ESI],0x10
004c429e  eb18                      JMP 0x004c42b8
004c42a0  83fa02                    CMP EDX,0x2
004c42a3  7508                      JNZ 0x004c42ad
004c42a5  c7060c000000              MOV dword ptr [ESI],0xc
004c42ab  eb0b                      JMP 0x004c42b8
004c42ad  83fa03                    CMP EDX,0x3
004c42b0  7506                      JNZ 0x004c42b8
004c42b2  c70608000000              MOV dword ptr [ESI],0x8
004c42b8  833e00                    CMP dword ptr [ESI],0x0
004c42bb  c78528d7ffff00000000      MOV dword ptr [EBP + 0xffffd728],0x0
004c42c5  0f8e0a060000              JLE 0x004c48d5
004c42cb  b85a000000                MOV EAX,0x5a
004c42d0  f30f109de8d6ffff          MOVSS XMM3,dword ptr [EBP + 0xffffd6e8]
004c42d8  99                        CDQ
004c42d9  8d4e70                    LEA ECX,[ESI + 0x70]
004c42dc  f7bd14d7ffff              IDIV dword ptr [EBP + 0xffffd714]
004c42e2  f30f100508a7ba00          MOVSS XMM0,dword ptr [0x00baa708]
004c42ea  0faf8534d7ffff            IMUL EAX,dword ptr [EBP + 0xffffd734]
004c42f1  f30f58d8                  ADDSS XMM3,XMM0
004c42f5  8bbd28d7ffff              MOV EDI,dword ptr [EBP + 0xffffd728]
004c42fb  898d1cd7ffff              MOV dword ptr [EBP + 0xffffd71c],ECX
004c4301  f30f119d30d7ffff          MOVSS dword ptr [EBP + 0xffffd730],XMM3
004c4309  898518d7ffff              MOV dword ptr [EBP + 0xffffd718],EAX
004c430f  90                        NOP
004c4310  660f6ed7                  MOVD XMM2,EDI
004c4314  0f5bd2                    CVTDQ2PS XMM2,XMM2
004c4317  c7419401000000            MOV dword ptr [ECX + -0x6c],0x1
004c431e  0f28ca                    MOVAPS XMM1,XMM2
004c4321  f30f119528d7ffff          MOVSS dword ptr [EBP + 0xffffd728],XMM2
004c4329  f30f59c8                  MULSS XMM1,XMM0
004c432d  660f6e06                  MOVD XMM0,dword ptr [ESI]
004c4331  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c4334  f30f58c9                  ADDSS XMM1,XMM1
004c4338  f30f5ec8                  DIVSS XMM1,XMM0
004c433c  f30f58cb                  ADDSS XMM1,XMM3
004c4340  f30f1149c0                MOVSS dword ptr [ECX + -0x40],XMM1
004c4345  0f57c9                    XORPS XMM1,XMM1
004c4348  810900000400              OR dword ptr [ECX],0x40000
004c434e  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004c4351  894104                    MOV dword ptr [ECX + 0x4],EAX
004c4354  660f6e06                  MOVD XMM0,dword ptr [ESI]
004c4358  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c435b  0f2ec8                    UCOMISS XMM1,XMM0
004c435e  f30f11854cd7ffff          MOVSS dword ptr [EBP + 0xffffd74c],XMM0
004c4366  9f                        LAHF
004c4367  f6c444                    TEST AH,0x44
004c436a  7a30                      JP 0x004c439c
004c436c  68d81bb800                PUSH 0xb81bd8
004c4371  6a10                      PUSH 0x10
004c4373  e848cf5400                CALL 0x00a112c0
004c4378  f30f109528d7ffff          MOVSS XMM2,dword ptr [EBP + 0xffffd728]
004c4380  83c408                    ADD ESP,0x8
004c4383  f30f10854cd7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd74c]
004c438b  0f57c9                    XORPS XMM1,XMM1
004c438e  f30f109d30d7ffff          MOVSS XMM3,dword ptr [EBP + 0xffffd730]
004c4396  8b8d1cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd71c]
004c439c  f30f5cd1                  SUBSS XMM2,XMM1
004c43a0  47                        INC EDI
004c43a1  f30f5cc1                  SUBSS XMM0,XMM1
004c43a5  f30f5ed0                  DIVSS XMM2,XMM0
004c43a9  f30f100508a7ba00          MOVSS XMM0,dword ptr [0x00baa708]
004c43b1  f30f5fd1                  MAXSS XMM2,XMM1
004c43b5  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
004c43bd  f30f59158ca0ba00          MULSS XMM2,dword ptr [0x00baa08c]
004c43c5  f30f5c156ca0ba00          SUBSS XMM2,dword ptr [0x00baa06c]
004c43cd  f30f1151c8                MOVSS dword ptr [ECX + -0x38],XMM2
004c43d2  810900200000              OR dword ptr [ECX],0x2000
004c43d8  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004c43db  894104                    MOV dword ptr [ECX + 0x4],EAX
004c43de  8b8518d7ffff              MOV EAX,dword ptr [EBP + 0xffffd718]
004c43e4  c741a00000c040            MOV dword ptr [ECX + -0x60],0x40c00000
004c43eb  c741b4295c8fbd            MOV dword ptr [ECX + -0x4c],0xbd8f5c29
004c43f2  c741985a000000            MOV dword ptr [ECX + -0x68],0x5a
004c43f9  89419c                    MOV dword ptr [ECX + -0x64],EAX
004c43fc  81c1c8000000              ADD ECX,0xc8
004c4402  898d1cd7ffff              MOV dword ptr [EBP + 0xffffd71c],ECX
004c4408  3b3e                      CMP EDI,dword ptr [ESI]
004c440a  0f8c00ffffff              JL 0x004c4310
004c4410  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c4416  e9ba040000                JMP 0x004c48d5
004c441b  83f802                    CMP EAX,0x2
004c441e  0f8535010000              JNZ 0x004c4559
004c4424  8b9514d7ffff              MOV EDX,dword ptr [EBP + 0xffffd714]
004c442a  83fa01                    CMP EDX,0x1
004c442d  7508                      JNZ 0x004c4437
004c442f  c70610000000              MOV dword ptr [ESI],0x10
004c4435  eb18                      JMP 0x004c444f
004c4437  83fa02                    CMP EDX,0x2
004c443a  7508                      JNZ 0x004c4444
004c443c  c7060c000000              MOV dword ptr [ESI],0xc
004c4442  eb0b                      JMP 0x004c444f
004c4444  83fa03                    CMP EDX,0x3
004c4447  7506                      JNZ 0x004c444f
004c4449  c70608000000              MOV dword ptr [ESI],0x8
004c444f  33c9                      XOR ECX,ECX
004c4451  898d1cd7ffff              MOV dword ptr [EBP + 0xffffd71c],ECX
004c4457  390e                      CMP dword ptr [ESI],ECX
004c4459  0f8e76040000              JLE 0x004c48d5
004c445f  b85a000000                MOV EAX,0x5a
004c4464  8d7e30                    LEA EDI,[ESI + 0x30]
004c4467  99                        CDQ
004c4468  f7bd14d7ffff              IDIV dword ptr [EBP + 0xffffd714]
004c446e  0faf8534d7ffff            IMUL EAX,dword ptr [EBP + 0xffffd734]
004c4475  898518d7ffff              MOV dword ptr [EBP + 0xffffd718],EAX
004c447b  8b06                      MOV EAX,dword ptr [ESI]
004c447d  0f1f00                    NOP dword ptr [EAX]
004c4480  660f6ed1                  MOVD XMM2,ECX
004c4484  8d48ff                    LEA ECX,[EAX + -0x1]
004c4487  0f5bd2                    CVTDQ2PS XMM2,XMM2
004c448a  660f6ec1                  MOVD XMM0,ECX
004c448e  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c4491  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004c4499  f30f5ed0                  DIVSS XMM2,XMM0
004c449d  f30f58d2                  ADDSS XMM2,XMM2
004c44a1  f30f5cd1                  SUBSS XMM2,XMM1
004c44a5  0f28c2                    MOVAPS XMM0,XMM2
004c44a8  f30f59c2                  MULSS XMM0,XMM2
004c44ac  f30f5815e49fba00          ADDSS XMM2,dword ptr [0x00ba9fe4]
004c44b4  f30f5cc8                  SUBSS XMM1,XMM0
004c44b8  0f28c2                    MOVAPS XMM0,XMM2
004c44bb  f30f119528d7ffff          MOVSS dword ptr [EBP + 0xffffd728],XMM2
004c44c3  f30f580db8a7ba00          ADDSS XMM1,dword ptr [0x00baa7b8]
004c44cb  f30f118d4cd7ffff          MOVSS dword ptr [EBP + 0xffffd74c],XMM1
004c44d3  e88858fdff                CALL 0x00499d60
004c44d8  f30f108d4cd7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd74c]
004c44e0  f30f118530d7ffff          MOVSS dword ptr [EBP + 0xffffd730],XMM0
004c44e8  f30f108528d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd728]
004c44f0  f30f59c0                  MULSS XMM0,XMM0
004c44f4  f30f59c9                  MULSS XMM1,XMM1
004c44f8  f30f58c1                  ADDSS XMM0,XMM1
004c44fc  e84f15f7ff                CALL 0x00435a50
004c4501  8b8d1cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd71c]
004c4507  8b8518d7ffff              MOV EAX,dword ptr [EBP + 0xffffd718]
004c450d  41                        INC ECX
004c450e  f30f1147e0                MOVSS dword ptr [EDI + -0x20],XMM0
004c4513  f30f108530d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd730]
004c451b  f30f5885e8d6ffff          ADDSS XMM0,dword ptr [EBP + 0xffffd6e8]
004c4523  898d1cd7ffff              MOV dword ptr [EBP + 0xffffd71c],ECX
004c4529  f30f1107                  MOVSS dword ptr [EDI],XMM0
004c452d  c747d401000000            MOV dword ptr [EDI + -0x2c],0x1
004c4534  c747d85a000000            MOV dword ptr [EDI + -0x28],0x5a
004c453b  8947dc                    MOV dword ptr [EDI + -0x24],EAX
004c453e  81c7c8000000              ADD EDI,0xc8
004c4544  8b06                      MOV EAX,dword ptr [ESI]
004c4546  3bc8                      CMP ECX,EAX
004c4548  0f8c32ffffff              JL 0x004c4480
004c454e  8bbd20d7ffff              MOV EDI,dword ptr [EBP + 0xffffd720]
004c4554  e97c030000                JMP 0x004c48d5
004c4559  83f804                    CMP EAX,0x4
004c455c  0f85f5000000              JNZ 0x004c4657
004c4562  8b8d14d7ffff              MOV ECX,dword ptr [EBP + 0xffffd714]
004c4568  b80f000000                MOV EAX,0xf
004c456d  99                        CDQ
004c456e  f7f9                      IDIV ECX
004c4570  f30f100d4ca3ba00          MOVSS XMM1,dword ptr [0x00baa34c]
004c4578  8d5604                    LEA EDX,[ESI + 0x4]
004c457b  0faf8534d7ffff            IMUL EAX,dword ptr [EBP + 0xffffd734]
004c4582  f30f1015d0a8ba00          MOVSS XMM2,dword ptr [0x00baa8d0]
004c458a  c70601000000              MOV dword ptr [ESI],0x1
004c4590  c7851cd7ffff00000000      MOV dword ptr [EBP + 0xffffd71c],0x0
004c459a  898528d7ffff              MOV dword ptr [EBP + 0xffffd728],EAX
004c45a0  83f901                    CMP ECX,0x1
004c45a3  7508                      JNZ 0x004c45ad
004c45a5  c70205000000              MOV dword ptr [EDX],0x5
004c45ab  eb14                      JMP 0x004c45c1
004c45ad  83f902                    CMP ECX,0x2
004c45b0  7508                      JNZ 0x004c45ba
004c45b2  c70204000000              MOV dword ptr [EDX],0x4
004c45b8  eb07                      JMP 0x004c45c1
004c45ba  83f903                    CMP ECX,0x3
004c45bd  7502                      JNZ 0x004c45c1
004c45bf  890a                      MOV dword ptr [EDX],ECX
004c45c1  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004c45c9  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c45cc  8b8528d7ffff              MOV EAX,dword ptr [EBP + 0xffffd728]
004c45d2  8b8d14d7ffff              MOV ECX,dword ptr [EBP + 0xffffd714]
004c45d8  f30f59c1                  MULSS XMM0,XMM1
004c45dc  f30f5ec2                  DIVSS XMM0,XMM2
004c45e0  f30f11422c                MOVSS dword ptr [EDX + 0x2c],XMM0
004c45e5  c742380ad7833f            MOV dword ptr [EDX + 0x38],0x3f83d70a
004c45ec  c7420c0000c040            MOV dword ptr [EDX + 0xc],0x40c00000
004c45f3  814a6c00000010            OR dword ptr [EDX + 0x6c],0x10000000
004c45fa  834a7003                  OR dword ptr [EDX + 0x70],0x3
004c45fe  c782a000000069000000      MOV dword ptr [EDX + 0xa0],0x69
004c4608  c7829400000000000400      MOV dword ptr [EDX + 0x94],0x40000
004c4612  c7829800000000000000      MOV dword ptr [EDX + 0x98],0x0
004c461c  c7829c0000000000c040      MOV dword ptr [EDX + 0x9c],0x40c00000
004c4626  c74234a69b443b            MOV dword ptr [EDX + 0x34],0x3b449ba6
004c462d  c742040f000000            MOV dword ptr [EDX + 0x4],0xf
004c4634  894208                    MOV dword ptr [EDX + 0x8],EAX
004c4637  81c2c8000000              ADD EDX,0xc8
004c463d  8b851cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd71c]
004c4643  40                        INC EAX
004c4644  89851cd7ffff              MOV dword ptr [EBP + 0xffffd71c],EAX
004c464a  3b06                      CMP EAX,dword ptr [ESI]
004c464c  0f8c4effffff              JL 0x004c45a0
004c4652  e97e020000                JMP 0x004c48d5
004c4657  83f805                    CMP EAX,0x5
004c465a  0f8575020000              JNZ 0x004c48d5
004c4660  f30f108d08d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd708]
004c4668  f30f108504d7ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd704]
004c4670  f30f59c0                  MULSS XMM0,XMM0
004c4674  c70601000000              MOV dword ptr [ESI],0x1
004c467a  f30f59c9                  MULSS XMM1,XMM1
004c467e  c7851cd7ffff00000000      MOV dword ptr [EBP + 0xffffd71c],0x0
004c4688  f30f58c1                  ADDSS XMM0,XMM1
004c468c  e8bf13f7ff                CALL 0x00435a50
004c4691  0f28c8                    MOVAPS XMM1,XMM0
004c4694  8d4e04                    LEA ECX,[ESI + 0x4]
004c4697  f30f118d28d7ffff          MOVSS dword ptr [EBP + 0xffffd728],XMM1
004c469f  898d30d7ffff              MOV dword ptr [EBP + 0xffffd730],ECX
004c46a5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004c46b0  8b8514d7ffff              MOV EAX,dword ptr [EBP + 0xffffd714]
004c46b6  c7013c000000              MOV dword ptr [ECX],0x3c
004c46bc  83f801                    CMP EAX,0x1
004c46bf  7509                      JNZ 0x004c46ca
004c46c1  c7410450000000            MOV dword ptr [ECX + 0x4],0x50
004c46c8  eb1a                      JMP 0x004c46e4
004c46ca  83f802                    CMP EAX,0x2
004c46cd  7509                      JNZ 0x004c46d8
004c46cf  c7410478000000            MOV dword ptr [ECX + 0x4],0x78
004c46d6  eb0c                      JMP 0x004c46e4
004c46d8  83f803                    CMP EAX,0x3
004c46db  7507                      JNZ 0x004c46e4
004c46dd  c74104a0000000            MOV dword ptr [ECX + 0x4],0xa0
004c46e4  8bb530d7ffff              MOV ESI,dword ptr [EBP + 0xffffd730]
004c46ea  c78518d7ffff0a000000      MOV dword ptr [EBP + 0xffffd718],0xa
004c46f4  0f1f4000                  NOP dword ptr [EAX]
004c46f8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004c4700  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
004c4707  f30f109508d7ffff          MOVSS XMM2,dword ptr [EBP + 0xffffd708]
004c470f  761e                      JBE 0x004c472f
004c4711  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004c4719  f30f5ec1                  DIVSS XMM0,XMM1
004c471d  f30f108d04d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd704]
004c4725  f30f59c8                  MULSS XMM1,XMM0
004c4729  f30f59d0                  MULSS XMM2,XMM0
004c472d  eb08                      JMP 0x004c4737
004c472f  f30f108d04d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd704]
004c4737  f30f118e84000000          MOVSS dword ptr [ESI + 0x84],XMM1
004c473f  f30f119688000000          MOVSS dword ptr [ESI + 0x88],XMM2
004c4747  e814a82200                CALL 0x006eef60
004c474c  660f6ec0                  MOVD XMM0,EAX
004c4750  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c4754  c1e81f                    SHR EAX,0x1f
004c4757  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c4760  660f5ac0                  CVTPD2PS XMM0,XMM0
004c4764  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c476c  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004c4774  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004c477c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004c4784  f30f1185d4d6ffff          MOVSS dword ptr [EBP + 0xffffd6d4],XMM0
004c478c  e8af8df5ff                CALL 0x0041d540
004c4791  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004c4796  f30f1085d4d6ffff          MOVSS XMM0,dword ptr [EBP + 0xffffd6d4]
004c479e  e87d8df5ff                CALL 0x0041d520
004c47a3  f30f109e84000000          MOVSS XMM3,dword ptr [ESI + 0x84]
004c47ab  f30f10ae88000000          MOVSS XMM5,dword ptr [ESI + 0x88]
004c47b3  0f28d3                    MOVAPS XMM2,XMM3
004c47b6  f30f5955e0                MULSS XMM2,dword ptr [EBP + -0x20]
004c47bb  0f28cd                    MOVAPS XMM1,XMM5
004c47be  a17816c700                MOV EAX,[0x00c71678]
004c47c3  f30f596de0                MULSS XMM5,dword ptr [EBP + -0x20]
004c47c8  ff8d18d7ffff              DEC dword ptr [EBP + 0xffffd718]
004c47ce  f30f59c8                  MULSS XMM1,XMM0
004c47d2  f30f59d8                  MULSS XMM3,XMM0
004c47d6  f30f5cd1                  SUBSS XMM2,XMM1
004c47da  f30f58eb                  ADDSS XMM5,XMM3
004c47de  f30f119684000000          MOVSS dword ptr [ESI + 0x84],XMM2
004c47e6  f30f11ae88000000          MOVSS dword ptr [ESI + 0x88],XMM5
004c47ee  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004c47f6  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004c47fe  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c4804  8d8544d6ffff              LEA EAX,[EBP + 0xffffd644]
004c480a  51                        PUSH ECX
004c480b  c704240000a041            MOV dword ptr [ESP],0x41a00000
004c4812  50                        PUSH EAX
004c4813  0f28c8                    MOVAPS XMM1,XMM0
004c4816  f30f59e8                  MULSS XMM5,XMM0
004c481a  f30f598e84000000          MULSS XMM1,dword ptr [ESI + 0x84]
004c4822  f30f592d50adba00          MULSS XMM5,dword ptr [0x00baad50]
004c482a  f30f590d50adba00          MULSS XMM1,dword ptr [0x00baad50]
004c4832  f30f58af40030000          ADDSS XMM5,dword ptr [EDI + 0x340]
004c483a  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004c4842  f30f11ad48d6ffff          MOVSS dword ptr [EBP + 0xffffd648],XMM5
004c484a  f30f118d44d6ffff          MOVSS dword ptr [EBP + 0xffffd644],XMM1
004c4852  e809eb3400                CALL 0x00813360
004c4857  84c0                      TEST AL,AL
004c4859  8b8518d7ffff              MOV EAX,dword ptr [EBP + 0xffffd718]
004c485f  7510                      JNZ 0x004c4871
004c4861  f30f108d28d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd728]
004c4869  85c0                      TEST EAX,EAX
004c486b  0f8f8ffeffff              JG 0x004c4700
004c4871  8bb54cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd74c]
004c4877  8b8d30d7ffff              MOV ECX,dword ptr [EBP + 0xffffd730]
004c487d  85c0                      TEST EAX,EAX
004c487f  7506                      JNZ 0x004c4887
004c4881  c70100000000              MOV dword ptr [ECX],0x0
004c4887  c7818c000000d7a370bf      MOV dword ptr [ECX + 0x8c],0xbf70a3d7
004c4891  c7410c00008040            MOV dword ptr [ECX + 0xc],0x40800000
004c4898  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004c489b  99                        CDQ
004c489c  f7bd14d7ffff              IDIV dword ptr [EBP + 0xffffd714]
004c48a2  f30f108d28d7ffff          MOVSS XMM1,dword ptr [EBP + 0xffffd728]
004c48aa  0faf8534d7ffff            IMUL EAX,dword ptr [EBP + 0xffffd734]
004c48b1  894108                    MOV dword ptr [ECX + 0x8],EAX
004c48b4  81c1c8000000              ADD ECX,0xc8
004c48ba  8b851cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd71c]
004c48c0  40                        INC EAX
004c48c1  898d30d7ffff              MOV dword ptr [EBP + 0xffffd730],ECX
004c48c7  89851cd7ffff              MOV dword ptr [EBP + 0xffffd71c],EAX
004c48cd  3b06                      CMP EAX,dword ptr [ESI]
004c48cf  0f8cdbfdffff              JL 0x004c46b0
004c48d5  ff8534d7ffff              INC dword ptr [EBP + 0xffffd734]
004c48db  8b8d2cd7ffff              MOV ECX,dword ptr [EBP + 0xffffd72c]
004c48e1  41                        INC ECX
004c48e2  898d2cd7ffff              MOV dword ptr [EBP + 0xffffd72c],ECX
004c48e8  83f903                    CMP ECX,0x3
004c48eb  0f82d5f3ffff              JC 0x004c3cc6
004c48f1  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c48f4  85f6                      TEST ESI,ESI
004c48f6  0f84a6050000              JZ 0x004c4ea2
004c48fc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c4903  0f8499050000              JZ 0x004c4ea2
004c4909  8b8d44d7ffff              MOV ECX,dword ptr [EBP + 0xffffd744]
004c490f  803900                    CMP byte ptr [ECX],0x0
004c4912  7471                      JZ 0x004c4985
004c4914  8bc6                      MOV EAX,ESI
004c4916  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c491a  7204                      JC 0x004c4920
004c491c  8b00                      MOV EAX,dword ptr [EAX]
004c491e  6690                      NOP
004c4920  8a10                      MOV DL,byte ptr [EAX]
004c4922  3a11                      CMP DL,byte ptr [ECX]
004c4924  751a                      JNZ 0x004c4940
004c4926  84d2                      TEST DL,DL
004c4928  7412                      JZ 0x004c493c
004c492a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c492d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c4930  750e                      JNZ 0x004c4940
004c4932  83c002                    ADD EAX,0x2
004c4935  83c102                    ADD ECX,0x2
004c4938  84d2                      TEST DL,DL
004c493a  75e4                      JNZ 0x004c4920
004c493c  33c0                      XOR EAX,EAX
004c493e  eb05                      JMP 0x004c4945
004c4940  1bc0                      SBB EAX,EAX
004c4942  83c801                    OR EAX,0x1
004c4945  85c0                      TEST EAX,EAX
004c4947  743c                      JZ 0x004c4985
004c4949  8bc6                      MOV EAX,ESI
004c494b  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c494f  7202                      JC 0x004c4953
004c4951  8b00                      MOV EAX,dword ptr [EAX]
004c4953  b9c000b600                MOV ECX,0xb600c0
004c4958  8a10                      MOV DL,byte ptr [EAX]
004c495a  3a11                      CMP DL,byte ptr [ECX]
004c495c  751a                      JNZ 0x004c4978
004c495e  84d2                      TEST DL,DL
004c4960  7412                      JZ 0x004c4974
004c4962  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c4965  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c4968  750e                      JNZ 0x004c4978
004c496a  83c002                    ADD EAX,0x2
004c496d  83c102                    ADD ECX,0x2
004c4970  84d2                      TEST DL,DL
004c4972  75e4                      JNZ 0x004c4958
004c4974  33c0                      XOR EAX,EAX
004c4976  eb05                      JMP 0x004c497d
004c4978  1bc0                      SBB EAX,EAX
004c497a  83c801                    OR EAX,0x1
004c497d  85c0                      TEST EAX,EAX
004c497f  0f851d050000              JNZ 0x004c4ea2
004c4985  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004c498d  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004c4995  2bc8                      SUB ECX,EAX
004c4997  85c9                      TEST ECX,ECX
004c4999  0f8ef8060000              JLE 0x004c5097
004c499f  33f6                      XOR ESI,ESI
004c49a1  89b54cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ESI
004c49a7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004c49b0  69c6800c0000              IMUL EAX,ESI,0xc80
004c49b6  898530d7ffff              MOV dword ptr [EBP + 0xffffd730],EAX
004c49bc  83bc05b0daffffff          CMP dword ptr [EBP + EAX*0x1 + 0xffffdab0],-0x1
004c49c4  0f8408040000              JZ 0x004c4dd2
004c49ca  33c0                      XOR EAX,EAX
004c49cc  898534d7ffff              MOV dword ptr [EBP + 0xffffd734],EAX
004c49d2  8bc6                      MOV EAX,ESI
004c49d4  83e800                    SUB EAX,0x0
004c49d7  7421                      JZ 0x004c49fa
004c49d9  83e801                    SUB EAX,0x1
004c49dc  740e                      JZ 0x004c49ec
004c49de  83e801                    SUB EAX,0x1
004c49e1  7531                      JNZ 0x004c4a14
004c49e3  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004c49e6  7426                      JZ 0x004c4a0e
004c49e8  6a02                      PUSH 0x2
004c49ea  eb1a                      JMP 0x004c4a06
004c49ec  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c49f0  7504                      JNZ 0x004c49f6
004c49f2  33c0                      XOR EAX,EAX
004c49f4  eb18                      JMP 0x004c4a0e
004c49f6  6a01                      PUSH 0x1
004c49f8  eb0c                      JMP 0x004c4a06
004c49fa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c49fe  7504                      JNZ 0x004c4a04
004c4a00  33c0                      XOR EAX,EAX
004c4a02  eb0a                      JMP 0x004c4a0e
004c4a04  6a00                      PUSH 0x0
004c4a06  8d4f78                    LEA ECX,[EDI + 0x78]
004c4a09  e86262f4ff                CALL 0x0040ac70
004c4a0e  898534d7ffff              MOV dword ptr [EBP + 0xffffd734],EAX
004c4a14  8b8530d7ffff              MOV EAX,dword ptr [EBP + 0xffffd730]
004c4a1a  c78528d7ffff00000000      MOV dword ptr [EBP + 0xffffd728],0x0
004c4a24  83bc05f0d9ffff00          CMP dword ptr [EBP + EAX*0x1 + 0xffffd9f0],0x0
004c4a2c  0f8ea0030000              JLE 0x004c4dd2
004c4a32  8db40554daffff            LEA ESI,[EBP + EAX*0x1 + 0xffffda54]
004c4a39  8bc8                      MOV ECX,EAX
004c4a3b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c4a40  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004c4a46  2b46a8                    SUB EAX,dword ptr [ESI + -0x58]
004c4a49  99                        CDQ
004c4a4a  f77ea4                    IDIV dword ptr [ESI + -0x5c]
004c4a4d  85d2                      TEST EDX,EDX
004c4a4f  0f8557030000              JNZ 0x004c4dac
004c4a55  8a46b4                    MOV AL,byte ptr [ESI + -0x4c]
004c4a58  888548d9ffff              MOV byte ptr [EBP + 0xffffd948],AL
004c4a5e  f30f1046b8                MOVSS XMM0,dword ptr [ESI + -0x48]
004c4a63  f30f11854cd9ffff          MOVSS dword ptr [EBP + 0xffffd94c],XMM0
004c4a6b  f30f1046bc                MOVSS XMM0,dword ptr [ESI + -0x44]
004c4a70  f30f118550d9ffff          MOVSS dword ptr [EBP + 0xffffd950],XMM0
004c4a78  f30f1046c0                MOVSS XMM0,dword ptr [ESI + -0x40]
004c4a7d  f30f118554d9ffff          MOVSS dword ptr [EBP + 0xffffd954],XMM0
004c4a85  f30f1046c4                MOVSS XMM0,dword ptr [ESI + -0x3c]
004c4a8a  f30f118558d9ffff          MOVSS dword ptr [EBP + 0xffffd958],XMM0
004c4a92  f30f1046c8                MOVSS XMM0,dword ptr [ESI + -0x38]
004c4a97  f30f11855cd9ffff          MOVSS dword ptr [EBP + 0xffffd95c],XMM0
004c4a9f  f30f1046cc                MOVSS XMM0,dword ptr [ESI + -0x34]
004c4aa4  f30f118560d9ffff          MOVSS dword ptr [EBP + 0xffffd960],XMM0
004c4aac  f30f1046d0                MOVSS XMM0,dword ptr [ESI + -0x30]
004c4ab1  f30f118564d9ffff          MOVSS dword ptr [EBP + 0xffffd964],XMM0
004c4ab9  f30f1046d4                MOVSS XMM0,dword ptr [ESI + -0x2c]
004c4abe  f30f118568d9ffff          MOVSS dword ptr [EBP + 0xffffd968],XMM0
004c4ac6  f30f1046d8                MOVSS XMM0,dword ptr [ESI + -0x28]
004c4acb  f30f11856cd9ffff          MOVSS dword ptr [EBP + 0xffffd96c],XMM0
004c4ad3  f30f1046dc                MOVSS XMM0,dword ptr [ESI + -0x24]
004c4ad8  f30f118570d9ffff          MOVSS dword ptr [EBP + 0xffffd970],XMM0
004c4ae0  0f1046e0                  MOVUPS XMM0,xmmword ptr [ESI + -0x20]
004c4ae4  0f118574d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd974],XMM0
004c4aeb  0f1046f0                  MOVUPS XMM0,xmmword ptr [ESI + -0x10]
004c4aef  0f118584d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd984],XMM0
004c4af6  f30f7e06                  MOVQ XMM0,qword ptr [ESI]
004c4afa  660fd68594d9ffff          MOVQ qword ptr [EBP + 0xffffd994],XMM0
004c4b02  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004c4b05  89859cd9ffff              MOV dword ptr [EBP + 0xffffd99c],EAX
004c4b0b  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
004c4b0e  8b4e10                    MOV ECX,dword ptr [ESI + 0x10]
004c4b11  8985a0d9ffff              MOV dword ptr [EBP + 0xffffd9a0],EAX
004c4b17  898da4d9ffff              MOV dword ptr [EBP + 0xffffd9a4],ECX
004c4b1d  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
004c4b22  f30f1185a8d9ffff          MOVSS dword ptr [EBP + 0xffffd9a8],XMM0
004c4b2a  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
004c4b2f  f30f1185acd9ffff          MOVSS dword ptr [EBP + 0xffffd9ac],XMM0
004c4b37  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
004c4b3c  f30f1185b0d9ffff          MOVSS dword ptr [EBP + 0xffffd9b0],XMM0
004c4b44  f30f104620                MOVSS XMM0,dword ptr [ESI + 0x20]
004c4b49  f30f1185b4d9ffff          MOVSS dword ptr [EBP + 0xffffd9b4],XMM0
004c4b51  f30f104624                MOVSS XMM0,dword ptr [ESI + 0x24]
004c4b56  f30f1185b8d9ffff          MOVSS dword ptr [EBP + 0xffffd9b8],XMM0
004c4b5e  f30f104628                MOVSS XMM0,dword ptr [ESI + 0x28]
004c4b63  f30f1185bcd9ffff          MOVSS dword ptr [EBP + 0xffffd9bc],XMM0
004c4b6b  f30f10462c                MOVSS XMM0,dword ptr [ESI + 0x2c]
004c4b70  f30f1185c0d9ffff          MOVSS dword ptr [EBP + 0xffffd9c0],XMM0
004c4b78  8b4630                    MOV EAX,dword ptr [ESI + 0x30]
004c4b7b  8985c4d9ffff              MOV dword ptr [EBP + 0xffffd9c4],EAX
004c4b81  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004c4b84  8b4e38                    MOV ECX,dword ptr [ESI + 0x38]
004c4b87  8985c8d9ffff              MOV dword ptr [EBP + 0xffffd9c8],EAX
004c4b8d  898dccd9ffff              MOV dword ptr [EBP + 0xffffd9cc],ECX
004c4b93  f30f10463c                MOVSS XMM0,dword ptr [ESI + 0x3c]
004c4b98  f30f1185d0d9ffff          MOVSS dword ptr [EBP + 0xffffd9d0],XMM0
004c4ba0  8b4640                    MOV EAX,dword ptr [ESI + 0x40]
004c4ba3  8985d4d9ffff              MOV dword ptr [EBP + 0xffffd9d4],EAX
004c4ba9  f30f104644                MOVSS XMM0,dword ptr [ESI + 0x44]
004c4bae  f30f1185d8d9ffff          MOVSS dword ptr [EBP + 0xffffd9d8],XMM0
004c4bb6  8b4648                    MOV EAX,dword ptr [ESI + 0x48]
004c4bb9  8985dcd9ffff              MOV dword ptr [EBP + 0xffffd9dc],EAX
004c4bbf  8a464c                    MOV AL,byte ptr [ESI + 0x4c]
004c4bc2  8885e0d9ffff              MOV byte ptr [EBP + 0xffffd9e0],AL
004c4bc8  f30f104650                MOVSS XMM0,dword ptr [ESI + 0x50]
004c4bcd  f30f1185e4d9ffff          MOVSS dword ptr [EBP + 0xffffd9e4],XMM0
004c4bd5  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
004c4bd8  8985e8d9ffff              MOV dword ptr [EBP + 0xffffd9e8],EAX
004c4bde  8a4658                    MOV AL,byte ptr [ESI + 0x58]
004c4be1  8885ecd9ffff              MOV byte ptr [EBP + 0xffffd9ec],AL
004c4be7  8b854cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd74c]
004c4bed  c785dcd9ffff06000000      MOV dword ptr [EBP + 0xffffd9dc],0x6
004c4bf7  85c0                      TEST EAX,EAX
004c4bf9  754c                      JNZ 0x004c4c47
004c4bfb  8d8d80d4ffff              LEA ECX,[EBP + 0xffffd480]
004c4c01  e8cae21b00                CALL 0x00682ed0
004c4c06  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004c4c0d  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
004c4c15  0f118574d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd974],XMM0
004c4c1c  c785a8d4ffff00000000      MOV dword ptr [EBP + 0xffffd4a8],0x0
004c4c26  0f108590d4ffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffd490]
004c4c2d  8b85a8d4ffff              MOV EAX,dword ptr [EBP + 0xffffd4a8]
004c4c33  0f118584d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd984],XMM0
004c4c3a  f30f100580a2ba00          MOVSS XMM0,dword ptr [0x00baa280]
004c4c42  e990000000                JMP 0x004c4cd7
004c4c47  83f801                    CMP EAX,0x1
004c4c4a  7544                      JNZ 0x004c4c90
004c4c4c  8d8dd8d4ffff              LEA ECX,[EBP + 0xffffd4d8]
004c4c52  e879e21b00                CALL 0x00682ed0
004c4c57  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004c4c5e  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
004c4c66  0f118574d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd974],XMM0
004c4c6d  c78500d5ffffcdcccc3e      MOV dword ptr [EBP + 0xffffd500],0x3ecccccd
004c4c77  0f1085e8d4ffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffd4e8]
004c4c7e  8b8500d5ffff              MOV EAX,dword ptr [EBP + 0xffffd500]
004c4c84  0f118584d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd984],XMM0
004c4c8b  0f57c0                    XORPS XMM0,XMM0
004c4c8e  eb47                      JMP 0x004c4cd7
004c4c90  83f802                    CMP EAX,0x2
004c4c93  7553                      JNZ 0x004c4ce8
004c4c95  8d8dacd4ffff              LEA ECX,[EBP + 0xffffd4ac]
004c4c9b  e830e21b00                CALL 0x00682ed0
004c4ca0  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004c4ca7  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
004c4caf  0f118574d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd974],XMM0
004c4cb6  c785d4d4ffff00000000      MOV dword ptr [EBP + 0xffffd4d4],0x0
004c4cc0  0f1085bcd4ffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffd4bc]
004c4cc7  8b85d4d4ffff              MOV EAX,dword ptr [EBP + 0xffffd4d4]
004c4ccd  0f118584d9ffff            MOVUPS xmmword ptr [EBP + 0xffffd984],XMM0
004c4cd4  0f28c1                    MOVAPS XMM0,XMM1
004c4cd7  0f14c1                    UNPCKLPS XMM0,XMM1
004c4cda  660fd68594d9ffff          MOVQ qword ptr [EBP + 0xffffd994],XMM0
004c4ce2  89859cd9ffff              MOV dword ptr [EBP + 0xffffd99c],EAX
004c4ce8  8b8d34d7ffff              MOV ECX,dword ptr [EBP + 0xffffd734]
004c4cee  0f57d2                    XORPS XMM2,XMM2
004c4cf1  85c9                      TEST ECX,ECX
004c4cf3  0f84ad000000              JZ 0x004c4da6
004c4cf9  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004c4cfd  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
004c4d02  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
004c4d0a  f30f5e0d24a3ba00          DIVSS XMM1,dword ptr [0x00baa324]
004c4d12  f30f58c2                  ADDSS XMM0,XMM2
004c4d16  f30f580d8ca8ba00          ADDSS XMM1,dword ptr [0x00baa88c]
004c4d1e  f30f1185a8d9ffff          MOVSS dword ptr [EBP + 0xffffd9a8],XMM0
004c4d26  f30f118dacd9ffff          MOVSS dword ptr [EBP + 0xffffd9ac],XMM1
004c4d2e  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004c4d35  c785d8d9ffff0000f041      MOV dword ptr [EBP + 0xffffd9d8],0x41f00000
004c4d3f  740a                      JZ 0x004c4d4b
004c4d41  c785d8d9ffff0000a041      MOV dword ptr [EBP + 0xffffd9d8],0x41a00000
004c4d4b  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004c4d53  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004c4d5b  8d873c030000              LEA EAX,[EDI + 0x33c]
004c4d61  8d8d48d9ffff              LEA ECX,[EBP + 0xffffd948]
004c4d67  51                        PUSH ECX
004c4d68  f30f118db4d9ffff          MOVSS dword ptr [EBP + 0xffffd9b4],XMM1
004c4d70  8d8d3cd6ffff              LEA ECX,[EBP + 0xffffd63c]
004c4d76  f30f1185b0d9ffff          MOVSS dword ptr [EBP + 0xffffd9b0],XMM0
004c4d7e  660f6e4ea0                MOVD XMM1,dword ptr [ESI + -0x60]
004c4d83  f30f1046ac                MOVSS XMM0,dword ptr [ESI + -0x54]
004c4d88  0f5bc9                    CVTDQ2PS XMM1,XMM1
004c4d8b  6a09                      PUSH 0x9
004c4d8d  51                        PUSH ECX
004c4d8e  50                        PUSH EAX
004c4d8f  8bcf                      MOV ECX,EDI
004c4d91  f30f11853cd6ffff          MOVSS dword ptr [EBP + 0xffffd63c],XMM0
004c4d99  f30f118d40d6ffff          MOVSS dword ptr [EBP + 0xffffd640],XMM1
004c4da1  e83a652000                CALL 0x006cb2e0
004c4da6  8b8d30d7ffff              MOV ECX,dword ptr [EBP + 0xffffd730]
004c4dac  8b8528d7ffff              MOV EAX,dword ptr [EBP + 0xffffd728]
004c4db2  81c6c8000000              ADD ESI,0xc8
004c4db8  40                        INC EAX
004c4db9  898528d7ffff              MOV dword ptr [EBP + 0xffffd728],EAX
004c4dbf  3b840df0d9ffff            CMP EAX,dword ptr [EBP + ECX*0x1 + 0xffffd9f0]
004c4dc6  0f8c74fcffff              JL 0x004c4a40
004c4dcc  8bb54cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd74c]
004c4dd2  46                        INC ESI
004c4dd3  89b54cd7ffff              MOV dword ptr [EBP + 0xffffd74c],ESI
004c4dd9  83fe03                    CMP ESI,0x3
004c4ddc  0f8ccefbffff              JL 0x004c49b0
004c4de2  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004c4dea  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004c4df2  2bc8                      SUB ECX,EAX
004c4df4  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004c4dfa  03c1                      ADD EAX,ECX
004c4dfc  898710040000              MOV dword ptr [EDI + 0x410],EAX
004c4e02  3d96000000                CMP EAX,0x96
004c4e07  0f8e8a020000              JLE 0x004c5097
004c4e0d  81bf640b000058020000      CMP dword ptr [EDI + 0xb64],0x258
004c4e17  0f857a020000              JNZ 0x004c5097
004c4e1d  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c4e20  85f6                      TEST ESI,ESI
004c4e22  7453                      JZ 0x004c4e77
004c4e24  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c4e28  8bc6                      MOV EAX,ESI
004c4e2a  7202                      JC 0x004c4e2e
004c4e2c  8b06                      MOV EAX,dword ptr [ESI]
004c4e2e  8b8d24d7ffff              MOV ECX,dword ptr [EBP + 0xffffd724]
004c4e34  8a10                      MOV DL,byte ptr [EAX]
004c4e36  3a11                      CMP DL,byte ptr [ECX]
004c4e38  751a                      JNZ 0x004c4e54
004c4e3a  84d2                      TEST DL,DL
004c4e3c  7412                      JZ 0x004c4e50
004c4e3e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c4e41  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c4e44  750e                      JNZ 0x004c4e54
004c4e46  83c002                    ADD EAX,0x2
004c4e49  83c102                    ADD ECX,0x2
004c4e4c  84d2                      TEST DL,DL
004c4e4e  75e4                      JNZ 0x004c4e34
004c4e50  33c0                      XOR EAX,EAX
004c4e52  eb05                      JMP 0x004c4e59
004c4e54  1bc0                      SBB EAX,EAX
004c4e56  83c801                    OR EAX,0x1
004c4e59  85c0                      TEST EAX,EAX
004c4e5b  751a                      JNZ 0x004c4e77
004c4e5d  384634                    CMP byte ptr [ESI + 0x34],AL
004c4e60  0f8495e7ffff              JZ 0x004c35fb
004c4e66  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c4e6c  8d7748                    LEA ESI,[EDI + 0x48]
004c4e6f  0f8586e7ffff              JNZ 0x004c35fb
004c4e75  eb03                      JMP 0x004c4e7a
004c4e77  8d7748                    LEA ESI,[EDI + 0x48]
004c4e7a  6a01                      PUSH 0x1
004c4e7c  ffb524d7ffff              PUSH dword ptr [EBP + 0xffffd724]
004c4e82  8bce                      MOV ECX,ESI
004c4e84  e84757f4ff                CALL 0x0040a5d0
004c4e89  84c0                      TEST AL,AL
004c4e8b  0f846ae7ffff              JZ 0x004c35fb
004c4e91  8d4e30                    LEA ECX,[ESI + 0x30]
004c4e94  e81753f4ff                CALL 0x0040a1b0
004c4e99  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c4e9d  e959e7ffff                JMP 0x004c35fb
004c4ea2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c4ea8  3d58020000                CMP EAX,0x258
004c4ead  0f85e4010000              JNZ 0x004c5097
004c4eb3  85f6                      TEST ESI,ESI
004c4eb5  750b                      JNZ 0x004c4ec2
004c4eb7  8b8524d7ffff              MOV EAX,dword ptr [EBP + 0xffffd724]
004c4ebd  803800                    CMP byte ptr [EAX],0x0
004c4ec0  eb49                      JMP 0x004c4f0b
004c4ec2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c4ec9  0f853b010000              JNZ 0x004c500a
004c4ecf  8b9524d7ffff              MOV EDX,dword ptr [EBP + 0xffffd724]
004c4ed5  803a00                    CMP byte ptr [EDX],0x0
004c4ed8  7437                      JZ 0x004c4f11
004c4eda  8bc6                      MOV EAX,ESI
004c4edc  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c4ee0  7202                      JC 0x004c4ee4
004c4ee2  8b00                      MOV EAX,dword ptr [EAX]
004c4ee4  8a08                      MOV CL,byte ptr [EAX]
004c4ee6  3a0a                      CMP CL,byte ptr [EDX]
004c4ee8  751a                      JNZ 0x004c4f04
004c4eea  84c9                      TEST CL,CL
004c4eec  7412                      JZ 0x004c4f00
004c4eee  8a4801                    MOV CL,byte ptr [EAX + 0x1]
004c4ef1  3a4a01                    CMP CL,byte ptr [EDX + 0x1]
004c4ef4  750e                      JNZ 0x004c4f04
004c4ef6  83c002                    ADD EAX,0x2
004c4ef9  83c202                    ADD EDX,0x2
004c4efc  84c9                      TEST CL,CL
004c4efe  75e4                      JNZ 0x004c4ee4
004c4f00  33c0                      XOR EAX,EAX
004c4f02  eb05                      JMP 0x004c4f09
004c4f04  1bc0                      SBB EAX,EAX
004c4f06  83c801                    OR EAX,0x1
004c4f09  85c0                      TEST EAX,EAX
004c4f0b  0f85f9000000              JNZ 0x004c500a
004c4f11  8bcf                      MOV ECX,EDI
004c4f13  e828991f00                CALL 0x006be840
004c4f18  0f57c0                    XORPS XMM0,XMM0
004c4f1b  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
004c4f23  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004c4f2b  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
004c4f33  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
004c4f3b  0f28d4                    MOVAPS XMM2,XMM4
004c4f3e  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004c4f45  0f28cb                    MOVAPS XMM1,XMM3
004c4f48  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004c4f4f  0f2fd1                    COMISS XMM2,XMM1
004c4f52  760f                      JBE 0x004c4f63
004c4f54  33c9                      XOR ECX,ECX
004c4f56  b802000000                MOV EAX,0x2
004c4f5b  0f2fc4                    COMISS XMM0,XMM4
004c4f5e  0f47c1                    CMOVA EAX,ECX
004c4f61  eb0f                      JMP 0x004c4f72
004c4f63  33c0                      XOR EAX,EAX
004c4f65  0f2fc3                    COMISS XMM0,XMM3
004c4f68  0f96c0                    SETBE AL
004c4f6b  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
004c4f72  8b0c855c01b600            MOV ECX,dword ptr [EAX*0x4 + 0xb6015c]
004c4f79  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004c4f7f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c4f82  898d28d7ffff              MOV dword ptr [EBP + 0xffffd728],ECX
004c4f88  85f6                      TEST ESI,ESI
004c4f8a  7479                      JZ 0x004c5005
004c4f8c  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c4f90  8bc6                      MOV EAX,ESI
004c4f92  7202                      JC 0x004c4f96
004c4f94  8b06                      MOV EAX,dword ptr [ESI]
004c4f96  8a10                      MOV DL,byte ptr [EAX]
004c4f98  3a11                      CMP DL,byte ptr [ECX]
004c4f9a  751a                      JNZ 0x004c4fb6
004c4f9c  84d2                      TEST DL,DL
004c4f9e  7412                      JZ 0x004c4fb2
004c4fa0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c4fa3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c4fa6  750e                      JNZ 0x004c4fb6
004c4fa8  83c002                    ADD EAX,0x2
004c4fab  83c102                    ADD ECX,0x2
004c4fae  84d2                      TEST DL,DL
004c4fb0  75e4                      JNZ 0x004c4f96
004c4fb2  33c0                      XOR EAX,EAX
004c4fb4  eb05                      JMP 0x004c4fbb
004c4fb6  1bc0                      SBB EAX,EAX
004c4fb8  83c801                    OR EAX,0x1
004c4fbb  85c0                      TEST EAX,EAX
004c4fbd  7541                      JNZ 0x004c5000
004c4fbf  384634                    CMP byte ptr [ESI + 0x34],AL
004c4fc2  0f84cf000000              JZ 0x004c5097
004c4fc8  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c4fce  8d7748                    LEA ESI,[EDI + 0x48]
004c4fd1  0f85c0000000              JNZ 0x004c5097
004c4fd7  8b8d28d7ffff              MOV ECX,dword ptr [EBP + 0xffffd728]
004c4fdd  6a01                      PUSH 0x1
004c4fdf  51                        PUSH ECX
004c4fe0  8bce                      MOV ECX,ESI
004c4fe2  e8e955f4ff                CALL 0x0040a5d0
004c4fe7  84c0                      TEST AL,AL
004c4fe9  0f84a8000000              JZ 0x004c5097
004c4fef  8d4e30                    LEA ECX,[ESI + 0x30]
004c4ff2  e8b951f4ff                CALL 0x0040a1b0
004c4ff7  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c4ffb  e997000000                JMP 0x004c5097
004c5000  8d7748                    LEA ESI,[EDI + 0x48]
004c5003  ebd2                      JMP 0x004c4fd7
004c5005  8d7748                    LEA ESI,[EDI + 0x48]
004c5008  ebd3                      JMP 0x004c4fdd
004c500a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c5010  3d58020000                CMP EAX,0x258
004c5015  0f857c000000              JNZ 0x004c5097
004c501b  85f6                      TEST ESI,ESI
004c501d  750b                      JNZ 0x004c502a
004c501f  8b850cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd70c]
004c5025  803800                    CMP byte ptr [EAX],0x0
004c5028  eb51                      JMP 0x004c507b
004c502a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c5031  7564                      JNZ 0x004c5097
004c5033  8bb50cd7ffff              MOV ESI,dword ptr [EBP + 0xffffd70c]
004c5039  803e00                    CMP byte ptr [ESI],0x0
004c503c  743f                      JZ 0x004c507d
004c503e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c5041  85c0                      TEST EAX,EAX
004c5043  740a                      JZ 0x004c504f
004c5045  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c5049  7209                      JC 0x004c5054
004c504b  8b00                      MOV EAX,dword ptr [EAX]
004c504d  eb05                      JMP 0x004c5054
004c504f  b8eca4b100                MOV EAX,0xb1a4ec
004c5054  8a08                      MOV CL,byte ptr [EAX]
004c5056  3a0e                      CMP CL,byte ptr [ESI]
004c5058  751a                      JNZ 0x004c5074
004c505a  84c9                      TEST CL,CL
004c505c  7412                      JZ 0x004c5070
004c505e  8a4801                    MOV CL,byte ptr [EAX + 0x1]
004c5061  3a4e01                    CMP CL,byte ptr [ESI + 0x1]
004c5064  750e                      JNZ 0x004c5074
004c5066  83c002                    ADD EAX,0x2
004c5069  83c602                    ADD ESI,0x2
004c506c  84c9                      TEST CL,CL
004c506e  75e4                      JNZ 0x004c5054
004c5070  33c0                      XOR EAX,EAX
004c5072  eb05                      JMP 0x004c5079
004c5074  1bc0                      SBB EAX,EAX
004c5076  83c801                    OR EAX,0x1
004c5079  85c0                      TEST EAX,EAX
004c507b  751a                      JNZ 0x004c5097
004c507d  6a00                      PUSH 0x0
004c507f  ffb544d7ffff              PUSH dword ptr [EBP + 0xffffd744]
004c5085  8d4f48                    LEA ECX,[EDI + 0x48]
004c5088  e8f352f4ff                CALL 0x0040a380
004c508d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c5097  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c509d  83f810                    CMP EAX,0x10
004c50a0  7419                      JZ 0x004c50bb
004c50a2  3dbc020000                CMP EAX,0x2bc
004c50a7  7412                      JZ 0x004c50bb
004c50a9  3dc6020000                CMP EAX,0x2c6
004c50ae  740b                      JZ 0x004c50bb
004c50b0  3dd0020000                CMP EAX,0x2d0
004c50b5  0f85aa060000              JNZ 0x004c5765
004c50bb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c50bf  8d4748                    LEA EAX,[EDI + 0x48]
004c50c2  898544d7ffff              MOV dword ptr [EBP + 0xffffd744],EAX
004c50c8  7449                      JZ 0x004c5113
004c50ca  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c50d1  7440                      JZ 0x004c5113
004c50d3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c50d6  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c50da  7202                      JC 0x004c50de
004c50dc  8b00                      MOV EAX,dword ptr [EAX]
004c50de  b97800b600                MOV ECX,0xb60078
004c50e3  8a10                      MOV DL,byte ptr [EAX]
004c50e5  3a11                      CMP DL,byte ptr [ECX]
004c50e7  751a                      JNZ 0x004c5103
004c50e9  84d2                      TEST DL,DL
004c50eb  7412                      JZ 0x004c50ff
004c50ed  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c50f0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c50f3  750e                      JNZ 0x004c5103
004c50f5  83c002                    ADD EAX,0x2
004c50f8  83c102                    ADD ECX,0x2
004c50fb  84d2                      TEST DL,DL
004c50fd  75e4                      JNZ 0x004c50e3
004c50ff  33c0                      XOR EAX,EAX
004c5101  eb05                      JMP 0x004c5108
004c5103  1bc0                      SBB EAX,EAX
004c5105  83c801                    OR EAX,0x1
004c5108  c6854bd7ffff00            MOV byte ptr [EBP + 0xffffd74b],0x0
004c510f  85c0                      TEST EAX,EAX
004c5111  7407                      JZ 0x004c511a
004c5113  c6854bd7ffff01            MOV byte ptr [EBP + 0xffffd74b],0x1
004c511a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c5120  33f6                      XOR ESI,ESI
004c5122  81c1a8ba0100              ADD ECX,0x1baa8
004c5128  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004c512b  2b01                      SUB EAX,dword ptr [ECX]
004c512d  c1f802                    SAR EAX,0x2
004c5130  85c0                      TEST EAX,EAX
004c5132  0f848c000000              JZ 0x004c51c4
004c5138  56                        PUSH ESI
004c5139  e882414f00                CALL 0x009b92c0
004c513e  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004c5146  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
004c514e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c5154  56                        PUSH ESI
004c5155  f30f588070030000          ADDSS XMM0,dword ptr [EAX + 0x370]
004c515d  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
004c5163  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004c5168  e853414f00                CALL 0x009b92c0
004c516d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c5175  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c517d  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004c5185  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004c518d  f30f59c9                  MULSS XMM1,XMM1
004c5191  f30f59c0                  MULSS XMM0,XMM0
004c5195  f30f58c1                  ADDSS XMM0,XMM1
004c5199  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
004c519e  f30f59c9                  MULSS XMM1,XMM1
004c51a2  0f2fc8                    COMISS XMM1,XMM0
004c51a5  7742                      JA 0x004c51e9
004c51a7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c51ad  46                        INC ESI
004c51ae  81c1a8ba0100              ADD ECX,0x1baa8
004c51b4  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004c51b7  2b01                      SUB EAX,dword ptr [ECX]
004c51b9  c1f802                    SAR EAX,0x2
004c51bc  3bf0                      CMP ESI,EAX
004c51be  0f8274ffffff              JC 0x004c5138
004c51c4  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c51ca  83f810                    CMP EAX,0x10
004c51cd  7543                      JNZ 0x004c5212
004c51cf  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004c51d7  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004c51df  2bc8                      SUB ECX,EAX
004c51e1  018f10040000              ADD dword ptr [EDI + 0x410],ECX
004c51e7  eb4a                      JMP 0x004c5233
004c51e9  80bd4bd7ffff00            CMP byte ptr [EBP + 0xffffd74b],0x0
004c51f0  74d2                      JZ 0x004c51c4
004c51f2  6a00                      PUSH 0x0
004c51f4  688400b600                PUSH 0xb60084
004c51f9  8d4f48                    LEA ECX,[EDI + 0x48]
004c51fc  e87f51f4ff                CALL 0x0040a380
004c5201  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c5207  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c520d  e9da030000                JMP 0x004c55ec
004c5212  3dbc020000                CMP EAX,0x2bc
004c5217  0f84f6000000              JZ 0x004c5313
004c521d  3dc6020000                CMP EAX,0x2c6
004c5222  0f84eb000000              JZ 0x004c5313
004c5228  3dd0020000                CMP EAX,0x2d0
004c522d  0f84e0000000              JZ 0x004c5313
004c5233  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c5239  33f6                      XOR ESI,ESI
004c523b  c7854cd7ffff00000000      MOV dword ptr [EBP + 0xffffd74c],0x0
004c5245  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004c524b  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004c524e  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
004c5254  0f8674000000              JBE 0x004c52ce
004c525a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004c5260  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004c5266  8b14b0                    MOV EDX,dword ptr [EAX + ESI*0x4]
004c5269  837a2809                  CMP dword ptr [EDX + 0x28],0x9
004c526d  7553                      JNZ 0x004c52c2
004c526f  8b4234                    MOV EAX,dword ptr [EDX + 0x34]
004c5272  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
004c5275  754b                      JNZ 0x004c52c2
004c5277  80ba7301000000            CMP byte ptr [EDX + 0x173],0x0
004c527e  7542                      JNZ 0x004c52c2
004c5280  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
004c5286  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004c528c  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
004c5292  51                        PUSH ECX
004c5293  898534d6ffff              MOV dword ptr [EBP + 0xffffd634],EAX
004c5299  8d8534d6ffff              LEA EAX,[EBP + 0xffffd634]
004c529f  c7042400000000            MOV dword ptr [ESP],0x0
004c52a6  50                        PUSH EAX
004c52a7  899538d6ffff              MOV dword ptr [EBP + 0xffffd638],EDX
004c52ad  e8aee03400                CALL 0x00813360
004c52b2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c52b8  84c0                      TEST AL,AL
004c52ba  7406                      JZ 0x004c52c2
004c52bc  ff854cd7ffff              INC dword ptr [EBP + 0xffffd74c]
004c52c2  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004c52c5  46                        INC ESI
004c52c6  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
004c52cc  7292                      JC 0x004c5260
004c52ce  e88d9c2200                CALL 0x006eef60
004c52d3  33d2                      XOR EDX,EDX
004c52d5  b90a000000                MOV ECX,0xa
004c52da  f7f1                      DIV ECX
004c52dc  8b854cd7ffff              MOV EAX,dword ptr [EBP + 0xffffd74c]
004c52e2  2bc2                      SUB EAX,EDX
004c52e4  85c0                      TEST EAX,EAX
004c52e6  7f16                      JG 0x004c52fe
004c52e8  80bd4bd7ffff00            CMP byte ptr [EBP + 0xffffd74b],0x0
004c52ef  740d                      JZ 0x004c52fe
004c52f1  83bf100400001e            CMP dword ptr [EDI + 0x410],0x1e
004c52f8  0f8fdf020000              JG 0x004c55dd
004c52fe  81bf10040000b4000000      CMP dword ptr [EDI + 0x410],0xb4
004c5308  0f8e57040000              JLE 0x004c5765
004c530e  e9ca020000                JMP 0x004c55dd
004c5313  6a00                      PUSH 0x0
004c5315  6a0a                      PUSH 0xa
004c5317  8bcf                      MOV ECX,EDI
004c5319  e8f2731e00                CALL 0x006ac710
004c531e  84c0                      TEST AL,AL
004c5320  0f8400020000              JZ 0x004c5526
004c5326  e8359c2200                CALL 0x006eef60
004c532b  83e007                    AND EAX,0x7
004c532e  0f85f2010000              JNZ 0x004c5526
004c5334  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004c533c  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004c5344  0f28c1                    MOVAPS XMM0,XMM1
004c5347  f30f59c1                  MULSS XMM0,XMM1
004c534b  0f28ca                    MOVAPS XMM1,XMM2
004c534e  f30f59ca                  MULSS XMM1,XMM2
004c5352  f30f58c1                  ADDSS XMM0,XMM1
004c5356  e8f506f7ff                CALL 0x00435a50
004c535b  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
004c5362  0f86be010000              JBE 0x004c5526
004c5368  83bd58d5ffff0a            CMP dword ptr [EBP + 0xffffd558],0xa
004c536f  0f83b1010000              JNC 0x004c5526
004c5375  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004c537c  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
004c5384  f30f580dd0a8ba00          ADDSS XMM1,dword ptr [0x00baa8d0]
004c538c  f30f590d50adba00          MULSS XMM1,dword ptr [0x00baad50]
004c5394  7629                      JBE 0x004c53bf
004c5396  f30f5ec8                  DIVSS XMM1,XMM0
004c539a  0f28c1                    MOVAPS XMM0,XMM1
004c539d  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
004c53a5  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
004c53ad  f30f118de4d6ffff          MOVSS dword ptr [EBP + 0xffffd6e4],XMM1
004c53b5  f30f1185e0d6ffff          MOVSS dword ptr [EBP + 0xffffd6e0],XMM0
004c53bd  eb20                      JMP 0x004c53df
004c53bf  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004c53c7  f30f1185e0d6ffff          MOVSS dword ptr [EBP + 0xffffd6e0],XMM0
004c53cf  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004c53d7  f30f1185e4d6ffff          MOVSS dword ptr [EBP + 0xffffd6e4],XMM0
004c53df  e87c9b2200                CALL 0x006eef60
004c53e4  0f57c9                    XORPS XMM1,XMM1
004c53e7  660f6ec0                  MOVD XMM0,EAX
004c53eb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004c53ef  c1e81f                    SHR EAX,0x1f
004c53f2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004c53fb  660f5ac0                  CVTPD2PS XMM0,XMM0
004c53ff  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004c5407  f30f5cc1                  SUBSS XMM0,XMM1
004c540b  f30f5fc1                  MAXSS XMM0,XMM1
004c540f  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004c5417  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004c541f  f30f5c0510a9ba00          SUBSS XMM0,dword ptr [0x00baa910]
004c5427  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004c542f  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004c5434  e80781f5ff                CALL 0x0041d540
004c5439  f30f1185d4d6ffff          MOVSS dword ptr [EBP + 0xffffd6d4],XMM0
004c5441  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
004c5446  e8d580f5ff                CALL 0x0041d520
004c544b  f30f1095e0d6ffff          MOVSS XMM2,dword ptr [EBP + 0xffffd6e0]
004c5453  f30f10ade4d6ffff          MOVSS XMM5,dword ptr [EBP + 0xffffd6e4]
004c545b  0f28e2                    MOVAPS XMM4,XMM2
004c545e  f30f59a5d4d6ffff          MULSS XMM4,dword ptr [EBP + 0xffffd6d4]
004c5466  0f28cd                    MOVAPS XMM1,XMM5
004c5469  f30f59add4d6ffff          MULSS XMM5,dword ptr [EBP + 0xffffd6d4]
004c5471  f30f59c8                  MULSS XMM1,XMM0
004c5475  f30f59d0                  MULSS XMM2,XMM0
004c5479  f30f5ce1                  SUBSS XMM4,XMM1
004c547d  f30f58ea                  ADDSS XMM5,XMM2
004c5481  f30f58a73c030000          ADDSS XMM4,dword ptr [EDI + 0x33c]
004c5489  f30f11a5e0d6ffff          MOVSS dword ptr [EBP + 0xffffd6e0],XMM4
004c5491  f30f58af40030000          ADDSS XMM5,dword ptr [EDI + 0x340]
004c5499  f30f11ade4d6ffff          MOVSS dword ptr [EBP + 0xffffd6e4],XMM5
004c54a1  e8ba9a2200                CALL 0x006eef60
004c54a6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c54ac  6a00                      PUSH 0x0
004c54ae  68acd5c500                PUSH 0xc5d5ac
004c54b3  68dcd5c500                PUSH 0xc5d5dc
004c54b8  6a00                      PUSH 0x0
004c54ba  50                        PUSH EAX
004c54bb  6a03                      PUSH 0x3
004c54bd  6a00                      PUSH 0x0
004c54bf  6840b6c700                PUSH 0xc7b640
004c54c4  8d85e0d6ffff              LEA EAX,[EBP + 0xffffd6e0]
004c54ca  50                        PUSH EAX
004c54cb  6a0f                      PUSH 0xf
004c54cd  68e8030000                PUSH 0x3e8
004c54d2  e84936f6ff                CALL 0x00428b20
004c54d7  50                        PUSH EAX
004c54d8  e8d4b36200                CALL 0x00af08b1
004c54dd  83c410                    ADD ESP,0x10
004c54e0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c54e7  6a00                      PUSH 0x0
004c54e9  6a02                      PUSH 0x2
004c54eb  51                        PUSH ECX
004c54ec  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c54f3  8bcf                      MOV ECX,EDI
004c54f5  6809010000                PUSH 0x109
004c54fa  e8a1162100                CALL 0x006d6ba0
004c54ff  e85c9a2200                CALL 0x006eef60
004c5504  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c550a  50                        PUSH EAX
004c550b  6a00                      PUSH 0x0
004c550d  57                        PUSH EDI
004c550e  6840b6c700                PUSH 0xc7b640
004c5513  8d85e0d6ffff              LEA EAX,[EBP + 0xffffd6e0]
004c5519  50                        PUSH EAX
004c551a  6a00                      PUSH 0x0
004c551c  682a010000                PUSH 0x12a
004c5521  e8fa35f6ff                CALL 0x00428b20
004c5526  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
004c552c  81fed0020000              CMP ESI,0x2d0
004c5532  7537                      JNZ 0x004c556b
004c5534  51                        PUSH ECX
004c5535  8d8524d5ffff              LEA EAX,[EBP + 0xffffd524]
004c553b  c7042400000000            MOV dword ptr [ESP],0x0
004c5542  50                        PUSH EAX
004c5543  8bcf                      MOV ECX,EDI
004c5545  e8f6961f00                CALL 0x006bec40
004c554a  8b08                      MOV ECX,dword ptr [EAX]
004c554c  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004c5552  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004c5555  898738030000              MOV dword ptr [EDI + 0x338],EAX
004c555b  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004c5565  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
004c556b  81febc020000              CMP ESI,0x2bc
004c5571  0f85a6000000              JNZ 0x004c561d
004c5577  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c557f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c5587  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
004c558f  f30f5c8f34030000          SUBSS XMM1,dword ptr [EDI + 0x334]
004c5597  f30f59c0                  MULSS XMM0,XMM0
004c559b  f30f59c9                  MULSS XMM1,XMM1
004c559f  f30f58c1                  ADDSS XMM0,XMM1
004c55a3  e8a804f7ff                CALL 0x00435a50
004c55a8  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004c55b0  0f2fc8                    COMISS XMM1,XMM0
004c55b3  7728                      JA 0x004c55dd
004c55b5  a17816c700                MOV EAX,[0x00c71678]
004c55ba  6aff                      PUSH -0x1
004c55bc  6aff                      PUSH -0x1
004c55be  6829010000                PUSH 0x129
004c55c3  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c55c9  81c118120000              ADD ECX,0x1218
004c55cf  e8bc60f5ff                CALL 0x0041b690
004c55d4  83f803                    CMP EAX,0x3
004c55d7  0f8d8f000000              JGE 0x004c566c
004c55dd  6a00                      PUSH 0x0
004c55df  688400b600                PUSH 0xb60084
004c55e4  8d4f48                    LEA ECX,[EDI + 0x48]
004c55e7  e8944df4ff                CALL 0x0040a380
004c55ec  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c55f6  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
004c5600  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004c5606  898734030000              MOV dword ptr [EDI + 0x334],EAX
004c560c  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004c5612  898738030000              MOV dword ptr [EDI + 0x338],EAX
004c5618  e948010000                JMP 0x004c5765
004c561d  81fec6020000              CMP ESI,0x2c6
004c5623  7578                      JNZ 0x004c569d
004c5625  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c562d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c5635  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
004c563d  f30f5c8f34030000          SUBSS XMM1,dword ptr [EDI + 0x334]
004c5645  f30f59c0                  MULSS XMM0,XMM0
004c5649  f30f59c9                  MULSS XMM1,XMM1
004c564d  f30f58c1                  ADDSS XMM0,XMM1
004c5651  e8fa03f7ff                CALL 0x00435a50
004c5656  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004c565e  0f2fc8                    COMISS XMM1,XMM0
004c5661  774b                      JA 0x004c56ae
004c5663  83bf100400005a            CMP dword ptr [EDI + 0x410],0x5a
004c566a  7f42                      JG 0x004c56ae
004c566c  80bd4bd7ffff00            CMP byte ptr [EBP + 0xffffd74b],0x0
004c5673  0f84ec000000              JZ 0x004c5765
004c5679  81fec6020000              CMP ESI,0x2c6
004c567f  0f84ce000000              JZ 0x004c5753
004c5685  81fed0020000              CMP ESI,0x2d0
004c568b  0f84c2000000              JZ 0x004c5753
004c5691  6a00                      PUSH 0x0
004c5693  682c01b600                PUSH 0xb6012c
004c5698  e9bd000000                JMP 0x004c575a
004c569d  81fed0020000              CMP ESI,0x2d0
004c56a3  75c7                      JNZ 0x004c566c
004c56a5  83bf100400005a            CMP dword ptr [EDI + 0x410],0x5a
004c56ac  7ebe                      JLE 0x004c566c
004c56ae  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c56b4  a80f                      TEST AL,0xf
004c56b6  773d                      JA 0x004c56f5
004c56b8  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004c56be  8d4f48                    LEA ECX,[EDI + 0x48]
004c56c1  898734030000              MOV dword ptr [EDI + 0x334],EAX
004c56c7  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004c56cd  6a00                      PUSH 0x0
004c56cf  688400b600                PUSH 0xb60084
004c56d4  898738030000              MOV dword ptr [EDI + 0x338],EAX
004c56da  e8a14cf4ff                CALL 0x0040a380
004c56df  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c56e9  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
004c56f3  eb70                      JMP 0x004c5765
004c56f5  48                        DEC EAX
004c56f6  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c56fc  e85f982200                CALL 0x006eef60
004c5701  83e0f0                    AND EAX,0xfffffff0
004c5704  3387c40b0000              XOR EAX,dword ptr [EDI + 0xbc4]
004c570a  83c810                    OR EAX,0x10
004c570d  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c5713  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004c571b  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
004c5723  a17816c700                MOV EAX,[0x00c71678]
004c5728  51                        PUSH ECX
004c5729  8d8d1cd5ffff              LEA ECX,[EBP + 0xffffd51c]
004c572f  f30f110424                MOVSS dword ptr [ESP],XMM0
004c5734  51                        PUSH ECX
004c5735  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c573b  e890923500                CALL 0x0081e9d0
004c5740  8b08                      MOV ECX,dword ptr [EAX]
004c5742  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004c5748  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004c574b  898738030000              MOV dword ptr [EDI + 0x338],EAX
004c5751  eb12                      JMP 0x004c5765
004c5753  6a00                      PUSH 0x0
004c5755  68c000b600                PUSH 0xb600c0
004c575a  8b8d44d7ffff              MOV ECX,dword ptr [EBP + 0xffffd744]
004c5760  e81b4cf4ff                CALL 0x0040a380
004c5765  80bdc0d6ffff00            CMP byte ptr [EBP + 0xffffd6c0],0x0
004c576c  7518                      JNZ 0x004c5786
004c576e  c645fc0c                  MOV byte ptr [EBP + -0x4],0xc
004c5772  b101                      MOV CL,0x1
004c5774  8b95c4d6ffff              MOV EDX,dword ptr [EBP + 0xffffd6c4]
004c577a  6a00                      PUSH 0x0
004c577c  6a00                      PUSH 0x0
004c577e  e82df15900                CALL 0x00a648b0
004c5783  83c408                    ADD ESP,0x8
004c5786  80bdb0d6ffff00            CMP byte ptr [EBP + 0xffffd6b0],0x0
004c578d  7518                      JNZ 0x004c57a7
004c578f  c645fc0d                  MOV byte ptr [EBP + -0x4],0xd
004c5793  b101                      MOV CL,0x1
004c5795  8b95b4d6ffff              MOV EDX,dword ptr [EBP + 0xffffd6b4]
004c579b  6a00                      PUSH 0x0
004c579d  6a00                      PUSH 0x0
004c579f  e80cf15900                CALL 0x00a648b0
004c57a4  83c408                    ADD ESP,0x8
004c57a7  80bd9cd6ffff00            CMP byte ptr [EBP + 0xffffd69c],0x0
004c57ae  7518                      JNZ 0x004c57c8
004c57b0  c645fc0e                  MOV byte ptr [EBP + -0x4],0xe
004c57b4  b101                      MOV CL,0x1
004c57b6  8b95a0d6ffff              MOV EDX,dword ptr [EBP + 0xffffd6a0]
004c57bc  6a00                      PUSH 0x0
004c57be  6a00                      PUSH 0x0
004c57c0  e8ebf05900                CALL 0x00a648b0
004c57c5  83c408                    ADD ESP,0x8
004c57c8  80bd4cd5ffff00            CMP byte ptr [EBP + 0xffffd54c],0x0
004c57cf  7518                      JNZ 0x004c57e9
004c57d1  c645fc0f                  MOV byte ptr [EBP + -0x4],0xf
004c57d5  b101                      MOV CL,0x1
004c57d7  8b9550d5ffff              MOV EDX,dword ptr [EBP + 0xffffd550]
004c57dd  6a00                      PUSH 0x0
004c57df  6a00                      PUSH 0x0
004c57e1  e8caf05900                CALL 0x00a648b0
004c57e6  83c408                    ADD ESP,0x8
004c57e9  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004c57f0  80bdacd5ffff00            CMP byte ptr [EBP + 0xffffd5ac],0x0
004c57f7  751b                      JNZ 0x004c5814
004c57f9  c745fc10000000            MOV dword ptr [EBP + -0x4],0x10
004c5800  b101                      MOV CL,0x1
004c5802  8b95b0d5ffff              MOV EDX,dword ptr [EBP + 0xffffd5b0]
004c5808  6a00                      PUSH 0x0
004c580a  6a00                      PUSH 0x0
004c580c  e89ff05900                CALL 0x00a648b0
004c5811  83c408                    ADD ESP,0x8
004c5814  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004c5817  64890d00000000            MOV dword ptr FS:[0x0],ECX
004c581e  59                        POP ECX
004c581f  5f                        POP EDI
004c5820  5e                        POP ESI
004c5821  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004c5824  33cd                      XOR ECX,EBP
004c5826  e800996200                CALL 0x00aef12b
004c582b  8be5                      MOV ESP,EBP
004c582d  5d                        POP EBP
004c582e  8be3                      MOV ESP,EBX
004c5830  5b                        POP EBX
004c5831  c3                        RET
