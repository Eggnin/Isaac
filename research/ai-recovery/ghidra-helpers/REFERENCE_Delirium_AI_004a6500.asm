; J460 NPC AI 0x004a6500 REFERENCE_Delirium_AI
; types=412
; identities=reference_duplicate
; entry=004a6500
004a6500  55                        PUSH EBP
004a6501  8bec                      MOV EBP,ESP
004a6503  6aff                      PUSH -0x1
004a6505  682f31af00                PUSH 0xaf312f
004a650a  64a100000000              MOV EAX,FS:[0x0]
004a6510  50                        PUSH EAX
004a6511  81ecb4000000              SUB ESP,0xb4
004a6517  a1b493bf00                MOV EAX,[0x00bf93b4]
004a651c  33c5                      XOR EAX,EBP
004a651e  8945f0                    MOV dword ptr [EBP + -0x10],EAX
004a6521  53                        PUSH EBX
004a6522  56                        PUSH ESI
004a6523  57                        PUSH EDI
004a6524  50                        PUSH EAX
004a6525  8d45f4                    LEA EAX,[EBP + -0xc]
004a6528  64a300000000              MOV FS:[0x0],EAX
004a652e  8bd9                      MOV EBX,ECX
004a6530  895db0                    MOV dword ptr [EBP + -0x50],EBX
004a6533  f30f109384030000          MOVSS XMM2,dword ptr [EBX + 0x384]
004a653b  0f57c9                    XORPS XMM1,XMM1
004a653e  f30f108380030000          MOVSS XMM0,dword ptr [EBX + 0x380]
004a6546  0f2eca                    UCOMISS XMM1,XMM2
004a6549  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004a654e  f30f11559c                MOVSS dword ptr [EBP + -0x64],XMM2
004a6553  9f                        LAHF
004a6554  f6c444                    TEST AH,0x44
004a6557  7a1c                      JP 0x004a6575
004a6559  68d81bb800                PUSH 0xb81bd8
004a655e  6a10                      PUSH 0x10
004a6560  e85bad5600                CALL 0x00a112c0
004a6565  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004a656a  83c408                    ADD ESP,0x8
004a656d  f30f10559c                MOVSS XMM2,dword ptr [EBP + -0x64]
004a6572  0f57c9                    XORPS XMM1,XMM1
004a6575  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
004a657c  f30f5cc1                  SUBSS XMM0,XMM1
004a6580  f30f5cd1                  SUBSS XMM2,XMM1
004a6584  f30f5ec2                  DIVSS XMM0,XMM2
004a6588  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004a6590  f30f5fc1                  MAXSS XMM0,XMM1
004a6594  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
004a6599  f30f5dc2                  MINSS XMM0,XMM2
004a659d  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004a65a5  f30f58c1                  ADDSS XMM0,XMM1
004a65a9  f30f2cc0                  CVTTSS2SI EAX,XMM0
004a65ad  f30f1004c530c6c500        MOVSS XMM0,dword ptr [EAX*0x8 + 0xc5c630]
004a65b6  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004a65bb  f30f1004c534c6c500        MOVSS XMM0,dword ptr [EAX*0x8 + 0xc5c634]
004a65c4  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004a65cc  0f84f3010000              JZ 0x004a67c5
004a65d2  ffb3e80b0000              PUSH dword ptr [EBX + 0xbe8]
004a65d8  8b93cc0b0000              MOV EDX,dword ptr [EBX + 0xbcc]
004a65de  8b8bc80b0000              MOV ECX,dword ptr [EBX + 0xbc8]
004a65e4  53                        PUSH EBX
004a65e5  e856fcffff                CALL 0x004a6240
004a65ea  a17816c700                MOV EAX,[0x00c71678]
004a65ef  33ff                      XOR EDI,EDI
004a65f1  83c408                    ADD ESP,0x8
004a65f4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004a65fa  39b864120000              CMP dword ptr [EAX + 0x1264],EDI
004a6600  0f86d9000000              JBE 0x004a66df
004a6606  8bd8                      MOV EBX,EAX
004a6608  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004a6610  8b835c120000              MOV EAX,dword ptr [EBX + 0x125c]
004a6616  8b34b8                    MOV ESI,dword ptr [EAX + EDI*0x4]
004a6619  a17816c700                MOV EAX,[0x00c71678]
004a661e  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
004a6621  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004a6628  7c05                      JL 0x004a662f
004a662a  83f901                    CMP ECX,0x1
004a662d  740a                      JZ 0x004a6639
004a662f  8d41f6                    LEA EAX,[ECX + -0xa]
004a6632  3ddd030000                CMP EAX,0x3dd
004a6637  772a                      JA 0x004a6663
004a6639  8b06                      MOV EAX,dword ptr [ESI]
004a663b  8bce                      MOV ECX,ESI
004a663d  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
004a6640  ffd0                      CALL EAX
004a6642  84c0                      TEST AL,AL
004a6644  741d                      JZ 0x004a6663
004a6646  817e2862030000            CMP dword ptr [ESI + 0x28],0x362
004a664d  7414                      JZ 0x004a6663
004a664f  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004a6655  2500000020                AND EAX,0x20000000
004a665a  83c800                    OR EAX,0x0
004a665d  7504                      JNZ 0x004a6663
004a665f  b001                      MOV AL,0x1
004a6661  eb02                      JMP 0x004a6665
004a6663  32c0                      XOR AL,AL
004a6665  84c0                      TEST AL,AL
004a6667  7459                      JZ 0x004a66c2
004a6669  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004a6671  8d4dc8                    LEA ECX,[EBP + -0x38]
004a6674  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a667c  8b06                      MOV EAX,dword ptr [ESI]
004a667e  51                        PUSH ECX
004a667f  8bce                      MOV ECX,ESI
004a6681  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
004a6688  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004a668f  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
004a6696  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004a669d  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
004a66a2  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004a66a7  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004a66ac  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004a66b1  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004a66b8  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
004a66bf  ff5024                    CALL dword ptr [EAX + 0x24]
004a66c2  837e2809                  CMP dword ptr [ESI + 0x28],0x9
004a66c6  7507                      JNZ 0x004a66cf
004a66c8  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
004a66cf  47                        INC EDI
004a66d0  3bbb64120000              CMP EDI,dword ptr [EBX + 0x1264]
004a66d6  0f8234ffffff              JC 0x004a6610
004a66dc  8b5db0                    MOV EBX,dword ptr [EBP + -0x50]
004a66df  f30f109b70030000          MOVSS XMM3,dword ptr [EBX + 0x370]
004a66e7  8dbb3c030000              LEA EDI,[EBX + 0x33c]
004a66ed  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a66f3  8d45a0                    LEA EAX,[EBP + -0x60]
004a66f6  83ec0c                    SUB ESP,0xc
004a66f9  c6837301000000            MOV byte ptr [EBX + 0x173],0x0
004a6700  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004a6706  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
004a670c  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
004a6712  f30f111c24                MOVSS dword ptr [ESP],XMM3
004a6717  57                        PUSH EDI
004a6718  50                        PUSH EAX
004a6719  e832c83600                CALL 0x00812f50
004a671e  8b03                      MOV EAX,dword ptr [EBX]
004a6720  8bcb                      MOV ECX,EBX
004a6722  ff5044                    CALL dword ptr [EAX + 0x44]
004a6725  8b03                      MOV EAX,dword ptr [EBX]
004a6727  8b7004                    MOV ESI,dword ptr [EAX + 0x4]
004a672a  e831882400                CALL 0x006eef60
004a672f  50                        PUSH EAX
004a6730  6a00                      PUSH 0x0
004a6732  6a00                      PUSH 0x0
004a6734  689c010000                PUSH 0x19c
004a6739  8bcb                      MOV ECX,EBX
004a673b  ffd6                      CALL ESI
004a673d  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
004a6742  8d4b48                    LEA ECX,[EBX + 0x48]
004a6745  f30f1107                  MOVSS dword ptr [EDI],XMM0
004a6749  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
004a674e  6a01                      PUSH 0x1
004a6750  6854bcb100                PUSH 0xb1bc54
004a6755  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
004a675a  e8713ef6ff                CALL 0x0040a5d0
004a675f  84c0                      TEST AL,AL
004a6761  740f                      JZ 0x004a6772
004a6763  8d4b78                    LEA ECX,[EBX + 0x78]
004a6766  e8453af6ff                CALL 0x0040a1b0
004a676b  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
004a6772  c683d30b000011            MOV byte ptr [EBX + 0xbd3],0x11
004a6779  b805000000                MOV EAX,0x5
004a677e  668983d00b0000            MOV word ptr [EBX + 0xbd0],AX
004a6785  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a678d  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
004a6795  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a679d  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
004a67a5  c783800300000000803f      MOV dword ptr [EBX + 0x380],0x3f800000
004a67af  c683b003000001            MOV byte ptr [EBX + 0x3b0],0x1
004a67b6  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
004a67c0  e9561b0000                JMP 0x004a831b
004a67c5  8a83d30b0000              MOV AL,byte ptr [EBX + 0xbd3]
004a67cb  3c11                      CMP AL,0x11
004a67cd  0f8511010000              JNZ 0x004a68e4
004a67d3  80bb5101000000            CMP byte ptr [EBX + 0x151],0x0
004a67da  7413                      JZ 0x004a67ef
004a67dc  8d4b78                    LEA ECX,[EBX + 0x78]
004a67df  e84c28f6ff                CALL 0x00409030
004a67e4  8d8b98000000              LEA ECX,[EBX + 0x98]
004a67ea  e84128f6ff                CALL 0x00409030
004a67ef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a67f5  83b93865020000            CMP dword ptr [ECX + 0x26538],0x0
004a67fc  0f8fbd000000              JG 0x004a68bf
004a6802  0fb793d00b0000            MOVZX EDX,word ptr [EBX + 0xbd0]
004a6809  b83f000000                MOV EAX,0x3f
004a680e  83fa01                    CMP EDX,0x1
004a6811  be11000000                MOV ESI,0x11
004a6816  0f44c6                    CMOVZ EAX,ESI
004a6819  660f6ec2                  MOVD XMM0,EDX
004a681d  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a6820  50                        PUSH EAX
004a6821  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004a6829  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004a6831  f30f2cc0                  CVTTSS2SI EAX,XMM0
004a6835  50                        PUSH EAX
004a6836  e8b5f12500                CALL 0x007059f0
004a683b  b8ffff0000                MOV EAX,0xffff
004a6840  660183d00b0000            ADD word ptr [EBX + 0xbd0],AX
004a6847  7576                      JNZ 0x004a68bf
004a6849  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004a684f  8d4dac                    LEA ECX,[EBP + -0x54]
004a6852  b80a000000                MOV EAX,0xa
004a6857  c683d30b000012            MOV byte ptr [EBX + 0xbd3],0x12
004a685e  668983d00b0000            MOV word ptr [EBX + 0xbd0],AX
004a6865  c745aca7000000            MOV dword ptr [EBP + -0x54],0xa7
004a686c  e80fff4a00                CALL 0x00956780
004a6871  83ec08                    SUB ESP,0x8
004a6874  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004a687c  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004a6883  6a00                      PUSH 0x0
004a6885  6a02                      PUSH 0x2
004a6887  51                        PUSH ECX
004a6888  c704240000a040            MOV dword ptr [ESP],0x40a00000
004a688f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004a6895  ff75ac                    PUSH dword ptr [EBP + -0x54]
004a6898  e893734800                CALL 0x0092dc30
004a689d  8d4b48                    LEA ECX,[EBX + 0x48]
004a68a0  6a01                      PUSH 0x1
004a68a2  682ce9b100                PUSH 0xb1e92c
004a68a7  e8243df6ff                CALL 0x0040a5d0
004a68ac  84c0                      TEST AL,AL
004a68ae  740f                      JZ 0x004a68bf
004a68b0  8d4b78                    LEA ECX,[EBX + 0x78]
004a68b3  e8f838f6ff                CALL 0x0040a1b0
004a68b8  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
004a68bf  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a68c7  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
004a68cf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a68d7  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
004a68df  e9371a0000                JMP 0x004a831b
004a68e4  3c12                      CMP AL,0x12
004a68e6  0f8535010000              JNZ 0x004a6a21
004a68ec  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
004a68ef  85f6                      TEST ESI,ESI
004a68f1  0f84cc000000              JZ 0x004a69c3
004a68f7  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
004a68fe  744c                      JZ 0x004a694c
004a6900  8bc6                      MOV EAX,ESI
004a6902  83781410                  CMP dword ptr [EAX + 0x14],0x10
004a6906  7202                      JC 0x004a690a
004a6908  8b00                      MOV EAX,dword ptr [EAX]
004a690a  b92ce9b100                MOV ECX,0xb1e92c
004a690f  90                        NOP
004a6910  8a10                      MOV DL,byte ptr [EAX]
004a6912  3a11                      CMP DL,byte ptr [ECX]
004a6914  751a                      JNZ 0x004a6930
004a6916  84d2                      TEST DL,DL
004a6918  7412                      JZ 0x004a692c
004a691a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a691d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a6920  750e                      JNZ 0x004a6930
004a6922  83c002                    ADD EAX,0x2
004a6925  83c102                    ADD ECX,0x2
004a6928  84d2                      TEST DL,DL
004a692a  75e4                      JNZ 0x004a6910
004a692c  33c0                      XOR EAX,EAX
004a692e  eb05                      JMP 0x004a6935
004a6930  1bc0                      SBB EAX,EAX
004a6932  83c801                    OR EAX,0x1
004a6935  85c0                      TEST EAX,EAX
004a6937  7513                      JNZ 0x004a694c
004a6939  8d4b48                    LEA ECX,[EBX + 0x48]
004a693c  e8bf27f6ff                CALL 0x00409100
004a6941  8d4b48                    LEA ECX,[EBX + 0x48]
004a6944  e8b727f6ff                CALL 0x00409100
004a6949  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
004a694c  85f6                      TEST ESI,ESI
004a694e  7473                      JZ 0x004a69c3
004a6950  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
004a6957  756a                      JNZ 0x004a69c3
004a6959  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
004a695c  85c0                      TEST EAX,EAX
004a695e  740a                      JZ 0x004a696a
004a6960  83781410                  CMP dword ptr [EAX + 0x14],0x10
004a6964  7209                      JC 0x004a696f
004a6966  8b00                      MOV EAX,dword ptr [EAX]
004a6968  eb05                      JMP 0x004a696f
004a696a  b8eca4b100                MOV EAX,0xb1a4ec
004a696f  b92ce9b100                MOV ECX,0xb1e92c
004a6974  8a10                      MOV DL,byte ptr [EAX]
004a6976  3a11                      CMP DL,byte ptr [ECX]
004a6978  751a                      JNZ 0x004a6994
004a697a  84d2                      TEST DL,DL
004a697c  7412                      JZ 0x004a6990
004a697e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a6981  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a6984  750e                      JNZ 0x004a6994
004a6986  83c002                    ADD EAX,0x2
004a6989  83c102                    ADD ECX,0x2
004a698c  84d2                      TEST DL,DL
004a698e  75e4                      JNZ 0x004a6974
004a6990  33c0                      XOR EAX,EAX
004a6992  eb05                      JMP 0x004a6999
004a6994  1bc0                      SBB EAX,EAX
004a6996  83c801                    OR EAX,0x1
004a6999  85c0                      TEST EAX,EAX
004a699b  7526                      JNZ 0x004a69c3
004a699d  b8ffff0000                MOV EAX,0xffff
004a69a2  8d4b48                    LEA ECX,[EBX + 0x48]
004a69a5  660183d00b0000            ADD word ptr [EBX + 0xbd0],AX
004a69ac  0f85eefeffff              JNZ 0x004a68a0
004a69b2  6a00                      PUSH 0x0
004a69b4  6814deb100                PUSH 0xb1de14
004a69b9  e8c239f6ff                CALL 0x0040a380
004a69be  e9fcfeffff                JMP 0x004a68bf
004a69c3  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
004a69c6  85c0                      TEST EAX,EAX
004a69c8  0f84f1feffff              JZ 0x004a68bf
004a69ce  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
004a69d5  0f85e4feffff              JNZ 0x004a68bf
004a69db  83781410                  CMP dword ptr [EAX + 0x14],0x10
004a69df  7202                      JC 0x004a69e3
004a69e1  8b00                      MOV EAX,dword ptr [EAX]
004a69e3  b914deb100                MOV ECX,0xb1de14
004a69e8  8a10                      MOV DL,byte ptr [EAX]
004a69ea  3a11                      CMP DL,byte ptr [ECX]
004a69ec  751a                      JNZ 0x004a6a08
004a69ee  84d2                      TEST DL,DL
004a69f0  7412                      JZ 0x004a6a04
004a69f2  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a69f5  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a69f8  750e                      JNZ 0x004a6a08
004a69fa  83c002                    ADD EAX,0x2
004a69fd  83c102                    ADD ECX,0x2
004a6a00  84d2                      TEST DL,DL
004a6a02  75e4                      JNZ 0x004a69e8
004a6a04  33c0                      XOR EAX,EAX
004a6a06  eb05                      JMP 0x004a6a0d
004a6a08  1bc0                      SBB EAX,EAX
004a6a0a  83c801                    OR EAX,0x1
004a6a0d  85c0                      TEST EAX,EAX
004a6a0f  0f85aafeffff              JNZ 0x004a68bf
004a6a15  c6837301000001            MOV byte ptr [EBX + 0x173],0x1
004a6a1c  e99efeffff                JMP 0x004a68bf
004a6a21  84c0                      TEST AL,AL
004a6a23  0f8595010000              JNZ 0x004a6bbe
004a6a29  c683b003000001            MOV byte ptr [EBX + 0x3b0],0x1
004a6a30  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
004a6a33  85f6                      TEST ESI,ESI
004a6a35  7445                      JZ 0x004a6a7c
004a6a37  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004a6a3b  8bc6                      MOV EAX,ESI
004a6a3d  7202                      JC 0x004a6a41
004a6a3f  8b06                      MOV EAX,dword ptr [ESI]
004a6a41  b954bcb100                MOV ECX,0xb1bc54
004a6a46  8a10                      MOV DL,byte ptr [EAX]
004a6a48  3a11                      CMP DL,byte ptr [ECX]
004a6a4a  751a                      JNZ 0x004a6a66
004a6a4c  84d2                      TEST DL,DL
004a6a4e  7412                      JZ 0x004a6a62
004a6a50  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a6a53  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a6a56  750e                      JNZ 0x004a6a66
004a6a58  83c002                    ADD EAX,0x2
004a6a5b  83c102                    ADD ECX,0x2
004a6a5e  84d2                      TEST DL,DL
004a6a60  75e4                      JNZ 0x004a6a46
004a6a62  33c0                      XOR EAX,EAX
004a6a64  eb05                      JMP 0x004a6a6b
004a6a66  1bc0                      SBB EAX,EAX
004a6a68  83c801                    OR EAX,0x1
004a6a6b  85c0                      TEST EAX,EAX
004a6a6d  750d                      JNZ 0x004a6a7c
004a6a6f  384634                    CMP byte ptr [ESI + 0x34],AL
004a6a72  742a                      JZ 0x004a6a9e
004a6a74  38838c000000              CMP byte ptr [EBX + 0x8c],AL
004a6a7a  7522                      JNZ 0x004a6a9e
004a6a7c  6a01                      PUSH 0x1
004a6a7e  6854bcb100                PUSH 0xb1bc54
004a6a83  8d4b48                    LEA ECX,[EBX + 0x48]
004a6a86  e8453bf6ff                CALL 0x0040a5d0
004a6a8b  84c0                      TEST AL,AL
004a6a8d  740f                      JZ 0x004a6a9e
004a6a8f  8d4b78                    LEA ECX,[EBX + 0x78]
004a6a92  e81937f6ff                CALL 0x0040a1b0
004a6a97  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
004a6a9e  c683d30b000010            MOV byte ptr [EBX + 0xbd3],0x10
004a6aa5  c783c80b000000000000      MOV dword ptr [EBX + 0xbc8],0x0
004a6aaf  c783cc0b000000000000      MOV dword ptr [EBX + 0xbcc],0x0
004a6ab9  e8a2842400                CALL 0x006eef60
004a6abe  83c9ff                    OR ECX,0xffffffff
004a6ac1  f30f109570ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff70]
004a6ac9  33d2                      XOR EDX,EDX
004a6acb  f7f1                      DIV ECX
004a6acd  f30f5c559c                SUBSS XMM2,dword ptr [EBP + -0x64]
004a6ad2  660f6ec2                  MOVD XMM0,EDX
004a6ad6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a6ada  c1ea1f                    SHR EDX,0x1f
004a6add  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004a6ae6  660f5ac8                  CVTPD2PS XMM1,XMM0
004a6aea  f30f1005c0acba00          MOVSS XMM0,dword ptr [0x00baacc0]
004a6af2  f30f5ec2                  DIVSS XMM0,XMM2
004a6af6  f30f5ec8                  DIVSS XMM1,XMM0
004a6afa  f30f584d9c                ADDSS XMM1,dword ptr [EBP + -0x64]
004a6aff  f30f2cc1                  CVTTSS2SI EAX,XMM1
004a6b03  668bc8                    MOV CX,AX
004a6b06  66c1e104                  SHL CX,0x4
004a6b0a  662bc8                    SUB CX,AX
004a6b0d  6603c9                    ADD CX,CX
004a6b10  66898bd00b0000            MOV word ptr [EBX + 0xbd0],CX
004a6b17  e844842400                CALL 0x006eef60
004a6b1c  33d2                      XOR EDX,EDX
004a6b1e  c783d80b0000ff000000      MOV dword ptr [EBX + 0xbd8],0xff
004a6b28  b903000000                MOV ECX,0x3
004a6b2d  c783dc0b000000000000      MOV dword ptr [EBX + 0xbdc],0x0
004a6b37  f7f1                      DIV ECX
004a6b39  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
004a6b3c  80c202                    ADD DL,0x2
004a6b3f  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
004a6b49  8893d20b0000              MOV byte ptr [EBX + 0xbd2],DL
004a6b4f  c783440c000078000000      MOV dword ptr [EBX + 0xc44],0x78
004a6b59  8b9be00b0000              MOV EBX,dword ptr [EBX + 0xbe0]
004a6b5f  8bb8e00b0000              MOV EDI,dword ptr [EAX + 0xbe0]
004a6b65  8bb0e40b0000              MOV ESI,dword ptr [EAX + 0xbe4]
004a6b6b  e8f0832400                CALL 0x006eef60
004a6b70  33d2                      XOR EDX,EDX
004a6b72  b958020000                MOV ECX,0x258
004a6b77  f7f1                      DIV ECX
004a6b79  8bcf                      MOV ECX,EDI
004a6b7b  8bc6                      MOV EAX,ESI
004a6b7d  0facc107                  SHRD ECX,EAX,0x7
004a6b81  0facf719                  SHRD EDI,ESI,0x19
004a6b85  81c22c010000              ADD EDX,0x12c
004a6b8b  0fb6c1                    MOVZX EAX,CL
004a6b8e  c1e712                    SHL EDI,0x12
004a6b91  83e37f                    AND EBX,0x7f
004a6b94  c1e20f                    SHL EDX,0xf
004a6b97  0bc7                      OR EAX,EDI
004a6b99  c1e007                    SHL EAX,0x7
004a6b9c  81e20080ff01              AND EDX,0x1ff8000
004a6ba2  0bd0                      OR EDX,EAX
004a6ba4  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
004a6ba7  0bd3                      OR EDX,EBX
004a6ba9  8990e00b0000              MOV dword ptr [EAX + 0xbe0],EDX
004a6baf  c780e40b000000000000      MOV dword ptr [EAX + 0xbe4],0x0
004a6bb9  e95d170000                JMP 0x004a831b
004a6bbe  3c08                      CMP AL,0x8
004a6bc0  752c                      JNZ 0x004a6bee
004a6bc2  b8ffff0000                MOV EAX,0xffff
004a6bc7  660183d00b0000            ADD word ptr [EBX + 0xbd0],AX
004a6bce  740b                      JZ 0x004a6bdb
004a6bd0  80bbd20b000000            CMP byte ptr [EBX + 0xbd2],0x0
004a6bd7  b008                      MOV AL,0x8
004a6bd9  7713                      JA 0x004a6bee
004a6bdb  c683d30b000010            MOV byte ptr [EBX + 0xbd3],0x10
004a6be2  b010                      MOV AL,0x10
004a6be4  c7831004000000000000      MOV dword ptr [EBX + 0x410],0x0
004a6bee  f30f108380030000          MOVSS XMM0,dword ptr [EBX + 0x380]
004a6bf6  f30f108b84030000          MOVSS XMM1,dword ptr [EBX + 0x384]
004a6bfe  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004a6c03  f30f5ec1                  DIVSS XMM0,XMM1
004a6c07  8b8bc80b0000              MOV ECX,dword ptr [EBX + 0xbc8]
004a6c0d  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004a6c15  0f28ca                    MOVAPS XMM1,XMM2
004a6c18  f30f5cc8                  SUBSS XMM1,XMM0
004a6c1c  f30f590da0a9ba00          MULSS XMM1,dword ptr [0x00baa9a0]
004a6c24  f30f118b400c0000          MOVSS dword ptr [EBX + 0xc40],XMM1
004a6c2c  81f99c010000              CMP ECX,0x19c
004a6c32  750a                      JNZ 0x004a6c3e
004a6c34  c783400c000000000000      MOV dword ptr [EBX + 0xc40],0x0
004a6c3e  3c10                      CMP AL,0x10
004a6c40  0f85bb080000              JNZ 0x004a7501
004a6c46  ffb3e80b0000              PUSH dword ptr [EBX + 0xbe8]
004a6c4c  8b93cc0b0000              MOV EDX,dword ptr [EBX + 0xbcc]
004a6c52  53                        PUSH EBX
004a6c53  e8e8f5ffff                CALL 0x004a6240
004a6c58  83c408                    ADD ESP,0x8
004a6c5b  81bbc80b000011010000      CMP dword ptr [EBX + 0xbc8],0x111
004a6c65  7518                      JNZ 0x004a6c7f
004a6c67  83bbcc0b00000a            CMP dword ptr [EBX + 0xbcc],0xa
004a6c6e  750f                      JNZ 0x004a6c7f
004a6c70  8b8bc0030000              MOV ECX,dword ptr [EBX + 0x3c0]
004a6c76  85c9                      TEST ECX,ECX
004a6c78  7405                      JZ 0x004a6c7f
004a6c7a  8b01                      MOV EAX,dword ptr [ECX]
004a6c7c  ff5028                    CALL dword ptr [EAX + 0x28]
004a6c7f  e8dc822400                CALL 0x006eef60
004a6c84  b964000000                MOV ECX,0x64
004a6c89  33d2                      XOR EDX,EDX
004a6c8b  f7f1                      DIV ECX
004a6c8d  8bc1                      MOV EAX,ECX
004a6c8f  33ff                      XOR EDI,EDI
004a6c91  b99c010000                MOV ECX,0x19c
004a6c96  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004a6c99  894db4                    MOV dword ptr [EBP + -0x4c],ECX
004a6c9c  8bf1                      MOV ESI,ECX
004a6c9e  6690                      NOP
004a6ca0  48                        DEC EAX
004a6ca1  8945ac                    MOV dword ptr [EBP + -0x54],EAX
004a6ca4  83fa0a                    CMP EDX,0xa
004a6ca7  0f82a2000000              JC 0x004a6d4f
004a6cad  81fe9c010000              CMP ESI,0x19c
004a6cb3  7447                      JZ 0x004a6cfc
004a6cb5  81fe8a030000              CMP ESI,0x38a
004a6cbb  743f                      JZ 0x004a6cfc
004a6cbd  81fe8b030000              CMP ESI,0x38b
004a6cc3  7437                      JZ 0x004a6cfc
004a6cc5  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004a6ccb  6a00                      PUSH 0x0
004a6ccd  57                        PUSH EDI
004a6cce  ff75b4                    PUSH dword ptr [EBP + -0x4c]
004a6cd1  8d8970a60200              LEA ECX,[ECX + 0x2a670]
004a6cd7  e8d4e21e00                CALL 0x00694fb0
004a6cdc  8b80d8000000              MOV EAX,dword ptr [EAX + 0xd8]
004a6ce2  2500020000                AND EAX,0x200
004a6ce7  83c800                    OR EAX,0x0
004a6cea  7510                      JNZ 0x004a6cfc
004a6cec  3bb3c80b0000              CMP ESI,dword ptr [EBX + 0xbc8]
004a6cf2  7558                      JNZ 0x004a6d4c
004a6cf4  3bbbcc0b0000              CMP EDI,dword ptr [EBX + 0xbcc]
004a6cfa  7550                      JNZ 0x004a6d4c
004a6cfc  a17816c700                MOV EAX,[0x00c71678]
004a6d01  33c9                      XOR ECX,ECX
004a6d03  33ff                      XOR EDI,EDI
004a6d05  8945b8                    MOV dword ptr [EBP + -0x48],EAX
004a6d08  894db4                    MOV dword ptr [EBP + -0x4c],ECX
004a6d0b  8bb0d8690200              MOV ESI,dword ptr [EAX + 0x269d8]
004a6d11  2bb0d4690200              SUB ESI,dword ptr [EAX + 0x269d4]
004a6d17  c1fe03                    SAR ESI,0x3
004a6d1a  85f6                      TEST ESI,ESI
004a6d1c  741c                      JZ 0x004a6d3a
004a6d1e  e83d822400                CALL 0x006eef60
004a6d23  33d2                      XOR EDX,EDX
004a6d25  f7f6                      DIV ESI
004a6d27  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
004a6d2a  8b80d4690200              MOV EAX,dword ptr [EAX + 0x269d4]
004a6d30  8b0cd0                    MOV ECX,dword ptr [EAX + EDX*0x8]
004a6d33  8b7cd004                  MOV EDI,dword ptr [EAX + EDX*0x8 + 0x4]
004a6d37  894db4                    MOV dword ptr [EBP + -0x4c],ECX
004a6d3a  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
004a6d3d  8bf1                      MOV ESI,ECX
004a6d3f  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
004a6d42  85c0                      TEST EAX,EAX
004a6d44  0f8556ffffff              JNZ 0x004a6ca0
004a6d4a  eb03                      JMP 0x004a6d4f
004a6d4c  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
004a6d4f  898bc80b0000              MOV dword ptr [EBX + 0xbc8],ECX
004a6d55  89bbcc0b0000              MOV dword ptr [EBX + 0xbcc],EDI
004a6d5b  85c9                      TEST ECX,ECX
004a6d5d  750f                      JNZ 0x004a6d6e
004a6d5f  6838e9b100                PUSH 0xb1e938
004a6d64  6a10                      PUSH 0x10
004a6d66  e855a55600                CALL 0x00a112c0
004a6d6b  83c408                    ADD ESP,0x8
004a6d6e  8b93e00b0000              MOV EDX,dword ptr [EBX + 0xbe0]
004a6d74  8bf2                      MOV ESI,EDX
004a6d76  8b8be40b0000              MOV ECX,dword ptr [EBX + 0xbe4]
004a6d7c  8bc1                      MOV EAX,ECX
004a6d7e  8bbbe00b0000              MOV EDI,dword ptr [EBX + 0xbe0]
004a6d84  0facca19                  SHRD EDX,ECX,0x19
004a6d88  0facc60f                  SHRD ESI,EAX,0xf
004a6d8c  8b83c80b0000              MOV EAX,dword ptr [EBX + 0xbc8]
004a6d92  81e2ff030000              AND EDX,0x3ff
004a6d98  83e77f                    AND EDI,0x7f
004a6d9b  8955ac                    MOV dword ptr [EBP + -0x54],EDX
004a6d9e  83f82d                    CMP EAX,0x2d
004a6da1  742d                      JZ 0x004a6dd0
004a6da3  83f854                    CMP EAX,0x54
004a6da6  7509                      JNZ 0x004a6db1
004a6da8  83bbcc0b00000a            CMP dword ptr [EBX + 0xbcc],0xa
004a6daf  741f                      JZ 0x004a6dd0
004a6db1  e8aa812400                CALL 0x006eef60
004a6db6  33d2                      XOR EDX,EDX
004a6db8  b964000000                MOV ECX,0x64
004a6dbd  f7f1                      DIV ECX
004a6dbf  3bd7                      CMP EDX,EDI
004a6dc1  8b55ac                    MOV EDX,dword ptr [EBP + -0x54]
004a6dc4  7307                      JNC 0x004a6dcd
004a6dc6  8d4114                    LEA EAX,[ECX + 0x14]
004a6dc9  33ff                      XOR EDI,EDI
004a6dcb  eb05                      JMP 0x004a6dd2
004a6dcd  83c70a                    ADD EDI,0xa
004a6dd0  33c0                      XOR EAX,EAX
004a6dd2  81e6ff030000              AND ESI,0x3ff
004a6dd8  c1e20a                    SHL EDX,0xa
004a6ddb  0bf2                      OR ESI,EDX
004a6ddd  c783e40b000000000000      MOV dword ptr [EBX + 0xbe4],0x0
004a6de7  c1e608                    SHL ESI,0x8
004a6dea  83e77f                    AND EDI,0x7f
004a6ded  0bf0                      OR ESI,EAX
004a6def  8b83c80b0000              MOV EAX,dword ptr [EBX + 0xbc8]
004a6df5  c1e607                    SHL ESI,0x7
004a6df8  0bf7                      OR ESI,EDI
004a6dfa  89b3e00b0000              MOV dword ptr [EBX + 0xbe0],ESI
004a6e00  3d0a010000                CMP EAX,0x10a
004a6e05  750c                      JNZ 0x004a6e13
004a6e07  c783cc0b000000000000      MOV dword ptr [EBX + 0xbcc],0x0
004a6e11  eb1e                      JMP 0x004a6e31
004a6e13  83f82d                    CMP EAX,0x2d
004a6e16  740f                      JZ 0x004a6e27
004a6e18  83f854                    CMP EAX,0x54
004a6e1b  7514                      JNZ 0x004a6e31
004a6e1d  e83e812400                CALL 0x006eef60
004a6e22  83e001                    AND EAX,0x1
004a6e25  750a                      JNZ 0x004a6e31
004a6e27  c783cc0b00000a000000      MOV dword ptr [EBX + 0xbcc],0xa
004a6e31  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a6e34  8dbb3c030000              LEA EDI,[EBX + 0x33c]
004a6e3a  f30f109b70030000          MOVSS XMM3,dword ptr [EBX + 0x370]
004a6e42  8d4da0                    LEA ECX,[EBP + -0x60]
004a6e45  f30f108380030000          MOVSS XMM0,dword ptr [EBX + 0x380]
004a6e4d  83ec0c                    SUB ESP,0xc
004a6e50  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004a6e53  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
004a6e56  89458c                    MOV dword ptr [EBP + -0x74],EAX
004a6e59  8b83c80b0000              MOV EAX,dword ptr [EBX + 0xbc8]
004a6e5f  894328                    MOV dword ptr [EBX + 0x28],EAX
004a6e62  8b83cc0b0000              MOV EAX,dword ptr [EBX + 0xbcc]
004a6e68  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
004a6e6e  89432c                    MOV dword ptr [EBX + 0x2c],EAX
004a6e71  a17816c700                MOV EAX,[0x00c71678]
004a6e76  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
004a6e7c  f30f111c24                MOVSS dword ptr [ESP],XMM3
004a6e81  57                        PUSH EDI
004a6e82  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004a6e87  f30f108384030000          MOVSS XMM0,dword ptr [EBX + 0x384]
004a6e8f  51                        PUSH ECX
004a6e90  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a6e96  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004a6e9b  e8b0c03600                CALL 0x00812f50
004a6ea0  8b03                      MOV EAX,dword ptr [EBX]
004a6ea2  8bcb                      MOV ECX,EBX
004a6ea4  ff5044                    CALL dword ptr [EAX + 0x44]
004a6ea7  ffb3cc0b0000              PUSH dword ptr [EBX + 0xbcc]
004a6ead  ffb3c80b0000              PUSH dword ptr [EBX + 0xbc8]
004a6eb3  6800e9b100                PUSH 0xb1e900
004a6eb8  6a01                      PUSH 0x1
004a6eba  e801a45600                CALL 0x00a112c0
004a6ebf  8b03                      MOV EAX,dword ptr [EBX]
004a6ec1  83c410                    ADD ESP,0x10
004a6ec4  8b7004                    MOV ESI,dword ptr [EAX + 0x4]
004a6ec7  e894802400                CALL 0x006eef60
004a6ecc  50                        PUSH EAX
004a6ecd  6a00                      PUSH 0x0
004a6ecf  ff732c                    PUSH dword ptr [EBX + 0x2c]
004a6ed2  8bcb                      MOV ECX,EBX
004a6ed4  ff7328                    PUSH dword ptr [EBX + 0x28]
004a6ed7  ffd6                      CALL ESI
004a6ed9  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
004a6ede  f30f1107                  MOVSS dword ptr [EDI],XMM0
004a6ee2  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
004a6ee7  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
004a6eec  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a6eef  8983c80b0000              MOV dword ptr [EBX + 0xbc8],EAX
004a6ef5  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
004a6ef8  c783640b000000000000      MOV dword ptr [EBX + 0xb64],0x0
004a6f02  8983cc0b0000              MOV dword ptr [EBX + 0xbcc],EAX
004a6f08  e853802400                CALL 0x006eef60
004a6f0d  83c9ff                    OR ECX,0xffffffff
004a6f10  f30f109570ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff70]
004a6f18  33d2                      XOR EDX,EDX
004a6f1a  f7f1                      DIV ECX
004a6f1c  f30f5c559c                SUBSS XMM2,dword ptr [EBP + -0x64]
004a6f21  660f6ec2                  MOVD XMM0,EDX
004a6f25  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a6f29  c1ea1f                    SHR EDX,0x1f
004a6f2c  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004a6f35  660f5ac8                  CVTPD2PS XMM1,XMM0
004a6f39  f30f1005c0acba00          MOVSS XMM0,dword ptr [0x00baacc0]
004a6f41  f30f5ec2                  DIVSS XMM0,XMM2
004a6f45  f30f5ec8                  DIVSS XMM1,XMM0
004a6f49  f30f584d9c                ADDSS XMM1,dword ptr [EBP + -0x64]
004a6f4e  f30f2cc1                  CVTTSS2SI EAX,XMM1
004a6f52  668bc8                    MOV CX,AX
004a6f55  66c1e104                  SHL CX,0x4
004a6f59  662bc8                    SUB CX,AX
004a6f5c  6603c9                    ADD CX,CX
004a6f5f  66898bd00b0000            MOV word ptr [EBX + 0xbd0],CX
004a6f66  e8f57f2400                CALL 0x006eef60
004a6f6b  33d2                      XOR EDX,EDX
004a6f6d  8d7b48                    LEA EDI,[EBX + 0x48]
004a6f70  b903000000                MOV ECX,0x3
004a6f75  f7f1                      DIV ECX
004a6f77  6a01                      PUSH 0x1
004a6f79  ff732c                    PUSH dword ptr [EBX + 0x2c]
004a6f7c  80c202                    ADD DL,0x2
004a6f7f  8893d20b0000              MOV byte ptr [EBX + 0xbd2],DL
004a6f85  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a6f88  8bcf                      MOV ECX,EDI
004a6f8a  e881edffff                CALL 0x004a5d10
004a6f8f  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
004a6f94  83c408                    ADD ESP,0x8
004a6f97  8bcb                      MOV ECX,EBX
004a6f99  e8e2160000                CALL 0x004a8680
004a6f9e  8bcb                      MOV ECX,EBX
004a6fa0  e84b150000                CALL 0x004a84f0
004a6fa5  837b2854                  CMP dword ptr [EBX + 0x28],0x54
004a6fa9  c683d30b000008            MOV byte ptr [EBX + 0xbd3],0x8
004a6fb0  c7831004000000000000      MOV dword ptr [EBX + 0x410],0x0
004a6fba  7529                      JNZ 0x004a6fe5
004a6fbc  83bbcc0b00000a            CMP dword ptr [EBX + 0xbcc],0xa
004a6fc3  7416                      JZ 0x004a6fdb
004a6fc5  c783c00b000002000000      MOV dword ptr [EBX + 0xbc0],0x2
004a6fcf  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
004a6fd9  eb0a                      JMP 0x004a6fe5
004a6fdb  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
004a6fe5  8bcb                      MOV ECX,EBX
004a6fe7  e854782100                CALL 0x006be840
004a6fec  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004a6ff4  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004a6ff9  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004a7001  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a7004  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004a7009  83f824                    CMP EAX,0x24
004a700c  7405                      JZ 0x004a7013
004a700e  83f84e                    CMP EAX,0x4e
004a7011  7507                      JNZ 0x004a701a
004a7013  8bcb                      MOV ECX,EBX
004a7015  e876b92100                CALL 0x006c2990
004a701a  8bcb                      MOV ECX,EBX
004a701c  e81f782100                CALL 0x006be840
004a7021  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004a7026  f30f11803c030000          MOVSS dword ptr [EAX + 0x33c],XMM0
004a702e  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
004a7033  f30f118040030000          MOVSS dword ptr [EAX + 0x340],XMM0
004a703b  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a703e  83f82d                    CMP EAX,0x2d
004a7041  7572                      JNZ 0x004a70b5
004a7043  51                        PUSH ECX
004a7044  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a704b  6a00                      PUSH 0x0
004a704d  50                        PUSH EAX
004a704e  51                        PUSH ECX
004a704f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a7056  8bcb                      MOV ECX,EBX
004a7058  6a65                      PUSH 0x65
004a705a  e841fb2200                CALL 0x006d6ba0
004a705f  8b836c010000              MOV EAX,dword ptr [EBX + 0x16c]
004a7065  818b6801000000000400      OR dword ptr [EBX + 0x168],0x40000
004a706f  89836c010000              MOV dword ptr [EBX + 0x16c],EAX
004a7075  8b833c030000              MOV EAX,dword ptr [EBX + 0x33c]
004a707b  898334030000              MOV dword ptr [EBX + 0x334],EAX
004a7081  8b8340030000              MOV EAX,dword ptr [EBX + 0x340]
004a7087  898338030000              MOV dword ptr [EBX + 0x338],EAX
004a708d  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a7090  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
004a709a  c7433002000000            MOV dword ptr [EBX + 0x30],0x2
004a70a1  c783a00b00001e000000      MOV dword ptr [EBX + 0xba0],0x1e
004a70ab  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
004a70b5  83f84f                    CMP EAX,0x4f
004a70b8  0f85b5000000              JNZ 0x004a7173
004a70be  8bcb                      MOV ECX,EBX
004a70c0  e8cbb82100                CALL 0x006c2990
004a70c5  a17816c700                MOV EAX,[0x00c71678]
004a70ca  6a00                      PUSH 0x0
004a70cc  6a00                      PUSH 0x0
004a70ce  6aff                      PUSH -0x1
004a70d0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a70d6  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004a70dc  6a14                      PUSH 0x14
004a70de  ff7328                    PUSH dword ptr [EBX + 0x28]
004a70e1  81c118120000              ADD ECX,0x1218
004a70e7  50                        PUSH EAX
004a70e8  e8733ef7ff                CALL 0x0041af60
004a70ed  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004a70f4  33f6                      XOR ESI,ESI
004a70f6  8b7d80                    MOV EDI,dword ptr [EBP + -0x80]
004a70f9  85ff                      TEST EDI,EDI
004a70fb  7424                      JZ 0x004a7121
004a70fd  8b9d78ffffff              MOV EBX,dword ptr [EBP + 0xffffff78]
004a7103  8b04b3                    MOV EAX,dword ptr [EBX + ESI*0x4]
004a7106  6a01                      PUSH 0x1
004a7108  ff702c                    PUSH dword ptr [EAX + 0x2c]
004a710b  8b5028                    MOV EDX,dword ptr [EAX + 0x28]
004a710e  8d4848                    LEA ECX,[EAX + 0x48]
004a7111  e8faebffff                CALL 0x004a5d10
004a7116  46                        INC ESI
004a7117  83c408                    ADD ESP,0x8
004a711a  3bf7                      CMP ESI,EDI
004a711c  72e5                      JC 0x004a7103
004a711e  8b5db0                    MOV EBX,dword ptr [EBP + -0x50]
004a7121  8b93c0030000              MOV EDX,dword ptr [EBX + 0x3c0]
004a7127  85d2                      TEST EDX,EDX
004a7129  7413                      JZ 0x004a713e
004a712b  6a01                      PUSH 0x1
004a712d  ff722c                    PUSH dword ptr [EDX + 0x2c]
004a7130  8d4a48                    LEA ECX,[EDX + 0x48]
004a7133  8b5228                    MOV EDX,dword ptr [EDX + 0x28]
004a7136  e8d5ebffff                CALL 0x004a5d10
004a713b  83c408                    ADD ESP,0x8
004a713e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a7145  80bd74ffffff00            CMP byte ptr [EBP + 0xffffff74],0x0
004a714c  7522                      JNZ 0x004a7170
004a714e  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004a7155  b101                      MOV CL,0x1
004a7157  8b9578ffffff              MOV EDX,dword ptr [EBP + 0xffffff78]
004a715d  6a00                      PUSH 0x0
004a715f  6a00                      PUSH 0x0
004a7161  e84ad75b00                CALL 0x00a648b0
004a7166  83c408                    ADD ESP,0x8
004a7169  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a7170  8d7b48                    LEA EDI,[EBX + 0x48]
004a7173  817b2897010000            CMP dword ptr [EBX + 0x28],0x197
004a717a  7578                      JNZ 0x004a71f4
004a717c  8bcb                      MOV ECX,EBX
004a717e  e80db82100                CALL 0x006c2990
004a7183  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
004a718d  8b7734                    MOV ESI,dword ptr [EDI + 0x34]
004a7190  85f6                      TEST ESI,ESI
004a7192  7442                      JZ 0x004a71d6
004a7194  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004a7198  8bc6                      MOV EAX,ESI
004a719a  7202                      JC 0x004a719e
004a719c  8b06                      MOV EAX,dword ptr [ESI]
004a719e  b954bcb100                MOV ECX,0xb1bc54
004a71a3  8a10                      MOV DL,byte ptr [EAX]
004a71a5  3a11                      CMP DL,byte ptr [ECX]
004a71a7  751a                      JNZ 0x004a71c3
004a71a9  84d2                      TEST DL,DL
004a71ab  7412                      JZ 0x004a71bf
004a71ad  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a71b0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a71b3  750e                      JNZ 0x004a71c3
004a71b5  83c002                    ADD EAX,0x2
004a71b8  83c102                    ADD ECX,0x2
004a71bb  84d2                      TEST DL,DL
004a71bd  75e4                      JNZ 0x004a71a3
004a71bf  33c0                      XOR EAX,EAX
004a71c1  eb05                      JMP 0x004a71c8
004a71c3  1bc0                      SBB EAX,EAX
004a71c5  83c801                    OR EAX,0x1
004a71c8  85c0                      TEST EAX,EAX
004a71ca  750a                      JNZ 0x004a71d6
004a71cc  384634                    CMP byte ptr [ESI + 0x34],AL
004a71cf  7423                      JZ 0x004a71f4
004a71d1  384744                    CMP byte ptr [EDI + 0x44],AL
004a71d4  751e                      JNZ 0x004a71f4
004a71d6  6a01                      PUSH 0x1
004a71d8  6854bcb100                PUSH 0xb1bc54
004a71dd  8bcf                      MOV ECX,EDI
004a71df  e8ec33f6ff                CALL 0x0040a5d0
004a71e4  84c0                      TEST AL,AL
004a71e6  740c                      JZ 0x004a71f4
004a71e8  8d4f30                    LEA ECX,[EDI + 0x30]
004a71eb  e8c02ff6ff                CALL 0x0040a1b0
004a71f0  c6474401                  MOV byte ptr [EDI + 0x44],0x1
004a71f4  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a71f7  83f845                    CMP EAX,0x45
004a71fa  750b                      JNZ 0x004a7207
004a71fc  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
004a7200  7410                      JZ 0x004a7212
004a7202  e999000000                JMP 0x004a72a0
004a7207  3d9a010000                CMP EAX,0x19a
004a720c  0f858e000000              JNZ 0x004a72a0
004a7212  8bcb                      MOV ECX,EBX
004a7214  e877b72100                CALL 0x006c2990
004a7219  a17816c700                MOV EAX,[0x00c71678]
004a721e  6a00                      PUSH 0x0
004a7220  6a00                      PUSH 0x0
004a7222  6aff                      PUSH -0x1
004a7224  ff732c                    PUSH dword ptr [EBX + 0x2c]
004a7227  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a722d  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004a7233  ff7328                    PUSH dword ptr [EBX + 0x28]
004a7236  81c118120000              ADD ECX,0x1218
004a723c  50                        PUSH EAX
004a723d  e81e3df7ff                CALL 0x0041af60
004a7242  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004a7249  33f6                      XOR ESI,ESI
004a724b  8bbd78ffffff              MOV EDI,dword ptr [EBP + 0xffffff78]
004a7251  397580                    CMP dword ptr [EBP + -0x80],ESI
004a7254  761c                      JBE 0x004a7272
004a7256  8b04b7                    MOV EAX,dword ptr [EDI + ESI*0x4]
004a7259  6a01                      PUSH 0x1
004a725b  ff702c                    PUSH dword ptr [EAX + 0x2c]
004a725e  8b5028                    MOV EDX,dword ptr [EAX + 0x28]
004a7261  8d4848                    LEA ECX,[EAX + 0x48]
004a7264  e8a7eaffff                CALL 0x004a5d10
004a7269  46                        INC ESI
004a726a  83c408                    ADD ESP,0x8
004a726d  3b7580                    CMP ESI,dword ptr [EBP + -0x80]
004a7270  72e4                      JC 0x004a7256
004a7272  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a7279  80bd74ffffff00            CMP byte ptr [EBP + 0xffffff74],0x0
004a7280  751e                      JNZ 0x004a72a0
004a7282  6a00                      PUSH 0x0
004a7284  6a00                      PUSH 0x0
004a7286  8bd7                      MOV EDX,EDI
004a7288  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004a728f  b101                      MOV CL,0x1
004a7291  e81ad65b00                CALL 0x00a648b0
004a7296  83c408                    ADD ESP,0x8
004a7299  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a72a0  817b289a010000            CMP dword ptr [EBX + 0x28],0x19a
004a72a7  7536                      JNZ 0x004a72df
004a72a9  8b8be80b0000              MOV ECX,dword ptr [EBX + 0xbe8]
004a72af  8dbbe80b0000              LEA EDI,[EBX + 0xbe8]
004a72b5  8bb3c0030000              MOV ESI,dword ptr [EBX + 0x3c0]
004a72bb  85c9                      TEST ECX,ECX
004a72bd  7412                      JZ 0x004a72d1
004a72bf  8d45b8                    LEA EAX,[EBP + -0x48]
004a72c2  897db8                    MOV dword ptr [EBP + -0x48],EDI
004a72c5  50                        PUSH EAX
004a72c6  81c1cc030000              ADD ECX,0x3cc
004a72cc  e83f7f0200                CALL 0x004cf210
004a72d1  8937                      MOV dword ptr [EDI],ESI
004a72d3  85f6                      TEST ESI,ESI
004a72d5  7408                      JZ 0x004a72df
004a72d7  57                        PUSH EDI
004a72d8  8bce                      MOV ECX,ESI
004a72da  e8116a0200                CALL 0x004cdcf0
004a72df  8b4b28                    MOV ECX,dword ptr [EBX + 0x28]
004a72e2  8bc1                      MOV EAX,ECX
004a72e4  81f907010000              CMP ECX,0x107
004a72ea  750c                      JNZ 0x004a72f8
004a72ec  8bcb                      MOV ECX,EBX
004a72ee  e89db62100                CALL 0x006c2990
004a72f3  8b4b28                    MOV ECX,dword ptr [EBX + 0x28]
004a72f6  8bc1                      MOV EAX,ECX
004a72f8  83f961                    CMP ECX,0x61
004a72fb  754f                      JNZ 0x004a734c
004a72fd  8bcb                      MOV ECX,EBX
004a72ff  e88cb62100                CALL 0x006c2990
004a7304  8bb3c0030000              MOV ESI,dword ptr [EBX + 0x3c0]
004a730a  33ff                      XOR EDI,EDI
004a730c  0f1f4000                  NOP dword ptr [EAX]
004a7310  85f6                      TEST ESI,ESI
004a7312  7429                      JZ 0x004a733d
004a7314  8b5628                    MOV EDX,dword ptr [ESI + 0x28]
004a7317  8d4e48                    LEA ECX,[ESI + 0x48]
004a731a  6a01                      PUSH 0x1
004a731c  ff762c                    PUSH dword ptr [ESI + 0x2c]
004a731f  e8ece9ffff                CALL 0x004a5d10
004a7324  83c408                    ADD ESP,0x8
004a7327  85ff                      TEST EDI,EDI
004a7329  7508                      JNZ 0x004a7333
004a732b  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
004a7331  eb06                      JMP 0x004a7339
004a7333  8bb6bc030000              MOV ESI,dword ptr [ESI + 0x3bc]
004a7339  85f6                      TEST ESI,ESI
004a733b  75d7                      JNZ 0x004a7314
004a733d  8bb3bc030000              MOV ESI,dword ptr [EBX + 0x3bc]
004a7343  47                        INC EDI
004a7344  83ff02                    CMP EDI,0x2
004a7347  72c7                      JC 0x004a7310
004a7349  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a734c  8bc8                      MOV ECX,EAX
004a734e  3d11010000                CMP EAX,0x111
004a7353  7516                      JNZ 0x004a736b
004a7355  837b2c0a                  CMP dword ptr [EBX + 0x2c],0xa
004a7359  0f85ae000000              JNZ 0x004a740d
004a735f  8bcb                      MOV ECX,EBX
004a7361  e82ab62100                CALL 0x006c2990
004a7366  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a7369  8bc8                      MOV ECX,EAX
004a736b  83f81c                    CMP EAX,0x1c
004a736e  740e                      JZ 0x004a737e
004a7370  83f83e                    CMP EAX,0x3e
004a7373  7409                      JZ 0x004a737e
004a7375  83f84e                    CMP EAX,0x4e
004a7378  0f8580000000              JNZ 0x004a73fe
004a737e  8bcb                      MOV ECX,EBX
004a7380  e80bb62100                CALL 0x006c2990
004a7385  8bb3c0030000              MOV ESI,dword ptr [EBX + 0x3c0]
004a738b  33ff                      XOR EDI,EDI
004a738d  0f1f00                    NOP dword ptr [EAX]
004a7390  85f6                      TEST ESI,ESI
004a7392  745b                      JZ 0x004a73ef
004a7394  8b5628                    MOV EDX,dword ptr [ESI + 0x28]
004a7397  8d4e48                    LEA ECX,[ESI + 0x48]
004a739a  6a01                      PUSH 0x1
004a739c  ff762c                    PUSH dword ptr [ESI + 0x2c]
004a739f  e86ce9ffff                CALL 0x004a5d10
004a73a4  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004a73a9  83c408                    ADD ESP,0x8
004a73ac  818e6801000000000480      OR dword ptr [ESI + 0x168],0x80040000
004a73b6  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004a73bc  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
004a73c4  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
004a73cc  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
004a73d3  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004a73d9  85ff                      TEST EDI,EDI
004a73db  7508                      JNZ 0x004a73e5
004a73dd  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
004a73e3  eb06                      JMP 0x004a73eb
004a73e5  8bb6bc030000              MOV ESI,dword ptr [ESI + 0x3bc]
004a73eb  85f6                      TEST ESI,ESI
004a73ed  75a5                      JNZ 0x004a7394
004a73ef  8bb3bc030000              MOV ESI,dword ptr [EBX + 0x3bc]
004a73f5  47                        INC EDI
004a73f6  83ff02                    CMP EDI,0x2
004a73f9  7295                      JC 0x004a7390
004a73fb  8b4b28                    MOV ECX,dword ptr [EBX + 0x28]
004a73fe  83f91c                    CMP ECX,0x1c
004a7401  750a                      JNZ 0x004a740d
004a7403  c783640b000001000000      MOV dword ptr [EBX + 0xb64],0x1
004a740d  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
004a7412  be02000000                MOV ESI,0x2
004a7417  f30f108b70030000          MOVSS XMM1,dword ptr [EBX + 0x370]
004a741f  81a3e00b0000ffffff01      AND dword ptr [EBX + 0xbe0],0x1ffffff
004a7429  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
004a742c  f30f118380030000          MOVSS dword ptr [EBX + 0x380],XMM0
004a7434  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004a7439  f30f118384030000          MOVSS dword ptr [EBX + 0x384],XMM0
004a7441  f30f10053ca8ba00          MOVSS XMM0,dword ptr [0x00baa83c]
004a7449  0f2fc1                    COMISS XMM0,XMM1
004a744c  894328                    MOV dword ptr [EBX + 0x28],EAX
004a744f  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
004a7452  89432c                    MOV dword ptr [EBX + 0x2c],EAX
004a7455  8b83e40b0000              MOV EAX,dword ptr [EBX + 0xbe4]
004a745b  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004a745e  b801000000                MOV EAX,0x1
004a7463  c783e40b000000000000      MOV dword ptr [EBX + 0xbe4],0x0
004a746d  0f47f0                    CMOVA ESI,EAX
004a7470  0f2f0d68a8ba00            COMISS XMM1,dword ptr [0x00baa868]
004a7477  7311                      JNC 0x004a748a
004a7479  f30f10835c010000          MOVSS XMM0,dword ptr [EBX + 0x15c]
004a7481  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
004a7488  7605                      JBE 0x004a748f
004a748a  be03000000                MOV ESI,0x3
004a748f  e8cc7a2400                CALL 0x006eef60
004a7494  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a749a  6a00                      PUSH 0x0
004a749c  68acd5c500                PUSH 0xc5d5ac
004a74a1  68dcd5c500                PUSH 0xc5d5dc
004a74a6  6a00                      PUSH 0x0
004a74a8  50                        PUSH EAX
004a74a9  56                        PUSH ESI
004a74aa  53                        PUSH EBX
004a74ab  6840b6c700                PUSH 0xc7b640
004a74b0  8d833c030000              LEA EAX,[EBX + 0x33c]
004a74b6  50                        PUSH EAX
004a74b7  6a0f                      PUSH 0xf
004a74b9  68e8030000                PUSH 0x3e8
004a74be  e85d16f8ff                CALL 0x00428b20
004a74c3  50                        PUSH EAX
004a74c4  e8e8936400                CALL 0x00af08b1
004a74c9  8b8b4c030000              MOV ECX,dword ptr [EBX + 0x34c]
004a74cf  83c414                    ADD ESP,0x14
004a74d2  89884c030000              MOV dword ptr [EAX + 0x34c],ECX
004a74d8  8b8b50030000              MOV ECX,dword ptr [EBX + 0x350]
004a74de  898850030000              MOV dword ptr [EAX + 0x350],ECX
004a74e4  f30f108350030000          MOVSS XMM0,dword ptr [EBX + 0x350]
004a74ec  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004a74f4  f30f118058030000          MOVSS dword ptr [EAX + 0x358],XMM0
004a74fc  e91a0e0000                JMP 0x004a831b
004a7501  3c08                      CMP AL,0x8
004a7503  0f85120e0000              JNZ 0x004a831b
004a7509  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a750c  894588                    MOV dword ptr [EBP + -0x78],EAX
004a750f  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
004a7512  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004a7515  8b83cc0b0000              MOV EAX,dword ptr [EBX + 0xbcc]
004a751b  894b28                    MOV dword ptr [EBX + 0x28],ECX
004a751e  89432c                    MOV dword ptr [EBX + 0x2c],EAX
004a7521  81f99c010000              CMP ECX,0x19c
004a7527  0f8450060000              JZ 0x004a7b7d
004a752d  c645c300                  MOV byte ptr [EBP + -0x3d],0x0
004a7531  81f99b010000              CMP ECX,0x19b
004a7537  752b                      JNZ 0x004a7564
004a7539  83bb640b000004            CMP dword ptr [EBX + 0xb64],0x4
004a7540  751e                      JNZ 0x004a7560
004a7542  83bb1004000000            CMP dword ptr [EBX + 0x410],0x0
004a7549  7515                      JNZ 0x004a7560
004a754b  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
004a754f  7409                      JZ 0x004a755a
004a7551  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
004a7558  7506                      JNZ 0x004a7560
004a755a  c645c301                  MOV byte ptr [EBP + -0x3d],0x1
004a755e  eb04                      JMP 0x004a7564
004a7560  c645c300                  MOV byte ptr [EBP + -0x3d],0x0
004a7564  8b83c00b0000              MOV EAX,dword ptr [EBX + 0xbc0]
004a756a  8d7b08                    LEA EDI,[EBX + 0x8]
004a756d  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
004a7570  33f6                      XOR ESI,ESI
004a7572  894594                    MOV dword ptr [EBP + -0x6c],EAX
004a7575  33c0                      XOR EAX,EAX
004a7577  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004a757a  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
004a7580  8945b8                    MOV dword ptr [EBP + -0x48],EAX
004a7583  898558ffffff              MOV dword ptr [EBP + 0xffffff58],EAX
004a7589  8b07                      MOV EAX,dword ptr [EDI]
004a758b  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
004a7591  89459c                    MOV dword ptr [EBP + -0x64],EAX
004a7594  894d8c                    MOV dword ptr [EBP + -0x74],ECX
004a7597  3bc1                      CMP EAX,ECX
004a7599  746e                      JZ 0x004a7609
004a759b  2bc8                      SUB ECX,EAX
004a759d  b893244992                MOV EAX,0x92492493
004a75a2  f7e9                      IMUL ECX
004a75a4  03d1                      ADD EDX,ECX
004a75a6  c1fa05                    SAR EDX,0x5
004a75a9  8bc2                      MOV EAX,EDX
004a75ab  c1e81f                    SHR EAX,0x1f
004a75ae  03c2                      ADD EAX,EDX
004a75b0  3d24499204                CMP EAX,0x4924924
004a75b5  0f87390e0000              JA 0x004a83f4
004a75bb  8d34c500000000            LEA ESI,[EAX*0x8 + 0x0]
004a75c2  2bf0                      SUB ESI,EAX
004a75c4  c1e603                    SHL ESI,0x3
004a75c7  8bce                      MOV ECX,ESI
004a75c9  e83259f6ff                CALL 0x0040cf00
004a75ce  50                        PUSH EAX
004a75cf  ff758c                    PUSH dword ptr [EBP + -0x74]
004a75d2  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
004a75d8  ff759c                    PUSH dword ptr [EBP + -0x64]
004a75db  8d0c06                    LEA ECX,[ESI + EAX*0x1]
004a75de  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
004a75e4  898d58ffffff              MOV dword ptr [EBP + 0xffffff58],ECX
004a75ea  e801350000                CALL 0x004aaaf0
004a75ef  8bf0                      MOV ESI,EAX
004a75f1  8b8558ffffff              MOV EAX,dword ptr [EBP + 0xffffff58]
004a75f7  8945b8                    MOV dword ptr [EBP + -0x48],EAX
004a75fa  8b8550ffffff              MOV EAX,dword ptr [EBP + 0xffffff50]
004a7600  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
004a7606  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004a7609  f30f10470c                MOVSS XMM0,dword ptr [EDI + 0xc]
004a760e  8b4710                    MOV EAX,dword ptr [EDI + 0x10]
004a7611  8b4f14                    MOV ECX,dword ptr [EDI + 0x14]
004a7614  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
004a7619  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004a7621  89459c                    MOV dword ptr [EBP + -0x64],EAX
004a7624  898d70ffffff              MOV dword ptr [EBP + 0xffffff70],ECX
004a762a  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
004a7630  898d64ffffff              MOV dword ptr [EBP + 0xffffff64],ECX
004a7636  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
004a763d  8bcb                      MOV ECX,EBX
004a763f  8b07                      MOV EAX,dword ptr [EDI]
004a7641  894704                    MOV dword ptr [EDI + 0x4],EAX
004a7644  c7470c00000000            MOV dword ptr [EDI + 0xc],0x0
004a764b  c7471000000000            MOV dword ptr [EDI + 0x10],0x0
004a7652  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
004a7659  e802220000                CALL 0x004a9860
004a765e  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004a7663  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004a7669  f30f118380030000          MOVSS dword ptr [EBX + 0x380],XMM0
004a7671  f30f108568ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff68]
004a7679  f30f118384030000          MOVSS dword ptr [EBX + 0x384],XMM0
004a7681  3bf8                      CMP EDI,EAX
004a7683  740e                      JZ 0x004a7693
004a7685  ff75a4                    PUSH dword ptr [EBP + -0x5c]
004a7688  8bcf                      MOV ECX,EDI
004a768a  56                        PUSH ESI
004a768b  ff75b4                    PUSH dword ptr [EBP + -0x4c]
004a768e  e89d340000                CALL 0x004aab30
004a7693  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004a7696  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
004a769b  894710                    MOV dword ptr [EDI + 0x10],EAX
004a769e  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
004a76a4  f30f11470c                MOVSS dword ptr [EDI + 0xc],XMM0
004a76a9  894714                    MOV dword ptr [EDI + 0x14],EAX
004a76ac  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a76af  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004a76b2  3d9b010000                CMP EAX,0x19b
004a76b7  7569                      JNZ 0x004a7722
004a76b9  a17816c700                MOV EAX,[0x00c71678]
004a76be  33f6                      XOR ESI,ESI
004a76c0  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
004a76c6  b89b010000                MOV EAX,0x19b
004a76cb  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004a76ce  39b764120000              CMP dword ptr [EDI + 0x1264],ESI
004a76d4  764c                      JBE 0x004a7722
004a76d6  8a5dc3                    MOV BL,byte ptr [EBP + -0x3d]
004a76d9  0f1f8000000000            NOP dword ptr [EAX]
004a76e0  8b875c120000              MOV EAX,dword ptr [EDI + 0x125c]
004a76e6  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
004a76e9  84db                      TEST BL,BL
004a76eb  7423                      JZ 0x004a7710
004a76ed  8179289b010000            CMP dword ptr [ECX + 0x28],0x19b
004a76f4  751a                      JNZ 0x004a7710
004a76f6  83792c01                  CMP dword ptr [ECX + 0x2c],0x1
004a76fa  7514                      JNZ 0x004a7710
004a76fc  6a00                      PUSH 0x0
004a76fe  6a01                      PUSH 0x1
004a7700  83c148                    ADD ECX,0x48
004a7703  ba9b010000                MOV EDX,0x19b
004a7708  e803e6ffff                CALL 0x004a5d10
004a770d  83c408                    ADD ESP,0x8
004a7710  46                        INC ESI
004a7711  3bb764120000              CMP ESI,dword ptr [EDI + 0x1264]
004a7717  72c7                      JC 0x004a76e0
004a7719  8b5db0                    MOV EBX,dword ptr [EBP + -0x50]
004a771c  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004a771f  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004a7722  8b8be00b0000              MOV ECX,dword ptr [EBX + 0xbe0]
004a7728  8bf1                      MOV ESI,ECX
004a772a  8b9be40b0000              MOV EBX,dword ptr [EBX + 0xbe4]
004a7730  8bf9                      MOV EDI,ECX
004a7732  8bc3                      MOV EAX,EBX
004a7734  0facc60f                  SHRD ESI,EAX,0xf
004a7738  8bc3                      MOV EAX,EBX
004a773a  0facc719                  SHRD EDI,EAX,0x19
004a773e  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
004a7741  81e6ff030000              AND ESI,0x3ff
004a7747  81e7ff030000              AND EDI,0x3ff
004a774d  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
004a7752  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004a775a  e841856400                CALL 0x00aefca0
004a775f  33d2                      XOR EDX,EDX
004a7761  8bce                      MOV ECX,ESI
004a7763  2bc8                      SUB ECX,EAX
004a7765  3bc6                      CMP EAX,ESI
004a7767  0f46d1                    CMOVBE EDX,ECX
004a776a  8b4db0                    MOV ECX,dword ptr [EBP + -0x50]
004a776d  81e2ff030000              AND EDX,0x3ff
004a7773  c1e70a                    SHL EDI,0xa
004a7776  0bd7                      OR EDX,EDI
004a7778  c1e208                    SHL EDX,0x8
004a777b  8b81e00b0000              MOV EAX,dword ptr [ECX + 0xbe0]
004a7781  0facd807                  SHRD EAX,EBX,0x7
004a7785  8bd9                      MOV EBX,ECX
004a7787  0fb6c0                    MOVZX EAX,AL
004a778a  0bd0                      OR EDX,EAX
004a778c  c1e207                    SHL EDX,0x7
004a778f  8b83e00b0000              MOV EAX,dword ptr [EBX + 0xbe0]
004a7795  83e07f                    AND EAX,0x7f
004a7798  c783e40b000000000000      MOV dword ptr [EBX + 0xbe4],0x0
004a77a2  0bd0                      OR EDX,EAX
004a77a4  8993e00b0000              MOV dword ptr [EBX + 0xbe0],EDX
004a77aa  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
004a77ad  3993c80b0000              CMP dword ptr [EBX + 0xbc8],EDX
004a77b3  7510                      JNZ 0x004a77c5
004a77b5  8b83cc0b0000              MOV EAX,dword ptr [EBX + 0xbcc]
004a77bb  3b432c                    CMP EAX,dword ptr [EBX + 0x2c]
004a77be  7505                      JNZ 0x004a77c5
004a77c0  8d7b48                    LEA EDI,[EBX + 0x48]
004a77c3  eb22                      JMP 0x004a77e7
004a77c5  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
004a77c8  8d7b48                    LEA EDI,[EBX + 0x48]
004a77cb  6a00                      PUSH 0x0
004a77cd  50                        PUSH EAX
004a77ce  8bcf                      MOV ECX,EDI
004a77d0  8993c80b0000              MOV dword ptr [EBX + 0xbc8],EDX
004a77d6  8983cc0b0000              MOV dword ptr [EBX + 0xbcc],EAX
004a77dc  e82fe5ffff                CALL 0x004a5d10
004a77e1  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a77e4  83c408                    ADD ESP,0x8
004a77e7  8b4594                    MOV EAX,dword ptr [EBP + -0x6c]
004a77ea  3983c00b0000              CMP dword ptr [EBX + 0xbc0],EAX
004a77f0  0f8e81000000              JLE 0x004a7877
004a77f6  a17816c700                MOV EAX,[0x00c71678]
004a77fb  6a00                      PUSH 0x0
004a77fd  6a00                      PUSH 0x0
004a77ff  6aff                      PUSH -0x1
004a7801  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a7807  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
004a780a  81c118120000              ADD ECX,0x1218
004a7810  83c00a                    ADD EAX,0xa
004a7813  50                        PUSH EAX
004a7814  52                        PUSH EDX
004a7815  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004a781b  50                        PUSH EAX
004a781c  e83f37f7ff                CALL 0x0041af60
004a7821  33f6                      XOR ESI,ESI
004a7823  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
004a7827  397580                    CMP dword ptr [EBP + -0x80],ESI
004a782a  7639                      JBE 0x004a7865
004a782c  0f1f4000                  NOP dword ptr [EAX]
004a7830  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a7833  8bcf                      MOV ECX,EDI
004a7835  6a00                      PUSH 0x0
004a7837  ff732c                    PUSH dword ptr [EBX + 0x2c]
004a783a  e8d1e4ffff                CALL 0x004a5d10
004a783f  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
004a7845  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
004a7848  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a784b  83c00a                    ADD EAX,0xa
004a784e  6a01                      PUSH 0x1
004a7850  8b0cb1                    MOV ECX,dword ptr [ECX + ESI*0x4]
004a7853  83c148                    ADD ECX,0x48
004a7856  50                        PUSH EAX
004a7857  e8b4e4ffff                CALL 0x004a5d10
004a785c  46                        INC ESI
004a785d  83c410                    ADD ESP,0x10
004a7860  3b7580                    CMP ESI,dword ptr [EBP + -0x80]
004a7863  72cb                      JC 0x004a7830
004a7865  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
004a786b  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004a786f  e83cfdf6ff                CALL 0x004175b0
004a7874  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a7877  83fa41                    CMP EDX,0x41
004a787a  0f85b3000000              JNZ 0x004a7933
004a7880  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
004a7884  0f858e020000              JNZ 0x004a7b18
004a788a  6a00                      PUSH 0x0
004a788c  6a08                      PUSH 0x8
004a788e  8bcb                      MOV ECX,EBX
004a7890  e87b4e2000                CALL 0x006ac710
004a7895  84c0                      TEST AL,AL
004a7897  0f847b020000              JZ 0x004a7b18
004a789d  83bb640b000009            CMP dword ptr [EBX + 0xb64],0x9
004a78a4  0f856e020000              JNZ 0x004a7b18
004a78aa  8b8310040000              MOV EAX,dword ptr [EBX + 0x410]
004a78b0  83f803                    CMP EAX,0x3
004a78b3  0f8d5f020000              JGE 0x004a7b18
004a78b9  83f801                    CMP EAX,0x1
004a78bc  0f8e56020000              JLE 0x004a7b18
004a78c2  837b3441                  CMP dword ptr [EBX + 0x34],0x41
004a78c6  0f844c020000              JZ 0x004a7b18
004a78cc  a17816c700                MOV EAX,[0x00c71678]
004a78d1  6a00                      PUSH 0x0
004a78d3  6a00                      PUSH 0x0
004a78d5  6aff                      PUSH -0x1
004a78d7  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a78dd  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004a78e3  6a01                      PUSH 0x1
004a78e5  6a41                      PUSH 0x41
004a78e7  81c118120000              ADD ECX,0x1218
004a78ed  50                        PUSH EAX
004a78ee  e86d36f7ff                CALL 0x0041af60
004a78f3  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
004a78f7  33f6                      XOR ESI,ESI
004a78f9  8b7d80                    MOV EDI,dword ptr [EBP + -0x80]
004a78fc  85ff                      TEST EDI,EDI
004a78fe  7421                      JZ 0x004a7921
004a7900  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
004a7906  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a7909  6a01                      PUSH 0x1
004a790b  ff732c                    PUSH dword ptr [EBX + 0x2c]
004a790e  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
004a7911  83c148                    ADD ECX,0x48
004a7914  e8f7e3ffff                CALL 0x004a5d10
004a7919  46                        INC ESI
004a791a  83c408                    ADD ESP,0x8
004a791d  3bf7                      CMP ESI,EDI
004a791f  72df                      JC 0x004a7900
004a7921  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
004a7927  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004a792b  e880fcf6ff                CALL 0x004175b0
004a7930  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a7933  83fa65                    CMP EDX,0x65
004a7936  0f85dc010000              JNZ 0x004a7b18
004a793c  a17816c700                MOV EAX,[0x00c71678]
004a7941  6a00                      PUSH 0x0
004a7943  6a00                      PUSH 0x0
004a7945  6aff                      PUSH -0x1
004a7947  ff732c                    PUSH dword ptr [EBX + 0x2c]
004a794a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a7950  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004a7956  52                        PUSH EDX
004a7957  81c118120000              ADD ECX,0x1218
004a795d  50                        PUSH EAX
004a795e  e8fd35f7ff                CALL 0x0041af60
004a7963  33c0                      XOR EAX,EAX
004a7965  c645fc07                  MOV byte ptr [EBP + -0x4],0x7
004a7969  898570ffffff              MOV dword ptr [EBP + 0xffffff70],EAX
004a796f  394580                    CMP dword ptr [EBP + -0x80],EAX
004a7972  0f867f010000              JBE 0x004a7af7
004a7978  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004a7980  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
004a7986  8b0481                    MOV EAX,dword ptr [ECX + EAX*0x4]
004a7989  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
004a798f  3bc3                      CMP EAX,EBX
004a7991  0f844a010000              JZ 0x004a7ae1
004a7997  8b787c                    MOV EDI,dword ptr [EAX + 0x7c]
004a799a  8d7048                    LEA ESI,[EAX + 0x48]
004a799d  8975bc                    MOV dword ptr [EBP + -0x44],ESI
004a79a0  85ff                      TEST EDI,EDI
004a79a2  7505                      JNZ 0x004a79a9
004a79a4  83c8ff                    OR EAX,0xffffffff
004a79a7  eb26                      JMP 0x004a79cf
004a79a9  f30f108088000000          MOVSS XMM0,dword ptr [EAX + 0x88]
004a79b1  83ec08                    SUB ESP,0x8
004a79b4  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004a79b9  d94594                    FLD dword ptr [EBP + -0x6c]
004a79bc  dd1c24                    FSTP qword ptr [ESP]
004a79bf  e8538f6400                CALL 0x00af0917
004a79c4  d95d94                    FSTP dword ptr [EBP + -0x6c]
004a79c7  f30f2c4594                CVTTSS2SI EAX,dword ptr [EBP + -0x6c]
004a79cc  83c408                    ADD ESP,0x8
004a79cf  85c0                      TEST EAX,EAX
004a79d1  0f850a010000              JNZ 0x004a7ae1
004a79d7  85ff                      TEST EDI,EDI
004a79d9  740b                      JZ 0x004a79e6
004a79db  57                        PUSH EDI
004a79dc  8d4dd8                    LEA ECX,[EBP + -0x28]
004a79df  e86c55f6ff                CALL 0x0040cf50
004a79e4  eb19                      JMP 0x004a79ff
004a79e6  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
004a79ed  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
004a79f4  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004a79fb  c645d800                  MOV byte ptr [EBP + -0x28],0x0
004a79ff  c645fc08                  MOV byte ptr [EBP + -0x4],0x8
004a7a03  8bce                      MOV ECX,ESI
004a7a05  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
004a7a08  6a01                      PUSH 0x1
004a7a0a  ff732c                    PUSH dword ptr [EBX + 0x2c]
004a7a0d  e8fee2ffff                CALL 0x004a5d10
004a7a12  8b7dec                    MOV EDI,dword ptr [EBP + -0x14]
004a7a15  8d4dd8                    LEA ECX,[EBP + -0x28]
004a7a18  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
004a7a1b  83c408                    ADD ESP,0x8
004a7a1e  83ff10                    CMP EDI,0x10
004a7a21  0f43ce                    CMOVNC ECX,ESI
004a7a24  894d9c                    MOV dword ptr [EBP + -0x64],ECX
004a7a27  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004a7a2a  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
004a7a2d  85c9                      TEST ECX,ECX
004a7a2f  744a                      JZ 0x004a7a7b
004a7a31  83791410                  CMP dword ptr [ECX + 0x14],0x10
004a7a35  8bc1                      MOV EAX,ECX
004a7a37  7202                      JC 0x004a7a3b
004a7a39  8b01                      MOV EAX,dword ptr [ECX]
004a7a3b  8b4d9c                    MOV ECX,dword ptr [EBP + -0x64]
004a7a3e  6690                      NOP
004a7a40  8a10                      MOV DL,byte ptr [EAX]
004a7a42  3a11                      CMP DL,byte ptr [ECX]
004a7a44  751a                      JNZ 0x004a7a60
004a7a46  84d2                      TEST DL,DL
004a7a48  7412                      JZ 0x004a7a5c
004a7a4a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a7a4d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a7a50  750e                      JNZ 0x004a7a60
004a7a52  83c002                    ADD EAX,0x2
004a7a55  83c102                    ADD ECX,0x2
004a7a58  84d2                      TEST DL,DL
004a7a5a  75e4                      JNZ 0x004a7a40
004a7a5c  33c0                      XOR EAX,EAX
004a7a5e  eb05                      JMP 0x004a7a65
004a7a60  1bc0                      SBB EAX,EAX
004a7a62  83c801                    OR EAX,0x1
004a7a65  85c0                      TEST EAX,EAX
004a7a67  7512                      JNZ 0x004a7a7b
004a7a69  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004a7a6c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004a7a6f  80783400                  CMP byte ptr [EAX + 0x34],0x0
004a7a73  742b                      JZ 0x004a7aa0
004a7a75  80794400                  CMP byte ptr [ECX + 0x44],0x0
004a7a79  7525                      JNZ 0x004a7aa0
004a7a7b  8b75bc                    MOV ESI,dword ptr [EBP + -0x44]
004a7a7e  8bce                      MOV ECX,ESI
004a7a80  6a01                      PUSH 0x1
004a7a82  ff759c                    PUSH dword ptr [EBP + -0x64]
004a7a85  e8462bf6ff                CALL 0x0040a5d0
004a7a8a  84c0                      TEST AL,AL
004a7a8c  740c                      JZ 0x004a7a9a
004a7a8e  8d4e30                    LEA ECX,[ESI + 0x30]
004a7a91  e81a27f6ff                CALL 0x0040a1b0
004a7a96  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004a7a9a  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
004a7a9d  8b7dec                    MOV EDI,dword ptr [EBP + -0x14]
004a7aa0  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
004a7aa6  c645fc07                  MOV byte ptr [EBP + -0x4],0x7
004a7aaa  c680b003000001            MOV byte ptr [EAX + 0x3b0],0x1
004a7ab1  83ff10                    CMP EDI,0x10
004a7ab4  722b                      JC 0x004a7ae1
004a7ab6  8d4f01                    LEA ECX,[EDI + 0x1]
004a7ab9  8bc6                      MOV EAX,ESI
004a7abb  81f900100000              CMP ECX,0x1000
004a7ac1  7214                      JC 0x004a7ad7
004a7ac3  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
004a7ac6  83c123                    ADD ECX,0x23
004a7ac9  2bc6                      SUB EAX,ESI
004a7acb  83c0fc                    ADD EAX,-0x4
004a7ace  83f81f                    CMP EAX,0x1f
004a7ad1  0f8791000000              JA 0x004a7b68
004a7ad7  51                        PUSH ECX
004a7ad8  56                        PUSH ESI
004a7ad9  e87e766400                CALL 0x00aef15c
004a7ade  83c408                    ADD ESP,0x8
004a7ae1  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
004a7ae7  40                        INC EAX
004a7ae8  898570ffffff              MOV dword ptr [EBP + 0xffffff70],EAX
004a7aee  3b4580                    CMP EAX,dword ptr [EBP + -0x80]
004a7af1  0f8289feffff              JC 0x004a7980
004a7af7  80bd74ffffff00            CMP byte ptr [EBP + 0xffffff74],0x0
004a7afe  7518                      JNZ 0x004a7b18
004a7b00  c645fc09                  MOV byte ptr [EBP + -0x4],0x9
004a7b04  b101                      MOV CL,0x1
004a7b06  8b9578ffffff              MOV EDX,dword ptr [EBP + 0xffffff78]
004a7b0c  6a00                      PUSH 0x0
004a7b0e  6a00                      PUSH 0x0
004a7b10  e89bcd5b00                CALL 0x00a648b0
004a7b15  83c408                    ADD ESP,0x8
004a7b18  8b75b4                    MOV ESI,dword ptr [EBP + -0x4c]
004a7b1b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a7b22  85f6                      TEST ESI,ESI
004a7b24  0f8459020000              JZ 0x004a7d83
004a7b2a  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
004a7b2d  b893244992                MOV EAX,0x92492493
004a7b32  2bce                      SUB ECX,ESI
004a7b34  f7e9                      IMUL ECX
004a7b36  03d1                      ADD EDX,ECX
004a7b38  c1fa05                    SAR EDX,0x5
004a7b3b  8bc2                      MOV EAX,EDX
004a7b3d  c1e81f                    SHR EAX,0x1f
004a7b40  03c2                      ADD EAX,EDX
004a7b42  8d0cc500000000            LEA ECX,[EAX*0x8 + 0x0]
004a7b49  2bc8                      SUB ECX,EAX
004a7b4b  8bc6                      MOV EAX,ESI
004a7b4d  c1e103                    SHL ECX,0x3
004a7b50  81f900100000              CMP ECX,0x1000
004a7b56  7216                      JC 0x004a7b6e
004a7b58  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
004a7b5b  83c123                    ADD ECX,0x23
004a7b5e  2bc6                      SUB EAX,ESI
004a7b60  83c0fc                    ADD EAX,-0x4
004a7b63  83f81f                    CMP EAX,0x1f
004a7b66  7606                      JBE 0x004a7b6e
004a7b68  ff159488b100              CALL dword ptr [0x00b18894]
004a7b6e  51                        PUSH ECX
004a7b6f  56                        PUSH ESI
004a7b70  e8e7756400                CALL 0x00aef15c
004a7b75  83c408                    ADD ESP,0x8
004a7b78  e906020000                JMP 0x004a7d83
004a7b7d  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
004a7b81  7454                      JZ 0x004a7bd7
004a7b83  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
004a7b8a  754b                      JNZ 0x004a7bd7
004a7b8c  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
004a7b8f  83781410                  CMP dword ptr [EAX + 0x14],0x10
004a7b93  7202                      JC 0x004a7b97
004a7b95  8b00                      MOV EAX,dword ptr [EAX]
004a7b97  b924e9b100                MOV ECX,0xb1e924
004a7b9c  0f1f4000                  NOP dword ptr [EAX]
004a7ba0  8a10                      MOV DL,byte ptr [EAX]
004a7ba2  3a11                      CMP DL,byte ptr [ECX]
004a7ba4  751a                      JNZ 0x004a7bc0
004a7ba6  84d2                      TEST DL,DL
004a7ba8  7412                      JZ 0x004a7bbc
004a7baa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a7bad  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a7bb0  750e                      JNZ 0x004a7bc0
004a7bb2  83c002                    ADD EAX,0x2
004a7bb5  83c102                    ADD ECX,0x2
004a7bb8  84d2                      TEST DL,DL
004a7bba  75e4                      JNZ 0x004a7ba0
004a7bbc  33c0                      XOR EAX,EAX
004a7bbe  eb05                      JMP 0x004a7bc5
004a7bc0  1bc0                      SBB EAX,EAX
004a7bc2  83c801                    OR EAX,0x1
004a7bc5  85c0                      TEST EAX,EAX
004a7bc7  750e                      JNZ 0x004a7bd7
004a7bc9  50                        PUSH EAX
004a7bca  6854bcb100                PUSH 0xb1bc54
004a7bcf  8d4b48                    LEA ECX,[EBX + 0x48]
004a7bd2  e8a927f6ff                CALL 0x0040a380
004a7bd7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a7bdf  8d4d90                    LEA ECX,[EBP + -0x70]
004a7be2  a17816c700                MOV EAX,[0x00c71678]
004a7be7  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
004a7bef  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a7bf7  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
004a7bff  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
004a7c07  f30f5c05d0a9ba00          SUBSS XMM0,dword ptr [0x00baa9d0]
004a7c0f  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004a7c15  51                        PUSH ECX
004a7c16  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
004a7c1c  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004a7c21  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
004a7c29  f30f5c05d0a9ba00          SUBSS XMM0,dword ptr [0x00baa9d0]
004a7c31  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004a7c36  e805ce4900                CALL 0x00944a40
004a7c3b  84c0                      TEST AL,AL
004a7c3d  0f8540010000              JNZ 0x004a7d83
004a7c43  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
004a7c4b  8d4d90                    LEA ECX,[EBP + -0x70]
004a7c4e  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
004a7c56  a17816c700                MOV EAX,[0x00c71678]
004a7c5b  51                        PUSH ECX
004a7c5c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004a7c62  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004a7c67  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
004a7c6f  f30f5c05d0a9ba00          SUBSS XMM0,dword ptr [0x00baa9d0]
004a7c77  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
004a7c7d  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004a7c82  e8b9cd4900                CALL 0x00944a40
004a7c87  84c0                      TEST AL,AL
004a7c89  0f85f4000000              JNZ 0x004a7d83
004a7c8f  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
004a7c97  8d4d90                    LEA ECX,[EBP + -0x70]
004a7c9a  f30f5c05d0a9ba00          SUBSS XMM0,dword ptr [0x00baa9d0]
004a7ca2  a17816c700                MOV EAX,[0x00c71678]
004a7ca7  51                        PUSH ECX
004a7ca8  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004a7cae  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004a7cb3  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
004a7cbb  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
004a7cc3  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
004a7cc9  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004a7cce  e86dcd4900                CALL 0x00944a40
004a7cd3  84c0                      TEST AL,AL
004a7cd5  0f85a8000000              JNZ 0x004a7d83
004a7cdb  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
004a7ce3  8d4d90                    LEA ECX,[EBP + -0x70]
004a7ce6  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
004a7cee  a17816c700                MOV EAX,[0x00c71678]
004a7cf3  51                        PUSH ECX
004a7cf4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004a7cfa  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004a7cff  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
004a7d07  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
004a7d0f  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
004a7d15  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004a7d1a  e821cd4900                CALL 0x00944a40
004a7d1f  84c0                      TEST AL,AL
004a7d21  7560                      JNZ 0x004a7d83
004a7d23  8bbbe00b0000              MOV EDI,dword ptr [EBX + 0xbe0]
004a7d29  8bf7                      MOV ESI,EDI
004a7d2b  8b8be40b0000              MOV ECX,dword ptr [EBX + 0xbe4]
004a7d31  8bd6                      MOV EDX,ESI
004a7d33  8bde                      MOV EBX,ESI
004a7d35  8bc1                      MOV EAX,ECX
004a7d37  0facc307                  SHRD EBX,EAX,0x7
004a7d3b  8bc1                      MOV EAX,ECX
004a7d3d  0facce19                  SHRD ESI,ECX,0x19
004a7d41  0facc20f                  SHRD EDX,EAX,0xf
004a7d45  81e6ff030000              AND ESI,0x3ff
004a7d4b  b81e000000                MOV EAX,0x1e
004a7d50  81e2ff030000              AND EDX,0x3ff
004a7d56  3bd0                      CMP EDX,EAX
004a7d58  0f47d0                    CMOVA EDX,EAX
004a7d5b  c1e60a                    SHL ESI,0xa
004a7d5e  0bf2                      OR ESI,EDX
004a7d60  0fb6c3                    MOVZX EAX,BL
004a7d63  8b5db0                    MOV EBX,dword ptr [EBP + -0x50]
004a7d66  83e77f                    AND EDI,0x7f
004a7d69  c1e608                    SHL ESI,0x8
004a7d6c  0bf0                      OR ESI,EAX
004a7d6e  c1e607                    SHL ESI,0x7
004a7d71  0bf7                      OR ESI,EDI
004a7d73  c783e40b000000000000      MOV dword ptr [EBX + 0xbe4],0x0
004a7d7d  89b3e00b0000              MOV dword ptr [EBX + 0xbe0],ESI
004a7d83  8bcb                      MOV ECX,EBX
004a7d85  e8e60d0000                CALL 0x004a8b70
004a7d8a  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
004a7d8d  0f57c0                    XORPS XMM0,XMM0
004a7d90  8b93e40b0000              MOV EDX,dword ptr [EBX + 0xbe4]
004a7d96  894328                    MOV dword ptr [EBX + 0x28],EAX
004a7d99  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
004a7d9c  89432c                    MOV dword ptr [EBX + 0x2c],EAX
004a7d9f  8b83e00b0000              MOV EAX,dword ptr [EBX + 0xbe0]
004a7da5  8bf8                      MOV EDI,EAX
004a7da7  89458c                    MOV dword ptr [EBP + -0x74],EAX
004a7daa  8bcf                      MOV ECX,EDI
004a7dac  8bc2                      MOV EAX,EDX
004a7dae  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004a7db5  0facc107                  SHRD ECX,EAX,0x7
004a7db9  8bf7                      MOV ESI,EDI
004a7dbb  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004a7dc2  8bc2                      MOV EAX,EDX
004a7dc4  0fb6c9                    MOVZX ECX,CL
004a7dc7  0facd719                  SHRD EDI,EDX,0x19
004a7dcb  6a01                      PUSH 0x1
004a7dcd  0facc60f                  SHRD ESI,EAX,0xf
004a7dd1  8b03                      MOV EAX,dword ptr [EBX]
004a7dd3  81e7ff030000              AND EDI,0x3ff
004a7dd9  6a00                      PUSH 0x0
004a7ddb  47                        INC EDI
004a7ddc  898d68ffffff              MOV dword ptr [EBP + 0xffffff68],ECX
004a7de2  68ff000000                PUSH 0xff
004a7de7  81e6ff030000              AND ESI,0x3ff
004a7ded  897d94                    MOV dword ptr [EBP + -0x6c],EDI
004a7df0  85c9                      TEST ECX,ECX
004a7df2  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
004a7df9  8d4dc4                    LEA ECX,[EBP + -0x3c]
004a7dfc  6aff                      PUSH -0x1
004a7dfe  51                        PUSH ECX
004a7dff  0f1145d4                  MOVUPS xmmword ptr [EBP + -0x2c],XMM0
004a7e03  8bcb                      MOV ECX,EBX
004a7e05  7409                      JZ 0x004a7e10
004a7e07  0f2805c0c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac5c0]
004a7e0e  eb07                      JMP 0x004a7e17
004a7e10  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004a7e17  0f1145c4                  MOVUPS xmmword ptr [EBP + -0x3c],XMM0
004a7e1b  ff503c                    CALL dword ptr [EAX + 0x3c]
004a7e1e  8b83c80b0000              MOV EAX,dword ptr [EBX + 0xbc8]
004a7e24  3d06010000                CMP EAX,0x106
004a7e29  771c                      JA 0x004a7e47
004a7e2b  0f84b1030000              JZ 0x004a81e2
004a7e31  83e824                    SUB EAX,0x24
004a7e34  83f842                    CMP EAX,0x42
004a7e37  7728                      JA 0x004a7e61
004a7e39  0fb68004844a00            MOVZX EAX,byte ptr [EAX + 0x4a8404]
004a7e40  ff2485fc834a00            JMP dword ptr [EAX*0x4 + 0x4a83fc]
004a7e47  2d07010000                SUB EAX,0x107
004a7e4c  3d96000000                CMP EAX,0x96
004a7e51  770e                      JA 0x004a7e61
004a7e53  0fb68050844a00            MOVZX EAX,byte ptr [EAX + 0x4a8450]
004a7e5a  ff248548844a00            JMP dword ptr [EAX*0x4 + 0x4a8448]
004a7e61  8bc6                      MOV EAX,ESI
004a7e63  4e                        DEC ESI
004a7e64  85c0                      TEST EAX,EAX
004a7e66  0f8576030000              JNZ 0x004a81e2
004a7e6c  e8ef702400                CALL 0x006eef60
004a7e71  8bcb                      MOV ECX,EBX
004a7e73  660f6ec0                  MOVD XMM0,EAX
004a7e77  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a7e7b  c1e81f                    SHR EAX,0x1f
004a7e7e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a7e87  660f5ac0                  CVTPD2PS XMM0,XMM0
004a7e8b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a7e93  f30f59055caaba00          MULSS XMM0,dword ptr [0x00baaa5c]
004a7e9b  f30f58055caaba00          ADDSS XMM0,dword ptr [0x00baaa5c]
004a7ea3  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004a7ea8  e893692100                CALL 0x006be840
004a7ead  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
004a7eb5  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004a7ebc  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
004a7ec4  9f                        LAHF
004a7ec5  f6c444                    TEST AH,0x44
004a7ec8  7a4e                      JP 0x004a7f18
004a7eca  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
004a7ed1  9f                        LAHF
004a7ed2  f6c444                    TEST AH,0x44
004a7ed5  7a41                      JP 0x004a7f18
004a7ed7  a17816c700                MOV EAX,[0x00c71678]
004a7edc  8bcb                      MOV ECX,EBX
004a7ede  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004a7ee4  e857692100                CALL 0x006be840
004a7ee9  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004a7ef1  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004a7ef6  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004a7efe  8d4598                    LEA EAX,[EBP + -0x68]
004a7f01  50                        PUSH EAX
004a7f02  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004a7f07  e864711d00                CALL 0x0067f070
004a7f0c  c7042400002043            MOV dword ptr [ESP],0x43200000
004a7f13  83ec08                    SUB ESP,0x8
004a7f16  eb5f                      JMP 0x004a7f77
004a7f18  a17816c700                MOV EAX,[0x00c71678]
004a7f1d  8bcb                      MOV ECX,EBX
004a7f1f  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004a7f25  e816692100                CALL 0x006be840
004a7f2a  8bcb                      MOV ECX,EBX
004a7f2c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004a7f34  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004a7f39  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004a7f41  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004a7f46  e8f5682100                CALL 0x006be840
004a7f4b  8b8860030000              MOV ECX,dword ptr [EAX + 0x360]
004a7f51  8b8064030000              MOV EAX,dword ptr [EAX + 0x364]
004a7f57  89459c                    MOV dword ptr [EBP + -0x64],EAX
004a7f5a  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
004a7f60  894d98                    MOV dword ptr [EBP + -0x68],ECX
004a7f63  8d4d98                    LEA ECX,[EBP + -0x68]
004a7f66  50                        PUSH EAX
004a7f67  e8c4805600                CALL 0x00a10030
004a7f6c  83ec0c                    SUB ESP,0xc
004a7f6f  c744240800002043          MOV dword ptr [ESP + 0x8],0x43200000
004a7f77  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
004a7f7c  8bce                      MOV ECX,ESI
004a7f7e  f30f101d5caaba00          MOVSS XMM3,dword ptr [0x00baaa5c]
004a7f86  0f28c1                    MOVAPS XMM0,XMM1
004a7f89  f30f5900                  MULSS XMM0,dword ptr [EAX]
004a7f8d  c744240400002043          MOV dword ptr [ESP + 0x4],0x43200000
004a7f95  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
004a7f9a  8d45a0                    LEA EAX,[EBP + -0x60]
004a7f9d  c7042400002043            MOV dword ptr [ESP],0x43200000
004a7fa4  f30f5845a4                ADDSS XMM0,dword ptr [EBP + -0x5c]
004a7fa9  50                        PUSH EAX
004a7faa  f30f584d88                ADDSS XMM1,dword ptr [EBP + -0x78]
004a7faf  8d4584                    LEA EAX,[EBP + -0x7c]
004a7fb2  50                        PUSH EAX
004a7fb3  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004a7fb8  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
004a7fbd  e88eaf3600                CALL 0x00812f50
004a7fc2  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
004a7fc7  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004a7fcc  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004a7fd1  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004a7fd6  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
004a7fdd  e87e6f2400                CALL 0x006eef60
004a7fe2  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
004a7fe7  660f6ec0                  MOVD XMM0,EAX
004a7feb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a7fef  c1e81f                    SHR EAX,0x1f
004a7ff2  33c9                      XOR ECX,ECX
004a7ff4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a7ffd  660f5ac0                  CVTPD2PS XMM0,XMM0
004a8001  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a8009  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004a8011  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004a8016  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
004a801b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004a8020  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004a8026  33ff                      XOR EDI,EDI
004a8028  8b82acba0100              MOV EAX,dword ptr [EDX + 0x1baac]
004a802e  8db2a8ba0100              LEA ESI,[EDX + 0x1baa8]
004a8034  2b06                      SUB EAX,dword ptr [ESI]
004a8036  c1f802                    SAR EAX,0x2
004a8039  85c0                      TEST EAX,EAX
004a803b  0f84f6020000              JZ 0x004a8337
004a8041  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004a8044  8bc1                      MOV EAX,ECX
004a8046  2b06                      SUB EAX,dword ptr [ESI]
004a8048  c1f802                    SAR EAX,0x2
004a804b  85c0                      TEST EAX,EAX
004a804d  7518                      JNZ 0x004a8067
004a804f  68bce6b700                PUSH 0xb7e6bc
004a8054  6a10                      PUSH 0x10
004a8056  e865925600                CALL 0x00a112c0
004a805b  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004a805e  83c408                    ADD ESP,0x8
004a8061  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004a8067  8b06                      MOV EAX,dword ptr [ESI]
004a8069  2bc8                      SUB ECX,EAX
004a806b  c1f902                    SAR ECX,0x2
004a806e  3bf9                      CMP EDI,ECX
004a8070  7303                      JNC 0x004a8075
004a8072  8d04b8                    LEA EAX,[EAX + EDI*0x4]
004a8075  8b00                      MOV EAX,dword ptr [EAX]
004a8077  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004a807f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004a8087  f30f5c45b0                SUBSS XMM0,dword ptr [EBP + -0x50]
004a808c  f30f5c4db4                SUBSS XMM1,dword ptr [EBP + -0x4c]
004a8091  f30f59c0                  MULSS XMM0,XMM0
004a8095  f30f59c9                  MULSS XMM1,XMM1
004a8099  f30f58c8                  ADDSS XMM1,XMM0
004a809d  f30f10054cacba00          MOVSS XMM0,dword ptr [0x00baac4c]
004a80a5  0f2fc1                    COMISS XMM0,XMM1
004a80a8  771f                      JA 0x004a80c9
004a80aa  8b82acba0100              MOV EAX,dword ptr [EDX + 0x1baac]
004a80b0  8db2a8ba0100              LEA ESI,[EDX + 0x1baa8]
004a80b6  2b06                      SUB EAX,dword ptr [ESI]
004a80b8  47                        INC EDI
004a80b9  c1f802                    SAR EAX,0x2
004a80bc  3bf8                      CMP EDI,EAX
004a80be  7281                      JC 0x004a8041
004a80c0  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
004a80c3  40                        INC EAX
004a80c4  e97b020000                JMP 0x004a8344
004a80c9  660f6e45bc                MOVD XMM0,dword ptr [EBP + -0x44]
004a80ce  8bcb                      MOV ECX,EBX
004a80d0  8bba00830100              MOV EDI,dword ptr [EDX + 0x18300]
004a80d6  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a80d9  f30f59055caaba00          MULSS XMM0,dword ptr [0x00baaa5c]
004a80e1  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
004a80e9  f30f580514abba00          ADDSS XMM0,dword ptr [0x00baab14]
004a80f1  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004a80f6  e845672100                CALL 0x006be840
004a80fb  8db03c030000              LEA ESI,[EAX + 0x33c]
004a8101  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
004a8104  2503000080                AND EAX,0x80000003
004a8109  7905                      JNS 0x004a8110
004a810b  48                        DEC EAX
004a810c  83c8fc                    OR EAX,0xfffffffc
004a810f  40                        INC EAX
004a8110  660f6ec0                  MOVD XMM0,EAX
004a8114  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a8117  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004a811f  f30f5845a4                ADDSS XMM0,dword ptr [EBP + -0x5c]
004a8124  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004a812c  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004a8131  e80a54f7ff                CALL 0x0041d540
004a8136  f30f5945b8                MULSS XMM0,dword ptr [EBP + -0x48]
004a813b  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004a813f  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
004a8144  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004a8149  e8d253f7ff                CALL 0x0041d520
004a814e  f30f5945b8                MULSS XMM0,dword ptr [EBP + -0x48]
004a8153  8d4598                    LEA EAX,[EBP + -0x68]
004a8156  83ec0c                    SUB ESP,0xc
004a8159  8bcf                      MOV ECX,EDI
004a815b  f30f101d5caaba00          MOVSS XMM3,dword ptr [0x00baaa5c]
004a8163  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004a8168  c744240800002043          MOV dword ptr [ESP + 0x8],0x43200000
004a8170  c744240400002043          MOV dword ptr [ESP + 0x4],0x43200000
004a8178  c7042400002043            MOV dword ptr [ESP],0x43200000
004a817f  50                        PUSH EAX
004a8180  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
004a8186  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004a818b  50                        PUSH EAX
004a818c  e8bfad3600                CALL 0x00812f50
004a8191  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004a8194  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
004a819c  41                        INC ECX
004a819d  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
004a81a5  894dbc                    MOV dword ptr [EBP + -0x44],ECX
004a81a8  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004a81ad  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004a81b2  83f914                    CMP ECX,0x14
004a81b5  0f8c65feffff              JL 0x004a8020
004a81bb  51                        PUSH ECX
004a81bc  68d8dfb100                PUSH 0xb1dfd8
004a81c1  6a01                      PUSH 0x1
004a81c3  e8f8905600                CALL 0x00a112c0
004a81c8  8b7d94                    MOV EDI,dword ptr [EBP + -0x6c]
004a81cb  83c40c                    ADD ESP,0xc
004a81ce  e88d6d2400                CALL 0x006eef60
004a81d3  33d2                      XOR EDX,EDX
004a81d5  b958020000                MOV ECX,0x258
004a81da  f7f1                      DIV ECX
004a81dc  8db22c010000              LEA ESI,[EDX + 0x12c]
004a81e2  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
004a81e8  81e6ff030000              AND ESI,0x3ff
004a81ee  c1e70a                    SHL EDI,0xa
004a81f1  0bf7                      OR ESI,EDI
004a81f3  0fb6c0                    MOVZX EAX,AL
004a81f6  c1e608                    SHL ESI,0x8
004a81f9  0bf0                      OR ESI,EAX
004a81fb  c783e40b000000000000      MOV dword ptr [EBX + 0xbe4],0x0
004a8205  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
004a8208  c1e607                    SHL ESI,0x7
004a820b  83e07f                    AND EAX,0x7f
004a820e  0bf0                      OR ESI,EAX
004a8210  83bb1004000001            CMP dword ptr [EBX + 0x410],0x1
004a8217  89b3e00b0000              MOV dword ptr [EBX + 0xbe0],ESI
004a821d  753e                      JNZ 0x004a825d
004a821f  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
004a8225  83f806                    CMP EAX,0x6
004a8228  742d                      JZ 0x004a8257
004a822a  83f807                    CMP EAX,0x7
004a822d  7428                      JZ 0x004a8257
004a822f  83f810                    CMP EAX,0x10
004a8232  7423                      JZ 0x004a8257
004a8234  83f808                    CMP EAX,0x8
004a8237  741e                      JZ 0x004a8257
004a8239  83f809                    CMP EAX,0x9
004a823c  7419                      JZ 0x004a8257
004a823e  83f80a                    CMP EAX,0xa
004a8241  7414                      JZ 0x004a8257
004a8243  83f80b                    CMP EAX,0xb
004a8246  740f                      JZ 0x004a8257
004a8248  83f80d                    CMP EAX,0xd
004a824b  740a                      JZ 0x004a8257
004a824d  83f80e                    CMP EAX,0xe
004a8250  7405                      JZ 0x004a8257
004a8252  83f80f                    CMP EAX,0xf
004a8255  7506                      JNZ 0x004a825d
004a8257  fe8bd20b0000              DEC byte ptr [EBX + 0xbd2]
004a825d  8b8be80b0000              MOV ECX,dword ptr [EBX + 0xbe8]
004a8263  85c9                      TEST ECX,ECX
004a8265  0f84b0000000              JZ 0x004a831b
004a826b  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
004a8272  0f85a3000000              JNZ 0x004a831b
004a8278  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a8280  8d9540ffffff              LEA EDX,[EBP + 0xffffff40]
004a8286  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004a828e  8b03                      MOV EAX,dword ptr [EBX]
004a8290  6a1e                      PUSH 0x1e
004a8292  52                        PUSH EDX
004a8293  c78540ffffff00000000      MOV dword ptr [EBP + 0xffffff40],0x0
004a829d  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
004a82a7  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
004a82b1  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
004a82bb  f30f118d50ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM1
004a82c3  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
004a82cb  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
004a82d3  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004a82db  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004a82e5  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
004a82ef  ff711c                    PUSH dword ptr [ECX + 0x1c]
004a82f2  f30f104114                MOVSS XMM0,dword ptr [ECX + 0x14]
004a82f7  ff7118                    PUSH dword ptr [ECX + 0x18]
004a82fa  51                        PUSH ECX
004a82fb  8bcb                      MOV ECX,EBX
004a82fd  f30f110424                MOVSS dword ptr [ESP],XMM0
004a8302  ff5020                    CALL dword ptr [EAX + 0x20]
004a8305  8b8be80b0000              MOV ECX,dword ptr [EBX + 0xbe8]
004a830b  e850150000                CALL 0x004a9860
004a8310  8b8be80b0000              MOV ECX,dword ptr [EBX + 0xbe8]
004a8316  e855080000                CALL 0x004a8b70
004a831b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004a831e  64890d00000000            MOV dword ptr FS:[0x0],ECX
004a8325  59                        POP ECX
004a8326  5f                        POP EDI
004a8327  5e                        POP ESI
004a8328  5b                        POP EBX
004a8329  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004a832c  33cd                      XOR ECX,EBP
004a832e  e8f86d6400                CALL 0x00aef12b
004a8333  8be5                      MOV ESP,EBP
004a8335  5d                        POP EBP
004a8336  c3                        RET
004a8337  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004a833c  8d4101                    LEA EAX,[ECX + 0x1]
004a833f  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004a8344  50                        PUSH EAX
004a8345  68d8dfb100                PUSH 0xb1dfd8
004a834a  6a01                      PUSH 0x1
004a834c  e86f8f5600                CALL 0x00a112c0
004a8351  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
004a8356  83c40c                    ADD ESP,0xc
004a8359  f30f11833c030000          MOVSS dword ptr [EBX + 0x33c],XMM0
004a8361  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004a8366  f30f118340030000          MOVSS dword ptr [EBX + 0x340],XMM0
004a836e  8b83640c0000              MOV EAX,dword ptr [EBX + 0xc64]
004a8374  83f812                    CMP EAX,0x12
004a8377  750a                      JNZ 0x004a8383
004a8379  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004a8381  eb0d                      JMP 0x004a8390
004a8383  83f813                    CMP EAX,0x13
004a8386  750d                      JNZ 0x004a8395
004a8388  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004a8390  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004a8395  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004a839b  8d4db8                    LEA ECX,[EBP + -0x48]
004a839e  c745b8d6000000            MOV dword ptr [EBP + -0x48],0xd6
004a83a5  e8d6e34a00                CALL 0x00956780
004a83aa  f30f104dac                MOVSS XMM1,dword ptr [EBP + -0x54]
004a83af  83ec08                    SUB ESP,0x8
004a83b2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004a83ba  f30f110c24                MOVSS dword ptr [ESP],XMM1
004a83bf  6a00                      PUSH 0x0
004a83c1  6a02                      PUSH 0x2
004a83c3  51                        PUSH ECX
004a83c4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a83cb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004a83d1  ff75b8                    PUSH dword ptr [EBP + -0x48]
004a83d4  e857584800                CALL 0x0092dc30
004a83d9  81a3d80b0000ffffff00      AND dword ptr [EBX + 0xbd8],0xffffff
004a83e3  33ff                      XOR EDI,EDI
004a83e5  c783dc0b000000000000      MOV dword ptr [EBX + 0xbdc],0x0
004a83ef  e9dafdffff                JMP 0x004a81ce
004a83f4  e8e74af6ff                CALL 0x0040cee0
