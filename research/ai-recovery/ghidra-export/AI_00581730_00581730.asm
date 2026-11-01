; J460 NPC AI 0x00581730 AI_00581730
; types=911
; identities=911.0.0,911.1.0,911.2.0
; entry=00581730
00581730  53                        PUSH EBX
00581731  8bdc                      MOV EBX,ESP
00581733  83ec08                    SUB ESP,0x8
00581736  83e4f8                    AND ESP,0xfffffff8
00581739  83c404                    ADD ESP,0x4
0058173c  55                        PUSH EBP
0058173d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00581740  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00581744  8bec                      MOV EBP,ESP
00581746  6aff                      PUSH -0x1
00581748  685053af00                PUSH 0xaf5350
0058174d  64a100000000              MOV EAX,FS:[0x0]
00581753  50                        PUSH EAX
00581754  53                        PUSH EBX
00581755  81ecd0010000              SUB ESP,0x1d0
0058175b  a1b493bf00                MOV EAX,[0x00bf93b4]
00581760  33c5                      XOR EAX,EBP
00581762  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00581765  56                        PUSH ESI
00581766  57                        PUSH EDI
00581767  50                        PUSH EAX
00581768  8d45f4                    LEA EAX,[EBP + -0xc]
0058176b  64a300000000              MOV FS:[0x0],EAX
00581771  8bf9                      MOV EDI,ECX
00581773  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0058177b  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
00581783  a17816c700                MOV EAX,[0x00c71678]
00581788  c7876c0300009a99193f      MOV dword ptr [EDI + 0x36c],0x3f19999a
00581792  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00581798  898540feffff              MOV dword ptr [EBP + 0xfffffe40],EAX
0058179e  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
005817a6  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005817ae  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
005817b6  0f2fc8                    COMISS XMM1,XMM0
005817b9  0f97c2                    SETA DL
005817bc  2bf0                      SUB ESI,EAX
005817be  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005817c4  88955bfeffff              MOV byte ptr [EBP + 0xfffffe5b],DL
005817ca  89b530feffff              MOV dword ptr [EBP + 0xfffffe30],ESI
005817d0  83f80d                    CMP EAX,0xd
005817d3  0f87e30f0000              JA 0x005827bc
005817d9  0fb680a0285800            MOVZX EAX,byte ptr [EAX + 0x5828a0]
005817e0  ff248588285800            JMP dword ptr [EAX*0x4 + 0x582888]
005817e7  68804ec300                PUSH 0xc34e80
005817ec  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005817f2  e8f959e8ff                CALL 0x004071f0
005817f7  6a00                      PUSH 0x0
005817f9  8d4f48                    LEA ECX,[EDI + 0x48]
005817fc  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00581806  68e803b600                PUSH 0xb603e8
0058180b  e8708be8ff                CALL 0x0040a380
00581810  c7875003000000002041      MOV dword ptr [EDI + 0x350],0x41200000
0058181a  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00581820  898734030000              MOV dword ptr [EDI + 0x334],EAX
00581826  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0058182c  898738030000              MOV dword ptr [EDI + 0x338],EAX
00581832  e9850f0000                JMP 0x005827bc
00581837  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0058183b  8d4f48                    LEA ECX,[EDI + 0x48]
0058183e  7409                      JZ 0x00581849
00581840  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00581847  752a                      JNZ 0x00581873
00581849  84d2                      TEST DL,DL
0058184b  c78548feffffe803b600      MOV dword ptr [EBP + 0xfffffe48],0xb603e8
00581855  b83020b600                MOV EAX,0xb62030
0058185a  0f448548feffff            CMOVZ EAX,dword ptr [EBP + 0xfffffe48]
00581861  6a00                      PUSH 0x0
00581863  50                        PUSH EAX
00581864  e8178be8ff                CALL 0x0040a380
00581869  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0058186d  0f84ae020000              JZ 0x00581b21
00581873  68dcd2b100                PUSH 0xb1d2dc
00581878  8d4f78                    LEA ECX,[EDI + 0x78]
0058187b  e85095e8ff                CALL 0x0040add0
00581880  84c0                      TEST AL,AL
00581882  0f8499020000              JZ 0x00581b21
00581888  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0058188e  6a06                      PUSH 0x6
00581890  e8db1d1800                CALL 0x00703670
00581895  0fb6855bfeffff            MOVZX EAX,byte ptr [EBP + 0xfffffe5b]
0058189c  51                        PUSH ECX
0058189d  c704240000803f            MOV dword ptr [ESP],0x3f800000
005818a4  0541010000                ADD EAX,0x141
005818a9  6a00                      PUSH 0x0
005818ab  6a02                      PUSH 0x2
005818ad  51                        PUSH ECX
005818ae  c704240000803f            MOV dword ptr [ESP],0x3f800000
005818b5  8bcf                      MOV ECX,EDI
005818b7  50                        PUSH EAX
005818b8  e8e3521500                CALL 0x006d6ba0
005818bd  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
005818c3  85c0                      TEST EAX,EAX
005818c5  0f8e4f020000              JLE 0x00581b1a
005818cb  48                        DEC EAX
005818cc  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
005818d2  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
005818d8  a17816c700                MOV EAX,[0x00c71678]
005818dd  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005818e3  f30f104814                MOVSS XMM1,dword ptr [EAX + 0x14]
005818e8  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
005818f0  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
005818f5  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
005818fd  f30f118d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM1
00581905  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
0058190a  f30f5c0d7ca8ba00          SUBSS XMM1,dword ptr [0x00baa87c]
00581912  f30f118d6cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM1
0058191a  e811d6ebff                CALL 0x0043ef30
0058191f  0f1005c84cc300            MOVUPS XMM0,xmmword ptr [0x00c34cc8]
00581926  a1f04cc300                MOV EAX,[0x00c34cf0]
0058192b  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
00581931  0f118544ffffff            MOVUPS xmmword ptr [EBP + 0xffffff44],XMM0
00581938  c78524ffffff8fc2f53e      MOV dword ptr [EBP + 0xffffff24],0x3ef5c28f
00581942  0f1005d84cc300            MOVUPS XMM0,xmmword ptr [0x00c34cd8]
00581949  c78570ffffff00200100      MOV dword ptr [EBP + 0xffffff70],0x12000
00581953  c78574ffffff01000000      MOV dword ptr [EBP + 0xffffff74],0x1
0058195d  0f118554ffffff            MOVUPS xmmword ptr [EBP + 0xffffff54],XMM0
00581964  c7459800000100            MOV dword ptr [EBP + -0x68],0x10000
0058196b  f30f7e05e84cc300          MOVQ XMM0,qword ptr [0x00c34ce8]
00581973  660fd68564ffffff          MOVQ qword ptr [EBP + 0xffffff64],XMM0
0058197b  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
00581983  f30f5c853cfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffe3c]
0058198b  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
00581992  c745a41e000000            MOV dword ptr [EBP + -0x5c],0x1e
00581999  c78560feffff03000000      MOV dword ptr [EBP + 0xfffffe60],0x3
005819a3  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
005819ab  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005819b0  e8abd51600                CALL 0x006eef60
005819b5  c7852cffffffcdcccc3f      MOV dword ptr [EBP + 0xffffff2c],0x3fcccccd
005819bf  660f6ec0                  MOVD XMM0,EAX
005819c3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005819c7  c1e81f                    SHR EAX,0x1f
005819ca  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005819d3  660f5ac0                  CVTPD2PS XMM0,XMM0
005819d7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005819df  f30f59856cfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffe6c]
005819e7  f30f58853cfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe3c]
005819ef  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
005819f7  e864d51600                CALL 0x006eef60
005819fc  660f6ec0                  MOVD XMM0,EAX
00581a00  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00581a04  c1e81f                    SHR EAX,0x1f
00581a07  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00581a10  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00581a16  50                        PUSH EAX
00581a17  51                        PUSH ECX
00581a18  c7042400000000            MOV dword ptr [ESP],0x0
00581a1f  8bcf                      MOV ECX,EDI
00581a21  660f5ac0                  CVTPD2PS XMM0,XMM0
00581a25  6840b6c700                PUSH 0xc7b640
00581a2a  6a01                      PUSH 0x1
00581a2c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00581a34  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00581a3c  f30f118568feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM0
00581a44  e887b31400                CALL 0x006ccdd0
00581a49  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00581a51  8d4dc0                    LEA ECX,[EBP + -0x40]
00581a54  8bf0                      MOV ESI,EAX
00581a56  6a01                      PUSH 0x1
00581a58  6a01                      PUSH 0x1
00581a5a  6a01                      PUSH 0x1
00581a5c  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
00581a64  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00581a6c  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
00581a74  f30f10852cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff2c]
00581a7c  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
00581a84  f30f108548feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe48]
00581a8c  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
00581a94  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
00581a9c  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00581aa4  f30f108568feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe68]
00581aac  c7866003000000000000      MOV dword ptr [ESI + 0x360],0x0
00581ab6  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00581abe  0f1086b8010000            MOVUPS XMM0,xmmword ptr [ESI + 0x1b8]
00581ac5  6a0f                      PUSH 0xf
00581ac7  51                        PUSH ECX
00581ac8  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00581acc  8bce                      MOV ECX,ESI
00581ace  0f1086c8010000            MOVUPS XMM0,xmmword ptr [ESI + 0x1c8]
00581ad5  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00581ad9  f30f7e86d8010000          MOVQ XMM0,qword ptr [ESI + 0x1d8]
00581ae1  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
00581ae6  8b86e0010000              MOV EAX,dword ptr [ESI + 0x1e0]
00581aec  8945e8                    MOV dword ptr [EBP + -0x18],EAX
00581aef  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00581af6  8b06                      MOV EAX,dword ptr [ESI]
00581af8  ff503c                    CALL dword ptr [EAX + 0x3c]
00581afb  83ad60feffff01            SUB dword ptr [EBP + 0xfffffe60],0x1
00581b02  c78654030000d0070000      MOV dword ptr [ESI + 0x354],0x7d0
00581b0c  0f859efeffff              JNZ 0x005819b0
00581b12  8bb530feffff              MOV ESI,dword ptr [EBP + 0xfffffe30]
00581b18  eb07                      JMP 0x00581b21
00581b1a  8bcf                      MOV ECX,EDI
00581b1c  e80ff9ffff                CALL 0x00581430
00581b21  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00581b27  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00581b2d  03ce                      ADD ECX,ESI
00581b2f  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00581b35  85c0                      TEST EAX,EAX
00581b37  7908                      JNS 0x00581b41
00581b39  03c6                      ADD EAX,ESI
00581b3b  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00581b41  83f91e                    CMP ECX,0x1e
00581b44  0f8c720c0000              JL 0x005827bc
00581b4a  e811d41600                CALL 0x006eef60
00581b4f  33d2                      XOR EDX,EDX
00581b51  b93c000000                MOV ECX,0x3c
00581b56  f7f1                      DIV ECX
00581b58  85d2                      TEST EDX,EDX
00581b5a  0f855c0c0000              JNZ 0x005827bc
00581b60  899710040000              MOV dword ptr [EDI + 0x410],EDX
00581b66  c787a00b0000ffffffff      MOV dword ptr [EDI + 0xba0],0xffffffff
00581b70  89954cfeffff              MOV dword ptr [EBP + 0xfffffe4c],EDX
00581b76  899550feffff              MOV dword ptr [EBP + 0xfffffe50],EDX
00581b7c  899554feffff              MOV dword ptr [EBP + 0xfffffe54],EDX
00581b82  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
00581b88  8955fc                    MOV dword ptr [EBP + -0x4],EDX
00581b8b  50                        PUSH EAX
00581b8c  52                        PUSH EDX
00581b8d  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
00581b93  899564feffff              MOV dword ptr [EBP + 0xfffffe64],EDX
00581b99  c78568feffff0a000000      MOV dword ptr [EBP + 0xfffffe68],0xa
00581ba3  e818f6f1ff                CALL 0x004a11c0
00581ba8  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
00581baf  0f8f03010000              JG 0x00581cb8
00581bb5  8b9550feffff              MOV EDX,dword ptr [EBP + 0xfffffe50]
00581bbb  33c0                      XOR EAX,EAX
00581bbd  8b8d4cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe4c]
00581bc3  8bf2                      MOV ESI,EDX
00581bc5  2bf1                      SUB ESI,ECX
00581bc7  c1fe03                    SAR ESI,0x3
00581bca  85f6                      TEST ESI,ESI
00581bcc  740d                      JZ 0x00581bdb
00581bce  6690                      NOP
00581bd0  833cc101                  CMP dword ptr [ECX + EAX*0x8],0x1
00581bd4  7439                      JZ 0x00581c0f
00581bd6  40                        INC EAX
00581bd7  3bc6                      CMP EAX,ESI
00581bd9  72f5                      JC 0x00581bd0
00581bdb  c78564feffff01000000      MOV dword ptr [EBP + 0xfffffe64],0x1
00581be5  c78568feffff05000000      MOV dword ptr [EBP + 0xfffffe68],0x5
00581bef  3b9554feffff              CMP EDX,dword ptr [EBP + 0xfffffe54]
00581bf5  7429                      JZ 0x00581c20
00581bf7  c70201000000              MOV dword ptr [EDX],0x1
00581bfd  c7420405000000            MOV dword ptr [EDX + 0x4],0x5
00581c04  83c208                    ADD EDX,0x8
00581c07  899550feffff              MOV dword ptr [EBP + 0xfffffe50],EDX
00581c0d  eb30                      JMP 0x00581c3f
00581c0f  8344c10405                ADD dword ptr [ECX + EAX*0x8 + 0x4],0x5
00581c14  7929                      JNS 0x00581c3f
00581c16  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
00581c1e  eb1f                      JMP 0x00581c3f
00581c20  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
00581c26  50                        PUSH EAX
00581c27  52                        PUSH EDX
00581c28  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
00581c2e  e88df5f1ff                CALL 0x004a11c0
00581c33  8b9550feffff              MOV EDX,dword ptr [EBP + 0xfffffe50]
00581c39  8b8d4cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe4c]
00581c3f  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00581c46  7c70                      JL 0x00581cb8
00581c48  8bf2                      MOV ESI,EDX
00581c4a  33c0                      XOR EAX,EAX
00581c4c  2bf1                      SUB ESI,ECX
00581c4e  c1fe03                    SAR ESI,0x3
00581c51  85f6                      TEST ESI,ESI
00581c53  740b                      JZ 0x00581c60
00581c55  833cc102                  CMP dword ptr [ECX + EAX*0x8],0x2
00581c59  7439                      JZ 0x00581c94
00581c5b  40                        INC EAX
00581c5c  3bc6                      CMP EAX,ESI
00581c5e  72f5                      JC 0x00581c55
00581c60  c78564feffff02000000      MOV dword ptr [EBP + 0xfffffe64],0x2
00581c6a  c78568feffff05000000      MOV dword ptr [EBP + 0xfffffe68],0x5
00581c74  3b9554feffff              CMP EDX,dword ptr [EBP + 0xfffffe54]
00581c7a  7429                      JZ 0x00581ca5
00581c7c  c70202000000              MOV dword ptr [EDX],0x2
00581c82  c7420405000000            MOV dword ptr [EDX + 0x4],0x5
00581c89  83c208                    ADD EDX,0x8
00581c8c  899550feffff              MOV dword ptr [EBP + 0xfffffe50],EDX
00581c92  eb24                      JMP 0x00581cb8
00581c94  8344c10405                ADD dword ptr [ECX + EAX*0x8 + 0x4],0x5
00581c99  791d                      JNS 0x00581cb8
00581c9b  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
00581ca3  eb13                      JMP 0x00581cb8
00581ca5  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
00581cab  50                        PUSH EAX
00581cac  52                        PUSH EDX
00581cad  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
00581cb3  e808f5f1ff                CALL 0x004a11c0
00581cb8  e8a3d21600                CALL 0x006eef60
00581cbd  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00581cc5  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
00581ccb  83c801                    OR EAX,0x1
00581cce  660fd68524feffff          MOVQ qword ptr [EBP + 0xfffffe24],XMM0
00581cd6  898520feffff              MOV dword ptr [EBP + 0xfffffe20],EAX
00581cdc  83ec10                    SUB ESP,0x10
00581cdf  a174f6b100                MOV EAX,[0x00b1f674]
00581ce4  89852cfeffff              MOV dword ptr [EBP + 0xfffffe2c],EAX
00581cea  8bc4                      MOV EAX,ESP
00581cec  0f108520feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffe20]
00581cf3  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00581cf6  e8f5aef1ff                CALL 0x0049cbf0
00581cfb  83e800                    SUB EAX,0x0
00581cfe  747b                      JZ 0x00581d7b
00581d00  83e801                    SUB EAX,0x1
00581d03  7431                      JZ 0x00581d36
00581d05  83e801                    SUB EAX,0x1
00581d08  0f8586000000              JNZ 0x00581d94
00581d0e  50                        PUSH EAX
00581d0f  682820b600                PUSH 0xb62028
00581d14  8d4f48                    LEA ECX,[EDI + 0x48]
00581d17  e86486e8ff                CALL 0x0040a380
00581d1c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00581d26  e835d21600                CALL 0x006eef60
00581d2b  83e001                    AND EAX,0x1
00581d2e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00581d34  eb5e                      JMP 0x00581d94
00581d36  6a00                      PUSH 0x0
00581d38  6820d4b100                PUSH 0xb1d420
00581d3d  8d4f48                    LEA ECX,[EDI + 0x48]
00581d40  e83b86e8ff                CALL 0x0040a380
00581d45  51                        PUSH ECX
00581d46  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00581d4d  6a00                      PUSH 0x0
00581d4f  6a0a                      PUSH 0xa
00581d51  51                        PUSH ECX
00581d52  c704240000803f            MOV dword ptr [ESP],0x3f800000
00581d59  8bcf                      MOV ECX,EDI
00581d5b  68a7000000                PUSH 0xa7
00581d60  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00581d6a  e8314e1500                CALL 0x006d6ba0
00581d6f  c787a40b00000a000000      MOV dword ptr [EDI + 0xba4],0xa
00581d79  eb19                      JMP 0x00581d94
00581d7b  6a00                      PUSH 0x0
00581d7d  681ce4b100                PUSH 0xb1e41c
00581d82  8d4f48                    LEA ECX,[EDI + 0x48]
00581d85  e8f685e8ff                CALL 0x0040a380
00581d8a  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00581d94  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00581d9b  8b954cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe4c]
00581da1  85d2                      TEST EDX,EDX
00581da3  0f84130a0000              JZ 0x005827bc
00581da9  8b8d54feffff              MOV ECX,dword ptr [EBP + 0xfffffe54]
00581daf  8bc2                      MOV EAX,EDX
00581db1  2bca                      SUB ECX,EDX
00581db3  83e1f8                    AND ECX,0xfffffff8
00581db6  81f900100000              CMP ECX,0x1000
00581dbc  7216                      JC 0x00581dd4
00581dbe  8b52fc                    MOV EDX,dword ptr [EDX + -0x4]
00581dc1  83c123                    ADD ECX,0x23
00581dc4  2bc2                      SUB EAX,EDX
00581dc6  83c0fc                    ADD EAX,-0x4
00581dc9  83f81f                    CMP EAX,0x1f
00581dcc  7606                      JBE 0x00581dd4
00581dce  ff159488b100              CALL dword ptr [0x00b18894]
00581dd4  51                        PUSH ECX
00581dd5  52                        PUSH EDX
00581dd6  e881d35600                CALL 0x00aef15c
00581ddb  83c408                    ADD ESP,0x8
00581dde  e9d9090000                JMP 0x005827bc
00581de3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00581de7  0f8453020000              JZ 0x00582040
00581ded  68dcd2b100                PUSH 0xb1d2dc
00581df2  8d4f78                    LEA ECX,[EDI + 0x78]
00581df5  e8d68fe8ff                CALL 0x0040add0
00581dfa  84c0                      TEST AL,AL
00581dfc  0f842b020000              JZ 0x0058202d
00581e02  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00581e08  6a0a                      PUSH 0xa
00581e0a  e861181800                CALL 0x00703670
00581e0f  51                        PUSH ECX
00581e10  c704240000803f            MOV dword ptr [ESP],0x3f800000
00581e17  6a00                      PUSH 0x0
00581e19  6a02                      PUSH 0x2
00581e1b  51                        PUSH ECX
00581e1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00581e23  8bcf                      MOV ECX,EDI
00581e25  68d5000000                PUSH 0xd5
00581e2a  e8714d1500                CALL 0x006d6ba0
00581e2f  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00581e35  e8f6d0ebff                CALL 0x0043ef30
00581e3a  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
00581e41  0f57c9                    XORPS XMM1,XMM1
00581e44  c7857cfeffff0000403f      MOV dword ptr [EBP + 0xfffffe7c],0x3f400000
00581e4e  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
00581e58  c785ccfeffff00000200      MOV dword ptr [EBP + 0xfffffecc],0x20000
00581e62  c78584feffffcdcc0c40      MOV dword ptr [EBP + 0xfffffe84],0x400ccccd
00581e6c  c78544feffff00000000      MOV dword ptr [EBP + 0xfffffe44],0x0
00581e76  c78548feffff0000a040      MOV dword ptr [EBP + 0xfffffe48],0x40a00000
00581e80  7516                      JNZ 0x00581e98
00581e82  c78534feffff00000000      MOV dword ptr [EBP + 0xfffffe34],0x0
00581e8c  c78538feffff0000a0c1      MOV dword ptr [EBP + 0xfffffe38],0xc1a00000
00581e96  eb14                      JMP 0x00581eac
00581e98  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
00581ea2  c78568feffff0000a041      MOV dword ptr [EBP + 0xfffffe68],0x41a00000
00581eac  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00581eb4  8d9538feffff              LEA EDX,[EBP + 0xfffffe38]
00581eba  f30f58c1                  ADDSS XMM0,XMM1
00581ebe  8bcf                      MOV ECX,EDI
00581ec0  8d8568feffff              LEA EAX,[EBP + 0xfffffe68]
00581ec6  0f44c2                    CMOVZ EAX,EDX
00581ec9  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
00581ed1  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00581ed5  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
00581edb  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00581ee3  50                        PUSH EAX
00581ee4  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
00581eea  50                        PUSH EAX
00581eeb  8d855cfeffff              LEA EAX,[EBP + 0xfffffe5c]
00581ef1  50                        PUSH EAX
00581ef2  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
00581efa  e831c5ffff                CALL 0x0057e430
00581eff  8d4dc0                    LEA ECX,[EBP + -0x40]
00581f02  e86952e8ff                CALL 0x00407170
00581f07  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
00581f0e  8bd0                      MOV EDX,EAX
00581f10  7516                      JNZ 0x00581f28
00581f12  c78534feffff00000000      MOV dword ptr [EBP + 0xfffffe34],0x0
00581f1c  c78538feffff0000a0c1      MOV dword ptr [EBP + 0xfffffe38],0xc1a00000
00581f26  eb14                      JMP 0x00581f3c
00581f28  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
00581f32  c78568feffff0000a041      MOV dword ptr [EBP + 0xfffffe68],0x41a00000
00581f3c  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00581f44  8d8568feffff              LEA EAX,[EBP + 0xfffffe68]
00581f4a  0f57c9                    XORPS XMM1,XMM1
00581f4d  8db538feffff              LEA ESI,[EBP + 0xfffffe38]
00581f53  f30f58c1                  ADDSS XMM0,XMM1
00581f57  0f44c6                    CMOVZ EAX,ESI
00581f5a  6840b6c700                PUSH 0xc7b640
00581f5f  52                        PUSH EDX
00581f60  6840b6c700                PUSH 0xc7b640
00581f65  8d9544feffff              LEA EDX,[EBP + 0xfffffe44]
00581f6b  b904000000                MOV ECX,0x4
00581f70  f30f118544feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM0
00581f78  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00581f7c  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00581f84  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
00581f8c  e85f5d1500                CALL 0x006d7cf0
00581f91  83c40c                    ADD ESP,0xc
00581f94  8bf0                      MOV ESI,EAX
00581f96  e8c5cf1600                CALL 0x006eef60
00581f9b  660f6ec0                  MOVD XMM0,EAX
00581f9f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00581fa3  c1e81f                    SHR EAX,0x1f
00581fa6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00581faf  660f5ac0                  CVTPD2PS XMM0,XMM0
00581fb3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00581fbb  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00581fc3  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00581fcb  e890cf1600                CALL 0x006eef60
00581fd0  660f6ec0                  MOVD XMM0,EAX
00581fd4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00581fd8  c1e81f                    SHR EAX,0x1f
00581fdb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00581fe4  660f5ac8                  CVTPD2PS XMM1,XMM0
00581fe8  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00581ff0  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00581ff8  f30f580db0a4ba00          ADDSS XMM1,dword ptr [0x00baa4b0]
00582000  0f28c1                    MOVAPS XMM0,XMM1
00582003  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0058200b  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00582013  c78654030000d0070000      MOV dword ptr [ESI + 0x354],0x7d0
0058201d  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00582025  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0058202d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00582031  740d                      JZ 0x00582040
00582033  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0058203a  0f857c070000              JNZ 0x005827bc
00582040  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0058204a  e96d070000                JMP 0x005827bc
0058204f  8d4f48                    LEA ECX,[EDI + 0x48]
00582052  e82987e8ff                CALL 0x0040a780
00582057  a801                      TEST AL,0x1
00582059  75d2                      JNZ 0x0058202d
0058205b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00582061  6a04                      PUSH 0x4
00582063  e808161800                CALL 0x00703670
00582068  ebc3                      JMP 0x0058202d
0058206a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0058206e  7409                      JZ 0x00582079
00582070  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00582077  7522                      JNZ 0x0058209b
00582079  6a00                      PUSH 0x0
0058207b  681420b600                PUSH 0xb62014
00582080  8d4f48                    LEA ECX,[EDI + 0x48]
00582083  e8f882e8ff                CALL 0x0040a380
00582088  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0058208f  7d0a                      JGE 0x0058209b
00582091  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
0058209b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0058209f  8d7778                    LEA ESI,[EDI + 0x78]
005820a2  0f8484000000              JZ 0x0058212c
005820a8  68d4d2b100                PUSH 0xb1d2d4
005820ad  8bce                      MOV ECX,ESI
005820af  e81c8de8ff                CALL 0x0040add0
005820b4  84c0                      TEST AL,AL
005820b6  742a                      JZ 0x005820e2
005820b8  51                        PUSH ECX
005820b9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005820c0  6a00                      PUSH 0x0
005820c2  6a02                      PUSH 0x2
005820c4  51                        PUSH ECX
005820c5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005820cc  8bcf                      MOV ECX,EDI
005820ce  68d4000000                PUSH 0xd4
005820d3  e8c84a1500                CALL 0x006d6ba0
005820d8  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005820e2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005820e6  7444                      JZ 0x0058212c
005820e8  68dcd2b100                PUSH 0xb1d2dc
005820ed  8bce                      MOV ECX,ESI
005820ef  e8dc8ce8ff                CALL 0x0040add0
005820f4  84c0                      TEST AL,AL
005820f6  7434                      JZ 0x0058212c
005820f8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005820fe  6a06                      PUSH 0x6
00582100  e86b151800                CALL 0x00703670
00582105  51                        PUSH ECX
00582106  c704240000803f            MOV dword ptr [ESP],0x3f800000
0058210d  6a00                      PUSH 0x0
0058210f  6a02                      PUSH 0x2
00582111  51                        PUSH ECX
00582112  c704240000803f            MOV dword ptr [ESP],0x3f800000
00582119  8bcf                      MOV ECX,EDI
0058211b  6841010000                PUSH 0x141
00582120  e87b4a1500                CALL 0x006d6ba0
00582125  8bcf                      MOV ECX,EDI
00582127  e804f3ffff                CALL 0x00581430
0058212c  83bd30feffff00            CMP dword ptr [EBP + 0xfffffe30],0x0
00582133  c78548feffff00000000      MOV dword ptr [EBP + 0xfffffe48],0x0
0058213d  0f8e79060000              JLE 0x005827bc
00582143  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
0058214b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00582150  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00582156  85c0                      TEST EAX,EAX
00582158  0f885e060000              JS 0x005827bc
0058215e  40                        INC EAX
0058215f  898568feffff              MOV dword ptr [EBP + 0xfffffe68],EAX
00582165  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0058216b  8d70e2                    LEA ESI,[EAX + -0x1e]
0058216e  83fe3c                    CMP ESI,0x3c
00582171  0f8798020000              JA 0x0058240f
00582177  b889888888                MOV EAX,0x88888889
0058217c  f7ee                      IMUL ESI
0058217e  03d6                      ADD EDX,ESI
00582180  c1fa03                    SAR EDX,0x3
00582183  8bca                      MOV ECX,EDX
00582185  c1e91f                    SHR ECX,0x1f
00582188  03ca                      ADD ECX,EDX
0058218a  8bc1                      MOV EAX,ECX
0058218c  c1e004                    SHL EAX,0x4
0058218f  2bc1                      SUB EAX,ECX
00582191  2bf0                      SUB ESI,EAX
00582193  0f8570020000              JNZ 0x00582409
00582199  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005821a0  8bb540feffff              MOV ESI,dword ptr [EBP + 0xfffffe40]
005821a6  740b                      JZ 0x005821b3
005821a8  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
005821ad  f30f58c1                  ADDSS XMM0,XMM1
005821b1  eb09                      JMP 0x005821bc
005821b3  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
005821b8  f30f5cc1                  SUBSS XMM0,XMM1
005821bc  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
005821c4  e897cd1600                CALL 0x006eef60
005821c9  a801                      TEST AL,0x1
005821cb  7519                      JNZ 0x005821e6
005821cd  8bcf                      MOV ECX,EDI
005821cf  e86cc61300                CALL 0x006be840
005821d4  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005821dc  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
005821e4  eb52                      JMP 0x00582238
005821e6  e875cd1600                CALL 0x006eef60
005821eb  f30f105620                MOVSS XMM2,dword ptr [ESI + 0x20]
005821f0  0f57c0                    XORPS XMM0,XMM0
005821f3  f30f5c1504a9ba00          SUBSS XMM2,dword ptr [0x00baa904]
005821fb  f20f2ac0                  CVTSI2SD XMM0,EAX
005821ff  c1e81f                    SHR EAX,0x1f
00582202  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0058220b  660f5ac8                  CVTPD2PS XMM1,XMM0
0058220f  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
00582214  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0058221c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00582224  f30f5cd0                  SUBSS XMM2,XMM0
00582228  f30f59d1                  MULSS XMM2,XMM1
0058222c  f30f58d0                  ADDSS XMM2,XMM0
00582230  f30f11953cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM2
00582238  e823cd1600                CALL 0x006eef60
0058223d  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
00582245  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0058224b  50                        PUSH EAX
0058224c  6a00                      PUSH 0x0
0058224e  57                        PUSH EDI
0058224f  6840b6c700                PUSH 0xc7b640
00582254  8d8528feffff              LEA EAX,[EBP + 0xfffffe28]
0058225a  f30f118528feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM0
00582262  f30f10853cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe3c]
0058226a  50                        PUSH EAX
0058226b  6a00                      PUSH 0x0
0058226d  6a37                      PUSH 0x37
0058226f  f30f11852cfeffff          MOVSS dword ptr [EBP + 0xfffffe2c],XMM0
00582277  e8a468eaff                CALL 0x00428b20
0058227c  8bf0                      MOV ESI,EAX
0058227e  89b538feffff              MOV dword ptr [EBP + 0xfffffe38],ESI
00582284  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0058228a  8b16                      MOV EDX,dword ptr [ESI]
0058228c  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00582293  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
00582299  8bce                      MOV ECX,ESI
0058229b  ff520c                    CALL dword ptr [EDX + 0xc]
0058229e  c786640b000005000000      MOV dword ptr [ESI + 0xb64],0x5
005822a8  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
005822b2  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005822b9  740a                      JZ 0x005822c5
005822bb  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
005822c3  eb08                      JMP 0x005822cd
005822c5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005822cd  f30f590548a5ba00          MULSS XMM0,dword ptr [0x00baa548]
005822d5  8d4e48                    LEA ECX,[ESI + 0x48]
005822d8  c7863803000000000000      MOV dword ptr [ESI + 0x338],0x0
005822e2  898d68feffff              MOV dword ptr [EBP + 0xfffffe68],ECX
005822e8  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
005822f0  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
005822f3  85c9                      TEST ECX,ECX
005822f5  744c                      JZ 0x00582343
005822f7  83791410                  CMP dword ptr [ECX + 0x14],0x10
005822fb  8bc1                      MOV EAX,ECX
005822fd  7202                      JC 0x00582301
005822ff  8b01                      MOV EAX,dword ptr [ECX]
00582301  b9940db600                MOV ECX,0xb60d94
00582306  8a10                      MOV DL,byte ptr [EAX]
00582308  3a11                      CMP DL,byte ptr [ECX]
0058230a  751a                      JNZ 0x00582326
0058230c  84d2                      TEST DL,DL
0058230e  7412                      JZ 0x00582322
00582310  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00582313  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00582316  750e                      JNZ 0x00582326
00582318  83c002                    ADD EAX,0x2
0058231b  83c102                    ADD ECX,0x2
0058231e  84d2                      TEST DL,DL
00582320  75e4                      JNZ 0x00582306
00582322  33c0                      XOR EAX,EAX
00582324  eb05                      JMP 0x0058232b
00582326  1bc0                      SBB EAX,EAX
00582328  83c801                    OR EAX,0x1
0058232b  8d4e48                    LEA ECX,[ESI + 0x48]
0058232e  85c0                      TEST EAX,EAX
00582330  7514                      JNZ 0x00582346
00582332  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
00582335  80783400                  CMP byte ptr [EAX + 0x34],0x0
00582339  7433                      JZ 0x0058236e
0058233b  80794400                  CMP byte ptr [ECX + 0x44],0x0
0058233f  752d                      JNZ 0x0058236e
00582341  eb03                      JMP 0x00582346
00582343  8d4e48                    LEA ECX,[ESI + 0x48]
00582346  6a01                      PUSH 0x1
00582348  68940db600                PUSH 0xb60d94
0058234d  e87e82e8ff                CALL 0x0040a5d0
00582352  84c0                      TEST AL,AL
00582354  7418                      JZ 0x0058236e
00582356  8bb568feffff              MOV ESI,dword ptr [EBP + 0xfffffe68]
0058235c  8d4e30                    LEA ECX,[ESI + 0x30]
0058235f  e84c7ee8ff                CALL 0x0040a1b0
00582364  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00582368  8bb538feffff              MOV ESI,dword ptr [EBP + 0xfffffe38]
0058236e  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00582375  0f95c0                    SETNZ AL
00582378  888648010000              MOV byte ptr [ESI + 0x148],AL
0058237e  e8ddcb1600                CALL 0x006eef60
00582383  660f6ec0                  MOVD XMM0,EAX
00582387  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0058238b  c1e81f                    SHR EAX,0x1f
0058238e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00582397  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0058239d  660f5ac0                  CVTPD2PS XMM0,XMM0
005823a1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005823a9  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
005823b1  f30f580518a4ba00          ADDSS XMM0,dword ptr [0x00baa418]
005823b9  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
005823c1  83f812                    CMP EAX,0x12
005823c4  751f                      JNZ 0x005823e5
005823c6  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005823ce  c78560feffffdd000000      MOV dword ptr [EBP + 0xfffffe60],0xdd
005823d8  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
005823e0  e944020000                JMP 0x00582629
005823e5  83f813                    CMP EAX,0x13
005823e8  7510                      JNZ 0x005823fa
005823ea  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005823f2  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
005823fa  c78560feffffdd000000      MOV dword ptr [EBP + 0xfffffe60],0xdd
00582404  e920020000                JMP 0x00582629
00582409  8b8568feffff              MOV EAX,dword ptr [EBP + 0xfffffe68]
0058240f  83f878                    CMP EAX,0x78
00582412  0f8557020000              JNZ 0x0058266f
00582418  e843cb1600                CALL 0x006eef60
0058241d  33d2                      XOR EDX,EDX
0058241f  b903000000                MOV ECX,0x3
00582424  f7f1                      DIV ECX
00582426  85d2                      TEST EDX,EDX
00582428  0f8541020000              JNZ 0x0058266f
0058242e  8b8540feffff              MOV EAX,dword ptr [EBP + 0xfffffe40]
00582434  3997c00b0000              CMP dword ptr [EDI + 0xbc0],EDX
0058243a  740f                      JZ 0x0058244b
0058243c  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
00582441  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
00582449  eb0d                      JMP 0x00582458
0058244b  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00582450  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00582458  8bcf                      MOV ECX,EDI
0058245a  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
00582462  e8d9c31300                CALL 0x006be840
00582467  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0058246f  f30f118568feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM0
00582477  e8e4ca1600                CALL 0x006eef60
0058247c  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
00582484  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0058248a  50                        PUSH EAX
0058248b  6a00                      PUSH 0x0
0058248d  57                        PUSH EDI
0058248e  6840b6c700                PUSH 0xc7b640
00582493  8d8550feffff              LEA EAX,[EBP + 0xfffffe50]
00582499  f30f118550feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM0
005824a1  f30f108568feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe68]
005824a9  50                        PUSH EAX
005824aa  6a00                      PUSH 0x0
005824ac  6856030000                PUSH 0x356
005824b1  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
005824b9  e86266eaff                CALL 0x00428b20
005824be  8bf0                      MOV ESI,EAX
005824c0  89b538feffff              MOV dword ptr [EBP + 0xfffffe38],ESI
005824c6  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
005824cc  8b16                      MOV EDX,dword ptr [ESI]
005824ce  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
005824d5  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
005824db  8bce                      MOV ECX,ESI
005824dd  ff520c                    CALL dword ptr [EDX + 0xc]
005824e0  c786640b000005000000      MOV dword ptr [ESI + 0xb64],0x5
005824ea  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
005824f4  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005824fb  740a                      JZ 0x00582507
005824fd  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00582505  eb08                      JMP 0x0058250f
00582507  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0058250f  8d4e48                    LEA ECX,[ESI + 0x48]
00582512  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0058251a  c7863803000000000000      MOV dword ptr [ESI + 0x338],0x0
00582524  898d68feffff              MOV dword ptr [EBP + 0xfffffe68],ECX
0058252a  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
0058252d  85c9                      TEST ECX,ECX
0058252f  744c                      JZ 0x0058257d
00582531  83791410                  CMP dword ptr [ECX + 0x14],0x10
00582535  8bc1                      MOV EAX,ECX
00582537  7202                      JC 0x0058253b
00582539  8b01                      MOV EAX,dword ptr [ECX]
0058253b  b93c04b600                MOV ECX,0xb6043c
00582540  8a10                      MOV DL,byte ptr [EAX]
00582542  3a11                      CMP DL,byte ptr [ECX]
00582544  751a                      JNZ 0x00582560
00582546  84d2                      TEST DL,DL
00582548  7412                      JZ 0x0058255c
0058254a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0058254d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00582550  750e                      JNZ 0x00582560
00582552  83c002                    ADD EAX,0x2
00582555  83c102                    ADD ECX,0x2
00582558  84d2                      TEST DL,DL
0058255a  75e4                      JNZ 0x00582540
0058255c  33c0                      XOR EAX,EAX
0058255e  eb05                      JMP 0x00582565
00582560  1bc0                      SBB EAX,EAX
00582562  83c801                    OR EAX,0x1
00582565  8d4e48                    LEA ECX,[ESI + 0x48]
00582568  85c0                      TEST EAX,EAX
0058256a  7514                      JNZ 0x00582580
0058256c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0058256f  80783400                  CMP byte ptr [EAX + 0x34],0x0
00582573  7433                      JZ 0x005825a8
00582575  80794400                  CMP byte ptr [ECX + 0x44],0x0
00582579  752d                      JNZ 0x005825a8
0058257b  eb03                      JMP 0x00582580
0058257d  8d4e48                    LEA ECX,[ESI + 0x48]
00582580  6a01                      PUSH 0x1
00582582  683c04b600                PUSH 0xb6043c
00582587  e84480e8ff                CALL 0x0040a5d0
0058258c  84c0                      TEST AL,AL
0058258e  7418                      JZ 0x005825a8
00582590  8bb568feffff              MOV ESI,dword ptr [EBP + 0xfffffe68]
00582596  8d4e30                    LEA ECX,[ESI + 0x30]
00582599  e8127ce8ff                CALL 0x0040a1b0
0058259e  c6464401                  MOV byte ptr [ESI + 0x44],0x1
005825a2  8bb538feffff              MOV ESI,dword ptr [EBP + 0xfffffe38]
005825a8  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005825af  0f95c0                    SETNZ AL
005825b2  888648010000              MOV byte ptr [ESI + 0x148],AL
005825b8  e8a3c91600                CALL 0x006eef60
005825bd  660f6ec0                  MOVD XMM0,EAX
005825c1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005825c5  c1e81f                    SHR EAX,0x1f
005825c8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005825d1  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
005825d7  660f5ac0                  CVTPD2PS XMM0,XMM0
005825db  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005825e3  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
005825eb  f30f580518a4ba00          ADDSS XMM0,dword ptr [0x00baa418]
005825f3  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
005825fb  83f812                    CMP EAX,0x12
005825fe  750a                      JNZ 0x0058260a
00582600  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00582608  eb0d                      JMP 0x00582617
0058260a  83f813                    CMP EAX,0x13
0058260d  7510                      JNZ 0x0058261f
0058260f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00582617  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
0058261f  c78560fefffffe010000      MOV dword ptr [EBP + 0xfffffe60],0x1fe
00582629  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0058262f  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
00582635  e846413d00                CALL 0x00956780
0058263a  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
00582642  83ec08                    SUB ESP,0x8
00582645  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0058264d  f30f110424                MOVSS dword ptr [ESP],XMM0
00582652  6a00                      PUSH 0x0
00582654  6a02                      PUSH 0x2
00582656  51                        PUSH ECX
00582657  c704240000803f            MOV dword ptr [ESP],0x3f800000
0058265e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00582664  ffb560feffff              PUSH dword ptr [EBP + 0xfffffe60]
0058266a  e8c1b53a00                CALL 0x0092dc30
0058266f  81bfa00b000096000000      CMP dword ptr [EDI + 0xba0],0x96
00582679  0f8e1c010000              JLE 0x0058279b
0058267f  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00582689  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0058268c  85f6                      TEST ESI,ESI
0058268e  744b                      JZ 0x005826db
00582690  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00582694  8bc6                      MOV EAX,ESI
00582696  7202                      JC 0x0058269a
00582698  8b06                      MOV EAX,dword ptr [ESI]
0058269a  b94c20b600                MOV ECX,0xb6204c
0058269f  90                        NOP
005826a0  8a10                      MOV DL,byte ptr [EAX]
005826a2  3a11                      CMP DL,byte ptr [ECX]
005826a4  751a                      JNZ 0x005826c0
005826a6  84d2                      TEST DL,DL
005826a8  7412                      JZ 0x005826bc
005826aa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005826ad  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005826b0  750e                      JNZ 0x005826c0
005826b2  83c002                    ADD EAX,0x2
005826b5  83c102                    ADD ECX,0x2
005826b8  84d2                      TEST DL,DL
005826ba  75e4                      JNZ 0x005826a0
005826bc  33c0                      XOR EAX,EAX
005826be  eb05                      JMP 0x005826c5
005826c0  1bc0                      SBB EAX,EAX
005826c2  83c801                    OR EAX,0x1
005826c5  85c0                      TEST EAX,EAX
005826c7  7512                      JNZ 0x005826db
005826c9  384634                    CMP byte ptr [ESI + 0x34],AL
005826cc  742f                      JZ 0x005826fd
005826ce  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005826d4  8d4f48                    LEA ECX,[EDI + 0x48]
005826d7  7524                      JNZ 0x005826fd
005826d9  eb03                      JMP 0x005826de
005826db  8d4f48                    LEA ECX,[EDI + 0x48]
005826de  6a01                      PUSH 0x1
005826e0  684c20b600                PUSH 0xb6204c
005826e5  e8e67ee8ff                CALL 0x0040a5d0
005826ea  84c0                      TEST AL,AL
005826ec  740f                      JZ 0x005826fd
005826ee  8d4f78                    LEA ECX,[EDI + 0x78]
005826f1  e8ba7ae8ff                CALL 0x0040a1b0
005826f6  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005826fd  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00582705  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0058270b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00582715  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
0058271d  83f812                    CMP EAX,0x12
00582720  750a                      JNZ 0x0058272c
00582722  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0058272a  eb0d                      JMP 0x00582739
0058272c  83f813                    CMP EAX,0x13
0058272f  7510                      JNZ 0x00582741
00582731  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00582739  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
00582741  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00582747  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
0058274d  c78560feffffd5000000      MOV dword ptr [EBP + 0xfffffe60],0xd5
00582757  e824403d00                CALL 0x00956780
0058275c  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
00582764  83ec08                    SUB ESP,0x8
00582767  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0058276f  f30f110424                MOVSS dword ptr [ESP],XMM0
00582774  6a00                      PUSH 0x0
00582776  6a02                      PUSH 0x2
00582778  51                        PUSH ECX
00582779  c704240000803f            MOV dword ptr [ESP],0x3f800000
00582780  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00582786  ffb560feffff              PUSH dword ptr [EBP + 0xfffffe60]
0058278c  e89fb43a00                CALL 0x0092dc30
00582791  c787c00b0000a6ffffff      MOV dword ptr [EDI + 0xbc0],0xffffffa6
0058279b  8b8d48feffff              MOV ECX,dword ptr [EBP + 0xfffffe48]
005827a1  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
005827a9  41                        INC ECX
005827aa  898d48feffff              MOV dword ptr [EBP + 0xfffffe48],ECX
005827b0  3b8d30feffff              CMP ECX,dword ptr [EBP + 0xfffffe30]
005827b6  0f8c94f9ffff              JL 0x00582150
005827bc  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005827c3  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005827cb  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005827d3  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005827db  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005827e3  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005827eb  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005827f3  7472                      JZ 0x00582867
005827f5  8b9540feffff              MOV EDX,dword ptr [EBP + 0xfffffe40]
005827fb  33c9                      XOR ECX,ECX
005827fd  398a64120000              CMP dword ptr [EDX + 0x1264],ECX
00582803  763f                      JBE 0x00582844
00582805  8b825c120000              MOV EAX,dword ptr [EDX + 0x125c]
0058280b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0058280e  85c0                      TEST EAX,EAX
00582810  7429                      JZ 0x0058283b
00582812  83782809                  CMP dword ptr [EAX + 0x28],0x9
00582816  7523                      JNZ 0x0058283b
00582818  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
0058281e  751b                      JNZ 0x0058283b
00582820  81a038040000fffffeff      AND dword ptr [EAX + 0x438],0xfffeffff
0058282a  81a03c040000fffffdff      AND dword ptr [EAX + 0x43c],0xfffdffff
00582834  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
0058283b  41                        INC ECX
0058283c  3b8a64120000              CMP ECX,dword ptr [EDX + 0x1264]
00582842  72c1                      JC 0x00582805
00582844  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0058284a  6a32                      PUSH 0x32
0058284c  e81f0e1800                CALL 0x00703670
00582851  6a00                      PUSH 0x0
00582853  6a0a                      PUSH 0xa
00582855  ba0f000000                MOV EDX,0xf
0058285a  b9b0285800                MOV ECX,0x5828b0
0058285f  e89c860800                CALL 0x0060af00
00582864  83c408                    ADD ESP,0x8
00582867  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0058286a  64890d00000000            MOV dword ptr FS:[0x0],ECX
00582871  59                        POP ECX
00582872  5f                        POP EDI
00582873  5e                        POP ESI
00582874  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00582877  33cd                      XOR ECX,EBP
00582879  e8adc85600                CALL 0x00aef12b
0058287e  8be5                      MOV ESP,EBP
00582880  5d                        POP EBP
00582881  8be3                      MOV ESP,EBX
00582883  5b                        POP EBX
00582884  c3                        RET
