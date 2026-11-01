; J460 NPC AI 0x0099e360 HELPER_HomingLaser_BezierSamples
; types=7
; identities=7.*
; entry=0099e360
0099e360  55                        PUSH EBP
0099e361  8bec                      MOV EBP,ESP
0099e363  6aff                      PUSH -0x1
0099e365  68b5d9b000                PUSH 0xb0d9b5
0099e36a  64a100000000              MOV EAX,FS:[0x0]
0099e370  50                        PUSH EAX
0099e371  83ec5c                    SUB ESP,0x5c
0099e374  53                        PUSH EBX
0099e375  56                        PUSH ESI
0099e376  57                        PUSH EDI
0099e377  a1b493bf00                MOV EAX,[0x00bf93b4]
0099e37c  33c5                      XOR EAX,EBP
0099e37e  50                        PUSH EAX
0099e37f  8d45f4                    LEA EAX,[EBP + -0xc]
0099e382  64a300000000              MOV FS:[0x0],EAX
0099e388  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0099e38d  8bf9                      MOV EDI,ECX
0099e38f  897ddc                    MOV dword ptr [EBP + -0x24],EDI
0099e392  8b574c                    MOV EDX,dword ptr [EDI + 0x4c]
0099e395  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e39a  2b5748                    SUB EDX,dword ptr [EDI + 0x48]
0099e39d  f7ea                      IMUL EDX
0099e39f  c1fa02                    SAR EDX,0x2
0099e3a2  8bc2                      MOV EAX,EDX
0099e3a4  c1e81f                    SHR EAX,0x1f
0099e3a7  03c2                      ADD EAX,EDX
0099e3a9  83f802                    CMP EAX,0x2
0099e3ac  730f                      JNC 0x0099e3bd
0099e3ae  6834dab700                PUSH 0xb7da34
0099e3b3  6a10                      PUSH 0x10
0099e3b5  e8062f0700                CALL 0x00a112c0
0099e3ba  83c408                    ADD ESP,0x8
0099e3bd  33c0                      XOR EAX,EAX
0099e3bf  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
0099e3c6  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
0099e3cd  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0099e3d0  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0099e3d3  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0099e3d6  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
0099e3d9  85c0                      TEST EAX,EAX
0099e3db  741a                      JZ 0x0099e3f7
0099e3dd  3dffffff1f                CMP EAX,0x1fffffff
0099e3e2  0f8709080000              JA 0x0099ebf1
0099e3e8  50                        PUSH EAX
0099e3e9  8d4d9c                    LEA ECX,[EBP + -0x64]
0099e3ec  e80f45dbff                CALL 0x00752900
0099e3f1  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
0099e3f4  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0099e3f7  33f6                      XOR ESI,ESI
0099e3f9  c7474400000000            MOV dword ptr [EDI + 0x44],0x0
0099e400  33c0                      XOR EAX,EAX
0099e402  8975ec                    MOV dword ptr [EBP + -0x14],ESI
0099e405  33db                      XOR EBX,EBX
0099e407  8975a8                    MOV dword ptr [EBP + -0x58],ESI
0099e40a  895dac                    MOV dword ptr [EBP + -0x54],EBX
0099e40d  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0099e410  8945b0                    MOV dword ptr [EBP + -0x50],EAX
0099e413  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0099e417  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e41c  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099e41f  2b4f48                    SUB ECX,dword ptr [EDI + 0x48]
0099e422  f7e9                      IMUL ECX
0099e424  c1fa02                    SAR EDX,0x2
0099e427  8bc2                      MOV EAX,EDX
0099e429  c1e81f                    SHR EAX,0x1f
0099e42c  03c2                      ADD EAX,EDX
0099e42e  7425                      JZ 0x0099e455
0099e430  3dffffff3f                CMP EAX,0x3fffffff
0099e435  0f87bb070000              JA 0x0099ebf6
0099e43b  50                        PUSH EAX
0099e43c  8d4da8                    LEA ECX,[EBP + -0x58]
0099e43f  e83ce4a8ff                CALL 0x0042c880
0099e444  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0099e447  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
0099e44a  8b5dac                    MOV EBX,dword ptr [EBP + -0x54]
0099e44d  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0099e450  8975ec                    MOV dword ptr [EBP + -0x14],ESI
0099e453  eb02                      JMP 0x0099e457
0099e455  33c0                      XOR EAX,EAX
0099e457  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
0099e45e  3bd8                      CMP EBX,EAX
0099e460  740e                      JZ 0x0099e470
0099e462  c70300000000              MOV dword ptr [EBX],0x0
0099e468  83c304                    ADD EBX,0x4
0099e46b  895dac                    MOV dword ptr [EBP + -0x54],EBX
0099e46e  eb1c                      JMP 0x0099e48c
0099e470  8d45c4                    LEA EAX,[EBP + -0x3c]
0099e473  50                        PUSH EAX
0099e474  53                        PUSH EBX
0099e475  8d4da8                    LEA ECX,[EBP + -0x58]
0099e478  e8a3e4a8ff                CALL 0x0042c920
0099e47d  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0099e480  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
0099e483  8b5dac                    MOV EBX,dword ptr [EBP + -0x54]
0099e486  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0099e489  8975ec                    MOV dword ptr [EBP + -0x14],ESI
0099e48c  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099e48f  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e494  2b4f48                    SUB ECX,dword ptr [EDI + 0x48]
0099e497  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
0099e49f  f7e9                      IMUL ECX
0099e4a1  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
0099e4a8  c1fa02                    SAR EDX,0x2
0099e4ab  8bc2                      MOV EAX,EDX
0099e4ad  c1e81f                    SHR EAX,0x1f
0099e4b0  48                        DEC EAX
0099e4b1  03c2                      ADD EAX,EDX
0099e4b3  0f8469020000              JZ 0x0099e722
0099e4b9  33c0                      XOR EAX,EAX
0099e4bb  8945e0                    MOV dword ptr [EBP + -0x20],EAX
0099e4be  6690                      NOP
0099e4c0  0f57e4                    XORPS XMM4,XMM4
0099e4c3  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
0099e4ca  3b5df0                    CMP EBX,dword ptr [EBP + -0x10]
0099e4cd  740e                      JZ 0x0099e4dd
0099e4cf  c70300000000              MOV dword ptr [EBX],0x0
0099e4d5  83c304                    ADD EBX,0x4
0099e4d8  895dac                    MOV dword ptr [EBP + -0x54],EBX
0099e4db  eb24                      JMP 0x0099e501
0099e4dd  8d45c4                    LEA EAX,[EBP + -0x3c]
0099e4e0  50                        PUSH EAX
0099e4e1  53                        PUSH EBX
0099e4e2  8d4da8                    LEA ECX,[EBP + -0x58]
0099e4e5  e836e4a8ff                CALL 0x0042c920
0099e4ea  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0099e4ed  0f57e4                    XORPS XMM4,XMM4
0099e4f0  8b5dac                    MOV EBX,dword ptr [EBP + -0x54]
0099e4f3  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
0099e4f6  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
0099e4fe  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0099e501  8b4f48                    MOV ECX,dword ptr [EDI + 0x48]
0099e504  b801000000                MOV EAX,0x1
0099e509  8b7de0                    MOV EDI,dword ptr [EBP + -0x20]
0099e50c  895dc4                    MOV dword ptr [EBP + -0x3c],EBX
0099e50f  8b5dcc                    MOV EBX,dword ptr [EBP + -0x34]
0099e512  8945c8                    MOV dword ptr [EBP + -0x38],EAX
0099e515  894db4                    MOV dword ptr [EBP + -0x4c],ECX
0099e518  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0099e520  0f57c0                    XORPS XMM0,XMM0
0099e523  0f28dd                    MOVAPS XMM3,XMM5
0099e526  f20f2ac0                  CVTSI2SD XMM0,EAX
0099e52a  c1e81f                    SHR EAX,0x1f
0099e52d  f30f5cdc                  SUBSS XMM3,XMM4
0099e531  0f28d4                    MOVAPS XMM2,XMM4
0099e534  f30f59d4                  MULSS XMM2,XMM4
0099e538  0f28fd                    MOVAPS XMM7,XMM5
0099e53b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099e544  0f28cb                    MOVAPS XMM1,XMM3
0099e547  f30f59cb                  MULSS XMM1,XMM3
0099e54b  660f5af0                  CVTPD2PS XMM6,XMM0
0099e54f  0f28c1                    MOVAPS XMM0,XMM1
0099e552  f30f5e351ca8ba00          DIVSS XMM6,dword ptr [0x00baa81c]
0099e55a  f30f59c3                  MULSS XMM0,XMM3
0099e55e  f30f5cfe                  SUBSS XMM7,XMM6
0099e562  f30f1175bc                MOVSS dword ptr [EBP + -0x44],XMM6
0099e567  0f28ee                    MOVAPS XMM5,XMM6
0099e56a  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0099e56f  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
0099e577  f30f59d8                  MULSS XMM3,XMM0
0099e57b  f30f59c8                  MULSS XMM1,XMM0
0099e57f  f30f59da                  MULSS XMM3,XMM2
0099e583  f30f59d4                  MULSS XMM2,XMM4
0099e587  f30f115dd0                MOVSS dword ptr [EBP + -0x30],XMM3
0099e58c  0f28df                    MOVAPS XMM3,XMM7
0099e58f  f30f59df                  MULSS XMM3,XMM7
0099e593  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
0099e598  f30f59ee                  MULSS XMM5,XMM6
0099e59c  0f28d3                    MOVAPS XMM2,XMM3
0099e59f  f30f59cc                  MULSS XMM1,XMM4
0099e5a3  f30f59d8                  MULSS XMM3,XMM0
0099e5a7  f30f10643920              MOVSS XMM4,dword ptr [ECX + EDI*0x1 + 0x20]
0099e5ad  f30f59d7                  MULSS XMM2,XMM7
0099e5b1  f30f59f8                  MULSS XMM7,XMM0
0099e5b5  f30f100439                MOVSS XMM0,dword ptr [ECX + EDI*0x1]
0099e5ba  f30f59c2                  MULSS XMM0,XMM2
0099e5be  f30f59de                  MULSS XMM3,XMM6
0099e5c2  f30f59fd                  MULSS XMM7,XMM5
0099e5c6  f30f59ee                  MULSS XMM5,XMM6
0099e5ca  f30f10743910              MOVSS XMM6,dword ptr [ECX + EDI*0x1 + 0x10]
0099e5d0  f30f59f3                  MULSS XMM6,XMM3
0099e5d4  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
0099e5d9  f30f104c3918              MOVSS XMM1,dword ptr [ECX + EDI*0x1 + 0x18]
0099e5df  f30f58f0                  ADDSS XMM6,XMM0
0099e5e3  f30f1155c0                MOVSS dword ptr [EBP + -0x40],XMM2
0099e5e8  0f28c4                    MOVAPS XMM0,XMM4
0099e5eb  f30f5965d0                MULSS XMM4,dword ptr [EBP + -0x30]
0099e5f0  f30f59c7                  MULSS XMM0,XMM7
0099e5f4  f30f58f0                  ADDSS XMM6,XMM0
0099e5f8  0f28c1                    MOVAPS XMM0,XMM1
0099e5fb  f30f59c5                  MULSS XMM0,XMM5
0099e5ff  f30f594dcc                MULSS XMM1,dword ptr [EBP + -0x34]
0099e604  f30f58f0                  ADDSS XMM6,XMM0
0099e608  f30f10443910              MOVSS XMM0,dword ptr [ECX + EDI*0x1 + 0x10]
0099e60e  f30f5945d8                MULSS XMM0,dword ptr [EBP + -0x28]
0099e613  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0099e618  f30f100439                MOVSS XMM0,dword ptr [ECX + EDI*0x1]
0099e61d  f30f5945d4                MULSS XMM0,dword ptr [EBP + -0x2c]
0099e622  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
0099e627  f30f58d0                  ADDSS XMM2,XMM0
0099e62b  0f28c2                    MOVAPS XMM0,XMM2
0099e62e  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
0099e633  f30f58c4                  ADDSS XMM0,XMM4
0099e637  f30f1054391c              MOVSS XMM2,dword ptr [ECX + EDI*0x1 + 0x1c]
0099e63d  f30f10643904              MOVSS XMM4,dword ptr [ECX + EDI*0x1 + 0x4]
0099e643  f30f58c1                  ADDSS XMM0,XMM1
0099e647  f30f104c3914              MOVSS XMM1,dword ptr [ECX + EDI*0x1 + 0x14]
0099e64d  f30f59cb                  MULSS XMM1,XMM3
0099e651  f30f105c3924              MOVSS XMM3,dword ptr [ECX + EDI*0x1 + 0x24]
0099e657  f30f5cf0                  SUBSS XMM6,XMM0
0099e65b  0f28c4                    MOVAPS XMM0,XMM4
0099e65e  f30f5945c0                MULSS XMM0,dword ptr [EBP + -0x40]
0099e663  f30f58c8                  ADDSS XMM1,XMM0
0099e667  0f28c3                    MOVAPS XMM0,XMM3
0099e66a  f30f59c7                  MULSS XMM0,XMM7
0099e66e  f30f58c8                  ADDSS XMM1,XMM0
0099e672  0f28c2                    MOVAPS XMM0,XMM2
0099e675  f30f59c5                  MULSS XMM0,XMM5
0099e679  f30f58c8                  ADDSS XMM1,XMM0
0099e67d  f30f10443914              MOVSS XMM0,dword ptr [ECX + EDI*0x1 + 0x14]
0099e683  f30f5945d8                MULSS XMM0,dword ptr [EBP + -0x28]
0099e688  f30f5965d4                MULSS XMM4,dword ptr [EBP + -0x2c]
0099e68d  f30f595dd0                MULSS XMM3,dword ptr [EBP + -0x30]
0099e692  f30f5955cc                MULSS XMM2,dword ptr [EBP + -0x34]
0099e697  f30f58c4                  ADDSS XMM0,XMM4
0099e69b  f30f59f6                  MULSS XMM6,XMM6
0099e69f  f30f58c3                  ADDSS XMM0,XMM3
0099e6a3  f30f58c2                  ADDSS XMM0,XMM2
0099e6a7  f30f5cc8                  SUBSS XMM1,XMM0
0099e6ab  f30f59c9                  MULSS XMM1,XMM1
0099e6af  f30f58ce                  ADDSS XMM1,XMM6
0099e6b3  0f28c1                    MOVAPS XMM0,XMM1
0099e6b6  e89573a9ff                CALL 0x00435a50
0099e6bb  f30f58449e04              ADDSS XMM0,dword ptr [ESI + EBX*0x4 + 0x4]
0099e6c1  8b45c8                    MOV EAX,dword ptr [EBP + -0x38]
0099e6c4  f30f1065bc                MOVSS XMM4,dword ptr [EBP + -0x44]
0099e6c9  40                        INC EAX
0099e6ca  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
0099e6d2  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
0099e6d5  f30f11449e04              MOVSS dword ptr [ESI + EBX*0x4 + 0x4],XMM0
0099e6db  8945c8                    MOV dword ptr [EBP + -0x38],EAX
0099e6de  83f80a                    CMP EAX,0xa
0099e6e1  0f8639feffff              JBE 0x0099e520
0099e6e7  8b7ddc                    MOV EDI,dword ptr [EBP + -0x24]
0099e6ea  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e6ef  8345e018                  ADD dword ptr [EBP + -0x20],0x18
0099e6f3  43                        INC EBX
0099e6f4  895dcc                    MOV dword ptr [EBP + -0x34],EBX
0099e6f7  f30f584744                ADDSS XMM0,dword ptr [EDI + 0x44]
0099e6fc  f30f114744                MOVSS dword ptr [EDI + 0x44],XMM0
0099e701  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099e704  2b4f48                    SUB ECX,dword ptr [EDI + 0x48]
0099e707  f7e9                      IMUL ECX
0099e709  c1fa02                    SAR EDX,0x2
0099e70c  8bc2                      MOV EAX,EDX
0099e70e  c1e81f                    SHR EAX,0x1f
0099e711  48                        DEC EAX
0099e712  03c2                      ADD EAX,EDX
0099e714  3bd8                      CMP EBX,EAX
0099e716  8b5dc4                    MOV EBX,dword ptr [EBP + -0x3c]
0099e719  0f82a1fdffff              JC 0x0099e4c0
0099e71f  8975ec                    MOV dword ptr [EBP + -0x14],ESI
0099e722  f30f104f44                MOVSS XMM1,dword ptr [EDI + 0x44]
0099e727  0f57c0                    XORPS XMM0,XMM0
0099e72a  0f2ec8                    UCOMISS XMM1,XMM0
0099e72d  9f                        LAHF
0099e72e  f6c444                    TEST AH,0x44
0099e731  7b4c                      JNP 0x0099e77f
0099e733  8bcb                      MOV ECX,EBX
0099e735  2bce                      SUB ECX,ESI
0099e737  c1f902                    SAR ECX,0x2
0099e73a  85c9                      TEST ECX,ECX
0099e73c  7441                      JZ 0x0099e77f
0099e73e  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0099e742  b801000000                MOV EAX,0x1
0099e747  f30f5ec1                  DIVSS XMM0,XMM1
0099e74b  f30f1106                  MOVSS dword ptr [ESI],XMM0
0099e74f  3bc8                      CMP ECX,EAX
0099e751  762c                      JBE 0x0099e77f
0099e753  0f1f4000                  NOP dword ptr [EAX]
0099e757  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0099e760  f30f100486                MOVSS XMM0,dword ptr [ESI + EAX*0x4]
0099e765  f30f5e4744                DIVSS XMM0,dword ptr [EDI + 0x44]
0099e76a  f30f110486                MOVSS dword ptr [ESI + EAX*0x4],XMM0
0099e76f  f30f584486fc              ADDSS XMM0,dword ptr [ESI + EAX*0x4 + -0x4]
0099e775  f30f110486                MOVSS dword ptr [ESI + EAX*0x4],XMM0
0099e77a  40                        INC EAX
0099e77b  3bc1                      CMP EAX,ECX
0099e77d  72e1                      JC 0x0099e760
0099e77f  33c0                      XOR EAX,EAX
0099e781  2bde                      SUB EBX,ESI
0099e783  c1fb02                    SAR EBX,0x2
0099e786  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
0099e789  8945cc                    MOV dword ptr [EBP + -0x34],EAX
0099e78c  8d53ff                    LEA EDX,[EBX + -0x1]
0099e78f  8b5f18                    MOV EBX,dword ptr [EDI + 0x18]
0099e792  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
0099e795  660f6ec0                  MOVD XMM0,EAX
0099e799  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099e79d  c1e81f                    SHR EAX,0x1f
0099e7a0  8b4dc4                    MOV ECX,dword ptr [EBP + -0x3c]
0099e7a3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099e7ac  660f5ae0                  CVTPD2PS XMM4,XMM0
0099e7b0  660f6ec3                  MOVD XMM0,EBX
0099e7b4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099e7b8  c1eb1f                    SHR EBX,0x1f
0099e7bb  f20f5804dd00cbba00        ADDSD XMM0,qword ptr [EBX*0x8 + 0xbacb00]
0099e7c4  660f5ac0                  CVTPD2PS XMM0,XMM0
0099e7c8  f30f5ee0                  DIVSS XMM4,XMM0
0099e7cc  f30f1165c8                MOVSS dword ptr [EBP + -0x38],XMM4
0099e7d1  3bca                      CMP ECX,EDX
0099e7d3  736c                      JNC 0x0099e841
0099e7d5  f30f101c8e                MOVSS XMM3,dword ptr [ESI + ECX*0x4]
0099e7da  0f2fe3                    COMISS XMM4,XMM3
0099e7dd  7662                      JBE 0x0099e841
0099e7df  660f6ec2                  MOVD XMM0,EDX
0099e7e3  8bc2                      MOV EAX,EDX
0099e7e5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099e7e9  c1e81f                    SHR EAX,0x1f
0099e7ec  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
0099e7ef  0f28d4                    MOVAPS XMM2,XMM4
0099e7f2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099e7fb  f30f5cd3                  SUBSS XMM2,XMM3
0099e7ff  8bc1                      MOV EAX,ECX
0099e801  c1e81f                    SHR EAX,0x1f
0099e804  660f5ac8                  CVTPD2PS XMM1,XMM0
0099e808  f30f10448e04              MOVSS XMM0,dword ptr [ESI + ECX*0x4 + 0x4]
0099e80e  f30f5cc3                  SUBSS XMM0,XMM3
0099e812  f30f5ed0                  DIVSS XMM2,XMM0
0099e816  660f6ec1                  MOVD XMM0,ECX
0099e81a  41                        INC ECX
0099e81b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099e81f  f30f5ed1                  DIVSS XMM2,XMM1
0099e823  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099e82c  660f5ac0                  CVTPD2PS XMM0,XMM0
0099e830  f30f5ec1                  DIVSS XMM0,XMM1
0099e834  f30f58d0                  ADDSS XMM2,XMM0
0099e838  f30f1155c8                MOVSS dword ptr [EBP + -0x38],XMM2
0099e83d  3bca                      CMP ECX,EDX
0099e83f  7294                      JC 0x0099e7d5
0099e841  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099e844  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e849  2b4f48                    SUB ECX,dword ptr [EDI + 0x48]
0099e84c  f7e9                      IMUL ECX
0099e84e  c1fa02                    SAR EDX,0x2
0099e851  8bc2                      MOV EAX,EDX
0099e853  c1e81f                    SHR EAX,0x1f
0099e856  03c2                      ADD EAX,EDX
0099e858  83f802                    CMP EAX,0x2
0099e85b  730f                      JNC 0x0099e86c
0099e85d  6858dab700                PUSH 0xb7da58
0099e862  6a10                      PUSH 0x10
0099e864  e8572a0700                CALL 0x00a112c0
0099e869  83c408                    ADD ESP,0x8
0099e86c  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099e86f  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e874  8b5f48                    MOV EBX,dword ptr [EDI + 0x48]
0099e877  2bcb                      SUB ECX,EBX
0099e879  f7e9                      IMUL ECX
0099e87b  c1fa02                    SAR EDX,0x2
0099e87e  8bca                      MOV ECX,EDX
0099e880  c1e91f                    SHR ECX,0x1f
0099e883  03ca                      ADD ECX,EDX
0099e885  8d41ff                    LEA EAX,[ECX + -0x1]
0099e888  660f6ec0                  MOVD XMM0,EAX
0099e88c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099e890  c1e81f                    SHR EAX,0x1f
0099e893  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099e89c  660f5ae8                  CVTPD2PS XMM5,XMM0
0099e8a0  f30f596dc8                MULSS XMM5,dword ptr [EBP + -0x38]
0099e8a5  f30f2cd5                  CVTTSS2SI EDX,XMM5
0099e8a9  660f6ec2                  MOVD XMM0,EDX
0099e8ad  0f5bc0                    CVTDQ2PS XMM0,XMM0
0099e8b0  f30f5ce8                  SUBSS XMM5,XMM0
0099e8b4  85d2                      TEST EDX,EDX
0099e8b6  790e                      JNS 0x0099e8c6
0099e8b8  f30f102b                  MOVSS XMM5,dword ptr [EBX]
0099e8bc  f30f106304                MOVSS XMM4,dword ptr [EBX + 0x4]
0099e8c1  e9ba000000                JMP 0x0099e980
0099e8c6  8d41ff                    LEA EAX,[ECX + -0x1]
0099e8c9  3bd0                      CMP EDX,EAX
0099e8cb  7c20                      JL 0x0099e8ed
0099e8cd  8d0c49                    LEA ECX,[ECX + ECX*0x2]
0099e8d0  8b44cbe8                  MOV EAX,dword ptr [EBX + ECX*0x8 + -0x18]
0099e8d4  8b4ccbec                  MOV ECX,dword ptr [EBX + ECX*0x8 + -0x14]
0099e8d8  8945b8                    MOV dword ptr [EBP + -0x48],EAX
0099e8db  f30f106db8                MOVSS XMM5,dword ptr [EBP + -0x48]
0099e8e0  894dbc                    MOV dword ptr [EBP + -0x44],ECX
0099e8e3  f30f1065bc                MOVSS XMM4,dword ptr [EBP + -0x44]
0099e8e8  e99d000000                JMP 0x0099e98a
0099e8ed  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0099e8f5  8d0452                    LEA EAX,[EDX + EDX*0x2]
0099e8f8  f30f5cdd                  SUBSS XMM3,XMM5
0099e8fc  0f28d5                    MOVAPS XMM2,XMM5
0099e8ff  f30f59d5                  MULSS XMM2,XMM5
0099e903  0f28e3                    MOVAPS XMM4,XMM3
0099e906  f30f59e3                  MULSS XMM4,XMM3
0099e90a  0f28cc                    MOVAPS XMM1,XMM4
0099e90d  f30f5925fca6ba00          MULSS XMM4,dword ptr [0x00baa6fc]
0099e915  f30f59cb                  MULSS XMM1,XMM3
0099e919  f30f591dfca6ba00          MULSS XMM3,dword ptr [0x00baa6fc]
0099e921  f30f59e5                  MULSS XMM4,XMM5
0099e925  f30f59da                  MULSS XMM3,XMM2
0099e929  f30f59d5                  MULSS XMM2,XMM5
0099e92d  0f28c4                    MOVAPS XMM0,XMM4
0099e930  f30f5944c310              MULSS XMM0,dword ptr [EBX + EAX*0x8 + 0x10]
0099e936  0f28e9                    MOVAPS XMM5,XMM1
0099e939  f30f592cc3                MULSS XMM5,dword ptr [EBX + EAX*0x8]
0099e93e  f30f5964c314              MULSS XMM4,dword ptr [EBX + EAX*0x8 + 0x14]
0099e944  f30f594cc304              MULSS XMM1,dword ptr [EBX + EAX*0x8 + 0x4]
0099e94a  f30f58e8                  ADDSS XMM5,XMM0
0099e94e  0f28c3                    MOVAPS XMM0,XMM3
0099e951  f30f595cc324              MULSS XMM3,dword ptr [EBX + EAX*0x8 + 0x24]
0099e957  f30f5944c320              MULSS XMM0,dword ptr [EBX + EAX*0x8 + 0x20]
0099e95d  f30f58e1                  ADDSS XMM4,XMM1
0099e961  f30f58e8                  ADDSS XMM5,XMM0
0099e965  0f28c2                    MOVAPS XMM0,XMM2
0099e968  f30f5944c318              MULSS XMM0,dword ptr [EBX + EAX*0x8 + 0x18]
0099e96e  f30f58e3                  ADDSS XMM4,XMM3
0099e972  f30f5954c31c              MULSS XMM2,dword ptr [EBX + EAX*0x8 + 0x1c]
0099e978  f30f58e8                  ADDSS XMM5,XMM0
0099e97c  f30f58e2                  ADDSS XMM4,XMM2
0099e980  f30f1165bc                MOVSS dword ptr [EBP + -0x44],XMM4
0099e985  f30f116db8                MOVSS dword ptr [EBP + -0x48],XMM5
0099e98a  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099e98d  3b4de4                    CMP ECX,dword ptr [EBP + -0x1c]
0099e990  7411                      JZ 0x0099e9a3
0099e992  f30f1129                  MOVSS dword ptr [ECX],XMM5
0099e996  f30f116104                MOVSS dword ptr [ECX + 0x4],XMM4
0099e99b  83c108                    ADD ECX,0x8
0099e99e  894da0                    MOV dword ptr [EBP + -0x60],ECX
0099e9a1  eb16                      JMP 0x0099e9b9
0099e9a3  8d45b8                    LEA EAX,[EBP + -0x48]
0099e9a6  50                        PUSH EAX
0099e9a7  51                        PUSH ECX
0099e9a8  8d4d9c                    LEA ECX,[EBP + -0x64]
0099e9ab  e8800aa9ff                CALL 0x0042f430
0099e9b0  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
0099e9b3  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099e9b6  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0099e9b9  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
0099e9bc  8b5f18                    MOV EBX,dword ptr [EDI + 0x18]
0099e9bf  40                        INC EAX
0099e9c0  8b55b4                    MOV EDX,dword ptr [EBP + -0x4c]
0099e9c3  8945cc                    MOV dword ptr [EBP + -0x34],EAX
0099e9c6  3bc3                      CMP EAX,EBX
0099e9c8  0f86c7fdffff              JBE 0x0099e795
0099e9ce  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0099e9d1  8d5f34                    LEA EBX,[EDI + 0x34]
0099e9d4  8b5304                    MOV EDX,dword ptr [EBX + 0x4]
0099e9d7  2bd0                      SUB EDX,EAX
0099e9d9  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
0099e9dc  c1fa03                    SAR EDX,0x3
0099e9df  8bc1                      MOV EAX,ECX
0099e9e1  8955e0                    MOV dword ptr [EBP + -0x20],EDX
0099e9e4  8b559c                    MOV EDX,dword ptr [EBP + -0x64]
0099e9e7  2bc2                      SUB EAX,EDX
0099e9e9  c1f803                    SAR EAX,0x3
0099e9ec  3945e0                    CMP dword ptr [EBP + -0x20],EAX
0099e9ef  741c                      JZ 0x0099ea0d
0099e9f1  8d459c                    LEA EAX,[EBP + -0x64]
0099e9f4  3bd8                      CMP EBX,EAX
0099e9f6  0f8466010000              JZ 0x0099eb62
0099e9fc  ff75b4                    PUSH dword ptr [EBP + -0x4c]
0099e9ff  51                        PUSH ECX
0099ea00  52                        PUSH EDX
0099ea01  8bcb                      MOV ECX,EBX
0099ea03  e86840f2ff                CALL 0x008c2a70
0099ea08  e955010000                JMP 0x0099eb62
0099ea0d  837f4001                  CMP dword ptr [EDI + 0x40],0x1
0099ea11  7566                      JNZ 0x0099ea79
0099ea13  837de000                  CMP dword ptr [EBP + -0x20],0x0
0099ea17  0f8645010000              JBE 0x0099eb62
0099ea1d  8b45c4                    MOV EAX,dword ptr [EBP + -0x3c]
0099ea20  8bfa                      MOV EDI,EDX
0099ea22  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
0099ea27  2bf8                      SUB EDI,EAX
0099ea29  897db4                    MOV dword ptr [EBP + -0x4c],EDI
0099ea2c  33ff                      XOR EDI,EDI
0099ea2e  8b75b4                    MOV ESI,dword ptr [EBP + -0x4c]
0099ea31  8d4804                    LEA ECX,[EAX + 0x4]
0099ea34  f30f1014fa                MOVSS XMM2,dword ptr [EDX + EDI*0x8]
0099ea39  47                        INC EDI
0099ea3a  f30f5c51fc                SUBSS XMM2,dword ptr [ECX + -0x4]
0099ea3f  f30f10040e                MOVSS XMM0,dword ptr [ESI + ECX*0x1]
0099ea44  f30f5c01                  SUBSS XMM0,dword ptr [ECX]
0099ea48  f30f59d3                  MULSS XMM2,XMM3
0099ea4c  f30f59c3                  MULSS XMM0,XMM3
0099ea50  f30f5851fc                ADDSS XMM2,dword ptr [ECX + -0x4]
0099ea55  f30f5801                  ADDSS XMM0,dword ptr [ECX]
0099ea59  f30f1151fc                MOVSS dword ptr [ECX + -0x4],XMM2
0099ea5e  f30f1101                  MOVSS dword ptr [ECX],XMM0
0099ea62  83c108                    ADD ECX,0x8
0099ea65  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
0099ea68  2b03                      SUB EAX,dword ptr [EBX]
0099ea6a  c1f803                    SAR EAX,0x3
0099ea6d  3bf8                      CMP EDI,EAX
0099ea6f  72c3                      JC 0x0099ea34
0099ea71  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
0099ea74  e9e6000000                JMP 0x0099eb5f
0099ea79  f30f104744                MOVSS XMM0,dword ptr [EDI + 0x44]
0099ea7e  0f57c9                    XORPS XMM1,XMM1
0099ea81  f30f5e0594aaba00          DIVSS XMM0,dword ptr [0x00baaa94]
0099ea89  33c9                      XOR ECX,ECX
0099ea8b  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
0099ea90  f30f5fc1                  MAXSS XMM0,XMM1
0099ea94  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0099ea9c  f30f5cd1                  SUBSS XMM2,XMM1
0099eaa0  f30f5dc3                  MINSS XMM0,XMM3
0099eaa4  f30f59d0                  MULSS XMM2,XMM0
0099eaa8  f30f58d1                  ADDSS XMM2,XMM1
0099eaac  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
0099eab1  394de0                    CMP dword ptr [EBP + -0x20],ECX
0099eab4  0f86a8000000              JBE 0x0099eb62
0099eaba  8b7dc4                    MOV EDI,dword ptr [EBP + -0x3c]
0099eabd  0f1f00                    NOP dword ptr [EAX]
0099eac0  33c0                      XOR EAX,EAX
0099eac2  3bc1                      CMP EAX,ECX
0099eac4  1bc0                      SBB EAX,EAX
0099eac6  23c1                      AND EAX,ECX
0099eac8  660f6ec0                  MOVD XMM0,EAX
0099eacc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099ead0  c1e81f                    SHR EAX,0x1f
0099ead3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099eadc  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
0099eadf  2b03                      SUB EAX,dword ptr [EBX]
0099eae1  c1f803                    SAR EAX,0x3
0099eae4  48                        DEC EAX
0099eae5  660f5ac8                  CVTPD2PS XMM1,XMM0
0099eae9  660f6ec0                  MOVD XMM0,EAX
0099eaed  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099eaf1  c1e81f                    SHR EAX,0x1f
0099eaf4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099eafd  660f5ac0                  CVTPD2PS XMM0,XMM0
0099eb01  f30f5ec8                  DIVSS XMM1,XMM0
0099eb05  f30f1044ca04              MOVSS XMM0,dword ptr [EDX + ECX*0x8 + 0x4]
0099eb0b  f30f5c44cf04              SUBSS XMM0,dword ptr [EDI + ECX*0x8 + 0x4]
0099eb11  f30f59ca                  MULSS XMM1,XMM2
0099eb15  f30f1014ca                MOVSS XMM2,dword ptr [EDX + ECX*0x8]
0099eb1a  f30f5c14cf                SUBSS XMM2,dword ptr [EDI + ECX*0x8]
0099eb1f  f30f5cd9                  SUBSS XMM3,XMM1
0099eb23  f30f59d3                  MULSS XMM2,XMM3
0099eb27  f30f59c3                  MULSS XMM0,XMM3
0099eb2b  f30f5814cf                ADDSS XMM2,dword ptr [EDI + ECX*0x8]
0099eb30  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0099eb38  f30f5844cf04              ADDSS XMM0,dword ptr [EDI + ECX*0x8 + 0x4]
0099eb3e  f30f1114cf                MOVSS dword ptr [EDI + ECX*0x8],XMM2
0099eb43  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
0099eb48  f30f1144cf04              MOVSS dword ptr [EDI + ECX*0x8 + 0x4],XMM0
0099eb4e  41                        INC ECX
0099eb4f  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
0099eb52  2b03                      SUB EAX,dword ptr [EBX]
0099eb54  c1f803                    SAR EAX,0x3
0099eb57  3bc8                      CMP ECX,EAX
0099eb59  0f8261ffffff              JC 0x0099eac0
0099eb5f  8b7ddc                    MOV EDI,dword ptr [EBP + -0x24]
0099eb62  8d4f1c                    LEA ECX,[EDI + 0x1c]
0099eb65  3bcb                      CMP ECX,EBX
0099eb67  740d                      JZ 0x0099eb76
0099eb69  ff75b4                    PUSH dword ptr [EBP + -0x4c]
0099eb6c  ff7304                    PUSH dword ptr [EBX + 0x4]
0099eb6f  ff33                      PUSH dword ptr [EBX]
0099eb71  e8fa3ef2ff                CALL 0x008c2a70
0099eb76  85f6                      TEST ESI,ESI
0099eb78  742c                      JZ 0x0099eba6
0099eb7a  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0099eb7d  8bc6                      MOV EAX,ESI
0099eb7f  2bce                      SUB ECX,ESI
0099eb81  83e1fc                    AND ECX,0xfffffffc
0099eb84  81f900100000              CMP ECX,0x1000
0099eb8a  7210                      JC 0x0099eb9c
0099eb8c  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
0099eb8f  83c123                    ADD ECX,0x23
0099eb92  2bc6                      SUB EAX,ESI
0099eb94  83c0fc                    ADD EAX,-0x4
0099eb97  83f81f                    CMP EAX,0x1f
0099eb9a  7733                      JA 0x0099ebcf
0099eb9c  51                        PUSH ECX
0099eb9d  56                        PUSH ESI
0099eb9e  e8b9051500                CALL 0x00aef15c
0099eba3  83c408                    ADD ESP,0x8
0099eba6  8b4d9c                    MOV ECX,dword ptr [EBP + -0x64]
0099eba9  85c9                      TEST ECX,ECX
0099ebab  7432                      JZ 0x0099ebdf
0099ebad  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
0099ebb0  8bc1                      MOV EAX,ECX
0099ebb2  2bd1                      SUB EDX,ECX
0099ebb4  83e2f8                    AND EDX,0xfffffff8
0099ebb7  81fa00100000              CMP EDX,0x1000
0099ebbd  7216                      JC 0x0099ebd5
0099ebbf  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0099ebc2  83c223                    ADD EDX,0x23
0099ebc5  2bc1                      SUB EAX,ECX
0099ebc7  83c0fc                    ADD EAX,-0x4
0099ebca  83f81f                    CMP EAX,0x1f
0099ebcd  7606                      JBE 0x0099ebd5
0099ebcf  ff159488b100              CALL dword ptr [0x00b18894]
0099ebd5  52                        PUSH EDX
0099ebd6  51                        PUSH ECX
0099ebd7  e880051500                CALL 0x00aef15c
0099ebdc  83c408                    ADD ESP,0x8
0099ebdf  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0099ebe2  64890d00000000            MOV dword ptr FS:[0x0],ECX
0099ebe9  59                        POP ECX
0099ebea  5f                        POP EDI
0099ebeb  5e                        POP ESI
0099ebec  5b                        POP EBX
0099ebed  8be5                      MOV ESP,EBP
0099ebef  5d                        POP EBP
0099ebf0  c3                        RET
0099ebf1  e8ca6fa7ff                CALL 0x00415bc0
0099ebf6  e8c56fa7ff                CALL 0x00415bc0
0099ebfb  cc                        INT3
