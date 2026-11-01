; J460 NPC AI 0x004e8fa0 HELPER_004e8fa0_VisFattyCordCandidate
; types=886
; identities=vis_fatty.attack_helper
; entry=004e8fa0
004e8fa0  55                        PUSH EBP
004e8fa1  8bec                      MOV EBP,ESP
004e8fa3  83ec50                    SUB ESP,0x50
004e8fa6  807d0800                  CMP byte ptr [EBP + 0x8],0x0
004e8faa  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004e8fb2  53                        PUSH EBX
004e8fb3  56                        PUSH ESI
004e8fb4  8bd9                      MOV EBX,ECX
004e8fb6  57                        PUSH EDI
004e8fb7  895df0                    MOV dword ptr [EBP + -0x10],EBX
004e8fba  740f                      JZ 0x004e8fcb
004e8fbc  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004e8fc4  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004e8fc9  eb05                      JMP 0x004e8fd0
004e8fcb  f30f115de4                MOVSS dword ptr [EBP + -0x1c],XMM3
004e8fd0  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004e8fd3  3db6030000                CMP EAX,0x3b6
004e8fd8  750a                      JNZ 0x004e8fe4
004e8fda  f30f10055ca8ba00          MOVSS XMM0,dword ptr [0x00baa85c]
004e8fe2  eb25                      JMP 0x004e9009
004e8fe4  3d61030000                CMP EAX,0x361
004e8fe9  750a                      JNZ 0x004e8ff5
004e8feb  f30f1083340c0000          MOVSS XMM0,dword ptr [EBX + 0xc34]
004e8ff3  eb14                      JMP 0x004e9009
004e8ff5  f30f1083b00b0000          MOVSS XMM0,dword ptr [EBX + 0xbb0]
004e8ffd  f30f58c3                  ADDSS XMM0,XMM3
004e9001  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004e9009  8b8b140c0000              MOV ECX,dword ptr [EBX + 0xc14]
004e900f  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
004e9014  894de8                    MOV dword ptr [EBP + -0x18],ECX
004e9017  398b280c0000              CMP dword ptr [EBX + 0xc28],ECX
004e901d  7315                      JNC 0x004e9034
004e901f  51                        PUSH ECX
004e9020  8d8b180c0000              LEA ECX,[EBX + 0xc18]
004e9026  e875f30000                CALL 0x004f83a0
004e902b  8b8b140c0000              MOV ECX,dword ptr [EBX + 0xc14]
004e9031  894de8                    MOV dword ptr [EBP + -0x18],ECX
004e9034  33c0                      XOR EAX,EAX
004e9036  8945f8                    MOV dword ptr [EBP + -0x8],EAX
004e9039  85c9                      TEST ECX,ECX
004e903b  0f849f0a0000              JZ 0x004e9ae0
004e9041  8db3040c0000              LEA ESI,[EBX + 0xc04]
004e9047  8975fc                    MOV dword ptr [EBP + -0x4],ESI
004e904a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004e9050  f30f101580a2ba00          MOVSS XMM2,dword ptr [0x00baa280]
004e9058  0f57f6                    XORPS XMM6,XMM6
004e905b  8b93100c0000              MOV EDX,dword ptr [EBX + 0xc10]
004e9061  0f57e4                    XORPS XMM4,XMM4
004e9064  f30f1175d8                MOVSS dword ptr [EBP + -0x28],XMM6
004e9069  f30f1165d4                MOVSS dword ptr [EBP + -0x2c],XMM4
004e906e  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
004e9073  8955f4                    MOV dword ptr [EBP + -0xc],EDX
004e9076  85c0                      TEST EAX,EAX
004e9078  0f8401020000              JZ 0x004e927f
004e907e  8d48ff                    LEA ECX,[EAX + -0x1]
004e9081  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
004e9084  03ca                      ADD ECX,EDX
004e9086  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
004e9089  8d3c02                    LEA EDI,[EDX + EAX*0x1]
004e908c  894de0                    MOV dword ptr [EBP + -0x20],ECX
004e908f  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004e9092  8d5802                    LEA EBX,[EAX + 0x2]
004e9095  49                        DEC ECX
004e9096  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
004e9099  8bc7                      MOV EAX,EDI
004e909b  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
004e909e  d1e8                      SHR EAX,0x1
004e90a0  03da                      ADD EBX,EDX
004e90a2  23c8                      AND ECX,EAX
004e90a4  83e701                    AND EDI,0x1
004e90a7  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004e90aa  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004e90ad  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004e90b0  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004e90b3  83c0fd                    ADD EAX,-0x3
004e90b6  03d0                      ADD EDX,EAX
004e90b8  f30f104cfe04              MOVSS XMM1,dword ptr [ESI + EDI*0x8 + 0x4]
004e90be  8bc2                      MOV EAX,EDX
004e90c0  f30f101cfe                MOVSS XMM3,dword ptr [ESI + EDI*0x8]
004e90c5  83e201                    AND EDX,0x1
004e90c8  8b4908                    MOV ECX,dword ptr [ECX + 0x8]
004e90cb  8b7dfc                    MOV EDI,dword ptr [EBP + -0x4]
004e90ce  49                        DEC ECX
004e90cf  d1e8                      SHR EAX,0x1
004e90d1  23c8                      AND ECX,EAX
004e90d3  8b75e0                    MOV ESI,dword ptr [EBP + -0x20]
004e90d6  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e90d9  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e90dc  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e90df  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
004e90e2  49                        DEC ECX
004e90e3  f30f5c4cd004              SUBSS XMM1,dword ptr [EAX + EDX*0x8 + 0x4]
004e90e9  f30f5c1cd0                SUBSS XMM3,dword ptr [EAX + EDX*0x8]
004e90ee  8bc3                      MOV EAX,EBX
004e90f0  83e301                    AND EBX,0x1
004e90f3  d1e8                      SHR EAX,0x1
004e90f5  23c8                      AND ECX,EAX
004e90f7  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004e90fa  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
004e90fd  0f28c1                    MOVAPS XMM0,XMM1
004e9100  895ddc                    MOV dword ptr [EBP + -0x24],EBX
004e9103  8bde                      MOV EBX,ESI
004e9105  d1eb                      SHR EBX,0x1
004e9107  83e601                    AND ESI,0x1
004e910a  f30f59c1                  MULSS XMM0,XMM1
004e910e  8b1488                    MOV EDX,dword ptr [EAX + ECX*0x4]
004e9111  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
004e9114  49                        DEC ECX
004e9115  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
004e911a  23cb                      AND ECX,EBX
004e911c  f30f115dd4                MOVSS dword ptr [EBP + -0x2c],XMM3
004e9121  0f28cb                    MOVAPS XMM1,XMM3
004e9124  8975e0                    MOV dword ptr [EBP + -0x20],ESI
004e9127  f30f59cb                  MULSS XMM1,XMM3
004e912b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e912e  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
004e9131  f30f58c1                  ADDSS XMM0,XMM1
004e9135  f30f1014ca                MOVSS XMM2,dword ptr [EDX + ECX*0x8]
004e913a  f30f5c14f0                SUBSS XMM2,dword ptr [EAX + ESI*0x8]
004e913f  0f28ca                    MOVAPS XMM1,XMM2
004e9142  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
004e9147  f30f59ca                  MULSS XMM1,XMM2
004e914b  f30f58c1                  ADDSS XMM0,XMM1
004e914f  e8fcc8f4ff                CALL 0x00435a50
004e9154  f30f1065d4                MOVSS XMM4,dword ptr [EBP + -0x2c]
004e9159  0f28d8                    MOVAPS XMM3,XMM0
004e915c  f30f106dd8                MOVSS XMM5,dword ptr [EBP + -0x28]
004e9161  0f28d3                    MOVAPS XMM2,XMM3
004e9164  f30f5c55ec                SUBSS XMM2,dword ptr [EBP + -0x14]
004e9169  f30f5ee3                  DIVSS XMM4,XMM3
004e916d  f30f5eeb                  DIVSS XMM5,XMM3
004e9171  f30f1035f8a1ba00          MOVSS XMM6,dword ptr [0x00baa1f8]
004e9179  f30f59e2                  MULSS XMM4,XMM2
004e917d  f30f59ea                  MULSS XMM5,XMM2
004e9181  f30f59e6                  MULSS XMM4,XMM6
004e9185  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
004e9188  8b55fc                    MOV EDX,dword ptr [EBP + -0x4]
004e918b  8b7df8                    MOV EDI,dword ptr [EBP + -0x8]
004e918e  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004e9191  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004e9194  8b4a08                    MOV ECX,dword ptr [EDX + 0x8]
004e9197  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004e919a  49                        DEC ECX
004e919b  40                        INC EAX
004e919c  f30f59ee                  MULSS XMM5,XMM6
004e91a0  03f8                      ADD EDI,EAX
004e91a2  8bc7                      MOV EAX,EDI
004e91a4  83e701                    AND EDI,0x1
004e91a7  d1e8                      SHR EAX,0x1
004e91a9  23c8                      AND ECX,EAX
004e91ab  8b4204                    MOV EAX,dword ptr [EDX + 0x4]
004e91ae  8b55f8                    MOV EDX,dword ptr [EBP + -0x8]
004e91b1  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004e91b4  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
004e91b7  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004e91ba  83c0fe                    ADD EAX,-0x2
004e91bd  03d0                      ADD EDX,EAX
004e91bf  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e91c2  f30f1004fe                MOVSS XMM0,dword ptr [ESI + EDI*0x8]
004e91c7  f30f104cfe04              MOVSS XMM1,dword ptr [ESI + EDI*0x8 + 0x4]
004e91cd  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004e91d0  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004e91d3  8bc2                      MOV EAX,EDX
004e91d5  49                        DEC ECX
004e91d6  d1e8                      SHR EAX,0x1
004e91d8  23c8                      AND ECX,EAX
004e91da  83e201                    AND EDX,0x1
004e91dd  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e91e0  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e91e3  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e91e6  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004e91e9  49                        DEC ECX
004e91ea  234dcc                    AND ECX,dword ptr [EBP + -0x34]
004e91ed  f30f5c04d0                SUBSS XMM0,dword ptr [EAX + EDX*0x8]
004e91f2  f30f5c4cd004              SUBSS XMM1,dword ptr [EAX + EDX*0x8 + 0x4]
004e91f8  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004e91fb  f30f59c6                  MULSS XMM0,XMM6
004e91ff  8b1488                    MOV EDX,dword ptr [EAX + ECX*0x4]
004e9202  f30f59ce                  MULSS XMM1,XMM6
004e9206  0f57f6                    XORPS XMM6,XMM6
004e9209  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004e920c  f30f5cf4                  SUBSS XMM6,XMM4
004e9210  49                        DEC ECX
004e9211  23cb                      AND ECX,EBX
004e9213  0f57e4                    XORPS XMM4,XMM4
004e9216  8b5df0                    MOV EBX,dword ptr [EBP + -0x10]
004e9219  f30f5ce5                  SUBSS XMM4,XMM5
004e921d  f30f5cf0                  SUBSS XMM6,XMM0
004e9221  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9224  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
004e9229  f30f5ec3                  DIVSS XMM0,XMM3
004e922d  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
004e9230  f30f5ce1                  SUBSS XMM4,XMM1
004e9234  f30f1175d8                MOVSS dword ptr [EBP + -0x28],XMM6
004e9239  f30f59c2                  MULSS XMM0,XMM2
004e923d  f30f101580a2ba00          MOVSS XMM2,dword ptr [0x00baa280]
004e9245  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
004e924d  f30f1165d4                MOVSS dword ptr [EBP + -0x2c],XMM4
004e9252  f30f5cd0                  SUBSS XMM2,XMM0
004e9256  f30f1044ca04              MOVSS XMM0,dword ptr [EDX + ECX*0x8 + 0x4]
004e925c  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004e925f  8b55f4                    MOV EDX,dword ptr [EBP + -0xc]
004e9262  f30f5c44c804              SUBSS XMM0,dword ptr [EAX + ECX*0x8 + 0x4]
004e9268  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004e926b  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004e926e  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
004e9276  f30f5cd0                  SUBSS XMM2,XMM0
004e927a  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
004e927f  8d7803                    LEA EDI,[EAX + 0x3]
004e9282  897db4                    MOV dword ptr [EBP + -0x4c],EDI
004e9285  3bf9                      CMP EDI,ECX
004e9287  0f83e5010000              JNC 0x004e9472
004e928d  8d3c02                    LEA EDI,[EDX + EAX*0x1]
004e9290  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004e9293  8d4805                    LEA ECX,[EAX + 0x5]
004e9296  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004e9299  03ca                      ADD ECX,EDX
004e929b  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004e929e  8d5802                    LEA EBX,[EAX + 0x2]
004e92a1  894de0                    MOV dword ptr [EBP + -0x20],ECX
004e92a4  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004e92a7  8bcf                      MOV ECX,EDI
004e92a9  48                        DEC EAX
004e92aa  d1e9                      SHR ECX,0x1
004e92ac  23c8                      AND ECX,EAX
004e92ae  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004e92b1  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004e92b4  03da                      ADD EBX,EDX
004e92b6  83e701                    AND EDI,0x1
004e92b9  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004e92bc  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004e92bf  83c003                    ADD EAX,0x3
004e92c2  03d0                      ADD EDX,EAX
004e92c4  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e92c7  f30f100cfe                MOVSS XMM1,dword ptr [ESI + EDI*0x8]
004e92cc  8bca                      MOV ECX,EDX
004e92ce  f30f105cfe04              MOVSS XMM3,dword ptr [ESI + EDI*0x8 + 0x4]
004e92d4  83e201                    AND EDX,0x1
004e92d7  8b7dfc                    MOV EDI,dword ptr [EBP + -0x4]
004e92da  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
004e92dd  d1e9                      SHR ECX,0x1
004e92df  48                        DEC EAX
004e92e0  23c8                      AND ECX,EAX
004e92e2  8b75e0                    MOV ESI,dword ptr [EBP + -0x20]
004e92e5  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e92e8  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e92eb  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e92ee  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
004e92f1  49                        DEC ECX
004e92f2  f30f5c0cd0                SUBSS XMM1,dword ptr [EAX + EDX*0x8]
004e92f7  f30f5c5cd004              SUBSS XMM3,dword ptr [EAX + EDX*0x8 + 0x4]
004e92fd  8bc3                      MOV EAX,EBX
004e92ff  83e301                    AND EBX,0x1
004e9302  d1e8                      SHR EAX,0x1
004e9304  23c8                      AND ECX,EAX
004e9306  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9309  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
004e930c  0f28c1                    MOVAPS XMM0,XMM1
004e930f  895de8                    MOV dword ptr [EBP + -0x18],EBX
004e9312  8bde                      MOV EBX,ESI
004e9314  d1eb                      SHR EBX,0x1
004e9316  83e601                    AND ESI,0x1
004e9319  f30f59c1                  MULSS XMM0,XMM1
004e931d  8b1488                    MOV EDX,dword ptr [EAX + ECX*0x4]
004e9320  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
004e9323  49                        DEC ECX
004e9324  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
004e9329  23cb                      AND ECX,EBX
004e932b  f30f115dd0                MOVSS dword ptr [EBP + -0x30],XMM3
004e9330  0f28cb                    MOVAPS XMM1,XMM3
004e9333  8975e0                    MOV dword ptr [EBP + -0x20],ESI
004e9336  f30f59cb                  MULSS XMM1,XMM3
004e933a  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e933d  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004e9340  f30f58c1                  ADDSS XMM0,XMM1
004e9344  f30f1014ca                MOVSS XMM2,dword ptr [EDX + ECX*0x8]
004e9349  f30f5c14f0                SUBSS XMM2,dword ptr [EAX + ESI*0x8]
004e934e  0f28ca                    MOVAPS XMM1,XMM2
004e9351  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
004e9356  f30f59ca                  MULSS XMM1,XMM2
004e935a  f30f58c1                  ADDSS XMM0,XMM1
004e935e  e8edc6f4ff                CALL 0x00435a50
004e9363  f30f1065cc                MOVSS XMM4,dword ptr [EBP + -0x34]
004e9368  0f28d8                    MOVAPS XMM3,XMM0
004e936b  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
004e9370  0f28d3                    MOVAPS XMM2,XMM3
004e9373  f30f5c55ec                SUBSS XMM2,dword ptr [EBP + -0x14]
004e9378  f30f5ee3                  DIVSS XMM4,XMM3
004e937c  f30f5eeb                  DIVSS XMM5,XMM3
004e9380  f30f103df8a1ba00          MOVSS XMM7,dword ptr [0x00baa1f8]
004e9388  f30f59e2                  MULSS XMM4,XMM2
004e938c  f30f59ea                  MULSS XMM5,XMM2
004e9390  f30f59e7                  MULSS XMM4,XMM7
004e9394  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
004e9397  8b55fc                    MOV EDX,dword ptr [EBP + -0x4]
004e939a  8b7df8                    MOV EDI,dword ptr [EBP + -0x8]
004e939d  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004e93a0  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004e93a3  8b4a08                    MOV ECX,dword ptr [EDX + 0x8]
004e93a6  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004e93a9  49                        DEC ECX
004e93aa  40                        INC EAX
004e93ab  f30f1075d8                MOVSS XMM6,dword ptr [EBP + -0x28]
004e93b0  03f8                      ADD EDI,EAX
004e93b2  f30f59ef                  MULSS XMM5,XMM7
004e93b6  8bc7                      MOV EAX,EDI
004e93b8  83e701                    AND EDI,0x1
004e93bb  d1e8                      SHR EAX,0x1
004e93bd  f30f5cf4                  SUBSS XMM6,XMM4
004e93c1  23c8                      AND ECX,EAX
004e93c3  f30f1065d4                MOVSS XMM4,dword ptr [EBP + -0x2c]
004e93c8  8b4204                    MOV EAX,dword ptr [EDX + 0x4]
004e93cb  f30f5ce5                  SUBSS XMM4,XMM5
004e93cf  8b55f8                    MOV EDX,dword ptr [EBP + -0x8]
004e93d2  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004e93d5  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
004e93d8  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004e93db  83c004                    ADD EAX,0x4
004e93de  03d0                      ADD EDX,EAX
004e93e0  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e93e3  f30f1004fe                MOVSS XMM0,dword ptr [ESI + EDI*0x8]
004e93e8  8bca                      MOV ECX,EDX
004e93ea  d1e9                      SHR ECX,0x1
004e93ec  83e201                    AND EDX,0x1
004e93ef  f30f104cfe04              MOVSS XMM1,dword ptr [ESI + EDI*0x8 + 0x4]
004e93f5  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
004e93f8  48                        DEC EAX
004e93f9  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004e93fc  23c8                      AND ECX,EAX
004e93fe  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e9401  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e9404  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9407  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004e940a  49                        DEC ECX
004e940b  234dbc                    AND ECX,dword ptr [EBP + -0x44]
004e940e  f30f5c04d0                SUBSS XMM0,dword ptr [EAX + EDX*0x8]
004e9413  f30f5c4cd004              SUBSS XMM1,dword ptr [EAX + EDX*0x8 + 0x4]
004e9419  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004e941c  f30f59c7                  MULSS XMM0,XMM7
004e9420  8b1488                    MOV EDX,dword ptr [EAX + ECX*0x4]
004e9423  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004e9426  49                        DEC ECX
004e9427  f30f59cf                  MULSS XMM1,XMM7
004e942b  23cb                      AND ECX,EBX
004e942d  8b5df0                    MOV EBX,dword ptr [EBP + -0x10]
004e9430  f30f5cf0                  SUBSS XMM6,XMM0
004e9434  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
004e9439  f30f5ec3                  DIVSS XMM0,XMM3
004e943d  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9440  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004e9443  f30f5ce1                  SUBSS XMM4,XMM1
004e9447  f30f59c2                  MULSS XMM0,XMM2
004e944b  f30f1055dc                MOVSS XMM2,dword ptr [EBP + -0x24]
004e9450  f30f59c7                  MULSS XMM0,XMM7
004e9454  f30f5cd0                  SUBSS XMM2,XMM0
004e9458  f30f1044ca04              MOVSS XMM0,dword ptr [EDX + ECX*0x8 + 0x4]
004e945e  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004e9461  f30f5c44c804              SUBSS XMM0,dword ptr [EAX + ECX*0x8 + 0x4]
004e9467  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004e946a  f30f59c7                  MULSS XMM0,XMM7
004e946e  f30f5cd0                  SUBSS XMM2,XMM0
004e9472  8b93100c0000              MOV EDX,dword ptr [EBX + 0xc10]
004e9478  f30f105de4                MOVSS XMM3,dword ptr [EBP + -0x1c]
004e947d  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004e9480  0f28cb                    MOVAPS XMM1,XMM3
004e9483  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004e9486  0f28c3                    MOVAPS XMM0,XMM3
004e9489  8d3c02                    LEA EDI,[EDX + EAX*0x1]
004e948c  f30f59f3                  MULSS XMM6,XMM3
004e9490  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004e9493  8bcf                      MOV ECX,EDI
004e9495  48                        DEC EAX
004e9496  d1e9                      SHR ECX,0x1
004e9498  23c8                      AND ECX,EAX
004e949a  f30f59e3                  MULSS XMM4,XMM3
004e949e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004e94a1  83e701                    AND EDI,0x1
004e94a4  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004e94a7  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004e94aa  8b8b0c0c0000              MOV ECX,dword ptr [EBX + 0xc0c]
004e94b0  40                        INC EAX
004e94b1  03d0                      ADD EDX,EAX
004e94b3  49                        DEC ECX
004e94b4  8bc2                      MOV EAX,EDX
004e94b6  83e201                    AND EDX,0x1
004e94b9  d1e8                      SHR EAX,0x1
004e94bb  23c8                      AND ECX,EAX
004e94bd  8b83080c0000              MOV EAX,dword ptr [EBX + 0xc08]
004e94c3  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e94c6  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
004e94cc  49                        DEC ECX
004e94cd  f30f590cd0                MULSS XMM1,dword ptr [EAX + EDX*0x8]
004e94d2  f30f5944d004              MULSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004e94d8  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e94de  f30f580cfe                ADDSS XMM1,dword ptr [ESI + EDI*0x8]
004e94e3  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e94e6  f30f5844fe04              ADDSS XMM0,dword ptr [ESI + EDI*0x8 + 0x4]
004e94ec  8b7df8                    MOV EDI,dword ptr [EBP + -0x8]
004e94ef  8d1438                    LEA EDX,[EAX + EDI*0x1]
004e94f2  8bc2                      MOV EAX,EDX
004e94f4  83e201                    AND EDX,0x1
004e94f7  d1e8                      SHR EAX,0x1
004e94f9  23c8                      AND ECX,EAX
004e94fb  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e9501  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9504  f30f110cd0                MOVSS dword ptr [EAX + EDX*0x8],XMM1
004e9509  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004e950f  8d5701                    LEA EDX,[EDI + 0x1]
004e9512  8b83100c0000              MOV EAX,dword ptr [EBX + 0xc10]
004e9518  03d0                      ADD EDX,EAX
004e951a  8b8b0c0c0000              MOV ECX,dword ptr [EBX + 0xc0c]
004e9520  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9523  49                        DEC ECX
004e9524  f30f100d18a4ba00          MOVSS XMM1,dword ptr [0x00baa418]
004e952c  8bc2                      MOV EAX,EDX
004e952e  d1e8                      SHR EAX,0x1
004e9530  83e201                    AND EDX,0x1
004e9533  23c8                      AND ECX,EAX
004e9535  8b83080c0000              MOV EAX,dword ptr [EBX + 0xc08]
004e953b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e953e  f30f5834d0                ADDSS XMM6,dword ptr [EAX + EDX*0x8]
004e9543  f30f5864d004              ADDSS XMM4,dword ptr [EAX + EDX*0x8 + 0x4]
004e9549  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e954f  8d5701                    LEA EDX,[EDI + 0x1]
004e9552  03d0                      ADD EDX,EAX
004e9554  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9557  8b83200c0000              MOV EAX,dword ptr [EBX + 0xc20]
004e955d  8bca                      MOV ECX,EDX
004e955f  48                        DEC EAX
004e9560  d1e9                      SHR ECX,0x1
004e9562  23c8                      AND ECX,EAX
004e9564  f30f59f1                  MULSS XMM6,XMM1
004e9568  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e956e  83e201                    AND EDX,0x1
004e9571  f30f59e1                  MULSS XMM4,XMM1
004e9575  83c702                    ADD EDI,0x2
004e9578  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e957b  f30f1134d0                MOVSS dword ptr [EAX + EDX*0x8],XMM6
004e9580  f30f1164d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM4
004e9586  8b83100c0000              MOV EAX,dword ptr [EBX + 0xc10]
004e958c  03f8                      ADD EDI,EAX
004e958e  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9591  8b8b0c0c0000              MOV ECX,dword ptr [EBX + 0xc0c]
004e9597  8bd7                      MOV EDX,EDI
004e9599  8b75f8                    MOV ESI,dword ptr [EBP + -0x8]
004e959c  49                        DEC ECX
004e959d  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e95a0  83c602                    ADD ESI,0x2
004e95a3  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e95a9  83e701                    AND EDI,0x1
004e95ac  03f0                      ADD ESI,EAX
004e95ae  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e95b1  8b83080c0000              MOV EAX,dword ptr [EBX + 0xc08]
004e95b7  0f28c3                    MOVAPS XMM0,XMM3
004e95ba  d1ea                      SHR EDX,0x1
004e95bc  23ca                      AND ECX,EDX
004e95be  f30f59d3                  MULSS XMM2,XMM3
004e95c2  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e95c5  8b8b0c0c0000              MOV ECX,dword ptr [EBX + 0xc0c]
004e95cb  49                        DEC ECX
004e95cc  23ca                      AND ECX,EDX
004e95ce  f30f5944f804              MULSS XMM0,dword ptr [EAX + EDI*0x8 + 0x4]
004e95d4  8b83080c0000              MOV EAX,dword ptr [EBX + 0xc08]
004e95da  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e95dd  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
004e95e3  49                        DEC ECX
004e95e4  f30f5804f8                ADDSS XMM0,dword ptr [EAX + EDI*0x8]
004e95e9  8bc6                      MOV EAX,ESI
004e95eb  8dbb040c0000              LEA EDI,[EBX + 0xc04]
004e95f1  d1e8                      SHR EAX,0x1
004e95f3  83e601                    AND ESI,0x1
004e95f6  23c8                      AND ECX,EAX
004e95f8  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e95fe  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9601  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
004e9604  f30f1104f0                MOVSS dword ptr [EAX + ESI*0x8],XMM0
004e9609  8b83100c0000              MOV EAX,dword ptr [EBX + 0xc10]
004e960f  8d5102                    LEA EDX,[ECX + 0x2]
004e9612  03d0                      ADD EDX,EAX
004e9614  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9617  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e961d  8d7102                    LEA ESI,[ECX + 0x2]
004e9620  03f0                      ADD ESI,EAX
004e9622  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9625  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004e9628  8bca                      MOV ECX,EDX
004e962a  48                        DEC EAX
004e962b  d1e9                      SHR ECX,0x1
004e962d  23c8                      AND ECX,EAX
004e962f  83e201                    AND EDX,0x1
004e9632  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
004e9635  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9638  8bce                      MOV ECX,ESI
004e963a  d1e9                      SHR ECX,0x1
004e963c  83e601                    AND ESI,0x1
004e963f  f30f5854d004              ADDSS XMM2,dword ptr [EAX + EDX*0x8 + 0x4]
004e9645  8b83200c0000              MOV EAX,dword ptr [EBX + 0xc20]
004e964b  48                        DEC EAX
004e964c  23c8                      AND ECX,EAX
004e964e  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e9654  f30f59d1                  MULSS XMM2,XMM1
004e9658  0f57c9                    XORPS XMM1,XMM1
004e965b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e965e  f30f1154f004              MOVSS dword ptr [EAX + ESI*0x8 + 0x4],XMM2
004e9664  8b75f8                    MOV ESI,dword ptr [EBP + -0x8]
004e9667  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e966d  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
004e9673  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9676  49                        DEC ECX
004e9677  8d5602                    LEA EDX,[ESI + 0x2]
004e967a  03d0                      ADD EDX,EAX
004e967c  8bc2                      MOV EAX,EDX
004e967e  83e201                    AND EDX,0x1
004e9681  d1e8                      SHR EAX,0x1
004e9683  23c8                      AND ECX,EAX
004e9685  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9688  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e968e  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9691  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004e9696  0f2fc1                    COMISS XMM0,XMM1
004e9699  0f869f000000              JBE 0x004e973e
004e969f  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
004e96a5  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e96ab  49                        DEC ECX
004e96ac  234dbc                    AND ECX,dword ptr [EBP + -0x44]
004e96af  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
004e96b2  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e96b8  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e96bb  c704d000000000            MOV dword ptr [EAX + EDX*0x8],0x0
004e96c2  8d5602                    LEA EDX,[ESI + 0x2]
004e96c5  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e96cb  03d0                      ADD EDX,EAX
004e96cd  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e96d0  8bca                      MOV ECX,EDX
004e96d2  8b83200c0000              MOV EAX,dword ptr [EBX + 0xc20]
004e96d8  83e201                    AND EDX,0x1
004e96db  48                        DEC EAX
004e96dc  d1e9                      SHR ECX,0x1
004e96de  23c8                      AND ECX,EAX
004e96e0  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e96e6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e96e9  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004e96f1  8d5601                    LEA EDX,[ESI + 0x1]
004e96f4  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e96fa  03d0                      ADD EDX,EAX
004e96fc  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e96ff  8bca                      MOV ECX,EDX
004e9701  8b83200c0000              MOV EAX,dword ptr [EBX + 0xc20]
004e9707  48                        DEC EAX
004e9708  d1e9                      SHR ECX,0x1
004e970a  23c8                      AND ECX,EAX
004e970c  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e9712  83e201                    AND EDX,0x1
004e9715  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9718  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004e971d  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
004e9725  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004e972a  f30f1044d004              MOVSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004e9730  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
004e9738  f30f1144d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM0
004e973e  8b93100c0000              MOV EDX,dword ptr [EBX + 0xc10]
004e9744  8bca                      MOV ECX,EDX
004e9746  8b830c0c0000              MOV EAX,dword ptr [EBX + 0xc0c]
004e974c  8bfa                      MOV EDI,EDX
004e974e  8bb3080c0000              MOV ESI,dword ptr [EBX + 0xc08]
004e9754  48                        DEC EAX
004e9755  d1e9                      SHR ECX,0x1
004e9757  83e701                    AND EDI,0x1
004e975a  23c8                      AND ECX,EAX
004e975c  8955bc                    MOV dword ptr [EBP + -0x44],EDX
004e975f  8b83140c0000              MOV EAX,dword ptr [EBX + 0xc14]
004e9765  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004e9768  83c0fd                    ADD EAX,-0x3
004e976b  03d0                      ADD EDX,EAX
004e976d  8b830c0c0000              MOV EAX,dword ptr [EBX + 0xc0c]
004e9773  8b348e                    MOV ESI,dword ptr [ESI + ECX*0x4]
004e9776  48                        DEC EAX
004e9777  8bca                      MOV ECX,EDX
004e9779  83e201                    AND EDX,0x1
004e977c  d1e9                      SHR ECX,0x1
004e977e  23c8                      AND ECX,EAX
004e9780  8b83080c0000              MOV EAX,dword ptr [EBX + 0xc08]
004e9786  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9789  f30f100cd0                MOVSS XMM1,dword ptr [EAX + EDX*0x8]
004e978e  f30f1044d004              MOVSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004e9794  f30f5c44fe04              SUBSS XMM0,dword ptr [ESI + EDI*0x8 + 0x4]
004e979a  f30f5c0cfe                SUBSS XMM1,dword ptr [ESI + EDI*0x8]
004e979f  f30f59c0                  MULSS XMM0,XMM0
004e97a3  f30f59c9                  MULSS XMM1,XMM1
004e97a7  f30f58c1                  ADDSS XMM0,XMM1
004e97ab  e8a0c2f4ff                CALL 0x00435a50
004e97b0  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
004e97b8  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004e97c0  0f57ff                    XORPS XMM7,XMM7
004e97c3  f30f5e05eca9ba00          DIVSS XMM0,dword ptr [0x00baa9ec]
004e97cb  f30f5fc7                  MAXSS XMM0,XMM7
004e97cf  f30f5dc3                  MINSS XMM0,XMM3
004e97d3  f30f58c7                  ADDSS XMM0,XMM7
004e97d7  0f2fc7                    COMISS XMM0,XMM7
004e97da  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004e97df  0f86e1020000              JBE 0x004e9ac6
004e97e5  b8abaaaaaa                MOV EAX,0xaaaaaaab
004e97ea  8bb3100c0000              MOV ESI,dword ptr [EBX + 0xc10]
004e97f0  f765f8                    MUL dword ptr [EBP + -0x8]
004e97f3  0f28f3                    MOVAPS XMM6,XMM3
004e97f6  b8abaaaaaa                MOV EAX,0xaaaaaaab
004e97fb  8975c4                    MOV dword ptr [EBP + -0x3c],ESI
004e97fe  d1ea                      SHR EDX,0x1
004e9800  8dbb040c0000              LEA EDI,[EBX + 0xc04]
004e9806  8bce                      MOV ECX,ESI
004e9808  8975c4                    MOV dword ptr [EBP + -0x3c],ESI
004e980b  d1e9                      SHR ECX,0x1
004e980d  8975c4                    MOV dword ptr [EBP + -0x3c],ESI
004e9810  660f6ec2                  MOVD XMM0,EDX
004e9814  c1ea1f                    SHR EDX,0x1f
004e9817  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e981b  8975c4                    MOV dword ptr [EBP + -0x3c],ESI
004e981e  8975c4                    MOV dword ptr [EBP + -0x3c],ESI
004e9821  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004e982a  f7a3140c0000              MUL dword ptr [EBX + 0xc14]
004e9830  660f5af8                  CVTPD2PS XMM7,XMM0
004e9834  8d4602                    LEA EAX,[ESI + 0x2]
004e9837  d1ea                      SHR EDX,0x1
004e9839  4a                        DEC EDX
004e983a  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004e983d  8b830c0c0000              MOV EAX,dword ptr [EBX + 0xc0c]
004e9843  48                        DEC EAX
004e9844  23c8                      AND ECX,EAX
004e9846  8b83080c0000              MOV EAX,dword ptr [EBX + 0xc08]
004e984c  660f6ec2                  MOVD XMM0,EDX
004e9850  c1ea1f                    SHR EDX,0x1f
004e9853  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e9857  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e985a  8b8b140c0000              MOV ECX,dword ptr [EBX + 0xc14]
004e9860  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004e9869  8bd6                      MOV EDX,ESI
004e986b  83e201                    AND EDX,0x1
004e986e  660f5ac0                  CVTPD2PS XMM0,XMM0
004e9872  f30f5ef8                  DIVSS XMM7,XMM0
004e9876  f30f5cf7                  SUBSS XMM6,XMM7
004e987a  0f28c7                    MOVAPS XMM0,XMM7
004e987d  0f28cf                    MOVAPS XMM1,XMM7
004e9880  0f28e6                    MOVAPS XMM4,XMM6
004e9883  0f28ee                    MOVAPS XMM5,XMM6
004e9886  f30f5924d0                MULSS XMM4,dword ptr [EAX + EDX*0x8]
004e988b  f30f596cd004              MULSS XMM5,dword ptr [EAX + EDX*0x8 + 0x4]
004e9891  8d51fd                    LEA EDX,[ECX + -0x3]
004e9894  03d6                      ADD EDX,ESI
004e9896  8d46ff                    LEA EAX,[ESI + -0x1]
004e9899  03c1                      ADD EAX,ECX
004e989b  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
004e989e  8945f4                    MOV dword ptr [EBP + -0xc],EAX
004e98a1  49                        DEC ECX
004e98a2  8bc2                      MOV EAX,EDX
004e98a4  83e201                    AND EDX,0x1
004e98a7  d1e8                      SHR EAX,0x1
004e98a9  23c8                      AND ECX,EAX
004e98ab  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
004e98ae  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e98b1  f30f5904d0                MULSS XMM0,dword ptr [EAX + EDX*0x8]
004e98b6  f30f594cd004              MULSS XMM1,dword ptr [EAX + EDX*0x8 + 0x4]
004e98bc  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004e98bf  f30f58e0                  ADDSS XMM4,XMM0
004e98c3  f30f58e9                  ADDSS XMM5,XMM1
004e98c7  8d1406                    LEA EDX,[ESI + EAX*0x1]
004e98ca  8d5802                    LEA EBX,[EAX + 0x2]
004e98cd  8bca                      MOV ECX,EDX
004e98cf  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004e98d2  03de                      ADD EBX,ESI
004e98d4  d1e9                      SHR ECX,0x1
004e98d6  48                        DEC EAX
004e98d7  23c8                      AND ECX,EAX
004e98d9  83e201                    AND EDX,0x1
004e98dc  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
004e98df  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e98e2  8bcb                      MOV ECX,EBX
004e98e4  d1e9                      SHR ECX,0x1
004e98e6  83e301                    AND EBX,0x1
004e98e9  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
004e98ec  895dd8                    MOV dword ptr [EBP + -0x28],EBX
004e98ef  f30f5c24d0                SUBSS XMM4,dword ptr [EAX + EDX*0x8]
004e98f4  f30f5c6cd004              SUBSS XMM5,dword ptr [EAX + EDX*0x8 + 0x4]
004e98fa  8b55f8                    MOV EDX,dword ptr [EBP + -0x8]
004e98fd  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
004e9900  42                        INC EDX
004e9901  49                        DEC ECX
004e9902  8975c4                    MOV dword ptr [EBP + -0x3c],ESI
004e9905  03d6                      ADD EDX,ESI
004e9907  8975c4                    MOV dword ptr [EBP + -0x3c],ESI
004e990a  8bc2                      MOV EAX,EDX
004e990c  f30f5925a4a3ba00          MULSS XMM4,dword ptr [0x00baa3a4]
004e9914  d1e8                      SHR EAX,0x1
004e9916  83e201                    AND EDX,0x1
004e9919  23c8                      AND ECX,EAX
004e991b  f30f592da4a3ba00          MULSS XMM5,dword ptr [0x00baa3a4]
004e9923  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
004e9926  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9929  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
004e992c  f30f104cd004              MOVSS XMM1,dword ptr [EAX + EDX*0x8 + 0x4]
004e9932  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004e9937  8d7901                    LEA EDI,[ECX + 0x1]
004e993a  8b45f0                    MOV EAX,dword ptr [EBP + -0x10]
004e993d  8d7102                    LEA ESI,[ECX + 0x2]
004e9940  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
004e9948  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e9950  8b98240c0000              MOV EBX,dword ptr [EAX + 0xc24]
004e9956  03f3                      ADD ESI,EBX
004e9958  8b88200c0000              MOV ECX,dword ptr [EAX + 0xc20]
004e995e  f30f5ce9                  SUBSS XMM5,XMM1
004e9962  8b801c0c0000              MOV EAX,dword ptr [EAX + 0xc1c]
004e9968  49                        DEC ECX
004e9969  03fb                      ADD EDI,EBX
004e996b  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
004e9970  8bd7                      MOV EDX,EDI
004e9972  895dc4                    MOV dword ptr [EBP + -0x3c],EBX
004e9975  d1ea                      SHR EDX,0x1
004e9977  f30f5ce0                  SUBSS XMM4,XMM0
004e997b  23ca                      AND ECX,EDX
004e997d  f30f59e9                  MULSS XMM5,XMM1
004e9981  83e701                    AND EDI,0x1
004e9984  895dc4                    MOV dword ptr [EBP + -0x3c],EBX
004e9987  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e998a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e998d  8365f401                  AND dword ptr [EBP + -0xc],0x1
004e9991  d1e9                      SHR ECX,0x1
004e9993  f30f1014f8                MOVSS XMM2,dword ptr [EAX + EDI*0x8]
004e9998  f30f105cf804              MOVSS XMM3,dword ptr [EAX + EDI*0x8 + 0x4]
004e999e  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e99a1  f30f596de4                MULSS XMM5,dword ptr [EBP + -0x1c]
004e99a6  f30f59e1                  MULSS XMM4,XMM1
004e99aa  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
004e99ad  48                        DEC EAX
004e99ae  f30f58dd                  ADDSS XMM3,XMM5
004e99b2  23c8                      AND ECX,EAX
004e99b4  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e99b7  f30f5965e4                MULSS XMM4,dword ptr [EBP + -0x1c]
004e99bc  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e99bf  f30f58d4                  ADDSS XMM2,XMM4
004e99c3  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e99c6  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e99c9  f30f593cc8                MULSS XMM7,dword ptr [EAX + ECX*0x8]
004e99ce  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e99d1  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004e99d4  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
004e99d7  49                        DEC ECX
004e99d8  8365e801                  AND dword ptr [EBP + -0x18],0x1
004e99dc  d1e8                      SHR EAX,0x1
004e99de  23c8                      AND ECX,EAX
004e99e0  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e99e3  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e99e6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e99e9  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004e99ec  f30f5934c8                MULSS XMM6,dword ptr [EAX + ECX*0x8]
004e99f1  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e99f4  f30f58fe                  ADDSS XMM7,XMM6
004e99f8  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004e99fb  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e99fe  49                        DEC ECX
004e99ff  234dd4                    AND ECX,dword ptr [EBP + -0x2c]
004e9a02  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9a05  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004e9a08  f30f5c3cc8                SUBSS XMM7,dword ptr [EAX + ECX*0x8]
004e9a0d  f30f593da4a3ba00          MULSS XMM7,dword ptr [0x00baa3a4]
004e9a15  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004e9a18  895dbc                    MOV dword ptr [EBP + -0x44],EBX
004e9a1b  8b5df0                    MOV EBX,dword ptr [EBP + -0x10]
004e9a1e  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004e9a21  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e9a24  49                        DEC ECX
004e9a25  234dd4                    AND ECX,dword ptr [EBP + -0x2c]
004e9a28  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9a2b  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004e9a2e  f30f1044c804              MOVSS XMM0,dword ptr [EAX + ECX*0x8 + 0x4]
004e9a34  8bc6                      MOV EAX,ESI
004e9a36  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004e9a39  83e601                    AND ESI,0x1
004e9a3c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e9a44  d1e8                      SHR EAX,0x1
004e9a46  8b89200c0000              MOV ECX,dword ptr [ECX + 0xc20]
004e9a4c  49                        DEC ECX
004e9a4d  f30f5cf8                  SUBSS XMM7,XMM0
004e9a51  23c8                      AND ECX,EAX
004e9a53  8b45f0                    MOV EAX,dword ptr [EBP + -0x10]
004e9a56  8b801c0c0000              MOV EAX,dword ptr [EAX + 0xc1c]
004e9a5c  f30f59f9                  MULSS XMM7,XMM1
004e9a60  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9a63  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
004e9a69  f30f597de4                MULSS XMM7,dword ptr [EBP + -0x1c]
004e9a6e  49                        DEC ECX
004e9a6f  23ca                      AND ECX,EDX
004e9a71  8b55f8                    MOV EDX,dword ptr [EBP + -0x8]
004e9a74  83c202                    ADD EDX,0x2
004e9a77  f30f587cf004              ADDSS XMM7,dword ptr [EAX + ESI*0x8 + 0x4]
004e9a7d  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e9a83  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9a86  f30f1114f8                MOVSS dword ptr [EAX + EDI*0x8],XMM2
004e9a8b  f30f115cf804              MOVSS dword ptr [EAX + EDI*0x8 + 0x4],XMM3
004e9a91  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
004e9a97  03d0                      ADD EDX,EAX
004e9a99  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
004e9a9f  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e9aa2  49                        DEC ECX
004e9aa3  8bc2                      MOV EAX,EDX
004e9aa5  d1e8                      SHR EAX,0x1
004e9aa7  23c8                      AND ECX,EAX
004e9aa9  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
004e9aaf  83e201                    AND EDX,0x1
004e9ab2  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e9ab5  f30f117cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM7
004e9abb  8b8b140c0000              MOV ECX,dword ptr [EBX + 0xc14]
004e9ac1  894de8                    MOV dword ptr [EBP + -0x18],ECX
004e9ac4  eb06                      JMP 0x004e9acc
004e9ac6  8b8b140c0000              MOV ECX,dword ptr [EBX + 0xc14]
004e9acc  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
004e9acf  8db3040c0000              LEA ESI,[EBX + 0xc04]
004e9ad5  8945f8                    MOV dword ptr [EBP + -0x8],EAX
004e9ad8  3bc1                      CMP EAX,ECX
004e9ada  0f8270f5ffff              JC 0x004e9050
004e9ae0  807d0800                  CMP byte ptr [EBP + 0x8],0x0
004e9ae4  7512                      JNZ 0x004e9af8
004e9ae6  8d83180c0000              LEA EAX,[EBX + 0xc18]
004e9aec  50                        PUSH EAX
004e9aed  8d8b040c0000              LEA ECX,[EBX + 0xc04]
004e9af3  e84873fcff                CALL 0x004b0e40
004e9af8  5f                        POP EDI
004e9af9  5e                        POP ESI
004e9afa  5b                        POP EBX
004e9afb  8be5                      MOV ESP,EBP
004e9afd  5d                        POP EBP
004e9afe  c20400                    RET 0x4
