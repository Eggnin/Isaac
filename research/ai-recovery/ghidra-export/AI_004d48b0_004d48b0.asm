; J460 NPC AI 0x004d48b0 AI_004d48b0
; types=78
; identities=78.0.0,78.1.0,78.10.0
; entry=004d48b0
004d48b0  55                        PUSH EBP
004d48b1  8bec                      MOV EBP,ESP
004d48b3  6aff                      PUSH -0x1
004d48b5  688038af00                PUSH 0xaf3880
004d48ba  64a100000000              MOV EAX,FS:[0x0]
004d48c0  50                        PUSH EAX
004d48c1  81ec9c000000              SUB ESP,0x9c
004d48c7  53                        PUSH EBX
004d48c8  56                        PUSH ESI
004d48c9  57                        PUSH EDI
004d48ca  a1b493bf00                MOV EAX,[0x00bf93b4]
004d48cf  33c5                      XOR EAX,EBP
004d48d1  50                        PUSH EAX
004d48d2  8d45f4                    LEA EAX,[EBP + -0xc]
004d48d5  64a300000000              MOV FS:[0x0],EAX
004d48db  8bf9                      MOV EDI,ECX
004d48dd  897ddc                    MOV dword ptr [EBP + -0x24],EDI
004d48e0  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004d48e4  0f858f010000              JNZ 0x004d4a79
004d48ea  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004d48f1  7551                      JNZ 0x004d4944
004d48f3  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004d48f9  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004d48ff  83e1fb                    AND ECX,0xfffffffb
004d4902  81c911000400              OR ECX,0x40011
004d4908  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004d4912  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d491c  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004d4922  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004d4928  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d4932  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004d4935  64890d00000000            MOV dword ptr FS:[0x0],ECX
004d493c  59                        POP ECX
004d493d  5f                        POP EDI
004d493e  5e                        POP ESI
004d493f  5b                        POP EBX
004d4940  8be5                      MOV ESP,EBP
004d4942  5d                        POP EBP
004d4943  c3                        RET
004d4944  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004d494a  85c0                      TEST EAX,EAX
004d494c  754e                      JNZ 0x004d499c
004d494e  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
004d4954  894588                    MOV dword ptr [EBP + -0x78],EAX
004d4957  89458c                    MOV dword ptr [EBP + -0x74],EAX
004d495a  894590                    MOV dword ptr [EBP + -0x70],EAX
004d495d  894594                    MOV dword ptr [EBP + -0x6c],EAX
004d4960  a144b6c700                MOV EAX,[0x00c7b644]
004d4965  894d98                    MOV dword ptr [EBP + -0x68],ECX
004d4968  894da0                    MOV dword ptr [EBP + -0x60],ECX
004d496b  8d4d88                    LEA ECX,[EBP + -0x78]
004d496e  89459c                    MOV dword ptr [EBP + -0x64],EAX
004d4971  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004d4974  8b07                      MOV EAX,dword ptr [EDI]
004d4976  51                        PUSH ECX
004d4977  8bcf                      MOV ECX,EDI
004d4979  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004d4980  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
004d4987  ff5024                    CALL dword ptr [EAX + 0x24]
004d498a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004d498d  64890d00000000            MOV dword ptr FS:[0x0],ECX
004d4994  59                        POP ECX
004d4995  5f                        POP EDI
004d4996  5e                        POP ESI
004d4997  5b                        POP EBX
004d4998  8be5                      MOV ESP,EBP
004d499a  5d                        POP EBP
004d499b  c3                        RET
004d499c  6a00                      PUSH 0x0
004d499e  68acd6c500                PUSH 0xc5d6ac
004d49a3  68dcd5c500                PUSH 0xc5d5dc
004d49a8  6a00                      PUSH 0x0
004d49aa  50                        PUSH EAX
004d49ab  c7874003000000007f43      MOV dword ptr [EDI + 0x340],0x437f0000
004d49b5  e8f7be6100                CALL 0x00af08b1
004d49ba  83c414                    ADD ESP,0x14
004d49bd  8b80c00b0000              MOV EAX,dword ptr [EAX + 0xbc0]
004d49c3  48                        DEC EAX
004d49c4  83f804                    CMP EAX,0x4
004d49c7  0f87d21a0000              JA 0x004d649f
004d49cd  ff2485b4644d00            JMP dword ptr [EAX*0x4 + 0x4d64b4]
004d4a79  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004d4a7c  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004d4a84  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d4a87  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004d4a8f  2bc8                      SUB ECX,EAX
004d4a91  894db0                    MOV dword ptr [EBP + -0x50],ECX
004d4a94  e8c7a42100                CALL 0x006eef60
004d4a99  33d2                      XOR EDX,EDX
004d4a9b  b914000000                MOV ECX,0x14
004d4aa0  f7f1                      DIV ECX
004d4aa2  83c20a                    ADD EDX,0xa
004d4aa5  660f6ec2                  MOVD XMM0,EDX
004d4aa9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d4aad  c1ea1f                    SHR EDX,0x1f
004d4ab0  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004d4ab9  660f5ac8                  CVTPD2PS XMM1,XMM0
004d4abd  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004d4ac2  0f2fc1                    COMISS XMM0,XMM1
004d4ac5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d4acd  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004d4ad2  762d                      JBE 0x004d4b01
004d4ad4  e887a42100                CALL 0x006eef60
004d4ad9  b91e000000                MOV ECX,0x1e
004d4ade  33d2                      XOR EDX,EDX
004d4ae0  f7f1                      DIV ECX
004d4ae2  51                        PUSH ECX
004d4ae3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d4aea  6a00                      PUSH 0x0
004d4aec  8d4219                    LEA EAX,[EDX + 0x19]
004d4aef  50                        PUSH EAX
004d4af0  51                        PUSH ECX
004d4af1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d4af8  8bcf                      MOV ECX,EDI
004d4afa  6a57                      PUSH 0x57
004d4afc  e89f202000                CALL 0x006d6ba0
004d4b01  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004d4b08  0f85c0020000              JNZ 0x004d4dce
004d4b0e  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
004d4b15  0f8c55010000              JL 0x004d4c70
004d4b1b  a17816c700                MOV EAX,[0x00c71678]
004d4b20  33db                      XOR EBX,EBX
004d4b22  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d4b2a  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004d4b2f  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004d4b34  8b88acba0100              MOV ECX,dword ptr [EAX + 0x1baac]
004d4b3a  2b88a8ba0100              SUB ECX,dword ptr [EAX + 0x1baa8]
004d4b40  c1f902                    SAR ECX,0x2
004d4b43  c745d40000b943            MOV dword ptr [EBP + -0x2c],0x43b90000
004d4b4a  85c9                      TEST ECX,ECX
004d4b4c  0f84c7000000              JZ 0x004d4c19
004d4b52  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d4b58  85db                      TEST EBX,EBX
004d4b5a  7513                      JNZ 0x004d4b6f
004d4b5c  53                        PUSH EBX
004d4b5d  e80e2df4ff                CALL 0x00417870
004d4b62  53                        PUSH EBX
004d4b63  8d4dd0                    LEA ECX,[EBP + -0x30]
004d4b66  53                        PUSH EBX
004d4b67  51                        PUSH ECX
004d4b68  8bc8                      MOV ECX,EAX
004d4b6a  e988000000                JMP 0x004d4bf7
004d4b6f  53                        PUSH EBX
004d4b70  e8fb2cf4ff                CALL 0x00417870
004d4b75  8bf0                      MOV ESI,EAX
004d4b77  e8e4a32100                CALL 0x006eef60
004d4b7c  660f6ec0                  MOVD XMM0,EAX
004d4b80  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d4b84  c1e81f                    SHR EAX,0x1f
004d4b87  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d4b90  660f5ac0                  CVTPD2PS XMM0,XMM0
004d4b94  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d4b9c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004d4ba4  f30f58c0                  ADDSS XMM0,XMM0
004d4ba8  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
004d4bad  e86e89f4ff                CALL 0x0041d520
004d4bb2  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d4bb7  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
004d4bbc  e87f89f4ff                CALL 0x0041d540
004d4bc1  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
004d4bc6  8d45b8                    LEA EAX,[EBP + -0x48]
004d4bc9  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004d4bd1  8bce                      MOV ECX,ESI
004d4bd3  6a00                      PUSH 0x0
004d4bd5  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004d4bdd  6a00                      PUSH 0x0
004d4bdf  f30f5845c4                ADDSS XMM0,dword ptr [EBP + -0x3c]
004d4be4  50                        PUSH EAX
004d4be5  f30f580d40abba00          ADDSS XMM1,dword ptr [0x00baab40]
004d4bed  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004d4bf2  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
004d4bf7  e8548d2f00                CALL 0x007cd950
004d4bfc  a17816c700                MOV EAX,[0x00c71678]
004d4c01  43                        INC EBX
004d4c02  8b88acba0100              MOV ECX,dword ptr [EAX + 0x1baac]
004d4c08  2b88a8ba0100              SUB ECX,dword ptr [EAX + 0x1baa8]
004d4c0e  c1f902                    SAR ECX,0x2
004d4c11  3bd9                      CMP EBX,ECX
004d4c13  0f8239ffffff              JC 0x004d4b52
004d4c19  a17816c700                MOV EAX,[0x00c71678]
004d4c1e  33db                      XOR EBX,EBX
004d4c20  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004d4c26  399864120000              CMP dword ptr [EAX + 0x1264],EBX
004d4c2c  7642                      JBE 0x004d4c70
004d4c2e  8bf8                      MOV EDI,EAX
004d4c30  8b875c120000              MOV EAX,dword ptr [EDI + 0x125c]
004d4c36  8b3498                    MOV ESI,dword ptr [EAX + EBX*0x4]
004d4c39  85f6                      TEST ESI,ESI
004d4c3b  7427                      JZ 0x004d4c64
004d4c3d  837e2803                  CMP dword ptr [ESI + 0x28],0x3
004d4c41  7521                      JNZ 0x004d4c64
004d4c43  6a00                      PUSH 0x0
004d4c45  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004d4c4b  8bce                      MOV ECX,ESI
004d4c4d  50                        PUSH EAX
004d4c4e  e84d681600                CALL 0x0063b4a0
004d4c53  8b08                      MOV ECX,dword ptr [EAX]
004d4c55  898e3c030000              MOV dword ptr [ESI + 0x33c],ECX
004d4c5b  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004d4c5e  898640030000              MOV dword ptr [ESI + 0x340],EAX
004d4c64  43                        INC EBX
004d4c65  3b9f64120000              CMP EBX,dword ptr [EDI + 0x1264]
004d4c6b  72c3                      JC 0x004d4c30
004d4c6d  8b7ddc                    MOV EDI,dword ptr [EBP + -0x24]
004d4c70  837dd801                  CMP dword ptr [EBP + -0x28],0x1
004d4c74  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004d4c7a  898734030000              MOV dword ptr [EDI + 0x334],EAX
004d4c80  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004d4c86  898738030000              MOV dword ptr [EDI + 0x338],EAX
004d4c8c  c787c40b0000ffffffff      MOV dword ptr [EDI + 0xbc4],0xffffffff
004d4c96  c7876c0b000004000000      MOV dword ptr [EDI + 0xb6c],0x4
004d4ca0  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004d4caa  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004d4cb4  c787b00b00000000c842      MOV dword ptr [EDI + 0xbb0],0x42c80000
004d4cbe  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004d4cc8  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d4cd2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d4cdc  7520                      JNZ 0x004d4cfe
004d4cde  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004d4ce6  f30f590500a5ba00          MULSS XMM0,dword ptr [0x00baa500]
004d4cee  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
004d4cf6  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004d4cfe  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004d4d02  0f84c6000000              JZ 0x004d4dce
004d4d08  e853a22100                CALL 0x006eef60
004d4d0d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004d4d15  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004d4d1d  f30f5c0de49fba00          SUBSS XMM1,dword ptr [0x00ba9fe4]
004d4d25  f30f5c0550adba00          SUBSS XMM0,dword ptr [0x00baad50]
004d4d2d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d4d33  6a00                      PUSH 0x0
004d4d35  50                        PUSH EAX
004d4d36  6a00                      PUSH 0x0
004d4d38  57                        PUSH EDI
004d4d39  6840b6c700                PUSH 0xc7b640
004d4d3e  8d45d0                    LEA EAX,[EBP + -0x30]
004d4d41  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
004d4d46  50                        PUSH EAX
004d4d47  6a0a                      PUSH 0xa
004d4d49  ff7728                    PUSH dword ptr [EDI + 0x28]
004d4d4c  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d4d51  e8ba962200                CALL 0x006fe410
004d4d56  6a00                      PUSH 0x0
004d4d58  68acd6c500                PUSH 0xc5d6ac
004d4d5d  68dcd5c500                PUSH 0xc5d5dc
004d4d62  6a00                      PUSH 0x0
004d4d64  50                        PUSH EAX
004d4d65  e847bb6100                CALL 0x00af08b1
004d4d6a  8bd8                      MOV EBX,EAX
004d4d6c  83c414                    ADD ESP,0x14
004d4d6f  8b8bbc030000              MOV ECX,dword ptr [EBX + 0x3bc]
004d4d75  8db3bc030000              LEA ESI,[EBX + 0x3bc]
004d4d7b  85c9                      TEST ECX,ECX
004d4d7d  7412                      JZ 0x004d4d91
004d4d7f  8d45f0                    LEA EAX,[EBP + -0x10]
004d4d82  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004d4d85  81c1cc030000              ADD ECX,0x3cc
004d4d8b  50                        PUSH EAX
004d4d8c  e87fa4ffff                CALL 0x004cf210
004d4d91  56                        PUSH ESI
004d4d92  8bcf                      MOV ECX,EDI
004d4d94  893e                      MOV dword ptr [ESI],EDI
004d4d96  e8558fffff                CALL 0x004cdcf0
004d4d9b  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
004d4da1  8db7c0030000              LEA ESI,[EDI + 0x3c0]
004d4da7  85c9                      TEST ECX,ECX
004d4da9  7412                      JZ 0x004d4dbd
004d4dab  8d45f0                    LEA EAX,[EBP + -0x10]
004d4dae  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004d4db1  81c1cc030000              ADD ECX,0x3cc
004d4db7  50                        PUSH EAX
004d4db8  e853a4ffff                CALL 0x004cf210
004d4dbd  56                        PUSH ESI
004d4dbe  8bcb                      MOV ECX,EBX
004d4dc0  891e                      MOV dword ptr [ESI],EBX
004d4dc2  e8298fffff                CALL 0x004cdcf0
004d4dc7  8b03                      MOV EAX,dword ptr [EBX]
004d4dc9  8bcb                      MOV ECX,EBX
004d4dcb  ff500c                    CALL dword ptr [EAX + 0xc]
004d4dce  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004d4dd6  8d9f3c030000              LEA EBX,[EDI + 0x33c]
004d4ddc  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004d4de4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004d4dec  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004d4df4  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004d4dfc  f30f5c4304                SUBSS XMM0,dword ptr [EBX + 0x4]
004d4e01  f30f5c0b                  SUBSS XMM1,dword ptr [EBX]
004d4e05  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004d4e0d  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004d4e12  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004d4e19  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004d4e21  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004d4e29  7614                      JBE 0x004d4e3f
004d4e2b  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004d4e33  f30f5cc1                  SUBSS XMM0,XMM1
004d4e37  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004d4e3f  83bf6c0b000003            CMP dword ptr [EDI + 0xb6c],0x3
004d4e46  0f8598000000              JNZ 0x004d4ee4
004d4e4c  e80fa12100                CALL 0x006eef60
004d4e51  660f6ec0                  MOVD XMM0,EAX
004d4e55  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d4e59  c1e81f                    SHR EAX,0x1f
004d4e5c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d4e65  660f5ac0                  CVTPD2PS XMM0,XMM0
004d4e69  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d4e71  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004d4e79  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
004d4e81  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
004d4e86  e8d5a02100                CALL 0x006eef60
004d4e8b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d4e91  6a00                      PUSH 0x0
004d4e93  50                        PUSH EAX
004d4e94  6a00                      PUSH 0x0
004d4e96  57                        PUSH EDI
004d4e97  6840b6c700                PUSH 0xc7b640
004d4e9c  53                        PUSH EBX
004d4e9d  6a07                      PUSH 0x7
004d4e9f  68e8030000                PUSH 0x3e8
004d4ea4  e867952200                CALL 0x006fe410
004d4ea9  6a00                      PUSH 0x0
004d4eab  68acd5c500                PUSH 0xc5d5ac
004d4eb0  68dcd5c500                PUSH 0xc5d5dc
004d4eb5  6a00                      PUSH 0x0
004d4eb7  50                        PUSH EAX
004d4eb8  e8f4b96100                CALL 0x00af08b1
004d4ebd  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
004d4ec2  83c414                    ADD ESP,0x14
004d4ec5  8bc8                      MOV ECX,EAX
004d4ec7  8b10                      MOV EDX,dword ptr [EAX]
004d4ec9  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
004d4ed1  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
004d4ed9  ff520c                    CALL dword ptr [EDX + 0xc]
004d4edc  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004d4ee4  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004d4eec  b904000000                MOV ECX,0x4
004d4ef1  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
004d4ef9  f30f59c1                  MULSS XMM0,XMM1
004d4efd  f30f580518a4ba00          ADDSS XMM0,dword ptr [0x00baa418]
004d4f05  f30f2cc0                  CVTTSS2SI EAX,XMM0
004d4f09  2bc8                      SUB ECX,EAX
004d4f0b  b803000000                MOV EAX,0x3
004d4f10  3bc8                      CMP ECX,EAX
004d4f12  0f4cc1                    CMOVL EAX,ECX
004d4f15  89876c0b0000              MOV dword ptr [EDI + 0xb6c],EAX
004d4f1b  3987c40b0000              CMP dword ptr [EDI + 0xbc4],EAX
004d4f21  740a                      JZ 0x004d4f2d
004d4f23  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004d4f2d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d4f31  f30f10056ca0ba00          MOVSS XMM0,dword ptr [0x00baa06c]
004d4f39  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004d4f3e  0f8406040000              JZ 0x004d534a
004d4f44  68e803b600                PUSH 0xb603e8
004d4f49  8d4f78                    LEA ECX,[EDI + 0x78]
004d4f4c  e87f5ef3ff                CALL 0x0040add0
004d4f51  84c0                      TEST AL,AL
004d4f53  0f84f1030000              JZ 0x004d534a
004d4f59  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
004d4f61  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004d4f67  8b876c0b0000              MOV EAX,dword ptr [EDI + 0xb6c]
004d4f6d  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004d4f72  f30f1003                  MOVSS XMM0,dword ptr [EBX]
004d4f76  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004d4f7b  f30f104304                MOVSS XMM0,dword ptr [EBX + 0x4]
004d4f80  c745c405000000            MOV dword ptr [EBP + -0x3c],0x5
004d4f87  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d4f8c  83f905                    CMP ECX,0x5
004d4f8f  0f843c020000              JZ 0x004d51d1
004d4f95  83f904                    CMP ECX,0x4
004d4f98  0f8405020000              JZ 0x004d51a3
004d4f9e  83e801                    SUB EAX,0x1
004d4fa1  0f84fc010000              JZ 0x004d51a3
004d4fa7  83e801                    SUB EAX,0x1
004d4faa  0f84fe000000              JZ 0x004d50ae
004d4fb0  83e801                    SUB EAX,0x1
004d4fb3  0f8508030000              JNZ 0x004d52c1
004d4fb9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d4fbf  6a04                      PUSH 0x4
004d4fc1  e8aae62200                CALL 0x00703670
004d4fc6  f30f1005a0a0ba00          MOVSS XMM0,dword ptr [0x00baa0a0]
004d4fce  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d4fd4  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004d4fd9  f30f100568a0ba00          MOVSS XMM0,dword ptr [0x00baa068]
004d4fe1  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004d4fe6  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
004d4fee  c745c40c000000            MOV dword ptr [EBP + -0x3c],0xc
004d4ff5  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d4ffa  83f812                    CMP EAX,0x12
004d4ffd  750a                      JNZ 0x004d5009
004d4fff  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
004d5007  eb0d                      JMP 0x004d5016
004d5009  83f813                    CMP EAX,0x13
004d500c  750d                      JNZ 0x004d501b
004d500e  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
004d5016  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d501b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d5021  8d4df0                    LEA ECX,[EBP + -0x10]
004d5024  c745f048000000            MOV dword ptr [EBP + -0x10],0x48
004d502b  e850174800                CALL 0x00956780
004d5030  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d5035  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d503b  83ec08                    SUB ESP,0x8
004d503e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d5046  f30f110424                MOVSS dword ptr [ESP],XMM0
004d504b  6a00                      PUSH 0x0
004d504d  6a02                      PUSH 0x2
004d504f  51                        PUSH ECX
004d5050  c704240000003f            MOV dword ptr [ESP],0x3f000000
004d5057  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d505a  e8d18b4500                CALL 0x0092dc30
004d505f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d5067  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d506d  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5072  83f812                    CMP EAX,0x12
004d5075  7519                      JNZ 0x004d5090
004d5077  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d507f  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5084  c745f043010000            MOV dword ptr [EBP + -0x10],0x143
004d508b  e9f4010000                JMP 0x004d5284
004d5090  83f813                    CMP EAX,0x13
004d5093  750d                      JNZ 0x004d50a2
004d5095  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d509d  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d50a2  c745f043010000            MOV dword ptr [EBP + -0x10],0x143
004d50a9  e9d6010000                JMP 0x004d5284
004d50ae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d50b4  6a03                      PUSH 0x3
004d50b6  e8b5e52200                CALL 0x00703670
004d50bb  f30f10059ca0ba00          MOVSS XMM0,dword ptr [0x00baa09c]
004d50c3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d50c9  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004d50ce  f30f100568a0ba00          MOVSS XMM0,dword ptr [0x00baa068]
004d50d6  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004d50db  f30f100554a1ba00          MOVSS XMM0,dword ptr [0x00baa154]
004d50e3  c745c41e000000            MOV dword ptr [EBP + -0x3c],0x1e
004d50ea  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d50ef  83f812                    CMP EAX,0x12
004d50f2  750a                      JNZ 0x004d50fe
004d50f4  f30f100524a3ba00          MOVSS XMM0,dword ptr [0x00baa324]
004d50fc  eb0d                      JMP 0x004d510b
004d50fe  83f813                    CMP EAX,0x13
004d5101  750d                      JNZ 0x004d5110
004d5103  f30f100500a1ba00          MOVSS XMM0,dword ptr [0x00baa100]
004d510b  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5110  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d5116  8d4df0                    LEA ECX,[EBP + -0x10]
004d5119  c745f048000000            MOV dword ptr [EBP + -0x10],0x48
004d5120  e85b164800                CALL 0x00956780
004d5125  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d512a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d5130  83ec08                    SUB ESP,0x8
004d5133  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d513b  f30f110424                MOVSS dword ptr [ESP],XMM0
004d5140  6a00                      PUSH 0x0
004d5142  6a02                      PUSH 0x2
004d5144  51                        PUSH ECX
004d5145  c704240000003f            MOV dword ptr [ESP],0x3f000000
004d514c  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d514f  e8dc8a4500                CALL 0x0092dc30
004d5154  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d515c  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d5162  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5167  83f812                    CMP EAX,0x12
004d516a  7519                      JNZ 0x004d5185
004d516c  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d5174  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5179  c745f042010000            MOV dword ptr [EBP + -0x10],0x142
004d5180  e9ff000000                JMP 0x004d5284
004d5185  83f813                    CMP EAX,0x13
004d5188  750d                      JNZ 0x004d5197
004d518a  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d5192  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5197  c745f042010000            MOV dword ptr [EBP + -0x10],0x142
004d519e  e9e1000000                JMP 0x004d5284
004d51a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d51a9  6a03                      PUSH 0x3
004d51ab  e8c0e42200                CALL 0x00703670
004d51b0  f30f10058ca0ba00          MOVSS XMM0,dword ptr [0x00baa08c]
004d51b8  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004d51bd  f30f100568a0ba00          MOVSS XMM0,dword ptr [0x00baa068]
004d51c5  c745c430000000            MOV dword ptr [EBP + -0x3c],0x30
004d51cc  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004d51d1  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
004d51d9  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d51df  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d51e4  83f812                    CMP EAX,0x12
004d51e7  750a                      JNZ 0x004d51f3
004d51e9  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
004d51f1  eb0d                      JMP 0x004d5200
004d51f3  83f813                    CMP EAX,0x13
004d51f6  750d                      JNZ 0x004d5205
004d51f8  f30f1005d0a0ba00          MOVSS XMM0,dword ptr [0x00baa0d0]
004d5200  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5205  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d520b  8d4df0                    LEA ECX,[EBP + -0x10]
004d520e  c745f048000000            MOV dword ptr [EBP + -0x10],0x48
004d5215  e866154800                CALL 0x00956780
004d521a  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d521f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d5225  83ec08                    SUB ESP,0x8
004d5228  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d5230  f30f110424                MOVSS dword ptr [ESP],XMM0
004d5235  6a00                      PUSH 0x0
004d5237  6a02                      PUSH 0x2
004d5239  51                        PUSH ECX
004d523a  c704240000003f            MOV dword ptr [ESP],0x3f000000
004d5241  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d5244  e8e7894500                CALL 0x0092dc30
004d5249  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d5251  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d5257  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d525c  83f812                    CMP EAX,0x12
004d525f  750a                      JNZ 0x004d526b
004d5261  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d5269  eb0d                      JMP 0x004d5278
004d526b  83f813                    CMP EAX,0x13
004d526e  750d                      JNZ 0x004d527d
004d5270  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d5278  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d527d  c745f041010000            MOV dword ptr [EBP + -0x10],0x141
004d5284  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d528a  8d4df0                    LEA ECX,[EBP + -0x10]
004d528d  e8ee144800                CALL 0x00956780
004d5292  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d5297  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d529d  83ec08                    SUB ESP,0x8
004d52a0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d52a8  f30f110424                MOVSS dword ptr [ESP],XMM0
004d52ad  6a00                      PUSH 0x0
004d52af  6a02                      PUSH 0x2
004d52b1  51                        PUSH ECX
004d52b2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d52b9  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d52bc  e86f894500                CALL 0x0092dc30
004d52c1  a17816c700                MOV EAX,[0x00c71678]
004d52c6  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004d52cc  ff86fc700000              INC dword ptr [ESI + 0x70fc]
004d52d2  8b9efc700000              MOV EBX,dword ptr [ESI + 0x70fc]
004d52d8  81e301000080              AND EBX,0x80000001
004d52de  7905                      JNS 0x004d52e5
004d52e0  4b                        DEC EBX
004d52e1  83cbfe                    OR EBX,0xfffffffe
004d52e4  43                        INC EBX
004d52e5  83fb02                    CMP EBX,0x2
004d52e8  720f                      JC 0x004d52f9
004d52ea  6858c8b600                PUSH 0xb6c858
004d52ef  6a10                      PUSH 0x10
004d52f1  e8cabf5300                CALL 0x00a112c0
004d52f6  83c408                    ADD ESP,0x8
004d52f9  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004d52fe  8d8307040000              LEA EAX,[EBX + 0x407]
004d5304  8d0cc500000000            LEA ECX,[EAX*0x8 + 0x0]
004d530b  2bc8                      SUB ECX,EAX
004d530d  8b45c4                    MOV EAX,dword ptr [EBP + -0x3c]
004d5310  f30f11048e                MOVSS dword ptr [ESI + ECX*0x4],XMM0
004d5315  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004d531a  f30f11448e04              MOVSS dword ptr [ESI + ECX*0x4 + 0x4],XMM0
004d5320  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
004d5325  f30f11448e0c              MOVSS dword ptr [ESI + ECX*0x4 + 0xc],XMM0
004d532b  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004d5330  c7448e0800000000          MOV dword ptr [ESI + ECX*0x4 + 0x8],0x0
004d5338  f30f11448e10              MOVSS dword ptr [ESI + ECX*0x4 + 0x10],XMM0
004d533e  c7448e1400000000          MOV dword ptr [ESI + ECX*0x4 + 0x14],0x0
004d5346  89448e18                  MOV dword ptr [ESI + ECX*0x4 + 0x18],EAX
004d534a  8b8f6c0b0000              MOV ECX,dword ptr [EDI + 0xb6c]
004d5350  be00f1b100                MOV ESI,0xb1f100
004d5355  8975dc                    MOV dword ptr [EBP + -0x24],ESI
004d5358  8d41ff                    LEA EAX,[ECX + -0x1]
004d535b  83f802                    CMP EAX,0x2
004d535e  7726                      JA 0x004d5386
004d5360  837dd801                  CMP dword ptr [EBP + -0x28],0x1
004d5364  7509                      JNZ 0x004d536f
004d5366  8d34cda0eeb100            LEA ESI,[ECX*0x8 + 0xb1eea0]
004d536d  eb14                      JMP 0x004d5383
004d536f  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004d5373  8d34cdc0efb100            LEA ESI,[ECX*0x8 + 0xb1efc0]
004d537a  7407                      JZ 0x004d5383
004d537c  8d34cde8eeb100            LEA ESI,[ECX*0x8 + 0xb1eee8]
004d5383  8975dc                    MOV dword ptr [EBP + -0x24],ESI
004d5386  8b97a40b0000              MOV EDX,dword ptr [EDI + 0xba4]
004d538c  8bda                      MOV EBX,EDX
004d538e  c1e304                    SHL EBX,0x4
004d5391  035e04                    ADD EBX,dword ptr [ESI + 0x4]
004d5394  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004d539b  0f85e9020000              JNZ 0x004d568a
004d53a1  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004d53a7  83f805                    CMP EAX,0x5
004d53aa  7423                      JZ 0x004d53cf
004d53ac  83f804                    CMP EAX,0x4
004d53af  756f                      JNZ 0x004d5420
004d53b1  83bf100400001e            CMP dword ptr [EDI + 0x410],0x1e
004d53b8  7e0c                      JLE 0x004d53c6
004d53ba  8bcf                      MOV ECX,EDI
004d53bc  e84ff2ffff                CALL 0x004d4610
004d53c1  e9c4020000                JMP 0x004d568a
004d53c6  83f903                    CMP ECX,0x3
004d53c9  0f85bb020000              JNZ 0x004d568a
004d53cf  83bfa00b000028            CMP dword ptr [EDI + 0xba0],0x28
004d53d6  7c1f                      JL 0x004d53f7
004d53d8  83f903                    CMP ECX,0x3
004d53db  0f85a9020000              JNZ 0x004d568a
004d53e1  83bfc40b000002            CMP dword ptr [EDI + 0xbc4],0x2
004d53e8  0f859c020000              JNZ 0x004d568a
004d53ee  83f805                    CMP EAX,0x5
004d53f1  0f8593020000              JNZ 0x004d568a
004d53f7  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d53ff  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d5405  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d540a  83f812                    CMP EAX,0x12
004d540d  0f85b4000000              JNZ 0x004d54c7
004d5413  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d541b  e9b4000000                JMP 0x004d54d4
004d5420  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
004d5426  0f57c9                    XORPS XMM1,XMM1
004d5429  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d5433  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004d543b  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
004d5443  0f2fc8                    COMISS XMM1,XMM0
004d5446  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004d544e  0f8636020000              JBE 0x004d568a
004d5454  83f903                    CMP ECX,0x3
004d5457  0f842d020000              JZ 0x004d568a
004d545d  837dd801                  CMP dword ptr [EBP + -0x28],0x1
004d5461  7524                      JNZ 0x004d5487
004d5463  83f901                    CMP ECX,0x1
004d5466  7504                      JNZ 0x004d546c
004d5468  85d2                      TEST EDX,EDX
004d546a  741b                      JZ 0x004d5487
004d546c  8d4201                    LEA EAX,[EDX + 0x1]
004d546f  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004d5475  8b0e                      MOV ECX,dword ptr [ESI]
004d5477  3bc1                      CMP EAX,ECX
004d5479  0f8c0b020000              JL 0x004d568a
004d547f  8d41ff                    LEA EAX,[ECX + -0x1]
004d5482  e9fd010000                JMP 0x004d5684
004d5487  51                        PUSH ECX
004d5488  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d548f  6a00                      PUSH 0x0
004d5491  6a02                      PUSH 0x2
004d5493  51                        PUSH ECX
004d5494  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d549b  8bcf                      MOV ECX,EDI
004d549d  68d4000000                PUSH 0xd4
004d54a2  e8f9162000                CALL 0x006d6ba0
004d54a7  c787c00b000005000000      MOV dword ptr [EDI + 0xbc0],0x5
004d54b1  8bcf                      MOV ECX,EDI
004d54b3  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d54bd  e84ef1ffff                CALL 0x004d4610
004d54c2  e9c3010000                JMP 0x004d568a
004d54c7  83f813                    CMP EAX,0x13
004d54ca  750d                      JNZ 0x004d54d9
004d54cc  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d54d4  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d54d9  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d54df  8d4df0                    LEA ECX,[EBP + -0x10]
004d54e2  c745f0d5000000            MOV dword ptr [EBP + -0x10],0xd5
004d54e9  e892124800                CALL 0x00956780
004d54ee  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d54f3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d54f9  83ec08                    SUB ESP,0x8
004d54fc  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d5504  f30f110424                MOVSS dword ptr [ESP],XMM0
004d5509  6a00                      PUSH 0x0
004d550b  6a02                      PUSH 0x2
004d550d  51                        PUSH ECX
004d550e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d5515  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d5518  e813874500                CALL 0x0092dc30
004d551d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d5525  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d552b  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5530  83f812                    CMP EAX,0x12
004d5533  750a                      JNZ 0x004d553f
004d5535  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d553d  eb0d                      JMP 0x004d554c
004d553f  83f813                    CMP EAX,0x13
004d5542  750d                      JNZ 0x004d5551
004d5544  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d554c  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5551  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d5557  8d4df0                    LEA ECX,[EBP + -0x10]
004d555a  c745f05a000000            MOV dword ptr [EBP + -0x10],0x5a
004d5561  e81a124800                CALL 0x00956780
004d5566  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d556b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d5571  83ec08                    SUB ESP,0x8
004d5574  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d557c  f30f110424                MOVSS dword ptr [ESP],XMM0
004d5581  6a00                      PUSH 0x0
004d5583  6a2d                      PUSH 0x2d
004d5585  51                        PUSH ECX
004d5586  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d558d  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d5590  e89b864500                CALL 0x0092dc30
004d5595  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d559b  c787b00b00000000c842      MOV dword ptr [EDI + 0xbb0],0x42c80000
004d55a5  c787c00b000004000000      MOV dword ptr [EDI + 0xbc0],0x4
004d55af  6a0f                      PUSH 0xf
004d55b1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d55bb  e8b0e02200                CALL 0x00703670
004d55c0  a17816c700                MOV EAX,[0x00c71678]
004d55c5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d55cd  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004d55d5  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d55da  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004d55e0  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
004d55e5  ff86fc700000              INC dword ptr [ESI + 0x70fc]
004d55eb  8b86fc700000              MOV EAX,dword ptr [ESI + 0x70fc]
004d55f1  2501000080                AND EAX,0x80000001
004d55f6  7905                      JNS 0x004d55fd
004d55f8  48                        DEC EAX
004d55f9  83c8fe                    OR EAX,0xfffffffe
004d55fc  40                        INC EAX
004d55fd  8945f0                    MOV dword ptr [EBP + -0x10],EAX
004d5600  83f802                    CMP EAX,0x2
004d5603  721c                      JC 0x004d5621
004d5605  6858c8b600                PUSH 0xb6c858
004d560a  6a10                      PUSH 0x10
004d560c  e8afbc5300                CALL 0x00a112c0
004d5611  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004d5616  83c408                    ADD ESP,0x8
004d5619  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
004d561e  8b45f0                    MOV EAX,dword ptr [EBP + -0x10]
004d5621  0507040000                ADD EAX,0x407
004d5626  8d0cc500000000            LEA ECX,[EAX*0x8 + 0x0]
004d562d  2bc8                      SUB ECX,EAX
004d562f  f30f11048e                MOVSS dword ptr [ESI + ECX*0x4],XMM0
004d5634  f30f114c8e04              MOVSS dword ptr [ESI + ECX*0x4 + 0x4],XMM1
004d563a  c7448e0800000000          MOV dword ptr [ESI + ECX*0x4 + 0x8],0x0
004d5642  c7448e0c0ad7233c          MOV dword ptr [ESI + ECX*0x4 + 0xc],0x3c23d70a
004d564a  c7448e108fc2753c          MOV dword ptr [ESI + ECX*0x4 + 0x10],0x3c75c28f
004d5652  c7448e1400000000          MOV dword ptr [ESI + ECX*0x4 + 0x14],0x0
004d565a  c7448e1864000000          MOV dword ptr [ESI + ECX*0x4 + 0x18],0x64
004d5662  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004d5668  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
004d566b  40                        INC EAX
004d566c  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004d5672  8b09                      MOV ECX,dword ptr [ECX]
004d5674  3bc1                      CMP EAX,ECX
004d5676  7c12                      JL 0x004d568a
004d5678  8d41ff                    LEA EAX,[ECX + -0x1]
004d567b  33c9                      XOR ECX,ECX
004d567d  837dd801                  CMP dword ptr [EBP + -0x28],0x1
004d5681  0f45c1                    CMOVNZ EAX,ECX
004d5684  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004d568a  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004d5690  83f805                    CMP EAX,0x5
004d5693  0f845f010000              JZ 0x004d57f8
004d5699  83f804                    CMP EAX,0x4
004d569c  0f8538010000              JNZ 0x004d57da
004d56a2  83bf1004000005            CMP dword ptr [EDI + 0x410],0x5
004d56a9  0f8f2b010000              JG 0x004d57da
004d56af  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d56b9  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004d56c3  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004d56cb  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004d56d1  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
004d56d7  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004d56dd  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004d56e3  03c1                      ADD EAX,ECX
004d56e5  33c9                      XOR ECX,ECX
004d56e7  85c0                      TEST EAX,EAX
004d56e9  0f4fc8                    CMOVG ECX,EAX
004d56ec  83f903                    CMP ECX,0x3
004d56ef  7d09                      JGE 0x004d56fa
004d56f1  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004d56f8  7511                      JNZ 0x004d570b
004d56fa  83bf6c0b000003            CMP dword ptr [EDI + 0xb6c],0x3
004d5701  7511                      JNZ 0x004d5714
004d5703  f703ffffff00              TEST dword ptr [EBX],0xffffff
004d5709  7509                      JNZ 0x004d5714
004d570b  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
004d570e  2987a00b0000              SUB dword ptr [EDI + 0xba0],EAX
004d5714  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004d571a  83f803                    CMP EAX,0x3
004d571d  0f8522070000              JNZ 0x004d5e45
004d5723  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004d572a  0f8d05080000              JGE 0x004d5f35
004d5730  8b03                      MOV EAX,dword ptr [EBX]
004d5732  25ffffff00                AND EAX,0xffffff
004d5737  0f8474050000              JZ 0x004d5cb1
004d573d  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004d5745  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
004d574d  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
004d5755  0f2fc8                    COMISS XMM1,XMM0
004d5758  0f8353050000              JNC 0x004d5cb1
004d575e  83f83c                    CMP EAX,0x3c
004d5761  0f858b020000              JNZ 0x004d59f2
004d5767  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
004d576d  803900                    CMP byte ptr [ECX],0x0
004d5770  0f8487020000              JZ 0x004d59fd
004d5776  a17816c700                MOV EAX,[0x00c71678]
004d577b  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004d5781  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004d5787  83f864                    CMP EAX,0x64
004d578a  0f8c6d020000              JL 0x004d59fd
004d5790  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004d5798  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d579e  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004d57a3  660f6e876c0b0000          MOVD XMM0,dword ptr [EDI + 0xb6c]
004d57ab  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004d57b0  0f5bc0                    CVTDQ2PS XMM0,XMM0
004d57b3  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004d57bb  f30f58c2                  ADDSS XMM0,XMM2
004d57bf  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d57c4  83f812                    CMP EAX,0x12
004d57c7  0f853d020000              JNZ 0x004d5a0a
004d57cd  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d57d5  e93d020000                JMP 0x004d5a17
004d57da  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004d57e0  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004d57ea  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004d57ed  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
004d57f3  e9cbfeffff                JMP 0x004d56c3
004d57f8  ffb710040000              PUSH dword ptr [EDI + 0x410]
004d57fe  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d5808  8bcf                      MOV ECX,EDI
004d580a  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004d5814  f30f2c87b40b0000          CVTTSS2SI EAX,dword ptr [EDI + 0xbb4]
004d581c  50                        PUSH EAX
004d581d  e8aedbffff                CALL 0x004d33d0
004d5822  f703ffffff00              TEST dword ptr [EBX],0xffffff
004d5828  0f84a3010000              JZ 0x004d59d1
004d582e  a17816c700                MOV EAX,[0x00c71678]
004d5833  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004d5839  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004d583f  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004d5845  03c1                      ADD EAX,ECX
004d5847  33c9                      XOR ECX,ECX
004d5849  85c0                      TEST EAX,EAX
004d584b  0f4fc8                    CMOVG ECX,EAX
004d584e  8d41fe                    LEA EAX,[ECX + -0x2]
004d5851  3b4308                    CMP EAX,dword ptr [EBX + 0x8]
004d5854  0f8d69feffff              JGE 0x004d56c3
004d585a  660f6e430c                MOVD XMM0,dword ptr [EBX + 0xc]
004d585f  0f5bc0                    CVTDQ2PS XMM0,XMM0
004d5862  0f2f87b80b0000            COMISS XMM0,dword ptr [EDI + 0xbb8]
004d5869  0f8654feffff              JBE 0x004d56c3
004d586f  e8ec962100                CALL 0x006eef60
004d5874  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d587a  0f57c0                    XORPS XMM0,XMM0
004d587d  f30f1025d0a8ba00          MOVSS XMM4,dword ptr [0x00baa8d0]
004d5885  f20f2ac0                  CVTSI2SD XMM0,EAX
004d5889  c1e81f                    SHR EAX,0x1f
004d588c  33f6                      XOR ESI,ESI
004d588e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d5897  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004d589d  f30f10501c                MOVSS XMM2,dword ptr [EAX + 0x1c]
004d58a2  660f5ac8                  CVTPD2PS XMM1,XMM0
004d58a6  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
004d58ab  f30f5cd4                  SUBSS XMM2,XMM4
004d58af  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004d58b7  f30f58c4                  ADDSS XMM0,XMM4
004d58bb  f30f5cd0                  SUBSS XMM2,XMM0
004d58bf  f30f59d1                  MULSS XMM2,XMM1
004d58c3  f30f58d0                  ADDSS XMM2,XMM0
004d58c7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004d58d0  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004d58d8  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
004d58e0  0f28c1                    MOVAPS XMM0,XMM1
004d58e3  f30f5cc3                  SUBSS XMM0,XMM3
004d58e7  0f2fd0                    COMISS XMM2,XMM0
004d58ea  726a                      JC 0x004d5956
004d58ec  f30f58cb                  ADDSS XMM1,XMM3
004d58f0  0f2fca                    COMISS XMM1,XMM2
004d58f3  7261                      JC 0x004d5956
004d58f5  e866962100                CALL 0x006eef60
004d58fa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d5900  46                        INC ESI
004d5901  f30f1025d0a8ba00          MOVSS XMM4,dword ptr [0x00baa8d0]
004d5909  660f6ec0                  MOVD XMM0,EAX
004d590d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d5911  c1e81f                    SHR EAX,0x1f
004d5914  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d591d  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004d5923  f30f10501c                MOVSS XMM2,dword ptr [EAX + 0x1c]
004d5928  f30f5cd4                  SUBSS XMM2,XMM4
004d592c  660f5ac8                  CVTPD2PS XMM1,XMM0
004d5930  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
004d5935  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004d593d  f30f58c4                  ADDSS XMM0,XMM4
004d5941  f30f5cd0                  SUBSS XMM2,XMM0
004d5945  f30f59d1                  MULSS XMM2,XMM1
004d5949  f30f58d0                  ADDSS XMM2,XMM0
004d594d  83fe14                    CMP ESI,0x14
004d5950  0f827affffff              JC 0x004d58d0
004d5956  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004d595c  6a00                      PUSH 0x0
004d595e  6a00                      PUSH 0x0
004d5960  6a00                      PUSH 0x0
004d5962  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
004d5967  8d45c0                    LEA EAX,[EBP + -0x40]
004d596a  51                        PUSH ECX
004d596b  f30f58c4                  ADDSS XMM0,XMM4
004d596f  c7042400000000            MOV dword ptr [ESP],0x0
004d5976  50                        PUSH EAX
004d5977  8d45d0                    LEA EAX,[EBP + -0x30]
004d597a  f30f1155c0                MOVSS dword ptr [EBP + -0x40],XMM2
004d597f  50                        PUSH EAX
004d5980  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004d5985  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004d598b  e890db3300                CALL 0x00813520
004d5990  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004d5994  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
004d5999  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004d599e  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004d59a3  e8b8952100                CALL 0x006eef60
004d59a8  8b13                      MOV EDX,dword ptr [EBX]
004d59aa  8bca                      MOV ECX,EDX
004d59ac  6a00                      PUSH 0x0
004d59ae  50                        PUSH EAX
004d59af  6a00                      PUSH 0x0
004d59b1  57                        PUSH EDI
004d59b2  6840b6c700                PUSH 0xc7b640
004d59b7  8d45c0                    LEA EAX,[EBP + -0x40]
004d59ba  c1f918                    SAR ECX,0x18
004d59bd  50                        PUSH EAX
004d59be  51                        PUSH ECX
004d59bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d59c5  81e2ffffff00              AND EDX,0xffffff
004d59cb  52                        PUSH EDX
004d59cc  e83f8a2200                CALL 0x006fe410
004d59d1  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004d59d9  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004d59e1  f30f58c2                  ADDSS XMM0,XMM2
004d59e5  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004d59ed  e9d9fcffff                JMP 0x004d56cb
004d59f2  3de7000000                CMP EAX,0xe7
004d59f7  0f8593fdffff              JNZ 0x004d5790
004d59fd  f30f100578aaba00          MOVSS XMM0,dword ptr [0x00baaa78]
004d5a05  e98efdffff                JMP 0x004d5798
004d5a0a  83f813                    CMP EAX,0x13
004d5a0d  750d                      JNZ 0x004d5a1c
004d5a0f  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d5a17  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5a1c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d5a22  8d4df0                    LEA ECX,[EBP + -0x10]
004d5a25  c745f009010000            MOV dword ptr [EBP + -0x10],0x109
004d5a2c  e84f0d4800                CALL 0x00956780
004d5a31  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d5a36  83ec08                    SUB ESP,0x8
004d5a39  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d5a41  f30f110424                MOVSS dword ptr [ESP],XMM0
004d5a46  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004d5a4b  6a00                      PUSH 0x0
004d5a4d  6a02                      PUSH 0x2
004d5a4f  51                        PUSH ECX
004d5a50  f30f110424                MOVSS dword ptr [ESP],XMM0
004d5a55  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d5a5b  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d5a5e  e8cd814500                CALL 0x0092dc30
004d5a63  8b03                      MOV EAX,dword ptr [EBX]
004d5a65  25ffffff00                AND EAX,0xffffff
004d5a6a  83f81c                    CMP EAX,0x1c
004d5a6d  0f8510010000              JNZ 0x004d5b83
004d5a73  e8e8942100                CALL 0x006eef60
004d5a78  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
004d5a7d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d5a85  f30f58c9                  ADDSS XMM1,XMM1
004d5a89  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004d5a91  8b0b                      MOV ECX,dword ptr [EBX]
004d5a93  6a00                      PUSH 0x0
004d5a95  50                        PUSH EAX
004d5a96  6a00                      PUSH 0x0
004d5a98  57                        PUSH EDI
004d5a99  6840b6c700                PUSH 0xc7b640
004d5a9e  8d45d0                    LEA EAX,[EBP + -0x30]
004d5aa1  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004d5aa6  50                        PUSH EAX
004d5aa7  8bc1                      MOV EAX,ECX
004d5aa9  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
004d5aae  0f28c1                    MOVAPS XMM0,XMM1
004d5ab1  c1f818                    SAR EAX,0x18
004d5ab4  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004d5abc  81e1ffffff00              AND ECX,0xffffff
004d5ac2  50                        PUSH EAX
004d5ac3  51                        PUSH ECX
004d5ac4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d5aca  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d5acf  e83c892200                CALL 0x006fe410
004d5ad4  e887942100                CALL 0x006eef60
004d5ad9  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d5ae1  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004d5ae9  8b0b                      MOV ECX,dword ptr [EBX]
004d5aeb  6a00                      PUSH 0x0
004d5aed  50                        PUSH EAX
004d5aee  6a00                      PUSH 0x0
004d5af0  57                        PUSH EDI
004d5af1  6840b6c700                PUSH 0xc7b640
004d5af6  8d45d0                    LEA EAX,[EBP + -0x30]
004d5af9  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004d5afe  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004d5b03  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004d5b0b  50                        PUSH EAX
004d5b0c  8bc1                      MOV EAX,ECX
004d5b0e  81e1ffffff00              AND ECX,0xffffff
004d5b14  c1f818                    SAR EAX,0x18
004d5b17  50                        PUSH EAX
004d5b18  51                        PUSH ECX
004d5b19  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d5b1f  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d5b24  e8e7882200                CALL 0x006fe410
004d5b29  e832942100                CALL 0x006eef60
004d5b2e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d5b36  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004d5b3e  8b0b                      MOV ECX,dword ptr [EBX]
004d5b40  6a00                      PUSH 0x0
004d5b42  50                        PUSH EAX
004d5b43  6a00                      PUSH 0x0
004d5b45  57                        PUSH EDI
004d5b46  6840b6c700                PUSH 0xc7b640
004d5b4b  8d45d0                    LEA EAX,[EBP + -0x30]
004d5b4e  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004d5b53  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004d5b58  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004d5b60  50                        PUSH EAX
004d5b61  8bc1                      MOV EAX,ECX
004d5b63  81e1ffffff00              AND ECX,0xffffff
004d5b69  c1f818                    SAR EAX,0x18
004d5b6c  50                        PUSH EAX
004d5b6d  51                        PUSH ECX
004d5b6e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d5b74  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d5b79  e892882200                CALL 0x006fe410
004d5b7e  e9e6000000                JMP 0x004d5c69
004d5b83  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004d5b8d  33f6                      XOR ESI,ESI
004d5b8f  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
004d5b92  85c0                      TEST EAX,EAX
004d5b94  0f8ecf000000              JLE 0x004d5c69
004d5b9a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004d5ba0  83f801                    CMP EAX,0x1
004d5ba3  750d                      JNZ 0x004d5bb2
004d5ba5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d5bad  0f57c9                    XORPS XMM1,XMM1
004d5bb0  eb41                      JMP 0x004d5bf3
004d5bb2  48                        DEC EAX
004d5bb3  660f6ec6                  MOVD XMM0,ESI
004d5bb7  0f5bc0                    CVTDQ2PS XMM0,XMM0
004d5bba  660f6ec8                  MOVD XMM1,EAX
004d5bbe  0f5bc9                    CVTDQ2PS XMM1,XMM1
004d5bc1  f30f5ec1                  DIVSS XMM0,XMM1
004d5bc5  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
004d5bcd  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004d5bd2  e86979f4ff                CALL 0x0041d540
004d5bd7  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004d5bdc  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004d5be1  e83a79f4ff                CALL 0x0041d520
004d5be6  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004d5bee  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
004d5bf3  f30f594de8                MULSS XMM1,dword ptr [EBP + -0x18]
004d5bf8  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
004d5bfd  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004d5c05  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004d5c0d  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004d5c12  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d5c17  e844932100                CALL 0x006eef60
004d5c1c  8b0b                      MOV ECX,dword ptr [EBX]
004d5c1e  6a00                      PUSH 0x0
004d5c20  50                        PUSH EAX
004d5c21  6a00                      PUSH 0x0
004d5c23  57                        PUSH EDI
004d5c24  6840b6c700                PUSH 0xc7b640
004d5c29  8d45e0                    LEA EAX,[EBP + -0x20]
004d5c2c  50                        PUSH EAX
004d5c2d  8bc1                      MOV EAX,ECX
004d5c2f  81e1ffffff00              AND ECX,0xffffff
004d5c35  c1f818                    SAR EAX,0x18
004d5c38  50                        PUSH EAX
004d5c39  51                        PUSH ECX
004d5c3a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d5c40  e8cb872200                CALL 0x006fe410
004d5c45  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004d5c4d  46                        INC ESI
004d5c4e  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004d5c56  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004d5c5e  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
004d5c61  3bf0                      CMP ESI,EAX
004d5c63  0f8c37ffffff              JL 0x004d5ba0
004d5c69  c787a00b00004b000000      MOV dword ptr [EDI + 0xba0],0x4b
004d5c73  8b8f6c0b0000              MOV ECX,dword ptr [EDI + 0xb6c]
004d5c79  83f903                    CMP ECX,0x3
004d5c7c  7528                      JNZ 0x004d5ca6
004d5c7e  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004d5c84  8b55dc                    MOV EDX,dword ptr [EBP + -0x24]
004d5c87  40                        INC EAX
004d5c88  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004d5c8e  8b12                      MOV EDX,dword ptr [EDX]
004d5c90  3bc2                      CMP EAX,EDX
004d5c92  7c12                      JL 0x004d5ca6
004d5c94  8d42ff                    LEA EAX,[EDX + -0x1]
004d5c97  33d2                      XOR EDX,EDX
004d5c99  837dd801                  CMP dword ptr [EBP + -0x28],0x1
004d5c9d  0f45c2                    CMOVNZ EAX,EDX
004d5ca0  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004d5ca6  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
004d5cac  e984020000                JMP 0x004d5f35
004d5cb1  8b5dd8                    MOV EBX,dword ptr [EBP + -0x28]
004d5cb4  83fb01                    CMP EBX,0x1
004d5cb7  0f853f010000              JNZ 0x004d5dfc
004d5cbd  8b9a00830100              MOV EBX,dword ptr [EDX + 0x18300]
004d5cc3  33c9                      XOR ECX,ECX
004d5cc5  33f6                      XOR ESI,ESI
004d5cc7  894de8                    MOV dword ptr [EBP + -0x18],ECX
004d5cca  398b64120000              CMP dword ptr [EBX + 0x1264],ECX
004d5cd0  0f860f010000              JBE 0x004d5de5
004d5cd6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
004d5ce0  8b935c120000              MOV EDX,dword ptr [EBX + 0x125c]
004d5ce6  8b04b2                    MOV EAX,dword ptr [EDX + ESI*0x4]
004d5ce9  83782809                  CMP dword ptr [EAX + 0x28],0x9
004d5ced  0f85e5000000              JNZ 0x004d5dd8
004d5cf3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d5cf9  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004d5d01  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004d5d09  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
004d5d11  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004d5d17  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
004d5d1c  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
004d5d21  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
004d5d26  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004d5d29  f30f1155f0                MOVSS dword ptr [EBP + -0x10],XMM2
004d5d2e  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
004d5d31  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
004d5d34  83c0f7                    ADD EAX,-0x9
004d5d37  83f803                    CMP EAX,0x3
004d5d3a  774d                      JA 0x004d5d89
004d5d3c  83ec0c                    SUB ESP,0xc
004d5d3f  8d45ec                    LEA EAX,[EBP + -0x14]
004d5d42  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
004d5d4a  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
004d5d52  c704240000a041            MOV dword ptr [ESP],0x41a00000
004d5d59  50                        PUSH EAX
004d5d5a  8d45e0                    LEA EAX,[EBP + -0x20]
004d5d5d  50                        PUSH EAX
004d5d5e  e8edd13300                CALL 0x00812f50
004d5d63  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
004d5d68  0f2e45d4                  UCOMISS XMM0,dword ptr [EBP + -0x2c]
004d5d6c  9f                        LAHF
004d5d6d  f6c444                    TEST AH,0x44
004d5d70  7a63                      JP 0x004d5dd5
004d5d72  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004d5d77  0f2e45bc                  UCOMISS XMM0,dword ptr [EBP + -0x44]
004d5d7b  9f                        LAHF
004d5d7c  f6c444                    TEST AH,0x44
004d5d7f  7a54                      JP 0x004d5dd5
004d5d81  8b935c120000              MOV EDX,dword ptr [EBX + 0x125c]
004d5d87  eb38                      JMP 0x004d5dc1
004d5d89  f30f104114                MOVSS XMM0,dword ptr [ECX + 0x14]
004d5d8e  f30f58c3                  ADDSS XMM0,XMM3
004d5d92  0f2fc8                    COMISS XMM1,XMM0
004d5d95  723e                      JC 0x004d5dd5
004d5d97  f30f10411c                MOVSS XMM0,dword ptr [ECX + 0x1c]
004d5d9c  f30f5cc3                  SUBSS XMM0,XMM3
004d5da0  0f2fc1                    COMISS XMM0,XMM1
004d5da3  7230                      JC 0x004d5dd5
004d5da5  f30f104118                MOVSS XMM0,dword ptr [ECX + 0x18]
004d5daa  f30f58c3                  ADDSS XMM0,XMM3
004d5dae  0f2fd0                    COMISS XMM2,XMM0
004d5db1  7222                      JC 0x004d5dd5
004d5db3  f30f104120                MOVSS XMM0,dword ptr [ECX + 0x20]
004d5db8  f30f5cc3                  SUBSS XMM0,XMM3
004d5dbc  0f2fc2                    COMISS XMM0,XMM2
004d5dbf  7214                      JC 0x004d5dd5
004d5dc1  8b04b2                    MOV EAX,dword ptr [EDX + ESI*0x4]
004d5dc4  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004d5dc7  8b4034                    MOV EAX,dword ptr [EAX + 0x34]
004d5dca  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
004d5dcd  7509                      JNZ 0x004d5dd8
004d5dcf  41                        INC ECX
004d5dd0  894de8                    MOV dword ptr [EBP + -0x18],ECX
004d5dd3  eb03                      JMP 0x004d5dd8
004d5dd5  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004d5dd8  46                        INC ESI
004d5dd9  3bb364120000              CMP ESI,dword ptr [EBX + 0x1264]
004d5ddf  0f82fbfeffff              JC 0x004d5ce0
004d5de5  83f912                    CMP ECX,0x12
004d5de8  7c0f                      JL 0x004d5df9
004d5dea  c787a00b00000f000000      MOV dword ptr [EDI + 0xba0],0xf
004d5df4  e93c010000                JMP 0x004d5f35
004d5df9  8b5dd8                    MOV EBX,dword ptr [EBP + -0x28]
004d5dfc  8bcf                      MOV ECX,EDI
004d5dfe  e80de8ffff                CALL 0x004d4610
004d5e03  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
004d5e06  c787a00b00004b000000      MOV dword ptr [EDI + 0xba0],0x4b
004d5e10  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004d5e16  40                        INC EAX
004d5e17  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004d5e1d  8b09                      MOV ECX,dword ptr [ECX]
004d5e1f  3bc1                      CMP EAX,ECX
004d5e21  7c11                      JL 0x004d5e34
004d5e23  8d41ff                    LEA EAX,[ECX + -0x1]
004d5e26  33c9                      XOR ECX,ECX
004d5e28  83fb01                    CMP EBX,0x1
004d5e2b  0f45c1                    CMOVNZ EAX,ECX
004d5e2e  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004d5e34  8b876c0b0000              MOV EAX,dword ptr [EDI + 0xb6c]
004d5e3a  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004d5e40  e9f0000000                JMP 0x004d5f35
004d5e45  83f808                    CMP EAX,0x8
004d5e48  0f85e7000000              JNZ 0x004d5f35
004d5e4e  f30f2c87b40b0000          CVTTSS2SI EAX,dword ptr [EDI + 0xbb4]
004d5e56  8bcf                      MOV ECX,EDI
004d5e58  ffb710040000              PUSH dword ptr [EDI + 0x410]
004d5e5e  50                        PUSH EAX
004d5e5f  e86cd5ffff                CALL 0x004d33d0
004d5e64  8b876c0b0000              MOV EAX,dword ptr [EDI + 0xb6c]
004d5e6a  32db                      XOR BL,BL
004d5e6c  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004d5e72  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004d5e7a  0f2e0504a8ba00            UCOMISS XMM0,dword ptr [0x00baa804]
004d5e81  9f                        LAHF
004d5e82  f6c444                    TEST AH,0x44
004d5e85  7b0d                      JNP 0x004d5e94
004d5e87  0f2e0568a8ba00            UCOMISS XMM0,dword ptr [0x00baa868]
004d5e8e  9f                        LAHF
004d5e8f  f6c444                    TEST AH,0x44
004d5e92  7a7d                      JP 0x004d5f11
004d5e94  a17816c700                MOV EAX,[0x00c71678]
004d5e99  6a00                      PUSH 0x0
004d5e9b  6a00                      PUSH 0x0
004d5e9d  6aff                      PUSH -0x1
004d5e9f  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d5ea5  8d45c8                    LEA EAX,[EBP + -0x38]
004d5ea8  6a01                      PUSH 0x1
004d5eaa  6a07                      PUSH 0x7
004d5eac  81c118120000              ADD ECX,0x1218
004d5eb2  50                        PUSH EAX
004d5eb3  e8a850f4ff                CALL 0x0041af60
004d5eb8  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
004d5ebb  33c9                      XOR ECX,ECX
004d5ebd  8b55cc                    MOV EDX,dword ptr [EBP + -0x34]
004d5ec0  85f6                      TEST ESI,ESI
004d5ec2  7412                      JZ 0x004d5ed6
004d5ec4  8b048a                    MOV EAX,dword ptr [EDX + ECX*0x4]
004d5ec7  8378344e                  CMP dword ptr [EAX + 0x34],0x4e
004d5ecb  7407                      JZ 0x004d5ed4
004d5ecd  41                        INC ECX
004d5ece  3bce                      CMP ECX,ESI
004d5ed0  72f2                      JC 0x004d5ec4
004d5ed2  eb02                      JMP 0x004d5ed6
004d5ed4  b301                      MOV BL,0x1
004d5ed6  807dc800                  CMP byte ptr [EBP + -0x38],0x0
004d5eda  7535                      JNZ 0x004d5f11
004d5edc  8b3578dec700              MOV ESI,dword ptr [0x00c7de78]
004d5ee2  85f6                      TEST ESI,ESI
004d5ee4  7405                      JZ 0x004d5eeb
004d5ee6  83c630                    ADD ESI,0x30
004d5ee9  eb05                      JMP 0x004d5ef0
004d5eeb  be18f6c700                MOV ESI,0xc7f618
004d5ef0  85d2                      TEST EDX,EDX
004d5ef2  7416                      JZ 0x004d5f0a
004d5ef4  8b42fc                    MOV EAX,dword ptr [EDX + -0x4]
004d5ef7  8d4afc                    LEA ECX,[EDX + -0x4]
004d5efa  2906                      SUB dword ptr [ESI],EAX
004d5efc  51                        PUSH ECX
004d5efd  835e0400                  SBB dword ptr [ESI + 0x4],0x0
004d5f01  ff15dc87b100              CALL dword ptr [0x00b187dc]
004d5f07  83c404                    ADD ESP,0x4
004d5f0a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d5f11  81bf10040000b4000000      CMP dword ptr [EDI + 0x410],0xb4
004d5f1b  7e18                      JLE 0x004d5f35
004d5f1d  84db                      TEST BL,BL
004d5f1f  7514                      JNZ 0x004d5f35
004d5f21  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d5f2b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d5f35  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004d5f3b  48                        DEC EAX
004d5f3c  83f804                    CMP EAX,0x4
004d5f3f  0f87d3020000              JA 0x004d6218
004d5f45  ff2485c8644d00            JMP dword ptr [EAX*0x4 + 0x4d64c8]
004d6218  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004d621f  0f8471020000              JZ 0x004d6496
004d6225  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d622b  83f812                    CMP EAX,0x12
004d622e  750a                      JNZ 0x004d623a
004d6230  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d6238  eb0d                      JMP 0x004d6247
004d623a  83f813                    CMP EAX,0x13
004d623d  750d                      JNZ 0x004d624c
004d623f  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d6247  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004d624c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d6252  8d4df0                    LEA ECX,[EBP + -0x10]
004d6255  c745f055000000            MOV dword ptr [EBP + -0x10],0x55
004d625c  e81f054800                CALL 0x00956780
004d6261  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004d6266  83ec08                    SUB ESP,0x8
004d6269  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d6271  f30f110424                MOVSS dword ptr [ESP],XMM0
004d6276  6a00                      PUSH 0x0
004d6278  6a02                      PUSH 0x2
004d627a  51                        PUSH ECX
004d627b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d6282  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d6288  ff75f0                    PUSH dword ptr [EBP + -0x10]
004d628b  e8a0794500                CALL 0x0092dc30
004d6290  a17816c700                MOV EAX,[0x00c71678]
004d6295  33c9                      XOR ECX,ECX
004d6297  894df0                    MOV dword ptr [EBP + -0x10],ECX
004d629a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004d62a0  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004d62a3  398864120000              CMP dword ptr [EAX + 0x1264],ECX
004d62a9  0f8626010000              JBE 0x004d63d5
004d62af  90                        NOP
004d62b0  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004d62b6  8b1c88                    MOV EBX,dword ptr [EAX + ECX*0x4]
004d62b9  a17816c700                MOV EAX,[0x00c71678]
004d62be  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004d62c5  7c06                      JL 0x004d62cd
004d62c7  837b2801                  CMP dword ptr [EBX + 0x28],0x1
004d62cb  740d                      JZ 0x004d62da
004d62cd  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004d62d0  83e80a                    SUB EAX,0xa
004d62d3  3ddd030000                CMP EAX,0x3dd
004d62d8  772a                      JA 0x004d6304
004d62da  8b03                      MOV EAX,dword ptr [EBX]
004d62dc  8bcb                      MOV ECX,EBX
004d62de  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
004d62e1  ffd0                      CALL EAX
004d62e3  84c0                      TEST AL,AL
004d62e5  741d                      JZ 0x004d6304
004d62e7  817b2862030000            CMP dword ptr [EBX + 0x28],0x362
004d62ee  7414                      JZ 0x004d6304
004d62f0  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
004d62f6  2500000020                AND EAX,0x20000000
004d62fb  83c800                    OR EAX,0x0
004d62fe  7504                      JNZ 0x004d6304
004d6300  b001                      MOV AL,0x1
004d6302  eb02                      JMP 0x004d6306
004d6304  32c0                      XOR AL,AL
004d6306  84c0                      TEST AL,AL
004d6308  0f84b1000000              JZ 0x004d63bf
004d630e  8b03                      MOV EAX,dword ptr [EBX]
004d6310  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d6318  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004d6320  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004d6326  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004d6329  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
004d632f  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004d6332  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004d6335  894588                    MOV dword ptr [EBP + -0x78],EAX
004d6338  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004d633b  89458c                    MOV dword ptr [EBP + -0x74],EAX
004d633e  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
004d6341  894590                    MOV dword ptr [EBP + -0x70],EAX
004d6344  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
004d6347  894594                    MOV dword ptr [EBP + -0x6c],EAX
004d634a  8bc1                      MOV EAX,ECX
004d634c  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
004d6351  2500010000                AND EAX,0x100
004d6356  83c800                    OR EAX,0x0
004d6359  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004d6361  f30f114d9c                MOVSS dword ptr [EBP + -0x64],XMM1
004d6366  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004d636e  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004d6373  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
004d6378  7407                      JZ 0x004d6381
004d637a  be01000000                MOV ESI,0x1
004d637f  eb02                      JMP 0x004d6383
004d6381  33f6                      XOR ESI,ESI
004d6383  81e100000020              AND ECX,0x20000000
004d6389  83c900                    OR ECX,0x0
004d638c  7407                      JZ 0x004d6395
004d638e  b902000000                MOV ECX,0x2
004d6393  eb02                      JMP 0x004d6397
004d6395  33c9                      XOR ECX,ECX
004d6397  81e200004000              AND EDX,0x400000
004d639d  33c0                      XOR EAX,EAX
004d639f  0bc2                      OR EAX,EDX
004d63a1  7407                      JZ 0x004d63aa
004d63a3  b804000000                MOV EAX,0x4
004d63a8  eb02                      JMP 0x004d63ac
004d63aa  33c0                      XOR EAX,EAX
004d63ac  0bc1                      OR EAX,ECX
004d63ae  897dac                    MOV dword ptr [EBP + -0x54],EDI
004d63b1  0bc6                      OR EAX,ESI
004d63b3  8bcb                      MOV ECX,EBX
004d63b5  8945a8                    MOV dword ptr [EBP + -0x58],EAX
004d63b8  8d4588                    LEA EAX,[EBP + -0x78]
004d63bb  50                        PUSH EAX
004d63bc  ff55d4                    CALL dword ptr [EBP + -0x2c]
004d63bf  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004d63c2  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
004d63c5  41                        INC ECX
004d63c6  894df0                    MOV dword ptr [EBP + -0x10],ECX
004d63c9  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
004d63cf  0f82dbfeffff              JC 0x004d62b0
004d63d5  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
004d63db  85c9                      TEST ECX,ECX
004d63dd  7467                      JZ 0x004d6446
004d63df  8b01                      MOV EAX,dword ptr [ECX]
004d63e1  8b1540b6c700              MOV EDX,dword ptr [0x00c7b640]
004d63e7  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004d63f1  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
004d63fb  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
004d63fe  a144b6c700                MOV EAX,[0x00c7b644]
004d6403  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
004d6409  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
004d640f  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
004d6415  50                        PUSH EAX
004d6416  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004d6420  c7856cffffff00000000      MOV dword ptr [EBP + 0xffffff6c],0x0
004d642a  899570ffffff              MOV dword ptr [EBP + 0xffffff70],EDX
004d6430  899578ffffff              MOV dword ptr [EBP + 0xffffff78],EDX
004d6436  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
004d643d  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
004d6444  ffd6                      CALL ESI
004d6446  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d644c  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004d6452  c780147200001e000000      MOV dword ptr [EAX + 0x7214],0x1e
004d645c  c7801872000007000000      MOV dword ptr [EAX + 0x7218],0x7
004d6466  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004d6469  83f804                    CMP EAX,0x4
004d646c  7405                      JZ 0x004d6473
004d646e  83f805                    CMP EAX,0x5
004d6471  7523                      JNZ 0x004d6496
004d6473  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004d6479  2500000020                AND EAX,0x20000000
004d647e  83c800                    OR EAX,0x0
004d6481  7513                      JNZ 0x004d6496
004d6483  a17816c700                MOV EAX,[0x00c71678]
004d6488  83b804830100f6            CMP dword ptr [EAX + 0x18304],-0xa
004d648f  7505                      JNZ 0x004d6496
004d6491  e85a000000                CALL 0x004d64f0
004d6496  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
004d6499  018710040000              ADD dword ptr [EDI + 0x410],EAX
004d649f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004d64a2  64890d00000000            MOV dword ptr FS:[0x0],ECX
004d64a9  59                        POP ECX
004d64aa  5f                        POP EDI
004d64ab  5e                        POP ESI
004d64ac  5b                        POP EBX
004d64ad  8be5                      MOV ESP,EBP
004d64af  5d                        POP EBP
004d64b0  c3                        RET
