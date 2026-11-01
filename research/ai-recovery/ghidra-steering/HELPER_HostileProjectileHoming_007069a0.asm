; J460 NPC AI 0x007069a0 HELPER_HostileProjectileHoming
; types=9
; identities=9.*
; entry=007069a0
007069a0  55                        PUSH EBP
007069a1  8bec                      MOV EBP,ESP
007069a3  6aff                      PUSH -0x1
007069a5  689dc4af00                PUSH 0xafc49d
007069aa  64a100000000              MOV EAX,FS:[0x0]
007069b0  50                        PUSH EAX
007069b1  81ec90000000              SUB ESP,0x90
007069b7  53                        PUSH EBX
007069b8  56                        PUSH ESI
007069b9  57                        PUSH EDI
007069ba  a1b493bf00                MOV EAX,[0x00bf93b4]
007069bf  33c5                      XOR EAX,EBP
007069c1  50                        PUSH EAX
007069c2  8d45f4                    LEA EAX,[EBP + -0xc]
007069c5  64a300000000              MOV FS:[0x0],EAX
007069cb  8bfa                      MOV EDI,EDX
007069cd  897db0                    MOV dword ptr [EBP + -0x50],EDI
007069d0  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
007069d5  8bd9                      MOV EBX,ECX
007069d7  895dd0                    MOV dword ptr [EBP + -0x30],EBX
007069da  8a4508                    MOV AL,byte ptr [EBP + 0x8]
007069dd  0f28c1                    MOVAPS XMM0,XMM1
007069e0  f30f59c1                  MULSS XMM0,XMM1
007069e4  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
007069eb  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
007069f0  84c0                      TEST AL,AL
007069f2  7535                      JNZ 0x00706a29
007069f4  38450c                    CMP byte ptr [EBP + 0xc],AL
007069f7  7430                      JZ 0x00706a29
007069f9  85ff                      TEST EDI,EDI
007069fb  7430                      JZ 0x00706a2d
007069fd  8bcf                      MOV ECX,EDI
007069ff  e82c5bfaff                CALL 0x006ac530
00706a04  84c0                      TEST AL,AL
00706a06  740e                      JZ 0x00706a16
00706a08  8b87380f0000              MOV EAX,dword ptr [EDI + 0xf38]
00706a0e  85c0                      TEST EAX,EAX
00706a10  0f853d090000              JNZ 0x00707353
00706a16  8a4508                    MOV AL,byte ptr [EBP + 0x8]
00706a19  837f283d                  CMP dword ptr [EDI + 0x28],0x3d
00706a1d  750e                      JNZ 0x00706a2d
00706a1f  837f2c05                  CMP dword ptr [EDI + 0x2c],0x5
00706a23  7508                      JNZ 0x00706a2d
00706a25  b101                      MOV CL,0x1
00706a27  eb06                      JMP 0x00706a2f
00706a29  85ff                      TEST EDI,EDI
00706a2b  75ec                      JNZ 0x00706a19
00706a2d  32c9                      XOR CL,CL
00706a2f  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00706a35  84c9                      TEST CL,CL
00706a37  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00706a3f  ba01000000                MOV EDX,0x1
00706a44  0fb6c0                    MOVZX EAX,AL
00706a47  0f44d0                    CMOVZ EDX,EAX
00706a4a  884d0b                    MOV byte ptr [EBP + 0xb],CL
00706a4d  0fb6450c                  MOVZX EAX,byte ptr [EBP + 0xc]
00706a51  b900000000                MOV ECX,0x0
00706a56  0f44c8                    CMOVZ ECX,EAX
00706a59  8955bc                    MOV dword ptr [EBP + -0x44],EDX
00706a5c  8b86acba0100              MOV EAX,dword ptr [ESI + 0x1baac]
00706a62  81c6a8ba0100              ADD ESI,0x1baa8
00706a68  894dcc                    MOV dword ptr [EBP + -0x34],ECX
00706a6b  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00706a72  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00706a77  2b06                      SUB EAX,dword ptr [ESI]
00706a79  c1f802                    SAR EAX,0x2
00706a7c  85c0                      TEST EAX,EAX
00706a7e  0f84d5030000              JZ 0x00706e59
00706a84  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00706a87  8bc1                      MOV EAX,ECX
00706a89  8b16                      MOV EDX,dword ptr [ESI]
00706a8b  2bc2                      SUB EAX,EDX
00706a8d  c1f802                    SAR EAX,0x2
00706a90  85c0                      TEST EAX,EAX
00706a92  7514                      JNZ 0x00706aa8
00706a94  68bce6b700                PUSH 0xb7e6bc
00706a99  6a10                      PUSH 0x10
00706a9b  e820a83000                CALL 0x00a112c0
00706aa0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00706aa3  83c408                    ADD ESP,0x8
00706aa6  8b16                      MOV EDX,dword ptr [ESI]
00706aa8  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
00706aab  2bca                      SUB ECX,EDX
00706aad  c1f902                    SAR ECX,0x2
00706ab0  3bc1                      CMP EAX,ECX
00706ab2  7303                      JNC 0x00706ab7
00706ab4  8d1482                    LEA EDX,[EDX + EAX*0x4]
00706ab7  8b32                      MOV ESI,dword ptr [EDX]
00706ab9  80bea920000000            CMP byte ptr [ESI + 0x20a9],0x0
00706ac0  0f8567030000              JNZ 0x00706e2d
00706ac6  80be7201000000            CMP byte ptr [ESI + 0x172],0x0
00706acd  7435                      JZ 0x00706b04
00706acf  8b86c0130000              MOV EAX,dword ptr [ESI + 0x13c0]
00706ad5  83f81d                    CMP EAX,0x1d
00706ad8  7405                      JZ 0x00706adf
00706ada  83f826                    CMP EAX,0x26
00706add  7525                      JNZ 0x00706b04
00706adf  8b86681e0000              MOV EAX,dword ptr [ESI + 0x1e68]
00706ae5  85c0                      TEST EAX,EAX
00706ae7  741b                      JZ 0x00706b04
00706ae9  8b881c160000              MOV ECX,dword ptr [EAX + 0x161c]
00706aef  83f9ff                    CMP ECX,-0x1
00706af2  7410                      JZ 0x00706b04
00706af4  3b8e1c160000              CMP ECX,dword ptr [ESI + 0x161c]
00706afa  7d08                      JGE 0x00706b04
00706afc  3bc6                      CMP EAX,ESI
00706afe  0f8529030000              JNZ 0x00706e2d
00706b04  85ff                      TEST EDI,EDI
00706b06  743c                      JZ 0x00706b44
00706b08  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00706b0e  2500000020                AND EAX,0x20000000
00706b13  83c800                    OR EAX,0x0
00706b16  7404                      JZ 0x00706b1c
00706b18  b001                      MOV AL,0x1
00706b1a  eb02                      JMP 0x00706b1e
00706b1c  32c0                      XOR AL,AL
00706b1e  84c0                      TEST AL,AL
00706b20  7422                      JZ 0x00706b44
00706b22  56                        PUSH ESI
00706b23  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00706b29  e8e2a7d2ff                CALL 0x00431310
00706b2e  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00706b34  8bcf                      MOV ECX,EDI
00706b36  50                        PUSH EAX
00706b37  e8d461faff                CALL 0x006acd10
00706b3c  84c0                      TEST AL,AL
00706b3e  0f85e9020000              JNZ 0x00706e2d
00706b44  807dbc00                  CMP byte ptr [EBP + -0x44],0x0
00706b48  7407                      JZ 0x00706b51
00706b4a  8bc6                      MOV EAX,ESI
00706b4c  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00706b4f  eb33                      JMP 0x00706b84
00706b51  8b8650140000              MOV EAX,dword ptr [ESI + 0x1450]
00706b57  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00706b5a  85c0                      TEST EAX,EAX
00706b5c  752a                      JNZ 0x00706b88
00706b5e  8b864c140000              MOV EAX,dword ptr [ESI + 0x144c]
00706b64  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00706b67  85c0                      TEST EAX,EAX
00706b69  751d                      JNZ 0x00706b88
00706b6b  8b8e0c200000              MOV ECX,dword ptr [ESI + 0x200c]
00706b71  85c9                      TEST ECX,ECX
00706b73  740a                      JZ 0x00706b7f
00706b75  e8161efaff                CALL 0x006a8990
00706b7a  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00706b7d  eb05                      JMP 0x00706b84
00706b7f  8bc6                      MOV EAX,ESI
00706b81  8975e0                    MOV dword ptr [EBP + -0x20],ESI
00706b84  85c0                      TEST EAX,EAX
00706b86  740a                      JZ 0x00706b92
00706b88  83782801                  CMP dword ptr [EAX + 0x28],0x1
00706b8c  7504                      JNZ 0x00706b92
00706b8e  8bd8                      MOV EBX,EAX
00706b90  eb02                      JMP 0x00706b94
00706b92  33db                      XOR EBX,EBX
00706b94  85ff                      TEST EDI,EDI
00706b96  7422                      JZ 0x00706bba
00706b98  817f2862030000            CMP dword ptr [EDI + 0x28],0x362
00706b9f  7519                      JNZ 0x00706bba
00706ba1  8b8ec0130000              MOV ECX,dword ptr [ESI + 0x13c0]
00706ba7  83f913                    CMP ECX,0x13
00706baa  740e                      JZ 0x00706bba
00706bac  83f925                    CMP ECX,0x25
00706baf  7409                      JZ 0x00706bba
00706bb1  83f927                    CMP ECX,0x27
00706bb4  0f8573020000              JNZ 0x00706e2d
00706bba  83782803                  CMP dword ptr [EAX + 0x28],0x3
00706bbe  750c                      JNZ 0x00706bcc
00706bc0  83782c3e                  CMP dword ptr [EAX + 0x2c],0x3e
00706bc4  7506                      JNZ 0x00706bcc
00706bc6  8b9810040000              MOV EBX,dword ptr [EAX + 0x410]
00706bcc  85db                      TEST EBX,EBX
00706bce  7412                      JZ 0x00706be2
00706bd0  8bcb                      MOV ECX,EBX
00706bd2  e8e9c60b00                CALL 0x007c32c0
00706bd7  84c0                      TEST AL,AL
00706bd9  0f854e020000              JNZ 0x00706e2d
00706bdf  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00706be2  837d1000                  CMP dword ptr [EBP + 0x10],0x0
00706be6  8b75d0                    MOV ESI,dword ptr [EBP + -0x30]
00706be9  7413                      JZ 0x00706bfe
00706beb  50                        PUSH EAX
00706bec  57                        PUSH EDI
00706bed  56                        PUSH ESI
00706bee  ff5510                    CALL dword ptr [EBP + 0x10]
00706bf1  d95dec                    FSTP dword ptr [EBP + -0x14]
00706bf4  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
00706bf9  83c40c                    ADD ESP,0xc
00706bfc  eb25                      JMP 0x00706c23
00706bfe  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00706c06  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00706c0e  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00706c13  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00706c17  f30f59c9                  MULSS XMM1,XMM1
00706c1b  f30f59c0                  MULSS XMM0,XMM0
00706c1f  f30f58c8                  ADDSS XMM1,XMM0
00706c23  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00706c28  85db                      TEST EBX,EBX
00706c2a  0f84e8010000              JZ 0x00706e18
00706c30  6a00                      PUSH 0x0
00706c32  6a00                      PUSH 0x0
00706c34  6a00                      PUSH 0x0
00706c36  8bcb                      MOV ECX,EBX
00706c38  e8c3c40b00                CALL 0x007c3100
00706c3d  84c0                      TEST AL,AL
00706c3f  7417                      JZ 0x00706c58
00706c41  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
00706c46  f30f580d54abba00          ADDSS XMM1,dword ptr [0x00baab54]
00706c4e  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00706c53  e909010000                JMP 0x00706d61
00706c58  80bb1004000000            CMP byte ptr [EBX + 0x410],0x0
00706c5f  7409                      JZ 0x00706c6a
00706c61  83bb1404000000            CMP dword ptr [EBX + 0x414],0x0
00706c68  7e24                      JLE 0x00706c8e
00706c6a  85ff                      TEST EDI,EDI
00706c6c  7420                      JZ 0x00706c8e
00706c6e  817f2822030000            CMP dword ptr [EDI + 0x28],0x322
00706c75  7517                      JNZ 0x00706c8e
00706c77  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
00706c7c  f30f580db0abba00          ADDSS XMM1,dword ptr [0x00baabb0]
00706c84  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00706c89  e9d3000000                JMP 0x00706d61
00706c8e  8b83681e0000              MOV EAX,dword ptr [EBX + 0x1e68]
00706c94  85c0                      TEST EAX,EAX
00706c96  0f84c0000000              JZ 0x00706d5c
00706c9c  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
00706ca4  f30f10a840030000          MOVSS XMM5,dword ptr [EAX + 0x340]
00706cac  0f28e3                    MOVAPS XMM4,XMM3
00706caf  f30f108360030000          MOVSS XMM0,dword ptr [EBX + 0x360]
00706cb7  0f28d5                    MOVAPS XMM2,XMM5
00706cba  f30f108b64030000          MOVSS XMM1,dword ptr [EBX + 0x364]
00706cc2  f30f588060030000          ADDSS XMM0,dword ptr [EAX + 0x360]
00706cca  f30f588864030000          ADDSS XMM1,dword ptr [EAX + 0x364]
00706cd2  f30f5ca33c030000          SUBSS XMM4,dword ptr [EBX + 0x33c]
00706cda  f30f5c9340030000          SUBSS XMM2,dword ptr [EBX + 0x340]
00706ce2  f30f59c4                  MULSS XMM0,XMM4
00706ce6  f30f59ca                  MULSS XMM1,XMM2
00706cea  f30f58c8                  ADDSS XMM1,XMM0
00706cee  0f57c0                    XORPS XMM0,XMM0
00706cf1  0f2fc1                    COMISS XMM0,XMM1
00706cf4  7666                      JBE 0x00706d5c
00706cf6  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
00706cfe  f30f59d2                  MULSS XMM2,XMM2
00706d02  f30f59e4                  MULSS XMM4,XMM4
00706d06  f30f58d4                  ADDSS XMM2,XMM4
00706d0a  0f2fc2                    COMISS XMM0,XMM2
00706d0d  764d                      JBE 0x00706d5c
00706d0f  837d1000                  CMP dword ptr [EBP + 0x10],0x0
00706d13  7420                      JZ 0x00706d35
00706d15  50                        PUSH EAX
00706d16  57                        PUSH EDI
00706d17  56                        PUSH ESI
00706d18  ff5510                    CALL dword ptr [EBP + 0x10]
00706d1b  d95dec                    FSTP dword ptr [EBP + -0x14]
00706d1e  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
00706d23  83c40c                    ADD ESP,0xc
00706d26  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00706d2e  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00706d33  eb2c                      JMP 0x00706d61
00706d35  f30f5c1e                  SUBSS XMM3,dword ptr [ESI]
00706d39  0f28cd                    MOVAPS XMM1,XMM5
00706d3c  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00706d41  f30f59db                  MULSS XMM3,XMM3
00706d45  f30f59c9                  MULSS XMM1,XMM1
00706d49  f30f58cb                  ADDSS XMM1,XMM3
00706d4d  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00706d55  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00706d5a  eb05                      JMP 0x00706d61
00706d5c  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
00706d61  807d0b00                  CMP byte ptr [EBP + 0xb],0x0
00706d65  0f84ad000000              JZ 0x00706e18
00706d6b  8d8388150000              LEA EAX,[EBX + 0x1588]
00706d71  33ff                      XOR EDI,EDI
00706d73  33f6                      XOR ESI,ESI
00706d75  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00706d78  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00706d80  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
00706d83  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00706d89  ff70f8                    PUSH dword ptr [EAX + -0x8]
00706d8c  8d8904a40200              LEA ECX,[ECX + 0x2a404]
00706d92  e8798f0200                CALL 0x0072fd10
00706d97  85c0                      TEST EAX,EAX
00706d99  7423                      JZ 0x00706dbe
00706d9b  56                        PUSH ESI
00706d9c  8bcb                      MOV ECX,EBX
00706d9e  e87da50800                CALL 0x00791320
00706da3  85c0                      TEST EAX,EAX
00706da5  7e17                      JLE 0x00706dbe
00706da7  56                        PUSH ESI
00706da8  8bcb                      MOV ECX,EBX
00706daa  e881a70800                CALL 0x00791530
00706daf  83f801                    CMP EAX,0x1
00706db2  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
00706db5  7503                      JNZ 0x00706dba
00706db7  47                        INC EDI
00706db8  eb07                      JMP 0x00706dc1
00706dba  0338                      ADD EDI,dword ptr [EAX]
00706dbc  eb03                      JMP 0x00706dc1
00706dbe  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
00706dc1  46                        INC ESI
00706dc2  83c020                    ADD EAX,0x20
00706dc5  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00706dc8  83fe04                    CMP ESI,0x4
00706dcb  72b3                      JC 0x00706d80
00706dcd  f30f100d34acba00          MOVSS XMM1,dword ptr [0x00baac34]
00706dd5  8d45ec                    LEA EAX,[EBP + -0x14]
00706dd8  660f6ec7                  MOVD XMM0,EDI
00706ddc  8d4da0                    LEA ECX,[EBP + -0x60]
00706ddf  0f5bc0                    CVTDQ2PS XMM0,XMM0
00706de2  8b7db0                    MOV EDI,dword ptr [EBP + -0x50]
00706de5  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
00706dec  f30f5905e8abba00          MULSS XMM0,dword ptr [0x00baabe8]
00706df4  f30f5cc8                  SUBSS XMM1,XMM0
00706df8  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00706dff  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
00706e04  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
00706e09  f30f590d20a0ba00          MULSS XMM1,dword ptr [0x00baa020]
00706e11  0f46c1                    CMOVBE EAX,ECX
00706e14  f30f5808                  ADDSS XMM1,dword ptr [EAX]
00706e18  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00706e1d  0f2fc1                    COMISS XMM0,XMM1
00706e20  760b                      JBE 0x00706e2d
00706e22  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00706e25  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00706e28  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00706e2d  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00706e33  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00706e36  81c6a8ba0100              ADD ESI,0x1baa8
00706e3c  41                        INC ECX
00706e3d  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
00706e40  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00706e43  2b06                      SUB EAX,dword ptr [ESI]
00706e45  c1f802                    SAR EAX,0x2
00706e48  3bc8                      CMP ECX,EAX
00706e4a  0f8234fcffff              JC 0x00706a84
00706e50  8b5dd0                    MOV EBX,dword ptr [EBP + -0x30]
00706e53  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
00706e56  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
00706e59  84d2                      TEST DL,DL
00706e5b  0f8570020000              JNZ 0x007070d1
00706e61  84c9                      TEST CL,CL
00706e63  0f84e2000000              JZ 0x00706f4b
00706e69  a17816c700                MOV EAX,[0x00c71678]
00706e6e  6a00                      PUSH 0x0
00706e70  6a01                      PUSH 0x1
00706e72  6aff                      PUSH -0x1
00706e74  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00706e7a  8d45c0                    LEA EAX,[EBP + -0x40]
00706e7d  6a43                      PUSH 0x43
00706e7f  6a03                      PUSH 0x3
00706e81  81c118120000              ADD ECX,0x1218
00706e87  50                        PUSH EAX
00706e88  e8d340d1ff                CALL 0x0041af60
00706e8d  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00706e94  33f6                      XOR ESI,ESI
00706e96  8b55cc                    MOV EDX,dword ptr [EBP + -0x34]
00706e99  85d2                      TEST EDX,EDX
00706e9b  7469                      JZ 0x00706f06
00706e9d  0f1f00                    NOP dword ptr [EAX]
00706ea0  837d1000                  CMP dword ptr [EBP + 0x10],0x0
00706ea4  8b4dc4                    MOV ECX,dword ptr [EBP + -0x3c]
00706ea7  741b                      JZ 0x00706ec4
00706ea9  ff34b1                    PUSH dword ptr [ECX + ESI*0x4]
00706eac  57                        PUSH EDI
00706ead  53                        PUSH EBX
00706eae  ff5510                    CALL dword ptr [EBP + 0x10]
00706eb1  8b4dc4                    MOV ECX,dword ptr [EBP + -0x3c]
00706eb4  83c40c                    ADD ESP,0xc
00706eb7  8b55cc                    MOV EDX,dword ptr [EBP + -0x34]
00706eba  d95d08                    FSTP dword ptr [EBP + 0x8]
00706ebd  f30f104d08                MOVSS XMM1,dword ptr [EBP + 0x8]
00706ec2  eb28                      JMP 0x00706eec
00706ec4  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
00706ec7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00706ecf  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00706ed7  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00706edc  f30f5c03                  SUBSS XMM0,dword ptr [EBX]
00706ee0  f30f59c9                  MULSS XMM1,XMM1
00706ee4  f30f59c0                  MULSS XMM0,XMM0
00706ee8  f30f58c8                  ADDSS XMM1,XMM0
00706eec  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00706ef1  0f2fc1                    COMISS XMM0,XMM1
00706ef4  760b                      JBE 0x00706f01
00706ef6  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
00706ef9  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00706efc  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00706f01  46                        INC ESI
00706f02  3bf2                      CMP ESI,EDX
00706f04  729a                      JC 0x00706ea0
00706f06  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00706f0d  807dc000                  CMP byte ptr [EBP + -0x40],0x0
00706f11  7538                      JNZ 0x00706f4b
00706f13  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
00706f19  85d2                      TEST EDX,EDX
00706f1b  7405                      JZ 0x00706f22
00706f1d  83c230                    ADD EDX,0x30
00706f20  eb05                      JMP 0x00706f27
00706f22  ba18f6c700                MOV EDX,0xc7f618
00706f27  8b4dc4                    MOV ECX,dword ptr [EBP + -0x3c]
00706f2a  85c9                      TEST ECX,ECX
00706f2c  7416                      JZ 0x00706f44
00706f2e  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
00706f31  83c1fc                    ADD ECX,-0x4
00706f34  2902                      SUB dword ptr [EDX],EAX
00706f36  51                        PUSH ECX
00706f37  835a0400                  SBB dword ptr [EDX + 0x4],0x0
00706f3b  ff15dc87b100              CALL dword ptr [0x00b187dc]
00706f41  83c404                    ADD ESP,0x4
00706f44  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00706f4b  a17816c700                MOV EAX,[0x00c71678]
00706f50  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00706f56  81c118120000              ADD ECX,0x1218
00706f5c  f681c000000001            TEST byte ptr [ECX + 0xc0],0x1
00706f63  0f8468010000              JZ 0x007070d1
00706f69  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00706f6e  8d55d8                    LEA EDX,[EBP + -0x28]
00706f71  0f2f057cabba00            COMISS XMM0,dword ptr [0x00baab7c]
00706f78  8d4508                    LEA EAX,[EBP + 0x8]
00706f7b  c745080000fa43            MOV dword ptr [EBP + 0x8],0x43fa0000
00706f82  6a08                      PUSH 0x8
00706f84  53                        PUSH EBX
00706f85  0f46c2                    CMOVBE EAX,EDX
00706f88  8d55a4                    LEA EDX,[EBP + -0x5c]
00706f8b  52                        PUSH EDX
00706f8c  f30f1018                  MOVSS XMM3,dword ptr [EAX]
00706f90  e8fb37d1ff                CALL 0x0041a790
00706f95  33c9                      XOR ECX,ECX
00706f97  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00706f9e  894d08                    MOV dword ptr [EBP + 0x8],ECX
00706fa1  394db0                    CMP dword ptr [EBP + -0x50],ECX
00706fa4  0f86ec000000              JBE 0x00707096
00706faa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00706fb0  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
00706fb3  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00706fb6  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00706fba  753c                      JNZ 0x00706ff8
00706fbc  6a00                      PUSH 0x0
00706fbe  6800000020                PUSH 0x20000000
00706fc3  8bcf                      MOV ECX,EDI
00706fc5  e86604d1ff                CALL 0x00417430
00706fca  84c0                      TEST AL,AL
00706fcc  7427                      JZ 0x00706ff5
00706fce  56                        PUSH ESI
00706fcf  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00706fd5  e836a3d2ff                CALL 0x00431310
00706fda  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00706fe0  8bcf                      MOV ECX,EDI
00706fe2  50                        PUSH EAX
00706fe3  e8285dfaff                CALL 0x006acd10
00706fe8  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
00706feb  84c0                      TEST AL,AL
00706fed  0f8596000000              JNZ 0x00707089
00706ff3  eb03                      JMP 0x00706ff8
00706ff5  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
00706ff8  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
00706fff  0f8584000000              JNZ 0x00707089
00707005  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0070700b  33c0                      XOR EAX,EAX
0070700d  81e100001000              AND ECX,0x100000
00707013  0bc1                      OR EAX,ECX
00707015  746f                      JZ 0x00707086
00707017  85ff                      TEST EDI,EDI
00707019  746b                      JZ 0x00707086
0070701b  8b07                      MOV EAX,dword ptr [EDI]
0070701d  8bcf                      MOV ECX,EDI
0070701f  56                        PUSH ESI
00707020  8b4050                    MOV EAX,dword ptr [EAX + 0x50]
00707023  ffd0                      CALL EAX
00707025  84c0                      TEST AL,AL
00707027  745d                      JZ 0x00707086
00707029  837d1000                  CMP dword ptr [EBP + 0x10],0x0
0070702d  7413                      JZ 0x00707042
0070702f  56                        PUSH ESI
00707030  57                        PUSH EDI
00707031  53                        PUSH EBX
00707032  ff5510                    CALL dword ptr [EBP + 0x10]
00707035  d95dcc                    FSTP dword ptr [EBP + -0x34]
00707038  f30f104dcc                MOVSS XMM1,dword ptr [EBP + -0x34]
0070703d  83c40c                    ADD ESP,0xc
00707040  eb25                      JMP 0x00707067
00707042  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0070704a  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00707052  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00707057  f30f5c03                  SUBSS XMM0,dword ptr [EBX]
0070705b  f30f59c9                  MULSS XMM1,XMM1
0070705f  f30f59c0                  MULSS XMM0,XMM0
00707063  f30f58c8                  ADDSS XMM1,XMM0
00707067  f30f590d08a0ba00          MULSS XMM1,dword ptr [0x00baa008]
0070706f  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
00707072  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00707077  0f2fc1                    COMISS XMM0,XMM1
0070707a  760d                      JBE 0x00707089
0070707c  8975dc                    MOV dword ptr [EBP + -0x24],ESI
0070707f  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00707084  eb03                      JMP 0x00707089
00707086  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
00707089  41                        INC ECX
0070708a  894d08                    MOV dword ptr [EBP + 0x8],ECX
0070708d  3b4db0                    CMP ECX,dword ptr [EBP + -0x50]
00707090  0f821affffff              JC 0x00706fb0
00707096  807da400                  CMP byte ptr [EBP + -0x5c],0x0
0070709a  0f85b0020000              JNZ 0x00707350
007070a0  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
007070a6  85d2                      TEST EDX,EDX
007070a8  7405                      JZ 0x007070af
007070aa  83c230                    ADD EDX,0x30
007070ad  eb05                      JMP 0x007070b4
007070af  ba18f6c700                MOV EDX,0xc7f618
007070b4  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
007070b7  85c9                      TEST ECX,ECX
007070b9  0f8491020000              JZ 0x00707350
007070bf  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
007070c2  83c1fc                    ADD ECX,-0x4
007070c5  2902                      SUB dword ptr [EDX],EAX
007070c7  51                        PUSH ECX
007070c8  835a0400                  SBB dword ptr [EDX + 0x4],0x0
007070cc  e976020000                JMP 0x00707347
007070d1  85ff                      TEST EDI,EDI
007070d3  0f8477020000              JZ 0x00707350
007070d9  817f2822030000            CMP dword ptr [EDI + 0x28],0x322
007070e0  0f856a020000              JNZ 0x00707350
007070e6  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
007070ea  750d                      JNZ 0x007070f9
007070ec  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
007070f4  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
007070f9  a17816c700                MOV EAX,[0x00c71678]
007070fe  8d55d8                    LEA EDX,[EBP + -0x28]
00707101  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00707106  6a08                      PUSH 0x8
00707108  53                        PUSH EBX
00707109  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0070710f  8d4508                    LEA EAX,[EBP + 0x8]
00707112  81c118120000              ADD ECX,0x1218
00707118  c745080000fa43            MOV dword ptr [EBP + 0x8],0x43fa0000
0070711f  0f2f057cabba00            COMISS XMM0,dword ptr [0x00baab7c]
00707126  0f46c2                    CMOVBE EAX,EDX
00707129  8d5590                    LEA EDX,[EBP + -0x70]
0070712c  52                        PUSH EDX
0070712d  f30f1018                  MOVSS XMM3,dword ptr [EAX]
00707131  e85a36d1ff                CALL 0x0041a790
00707136  33c9                      XOR ECX,ECX
00707138  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0070713f  894d08                    MOV dword ptr [EBP + 0x8],ECX
00707142  394d9c                    CMP dword ptr [EBP + -0x64],ECX
00707145  0f86cf010000              JBE 0x0070731a
0070714b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00707150  8b4594                    MOV EAX,dword ptr [EBP + -0x6c]
00707153  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00707156  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0070715a  7537                      JNZ 0x00707193
0070715c  6a00                      PUSH 0x0
0070715e  6800000020                PUSH 0x20000000
00707163  8bcf                      MOV ECX,EDI
00707165  e8c602d1ff                CALL 0x00417430
0070716a  84c0                      TEST AL,AL
0070716c  7422                      JZ 0x00707190
0070716e  56                        PUSH ESI
0070716f  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00707175  e896a1d2ff                CALL 0x00431310
0070717a  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00707180  8bcf                      MOV ECX,EDI
00707182  50                        PUSH EAX
00707183  e8885bfaff                CALL 0x006acd10
00707188  84c0                      TEST AL,AL
0070718a  0f857a010000              JNZ 0x0070730a
00707190  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
00707193  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0070719a  0f856d010000              JNZ 0x0070730d
007071a0  3bf7                      CMP ESI,EDI
007071a2  0f8465010000              JZ 0x0070730d
007071a8  a17816c700                MOV EAX,[0x00c71678]
007071ad  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
007071b3  2b8628030000              SUB EAX,dword ptr [ESI + 0x328]
007071b9  83f801                    CMP EAX,0x1
007071bc  0f8e4b010000              JLE 0x0070730d
007071c2  6a00                      PUSH 0x0
007071c4  8bce                      MOV ECX,ESI
007071c6  e89553faff                CALL 0x006ac560
007071cb  84c0                      TEST AL,AL
007071cd  0f8437010000              JZ 0x0070730a
007071d3  a17816c700                MOV EAX,[0x00c71678]
007071d8  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
007071df  7c0d                      JL 0x007071ee
007071e1  837e2801                  CMP dword ptr [ESI + 0x28],0x1
007071e5  7507                      JNZ 0x007071ee
007071e7  b901000000                MOV ECX,0x1
007071ec  eb61                      JMP 0x0070724f
007071ee  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
007071f1  8d41f6                    LEA EAX,[ECX + -0xa]
007071f4  3ddd030000                CMP EAX,0x3dd
007071f9  0f870b010000              JA 0x0070730a
007071ff  83f921                    CMP ECX,0x21
00707202  0f8402010000              JZ 0x0070730a
00707208  83f911                    CMP ECX,0x11
0070720b  0f84f9000000              JZ 0x0070730a
00707211  81f924010000              CMP ECX,0x124
00707217  0f84ed000000              JZ 0x0070730a
0070721d  81f975030000              CMP ECX,0x375
00707223  7506                      JNZ 0x0070722b
00707225  837e2c0a                  CMP dword ptr [ESI + 0x2c],0xa
00707229  eb1e                      JMP 0x00707249
0070722b  81f9c0030000              CMP ECX,0x3c0
00707231  0f84d3000000              JZ 0x0070730a
00707237  81f9c5030000              CMP ECX,0x3c5
0070723d  0f84c7000000              JZ 0x0070730a
00707243  81f9f5000000              CMP ECX,0xf5
00707249  0f84bb000000              JZ 0x0070730a
0070724f  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
00707256  0f85ae000000              JNZ 0x0070730a
0070725c  8b9668010000              MOV EDX,dword ptr [ESI + 0x168]
00707262  8bc2                      MOV EAX,EDX
00707264  83e010                    AND EAX,0x10
00707267  83c800                    OR EAX,0x0
0070726a  0f859a000000              JNZ 0x0070730a
00707270  394510                    CMP dword ptr [EBP + 0x10],EAX
00707273  741c                      JZ 0x00707291
00707275  56                        PUSH ESI
00707276  57                        PUSH EDI
00707277  53                        PUSH EBX
00707278  ff5510                    CALL dword ptr [EBP + 0x10]
0070727b  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
0070727e  83c40c                    ADD ESP,0xc
00707281  8b9668010000              MOV EDX,dword ptr [ESI + 0x168]
00707287  d95dc8                    FSTP dword ptr [EBP + -0x38]
0070728a  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
0070728f  eb25                      JMP 0x007072b6
00707291  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00707299  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
007072a1  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
007072a6  f30f5c03                  SUBSS XMM0,dword ptr [EBX]
007072aa  f30f59c9                  MULSS XMM1,XMM1
007072ae  f30f59c0                  MULSS XMM0,XMM0
007072b2  f30f58c8                  ADDSS XMM1,XMM0
007072b6  81f925030000              CMP ECX,0x325
007072bc  7515                      JNZ 0x007072d3
007072be  81e200000020              AND EDX,0x20000000
007072c4  83ca00                    OR EDX,0x0
007072c7  752a                      JNZ 0x007072f3
007072c9  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
007072d1  eb1b                      JMP 0x007072ee
007072d3  81f922030000              CMP ECX,0x322
007072d9  7508                      JNZ 0x007072e3
007072db  f30f580d94acba00          ADDSS XMM1,dword ptr [0x00baac94]
007072e3  81e200000020              AND EDX,0x20000000
007072e9  83ca00                    OR EDX,0x0
007072ec  7505                      JNZ 0x007072f3
007072ee  f30f594db8                MULSS XMM1,dword ptr [EBP + -0x48]
007072f3  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
007072f8  0f2fc1                    COMISS XMM0,XMM1
007072fb  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
007072fe  760d                      JBE 0x0070730d
00707300  8975dc                    MOV dword ptr [EBP + -0x24],ESI
00707303  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00707308  eb03                      JMP 0x0070730d
0070730a  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0070730d  41                        INC ECX
0070730e  894d08                    MOV dword ptr [EBP + 0x8],ECX
00707311  3b4d9c                    CMP ECX,dword ptr [EBP + -0x64]
00707314  0f8236feffff              JC 0x00707150
0070731a  807d9000                  CMP byte ptr [EBP + -0x70],0x0
0070731e  7530                      JNZ 0x00707350
00707320  a178dec700                MOV EAX,[0x00c7de78]
00707325  85c0                      TEST EAX,EAX
00707327  7405                      JZ 0x0070732e
00707329  83c030                    ADD EAX,0x30
0070732c  eb05                      JMP 0x00707333
0070732e  b818f6c700                MOV EAX,0xc7f618
00707333  8b5594                    MOV EDX,dword ptr [EBP + -0x6c]
00707336  85d2                      TEST EDX,EDX
00707338  7416                      JZ 0x00707350
0070733a  8b4afc                    MOV ECX,dword ptr [EDX + -0x4]
0070733d  83c2fc                    ADD EDX,-0x4
00707340  2908                      SUB dword ptr [EAX],ECX
00707342  52                        PUSH EDX
00707343  83580400                  SBB dword ptr [EAX + 0x4],0x0
00707347  ff15dc87b100              CALL dword ptr [0x00b187dc]
0070734d  83c404                    ADD ESP,0x4
00707350  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
00707353  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00707356  64890d00000000            MOV dword ptr FS:[0x0],ECX
0070735d  59                        POP ECX
0070735e  5f                        POP EDI
0070735f  5e                        POP ESI
00707360  5b                        POP EBX
00707361  8be5                      MOV ESP,EBP
00707363  5d                        POP EBP
00707364  c3                        RET
