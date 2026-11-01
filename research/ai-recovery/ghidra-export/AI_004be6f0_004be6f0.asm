; J460 NPC AI 0x004be6f0 AI_004be6f0
; types=298
; identities=298.0.0
; entry=004be6f0
004be6f0  55                        PUSH EBP
004be6f1  8bec                      MOV EBP,ESP
004be6f3  81eccc000000              SUB ESP,0xcc
004be6f9  a1b493bf00                MOV EAX,[0x00bf93b4]
004be6fe  33c5                      XOR EAX,EBP
004be700  8945fc                    MOV dword ptr [EBP + -0x4],EAX
004be703  53                        PUSH EBX
004be704  56                        PUSH ESI
004be705  57                        PUSH EDI
004be706  8bf9                      MOV EDI,ECX
004be708  0f57c9                    XORPS XMM1,XMM1
004be70b  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004be712  0f85c2000000              JNZ 0x004be7da
004be718  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004be722  8d7748                    LEA ESI,[EDI + 0x48]
004be725  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004be72b  898734030000              MOV dword ptr [EDI + 0x334],EAX
004be731  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004be737  898738030000              MOV dword ptr [EDI + 0x338],EAX
004be73d  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004be745  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
004be74d  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004be753  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004be75a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004be764  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004be76a  f30f5fc1                  MAXSS XMM0,XMM1
004be76e  f30f59053ca8ba00          MULSS XMM0,dword ptr [0x00baa83c]
004be776  e825156300                CALL 0x00aefca0
004be77b  6a01                      PUSH 0x1
004be77d  bf0d000000                MOV EDI,0xd
004be782  8bce                      MOV ECX,ESI
004be784  68ecfeb500                PUSH 0xb5feec
004be789  2bf8                      SUB EDI,EAX
004be78b  e840bef4ff                CALL 0x0040a5d0
004be790  84c0                      TEST AL,AL
004be792  0f8489060000              JZ 0x004bee21
004be798  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004be79b  85c0                      TEST EAX,EAX
004be79d  0f847e060000              JZ 0x004bee21
004be7a3  33c0                      XOR EAX,EAX
004be7a5  8d4e30                    LEA ECX,[ESI + 0x30]
004be7a8  3bc7                      CMP EAX,EDI
004be7aa  1bc0                      SBB EAX,EAX
004be7ac  23c7                      AND EAX,EDI
004be7ae  660f6ec8                  MOVD XMM1,EAX
004be7b2  0f5bc9                    CVTDQ2PS XMM1,XMM1
004be7b5  e846a6f4ff                CALL 0x00408e00
004be7ba  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004be7bd  85c0                      TEST EAX,EAX
004be7bf  0f845c060000              JZ 0x004bee21
004be7c5  c6464400                  MOV byte ptr [ESI + 0x44],0x0
004be7c9  5f                        POP EDI
004be7ca  5e                        POP ESI
004be7cb  5b                        POP EBX
004be7cc  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004be7cf  33cd                      XOR ECX,EBP
004be7d1  e855096300                CALL 0x00aef12b
004be7d6  8be5                      MOV ESP,EBP
004be7d8  5d                        POP EBP
004be7d9  c3                        RET
004be7da  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004be7e2  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004be7ea  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004be7f2  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004be7f7  0f2fc1                    COMISS XMM0,XMM1
004be7fa  7667                      JBE 0x004be863
004be7fc  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004be7ff  0f57c0                    XORPS XMM0,XMM0
004be802  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004be805  745c                      JZ 0x004be863
004be807  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004be810  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
004be813  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
004be816  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
004be81c  8bca                      MOV ECX,EDX
004be81e  83e104                    AND ECX,0x4
004be821  83c900                    OR ECX,0x0
004be824  7422                      JZ 0x004be848
004be826  83781001                  CMP dword ptr [EAX + 0x10],0x1
004be82a  741c                      JZ 0x004be848
004be82c  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
004be82f  83f901                    CMP ECX,0x1
004be832  7414                      JZ 0x004be848
004be834  83f903                    CMP ECX,0x3
004be837  740f                      JZ 0x004be848
004be839  81e200100000              AND EDX,0x1000
004be83f  83ca00                    OR EDX,0x0
004be842  7504                      JNZ 0x004be848
004be844  8910                      MOV dword ptr [EAX],EDX
004be846  eb04                      JMP 0x004be84c
004be848  f30f5800                  ADDSS XMM0,dword ptr [EAX]
004be84c  83c038                    ADD EAX,0x38
004be84f  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004be852  75bc                      JNZ 0x004be810
004be854  0f2fc1                    COMISS XMM0,XMM1
004be857  760a                      JBE 0x004be863
004be859  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004be863  8bcf                      MOV ECX,EDI
004be865  e8d6ff1f00                CALL 0x006be840
004be86a  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004be872  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004be87a  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004be882  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004be88a  f30f59c0                  MULSS XMM0,XMM0
004be88e  f30f59c9                  MULSS XMM1,XMM1
004be892  f30f58c1                  ADDSS XMM0,XMM1
004be896  e8b571f7ff                CALL 0x00435a50
004be89b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004be8a1  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004be8a9  83f803                    CMP EAX,0x3
004be8ac  0f8544010000              JNZ 0x004be9f6
004be8b2  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004be8b8  25000a0001                AND EAX,0x1000a00
004be8bd  83c800                    OR EAX,0x0
004be8c0  0f85a5040000              JNZ 0x004bed6b
004be8c6  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004be8ce  0f57c9                    XORPS XMM1,XMM1
004be8d1  f30f5c0504a1ba00          SUBSS XMM0,dword ptr [0x00baa104]
004be8d9  0f2fc8                    COMISS XMM1,XMM0
004be8dc  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004be8e4  7606                      JBE 0x004be8ec
004be8e6  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
004be8ec  e86f062300                CALL 0x006eef60
004be8f1  33d2                      XOR EDX,EDX
004be8f3  b932000000                MOV ECX,0x32
004be8f8  f7f1                      DIV ECX
004be8fa  85d2                      TEST EDX,EDX
004be8fc  756d                      JNZ 0x004be96b
004be8fe  f30f100560abba00          MOVSS XMM0,dword ptr [0x00baab60]
004be906  0f2f854cffffff            COMISS XMM0,dword ptr [EBP + 0xffffff4c]
004be90d  7712                      JA 0x004be921
004be90f  e84c062300                CALL 0x006eef60
004be914  33d2                      XOR EDX,EDX
004be916  b906000000                MOV ECX,0x6
004be91b  f7f1                      DIV ECX
004be91d  85d2                      TEST EDX,EDX
004be91f  7534                      JNZ 0x004be955
004be921  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004be925  753a                      JNZ 0x004be961
004be927  a17816c700                MOV EAX,[0x00c71678]
004be92c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004be932  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004be938  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004be93e  03c1                      ADD EAX,ECX
004be940  33c9                      XOR ECX,ECX
004be942  85c0                      TEST EAX,EAX
004be944  0f4fc8                    CMOVG ECX,EAX
004be947  83f908                    CMP ECX,0x8
004be94a  7d09                      JGE 0x004be955
004be94c  e8bf061c00                CALL 0x0067f010
004be951  85c0                      TEST EAX,EAX
004be953  740c                      JZ 0x004be961
004be955  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004be95f  eb0a                      JMP 0x004be96b
004be961  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004be96b  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004be973  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
004be97b  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004be983  0f2fc8                    COMISS XMM1,XMM0
004be986  7706                      JA 0x004be98e
004be988  f30f10c0                  MOVSS XMM0,XMM0
004be98c  eb04                      JMP 0x004be992
004be98e  f30f10c1                  MOVSS XMM0,XMM1
004be992  f30f59053ca8ba00          MULSS XMM0,dword ptr [0x00baa83c]
004be99a  e801136300                CALL 0x00aefca0
004be99f  6a01                      PUSH 0x1
004be9a1  bb0d000000                MOV EBX,0xd
004be9a6  8d4f48                    LEA ECX,[EDI + 0x48]
004be9a9  68ecfeb500                PUSH 0xb5feec
004be9ae  2bd8                      SUB EBX,EAX
004be9b0  e81bbcf4ff                CALL 0x0040a5d0
004be9b5  84c0                      TEST AL,AL
004be9b7  0f8435040000              JZ 0x004bedf2
004be9bd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004be9c0  85c0                      TEST EAX,EAX
004be9c2  0f842a040000              JZ 0x004bedf2
004be9c8  33c0                      XOR EAX,EAX
004be9ca  8d4f78                    LEA ECX,[EDI + 0x78]
004be9cd  3bc3                      CMP EAX,EBX
004be9cf  1bc0                      SBB EAX,EAX
004be9d1  23c3                      AND EAX,EBX
004be9d3  660f6ec8                  MOVD XMM1,EAX
004be9d7  0f5bc9                    CVTDQ2PS XMM1,XMM1
004be9da  e821a4f4ff                CALL 0x00408e00
004be9df  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004be9e2  85c0                      TEST EAX,EAX
004be9e4  0f8408040000              JZ 0x004bedf2
004be9ea  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004be9f1  e9fc030000                JMP 0x004bedf2
004be9f6  83f808                    CMP EAX,0x8
004be9f9  0f856c030000              JNZ 0x004bed6b
004be9ff  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004bea07  f30f101504a1ba00          MOVSS XMM2,dword ptr [0x00baa104]
004bea0f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004bea17  f30f58ca                  ADDSS XMM1,XMM2
004bea1b  0f2fc1                    COMISS XMM0,XMM1
004bea1e  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004bea26  0f86a1000000              JBE 0x004beacd
004bea2c  f30f58ca                  ADDSS XMM1,XMM2
004bea30  0f2fc8                    COMISS XMM1,XMM0
004bea33  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004bea3b  760d                      JBE 0x004bea4a
004bea3d  c787b40b00000000803f      MOV dword ptr [EDI + 0xbb4],0x3f800000
004bea47  0f28c8                    MOVAPS XMM1,XMM0
004bea4a  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004bea52  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
004bea5a  0f2fc1                    COMISS XMM0,XMM1
004bea5d  7706                      JA 0x004bea65
004bea5f  f30f10c1                  MOVSS XMM0,XMM1
004bea63  eb04                      JMP 0x004bea69
004bea65  f30f10c0                  MOVSS XMM0,XMM0
004bea69  f30f59053ca8ba00          MULSS XMM0,dword ptr [0x00baa83c]
004bea71  e82a126300                CALL 0x00aefca0
004bea76  6a01                      PUSH 0x1
004bea78  bb0d000000                MOV EBX,0xd
004bea7d  8d4f48                    LEA ECX,[EDI + 0x48]
004bea80  68ecfeb500                PUSH 0xb5feec
004bea85  2bd8                      SUB EBX,EAX
004bea87  e844bbf4ff                CALL 0x0040a5d0
004bea8c  84c0                      TEST AL,AL
004bea8e  0f845e030000              JZ 0x004bedf2
004bea94  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004bea97  85c0                      TEST EAX,EAX
004bea99  0f8453030000              JZ 0x004bedf2
004bea9f  33c0                      XOR EAX,EAX
004beaa1  8d4f78                    LEA ECX,[EDI + 0x78]
004beaa4  3bc3                      CMP EAX,EBX
004beaa6  1bc0                      SBB EAX,EAX
004beaa8  23c3                      AND EAX,EBX
004beaaa  660f6ec8                  MOVD XMM1,EAX
004beaae  0f5bc9                    CVTDQ2PS XMM1,XMM1
004beab1  e84aa3f4ff                CALL 0x00408e00
004beab6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004beab9  85c0                      TEST EAX,EAX
004beabb  0f8431030000              JZ 0x004bedf2
004beac1  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004beac8  e925030000                JMP 0x004bedf2
004beacd  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004bead0  85f6                      TEST ESI,ESI
004bead2  7445                      JZ 0x004beb19
004bead4  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004bead8  8bc6                      MOV EAX,ESI
004beada  7202                      JC 0x004beade
004beadc  8b06                      MOV EAX,dword ptr [ESI]
004beade  b9dcd2b100                MOV ECX,0xb1d2dc
004beae3  8a10                      MOV DL,byte ptr [EAX]
004beae5  3a11                      CMP DL,byte ptr [ECX]
004beae7  751a                      JNZ 0x004beb03
004beae9  84d2                      TEST DL,DL
004beaeb  7412                      JZ 0x004beaff
004beaed  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004beaf0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004beaf3  750e                      JNZ 0x004beb03
004beaf5  83c002                    ADD EAX,0x2
004beaf8  83c102                    ADD ECX,0x2
004beafb  84d2                      TEST DL,DL
004beafd  75e4                      JNZ 0x004beae3
004beaff  33c0                      XOR EAX,EAX
004beb01  eb05                      JMP 0x004beb08
004beb03  1bc0                      SBB EAX,EAX
004beb05  83c801                    OR EAX,0x1
004beb08  85c0                      TEST EAX,EAX
004beb0a  750d                      JNZ 0x004beb19
004beb0c  384634                    CMP byte ptr [ESI + 0x34],AL
004beb0f  742a                      JZ 0x004beb3b
004beb11  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004beb17  7522                      JNZ 0x004beb3b
004beb19  6a01                      PUSH 0x1
004beb1b  68dcd2b100                PUSH 0xb1d2dc
004beb20  8d4f48                    LEA ECX,[EDI + 0x48]
004beb23  e8a8baf4ff                CALL 0x0040a5d0
004beb28  84c0                      TEST AL,AL
004beb2a  740f                      JZ 0x004beb3b
004beb2c  8d4f78                    LEA ECX,[EDI + 0x78]
004beb2f  e87cb6f4ff                CALL 0x0040a1b0
004beb34  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004beb3b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004beb3f  0f84fe010000              JZ 0x004bed43
004beb45  68dcd2b100                PUSH 0xb1d2dc
004beb4a  8d4f78                    LEA ECX,[EDI + 0x78]
004beb4d  e87ec2f4ff                CALL 0x0040add0
004beb52  84c0                      TEST AL,AL
004beb54  0f84e9010000              JZ 0x004bed43
004beb5a  51                        PUSH ECX
004beb5b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004beb62  6a00                      PUSH 0x0
004beb64  6a02                      PUSH 0x2
004beb66  51                        PUSH ECX
004beb67  c704240000803f            MOV dword ptr [ESP],0x3f800000
004beb6e  8bcf                      MOV ECX,EDI
004beb70  68b2000000                PUSH 0xb2
004beb75  e826802100                CALL 0x006d6ba0
004beb7a  e8e1032300                CALL 0x006eef60
004beb7f  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
004beb85  e8a603f8ff                CALL 0x0043ef30
004beb8a  8bcf                      MOV ECX,EDI
004beb8c  c78564ffffffcdcccc3f      MOV dword ptr [EBP + 0xffffff64],0x3fcccccd
004beb96  c78574ffffff0ad7233c      MOV dword ptr [EBP + 0xffffff74],0x3c23d70a
004beba0  c7855cffffff8fc2f5bd      MOV dword ptr [EBP + 0xffffff5c],0xbdf5c28f
004bebaa  c7856cffffffcdcc8c3f      MOV dword ptr [EBP + 0xffffff6c],0x3f8ccccd
004bebb4  e887fc1f00                CALL 0x006be840
004bebb9  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004bebc1  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
004bebc9  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004bebd1  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
004bebd9  e882032300                CALL 0x006eef60
004bebde  660f6ec0                  MOVD XMM0,EAX
004bebe2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004bebe6  c1e81f                    SHR EAX,0x1f
004bebe9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004bebf2  660f5ac0                  CVTPD2PS XMM0,XMM0
004bebf6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004bebfe  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004bec06  f30f58c0                  ADDSS XMM0,XMM0
004bec0a  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
004bec12  e849032300                CALL 0x006eef60
004bec17  660f6ec0                  MOVD XMM0,EAX
004bec1b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004bec1f  c1e81f                    SHR EAX,0x1f
004bec22  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004bec2b  660f5ac0                  CVTPD2PS XMM0,XMM0
004bec2f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004bec37  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004bec3f  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
004bec47  e8f4e8f5ff                CALL 0x0041d540
004bec4c  f30f59854cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff4c]
004bec54  8db73c030000              LEA ESI,[EDI + 0x33c]
004bec5a  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004bec62  f30f588548ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff48]
004bec6a  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
004bec6e  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
004bec76  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
004bec7e  e89de8f5ff                CALL 0x0041d520
004bec83  0f28c8                    MOVAPS XMM1,XMM0
004bec86  f30f598d4cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff4c]
004bec8e  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
004bec96  f30f588d34ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff34]
004bec9e  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004beca3  0f28c1                    MOVAPS XMM0,XMM1
004beca6  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
004becae  f30f59c1                  MULSS XMM0,XMM1
004becb2  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
004becba  f30f59c9                  MULSS XMM1,XMM1
004becbe  f30f58c1                  ADDSS XMM0,XMM1
004becc2  e8896df7ff                CALL 0x00435a50
004becc7  0f57c9                    XORPS XMM1,XMM1
004becca  0f2fc1                    COMISS XMM0,XMM1
004beccd  7631                      JBE 0x004bed00
004beccf  f30f100dc8a7ba00          MOVSS XMM1,dword ptr [0x00baa7c8]
004becd7  f30f5ec8                  DIVSS XMM1,XMM0
004becdb  0f28c1                    MOVAPS XMM0,XMM1
004becde  f30f598d4cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff4c]
004bece6  f30f598548ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff48]
004becee  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
004becf6  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004becfe  eb20                      JMP 0x004bed20
004bed00  f30f109548ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff48]
004bed08  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
004bed10  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
004bed18  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004bed20  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004bed26  50                        PUSH EAX
004bed27  e834022300                CALL 0x006eef60
004bed2c  83e001                    AND EAX,0x1
004bed2f  8bcf                      MOV ECX,EDI
004bed31  03c0                      ADD EAX,EAX
004bed33  50                        PUSH EAX
004bed34  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
004bed3a  50                        PUSH EAX
004bed3b  56                        PUSH ESI
004bed3c  e89fc52000                CALL 0x006cb2e0
004bed41  eb06                      JMP 0x004bed49
004bed43  8db73c030000              LEA ESI,[EDI + 0x33c]
004bed49  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004bed4d  740d                      JZ 0x004bed5c
004bed4f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004bed56  0f859c000000              JNZ 0x004bedf8
004bed5c  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004bed66  e98d000000                JMP 0x004bedf8
004bed6b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004bed6e  85f6                      TEST ESI,ESI
004bed70  7445                      JZ 0x004bedb7
004bed72  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004bed76  8bc6                      MOV EAX,ESI
004bed78  7202                      JC 0x004bed7c
004bed7a  8b06                      MOV EAX,dword ptr [ESI]
004bed7c  b93cd6b100                MOV ECX,0xb1d63c
004bed81  8a10                      MOV DL,byte ptr [EAX]
004bed83  3a11                      CMP DL,byte ptr [ECX]
004bed85  751a                      JNZ 0x004beda1
004bed87  84d2                      TEST DL,DL
004bed89  7412                      JZ 0x004bed9d
004bed8b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004bed8e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004bed91  750e                      JNZ 0x004beda1
004bed93  83c002                    ADD EAX,0x2
004bed96  83c102                    ADD ECX,0x2
004bed99  84d2                      TEST DL,DL
004bed9b  75e4                      JNZ 0x004bed81
004bed9d  33c0                      XOR EAX,EAX
004bed9f  eb05                      JMP 0x004beda6
004beda1  1bc0                      SBB EAX,EAX
004beda3  83c801                    OR EAX,0x1
004beda6  85c0                      TEST EAX,EAX
004beda8  750d                      JNZ 0x004bedb7
004bedaa  384634                    CMP byte ptr [ESI + 0x34],AL
004bedad  742a                      JZ 0x004bedd9
004bedaf  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004bedb5  7522                      JNZ 0x004bedd9
004bedb7  6a01                      PUSH 0x1
004bedb9  683cd6b100                PUSH 0xb1d63c
004bedbe  8d4f48                    LEA ECX,[EDI + 0x48]
004bedc1  e80ab8f4ff                CALL 0x0040a5d0
004bedc6  84c0                      TEST AL,AL
004bedc8  740f                      JZ 0x004bedd9
004bedca  8d4f78                    LEA ECX,[EDI + 0x78]
004bedcd  e8deb3f4ff                CALL 0x0040a1b0
004bedd2  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004bedd9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004beddd  7409                      JZ 0x004bede8
004beddf  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004bede6  750a                      JNZ 0x004bedf2
004bede8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004bedf2  8db73c030000              LEA ESI,[EDI + 0x33c]
004bedf8  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004bee00  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004bee08  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004bee0c  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
004bee11  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004bee19  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004bee21  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004bee24  5f                        POP EDI
004bee25  5e                        POP ESI
004bee26  33cd                      XOR ECX,EBP
004bee28  5b                        POP EBX
004bee29  e8fd026300                CALL 0x00aef12b
004bee2e  8be5                      MOV ESP,EBP
004bee30  5d                        POP EBP
004bee31  c3                        RET
