; J460 NPC AI 0x004b92e0 AI_004b92e0
; types=906
; identities=906.0.0,906.1.0
; entry=004b92e0
004b92e0  53                        PUSH EBX
004b92e1  8bdc                      MOV EBX,ESP
004b92e3  83ec08                    SUB ESP,0x8
004b92e6  83e4f8                    AND ESP,0xfffffff8
004b92e9  83c404                    ADD ESP,0x4
004b92ec  55                        PUSH EBP
004b92ed  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004b92f0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004b92f4  8bec                      MOV EBP,ESP
004b92f6  6aff                      PUSH -0x1
004b92f8  689d34af00                PUSH 0xaf349d
004b92fd  64a100000000              MOV EAX,FS:[0x0]
004b9303  50                        PUSH EAX
004b9304  53                        PUSH EBX
004b9305  81ec38010000              SUB ESP,0x138
004b930b  a1b493bf00                MOV EAX,[0x00bf93b4]
004b9310  33c5                      XOR EAX,EBP
004b9312  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004b9315  56                        PUSH ESI
004b9316  57                        PUSH EDI
004b9317  50                        PUSH EAX
004b9318  8d45f4                    LEA EAX,[EBP + -0xc]
004b931b  64a300000000              MOV FS:[0x0],EAX
004b9321  8bf9                      MOV EDI,ECX
004b9323  89bd10ffffff              MOV dword ptr [EBP + 0xffffff10],EDI
004b9329  a17816c700                MOV EAX,[0x00c71678]
004b932e  0f57db                    XORPS XMM3,XMM3
004b9331  8b8fd4030000              MOV ECX,dword ptr [EDI + 0x3d4]
004b9337  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
004b933d  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004b9343  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004b9349  89b5f8feffff              MOV dword ptr [EBP + 0xfffffef8],ESI
004b934f  83f810                    CMP EAX,0x10
004b9352  0f8788170000              JA 0x004baae0
004b9358  ff248594b04b00            JMP dword ptr [EAX*0x4 + 0x4bb094]
004b935f  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004b9363  0f85a6000000              JNZ 0x004b940f
004b9369  6898000000                PUSH 0x98
004b936e  68e8030000                PUSH 0x3e8
004b9373  8d45dc                    LEA EAX,[EBP + -0x24]
004b9376  8bcf                      MOV ECX,EDI
004b9378  50                        PUSH EAX
004b9379  e8e2782100                CALL 0x006d0c60
004b937e  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004b9385  837de800                  CMP dword ptr [EBP + -0x18],0x0
004b9389  7534                      JNZ 0x004b93bf
004b938b  e8d05b2300                CALL 0x006eef60
004b9390  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b9396  50                        PUSH EAX
004b9397  6a00                      PUSH 0x0
004b9399  6a00                      PUSH 0x0
004b939b  6840b6c700                PUSH 0xc7b640
004b93a0  6840b6c700                PUSH 0xc7b640
004b93a5  6898000000                PUSH 0x98
004b93aa  68e8030000                PUSH 0x3e8
004b93af  e86cf7f6ff                CALL 0x00428b20
004b93b4  8bf0                      MOV ESI,EAX
004b93b6  8bce                      MOV ECX,ESI
004b93b8  8b16                      MOV EDX,dword ptr [ESI]
004b93ba  ff520c                    CALL dword ptr [EDX + 0xc]
004b93bd  eb05                      JMP 0x004b93c4
004b93bf  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004b93c2  8b30                      MOV ESI,dword ptr [EAX]
004b93c4  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004b93ca  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004b93d0  85c9                      TEST ECX,ECX
004b93d2  741e                      JZ 0x004b93f2
004b93d4  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004b93da  81c1cc030000              ADD ECX,0x3cc
004b93e0  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004b93e6  50                        PUSH EAX
004b93e7  e8245e0100                CALL 0x004cf210
004b93ec  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004b93f2  8930                      MOV dword ptr [EAX],ESI
004b93f4  85f6                      TEST ESI,ESI
004b93f6  7408                      JZ 0x004b9400
004b93f8  50                        PUSH EAX
004b93f9  8bce                      MOV ECX,ESI
004b93fb  e8f0480100                CALL 0x004cdcf0
004b9400  8d4ddc                    LEA ECX,[EBP + -0x24]
004b9403  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004b940a  e8a1e1f5ff                CALL 0x004175b0
004b940f  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004b9415  8d4f48                    LEA ECX,[EDI + 0x48]
004b9418  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004b941f  6a03                      PUSH 0x3
004b9421  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004b9427  e8f41df5ff                CALL 0x0040b220
004b942c  6a04                      PUSH 0x4
004b942e  8d4f48                    LEA ECX,[EDI + 0x48]
004b9431  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004b9435  e8e61df5ff                CALL 0x0040b220
004b943a  8db7f00b0000              LEA ESI,[EDI + 0xbf0]
004b9440  6a02                      PUSH 0x2
004b9442  8bce                      MOV ECX,ESI
004b9444  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004b9448  33c0                      XOR EAX,EAX
004b944a  898710040000              MOV dword ptr [EDI + 0x410],EAX
004b9450  8987a20b0000              MOV dword ptr [EDI + 0xba2],EAX
004b9456  8887a60b0000              MOV byte ptr [EDI + 0xba6],AL
004b945c  668987a00b0000            MOV word ptr [EDI + 0xba0],AX
004b9463  e81829f9ff                CALL 0x0044bd80
004b9468  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
004b946b  8bc2                      MOV EAX,EDX
004b946d  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004b9470  83e203                    AND EDX,0x3
004b9473  c1e802                    SHR EAX,0x2
004b9476  49                        DEC ECX
004b9477  23c8                      AND ECX,EAX
004b9479  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004b947c  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004b947f  c7049000000000            MOV dword ptr [EAX + EDX*0x4],0x0
004b9486  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
004b9489  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004b948c  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
004b9492  49                        DEC ECX
004b9493  8d5001                    LEA EDX,[EAX + 0x1]
004b9496  8bc2                      MOV EAX,EDX
004b9498  83e203                    AND EDX,0x3
004b949b  c1e802                    SHR EAX,0x2
004b949e  23c8                      AND ECX,EAX
004b94a0  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004b94a3  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004b94a6  c7049000000000            MOV dword ptr [EAX + EDX*0x4],0x0
004b94ad  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004b94b1  752c                      JNZ 0x004b94df
004b94b3  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004b94b9  818f6801000011001400      OR dword ptr [EDI + 0x168],0x140011
004b94c3  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004b94cd  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004b94d4  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004b94da  e901160000                JMP 0x004baae0
004b94df  8bb7d4030000              MOV ESI,dword ptr [EDI + 0x3d4]
004b94e5  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
004b94eb  85f6                      TEST ESI,ESI
004b94ed  0f85c7000000              JNZ 0x004b95ba
004b94f3  6840b6c700                PUSH 0xc7b640
004b94f8  6840b6c700                PUSH 0xc7b640
004b94fd  8bcf                      MOV ECX,EDI
004b94ff  e8dce61f00                CALL 0x006b7be0
004b9504  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004b950b  b930000000                MOV ECX,0x30
004b9510  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004b9517  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004b951e  8d7048                    LEA ESI,[EAX + 0x48]
004b9521  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004b9525  e8d639f5ff                CALL 0x0040cf00
004b952a  0f1005c0fcb500            MOVUPS XMM0,xmmword ptr [0x00b5fcc0]
004b9531  c745e421000000            MOV dword ptr [EBP + -0x1c],0x21
004b9538  c745e82f000000            MOV dword ptr [EBP + -0x18],0x2f
004b953f  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004b9542  0f1005d0fcb500            MOVUPS XMM0,xmmword ptr [0x00b5fcd0]
004b9549  0f114010                  MOVUPS xmmword ptr [EAX + 0x10],XMM0
004b954d  8a15e0fcb500              MOV DL,byte ptr [0x00b5fce0]
004b9553  885020                    MOV byte ptr [EAX + 0x20],DL
004b9556  c6402100                  MOV byte ptr [EAX + 0x21],0x0
004b955a  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004b955d  6a01                      PUSH 0x1
004b955f  8d45d4                    LEA EAX,[EBP + -0x2c]
004b9562  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004b9569  50                        PUSH EAX
004b956a  8bce                      MOV ECX,ESI
004b956c  e8df27f5ff                CALL 0x0040bd50
004b9571  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004b9578  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004b957b  83fa10                    CMP EDX,0x10
004b957e  722e                      JC 0x004b95ae
004b9580  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004b9583  42                        INC EDX
004b9584  8bc1                      MOV EAX,ECX
004b9586  81fa00100000              CMP EDX,0x1000
004b958c  7216                      JC 0x004b95a4
004b958e  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004b9591  83c223                    ADD EDX,0x23
004b9594  2bc1                      SUB EAX,ECX
004b9596  83c0fc                    ADD EAX,-0x4
004b9599  83f81f                    CMP EAX,0x1f
004b959c  7606                      JBE 0x004b95a4
004b959e  ff159488b100              CALL dword ptr [0x00b18894]
004b95a4  52                        PUSH EDX
004b95a5  51                        PUSH ECX
004b95a6  e8b15b6300                CALL 0x00aef15c
004b95ab  83c408                    ADD ESP,0x8
004b95ae  8b87d4030000              MOV EAX,dword ptr [EDI + 0x3d4]
004b95b4  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
004b95ba  8bcf                      MOV ECX,EDI
004b95bc  e86ff4ffff                CALL 0x004b8a30
004b95c1  66c787a10b00001e1e        MOV word ptr [EDI + 0xba1],0x1e1e
004b95ca  e911150000                JMP 0x004baae0
004b95cf  6a00                      PUSH 0x0
004b95d1  8d4f48                    LEA ECX,[EDI + 0x48]
004b95d4  68acfdb500                PUSH 0xb5fdac
004b95d9  e8a20df5ff                CALL 0x0040a380
004b95de  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004b95e3  0f57c9                    XORPS XMM1,XMM1
004b95e6  0f2fc1                    COMISS XMM0,XMM1
004b95e9  0f86f4140000              JBE 0x004baae3
004b95ef  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
004b95f2  83e004                    AND EAX,0x4
004b95f5  83c800                    OR EAX,0x0
004b95f8  7416                      JZ 0x004b9610
004b95fa  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
004b9604  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
004b960b  e9d3140000                JMP 0x004baae3
004b9610  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
004b9613  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
004b9616  0f8485000000              JZ 0x004b96a1
004b961c  0f1f4000                  NOP dword ptr [EAX]
004b9620  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004b9624  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
004b962c  0f2fd0                    COMISS XMM2,XMM0
004b962f  722b                      JC 0x004b965c
004b9631  0f2fc1                    COMISS XMM0,XMM1
004b9634  761c                      JBE 0x004b9652
004b9636  e825592300                CALL 0x006eef60
004b963b  33d2                      XOR EDX,EDX
004b963d  b903000000                MOV ECX,0x3
004b9642  f7f1                      DIV ECX
004b9644  85d2                      TEST EDX,EDX
004b9646  7426                      JZ 0x004b966e
004b9648  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004b9650  eb2e                      JMP 0x004b9680
004b9652  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004b965a  eb38                      JMP 0x004b9694
004b965c  e8ff582300                CALL 0x006eef60
004b9661  33d2                      XOR EDX,EDX
004b9663  b903000000                MOV ECX,0x3
004b9668  f7f1                      DIV ECX
004b966a  85d2                      TEST EDX,EDX
004b966c  740a                      JZ 0x004b9678
004b966e  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004b9676  eb08                      JMP 0x004b9680
004b9678  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004b9680  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004b9688  f30f5cd0                  SUBSS XMM2,XMM0
004b968c  f30f119780030000          MOVSS dword ptr [EDI + 0x380],XMM2
004b9694  83c638                    ADD ESI,0x38
004b9697  0f57c9                    XORPS XMM1,XMM1
004b969a  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
004b969d  7581                      JNZ 0x004b9620
004b969f  eb08                      JMP 0x004b96a9
004b96a1  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004b96a9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004b96b1  0f2fc2                    COMISS XMM0,XMM2
004b96b4  7616                      JBE 0x004b96cc
004b96b6  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
004b96c0  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
004b96c7  e917140000                JMP 0x004baae3
004b96cc  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004b96d4  0f2fc2                    COMISS XMM0,XMM2
004b96d7  0f8606140000              JBE 0x004baae3
004b96dd  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
004b96e4  e9fa130000                JMP 0x004baae3
004b96e9  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004b96f0  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
004b96f7  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004b9701  0f85d9130000              JNZ 0x004baae0
004b9707  0fb78710040000            MOVZX EAX,word ptr [EDI + 0x410]
004b970e  6685c0                    TEST AX,AX
004b9711  740d                      JZ 0x004b9720
004b9713  48                        DEC EAX
004b9714  66898710040000            MOV word ptr [EDI + 0x410],AX
004b971b  e9c0130000                JMP 0x004baae0
004b9720  6683bf1204000000          CMP word ptr [EDI + 0x412],0x0
004b9728  0f8fb2130000              JG 0x004baae0
004b972e  8bcf                      MOV ECX,EDI
004b9730  e85beaffff                CALL 0x004b8190
004b9735  e9a6130000                JMP 0x004baae0
004b973a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004b973d  85c0                      TEST EAX,EAX
004b973f  740f                      JZ 0x004b9750
004b9741  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b9748  7406                      JZ 0x004b9750
004b974a  80783400                  CMP byte ptr [EAX + 0x34],0x0
004b974e  740d                      JZ 0x004b975d
004b9750  8bcf                      MOV ECX,EDI
004b9752  e8d9e6ffff                CALL 0x004b7e30
004b9757  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
004b975d  c781b80b00009a99993f      MOV dword ptr [ECX + 0xbb8],0x3f99999a
004b9767  0fb787a40b0000            MOVZX EAX,word ptr [EDI + 0xba4]
004b976e  6685c0                    TEST AX,AX
004b9771  0f8e69130000              JLE 0x004baae0
004b9777  48                        DEC EAX
004b9778  668987a40b0000            MOV word ptr [EDI + 0xba4],AX
004b977f  6685c0                    TEST AX,AX
004b9782  0f8f58130000              JG 0x004baae0
004b9788  83bf640b00000e            CMP dword ptr [EDI + 0xb64],0xe
004b978f  7528                      JNZ 0x004b97b9
004b9791  80bfa70b000000            CMP byte ptr [EDI + 0xba7],0x0
004b9798  0f8442130000              JZ 0x004baae0
004b979e  6a00                      PUSH 0x0
004b97a0  68dce0b100                PUSH 0xb1e0dc
004b97a5  8d4f48                    LEA ECX,[EDI + 0x48]
004b97a8  e8d30bf5ff                CALL 0x0040a380
004b97ad  c687a30b000096            MOV byte ptr [EDI + 0xba3],0x96
004b97b4  e927130000                JMP 0x004baae0
004b97b9  8bcf                      MOV ECX,EDI
004b97bb  e8e0f4ffff                CALL 0x004b8ca0
004b97c0  e91b130000                JMP 0x004baae0
004b97c5  8bcf                      MOV ECX,EDI
004b97c7  e864e6ffff                CALL 0x004b7e30
004b97cc  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
004b97d2  8d9508ffffff              LEA EDX,[EBP + 0xffffff08]
004b97d8  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004b97de  c78514ffffff0000f041      MOV dword ptr [EBP + 0xffffff14],0x41f00000
004b97e8  f30f1081b80b0000          MOVSS XMM0,dword ptr [ECX + 0xbb8]
004b97f0  f30f580508a1ba00          ADDSS XMM0,dword ptr [0x00baa108]
004b97f8  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
004b97ff  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004b9807  0f46c2                    CMOVBE EAX,EDX
004b980a  8b00                      MOV EAX,dword ptr [EAX]
004b980c  8981b80b0000              MOV dword ptr [ECX + 0xbb8],EAX
004b9812  8bcf                      MOV ECX,EDI
004b9814  ff7720                    PUSH dword ptr [EDI + 0x20]
004b9817  6a0f                      PUSH 0xf
004b9819  e8f22e1f00                CALL 0x006ac710
004b981e  84c0                      TEST AL,AL
004b9820  0f84ba120000              JZ 0x004baae0
004b9826  51                        PUSH ECX
004b9827  8d873c030000              LEA EAX,[EDI + 0x33c]
004b982d  c704240000a041            MOV dword ptr [ESP],0x41a00000
004b9834  50                        PUSH EAX
004b9835  8bce                      MOV ECX,ESI
004b9837  e8249b3500                CALL 0x00813360
004b983c  84c0                      TEST AL,AL
004b983e  0f849c120000              JZ 0x004baae0
004b9844  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004b984a  50                        PUSH EAX
004b984b  e820581c00                CALL 0x0067f070
004b9850  83c404                    ADD ESP,0x4
004b9853  8bf0                      MOV ESI,EAX
004b9855  e806572300                CALL 0x006eef60
004b985a  6a00                      PUSH 0x0
004b985c  6a00                      PUSH 0x0
004b985e  6a00                      PUSH 0x0
004b9860  660f6ec0                  MOVD XMM0,EAX
004b9864  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b9868  c1e81f                    SHR EAX,0x1f
004b986b  51                        PUSH ECX
004b986c  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004b9872  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b987b  c7042400000000            MOV dword ptr [ESP],0x0
004b9882  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004b9888  50                        PUSH EAX
004b9889  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
004b988f  50                        PUSH EAX
004b9890  660f5ac8                  CVTPD2PS XMM1,XMM0
004b9894  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004b989c  0f28c1                    MOVAPS XMM0,XMM1
004b989f  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004b98a4  f30f5906                  MULSS XMM0,dword ptr [ESI]
004b98a8  8db73c030000              LEA ESI,[EDI + 0x33c]
004b98ae  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
004b98b3  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004b98b7  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
004b98bf  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004b98c7  e8549c3500                CALL 0x00813520
004b98cc  e88f562300                CALL 0x006eef60
004b98d1  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
004b98d7  51                        PUSH ECX
004b98d8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b98de  50                        PUSH EAX
004b98df  6a00                      PUSH 0x0
004b98e1  6a00                      PUSH 0x0
004b98e3  6840b6c700                PUSH 0xc7b640
004b98e8  56                        PUSH ESI
004b98e9  6a00                      PUSH 0x0
004b98eb  6a04                      PUSH 0x4
004b98ed  e82ef2f6ff                CALL 0x00428b20
004b98f2  50                        PUSH EAX
004b98f3  8bcf                      MOV ECX,EDI
004b98f5  e8e6f7ffff                CALL 0x004b90e0
004b98fa  e9e1110000                JMP 0x004baae0
004b98ff  6a00                      PUSH 0x0
004b9901  8d7748                    LEA ESI,[EDI + 0x48]
004b9904  68b8fdb500                PUSH 0xb5fdb8
004b9909  8bce                      MOV ECX,ESI
004b990b  e8700af5ff                CALL 0x0040a380
004b9910  68dcd2b100                PUSH 0xb1d2dc
004b9915  8bce                      MOV ECX,ESI
004b9917  e81417f5ff                CALL 0x0040b030
004b991c  84c0                      TEST AL,AL
004b991e  0f8464010000              JZ 0x004b9a88
004b9924  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004b992a  e80156f8ff                CALL 0x0043ef30
004b992f  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
004b9935  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
004b993b  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004b9942  838d74ffffff08            OR dword ptr [EBP + 0xffffff74],0x8
004b9949  898570ffffff              MOV dword ptr [EBP + 0xffffff70],EAX
004b994f  8d45c0                    LEA EAX,[EBP + -0x40]
004b9952  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004b9956  c7852cffffff00000040      MOV dword ptr [EBP + 0xffffff2c],0x40000000
004b9960  0f57c0                    XORPS XMM0,XMM0
004b9963  c745e00000803f            MOV dword ptr [EBP + -0x20],0x3f800000
004b996a  50                        PUSH EAX
004b996b  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004b996f  c745e49a99993e            MOV dword ptr [EBP + -0x1c],0x3e99999a
004b9976  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004b997d  e86ed8f4ff                CALL 0x004071f0
004b9982  8bcf                      MOV ECX,EDI
004b9984  e8b74e2000                CALL 0x006be840
004b9989  8bf0                      MOV ESI,EAX
004b998b  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
004b9993  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004b999b  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
004b99a3  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004b99ab  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004b99b3  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004b99bb  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004b99c3  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004b99cb  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004b99d3  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004b99db  f30f59c9                  MULSS XMM1,XMM1
004b99df  f30f59c0                  MULSS XMM0,XMM0
004b99e3  f30f58c1                  ADDSS XMM0,XMM1
004b99e7  e864c0f7ff                CALL 0x00435a50
004b99ec  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
004b99f4  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004b99fa  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
004b9a02  f30f59c8                  MULSS XMM1,XMM0
004b9a06  50                        PUSH EAX
004b9a07  f30f59d0                  MULSS XMM2,XMM0
004b9a0b  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004b9a11  51                        PUSH ECX
004b9a12  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
004b9a1a  c7042400002041            MOV dword ptr [ESP],0x41200000
004b9a21  8bcf                      MOV ECX,EDI
004b9a23  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
004b9a2b  50                        PUSH EAX
004b9a2c  6a01                      PUSH 0x1
004b9a2e  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
004b9a36  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
004b9a3e  e88d332100                CALL 0x006ccdd0
004b9a43  8d7748                    LEA ESI,[EDI + 0x48]
004b9a46  f30f108018040000          MOVSS XMM0,dword ptr [EAX + 0x418]
004b9a4e  f30f5c0504a3ba00          SUBSS XMM0,dword ptr [0x00baa304]
004b9a56  c7802004000000000040      MOV dword ptr [EAX + 0x420],0x40000000
004b9a60  f30f118018040000          MOVSS dword ptr [EAX + 0x418],XMM0
004b9a68  f30f108014040000          MOVSS XMM0,dword ptr [EAX + 0x414]
004b9a70  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004b9a78  f30f5c05fca6ba00          SUBSS XMM0,dword ptr [0x00baa6fc]
004b9a80  f30f118014040000          MOVSS dword ptr [EAX + 0x414],XMM0
004b9a88  68dcd2b100                PUSH 0xb1d2dc
004b9a8d  8bce                      MOV ECX,ESI
004b9a8f  e8fc15f5ff                CALL 0x0040b090
004b9a94  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
004b9a9a  f30f1089b80b0000          MOVSS XMM1,dword ptr [ECX + 0xbb8]
004b9aa2  84c0                      TEST AL,AL
004b9aa4  7441                      JZ 0x004b9ae7
004b9aa6  f30f580d20a1ba00          ADDSS XMM1,dword ptr [0x00baa120]
004b9aae  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004b9ab4  c78514ffffff9a99993f      MOV dword ptr [EBP + 0xffffff14],0x3f99999a
004b9abe  8d9508ffffff              LEA EDX,[EBP + 0xffffff08]
004b9ac4  0f2f0db0a4ba00            COMISS XMM1,dword ptr [0x00baa4b0]
004b9acb  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004b9ad3  0f46c2                    CMOVBE EAX,EDX
004b9ad6  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004b9ada  f30f1181b80b0000          MOVSS dword ptr [ECX + 0xbb8],XMM0
004b9ae2  e9f90f0000                JMP 0x004baae0
004b9ae7  f30f5c0d80a3ba00          SUBSS XMM1,dword ptr [0x00baa380]
004b9aef  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
004b9af7  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004b9afd  8d95d8feffff              LEA EDX,[EBP + 0xfffffed8]
004b9b03  c785dcfeffffcdcc4c3f      MOV dword ptr [EBP + 0xfffffedc],0x3f4ccccd
004b9b0d  0f2fc1                    COMISS XMM0,XMM1
004b9b10  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004b9b18  0f46c2                    CMOVBE EAX,EDX
004b9b1b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004b9b1f  f30f1181b80b0000          MOVSS dword ptr [ECX + 0xbb8],XMM0
004b9b27  e9b40f0000                JMP 0x004baae0
004b9b2c  8d7748                    LEA ESI,[EDI + 0x48]
004b9b2f  68d4d2b100                PUSH 0xb1d2d4
004b9b34  8bce                      MOV ECX,ESI
004b9b36  e8f514f5ff                CALL 0x0040b030
004b9b3b  84c0                      TEST AL,AL
004b9b3d  7420                      JZ 0x004b9b5f
004b9b3f  51                        PUSH ECX
004b9b40  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b9b47  6a00                      PUSH 0x0
004b9b49  6a02                      PUSH 0x2
004b9b4b  51                        PUSH ECX
004b9b4c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b9b53  8bcf                      MOV ECX,EDI
004b9b55  68c9000000                PUSH 0xc9
004b9b5a  e841d02100                CALL 0x006d6ba0
004b9b5f  68dcd2b100                PUSH 0xb1d2dc
004b9b64  8bce                      MOV ECX,ESI
004b9b66  e8c514f5ff                CALL 0x0040b030
004b9b6b  84c0                      TEST AL,AL
004b9b6d  0f8476020000              JZ 0x004b9de9
004b9b73  51                        PUSH ECX
004b9b74  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b9b7b  6a00                      PUSH 0x0
004b9b7d  6a02                      PUSH 0x2
004b9b7f  51                        PUSH ECX
004b9b80  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b9b87  8bcf                      MOV ECX,EDI
004b9b89  6a19                      PUSH 0x19
004b9b8b  e810d02100                CALL 0x006d6ba0
004b9b90  8bcf                      MOV ECX,EDI
004b9b92  e8a94c2000                CALL 0x006be840
004b9b97  8bf0                      MOV ESI,EAX
004b9b99  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004b9ba1  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004b9ba9  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004b9bb1  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004b9bb9  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
004b9bc1  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004b9bc9  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
004b9bd1  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004b9bd9  e882532300                CALL 0x006eef60
004b9bde  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
004b9be6  660f6ec0                  MOVD XMM0,EAX
004b9bea  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b9bee  c1e81f                    SHR EAX,0x1f
004b9bf1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b9bfa  660f5ac0                  CVTPD2PS XMM0,XMM0
004b9bfe  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004b9c06  f30f59059ca1ba00          MULSS XMM0,dword ptr [0x00baa19c]
004b9c0e  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
004b9c16  f30f59c8                  MULSS XMM1,XMM0
004b9c1a  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
004b9c22  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
004b9c2a  f30f59c8                  MULSS XMM1,XMM0
004b9c2e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004b9c36  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004b9c3e  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
004b9c46  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004b9c4e  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004b9c56  f30f59c0                  MULSS XMM0,XMM0
004b9c5a  f30f59c9                  MULSS XMM1,XMM1
004b9c5e  f30f58c1                  ADDSS XMM0,XMM1
004b9c62  e8e9bdf7ff                CALL 0x00435a50
004b9c67  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
004b9c6f  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004b9c75  6a00                      PUSH 0x0
004b9c77  0f28c8                    MOVAPS XMM1,XMM0
004b9c7a  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
004b9c82  6a00                      PUSH 0x0
004b9c84  f30f598d0cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff0c]
004b9c8c  6a00                      PUSH 0x0
004b9c8e  51                        PUSH ECX
004b9c8f  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004b9c95  f30f58d0                  ADDSS XMM2,XMM0
004b9c99  f30f588d14ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff14]
004b9ca1  c7042400000000            MOV dword ptr [ESP],0x0
004b9ca8  50                        PUSH EAX
004b9ca9  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004b9caf  50                        PUSH EAX
004b9cb0  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
004b9cb8  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
004b9cc0  e85b983500                CALL 0x00813520
004b9cc5  8bb7fc0b0000              MOV ESI,dword ptr [EDI + 0xbfc]
004b9ccb  8bce                      MOV ECX,ESI
004b9ccd  8b97f80b0000              MOV EDX,dword ptr [EDI + 0xbf8]
004b9cd3  83e103                    AND ECX,0x3
004b9cd6  4a                        DEC EDX
004b9cd7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004b9cdb  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004b9ce3  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004b9ce8  8bc6                      MOV EAX,ESI
004b9cea  c1e802                    SHR EAX,0x2
004b9ced  23d0                      AND EDX,EAX
004b9cef  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004b9cf7  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004b9cfd  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
004b9d00  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
004b9d04  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004b9d0a  742d                      JZ 0x004b9d39
004b9d0c  49                        DEC ECX
004b9d0d  8bc6                      MOV EAX,ESI
004b9d0f  c1e802                    SHR EAX,0x2
004b9d12  83e603                    AND ESI,0x3
004b9d15  23c8                      AND ECX,EAX
004b9d17  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004b9d1d  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004b9d20  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
004b9d26  51                        PUSH ECX
004b9d27  8bcf                      MOV ECX,EDI
004b9d29  ff34b0                    PUSH dword ptr [EAX + ESI*0x4]
004b9d2c  e8aff3ffff                CALL 0x004b90e0
004b9d31  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
004b9d37  eb65                      JMP 0x004b9d9e
004b9d39  8d5601                    LEA EDX,[ESI + 0x1]
004b9d3c  89b504ffffff              MOV dword ptr [EBP + 0xffffff04],ESI
004b9d42  8bc2                      MOV EAX,EDX
004b9d44  49                        DEC ECX
004b9d45  c1e802                    SHR EAX,0x2
004b9d48  83e203                    AND EDX,0x3
004b9d4b  23c8                      AND ECX,EAX
004b9d4d  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004b9d53  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004b9d59  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004b9d5c  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
004b9d60  747e                      JZ 0x004b9de0
004b9d62  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004b9d68  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004b9d6e  49                        DEC ECX
004b9d6f  238d14ffffff              AND ECX,dword ptr [EBP + 0xffffff14]
004b9d75  89b504ffffff              MOV dword ptr [EBP + 0xffffff04],ESI
004b9d7b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004b9d7e  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
004b9d84  51                        PUSH ECX
004b9d85  8bcf                      MOV ECX,EDI
004b9d87  ff3490                    PUSH dword ptr [EAX + EDX*0x4]
004b9d8a  e851f3ffff                CALL 0x004b90e0
004b9d8f  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
004b9d95  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
004b9d9b  8d5001                    LEA EDX,[EAX + 0x1]
004b9d9e  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004b9da4  8bc2                      MOV EAX,EDX
004b9da6  c1e802                    SHR EAX,0x2
004b9da9  49                        DEC ECX
004b9daa  23c8                      AND ECX,EAX
004b9dac  83e203                    AND EDX,0x3
004b9daf  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004b9db5  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004b9db8  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004b9dbb  8d3490                    LEA ESI,[EAX + EDX*0x4]
004b9dbe  85c9                      TEST ECX,ECX
004b9dc0  7418                      JZ 0x004b9dda
004b9dc2  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004b9dc8  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
004b9dce  50                        PUSH EAX
004b9dcf  81c1cc030000              ADD ECX,0x3cc
004b9dd5  e836540100                CALL 0x004cf210
004b9dda  c70600000000              MOV dword ptr [ESI],0x0
004b9de0  fe87a60b0000              INC byte ptr [EDI + 0xba6]
004b9de6  8d7748                    LEA ESI,[EDI + 0x48]
004b9de9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b9ded  740d                      JZ 0x004b9dfc
004b9def  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b9df6  0f85e40c0000              JNZ 0x004baae0
004b9dfc  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004b9e06  80bfa70b000000            CMP byte ptr [EDI + 0xba7],0x0
004b9e0d  0f84cd0c0000              JZ 0x004baae0
004b9e13  80bfa30b000000            CMP byte ptr [EDI + 0xba3],0x0
004b9e1a  0f87c00c0000              JA 0x004baae0
004b9e20  e83b512300                CALL 0x006eef60
004b9e25  33d2                      XOR EDX,EDX
004b9e27  b90a000000                MOV ECX,0xa
004b9e2c  f7f1                      DIV ECX
004b9e2e  85d2                      TEST EDX,EDX
004b9e30  0f85aa0c0000              JNZ 0x004baae0
004b9e36  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004b9e3e  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
004b9e46  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
004b9e4d  0f868d0c0000              JBE 0x004baae0
004b9e53  52                        PUSH EDX
004b9e54  68dce0b100                PUSH 0xb1e0dc
004b9e59  8bce                      MOV ECX,ESI
004b9e5b  e82005f5ff                CALL 0x0040a380
004b9e60  c687a30b000096            MOV byte ptr [EDI + 0xba3],0x96
004b9e67  e9740c0000                JMP 0x004baae0
004b9e6c  8d4f48                    LEA ECX,[EDI + 0x48]
004b9e6f  68dcd2b100                PUSH 0xb1d2dc
004b9e74  e8b711f5ff                CALL 0x0040b030
004b9e79  84c0                      TEST AL,AL
004b9e7b  0f845f0c0000              JZ 0x004baae0
004b9e81  51                        PUSH ECX
004b9e82  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b9e89  6a00                      PUSH 0x0
004b9e8b  6a02                      PUSH 0x2
004b9e8d  51                        PUSH ECX
004b9e8e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b9e95  8bcf                      MOV ECX,EDI
004b9e97  6a19                      PUSH 0x19
004b9e99  e802cd2100                CALL 0x006d6ba0
004b9e9e  33f6                      XOR ESI,ESI
004b9ea0  33c0                      XOR EAX,EAX
004b9ea2  33d2                      XOR EDX,EDX
004b9ea4  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
004b9eaa  8975e0                    MOV dword ptr [EBP + -0x20],ESI
004b9ead  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
004b9eb0  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
004b9eb6  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004b9eb9  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004b9ec0  a17816c700                MOV EAX,[0x00c71678]
004b9ec5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004b9ecb  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
004b9ece  0faf480c                  IMUL ECX,dword ptr [EAX + 0xc]
004b9ed2  81f987000000              CMP ECX,0x87
004b9ed8  8bca                      MOV ECX,EDX
004b9eda  0f9fc1                    SETG CL
004b9edd  83c103                    ADD ECX,0x3
004b9ee0  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004b9ee6  c785f0feffff00000000      MOV dword ptr [EBP + 0xfffffef0],0x0
004b9ef0  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
004b9efa  3bf2                      CMP ESI,EDX
004b9efc  7538                      JNZ 0x004b9f36
004b9efe  51                        PUSH ECX
004b9eff  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004b9f05  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
004b9f0b  c7042400002042            MOV dword ptr [ESP],0x42200000
004b9f12  50                        PUSH EAX
004b9f13  e8b84a3600                CALL 0x0081e9d0
004b9f18  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004b9f1c  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004b9f24  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004b9f29  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004b9f31  e9b4010000                JMP 0x004ba0ea
004b9f36  f30f1005d4aeba00          MOVSS XMM0,dword ptr [0x00baaed4]
004b9f3e  8b7de4                    MOV EDI,dword ptr [EBP + -0x1c]
004b9f41  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004b9f49  c785dcfeffff08000000      MOV dword ptr [EBP + 0xfffffedc],0x8
004b9f53  51                        PUSH ECX
004b9f54  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004b9f5a  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004b9f60  c7042400002042            MOV dword ptr [ESP],0x42200000
004b9f67  50                        PUSH EAX
004b9f68  e8634a3600                CALL 0x0081e9d0
004b9f6d  0f57c0                    XORPS XMM0,XMM0
004b9f70  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
004b9f78  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004b9f80  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
004b9f88  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004b9f8d  f30f109500ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff00]
004b9f95  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
004b9f99  0f28c1                    MOVAPS XMM0,XMM1
004b9f9c  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
004b9fa4  f30f59c1                  MULSS XMM0,XMM1
004b9fa8  0f28ca                    MOVAPS XMM1,XMM2
004b9fab  f30f1195e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM2
004b9fb3  f30f59ca                  MULSS XMM1,XMM2
004b9fb7  f30f58c1                  ADDSS XMM0,XMM1
004b9fbb  e890baf7ff                CALL 0x00435a50
004b9fc0  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
004b9fc8  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004b9fcf  f30f1095e8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee8]
004b9fd7  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004b9fde  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004b9fe6  0f28c1                    MOVAPS XMM0,XMM1
004b9fe9  f30f59c1                  MULSS XMM0,XMM1
004b9fed  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
004b9ff5  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
004b9ffd  0f28ca                    MOVAPS XMM1,XMM2
004ba000  f30f59ca                  MULSS XMM1,XMM2
004ba004  f30f1195e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM2
004ba00c  f30f1195c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM2
004ba014  f30f58c1                  ADDSS XMM0,XMM1
004ba018  e833baf7ff                CALL 0x00435a50
004ba01d  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004ba024  f30f1095e8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee8]
004ba02c  7631                      JBE 0x004ba05f
004ba02e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004ba036  f30f5ec8                  DIVSS XMM1,XMM0
004ba03a  0f28c1                    MOVAPS XMM0,XMM1
004ba03d  f30f59d0                  MULSS XMM2,XMM0
004ba041  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
004ba049  f30f59c1                  MULSS XMM0,XMM1
004ba04d  f30f1195c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM2
004ba055  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
004ba05d  eb08                      JMP 0x004ba067
004ba05f  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
004ba067  0f2fd0                    COMISS XMM2,XMM0
004ba06a  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004ba070  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
004ba076  0f46c1                    CMOVBE EAX,ECX
004ba079  83c608                    ADD ESI,0x8
004ba07c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ba080  f30f5985f4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef4]
004ba088  f30f5885c4feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffec4]
004ba090  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
004ba098  3bf7                      CMP ESI,EDI
004ba09a  0f85e0feffff              JNZ 0x004b9f80
004ba0a0  0f2f85d8feffff            COMISS XMM0,dword ptr [EBP + 0xfffffed8]
004ba0a7  7628                      JBE 0x004ba0d1
004ba0a9  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004ba0b1  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004ba0b9  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004ba0c1  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ba0c9  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004ba0d1  83addcfeffff01            SUB dword ptr [EBP + 0xfffffedc],0x1
004ba0d8  8bb5e0feffff              MOV ESI,dword ptr [EBP + 0xfffffee0]
004ba0de  0f856ffeffff              JNZ 0x004b9f53
004ba0e4  8bbd10ffffff              MOV EDI,dword ptr [EBP + 0xffffff10]
004ba0ea  6a00                      PUSH 0x0
004ba0ec  6a00                      PUSH 0x0
004ba0ee  6a00                      PUSH 0x0
004ba0f0  51                        PUSH ECX
004ba0f1  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004ba0f7  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004ba0fd  c7042400008042            MOV dword ptr [ESP],0x42800000
004ba104  50                        PUSH EAX
004ba105  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
004ba10b  50                        PUSH EAX
004ba10c  e80f943500                CALL 0x00813520
004ba111  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ba115  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ba11d  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004ba125  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ba12a  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
004ba132  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004ba13a  e8214e2300                CALL 0x006eef60
004ba13f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ba145  50                        PUSH EAX
004ba146  6a00                      PUSH 0x0
004ba148  6a00                      PUSH 0x0
004ba14a  6840b6c700                PUSH 0xc7b640
004ba14f  8d873c030000              LEA EAX,[EDI + 0x33c]
004ba155  50                        PUSH EAX
004ba156  6a0f                      PUSH 0xf
004ba158  6a04                      PUSH 0x4
004ba15a  e8c1e9f6ff                CALL 0x00428b20
004ba15f  8bf0                      MOV ESI,EAX
004ba161  8bcf                      MOV ECX,EDI
004ba163  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004ba169  50                        PUSH EAX
004ba16a  56                        PUSH ESI
004ba16b  e870efffff                CALL 0x004b90e0
004ba170  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
004ba173  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
004ba179  c7868801000001000000      MOV dword ptr [ESI + 0x188],0x1
004ba183  3bd0                      CMP EDX,EAX
004ba185  7427                      JZ 0x004ba1ae
004ba187  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004ba18f  8bb5e0feffff              MOV ESI,dword ptr [EBP + 0xfffffee0]
004ba195  f30f1102                  MOVSS dword ptr [EDX],XMM0
004ba199  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
004ba1a1  f30f114204                MOVSS dword ptr [EDX + 0x4],XMM0
004ba1a6  83c208                    ADD EDX,0x8
004ba1a9  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
004ba1ac  eb25                      JMP 0x004ba1d3
004ba1ae  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004ba1b4  50                        PUSH EAX
004ba1b5  52                        PUSH EDX
004ba1b6  8d4de0                    LEA ECX,[EBP + -0x20]
004ba1b9  e87252f7ff                CALL 0x0042f430
004ba1be  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
004ba1c1  8b75e0                    MOV ESI,dword ptr [EBP + -0x20]
004ba1c4  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
004ba1c7  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
004ba1cd  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
004ba1d3  83ad14ffffff01            SUB dword ptr [EBP + 0xffffff14],0x1
004ba1da  0f8506fdffff              JNZ 0x004b9ee6
004ba1e0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004ba1e7  b97d000000                MOV ECX,0x7d
004ba1ec  66898f12040000            MOV word ptr [EDI + 0x412],CX
004ba1f3  85f6                      TEST ESI,ESI
004ba1f5  0f84e5080000              JZ 0x004baae0
004ba1fb  2bc6                      SUB EAX,ESI
004ba1fd  c1f803                    SAR EAX,0x3
004ba200  8d0cc500000000            LEA ECX,[EAX*0x8 + 0x0]
004ba207  8bc6                      MOV EAX,ESI
004ba209  81f900100000              CMP ECX,0x1000
004ba20f  7216                      JC 0x004ba227
004ba211  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
004ba214  83c123                    ADD ECX,0x23
004ba217  2bc6                      SUB EAX,ESI
004ba219  83c0fc                    ADD EAX,-0x4
004ba21c  83f81f                    CMP EAX,0x1f
004ba21f  7606                      JBE 0x004ba227
004ba221  ff159488b100              CALL dword ptr [0x00b18894]
004ba227  51                        PUSH ECX
004ba228  56                        PUSH ESI
004ba229  e82e4f6300                CALL 0x00aef15c
004ba22e  83c408                    ADD ESP,0x8
004ba231  e9aa080000                JMP 0x004baae0
004ba236  6a00                      PUSH 0x0
004ba238  68e8fdb500                PUSH 0xb5fde8
004ba23d  8d4f48                    LEA ECX,[EDI + 0x48]
004ba240  e83b01f5ff                CALL 0x0040a380
004ba245  68d4d2b100                PUSH 0xb1d2d4
004ba24a  8d4f48                    LEA ECX,[EDI + 0x48]
004ba24d  e8de0df5ff                CALL 0x0040b030
004ba252  84c0                      TEST AL,AL
004ba254  7420                      JZ 0x004ba276
004ba256  51                        PUSH ECX
004ba257  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ba25e  6a00                      PUSH 0x0
004ba260  6a02                      PUSH 0x2
004ba262  51                        PUSH ECX
004ba263  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ba26a  8bcf                      MOV ECX,EDI
004ba26c  68fc000000                PUSH 0xfc
004ba271  e82ac92100                CALL 0x006d6ba0
004ba276  68dcd2b100                PUSH 0xb1d2dc
004ba27b  8d4f48                    LEA ECX,[EDI + 0x48]
004ba27e  e8ad0df5ff                CALL 0x0040b030
004ba283  84c0                      TEST AL,AL
004ba285  0f8455080000              JZ 0x004baae0
004ba28b  51                        PUSH ECX
004ba28c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ba293  6a00                      PUSH 0x0
004ba295  6a02                      PUSH 0x2
004ba297  51                        PUSH ECX
004ba298  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ba29f  8bcf                      MOV ECX,EDI
004ba2a1  68d5010000                PUSH 0x1d5
004ba2a6  e8f5c82100                CALL 0x006d6ba0
004ba2ab  e930080000                JMP 0x004baae0
004ba2b0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ba2b8  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004ba2c0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ba2c8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ba2cc  740d                      JZ 0x004ba2db
004ba2ce  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ba2d5  0f8505080000              JNZ 0x004baae0
004ba2db  b85a000000                MOV EAX,0x5a
004ba2e0  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004ba2ea  8bcf                      MOV ECX,EDI
004ba2ec  668987a40b0000            MOV word ptr [EDI + 0xba4],AX
004ba2f3  e848452000                CALL 0x006be840
004ba2f8  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004ba300  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ba308  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004ba310  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004ba318  e843fafdff                CALL 0x00499d60
004ba31d  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ba325  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ba32d  e9ae070000                JMP 0x004baae0
004ba332  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ba33a  8d4f48                    LEA ECX,[EDI + 0x48]
004ba33d  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
004ba345  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ba34d  0f28d4                    MOVAPS XMM2,XMM4
004ba350  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004ba358  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004ba35f  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004ba366  0f2fd1                    COMISS XMM2,XMM1
004ba369  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ba371  0f829a000000              JC 0x004ba411
004ba377  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
004ba37a  bac8fdb500                MOV EDX,0xb5fdc8
004ba37f  0f2fdc                    COMISS XMM3,XMM4
004ba382  b8d0fdb500                MOV EAX,0xb5fdd0
004ba387  0f46d0                    CMOVBE EDX,EAX
004ba38a  899514ffffff              MOV dword ptr [EBP + 0xffffff14],EDX
004ba390  85c9                      TEST ECX,ECX
004ba392  0f8474000000              JZ 0x004ba40c
004ba398  83791410                  CMP dword ptr [ECX + 0x14],0x10
004ba39c  8bc1                      MOV EAX,ECX
004ba39e  7202                      JC 0x004ba3a2
004ba3a0  8b01                      MOV EAX,dword ptr [ECX]
004ba3a2  8bca                      MOV ECX,EDX
004ba3a4  8a10                      MOV DL,byte ptr [EAX]
004ba3a6  3a11                      CMP DL,byte ptr [ECX]
004ba3a8  751a                      JNZ 0x004ba3c4
004ba3aa  84d2                      TEST DL,DL
004ba3ac  7412                      JZ 0x004ba3c0
004ba3ae  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004ba3b1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004ba3b4  750e                      JNZ 0x004ba3c4
004ba3b6  83c002                    ADD EAX,0x2
004ba3b9  83c102                    ADD ECX,0x2
004ba3bc  84d2                      TEST DL,DL
004ba3be  75e4                      JNZ 0x004ba3a4
004ba3c0  33c0                      XOR EAX,EAX
004ba3c2  eb05                      JMP 0x004ba3c9
004ba3c4  1bc0                      SBB EAX,EAX
004ba3c6  83c801                    OR EAX,0x1
004ba3c9  8d4f48                    LEA ECX,[EDI + 0x48]
004ba3cc  85c0                      TEST EAX,EAX
004ba3ce  750f                      JNZ 0x004ba3df
004ba3d0  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004ba3d3  80783400                  CMP byte ptr [EAX + 0x34],0x0
004ba3d7  742f                      JZ 0x004ba408
004ba3d9  80794400                  CMP byte ptr [ECX + 0x44],0x0
004ba3dd  7529                      JNZ 0x004ba408
004ba3df  8b9514ffffff              MOV EDX,dword ptr [EBP + 0xffffff14]
004ba3e5  6a01                      PUSH 0x1
004ba3e7  52                        PUSH EDX
004ba3e8  e8e301f5ff                CALL 0x0040a5d0
004ba3ed  84c0                      TEST AL,AL
004ba3ef  7417                      JZ 0x004ba408
004ba3f1  8d4748                    LEA EAX,[EDI + 0x48]
004ba3f4  8d7030                    LEA ESI,[EAX + 0x30]
004ba3f7  8bce                      MOV ECX,ESI
004ba3f9  e8b2fdf4ff                CALL 0x0040a1b0
004ba3fe  c6461401                  MOV byte ptr [ESI + 0x14],0x1
004ba402  8bb5f8feffff              MOV ESI,dword ptr [EBP + 0xfffffef8]
004ba408  32c0                      XOR AL,AL
004ba40a  eb1e                      JMP 0x004ba42a
004ba40c  8d4f48                    LEA ECX,[EDI + 0x48]
004ba40f  ebd4                      JMP 0x004ba3e5
004ba411  6a00                      PUSH 0x0
004ba413  68dce6b100                PUSH 0xb1e6dc
004ba418  e863fff4ff                CALL 0x0040a380
004ba41d  0f57c0                    XORPS XMM0,XMM0
004ba420  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
004ba427  0f97c0                    SETA AL
004ba42a  888748010000              MOV byte ptr [EDI + 0x148],AL
004ba430  0fb797a40b0000            MOVZX EDX,word ptr [EDI + 0xba4]
004ba437  6685d2                    TEST DX,DX
004ba43a  7e1b                      JLE 0x004ba457
004ba43c  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004ba444  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004ba44c  2bc8                      SUB ECX,EAX
004ba44e  2bd1                      SUB EDX,ECX
004ba450  668997a40b0000            MOV word ptr [EDI + 0xba4],DX
004ba457  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004ba45d  85c9                      TEST ECX,ECX
004ba45f  740d                      JZ 0x004ba46e
004ba461  e84a120000                CALL 0x004bb6b0
004ba466  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
004ba46c  eb0a                      JMP 0x004ba478
004ba46e  c7850cffffffffffffff      MOV dword ptr [EBP + 0xffffff0c],0xffffffff
004ba478  8d873c030000              LEA EAX,[EDI + 0x33c]
004ba47e  8bce                      MOV ECX,ESI
004ba480  50                        PUSH EAX
004ba481  e80a883500                CALL 0x00812c90
004ba486  3b850cffffff              CMP EAX,dword ptr [EBP + 0xffffff0c]
004ba48c  0f849d000000              JZ 0x004ba52f
004ba492  51                        PUSH ECX
004ba493  8d873c030000              LEA EAX,[EDI + 0x33c]
004ba499  c7042400000000            MOV dword ptr [ESP],0x0
004ba4a0  50                        PUSH EAX
004ba4a1  8bce                      MOV ECX,ESI
004ba4a3  e8b88e3500                CALL 0x00813360
004ba4a8  84c0                      TEST AL,AL
004ba4aa  0f847f000000              JZ 0x004ba52f
004ba4b0  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
004ba4b7  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004ba4bd  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
004ba4c4  0f8472000000              JZ 0x004ba53c
004ba4ca  6a00                      PUSH 0x0
004ba4cc  6a0a                      PUSH 0xa
004ba4ce  8bcf                      MOV ECX,EDI
004ba4d0  e83b221f00                CALL 0x006ac710
004ba4d5  84c0                      TEST AL,AL
004ba4d7  7463                      JZ 0x004ba53c
004ba4d9  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004ba4df  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
004ba4e5  6a00                      PUSH 0x0
004ba4e7  ffb50cffffff              PUSH dword ptr [EBP + 0xffffff0c]
004ba4ed  50                        PUSH EAX
004ba4ee  e80d8a3500                CALL 0x00812f00
004ba4f3  50                        PUSH EAX
004ba4f4  8d8f14040000              LEA ECX,[EDI + 0x414]
004ba4fa  e871cb3200                CALL 0x007e7070
004ba4ff  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004ba505  84c0                      TEST AL,AL
004ba507  7533                      JNZ 0x004ba53c
004ba509  8b0e                      MOV ECX,dword ptr [ESI]
004ba50b  85c9                      TEST ECX,ECX
004ba50d  7418                      JZ 0x004ba527
004ba50f  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004ba515  89b510ffffff              MOV dword ptr [EBP + 0xffffff10],ESI
004ba51b  81c1cc030000              ADD ECX,0x3cc
004ba521  50                        PUSH EAX
004ba522  e8e94c0100                CALL 0x004cf210
004ba527  c70600000000              MOV dword ptr [ESI],0x0
004ba52d  eb0d                      JMP 0x004ba53c
004ba52f  c685fffeffff01            MOV byte ptr [EBP + 0xfffffeff],0x1
004ba536  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004ba53c  8b0e                      MOV ECX,dword ptr [ESI]
004ba53e  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
004ba544  85c9                      TEST ECX,ECX
004ba546  0f8560010000              JNZ 0x004ba6ac
004ba54c  66398fa40b0000            CMP word ptr [EDI + 0xba4],CX
004ba553  0f8f4a020000              JG 0x004ba7a3
004ba559  a17816c700                MOV EAX,[0x00c71678]
004ba55e  33f6                      XOR ESI,ESI
004ba560  f30f1005c8acba00          MOVSS XMM0,dword ptr [0x00baacc8]
004ba568  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ba570  898d0cffffff              MOV dword ptr [EBP + 0xffffff0c],ECX
004ba576  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004ba57c  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
004ba582  89b508ffffff              MOV dword ptr [EBP + 0xffffff08],ESI
004ba588  398864120000              CMP dword ptr [EAX + 0x1264],ECX
004ba58e  0f86f7000000              JBE 0x004ba68b
004ba594  0f1f4000                  NOP dword ptr [EAX]
004ba598  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004ba5a0  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004ba5a6  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
004ba5a9  817e28c7030000            CMP dword ptr [ESI + 0x28],0x3c7
004ba5b0  0f8576000000              JNZ 0x004ba62c
004ba5b6  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ba5be  8d873c030000              LEA EAX,[EDI + 0x33c]
004ba5c4  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004ba5c9  8d8f14040000              LEA ECX,[EDI + 0x414]
004ba5cf  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
004ba5d7  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
004ba5df  6a00                      PUSH 0x0
004ba5e1  50                        PUSH EAX
004ba5e2  f30f59c9                  MULSS XMM1,XMM1
004ba5e6  f30f59c0                  MULSS XMM0,XMM0
004ba5ea  f30f58c8                  ADDSS XMM1,XMM0
004ba5ee  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
004ba5f6  e875ca3200                CALL 0x007e7070
004ba5fb  84c0                      TEST AL,AL
004ba5fd  7427                      JZ 0x004ba626
004ba5ff  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ba607  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
004ba60f  0f2fc8                    COMISS XMM1,XMM0
004ba612  7612                      JBE 0x004ba626
004ba614  8bce                      MOV ECX,ESI
004ba616  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ba61e  898d0cffffff              MOV dword ptr [EBP + 0xffffff0c],ECX
004ba624  eb06                      JMP 0x004ba62c
004ba626  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004ba62c  8bb508ffffff              MOV ESI,dword ptr [EBP + 0xffffff08]
004ba632  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
004ba638  46                        INC ESI
004ba639  89b508ffffff              MOV dword ptr [EBP + 0xffffff08],ESI
004ba63f  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
004ba645  0f8255ffffff              JC 0x004ba5a0
004ba64b  85c9                      TEST ECX,ECX
004ba64d  743c                      JZ 0x004ba68b
004ba64f  8b97ec0b0000              MOV EDX,dword ptr [EDI + 0xbec]
004ba655  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004ba65b  85d2                      TEST EDX,EDX
004ba65d  7424                      JZ 0x004ba683
004ba65f  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
004ba665  8d8acc030000              LEA ECX,[EDX + 0x3cc]
004ba66b  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004ba671  50                        PUSH EAX
004ba672  e8994b0100                CALL 0x004cf210
004ba677  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004ba67d  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004ba683  50                        PUSH EAX
004ba684  8908                      MOV dword ptr [EAX],ECX
004ba686  e865360100                CALL 0x004cdcf0
004ba68b  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004ba691  85c9                      TEST ECX,ECX
004ba693  0f840a010000              JZ 0x004ba7a3
004ba699  e812100000                CALL 0x004bb6b0
004ba69e  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004ba6a4  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
004ba6aa  eb06                      JMP 0x004ba6b2
004ba6ac  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004ba6b2  85c9                      TEST ECX,ECX
004ba6b4  0f84e9000000              JZ 0x004ba7a3
004ba6ba  8bb5f8feffff              MOV ESI,dword ptr [EBP + 0xfffffef8]
004ba6c0  8bce                      MOV ECX,ESI
004ba6c2  50                        PUSH EAX
004ba6c3  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004ba6c9  50                        PUSH EAX
004ba6ca  e831883500                CALL 0x00812f00
004ba6cf  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
004ba6d6  0f849a000000              JZ 0x004ba776
004ba6dc  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
004ba6e2  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
004ba6e8  50                        PUSH EAX
004ba6e9  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004ba6f3  e8580e0000                CALL 0x004bb550
004ba6f8  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ba700  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
004ba706  6a05                      PUSH 0x5
004ba708  f30f1018                  MOVSS XMM3,dword ptr [EAX]
004ba70c  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004ba711  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
004ba718  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
004ba71f  f30f59d9                  MULSS XMM3,XMM1
004ba723  f30f59d1                  MULSS XMM2,XMM1
004ba727  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
004ba72f  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004ba737  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
004ba73f  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004ba747  e8e4100000                CALL 0x004bb830
004ba74c  8d873c030000              LEA EAX,[EDI + 0x33c]
004ba752  8bce                      MOV ECX,ESI
004ba754  50                        PUSH EAX
004ba755  e836853500                CALL 0x00812c90
004ba75a  85c0                      TEST EAX,EAX
004ba75c  0f89af020000              JNS 0x004baa11
004ba762  57                        PUSH EDI
004ba763  8bce                      MOV ECX,ESI
004ba765  e896443400                CALL 0x007fec00
004ba76a  8b07                      MOV EAX,dword ptr [EDI]
004ba76c  8bcf                      MOV ECX,EDI
004ba76e  ff5028                    CALL dword ptr [EAX + 0x28]
004ba771  e99b020000                JMP 0x004baa11
004ba776  6a01                      PUSH 0x1
004ba778  6a00                      PUSH 0x0
004ba77a  8d8f14040000              LEA ECX,[EDI + 0x414]
004ba780  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004ba78a  51                        PUSH ECX
004ba78b  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004ba791  c70424713d8a3f            MOV dword ptr [ESP],0x3f8a3d71
004ba798  50                        PUSH EAX
004ba799  e8228c3200                CALL 0x007e33c0
004ba79e  e96e020000                JMP 0x004baa11
004ba7a3  8bcf                      MOV ECX,EDI
004ba7a5  e896402000                CALL 0x006be840
004ba7aa  f30f10b73c030000          MOVSS XMM6,dword ptr [EDI + 0x33c]
004ba7b2  0f57c9                    XORPS XMM1,XMM1
004ba7b5  f30f10af40030000          MOVSS XMM5,dword ptr [EDI + 0x340]
004ba7bd  0f28de                    MOVAPS XMM3,XMM6
004ba7c0  0f57d2                    XORPS XMM2,XMM2
004ba7c3  f30f10b83c030000          MOVSS XMM7,dword ptr [EAX + 0x33c]
004ba7cb  f30f5ca840030000          SUBSS XMM5,dword ptr [EAX + 0x340]
004ba7d3  f30f5cdf                  SUBSS XMM3,XMM7
004ba7d7  0f28c5                    MOVAPS XMM0,XMM5
004ba7da  f30f59057cc6c500          MULSS XMM0,dword ptr [0x00c5c67c]
004ba7e2  0f28e3                    MOVAPS XMM4,XMM3
004ba7e5  f30f592578c6c500          MULSS XMM4,dword ptr [0x00c5c678]
004ba7ed  f30f58e0                  ADDSS XMM4,XMM0
004ba7f1  0f2fe1                    COMISS XMM4,XMM1
004ba7f4  7603                      JBE 0x004ba7f9
004ba7f6  0f28d4                    MOVAPS XMM2,XMM4
004ba7f9  0f28cb                    MOVAPS XMM1,XMM3
004ba7fc  0f28c5                    MOVAPS XMM0,XMM5
004ba7ff  f30f590d80c6c500          MULSS XMM1,dword ptr [0x00c5c680]
004ba807  b940b6c700                MOV ECX,0xc7b640
004ba80c  ba78c6c500                MOV EDX,0xc5c678
004ba811  f30f590584c6c500          MULSS XMM0,dword ptr [0x00c5c684]
004ba819  0f47ca                    CMOVA ECX,EDX
004ba81c  f30f58c8                  ADDSS XMM1,XMM0
004ba820  0f2fca                    COMISS XMM1,XMM2
004ba823  7608                      JBE 0x004ba82d
004ba825  0f28d1                    MOVAPS XMM2,XMM1
004ba828  b980c6c500                MOV ECX,0xc5c680
004ba82d  0f28cb                    MOVAPS XMM1,XMM3
004ba830  0f28c5                    MOVAPS XMM0,XMM5
004ba833  f30f590d88c6c500          MULSS XMM1,dword ptr [0x00c5c688]
004ba83b  f30f59058cc6c500          MULSS XMM0,dword ptr [0x00c5c68c]
004ba843  f30f58c8                  ADDSS XMM1,XMM0
004ba847  0f2fca                    COMISS XMM1,XMM2
004ba84a  7608                      JBE 0x004ba854
004ba84c  0f28d1                    MOVAPS XMM2,XMM1
004ba84f  b988c6c500                MOV ECX,0xc5c688
004ba854  f30f100594c6c500          MOVSS XMM0,dword ptr [0x00c5c694]
004ba85c  f30f591d90c6c500          MULSS XMM3,dword ptr [0x00c5c690]
004ba864  f30f59c5                  MULSS XMM0,XMM5
004ba868  f30f58c3                  ADDSS XMM0,XMM3
004ba86c  0f2fc2                    COMISS XMM0,XMM2
004ba86f  7608                      JBE 0x004ba879
004ba871  0f28d0                    MOVAPS XMM2,XMM0
004ba874  b990c6c500                MOV ECX,0xc5c690
004ba879  0f28c2                    MOVAPS XMM0,XMM2
004ba87c  f30f595104                MULSS XMM2,dword ptr [ECX + 0x4]
004ba881  f30f5901                  MULSS XMM0,dword ptr [ECX]
004ba885  f30f5915a4a3ba00          MULSS XMM2,dword ptr [0x00baa3a4]
004ba88d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ba895  f30f589040030000          ADDSS XMM2,dword ptr [EAX + 0x340]
004ba89d  f30f58c7                  ADDSS XMM0,XMM7
004ba8a1  f30f5cf0                  SUBSS XMM6,XMM0
004ba8a5  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ba8ad  f30f5cc2                  SUBSS XMM0,XMM2
004ba8b1  0f28ce                    MOVAPS XMM1,XMM6
004ba8b4  e8a7f4fdff                CALL 0x00499d60
004ba8b9  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ba8c1  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ba8c9  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ba8d1  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ba8d9  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ba8e1  e83a2cf6ff                CALL 0x0041d520
004ba8e6  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ba8ee  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ba8f6  e8452cf6ff                CALL 0x0041d540
004ba8fb  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ba903  e858462300                CALL 0x006eef60
004ba908  0f57c0                    XORPS XMM0,XMM0
004ba90b  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004ba913  f20f2ac0                  CVTSI2SD XMM0,EAX
004ba917  c1e81f                    SHR EAX,0x1f
004ba91a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ba923  660f5ad0                  CVTPD2PS XMM2,XMM0
004ba927  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ba92f  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004ba937  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
004ba93f  f30f5815d0a2ba00          ADDSS XMM2,dword ptr [0x00baa2d0]
004ba947  e804811c00                CALL 0x00682a50
004ba94c  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004ba953  f30f10b510ffffff          MOVSS XMM6,dword ptr [EBP + 0xffffff10]
004ba95b  f30f10bd14ffffff          MOVSS XMM7,dword ptr [EBP + 0xffffff14]
004ba963  0f28de                    MOVAPS XMM3,XMM6
004ba966  f30f591db0a4ba00          MULSS XMM3,dword ptr [0x00baa4b0]
004ba96e  0f28d7                    MOVAPS XMM2,XMM7
004ba971  f30f5915b0a4ba00          MULSS XMM2,dword ptr [0x00baa4b0]
004ba979  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ba981  f30f59d9                  MULSS XMM3,XMM1
004ba985  f30f59d1                  MULSS XMM2,XMM1
004ba989  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ba991  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
004ba999  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004ba9a1  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
004ba9a9  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004ba9b1  7458                      JZ 0x004baa0b
004ba9b3  f30f10afa0010000          MOVSS XMM5,dword ptr [EDI + 0x1a0]
004ba9bb  f30f10879c010000          MOVSS XMM0,dword ptr [EDI + 0x19c]
004ba9c3  0f28dd                    MOVAPS XMM3,XMM5
004ba9c6  0f28e0                    MOVAPS XMM4,XMM0
004ba9c9  f30f58dd                  ADDSS XMM3,XMM5
004ba9cd  f30f58e0                  ADDSS XMM4,XMM0
004ba9d1  f30f59ef                  MULSS XMM5,XMM7
004ba9d5  f30f59c6                  MULSS XMM0,XMM6
004ba9d9  f30f58e8                  ADDSS XMM5,XMM0
004ba9dd  0f28d5                    MOVAPS XMM2,XMM5
004ba9e0  f30f59eb                  MULSS XMM5,XMM3
004ba9e4  f30f59d4                  MULSS XMM2,XMM4
004ba9e8  f30f5cfd                  SUBSS XMM7,XMM5
004ba9ec  f30f5cf2                  SUBSS XMM6,XMM2
004ba9f0  0f28c7                    MOVAPS XMM0,XMM7
004ba9f3  0f28ce                    MOVAPS XMM1,XMM6
004ba9f6  e865f3fdff                CALL 0x00499d60
004ba9fb  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004baa03  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004baa0b  8bb5f8feffff              MOV ESI,dword ptr [EBP + 0xfffffef8]
004baa11  51                        PUSH ECX
004baa12  8d873c030000              LEA EAX,[EDI + 0x33c]
004baa18  c7042400000000            MOV dword ptr [ESP],0x0
004baa1f  50                        PUSH EAX
004baa20  8bce                      MOV ECX,ESI
004baa22  e839893500                CALL 0x00813360
004baa27  84c0                      TEST AL,AL
004baa29  0f85a7000000              JNZ 0x004baad6
004baa2f  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
004baa37  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
004baa3d  f30f104e14                MOVSS XMM1,dword ptr [ESI + 0x14]
004baa42  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004baa48  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004baa50  f30f5ccb                  SUBSS XMM1,XMM3
004baa54  f30f5c5e1c                SUBSS XMM3,dword ptr [ESI + 0x1c]
004baa59  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
004baa5e  f30f5cc2                  SUBSS XMM0,XMM2
004baa62  f30f5c5620                SUBSS XMM2,dword ptr [ESI + 0x20]
004baa67  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004baa6f  0f2fd9                    COMISS XMM3,XMM1
004baa72  f30f119d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM3
004baa7a  0f57c9                    XORPS XMM1,XMM1
004baa7d  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004baa85  0f46c1                    CMOVBE EAX,ECX
004baa88  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
004baa90  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
004baa96  0f2f00                    COMISS XMM0,dword ptr [EAX]
004baa99  0f46c8                    CMOVBE ECX,EAX
004baa9c  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
004baaa2  0f2f11                    COMISS XMM2,dword ptr [ECX]
004baaa5  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004baaad  0f46c1                    CMOVBE EAX,ECX
004baab0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004baab4  f30f5cc1                  SUBSS XMM0,XMM1
004baab8  f30f5e051ca9ba00          DIVSS XMM0,dword ptr [0x00baa91c]
004baac0  f30f5fc1                  MAXSS XMM0,XMM1
004baac4  f30f5dc2                  MINSS XMM0,XMM2
004baac8  f30f5cd0                  SUBSS XMM2,XMM0
004baacc  f30f1197fc000000          MOVSS dword ptr [EDI + 0xfc],XMM2
004baad4  eb0d                      JMP 0x004baae3
004baad6  c787fc0000000000803f      MOV dword ptr [EDI + 0xfc],0x3f800000
004baae0  0f57c9                    XORPS XMM1,XMM1
004baae3  0fb78712040000            MOVZX EAX,word ptr [EDI + 0x412]
004baaea  6685c0                    TEST AX,AX
004baaed  7e08                      JLE 0x004baaf7
004baaef  48                        DEC EAX
004baaf0  66898712040000            MOV word ptr [EDI + 0x412],AX
004baaf7  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004baafa  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004baafd  7467                      JZ 0x004bab66
004baaff  90                        NOP
004bab00  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
004bab03  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
004bab06  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
004bab0c  8bca                      MOV ECX,EDX
004bab0e  83e104                    AND ECX,0x4
004bab11  83c900                    OR ECX,0x0
004bab14  740c                      JZ 0x004bab22
004bab16  83781801                  CMP dword ptr [EAX + 0x18],0x1
004bab1a  7406                      JZ 0x004bab22
004bab1c  83781001                  CMP dword ptr [EAX + 0x10],0x1
004bab20  7528                      JNZ 0x004bab4a
004bab22  83e208                    AND EDX,0x8
004bab25  83ca00                    OR EDX,0x0
004bab28  7408                      JZ 0x004bab32
004bab2a  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
004bab2d  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
004bab30  7418                      JZ 0x004bab4a
004bab32  817810e8030000            CMP dword ptr [EAX + 0x10],0x3e8
004bab39  7523                      JNZ 0x004bab5e
004bab3b  81781493000000            CMP dword ptr [EAX + 0x14],0x93
004bab42  751a                      JNZ 0x004bab5e
004bab44  83781801                  CMP dword ptr [EAX + 0x18],0x1
004bab48  7414                      JZ 0x004bab5e
004bab4a  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004bab4f  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
004bab53  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
004bab58  c70000000000              MOV dword ptr [EAX],0x0
004bab5e  83c038                    ADD EAX,0x38
004bab61  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004bab64  759a                      JNZ 0x004bab00
004bab66  0f2f4f14                  COMISS XMM1,dword ptr [EDI + 0x14]
004bab6a  7607                      JBE 0x004bab73
004bab6c  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
004bab73  0f28d1                    MOVAPS XMM2,XMM1
004bab76  8bcf                      MOV ECX,EDI
004bab78  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004bab80  e8db1b1f00                CALL 0x006ac760
004bab85  85c0                      TEST EAX,EAX
004bab87  7448                      JZ 0x004babd1
004bab89  8a87a00b0000              MOV AL,byte ptr [EDI + 0xba0]
004bab8f  84c0                      TEST AL,AL
004bab91  7408                      JZ 0x004bab9b
004bab93  fec8                      DEC AL
004bab95  8887a00b0000              MOV byte ptr [EDI + 0xba0],AL
004bab9b  8a87a10b0000              MOV AL,byte ptr [EDI + 0xba1]
004baba1  84c0                      TEST AL,AL
004baba3  7408                      JZ 0x004babad
004baba5  fec8                      DEC AL
004baba7  8887a10b0000              MOV byte ptr [EDI + 0xba1],AL
004babad  8a87a20b0000              MOV AL,byte ptr [EDI + 0xba2]
004babb3  84c0                      TEST AL,AL
004babb5  7408                      JZ 0x004babbf
004babb7  fec8                      DEC AL
004babb9  8887a20b0000              MOV byte ptr [EDI + 0xba2],AL
004babbf  8a87a30b0000              MOV AL,byte ptr [EDI + 0xba3]
004babc5  84c0                      TEST AL,AL
004babc7  7408                      JZ 0x004babd1
004babc9  fec8                      DEC AL
004babcb  8887a30b0000              MOV byte ptr [EDI + 0xba3],AL
004babd1  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004babd8  0f8495040000              JZ 0x004bb073
004babde  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004babe2  0f8596010000              JNZ 0x004bad7e
004babe8  e873432300                CALL 0x006eef60
004babed  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004babf3  8db73c030000              LEA ESI,[EDI + 0x33c]
004babf9  50                        PUSH EAX
004babfa  6a00                      PUSH 0x0
004babfc  6a00                      PUSH 0x0
004babfe  6840b6c700                PUSH 0xc7b640
004bac03  56                        PUSH ESI
004bac04  6a01                      PUSH 0x1
004bac06  68e8030000                PUSH 0x3e8
004bac0b  e810dff6ff                CALL 0x00428b20
004bac10  e84b432300                CALL 0x006eef60
004bac15  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004bac1b  50                        PUSH EAX
004bac1c  6a00                      PUSH 0x0
004bac1e  6a00                      PUSH 0x0
004bac20  6840b6c700                PUSH 0xc7b640
004bac25  56                        PUSH ESI
004bac26  6a12                      PUSH 0x12
004bac28  68e8030000                PUSH 0x3e8
004bac2d  e8eedef6ff                CALL 0x00428b20
004bac32  8bc8                      MOV ECX,EAX
004bac34  8b10                      MOV EDX,dword ptr [EAX]
004bac36  ff520c                    CALL dword ptr [EDX + 0xc]
004bac39  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004bac3f  6a00                      PUSH 0x0
004bac41  6a00                      PUSH 0x0
004bac43  6804100000                PUSH 0x1004
004bac48  83ec10                    SUB ESP,0x10
004bac4b  8bc4                      MOV EAX,ESP
004bac4d  6a00                      PUSH 0x0
004bac4f  6a00                      PUSH 0x0
004bac51  83ec08                    SUB ESP,0x8
004bac54  c70000000000              MOV dword ptr [EAX],0x0
004bac5a  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
004bac61  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
004bac68  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
004bac6f  c744240400009642          MOV dword ptr [ESP + 0x4],0x42960000
004bac77  c704240000dc42            MOV dword ptr [ESP],0x42dc0000
004bac7e  56                        PUSH ESI
004bac7f  e81c462400                CALL 0x006ff2a0
004bac84  be06000000                MOV ESI,0x6
004bac89  0f1f8000000000            NOP dword ptr [EAX]
004bac90  e8cb422300                CALL 0x006eef60
004bac95  660f6ec0                  MOVD XMM0,EAX
004bac99  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004bac9d  c1e81f                    SHR EAX,0x1f
004baca0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004baca9  660f5ac0                  CVTPD2PS XMM0,XMM0
004bacad  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004bacb5  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004bacbd  f30f58c0                  ADDSS XMM0,XMM0
004bacc1  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004bacc9  e892422300                CALL 0x006eef60
004bacce  660f6ec0                  MOVD XMM0,EAX
004bacd2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004bacd6  c1e81f                    SHR EAX,0x1f
004bacd9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004bace2  660f5ac0                  CVTPD2PS XMM0,XMM0
004bace6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004bacee  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
004bacf6  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
004bacfe  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004bad06  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004bad0e  e82d28f6ff                CALL 0x0041d540
004bad13  f30f598508ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff08]
004bad1b  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004bad23  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004bad2b  e8f027f6ff                CALL 0x0041d520
004bad30  f30f598508ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff08]
004bad38  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004bad40  e81b422300                CALL 0x006eef60
004bad45  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004bad4b  50                        PUSH EAX
004bad4c  6a00                      PUSH 0x0
004bad4e  57                        PUSH EDI
004bad4f  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004bad55  50                        PUSH EAX
004bad56  8d873c030000              LEA EAX,[EDI + 0x33c]
004bad5c  50                        PUSH EAX
004bad5d  6a03                      PUSH 0x3
004bad5f  6a04                      PUSH 0x4
004bad61  e8baddf6ff                CALL 0x00428b20
004bad66  c7808801000001000000      MOV dword ptr [EAX + 0x188],0x1
004bad70  83ee01                    SUB ESI,0x1
004bad73  0f8517ffffff              JNZ 0x004bac90
004bad79  e9f5020000                JMP 0x004bb073
004bad7e  83bde4feffff00            CMP dword ptr [EBP + 0xfffffee4],0x0
004bad85  0f84e8020000              JZ 0x004bb073
004bad8b  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
004bad92  0f84db020000              JZ 0x004bb073
004bad98  e8c3412300                CALL 0x006eef60
004bad9d  50                        PUSH EAX
004bad9e  6a00                      PUSH 0x0
004bada0  6a00                      PUSH 0x0
004bada2  6840b6c700                PUSH 0xc7b640
004bada7  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004badad  51                        PUSH ECX
004badae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004badb4  6a01                      PUSH 0x1
004badb6  68e8030000                PUSH 0x3e8
004badbb  e860ddf6ff                CALL 0x00428b20
004badc0  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004badc7  0f8529020000              JNZ 0x004baff6
004badcd  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
004badd3  8bc2                      MOV EAX,EDX
004badd5  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004baddb  83e203                    AND EDX,0x3
004badde  c1e802                    SHR EAX,0x2
004bade1  49                        DEC ECX
004bade2  23c8                      AND ECX,EAX
004bade4  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004badea  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004baded  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
004badf1  0f84e3000000              JZ 0x004baeda
004badf7  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
004badfd  50                        PUSH EAX
004badfe  e86d421c00                CALL 0x0067f070
004bae03  83c404                    ADD ESP,0x4
004bae06  8bf0                      MOV ESI,EAX
004bae08  e853412300                CALL 0x006eef60
004bae0d  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
004bae13  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004bae19  49                        DEC ECX
004bae1a  660f6ec0                  MOVD XMM0,EAX
004bae1e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004bae22  c1e81f                    SHR EAX,0x1f
004bae25  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004bae2e  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004bae34  50                        PUSH EAX
004bae35  8bc2                      MOV EAX,EDX
004bae37  83e203                    AND EDX,0x3
004bae3a  c1e802                    SHR EAX,0x2
004bae3d  660f5ac8                  CVTPD2PS XMM1,XMM0
004bae41  23c8                      AND ECX,EAX
004bae43  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004bae49  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004bae4c  8bcf                      MOV ECX,EDI
004bae4e  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004bae56  ff3490                    PUSH dword ptr [EAX + EDX*0x4]
004bae59  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004bae61  0f28c1                    MOVAPS XMM0,XMM1
004bae64  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004bae69  f30f5906                  MULSS XMM0,dword ptr [ESI]
004bae6d  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004bae75  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004bae7d  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
004bae85  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004bae8d  e84ee2ffff                CALL 0x004b90e0
004bae92  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
004bae98  8bca                      MOV ECX,EDX
004bae9a  8b87f80b0000              MOV EAX,dword ptr [EDI + 0xbf8]
004baea0  83e203                    AND EDX,0x3
004baea3  48                        DEC EAX
004baea4  c1e902                    SHR ECX,0x2
004baea7  23c8                      AND ECX,EAX
004baea9  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004baeaf  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004baeb2  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004baeb5  8d3490                    LEA ESI,[EAX + EDX*0x4]
004baeb8  85c9                      TEST ECX,ECX
004baeba  7418                      JZ 0x004baed4
004baebc  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004baec2  89b510ffffff              MOV dword ptr [EBP + 0xffffff10],ESI
004baec8  50                        PUSH EAX
004baec9  81c1cc030000              ADD ECX,0x3cc
004baecf  e83c430100                CALL 0x004cf210
004baed4  c70600000000              MOV dword ptr [ESI],0x0
004baeda  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
004baee0  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
004baee6  8d5001                    LEA EDX,[EAX + 0x1]
004baee9  8b87f80b0000              MOV EAX,dword ptr [EDI + 0xbf8]
004baeef  8bca                      MOV ECX,EDX
004baef1  48                        DEC EAX
004baef2  c1e902                    SHR ECX,0x2
004baef5  83e203                    AND EDX,0x3
004baef8  23c8                      AND ECX,EAX
004baefa  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004baf00  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004baf03  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
004baf07  0f84e9000000              JZ 0x004baff6
004baf0d  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
004baf13  50                        PUSH EAX
004baf14  e857411c00                CALL 0x0067f070
004baf19  83c404                    ADD ESP,0x4
004baf1c  8bf0                      MOV ESI,EAX
004baf1e  e83d402300                CALL 0x006eef60
004baf23  660f6ec0                  MOVD XMM0,EAX
004baf27  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004baf2b  c1e81f                    SHR EAX,0x1f
004baf2e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004baf37  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
004baf3d  660f5ac8                  CVTPD2PS XMM1,XMM0
004baf41  8d5001                    LEA EDX,[EAX + 0x1]
004baf44  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004baf4a  8bca                      MOV ECX,EDX
004baf4c  50                        PUSH EAX
004baf4d  8b87f80b0000              MOV EAX,dword ptr [EDI + 0xbf8]
004baf53  83e203                    AND EDX,0x3
004baf56  48                        DEC EAX
004baf57  c1e902                    SHR ECX,0x2
004baf5a  23c8                      AND ECX,EAX
004baf5c  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004baf62  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004baf6a  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004baf6d  8bcf                      MOV ECX,EDI
004baf6f  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004baf77  ff3490                    PUSH dword ptr [EAX + EDX*0x4]
004baf7a  0f28c1                    MOVAPS XMM0,XMM1
004baf7d  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004baf82  f30f5906                  MULSS XMM0,dword ptr [ESI]
004baf86  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004baf8e  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004baf96  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
004baf9e  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004bafa6  e835e1ffff                CALL 0x004b90e0
004bafab  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
004bafb1  8d5001                    LEA EDX,[EAX + 0x1]
004bafb4  8b87f80b0000              MOV EAX,dword ptr [EDI + 0xbf8]
004bafba  8bca                      MOV ECX,EDX
004bafbc  48                        DEC EAX
004bafbd  c1e902                    SHR ECX,0x2
004bafc0  83e203                    AND EDX,0x3
004bafc3  23c8                      AND ECX,EAX
004bafc5  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004bafcb  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004bafce  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004bafd1  8d3490                    LEA ESI,[EAX + EDX*0x4]
004bafd4  85c9                      TEST ECX,ECX
004bafd6  7418                      JZ 0x004baff0
004bafd8  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004bafde  89b510ffffff              MOV dword ptr [EBP + 0xffffff10],ESI
004bafe4  50                        PUSH EAX
004bafe5  81c1cc030000              ADD ECX,0x3cc
004bafeb  e820420100                CALL 0x004cf210
004baff0  c70600000000              MOV dword ptr [ESI],0x0
004baff6  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
004baffc  e88f3e0100                CALL 0x004cee90
004bb001  6a00                      PUSH 0x0
004bb003  68f8cdb100                PUSH 0xb1cdf8
004bb008  8d4f48                    LEA ECX,[EDI + 0x48]
004bb00b  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004bb015  e866f3f4ff                CALL 0x0040a380
004bb01a  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004bb020  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004bb02a  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004bb031  c787800300000000c842      MOV dword ptr [EDI + 0x380],0x42c80000
004bb03b  8b0e                      MOV ECX,dword ptr [ESI]
004bb03d  85c9                      TEST ECX,ECX
004bb03f  7418                      JZ 0x004bb059
004bb041  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004bb047  89b510ffffff              MOV dword ptr [EBP + 0xffffff10],ESI
004bb04d  50                        PUSH EAX
004bb04e  81c1cc030000              ADD ECX,0x3cc
004bb054  e8b7410100                CALL 0x004cf210
004bb059  c70600000000              MOV dword ptr [ESI],0x0
004bb05f  c787880300000000803f      MOV dword ptr [EDI + 0x388],0x3f800000
004bb069  c787fc0000000000803f      MOV dword ptr [EDI + 0xfc],0x3f800000
004bb073  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004bb076  64890d00000000            MOV dword ptr FS:[0x0],ECX
004bb07d  59                        POP ECX
004bb07e  5f                        POP EDI
004bb07f  5e                        POP ESI
004bb080  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004bb083  33cd                      XOR ECX,EBP
004bb085  e8a1406300                CALL 0x00aef12b
004bb08a  8be5                      MOV ESP,EBP
004bb08c  5d                        POP EBP
004bb08d  8be3                      MOV ESP,EBX
004bb08f  5b                        POP EBX
004bb090  c3                        RET
