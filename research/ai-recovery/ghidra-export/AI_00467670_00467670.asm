; J460 NPC AI 0x00467670 AI_00467670
; types=69
; identities=69.0.0,69.1.0
; entry=00467670
00467670  53                        PUSH EBX
00467671  8bdc                      MOV EBX,ESP
00467673  83ec08                    SUB ESP,0x8
00467676  83e4f8                    AND ESP,0xfffffff8
00467679  83c404                    ADD ESP,0x4
0046767c  55                        PUSH EBP
0046767d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00467680  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00467684  8bec                      MOV EBP,ESP
00467686  6aff                      PUSH -0x1
00467688  68b027af00                PUSH 0xaf27b0
0046768d  64a100000000              MOV EAX,FS:[0x0]
00467693  50                        PUSH EAX
00467694  53                        PUSH EBX
00467695  81eca8010000              SUB ESP,0x1a8
0046769b  a1b493bf00                MOV EAX,[0x00bf93b4]
004676a0  33c5                      XOR EAX,EBP
004676a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004676a5  56                        PUSH ESI
004676a6  57                        PUSH EDI
004676a7  50                        PUSH EAX
004676a8  8d45f4                    LEA EAX,[EBP + -0xc]
004676ab  64a300000000              MOV FS:[0x0],EAX
004676b1  8bf9                      MOV EDI,ECX
004676b3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004676ba  0f8522010000              JNZ 0x004677e2
004676c0  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004676c8  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004676ce  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004676d6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004676de  818f6801000000000800      OR dword ptr [EDI + 0x168],0x80000
004676e8  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004676f0  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004676f4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004676fe  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00467704  0f85370a0000              JNZ 0x00468141
0046770a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00467711  0f852a0a0000              JNZ 0x00468141
00467717  a17816c700                MOV EAX,[0x00c71678]
0046771c  33f6                      XOR ESI,ESI
0046771e  56                        PUSH ESI
0046771f  56                        PUSH ESI
00467720  6aff                      PUSH -0x1
00467722  6a01                      PUSH 0x1
00467724  ff7728                    PUSH dword ptr [EDI + 0x28]
00467727  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00467731  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00467737  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0046773d  81c118120000              ADD ECX,0x1218
00467743  50                        PUSH EAX
00467744  e81738fbff                CALL 0x0041af60
00467749  33ff                      XOR EDI,EDI
0046774b  8975fc                    MOV dword ptr [EBP + -0x4],ESI
0046774e  39bd64feffff              CMP dword ptr [EBP + 0xfffffe64],EDI
00467754  7658                      JBE 0x004677ae
00467756  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00467760  8b855cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe5c]
00467766  6a00                      PUSH 0x0
00467768  68acd6c500                PUSH 0xc5d6ac
0046776d  68dcd5c500                PUSH 0xc5d5dc
00467772  6a00                      PUSH 0x0
00467774  ff34b8                    PUSH dword ptr [EAX + EDI*0x4]
00467777  e835916800                CALL 0x00af08b1
0046777c  83c414                    ADD ESP,0x14
0046777f  83b8c00b000000            CMP dword ptr [EAX + 0xbc0],0x0
00467786  0f44f0                    CMOVZ ESI,EAX
00467789  47                        INC EDI
0046778a  3bbd64feffff              CMP EDI,dword ptr [EBP + 0xfffffe64]
00467790  72ce                      JC 0x00467760
00467792  85f6                      TEST ESI,ESI
00467794  7418                      JZ 0x004677ae
00467796  c786c00b000002000000      MOV dword ptr [ESI + 0xbc0],0x2
004677a0  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
004677a7  c6864801000001            MOV byte ptr [ESI + 0x148],0x1
004677ae  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004677b5  80bd58feffff00            CMP byte ptr [EBP + 0xfffffe58],0x0
004677bc  0f857f090000              JNZ 0x00468141
004677c2  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004677c9  b101                      MOV CL,0x1
004677cb  8b955cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe5c]
004677d1  6a00                      PUSH 0x0
004677d3  6a00                      PUSH 0x0
004677d5  e8d6d05f00                CALL 0x00a648b0
004677da  83c408                    ADD ESP,0x8
004677dd  e95f090000                JMP 0x00468141
004677e2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004677e6  8d4f78                    LEA ECX,[EDI + 0x78]
004677e9  898d68feffff              MOV dword ptr [EBP + 0xfffffe68],ECX
004677ef  0f843a010000              JZ 0x0046792f
004677f5  8bf1                      MOV ESI,ECX
004677f7  68d0dfb100                PUSH 0xb1dfd0
004677fc  89b56cfeffff              MOV dword ptr [EBP + 0xfffffe6c],ESI
00467802  e8c935faff                CALL 0x0040add0
00467807  8bce                      MOV ECX,ESI
00467809  898d68feffff              MOV dword ptr [EBP + 0xfffffe68],ECX
0046780f  84c0                      TEST AL,AL
00467811  7456                      JZ 0x00467869
00467813  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00467819  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
0046781f  c78568feffffb5030000      MOV dword ptr [EBP + 0xfffffe68],0x3b5
00467829  e852ef4e00                CALL 0x00956780
0046782e  83ec08                    SUB ESP,0x8
00467831  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00467839  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467840  6a00                      PUSH 0x0
00467842  6a02                      PUSH 0x2
00467844  51                        PUSH ECX
00467845  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046784c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00467852  ffb568feffff              PUSH dword ptr [EBP + 0xfffffe68]
00467858  e8d3634c00                CALL 0x0092dc30
0046785d  8b8d6cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe6c]
00467863  898d68feffff              MOV dword ptr [EBP + 0xfffffe68],ECX
00467869  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046786d  0f84bc000000              JZ 0x0046792f
00467873  6860d5b100                PUSH 0xb1d560
00467878  e85335faff                CALL 0x0040add0
0046787d  84c0                      TEST AL,AL
0046787f  744a                      JZ 0x004678cb
00467881  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00467887  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
0046788d  c7856cfeffffb6030000      MOV dword ptr [EBP + 0xfffffe6c],0x3b6
00467897  e8e4ee4e00                CALL 0x00956780
0046789c  83ec08                    SUB ESP,0x8
0046789f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004678a7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004678ae  6a00                      PUSH 0x0
004678b0  6a02                      PUSH 0x2
004678b2  51                        PUSH ECX
004678b3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004678ba  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004678c0  ffb56cfeffff              PUSH dword ptr [EBP + 0xfffffe6c]
004678c6  e865634c00                CALL 0x0092dc30
004678cb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004678cf  745e                      JZ 0x0046792f
004678d1  8b8d68feffff              MOV ECX,dword ptr [EBP + 0xfffffe68]
004678d7  68fcdfb100                PUSH 0xb1dffc
004678dc  e8ef34faff                CALL 0x0040add0
004678e1  84c0                      TEST AL,AL
004678e3  744a                      JZ 0x0046792f
004678e5  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004678eb  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
004678f1  c7856cfeffffb7030000      MOV dword ptr [EBP + 0xfffffe6c],0x3b7
004678fb  e880ee4e00                CALL 0x00956780
00467900  83ec08                    SUB ESP,0x8
00467903  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0046790b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467912  6a00                      PUSH 0x0
00467914  6a02                      PUSH 0x2
00467916  51                        PUSH ECX
00467917  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046791e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00467924  ffb56cfeffff              PUSH dword ptr [EBP + 0xfffffe6c]
0046792a  e801634c00                CALL 0x0092dc30
0046792f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00467937  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046793f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00467947  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0046794a  85c9                      TEST ECX,ECX
0046794c  7422                      JZ 0x00467970
0046794e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00467955  7419                      JZ 0x00467970
00467957  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0046795d  83c0fd                    ADD EAX,-0x3
00467960  83f807                    CMP EAX,0x7
00467963  0f87d8070000              JA 0x00468141
00467969  ff248560814600            JMP dword ptr [EAX*0x4 + 0x468160]
00467970  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00467976  83f806                    CMP EAX,0x6
00467979  74e2                      JZ 0x0046795d
0046797b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00467985  6a00                      PUSH 0x0
00467987  8d8f14040000              LEA ECX,[EDI + 0x414]
0046798d  e86ee93700                CALL 0x007e6300
00467992  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0046799a  b9e4dcb100                MOV ECX,0xb1dce4
0046799f  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004679a7  b854bcb100                MOV EAX,0xb1bc54
004679ac  f30f59c9                  MULSS XMM1,XMM1
004679b0  6a00                      PUSH 0x0
004679b2  f30f59c0                  MULSS XMM0,XMM0
004679b6  f30f58c8                  ADDSS XMM1,XMM0
004679ba  0f2f0d54a4ba00            COMISS XMM1,dword ptr [0x00baa454]
004679c1  0f47c1                    CMOVA EAX,ECX
004679c4  8d4f48                    LEA ECX,[EDI + 0x48]
004679c7  50                        PUSH EAX
004679c8  e8b329faff                CALL 0x0040a380
004679cd  6800000010                PUSH 0x10000000
004679d2  6a00                      PUSH 0x0
004679d4  8bcf                      MOV ECX,EDI
004679d6  e855fafaff                CALL 0x00417430
004679db  84c0                      TEST AL,AL
004679dd  7418                      JZ 0x004679f7
004679df  a17816c700                MOV EAX,[0x00c71678]
004679e4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004679ea  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004679ed  f6404401                  TEST byte ptr [EAX + 0x44],0x1
004679f1  0f85a0010000              JNZ 0x00467b97
004679f7  8bcf                      MOV ECX,EDI
004679f9  e8426e2500                CALL 0x006be840
004679fe  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00467a06  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
00467a0e  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
00467a16  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00467a1e  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00467a26  f30f118568feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM0
00467a2e  e82d752800                CALL 0x006eef60
00467a33  33d2                      XOR EDX,EDX
00467a35  b928000000                MOV ECX,0x28
00467a3a  f7f1                      DIV ECX
00467a3c  85d2                      TEST EDX,EDX
00467a3e  7570                      JNZ 0x00467ab0
00467a40  f30f108568feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe68]
00467a48  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
00467a50  f30f59c0                  MULSS XMM0,XMM0
00467a54  f30f59c9                  MULSS XMM1,XMM1
00467a58  f30f58c8                  ADDSS XMM1,XMM0
00467a5c  f30f100578acba00          MOVSS XMM0,dword ptr [0x00baac78]
00467a64  0f2fc1                    COMISS XMM0,XMM1
00467a67  7647                      JBE 0x00467ab0
00467a69  52                        PUSH EDX
00467a6a  68f0dfb100                PUSH 0xb1dff0
00467a6f  8d4f48                    LEA ECX,[EDI + 0x48]
00467a72  e80929faff                CALL 0x0040a380
00467a77  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00467a7f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00467a87  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00467a8f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00467a97  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00467aa1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00467aab  e991060000                JMP 0x00468141
00467ab0  e8ab742800                CALL 0x006eef60
00467ab5  33d2                      XOR EDX,EDX
00467ab7  b98c000000                MOV ECX,0x8c
00467abc  f7f1                      DIV ECX
00467abe  85d2                      TEST EDX,EDX
00467ac0  7527                      JNZ 0x00467ae9
00467ac2  52                        PUSH EDX
00467ac3  6848d5b100                PUSH 0xb1d548
00467ac8  8d4f48                    LEA ECX,[EDI + 0x48]
00467acb  e8b028faff                CALL 0x0040a380
00467ad0  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00467ada  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00467ae4  e958060000                JMP 0x00468141
00467ae9  e872742800                CALL 0x006eef60
00467aee  33d2                      XOR EDX,EDX
00467af0  b964000000                MOV ECX,0x64
00467af5  f7f1                      DIV ECX
00467af7  85d2                      TEST EDX,EDX
00467af9  7527                      JNZ 0x00467b22
00467afb  52                        PUSH EDX
00467afc  683cd5b100                PUSH 0xb1d53c
00467b01  8d4f48                    LEA ECX,[EDI + 0x48]
00467b04  e87728faff                CALL 0x0040a380
00467b09  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00467b13  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00467b1d  e91f060000                JMP 0x00468141
00467b22  e839742800                CALL 0x006eef60
00467b27  33d2                      XOR EDX,EDX
00467b29  b946000000                MOV ECX,0x46
00467b2e  f7f1                      DIV ECX
00467b30  85d2                      TEST EDX,EDX
00467b32  7563                      JNZ 0x00467b97
00467b34  a17816c700                MOV EAX,[0x00c71678]
00467b39  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00467b3f  8bb0c4120000              MOV ESI,dword ptr [EAX + 0x12c4]
00467b45  03b0c0120000              ADD ESI,dword ptr [EAX + 0x12c0]
00467b4b  e810742800                CALL 0x006eef60
00467b50  33d2                      XOR EDX,EDX
00467b52  b903000000                MOV ECX,0x3
00467b57  f7f1                      DIV ECX
00467b59  33c0                      XOR EAX,EAX
00467b5b  03d1                      ADD EDX,ECX
00467b5d  85f6                      TEST ESI,ESI
00467b5f  0f4fc6                    CMOVG EAX,ESI
00467b62  3bc2                      CMP EAX,EDX
00467b64  7d31                      JGE 0x00467b97
00467b66  e8f5732800                CALL 0x006eef60
00467b6b  33d2                      XOR EDX,EDX
00467b6d  b903000000                MOV ECX,0x3
00467b72  f7f1                      DIV ECX
00467b74  85d2                      TEST EDX,EDX
00467b76  7406                      JZ 0x00467b7e
00467b78  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00467b7c  7519                      JNZ 0x00467b97
00467b7e  6a00                      PUSH 0x0
00467b80  6854d5b100                PUSH 0xb1d554
00467b85  8d4f48                    LEA ECX,[EDI + 0x48]
00467b88  e8f327faff                CALL 0x0040a380
00467b8d  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00467b97  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00467ba1  e99b050000                JMP 0x00468141
00467ba6  85c9                      TEST ECX,ECX
00467ba8  0f84f6010000              JZ 0x00467da4
00467bae  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00467bb5  0f84e9010000              JZ 0x00467da4
00467bbb  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00467bc1  c7856cfeffff05000000      MOV dword ptr [EBP + 0xfffffe6c],0x5
00467bcb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00467bd0  51                        PUSH ECX
00467bd1  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
00467bd7  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
00467bdd  c704240000a041            MOV dword ptr [ESP],0x41a00000
00467be4  50                        PUSH EAX
00467be5  e8e66d3b00                CALL 0x0081e9d0
00467bea  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00467bf2  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
00467bfa  f30f5cc1                  SUBSS XMM0,XMM1
00467bfe  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00467c06  a17816c700                MOV EAX,[0x00c71678]
00467c0b  f30f5ec1                  DIVSS XMM0,XMM1
00467c0f  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00467c15  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00467c1d  f30f2cd0                  CVTTSS2SI EDX,XMM0
00467c21  f30f108564feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe64]
00467c29  f30f5cc3                  SUBSS XMM0,XMM3
00467c2d  f30f5ec1                  DIVSS XMM0,XMM1
00467c31  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00467c39  f30f2cf0                  CVTTSS2SI ESI,XMM0
00467c3d  85d2                      TEST EDX,EDX
00467c3f  7817                      JS 0x00467c58
00467c41  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00467c44  3bd1                      CMP EDX,ECX
00467c46  7d10                      JGE 0x00467c58
00467c48  85f6                      TEST ESI,ESI
00467c4a  780c                      JS 0x00467c58
00467c4c  3b7010                    CMP ESI,dword ptr [EAX + 0x10]
00467c4f  7d07                      JGE 0x00467c58
00467c51  0faff1                    IMUL ESI,ECX
00467c54  03f2                      ADD ESI,EDX
00467c56  eb06                      JMP 0x00467c5e
00467c58  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00467c5b  83ceff                    OR ESI,0xffffffff
00467c5e  8bc6                      MOV EAX,ESI
00467c60  99                        CDQ
00467c61  f7f9                      IDIV ECX
00467c63  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00467c69  660f6ed0                  MOVD XMM2,EAX
00467c6d  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
00467c73  660f6ec2                  MOVD XMM0,EDX
00467c77  0f5bc0                    CVTDQ2PS XMM0,XMM0
00467c7a  50                        PUSH EAX
00467c7b  0f5bd2                    CVTDQ2PS XMM2,XMM2
00467c7e  f30f59c1                  MULSS XMM0,XMM1
00467c82  f30f59d1                  MULSS XMM2,XMM1
00467c86  f30f58c1                  ADDSS XMM0,XMM1
00467c8a  f30f58d3                  ADDSS XMM2,XMM3
00467c8e  f30f118568feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM0
00467c96  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
00467c9e  f30f119554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM2
00467ca6  f30f119564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM2
00467cae  e89dbc2900                CALL 0x00703950
00467cb3  f30f10a568feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe68]
00467cbb  f30f10ad54feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffe54]
00467cc3  0f28cc                    MOVAPS XMM1,XMM4
00467cc6  f30f10357ca8ba00          MOVSS XMM6,dword ptr [0x00baa87c]
00467cce  0f28d5                    MOVAPS XMM2,XMM5
00467cd1  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00467cd9  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
00467ce1  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00467ce7  0f28c1                    MOVAPS XMM0,XMM1
00467cea  0f28da                    MOVAPS XMM3,XMM2
00467ced  f30f59c1                  MULSS XMM0,XMM1
00467cf1  f30f59da                  MULSS XMM3,XMM2
00467cf5  f30f58d8                  ADDSS XMM3,XMM0
00467cf9  f30f100540cbba00          MOVSS XMM0,dword ptr [0x00bacb40]
00467d01  0f54c8                    ANDPS XMM1,XMM0
00467d04  0f2ff1                    COMISS XMM6,XMM1
00467d07  7708                      JA 0x00467d11
00467d09  0f54d0                    ANDPS XMM2,XMM0
00467d0c  0f2ff2                    COMISS XMM6,XMM2
00467d0f  760d                      JBE 0x00467d1e
00467d11  f30f10058cacba00          MOVSS XMM0,dword ptr [0x00baac8c]
00467d19  0f2fc3                    COMISS XMM0,XMM3
00467d1c  7738                      JA 0x00467d56
00467d1e  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
00467d26  0f2fc3                    COMISS XMM0,XMM3
00467d29  772b                      JA 0x00467d56
00467d2b  81febf010000              CMP ESI,0x1bf
00467d31  7713                      JA 0x00467d46
00467d33  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
00467d39  81bcb06c070000f4010000    CMP dword ptr [EAX + ESI*0x4 + 0x76c],0x1f4
00467d44  7d10                      JGE 0x00467d56
00467d46  f30f11a734030000          MOVSS dword ptr [EDI + 0x334],XMM4
00467d4e  f30f11af38030000          MOVSS dword ptr [EDI + 0x338],XMM5
00467d56  8b8d6cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe6c]
00467d5c  8bc1                      MOV EAX,ECX
00467d5e  49                        DEC ECX
00467d5f  898d6cfeffff              MOV dword ptr [EBP + 0xfffffe6c],ECX
00467d65  85c0                      TEST EAX,EAX
00467d67  0f8ed4030000              JLE 0x00468141
00467d6d  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00467d75  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00467d7c  9f                        LAHF
00467d7d  f6c444                    TEST AH,0x44
00467d80  0f8abb030000              JP 0x00468141
00467d86  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00467d8e  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00467d95  9f                        LAHF
00467d96  f6c444                    TEST AH,0x44
00467d99  0f8b31feffff              JNP 0x00467bd0
00467d9f  e99d030000                JMP 0x00468141
00467da4  6a00                      PUSH 0x0
00467da6  6810e0b100                PUSH 0xb1e010
00467dab  8d4f48                    LEA ECX,[EDI + 0x48]
00467dae  e8cd25faff                CALL 0x0040a380
00467db3  8d8f34030000              LEA ECX,[EDI + 0x334]
00467db9  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00467dc3  6840b6c700                PUSH 0xc7b640
00467dc8  e863885a00                CALL 0x00a10630
00467dcd  84c0                      TEST AL,AL
00467dcf  0f846c030000              JZ 0x00468141
00467dd5  8b01                      MOV EAX,dword ptr [ECX]
00467dd7  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00467ddd  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00467de0  898740030000              MOV dword ptr [EDI + 0x340],EAX
00467de6  e956030000                JMP 0x00468141
00467deb  68dcd2b100                PUSH 0xb1d2dc
00467df0  8d4f48                    LEA ECX,[EDI + 0x48]
00467df3  e83832faff                CALL 0x0040b030
00467df8  84c0                      TEST AL,AL
00467dfa  0f8441030000              JZ 0x00468141
00467e00  6800000010                PUSH 0x10000000
00467e05  6a00                      PUSH 0x0
00467e07  8bcf                      MOV ECX,EDI
00467e09  e822f6faff                CALL 0x00417430
00467e0e  84c0                      TEST AL,AL
00467e10  7418                      JZ 0x00467e2a
00467e12  6a00                      PUSH 0x0
00467e14  51                        PUSH ECX
00467e15  ff772c                    PUSH dword ptr [EDI + 0x2c]
00467e18  8bcf                      MOV ECX,EDI
00467e1a  6a19                      PUSH 0x19
00467e1c  e8bf492400                CALL 0x006ac7e0
00467e21  83f803                    CMP EAX,0x3
00467e24  0f8317030000              JNC 0x00468141
00467e2a  51                        PUSH ECX
00467e2b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467e32  6a00                      PUSH 0x0
00467e34  6a02                      PUSH 0x2
00467e36  51                        PUSH ECX
00467e37  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467e3e  8bcf                      MOV ECX,EDI
00467e40  6809010000                PUSH 0x109
00467e45  e856ed2600                CALL 0x006d6ba0
00467e4a  e811712800                CALL 0x006eef60
00467e4f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00467e55  8d973c030000              LEA EDX,[EDI + 0x33c]
00467e5b  50                        PUSH EAX
00467e5c  6a00                      PUSH 0x0
00467e5e  57                        PUSH EDI
00467e5f  6840b6c700                PUSH 0xc7b640
00467e64  52                        PUSH EDX
00467e65  ff772c                    PUSH dword ptr [EDI + 0x2c]
00467e68  6a19                      PUSH 0x19
00467e6a  e8b10cfcff                CALL 0x00428b20
00467e6f  6800000010                PUSH 0x10000000
00467e74  6a00                      PUSH 0x0
00467e76  8bcf                      MOV ECX,EDI
00467e78  8bf0                      MOV ESI,EAX
00467e7a  e8b1f5faff                CALL 0x00417430
00467e7f  84c0                      TEST AL,AL
00467e81  0f84ba020000              JZ 0x00468141
00467e87  c7868003000000002041      MOV dword ptr [ESI + 0x380],0x41200000
00467e91  c7868403000000002041      MOV dword ptr [ESI + 0x384],0x41200000
00467e9b  e9a1020000                JMP 0x00468141
00467ea0  68dcd2b100                PUSH 0xb1d2dc
00467ea5  8d4f48                    LEA ECX,[EDI + 0x48]
00467ea8  e88331faff                CALL 0x0040b030
00467ead  84c0                      TEST AL,AL
00467eaf  0f848c020000              JZ 0x00468141
00467eb5  51                        PUSH ECX
00467eb6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467ebd  6a00                      PUSH 0x0
00467ebf  6a02                      PUSH 0x2
00467ec1  51                        PUSH ECX
00467ec2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467ec9  8bcf                      MOV ECX,EDI
00467ecb  6a19                      PUSH 0x19
00467ecd  e8ceec2600                CALL 0x006d6ba0
00467ed2  51                        PUSH ECX
00467ed3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467eda  6a00                      PUSH 0x0
00467edc  6a02                      PUSH 0x2
00467ede  51                        PUSH ECX
00467edf  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467ee6  8bcf                      MOV ECX,EDI
00467ee8  68b9030000                PUSH 0x3b9
00467eed  e8aeec2600                CALL 0x006d6ba0
00467ef2  6840b6c700                PUSH 0xc7b640
00467ef7  8d4dc0                    LEA ECX,[EBP + -0x40]
00467efa  8db73c030000              LEA ESI,[EDI + 0x33c]
00467f00  e86bf2f9ff                CALL 0x00407170
00467f05  50                        PUSH EAX
00467f06  6840b6c700                PUSH 0xc7b640
00467f0b  8bd6                      MOV EDX,ESI
00467f0d  b903000000                MOV ECX,0x3
00467f12  e8d9fd2600                CALL 0x006d7cf0
00467f17  83c40c                    ADD ESP,0xc
00467f1a  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00467f20  e80b70fdff                CALL 0x0043ef30
00467f25  50                        PUSH EAX
00467f26  6a08                      PUSH 0x8
00467f28  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
00467f2e  c78560feffff00004041      MOV dword ptr [EBP + 0xfffffe60],0x41400000
00467f38  50                        PUSH EAX
00467f39  56                        PUSH ESI
00467f3a  8bcf                      MOV ECX,EDI
00467f3c  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
00467f46  e895332600                CALL 0x006cb2e0
00467f4b  e9f1010000                JMP 0x00468141
00467f50  68dcd2b100                PUSH 0xb1d2dc
00467f55  8d4f48                    LEA ECX,[EDI + 0x48]
00467f58  e8d330faff                CALL 0x0040b030
00467f5d  84c0                      TEST AL,AL
00467f5f  0f84dc010000              JZ 0x00468141
00467f65  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00467f6b  85c0                      TEST EAX,EAX
00467f6d  0f858f000000              JNZ 0x00468002
00467f73  51                        PUSH ECX
00467f74  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467f7b  50                        PUSH EAX
00467f7c  6a02                      PUSH 0x2
00467f7e  51                        PUSH ECX
00467f7f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467f86  8bcf                      MOV ECX,EDI
00467f88  6a19                      PUSH 0x19
00467f8a  e811ec2600                CALL 0x006d6ba0
00467f8f  51                        PUSH ECX
00467f90  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467f97  6a00                      PUSH 0x0
00467f99  6a02                      PUSH 0x2
00467f9b  51                        PUSH ECX
00467f9c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467fa3  8bcf                      MOV ECX,EDI
00467fa5  68b8030000                PUSH 0x3b8
00467faa  e8f1eb2600                CALL 0x006d6ba0
00467faf  6840b6c700                PUSH 0xc7b640
00467fb4  8d4dc0                    LEA ECX,[EBP + -0x40]
00467fb7  8db73c030000              LEA ESI,[EDI + 0x33c]
00467fbd  e8aef1f9ff                CALL 0x00407170
00467fc2  50                        PUSH EAX
00467fc3  6840b6c700                PUSH 0xc7b640
00467fc8  8bd6                      MOV EDX,ESI
00467fca  b903000000                MOV ECX,0x3
00467fcf  e81cfd2600                CALL 0x006d7cf0
00467fd4  83c40c                    ADD ESP,0xc
00467fd7  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00467fdd  e84e6ffdff                CALL 0x0043ef30
00467fe2  50                        PUSH EAX
00467fe3  c78560feffff00004041      MOV dword ptr [EBP + 0xfffffe60],0x41400000
00467fed  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
00467ff3  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
00467ffd  e92e010000                JMP 0x00468130
00468002  83f801                    CMP EAX,0x1
00468005  0f8592000000              JNZ 0x0046809d
0046800b  51                        PUSH ECX
0046800c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00468013  6a00                      PUSH 0x0
00468015  6a02                      PUSH 0x2
00468017  51                        PUSH ECX
00468018  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046801f  8bcf                      MOV ECX,EDI
00468021  6a19                      PUSH 0x19
00468023  e878eb2600                CALL 0x006d6ba0
00468028  51                        PUSH ECX
00468029  c704240000803f            MOV dword ptr [ESP],0x3f800000
00468030  6a00                      PUSH 0x0
00468032  6a02                      PUSH 0x2
00468034  51                        PUSH ECX
00468035  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046803c  8bcf                      MOV ECX,EDI
0046803e  68b8030000                PUSH 0x3b8
00468043  e858eb2600                CALL 0x006d6ba0
00468048  6840b6c700                PUSH 0xc7b640
0046804d  8d4dc0                    LEA ECX,[EBP + -0x40]
00468050  8db73c030000              LEA ESI,[EDI + 0x33c]
00468056  e815f1f9ff                CALL 0x00407170
0046805b  50                        PUSH EAX
0046805c  6840b6c700                PUSH 0xc7b640
00468061  8bd6                      MOV EDX,ESI
00468063  b903000000                MOV ECX,0x3
00468068  e883fc2600                CALL 0x006d7cf0
0046806d  83c40c                    ADD ESP,0xc
00468070  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00468076  e8b56efdff                CALL 0x0043ef30
0046807b  50                        PUSH EAX
0046807c  c78560feffff00004041      MOV dword ptr [EBP + 0xfffffe60],0x41400000
00468086  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046808c  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
00468096  6a07                      PUSH 0x7
00468098  e995000000                JMP 0x00468132
0046809d  83f802                    CMP EAX,0x2
004680a0  0f8595000000              JNZ 0x0046813b
004680a6  51                        PUSH ECX
004680a7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004680ae  6a00                      PUSH 0x0
004680b0  50                        PUSH EAX
004680b1  51                        PUSH ECX
004680b2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004680b9  8bcf                      MOV ECX,EDI
004680bb  6a19                      PUSH 0x19
004680bd  e8deea2600                CALL 0x006d6ba0
004680c2  51                        PUSH ECX
004680c3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004680ca  6a00                      PUSH 0x0
004680cc  6a02                      PUSH 0x2
004680ce  51                        PUSH ECX
004680cf  c704240000803f            MOV dword ptr [ESP],0x3f800000
004680d6  8bcf                      MOV ECX,EDI
004680d8  68b8030000                PUSH 0x3b8
004680dd  e8beea2600                CALL 0x006d6ba0
004680e2  6840b6c700                PUSH 0xc7b640
004680e7  8d4dc0                    LEA ECX,[EBP + -0x40]
004680ea  8db73c030000              LEA ESI,[EDI + 0x33c]
004680f0  e87bf0f9ff                CALL 0x00407170
004680f5  50                        PUSH EAX
004680f6  6840b6c700                PUSH 0xc7b640
004680fb  8bd6                      MOV EDX,ESI
004680fd  b903000000                MOV ECX,0x3
00468102  e8e9fb2600                CALL 0x006d7cf0
00468107  83c40c                    ADD ESP,0xc
0046810a  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00468110  e81b6efdff                CALL 0x0043ef30
00468115  50                        PUSH EAX
00468116  c7854cfeffff00004041      MOV dword ptr [EBP + 0xfffffe4c],0x41400000
00468120  8d854cfeffff              LEA EAX,[EBP + 0xfffffe4c]
00468126  c78550feffff00000000      MOV dword ptr [EBP + 0xfffffe50],0x0
00468130  6a06                      PUSH 0x6
00468132  50                        PUSH EAX
00468133  56                        PUSH ESI
00468134  8bcf                      MOV ECX,EDI
00468136  e8a5312600                CALL 0x006cb2e0
0046813b  ff8710040000              INC dword ptr [EDI + 0x410]
00468141  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00468144  64890d00000000            MOV dword ptr FS:[0x0],ECX
0046814b  59                        POP ECX
0046814c  5f                        POP EDI
0046814d  5e                        POP ESI
0046814e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00468151  33cd                      XOR ECX,EBP
00468153  e8d36f6800                CALL 0x00aef12b
00468158  8be5                      MOV ESP,EBP
0046815a  5d                        POP EBP
0046815b  8be3                      MOV ESP,EBX
0046815d  5b                        POP EBX
0046815e  c3                        RET
