; J460 NPC AI 0x00560ca0 AI_00560ca0
; types=873
; identities=873.0.0
; entry=00560ca0
00560ca0  55                        PUSH EBP
00560ca1  8bec                      MOV EBP,ESP
00560ca3  6aff                      PUSH -0x1
00560ca5  68ed4daf00                PUSH 0xaf4ded
00560caa  64a100000000              MOV EAX,FS:[0x0]
00560cb0  50                        PUSH EAX
00560cb1  83ec64                    SUB ESP,0x64
00560cb4  a1b493bf00                MOV EAX,[0x00bf93b4]
00560cb9  33c5                      XOR EAX,EBP
00560cbb  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00560cbe  53                        PUSH EBX
00560cbf  56                        PUSH ESI
00560cc0  57                        PUSH EDI
00560cc1  50                        PUSH EAX
00560cc2  8d45f4                    LEA EAX,[EBP + -0xc]
00560cc5  64a300000000              MOV FS:[0x0],EAX
00560ccb  8bd9                      MOV EBX,ECX
00560ccd  6a01                      PUSH 0x1
00560ccf  33ff                      XOR EDI,EDI
00560cd1  8d4598                    LEA EAX,[EBP + -0x68]
00560cd4  57                        PUSH EDI
00560cd5  ff7328                    PUSH dword ptr [EBX + 0x28]
00560cd8  50                        PUSH EAX
00560cd9  e8c2ff1600                CALL 0x006d0ca0
00560cde  897dfc                    MOV dword ptr [EBP + -0x4],EDI
00560ce1  33d2                      XOR EDX,EDX
00560ce3  8b75a4                    MOV ESI,dword ptr [EBP + -0x5c]
00560ce6  85f6                      TEST ESI,ESI
00560ce8  741f                      JZ 0x00560d09
00560cea  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00560cf0  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
00560cf3  8d4f01                    LEA ECX,[EDI + 0x1]
00560cf6  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
00560cf9  3998bc030000              CMP dword ptr [EAX + 0x3bc],EBX
00560cff  0f45cf                    CMOVNZ ECX,EDI
00560d02  42                        INC EDX
00560d03  8bf9                      MOV EDI,ECX
00560d05  3bd6                      CMP EDX,ESI
00560d07  72e7                      JC 0x00560cf0
00560d09  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
00560d0f  83f809                    CMP EAX,0x9
00560d12  0f87ca070000              JA 0x005614e2
00560d18  0fb68070155600            MOVZX EAX,byte ptr [EAX + 0x561570]
00560d1f  ff24855c155600            JMP dword ptr [EAX*0x4 + 0x56155c]
00560d26  e835e21800                CALL 0x006eef60
00560d2b  660f6ec0                  MOVD XMM0,EAX
00560d2f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00560d33  c1e81f                    SHR EAX,0x1f
00560d36  33ff                      XOR EDI,EDI
00560d38  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00560d41  660f5ac0                  CVTPD2PS XMM0,XMM0
00560d45  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00560d4d  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00560d55  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
00560d5a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00560d60  e8fbe11800                CALL 0x006eef60
00560d65  660f6ec7                  MOVD XMM0,EDI
00560d69  8bcf                      MOV ECX,EDI
00560d6b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00560d6f  c1e91f                    SHR ECX,0x1f
00560d72  8bf0                      MOV ESI,EAX
00560d74  f20f5804cd00cbba00        ADDSD XMM0,qword ptr [ECX*0x8 + 0xbacb00]
00560d7d  660f5ac0                  CVTPD2PS XMM0,XMM0
00560d81  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
00560d89  f30f5845c0                ADDSS XMM0,dword ptr [EBP + -0x40]
00560d8e  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00560d96  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00560d9b  e880c7ebff                CALL 0x0041d520
00560da0  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00560da5  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
00560daa  e891c7ebff                CALL 0x0041d540
00560daf  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
00560db4  8d45b0                    LEA EAX,[EBP + -0x50]
00560db7  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00560dbf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00560dc5  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00560dcd  56                        PUSH ESI
00560dce  f30f58833c030000          ADDSS XMM0,dword ptr [EBX + 0x33c]
00560dd6  6a00                      PUSH 0x0
00560dd8  f30f588b40030000          ADDSS XMM1,dword ptr [EBX + 0x340]
00560de0  53                        PUSH EBX
00560de1  6840b6c700                PUSH 0xc7b640
00560de6  50                        PUSH EAX
00560de7  6a00                      PUSH 0x0
00560de9  6a12                      PUSH 0x12
00560deb  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00560df0  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
00560df5  e8267decff                CALL 0x00428b20
00560dfa  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
00560e00  8db0bc030000              LEA ESI,[EAX + 0x3bc]
00560e06  85c9                      TEST ECX,ECX
00560e08  7412                      JZ 0x00560e1c
00560e0a  8d45bc                    LEA EAX,[EBP + -0x44]
00560e0d  8975bc                    MOV dword ptr [EBP + -0x44],ESI
00560e10  81c1cc030000              ADD ECX,0x3cc
00560e16  50                        PUSH EAX
00560e17  e8f4e3f6ff                CALL 0x004cf210
00560e1c  56                        PUSH ESI
00560e1d  8bcb                      MOV ECX,EBX
00560e1f  891e                      MOV dword ptr [ESI],EBX
00560e21  e8cacef6ff                CALL 0x004cdcf0
00560e26  47                        INC EDI
00560e27  83ff03                    CMP EDI,0x3
00560e2a  0f8230ffffff              JC 0x00560d60
00560e30  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00560e3a  c7838401000003000000      MOV dword ptr [EBX + 0x184],0x3
00560e44  e999060000                JMP 0x005614e2
00560e49  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
00560e4c  85f6                      TEST ESI,ESI
00560e4e  744b                      JZ 0x00560e9b
00560e50  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00560e54  8bc6                      MOV EAX,ESI
00560e56  7202                      JC 0x00560e5a
00560e58  8b06                      MOV EAX,dword ptr [ESI]
00560e5a  b9e4dcb100                MOV ECX,0xb1dce4
00560e5f  90                        NOP
00560e60  8a10                      MOV DL,byte ptr [EAX]
00560e62  3a11                      CMP DL,byte ptr [ECX]
00560e64  751a                      JNZ 0x00560e80
00560e66  84d2                      TEST DL,DL
00560e68  7412                      JZ 0x00560e7c
00560e6a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00560e6d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00560e70  750e                      JNZ 0x00560e80
00560e72  83c002                    ADD EAX,0x2
00560e75  83c102                    ADD ECX,0x2
00560e78  84d2                      TEST DL,DL
00560e7a  75e4                      JNZ 0x00560e60
00560e7c  33c0                      XOR EAX,EAX
00560e7e  eb05                      JMP 0x00560e85
00560e80  1bc0                      SBB EAX,EAX
00560e82  83c801                    OR EAX,0x1
00560e85  85c0                      TEST EAX,EAX
00560e87  7512                      JNZ 0x00560e9b
00560e89  384634                    CMP byte ptr [ESI + 0x34],AL
00560e8c  742e                      JZ 0x00560ebc
00560e8e  38838c000000              CMP byte ptr [EBX + 0x8c],AL
00560e94  8d7348                    LEA ESI,[EBX + 0x48]
00560e97  7523                      JNZ 0x00560ebc
00560e99  eb03                      JMP 0x00560e9e
00560e9b  8d7348                    LEA ESI,[EBX + 0x48]
00560e9e  6a01                      PUSH 0x1
00560ea0  68e4dcb100                PUSH 0xb1dce4
00560ea5  8bce                      MOV ECX,ESI
00560ea7  e82497eaff                CALL 0x0040a5d0
00560eac  84c0                      TEST AL,AL
00560eae  740c                      JZ 0x00560ebc
00560eb0  8d4e30                    LEA ECX,[ESI + 0x30]
00560eb3  e8f892eaff                CALL 0x0040a1b0
00560eb8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00560ebc  6a01                      PUSH 0x1
00560ebe  6a00                      PUSH 0x0
00560ec0  83ec08                    SUB ESP,0x8
00560ec3  8d45a8                    LEA EAX,[EBP + -0x58]
00560ec6  8bcb                      MOV ECX,EBX
00560ec8  c74424040000803e          MOV dword ptr [ESP + 0x4],0x3e800000
00560ed0  c7042400000000            MOV dword ptr [ESP],0x0
00560ed7  50                        PUSH EAX
00560ed8  e863dd1500                CALL 0x006bec40
00560edd  50                        PUSH EAX
00560ede  8d8b14040000              LEA ECX,[EBX + 0x414]
00560ee4  e8d7242800                CALL 0x007e33c0
00560ee9  83bbc00b000000            CMP dword ptr [EBX + 0xbc0],0x0
00560ef0  0f8fec050000              JG 0x005614e2
00560ef6  8b831c0f0000              MOV EAX,dword ptr [EBX + 0xf1c]
00560efc  83f8ff                    CMP EAX,-0x1
00560eff  7451                      JZ 0x00560f52
00560f01  51                        PUSH ECX
00560f02  53                        PUSH EBX
00560f03  50                        PUSH EAX
00560f04  6a09                      PUSH 0x9
00560f06  e805523f00                CALL 0x00956110
00560f0b  33c9                      XOR ECX,ECX
00560f0d  84c0                      TEST AL,AL
00560f0f  0f95c1                    SETNZ CL
00560f12  85c9                      TEST ECX,ECX
00560f14  7553                      JNZ 0x00560f69
00560f16  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00560f1d  7459                      JZ 0x00560f78
00560f1f  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00560f27  8bcb                      MOV ECX,EBX
00560f29  6a07                      PUSH 0x7
00560f2b  6a00                      PUSH 0x0
00560f2d  e82e9f1600                CALL 0x006cae60
00560f32  84c0                      TEST AL,AL
00560f34  0f84a8050000              JZ 0x005614e2
00560f3a  83ff06                    CMP EDI,0x6
00560f3d  0f839f050000              JNC 0x005614e2
00560f43  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
00560f4d  e990050000                JMP 0x005614e2
00560f52  83ff03                    CMP EDI,0x3
00560f55  72bf                      JC 0x00560f16
00560f57  e804e01800                CALL 0x006eef60
00560f5c  33d2                      XOR EDX,EDX
00560f5e  b928000000                MOV ECX,0x28
00560f63  f7f1                      DIV ECX
00560f65  85d2                      TEST EDX,EDX
00560f67  75ad                      JNZ 0x00560f16
00560f69  c783640b000009000000      MOV dword ptr [EBX + 0xb64],0x9
00560f73  e96a050000                JMP 0x005614e2
00560f78  83ff03                    CMP EDI,0x3
00560f7b  7312                      JNC 0x00560f8f
00560f7d  e8dedf1800                CALL 0x006eef60
00560f82  33d2                      XOR EDX,EDX
00560f84  b914000000                MOV ECX,0x14
00560f89  f7f1                      DIV ECX
00560f8b  85d2                      TEST EDX,EDX
00560f8d  741f                      JZ 0x00560fae
00560f8f  83ff06                    CMP EDI,0x6
00560f92  0f834a050000              JNC 0x005614e2
00560f98  e8c3df1800                CALL 0x006eef60
00560f9d  33d2                      XOR EDX,EDX
00560f9f  b950000000                MOV ECX,0x50
00560fa4  f7f1                      DIV ECX
00560fa6  85d2                      TEST EDX,EDX
00560fa8  0f8534050000              JNZ 0x005614e2
00560fae  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
00560fb8  e925050000                JMP 0x005614e2
00560fbd  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
00560fc0  85f6                      TEST ESI,ESI
00560fc2  7445                      JZ 0x00561009
00560fc4  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00560fc8  8bc6                      MOV EAX,ESI
00560fca  7202                      JC 0x00560fce
00560fcc  8b06                      MOV EAX,dword ptr [ESI]
00560fce  b93cd5b100                MOV ECX,0xb1d53c
00560fd3  8a10                      MOV DL,byte ptr [EAX]
00560fd5  3a11                      CMP DL,byte ptr [ECX]
00560fd7  751a                      JNZ 0x00560ff3
00560fd9  84d2                      TEST DL,DL
00560fdb  7412                      JZ 0x00560fef
00560fdd  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00560fe0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00560fe3  750e                      JNZ 0x00560ff3
00560fe5  83c002                    ADD EAX,0x2
00560fe8  83c102                    ADD ECX,0x2
00560feb  84d2                      TEST DL,DL
00560fed  75e4                      JNZ 0x00560fd3
00560fef  33c0                      XOR EAX,EAX
00560ff1  eb05                      JMP 0x00560ff8
00560ff3  1bc0                      SBB EAX,EAX
00560ff5  83c801                    OR EAX,0x1
00560ff8  85c0                      TEST EAX,EAX
00560ffa  750d                      JNZ 0x00561009
00560ffc  384634                    CMP byte ptr [ESI + 0x34],AL
00560fff  742a                      JZ 0x0056102b
00561001  38838c000000              CMP byte ptr [EBX + 0x8c],AL
00561007  7522                      JNZ 0x0056102b
00561009  6a01                      PUSH 0x1
0056100b  683cd5b100                PUSH 0xb1d53c
00561010  8d4b48                    LEA ECX,[EBX + 0x48]
00561013  e8b895eaff                CALL 0x0040a5d0
00561018  84c0                      TEST AL,AL
0056101a  740f                      JZ 0x0056102b
0056101c  8d4b78                    LEA ECX,[EBX + 0x78]
0056101f  e88c91eaff                CALL 0x0040a1b0
00561024  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
0056102b  6a01                      PUSH 0x1
0056102d  6a00                      PUSH 0x0
0056102f  83ec08                    SUB ESP,0x8
00561032  8d4590                    LEA EAX,[EBP + -0x70]
00561035  8bcb                      MOV ECX,EBX
00561037  c74424040000803e          MOV dword ptr [ESP + 0x4],0x3e800000
0056103f  c7042400000000            MOV dword ptr [ESP],0x0
00561046  50                        PUSH EAX
00561047  e8f4db1500                CALL 0x006bec40
0056104c  50                        PUSH EAX
0056104d  8d8b14040000              LEA ECX,[EBX + 0x414]
00561053  e868232800                CALL 0x007e33c0
00561058  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
0056105c  0f849c020000              JZ 0x005612fe
00561062  68dcd2b100                PUSH 0xb1d2dc
00561067  8d4b78                    LEA ECX,[EBX + 0x78]
0056106a  e8619deaff                CALL 0x0040add0
0056106f  84c0                      TEST AL,AL
00561071  0f8474020000              JZ 0x005612eb
00561077  e8e4de1800                CALL 0x006eef60
0056107c  660f6ec0                  MOVD XMM0,EAX
00561080  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00561084  c1e81f                    SHR EAX,0x1f
00561087  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00561090  660f5ac0                  CVTPD2PS XMM0,XMM0
00561094  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056109c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005610a4  f30f58c0                  ADDSS XMM0,XMM0
005610a8  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005610ad  e86ec4ebff                CALL 0x0041d520
005610b2  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
005610b7  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
005610bc  e87fc4ebff                CALL 0x0041d540
005610c1  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005610c6  e895de1800                CALL 0x006eef60
005610cb  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
005610d0  8dbb3c030000              LEA EDI,[EBX + 0x33c]
005610d6  f30f105dc0                MOVSS XMM3,dword ptr [EBP + -0x40]
005610db  0f28d0                    MOVAPS XMM2,XMM0
005610de  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
005610e6  f30f58c0                  ADDSS XMM0,XMM0
005610ea  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005610f0  0f28cb                    MOVAPS XMM1,XMM3
005610f3  f30f58db                  ADDSS XMM3,XMM3
005610f7  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
005610ff  50                        PUSH EAX
00561100  f30f5807                  ADDSS XMM0,dword ptr [EDI]
00561104  6a00                      PUSH 0x0
00561106  f30f585f04                ADDSS XMM3,dword ptr [EDI + 0x4]
0056110b  53                        PUSH EBX
0056110c  8d45b0                    LEA EAX,[EBP + -0x50]
0056110f  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
00561114  50                        PUSH EAX
00561115  8d45a8                    LEA EAX,[EBP + -0x58]
00561118  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
0056111d  50                        PUSH EAX
0056111e  6a00                      PUSH 0x0
00561120  6a12                      PUSH 0x12
00561122  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00561127  f30f115dac                MOVSS dword ptr [EBP + -0x54],XMM3
0056112c  e8ef79ecff                CALL 0x00428b20
00561131  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00561137  8db0bc030000              LEA ESI,[EAX + 0x3bc]
0056113d  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00561144  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0056114a  8b0e                      MOV ECX,dword ptr [ESI]
0056114c  85c9                      TEST ECX,ECX
0056114e  7412                      JZ 0x00561162
00561150  8d45bc                    LEA EAX,[EBP + -0x44]
00561153  8975bc                    MOV dword ptr [EBP + -0x44],ESI
00561156  81c1cc030000              ADD ECX,0x3cc
0056115c  50                        PUSH EAX
0056115d  e8aee0f6ff                CALL 0x004cf210
00561162  56                        PUSH ESI
00561163  8bcb                      MOV ECX,EBX
00561165  891e                      MOV dword ptr [ESI],EBX
00561167  e884cbf6ff                CALL 0x004cdcf0
0056116c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00561174  8b83640c0000              MOV EAX,dword ptr [EBX + 0xc64]
0056117a  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0056117f  83f812                    CMP EAX,0x12
00561182  750a                      JNZ 0x0056118e
00561184  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0056118c  eb0d                      JMP 0x0056119b
0056118e  83f813                    CMP EAX,0x13
00561191  750d                      JNZ 0x005611a0
00561193  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0056119b  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
005611a0  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005611a6  8d4dc0                    LEA ECX,[EBP + -0x40]
005611a9  c745c09e000000            MOV dword ptr [EBP + -0x40],0x9e
005611b0  e8cb553f00                CALL 0x00956780
005611b5  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
005611ba  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005611c0  83ec08                    SUB ESP,0x8
005611c3  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005611cb  f30f110424                MOVSS dword ptr [ESP],XMM0
005611d0  6a00                      PUSH 0x0
005611d2  6a02                      PUSH 0x2
005611d4  51                        PUSH ECX
005611d5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005611dc  ff75c0                    PUSH dword ptr [EBP + -0x40]
005611df  e84cca3c00                CALL 0x0092dc30
005611e4  e877dd1800                CALL 0x006eef60
005611e9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005611ef  50                        PUSH EAX
005611f0  6a00                      PUSH 0x0
005611f2  6a00                      PUSH 0x0
005611f4  6840b6c700                PUSH 0xc7b640
005611f9  57                        PUSH EDI
005611fa  6a3b                      PUSH 0x3b
005611fc  68e8030000                PUSH 0x3e8
00561201  e81a79ecff                CALL 0x00428b20
00561206  8bf8                      MOV EDI,EAX
00561208  e853dd1800                CALL 0x006eef60
0056120d  660f6ec0                  MOVD XMM0,EAX
00561211  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00561215  c1e81f                    SHR EAX,0x1f
00561218  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00561221  660f5ac0                  CVTPD2PS XMM0,XMM0
00561225  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056122d  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00561235  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0056123d  f30f118774040000          MOVSS dword ptr [EDI + 0x474],XMM0
00561245  e816dd1800                CALL 0x006eef60
0056124a  33d2                      XOR EDX,EDX
0056124c  b90f000000                MOV ECX,0xf
00561251  f7f1                      DIV ECX
00561253  8b07                      MOV EAX,dword ptr [EDI]
00561255  03d1                      ADD EDX,ECX
00561257  89975c040000              MOV dword ptr [EDI + 0x45c],EDX
0056125d  899760040000              MOV dword ptr [EDI + 0x460],EDX
00561263  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00561266  e8f5dc1800                CALL 0x006eef60
0056126b  6a01                      PUSH 0x1
0056126d  6a00                      PUSH 0x0
0056126f  68ff000000                PUSH 0xff
00561274  660f6ec0                  MOVD XMM0,EAX
00561278  8bcf                      MOV ECX,EDI
0056127a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056127e  c1e81f                    SHR EAX,0x1f
00561281  6aff                      PUSH -0x1
00561283  c745c40000803f            MOV dword ptr [EBP + -0x3c],0x3f800000
0056128a  c745c80000803f            MOV dword ptr [EBP + -0x38],0x3f800000
00561291  c745cc0000803f            MOV dword ptr [EBP + -0x34],0x3f800000
00561298  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0056129f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005612a8  8d45c4                    LEA EAX,[EBP + -0x3c]
005612ab  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
005612b2  50                        PUSH EAX
005612b3  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
005612ba  660f5ac8                  CVTPD2PS XMM1,XMM0
005612be  0f57c0                    XORPS XMM0,XMM0
005612c1  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005612c9  0f1145d4                  MOVUPS xmmword ptr [EBP + -0x2c],XMM0
005612cd  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
005612d5  f30f580d98a1ba00          ADDSS XMM1,dword ptr [0x00baa198]
005612dd  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
005612e2  ffd6                      CALL ESI
005612e4  8b07                      MOV EAX,dword ptr [EDI]
005612e6  8bcf                      MOV ECX,EDI
005612e8  ff500c                    CALL dword ptr [EAX + 0xc]
005612eb  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
005612ef  740d                      JZ 0x005612fe
005612f1  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
005612f8  0f85e4010000              JNZ 0x005614e2
005612fe  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00561308  e9d5010000                JMP 0x005614e2
0056130d  8b737c                    MOV ESI,dword ptr [EBX + 0x7c]
00561310  85f6                      TEST ESI,ESI
00561312  7445                      JZ 0x00561359
00561314  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00561318  8bc6                      MOV EAX,ESI
0056131a  7202                      JC 0x0056131e
0056131c  8b06                      MOV EAX,dword ptr [ESI]
0056131e  b954d5b100                MOV ECX,0xb1d554
00561323  8a10                      MOV DL,byte ptr [EAX]
00561325  3a11                      CMP DL,byte ptr [ECX]
00561327  751a                      JNZ 0x00561343
00561329  84d2                      TEST DL,DL
0056132b  7412                      JZ 0x0056133f
0056132d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00561330  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00561333  750e                      JNZ 0x00561343
00561335  83c002                    ADD EAX,0x2
00561338  83c102                    ADD ECX,0x2
0056133b  84d2                      TEST DL,DL
0056133d  75e4                      JNZ 0x00561323
0056133f  33c0                      XOR EAX,EAX
00561341  eb05                      JMP 0x00561348
00561343  1bc0                      SBB EAX,EAX
00561345  83c801                    OR EAX,0x1
00561348  85c0                      TEST EAX,EAX
0056134a  750d                      JNZ 0x00561359
0056134c  384634                    CMP byte ptr [ESI + 0x34],AL
0056134f  742a                      JZ 0x0056137b
00561351  38838c000000              CMP byte ptr [EBX + 0x8c],AL
00561357  7522                      JNZ 0x0056137b
00561359  6a01                      PUSH 0x1
0056135b  6854d5b100                PUSH 0xb1d554
00561360  8d4b48                    LEA ECX,[EBX + 0x48]
00561363  e86892eaff                CALL 0x0040a5d0
00561368  84c0                      TEST AL,AL
0056136a  740f                      JZ 0x0056137b
0056136c  8d4b78                    LEA ECX,[EBX + 0x78]
0056136f  e83c8eeaff                CALL 0x0040a1b0
00561374  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
0056137b  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
0056137f  0f843b010000              JZ 0x005614c0
00561385  68dcd2b100                PUSH 0xb1d2dc
0056138a  8d4b78                    LEA ECX,[EBX + 0x78]
0056138d  e83e9aeaff                CALL 0x0040add0
00561392  84c0                      TEST AL,AL
00561394  0f8417010000              JZ 0x005614b1
0056139a  33ff                      XOR EDI,EDI
0056139c  c783c00b000050000000      MOV dword ptr [EBX + 0xbc0],0x50
005613a6  397da4                    CMP dword ptr [EBP + -0x5c],EDI
005613a9  0f86e3000000              JBE 0x00561492
005613af  90                        NOP
005613b0  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
005613b3  8b34b8                    MOV ESI,dword ptr [EAX + EDI*0x4]
005613b6  399ebc030000              CMP dword ptr [ESI + 0x3bc],EBX
005613bc  0f85c6000000              JNZ 0x00561488
005613c2  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
005613ca  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
005613d2  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
005613da  f30f5c9340030000          SUBSS XMM2,dword ptr [EBX + 0x340]
005613e2  0f28c1                    MOVAPS XMM0,XMM1
005613e5  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
005613ea  f30f59c1                  MULSS XMM0,XMM1
005613ee  0f28ca                    MOVAPS XMM1,XMM2
005613f1  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
005613f6  f30f59ca                  MULSS XMM1,XMM2
005613fa  f30f58c1                  ADDSS XMM0,XMM1
005613fe  e84d46edff                CALL 0x00435a50
00561403  f30f1055c0                MOVSS XMM2,dword ptr [EBP + -0x40]
00561408  0f57e4                    XORPS XMM4,XMM4
0056140b  0f2fc4                    COMISS XMM0,XMM4
0056140e  761a                      JBE 0x0056142a
00561410  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00561418  f30f5ec8                  DIVSS XMM1,XMM0
0056141c  0f28c1                    MOVAPS XMM0,XMM1
0056141f  f30f594db8                MULSS XMM1,dword ptr [EBP + -0x48]
00561424  f30f59d0                  MULSS XMM2,XMM0
00561428  eb05                      JMP 0x0056142f
0056142a  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
0056142f  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
00561437  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0056143f  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00561447  0f2edc                    UCOMISS XMM3,XMM4
0056144a  9f                        LAHF
0056144b  f6c444                    TEST AH,0x44
0056144e  7b38                      JNP 0x00561488
00561450  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00561458  f30f59d0                  MULSS XMM2,XMM0
0056145c  f30f59c8                  MULSS XMM1,XMM0
00561460  f30f5ed3                  DIVSS XMM2,XMM3
00561464  f30f5ecb                  DIVSS XMM1,XMM3
00561468  f30f589660030000          ADDSS XMM2,dword ptr [ESI + 0x360]
00561470  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
00561478  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
00561480  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
00561488  47                        INC EDI
00561489  3b7da4                    CMP EDI,dword ptr [EBP + -0x5c]
0056148c  0f821effffff              JC 0x005613b0
00561492  6a00                      PUSH 0x0
00561494  6a01                      PUSH 0x1
00561496  53                        PUSH EBX
00561497  51                        PUSH ECX
00561498  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056149e  8d833c030000              LEA EAX,[EBX + 0x33c]
005614a4  c704240000f042            MOV dword ptr [ESP],0x42f00000
005614ab  50                        PUSH EAX
005614ac  e8af2e1a00                CALL 0x00704360
005614b1  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
005614b5  7409                      JZ 0x005614c0
005614b7  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
005614be  750a                      JNZ 0x005614ca
005614c0  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
005614ca  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
005614d2  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005614da  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
005614e2  8b93c00b0000              MOV EDX,dword ptr [EBX + 0xbc0]
005614e8  85d2                      TEST EDX,EDX
005614ea  7e1a                      JLE 0x00561506
005614ec  f30f2c8ba4030000          CVTTSS2SI ECX,dword ptr [EBX + 0x3a4]
005614f4  f30f2c83a0030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a0]
005614fc  2bc8                      SUB ECX,EAX
005614fe  2bd1                      SUB EDX,ECX
00561500  8993c00b0000              MOV dword ptr [EBX + 0xbc0],EDX
00561506  807d9800                  CMP byte ptr [EBP + -0x68],0x0
0056150a  7534                      JNZ 0x00561540
0056150c  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
00561512  85d2                      TEST EDX,EDX
00561514  7405                      JZ 0x0056151b
00561516  83c230                    ADD EDX,0x30
00561519  eb05                      JMP 0x00561520
0056151b  ba18f6c700                MOV EDX,0xc7f618
00561520  8b4d9c                    MOV ECX,dword ptr [EBP + -0x64]
00561523  85c9                      TEST ECX,ECX
00561525  7419                      JZ 0x00561540
00561527  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
0056152a  83c1fc                    ADD ECX,-0x4
0056152d  2902                      SUB dword ptr [EDX],EAX
0056152f  51                        PUSH ECX
00561530  835a0400                  SBB dword ptr [EDX + 0x4],0x0
00561534  ff15dc87b100              CALL dword ptr [0x00b187dc]
0056153a  83c404                    ADD ESP,0x4
0056153d  0f1f00                    NOP dword ptr [EAX]
00561540  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00561543  64890d00000000            MOV dword ptr FS:[0x0],ECX
0056154a  59                        POP ECX
0056154b  5f                        POP EDI
0056154c  5e                        POP ESI
0056154d  5b                        POP EBX
0056154e  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00561551  33cd                      XOR ECX,EBP
00561553  e8d3db5800                CALL 0x00aef12b
00561558  8be5                      MOV ESP,EBP
0056155a  5d                        POP EBP
0056155b  c3                        RET
