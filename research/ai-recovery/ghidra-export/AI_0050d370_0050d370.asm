; J460 NPC AI 0x0050d370 AI_0050d370
; types=15,282,872
; identities=15.0.0,15.1.0,15.2.0,15.3.0,282.0.0,872.0.0
; entry=0050d370
0050d370  53                        PUSH EBX
0050d371  8bdc                      MOV EBX,ESP
0050d373  83ec08                    SUB ESP,0x8
0050d376  83e4f8                    AND ESP,0xfffffff8
0050d379  83c404                    ADD ESP,0x4
0050d37c  55                        PUSH EBP
0050d37d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0050d380  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0050d384  8bec                      MOV EBP,ESP
0050d386  6aff                      PUSH -0x1
0050d388  68d542af00                PUSH 0xaf42d5
0050d38d  64a100000000              MOV EAX,FS:[0x0]
0050d393  50                        PUSH EAX
0050d394  53                        PUSH EBX
0050d395  81ec90010000              SUB ESP,0x190
0050d39b  a1b493bf00                MOV EAX,[0x00bf93b4]
0050d3a0  33c5                      XOR EAX,EBP
0050d3a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0050d3a5  56                        PUSH ESI
0050d3a6  57                        PUSH EDI
0050d3a7  50                        PUSH EAX
0050d3a8  8d45f4                    LEA EAX,[EBP + -0xc]
0050d3ab  64a300000000              MOV FS:[0x0],EAX
0050d3b1  8bf9                      MOV EDI,ECX
0050d3b3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0050d3ba  0f57c9                    XORPS XMM1,XMM1
0050d3bd  0f281520c1ba00            MOVAPS XMM2,xmmword ptr [0x00bac120]
0050d3c4  c785acfeffff00000000      MOV dword ptr [EBP + 0xfffffeac],0x0
0050d3ce  c785b0feffff00000000      MOV dword ptr [EBP + 0xfffffeb0],0x0
0050d3d8  c785b4feffff00000000      MOV dword ptr [EBP + 0xfffffeb4],0x0
0050d3e2  0f8536010000              JNZ 0x0050d51e
0050d3e8  817f2868030000            CMP dword ptr [EDI + 0x28],0x368
0050d3ef  0f85b7000000              JNZ 0x0050d4ac
0050d3f5  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0050d3fc  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0050d402  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
0050d408  c785d8feffff8382823e      MOV dword ptr [EBP + 0xfffffed8],0x3e828283
0050d412  c785dcfeffffa5a4243e      MOV dword ptr [EBP + 0xfffffedc],0x3e24a4a5
0050d41c  0f57c0                    XORPS XMM0,XMM0
0050d41f  c785e0feffff8d8c0c3e      MOV dword ptr [EBP + 0xfffffee0],0x3e0c8c8d
0050d429  3bc1                      CMP EAX,ECX
0050d42b  7426                      JZ 0x0050d453
0050d42d  0f1187f4010000            MOVUPS xmmword ptr [EDI + 0x1f4],XMM0
0050d434  f30f7e85d8feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffed8]
0050d43c  0f1108                    MOVUPS xmmword ptr [EAX],XMM1
0050d43f  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
0050d445  660fd68704020000          MOVQ qword ptr [EDI + 0x204],XMM0
0050d44d  89870c020000              MOV dword ptr [EDI + 0x20c],EAX
0050d453  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
0050d459  85d2                      TEST EDX,EDX
0050d45b  751a                      JNZ 0x0050d477
0050d45d  6854bfb600                PUSH 0xb6bf54
0050d462  6a10                      PUSH 0x10
0050d464  e8573e5000                CALL 0x00a112c0
0050d469  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
0050d46f  83c408                    ADD ESP,0x8
0050d472  85d2                      TEST EDX,EDX
0050d474  7501                      JNZ 0x0050d477
0050d476  cc                        INT3
0050d477  8b8fe0030000              MOV ECX,dword ptr [EDI + 0x3e0]
0050d47d  8bc2                      MOV EAX,EDX
0050d47f  d3e8                      SHR EAX,CL
0050d481  8b8fe4030000              MOV ECX,dword ptr [EDI + 0x3e4]
0050d487  33c2                      XOR EAX,EDX
0050d489  8bd0                      MOV EDX,EAX
0050d48b  d3e2                      SHL EDX,CL
0050d48d  8b8fe8030000              MOV ECX,dword ptr [EDI + 0x3e8]
0050d493  33d0                      XOR EDX,EAX
0050d495  8bc2                      MOV EAX,EDX
0050d497  d3e8                      SHR EAX,CL
0050d499  33c2                      XOR EAX,EDX
0050d49b  8987dc030000              MOV dword ptr [EDI + 0x3dc],EAX
0050d4a1  83e001                    AND EAX,0x1
0050d4a4  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0050d4aa  eb72                      JMP 0x0050d51e
0050d4ac  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050d4af  83f801                    CMP EAX,0x1
0050d4b2  752f                      JNZ 0x0050d4e3
0050d4b4  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050d4ba  8d858cfeffff              LEA EAX,[EBP + 0xfffffe8c]
0050d4c0  3bc8                      CMP ECX,EAX
0050d4c2  745a                      JZ 0x0050d51e
0050d4c4  f30f7e85acfeffff          MOVQ XMM0,qword ptr [EBP + 0xfffffeac]
0050d4cc  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
0050d4d2  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0050d4d7  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
0050d4da  894128                    MOV dword ptr [ECX + 0x28],EAX
0050d4dd  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0050d4e1  eb3b                      JMP 0x0050d51e
0050d4e3  83f803                    CMP EAX,0x3
0050d4e6  7536                      JNZ 0x0050d51e
0050d4e8  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
0050d4ef  8d45a8                    LEA EAX,[EBP + -0x58]
0050d4f2  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
0050d4f6  c745c89190103e            MOV dword ptr [EBP + -0x38],0x3e109091
0050d4fd  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050d503  0f57c0                    XORPS XMM0,XMM0
0050d506  c745ccf9f8f83d            MOV dword ptr [EBP + -0x34],0x3df8f8f9
0050d50d  50                        PUSH EAX
0050d50e  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
0050d512  c745d0e1e0e03d            MOV dword ptr [EBP + -0x30],0x3de0e0e1
0050d519  e8d29cefff                CALL 0x004071f0
0050d51e  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0050d521  33d2                      XOR EDX,EDX
0050d523  b905000000                MOV ECX,0x5
0050d528  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0050d530  f7f1                      DIV ECX
0050d532  8bcf                      MOV ECX,EDI
0050d534  660f6ec2                  MOVD XMM0,EDX
0050d538  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050d53c  c1ea1f                    SHR EDX,0x1f
0050d53f  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
0050d548  660f5ad0                  CVTPD2PS XMM2,XMM0
0050d54c  e80ff21900                CALL 0x006ac760
0050d551  85c0                      TEST EAX,EAX
0050d553  745d                      JZ 0x0050d5b2
0050d555  e8061a1e00                CALL 0x006eef60
0050d55a  51                        PUSH ECX
0050d55b  8bcf                      MOV ECX,EDI
0050d55d  660f6ec0                  MOVD XMM0,EAX
0050d561  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050d565  c1e81f                    SHR EAX,0x1f
0050d568  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050d571  660f5ac0                  CVTPD2PS XMM0,XMM0
0050d575  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050d57d  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0050d585  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0050d58d  f30f110424                MOVSS dword ptr [ESP],XMM0
0050d592  e8398f1a00                CALL 0x006b64d0
0050d597  6a01                      PUSH 0x1
0050d599  6a00                      PUSH 0x0
0050d59b  68ff000000                PUSH 0xff
0050d5a0  8b08                      MOV ECX,dword ptr [EAX]
0050d5a2  6aff                      PUSH -0x1
0050d5a4  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0050d5a7  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050d5ad  51                        PUSH ECX
0050d5ae  8bc8                      MOV ECX,EAX
0050d5b0  ffd2                      CALL EDX
0050d5b2  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050d5b9  0f84ef000000              JZ 0x0050d6ae
0050d5bf  817f281a010000            CMP dword ptr [EDI + 0x28],0x11a
0050d5c6  0f85e2000000              JNZ 0x0050d6ae
0050d5cc  0fbf87760c0000            MOVSX EAX,word ptr [EDI + 0xc76]
0050d5d3  b902000000                MOV ECX,0x2
0050d5d8  2bc8                      SUB ECX,EAX
0050d5da  33c0                      XOR EAX,EAX
0050d5dc  85c9                      TEST ECX,ECX
0050d5de  0f4fc1                    CMOVG EAX,ECX
0050d5e1  8985f0feffff              MOV dword ptr [EBP + 0xfffffef0],EAX
0050d5e7  85c0                      TEST EAX,EAX
0050d5e9  0f8ebf000000              JLE 0x0050d6ae
0050d5ef  90                        NOP
0050d5f0  e86b191e00                CALL 0x006eef60
0050d5f5  8bf0                      MOV ESI,EAX
0050d5f7  e864191e00                CALL 0x006eef60
0050d5fc  660f6ec0                  MOVD XMM0,EAX
0050d600  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050d604  c1e81f                    SHR EAX,0x1f
0050d607  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050d610  660f5ac0                  CVTPD2PS XMM0,XMM0
0050d614  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050d61c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0050d624  f30f58c0                  ADDSS XMM0,XMM0
0050d628  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0050d630  e8ebfef0ff                CALL 0x0041d520
0050d635  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0050d63d  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0050d645  e8f6fef0ff                CALL 0x0041d540
0050d64a  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
0050d652  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0050d658  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0050d660  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050d666  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0050d66e  56                        PUSH ESI
0050d66f  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0050d677  6a00                      PUSH 0x0
0050d679  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0050d681  57                        PUSH EDI
0050d682  6840b6c700                PUSH 0xc7b640
0050d687  50                        PUSH EAX
0050d688  6a00                      PUSH 0x0
0050d68a  6a0f                      PUSH 0xf
0050d68c  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0050d694  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
0050d69c  e87fb4f1ff                CALL 0x00428b20
0050d6a1  83adf0feffff01            SUB dword ptr [EBP + 0xfffffef0],0x1
0050d6a8  0f8542ffffff              JNZ 0x0050d5f0
0050d6ae  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050d6b6  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0050d6be  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050d6c4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050d6cc  83e803                    SUB EAX,0x3
0050d6cf  0f849b080000              JZ 0x0050df70
0050d6d5  83e801                    SUB EAX,0x1
0050d6d8  0f8492080000              JZ 0x0050df70
0050d6de  83e804                    SUB EAX,0x4
0050d6e1  0f84ba000000              JZ 0x0050d7a1
0050d6e7  e874181e00                CALL 0x006eef60
0050d6ec  f7d0                      NOT EAX
0050d6ee  83e001                    AND EAX,0x1
0050d6f1  8d048504000000            LEA EAX,[EAX*0x4 + 0x4]
0050d6f8  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0050d6fe  c787b00b00000000f041      MOV dword ptr [EDI + 0xbb0],0x41f00000
0050d708  837f280f                  CMP dword ptr [EDI + 0x28],0xf
0050d70c  7510                      JNZ 0x0050d71e
0050d70e  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050d712  750a                      JNZ 0x0050d71e
0050d714  c787b00b000000007041      MOV dword ptr [EDI + 0xbb0],0x41700000
0050d71e  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0050d721  85f6                      TEST ESI,ESI
0050d723  7452                      JZ 0x0050d777
0050d725  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0050d729  8bc6                      MOV EAX,ESI
0050d72b  7202                      JC 0x0050d72f
0050d72d  8b06                      MOV EAX,dword ptr [ESI]
0050d72f  b91cdeb100                MOV ECX,0xb1de1c
0050d734  8a10                      MOV DL,byte ptr [EAX]
0050d736  3a11                      CMP DL,byte ptr [ECX]
0050d738  751a                      JNZ 0x0050d754
0050d73a  84d2                      TEST DL,DL
0050d73c  7412                      JZ 0x0050d750
0050d73e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050d741  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0050d744  750e                      JNZ 0x0050d754
0050d746  83c002                    ADD EAX,0x2
0050d749  83c102                    ADD ECX,0x2
0050d74c  84d2                      TEST DL,DL
0050d74e  75e4                      JNZ 0x0050d734
0050d750  33c0                      XOR EAX,EAX
0050d752  eb05                      JMP 0x0050d759
0050d754  1bc0                      SBB EAX,EAX
0050d756  83c801                    OR EAX,0x1
0050d759  85c0                      TEST EAX,EAX
0050d75b  751a                      JNZ 0x0050d777
0050d75d  384634                    CMP byte ptr [ESI + 0x34],AL
0050d760  0f84480c0000              JZ 0x0050e3ae
0050d766  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0050d76c  8d7748                    LEA ESI,[EDI + 0x48]
0050d76f  0f85390c0000              JNZ 0x0050e3ae
0050d775  eb03                      JMP 0x0050d77a
0050d777  8d7748                    LEA ESI,[EDI + 0x48]
0050d77a  6a01                      PUSH 0x1
0050d77c  681cdeb100                PUSH 0xb1de1c
0050d781  8bce                      MOV ECX,ESI
0050d783  e848ceefff                CALL 0x0040a5d0
0050d788  84c0                      TEST AL,AL
0050d78a  0f841e0c0000              JZ 0x0050e3ae
0050d790  8d4e30                    LEA ECX,[ESI + 0x30]
0050d793  e818caefff                CALL 0x0040a1b0
0050d798  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0050d79c  e90d0c0000                JMP 0x0050e3ae
0050d7a1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050d7a5  0f849e070000              JZ 0x0050df49
0050d7ab  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050d7b2  0f8491070000              JZ 0x0050df49
0050d7b8  e8a3171e00                CALL 0x006eef60
0050d7bd  33d2                      XOR EDX,EDX
0050d7bf  b91e000000                MOV ECX,0x1e
0050d7c4  f7f1                      DIV ECX
0050d7c6  85d2                      TEST EDX,EDX
0050d7c8  7410                      JZ 0x0050d7da
0050d7ca  0f57c0                    XORPS XMM0,XMM0
0050d7cd  0f2f87b00b0000            COMISS XMM0,dword ptr [EDI + 0xbb0]
0050d7d4  0f836f070000              JNC 0x0050df49
0050d7da  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0050d7dd  85f6                      TEST ESI,ESI
0050d7df  744a                      JZ 0x0050d82b
0050d7e1  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0050d7e5  8bc6                      MOV EAX,ESI
0050d7e7  7202                      JC 0x0050d7eb
0050d7e9  8b06                      MOV EAX,dword ptr [ESI]
0050d7eb  b954ddb100                MOV ECX,0xb1dd54
0050d7f0  8a10                      MOV DL,byte ptr [EAX]
0050d7f2  3a11                      CMP DL,byte ptr [ECX]
0050d7f4  751a                      JNZ 0x0050d810
0050d7f6  84d2                      TEST DL,DL
0050d7f8  7412                      JZ 0x0050d80c
0050d7fa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050d7fd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0050d800  750e                      JNZ 0x0050d810
0050d802  83c002                    ADD EAX,0x2
0050d805  83c102                    ADD ECX,0x2
0050d808  84d2                      TEST DL,DL
0050d80a  75e4                      JNZ 0x0050d7f0
0050d80c  33c0                      XOR EAX,EAX
0050d80e  eb05                      JMP 0x0050d815
0050d810  1bc0                      SBB EAX,EAX
0050d812  83c801                    OR EAX,0x1
0050d815  85c0                      TEST EAX,EAX
0050d817  7512                      JNZ 0x0050d82b
0050d819  384634                    CMP byte ptr [ESI + 0x34],AL
0050d81c  742e                      JZ 0x0050d84c
0050d81e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0050d824  8d7748                    LEA ESI,[EDI + 0x48]
0050d827  7523                      JNZ 0x0050d84c
0050d829  eb03                      JMP 0x0050d82e
0050d82b  8d7748                    LEA ESI,[EDI + 0x48]
0050d82e  6a01                      PUSH 0x1
0050d830  6854ddb100                PUSH 0xb1dd54
0050d835  8bce                      MOV ECX,ESI
0050d837  e894cdefff                CALL 0x0040a5d0
0050d83c  84c0                      TEST AL,AL
0050d83e  740c                      JZ 0x0050d84c
0050d840  8d4e30                    LEA ECX,[ESI + 0x30]
0050d843  e868c9efff                CALL 0x0040a1b0
0050d848  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0050d84c  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
0050d84f  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0050d852  81f91a010000              CMP ECX,0x11a
0050d858  0f85c3030000              JNZ 0x0050dc21
0050d85e  85c0                      TEST EAX,EAX
0050d860  0f84ed060000              JZ 0x0050df53
0050d866  68dcd2b100                PUSH 0xb1d2dc
0050d86b  8d4f78                    LEA ECX,[EDI + 0x78]
0050d86e  e85dd5efff                CALL 0x0040add0
0050d873  84c0                      TEST AL,AL
0050d875  0f84d8060000              JZ 0x0050df53
0050d87b  51                        PUSH ECX
0050d87c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050d883  6a00                      PUSH 0x0
0050d885  6a02                      PUSH 0x2
0050d887  51                        PUSH ECX
0050d888  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0050d88f  8bcf                      MOV ECX,EDI
0050d891  6a30                      PUSH 0x30
0050d893  e808931c00                CALL 0x006d6ba0
0050d898  f30f1087200f0000          MOVSS XMM0,dword ptr [EDI + 0xf20]
0050d8a0  8d8f200f0000              LEA ECX,[EDI + 0xf20]
0050d8a6  8b971c0f0000              MOV EDX,dword ptr [EDI + 0xf1c]
0050d8ac  83ceff                    OR ESI,0xffffffff
0050d8af  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0050d8b6  8995f4feffff              MOV dword ptr [EBP + 0xfffffef4],EDX
0050d8bc  9f                        LAHF
0050d8bd  f6c444                    TEST AH,0x44
0050d8c0  7a12                      JP 0x0050d8d4
0050d8c2  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0050d8c7  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0050d8ce  9f                        LAHF
0050d8cf  f6c444                    TEST AH,0x44
0050d8d2  7b07                      JNP 0x0050d8db
0050d8d4  e887191700                CALL 0x0067f260
0050d8d9  8bf0                      MOV ESI,EAX
0050d8db  83faff                    CMP EDX,-0x1
0050d8de  741b                      JZ 0x0050d8fb
0050d8e0  85f6                      TEST ESI,ESI
0050d8e2  0f84d8020000              JZ 0x0050dbc0
0050d8e8  83fe02                    CMP ESI,0x2
0050d8eb  0f84cf020000              JZ 0x0050dbc0
0050d8f1  33d2                      XOR EDX,EDX
0050d8f3  83feff                    CMP ESI,-0x1
0050d8f6  0f95c2                    SETNZ DL
0050d8f9  eb20                      JMP 0x0050d91b
0050d8fb  e860161e00                CALL 0x006eef60
0050d900  a803                      TEST AL,0x3
0050d902  0f85b8020000              JNZ 0x0050dbc0
0050d908  e853161e00                CALL 0x006eef60
0050d90d  33d2                      XOR EDX,EDX
0050d90f  b903000000                MOV ECX,0x3
0050d914  f7f1                      DIV ECX
0050d916  f7da                      NEG EDX
0050d918  1bd2                      SBB EDX,EDX
0050d91a  42                        INC EDX
0050d91b  85d2                      TEST EDX,EDX
0050d91d  0f841b010000              JZ 0x0050da3e
0050d923  8bcf                      MOV ECX,EDI
0050d925  e8f6921c00                CALL 0x006d6c20
0050d92a  83f805                    CMP EAX,0x5
0050d92d  0f8d0b010000              JGE 0x0050da3e
0050d933  83bdf4feffffff            CMP dword ptr [EBP + 0xfffffef4],-0x1
0050d93a  740a                      JZ 0x0050d946
0050d93c  33d2                      XOR EDX,EDX
0050d93e  83fe01                    CMP ESI,0x1
0050d941  0f94c2                    SETZ DL
0050d944  eb13                      JMP 0x0050d959
0050d946  e815161e00                CALL 0x006eef60
0050d94b  33d2                      XOR EDX,EDX
0050d94d  b903000000                MOV ECX,0x3
0050d952  f7f1                      DIV ECX
0050d954  f7da                      NEG EDX
0050d956  1bd2                      SBB EDX,EDX
0050d958  42                        INC EDX
0050d959  85d2                      TEST EDX,EDX
0050d95b  0f848b000000              JZ 0x0050d9ec
0050d961  e8fa151e00                CALL 0x006eef60
0050d966  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050d96c  8bf0                      MOV ESI,EAX
0050d96e  6a00                      PUSH 0x0
0050d970  6a00                      PUSH 0x0
0050d972  6a00                      PUSH 0x0
0050d974  51                        PUSH ECX
0050d975  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0050d97b  8d873c030000              LEA EAX,[EDI + 0x33c]
0050d981  c7042400002042            MOV dword ptr [ESP],0x42200000
0050d988  50                        PUSH EAX
0050d989  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050d98f  50                        PUSH EAX
0050d990  e88b5b3000                CALL 0x00813520
0050d995  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050d99b  6a00                      PUSH 0x0
0050d99d  68acd6c500                PUSH 0xc5d6ac
0050d9a2  68dcd5c500                PUSH 0xc5d5dc
0050d9a7  6a00                      PUSH 0x0
0050d9a9  56                        PUSH ESI
0050d9aa  6a00                      PUSH 0x0
0050d9ac  57                        PUSH EDI
0050d9ad  6840b6c700                PUSH 0xc7b640
0050d9b2  50                        PUSH EAX
0050d9b3  6a00                      PUSH 0x0
0050d9b5  6a18                      PUSH 0x18
0050d9b7  e864b1f1ff                CALL 0x00428b20
0050d9bc  50                        PUSH EAX
0050d9bd  e8ef2e5e00                CALL 0x00af08b1
0050d9c2  83c414                    ADD ESP,0x14
0050d9c5  8bf0                      MOV ESI,EAX
0050d9c7  6a00                      PUSH 0x0
0050d9c9  68a40db600                PUSH 0xb60da4
0050d9ce  8d4e48                    LEA ECX,[ESI + 0x48]
0050d9d1  e8aac9efff                CALL 0x0040a380
0050d9d6  8b16                      MOV EDX,dword ptr [ESI]
0050d9d8  8bce                      MOV ECX,ESI
0050d9da  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
0050d9e4  ff520c                    CALL dword ptr [EDX + 0xc]
0050d9e7  e967050000                JMP 0x0050df53
0050d9ec  e86f151e00                CALL 0x006eef60
0050d9f1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050d9f7  8bf0                      MOV ESI,EAX
0050d9f9  6a00                      PUSH 0x0
0050d9fb  6a00                      PUSH 0x0
0050d9fd  6a00                      PUSH 0x0
0050d9ff  51                        PUSH ECX
0050da00  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0050da06  8d873c030000              LEA EAX,[EDI + 0x33c]
0050da0c  c7042400002042            MOV dword ptr [ESP],0x42200000
0050da13  50                        PUSH EAX
0050da14  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050da1a  50                        PUSH EAX
0050da1b  e8005b3000                CALL 0x00813520
0050da20  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050da26  56                        PUSH ESI
0050da27  6a00                      PUSH 0x0
0050da29  57                        PUSH EDI
0050da2a  6840b6c700                PUSH 0xc7b640
0050da2f  50                        PUSH EAX
0050da30  6a00                      PUSH 0x0
0050da32  6a0f                      PUSH 0xf
0050da34  e8e7b0f1ff                CALL 0x00428b20
0050da39  e915050000                JMP 0x0050df53
0050da3e  c785f4feffff04000000      MOV dword ptr [EBP + 0xfffffef4],0x4
0050da48  e813151e00                CALL 0x006eef60
0050da4d  8bf0                      MOV ESI,EAX
0050da4f  e80c151e00                CALL 0x006eef60
0050da54  660f6ec0                  MOVD XMM0,EAX
0050da58  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050da5c  c1e81f                    SHR EAX,0x1f
0050da5f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050da68  660f5ac0                  CVTPD2PS XMM0,XMM0
0050da6c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050da74  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0050da7c  f30f58c0                  ADDSS XMM0,XMM0
0050da80  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0050da88  e8d3141e00                CALL 0x006eef60
0050da8d  660f6ec0                  MOVD XMM0,EAX
0050da91  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050da95  c1e81f                    SHR EAX,0x1f
0050da98  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050daa1  660f5ac0                  CVTPD2PS XMM0,XMM0
0050daa5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050daad  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0050dab5  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0050dabd  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
0050dac5  e876faf0ff                CALL 0x0041d540
0050daca  f30f5985ecfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffeec]
0050dad2  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0050dada  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0050dae2  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
0050daea  e831faf0ff                CALL 0x0041d520
0050daef  f30f5985ecfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffeec]
0050daf7  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050dafd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050db03  6a00                      PUSH 0x0
0050db05  68acd5c500                PUSH 0xc5d5ac
0050db0a  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0050db12  68dcd5c500                PUSH 0xc5d5dc
0050db17  6a00                      PUSH 0x0
0050db19  56                        PUSH ESI
0050db1a  6a00                      PUSH 0x0
0050db1c  57                        PUSH EDI
0050db1d  6840b6c700                PUSH 0xc7b640
0050db22  50                        PUSH EAX
0050db23  6a16                      PUSH 0x16
0050db25  68e8030000                PUSH 0x3e8
0050db2a  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0050db32  e8e9aff1ff                CALL 0x00428b20
0050db37  50                        PUSH EAX
0050db38  e8742d5e00                CALL 0x00af08b1
0050db3d  83c414                    ADD ESP,0x14
0050db40  8bf0                      MOV ESI,EAX
0050db42  e819141e00                CALL 0x006eef60
0050db47  660f6ec0                  MOVD XMM0,EAX
0050db4b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050db4f  c1e81f                    SHR EAX,0x1f
0050db52  83adf4feffff01            SUB dword ptr [EBP + 0xfffffef4],0x1
0050db59  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050db62  660f5ac8                  CVTPD2PS XMM1,XMM0
0050db66  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0050db6e  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0050db76  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
0050db7e  0f28c1                    MOVAPS XMM0,XMM1
0050db81  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0050db89  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0050db91  c7865c040000d2000000      MOV dword ptr [ESI + 0x45c],0xd2
0050db9b  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0050dba3  c78660040000d2000000      MOV dword ptr [ESI + 0x460],0xd2
0050dbad  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0050dbb5  0f858dfeffff              JNZ 0x0050da48
0050dbbb  e993030000                JMP 0x0050df53
0050dbc0  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0050dbc6  e86513f3ff                CALL 0x0043ef30
0050dbcb  e890131e00                CALL 0x006eef60
0050dbd0  c785f8feffff00002041      MOV dword ptr [EBP + 0xfffffef8],0x41200000
0050dbda  c785fcfeffff0000c040      MOV dword ptr [EBP + 0xfffffefc],0x40c00000
0050dbe4  660f6ec0                  MOVD XMM0,EAX
0050dbe8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050dbec  c1e81f                    SHR EAX,0x1f
0050dbef  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050dbf8  660f5ac0                  CVTPD2PS XMM0,XMM0
0050dbfc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050dc04  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0050dc0c  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
0050dc14  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0050dc1c  e982020000                JMP 0x0050dea3
0050dc21  81f968030000              CMP ECX,0x368
0050dc27  0f854c010000              JNZ 0x0050dd79
0050dc2d  85c0                      TEST EAX,EAX
0050dc2f  0f841e030000              JZ 0x0050df53
0050dc35  68dcd2b100                PUSH 0xb1d2dc
0050dc3a  8d4f78                    LEA ECX,[EDI + 0x78]
0050dc3d  e88ed1efff                CALL 0x0040add0
0050dc42  84c0                      TEST AL,AL
0050dc44  0f8409030000              JZ 0x0050df53
0050dc4a  6840b6c700                PUSH 0xc7b640
0050dc4f  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0050dc55  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0050dc5f  50                        PUSH EAX
0050dc60  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050dc66  c785fcfeffff0000a0c1      MOV dword ptr [EBP + 0xfffffefc],0xc1a00000
0050dc70  8d973c030000              LEA EDX,[EDI + 0x33c]
0050dc76  b902000000                MOV ECX,0x2
0050dc7b  50                        PUSH EAX
0050dc7c  e86fa01c00                CALL 0x006d7cf0
0050dc81  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0050dc87  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
0050dc8d  83c40c                    ADD ESP,0xc
0050dc90  c785f4feffffa6000000      MOV dword ptr [EBP + 0xfffffef4],0xa6
0050dc9a  e8e18a4400                CALL 0x00956780
0050dc9f  83ec08                    SUB ESP,0x8
0050dca2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0050dcaa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050dcb1  6a00                      PUSH 0x0
0050dcb3  6a02                      PUSH 0x2
0050dcb5  51                        PUSH ECX
0050dcb6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050dcbd  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0050dcc3  ffb5f4feffff              PUSH dword ptr [EBP + 0xfffffef4]
0050dcc9  e862ff4100                CALL 0x0092dc30
0050dcce  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0050dcd4  e85712f3ff                CALL 0x0043ef30
0050dcd9  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0050dce0  c7459403000000            MOV dword ptr [EBP + -0x6c],0x3
0050dce7  c7855cffffff00000000      MOV dword ptr [EBP + 0xffffff5c],0x0
0050dcf1  c78520ffffffa69b443c      MOV dword ptr [EBP + 0xffffff20],0x3c449ba6
0050dcfb  c7850cffffff0ad7a3bc      MOV dword ptr [EBP + 0xffffff0c],0xbca3d70a
0050dd05  7516                      JNZ 0x0050dd1d
0050dd07  c78558ffffff00000800      MOV dword ptr [EBP + 0xffffff58],0x80000
0050dd11  c78518ffffff3b4671bf      MOV dword ptr [EBP + 0xffffff18],0xbf71463b
0050dd1b  eb14                      JMP 0x0050dd31
0050dd1d  c78558ffffff00000400      MOV dword ptr [EBP + 0xffffff58],0x40000
0050dd27  c78518ffffff3b46713f      MOV dword ptr [EBP + 0xffffff18],0x3f71463b
0050dd31  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
0050dd37  c785f8feffff00000041      MOV dword ptr [EBP + 0xfffffef8],0x41000000
0050dd41  50                        PUSH EAX
0050dd42  6a09                      PUSH 0x9
0050dd44  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050dd4a  c785fcfeffff00008040      MOV dword ptr [EBP + 0xfffffefc],0x40800000
0050dd54  50                        PUSH EAX
0050dd55  8d873c030000              LEA EAX,[EDI + 0x33c]
0050dd5b  8bcf                      MOV ECX,EDI
0050dd5d  50                        PUSH EAX
0050dd5e  e87dd51b00                CALL 0x006cb2e0
0050dd63  b801000000                MOV EAX,0x1
0050dd68  2b87c00b0000              SUB EAX,dword ptr [EDI + 0xbc0]
0050dd6e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0050dd74  e9da010000                JMP 0x0050df53
0050dd79  85c0                      TEST EAX,EAX
0050dd7b  0f84d2010000              JZ 0x0050df53
0050dd81  68dcd2b100                PUSH 0xb1d2dc
0050dd86  8d4f78                    LEA ECX,[EDI + 0x78]
0050dd89  e842d0efff                CALL 0x0040add0
0050dd8e  84c0                      TEST AL,AL
0050dd90  0f84bd010000              JZ 0x0050df53
0050dd96  6840b6c700                PUSH 0xc7b640
0050dd9b  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0050dda1  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0050ddab  50                        PUSH EAX
0050ddac  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050ddb2  c785fcfeffff0000a0c1      MOV dword ptr [EBP + 0xfffffefc],0xc1a00000
0050ddbc  8d973c030000              LEA EDX,[EDI + 0x33c]
0050ddc2  b902000000                MOV ECX,0x2
0050ddc7  50                        PUSH EAX
0050ddc8  e8239f1c00                CALL 0x006d7cf0
0050ddcd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0050ddd3  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
0050ddd9  83c40c                    ADD ESP,0xc
0050dddc  c785f4feffffa6000000      MOV dword ptr [EBP + 0xfffffef4],0xa6
0050dde6  e895894400                CALL 0x00956780
0050ddeb  83ec08                    SUB ESP,0x8
0050ddee  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0050ddf6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050ddfd  6a00                      PUSH 0x0
0050ddff  6a02                      PUSH 0x2
0050de01  51                        PUSH ECX
0050de02  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050de09  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0050de0f  ffb5f4feffff              PUSH dword ptr [EBP + 0xfffffef4]
0050de15  e816fe4100                CALL 0x0092dc30
0050de1a  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050de1e  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0050de24  0f859c000000              JNZ 0x0050dec6
0050de2a  e80111f3ff                CALL 0x0043ef30
0050de2f  c7850cffffff0ad7a33c      MOV dword ptr [EBP + 0xffffff0c],0x3ca3d70a
0050de39  e822111e00                CALL 0x006eef60
0050de3e  660f6ec0                  MOVD XMM0,EAX
0050de42  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050de46  c1e81f                    SHR EAX,0x1f
0050de49  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050de52  660f5ac0                  CVTPD2PS XMM0,XMM0
0050de56  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050de5e  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0050de66  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
0050de6e  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0050de76  e8c5a31c00                CALL 0x006d8240
0050de7b  85c0                      TEST EAX,EAX
0050de7d  7e0a                      JLE 0x0050de89
0050de7f  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0050de87  eb08                      JMP 0x0050de91
0050de89  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0050de91  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0050de99  c785fcfeffff00008040      MOV dword ptr [EBP + 0xfffffefc],0x40800000
0050dea3  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
0050dea9  50                        PUSH EAX
0050deaa  6a09                      PUSH 0x9
0050deac  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050deb2  8bcf                      MOV ECX,EDI
0050deb4  50                        PUSH EAX
0050deb5  8d873c030000              LEA EAX,[EDI + 0x33c]
0050debb  50                        PUSH EAX
0050debc  e81fd41b00                CALL 0x006cb2e0
0050dec1  e98d000000                JMP 0x0050df53
0050dec6  e86510f3ff                CALL 0x0043ef30
0050decb  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
0050dece  8bc1                      MOV EAX,ECX
0050ded0  83e800                    SUB EAX,0x0
0050ded3  7435                      JZ 0x0050df0a
0050ded5  83e801                    SUB EAX,0x1
0050ded8  7419                      JZ 0x0050def3
0050deda  83e801                    SUB EAX,0x1
0050dedd  740d                      JZ 0x0050deec
0050dedf  8b95f4feffff              MOV EDX,dword ptr [EBP + 0xfffffef4]
0050dee5  83f901                    CMP ECX,0x1
0050dee8  740e                      JZ 0x0050def8
0050deea  eb23                      JMP 0x0050df0f
0050deec  ba08000000                MOV EDX,0x8
0050def1  eb1c                      JMP 0x0050df0f
0050def3  ba07000000                MOV EDX,0x7
0050def8  68544ec300                PUSH 0xc34e54
0050defd  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
0050df03  e8e892efff                CALL 0x004071f0
0050df08  eb05                      JMP 0x0050df0f
0050df0a  ba06000000                MOV EDX,0x6
0050df0f  e82ca31c00                CALL 0x006d8240
0050df14  85c0                      TEST EAX,EAX
0050df16  7e0a                      JLE 0x0050df22
0050df18  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0050df20  eb08                      JMP 0x0050df2a
0050df22  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0050df2a  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
0050df30  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0050df38  50                        PUSH EAX
0050df39  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
0050df43  52                        PUSH EDX
0050df44  e963ffffff                JMP 0x0050deac
0050df49  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050df53  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0050df5b  f30f5c879c030000          SUBSS XMM0,dword ptr [EDI + 0x39c]
0050df63  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050df6b  e93e040000                JMP 0x0050e3ae
0050df70  c787b00b00000000f041      MOV dword ptr [EDI + 0xbb0],0x41f00000
0050df7a  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050df7d  3d1a010000                CMP EAX,0x11a
0050df82  750c                      JNZ 0x0050df90
0050df84  c787b00b000000003442      MOV dword ptr [EDI + 0xbb0],0x42340000
0050df8e  eb15                      JMP 0x0050dfa5
0050df90  83f80f                    CMP EAX,0xf
0050df93  7510                      JNZ 0x0050dfa5
0050df95  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050df99  750a                      JNZ 0x0050dfa5
0050df9b  c787b00b000000007041      MOV dword ptr [EDI + 0xbb0],0x41700000
0050dfa5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050dfac  0f84fb000000              JZ 0x0050e0ad
0050dfb2  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0050dfba  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0050dfc2  f30f59c0                  MULSS XMM0,XMM0
0050dfc6  f30f59c9                  MULSS XMM1,XMM1
0050dfca  f30f58c1                  ADDSS XMM0,XMM1
0050dfce  e87d7af2ff                CALL 0x00435a50
0050dfd3  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
0050dfdb  0f2fc8                    COMISS XMM1,XMM0
0050dfde  0f86c9000000              JBE 0x0050e0ad
0050dfe4  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050dfec  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050dff2  50                        PUSH EAX
0050dff3  8bcf                      MOV ECX,EDI
0050dff5  e8d6a21c00                CALL 0x006d82d0
0050dffa  8bc8                      MOV ECX,EAX
0050dffc  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0050e000  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0050e007  9f                        LAHF
0050e008  f6c444                    TEST AH,0x44
0050e00b  0f8a9c000000              JP 0x0050e0ad
0050e011  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0050e016  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0050e01d  9f                        LAHF
0050e01e  f6c444                    TEST AH,0x44
0050e021  0f8a86000000              JP 0x0050e0ad
0050e027  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0050e02a  85f6                      TEST ESI,ESI
0050e02c  7455                      JZ 0x0050e083
0050e02e  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0050e032  8bc6                      MOV EAX,ESI
0050e034  7202                      JC 0x0050e038
0050e036  8b06                      MOV EAX,dword ptr [ESI]
0050e038  b954bcb100                MOV ECX,0xb1bc54
0050e03d  0f1f00                    NOP dword ptr [EAX]
0050e040  8a10                      MOV DL,byte ptr [EAX]
0050e042  3a11                      CMP DL,byte ptr [ECX]
0050e044  751a                      JNZ 0x0050e060
0050e046  84d2                      TEST DL,DL
0050e048  7412                      JZ 0x0050e05c
0050e04a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050e04d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0050e050  750e                      JNZ 0x0050e060
0050e052  83c002                    ADD EAX,0x2
0050e055  83c102                    ADD ECX,0x2
0050e058  84d2                      TEST DL,DL
0050e05a  75e4                      JNZ 0x0050e040
0050e05c  33c0                      XOR EAX,EAX
0050e05e  eb05                      JMP 0x0050e065
0050e060  1bc0                      SBB EAX,EAX
0050e062  83c801                    OR EAX,0x1
0050e065  85c0                      TEST EAX,EAX
0050e067  751a                      JNZ 0x0050e083
0050e069  384634                    CMP byte ptr [ESI + 0x34],AL
0050e06c  0f842b010000              JZ 0x0050e19d
0050e072  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0050e078  8d7748                    LEA ESI,[EDI + 0x48]
0050e07b  0f851c010000              JNZ 0x0050e19d
0050e081  eb03                      JMP 0x0050e086
0050e083  8d7748                    LEA ESI,[EDI + 0x48]
0050e086  6a01                      PUSH 0x1
0050e088  6854bcb100                PUSH 0xb1bc54
0050e08d  8bce                      MOV ECX,ESI
0050e08f  e83cc5efff                CALL 0x0040a5d0
0050e094  84c0                      TEST AL,AL
0050e096  0f8401010000              JZ 0x0050e19d
0050e09c  8d4e30                    LEA ECX,[ESI + 0x30]
0050e09f  e80cc1efff                CALL 0x0040a1b0
0050e0a4  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0050e0a8  e9f0000000                JMP 0x0050e19d
0050e0ad  8a0d1edeb100              MOV CL,byte ptr [0x00b1de1e]
0050e0b3  a11cdeb100                MOV EAX,[0x00b1de1c]
0050e0b8  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0050e0bf  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0050e0c6  c745cc03000000            MOV dword ptr [EBP + -0x34],0x3
0050e0cd  668945bc                  MOV word ptr [EBP + -0x44],AX
0050e0d1  884dbe                    MOV byte ptr [EBP + -0x42],CL
0050e0d4  c645bf00                  MOV byte ptr [EBP + -0x41],0x0
0050e0d8  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0050e0df  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
0050e0e6  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050e0ed  c745e403000000            MOV dword ptr [EBP + -0x1c],0x3
0050e0f4  668945d4                  MOV word ptr [EBP + -0x2c],AX
0050e0f8  884dd6                    MOV byte ptr [EBP + -0x2a],CL
0050e0fb  c645d700                  MOV byte ptr [EBP + -0x29],0x0
0050e0ff  51                        PUSH ECX
0050e100  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0050e104  8d45bc                    LEA EAX,[EBP + -0x44]
0050e107  c704240000003f            MOV dword ptr [ESP],0x3f000000
0050e10e  8bcf                      MOV ECX,EDI
0050e110  50                        PUSH EAX
0050e111  8d45d4                    LEA EAX,[EBP + -0x2c]
0050e114  50                        PUSH EAX
0050e115  e816321b00                CALL 0x006c1330
0050e11a  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0050e11e  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0050e121  83fa10                    CMP EDX,0x10
0050e124  7228                      JC 0x0050e14e
0050e126  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0050e129  42                        INC EDX
0050e12a  8bc1                      MOV EAX,ECX
0050e12c  81fa00100000              CMP EDX,0x1000
0050e132  7210                      JC 0x0050e144
0050e134  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050e137  83c223                    ADD EDX,0x23
0050e13a  2bc1                      SUB EAX,ECX
0050e13c  83c0fc                    ADD EAX,-0x4
0050e13f  83f81f                    CMP EAX,0x1f
0050e142  7749                      JA 0x0050e18d
0050e144  52                        PUSH EDX
0050e145  51                        PUSH ECX
0050e146  e811105e00                CALL 0x00aef15c
0050e14b  83c408                    ADD ESP,0x8
0050e14e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050e155  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0050e158  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0050e15f  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050e166  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0050e16a  83fa10                    CMP EDX,0x10
0050e16d  722e                      JC 0x0050e19d
0050e16f  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0050e172  42                        INC EDX
0050e173  8bc1                      MOV EAX,ECX
0050e175  81fa00100000              CMP EDX,0x1000
0050e17b  7216                      JC 0x0050e193
0050e17d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050e180  83c223                    ADD EDX,0x23
0050e183  2bc1                      SUB EAX,ECX
0050e185  83c0fc                    ADD EAX,-0x4
0050e188  83f81f                    CMP EAX,0x1f
0050e18b  7606                      JBE 0x0050e193
0050e18d  ff159488b100              CALL dword ptr [0x00b18894]
0050e193  52                        PUSH EDX
0050e194  51                        PUSH ECX
0050e195  e8c20f5e00                CALL 0x00aef15c
0050e19a  83c408                    ADD ESP,0x8
0050e19d  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0050e1a3  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0050e1a9  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0050e1af  8bc1                      MOV EAX,ECX
0050e1b1  2500080001                AND EAX,0x1000800
0050e1b6  83c800                    OR EAX,0x0
0050e1b9  7471                      JZ 0x0050e22c
0050e1bb  81e120070000              AND ECX,0x720
0050e1c1  83c900                    OR ECX,0x0
0050e1c4  7566                      JNZ 0x0050e22c
0050e1c6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050e1cd  755d                      JNZ 0x0050e22c
0050e1cf  8bcf                      MOV ECX,EDI
0050e1d1  e86a061b00                CALL 0x006be840
0050e1d6  6a00                      PUSH 0x0
0050e1d8  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0050e1de  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0050e1e4  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0050e1ea  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050e1f0  898df8feffff              MOV dword ptr [EBP + 0xfffffef8],ECX
0050e1f6  8d8f14040000              LEA ECX,[EDI + 0x414]
0050e1fc  50                        PUSH EAX
0050e1fd  e83e672d00                CALL 0x007e4940
0050e202  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0050e209  0f8e7e010000              JLE 0x0050e38d
0050e20f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050e217  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050e21f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050e227  e961010000                JMP 0x0050e38d
0050e22c  6a00                      PUSH 0x0
0050e22e  8d8f14040000              LEA ECX,[EDI + 0x414]
0050e234  e8c7802d00                CALL 0x007e6300
0050e239  84c0                      TEST AL,AL
0050e23b  0f844c010000              JZ 0x0050e38d
0050e241  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050e247  2500020000                AND EAX,0x200
0050e24c  83c800                    OR EAX,0x0
0050e24f  0f8538010000              JNZ 0x0050e38d
0050e255  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050e25c  7427                      JZ 0x0050e285
0050e25e  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0050e266  8bcf                      MOV ECX,EDI
0050e268  6a07                      PUSH 0x7
0050e26a  50                        PUSH EAX
0050e26b  e8f0cb1b00                CALL 0x006cae60
0050e270  84c0                      TEST AL,AL
0050e272  7511                      JNZ 0x0050e285
0050e274  6a09                      PUSH 0x9
0050e276  8bcf                      MOV ECX,EDI
0050e278  e8e39f1c00                CALL 0x006d8260
0050e27d  84c0                      TEST AL,AL
0050e27f  0f8408010000              JZ 0x0050e38d
0050e285  837f280f                  CMP dword ptr [EDI + 0x28],0xf
0050e289  7520                      JNZ 0x0050e2ab
0050e28b  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050e28f  751a                      JNZ 0x0050e2ab
0050e291  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0050e297  83f803                    CMP EAX,0x3
0050e29a  7c15                      JL 0x0050e2b1
0050e29c  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0050e2a6  e9e2000000                JMP 0x0050e38d
0050e2ab  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0050e2b1  40                        INC EAX
0050e2b2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0050e2bc  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050e2c3  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0050e2c9  751a                      JNZ 0x0050e2e5
0050e2cb  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0050e2d3  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0050e2db  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0050e2e3  eb2e                      JMP 0x0050e313
0050e2e5  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050e2ed  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050e2f3  50                        PUSH EAX
0050e2f4  8bcf                      MOV ECX,EDI
0050e2f6  e8a5a21c00                CALL 0x006d85a0
0050e2fb  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
0050e303  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0050e30b  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0050e313  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0050e31b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0050e31e  85f6                      TEST ESI,ESI
0050e320  744a                      JZ 0x0050e36c
0050e322  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0050e326  8bc6                      MOV EAX,ESI
0050e328  7202                      JC 0x0050e32c
0050e32a  8b06                      MOV EAX,dword ptr [ESI]
0050e32c  b954ddb100                MOV ECX,0xb1dd54
0050e331  8a10                      MOV DL,byte ptr [EAX]
0050e333  3a11                      CMP DL,byte ptr [ECX]
0050e335  751a                      JNZ 0x0050e351
0050e337  84d2                      TEST DL,DL
0050e339  7412                      JZ 0x0050e34d
0050e33b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050e33e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0050e341  750e                      JNZ 0x0050e351
0050e343  83c002                    ADD EAX,0x2
0050e346  83c102                    ADD ECX,0x2
0050e349  84d2                      TEST DL,DL
0050e34b  75e4                      JNZ 0x0050e331
0050e34d  33c0                      XOR EAX,EAX
0050e34f  eb05                      JMP 0x0050e356
0050e351  1bc0                      SBB EAX,EAX
0050e353  83c801                    OR EAX,0x1
0050e356  85c0                      TEST EAX,EAX
0050e358  7512                      JNZ 0x0050e36c
0050e35a  384634                    CMP byte ptr [ESI + 0x34],AL
0050e35d  742e                      JZ 0x0050e38d
0050e35f  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0050e365  8d7748                    LEA ESI,[EDI + 0x48]
0050e368  7523                      JNZ 0x0050e38d
0050e36a  eb03                      JMP 0x0050e36f
0050e36c  8d7748                    LEA ESI,[EDI + 0x48]
0050e36f  6a01                      PUSH 0x1
0050e371  6854ddb100                PUSH 0xb1dd54
0050e376  8bce                      MOV ECX,ESI
0050e378  e853c2efff                CALL 0x0040a5d0
0050e37d  84c0                      TEST AL,AL
0050e37f  740c                      JZ 0x0050e38d
0050e381  8d4e30                    LEA ECX,[ESI + 0x30]
0050e384  e827beefff                CALL 0x0040a1b0
0050e389  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0050e38d  817f281a010000            CMP dword ptr [EDI + 0x28],0x11a
0050e394  7518                      JNZ 0x0050e3ae
0050e396  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050e39e  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0050e3a6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050e3ae  837f280f                  CMP dword ptr [EDI + 0x28],0xf
0050e3b2  a17816c700                MOV EAX,[0x00c71678]
0050e3b7  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0050e3bd  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
0050e3c5  0f85de000000              JNZ 0x0050e4a9
0050e3cb  0f2f0598a1ba00            COMISS XMM0,dword ptr [0x00baa198]
0050e3d2  761e                      JBE 0x0050e3f2
0050e3d4  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050e3d8  0f85cb000000              JNZ 0x0050e4a9
0050e3de  6aff                      PUSH -0x1
0050e3e0  6a00                      PUSH 0x0
0050e3e2  6a00                      PUSH 0x0
0050e3e4  6a0f                      PUSH 0xf
0050e3e6  8bcf                      MOV ECX,EDI
0050e3e8  e8432b1b00                CALL 0x006c0f30
0050e3ed  e9b7000000                JMP 0x0050e4a9
0050e3f2  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050e3f5  85c0                      TEST EAX,EAX
0050e3f7  7409                      JZ 0x0050e402
0050e3f9  83f803                    CMP EAX,0x3
0050e3fc  0f85a7000000              JNZ 0x0050e4a9
0050e402  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
0050e405  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
0050e408  0f849b000000              JZ 0x0050e4a9
0050e40e  6690                      NOP
0050e410  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
0050e413  83e002                    AND EAX,0x2
0050e416  83c800                    OR EAX,0x0
0050e419  0f847e000000              JZ 0x0050e49d
0050e41f  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0050e424  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0050e428  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
0050e42d  c70600000000              MOV dword ptr [ESI],0x0
0050e433  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0050e437  7564                      JNZ 0x0050e49d
0050e439  6aff                      PUSH -0x1
0050e43b  6a00                      PUSH 0x0
0050e43d  6a03                      PUSH 0x3
0050e43f  6a0f                      PUSH 0xf
0050e441  8bcf                      MOV ECX,EDI
0050e443  e8e82a1b00                CALL 0x006c0f30
0050e448  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
0050e44f  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050e455  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0050e45b  c78580feffff9190103e      MOV dword ptr [EBP + 0xfffffe80],0x3e109091
0050e465  c78584fefffff9f8f83d      MOV dword ptr [EBP + 0xfffffe84],0x3df8f8f9
0050e46f  0f57c9                    XORPS XMM1,XMM1
0050e472  c78588feffffe1e0e03d      MOV dword ptr [EBP + 0xfffffe88],0x3de0e0e1
0050e47c  3bc8                      CMP ECX,EAX
0050e47e  741d                      JZ 0x0050e49d
0050e480  8b8588feffff              MOV EAX,dword ptr [EBP + 0xfffffe88]
0050e486  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0050e489  f30f7e8580feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe80]
0050e491  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0050e496  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0050e49a  894128                    MOV dword ptr [ECX + 0x28],EAX
0050e49d  83c638                    ADD ESI,0x38
0050e4a0  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
0050e4a3  0f8567ffffff              JNZ 0x0050e410
0050e4a9  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0050e4ac  64890d00000000            MOV dword ptr FS:[0x0],ECX
0050e4b3  59                        POP ECX
0050e4b4  5f                        POP EDI
0050e4b5  5e                        POP ESI
0050e4b6  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0050e4b9  33cd                      XOR ECX,EBP
0050e4bb  e86b0c5e00                CALL 0x00aef12b
0050e4c0  8be5                      MOV ESP,EBP
0050e4c2  5d                        POP EBP
0050e4c3  8be3                      MOV ESP,EBX
0050e4c5  5b                        POP EBX
0050e4c6  c3                        RET
