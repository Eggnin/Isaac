; J460 NPC AI 0x005a4820 AI_005a4820
; types=293
; identities=293.0.0,293.1.0,293.2.0,293.3.0
; entry=005a4820
005a4820  53                        PUSH EBX
005a4821  8bdc                      MOV EBX,ESP
005a4823  83ec08                    SUB ESP,0x8
005a4826  83e4f8                    AND ESP,0xfffffff8
005a4829  83c404                    ADD ESP,0x4
005a482c  55                        PUSH EBP
005a482d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005a4830  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005a4834  8bec                      MOV EBP,ESP
005a4836  6aff                      PUSH -0x1
005a4838  68f658af00                PUSH 0xaf58f6
005a483d  64a100000000              MOV EAX,FS:[0x0]
005a4843  50                        PUSH EAX
005a4844  53                        PUSH EBX
005a4845  81ecf0000000              SUB ESP,0xf0
005a484b  a1b493bf00                MOV EAX,[0x00bf93b4]
005a4850  33c5                      XOR EAX,EBP
005a4852  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005a4855  56                        PUSH ESI
005a4856  57                        PUSH EDI
005a4857  50                        PUSH EAX
005a4858  8d45f4                    LEA EAX,[EBP + -0xc]
005a485b  64a300000000              MOV FS:[0x0],EAX
005a4861  8bf9                      MOV EDI,ECX
005a4863  89bd50ffffff              MOV dword ptr [EBP + 0xffffff50],EDI
005a4869  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
005a4870  0f85fc000000              JNZ 0x005a4972
005a4876  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005a487c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005a4882  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
005a4889  0f57c9                    XORPS XMM1,XMM1
005a488c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005a4892  0f57d2                    XORPS XMM2,XMM2
005a4895  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
005a489b  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
005a48a5  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
005a48af  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
005a48b9  c78528ffffff00000000      MOV dword ptr [EBP + 0xffffff28],0x0
005a48c3  3bc8                      CMP ECX,EAX
005a48c5  741d                      JZ 0x005a48e4
005a48c7  f30f7e8520ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff20]
005a48cf  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
005a48d5  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005a48da  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
005a48dd  894128                    MOV dword ptr [ECX + 0x28],EAX
005a48e0  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
005a48e4  a19c16c700                MOV EAX,[0x00c7169c]
005a48e9  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005a48f3  c787dc0000000000a040      MOV dword ptr [EDI + 0xdc],0x40a00000
005a48fd  c787e0000000000040c0      MOV dword ptr [EDI + 0xe0],0xc0400000
005a4907  80b84201000000            CMP byte ptr [EAX + 0x142],0x0
005a490e  752d                      JNZ 0x005a493d
005a4910  83780802                  CMP dword ptr [EAX + 0x8],0x2
005a4914  0f85f6110000              JNZ 0x005a5b10
005a491a  a17816c700                MOV EAX,[0x00c71678]
005a491f  85c0                      TEST EAX,EAX
005a4921  0f84e9110000              JZ 0x005a5b10
005a4927  83b83066020000            CMP dword ptr [EAX + 0x26630],0x0
005a492e  770d                      JA 0x005a493d
005a4930  80b88965020000            CMP byte ptr [EAX + 0x26589],0x0
005a4937  0f84d3110000              JZ 0x005a5b10
005a493d  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
005a4945  f30f5905a0a4ba00          MULSS XMM0,dword ptr [0x00baa4a0]
005a494d  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
005a4955  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
005a495d  f30f5905a0a4ba00          MULSS XMM0,dword ptr [0x00baa4a0]
005a4965  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
005a496d  e99e110000                JMP 0x005a5b10
005a4972  a17816c700                MOV EAX,[0x00c71678]
005a4977  6a00                      PUSH 0x0
005a4979  6a00                      PUSH 0x0
005a497b  6aff                      PUSH -0x1
005a497d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a4983  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
005a4989  6aff                      PUSH -0x1
005a498b  6896010000                PUSH 0x196
005a4990  81c118120000              ADD ECX,0x1218
005a4996  50                        PUSH EAX
005a4997  e8c465e7ff                CALL 0x0041af60
005a499c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005a49a3  33c0                      XOR EAX,EAX
005a49a5  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005a49ad  0f57db                    XORPS XMM3,XMM3
005a49b0  8b9538ffffff              MOV EDX,dword ptr [EBP + 0xffffff38]
005a49b6  0f57e4                    XORPS XMM4,XMM4
005a49b9  f30f102dd0a2ba00          MOVSS XMM5,dword ptr [0x00baa2d0]
005a49c1  0f57d2                    XORPS XMM2,XMM2
005a49c4  f30f1035e0a3ba00          MOVSS XMM6,dword ptr [0x00baa3e0]
005a49cc  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a49d4  85d2                      TEST EDX,EDX
005a49d6  0f84ea000000              JZ 0x005a4ac6
005a49dc  8bb530ffffff              MOV ESI,dword ptr [EBP + 0xffffff30]
005a49e2  8b0c86                    MOV ECX,dword ptr [ESI + EAX*0x4]
005a49e5  f30f108184030000          MOVSS XMM0,dword ptr [ECX + 0x384]
005a49ed  0f2fc3                    COMISS XMM0,XMM3
005a49f0  7615                      JBE 0x005a4a07
005a49f2  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
005a49f9  750c                      JNZ 0x005a4a07
005a49fb  f30f589180030000          ADDSS XMM2,dword ptr [ECX + 0x380]
005a4a03  f30f58e0                  ADDSS XMM4,XMM0
005a4a07  40                        INC EAX
005a4a08  3bc2                      CMP EAX,EDX
005a4a0a  72d6                      JC 0x005a49e2
005a4a0c  0f2fe3                    COMISS XMM4,XMM3
005a4a0f  f30f11a564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM4
005a4a17  f30f119558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM2
005a4a1f  0f86a1000000              JBE 0x005a4ac6
005a4a25  0f2edc                    UCOMISS XMM3,XMM4
005a4a28  9f                        LAHF
005a4a29  f6c444                    TEST AH,0x44
005a4a2c  7a32                      JP 0x005a4a60
005a4a2e  68d81bb800                PUSH 0xb81bd8
005a4a33  6a10                      PUSH 0x10
005a4a35  e886c84600                CALL 0x00a112c0
005a4a3a  f30f109558ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff58]
005a4a42  83c408                    ADD ESP,0x8
005a4a45  f30f10a564ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff64]
005a4a4d  0f57db                    XORPS XMM3,XMM3
005a4a50  f30f102dd0a2ba00          MOVSS XMM5,dword ptr [0x00baa2d0]
005a4a58  f30f1035e0a3ba00          MOVSS XMM6,dword ptr [0x00baa3e0]
005a4a60  0f28ca                    MOVAPS XMM1,XMM2
005a4a63  a19c16c700                MOV EAX,[0x00c7169c]
005a4a68  f30f5ccb                  SUBSS XMM1,XMM3
005a4a6c  f30f5ce3                  SUBSS XMM4,XMM3
005a4a70  80b84201000000            CMP byte ptr [EAX + 0x142],0x0
005a4a77  f30f5ecc                  DIVSS XMM1,XMM4
005a4a7b  f30f5fcb                  MAXSS XMM1,XMM3
005a4a7f  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
005a4a87  f30f59cd                  MULSS XMM1,XMM5
005a4a8b  f30f58cd                  ADDSS XMM1,XMM5
005a4a8f  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a4a97  7521                      JNZ 0x005a4aba
005a4a99  83780802                  CMP dword ptr [EAX + 0x8],0x2
005a4a9d  7527                      JNZ 0x005a4ac6
005a4a9f  a17816c700                MOV EAX,[0x00c71678]
005a4aa4  85c0                      TEST EAX,EAX
005a4aa6  741e                      JZ 0x005a4ac6
005a4aa8  83b83066020000            CMP dword ptr [EAX + 0x26630],0x0
005a4aaf  7709                      JA 0x005a4aba
005a4ab1  80b88965020000            CMP byte ptr [EAX + 0x26589],0x0
005a4ab8  740c                      JZ 0x005a4ac6
005a4aba  f30f59ce                  MULSS XMM1,XMM6
005a4abe  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a4ac6  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a4acc  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005a4ad4  83f802                    CMP EAX,0x2
005a4ad7  0f85b0000000              JNZ 0x005a4b8d
005a4add  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005a4ae0  83f803                    CMP EAX,0x3
005a4ae3  7731                      JA 0x005a4b16
005a4ae5  ff2485305b5a00            JMP dword ptr [EAX*0x4 + 0x5a5b30]
005a4aec  6a00                      PUSH 0x0
005a4aee  685827b600                PUSH 0xb62758
005a4af3  eb19                      JMP 0x005a4b0e
005a4af5  6a00                      PUSH 0x0
005a4af7  684c27b600                PUSH 0xb6274c
005a4afc  eb10                      JMP 0x005a4b0e
005a4afe  6a00                      PUSH 0x0
005a4b00  68a027b600                PUSH 0xb627a0
005a4b05  eb07                      JMP 0x005a4b0e
005a4b07  6a00                      PUSH 0x0
005a4b09  689427b600                PUSH 0xb62794
005a4b0e  8d4f48                    LEA ECX,[EDI + 0x48]
005a4b11  e86a58e6ff                CALL 0x0040a380
005a4b16  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a4b1a  8d4f48                    LEA ECX,[EDI + 0x48]
005a4b1d  740d                      JZ 0x005a4b2c
005a4b1f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a4b26  0f85ab0d0000              JNZ 0x005a58d7
005a4b2c  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005a4b2f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a4b39  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a4b43  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005a4b4d  83f803                    CMP EAX,0x3
005a4b50  0f87810d0000              JA 0x005a58d7
005a4b56  ff2485405b5a00            JMP dword ptr [EAX*0x4 + 0x5a5b40]
005a4b5d  6a00                      PUSH 0x0
005a4b5f  688427b600                PUSH 0xb62784
005a4b64  e9690d0000                JMP 0x005a58d2
005a4b69  6a00                      PUSH 0x0
005a4b6b  687827b600                PUSH 0xb62778
005a4b70  e95d0d0000                JMP 0x005a58d2
005a4b75  6a00                      PUSH 0x0
005a4b77  68d427b600                PUSH 0xb627d4
005a4b7c  e9510d0000                JMP 0x005a58d2
005a4b81  6a00                      PUSH 0x0
005a4b83  68c427b600                PUSH 0xb627c4
005a4b88  e9450d0000                JMP 0x005a58d2
005a4b8d  83f803                    CMP EAX,0x3
005a4b90  0f8523070000              JNZ 0x005a52b9
005a4b96  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005a4b99  32f6                      XOR DH,DH
005a4b9b  33f6                      XOR ESI,ESI
005a4b9d  88b55fffffff              MOV byte ptr [EBP + 0xffffff5f],DH
005a4ba3  83f803                    CMP EAX,0x3
005a4ba6  0f872b0d0000              JA 0x005a58d7
005a4bac  ff2485505b5a00            JMP dword ptr [EAX*0x4 + 0x5a5b50]
005a4bb3  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
005a4bbb  f30f59d6                  MULSS XMM2,XMM6
005a4bbf  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
005a4bc7  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
005a4bcf  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
005a4bd7  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
005a4bdf  0f28c2                    MOVAPS XMM0,XMM2
005a4be2  f30f119558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM2
005a4bea  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
005a4bf2  f30f5e051cabba00          DIVSS XMM0,dword ptr [0x00baab1c]
005a4bfa  f30f5cc8                  SUBSS XMM1,XMM0
005a4bfe  0f2fd9                    COMISS XMM3,XMM1
005a4c01  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a4c09  f30f118f80030000          MOVSS dword ptr [EDI + 0x380],XMM1
005a4c11  7607                      JBE 0x005a4c1a
005a4c13  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
005a4c1a  0f2eda                    UCOMISS XMM3,XMM2
005a4c1d  9f                        LAHF
005a4c1e  f6c444                    TEST AH,0x44
005a4c21  7a32                      JP 0x005a4c55
005a4c23  68d81bb800                PUSH 0xb81bd8
005a4c28  6a10                      PUSH 0x10
005a4c2a  e891c64600                CALL 0x00a112c0
005a4c2f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a4c37  83c408                    ADD ESP,0x8
005a4c3a  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
005a4c42  0f57db                    XORPS XMM3,XMM3
005a4c45  f30f109558ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff58]
005a4c4d  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
005a4c55  f30f5ccb                  SUBSS XMM1,XMM3
005a4c59  0f57c0                    XORPS XMM0,XMM0
005a4c5c  f30f5cd3                  SUBSS XMM2,XMM3
005a4c60  f30f5eca                  DIVSS XMM1,XMM2
005a4c64  f30f5fcb                  MAXSS XMM1,XMM3
005a4c68  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
005a4c70  f30f58c9                  ADDSS XMM1,XMM1
005a4c74  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
005a4c7c  f30f2cc1                  CVTTSS2SI EAX,XMM1
005a4c80  f30f118f4c010000          MOVSS dword ptr [EDI + 0x14c],XMM1
005a4c88  018710040000              ADD dword ptr [EDI + 0x410],EAX
005a4c8e  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
005a4c91  69c11d230000              IMUL EAX,ECX,0x231d
005a4c97  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a4c9f  038710040000              ADD EAX,dword ptr [EDI + 0x410]
005a4ca5  f20f2ac0                  CVTSI2SD XMM0,EAX
005a4ca9  c1e81f                    SHR EAX,0x1f
005a4cac  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a4cb5  660f5ac0                  CVTPD2PS XMM0,XMM0
005a4cb9  f30f5e05d4aaba00          DIVSS XMM0,dword ptr [0x00baaad4]
005a4cc1  f6c101                    TEST CL,0x1
005a4cc4  7508                      JNZ 0x005a4cce
005a4cc6  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
005a4cce  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
005a4cd6  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
005a4cde  e85d88e7ff                CALL 0x0041d540
005a4ce3  f30f590534a1ba00          MULSS XMM0,dword ptr [0x00baa134]
005a4ceb  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
005a4cf3  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
005a4cfb  e82088e7ff                CALL 0x0041d520
005a4d00  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
005a4d08  0f28e0                    MOVAPS XMM4,XMM0
005a4d0b  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
005a4d12  f30f592534a1ba00          MULSS XMM4,dword ptr [0x00baa134]
005a4d1a  f30f109d4cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff4c]
005a4d22  f30f599d60ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff60]
005a4d2a  f30f59a560ffffff          MULSS XMM4,dword ptr [EBP + 0xffffff60]
005a4d32  9f                        LAHF
005a4d33  f6c444                    TEST AH,0x44
005a4d36  7b3b                      JNP 0x005a4d73
005a4d38  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005a4d40  0f28c1                    MOVAPS XMM0,XMM1
005a4d43  f30f59cc                  MULSS XMM1,XMM4
005a4d47  f30f59c3                  MULSS XMM0,XMM3
005a4d4b  f30f5eca                  DIVSS XMM1,XMM2
005a4d4f  f30f5ec2                  DIVSS XMM0,XMM2
005a4d53  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005a4d5b  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005a4d63  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005a4d6b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a4d73  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
005a4d76  8bcf                      MOV ECX,EDI
005a4d78  50                        PUSH EAX
005a4d79  6a78                      PUSH 0x78
005a4d7b  e890791000                CALL 0x006ac710
005a4d80  84c0                      TEST AL,AL
005a4d82  7422                      JZ 0x005a4da6
005a4d84  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
005a4d8a  50                        PUSH EAX
005a4d8b  e8e0a20d00                CALL 0x0067f070
005a4d90  8bc8                      MOV ECX,EAX
005a4d92  83c404                    ADD ESP,0x4
005a4d95  8b01                      MOV EAX,dword ptr [ECX]
005a4d97  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
005a4d9d  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
005a4da0  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
005a4da6  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
005a4dae  0f2e25e49fba00            UCOMISS XMM4,dword ptr [0x00ba9fe4]
005a4db5  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
005a4dbd  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
005a4dc5  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
005a4dcd  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
005a4dd5  f30f599560ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff60]
005a4ddd  f30f599d60ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff60]
005a4de5  9f                        LAHF
005a4de6  f6c444                    TEST AH,0x44
005a4de9  7b3b                      JNP 0x005a4e26
005a4deb  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005a4df3  0f28c1                    MOVAPS XMM0,XMM1
005a4df6  f30f59cb                  MULSS XMM1,XMM3
005a4dfa  f30f59c2                  MULSS XMM0,XMM2
005a4dfe  f30f5ecc                  DIVSS XMM1,XMM4
005a4e02  f30f5ec4                  DIVSS XMM0,XMM4
005a4e06  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005a4e0e  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005a4e16  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005a4e1e  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a4e26  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005a4e2d  0f84a40a0000              JZ 0x005a58d7
005a4e33  f30f108f9c010000          MOVSS XMM1,dword ptr [EDI + 0x19c]
005a4e3b  f30f1097a0010000          MOVSS XMM2,dword ptr [EDI + 0x1a0]
005a4e43  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
005a4e4a  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
005a4e51  f30f590d04a8ba00          MULSS XMM1,dword ptr [0x00baa804]
005a4e59  f30f591504a8ba00          MULSS XMM2,dword ptr [0x00baa804]
005a4e61  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
005a4e69  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
005a4e71  e8eaa01400                CALL 0x006eef60
005a4e76  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
005a4e7e  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
005a4e86  f30f109d64ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff64]
005a4e8e  660f6ec0                  MOVD XMM0,EAX
005a4e92  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a4e96  c1e81f                    SHR EAX,0x1f
005a4e99  0f2e25e49fba00            UCOMISS XMM4,dword ptr [0x00ba9fe4]
005a4ea0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a4ea9  9f                        LAHF
005a4eaa  660f5ac0                  CVTPD2PS XMM0,XMM0
005a4eae  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a4eb6  f30f59d0                  MULSS XMM2,XMM0
005a4eba  f30f59d8                  MULSS XMM3,XMM0
005a4ebe  f6c444                    TEST AH,0x44
005a4ec1  0f8b100a0000              JNP 0x005a58d7
005a4ec7  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005a4ecf  0f28c1                    MOVAPS XMM0,XMM1
005a4ed2  f30f59cb                  MULSS XMM1,XMM3
005a4ed6  f30f59c2                  MULSS XMM0,XMM2
005a4eda  f30f5ecc                  DIVSS XMM1,XMM4
005a4ede  f30f5ec4                  DIVSS XMM0,XMM4
005a4ee2  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005a4eea  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005a4ef2  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005a4efa  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a4f02  e9d0090000                JMP 0x005a58d7
005a4f07  f30f590dbcaaba00          MULSS XMM1,dword ptr [0x00baaabc]
005a4f0f  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
005a4f17  0f2fc1                    COMISS XMM0,XMM1
005a4f1a  7663                      JBE 0x005a4f7f
005a4f1c  6a00                      PUSH 0x0
005a4f1e  68b827b600                PUSH 0xb627b8
005a4f23  8d4f48                    LEA ECX,[EDI + 0x48]
005a4f26  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005a4f30  e84b54e6ff                CALL 0x0040a380
005a4f35  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a4f3b  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
005a4f41  c78564ffffff0c010000      MOV dword ptr [EBP + 0xffffff64],0x10c
005a4f4b  e830183b00                CALL 0x00956780
005a4f50  83ec08                    SUB ESP,0x8
005a4f53  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a4f59  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a4f61  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a4f68  6a00                      PUSH 0x0
005a4f6a  6a02                      PUSH 0x2
005a4f6c  51                        PUSH ECX
005a4f6d  c704243333333f            MOV dword ptr [ESP],0x3f333333
005a4f74  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
005a4f7a  e8b18c3800                CALL 0x0092dc30
005a4f7f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a4f87  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005a4f8f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a4f97  e93b090000                JMP 0x005a58d7
005a4f9c  f30f590d50a9ba00          MULSS XMM1,dword ptr [0x00baa950]
005a4fa4  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
005a4fac  0f2fc1                    COMISS XMM0,XMM1
005a4faf  0f8690000000              JBE 0x005a5045
005a4fb5  8d4748                    LEA EAX,[EDI + 0x48]
005a4fb8  f30f1015b8a7ba00          MOVSS XMM2,dword ptr [0x00baa7b8]
005a4fc0  39777c                    CMP dword ptr [EDI + 0x7c],ESI
005a4fc3  750a                      JNZ 0x005a4fcf
005a4fc5  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
005a4fcd  eb0d                      JMP 0x005a4fdc
005a4fcf  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
005a4fd7  0f2fd1                    COMISS XMM2,XMM1
005a4fda  762c                      JBE 0x005a5008
005a4fdc  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005a4fe4  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
005a4fec  f30f58c1                  ADDSS XMM0,XMM1
005a4ff0  0f2fc2                    COMISS XMM0,XMM2
005a4ff3  7213                      JC 0x005a5008
005a4ff5  68d427b600                PUSH 0xb627d4
005a4ffa  8bc8                      MOV ECX,EAX
005a4ffc  e8cf54e6ff                CALL 0x0040a4d0
005a5001  84c0                      TEST AL,AL
005a5003  7513                      JNZ 0x005a5018
005a5005  8d4748                    LEA EAX,[EDI + 0x48]
005a5008  68ac27b600                PUSH 0xb627ac
005a500d  8bc8                      MOV ECX,EAX
005a500f  e8bc54e6ff                CALL 0x0040a4d0
005a5014  84c0                      TEST AL,AL
005a5016  7427                      JZ 0x005a503f
005a5018  6a00                      PUSH 0x0
005a501a  680428b600                PUSH 0xb62804
005a501f  8d4f48                    LEA ECX,[EDI + 0x48]
005a5022  e85953e6ff                CALL 0x0040a380
005a5027  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005a502f  f30f5e8560ffffff          DIVSS XMM0,dword ptr [EBP + 0xffffff60]
005a5037  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
005a503f  8ab55fffffff              MOV DH,byte ptr [EBP + 0xffffff5f]
005a5045  39777c                    CMP dword ptr [EDI + 0x7c],ESI
005a5048  0f84fd000000              JZ 0x005a514b
005a504e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a5055  0f85f0000000              JNZ 0x005a514b
005a505b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a505e  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a5062  7202                      JC 0x005a5066
005a5064  8b00                      MOV EAX,dword ptr [EAX]
005a5066  b90428b600                MOV ECX,0xb62804
005a506b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005a5070  8a10                      MOV DL,byte ptr [EAX]
005a5072  3a11                      CMP DL,byte ptr [ECX]
005a5074  751a                      JNZ 0x005a5090
005a5076  84d2                      TEST DL,DL
005a5078  7412                      JZ 0x005a508c
005a507a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a507d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a5080  750e                      JNZ 0x005a5090
005a5082  83c002                    ADD EAX,0x2
005a5085  83c102                    ADD ECX,0x2
005a5088  84d2                      TEST DL,DL
005a508a  75e4                      JNZ 0x005a5070
005a508c  33c0                      XOR EAX,EAX
005a508e  eb05                      JMP 0x005a5095
005a5090  1bc0                      SBB EAX,EAX
005a5092  83c801                    OR EAX,0x1
005a5095  85c0                      TEST EAX,EAX
005a5097  0f85ae000000              JNZ 0x005a514b
005a509d  8975e8                    MOV dword ptr [EBP + -0x18],ESI
005a50a0  8d45c0                    LEA EAX,[EBP + -0x40]
005a50a3  33f6                      XOR ESI,ESI
005a50a5  c745e00000003f            MOV dword ptr [EBP + -0x20],0x3f000000
005a50ac  56                        PUSH ESI
005a50ad  56                        PUSH ESI
005a50ae  6a04                      PUSH 0x4
005a50b0  6a01                      PUSH 0x1
005a50b2  51                        PUSH ECX
005a50b3  c704246666e63f            MOV dword ptr [ESP],0x3fe66666
005a50ba  0f57c0                    XORPS XMM0,XMM0
005a50bd  57                        PUSH EDI
005a50be  50                        PUSH EAX
005a50bf  83ec10                    SUB ESP,0x10
005a50c2  c745e40000803e            MOV dword ptr [EBP + -0x1c],0x3e800000
005a50c9  8bc4                      MOV EAX,ESP
005a50cb  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
005a50cf  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
005a50d6  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
005a50da  51                        PUSH ECX
005a50db  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a50e1  8930                      MOV dword ptr [EAX],ESI
005a50e3  897004                    MOV dword ptr [EAX + 0x4],ESI
005a50e6  897008                    MOV dword ptr [EAX + 0x8],ESI
005a50e9  89700c                    MOV dword ptr [EAX + 0xc],ESI
005a50ec  8d873c030000              LEA EAX,[EDI + 0x33c]
005a50f2  c7042400002042            MOV dword ptr [ESP],0x42200000
005a50f9  50                        PUSH EAX
005a50fa  e861af1500                CALL 0x00700060
005a50ff  837f3001                  CMP dword ptr [EDI + 0x30],0x1
005a5103  750a                      JNZ 0x005a510f
005a5105  e8569e1400                CALL 0x006eef60
005a510a  8bf0                      MOV ESI,EAX
005a510c  83e601                    AND ESI,0x1
005a510f  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
005a5115  e85620e6ff                CALL 0x00407170
005a511a  6a00                      PUSH 0x0
005a511c  51                        PUSH ECX
005a511d  c704240050c347            MOV dword ptr [ESP],0x47c35000
005a5124  50                        PUSH EAX
005a5125  51                        PUSH ECX
005a5126  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a512c  8d873c030000              LEA EAX,[EDI + 0x33c]
005a5132  c7042400002041            MOV dword ptr [ESP],0x41200000
005a5139  6a06                      PUSH 0x6
005a513b  6a5f                      PUSH 0x5f
005a513d  50                        PUSH EAX
005a513e  e8ede11500                CALL 0x00703330
005a5143  b601                      MOV DH,0x1
005a5145  88b55fffffff              MOV byte ptr [EBP + 0xffffff5f],DH
005a514b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a5153  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005a515b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a5163  85f6                      TEST ESI,ESI
005a5165  0f84c2000000              JZ 0x005a522d
005a516b  8d873c030000              LEA EAX,[EDI + 0x33c]
005a5171  8bf8                      MOV EDI,EAX
005a5173  e8e89d1400                CALL 0x006eef60
005a5178  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a517e  50                        PUSH EAX
005a517f  6a00                      PUSH 0x0
005a5181  6a00                      PUSH 0x0
005a5183  6840b6c700                PUSH 0xc7b640
005a5188  57                        PUSH EDI
005a5189  6a14                      PUSH 0x14
005a518b  6a05                      PUSH 0x5
005a518d  e88e39e8ff                CALL 0x00428b20
005a5192  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
005a5198  85c0                      TEST EAX,EAX
005a519a  0f8478000000              JZ 0x005a5218
005a51a0  e8bb9d1400                CALL 0x006eef60
005a51a5  0f57c0                    XORPS XMM0,XMM0
005a51a8  f20f2ac0                  CVTSI2SD XMM0,EAX
005a51ac  c1e81f                    SHR EAX,0x1f
005a51af  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a51b8  660f5ac0                  CVTPD2PS XMM0,XMM0
005a51bc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a51c4  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005a51cc  f30f58c0                  ADDSS XMM0,XMM0
005a51d0  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
005a51d8  e84383e7ff                CALL 0x0041d520
005a51dd  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
005a51e5  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
005a51ed  e84e83e7ff                CALL 0x0041d540
005a51f2  f30f108d64ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff64]
005a51fa  f30f58c0                  ADDSS XMM0,XMM0
005a51fe  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
005a5204  f30f58c9                  ADDSS XMM1,XMM1
005a5208  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
005a5210  f30f118864030000          MOVSS dword ptr [EAX + 0x364],XMM1
005a5218  83ee01                    SUB ESI,0x1
005a521b  0f8552ffffff              JNZ 0x005a5173
005a5221  8bbd50ffffff              MOV EDI,dword ptr [EBP + 0xffffff50]
005a5227  8ab55fffffff              MOV DH,byte ptr [EBP + 0xffffff5f]
005a522d  84f6                      TEST DH,DH
005a522f  0f84a2060000              JZ 0x005a58d7
005a5235  e98c080000                JMP 0x005a5ac6
005a523a  f30f590d44aaba00          MULSS XMM1,dword ptr [0x00baaa44]
005a5242  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
005a524a  0f2fc1                    COMISS XMM0,XMM1
005a524d  0f862cfdffff              JBE 0x005a4f7f
005a5253  f30f1015b8a7ba00          MOVSS XMM2,dword ptr [0x00baa7b8]
005a525b  39777c                    CMP dword ptr [EDI + 0x7c],ESI
005a525e  750a                      JNZ 0x005a526a
005a5260  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
005a5268  eb11                      JMP 0x005a527b
005a526a  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
005a5272  0f2fd1                    COMISS XMM2,XMM1
005a5275  0f8604fdffff              JBE 0x005a4f7f
005a527b  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005a5283  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
005a528b  f30f58c1                  ADDSS XMM0,XMM1
005a528f  0f2fc2                    COMISS XMM0,XMM2
005a5292  0f82e7fcffff              JC 0x005a4f7f
005a5298  68c427b600                PUSH 0xb627c4
005a529d  8d4f48                    LEA ECX,[EDI + 0x48]
005a52a0  e82b52e6ff                CALL 0x0040a4d0
005a52a5  84c0                      TEST AL,AL
005a52a7  0f84d2fcffff              JZ 0x005a4f7f
005a52ad  6a00                      PUSH 0x0
005a52af  68f827b600                PUSH 0xb627f8
005a52b4  e96afcffff                JMP 0x005a4f23
005a52b9  83f804                    CMP EAX,0x4
005a52bc  0f8515060000              JNZ 0x005a58d7
005a52c2  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005a52c5  83e801                    SUB EAX,0x1
005a52c8  0f8427030000              JZ 0x005a55f5
005a52ce  83e802                    SUB EAX,0x2
005a52d1  0f8500060000              JNZ 0x005a58d7
005a52d7  68f827b600                PUSH 0xb627f8
005a52dc  8d4f48                    LEA ECX,[EDI + 0x48]
005a52df  898788010000              MOV dword ptr [EDI + 0x188],EAX
005a52e5  898784010000              MOV dword ptr [EDI + 0x184],EAX
005a52eb  e8e051e6ff                CALL 0x0040a4d0
005a52f0  84c0                      TEST AL,AL
005a52f2  0f85ca020000              JNZ 0x005a55c2
005a52f8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a52fc  0f84c0020000              JZ 0x005a55c2
005a5302  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005a5308  0f84b4020000              JZ 0x005a55c2
005a530e  68e427b600                PUSH 0xb627e4
005a5313  8d4f48                    LEA ECX,[EDI + 0x48]
005a5316  e8b551e6ff                CALL 0x0040a4d0
005a531b  84c0                      TEST AL,AL
005a531d  0f84b4050000              JZ 0x005a58d7
005a5323  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a5329  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005a532f  6a00                      PUSH 0x0
005a5331  6a00                      PUSH 0x0
005a5333  6aff                      PUSH -0x1
005a5335  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005a533b  6aff                      PUSH -0x1
005a533d  6896010000                PUSH 0x196
005a5342  81c118120000              ADD ECX,0x1218
005a5348  50                        PUSH EAX
005a5349  e8125ce7ff                CALL 0x0041af60
005a534e  6a00                      PUSH 0x0
005a5350  68acd6c500                PUSH 0xc5d6ac
005a5355  68dcd5c500                PUSH 0xc5d5dc
005a535a  6a00                      PUSH 0x0
005a535c  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
005a5360  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
005a5366  ffb740030000              PUSH dword ptr [EDI + 0x340]
005a536c  ffb73c030000              PUSH dword ptr [EDI + 0x33c]
005a5372  6a00                      PUSH 0x0
005a5374  e8f792f1ff                CALL 0x004be670
005a5379  50                        PUSH EAX
005a537a  e832b55400                CALL 0x00af08b1
005a537f  8bf0                      MOV ESI,EAX
005a5381  83c414                    ADD ESP,0x14
005a5384  85f6                      TEST ESI,ESI
005a5386  0f841f020000              JZ 0x005a55ab
005a538c  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
005a5394  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005a539c  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
005a53a4  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
005a53ac  0f28c1                    MOVAPS XMM0,XMM1
005a53af  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a53b7  f30f59c1                  MULSS XMM0,XMM1
005a53bb  0f28ca                    MOVAPS XMM1,XMM2
005a53be  f30f119558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM2
005a53c6  f30f59ca                  MULSS XMM1,XMM2
005a53ca  f30f58c1                  ADDSS XMM0,XMM1
005a53ce  e87d06e9ff                CALL 0x00435a50
005a53d3  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005a53da  7633                      JBE 0x005a540f
005a53dc  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
005a53e4  f30f5ec8                  DIVSS XMM1,XMM0
005a53e8  0f28c1                    MOVAPS XMM0,XMM1
005a53eb  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
005a53f3  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
005a53fb  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
005a5403  f30f59c1                  MULSS XMM0,XMM1
005a5407  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
005a540f  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005a5417  f30f109560ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff60]
005a541f  f30f108d58ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff58]
005a5427  f30f59d0                  MULSS XMM2,XMM0
005a542b  f30f59c8                  MULSS XMM1,XMM0
005a542f  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
005a5437  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005a543f  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
005a5447  f30f59d2                  MULSS XMM2,XMM2
005a544b  f30f59c9                  MULSS XMM1,XMM1
005a544f  f30f58ca                  ADDSS XMM1,XMM2
005a5453  0f28c1                    MOVAPS XMM0,XMM1
005a5456  e8f505e9ff                CALL 0x00435a50
005a545b  f30f108d58ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff58]
005a5463  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
005a546b  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
005a5473  f30f59c0                  MULSS XMM0,XMM0
005a5477  f30f59c9                  MULSS XMM1,XMM1
005a547b  f30f58c1                  ADDSS XMM0,XMM1
005a547f  e8cc05e9ff                CALL 0x00435a50
005a5484  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005a548b  7634                      JBE 0x005a54c1
005a548d  f30f108d50ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff50]
005a5495  f30f5ec8                  DIVSS XMM1,XMM0
005a5499  0f28c1                    MOVAPS XMM0,XMM1
005a549c  f30f598d58ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff58]
005a54a4  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
005a54ac  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
005a54b4  0f28c1                    MOVAPS XMM0,XMM1
005a54b7  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
005a54bf  eb08                      JMP 0x005a54c9
005a54c1  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
005a54c9  f30f109560ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff60]
005a54d1  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005a54d9  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
005a54e1  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005a54e9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a54f1  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005a54f9  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005a5501  f30f59c0                  MULSS XMM0,XMM0
005a5505  f30f59c9                  MULSS XMM1,XMM1
005a5509  f30f58c1                  ADDSS XMM0,XMM1
005a550d  e83e05e9ff                CALL 0x00435a50
005a5512  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
005a551a  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
005a5522  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
005a552a  f30f59c0                  MULSS XMM0,XMM0
005a552e  f30f59c9                  MULSS XMM1,XMM1
005a5532  f30f58c1                  ADDSS XMM0,XMM1
005a5536  e81505e9ff                CALL 0x00435a50
005a553b  0f2f8550ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff50]
005a5542  7714                      JA 0x005a5558
005a5544  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
005a554a  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005a554e  e85d20e7ff                CALL 0x004175b0
005a5553  e97f030000                JMP 0x005a58d7
005a5558  6a03                      PUSH 0x3
005a555a  8bce                      MOV ECX,ESI
005a555c  e83f8dffff                CALL 0x0059e2a0
005a5561  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a5567  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
005a556d  c78564ffffffea000000      MOV dword ptr [EBP + 0xffffff64],0xea
005a5577  e804123b00                CALL 0x00956780
005a557c  83ec08                    SUB ESP,0x8
005a557f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a5585  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a558d  c704246666663f            MOV dword ptr [ESP],0x3f666666
005a5594  6a00                      PUSH 0x0
005a5596  6a02                      PUSH 0x2
005a5598  51                        PUSH ECX
005a5599  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a55a0  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
005a55a6  e885863800                CALL 0x0092dc30
005a55ab  8b07                      MOV EAX,dword ptr [EDI]
005a55ad  8bcf                      MOV ECX,EDI
005a55af  ff5028                    CALL dword ptr [EAX + 0x28]
005a55b2  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
005a55b8  e8f31fe7ff                CALL 0x004175b0
005a55bd  e90b050000                JMP 0x005a5acd
005a55c2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a55ca  f30f59c2                  MULSS XMM0,XMM2
005a55ce  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a55d6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a55da  740d                      JZ 0x005a55e9
005a55dc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a55e3  0f85ee020000              JNZ 0x005a58d7
005a55e9  6a00                      PUSH 0x0
005a55eb  68e427b600                PUSH 0xb627e4
005a55f0  e9ba020000                JMP 0x005a58af
005a55f5  68b827b600                PUSH 0xb627b8
005a55fa  8d4f48                    LEA ECX,[EDI + 0x48]
005a55fd  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005a5607  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
005a5611  e8ba4ee6ff                CALL 0x0040a4d0
005a5616  84c0                      TEST AL,AL
005a5618  0f8567020000              JNZ 0x005a5885
005a561e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a5622  0f845d020000              JZ 0x005a5885
005a5628  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005a562e  0f8451020000              JZ 0x005a5885
005a5634  68f027b600                PUSH 0xb627f0
005a5639  8d4f48                    LEA ECX,[EDI + 0x48]
005a563c  e88f4ee6ff                CALL 0x0040a4d0
005a5641  84c0                      TEST AL,AL
005a5643  0f848e020000              JZ 0x005a58d7
005a5649  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a564f  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005a5655  6a00                      PUSH 0x0
005a5657  6a00                      PUSH 0x0
005a5659  6aff                      PUSH -0x1
005a565b  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005a5661  6aff                      PUSH -0x1
005a5663  6826010000                PUSH 0x126
005a5668  81c118120000              ADD ECX,0x1218
005a566e  50                        PUSH EAX
005a566f  e8ec58e7ff                CALL 0x0041af60
005a5674  33c0                      XOR EAX,EAX
005a5676  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
005a567a  33f6                      XOR ESI,ESI
005a567c  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
005a5682  398548ffffff              CMP dword ptr [EBP + 0xffffff48],EAX
005a5688  0f86e0010000              JBE 0x005a586e
005a568e  6690                      NOP
005a5690  8b8d40ffffff              MOV ECX,dword ptr [EBP + 0xffffff40]
005a5696  6a00                      PUSH 0x0
005a5698  68acd6c500                PUSH 0xc5d6ac
005a569d  68dcd5c500                PUSH 0xc5d5dc
005a56a2  6a00                      PUSH 0x0
005a56a4  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
005a56a7  e805b25400                CALL 0x00af08b1
005a56ac  83c414                    ADD ESP,0x14
005a56af  85c0                      TEST EAX,EAX
005a56b1  740f                      JZ 0x005a56c2
005a56b3  8b88c00b0000              MOV ECX,dword ptr [EAX + 0xbc0]
005a56b9  3b8fc00b0000              CMP ECX,dword ptr [EDI + 0xbc0]
005a56bf  0f44f0                    CMOVZ ESI,EAX
005a56c2  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
005a56c8  40                        INC EAX
005a56c9  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
005a56cf  3b8548ffffff              CMP EAX,dword ptr [EBP + 0xffffff48]
005a56d5  72b9                      JC 0x005a5690
005a56d7  85f6                      TEST ESI,ESI
005a56d9  0f848f010000              JZ 0x005a586e
005a56df  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
005a56e7  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005a56ef  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
005a56f7  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005a56ff  0f28c1                    MOVAPS XMM0,XMM1
005a5702  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a570a  f30f59c1                  MULSS XMM0,XMM1
005a570e  0f28ca                    MOVAPS XMM1,XMM2
005a5711  f30f119558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM2
005a5719  f30f59ca                  MULSS XMM1,XMM2
005a571d  f30f58c1                  ADDSS XMM0,XMM1
005a5721  e82a03e9ff                CALL 0x00435a50
005a5726  f30f109558ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff58]
005a572e  0f28c8                    MOVAPS XMM1,XMM0
005a5731  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
005a5738  761e                      JBE 0x005a5758
005a573a  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
005a5742  f30f5ec1                  DIVSS XMM0,XMM1
005a5746  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
005a574e  f30f59d0                  MULSS XMM2,XMM0
005a5752  f30f59c8                  MULSS XMM1,XMM0
005a5756  eb08                      JMP 0x005a5760
005a5758  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
005a5760  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005a5768  f30f59c8                  MULSS XMM1,XMM0
005a576c  f30f59d0                  MULSS XMM2,XMM0
005a5770  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005a5778  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
005a5780  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005a5788  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
005a5790  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
005a5798  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005a57a0  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a57a8  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005a57b0  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005a57b8  f30f119558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM2
005a57c0  f30f59c0                  MULSS XMM0,XMM0
005a57c4  f30f59c9                  MULSS XMM1,XMM1
005a57c8  f30f58c1                  ADDSS XMM0,XMM1
005a57cc  e87f02e9ff                CALL 0x00435a50
005a57d1  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
005a57d9  f30f109558ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff58]
005a57e1  f30f59c9                  MULSS XMM1,XMM1
005a57e5  f30f59d2                  MULSS XMM2,XMM2
005a57e9  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
005a57f1  f30f58ca                  ADDSS XMM1,XMM2
005a57f5  0f28c1                    MOVAPS XMM0,XMM1
005a57f8  e85302e9ff                CALL 0x00435a50
005a57fd  0f2f8550ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff50]
005a5804  7714                      JA 0x005a581a
005a5806  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
005a580c  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005a5810  e89b1de7ff                CALL 0x004175b0
005a5815  e9bd000000                JMP 0x005a58d7
005a581a  c786640b00000d000000      MOV dword ptr [ESI + 0xb64],0xd
005a5824  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
005a582a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a5830  c78564ffffff9c000000      MOV dword ptr [EBP + 0xffffff64],0x9c
005a583a  e8410f3b00                CALL 0x00956780
005a583f  83ec08                    SUB ESP,0x8
005a5842  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a5848  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a5850  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a5857  6a00                      PUSH 0x0
005a5859  6a02                      PUSH 0x2
005a585b  51                        PUSH ECX
005a585c  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a5863  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
005a5869  e8c2833800                CALL 0x0092dc30
005a586e  8b07                      MOV EAX,dword ptr [EDI]
005a5870  8bcf                      MOV ECX,EDI
005a5872  ff5028                    CALL dword ptr [EAX + 0x28]
005a5875  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
005a587b  e8301de7ff                CALL 0x004175b0
005a5880  e948020000                JMP 0x005a5acd
005a5885  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a588d  f30f59c2                  MULSS XMM0,XMM2
005a5891  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a5899  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a589d  7409                      JZ 0x005a58a8
005a589f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a58a6  752f                      JNZ 0x005a58d7
005a58a8  6a00                      PUSH 0x0
005a58aa  68f027b600                PUSH 0xb627f0
005a58af  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a58b7  8d4f48                    LEA ECX,[EDI + 0x48]
005a58ba  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a58c2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a58ca  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005a58d2  e8a94ae6ff                CALL 0x0040a380
005a58d7  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005a58de  0f84b2010000              JZ 0x005a5a96
005a58e4  e877961400                CALL 0x006eef60
005a58e9  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a58ef  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
005a58f5  c78564ffffffab010000      MOV dword ptr [EBP + 0xffffff64],0x1ab
005a58ff  660f6ec0                  MOVD XMM0,EAX
005a5903  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005a5907  c1e81f                    SHR EAX,0x1f
005a590a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005a5913  660f5ac0                  CVTPD2PS XMM0,XMM0
005a5917  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005a591f  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
005a5927  f30f5805b0a4ba00          ADDSS XMM0,dword ptr [0x00baa4b0]
005a592f  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
005a5937  e8440e3b00                CALL 0x00956780
005a593c  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
005a5944  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a594a  83ec08                    SUB ESP,0x8
005a594d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a5955  f30f110424                MOVSS dword ptr [ESP],XMM0
005a595a  6a00                      PUSH 0x0
005a595c  6a1e                      PUSH 0x1e
005a595e  51                        PUSH ECX
005a595f  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a5966  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
005a596c  e8bf823800                CALL 0x0092dc30
005a5971  8bcf                      MOV ECX,EDI
005a5973  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
005a597a  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005a5984  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
005a598e  e89d8c1000                CALL 0x006ae630
005a5993  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005a5999  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
005a59a0  838f6801000001            OR dword ptr [EDI + 0x168],0x1
005a59a7  6a00                      PUSH 0x0
005a59a9  51                        PUSH ECX
005a59aa  c704240050c347            MOV dword ptr [ESP],0x47c35000
005a59b1  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005a59b7  8d4594                    LEA EAX,[EBP + -0x6c]
005a59ba  50                        PUSH EAX
005a59bb  51                        PUSH ECX
005a59bc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a59c2  8d873c030000              LEA EAX,[EDI + 0x33c]
005a59c8  c704240000a040            MOV dword ptr [ESP],0x40a00000
005a59cf  6a06                      PUSH 0x6
005a59d1  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
005a59d5  6a5f                      PUSH 0x5f
005a59d7  0f57c0                    XORPS XMM0,XMM0
005a59da  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
005a59e1  50                        PUSH EAX
005a59e2  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
005a59e6  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
005a59ed  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
005a59f4  e837d91500                CALL 0x00703330
005a59f9  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005a59fc  85f6                      TEST ESI,ESI
005a59fe  744b                      JZ 0x005a5a4b
005a5a00  837e1410                  CMP dword ptr [ESI + 0x14],0x10
005a5a04  8bc6                      MOV EAX,ESI
005a5a06  7202                      JC 0x005a5a0a
005a5a08  8b06                      MOV EAX,dword ptr [ESI]
005a5a0a  b92828b600                MOV ECX,0xb62828
005a5a0f  90                        NOP
005a5a10  8a10                      MOV DL,byte ptr [EAX]
005a5a12  3a11                      CMP DL,byte ptr [ECX]
005a5a14  751a                      JNZ 0x005a5a30
005a5a16  84d2                      TEST DL,DL
005a5a18  7412                      JZ 0x005a5a2c
005a5a1a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a5a1d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a5a20  750e                      JNZ 0x005a5a30
005a5a22  83c002                    ADD EAX,0x2
005a5a25  83c102                    ADD ECX,0x2
005a5a28  84d2                      TEST DL,DL
005a5a2a  75e4                      JNZ 0x005a5a10
005a5a2c  33c0                      XOR EAX,EAX
005a5a2e  eb05                      JMP 0x005a5a35
005a5a30  1bc0                      SBB EAX,EAX
005a5a32  83c801                    OR EAX,0x1
005a5a35  85c0                      TEST EAX,EAX
005a5a37  7512                      JNZ 0x005a5a4b
005a5a39  384634                    CMP byte ptr [ESI + 0x34],AL
005a5a3c  742e                      JZ 0x005a5a6c
005a5a3e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005a5a44  8d7748                    LEA ESI,[EDI + 0x48]
005a5a47  7523                      JNZ 0x005a5a6c
005a5a49  eb03                      JMP 0x005a5a4e
005a5a4b  8d7748                    LEA ESI,[EDI + 0x48]
005a5a4e  6a01                      PUSH 0x1
005a5a50  682828b600                PUSH 0xb62828
005a5a55  8bce                      MOV ECX,ESI
005a5a57  e8744be6ff                CALL 0x0040a5d0
005a5a5c  84c0                      TEST AL,AL
005a5a5e  740c                      JZ 0x005a5a6c
005a5a60  8d4e30                    LEA ECX,[ESI + 0x30]
005a5a63  e84847e6ff                CALL 0x0040a1b0
005a5a68  c6464401                  MOV byte ptr [ESI + 0x44],0x1
005a5a6c  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
005a5a76  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
005a5a80  c7875c03000000000000      MOV dword ptr [EDI + 0x35c],0x0
005a5a8a  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
005a5a94  eb09                      JMP 0x005a5a9f
005a5a96  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
005a5a9d  752e                      JNZ 0x005a5acd
005a5a9f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a5aa7  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
005a5aaf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a5ab7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a5abb  7409                      JZ 0x005a5ac6
005a5abd  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a5ac4  7507                      JNZ 0x005a5acd
005a5ac6  8b07                      MOV EAX,dword ptr [EDI]
005a5ac8  8bcf                      MOV ECX,EDI
005a5aca  ff5028                    CALL dword ptr [EAX + 0x28]
005a5acd  80bd2cffffff00            CMP byte ptr [EBP + 0xffffff2c],0x0
005a5ad4  753a                      JNZ 0x005a5b10
005a5ad6  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
005a5adc  85d2                      TEST EDX,EDX
005a5ade  7405                      JZ 0x005a5ae5
005a5ae0  83c230                    ADD EDX,0x30
005a5ae3  eb05                      JMP 0x005a5aea
005a5ae5  ba18f6c700                MOV EDX,0xc7f618
005a5aea  8b8530ffffff              MOV EAX,dword ptr [EBP + 0xffffff30]
005a5af0  85c0                      TEST EAX,EAX
005a5af2  741c                      JZ 0x005a5b10
005a5af4  8d48fc                    LEA ECX,[EAX + -0x4]
005a5af7  8b01                      MOV EAX,dword ptr [ECX]
005a5af9  2902                      SUB dword ptr [EDX],EAX
005a5afb  51                        PUSH ECX
005a5afc  835a0400                  SBB dword ptr [EDX + 0x4],0x0
005a5b00  ff15dc87b100              CALL dword ptr [0x00b187dc]
005a5b06  83c404                    ADD ESP,0x4
005a5b09  0f1f8000000000            NOP dword ptr [EAX]
005a5b10  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005a5b13  64890d00000000            MOV dword ptr FS:[0x0],ECX
005a5b1a  59                        POP ECX
005a5b1b  5f                        POP EDI
005a5b1c  5e                        POP ESI
005a5b1d  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
005a5b20  33cd                      XOR ECX,EBP
005a5b22  e804965400                CALL 0x00aef12b
005a5b27  8be5                      MOV ESP,EBP
005a5b29  5d                        POP EBP
005a5b2a  8be3                      MOV ESP,EBX
005a5b2c  5b                        POP EBX
005a5b2d  c3                        RET
