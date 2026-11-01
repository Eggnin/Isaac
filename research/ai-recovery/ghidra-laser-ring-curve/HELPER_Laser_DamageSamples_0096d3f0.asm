; J460 NPC AI 0x0096d3f0 HELPER_Laser_DamageSamples
; types=7
; identities=7.*
; entry=0096d3f0
0096d3f0  55                        PUSH EBP
0096d3f1  8bec                      MOV EBP,ESP
0096d3f3  83e4f0                    AND ESP,0xfffffff0
0096d3f6  81ec78010000              SUB ESP,0x178
0096d3fc  a1b493bf00                MOV EAX,[0x00bf93b4]
0096d401  33c4                      XOR EAX,ESP
0096d403  89842474010000            MOV dword ptr [ESP + 0x174],EAX
0096d40a  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0096d412  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0096d415  56                        PUSH ESI
0096d416  57                        PUSH EDI
0096d417  8bf9                      MOV EDI,ECX
0096d419  8944246c                  MOV dword ptr [ESP + 0x6c],EAX
0096d41d  897c241c                  MOV dword ptr [ESP + 0x1c],EDI
0096d421  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0096d427  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
0096d42d  85c9                      TEST ECX,ECX
0096d42f  740e                      JZ 0x0096d43f
0096d431  8b81c8030000              MOV EAX,dword ptr [ECX + 0x3c8]
0096d437  85c0                      TEST EAX,EAX
0096d439  7404                      JZ 0x0096d43f
0096d43b  8bc8                      MOV ECX,EAX
0096d43d  ebf2                      JMP 0x0096d431
0096d43f  6a00                      PUSH 0x0
0096d441  68dcd6c500                PUSH 0xc5d6dc
0096d446  68dcd5c500                PUSH 0xc5d5dc
0096d44b  6a00                      PUSH 0x0
0096d44d  51                        PUSH ECX
0096d44e  e85e341800                CALL 0x00af08b1
0096d453  83c414                    ADD ESP,0x14
0096d456  85c0                      TEST EAX,EAX
0096d458  746d                      JZ 0x0096d4c7
0096d45a  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0096d460  81c1d8b30400              ADD ECX,0x4b3d8
0096d466  8b11                      MOV EDX,dword ptr [ECX]
0096d468  3b5104                    CMP EDX,dword ptr [ECX + 0x4]
0096d46b  745a                      JZ 0x0096d4c7
0096d46d  ffb018160000              PUSH dword ptr [EAX + 0x1618]
0096d473  e888dcf9ff                CALL 0x0090b100
0096d478  84c0                      TEST AL,AL
0096d47a  754b                      JNZ 0x0096d4c7
0096d47c  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096d482  85f6                      TEST ESI,ESI
0096d484  7419                      JZ 0x0096d49f
0096d486  83be1466020002            CMP dword ptr [ESI + 0x26614],0x2
0096d48d  7c10                      JL 0x0096d49f
0096d48f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0096d497  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
0096d49d  eb2e                      JMP 0x0096d4cd
0096d49f  a19c16c700                MOV EAX,[0x00c7169c]
0096d4a4  660f6e80e8a30200          MOVD XMM0,dword ptr [EAX + 0x2a3e8]
0096d4ac  0f5bc0                    CVTDQ2PS XMM0,XMM0
0096d4af  f30f59050ca1ba00          MULSS XMM0,dword ptr [0x00baa10c]
0096d4b7  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
0096d4bf  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
0096d4c5  eb06                      JMP 0x0096d4cd
0096d4c7  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096d4cd  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0096d4d3  2305cc4bc300              AND EAX,dword ptr [0x00c34bcc]
0096d4d9  8b8f28040000              MOV ECX,dword ptr [EDI + 0x428]
0096d4df  8b9730040000              MOV EDX,dword ptr [EDI + 0x430]
0096d4e5  230dc04bc300              AND ECX,dword ptr [0x00c34bc0]
0096d4eb  2315c84bc300              AND EDX,dword ptr [0x00c34bc8]
0096d4f1  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
0096d4f9  f30f10251ca8ba00          MOVSS XMM4,dword ptr [0x00baa81c]
0096d501  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0096d505  8b872c040000              MOV EAX,dword ptr [EDI + 0x42c]
0096d50b  2305c44bc300              AND EAX,dword ptr [0x00c34bc4]
0096d511  0bc8                      OR ECX,EAX
0096d513  750a                      JNZ 0x0096d51f
0096d515  0b54242c                  OR EDX,dword ptr [ESP + 0x2c]
0096d519  0f84e70f0000              JZ 0x0096e506
0096d51f  80bf5c04000000            CMP byte ptr [EDI + 0x45c],0x0
0096d526  752a                      JNZ 0x0096d552
0096d528  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
0096d530  0f57d2                    XORPS XMM2,XMM2
0096d533  8bcf                      MOV ECX,EDI
0096d535  e826f2d3ff                CALL 0x006ac760
0096d53a  85c0                      TEST EAX,EAX
0096d53c  0f84c40f0000              JZ 0x0096e506
0096d542  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
0096d54a  f30f10251ca8ba00          MOVSS XMM4,dword ptr [0x00baa81c]
0096d552  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0096d555  f30f1015d0a8ba00          MOVSS XMM2,dword ptr [0x00baa8d0]
0096d55d  83f801                    CMP EAX,0x1
0096d560  740a                      JZ 0x0096d56c
0096d562  83f802                    CMP EAX,0x2
0096d565  7405                      JZ 0x0096d56c
0096d567  83f803                    CMP EAX,0x3
0096d56a  7524                      JNZ 0x0096d590
0096d56c  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
0096d574  83f801                    CMP EAX,0x1
0096d577  750a                      JNZ 0x0096d583
0096d579  0f2fc2                    COMISS XMM0,XMM2
0096d57c  7312                      JNC 0x0096d590
0096d57e  e9830f0000                JMP 0x0096e506
0096d583  0f2f0584a7ba00            COMISS XMM0,dword ptr [0x00baa784]
0096d58a  0f82760f0000              JC 0x0096e506
0096d590  f30f108fe0040000          MOVSS XMM1,dword ptr [EDI + 0x4e0]
0096d598  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0096d5a0  0f2fc1                    COMISS XMM0,XMM1
0096d5a3  760a                      JBE 0x0096d5af
0096d5a5  f30f59cb                  MULSS XMM1,XMM3
0096d5a9  f30f5fca                  MAXSS XMM1,XMM2
0096d5ad  eb12                      JMP 0x0096d5c1
0096d5af  0f28c1                    MOVAPS XMM0,XMM1
0096d5b2  0f28cb                    MOVAPS XMM1,XMM3
0096d5b5  f30f59c4                  MULSS XMM0,XMM4
0096d5b9  f30f58c2                  ADDSS XMM0,XMM2
0096d5bd  f30f5fc8                  MAXSS XMM1,XMM0
0096d5c1  0f28c1                    MOVAPS XMM0,XMM1
0096d5c4  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
0096d5c7  f30f5ec3                  DIVSS XMM0,XMM3
0096d5cb  8b4c246c                  MOV ECX,dword ptr [ESP + 0x6c]
0096d5cf  51                        PUSH ECX
0096d5d0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096d5d7  57                        PUSH EDI
0096d5d8  83ec10                    SUB ESP,0x10
0096d5db  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
0096d5e1  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0096d5e7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0096d5eb  f30f59c4                  MULSS XMM0,XMM4
0096d5ef  f30f5801                  ADDSS XMM0,dword ptr [ECX]
0096d5f3  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
0096d5f9  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0096d5fe  8bc4                      MOV EAX,ESP
0096d600  f30f59c4                  MULSS XMM0,XMM4
0096d604  51                        PUSH ECX
0096d605  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
0096d60a  8bce                      MOV ECX,ESI
0096d60c  f30f1144247c              MOVSS dword ptr [ESP + 0x7c],XMM0
0096d612  0f108728040000            MOVUPS XMM0,xmmword ptr [EDI + 0x428]
0096d619  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0096d61c  8d442478                  LEA EAX,[ESP + 0x78]
0096d620  f30f110c24                MOVSS dword ptr [ESP],XMM1
0096d625  50                        PUSH EAX
0096d626  e87533d9ff                CALL 0x007009a0
0096d62b  f30f108f88030000          MOVSS XMM1,dword ptr [EDI + 0x388]
0096d633  0f108728040000            MOVUPS XMM0,xmmword ptr [EDI + 0x428]
0096d63a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096d640  f30f58c9                  ADDSS XMM1,XMM1
0096d644  6a00                      PUSH 0x0
0096d646  6a00                      PUSH 0x0
0096d648  6a04                      PUSH 0x4
0096d64a  83ec10                    SUB ESP,0x10
0096d64d  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
0096d655  8bc4                      MOV EAX,ESP
0096d657  57                        PUSH EDI
0096d658  6a01                      PUSH 0x1
0096d65a  83ec08                    SUB ESP,0x8
0096d65d  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0096d660  8d842488000000            LEA EAX,[ESP + 0x88]
0096d667  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
0096d66d  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
0096d673  f30f110c24                MOVSS dword ptr [ESP],XMM1
0096d678  50                        PUSH EAX
0096d679  e8221cd9ff                CALL 0x006ff2a0
0096d67e  8b8f28040000              MOV ECX,dword ptr [EDI + 0x428]
0096d684  8b872c040000              MOV EAX,dword ptr [EDI + 0x42c]
0096d68a  8b9730040000              MOV EDX,dword ptr [EDI + 0x430]
0096d690  8bb734040000              MOV ESI,dword ptr [EDI + 0x434]
0096d696  230dd04bc300              AND ECX,dword ptr [0x00c34bd0]
0096d69c  2305d44bc300              AND EAX,dword ptr [0x00c34bd4]
0096d6a2  2315d84bc300              AND EDX,dword ptr [0x00c34bd8]
0096d6a8  2335dc4bc300              AND ESI,dword ptr [0x00c34bdc]
0096d6ae  0bc8                      OR ECX,EAX
0096d6b0  7508                      JNZ 0x0096d6ba
0096d6b2  0bd6                      OR EDX,ESI
0096d6b4  0f84370d0000              JZ 0x0096e3f1
0096d6ba  e8a118d8ff                CALL 0x006eef60
0096d6bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096d6c5  89442470                  MOV dword ptr [ESP + 0x70],EAX
0096d6c9  8d442470                  LEA EAX,[ESP + 0x70]
0096d6cd  50                        PUSH EAX
0096d6ce  8d44243c                  LEA EAX,[ESP + 0x3c]
0096d6d2  894c245c                  MOV dword ptr [ESP + 0x5c],ECX
0096d6d6  50                        PUSH EAX
0096d6d7  6a00                      PUSH 0x0
0096d6d9  6840b6c700                PUSH 0xc7b640
0096d6de  8d44246c                  LEA EAX,[ESP + 0x6c]
0096d6e2  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
0096d6ea  50                        PUSH EAX
0096d6eb  8d842490000000            LEA EAX,[ESP + 0x90]
0096d6f2  c784249000000007000000    MOV dword ptr [ESP + 0x90],0x7
0096d6fd  50                        PUSH EAX
0096d6fe  8d842490000000            LEA EAX,[ESP + 0x90]
0096d705  c7842490000000e8030000    MOV dword ptr [ESP + 0x90],0x3e8
0096d710  50                        PUSH EAX
0096d711  e8ca6fefff                CALL 0x008646e0
0096d716  a17816c700                MOV EAX,[0x00c71678]
0096d71b  8b7c247c                  MOV EDI,dword ptr [ESP + 0x7c]
0096d71f  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0096d726  0f8c64020000              JL 0x0096d990
0096d72c  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
0096d732  89442414                  MOV dword ptr [ESP + 0x14],EAX
0096d736  e82518d8ff                CALL 0x006eef60
0096d73b  837c247805                CMP dword ptr [ESP + 0x78],0x5
0096d740  8bf0                      MOV ESI,EAX
0096d742  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0096d74a  a174f6b100                MOV EAX,[0x00b1f674]
0096d74f  89742410                  MOV dword ptr [ESP + 0x10],ESI
0096d753  660fd68424b4000000        MOVQ qword ptr [ESP + 0xb4],XMM0
0096d75c  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0096d760  898424bc000000            MOV dword ptr [ESP + 0xbc],EAX
0096d767  0f8523020000              JNZ 0x0096d990
0096d76d  81ff2c010000              CMP EDI,0x12c
0096d773  0f87d8010000              JA 0x0096d951
0096d779  0f8428010000              JZ 0x0096d8a7
0096d77f  83ff46                    CMP EDI,0x46
0096d782  7479                      JZ 0x0096d7fd
0096d784  83ff64                    CMP EDI,0x64
0096d787  0f8503020000              JNZ 0x0096d990
0096d78d  8b7c2438                  MOV EDI,dword ptr [ESP + 0x38]
0096d791  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
0096d795  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0096d799  83ff19                    CMP EDI,0x19
0096d79c  7434                      JZ 0x0096d7d2
0096d79e  8d442464                  LEA EAX,[ESP + 0x64]
0096d7a2  897c2464                  MOV dword ptr [ESP + 0x64],EDI
0096d7a6  50                        PUSH EAX
0096d7a7  8d8424c4000000            LEA EAX,[ESP + 0xc4]
0096d7ae  8d4e20                    LEA ECX,[ESI + 0x20]
0096d7b1  50                        PUSH EAX
0096d7b2  e8e9b0abff                CALL 0x004288a0
0096d7b7  8b8424c8000000            MOV EAX,dword ptr [ESP + 0xc8]
0096d7be  80780d00                  CMP byte ptr [EAX + 0xd],0x0
0096d7c2  750a                      JNZ 0x0096d7ce
0096d7c4  3b7810                    CMP EDI,dword ptr [EAX + 0x10]
0096d7c7  7c05                      JL 0x0096d7ce
0096d7c9  3b4620                    CMP EAX,dword ptr [ESI + 0x20]
0096d7cc  7504                      JNZ 0x0096d7d2
0096d7ce  b001                      MOV AL,0x1
0096d7d0  eb02                      JMP 0x0096d7d4
0096d7d2  32c0                      XOR AL,AL
0096d7d4  85ff                      TEST EDI,EDI
0096d7d6  7408                      JZ 0x0096d7e0
0096d7d8  84c0                      TEST AL,AL
0096d7da  0f84b8010000              JZ 0x0096d998
0096d7e0  8b06                      MOV EAX,dword ptr [ESI]
0096d7e2  8bce                      MOV ECX,ESI
0096d7e4  6a00                      PUSH 0x0
0096d7e6  8b8084000000              MOV EAX,dword ptr [EAX + 0x84]
0096d7ec  ffd0                      CALL EAX
0096d7ee  8bf0                      MOV ESI,EAX
0096d7f0  89742418                  MOV dword ptr [ESP + 0x18],ESI
0096d7f4  89742438                  MOV dword ptr [ESP + 0x38],ESI
0096d7f8  e99b010000                JMP 0x0096d998
0096d7fd  8b7c2438                  MOV EDI,dword ptr [ESP + 0x38]
0096d801  8bc7                      MOV EAX,EDI
0096d803  c1e80b                    SHR EAX,0xb
0096d806  89442464                  MOV dword ptr [ESP + 0x64],EAX
0096d80a  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0096d80e  85ff                      TEST EDI,EDI
0096d810  7430                      JZ 0x0096d842
0096d812  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
0096d816  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096d81c  6a00                      PUSH 0x0
0096d81e  57                        PUSH EDI
0096d81f  8b00                      MOV EAX,dword ptr [EAX]
0096d821  8d8940a70100              LEA ECX,[ECX + 0x1a740]
0096d827  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
0096d82a  e85172dcff                CALL 0x00734a80
0096d82f  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
0096d833  50                        PUSH EAX
0096d834  ffd6                      CALL ESI
0096d836  84c0                      TEST AL,AL
0096d838  0f845a010000              JZ 0x0096d998
0096d83e  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
0096d842  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0096d848  85f6                      TEST ESI,ESI
0096d84a  7510                      JNZ 0x0096d85c
0096d84c  6854bfb600                PUSH 0xb6bf54
0096d851  6a10                      PUSH 0x10
0096d853  e8683a0a00                CALL 0x00a112c0
0096d858  83c408                    ADD ESP,0x8
0096d85b  cc                        INT3
0096d85c  8b8c24b4000000            MOV ECX,dword ptr [ESP + 0xb4]
0096d863  8bd6                      MOV EDX,ESI
0096d865  d3ea                      SHR EDX,CL
0096d867  8b8c24b8000000            MOV ECX,dword ptr [ESP + 0xb8]
0096d86e  33d6                      XOR EDX,ESI
0096d870  8bc2                      MOV EAX,EDX
0096d872  d3e0                      SHL EAX,CL
0096d874  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
0096d878  33c2                      XOR EAX,EDX
0096d87a  8bf0                      MOV ESI,EAX
0096d87c  d3ee                      SHR ESI,CL
0096d87e  8d8f40a70100              LEA ECX,[EDI + 0x1a740]
0096d884  33f0                      XOR ESI,EAX
0096d886  56                        PUSH ESI
0096d887  89742414                  MOV dword ptr [ESP + 0x14],ESI
0096d88b  e87070dcff                CALL 0x00734900
0096d890  8bf8                      MOV EDI,EAX
0096d892  8b442464                  MOV EAX,dword ptr [ESP + 0x64]
0096d896  83e001                    AND EAX,0x1
0096d899  c1e00b                    SHL EAX,0xb
0096d89c  0bf8                      OR EDI,EAX
0096d89e  897c2438                  MOV dword ptr [ESP + 0x38],EDI
0096d8a2  e963ffffff                JMP 0x0096d80a
0096d8a7  8b7c2438                  MOV EDI,dword ptr [ESP + 0x38]
0096d8ab  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0096d8af  85ff                      TEST EDI,EDI
0096d8b1  7414                      JZ 0x0096d8c7
0096d8b3  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
0096d8b7  57                        PUSH EDI
0096d8b8  8b01                      MOV EAX,dword ptr [ECX]
0096d8ba  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0096d8bd  ffd0                      CALL EAX
0096d8bf  84c0                      TEST AL,AL
0096d8c1  0f84d1000000              JZ 0x0096d998
0096d8c7  85f6                      TEST ESI,ESI
0096d8c9  7510                      JNZ 0x0096d8db
0096d8cb  6854bfb600                PUSH 0xb6bf54
0096d8d0  6a10                      PUSH 0x10
0096d8d2  e8e9390a00                CALL 0x00a112c0
0096d8d7  83c408                    ADD ESP,0x8
0096d8da  cc                        INT3
0096d8db  8b8c24b4000000            MOV ECX,dword ptr [ESP + 0xb4]
0096d8e2  8bc6                      MOV EAX,ESI
0096d8e4  d3e8                      SHR EAX,CL
0096d8e6  8b8c24b8000000            MOV ECX,dword ptr [ESP + 0xb8]
0096d8ed  33c6                      XOR EAX,ESI
0096d8ef  8bd0                      MOV EDX,EAX
0096d8f1  d3e2                      SHL EDX,CL
0096d8f3  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
0096d8f7  33d0                      XOR EDX,EAX
0096d8f9  6a01                      PUSH 0x1
0096d8fb  6a0a                      PUSH 0xa
0096d8fd  8bf2                      MOV ESI,EDX
0096d8ff  6a0a                      PUSH 0xa
0096d901  d3ee                      SHR ESI,CL
0096d903  33f2                      XOR ESI,EDX
0096d905  6a19                      PUSH 0x19
0096d907  56                        PUSH ESI
0096d908  e87368dcff                CALL 0x00734180
0096d90d  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0096d915  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
0096d91b  6a00                      PUSH 0x0
0096d91d  6a01                      PUSH 0x1
0096d91f  6a01                      PUSH 0x1
0096d921  50                        PUSH EAX
0096d922  8d842414010000            LEA EAX,[ESP + 0x114]
0096d929  89b42414010000            MOV dword ptr [ESP + 0x114],ESI
0096d930  50                        PUSH EAX
0096d931  660fd684241c010000        MOVQ qword ptr [ESP + 0x11c],XMM0
0096d93a  898c2424010000            MOV dword ptr [ESP + 0x124],ECX
0096d941  e8fa79efff                CALL 0x00865340
0096d946  8bf8                      MOV EDI,EAX
0096d948  897c2438                  MOV dword ptr [ESP + 0x38],EDI
0096d94c  e95affffff                JMP 0x0096d8ab
0096d951  81ff5e010000              CMP EDI,0x15e
0096d957  7537                      JNZ 0x0096d990
0096d959  8b7c2438                  MOV EDI,dword ptr [ESP + 0x38]
0096d95d  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0096d961  85ff                      TEST EDI,EDI
0096d963  7410                      JZ 0x0096d975
0096d965  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
0096d969  57                        PUSH EDI
0096d96a  8b01                      MOV EAX,dword ptr [ECX]
0096d96c  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
0096d96f  ffd0                      CALL EAX
0096d971  84c0                      TEST AL,AL
0096d973  7423                      JZ 0x0096d998
0096d975  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096d97b  6a00                      PUSH 0x0
0096d97d  8d8940a70100              LEA ECX,[ECX + 0x1a740]
0096d983  e81863dcff                CALL 0x00733ca0
0096d988  8bf8                      MOV EDI,EAX
0096d98a  897c2438                  MOV dword ptr [ESP + 0x38],EDI
0096d98e  ebcd                      JMP 0x0096d95d
0096d990  8b442438                  MOV EAX,dword ptr [ESP + 0x38]
0096d994  89442418                  MOV dword ptr [ESP + 0x18],EAX
0096d998  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0096d99c  6a00                      PUSH 0x0
0096d99e  ff74247c                  PUSH dword ptr [ESP + 0x7c]
0096d9a2  8b8980650200              MOV ECX,dword ptr [ECX + 0x26580]
0096d9a8  e8e326d8ff                CALL 0x006f0090
0096d9ad  89442414                  MOV dword ptr [ESP + 0x14],EAX
0096d9b1  85c0                      TEST EAX,EAX
0096d9b3  0f84ed020000              JZ 0x0096dca6
0096d9b9  e8d2aa0f00                CALL 0x00a68490
0096d9be  89542410                  MOV dword ptr [ESP + 0x10],EDX
0096d9c2  8bc8                      MOV ECX,EAX
0096d9c4  badb34b6d7                MOV EDX,0xd7b634db
0096d9c9  bf82de1b43                MOV EDI,0x431bde82
0096d9ce  f7e2                      MUL EDX
0096d9d0  89442448                  MOV dword ptr [ESP + 0x48],EAX
0096d9d4  8bf2                      MOV ESI,EDX
0096d9d6  8bc1                      MOV EAX,ECX
0096d9d8  b9db34b6d7                MOV ECX,0xd7b634db
0096d9dd  f7e7                      MUL EDI
0096d9df  8bf8                      MOV EDI,EAX
0096d9e1  89542428                  MOV dword ptr [ESP + 0x28],EDX
0096d9e5  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
0096d9e9  f7e1                      MUL ECX
0096d9eb  8bc8                      MOV ECX,EAX
0096d9ed  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
0096d9f1  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
0096d9f5  ba82de1b43                MOV EDX,0x431bde82
0096d9fa  f7e2                      MUL EDX
0096d9fc  03ce                      ADD ECX,ESI
0096d9fe  89542424                  MOV dword ptr [ESP + 0x24],EDX
0096da02  8b54242c                  MOV EDX,dword ptr [ESP + 0x2c]
0096da06  83d200                    ADC EDX,0x0
0096da09  89442420                  MOV dword ptr [ESP + 0x20],EAX
0096da0d  8b742420                  MOV ESI,dword ptr [ESP + 0x20]
0096da11  03f9                      ADD EDI,ECX
0096da13  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
0096da17  83d100                    ADC ECX,0x0
0096da1a  897c2448                  MOV dword ptr [ESP + 0x48],EDI
0096da1e  33c0                      XOR EAX,EAX
0096da20  03d1                      ADD EDX,ECX
0096da22  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
0096da26  13c0                      ADC EAX,EAX
0096da28  03f2                      ADD ESI,EDX
0096da2a  13c8                      ADC ECX,EAX
0096da2c  0facce12                  SHRD ESI,ECX,0x12
0096da30  89742420                  MOV dword ptr [ESP + 0x20],ESI
0096da34  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
0096da38  c1e912                    SHR ECX,0x12
0096da3b  8dbec8030000              LEA EDI,[ESI + 0x3c8]
0096da41  894c2424                  MOV dword ptr [ESP + 0x24],ECX
0096da45  8b0f                      MOV ECX,dword ptr [EDI]
0096da47  c7463400000000            MOV dword ptr [ESI + 0x34],0x0
0096da4e  c7463800000000            MOV dword ptr [ESI + 0x38],0x0
0096da55  85c9                      TEST ECX,ECX
0096da57  7414                      JZ 0x0096da6d
0096da59  8d442468                  LEA EAX,[ESP + 0x68]
0096da5d  897c2468                  MOV dword ptr [ESP + 0x68],EDI
0096da61  50                        PUSH EAX
0096da62  81c1cc030000              ADD ECX,0x3cc
0096da68  e8a317b6ff                CALL 0x004cf210
0096da6d  ff742470                  PUSH dword ptr [ESP + 0x70]
0096da71  8b06                      MOV EAX,dword ptr [ESI]
0096da73  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0096da77  8b8c2480000000            MOV ECX,dword ptr [ESP + 0x80]
0096da7e  ffb42484000000            PUSH dword ptr [ESP + 0x84]
0096da85  c70700000000              MOV dword ptr [EDI],0x0
0096da8b  f30f10442468              MOVSS XMM0,dword ptr [ESP + 0x68]
0096da91  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
0096da99  f30f1044246c              MOVSS XMM0,dword ptr [ESP + 0x6c]
0096da9f  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
0096daa7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0096daaf  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0096dab7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0096dabf  51                        PUSH ECX
0096dac0  8bce                      MOV ECX,ESI
0096dac2  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
0096daca  ff5004                    CALL dword ptr [EAX + 0x4]
0096dacd  8b7c2458                  MOV EDI,dword ptr [ESP + 0x58]
0096dad1  56                        PUSH ESI
0096dad2  8b9700830100              MOV EDX,dword ptr [EDI + 0x18300]
0096dad8  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
0096dade  8d4101                    LEA EAX,[ECX + 0x1]
0096dae1  898214120000              MOV dword ptr [EDX + 0x1214],EAX
0096dae7  894e20                    MOV dword ptr [ESI + 0x20],ECX
0096daea  8d8a18120000              LEA ECX,[EDX + 0x1218]
0096daf0  e80baaaaff                CALL 0x00418500
0096daf5  56                        PUSH ESI
0096daf6  e8f59dd9ff                CALL 0x007078f0
0096dafb  84c0                      TEST AL,AL
0096dafd  7407                      JZ 0x0096db06
0096daff  51                        PUSH ECX
0096db00  56                        PUSH ESI
0096db01  e8ba9ed9ff                CALL 0x007079c0
0096db06  80be7201000000            CMP byte ptr [ESI + 0x172],0x0
0096db0d  0f8401010000              JZ 0x0096dc14
0096db13  8b8758770600              MOV EAX,dword ptr [EDI + 0x67758]
0096db19  3b875c770600              CMP EAX,dword ptr [EDI + 0x6775c]
0096db1f  0f84ef000000              JZ 0x0096dc14
0096db25  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
0096db28  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
0096db2b  8db780770600              LEA ESI,[EDI + 0x67780]
0096db31  898424a4000000            MOV dword ptr [ESP + 0xa4],EAX
0096db38  8d8424a0000000            LEA EAX,[ESP + 0xa0]
0096db3f  50                        PUSH EAX
0096db40  8d442478                  LEA EAX,[ESP + 0x78]
0096db44  898c24a4000000            MOV dword ptr [ESP + 0xa4],ECX
0096db4b  50                        PUSH EAX
0096db4c  8bce                      MOV ECX,ESI
0096db4e  e84d490700                CALL 0x009e24a0
0096db53  8b3e                      MOV EDI,dword ptr [ESI]
0096db55  397c2474                  CMP dword ptr [ESP + 0x74],EDI
0096db59  753a                      JNZ 0x0096db95
0096db5b  8b8424a0000000            MOV EAX,dword ptr [ESP + 0xa0]
0096db62  8bce                      MOV ECX,ESI
0096db64  898424a8000000            MOV dword ptr [ESP + 0xa8],EAX
0096db6b  8d8424a8000000            LEA EAX,[ESP + 0xa8]
0096db72  50                        PUSH EAX
0096db73  8d842484000000            LEA EAX,[ESP + 0x84]
0096db7a  c78424b0000000ffffffff    MOV dword ptr [ESP + 0xb0],0xffffffff
0096db85  50                        PUSH EAX
0096db86  e815490700                CALL 0x009e24a0
0096db8b  8b00                      MOV EAX,dword ptr [EAX]
0096db8d  89442474                  MOV dword ptr [ESP + 0x74],EAX
0096db91  3bc7                      CMP EAX,EDI
0096db93  747f                      JZ 0x0096dc14
0096db95  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096db9b  33ff                      XOR EDI,EDI
0096db9d  81c6a8ba0100              ADD ESI,0x1baa8
0096dba3  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0096dba6  2b06                      SUB EAX,dword ptr [ESI]
0096dba8  c1f802                    SAR EAX,0x2
0096dbab  85c0                      TEST EAX,EAX
0096dbad  7465                      JZ 0x0096dc14
0096dbaf  90                        NOP
0096dbb0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0096dbb3  8bc1                      MOV EAX,ECX
0096dbb5  2b06                      SUB EAX,dword ptr [ESI]
0096dbb7  c1f802                    SAR EAX,0x2
0096dbba  85c0                      TEST EAX,EAX
0096dbbc  7512                      JNZ 0x0096dbd0
0096dbbe  68bce6b700                PUSH 0xb7e6bc
0096dbc3  6a10                      PUSH 0x10
0096dbc5  e8f6360a00                CALL 0x00a112c0
0096dbca  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0096dbcd  83c408                    ADD ESP,0x8
0096dbd0  8b06                      MOV EAX,dword ptr [ESI]
0096dbd2  2bc8                      SUB ECX,EAX
0096dbd4  c1f902                    SAR ECX,0x2
0096dbd7  3bf9                      CMP EDI,ECX
0096dbd9  7303                      JNC 0x0096dbde
0096dbdb  8d04b8                    LEA EAX,[EAX + EDI*0x4]
0096dbde  6840b6c700                PUSH 0xc7b640
0096dbe3  8d4c2460                  LEA ECX,[ESP + 0x60]
0096dbe7  51                        PUSH ECX
0096dbe8  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0096dbec  8b08                      MOV ECX,dword ptr [EAX]
0096dbee  6a06                      PUSH 0x6
0096dbf0  81c1c81f0000              ADD ECX,0x1fc8
0096dbf6  e8852a0700                CALL 0x009e0680
0096dbfb  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096dc01  47                        INC EDI
0096dc02  81c6a8ba0100              ADD ESI,0x1baa8
0096dc08  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0096dc0b  2b06                      SUB EAX,dword ptr [ESI]
0096dc0d  c1f802                    SAR EAX,0x2
0096dc10  3bf8                      CMP EDI,EAX
0096dc12  729c                      JC 0x0096dbb0
0096dc14  e877a80f00                CALL 0x00a68490
0096dc19  89542410                  MOV dword ptr [ESP + 0x10],EDX
0096dc1d  8bc8                      MOV ECX,EAX
0096dc1f  badb34b6d7                MOV EDX,0xd7b634db
0096dc24  bf82de1b43                MOV EDI,0x431bde82
0096dc29  f7e2                      MUL EDX
0096dc2b  8bf2                      MOV ESI,EDX
0096dc2d  89442448                  MOV dword ptr [ESP + 0x48],EAX
0096dc31  8bc1                      MOV EAX,ECX
0096dc33  b9db34b6d7                MOV ECX,0xd7b634db
0096dc38  f7e7                      MUL EDI
0096dc3a  89542428                  MOV dword ptr [ESP + 0x28],EDX
0096dc3e  8bf8                      MOV EDI,EAX
0096dc40  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
0096dc44  f7e1                      MUL ECX
0096dc46  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
0096dc4a  8bc8                      MOV ECX,EAX
0096dc4c  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
0096dc50  ba82de1b43                MOV EDX,0x431bde82
0096dc55  f7e2                      MUL EDX
0096dc57  03ce                      ADD ECX,ESI
0096dc59  89542410                  MOV dword ptr [ESP + 0x10],EDX
0096dc5d  8b54242c                  MOV EDX,dword ptr [ESP + 0x2c]
0096dc61  83d200                    ADC EDX,0x0
0096dc64  89442440                  MOV dword ptr [ESP + 0x40],EAX
0096dc68  03f9                      ADD EDI,ECX
0096dc6a  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
0096dc6e  897c2448                  MOV dword ptr [ESP + 0x48],EDI
0096dc72  83d100                    ADC ECX,0x0
0096dc75  33c0                      XOR EAX,EAX
0096dc77  03d1                      ADD EDX,ECX
0096dc79  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
0096dc7d  13c0                      ADC EAX,EAX
0096dc7f  03ca                      ADD ECX,EDX
0096dc81  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
0096dc85  13d0                      ADC EDX,EAX
0096dc87  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
0096dc8b  0facd112                  SHRD ECX,EDX,0x12
0096dc8f  c1ea12                    SHR EDX,0x12
0096dc92  2b4c2420                  SUB ECX,dword ptr [ESP + 0x20]
0096dc96  1b542424                  SBB EDX,dword ptr [ESP + 0x24]
0096dc9a  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
0096dca0  111534b6c700              ADC dword ptr [0x00c7b634],EDX
0096dca6  6a00                      PUSH 0x0
0096dca8  68acd5c500                PUSH 0xc5d5ac
0096dcad  68dcd5c500                PUSH 0xc5d5dc
0096dcb2  6a00                      PUSH 0x0
0096dcb4  50                        PUSH EAX
0096dcb5  e8f72b1800                CALL 0x00af08b1
0096dcba  83c414                    ADD ESP,0x14
0096dcbd  8bf0                      MOV ESI,EAX
0096dcbf  e89c12d8ff                CALL 0x006eef60
0096dcc4  6a01                      PUSH 0x1
0096dcc6  6a00                      PUSH 0x0
0096dcc8  68ff000000                PUSH 0xff
0096dccd  660f6ec0                  MOVD XMM0,EAX
0096dcd1  8d8c24e4000000            LEA ECX,[ESP + 0xe4]
0096dcd8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0096dcdc  c1e81f                    SHR EAX,0x1f
0096dcdf  6aff                      PUSH -0x1
0096dce1  51                        PUSH ECX
0096dce2  8bce                      MOV ECX,ESI
0096dce4  c784240c01000000000000    MOV dword ptr [ESP + 0x10c],0x0
0096dcef  c7842410010000abaaaa3e    MOV dword ptr [ESP + 0x110],0x3eaaaaab
0096dcfa  c784241401000000000000    MOV dword ptr [ESP + 0x114],0x0
0096dd05  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0096dd0e  8b06                      MOV EAX,dword ptr [ESI]
0096dd10  660f5ac0                  CVTPD2PS XMM0,XMM0
0096dd14  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0096dd1c  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0096dd24  f30f59442448              MULSS XMM0,dword ptr [ESP + 0x48]
0096dd2a  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0096dd32  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0096dd3a  0f57c0                    XORPS XMM0,XMM0
0096dd3d  0f118424fc000000          MOVUPS xmmword ptr [ESP + 0xfc],XMM0
0096dd45  0f2805e0c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac0e0]
0096dd4c  0f118424ec000000          MOVUPS xmmword ptr [ESP + 0xec],XMM0
0096dd54  ff503c                    CALL dword ptr [EAX + 0x3c]
0096dd57  8b06                      MOV EAX,dword ptr [ESI]
0096dd59  8bce                      MOV ECX,ESI
0096dd5b  ff500c                    CALL dword ptr [EAX + 0xc]
0096dd5e  e8fd11d8ff                CALL 0x006eef60
0096dd63  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096dd69  89442440                  MOV dword ptr [ESP + 0x40],EAX
0096dd6d  8d442440                  LEA EAX,[ESP + 0x40]
0096dd71  50                        PUSH EAX
0096dd72  8d44241c                  LEA EAX,[ESP + 0x1c]
0096dd76  894c242c                  MOV dword ptr [ESP + 0x2c],ECX
0096dd7a  50                        PUSH EAX
0096dd7b  6a00                      PUSH 0x0
0096dd7d  6840b6c700                PUSH 0xc7b640
0096dd82  8d44246c                  LEA EAX,[ESP + 0x6c]
0096dd86  c744242804000000          MOV dword ptr [ESP + 0x28],0x4
0096dd8e  50                        PUSH EAX
0096dd8f  8d44246c                  LEA EAX,[ESP + 0x6c]
0096dd93  c744246c02000000          MOV dword ptr [ESP + 0x6c],0x2
0096dd9b  50                        PUSH EAX
0096dd9c  8d442438                  LEA EAX,[ESP + 0x38]
0096dda0  c7442438e8030000          MOV dword ptr [ESP + 0x38],0x3e8
0096dda8  50                        PUSH EAX
0096dda9  e83269efff                CALL 0x008646e0
0096ddae  a17816c700                MOV EAX,[0x00c71678]
0096ddb3  8b7c2458                  MOV EDI,dword ptr [ESP + 0x58]
0096ddb7  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0096ddbe  0f8c64020000              JL 0x0096e028
0096ddc4  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
0096ddca  89442424                  MOV dword ptr [ESP + 0x24],EAX
0096ddce  e88d11d8ff                CALL 0x006eef60
0096ddd3  837c242005                CMP dword ptr [ESP + 0x20],0x5
0096ddd8  8bf0                      MOV ESI,EAX
0096ddda  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0096dde2  a174f6b100                MOV EAX,[0x00b1f674]
0096dde7  89742410                  MOV dword ptr [ESP + 0x10],ESI
0096ddeb  660fd6842494000000        MOVQ qword ptr [ESP + 0x94],XMM0
0096ddf4  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0096ddf8  8984249c000000            MOV dword ptr [ESP + 0x9c],EAX
0096ddff  0f8523020000              JNZ 0x0096e028
0096de05  81ff2c010000              CMP EDI,0x12c
0096de0b  0f87d8010000              JA 0x0096dfe9
0096de11  0f8428010000              JZ 0x0096df3f
0096de17  83ff46                    CMP EDI,0x46
0096de1a  7479                      JZ 0x0096de95
0096de1c  83ff64                    CMP EDI,0x64
0096de1f  0f8503020000              JNZ 0x0096e028
0096de25  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
0096de29  8b742424                  MOV ESI,dword ptr [ESP + 0x24]
0096de2d  897c2414                  MOV dword ptr [ESP + 0x14],EDI
0096de31  83ff19                    CMP EDI,0x19
0096de34  7434                      JZ 0x0096de6a
0096de36  8d442444                  LEA EAX,[ESP + 0x44]
0096de3a  897c2444                  MOV dword ptr [ESP + 0x44],EDI
0096de3e  50                        PUSH EAX
0096de3f  8d8424d0000000            LEA EAX,[ESP + 0xd0]
0096de46  8d4e20                    LEA ECX,[ESI + 0x20]
0096de49  50                        PUSH EAX
0096de4a  e851aaabff                CALL 0x004288a0
0096de4f  8b8424d4000000            MOV EAX,dword ptr [ESP + 0xd4]
0096de56  80780d00                  CMP byte ptr [EAX + 0xd],0x0
0096de5a  750a                      JNZ 0x0096de66
0096de5c  3b7810                    CMP EDI,dword ptr [EAX + 0x10]
0096de5f  7c05                      JL 0x0096de66
0096de61  3b4620                    CMP EAX,dword ptr [ESI + 0x20]
0096de64  7504                      JNZ 0x0096de6a
0096de66  b001                      MOV AL,0x1
0096de68  eb02                      JMP 0x0096de6c
0096de6a  32c0                      XOR AL,AL
0096de6c  85ff                      TEST EDI,EDI
0096de6e  7408                      JZ 0x0096de78
0096de70  84c0                      TEST AL,AL
0096de72  0f84b8010000              JZ 0x0096e030
0096de78  8b06                      MOV EAX,dword ptr [ESI]
0096de7a  8bce                      MOV ECX,ESI
0096de7c  6a00                      PUSH 0x0
0096de7e  8b8084000000              MOV EAX,dword ptr [EAX + 0x84]
0096de84  ffd0                      CALL EAX
0096de86  8bf0                      MOV ESI,EAX
0096de88  89742414                  MOV dword ptr [ESP + 0x14],ESI
0096de8c  89742418                  MOV dword ptr [ESP + 0x18],ESI
0096de90  e99b010000                JMP 0x0096e030
0096de95  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
0096de99  8bc7                      MOV EAX,EDI
0096de9b  c1e80b                    SHR EAX,0xb
0096de9e  89442444                  MOV dword ptr [ESP + 0x44],EAX
0096dea2  897c2414                  MOV dword ptr [ESP + 0x14],EDI
0096dea6  85ff                      TEST EDI,EDI
0096dea8  7430                      JZ 0x0096deda
0096deaa  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
0096deae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096deb4  6a00                      PUSH 0x0
0096deb6  57                        PUSH EDI
0096deb7  8b00                      MOV EAX,dword ptr [EAX]
0096deb9  8d8940a70100              LEA ECX,[ECX + 0x1a740]
0096debf  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
0096dec2  e8b96bdcff                CALL 0x00734a80
0096dec7  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
0096decb  50                        PUSH EAX
0096decc  ffd6                      CALL ESI
0096dece  84c0                      TEST AL,AL
0096ded0  0f845a010000              JZ 0x0096e030
0096ded6  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
0096deda  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0096dee0  85f6                      TEST ESI,ESI
0096dee2  7510                      JNZ 0x0096def4
0096dee4  6854bfb600                PUSH 0xb6bf54
0096dee9  6a10                      PUSH 0x10
0096deeb  e8d0330a00                CALL 0x00a112c0
0096def0  83c408                    ADD ESP,0x8
0096def3  cc                        INT3
0096def4  8b8c2494000000            MOV ECX,dword ptr [ESP + 0x94]
0096defb  8bd6                      MOV EDX,ESI
0096defd  d3ea                      SHR EDX,CL
0096deff  8b8c2498000000            MOV ECX,dword ptr [ESP + 0x98]
0096df06  33d6                      XOR EDX,ESI
0096df08  8bc2                      MOV EAX,EDX
0096df0a  d3e0                      SHL EAX,CL
0096df0c  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
0096df10  33c2                      XOR EAX,EDX
0096df12  8bf0                      MOV ESI,EAX
0096df14  d3ee                      SHR ESI,CL
0096df16  8d8f40a70100              LEA ECX,[EDI + 0x1a740]
0096df1c  33f0                      XOR ESI,EAX
0096df1e  56                        PUSH ESI
0096df1f  89742414                  MOV dword ptr [ESP + 0x14],ESI
0096df23  e8d869dcff                CALL 0x00734900
0096df28  8bf8                      MOV EDI,EAX
0096df2a  8b442444                  MOV EAX,dword ptr [ESP + 0x44]
0096df2e  83e001                    AND EAX,0x1
0096df31  c1e00b                    SHL EAX,0xb
0096df34  0bf8                      OR EDI,EAX
0096df36  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0096df3a  e963ffffff                JMP 0x0096dea2
0096df3f  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
0096df43  897c2414                  MOV dword ptr [ESP + 0x14],EDI
0096df47  85ff                      TEST EDI,EDI
0096df49  7414                      JZ 0x0096df5f
0096df4b  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
0096df4f  57                        PUSH EDI
0096df50  8b01                      MOV EAX,dword ptr [ECX]
0096df52  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0096df55  ffd0                      CALL EAX
0096df57  84c0                      TEST AL,AL
0096df59  0f84d1000000              JZ 0x0096e030
0096df5f  85f6                      TEST ESI,ESI
0096df61  7510                      JNZ 0x0096df73
0096df63  6854bfb600                PUSH 0xb6bf54
0096df68  6a10                      PUSH 0x10
0096df6a  e851330a00                CALL 0x00a112c0
0096df6f  83c408                    ADD ESP,0x8
0096df72  cc                        INT3
0096df73  8b8c2494000000            MOV ECX,dword ptr [ESP + 0x94]
0096df7a  8bc6                      MOV EAX,ESI
0096df7c  d3e8                      SHR EAX,CL
0096df7e  8b8c2498000000            MOV ECX,dword ptr [ESP + 0x98]
0096df85  33c6                      XOR EAX,ESI
0096df87  8bd0                      MOV EDX,EAX
0096df89  d3e2                      SHL EDX,CL
0096df8b  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
0096df8f  33d0                      XOR EDX,EAX
0096df91  6a01                      PUSH 0x1
0096df93  6a0a                      PUSH 0xa
0096df95  8bf2                      MOV ESI,EDX
0096df97  6a0a                      PUSH 0xa
0096df99  d3ee                      SHR ESI,CL
0096df9b  33f2                      XOR ESI,EDX
0096df9d  6a19                      PUSH 0x19
0096df9f  56                        PUSH ESI
0096dfa0  e8db61dcff                CALL 0x00734180
0096dfa5  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0096dfad  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
0096dfb3  6a00                      PUSH 0x0
0096dfb5  6a01                      PUSH 0x1
0096dfb7  6a01                      PUSH 0x1
0096dfb9  50                        PUSH EAX
0096dfba  8d842424010000            LEA EAX,[ESP + 0x124]
0096dfc1  89b42424010000            MOV dword ptr [ESP + 0x124],ESI
0096dfc8  50                        PUSH EAX
0096dfc9  660fd684242c010000        MOVQ qword ptr [ESP + 0x12c],XMM0
0096dfd2  898c2434010000            MOV dword ptr [ESP + 0x134],ECX
0096dfd9  e86273efff                CALL 0x00865340
0096dfde  8bf8                      MOV EDI,EAX
0096dfe0  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0096dfe4  e95affffff                JMP 0x0096df43
0096dfe9  81ff5e010000              CMP EDI,0x15e
0096dfef  7537                      JNZ 0x0096e028
0096dff1  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
0096dff5  897c2414                  MOV dword ptr [ESP + 0x14],EDI
0096dff9  85ff                      TEST EDI,EDI
0096dffb  7410                      JZ 0x0096e00d
0096dffd  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
0096e001  57                        PUSH EDI
0096e002  8b01                      MOV EAX,dword ptr [ECX]
0096e004  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
0096e007  ffd0                      CALL EAX
0096e009  84c0                      TEST AL,AL
0096e00b  7423                      JZ 0x0096e030
0096e00d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096e013  6a00                      PUSH 0x0
0096e015  8d8940a70100              LEA ECX,[ECX + 0x1a740]
0096e01b  e8805cdcff                CALL 0x00733ca0
0096e020  8bf8                      MOV EDI,EAX
0096e022  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0096e026  ebcd                      JMP 0x0096dff5
0096e028  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
0096e02c  89442414                  MOV dword ptr [ESP + 0x14],EAX
0096e030  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
0096e034  6a00                      PUSH 0x0
0096e036  ff742424                  PUSH dword ptr [ESP + 0x24]
0096e03a  8b8980650200              MOV ECX,dword ptr [ECX + 0x26580]
0096e040  e84b20d8ff                CALL 0x006f0090
0096e045  8bf0                      MOV ESI,EAX
0096e047  8974242c                  MOV dword ptr [ESP + 0x2c],ESI
0096e04b  85f6                      TEST ESI,ESI
0096e04d  0f84f1020000              JZ 0x0096e344
0096e053  e838a40f00                CALL 0x00a68490
0096e058  89542410                  MOV dword ptr [ESP + 0x10],EDX
0096e05c  8bc8                      MOV ECX,EAX
0096e05e  badb34b6d7                MOV EDX,0xd7b634db
0096e063  bf82de1b43                MOV EDI,0x431bde82
0096e068  f7e2                      MUL EDX
0096e06a  89442448                  MOV dword ptr [ESP + 0x48],EAX
0096e06e  8bf2                      MOV ESI,EDX
0096e070  8bc1                      MOV EAX,ECX
0096e072  b9db34b6d7                MOV ECX,0xd7b634db
0096e077  f7e7                      MUL EDI
0096e079  8bf8                      MOV EDI,EAX
0096e07b  89542430                  MOV dword ptr [ESP + 0x30],EDX
0096e07f  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
0096e083  f7e1                      MUL ECX
0096e085  8bc8                      MOV ECX,EAX
0096e087  89542424                  MOV dword ptr [ESP + 0x24],EDX
0096e08b  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
0096e08f  ba82de1b43                MOV EDX,0x431bde82
0096e094  f7e2                      MUL EDX
0096e096  03ce                      ADD ECX,ESI
0096e098  89542410                  MOV dword ptr [ESP + 0x10],EDX
0096e09c  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
0096e0a0  83d200                    ADC EDX,0x0
0096e0a3  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0096e0a7  8b74243c                  MOV ESI,dword ptr [ESP + 0x3c]
0096e0ab  03f9                      ADD EDI,ECX
0096e0ad  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
0096e0b1  83d100                    ADC ECX,0x0
0096e0b4  897c2448                  MOV dword ptr [ESP + 0x48],EDI
0096e0b8  8b7c242c                  MOV EDI,dword ptr [ESP + 0x2c]
0096e0bc  33c0                      XOR EAX,EAX
0096e0be  03d1                      ADD EDX,ECX
0096e0c0  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
0096e0c4  13c0                      ADC EAX,EAX
0096e0c6  03f2                      ADD ESI,EDX
0096e0c8  c7473400000000            MOV dword ptr [EDI + 0x34],0x0
0096e0cf  13c8                      ADC ECX,EAX
0096e0d1  c7473800000000            MOV dword ptr [EDI + 0x38],0x0
0096e0d8  0facce12                  SHRD ESI,ECX,0x12
0096e0dc  c1e912                    SHR ECX,0x12
0096e0df  8974243c                  MOV dword ptr [ESP + 0x3c],ESI
0096e0e3  8db7c8030000              LEA ESI,[EDI + 0x3c8]
0096e0e9  894c2410                  MOV dword ptr [ESP + 0x10],ECX
0096e0ed  8b0e                      MOV ECX,dword ptr [ESI]
0096e0ef  85c9                      TEST ECX,ECX
0096e0f1  7414                      JZ 0x0096e107
0096e0f3  8d442430                  LEA EAX,[ESP + 0x30]
0096e0f7  89742430                  MOV dword ptr [ESP + 0x30],ESI
0096e0fb  50                        PUSH EAX
0096e0fc  81c1cc030000              ADD ECX,0x3cc
0096e102  e80911b6ff                CALL 0x004cf210
0096e107  ff742440                  PUSH dword ptr [ESP + 0x40]
0096e10b  8b07                      MOV EAX,dword ptr [EDI]
0096e10d  ff742418                  PUSH dword ptr [ESP + 0x18]
0096e111  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
0096e115  ff742460                  PUSH dword ptr [ESP + 0x60]
0096e119  c70600000000              MOV dword ptr [ESI],0x0
0096e11f  f30f10442468              MOVSS XMM0,dword ptr [ESP + 0x68]
0096e125  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0096e12d  f30f1044246c              MOVSS XMM0,dword ptr [ESP + 0x6c]
0096e133  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0096e13b  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0096e143  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0096e14b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0096e153  51                        PUSH ECX
0096e154  8bcf                      MOV ECX,EDI
0096e156  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0096e15e  ff5004                    CALL dword ptr [EAX + 0x4]
0096e161  8b742428                  MOV ESI,dword ptr [ESP + 0x28]
0096e165  57                        PUSH EDI
0096e166  8b9600830100              MOV EDX,dword ptr [ESI + 0x18300]
0096e16c  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
0096e172  8d4101                    LEA EAX,[ECX + 0x1]
0096e175  898214120000              MOV dword ptr [EDX + 0x1214],EAX
0096e17b  894f20                    MOV dword ptr [EDI + 0x20],ECX
0096e17e  8d8a18120000              LEA ECX,[EDX + 0x1218]
0096e184  e877a3aaff                CALL 0x00418500
0096e189  57                        PUSH EDI
0096e18a  e86197d9ff                CALL 0x007078f0
0096e18f  84c0                      TEST AL,AL
0096e191  7407                      JZ 0x0096e19a
0096e193  51                        PUSH ECX
0096e194  57                        PUSH EDI
0096e195  e82698d9ff                CALL 0x007079c0
0096e19a  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
0096e1a1  0f840b010000              JZ 0x0096e2b2
0096e1a7  8b8658770600              MOV EAX,dword ptr [ESI + 0x67758]
0096e1ad  3b865c770600              CMP EAX,dword ptr [ESI + 0x6775c]
0096e1b3  0f84f9000000              JZ 0x0096e2b2
0096e1b9  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0096e1bc  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
0096e1bf  8984248c000000            MOV dword ptr [ESP + 0x8c],EAX
0096e1c6  8d842488000000            LEA EAX,[ESP + 0x88]
0096e1cd  50                        PUSH EAX
0096e1ce  8d44242c                  LEA EAX,[ESP + 0x2c]
0096e1d2  898c248c000000            MOV dword ptr [ESP + 0x8c],ECX
0096e1d9  50                        PUSH EAX
0096e1da  8d8e80770600              LEA ECX,[ESI + 0x67780]
0096e1e0  e8bb420700                CALL 0x009e24a0
0096e1e5  8b8680770600              MOV EAX,dword ptr [ESI + 0x67780]
0096e1eb  39442428                  CMP dword ptr [ESP + 0x28],EAX
0096e1ef  7536                      JNZ 0x0096e227
0096e1f1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0096e1f4  8d8e80770600              LEA ECX,[ESI + 0x67780]
0096e1fa  89442448                  MOV dword ptr [ESP + 0x48],EAX
0096e1fe  8d442448                  LEA EAX,[ESP + 0x48]
0096e202  50                        PUSH EAX
0096e203  8d442418                  LEA EAX,[ESP + 0x18]
0096e207  c7442450ffffffff          MOV dword ptr [ESP + 0x50],0xffffffff
0096e20f  50                        PUSH EAX
0096e210  e88b420700                CALL 0x009e24a0
0096e215  8b00                      MOV EAX,dword ptr [EAX]
0096e217  89442428                  MOV dword ptr [ESP + 0x28],EAX
0096e21b  3b8680770600              CMP EAX,dword ptr [ESI + 0x67780]
0096e221  0f848b000000              JZ 0x0096e2b2
0096e227  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096e22d  33d2                      XOR EDX,EDX
0096e22f  81c6a8ba0100              ADD ESI,0x1baa8
0096e235  89542424                  MOV dword ptr [ESP + 0x24],EDX
0096e239  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0096e23c  2b06                      SUB EAX,dword ptr [ESI]
0096e23e  c1f802                    SAR EAX,0x2
0096e241  85c0                      TEST EAX,EAX
0096e243  746d                      JZ 0x0096e2b2
0096e245  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0096e248  8bc1                      MOV EAX,ECX
0096e24a  2b06                      SUB EAX,dword ptr [ESI]
0096e24c  c1f802                    SAR EAX,0x2
0096e24f  85c0                      TEST EAX,EAX
0096e251  7516                      JNZ 0x0096e269
0096e253  68bce6b700                PUSH 0xb7e6bc
0096e258  6a10                      PUSH 0x10
0096e25a  e861300a00                CALL 0x00a112c0
0096e25f  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0096e262  83c408                    ADD ESP,0x8
0096e265  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
0096e269  8b06                      MOV EAX,dword ptr [ESI]
0096e26b  2bc8                      SUB ECX,EAX
0096e26d  c1f902                    SAR ECX,0x2
0096e270  3bd1                      CMP EDX,ECX
0096e272  7303                      JNC 0x0096e277
0096e274  8d0490                    LEA EAX,[EAX + EDX*0x4]
0096e277  6840b6c700                PUSH 0xc7b640
0096e27c  8d4c2460                  LEA ECX,[ESP + 0x60]
0096e280  51                        PUSH ECX
0096e281  8b08                      MOV ECX,dword ptr [EAX]
0096e283  57                        PUSH EDI
0096e284  6a06                      PUSH 0x6
0096e286  81c1c81f0000              ADD ECX,0x1fc8
0096e28c  e8ef230700                CALL 0x009e0680
0096e291  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096e297  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
0096e29b  81c6a8ba0100              ADD ESI,0x1baa8
0096e2a1  42                        INC EDX
0096e2a2  89542424                  MOV dword ptr [ESP + 0x24],EDX
0096e2a6  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0096e2a9  2b06                      SUB EAX,dword ptr [ESI]
0096e2ab  c1f802                    SAR EAX,0x2
0096e2ae  3bd0                      CMP EDX,EAX
0096e2b0  7293                      JC 0x0096e245
0096e2b2  e8d9a10f00                CALL 0x00a68490
0096e2b7  89542428                  MOV dword ptr [ESP + 0x28],EDX
0096e2bb  8bc8                      MOV ECX,EAX
0096e2bd  badb34b6d7                MOV EDX,0xd7b634db
0096e2c2  bf82de1b43                MOV EDI,0x431bde82
0096e2c7  f7e2                      MUL EDX
0096e2c9  8bf2                      MOV ESI,EDX
0096e2cb  89442448                  MOV dword ptr [ESP + 0x48],EAX
0096e2cf  8bc1                      MOV EAX,ECX
0096e2d1  b9db34b6d7                MOV ECX,0xd7b634db
0096e2d6  f7e7                      MUL EDI
0096e2d8  89542444                  MOV dword ptr [ESP + 0x44],EDX
0096e2dc  8bf8                      MOV EDI,EAX
0096e2de  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
0096e2e2  f7e1                      MUL ECX
0096e2e4  89542430                  MOV dword ptr [ESP + 0x30],EDX
0096e2e8  8bc8                      MOV ECX,EAX
0096e2ea  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
0096e2ee  ba82de1b43                MOV EDX,0x431bde82
0096e2f3  f7e2                      MUL EDX
0096e2f5  03ce                      ADD ECX,ESI
0096e2f7  8b74242c                  MOV ESI,dword ptr [ESP + 0x2c]
0096e2fb  89542464                  MOV dword ptr [ESP + 0x64],EDX
0096e2ff  8b542430                  MOV EDX,dword ptr [ESP + 0x30]
0096e303  83d200                    ADC EDX,0x0
0096e306  89442468                  MOV dword ptr [ESP + 0x68],EAX
0096e30a  03f9                      ADD EDI,ECX
0096e30c  8b4c2444                  MOV ECX,dword ptr [ESP + 0x44]
0096e310  897c2448                  MOV dword ptr [ESP + 0x48],EDI
0096e314  83d100                    ADC ECX,0x0
0096e317  33c0                      XOR EAX,EAX
0096e319  03d1                      ADD EDX,ECX
0096e31b  8b4c2468                  MOV ECX,dword ptr [ESP + 0x68]
0096e31f  13c0                      ADC EAX,EAX
0096e321  03ca                      ADD ECX,EDX
0096e323  8b542464                  MOV EDX,dword ptr [ESP + 0x64]
0096e327  13d0                      ADC EDX,EAX
0096e329  0facd112                  SHRD ECX,EDX,0x12
0096e32d  c1ea12                    SHR EDX,0x12
0096e330  2b4c243c                  SUB ECX,dword ptr [ESP + 0x3c]
0096e334  1b542410                  SBB EDX,dword ptr [ESP + 0x10]
0096e338  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
0096e33e  111534b6c700              ADC dword ptr [0x00c7b634],EDX
0096e344  8d8c24d8000000            LEA ECX,[ESP + 0xd8]
0096e34b  e8804bd1ff                CALL 0x00682ed0
0096e350  8b06                      MOV EAX,dword ptr [ESI]
0096e352  8d8c24d8000000            LEA ECX,[ESP + 0xd8]
0096e359  f30f104c2454              MOVSS XMM1,dword ptr [ESP + 0x54]
0096e35f  6a01                      PUSH 0x1
0096e361  6a00                      PUSH 0x0
0096e363  68ff000000                PUSH 0xff
0096e368  6aff                      PUSH -0x1
0096e36a  51                        PUSH ECX
0096e36b  8bce                      MOV ECX,ESI
0096e36d  c78424ec0000000ad7a33c    MOV dword ptr [ESP + 0xec],0x3ca3d70a
0096e378  c78424f00000006666663f    MOV dword ptr [ESP + 0xf0],0x3f666666
0096e383  c78424f40000000ad7a33c    MOV dword ptr [ESP + 0xf4],0x3ca3d70a
0096e38e  f30f118c24f8000000        MOVSS dword ptr [ESP + 0xf8],XMM1
0096e397  c784240c010000a1a0203d    MOV dword ptr [ESP + 0x10c],0x3d20a0a1
0096e3a2  c7842410010000cac8c83e    MOV dword ptr [ESP + 0x110],0x3ec8c8ca
0096e3ad  c784241401000000000000    MOV dword ptr [ESP + 0x114],0x0
0096e3b8  ff503c                    CALL dword ptr [EAX + 0x3c]
0096e3bb  f30f104c2434              MOVSS XMM1,dword ptr [ESP + 0x34]
0096e3c1  8bce                      MOV ECX,ESI
0096e3c3  8b06                      MOV EAX,dword ptr [ESI]
0096e3c5  0f28c1                    MOVAPS XMM0,XMM1
0096e3c8  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0096e3d0  c786580300000000a0c0      MOV dword ptr [ESI + 0x358],0xc0a00000
0096e3da  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
0096e3e2  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0096e3ea  ff500c                    CALL dword ptr [EAX + 0xc]
0096e3ed  8b7c241c                  MOV EDI,dword ptr [ESP + 0x1c]
0096e3f1  e86a0bd8ff                CALL 0x006eef60
0096e3f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096e3fc  6a00                      PUSH 0x0
0096e3fe  50                        PUSH EAX
0096e3ff  6a00                      PUSH 0x0
0096e401  6a00                      PUSH 0x0
0096e403  6840b6c700                PUSH 0xc7b640
0096e408  8d442470                  LEA EAX,[ESP + 0x70]
0096e40c  50                        PUSH EAX
0096e40d  6a01                      PUSH 0x1
0096e40f  68e8030000                PUSH 0x3e8
0096e414  e8f7ffd8ff                CALL 0x006fe410
0096e419  6a00                      PUSH 0x0
0096e41b  68acd5c500                PUSH 0xc5d5ac
0096e420  68dcd5c500                PUSH 0xc5d5dc
0096e425  6a00                      PUSH 0x0
0096e427  50                        PUSH EAX
0096e428  e884241800                CALL 0x00af08b1
0096e42d  f30f104c2448              MOVSS XMM1,dword ptr [ESP + 0x48]
0096e433  83c414                    ADD ESP,0x14
0096e436  0f2e0d54a4ba00            UCOMISS XMM1,dword ptr [0x00baa454]
0096e43d  8bc8                      MOV ECX,EAX
0096e43f  9f                        LAHF
0096e440  f6c444                    TEST AH,0x44
0096e443  7b23                      JNP 0x0096e468
0096e445  0f28c1                    MOVAPS XMM0,XMM1
0096e448  f30f5989e8000000          MULSS XMM1,dword ptr [ECX + 0xe8]
0096e450  f30f5981e4000000          MULSS XMM0,dword ptr [ECX + 0xe4]
0096e458  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
0096e460  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
0096e468  0f108ff0000000            MOVUPS XMM1,xmmword ptr [EDI + 0xf0]
0096e46f  8b8718010000              MOV EAX,dword ptr [EDI + 0x118]
0096e475  8d942424010000            LEA EDX,[ESP + 0x124]
0096e47c  0f108700010000            MOVUPS XMM0,xmmword ptr [EDI + 0x100]
0096e483  6a01                      PUSH 0x1
0096e485  0f118c2428010000          MOVUPS xmmword ptr [ESP + 0x128],XMM1
0096e48d  6a00                      PUSH 0x0
0096e48f  0fc6c9ff                  SHUFPS XMM1,XMM1,0xff
0096e493  f30f594c245c              MULSS XMM1,dword ptr [ESP + 0x5c]
0096e499  68ff000000                PUSH 0xff
0096e49e  0f11842440010000          MOVUPS xmmword ptr [ESP + 0x140],XMM0
0096e4a6  89842458010000            MOV dword ptr [ESP + 0x158],EAX
0096e4ad  f30f7e8710010000          MOVQ XMM0,qword ptr [EDI + 0x110]
0096e4b5  660fd6842450010000        MOVQ qword ptr [ESP + 0x150],XMM0
0096e4be  f30f118c243c010000        MOVSS dword ptr [ESP + 0x13c],XMM1
0096e4c7  8b01                      MOV EAX,dword ptr [ECX]
0096e4c9  6aff                      PUSH -0x1
0096e4cb  52                        PUSH EDX
0096e4cc  ff503c                    CALL dword ptr [EAX + 0x3c]
0096e4cf  8b35c84bc300              MOV ESI,dword ptr [0x00c34bc8]
0096e4d5  8b0dc04bc300              MOV ECX,dword ptr [0x00c34bc0]
0096e4db  f7d6                      NOT ESI
0096e4dd  a1c44bc300                MOV EAX,[0x00c34bc4]
0096e4e2  f7d1                      NOT ECX
0096e4e4  8b15cc4bc300              MOV EDX,dword ptr [0x00c34bcc]
0096e4ea  f7d0                      NOT EAX
0096e4ec  218f38040000              AND dword ptr [EDI + 0x438],ECX
0096e4f2  f7d2                      NOT EDX
0096e4f4  21873c040000              AND dword ptr [EDI + 0x43c],EAX
0096e4fa  21b740040000              AND dword ptr [EDI + 0x440],ESI
0096e500  219744040000              AND dword ptr [EDI + 0x444],EDX
0096e506  a15848c300                MOV EAX,[0x00c34858]
0096e50b  0b058848c300              OR EAX,dword ptr [0x00c34888]
0096e511  8b0d5048c300              MOV ECX,dword ptr [0x00c34850]
0096e517  0b0d8048c300              OR ECX,dword ptr [0x00c34880]
0096e51d  238f28040000              AND ECX,dword ptr [EDI + 0x428]
0096e523  8bb730040000              MOV ESI,dword ptr [EDI + 0x430]
0096e529  8b9734040000              MOV EDX,dword ptr [EDI + 0x434]
0096e52f  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0096e533  a15c48c300                MOV EAX,[0x00c3485c]
0096e538  0b058c48c300              OR EAX,dword ptr [0x00c3488c]
0096e53e  89442430                  MOV dword ptr [ESP + 0x30],EAX
0096e542  a15448c300                MOV EAX,[0x00c34854]
0096e547  0b058448c300              OR EAX,dword ptr [0x00c34884]
0096e54d  23872c040000              AND EAX,dword ptr [EDI + 0x42c]
0096e553  0bc8                      OR ECX,EAX
0096e555  7514                      JNZ 0x0096e56b
0096e557  8bce                      MOV ECX,ESI
0096e559  8bc2                      MOV EAX,EDX
0096e55b  234c241c                  AND ECX,dword ptr [ESP + 0x1c]
0096e55f  23442430                  AND EAX,dword ptr [ESP + 0x30]
0096e563  0bc8                      OR ECX,EAX
0096e565  0f8467050000              JZ 0x0096ead2
0096e56b  80bf5c04000000            CMP byte ptr [EDI + 0x45c],0x0
0096e572  89542434                  MOV dword ptr [ESP + 0x34],EDX
0096e576  751a                      JNZ 0x0096e592
0096e578  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
0096e580  0f57d2                    XORPS XMM2,XMM2
0096e583  8bcf                      MOV ECX,EDI
0096e585  e8d6e1d3ff                CALL 0x006ac760
0096e58a  85c0                      TEST EAX,EAX
0096e58c  0f843c050000              JZ 0x0096eace
0096e592  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096e598  8d442448                  LEA EAX,[ESP + 0x48]
0096e59c  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0096e5a4  83ec0c                    SUB ESP,0xc
0096e5a7  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0096e5ad  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
0096e5b5  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
0096e5bd  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096e5c4  ff742478                  PUSH dword ptr [ESP + 0x78]
0096e5c8  50                        PUSH EAX
0096e5c9  e88249eaff                CALL 0x00812f50
0096e5ce  e88d09d8ff                CALL 0x006eef60
0096e5d3  660f6ec0                  MOVD XMM0,EAX
0096e5d7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0096e5db  c1e81f                    SHR EAX,0x1f
0096e5de  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0096e5e7  660f5ac0                  CVTPD2PS XMM0,XMM0
0096e5eb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0096e5f3  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0096e5fb  f30f58c0                  ADDSS XMM0,XMM0
0096e5ff  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0096e605  e836efaaff                CALL 0x0041d540
0096e60a  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0096e612  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0096e618  f30f11842480000000        MOVSS dword ptr [ESP + 0x80],XMM0
0096e621  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0096e627  e8f4eeaaff                CALL 0x0041d520
0096e62c  8b358047c300              MOV ESI,dword ptr [0x00c34780]
0096e632  0b35d045c300              OR ESI,dword ptr [0x00c345d0]
0096e638  0b35e045c300              OR ESI,dword ptr [0x00c345e0]
0096e63e  0b35c045c300              OR ESI,dword ptr [0x00c345c0]
0096e644  0b35f048c300              OR ESI,dword ptr [0x00c348f0]
0096e64a  0b35504cc300              OR ESI,dword ptr [0x00c34c50]
0096e650  0b355048c300              OR ESI,dword ptr [0x00c34850]
0096e656  8b158447c300              MOV EDX,dword ptr [0x00c34784]
0096e65c  0b15d445c300              OR EDX,dword ptr [0x00c345d4]
0096e662  0b15e445c300              OR EDX,dword ptr [0x00c345e4]
0096e668  0b15c445c300              OR EDX,dword ptr [0x00c345c4]
0096e66e  0b15f448c300              OR EDX,dword ptr [0x00c348f4]
0096e674  0b15544cc300              OR EDX,dword ptr [0x00c34c54]
0096e67a  0b155448c300              OR EDX,dword ptr [0x00c34854]
0096e680  0b358048c300              OR ESI,dword ptr [0x00c34880]
0096e686  0b158448c300              OR EDX,dword ptr [0x00c34884]
0096e68c  f7d6                      NOT ESI
0096e68e  8b8f28040000              MOV ECX,dword ptr [EDI + 0x428]
0096e694  f7d2                      NOT EDX
0096e696  0b0d504bc300              OR ECX,dword ptr [0x00c34b50]
0096e69c  8b872c040000              MOV EAX,dword ptr [EDI + 0x42c]
0096e6a2  23f1                      AND ESI,ECX
0096e6a4  0b05544bc300              OR EAX,dword ptr [0x00c34b54]
0096e6aa  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0096e6b2  23d0                      AND EDX,EAX
0096e6b4  8b8f30040000              MOV ECX,dword ptr [EDI + 0x430]
0096e6ba  0b0d584bc300              OR ECX,dword ptr [0x00c34b58]
0096e6c0  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0096e6c6  0b055c4bc300              OR EAX,dword ptr [0x00c34b5c]
0096e6cc  89b42490000000            MOV dword ptr [ESP + 0x90],ESI
0096e6d3  8b358847c300              MOV ESI,dword ptr [0x00c34788]
0096e6d9  0b35d845c300              OR ESI,dword ptr [0x00c345d8]
0096e6df  0b35e845c300              OR ESI,dword ptr [0x00c345e8]
0096e6e5  0b35c845c300              OR ESI,dword ptr [0x00c345c8]
0096e6eb  0b35f848c300              OR ESI,dword ptr [0x00c348f8]
0096e6f1  0b35584cc300              OR ESI,dword ptr [0x00c34c58]
0096e6f7  0b355848c300              OR ESI,dword ptr [0x00c34858]
0096e6fd  0b358848c300              OR ESI,dword ptr [0x00c34888]
0096e703  89942494000000            MOV dword ptr [ESP + 0x94],EDX
0096e70a  f7d6                      NOT ESI
0096e70c  8b158c47c300              MOV EDX,dword ptr [0x00c3478c]
0096e712  23f1                      AND ESI,ECX
0096e714  0b15dc45c300              OR EDX,dword ptr [0x00c345dc]
0096e71a  0b15ec45c300              OR EDX,dword ptr [0x00c345ec]
0096e720  0b15cc45c300              OR EDX,dword ptr [0x00c345cc]
0096e726  0b15fc48c300              OR EDX,dword ptr [0x00c348fc]
0096e72c  0b155c4cc300              OR EDX,dword ptr [0x00c34c5c]
0096e732  0b155c48c300              OR EDX,dword ptr [0x00c3485c]
0096e738  0b158c48c300              OR EDX,dword ptr [0x00c3488c]
0096e73e  f7d2                      NOT EDX
0096e740  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0096e746  f30f11842484000000        MOVSS dword ptr [ESP + 0x84],XMM0
0096e74f  23d0                      AND EDX,EAX
0096e751  89b42498000000            MOV dword ptr [ESP + 0x98],ESI
0096e758  8d842450010000            LEA EAX,[ESP + 0x150]
0096e75f  8994249c000000            MOV dword ptr [ESP + 0x9c],EDX
0096e766  50                        PUSH EAX
0096e767  8bcf                      MOV ECX,EDI
0096e769  e892060000                CALL 0x0096ee00
0096e76e  a18048c300                MOV EAX,[0x00c34880]
0096e773  8b0d5048c300              MOV ECX,dword ptr [0x00c34850]
0096e779  8b155448c300              MOV EDX,dword ptr [0x00c34854]
0096e77f  0bc8                      OR ECX,EAX
0096e781  f30f1084245c010000        MOVSS XMM0,dword ptr [ESP + 0x15c]
0096e78a  8bb72c040000              MOV ESI,dword ptr [EDI + 0x42c]
0096e790  f30f59442454              MULSS XMM0,dword ptr [ESP + 0x54]
0096e796  89442474                  MOV dword ptr [ESP + 0x74],EAX
0096e79a  a18448c300                MOV EAX,[0x00c34884]
0096e79f  0bd0                      OR EDX,EAX
0096e7a1  8954241c                  MOV dword ptr [ESP + 0x1c],EDX
0096e7a5  8b155848c300              MOV EDX,dword ptr [0x00c34858]
0096e7ab  89442468                  MOV dword ptr [ESP + 0x68],EAX
0096e7af  a18848c300                MOV EAX,[0x00c34888]
0096e7b4  0bd0                      OR EDX,EAX
0096e7b6  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
0096e7ba  8b155c48c300              MOV EDX,dword ptr [0x00c3485c]
0096e7c0  89442470                  MOV dword ptr [ESP + 0x70],EAX
0096e7c4  a18c48c300                MOV EAX,[0x00c3488c]
0096e7c9  0bd0                      OR EDX,EAX
0096e7cb  89442444                  MOV dword ptr [ESP + 0x44],EAX
0096e7cf  8b8728040000              MOV EAX,dword ptr [EDI + 0x428]
0096e7d5  89742434                  MOV dword ptr [ESP + 0x34],ESI
0096e7d9  23c1                      AND EAX,ECX
0096e7db  89742420                  MOV dword ptr [ESP + 0x20],ESI
0096e7df  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
0096e7e3  21742434                  AND dword ptr [ESP + 0x34],ESI
0096e7e7  89542430                  MOV dword ptr [ESP + 0x30],EDX
0096e7eb  8b9730040000              MOV EDX,dword ptr [EDI + 0x430]
0096e7f1  f30f1184245c010000        MOVSS dword ptr [ESP + 0x15c],XMM0
0096e7fa  3bc1                      CMP EAX,ECX
0096e7fc  7537                      JNZ 0x0096e835
0096e7fe  39742434                  CMP dword ptr [ESP + 0x34],ESI
0096e802  7531                      JNZ 0x0096e835
0096e804  8b8f34040000              MOV ECX,dword ptr [EDI + 0x434]
0096e80a  8bc2                      MOV EAX,EDX
0096e80c  2344242c                  AND EAX,dword ptr [ESP + 0x2c]
0096e810  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
0096e814  23ce                      AND ECX,ESI
0096e816  3b44242c                  CMP EAX,dword ptr [ESP + 0x2c]
0096e81a  7519                      JNZ 0x0096e835
0096e81c  3bce                      CMP ECX,ESI
0096e81e  7515                      JNZ 0x0096e835
0096e820  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
0096e828  c744242006000000          MOV dword ptr [ESP + 0x20],0x6
0096e830  e990000000                JMP 0x0096e8c5
0096e835  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0096e83b  8bf2                      MOV ESI,EDX
0096e83d  23055c48c300              AND EAX,dword ptr [0x00c3485c]
0096e843  8b8f28040000              MOV ECX,dword ptr [EDI + 0x428]
0096e849  230d5048c300              AND ECX,dword ptr [0x00c34850]
0096e84f  23355848c300              AND ESI,dword ptr [0x00c34858]
0096e855  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0096e859  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
0096e85d  23055448c300              AND EAX,dword ptr [0x00c34854]
0096e863  0bc8                      OR ECX,EAX
0096e865  754e                      JNZ 0x0096e8b5
0096e867  0b74241c                  OR ESI,dword ptr [ESP + 0x1c]
0096e86b  7548                      JNZ 0x0096e8b5
0096e86d  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0096e873  8b742444                  MOV ESI,dword ptr [ESP + 0x44]
0096e877  23c6                      AND EAX,ESI
0096e879  8b4c2468                  MOV ECX,dword ptr [ESP + 0x68]
0096e87d  23542470                  AND EDX,dword ptr [ESP + 0x70]
0096e881  214c2420                  AND dword ptr [ESP + 0x20],ECX
0096e885  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0096e889  8b8728040000              MOV EAX,dword ptr [EDI + 0x428]
0096e88f  23442474                  AND EAX,dword ptr [ESP + 0x74]
0096e893  0b442420                  OR EAX,dword ptr [ESP + 0x20]
0096e897  750a                      JNZ 0x0096e8a3
0096e899  0b54241c                  OR EDX,dword ptr [ESP + 0x1c]
0096e89d  0f84f5010000              JZ 0x0096ea98
0096e8a3  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
0096e8ab  c744242004000000          MOV dword ptr [ESP + 0x20],0x4
0096e8b3  eb10                      JMP 0x0096e8c5
0096e8b5  f30f100578aaba00          MOVSS XMM0,dword ptr [0x00baaa78]
0096e8bd  c744242002000000          MOV dword ptr [ESP + 0x20],0x2
0096e8c5  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0096e8cd  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0096e8d3  e868ecaaff                CALL 0x0041d540
0096e8d8  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0096e8de  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0096e8e4  e837ecaaff                CALL 0x0041d520
0096e8e9  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0096e8ef  90                        NOP
0096e8f0  e86b06d8ff                CALL 0x006eef60
0096e8f5  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0096e8f8  f30f10442448              MOVSS XMM0,dword ptr [ESP + 0x48]
0096e8fe  6a00                      PUSH 0x0
0096e900  50                        PUSH EAX
0096e901  f30f1009                  MOVSS XMM1,dword ptr [ECX]
0096e905  8d842488000000            LEA EAX,[ESP + 0x88]
0096e90c  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
0096e914  6a00                      PUSH 0x0
0096e916  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
0096e91c  f30f5cc1                  SUBSS XMM0,XMM1
0096e920  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
0096e925  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
0096e92d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096e933  50                        PUSH EAX
0096e934  8d84249c000000            LEA EAX,[ESP + 0x9c]
0096e93b  f30f1184249c000000        MOVSS dword ptr [ESP + 0x9c],XMM0
0096e944  f30f10442460              MOVSS XMM0,dword ptr [ESP + 0x60]
0096e94a  f30f5cc1                  SUBSS XMM0,XMM1
0096e94e  50                        PUSH EAX
0096e94f  6a00                      PUSH 0x0
0096e951  6a02                      PUSH 0x2
0096e953  f30f118424ac000000        MOVSS dword ptr [ESP + 0xac],XMM0
0096e95c  e8affad8ff                CALL 0x006fe410
0096e961  f30f100dc8adba00          MOVSS XMM1,dword ptr [0x00baadc8]
0096e969  8bf0                      MOV ESI,EAX
0096e96b  8bce                      MOV ECX,ESI
0096e96d  c7861004000000003ec1      MOV dword ptr [ESI + 0x410],0xc13e0000
0096e977  e8a476d0ff                CALL 0x00676020
0096e97c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096e982  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
0096e98a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0096e990  83790810                  CMP dword ptr [ECX + 0x8],0x10
0096e994  750a                      JNZ 0x0096e9a0
0096e996  c78650030000000090c1      MOV dword ptr [ESI + 0x350],0xc1900000
0096e9a0  0f28842490000000          MOVAPS XMM0,xmmword ptr [ESP + 0x90]
0096e9a8  83ec10                    SUB ESP,0x10
0096e9ab  8bc4                      MOV EAX,ESP
0096e9ad  8bce                      MOV ECX,ESI
0096e9af  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0096e9b2  e89977d0ff                CALL 0x00676150
0096e9b7  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
0096e9bf  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0096e9c7  8b06                      MOV EAX,dword ptr [ESI]
0096e9c9  51                        PUSH ECX
0096e9ca  8bce                      MOV ECX,ESI
0096e9cc  f30f110424                MOVSS dword ptr [ESP],XMM0
0096e9d1  ff5040                    CALL dword ptr [EAX + 0x40]
0096e9d4  f30f1087e0040000          MOVSS XMM0,dword ptr [EDI + 0x4e0]
0096e9dc  8bce                      MOV ECX,ESI
0096e9de  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0096e9e6  f30f5f056ca0ba00          MAXSS XMM0,dword ptr [0x00baa06c]
0096e9ee  f30f118624040000          MOVSS dword ptr [ESI + 0x424],XMM0
0096e9f6  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
0096e9fe  e87d8dd0ff                CALL 0x00677780
0096ea03  8b06                      MOV EAX,dword ptr [ESI]
0096ea05  8d8c2450010000            LEA ECX,[ESP + 0x150]
0096ea0c  6a01                      PUSH 0x1
0096ea0e  6a00                      PUSH 0x0
0096ea10  68ff000000                PUSH 0xff
0096ea15  6aff                      PUSH -0x1
0096ea17  51                        PUSH ECX
0096ea18  8bce                      MOV ECX,ESI
0096ea1a  ff503c                    CALL dword ptr [EAX + 0x3c]
0096ea1d  8b06                      MOV EAX,dword ptr [ESI]
0096ea1f  8bce                      MOV ECX,ESI
0096ea21  ff500c                    CALL dword ptr [EAX + 0xc]
0096ea24  836c242001                SUB dword ptr [ESP + 0x20],0x1
0096ea29  f30f10542428              MOVSS XMM2,dword ptr [ESP + 0x28]
0096ea2f  f30f105c2440              MOVSS XMM3,dword ptr [ESP + 0x40]
0096ea35  0f28ca                    MOVAPS XMM1,XMM2
0096ea38  f30f594c241c              MULSS XMM1,dword ptr [ESP + 0x1c]
0096ea3e  0f28c3                    MOVAPS XMM0,XMM3
0096ea41  f30f59542430              MULSS XMM2,dword ptr [ESP + 0x30]
0096ea47  f30f5944241c              MULSS XMM0,dword ptr [ESP + 0x1c]
0096ea4d  f30f595c2430              MULSS XMM3,dword ptr [ESP + 0x30]
0096ea53  f30f5cd0                  SUBSS XMM2,XMM0
0096ea57  f30f58d9                  ADDSS XMM3,XMM1
0096ea5b  f30f11542428              MOVSS dword ptr [ESP + 0x28],XMM2
0096ea61  f30f11942480000000        MOVSS dword ptr [ESP + 0x80],XMM2
0096ea6a  f30f115c2440              MOVSS dword ptr [ESP + 0x40],XMM3
0096ea70  f30f119c2484000000        MOVSS dword ptr [ESP + 0x84],XMM3
0096ea79  0f8571feffff              JNZ 0x0096e8f0
0096ea7f  8b358c48c300              MOV ESI,dword ptr [0x00c3488c]
0096ea85  8b158848c300              MOV EDX,dword ptr [0x00c34888]
0096ea8b  8b0d8448c300              MOV ECX,dword ptr [0x00c34884]
0096ea91  a18048c300                MOV EAX,[0x00c34880]
0096ea96  eb08                      JMP 0x0096eaa0
0096ea98  8b442474                  MOV EAX,dword ptr [ESP + 0x74]
0096ea9c  8b542470                  MOV EDX,dword ptr [ESP + 0x70]
0096eaa0  f7d2                      NOT EDX
0096eaa2  f7d6                      NOT ESI
0096eaa4  219740040000              AND dword ptr [EDI + 0x440],EDX
0096eaaa  f7d0                      NOT EAX
0096eaac  218738040000              AND dword ptr [EDI + 0x438],EAX
0096eab2  f7d1                      NOT ECX
0096eab4  218f3c040000              AND dword ptr [EDI + 0x43c],ECX
0096eaba  21b744040000              AND dword ptr [EDI + 0x444],ESI
0096eac0  8bb730040000              MOV ESI,dword ptr [EDI + 0x430]
0096eac6  8b9734040000              MOV EDX,dword ptr [EDI + 0x434]
0096eacc  eb04                      JMP 0x0096ead2
0096eace  8b542434                  MOV EDX,dword ptr [ESP + 0x34]
0096ead2  8b8f28040000              MOV ECX,dword ptr [EDI + 0x428]
0096ead8  8bc6                      MOV EAX,ESI
0096eada  23050849c300              AND EAX,dword ptr [0x00c34908]
0096eae0  230d0049c300              AND ECX,dword ptr [0x00c34900]
0096eae6  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0096eaee  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0096eaf2  a10c49c300                MOV EAX,[0x00c3490c]
0096eaf7  23c2                      AND EAX,EDX
0096eaf9  89442430                  MOV dword ptr [ESP + 0x30],EAX
0096eafd  8b872c040000              MOV EAX,dword ptr [EDI + 0x42c]
0096eb03  23050449c300              AND EAX,dword ptr [0x00c34904]
0096eb09  0bc8                      OR ECX,EAX
0096eb0b  750e                      JNZ 0x0096eb1b
0096eb0d  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
0096eb11  0b442430                  OR EAX,dword ptr [ESP + 0x30]
0096eb15  0f84f1000000              JZ 0x0096ec0c
0096eb1b  80bf5c04000000            CMP byte ptr [EDI + 0x45c],0x0
0096eb22  7519                      JNZ 0x0096eb3d
0096eb24  0f57d2                    XORPS XMM2,XMM2
0096eb27  89542434                  MOV dword ptr [ESP + 0x34],EDX
0096eb2b  0f28c8                    MOVAPS XMM1,XMM0
0096eb2e  8bcf                      MOV ECX,EDI
0096eb30  e82bdcd3ff                CALL 0x006ac760
0096eb35  85c0                      TEST EAX,EAX
0096eb37  0f84c3000000              JZ 0x0096ec00
0096eb3d  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
0096eb43  f30f109788030000          MOVSS XMM2,dword ptr [EDI + 0x388]
0096eb4b  0f108728040000            MOVUPS XMM0,xmmword ptr [EDI + 0x428]
0096eb52  83ec10                    SUB ESP,0x10
0096eb55  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0096eb5d  8bc4                      MOV EAX,ESP
0096eb5f  ffb42480000000            PUSH dword ptr [ESP + 0x80]
0096eb66  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0096eb69  e8a292d9ff                CALL 0x00707e10
0096eb6e  8bf0                      MOV ESI,EAX
0096eb70  8d8f20050000              LEA ECX,[EDI + 0x520]
0096eb76  51                        PUSH ECX
0096eb77  8d8ea8040000              LEA ECX,[ESI + 0x4a8]
0096eb7d  e85e3adeff                CALL 0x007525e0
0096eb82  0f108ef0000000            MOVUPS XMM1,xmmword ptr [ESI + 0xf0]
0096eb89  6a01                      PUSH 0x1
0096eb8b  6a00                      PUSH 0x0
0096eb8d  0f118c24e0000000          MOVUPS xmmword ptr [ESP + 0xe0],XMM1
0096eb95  68ff000000                PUSH 0xff
0096eb9a  0f108600010000            MOVUPS XMM0,xmmword ptr [ESI + 0x100]
0096eba1  8d8c24e4000000            LEA ECX,[ESP + 0xe4]
0096eba8  0fc6c9ff                  SHUFPS XMM1,XMM1,0xff
0096ebac  f30f594c2460              MULSS XMM1,dword ptr [ESP + 0x60]
0096ebb2  6aff                      PUSH -0x1
0096ebb4  0f118424f8000000          MOVUPS xmmword ptr [ESP + 0xf8],XMM0
0096ebbc  51                        PUSH ECX
0096ebbd  f30f7e8610010000          MOVQ XMM0,qword ptr [ESI + 0x110]
0096ebc5  8bce                      MOV ECX,ESI
0096ebc7  660fd684240c010000        MOVQ qword ptr [ESP + 0x10c],XMM0
0096ebd0  8b8618010000              MOV EAX,dword ptr [ESI + 0x118]
0096ebd6  89842414010000            MOV dword ptr [ESP + 0x114],EAX
0096ebdd  f30f118c24f8000000        MOVSS dword ptr [ESP + 0xf8],XMM1
0096ebe6  8b06                      MOV EAX,dword ptr [ESI]
0096ebe8  ff503c                    CALL dword ptr [EAX + 0x3c]
0096ebeb  8b06                      MOV EAX,dword ptr [ESI]
0096ebed  8bce                      MOV ECX,ESI
0096ebef  ff500c                    CALL dword ptr [EAX + 0xc]
0096ebf2  8bb730040000              MOV ESI,dword ptr [EDI + 0x430]
0096ebf8  8b9734040000              MOV EDX,dword ptr [EDI + 0x434]
0096ebfe  eb04                      JMP 0x0096ec04
0096ec00  8b542434                  MOV EDX,dword ptr [ESP + 0x34]
0096ec04  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0096ec0c  8b8f28040000              MOV ECX,dword ptr [EDI + 0x428]
0096ec12  8b872c040000              MOV EAX,dword ptr [EDI + 0x42c]
0096ec18  230d7049c300              AND ECX,dword ptr [0x00c34970]
0096ec1e  23057449c300              AND EAX,dword ptr [0x00c34974]
0096ec24  23357849c300              AND ESI,dword ptr [0x00c34978]
0096ec2a  23157c49c300              AND EDX,dword ptr [0x00c3497c]
0096ec30  0bc8                      OR ECX,EAX
0096ec32  7508                      JNZ 0x0096ec3c
0096ec34  0bf2                      OR ESI,EDX
0096ec36  0f84a0010000              JZ 0x0096eddc
0096ec3c  80bf5c04000000            CMP byte ptr [EDI + 0x45c],0x0
0096ec43  7515                      JNZ 0x0096ec5a
0096ec45  0f57d2                    XORPS XMM2,XMM2
0096ec48  0f28c8                    MOVAPS XMM1,XMM0
0096ec4b  8bcf                      MOV ECX,EDI
0096ec4d  e80edbd3ff                CALL 0x006ac760
0096ec52  85c0                      TEST EAX,EAX
0096ec54  0f8482010000              JZ 0x0096eddc
0096ec5a  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096ec60  51                        PUSH ECX
0096ec61  c70424000020c1            MOV dword ptr [ESP],0xc1200000
0096ec68  ff742470                  PUSH dword ptr [ESP + 0x70]
0096ec6c  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0096ec72  e8e946eaff                CALL 0x00813360
0096ec77  84c0                      TEST AL,AL
0096ec79  0f845d010000              JZ 0x0096eddc
0096ec7f  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
0096ec87  8d442448                  LEA EAX,[ESP + 0x48]
0096ec8b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0096ec93  83ec0c                    SUB ESP,0xc
0096ec96  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0096ec9c  0f57db                    XORPS XMM3,XMM3
0096ec9f  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0096eca7  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0096ecaf  c7042400000000            MOV dword ptr [ESP],0x0
0096ecb6  ff742478                  PUSH dword ptr [ESP + 0x78]
0096ecba  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0096ecc0  50                        PUSH EAX
0096ecc1  e88a42eaff                CALL 0x00812f50
0096ecc6  e89502d8ff                CALL 0x006eef60
0096eccb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096ecd1  6a00                      PUSH 0x0
0096ecd3  50                        PUSH EAX
0096ecd4  6a00                      PUSH 0x0
0096ecd6  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
0096ecdc  8d442458                  LEA EAX,[ESP + 0x58]
0096ece0  6840b6c700                PUSH 0xc7b640
0096ece5  50                        PUSH EAX
0096ece6  68b4000000                PUSH 0xb4
0096eceb  68e8030000                PUSH 0x3e8
0096ecf0  e81bf7d8ff                CALL 0x006fe410
0096ecf5  f30f108fe0040000          MOVSS XMM1,dword ptr [EDI + 0x4e0]
0096ecfd  8bf0                      MOV ESI,EAX
0096ecff  0f28c1                    MOVAPS XMM0,XMM1
0096ed02  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0096ed0a  51                        PUSH ECX
0096ed0b  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0096ed13  8bce                      MOV ECX,ESI
0096ed15  8b06                      MOV EAX,dword ptr [ESI]
0096ed17  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0096ed1f  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0096ed27  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0096ed2d  f30f110424                MOVSS dword ptr [ESP],XMM0
0096ed32  ff5040                    CALL dword ptr [EAX + 0x40]
0096ed35  a17816c700                MOV EAX,[0x00c71678]
0096ed3a  ba1e000000                MOV EDX,0x1e
0096ed3f  b93c000000                MOV ECX,0x3c
0096ed44  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0096ed4b  8b06                      MOV EAX,dword ptr [ESI]
0096ed4d  0f4dca                    CMOVGE ECX,EDX
0096ed50  898e5c040000              MOV dword ptr [ESI + 0x45c],ECX
0096ed56  898e60040000              MOV dword ptr [ESI + 0x460],ECX
0096ed5c  8bce                      MOV ECX,ESI
0096ed5e  ff500c                    CALL dword ptr [EAX + 0xc]
0096ed61  8b0d7049c300              MOV ECX,dword ptr [0x00c34970]
0096ed67  8b357849c300              MOV ESI,dword ptr [0x00c34978]
0096ed6d  f7d1                      NOT ECX
0096ed6f  8b157c49c300              MOV EDX,dword ptr [0x00c3497c]
0096ed75  f7d6                      NOT ESI
0096ed77  a17449c300                MOV EAX,[0x00c34974]
0096ed7c  f7d2                      NOT EDX
0096ed7e  218f38040000              AND dword ptr [EDI + 0x438],ECX
0096ed84  f7d0                      NOT EAX
0096ed86  21b740040000              AND dword ptr [EDI + 0x440],ESI
0096ed8c  8d4c242c                  LEA ECX,[ESP + 0x2c]
0096ed90  21873c040000              AND dword ptr [EDI + 0x43c],EAX
0096ed96  219744040000              AND dword ptr [EDI + 0x444],EDX
0096ed9c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0096eda2  c744242c40040000          MOV dword ptr [ESP + 0x2c],0x440
0096edaa  e8d179feff                CALL 0x00956780
0096edaf  83ec08                    SUB ESP,0x8
0096edb2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0096edba  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096edc1  6a00                      PUSH 0x0
0096edc3  6a02                      PUSH 0x2
0096edc5  51                        PUSH ECX
0096edc6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0096edcd  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0096edd3  ff742440                  PUSH dword ptr [ESP + 0x40]
0096edd7  e854eefbff                CALL 0x0092dc30
0096eddc  8b8c247c010000            MOV ECX,dword ptr [ESP + 0x17c]
0096ede3  5f                        POP EDI
0096ede4  5e                        POP ESI
0096ede5  33cc                      XOR ECX,ESP
0096ede7  e83f031800                CALL 0x00aef12b
0096edec  8be5                      MOV ESP,EBP
0096edee  5d                        POP EBP
0096edef  c20800                    RET 0x8
