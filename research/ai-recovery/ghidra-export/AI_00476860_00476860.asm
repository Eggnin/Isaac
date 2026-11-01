; J460 NPC AI 0x00476860 AI_00476860
; types=62
; identities=62.0.0,62.1.0,62.2.0,62.3.0
; entry=00476860
00476860  53                        PUSH EBX
00476861  8bdc                      MOV EBX,ESP
00476863  83ec08                    SUB ESP,0x8
00476866  83e4f8                    AND ESP,0xfffffff8
00476869  83c404                    ADD ESP,0x4
0047686c  55                        PUSH EBP
0047686d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00476870  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00476874  8bec                      MOV EBP,ESP
00476876  6aff                      PUSH -0x1
00476878  68b52aaf00                PUSH 0xaf2ab5
0047687d  64a100000000              MOV EAX,FS:[0x0]
00476883  50                        PUSH EAX
00476884  53                        PUSH EBX
00476885  81eca0030000              SUB ESP,0x3a0
0047688b  a1b493bf00                MOV EAX,[0x00bf93b4]
00476890  33c5                      XOR EAX,EBP
00476892  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00476895  56                        PUSH ESI
00476896  57                        PUSH EDI
00476897  50                        PUSH EAX
00476898  8d45f4                    LEA EAX,[EBP + -0xc]
0047689b  64a300000000              MOV FS:[0x0],EAX
004768a1  8bf9                      MOV EDI,ECX
004768a3  89bd90fcffff              MOV dword ptr [EBP + 0xfffffc90],EDI
004768a9  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
004768ad  750a                      JNZ 0x004768b9
004768af  e84c8f1300                CALL 0x005af800
004768b4  e925340000                JMP 0x00479cde
004768b9  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004768bc  33c9                      XOR ECX,ECX
004768be  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
004768c6  8985c0fcffff              MOV dword ptr [EBP + 0xfffffcc0],EAX
004768cc  898dd0fcffff              MOV dword ptr [EBP + 0xfffffcd0],ECX
004768d2  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004768da  2bd0                      SUB EDX,EAX
004768dc  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004768e2  8995acfcffff              MOV dword ptr [EBP + 0xfffffcac],EDX
004768e8  8d97bc030000              LEA EDX,[EDI + 0x3bc]
004768ee  899594fcffff              MOV dword ptr [EBP + 0xfffffc94],EDX
004768f4  85c0                      TEST EAX,EAX
004768f6  7453                      JZ 0x0047694b
004768f8  8bf2                      MOV ESI,EDX
004768fa  33ff                      XOR EDI,EDI
004768fc  0f1f4000                  NOP dword ptr [EAX]
00476900  6a00                      PUSH 0x0
00476902  68acd6c500                PUSH 0xc5d6ac
00476907  68dcd5c500                PUSH 0xc5d5dc
0047690c  6a00                      PUSH 0x0
0047690e  50                        PUSH EAX
0047690f  e89d9f6700                CALL 0x00af08b1
00476914  83c414                    ADD ESP,0x14
00476917  85c0                      TEST EAX,EAX
00476919  750f                      JNZ 0x0047692a
0047691b  6850d4b100                PUSH 0xb1d450
00476920  6a10                      PUSH 0x10
00476922  e899a95900                CALL 0x00a112c0
00476927  83c408                    ADD ESP,0x8
0047692a  8b36                      MOV ESI,dword ptr [ESI]
0047692c  47                        INC EDI
0047692d  81c6bc030000              ADD ESI,0x3bc
00476933  8b06                      MOV EAX,dword ptr [ESI]
00476935  85c0                      TEST EAX,EAX
00476937  75c7                      JNZ 0x00476900
00476939  89bdd0fcffff              MOV dword ptr [EBP + 0xfffffcd0],EDI
0047693f  8bbd90fcffff              MOV EDI,dword ptr [EBP + 0xfffffc90]
00476945  8b8dd0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcd0]
0047694b  0f57c0                    XORPS XMM0,XMM0
0047694e  8d0489                    LEA EAX,[ECX + ECX*0x4]
00476951  0f2f8764030000            COMISS XMM0,dword ptr [EDI + 0x364]
00476958  898754030000              MOV dword ptr [EDI + 0x354],EAX
0047695e  7608                      JBE 0x00476968
00476960  f7d8                      NEG EAX
00476962  898754030000              MOV dword ptr [EDI + 0x354],EAX
00476968  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0047696f  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00476977  0f8548030000              JNZ 0x00476cc5
0047697d  85c9                      TEST ECX,ECX
0047697f  0f8540030000              JNZ 0x00476cc5
00476985  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
00476988  8995d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EDX
0047698e  83fa02                    CMP EDX,0x2
00476991  7565                      JNZ 0x004769f8
00476993  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047699b  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
004769a1  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004769a7  818f6801000000000100      OR dword ptr [EDI + 0x168],0x10000
004769b1  f30f59c1                  MULSS XMM0,XMM1
004769b5  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004769bb  8d85c8fcffff              LEA EAX,[EBP + 0xfffffcc8]
004769c1  50                        PUSH EAX
004769c2  6a01                      PUSH 0x1
004769c4  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004769cc  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004769d4  f30f59c1                  MULSS XMM0,XMM1
004769d8  c785c8fcffff00000000      MOV dword ptr [EBP + 0xfffffcc8],0x0
004769e2  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
004769ea  e8d152fdff                CALL 0x0044bcc0
004769ef  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
004769f2  8995d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EDX
004769f8  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004769fe  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00476a04  83e1fb                    AND ECX,0xfffffffb
00476a07  81c900000400              OR ECX,0x40000
00476a0d  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00476a13  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00476a19  83fa01                    CMP EDX,0x1
00476a1c  b806000000                MOV EAX,0x6
00476a21  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00476a2b  b909000000                MOV ECX,0x9
00476a30  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00476a3a  0f44c1                    CMOVZ EAX,ECX
00476a3d  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00476a47  89bdccfcffff              MOV dword ptr [EBP + 0xfffffccc],EDI
00476a4d  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
00476a53  c785b8fcffff00000000      MOV dword ptr [EBP + 0xfffffcb8],0x0
00476a5d  c785a0fcffff08000000      MOV dword ptr [EBP + 0xfffffca0],0x8
00476a67  e8f4842700                CALL 0x006eef60
00476a6c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00476a72  6a00                      PUSH 0x0
00476a74  68acd6c500                PUSH 0xc5d6ac
00476a79  68dcd5c500                PUSH 0xc5d5dc
00476a7e  6a00                      PUSH 0x0
00476a80  50                        PUSH EAX
00476a81  6a00                      PUSH 0x0
00476a83  57                        PUSH EDI
00476a84  6840b6c700                PUSH 0xc7b640
00476a89  8d873c030000              LEA EAX,[EDI + 0x33c]
00476a8f  50                        PUSH EAX
00476a90  ff772c                    PUSH dword ptr [EDI + 0x2c]
00476a93  6a3e                      PUSH 0x3e
00476a95  e88620fbff                CALL 0x00428b20
00476a9a  50                        PUSH EAX
00476a9b  e8119e6700                CALL 0x00af08b1
00476aa0  8bf0                      MOV ESI,EAX
00476aa2  83c414                    ADD ESP,0x14
00476aa5  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00476aab  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00476ab1  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00476ab8  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
00476abe  8b08                      MOV ECX,dword ptr [EAX]
00476ac0  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
00476ac7  85c9                      TEST ECX,ECX
00476ac9  741e                      JZ 0x00476ae9
00476acb  8985c8fcffff              MOV dword ptr [EBP + 0xfffffcc8],EAX
00476ad1  81c1cc030000              ADD ECX,0x3cc
00476ad7  8d85c8fcffff              LEA EAX,[EBP + 0xfffffcc8]
00476add  50                        PUSH EAX
00476ade  e82d870500                CALL 0x004cf210
00476ae3  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00476ae9  8b8dccfcffff              MOV ECX,dword ptr [EBP + 0xfffffccc]
00476aef  8908                      MOV dword ptr [EAX],ECX
00476af1  85c9                      TEST ECX,ECX
00476af3  740c                      JZ 0x00476b01
00476af5  50                        PUSH EAX
00476af6  e8f5710500                CALL 0x004cdcf0
00476afb  8b8dccfcffff              MOV ECX,dword ptr [EBP + 0xfffffccc]
00476b01  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00476b07  898684030000              MOV dword ptr [ESI + 0x384],EAX
00476b0d  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
00476b13  898680030000              MOV dword ptr [ESI + 0x380],EAX
00476b19  8d81c0030000              LEA EAX,[ECX + 0x3c0]
00476b1f  8b08                      MOV ECX,dword ptr [EAX]
00476b21  8985ccfcffff              MOV dword ptr [EBP + 0xfffffccc],EAX
00476b27  85c9                      TEST ECX,ECX
00476b29  741e                      JZ 0x00476b49
00476b2b  8985c8fcffff              MOV dword ptr [EBP + 0xfffffcc8],EAX
00476b31  81c1cc030000              ADD ECX,0x3cc
00476b37  8d85c8fcffff              LEA EAX,[EBP + 0xfffffcc8]
00476b3d  50                        PUSH EAX
00476b3e  e8cd860500                CALL 0x004cf210
00476b43  8b85ccfcffff              MOV EAX,dword ptr [EBP + 0xfffffccc]
00476b49  50                        PUSH EAX
00476b4a  8bce                      MOV ECX,ESI
00476b4c  8930                      MOV dword ptr [EAX],ESI
00476b4e  e89d710500                CALL 0x004cdcf0
00476b53  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
00476b5d  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00476b67  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00476b6b  89b5ccfcffff              MOV dword ptr [EBP + 0xfffffccc],ESI
00476b71  0f85d5000000              JNZ 0x00476c4c
00476b77  8b95d4fcffff              MOV EDX,dword ptr [EBP + 0xfffffcd4]
00476b7d  b801000000                MOV EAX,0x1
00476b82  3bd0                      CMP EDX,EAX
00476b84  b904000000                MOV ECX,0x4
00476b89  0f44c1                    CMOVZ EAX,ECX
00476b8c  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00476b92  3bc8                      CMP ECX,EAX
00476b94  0f8cb8000000              JL 0x00476c52
00476b9a  83fa01                    CMP EDX,0x1
00476b9d  b805000000                MOV EAX,0x5
00476ba2  0f4485a0fcffff            CMOVZ EAX,dword ptr [EBP + 0xfffffca0]
00476ba9  3bc8                      CMP ECX,EAX
00476bab  0f8da1000000              JGE 0x00476c52
00476bb1  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00476bb9  83fa01                    CMP EDX,0x1
00476bbc  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00476bc4  b804000000                MOV EAX,0x4
00476bc9  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00476bd0  ba07000000                MOV EDX,0x7
00476bd5  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00476bdc  0f44c2                    CMOVZ EAX,EDX
00476bdf  6aff                      PUSH -0x1
00476be1  3bc8                      CMP ECX,EAX
00476be3  752e                      JNZ 0x00476c13
00476be5  f30f11859cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM0
00476bed  ffb59cfcffff              PUSH dword ptr [EBP + 0xfffffc9c]
00476bf3  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
00476bfb  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00476c03  f30f118d98fcffff          MOVSS dword ptr [EBP + 0xfffffc98],XMM1
00476c0b  ffb598fcffff              PUSH dword ptr [EBP + 0xfffffc98]
00476c11  eb2c                      JMP 0x00476c3f
00476c13  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00476c1b  ffb5b4fcffff              PUSH dword ptr [EBP + 0xfffffcb4]
00476c21  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
00476c29  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00476c31  f30f118db0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM1
00476c39  ffb5b0fcffff              PUSH dword ptr [EBP + 0xfffffcb0]
00476c3f  51                        PUSH ECX
00476c40  8bce                      MOV ECX,ESI
00476c42  f30f110424                MOVSS dword ptr [ESP],XMM0
00476c47  e854562300                CALL 0x006ac2a0
00476c4c  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00476c52  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00476c56  7516                      JNZ 0x00476c6e
00476c58  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00476c5e  818e6801000000000100      OR dword ptr [ESI + 0x168],0x10000
00476c68  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00476c6e  41                        INC ECX
00476c6f  898db8fcffff              MOV dword ptr [EBP + 0xfffffcb8],ECX
00476c75  3b8da8fcffff              CMP ECX,dword ptr [EBP + 0xfffffca8]
00476c7b  0f8ce6fdffff              JL 0x00476a67
00476c81  8d4e48                    LEA ECX,[ESI + 0x48]
00476c84  c78654030000e8030000      MOV dword ptr [ESI + 0x354],0x3e8
00476c8e  6a00                      PUSH 0x0
00476c90  e88b45f9ff                CALL 0x0040b220
00476c95  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00476c9d  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
00476ca2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00476caa  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
00476caf  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00476cb5  818e6801000000000100      OR dword ptr [ESI + 0x168],0x10000
00476cbf  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00476cc5  83bdc0fcffff01            CMP dword ptr [EBP + 0xfffffcc0],0x1
00476ccc  0f85cc020000              JNZ 0x00476f9e
00476cd2  6683bfc40b000000          CMP word ptr [EDI + 0xbc4],0x0
00476cda  0f85be020000              JNZ 0x00476f9e
00476ce0  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00476ce4  0f85b4020000              JNZ 0x00476f9e
00476cea  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00476cf0  8bf7                      MOV ESI,EDI
00476cf2  85c0                      TEST EAX,EAX
00476cf4  744c                      JZ 0x00476d42
00476cf6  81c7bc030000              ADD EDI,0x3bc
00476cfc  0f1f4000                  NOP dword ptr [EAX]
00476d00  6a00                      PUSH 0x0
00476d02  68acd6c500                PUSH 0xc5d6ac
00476d07  68dcd5c500                PUSH 0xc5d5dc
00476d0c  6a00                      PUSH 0x0
00476d0e  50                        PUSH EAX
00476d0f  e89d9b6700                CALL 0x00af08b1
00476d14  83c414                    ADD ESP,0x14
00476d17  85c0                      TEST EAX,EAX
00476d19  750f                      JNZ 0x00476d2a
00476d1b  6850d4b100                PUSH 0xb1d450
00476d20  6a10                      PUSH 0x10
00476d22  e899a55900                CALL 0x00a112c0
00476d27  83c408                    ADD ESP,0x8
00476d2a  8b37                      MOV ESI,dword ptr [EDI]
00476d2c  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
00476d32  8dbebc030000              LEA EDI,[ESI + 0x3bc]
00476d38  85c0                      TEST EAX,EAX
00476d3a  75c4                      JNZ 0x00476d00
00476d3c  8bbd90fcffff              MOV EDI,dword ptr [EBP + 0xfffffc90]
00476d42  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00476d48  f30f104050                MOVSS XMM0,dword ptr [EAX + 0x50]
00476d4d  33c0                      XOR EAX,EAX
00476d4f  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
00476d57  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00476d5d  81e100000010              AND ECX,0x10000000
00476d63  0bc1                      OR EAX,ECX
00476d65  7412                      JZ 0x00476d79
00476d67  f30f10058ca9ba00          MOVSS XMM0,dword ptr [0x00baa98c]
00476d6f  c7868403000000009642      MOV dword ptr [ESI + 0x384],0x42960000
00476d79  66ff86c40b0000            INC word ptr [ESI + 0xbc4]
00476d80  33c0                      XOR EAX,EAX
00476d82  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
00476d8a  c6867301000000            MOV byte ptr [ESI + 0x173],0x0
00476d91  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00476d97  3986c8000000              CMP dword ptr [ESI + 0xc8],EAX
00476d9d  0f863b010000              JBE 0x00476ede
00476da3  8d4e48                    LEA ECX,[ESI + 0x48]
00476da6  50                        PUSH EAX
00476da7  e87444f9ff                CALL 0x0040b220
00476dac  8b00                      MOV EAX,dword ptr [EAX]
00476dae  85c0                      TEST EAX,EAX
00476db0  7405                      JZ 0x00476db7
00476db2  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00476db5  eb03                      JMP 0x00476dba
00476db7  83c8ff                    OR EAX,0xffffffff
00476dba  85c0                      TEST EAX,EAX
00476dbc  0f8500010000              JNZ 0x00476ec2
00476dc2  8d4830                    LEA ECX,[EAX + 0x30]
00476dc5  e83661f9ff                CALL 0x0040cf00
00476dca  0f100560e2b100            MOVUPS XMM0,xmmword ptr [0x00b1e260]
00476dd1  c745e428000000            MOV dword ptr [EBP + -0x1c],0x28
00476dd8  c745e82f000000            MOV dword ptr [EBP + -0x18],0x2f
00476ddf  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00476de2  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00476de5  0f100570e2b100            MOVUPS XMM0,xmmword ptr [0x00b1e270]
00476dec  0f114010                  MOVUPS xmmword ptr [EAX + 0x10],XMM0
00476df0  f30f7e0580e2b100          MOVQ XMM0,qword ptr [0x00b1e280]
00476df8  660fd64020                MOVQ qword ptr [EAX + 0x20],XMM0
00476dfd  c6402800                  MOV byte ptr [EAX + 0x28],0x0
00476e01  6800000010                PUSH 0x10000000
00476e06  6a00                      PUSH 0x0
00476e08  8bcf                      MOV ECX,EDI
00476e0a  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00476e11  e81a06faff                CALL 0x00417430
00476e16  84c0                      TEST AL,AL
00476e18  7413                      JZ 0x00476e2d
00476e1a  6a23                      PUSH 0x23
00476e1c  683ce2b100                PUSH 0xb1e23c
00476e21  6a06                      PUSH 0x6
00476e23  6a04                      PUSH 0x4
00476e25  8d4dd4                    LEA ECX,[EBP + -0x2c]
00476e28  e853270200                CALL 0x00499580
00476e2d  8d45d4                    LEA EAX,[EBP + -0x2c]
00476e30  8bcf                      MOV ECX,EDI
00476e32  50                        PUSH EAX
00476e33  8d45a8                    LEA EAX,[EBP + -0x58]
00476e36  50                        PUSH EAX
00476e37  e8043a2400                CALL 0x006ba840
00476e3c  50                        PUSH EAX
00476e3d  ffb5b8fcffff              PUSH dword ptr [EBP + 0xfffffcb8]
00476e43  8d4e48                    LEA ECX,[ESI + 0x48]
00476e46  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00476e4a  e8e150f9ff                CALL 0x0040bf30
00476e4f  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00476e53  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
00476e56  83fa10                    CMP EDX,0x10
00476e59  722c                      JC 0x00476e87
00476e5b  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
00476e5e  42                        INC EDX
00476e5f  8bc1                      MOV EAX,ECX
00476e61  81fa00100000              CMP EDX,0x1000
00476e67  7214                      JC 0x00476e7d
00476e69  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00476e6c  83c223                    ADD EDX,0x23
00476e6f  2bc1                      SUB EAX,ECX
00476e71  83c0fc                    ADD EAX,-0x4
00476e74  83f81f                    CMP EAX,0x1f
00476e77  0f876b020000              JA 0x004770e8
00476e7d  52                        PUSH EDX
00476e7e  51                        PUSH ECX
00476e7f  e8d8826700                CALL 0x00aef15c
00476e84  83c408                    ADD ESP,0x8
00476e87  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00476e8e  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00476e91  83fa10                    CMP EDX,0x10
00476e94  722c                      JC 0x00476ec2
00476e96  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00476e99  42                        INC EDX
00476e9a  8bc1                      MOV EAX,ECX
00476e9c  81fa00100000              CMP EDX,0x1000
00476ea2  7214                      JC 0x00476eb8
00476ea4  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00476ea7  83c223                    ADD EDX,0x23
00476eaa  2bc1                      SUB EAX,ECX
00476eac  83c0fc                    ADD EAX,-0x4
00476eaf  83f81f                    CMP EAX,0x1f
00476eb2  0f8730020000              JA 0x004770e8
00476eb8  52                        PUSH EDX
00476eb9  51                        PUSH ECX
00476eba  e89d826700                CALL 0x00aef15c
00476ebf  83c408                    ADD ESP,0x8
00476ec2  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00476ec8  8d4e48                    LEA ECX,[ESI + 0x48]
00476ecb  40                        INC EAX
00476ecc  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00476ed2  3b86c8000000              CMP EAX,dword ptr [ESI + 0xc8]
00476ed8  0f82c8feffff              JC 0x00476da6
00476ede  51                        PUSH ECX
00476edf  8d4e48                    LEA ECX,[ESI + 0x48]
00476ee2  e81951f9ff                CALL 0x0040c000
00476ee7  80be5101000000            CMP byte ptr [ESI + 0x151],0x0
00476eee  7413                      JZ 0x00476f03
00476ef0  8d4e78                    LEA ECX,[ESI + 0x78]
00476ef3  e83821f9ff                CALL 0x00409030
00476ef8  8d8e98000000              LEA ECX,[ESI + 0x98]
00476efe  e82d21f9ff                CALL 0x00409030
00476f03  8b87780c0000              MOV EAX,dword ptr [EDI + 0xc78]
00476f09  85c0                      TEST EAX,EAX
00476f0b  784f                      JS 0x00476f5c
00476f0d  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00476f13  8b5068                    MOV EDX,dword ptr [EAX + 0x68]
00476f16  8b486c                    MOV ECX,dword ptr [EAX + 0x6c]
00476f19  b843082184                MOV EAX,0x84210843
00476f1e  2bca                      SUB ECX,EDX
00476f20  8995c0fcffff              MOV dword ptr [EBP + 0xfffffcc0],EDX
00476f26  f7e9                      IMUL ECX
00476f28  03d1                      ADD EDX,ECX
00476f2a  8b8f780c0000              MOV ECX,dword ptr [EDI + 0xc78]
00476f30  c1fa06                    SAR EDX,0x6
00476f33  8bc2                      MOV EAX,EDX
00476f35  c1e81f                    SHR EAX,0x1f
00476f38  03c2                      ADD EAX,EDX
00476f3a  3bc8                      CMP ECX,EAX
00476f3c  771e                      JA 0x00476f5c
00476f3e  8b06                      MOV EAX,dword ptr [ESI]
00476f40  6a01                      PUSH 0x1
00476f42  6a00                      PUSH 0x0
00476f44  68ff000000                PUSH 0xff
00476f49  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
00476f4c  6bc17c                    IMUL EAX,ECX,0x7c
00476f4f  8bce                      MOV ECX,ESI
00476f51  6aff                      PUSH -0x1
00476f53  0385c0fcffff              ADD EAX,dword ptr [EBP + 0xfffffcc0]
00476f59  50                        PUSH EAX
00476f5a  ffd2                      CALL EDX
00476f5c  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
00476f62  85c0                      TEST EAX,EAX
00476f64  742a                      JZ 0x00476f90
00476f66  6a00                      PUSH 0x0
00476f68  68acd6c500                PUSH 0xc5d6ac
00476f6d  68dcd5c500                PUSH 0xc5d5dc
00476f72  6a00                      PUSH 0x0
00476f74  50                        PUSH EAX
00476f75  e837996700                CALL 0x00af08b1
00476f7a  83c414                    ADD ESP,0x14
00476f7d  85c0                      TEST EAX,EAX
00476f7f  750f                      JNZ 0x00476f90
00476f81  688cdcb100                PUSH 0xb1dc8c
00476f86  6a10                      PUSH 0x10
00476f88  e833a35900                CALL 0x00a112c0
00476f8d  83c408                    ADD ESP,0x8
00476f90  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
00476f96  85f6                      TEST ESI,ESI
00476f98  0f85a4fdffff              JNZ 0x00476d42
00476f9e  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00476fa4  89bdb8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EDI
00476faa  85c0                      TEST EAX,EAX
00476fac  744e                      JZ 0x00476ffc
00476fae  8db7bc030000              LEA ESI,[EDI + 0x3bc]
00476fb4  6a00                      PUSH 0x0
00476fb6  68acd6c500                PUSH 0xc5d6ac
00476fbb  68dcd5c500                PUSH 0xc5d5dc
00476fc0  6a00                      PUSH 0x0
00476fc2  50                        PUSH EAX
00476fc3  e8e9986700                CALL 0x00af08b1
00476fc8  83c414                    ADD ESP,0x14
00476fcb  85c0                      TEST EAX,EAX
00476fcd  750f                      JNZ 0x00476fde
00476fcf  6850d4b100                PUSH 0xb1d450
00476fd4  6a10                      PUSH 0x10
00476fd6  e8e5a25900                CALL 0x00a112c0
00476fdb  83c408                    ADD ESP,0x8
00476fde  8b3e                      MOV EDI,dword ptr [ESI]
00476fe0  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00476fe6  8db7bc030000              LEA ESI,[EDI + 0x3bc]
00476fec  89bdb8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EDI
00476ff2  85c0                      TEST EAX,EAX
00476ff4  75be                      JNZ 0x00476fb4
00476ff6  8bbd90fcffff              MOV EDI,dword ptr [EBP + 0xfffffc90]
00476ffc  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00477002  8db7c0030000              LEA ESI,[EDI + 0x3c0]
00477008  8bc7                      MOV EAX,EDI
0047700a  8985ccfcffff              MOV dword ptr [EBP + 0xfffffccc],EAX
00477010  85c9                      TEST ECX,ECX
00477012  7456                      JZ 0x0047706a
00477014  8bfe                      MOV EDI,ESI
00477016  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00477020  6a00                      PUSH 0x0
00477022  68acd6c500                PUSH 0xc5d6ac
00477027  68dcd5c500                PUSH 0xc5d5dc
0047702c  6a00                      PUSH 0x0
0047702e  51                        PUSH ECX
0047702f  e87d986700                CALL 0x00af08b1
00477034  83c414                    ADD ESP,0x14
00477037  85c0                      TEST EAX,EAX
00477039  750f                      JNZ 0x0047704a
0047703b  688cdcb100                PUSH 0xb1dc8c
00477040  6a10                      PUSH 0x10
00477042  e879a25900                CALL 0x00a112c0
00477047  83c408                    ADD ESP,0x8
0047704a  8b3f                      MOV EDI,dword ptr [EDI]
0047704c  89bdccfcffff              MOV dword ptr [EBP + 0xfffffccc],EDI
00477052  81c7c0030000              ADD EDI,0x3c0
00477058  8b0f                      MOV ECX,dword ptr [EDI]
0047705a  85c9                      TEST ECX,ECX
0047705c  75c2                      JNZ 0x00477020
0047705e  8bbd90fcffff              MOV EDI,dword ptr [EBP + 0xfffffc90]
00477064  8b85ccfcffff              MOV EAX,dword ptr [EBP + 0xfffffccc]
0047706a  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00477070  3bc8                      CMP ECX,EAX
00477072  757a                      JNZ 0x004770ee
00477074  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0047707a  8d4d80                    LEA ECX,[EBP + -0x80]
0047707d  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
00477087  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0047708d  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00477095  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047709d  8b07                      MOV EAX,dword ptr [EDI]
0047709f  51                        PUSH ECX
004770a0  8bcf                      MOV ECX,EDI
004770a2  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
004770a9  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
004770b0  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
004770b7  c7458c00000000            MOV dword ptr [EBP + -0x74],0x0
004770be  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
004770c3  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004770c8  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
004770cd  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004770d2  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
004770d9  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
004770e0  ff5024                    CALL dword ptr [EAX + 0x24]
004770e3  e9f62b0000                JMP 0x00479cde
004770e8  ff159488b100              CALL dword ptr [0x00b18894]
004770ee  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004770f2  756e                      JNZ 0x00477162
004770f4  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004770fb  7465                      JZ 0x00477162
004770fd  8b0e                      MOV ECX,dword ptr [ESI]
004770ff  33d2                      XOR EDX,EDX
00477101  85c9                      TEST ECX,ECX
00477103  745d                      JZ 0x00477162
00477105  3bc8                      CMP ECX,EAX
00477107  740b                      JZ 0x00477114
00477109  8b89c0030000              MOV ECX,dword ptr [ECX + 0x3c0]
0047710f  42                        INC EDX
00477110  85c9                      TEST ECX,ECX
00477112  75f1                      JNZ 0x00477105
00477114  83fa02                    CMP EDX,0x2
00477117  7649                      JBE 0x00477162
00477119  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0047711c  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0047711f  743b                      JZ 0x0047715c
00477121  f30f101510a0ba00          MOVSS XMM2,dword ptr [0x00baa010]
00477129  0f1f8000000000            NOP dword ptr [EAX]
00477130  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
00477133  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
00477136  741c                      JZ 0x00477154
00477138  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0047713c  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00477141  f30f58ca                  ADDSS XMM1,XMM2
00477145  f30f5cc1                  SUBSS XMM0,XMM1
00477149  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
0047714e  c70000000000              MOV dword ptr [EAX],0x0
00477154  83c038                    ADD EAX,0x38
00477157  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0047715a  75d4                      JNZ 0x00477130
0047715c  8b85ccfcffff              MOV EAX,dword ptr [EBP + 0xfffffccc]
00477162  8bb5b8fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb8]
00477168  3bfe                      CMP EDI,ESI
0047716a  0f85651d0000              JNZ 0x00478ed5
00477170  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
00477178  8bc7                      MOV EAX,EDI
0047717a  f30f5c4f14                SUBSS XMM1,dword ptr [EDI + 0x14]
0047717f  8db0c0030000              LEA ESI,[EAX + 0x3c0]
00477185  f30f118dd0fcffff          MOVSS dword ptr [EBP + 0xfffffcd0],XMM1
0047718d  8b06                      MOV EAX,dword ptr [ESI]
0047718f  85c0                      TEST EAX,EAX
00477191  7432                      JZ 0x004771c5
00477193  6a00                      PUSH 0x0
00477195  68acd6c500                PUSH 0xc5d6ac
0047719a  68dcd5c500                PUSH 0xc5d5dc
0047719f  6a00                      PUSH 0x0
004771a1  50                        PUSH EAX
004771a2  e80a976700                CALL 0x00af08b1
004771a7  83c414                    ADD ESP,0x14
004771aa  85c0                      TEST EAX,EAX
004771ac  750f                      JNZ 0x004771bd
004771ae  688cdcb100                PUSH 0xb1dc8c
004771b3  6a10                      PUSH 0x10
004771b5  e806a15900                CALL 0x00a112c0
004771ba  83c408                    ADD ESP,0x8
004771bd  f30f108dd0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcd0]
004771c5  8b06                      MOV EAX,dword ptr [ESI]
004771c7  85c0                      TEST EAX,EAX
004771c9  7419                      JZ 0x004771e4
004771cb  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
004771d3  0f2fc8                    COMISS XMM1,XMM0
004771d6  7706                      JA 0x004771de
004771d8  f30f10c9                  MOVSS XMM1,XMM1
004771dc  eb04                      JMP 0x004771e2
004771de  f30f10c8                  MOVSS XMM1,XMM0
004771e2  eb9b                      JMP 0x0047717f
004771e4  8bf7                      MOV ESI,EDI
004771e6  89bdd4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EDI
004771ec  0f1f4000                  NOP dword ptr [EAX]
004771f0  6800000010                PUSH 0x10000000
004771f5  6a00                      PUSH 0x0
004771f7  8bcf                      MOV ECX,EDI
004771f9  e83202faff                CALL 0x00417430
004771fe  84c0                      TEST AL,AL
00477200  7426                      JZ 0x00477228
00477202  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00477207  0f57d2                    XORPS XMM2,XMM2
0047720a  0f2fc2                    COMISS XMM0,XMM2
0047720d  7619                      JBE 0x00477228
0047720f  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
00477217  f30f108dd0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcd0]
0047721f  f30f5cc1                  SUBSS XMM0,XMM1
00477223  0f2fc2                    COMISS XMM0,XMM2
00477226  772c                      JA 0x00477254
00477228  6800000010                PUSH 0x10000000
0047722d  6a00                      PUSH 0x0
0047722f  8bcf                      MOV ECX,EDI
00477231  e8fa01faff                CALL 0x00417430
00477236  84c0                      TEST AL,AL
00477238  7563                      JNZ 0x0047729d
0047723a  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
00477242  f30f5c4614                SUBSS XMM0,dword ptr [ESI + 0x14]
00477247  f30f108dd0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcd0]
0047724f  0f2fc1                    COMISS XMM0,XMM1
00477252  7649                      JBE 0x0047729d
00477254  3bb5ccfcffff              CMP ESI,dword ptr [EBP + 0xfffffccc]
0047725a  7441                      JZ 0x0047729d
0047725c  8b06                      MOV EAX,dword ptr [ESI]
0047725e  8d8d54fcffff              LEA ECX,[EBP + 0xfffffc54]
00477264  57                        PUSH EDI
00477265  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
00477268  e8a3a0fbff                CALL 0x00431310
0047726d  8b8dd4fcffff              MOV ECX,dword ptr [EBP + 0xfffffcd4]
00477273  8d8554fcffff              LEA EAX,[EBP + 0xfffffc54]
00477279  6a1e                      PUSH 0x1e
0047727b  50                        PUSH EAX
0047727c  6a00                      PUSH 0x0
0047727e  f30f108180030000          MOVSS XMM0,dword ptr [ECX + 0x380]
00477286  f30f5cc1                  SUBSS XMM0,XMM1
0047728a  6800200000                PUSH 0x2000
0047728f  51                        PUSH ECX
00477290  f30f110424                MOVSS dword ptr [ESP],XMM0
00477295  ffd6                      CALL ESI
00477297  8bb5d4fcffff              MOV ESI,dword ptr [EBP + 0xfffffcd4]
0047729d  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
004772a3  85c0                      TEST EAX,EAX
004772a5  742a                      JZ 0x004772d1
004772a7  6a00                      PUSH 0x0
004772a9  68acd6c500                PUSH 0xc5d6ac
004772ae  68dcd5c500                PUSH 0xc5d5dc
004772b3  6a00                      PUSH 0x0
004772b5  50                        PUSH EAX
004772b6  e8f6956700                CALL 0x00af08b1
004772bb  83c414                    ADD ESP,0x14
004772be  85c0                      TEST EAX,EAX
004772c0  750f                      JNZ 0x004772d1
004772c2  688cdcb100                PUSH 0xb1dc8c
004772c7  6a10                      PUSH 0x10
004772c9  e8f29f5900                CALL 0x00a112c0
004772ce  83c408                    ADD ESP,0x8
004772d1  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
004772d7  89b5d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],ESI
004772dd  85f6                      TEST ESI,ESI
004772df  0f850bffffff              JNZ 0x004771f0
004772e5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004772eb  83f808                    CMP EAX,0x8
004772ee  0f8515010000              JNZ 0x00477409
004772f4  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004772f8  0f8514010000              JNZ 0x00477412
004772fe  0fb787c40b0000            MOVZX EAX,word ptr [EDI + 0xbc4]
00477305  6685c0                    TEST AX,AX
00477308  0f8404010000              JZ 0x00477412
0047730e  6683f801                  CMP AX,0x1
00477312  0f857b1f0000              JNZ 0x00479293
00477318  51                        PUSH ECX
00477319  8d8580fcffff              LEA EAX,[EBP + 0xfffffc80]
0047731f  c7042400000000            MOV dword ptr [ESP],0x0
00477326  50                        PUSH EAX
00477327  8bcf                      MOV ECX,EDI
00477329  e812792400                CALL 0x006bec40
0047732e  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00477334  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00477338  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0047733d  f30f5c09                  SUBSS XMM1,dword ptr [ECX]
00477341  f30f5c4104                SUBSS XMM0,dword ptr [ECX + 0x4]
00477346  e8152a0200                CALL 0x00499d60
0047734b  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00477353  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
00477359  8b06                      MOV EAX,dword ptr [ESI]
0047735b  f30f1185a0fcffff          MOVSS dword ptr [EBP + 0xfffffca0],XMM0
00477363  f30f1185c8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM0
0047736b  85c0                      TEST EAX,EAX
0047736d  7427                      JZ 0x00477396
0047736f  6a00                      PUSH 0x0
00477371  6840d7c500                PUSH 0xc5d740
00477376  68dcd5c500                PUSH 0xc5d5dc
0047737b  6a00                      PUSH 0x0
0047737d  50                        PUSH EAX
0047737e  e82e956700                CALL 0x00af08b1
00477383  83c414                    ADD ESP,0x14
00477386  f30f10801c040000          MOVSS XMM0,dword ptr [EAX + 0x41c]
0047738e  f30f1185c8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM0
00477396  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047739c  85c0                      TEST EAX,EAX
0047739e  0f8513130000              JNZ 0x004786b7
004773a4  50                        PUSH EAX
004773a5  8d4f48                    LEA ECX,[EDI + 0x48]
004773a8  6898e2b100                PUSH 0xb1e298
004773ad  e8ce2ff9ff                CALL 0x0040a380
004773b2  8b85ccfcffff              MOV EAX,dword ptr [EBP + 0xfffffccc]
004773b8  c6807101000000            MOV byte ptr [EAX + 0x171],0x0
004773bf  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004773c9  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
004773d0  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004773da  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004773e2  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004773ea  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004773f2  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004773fa  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
00477404  e988180000                JMP 0x00478c91
00477409  83f809                    CMP EAX,0x9
0047740c  0f85eb070000              JNZ 0x00477bfd
00477412  8bb5ccfcffff              MOV ESI,dword ptr [EBP + 0xfffffccc]
00477418  8b85acfcffff              MOV EAX,dword ptr [EBP + 0xfffffcac]
0047741e  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
00477425  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0047742f  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00477436  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00477440  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00477448  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00477450  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00477458  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00477460  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
0047746a  85c0                      TEST EAX,EAX
0047746c  0f8e271e0000              JLE 0x00479299
00477472  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00477478  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00477480  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00477486  83f909                    CMP ECX,0x9
00477489  0f8544020000              JNZ 0x004776d3
0047748f  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00477492  83f814                    CMP EAX,0x14
00477495  753f                      JNZ 0x004774d6
00477497  83f902                    CMP ECX,0x2
0047749a  754c                      JNZ 0x004774e8
0047749c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004774a0  7409                      JZ 0x004774ab
004774a2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004774a9  7511                      JNZ 0x004774bc
004774ab  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004774b5  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
004774bc  ff8710040000              INC dword ptr [EDI + 0x410]
004774c2  83adacfcffff01            SUB dword ptr [EBP + 0xfffffcac],0x1
004774c9  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004774cf  75af                      JNZ 0x00477480
004774d1  e9bd1d0000                JMP 0x00479293
004774d6  83f902                    CMP ECX,0x2
004774d9  0f85d5060000              JNZ 0x00477bb4
004774df  83f82f                    CMP EAX,0x2f
004774e2  0f85cc060000              JNZ 0x00477bb4
004774e8  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004774f0  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004774f6  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
004774fe  83f812                    CMP EAX,0x12
00477501  750a                      JNZ 0x0047750d
00477503  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0047750b  eb0d                      JMP 0x0047751a
0047750d  83f813                    CMP EAX,0x13
00477510  7510                      JNZ 0x00477522
00477512  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0047751a  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
00477522  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00477528  8d8dd0fcffff              LEA ECX,[EBP + 0xfffffcd0]
0047752e  c785d0fcffffb2000000      MOV dword ptr [EBP + 0xfffffcd0],0xb2
00477538  e843f24d00                CALL 0x00956780
0047753d  f30f1085d4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd4]
00477545  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047754b  83ec08                    SUB ESP,0x8
0047754e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00477556  f30f110424                MOVSS dword ptr [ESP],XMM0
0047755b  6a00                      PUSH 0x0
0047755d  6a02                      PUSH 0x2
0047755f  51                        PUSH ECX
00477560  c704240000803f            MOV dword ptr [ESP],0x3f800000
00477567  ffb5d0fcffff              PUSH dword ptr [EBP + 0xfffffcd0]
0047756d  e8be664b00                CALL 0x0092dc30
00477572  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047757a  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00477580  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
00477588  83f812                    CMP EAX,0x12
0047758b  750a                      JNZ 0x00477597
0047758d  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00477595  eb0d                      JMP 0x004775a4
00477597  83f813                    CMP EAX,0x13
0047759a  7510                      JNZ 0x004775ac
0047759c  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004775a4  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
004775ac  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004775b2  8d8dd0fcffff              LEA ECX,[EBP + 0xfffffcd0]
004775b8  c785d0fcffff75000000      MOV dword ptr [EBP + 0xfffffcd0],0x75
004775c2  e8b9f14d00                CALL 0x00956780
004775c7  f30f1085d4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd4]
004775cf  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004775d5  83ec08                    SUB ESP,0x8
004775d8  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004775e0  f30f110424                MOVSS dword ptr [ESP],XMM0
004775e5  6a00                      PUSH 0x0
004775e7  6a02                      PUSH 0x2
004775e9  51                        PUSH ECX
004775ea  c704240000803f            MOV dword ptr [ESP],0x3f800000
004775f1  ffb5d0fcffff              PUSH dword ptr [EBP + 0xfffffcd0]
004775f7  e834664b00                CALL 0x0092dc30
004775fc  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00477600  7579                      JNZ 0x0047767b
00477602  8d8d28feffff              LEA ECX,[EBP + 0xfffffe28]
00477608  e82379fcff                CALL 0x0043ef30
0047760d  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
00477613  0f280530c6ba00            MOVAPS XMM0,xmmword ptr [0x00bac630]
0047761a  818d80feffff08000080      OR dword ptr [EBP + 0xfffffe80],0x80000008
00477624  898584feffff              MOV dword ptr [EBP + 0xfffffe84],EAX
0047762a  8d8528feffff              LEA EAX,[EBP + 0xfffffe28]
00477630  50                        PUSH EAX
00477631  51                        PUSH ECX
00477632  c704240000e040            MOV dword ptr [ESP],0x40e00000
00477639  8bcf                      MOV ECX,EDI
0047763b  6840b6c700                PUSH 0xc7b640
00477640  6a0c                      PUSH 0xc
00477642  0f118554feffff            MOVUPS xmmword ptr [EBP + 0xfffffe54],XMM0
00477649  c78574feffff8d8c0c3f      MOV dword ptr [EBP + 0xfffffe74],0x3f0c8c8d
00477653  c78578feffff8d8c0c3f      MOV dword ptr [EBP + 0xfffffe78],0x3f0c8c8d
0047765d  c7857cfeffff8d8c0c3f      MOV dword ptr [EBP + 0xfffffe7c],0x3f0c8c8d
00477667  c7852cfeffff000020c2      MOV dword ptr [EBP + 0xfffffe2c],0xc2200000
00477671  e85a572500                CALL 0x006ccdd0
00477676  e9ea040000                JMP 0x00477b65
0047767b  8d8dd8fcffff              LEA ECX,[EBP + 0xfffffcd8]
00477681  e8aa78fcff                CALL 0x0043ef30
00477686  8bcf                      MOV ECX,EDI
00477688  c785dcfcffff000020c2      MOV dword ptr [EBP + 0xfffffcdc],0xc2200000
00477692  e8a9712400                CALL 0x006be840
00477697  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0047769d  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004776a3  8985b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],EAX
004776a9  8d85d8fcffff              LEA EAX,[EBP + 0xfffffcd8]
004776af  50                        PUSH EAX
004776b0  51                        PUSH ECX
004776b1  c7042400000000            MOV dword ptr [ESP],0x0
004776b8  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
004776be  50                        PUSH EAX
004776bf  898db0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ECX
004776c5  8bcf                      MOV ECX,EDI
004776c7  6a0f                      PUSH 0xf
004776c9  e802572500                CALL 0x006ccdd0
004776ce  e992040000                JMP 0x00477b65
004776d3  83f908                    CMP ECX,0x8
004776d6  0f85d8040000              JNZ 0x00477bb4
004776dc  83f82e                    CMP EAX,0x2e
004776df  7423                      JZ 0x00477704
004776e1  83f82f                    CMP EAX,0x2f
004776e4  750b                      JNZ 0x004776f1
004776e6  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004776ea  7418                      JZ 0x00477704
004776ec  e9abfdffff                JMP 0x0047749c
004776f1  83f830                    CMP EAX,0x30
004776f4  0f85ba040000              JNZ 0x00477bb4
004776fa  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004776fe  0f8598fdffff              JNZ 0x0047749c
00477704  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047770c  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00477712  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
0047771a  83f812                    CMP EAX,0x12
0047771d  750a                      JNZ 0x00477729
0047771f  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00477727  eb0d                      JMP 0x00477736
00477729  83f813                    CMP EAX,0x13
0047772c  7510                      JNZ 0x0047773e
0047772e  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00477736  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
0047773e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00477744  8d8dd0fcffff              LEA ECX,[EBP + 0xfffffcd0]
0047774a  c785d0fcffffb2000000      MOV dword ptr [EBP + 0xfffffcd0],0xb2
00477754  e827f04d00                CALL 0x00956780
00477759  f30f1085d4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd4]
00477761  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00477767  83ec08                    SUB ESP,0x8
0047776a  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00477772  f30f110424                MOVSS dword ptr [ESP],XMM0
00477777  6a00                      PUSH 0x0
00477779  6a02                      PUSH 0x2
0047777b  51                        PUSH ECX
0047777c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00477783  ffb5d0fcffff              PUSH dword ptr [EBP + 0xfffffcd0]
00477789  e8a2644b00                CALL 0x0092dc30
0047778e  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00477792  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047779a  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004777a0  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
004777a8  756b                      JNZ 0x00477815
004777aa  83f812                    CMP EAX,0x12
004777ad  750a                      JNZ 0x004777b9
004777af  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004777b7  eb0d                      JMP 0x004777c6
004777b9  83f813                    CMP EAX,0x13
004777bc  7510                      JNZ 0x004777ce
004777be  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004777c6  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
004777ce  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004777d4  8d8dd0fcffff              LEA ECX,[EBP + 0xfffffcd0]
004777da  c785d0fcffff19000000      MOV dword ptr [EBP + 0xfffffcd0],0x19
004777e4  e897ef4d00                CALL 0x00956780
004777e9  f30f1085d4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd4]
004777f1  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004777f7  83ec08                    SUB ESP,0x8
004777fa  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00477802  f30f110424                MOVSS dword ptr [ESP],XMM0
00477807  6a00                      PUSH 0x0
00477809  6a02                      PUSH 0x2
0047780b  51                        PUSH ECX
0047780c  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00477813  eb69                      JMP 0x0047787e
00477815  83f812                    CMP EAX,0x12
00477818  750a                      JNZ 0x00477824
0047781a  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00477822  eb0d                      JMP 0x00477831
00477824  83f813                    CMP EAX,0x13
00477827  7510                      JNZ 0x00477839
00477829  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00477831  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
00477839  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047783f  8d8dd0fcffff              LEA ECX,[EBP + 0xfffffcd0]
00477845  c785d0fcffff0d000000      MOV dword ptr [EBP + 0xfffffcd0],0xd
0047784f  e82cef4d00                CALL 0x00956780
00477854  f30f1085d4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd4]
0047785c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00477862  83ec08                    SUB ESP,0x8
00477865  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047786d  f30f110424                MOVSS dword ptr [ESP],XMM0
00477872  6a00                      PUSH 0x0
00477874  6a02                      PUSH 0x2
00477876  51                        PUSH ECX
00477877  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047787e  ffb5d0fcffff              PUSH dword ptr [EBP + 0xfffffcd0]
00477884  e8a7634b00                CALL 0x0092dc30
00477889  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0047788d  0f85ac000000              JNZ 0x0047793f
00477893  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00477897  0f85a2000000              JNZ 0x0047793f
0047789d  8d8d80fdffff              LEA ECX,[EBP + 0xfffffd80]
004778a3  e88876fcff                CALL 0x0043ef30
004778a8  8b85dcfdffff              MOV EAX,dword ptr [EBP + 0xfffffddc]
004778ae  8bcf                      MOV ECX,EDI
004778b0  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004778b8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004778c0  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
004778c8  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
004778d0  818dd8fdffff00080000      OR dword ptr [EBP + 0xfffffdd8],0x800
004778da  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
004778e0  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
004778e6  50                        PUSH EAX
004778e7  6a09                      PUSH 0x9
004778e9  8d8598fcffff              LEA EAX,[EBP + 0xfffffc98]
004778ef  f30f118de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM1
004778f7  50                        PUSH EAX
004778f8  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
004778fe  f30f1185ecfdffff          MOVSS dword ptr [EBP + 0xfffffdec],XMM0
00477906  50                        PUSH EAX
00477907  c7858cfdffff8fc275bd      MOV dword ptr [EBP + 0xfffffd8c],0xbd75c28f
00477911  c78598fcffff00000041      MOV dword ptr [EBP + 0xfffffc98],0x41000000
0047791b  c7859cfcffff0000c040      MOV dword ptr [EBP + 0xfffffc9c],0x40c00000
00477925  f30f118dbcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM1
0047792d  f30f1185c0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM0
00477935  e8a6392500                CALL 0x006cb2e0
0047793a  e926020000                JMP 0x00477b65
0047793f  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00477946  c685d0feffff01            MOV byte ptr [EBP + 0xfffffed0],0x1
0047794d  0f1185d4feffff            MOVUPS xmmword ptr [EBP + 0xfffffed4],XMM0
00477954  c785e4feffff0000803f      MOV dword ptr [EBP + 0xfffffee4],0x3f800000
0047795e  e8fd752700                CALL 0x006eef60
00477963  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0047796b  8bcf                      MOV ECX,EDI
0047796d  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
00477977  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
00477981  660f6ec0                  MOVD XMM0,EAX
00477985  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00477989  c1e81f                    SHR EAX,0x1f
0047798c  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
00477996  c78548ffffff00007ac4      MOV dword ptr [EBP + 0xffffff48],0xc47a0000
004779a0  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
004779aa  c78558ffffff00000000      MOV dword ptr [EBP + 0xffffff58],0x0
004779b4  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
004779bc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004779c5  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
004779cd  f30f118d40ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM1
004779d5  c7855cffffff1e000000      MOV dword ptr [EBP + 0xffffff5c],0x1e
004779df  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004779e9  660f5ac0                  CVTPD2PS XMM0,XMM0
004779ed  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
004779f7  c68568ffffff00            MOV byte ptr [EBP + 0xffffff68],0x0
004779fe  c7856cffffff000080bf      MOV dword ptr [EBP + 0xffffff6c],0xbf800000
00477a08  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
00477a12  c68574ffffff00            MOV byte ptr [EBP + 0xffffff74],0x0
00477a19  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00477a21  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00477a29  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00477a31  0f280520c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac820]
00477a38  0f1185ecfeffff            MOVUPS xmmword ptr [EBP + 0xfffffeec],XMM0
00477a3f  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00477a46  0f1185fcfeffff            MOVUPS xmmword ptr [EBP + 0xfffffefc],XMM0
00477a4d  0f57c0                    XORPS XMM0,XMM0
00477a50  0f11850cffffff            MOVUPS xmmword ptr [EBP + 0xffffff0c],XMM0
00477a57  660f138528ffffff          MOVLPD qword ptr [EBP + 0xffffff28],XMM0
00477a5f  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00477a67  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00477a6f  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00477a77  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00477a7f  0f57c0                    XORPS XMM0,XMM0
00477a82  660f138550ffffff          MOVLPD qword ptr [EBP + 0xffffff50],XMM0
00477a8a  e8b16d2400                CALL 0x006be840
00477a8f  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00477a95  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00477a9b  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
00477aa1  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00477aa7  50                        PUSH EAX
00477aa8  51                        PUSH ECX
00477aa9  c7042400002041            MOV dword ptr [ESP],0x41200000
00477ab0  8d85a4fcffff              LEA EAX,[EBP + 0xfffffca4]
00477ab6  50                        PUSH EAX
00477ab7  898da4fcffff              MOV dword ptr [EBP + 0xfffffca4],ECX
00477abd  8bcf                      MOV ECX,EDI
00477abf  6a01                      PUSH 0x1
00477ac1  e80a532500                CALL 0x006ccdd0
00477ac6  8bc8                      MOV ECX,EAX
00477ac8  f30f108118040000          MOVSS XMM0,dword ptr [ECX + 0x418]
00477ad0  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
00477ad8  f30f108964030000          MOVSS XMM1,dword ptr [ECX + 0x364]
00477ae0  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
00477ae8  8b813c040000              MOV EAX,dword ptr [ECX + 0x43c]
00477aee  83893804000002            OR dword ptr [ECX + 0x438],0x2
00477af5  f30f118118040000          MOVSS dword ptr [ECX + 0x418],XMM0
00477afd  f30f108114040000          MOVSS XMM0,dword ptr [ECX + 0x414]
00477b05  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00477b0d  89813c040000              MOV dword ptr [ECX + 0x43c],EAX
00477b13  c78120040000cdcccc3f      MOV dword ptr [ECX + 0x420],0x3fcccccd
00477b1d  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
00477b25  f30f118114040000          MOVSS dword ptr [ECX + 0x414],XMM0
00477b2d  f30f108110040000          MOVSS XMM0,dword ptr [ECX + 0x410]
00477b35  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
00477b3d  f30f118110040000          MOVSS dword ptr [ECX + 0x410],XMM0
00477b45  f30f108160030000          MOVSS XMM0,dword ptr [ECX + 0x360]
00477b4d  f30f5905e4a2ba00          MULSS XMM0,dword ptr [0x00baa2e4]
00477b55  f30f118964030000          MOVSS dword ptr [ECX + 0x364],XMM1
00477b5d  f30f118160030000          MOVSS dword ptr [ECX + 0x360],XMM0
00477b65  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00477b6b  8d8dd4fcffff              LEA ECX,[EBP + 0xfffffcd4]
00477b71  c785d4fcffffa7030000      MOV dword ptr [EBP + 0xfffffcd4],0x3a7
00477b7b  e800ec4d00                CALL 0x00956780
00477b80  83ec08                    SUB ESP,0x8
00477b83  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00477b89  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00477b91  c704240000803f            MOV dword ptr [ESP],0x3f800000
00477b98  6a00                      PUSH 0x0
00477b9a  6a02                      PUSH 0x2
00477b9c  51                        PUSH ECX
00477b9d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00477ba4  ffb5d4fcffff              PUSH dword ptr [EBP + 0xfffffcd4]
00477baa  e881604b00                CALL 0x0092dc30
00477baf  e908f9ffff                JMP 0x004774bc
00477bb4  83f868                    CMP EAX,0x68
00477bb7  0f8edff8ffff              JLE 0x0047749c
00477bbd  51                        PUSH ECX
00477bbe  8d8588fcffff              LEA EAX,[EBP + 0xfffffc88]
00477bc4  c7042400000000            MOV dword ptr [ESP],0x0
00477bcb  50                        PUSH EAX
00477bcc  8bcf                      MOV ECX,EDI
00477bce  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00477bd8  e863702400                CALL 0x006bec40
00477bdd  8b08                      MOV ECX,dword ptr [EAX]
00477bdf  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00477be5  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00477be8  898738030000              MOV dword ptr [EDI + 0x338],EAX
00477bee  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00477bf8  e9aef8ffff                JMP 0x004774ab
00477bfd  83f80a                    CMP EAX,0xa
00477c00  0f8412f7ffff              JZ 0x00477318
00477c06  83f803                    CMP EAX,0x3
00477c09  0f85aa050000              JNZ 0x004781b9
00477c0f  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00477c15  33c0                      XOR EAX,EAX
00477c17  81e100000010              AND ECX,0x10000000
00477c1d  0bc1                      OR EAX,ECX
00477c1f  7414                      JZ 0x00477c35
00477c21  a17816c700                MOV EAX,[0x00c71678]
00477c26  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00477c2c  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00477c2f  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00477c33  7527                      JNZ 0x00477c5c
00477c35  e826732700                CALL 0x006eef60
00477c3a  83e001                    AND EAX,0x1
00477c3d  751d                      JNZ 0x00477c5c
00477c3f  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00477c45  83f808                    CMP EAX,0x8
00477c48  7412                      JZ 0x00477c5c
00477c4a  83f809                    CMP EAX,0x9
00477c4d  741a                      JZ 0x00477c69
00477c4f  83f80a                    CMP EAX,0xa
00477c52  0f8485020000              JZ 0x00477edd
00477c58  85c0                      TEST EAX,EAX
00477c5a  753b                      JNZ 0x00477c97
00477c5c  83bfc00b000009            CMP dword ptr [EDI + 0xbc0],0x9
00477c63  0f8574020000              JNZ 0x00477edd
00477c69  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00477c6d  0f856a020000              JNZ 0x00477edd
00477c73  6683bfc40b000001          CMP word ptr [EDI + 0xbc4],0x1
00477c7b  0f855c020000              JNZ 0x00477edd
00477c81  e8da722700                CALL 0x006eef60
00477c86  33d2                      XOR EDX,EDX
00477c88  b905000000                MOV ECX,0x5
00477c8d  f7f1                      DIV ECX
00477c8f  85d2                      TEST EDX,EDX
00477c91  0f8446020000              JZ 0x00477edd
00477c97  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00477c9a  83f801                    CMP EAX,0x1
00477c9d  740f                      JZ 0x00477cae
00477c9f  83f802                    CMP EAX,0x2
00477ca2  755c                      JNZ 0x00477d00
00477ca4  6683bfc40b000001          CMP word ptr [EDI + 0xbc4],0x1
00477cac  7552                      JNZ 0x00477d00
00477cae  e8ad722700                CALL 0x006eef60
00477cb3  83e001                    AND EAX,0x1
00477cb6  7548                      JNZ 0x00477d00
00477cb8  83bfc00b000009            CMP dword ptr [EDI + 0xbc0],0x9
00477cbf  743f                      JZ 0x00477d00
00477cc1  6a01                      PUSH 0x1
00477cc3  c787c00b000009000000      MOV dword ptr [EDI + 0xbc0],0x9
00477ccd  8d4f48                    LEA ECX,[EDI + 0x48]
00477cd0  68ecd2b100                PUSH 0xb1d2ec
00477cd5  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00477cdf  e8ec28f9ff                CALL 0x0040a5d0
00477ce4  84c0                      TEST AL,AL
00477ce6  0f84d9010000              JZ 0x00477ec5
00477cec  8d4f78                    LEA ECX,[EDI + 0x78]
00477cef  e8bc24f9ff                CALL 0x0040a1b0
00477cf4  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00477cfb  e9c5010000                JMP 0x00477ec5
00477d00  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00477d04  0f8598010000              JNZ 0x00477ea2
00477d0a  6683bfc40b000001          CMP word ptr [EDI + 0xbc4],0x1
00477d12  0f858a010000              JNZ 0x00477ea2
00477d18  e843722700                CALL 0x006eef60
00477d1d  83e001                    AND EAX,0x1
00477d20  8d4f48                    LEA ECX,[EDI + 0x48]
00477d23  6a01                      PUSH 0x1
00477d25  6898e2b100                PUSH 0xb1e298
00477d2a  8d044508000000            LEA EAX,[EAX*0x2 + 0x8]
00477d31  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00477d37  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
00477d3d  e88e28f9ff                CALL 0x0040a5d0
00477d42  84c0                      TEST AL,AL
00477d44  740f                      JZ 0x00477d55
00477d46  8d4f78                    LEA ECX,[EDI + 0x78]
00477d49  e86224f9ff                CALL 0x0040a1b0
00477d4e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00477d55  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00477d5c  0f8563010000              JNZ 0x00477ec5
00477d62  51                        PUSH ECX
00477d63  8d8588fcffff              LEA EAX,[EBP + 0xfffffc88]
00477d69  c7042400000000            MOV dword ptr [ESP],0x0
00477d70  50                        PUSH EAX
00477d71  8bcf                      MOV ECX,EDI
00477d73  e8c86e2400                CALL 0x006bec40
00477d78  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00477d80  0f57db                    XORPS XMM3,XMM3
00477d83  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00477d8b  51                        PUSH ECX
00477d8c  f30f1028                  MOVSS XMM5,dword ptr [EAX]
00477d90  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
00477d96  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
00477d9b  f30f5caf3c030000          SUBSS XMM5,dword ptr [EDI + 0x33c]
00477da3  f30f5ca740030000          SUBSS XMM4,dword ptr [EDI + 0x340]
00477dab  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00477db2  e839bbfaff                CALL 0x004238f0
00477db7  0f28cd                    MOVAPS XMM1,XMM5
00477dba  0f28c4                    MOVAPS XMM0,XMM4
00477dbd  8bf0                      MOV ESI,EAX
00477dbf  e89c1f0200                CALL 0x00499d60
00477dc4  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00477dcc  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00477dd4  f30f1185c0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM0
00477ddc  e83f57faff                CALL 0x0041d520
00477de1  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
00477de9  f30f1085c0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc0]
00477df1  e84a57faff                CALL 0x0041d540
00477df6  51                        PUSH ECX
00477df7  c7042400008040            MOV dword ptr [ESP],0x40800000
00477dfe  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
00477e04  56                        PUSH ESI
00477e05  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
00477e0d  8d9598fcffff              LEA EDX,[EBP + 0xfffffc98]
00477e13  f30f1085a8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffca8]
00477e1b  8bcf                      MOV ECX,EDI
00477e1d  6a3c                      PUSH 0x3c
00477e1f  50                        PUSH EAX
00477e20  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00477e28  c78598fcffff00000000      MOV dword ptr [EBP + 0xfffffc98],0x0
00477e32  c7859cfcffff0000a0c2      MOV dword ptr [EBP + 0xfffffc9c],0xc2a00000
00477e3c  e84f3a1900                CALL 0x0060b890
00477e41  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
00477e47  83c410                    ADD ESP,0x10
00477e4a  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
00477e50  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
00477e56  49                        DEC ECX
00477e57  8bc2                      MOV EAX,EDX
00477e59  83e203                    AND EDX,0x3
00477e5c  c1e802                    SHR EAX,0x2
00477e5f  23c8                      AND ECX,EAX
00477e61  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
00477e67  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00477e6a  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
00477e6d  8d3490                    LEA ESI,[EAX + EDX*0x4]
00477e70  85c9                      TEST ECX,ECX
00477e72  7418                      JZ 0x00477e8c
00477e74  8d85c0fcffff              LEA EAX,[EBP + 0xfffffcc0]
00477e7a  89b5c0fcffff              MOV dword ptr [EBP + 0xfffffcc0],ESI
00477e80  81c1cc030000              ADD ECX,0x3cc
00477e86  50                        PUSH EAX
00477e87  e884730500                CALL 0x004cf210
00477e8c  8b85a8fcffff              MOV EAX,dword ptr [EBP + 0xfffffca8]
00477e92  8906                      MOV dword ptr [ESI],EAX
00477e94  85c0                      TEST EAX,EAX
00477e96  742d                      JZ 0x00477ec5
00477e98  56                        PUSH ESI
00477e99  8bc8                      MOV ECX,EAX
00477e9b  e8505e0500                CALL 0x004cdcf0
00477ea0  eb23                      JMP 0x00477ec5
00477ea2  6a01                      PUSH 0x1
00477ea4  c787c00b000008000000      MOV dword ptr [EDI + 0xbc0],0x8
00477eae  8d4f48                    LEA ECX,[EDI + 0x48]
00477eb1  68ccd2b100                PUSH 0xb1d2cc
00477eb6  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00477ec0  e8bb24f9ff                CALL 0x0040a380
00477ec5  6a01                      PUSH 0x1
00477ec7  8bcf                      MOV ECX,EDI
00477ec9  e8e2852400                CALL 0x006c04b0
00477ece  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00477ed8  e9b6130000                JMP 0x00479293
00477edd  a17816c700                MOV EAX,[0x00c71678]
00477ee2  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00477ee8  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00477eee  83f80a                    CMP EAX,0xa
00477ef1  7e33                      JLE 0x00477f26
00477ef3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00477ef7  750a                      JNZ 0x00477f03
00477ef9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00477f01  eb08                      JMP 0x00477f0b
00477f03  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
00477f0b  51                        PUSH ECX
00477f0c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00477f13  6a00                      PUSH 0x0
00477f15  6a02                      PUSH 0x2
00477f17  51                        PUSH ECX
00477f18  f30f110424                MOVSS dword ptr [ESP],XMM0
00477f1d  8bcf                      MOV ECX,EDI
00477f1f  6a40                      PUSH 0x40
00477f21  e87aec2500                CALL 0x006d6ba0
00477f26  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00477f2e  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00477f35  9f                        LAHF
00477f36  f6c444                    TEST AH,0x44
00477f39  7a59                      JP 0x00477f94
00477f3b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00477f43  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00477f4a  9f                        LAHF
00477f4b  f6c444                    TEST AH,0x44
00477f4e  7a44                      JP 0x00477f94
00477f50  a17816c700                MOV EAX,[0x00c71678]
00477f55  8d8d88fcffff              LEA ECX,[EBP + 0xfffffc88]
00477f5b  51                        PUSH ECX
00477f5c  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00477f62  e899ad3900                CALL 0x00812d00
00477f67  8bb5ccfcffff              MOV ESI,dword ptr [EBP + 0xfffffccc]
00477f6d  8b08                      MOV ECX,dword ptr [EAX]
00477f6f  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00477f75  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00477f78  898738030000              MOV dword ptr [EDI + 0x338],EAX
00477f7e  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00477f88  c787500300000000d041      MOV dword ptr [EDI + 0x350],0x41d00000
00477f92  eb37                      JMP 0x00477fcb
00477f94  8bb5ccfcffff              MOV ESI,dword ptr [EBP + 0xfffffccc]
00477f9a  c6867101000001            MOV byte ptr [ESI + 0x171],0x1
00477fa1  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00477fa7  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00477fae  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00477fb1  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
00477fb7  c787500300000000c040      MOV dword ptr [EDI + 0x350],0x40c00000
00477fc1  c787c00b000004000000      MOV dword ptr [EDI + 0xbc0],0x4
00477fcb  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00477fd3  8d873c030000              LEA EAX,[EDI + 0x33c]
00477fd9  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
00477fde  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
00477fe6  f30f5c10                  SUBSS XMM2,dword ptr [EAX]
00477fea  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
00477ff0  0f28c1                    MOVAPS XMM0,XMM1
00477ff3  f30f118dacfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM1
00477ffb  f30f59c1                  MULSS XMM0,XMM1
00477fff  0f28ca                    MOVAPS XMM1,XMM2
00478002  f30f1195d0fcffff          MOVSS dword ptr [EBP + 0xfffffcd0],XMM2
0047800a  f30f59ca                  MULSS XMM1,XMM2
0047800e  f30f58c1                  ADDSS XMM0,XMM1
00478012  e839dafbff                CALL 0x00435a50
00478017  0f28d8                    MOVAPS XMM3,XMM0
0047801a  0f28cb                    MOVAPS XMM1,XMM3
0047801d  f30f119dc0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM3
00478025  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0047802c  0f2f0d54a4ba00            COMISS XMM1,dword ptr [0x00baa454]
00478033  0f86a7000000              JBE 0x004780e0
00478039  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0047803d  7569                      JNZ 0x004780a8
0047803f  f30f1085d0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd0]
00478047  f30f5ec3                  DIVSS XMM0,XMM3
0047804b  f30f1185d0fcffff          MOVSS dword ptr [EBP + 0xfffffcd0],XMM0
00478053  f30f1085acfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcac]
0047805b  f30f5ec3                  DIVSS XMM0,XMM3
0047805f  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
00478067  e8f46e2700                CALL 0x006eef60
0047806c  83e001                    AND EAX,0x1
0047806f  750a                      JNZ 0x0047807b
00478071  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00478079  eb08                      JMP 0x00478083
0047807b  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
00478083  0f28c1                    MOVAPS XMM0,XMM1
00478086  f30f598dacfcffff          MULSS XMM1,dword ptr [EBP + 0xfffffcac]
0047808e  f30f5985d0fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcd0]
00478096  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0047809e  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004780a6  eb38                      JMP 0x004780e0
004780a8  f30f108dd0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcd0]
004780b0  f30f1095acfcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcac]
004780b8  f30f5ecb                  DIVSS XMM1,XMM3
004780bc  f30f5ed3                  DIVSS XMM2,XMM3
004780c0  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
004780c8  f30f5915e8a7ba00          MULSS XMM2,dword ptr [0x00baa7e8]
004780d0  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004780d8  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004780e0  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004780ea  8d4e48                    LEA ECX,[ESI + 0x48]
004780ed  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004780f5  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004780fd  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00478105  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
0047810d  6a00                      PUSH 0x0
0047810f  68cce2b100                PUSH 0xb1e2cc
00478114  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
0047811c  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00478124  e85722f9ff                CALL 0x0040a380
00478129  6a01                      PUSH 0x1
0047812b  8bce                      MOV ECX,ESI
0047812d  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
00478137  e874832400                CALL 0x006c04b0
0047813c  8d8f040c0000              LEA ECX,[EDI + 0xc04]
00478142  e839120200                CALL 0x00499380
00478147  8d8f180c0000              LEA ECX,[EDI + 0xc18]
0047814d  e82e120200                CALL 0x00499380
00478152  f30f108dc0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcc0]
0047815a  8d8f040c0000              LEA ECX,[EDI + 0xc04]
00478160  f30f590d8ca0ba00          MULSS XMM1,dword ptr [0x00baa08c]
00478168  8b8590fcffff              MOV EAX,dword ptr [EBP + 0xfffffc90]
0047816e  f30f100574adba00          MOVSS XMM0,dword ptr [0x00baad74]
00478176  ffb5a8fcffff              PUSH dword ptr [EBP + 0xfffffca8]
0047817c  f30f5cc1                  SUBSS XMM0,XMM1
00478180  c780b00b000000000000      MOV dword ptr [EAX + 0xbb0],0x0
0047818a  f30f1180b40b0000          MOVSS dword ptr [EAX + 0xbb4],XMM0
00478192  e8f90f0200                CALL 0x00499190
00478197  8b8590fcffff              MOV EAX,dword ptr [EBP + 0xfffffc90]
0047819d  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004781a3  054c030000                ADD EAX,0x34c
004781a8  50                        PUSH EAX
004781a9  e8e20f0200                CALL 0x00499190
004781ae  8bbd90fcffff              MOV EDI,dword ptr [EBP + 0xfffffc90]
004781b4  e9da100000                JMP 0x00479293
004781b9  83f804                    CMP EAX,0x4
004781bc  0f85d1100000              JNZ 0x00479293
004781c2  51                        PUSH ECX
004781c3  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004781c9  8db73c030000              LEA ESI,[EDI + 0x33c]
004781cf  e85c100200                CALL 0x00499230
004781d4  f30f100e                  MOVSS XMM1,dword ptr [ESI]
004781d8  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004781dd  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
004781e2  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
004781e6  f30f59c0                  MULSS XMM0,XMM0
004781ea  f30f59c9                  MULSS XMM1,XMM1
004781ee  f30f58c1                  ADDSS XMM0,XMM1
004781f2  e859d8fbff                CALL 0x00435a50
004781f7  0f2f05fca6ba00            COMISS XMM0,dword ptr [0x00baa6fc]
004781fe  7715                      JA 0x00478215
00478200  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00478208  f30f100d5ca8ba00          MOVSS XMM1,dword ptr [0x00baa85c]
00478210  0f2fc1                    COMISS XMM0,XMM1
00478213  7626                      JBE 0x0047823b
00478215  56                        PUSH ESI
00478216  8d8f040c0000              LEA ECX,[EDI + 0xc04]
0047821c  e86f0f0200                CALL 0x00499190
00478221  8d874c030000              LEA EAX,[EDI + 0x34c]
00478227  8d8f180c0000              LEA ECX,[EDI + 0xc18]
0047822d  50                        PUSH EAX
0047822e  e85d0f0200                CALL 0x00499190
00478233  f30f100d5ca8ba00          MOVSS XMM1,dword ptr [0x00baa85c]
0047823b  83bf140c00003c            CMP dword ptr [EDI + 0xc14],0x3c
00478242  0f86b3000000              JBE 0x004782fb
00478248  8b87040c0000              MOV EAX,dword ptr [EDI + 0xc04]
0047824e  8d8f040c0000              LEA ECX,[EDI + 0xc04]
00478254  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
00478257  83ec0c                    SUB ESP,0xc
0047825a  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
0047825d  8bf4                      MOV ESI,ESP
0047825f  83c01e                    ADD EAX,0x1e
00478262  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00478269  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0047826c  8d857cfcffff              LEA EAX,[EBP + 0xfffffc7c]
00478272  50                        PUSH EAX
00478273  e8f80f0200                CALL 0x00499270
00478278  50                        PUSH EAX
00478279  8bce                      MOV ECX,ESI
0047827b  e8d01a0000                CALL 0x00479d50
00478280  83ec0c                    SUB ESP,0xc
00478283  8d45b4                    LEA EAX,[EBP + -0x4c]
00478286  8bcc                      MOV ECX,ESP
00478288  50                        PUSH EAX
00478289  e8c21a0000                CALL 0x00479d50
0047828e  8d45b4                    LEA EAX,[EBP + -0x4c]
00478291  50                        PUSH EAX
00478292  8d8f040c0000              LEA ECX,[EDI + 0xc04]
00478298  e8330d0200                CALL 0x00498fd0
0047829d  8b87180c0000              MOV EAX,dword ptr [EDI + 0xc18]
004782a3  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004782a9  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004782ac  83ec0c                    SUB ESP,0xc
004782af  8b87240c0000              MOV EAX,dword ptr [EDI + 0xc24]
004782b5  8bf4                      MOV ESI,ESP
004782b7  83c01e                    ADD EAX,0x1e
004782ba  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004782c1  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004782c4  8d857cfcffff              LEA EAX,[EBP + 0xfffffc7c]
004782ca  50                        PUSH EAX
004782cb  e8a00f0200                CALL 0x00499270
004782d0  50                        PUSH EAX
004782d1  8bce                      MOV ECX,ESI
004782d3  e8781a0000                CALL 0x00479d50
004782d8  83ec0c                    SUB ESP,0xc
004782db  8d45b4                    LEA EAX,[EBP + -0x4c]
004782de  8bcc                      MOV ECX,ESP
004782e0  50                        PUSH EAX
004782e1  e86a1a0000                CALL 0x00479d50
004782e6  8d45b4                    LEA EAX,[EBP + -0x4c]
004782e9  50                        PUSH EAX
004782ea  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004782f0  e8db0c0200                CALL 0x00498fd0
004782f5  8db73c030000              LEA ESI,[EDI + 0x33c]
004782fb  0f2f8f50030000            COMISS XMM1,dword ptr [EDI + 0x350]
00478302  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0047830a  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00478312  f30f5887b40b0000          ADDSS XMM0,dword ptr [EDI + 0xbb4]
0047831a  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00478322  0f8647010000              JBE 0x0047846f
00478328  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00478330  8d4f48                    LEA ECX,[EDI + 0x48]
00478333  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0047833a  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00478344  7607                      JBE 0x0047834d
00478346  b8c0e2b100                MOV EAX,0xb1e2c0
0047834b  eb11                      JMP 0x0047835e
0047834d  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00478351  b8e0e2b100                MOV EAX,0xb1e2e0
00478356  bad4e2b100                MOV EDX,0xb1e2d4
0047835b  0f45c2                    CMOVNZ EAX,EDX
0047835e  6a00                      PUSH 0x0
00478360  50                        PUSH EAX
00478361  e81a20f9ff                CALL 0x0040a380
00478366  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0047836e  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
00478376  0f28c1                    MOVAPS XMM0,XMM1
00478379  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
00478381  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
00478389  f30f588f50030000          ADDSS XMM1,dword ptr [EDI + 0x350]
00478391  f30f58874c030000          ADDSS XMM0,dword ptr [EDI + 0x34c]
00478399  0f2fca                    COMISS XMM1,XMM2
0047839c  f30f11874c030000          MOVSS dword ptr [EDI + 0x34c],XMM0
004783a4  f30f118f50030000          MOVSS dword ptr [EDI + 0x350],XMM1
004783ac  0f86e10e0000              JBE 0x00479293
004783b2  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004783ba  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
004783c2  f30f5cc8                  SUBSS XMM1,XMM0
004783c6  0f2fd1                    COMISS XMM2,XMM1
004783c9  0f86c40e0000              JBE 0x00479293
004783cf  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004783d7  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004783df  f30f580e                  ADDSS XMM1,dword ptr [ESI]
004783e3  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004783e8  8bb5ccfcffff              MOV ESI,dword ptr [EBP + 0xfffffccc]
004783ee  6a00                      PUSH 0x0
004783f0  68cce2b100                PUSH 0xb1e2cc
004783f5  8d4e48                    LEA ECX,[ESI + 0x48]
004783f8  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
00478400  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00478408  c6867101000001            MOV byte ptr [ESI + 0x171],0x1
0047840f  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
00478419  e8621ff9ff                CALL 0x0040a380
0047841e  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
00478425  743c                      JZ 0x00478463
00478427  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0047842b  750a                      JNZ 0x00478437
0047842d  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
00478435  eb08                      JMP 0x0047843f
00478437  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047843f  51                        PUSH ECX
00478440  c704240000803f            MOV dword ptr [ESP],0x3f800000
00478447  6a00                      PUSH 0x0
00478449  6a02                      PUSH 0x2
0047844b  51                        PUSH ECX
0047844c  f30f110424                MOVSS dword ptr [ESP],XMM0
00478451  8bcf                      MOV ECX,EDI
00478453  6a42                      PUSH 0x42
00478455  e846e72500                CALL 0x006d6ba0
0047845a  6a01                      PUSH 0x1
0047845c  8bce                      MOV ECX,ESI
0047845e  e84d802400                CALL 0x006c04b0
00478463  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0047846a  e92a0e0000                JMP 0x00479299
0047846f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00478477  8bcf                      MOV ECX,EDI
00478479  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
00478481  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0047848b  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00478492  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047849a  e8a1632400                CALL 0x006be840
0047849f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004784a7  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004784ab  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004784b3  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
004784b8  0f28c1                    MOVAPS XMM0,XMM1
004784bb  f30f118dc0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM1
004784c3  f30f59c1                  MULSS XMM0,XMM1
004784c7  0f28ca                    MOVAPS XMM1,XMM2
004784ca  f30f1195a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM2
004784d2  f30f59ca                  MULSS XMM1,XMM2
004784d6  f30f58c1                  ADDSS XMM0,XMM1
004784da  e871d5fbff                CALL 0x00435a50
004784df  0f28d8                    MOVAPS XMM3,XMM0
004784e2  0f28cb                    MOVAPS XMM1,XMM3
004784e5  f30f119dd4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM3
004784ed  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004784f4  0f2f0d54a4ba00            COMISS XMM1,dword ptr [0x00baa454]
004784fb  766a                      JBE 0x00478567
004784fd  f30f1005e0aaba00          MOVSS XMM0,dword ptr [0x00baaae0]
00478505  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
0047850b  f30f108dc0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcc0]
00478513  f30f5cc3                  SUBSS XMM0,XMM3
00478517  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0047851e  8bcf                      MOV ECX,EDI
00478520  f30f1095a8fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffca8]
00478528  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0047852f  6a00                      PUSH 0x0
00478531  f30f59c8                  MULSS XMM1,XMM0
00478535  50                        PUSH EAX
00478536  f30f59d0                  MULSS XMM2,XMM0
0047853a  f30f5ecb                  DIVSS XMM1,XMM3
0047853e  f30f5ed3                  DIVSS XMM2,XMM3
00478542  f30f590d40a0ba00          MULSS XMM1,dword ptr [0x00baa040]
0047854a  f30f591540a0ba00          MULSS XMM2,dword ptr [0x00baa040]
00478552  f30f118db0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM1
0047855a  f30f1195b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM2
00478562  e8498ffbff                CALL 0x004314b0
00478567  a17816c700                MOV EAX,[0x00c71678]
0047856c  8d8d88fcffff              LEA ECX,[EBP + 0xfffffc88]
00478572  51                        PUSH ECX
00478573  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00478579  e882a73900                CALL 0x00812d00
0047857e  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00478583  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00478588  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0047858c  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
00478590  0f28c1                    MOVAPS XMM0,XMM1
00478593  f30f118dc8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM1
0047859b  f30f59c1                  MULSS XMM0,XMM1
0047859f  0f28ca                    MOVAPS XMM1,XMM2
004785a2  f30f1195a0fcffff          MOVSS dword ptr [EBP + 0xfffffca0],XMM2
004785aa  f30f59ca                  MULSS XMM1,XMM2
004785ae  f30f58c1                  ADDSS XMM0,XMM1
004785b2  e899d4fbff                CALL 0x00435a50
004785b7  0f28d8                    MOVAPS XMM3,XMM0
004785ba  0f28cb                    MOVAPS XMM1,XMM3
004785bd  f30f119dc0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM3
004785c5  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004785cc  0f2f0d54a4ba00            COMISS XMM1,dword ptr [0x00baa454]
004785d3  7673                      JBE 0x00478648
004785d5  f30f100594aaba00          MOVSS XMM0,dword ptr [0x00baaa94]
004785dd  8d8da8fcffff              LEA ECX,[EBP + 0xfffffca8]
004785e3  0f2fc3                    COMISS XMM0,XMM3
004785e6  8d85c0fcffff              LEA EAX,[EBP + 0xfffffcc0]
004785ec  c785a8fcffff00004843      MOV dword ptr [EBP + 0xfffffca8],0x43480000
004785f6  6a00                      PUSH 0x0
004785f8  0f46c1                    CMOVBE EAX,ECX
004785fb  8bcf                      MOV ECX,EDI
004785fd  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00478601  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
00478607  0f28ca                    MOVAPS XMM1,XMM2
0047860a  f30f5995c8fcffff          MULSS XMM2,dword ptr [EBP + 0xfffffcc8]
00478612  50                        PUSH EAX
00478613  f30f598da0fcffff          MULSS XMM1,dword ptr [EBP + 0xfffffca0]
0047861b  f30f5ed3                  DIVSS XMM2,XMM3
0047861f  f30f5ecb                  DIVSS XMM1,XMM3
00478623  f30f591530a0ba00          MULSS XMM2,dword ptr [0x00baa030]
0047862b  f30f590d30a0ba00          MULSS XMM1,dword ptr [0x00baa030]
00478633  f30f1195b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM2
0047863b  f30f118db0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM1
00478643  e8688efbff                CALL 0x004314b0
00478648  f30f1095d4fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcd4]
00478650  0f28ca                    MOVAPS XMM1,XMM2
00478653  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0047865b  f30f5e0d7ca8ba00          DIVSS XMM1,dword ptr [0x00baa87c]
00478663  f30f5cc1                  SUBSS XMM0,XMM1
00478667  0f2f0554a8ba00            COMISS XMM0,dword ptr [0x00baa854]
0047866e  0f861f0c0000              JBE 0x00479293
00478674  0f2f15d0a9ba00            COMISS XMM2,dword ptr [0x00baa9d0]
0047867b  0f86120c0000              JBE 0x00479293
00478681  51                        PUSH ECX
00478682  8d8580fcffff              LEA EAX,[EBP + 0xfffffc80]
00478688  c7042400000000            MOV dword ptr [ESP],0x0
0047868f  50                        PUSH EAX
00478690  8bcf                      MOV ECX,EDI
00478692  e8a9652400                CALL 0x006bec40
00478697  8b08                      MOV ECX,dword ptr [EAX]
00478699  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0047869f  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004786a2  898738030000              MOV dword ptr [EDI + 0x338],EAX
004786a8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004786b2  e9dc0b0000                JMP 0x00479293
004786b7  83f802                    CMP EAX,0x2
004786ba  0f85d1050000              JNZ 0x00478c91
004786c0  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004786c7  0fb787c60b0000            MOVZX EAX,word ptr [EDI + 0xbc6]
004786ce  0f85e5020000              JNZ 0x004789b9
004786d4  6683f814                  CMP AX,0x14
004786d8  0f8ed3020000              JLE 0x004789b1
004786de  8b06                      MOV EAX,dword ptr [ESI]
004786e0  c685c7fcffff00            MOV byte ptr [EBP + 0xfffffcc7],0x0
004786e7  85c0                      TEST EAX,EAX
004786e9  756d                      JNZ 0x00478758
004786eb  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004786f3  50                        PUSH EAX
004786f4  57                        PUSH EDI
004786f5  6840b6c700                PUSH 0xc7b640
004786fa  6a3c                      PUSH 0x3c
004786fc  51                        PUSH ECX
004786fd  f30f110424                MOVSS dword ptr [ESP],XMM0
00478702  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00478708  51                        PUSH ECX
00478709  6a01                      PUSH 0x1
0047870b  e8006c4f00                CALL 0x0096f310
00478710  8b0e                      MOV ECX,dword ptr [ESI]
00478712  83c41c                    ADD ESP,0x1c
00478715  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
0047871b  85c9                      TEST ECX,ECX
0047871d  741e                      JZ 0x0047873d
0047871f  8d85c0fcffff              LEA EAX,[EBP + 0xfffffcc0]
00478725  89b5c0fcffff              MOV dword ptr [EBP + 0xfffffcc0],ESI
0047872b  81c1cc030000              ADD ECX,0x3cc
00478731  50                        PUSH EAX
00478732  e8d96a0500                CALL 0x004cf210
00478737  8b85a8fcffff              MOV EAX,dword ptr [EBP + 0xfffffca8]
0047873d  8906                      MOV dword ptr [ESI],EAX
0047873f  85c0                      TEST EAX,EAX
00478741  740e                      JZ 0x00478751
00478743  56                        PUSH ESI
00478744  8bc8                      MOV ECX,EAX
00478746  e8a5550500                CALL 0x004cdcf0
0047874b  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
00478751  c685c7fcffff01            MOV byte ptr [EBP + 0xfffffcc7],0x1
00478758  6a00                      PUSH 0x0
0047875a  6840d7c500                PUSH 0xc5d740
0047875f  68dcd5c500                PUSH 0xc5d5dc
00478764  6a00                      PUSH 0x0
00478766  50                        PUSH EAX
00478767  e845816700                CALL 0x00af08b1
0047876c  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00478774  8bf0                      MOV ESI,EAX
00478776  f30f108da0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffca0]
0047877e  83c414                    ADD ESP,0x14
00478781  89b5d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],ESI
00478787  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
0047878f  e81ca12000                CALL 0x006828b0
00478794  f30f1185d0fcffff          MOVSS dword ptr [EBP + 0xfffffcd0],XMM0
0047879c  f30f5c861c040000          SUBSS XMM0,dword ptr [ESI + 0x41c]
004787a4  e8979f2000                CALL 0x00682740
004787a9  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004787b1  0f28c8                    MOVAPS XMM1,XMM0
004787b4  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004787bb  0f2fd1                    COMISS XMM2,XMM1
004787be  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
004787c6  7670                      JBE 0x00478838
004787c8  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004787cf  c785c0fcffff0000803f      MOV dword ptr [EBP + 0xfffffcc0],0x3f800000
004787d9  8d85c0fcffff              LEA EAX,[EBP + 0xfffffcc0]
004787df  8d8da8fcffff              LEA ECX,[EBP + 0xfffffca8]
004787e5  7621                      JBE 0x00478808
004787e7  0f2fc2                    COMISS XMM0,XMM2
004787ea  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
004787f2  0f46c1                    CMOVBE EAX,ECX
004787f5  f30f5800                  ADDSS XMM0,dword ptr [EAX]
004787f9  e8429f2000                CALL 0x00682740
004787fe  f30f1185d0fcffff          MOVSS dword ptr [EBP + 0xfffffcd0],XMM0
00478806  eb38                      JMP 0x00478840
00478808  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0047880f  0f2fc2                    COMISS XMM0,XMM2
00478812  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
0047881a  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
00478822  0f46c1                    CMOVBE EAX,ECX
00478825  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
00478829  e8129f2000                CALL 0x00682740
0047882e  f30f1185d0fcffff          MOVSS dword ptr [EBP + 0xfffffcd0],XMM0
00478836  eb08                      JMP 0x00478840
00478838  f30f1085d0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd0]
00478840  51                        PUSH ECX
00478841  8bce                      MOV ECX,ESI
00478843  f30f110424                MOVSS dword ptr [ESP],XMM0
00478848  e843464f00                CALL 0x0096ce90
0047884d  8b8ffc0b0000              MOV ECX,dword ptr [EDI + 0xbfc]
00478853  8bc1                      MOV EAX,ECX
00478855  8b97f80b0000              MOV EDX,dword ptr [EDI + 0xbf8]
0047885b  83e103                    AND ECX,0x3
0047885e  f30f100d88a0ba00          MOVSS XMM1,dword ptr [0x00baa088]
00478866  4a                        DEC EDX
00478867  c1e802                    SHR EAX,0x2
0047886a  23d0                      AND EDX,EAX
0047886c  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
00478872  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
00478875  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
00478879  7477                      JZ 0x004788f2
0047887b  8bb7fc0b0000              MOV ESI,dword ptr [EDI + 0xbfc]
00478881  8bc6                      MOV EAX,ESI
00478883  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
00478889  83e603                    AND ESI,0x3
0047888c  f30f1085d0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd0]
00478894  49                        DEC ECX
00478895  c1e802                    SHR EAX,0x2
00478898  23c8                      AND ECX,EAX
0047889a  f30f59c1                  MULSS XMM0,XMM1
0047889e  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004788a4  f30f1185d0fcffff          MOVSS dword ptr [EBP + 0xfffffcd0],XMM0
004788ac  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004788af  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
004788b2  e8694cfaff                CALL 0x0041d520
004788b7  f30f1185c0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM0
004788bf  f30f1085d0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcd0]
004788c7  e8744cfaff                CALL 0x0041d540
004788cc  f30f100d88a0ba00          MOVSS XMM1,dword ptr [0x00baa088]
004788d4  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
004788dc  f30f1085c0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc0]
004788e4  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
004788ec  8bb5d4fcffff              MOV ESI,dword ptr [EBP + 0xfffffcd4]
004788f2  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
004788fa  f30f59c1                  MULSS XMM0,XMM1
004788fe  f30f1185c0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM0
00478906  e8154cfaff                CALL 0x0041d520
0047890b  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
00478913  f30f1085c0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc0]
0047891b  e8204cfaff                CALL 0x0041d540
00478920  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
00478928  8d8db0fcffff              LEA ECX,[EBP + 0xfffffcb0]
0047892e  f30f1085a8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffca8]
00478936  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
0047893e  e81d692000                CALL 0x0067f260
00478943  0f57c9                    XORPS XMM1,XMM1
00478946  0f57c0                    XORPS XMM0,XMM0
00478949  83f802                    CMP EAX,0x2
0047894c  750a                      JNZ 0x00478958
0047894e  f30f1005a0a8ba00          MOVSS XMM0,dword ptr [0x00baa8a0]
00478956  eb0c                      JMP 0x00478964
00478958  85c0                      TEST EAX,EAX
0047895a  7508                      JNZ 0x00478964
0047895c  f30f100500aeba00          MOVSS XMM0,dword ptr [0x00baae00]
00478964  0f2f8e1c040000            COMISS XMM1,dword ptr [ESI + 0x41c]
0047896b  c7865003000000008cc2      MOV dword ptr [ESI + 0x350],0xc28c0000
00478975  f30f5c0584a7ba00          SUBSS XMM0,dword ptr [0x00baa784]
0047897d  f30f11864c030000          MOVSS dword ptr [ESI + 0x34c],XMM0
00478985  760a                      JBE 0x00478991
00478987  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0047898f  eb08                      JMP 0x00478999
00478991  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
00478999  80bdc7fcffff00            CMP byte ptr [EBP + 0xfffffcc7],0x0
004789a0  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
004789a8  7407                      JZ 0x004789b1
004789aa  8b06                      MOV EAX,dword ptr [ESI]
004789ac  8bce                      MOV ECX,ESI
004789ae  ff500c                    CALL dword ptr [EAX + 0xc]
004789b1  8d7748                    LEA ESI,[EDI + 0x48]
004789b4  e98b020000                JMP 0x00478c44
004789b9  6683f83c                  CMP AX,0x3c
004789bd  0f843f010000              JZ 0x00478b02
004789c3  6683f86e                  CMP AX,0x6e
004789c7  0f8435010000              JZ 0x00478b02
004789cd  6683f832                  CMP AX,0x32
004789d1  740a                      JZ 0x004789dd
004789d3  6683f864                  CMP AX,0x64
004789d7  0f850e020000              JNZ 0x00478beb
004789dd  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004789e5  6a00                      PUSH 0x0
004789e7  57                        PUSH EDI
004789e8  6840b6c700                PUSH 0xc7b640
004789ed  6a14                      PUSH 0x14
004789ef  51                        PUSH ECX
004789f0  f30f110424                MOVSS dword ptr [ESP],XMM0
004789f5  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004789fb  51                        PUSH ECX
004789fc  6a01                      PUSH 0x1
004789fe  e80d694f00                CALL 0x0096f310
00478a03  8b0e                      MOV ECX,dword ptr [ESI]
00478a05  83c41c                    ADD ESP,0x1c
00478a08  8985d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EAX
00478a0e  85c9                      TEST ECX,ECX
00478a10  741e                      JZ 0x00478a30
00478a12  8d85c0fcffff              LEA EAX,[EBP + 0xfffffcc0]
00478a18  89b5c0fcffff              MOV dword ptr [EBP + 0xfffffcc0],ESI
00478a1e  81c1cc030000              ADD ECX,0x3cc
00478a24  50                        PUSH EAX
00478a25  e8e6670500                CALL 0x004cf210
00478a2a  8b85d4fcffff              MOV EAX,dword ptr [EBP + 0xfffffcd4]
00478a30  8906                      MOV dword ptr [ESI],EAX
00478a32  85c0                      TEST EAX,EAX
00478a34  740e                      JZ 0x00478a44
00478a36  56                        PUSH ESI
00478a37  8bc8                      MOV ECX,EAX
00478a39  e8b2520500                CALL 0x004cdcf0
00478a3e  8b85d4fcffff              MOV EAX,dword ptr [EBP + 0xfffffcd4]
00478a44  0f57c0                    XORPS XMM0,XMM0
00478a47  0f2f87b80b0000            COMISS XMM0,dword ptr [EDI + 0xbb8]
00478a4e  760a                      JBE 0x00478a5a
00478a50  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00478a58  eb08                      JMP 0x00478a62
00478a5a  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
00478a62  f30f118058030000          MOVSS dword ptr [EAX + 0x358],XMM0
00478a6a  f30f10801c040000          MOVSS XMM0,dword ptr [EAX + 0x41c]
00478a72  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00478a7a  f30f1185c0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM0
00478a82  e8994afaff                CALL 0x0041d520
00478a87  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
00478a8f  f30f1085c0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc0]
00478a97  e8a44afaff                CALL 0x0041d540
00478a9c  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
00478aa4  8d8db0fcffff              LEA ECX,[EBP + 0xfffffcb0]
00478aaa  f30f1085a8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffca8]
00478ab2  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00478aba  e8a1672000                CALL 0x0067f260
00478abf  0f57c0                    XORPS XMM0,XMM0
00478ac2  83f802                    CMP EAX,0x2
00478ac5  750a                      JNZ 0x00478ad1
00478ac7  f30f1005a0a8ba00          MOVSS XMM0,dword ptr [0x00baa8a0]
00478acf  eb0c                      JMP 0x00478add
00478ad1  85c0                      TEST EAX,EAX
00478ad3  7508                      JNZ 0x00478add
00478ad5  f30f100500aeba00          MOVSS XMM0,dword ptr [0x00baae00]
00478add  f30f5c0584a7ba00          SUBSS XMM0,dword ptr [0x00baa784]
00478ae5  8b85d4fcffff              MOV EAX,dword ptr [EBP + 0xfffffcd4]
00478aeb  f30f11804c030000          MOVSS dword ptr [EAX + 0x34c],XMM0
00478af3  c7805003000000008cc2      MOV dword ptr [EAX + 0x350],0xc28c0000
00478afd  e9e9000000                JMP 0x00478beb
00478b02  51                        PUSH ECX
00478b03  8d8580fcffff              LEA EAX,[EBP + 0xfffffc80]
00478b09  c7042400000000            MOV dword ptr [ESP],0x0
00478b10  50                        PUSH EAX
00478b11  8bcf                      MOV ECX,EDI
00478b13  e828612400                CALL 0x006bec40
00478b18  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00478b1e  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00478b22  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00478b27  f30f5c09                  SUBSS XMM1,dword ptr [ECX]
00478b2b  f30f5c4104                SUBSS XMM0,dword ptr [ECX + 0x4]
00478b30  e82b120200                CALL 0x00499d60
00478b35  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00478b3d  0f28e0                    MOVAPS XMM4,XMM0
00478b40  f30f592548a9ba00          MULSS XMM4,dword ptr [0x00baa948]
00478b48  0f57db                    XORPS XMM3,XMM3
00478b4b  51                        PUSH ECX
00478b4c  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00478b54  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
00478b5a  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00478b61  f30f11a7b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM4
00478b69  e882adfaff                CALL 0x004238f0
00478b6e  f30f592588a0ba00          MULSS XMM4,dword ptr [0x00baa088]
00478b76  8bf0                      MOV ESI,EAX
00478b78  0f28c4                    MOVAPS XMM0,XMM4
00478b7b  f30f11a5c0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM4
00478b83  e89849faff                CALL 0x0041d520
00478b88  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
00478b90  f30f1085c0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc0]
00478b98  e8a349faff                CALL 0x0041d540
00478b9d  51                        PUSH ECX
00478b9e  c7042400008040            MOV dword ptr [ESP],0x40800000
00478ba5  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
00478bab  56                        PUSH ESI
00478bac  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
00478bb4  8d9598fcffff              LEA EDX,[EBP + 0xfffffc98]
00478bba  f30f1085a8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffca8]
00478bc2  8bcf                      MOV ECX,EDI
00478bc4  6a18                      PUSH 0x18
00478bc6  50                        PUSH EAX
00478bc7  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00478bcf  c78598fcffff00000000      MOV dword ptr [EBP + 0xfffffc98],0x0
00478bd9  c7859cfcffff0000a0c2      MOV dword ptr [EBP + 0xfffffc9c],0xc2a00000
00478be3  e8a82c1900                CALL 0x0060b890
00478be8  83c410                    ADD ESP,0x10
00478beb  0fb787c60b0000            MOVZX EAX,word ptr [EDI + 0xbc6]
00478bf2  6683f86e                  CMP AX,0x6e
00478bf6  7f06                      JG 0x00478bfe
00478bf8  6683f85a                  CMP AX,0x5a
00478bfc  7d09                      JGE 0x00478c07
00478bfe  83c0d8                    ADD EAX,-0x28
00478c01  6683f814                  CMP AX,0x14
00478c05  7709                      JA 0x00478c10
00478c07  c685c7fcffff01            MOV byte ptr [EBP + 0xfffffcc7],0x1
00478c0e  eb07                      JMP 0x00478c17
00478c10  c685c7fcffff00            MOV byte ptr [EBP + 0xfffffcc7],0x0
00478c17  8d7748                    LEA ESI,[EDI + 0x48]
00478c1a  68b8e2b100                PUSH 0xb1e2b8
00478c1f  8bce                      MOV ECX,ESI
00478c21  e80a28f9ff                CALL 0x0040b430
00478c26  8a8dc7fcffff              MOV CL,byte ptr [EBP + 0xfffffcc7]
00478c2c  688ce2b100                PUSH 0xb1e28c
00478c31  884874                    MOV byte ptr [EAX + 0x74],CL
00478c34  8bce                      MOV ECX,ESI
00478c36  e8f527f9ff                CALL 0x0040b430
00478c3b  8a8dc7fcffff              MOV CL,byte ptr [EBP + 0xfffffcc7]
00478c41  884874                    MOV byte ptr [EAX + 0x74],CL
00478c44  8b85acfcffff              MOV EAX,dword ptr [EBP + 0xfffffcac]
00478c4a  662987c60b0000            SUB word ptr [EDI + 0xbc6],AX
00478c51  6683bfc60b000000          CMP word ptr [EDI + 0xbc6],0x0
00478c59  7f36                      JG 0x00478c91
00478c5b  ff8710040000              INC dword ptr [EDI + 0x410]
00478c61  8bce                      MOV ECX,ESI
00478c63  6a00                      PUSH 0x0
00478c65  6800d3b100                PUSH 0xb1d300
00478c6a  e81117f9ff                CALL 0x0040a380
00478c6f  68b8e2b100                PUSH 0xb1e2b8
00478c74  8d4f48                    LEA ECX,[EDI + 0x48]
00478c77  e8b427f9ff                CALL 0x0040b430
00478c7c  688ce2b100                PUSH 0xb1e28c
00478c81  8d4f48                    LEA ECX,[EDI + 0x48]
00478c84  c6407401                  MOV byte ptr [EAX + 0x74],0x1
00478c88  e8a327f9ff                CALL 0x0040b430
00478c8d  c6407401                  MOV byte ptr [EAX + 0x74],0x1
00478c91  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00478c95  740d                      JZ 0x00478ca4
00478c97  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00478c9e  0f850c020000              JNZ 0x00478eb0
00478ca4  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00478caa  83e800                    SUB EAX,0x0
00478cad  0f8488010000              JZ 0x00478e3b
00478cb3  83e801                    SUB EAX,0x1
00478cb6  7457                      JZ 0x00478d0f
00478cb8  83e801                    SUB EAX,0x1
00478cbb  0f8490000000              JZ 0x00478d51
00478cc1  51                        PUSH ECX
00478cc2  8d45b8                    LEA EAX,[EBP + -0x48]
00478cc5  c7042400000000            MOV dword ptr [ESP],0x0
00478ccc  50                        PUSH EAX
00478ccd  8bcf                      MOV ECX,EDI
00478ccf  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00478cd9  e8625f2400                CALL 0x006bec40
00478cde  8b08                      MOV ECX,dword ptr [EAX]
00478ce0  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00478ce6  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00478ce9  898738030000              MOV dword ptr [EDI + 0x338],EAX
00478cef  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00478cf9  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00478d00  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00478d0a  e9a1010000                JMP 0x00478eb0
00478d0f  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00478d16  b950000000                MOV ECX,0x50
00478d1b  51                        PUSH ECX
00478d1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00478d23  b878000000                MOV EAX,0x78
00478d28  6a00                      PUSH 0x0
00478d2a  6a02                      PUSH 0x2
00478d2c  51                        PUSH ECX
00478d2d  0f44c1                    CMOVZ EAX,ECX
00478d30  c704240000803f            MOV dword ptr [ESP],0x3f800000
00478d37  668987c60b0000            MOV word ptr [EDI + 0xbc6],AX
00478d3e  8bcf                      MOV ECX,EDI
00478d40  6a75                      PUSH 0x75
00478d42  c7871004000002000000      MOV dword ptr [EDI + 0x410],0x2
00478d4c  e84fde2500                CALL 0x006d6ba0
00478d51  f30f1095c8fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcc8]
00478d59  f30f581510a9ba00          ADDSS XMM2,dword ptr [0x00baa910]
00478d61  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
00478d69  f30f5c1588a8ba00          SUBSS XMM2,dword ptr [0x00baa888]
00478d71  0f28ca                    MOVAPS XMM1,XMM2
00478d74  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00478d7b  0f2fcb                    COMISS XMM1,XMM3
00478d7e  7616                      JBE 0x00478d96
00478d80  0f28cb                    MOVAPS XMM1,XMM3
00478d83  0f28c2                    MOVAPS XMM0,XMM2
00478d86  e8950f0200                CALL 0x00499d20
00478d8b  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
00478d93  0f28d0                    MOVAPS XMM2,XMM0
00478d96  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
00478d9e  0f2fd1                    COMISS XMM2,XMM1
00478da1  7606                      JBE 0x00478da9
00478da3  f30f5cd3                  SUBSS XMM2,XMM3
00478da7  eb11                      JMP 0x00478dba
00478da9  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
00478db1  0f2fc2                    COMISS XMM0,XMM2
00478db4  7604                      JBE 0x00478dba
00478db6  f30f58d3                  ADDSS XMM2,XMM3
00478dba  f30f58d1                  ADDSS XMM2,XMM1
00478dbe  c785a8fcffff00000000      MOV dword ptr [EBP + 0xfffffca8],0x0
00478dc8  8d8da8fcffff              LEA ECX,[EBP + 0xfffffca8]
00478dce  c785a0fcffff67010000      MOV dword ptr [EBP + 0xfffffca0],0x167
00478dd8  8d95c0fcffff              LEA EDX,[EBP + 0xfffffcc0]
00478dde  6a01                      PUSH 0x1
00478de0  f30f2cc2                  CVTTSS2SI EAX,XMM2
00478de4  85c0                      TEST EAX,EAX
00478de6  8985c0fcffff              MOV dword ptr [EBP + 0xfffffcc0],EAX
00478dec  b8b7600bb6                MOV EAX,0xb60b60b7
00478df1  0f4ed1                    CMOVLE EDX,ECX
00478df4  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00478dfa  813a67010000              CMP dword ptr [EDX],0x167
00478e00  0f4cca                    CMOVL ECX,EDX
00478e03  8b09                      MOV ECX,dword ptr [ECX]
00478e05  f7e9                      IMUL ECX
00478e07  03d1                      ADD EDX,ECX
00478e09  8d4f48                    LEA ECX,[EDI + 0x48]
00478e0c  c1fa05                    SAR EDX,0x5
00478e0f  8bc2                      MOV EAX,EDX
00478e11  c1e81f                    SHR EAX,0x1f
00478e14  03c2                      ADD EAX,EDX
00478e16  ff34851cdcb100            PUSH dword ptr [EAX*0x4 + 0xb1dc1c]
00478e1d  e8ae17f9ff                CALL 0x0040a5d0
00478e22  84c0                      TEST AL,AL
00478e24  0f8486000000              JZ 0x00478eb0
00478e2a  8d4f78                    LEA ECX,[EDI + 0x78]
00478e2d  e87e13f9ff                CALL 0x0040a1b0
00478e32  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00478e39  eb75                      JMP 0x00478eb0
00478e3b  6a00                      PUSH 0x0
00478e3d  68a8e2b100                PUSH 0xb1e2a8
00478e42  8d4f48                    LEA ECX,[EDI + 0x48]
00478e45  e83615f9ff                CALL 0x0040a380
00478e4a  ff8710040000              INC dword ptr [EDI + 0x410]
00478e50  8d45b8                    LEA EAX,[EBP + -0x48]
00478e53  51                        PUSH ECX
00478e54  c7042400000000            MOV dword ptr [ESP],0x0
00478e5b  8bcf                      MOV ECX,EDI
00478e5d  50                        PUSH EAX
00478e5e  e8dd5d2400                CALL 0x006bec40
00478e63  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00478e69  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00478e6d  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00478e72  f30f5c09                  SUBSS XMM1,dword ptr [ECX]
00478e76  f30f5c4104                SUBSS XMM0,dword ptr [ECX + 0x4]
00478e7b  e8e00e0200                CALL 0x00499d60
00478e80  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00478e88  51                        PUSH ECX
00478e89  c704240000803f            MOV dword ptr [ESP],0x3f800000
00478e90  6a00                      PUSH 0x0
00478e92  6a02                      PUSH 0x2
00478e94  51                        PUSH ECX
00478e95  c704240000803f            MOV dword ptr [ESP],0x3f800000
00478e9c  8bcf                      MOV ECX,EDI
00478e9e  68a8010000                PUSH 0x1a8
00478ea3  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00478eab  e8f0dc2500                CALL 0x006d6ba0
00478eb0  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00478eb8  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00478ec0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00478ec8  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00478ed0  e9be030000                JMP 0x00479293
00478ed5  3bf8                      CMP EDI,EAX
00478ed7  0f85a2000000              JNZ 0x00478f7f
00478edd  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00478ee3  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00478ee6  41                        INC ECX
00478ee7  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00478ef1  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00478efb  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00478f01  83f90f                    CMP ECX,0xf
00478f04  7509                      JNZ 0x00478f0f
00478f06  85c0                      TEST EAX,EAX
00478f08  740f                      JZ 0x00478f19
00478f0a  83f802                    CMP EAX,0x2
00478f0d  740a                      JZ 0x00478f19
00478f0f  83f919                    CMP ECX,0x19
00478f12  7530                      JNZ 0x00478f44
00478f14  83f801                    CMP EAX,0x1
00478f17  752b                      JNZ 0x00478f44
00478f19  6a01                      PUSH 0x1
00478f1b  68fce2b100                PUSH 0xb1e2fc
00478f20  8d4f48                    LEA ECX,[EDI + 0x48]
00478f23  e8a816f9ff                CALL 0x0040a5d0
00478f28  84c0                      TEST AL,AL
00478f2a  740f                      JZ 0x00478f3b
00478f2c  8d4f78                    LEA ECX,[EDI + 0x78]
00478f2f  e87c12f9ff                CALL 0x0040a1b0
00478f34  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00478f3b  6a01                      PUSH 0x1
00478f3d  8bcf                      MOV ECX,EDI
00478f3f  e86c752400                CALL 0x006c04b0
00478f44  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00478f48  7409                      JZ 0x00478f53
00478f4a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00478f51  7507                      JNZ 0x00478f5a
00478f53  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00478f5a  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00478f60  8bb5ccfcffff              MOV ESI,dword ptr [EBP + 0xfffffccc]
00478f66  85c0                      TEST EAX,EAX
00478f68  0f842b030000              JZ 0x00479299
00478f6e  8b8080030000              MOV EAX,dword ptr [EAX + 0x380]
00478f74  898780030000              MOV dword ptr [EDI + 0x380],EAX
00478f7a  e91a030000                JMP 0x00479299
00478f7f  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
00478f86  740f                      JZ 0x00478f97
00478f88  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00478f8e  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00478f91  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
00478f97  83be640b000004            CMP dword ptr [ESI + 0xb64],0x4
00478f9e  0f85de020000              JNZ 0x00479282
00478fa4  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00478fa7  b8eca4b100                MOV EAX,0xb1a4ec
00478fac  85c9                      TEST ECX,ECX
00478fae  7525                      JNZ 0x00478fd5
00478fb0  b8f0e2b100                MOV EAX,0xb1e2f0
00478fb5  8bb5d0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcd0]
00478fbb  6a00                      PUSH 0x0
00478fbd  8d4f48                    LEA ECX,[EDI + 0x48]
00478fc0  50                        PUSH EAX
00478fc1  e8ba13f9ff                CALL 0x0040a380
00478fc6  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00478fca  7476                      JZ 0x00479042
00478fcc  8b34b504dcb100            MOV ESI,dword ptr [ESI*0x4 + 0xb1dc04]
00478fd3  eb74                      JMP 0x00479049
00478fd5  83f901                    CMP ECX,0x1
00478fd8  7523                      JNZ 0x00478ffd
00478fda  8bb5d0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcd0]
00478fe0  8d4eff                    LEA ECX,[ESI + -0x1]
00478fe3  83f907                    CMP ECX,0x7
00478fe6  77d3                      JA 0x00478fbb
00478fe8  ff248dfc9c4700            JMP dword ptr [ECX*0x4 + 0x479cfc]
00478fef  b8f0e2b100                MOV EAX,0xb1e2f0
00478ff4  ebc5                      JMP 0x00478fbb
00478ff6  b808e3b100                MOV EAX,0xb1e308
00478ffb  ebbe                      JMP 0x00478fbb
00478ffd  83f902                    CMP ECX,0x2
00479000  75b3                      JNZ 0x00478fb5
00479002  8bb5d0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcd0]
00479008  0fb797c40b0000            MOVZX EDX,word ptr [EDI + 0xbc4]
0047900f  8d4eff                    LEA ECX,[ESI + -0x1]
00479012  83f904                    CMP ECX,0x4
00479015  77a4                      JA 0x00478fbb
00479017  6685d2                    TEST DX,DX
0047901a  750e                      JNZ 0x0047902a
0047901c  ff248d1c9d4700            JMP dword ptr [ECX*0x4 + 0x479d1c]
00479023  b814e3b100                MOV EAX,0xb1e314
00479028  eb91                      JMP 0x00478fbb
0047902a  ff248d309d4700            JMP dword ptr [ECX*0x4 + 0x479d30]
00479031  b8d4e2b100                MOV EAX,0xb1e2d4
00479036  eb83                      JMP 0x00478fbb
00479038  b828e3b100                MOV EAX,0xb1e328
0047903d  e979ffffff                JMP 0x00478fbb
00479042  8b34b548dcb100            MOV ESI,dword ptr [ESI*0x4 + 0xb1dc48]
00479049  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
0047904f  3bb0140c0000              CMP ESI,dword ptr [EAX + 0xc14]
00479055  0f8d38020000              JGE 0x00479293
0047905b  8b80100c0000              MOV EAX,dword ptr [EAX + 0xc10]
00479061  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00479067  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0047906a  8d1430                    LEA EDX,[EAX + ESI*0x1]
0047906d  8b890c0c0000              MOV ECX,dword ptr [ECX + 0xc0c]
00479073  8bc2                      MOV EAX,EDX
00479075  d1e8                      SHR EAX,0x1
00479077  49                        DEC ECX
00479078  23c8                      AND ECX,EAX
0047907a  83e201                    AND EDX,0x1
0047907d  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00479083  8b80080c0000              MOV EAX,dword ptr [EAX + 0xc08]
00479089  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
0047908c  8b04d1                    MOV EAX,dword ptr [ECX + EDX*0x8]
0047908f  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00479095  8b44d104                  MOV EAX,dword ptr [ECX + EDX*0x8 + 0x4]
00479099  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
0047909f  898740030000              MOV dword ptr [EDI + 0x340],EAX
004790a5  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004790ad  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004790b5  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004790bd  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004790c5  8b81240c0000              MOV EAX,dword ptr [ECX + 0xc24]
004790cb  8b89200c0000              MOV ECX,dword ptr [ECX + 0xc20]
004790d1  f30f10055ca8ba00          MOVSS XMM0,dword ptr [0x00baa85c]
004790d9  49                        DEC ECX
004790da  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004790dd  8d1430                    LEA EDX,[EAX + ESI*0x1]
004790e0  8bc2                      MOV EAX,EDX
004790e2  83e201                    AND EDX,0x1
004790e5  d1e8                      SHR EAX,0x1
004790e7  23c8                      AND ECX,EAX
004790e9  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
004790ef  8b801c0c0000              MOV EAX,dword ptr [EAX + 0xc1c]
004790f5  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004790f8  8b04d1                    MOV EAX,dword ptr [ECX + EDX*0x8]
004790fb  89874c030000              MOV dword ptr [EDI + 0x34c],EAX
00479101  8b44d104                  MOV EAX,dword ptr [ECX + EDX*0x8 + 0x4]
00479105  898750030000              MOV dword ptr [EDI + 0x350],EAX
0047910b  f30f108f50030000          MOVSS XMM1,dword ptr [EDI + 0x350]
00479113  0f2fc1                    COMISS XMM0,XMM1
00479116  7615                      JBE 0x0047912d
00479118  f30f10059ca8ba00          MOVSS XMM0,dword ptr [0x00baa89c]
00479120  b904000000                MOV ECX,0x4
00479125  0f2fc1                    COMISS XMM0,XMM1
00479128  0f97c0                    SETA AL
0047912b  eb04                      JMP 0x00479131
0047912d  32c0                      XOR AL,AL
0047912f  33c9                      XOR ECX,ECX
00479131  898f88010000              MOV dword ptr [EDI + 0x188],ECX
00479137  888771010000              MOV byte ptr [EDI + 0x171],AL
0047913d  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00479140  85c0                      TEST EAX,EAX
00479142  7409                      JZ 0x0047914d
00479144  83f802                    CMP EAX,0x2
00479147  0f8546010000              JNZ 0x00479293
0047914d  83bdd0fcffff04            CMP dword ptr [EBP + 0xfffffcd0],0x4
00479154  0f8539010000              JNZ 0x00479293
0047915a  6800000010                PUSH 0x10000000
0047915f  6a00                      PUSH 0x0
00479161  8bcf                      MOV ECX,EDI
00479163  e8c8e2f9ff                CALL 0x00417430
00479168  84c0                      TEST AL,AL
0047916a  7418                      JZ 0x00479184
0047916c  a17816c700                MOV EAX,[0x00c71678]
00479171  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00479177  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0047917a  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0047917e  0f850f010000              JNZ 0x00479293
00479184  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0047918a  85c0                      TEST EAX,EAX
0047918c  7e07                      JLE 0x00479195
0047918e  48                        DEC EAX
0047918f  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00479195  e8c65d2700                CALL 0x006eef60
0047919a  83e001                    AND EAX,0x1
0047919d  0f85f0000000              JNZ 0x00479293
004791a3  f30f1005ecadba00          MOVSS XMM0,dword ptr [0x00baadec]
004791ab  0f2f8750030000            COMISS XMM0,dword ptr [EDI + 0x350]
004791b2  0f86db000000              JBE 0x00479293
004791b8  3987a00b0000              CMP dword ptr [EDI + 0xba0],EAX
004791be  0f8fcf000000              JG 0x00479293
004791c4  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
004791ca  c787a00b00001e000000      MOV dword ptr [EDI + 0xba0],0x1e
004791d4  e8575dfcff                CALL 0x0043ef30
004791d9  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004791dc  83f802                    CMP EAX,0x2
004791df  7572                      JNZ 0x00479253
004791e1  6683bfc40b000001          CMP word ptr [EDI + 0xbc4],0x1
004791e9  7516                      JNZ 0x00479201
004791eb  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
004791f1  818d28ffffff00000100      OR dword ptr [EBP + 0xffffff28],0x10000
004791fb  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
00479201  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00479207  c78598fcffff0000a040      MOV dword ptr [EBP + 0xfffffc98],0x40a00000
00479211  50                        PUSH EAX
00479212  c7859cfcffff00000000      MOV dword ptr [EBP + 0xfffffc9c],0x0
0047921c  8d8598fcffff              LEA EAX,[EBP + 0xfffffc98]
00479222  6a07                      PUSH 0x7
00479224  50                        PUSH EAX
00479225  8d873c030000              LEA EAX,[EDI + 0x33c]
0047922b  8bcf                      MOV ECX,EDI
0047922d  50                        PUSH EAX
0047922e  e8ad202500                CALL 0x006cb2e0
00479233  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0047923b  51                        PUSH ECX
0047923c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00479243  6a00                      PUSH 0x0
00479245  6a02                      PUSH 0x2
00479247  68a7030000                PUSH 0x3a7
0047924c  e88fd64d00                CALL 0x009568e0
00479251  eb40                      JMP 0x00479293
00479253  85c0                      TEST EAX,EAX
00479255  75aa                      JNZ 0x00479201
00479257  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0047925b  75a4                      JNZ 0x00479201
0047925d  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00479263  c785b0fcffff00000041      MOV dword ptr [EBP + 0xfffffcb0],0x41000000
0047926d  50                        PUSH EAX
0047926e  c785b4fcffff0000c040      MOV dword ptr [EBP + 0xfffffcb4],0x40c00000
00479278  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
0047927e  6a09                      PUSH 0x9
00479280  eba2                      JMP 0x00479224
00479282  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00479289  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00479293  8bb5ccfcffff              MOV ESI,dword ptr [EBP + 0xfffffccc]
00479299  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0047929c  83f802                    CMP EAX,0x2
0047929f  0f85e0080000              JNZ 0x00479b85
004792a5  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004792ac  0f8462090000              JZ 0x00479c14
004792b2  6683bfc40b000000          CMP word ptr [EDI + 0xbc4],0x0
004792ba  0f85da040000              JNZ 0x0047979a
004792c0  51                        PUSH ECX
004792c1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004792c8  6a00                      PUSH 0x0
004792ca  50                        PUSH EAX
004792cb  51                        PUSH ECX
004792cc  c704240000803f            MOV dword ptr [ESP],0x3f800000
004792d3  8bcf                      MOV ECX,EDI
004792d5  6a1c                      PUSH 0x1c
004792d7  e8c4d82500                CALL 0x006d6ba0
004792dc  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004792e2  8bf7                      MOV ESI,EDI
004792e4  89b5d0fcffff              MOV dword ptr [EBP + 0xfffffcd0],ESI
004792ea  85c0                      TEST EAX,EAX
004792ec  7452                      JZ 0x00479340
004792ee  8bbd94fcffff              MOV EDI,dword ptr [EBP + 0xfffffc94]
004792f4  6a00                      PUSH 0x0
004792f6  68acd6c500                PUSH 0xc5d6ac
004792fb  68dcd5c500                PUSH 0xc5d5dc
00479300  6a00                      PUSH 0x0
00479302  50                        PUSH EAX
00479303  e8a9756700                CALL 0x00af08b1
00479308  83c414                    ADD ESP,0x14
0047930b  85c0                      TEST EAX,EAX
0047930d  750f                      JNZ 0x0047931e
0047930f  6850d4b100                PUSH 0xb1d450
00479314  6a10                      PUSH 0x10
00479316  e8a57f5900                CALL 0x00a112c0
0047931b  83c408                    ADD ESP,0x8
0047931e  8b37                      MOV ESI,dword ptr [EDI]
00479320  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
00479326  8dbebc030000              LEA EDI,[ESI + 0x3bc]
0047932c  89b5d0fcffff              MOV dword ptr [EBP + 0xfffffcd0],ESI
00479332  85c0                      TEST EAX,EAX
00479334  75be                      JNZ 0x004792f4
00479336  8bbd90fcffff              MOV EDI,dword ptr [EBP + 0xfffffc90]
0047933c  0f1f4000                  NOP dword ptr [EAX]
00479340  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00479346  33c0                      XOR EAX,EAX
00479348  81e100000010              AND ECX,0x10000000
0047934e  0bc1                      OR EAX,ECX
00479350  740a                      JZ 0x0047935c
00479352  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
0047935a  eb13                      JMP 0x0047936f
0047935c  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00479362  f30f104050                MOVSS XMM0,dword ptr [EAX + 0x50]
00479367  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
0047936f  66ff86c40b0000            INC word ptr [ESI + 0xbc4]
00479376  33c0                      XOR EAX,EAX
00479378  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
00479380  c6867301000000            MOV byte ptr [ESI + 0x173],0x0
00479387  8985d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EAX
0047938d  3986c8000000              CMP dword ptr [ESI + 0xc8],EAX
00479393  0f86ef000000              JBE 0x00479488
00479399  8d4e48                    LEA ECX,[ESI + 0x48]
0047939c  0f1f4000                  NOP dword ptr [EAX]
004793a0  50                        PUSH EAX
004793a1  e87a1ef9ff                CALL 0x0040b220
004793a6  8b00                      MOV EAX,dword ptr [EAX]
004793a8  85c0                      TEST EAX,EAX
004793aa  7405                      JZ 0x004793b1
004793ac  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004793af  eb03                      JMP 0x004793b4
004793b1  83c8ff                    OR EAX,0xffffffff
004793b4  85c0                      TEST EAX,EAX
004793b6  0f85b0000000              JNZ 0x0047946c
004793bc  6a28                      PUSH 0x28
004793be  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004793c1  8d4dd4                    LEA ECX,[EBP + -0x2c]
004793c4  6860e2b100                PUSH 0xb1e260
004793c9  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004793cc  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004793d3  8845d4                    MOV byte ptr [EBP + -0x2c],AL
004793d6  e8f538f9ff                CALL 0x0040ccd0
004793db  6800000010                PUSH 0x10000000
004793e0  6a00                      PUSH 0x0
004793e2  8bcf                      MOV ECX,EDI
004793e4  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004793eb  e840e0f9ff                CALL 0x00417430
004793f0  84c0                      TEST AL,AL
004793f2  7413                      JZ 0x00479407
004793f4  6a23                      PUSH 0x23
004793f6  683ce2b100                PUSH 0xb1e23c
004793fb  6a06                      PUSH 0x6
004793fd  6a04                      PUSH 0x4
004793ff  8d4dd4                    LEA ECX,[EBP + -0x2c]
00479402  e879010200                CALL 0x00499580
00479407  8d45d4                    LEA EAX,[EBP + -0x2c]
0047940a  8bcf                      MOV ECX,EDI
0047940c  50                        PUSH EAX
0047940d  8d4590                    LEA EAX,[EBP + -0x70]
00479410  50                        PUSH EAX
00479411  e82a142400                CALL 0x006ba840
00479416  50                        PUSH EAX
00479417  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0047941b  8d4e48                    LEA ECX,[ESI + 0x48]
0047941e  ffb5d4fcffff              PUSH dword ptr [EBP + 0xfffffcd4]
00479424  e8072bf9ff                CALL 0x0040bf30
00479429  8d4d90                    LEA ECX,[EBP + -0x70]
0047942c  e80f3cf9ff                CALL 0x0040d040
00479431  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00479438  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0047943b  83fa10                    CMP EDX,0x10
0047943e  722c                      JC 0x0047946c
00479440  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00479443  42                        INC EDX
00479444  8bc1                      MOV EAX,ECX
00479446  81fa00100000              CMP EDX,0x1000
0047944c  7214                      JC 0x00479462
0047944e  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00479451  83c223                    ADD EDX,0x23
00479454  2bc1                      SUB EAX,ECX
00479456  83c0fc                    ADD EAX,-0x4
00479459  83f81f                    CMP EAX,0x1f
0047945c  0f8786dcffff              JA 0x004770e8
00479462  52                        PUSH EDX
00479463  51                        PUSH ECX
00479464  e8f35c6700                CALL 0x00aef15c
00479469  83c408                    ADD ESP,0x8
0047946c  8b85d4fcffff              MOV EAX,dword ptr [EBP + 0xfffffcd4]
00479472  8d4e48                    LEA ECX,[ESI + 0x48]
00479475  40                        INC EAX
00479476  8985d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EAX
0047947c  3b86c8000000              CMP EAX,dword ptr [ESI + 0xc8]
00479482  0f8218ffffff              JC 0x004793a0
00479488  51                        PUSH ECX
00479489  8d4e48                    LEA ECX,[ESI + 0x48]
0047948c  e86f2bf9ff                CALL 0x0040c000
00479491  80be5101000000            CMP byte ptr [ESI + 0x151],0x0
00479498  7413                      JZ 0x004794ad
0047949a  8d4e78                    LEA ECX,[ESI + 0x78]
0047949d  e88efbf8ff                CALL 0x00409030
004794a2  8d8e98000000              LEA ECX,[ESI + 0x98]
004794a8  e883fbf8ff                CALL 0x00409030
004794ad  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004794b0  89460c                    MOV dword ptr [ESI + 0xc],EAX
004794b3  8d86e4010000              LEA EAX,[ESI + 0x1e4]
004794b9  c7461400000000            MOV dword ptr [ESI + 0x14],0x0
004794c0  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
004794c7  c7461c00000000            MOV dword ptr [ESI + 0x1c],0x0
004794ce  8985c0fcffff              MOV dword ptr [EBP + 0xfffffcc0],EAX
004794d4  c785acfcffff03000000      MOV dword ptr [EBP + 0xfffffcac],0x3
004794de  6690                      NOP
004794e0  e87b5a2700                CALL 0x006eef60
004794e5  660f6ec0                  MOVD XMM0,EAX
004794e9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004794ed  c1e81f                    SHR EAX,0x1f
004794f0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004794f9  660f5ac0                  CVTPD2PS XMM0,XMM0
004794fd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00479505  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
0047950d  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00479515  f30f1185c8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM0
0047951d  e83e5a2700                CALL 0x006eef60
00479522  33d2                      XOR EDX,EDX
00479524  b903000000                MOV ECX,0x3
00479529  f7f1                      DIV ECX
0047952b  8b04953cdcb100            MOV EAX,dword ptr [EDX*0x4 + 0xb1dc3c]
00479532  8985d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EAX
00479538  3bc1                      CMP EAX,ECX
0047953a  751d                      JNZ 0x00479559
0047953c  3bb5b8fcffff              CMP ESI,dword ptr [EBP + 0xfffffcb8]
00479542  7415                      JZ 0x00479559
00479544  e8175a2700                CALL 0x006eef60
00479549  83e001                    AND EAX,0x1
0047954c  8b04853cdcb100            MOV EAX,dword ptr [EAX*0x4 + 0xb1dc3c]
00479553  8985d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],EAX
00479559  e8025a2700                CALL 0x006eef60
0047955e  8bf0                      MOV ESI,EAX
00479560  e8fb592700                CALL 0x006eef60
00479565  660f6ec0                  MOVD XMM0,EAX
00479569  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047956d  c1e81f                    SHR EAX,0x1f
00479570  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00479579  660f5ac0                  CVTPD2PS XMM0,XMM0
0047957d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00479585  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0047958d  f30f58c0                  ADDSS XMM0,XMM0
00479591  f30f118594fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM0
00479599  e8a23ffaff                CALL 0x0041d540
0047959e  f30f5985c8fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcc8]
004795a6  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
004795ae  f30f108594fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc94]
004795b6  e8653ffaff                CALL 0x0041d520
004795bb  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004795c3  f30f5985c8fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcc8]
004795cb  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
004795d3  e888592700                CALL 0x006eef60
004795d8  660f6ec0                  MOVD XMM0,EAX
004795dc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004795e0  c1e81f                    SHR EAX,0x1f
004795e3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004795ec  660f5ac8                  CVTPD2PS XMM1,XMM0
004795f0  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004795f8  f30f590d04a7ba00          MULSS XMM1,dword ptr [0x00baa704]
00479600  f30f58c9                  ADDSS XMM1,XMM1
00479604  0f28c1                    MOVAPS XMM0,XMM1
00479607  f30f118d94fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM1
0047960f  e82c3ffaff                CALL 0x0041d540
00479614  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0047961c  8b85d0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcd0]
00479622  f30f598070030000          MULSS XMM0,dword ptr [EAX + 0x370]
0047962a  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
00479632  f30f118598fcffff          MOVSS dword ptr [EBP + 0xfffffc98],XMM0
0047963a  f30f108594fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc94]
00479642  e8d93efaff                CALL 0x0041d520
00479647  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0047964f  8b85d0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcd0]
00479655  6a00                      PUSH 0x0
00479657  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047965d  68acd5c500                PUSH 0xc5d5ac
00479662  f30f598070030000          MULSS XMM0,dword ptr [EAX + 0x370]
0047966a  68dcd5c500                PUSH 0xc5d5dc
0047966f  6a00                      PUSH 0x0
00479671  56                        PUSH ESI
00479672  ffb5d4fcffff              PUSH dword ptr [EBP + 0xfffffcd4]
00479678  f30f588040030000          ADDSS XMM0,dword ptr [EAX + 0x340]
00479680  57                        PUSH EDI
00479681  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
00479687  50                        PUSH EAX
00479688  8d8598fcffff              LEA EAX,[EBP + 0xfffffc98]
0047968e  50                        PUSH EAX
0047968f  6a05                      PUSH 0x5
00479691  68e8030000                PUSH 0x3e8
00479696  f30f11859cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM0
0047969e  e87df4faff                CALL 0x00428b20
004796a3  50                        PUSH EAX
004796a4  e808726700                CALL 0x00af08b1
004796a9  8bb5d0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcd0]
004796af  83c414                    ADD ESP,0x14
004796b2  8d88e4010000              LEA ECX,[EAX + 0x1e4]
004796b8  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
004796be  3bc8                      CMP ECX,EAX
004796c0  7427                      JZ 0x004796e9
004796c2  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
004796c5  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004796c8  0f1086f4010000            MOVUPS XMM0,xmmword ptr [ESI + 0x1f4]
004796cf  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004796d3  f30f7e8604020000          MOVQ XMM0,qword ptr [ESI + 0x204]
004796db  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004796e0  8b860c020000              MOV EAX,dword ptr [ESI + 0x20c]
004796e6  894128                    MOV dword ptr [ECX + 0x28],EAX
004796e9  83adacfcffff01            SUB dword ptr [EBP + 0xfffffcac],0x1
004796f0  0f85eafdffff              JNZ 0x004794e0
004796f6  e865582700                CALL 0x006eef60
004796fb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00479701  6a00                      PUSH 0x0
00479703  68acd5c500                PUSH 0xc5d5ac
00479708  68dcd5c500                PUSH 0xc5d5dc
0047970d  6a00                      PUSH 0x0
0047970f  50                        PUSH EAX
00479710  6a00                      PUSH 0x0
00479712  57                        PUSH EDI
00479713  6840b6c700                PUSH 0xc7b640
00479718  8d863c030000              LEA EAX,[ESI + 0x33c]
0047971e  50                        PUSH EAX
0047971f  6a4d                      PUSH 0x4d
00479721  68e8030000                PUSH 0x3e8
00479726  e8f5f3faff                CALL 0x00428b20
0047972b  50                        PUSH EAX
0047972c  e880716700                CALL 0x00af08b1
00479731  83c414                    ADD ESP,0x14
00479734  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0047973a  8b10                      MOV EDX,dword ptr [EAX]
0047973c  6a01                      PUSH 0x1
0047973e  6a00                      PUSH 0x0
00479740  68ff000000                PUSH 0xff
00479745  6aff                      PUSH -0x1
00479747  51                        PUSH ECX
00479748  8bc8                      MOV ECX,EAX
0047974a  ff523c                    CALL dword ptr [EDX + 0x3c]
0047974d  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
00479753  85c0                      TEST EAX,EAX
00479755  742a                      JZ 0x00479781
00479757  6a00                      PUSH 0x0
00479759  68acd6c500                PUSH 0xc5d6ac
0047975e  68dcd5c500                PUSH 0xc5d5dc
00479763  6a00                      PUSH 0x0
00479765  50                        PUSH EAX
00479766  e846716700                CALL 0x00af08b1
0047976b  83c414                    ADD ESP,0x14
0047976e  85c0                      TEST EAX,EAX
00479770  750f                      JNZ 0x00479781
00479772  688cdcb100                PUSH 0xb1dc8c
00479777  6a10                      PUSH 0x10
00479779  e8427b5900                CALL 0x00a112c0
0047977e  83c408                    ADD ESP,0x8
00479781  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
00479787  89b5d0fcffff              MOV dword ptr [EBP + 0xfffffcd0],ESI
0047978d  85f6                      TEST ESI,ESI
0047978f  0f85abfbffff              JNZ 0x00479340
00479795  e97a040000                JMP 0x00479c14
0047979a  e8c1572700                CALL 0x006eef60
0047979f  83e003                    AND EAX,0x3
004797a2  83c003                    ADD EAX,0x3
004797a5  8985acfcffff              MOV dword ptr [EBP + 0xfffffcac],EAX
004797ab  0f8463040000              JZ 0x00479c14
004797b1  e8aa572700                CALL 0x006eef60
004797b6  660f6ec0                  MOVD XMM0,EAX
004797ba  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004797be  c1e81f                    SHR EAX,0x1f
004797c1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004797ca  660f5ac0                  CVTPD2PS XMM0,XMM0
004797ce  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004797d6  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004797de  f30f58c0                  ADDSS XMM0,XMM0
004797e2  f30f1185c8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM0
004797ea  e871572700                CALL 0x006eef60
004797ef  660f6ec0                  MOVD XMM0,EAX
004797f3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004797f7  c1e81f                    SHR EAX,0x1f
004797fa  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00479803  660f5ac0                  CVTPD2PS XMM0,XMM0
00479807  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047980f  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00479817  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
0047981f  f30f1085c8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc8]
00479827  e8143dfaff                CALL 0x0041d540
0047982c  f30f5985d4fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcd4]
00479834  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
0047983c  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
00479844  f30f1085c8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc8]
0047984c  e8cf3cfaff                CALL 0x0041d520
00479851  f30f5985d4fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcd4]
00479859  f30f1185a0fcffff          MOVSS dword ptr [EBP + 0xfffffca0],XMM0
00479861  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00479869  e8f2562700                CALL 0x006eef60
0047986e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00479876  8bf0                      MOV ESI,EAX
00479878  f30f118594fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM0
00479880  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00479888  f30f1185c0fcffff          MOVSS dword ptr [EBP + 0xfffffcc0],XMM0
00479890  e8cb562700                CALL 0x006eef60
00479895  660f6ec0                  MOVD XMM0,EAX
00479899  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047989d  c1e81f                    SHR EAX,0x1f
004798a0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004798a9  660f5ac0                  CVTPD2PS XMM0,XMM0
004798ad  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004798b5  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004798bd  f30f58c0                  ADDSS XMM0,XMM0
004798c1  f30f1185c8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM0
004798c9  e892562700                CALL 0x006eef60
004798ce  660f6ec0                  MOVD XMM0,EAX
004798d2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004798d6  c1e81f                    SHR EAX,0x1f
004798d9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004798e2  660f5ac0                  CVTPD2PS XMM0,XMM0
004798e6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004798ee  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004798f6  f30f1185d4fcffff          MOVSS dword ptr [EBP + 0xfffffcd4],XMM0
004798fe  f30f1085c8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc8]
00479906  e8353cfaff                CALL 0x0041d540
0047990b  f30f5985d4fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcd4]
00479913  f30f588594fcffff          ADDSS XMM0,dword ptr [EBP + 0xfffffc94]
0047991b  f30f118598fcffff          MOVSS dword ptr [EBP + 0xfffffc98],XMM0
00479923  f30f1085c8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc8]
0047992b  e8f03bfaff                CALL 0x0041d520
00479930  f30f5985d4fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcd4]
00479938  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
0047993e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00479944  6a00                      PUSH 0x0
00479946  68acd5c500                PUSH 0xc5d5ac
0047994b  f30f5885c0fcffff          ADDSS XMM0,dword ptr [EBP + 0xfffffcc0]
00479953  68dcd5c500                PUSH 0xc5d5dc
00479958  6a00                      PUSH 0x0
0047995a  56                        PUSH ESI
0047995b  6a00                      PUSH 0x0
0047995d  57                        PUSH EDI
0047995e  50                        PUSH EAX
0047995f  8d8598fcffff              LEA EAX,[EBP + 0xfffffc98]
00479965  f30f11859cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM0
0047996d  50                        PUSH EAX
0047996e  6a3b                      PUSH 0x3b
00479970  68e8030000                PUSH 0x3e8
00479975  e8a6f1faff                CALL 0x00428b20
0047997a  50                        PUSH EAX
0047997b  e8316f6700                CALL 0x00af08b1
00479980  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00479988  8bf0                      MOV ESI,EAX
0047998a  f30f1095a8fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffca8]
00479992  83c414                    ADD ESP,0x14
00479995  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0047999c  f30f1185c8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM0
004799a4  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004799ac  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
004799b4  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004799bc  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004799c4  89b5d4fcffff              MOV dword ptr [EBP + 0xfffffcd4],ESI
004799ca  f30f59ca                  MULSS XMM1,XMM2
004799ce  f30f5985a0fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffca0]
004799d6  f30f58c8                  ADDSS XMM1,XMM0
004799da  0f57c0                    XORPS XMM0,XMM0
004799dd  0f2fc1                    COMISS XMM0,XMM1
004799e0  7610                      JBE 0x004799f2
004799e2  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004799ea  f30f1185c8fcffff          MOVSS dword ptr [EBP + 0xfffffcc8],XMM0
004799f2  e869552700                CALL 0x006eef60
004799f7  660f6ec0                  MOVD XMM0,EAX
004799fb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004799ff  c1e81f                    SHR EAX,0x1f
00479a02  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00479a0b  660f5ac0                  CVTPD2PS XMM0,XMM0
00479a0f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00479a17  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00479a1f  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00479a27  f30f5985c8fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcc8]
00479a2f  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00479a37  e824552700                CALL 0x006eef60
00479a3c  33d2                      XOR EDX,EDX
00479a3e  b90f000000                MOV ECX,0xf
00479a43  f7f1                      DIV ECX
00479a45  8b06                      MOV EAX,dword ptr [ESI]
00479a47  03d1                      ADD EDX,ECX
00479a49  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
00479a4f  899660040000              MOV dword ptr [ESI + 0x460],EDX
00479a55  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00479a58  e803552700                CALL 0x006eef60
00479a5d  8d4dc0                    LEA ECX,[EBP + -0x40]
00479a60  660f6ec0                  MOVD XMM0,EAX
00479a64  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00479a68  c1e81f                    SHR EAX,0x1f
00479a6b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00479a74  660f5ac0                  CVTPD2PS XMM0,XMM0
00479a78  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00479a80  f30f118594fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM0
00479a88  e843942000                CALL 0x00682ed0
00479a8d  f30f108594fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc94]
00479a95  8d45c0                    LEA EAX,[EBP + -0x40]
00479a98  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00479aa0  8b8dd4fcffff              MOV ECX,dword ptr [EBP + 0xfffffcd4]
00479aa6  6a01                      PUSH 0x1
00479aa8  6a00                      PUSH 0x0
00479aaa  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
00479ab2  68ff000000                PUSH 0xff
00479ab7  6aff                      PUSH -0x1
00479ab9  50                        PUSH EAX
00479aba  c745c00000803f            MOV dword ptr [EBP + -0x40],0x3f800000
00479ac1  c745c40000803f            MOV dword ptr [EBP + -0x3c],0x3f800000
00479ac8  c745c80000803f            MOV dword ptr [EBP + -0x38],0x3f800000
00479acf  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00479ad4  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00479adb  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00479ae2  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00479ae9  ffd6                      CALL ESI
00479aeb  8b8dd4fcffff              MOV ECX,dword ptr [EBP + 0xfffffcd4]
00479af1  8b01                      MOV EAX,dword ptr [ECX]
00479af3  ff500c                    CALL dword ptr [EAX + 0xc]
00479af6  6800000010                PUSH 0x10000000
00479afb  6a00                      PUSH 0x0
00479afd  8bcf                      MOV ECX,EDI
00479aff  e82cd9f9ff                CALL 0x00417430
00479b04  84c0                      TEST AL,AL
00479b06  746b                      JZ 0x00479b73
00479b08  8bb5ccfcffff              MOV ESI,dword ptr [EBP + 0xfffffccc]
00479b0e  6690                      NOP
00479b10  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00479b18  8d4d80                    LEA ECX,[EBP + -0x80]
00479b1b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00479b23  8b06                      MOV EAX,dword ptr [ESI]
00479b25  51                        PUSH ECX
00479b26  8bce                      MOV ECX,ESI
00479b28  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
00479b2f  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
00479b36  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
00479b3d  c7458c00000000            MOV dword ptr [EBP + -0x74],0x0
00479b44  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
00479b49  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
00479b4e  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
00479b53  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
00479b58  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
00479b5f  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
00479b66  ff5024                    CALL dword ptr [EAX + 0x24]
00479b69  8bb6bc030000              MOV ESI,dword ptr [ESI + 0x3bc]
00479b6f  85f6                      TEST ESI,ESI
00479b71  759d                      JNZ 0x00479b10
00479b73  83adacfcffff01            SUB dword ptr [EBP + 0xfffffcac],0x1
00479b7a  0f8531fcffff              JNZ 0x004797b1
00479b80  e98f000000                JMP 0x00479c14
00479b85  85c0                      TEST EAX,EAX
00479b87  7409                      JZ 0x00479b92
00479b89  83f801                    CMP EAX,0x1
00479b8c  0f8582000000              JNZ 0x00479c14
00479b92  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00479b99  0f8475000000              JZ 0x00479c14
00479b9f  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00479ba5  33c0                      XOR EAX,EAX
00479ba7  81e100000010              AND ECX,0x10000000
00479bad  0bc1                      OR EAX,ECX
00479baf  7463                      JZ 0x00479c14
00479bb1  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00479bb9  8d4dc4                    LEA ECX,[EBP + -0x3c]
00479bbc  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00479bc4  8b06                      MOV EAX,dword ptr [ESI]
00479bc6  51                        PUSH ECX
00479bc7  8bce                      MOV ECX,ESI
00479bc9  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
00479bd0  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00479bd7  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00479bde  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00479be5  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
00479bea  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00479bef  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00479bf4  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00479bf9  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00479c00  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00479c07  ff5024                    CALL dword ptr [EAX + 0x24]
00479c0a  8bb6bc030000              MOV ESI,dword ptr [ESI + 0x3bc]
00479c10  85f6                      TEST ESI,ESI
00479c12  759d                      JNZ 0x00479bb1
00479c14  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00479c18  8d7778                    LEA ESI,[EDI + 0x78]
00479c1b  0f84bd000000              JZ 0x00479cde
00479c21  683cd3b100                PUSH 0xb1d33c
00479c26  8bce                      MOV ECX,ESI
00479c28  e8a311f9ff                CALL 0x0040add0
00479c2d  84c0                      TEST AL,AL
00479c2f  744d                      JZ 0x00479c7e
00479c31  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00479c37  8d8dc8fcffff              LEA ECX,[EBP + 0xfffffcc8]
00479c3d  c785c8fcffffa4030000      MOV dword ptr [EBP + 0xfffffcc8],0x3a4
00479c47  e834cb4d00                CALL 0x00956780
00479c4c  83ec08                    SUB ESP,0x8
00479c4f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00479c57  c704240000803f            MOV dword ptr [ESP],0x3f800000
00479c5e  6a00                      PUSH 0x0
00479c60  6a02                      PUSH 0x2
00479c62  51                        PUSH ECX
00479c63  c704240000803f            MOV dword ptr [ESP],0x3f800000
00479c6a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00479c70  ffb5c8fcffff              PUSH dword ptr [EBP + 0xfffffcc8]
00479c76  e8b53f4b00                CALL 0x0092dc30
00479c7b  8d7778                    LEA ESI,[EDI + 0x78]
00479c7e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00479c82  745a                      JZ 0x00479cde
00479c84  6820e3b100                PUSH 0xb1e320
00479c89  8bce                      MOV ECX,ESI
00479c8b  e84011f9ff                CALL 0x0040add0
00479c90  84c0                      TEST AL,AL
00479c92  744a                      JZ 0x00479cde
00479c94  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00479c9a  8d8dc8fcffff              LEA ECX,[EBP + 0xfffffcc8]
00479ca0  c785c8fcffffa5030000      MOV dword ptr [EBP + 0xfffffcc8],0x3a5
00479caa  e8d1ca4d00                CALL 0x00956780
00479caf  83ec08                    SUB ESP,0x8
00479cb2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00479cba  c704240000803f            MOV dword ptr [ESP],0x3f800000
00479cc1  6a00                      PUSH 0x0
00479cc3  6a02                      PUSH 0x2
00479cc5  51                        PUSH ECX
00479cc6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00479ccd  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00479cd3  ffb5c8fcffff              PUSH dword ptr [EBP + 0xfffffcc8]
00479cd9  e8523f4b00                CALL 0x0092dc30
00479cde  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00479ce1  64890d00000000            MOV dword ptr FS:[0x0],ECX
00479ce8  59                        POP ECX
00479ce9  5f                        POP EDI
00479cea  5e                        POP ESI
00479ceb  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00479cee  33cd                      XOR ECX,EBP
00479cf0  e836546700                CALL 0x00aef12b
00479cf5  8be5                      MOV ESP,EBP
00479cf7  5d                        POP EBP
00479cf8  8be3                      MOV ESP,EBX
00479cfa  5b                        POP EBX
00479cfb  c3                        RET
