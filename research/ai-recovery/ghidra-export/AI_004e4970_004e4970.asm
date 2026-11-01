; J460 NPC AI 0x004e4970 AI_004e4970
; types=833
; identities=833.0.0
; entry=004e4970
004e4970  53                        PUSH EBX
004e4971  8bdc                      MOV EBX,ESP
004e4973  83ec08                    SUB ESP,0x8
004e4976  83e4f8                    AND ESP,0xfffffff8
004e4979  83c404                    ADD ESP,0x4
004e497c  55                        PUSH EBP
004e497d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004e4980  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004e4984  8bec                      MOV EBP,ESP
004e4986  6aff                      PUSH -0x1
004e4988  684d3caf00                PUSH 0xaf3c4d
004e498d  64a100000000              MOV EAX,FS:[0x0]
004e4993  50                        PUSH EAX
004e4994  53                        PUSH EBX
004e4995  83ec50                    SUB ESP,0x50
004e4998  a1b493bf00                MOV EAX,[0x00bf93b4]
004e499d  33c5                      XOR EAX,EBP
004e499f  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004e49a2  56                        PUSH ESI
004e49a3  57                        PUSH EDI
004e49a4  50                        PUSH EAX
004e49a5  8d45f4                    LEA EAX,[EBP + -0xc]
004e49a8  64a300000000              MOV FS:[0x0],EAX
004e49ae  8bf9                      MOV EDI,ECX
004e49b0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e49b8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e49be  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004e49c3  85c0                      TEST EAX,EAX
004e49c5  0f8472030000              JZ 0x004e4d3d
004e49cb  83f803                    CMP EAX,0x3
004e49ce  0f8492010000              JZ 0x004e4b66
004e49d4  83f808                    CMP EAX,0x8
004e49d7  0f85aa040000              JNZ 0x004e4e87
004e49dd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e49e5  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e49ed  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e49f5  0f57c0                    XORPS XMM0,XMM0
004e49f8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e49fc  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004e4a01  0f8480040000              JZ 0x004e4e87
004e4a07  68dcd2b100                PUSH 0xb1d2dc
004e4a0c  8d4f78                    LEA ECX,[EDI + 0x78]
004e4a0f  e8bc63f2ff                CALL 0x0040add0
004e4a14  84c0                      TEST AL,AL
004e4a16  0f846b040000              JZ 0x004e4e87
004e4a1c  e83fa52000                CALL 0x006eef60
004e4a21  83e003                    AND EAX,0x3
004e4a24  660f6ec0                  MOVD XMM0,EAX
004e4a28  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e4a2c  c1e81f                    SHR EAX,0x1f
004e4a2f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e4a38  660f5ac0                  CVTPD2PS XMM0,XMM0
004e4a3c  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004e4a44  f30f580510a9ba00          ADDSS XMM0,dword ptr [0x00baa910]
004e4a4c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e4a54  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004e4a59  e8e28af3ff                CALL 0x0041d540
004e4a5e  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004e4a66  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004e4a6b  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004e4a70  e8ab8af3ff                CALL 0x0041d520
004e4a75  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004e4a7d  8db73c030000              LEA ESI,[EDI + 0x33c]
004e4a83  8bce                      MOV ECX,ESI
004e4a85  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004e4a8f  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004e4a94  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004e4a9c  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e4aa4  e8c7fdffff                CALL 0x004e4870
004e4aa9  84c0                      TEST AL,AL
004e4aab  0f8487000000              JZ 0x004e4b38
004e4ab1  51                        PUSH ECX
004e4ab2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e4ab9  6a00                      PUSH 0x0
004e4abb  6a0a                      PUSH 0xa
004e4abd  51                        PUSH ECX
004e4abe  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e4ac5  8bcf                      MOV ECX,EDI
004e4ac7  68d7010000                PUSH 0x1d7
004e4acc  e8cf201f00                CALL 0x006d6ba0
004e4ad1  e88aa42000                CALL 0x006eef60
004e4ad6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e4adc  50                        PUSH EAX
004e4add  6a00                      PUSH 0x0
004e4adf  57                        PUSH EDI
004e4ae0  6840b6c700                PUSH 0xc7b640
004e4ae5  56                        PUSH ESI
004e4ae6  6a0a                      PUSH 0xa
004e4ae8  6a21                      PUSH 0x21
004e4aea  e83140f4ff                CALL 0x00428b20
004e4aef  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004e4af7  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004e4aff  f30f118034030000          MOVSS dword ptr [EAX + 0x334],XMM0
004e4b07  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e4b0f  f30f118838030000          MOVSS dword ptr [EAX + 0x338],XMM1
004e4b17  0f2f87e4000000            COMISS XMM0,dword ptr [EDI + 0xe4]
004e4b1e  7218                      JC 0x004e4b38
004e4b20  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
004e4b28  f30f590530a3ba00          MULSS XMM0,dword ptr [0x00baa330]
004e4b30  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
004e4b38  e823a42000                CALL 0x006eef60
004e4b3d  33d2                      XOR EDX,EDX
004e4b3f  b91e000000                MOV ECX,0x1e
004e4b44  f7f1                      DIV ECX
004e4b46  8bf2                      MOV ESI,EDX
004e4b48  e813a42000                CALL 0x006eef60
004e4b4d  33d2                      XOR EDX,EDX
004e4b4f  b91e000000                MOV ECX,0x1e
004e4b54  f7f1                      DIV ECX
004e4b56  8d460f                    LEA EAX,[ESI + 0xf]
004e4b59  03c2                      ADD EAX,EDX
004e4b5b  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004e4b61  e921030000                JMP 0x004e4e87
004e4b66  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e4b6a  7409                      JZ 0x004e4b75
004e4b6c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e4b73  7577                      JNZ 0x004e4bec
004e4b75  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004e4b78  85f6                      TEST ESI,ESI
004e4b7a  744f                      JZ 0x004e4bcb
004e4b7c  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004e4b80  8bc6                      MOV EAX,ESI
004e4b82  7202                      JC 0x004e4b86
004e4b84  8b06                      MOV EAX,dword ptr [ESI]
004e4b86  b954bcb100                MOV ECX,0xb1bc54
004e4b8b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004e4b90  8a10                      MOV DL,byte ptr [EAX]
004e4b92  3a11                      CMP DL,byte ptr [ECX]
004e4b94  751a                      JNZ 0x004e4bb0
004e4b96  84d2                      TEST DL,DL
004e4b98  7412                      JZ 0x004e4bac
004e4b9a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e4b9d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e4ba0  750e                      JNZ 0x004e4bb0
004e4ba2  83c002                    ADD EAX,0x2
004e4ba5  83c102                    ADD ECX,0x2
004e4ba8  84d2                      TEST DL,DL
004e4baa  75e4                      JNZ 0x004e4b90
004e4bac  33c0                      XOR EAX,EAX
004e4bae  eb05                      JMP 0x004e4bb5
004e4bb0  1bc0                      SBB EAX,EAX
004e4bb2  83c801                    OR EAX,0x1
004e4bb5  85c0                      TEST EAX,EAX
004e4bb7  7512                      JNZ 0x004e4bcb
004e4bb9  384634                    CMP byte ptr [ESI + 0x34],AL
004e4bbc  742e                      JZ 0x004e4bec
004e4bbe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004e4bc4  8d7748                    LEA ESI,[EDI + 0x48]
004e4bc7  7523                      JNZ 0x004e4bec
004e4bc9  eb03                      JMP 0x004e4bce
004e4bcb  8d7748                    LEA ESI,[EDI + 0x48]
004e4bce  6a01                      PUSH 0x1
004e4bd0  6854bcb100                PUSH 0xb1bc54
004e4bd5  8bce                      MOV ECX,ESI
004e4bd7  e8f459f2ff                CALL 0x0040a5d0
004e4bdc  84c0                      TEST AL,AL
004e4bde  740c                      JZ 0x004e4bec
004e4be0  8d4e30                    LEA ECX,[ESI + 0x30]
004e4be3  e8c855f2ff                CALL 0x0040a1b0
004e4be8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004e4bec  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004e4bf2  85c0                      TEST EAX,EAX
004e4bf4  7e09                      JLE 0x004e4bff
004e4bf6  48                        DEC EAX
004e4bf7  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004e4bfd  85c0                      TEST EAX,EAX
004e4bff  0f8582020000              JNZ 0x004e4e87
004e4c05  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e4c0b  25000a0001                AND EAX,0x1000a00
004e4c10  83c800                    OR EAX,0x0
004e4c13  0f856e020000              JNZ 0x004e4e87
004e4c19  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004e4c1f  e84cfcffff                CALL 0x004e4870
004e4c24  84c0                      TEST AL,AL
004e4c26  0f845b020000              JZ 0x004e4e87
004e4c2c  6a0a                      PUSH 0xa
004e4c2e  6a21                      PUSH 0x21
004e4c30  8d45d0                    LEA EAX,[EBP + -0x30]
004e4c33  8bcf                      MOV ECX,EDI
004e4c35  50                        PUSH EAX
004e4c36  e825c01e00                CALL 0x006d0c60
004e4c3b  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004e4c42  a17816c700                MOV EAX,[0x00c71678]
004e4c47  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004e4c4d  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
004e4c50  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004e4c53  83e902                    SUB ECX,0x2
004e4c56  83e802                    SUB EAX,0x2
004e4c59  0fafc8                    IMUL ECX,EAX
004e4c5c  b867666666                MOV EAX,0x66666667
004e4c61  f7e9                      IMUL ECX
004e4c63  d1fa                      SAR EDX,0x1
004e4c65  8bc2                      MOV EAX,EDX
004e4c67  c1e81f                    SHR EAX,0x1f
004e4c6a  03c2                      ADD EAX,EDX
004e4c6c  8b55dc                    MOV EDX,dword ptr [EBP + -0x24]
004e4c6f  3bd0                      CMP EDX,EAX
004e4c71  0f8d8f000000              JGE 0x004e4d06
004e4c77  f30f1015c4acba00          MOVSS XMM2,dword ptr [0x00baacc4]
004e4c7f  33c9                      XOR ECX,ECX
004e4c81  85d2                      TEST EDX,EDX
004e4c83  7455                      JZ 0x004e4cda
004e4c85  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
004e4c8d  f30f10a740030000          MOVSS XMM4,dword ptr [EDI + 0x340]
004e4c95  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
004e4c98  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004e4ca0  8b048e                    MOV EAX,dword ptr [ESI + ECX*0x4]
004e4ca3  0f28cc                    MOVAPS XMM1,XMM4
004e4ca6  0f28c3                    MOVAPS XMM0,XMM3
004e4ca9  41                        INC ECX
004e4caa  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004e4cb2  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
004e4cba  f30f59c9                  MULSS XMM1,XMM1
004e4cbe  f30f59c0                  MULSS XMM0,XMM0
004e4cc2  f30f58c8                  ADDSS XMM1,XMM0
004e4cc6  f30f5dca                  MINSS XMM1,XMM2
004e4cca  0f28d1                    MOVAPS XMM2,XMM1
004e4ccd  3bca                      CMP ECX,EDX
004e4ccf  72cf                      JC 0x004e4ca0
004e4cd1  0f2f1554abba00            COMISS XMM2,dword ptr [0x00baab54]
004e4cd8  762f                      JBE 0x004e4d09
004e4cda  6a01                      PUSH 0x1
004e4cdc  6854ddb100                PUSH 0xb1dd54
004e4ce1  8d4f48                    LEA ECX,[EDI + 0x48]
004e4ce4  e8e758f2ff                CALL 0x0040a5d0
004e4ce9  84c0                      TEST AL,AL
004e4ceb  740f                      JZ 0x004e4cfc
004e4ced  8d4f78                    LEA ECX,[EDI + 0x78]
004e4cf0  e8bb54f2ff                CALL 0x0040a1b0
004e4cf5  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004e4cfc  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e4d06  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
004e4d09  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e4d10  807dd000                  CMP byte ptr [EBP + -0x30],0x0
004e4d14  0f856d010000              JNZ 0x004e4e87
004e4d1a  6a00                      PUSH 0x0
004e4d1c  6a00                      PUSH 0x0
004e4d1e  8bd6                      MOV EDX,ESI
004e4d20  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004e4d27  b101                      MOV CL,0x1
004e4d29  e882fb5700                CALL 0x00a648b0
004e4d2e  83c408                    ADD ESP,0x8
004e4d31  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e4d38  e94a010000                JMP 0x004e4e87
004e4d3d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004e4d47  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004e4d4a  85f6                      TEST ESI,ESI
004e4d4c  744d                      JZ 0x004e4d9b
004e4d4e  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004e4d52  8bc6                      MOV EAX,ESI
004e4d54  7202                      JC 0x004e4d58
004e4d56  8b06                      MOV EAX,dword ptr [ESI]
004e4d58  b954bcb100                MOV ECX,0xb1bc54
004e4d5d  0f1f00                    NOP dword ptr [EAX]
004e4d60  8a10                      MOV DL,byte ptr [EAX]
004e4d62  3a11                      CMP DL,byte ptr [ECX]
004e4d64  751a                      JNZ 0x004e4d80
004e4d66  84d2                      TEST DL,DL
004e4d68  7412                      JZ 0x004e4d7c
004e4d6a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e4d6d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e4d70  750e                      JNZ 0x004e4d80
004e4d72  83c002                    ADD EAX,0x2
004e4d75  83c102                    ADD ECX,0x2
004e4d78  84d2                      TEST DL,DL
004e4d7a  75e4                      JNZ 0x004e4d60
004e4d7c  33c0                      XOR EAX,EAX
004e4d7e  eb05                      JMP 0x004e4d85
004e4d80  1bc0                      SBB EAX,EAX
004e4d82  83c801                    OR EAX,0x1
004e4d85  85c0                      TEST EAX,EAX
004e4d87  7512                      JNZ 0x004e4d9b
004e4d89  384634                    CMP byte ptr [ESI + 0x34],AL
004e4d8c  742e                      JZ 0x004e4dbc
004e4d8e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004e4d94  8d7748                    LEA ESI,[EDI + 0x48]
004e4d97  7523                      JNZ 0x004e4dbc
004e4d99  eb03                      JMP 0x004e4d9e
004e4d9b  8d7748                    LEA ESI,[EDI + 0x48]
004e4d9e  6a01                      PUSH 0x1
004e4da0  6854bcb100                PUSH 0xb1bc54
004e4da5  8bce                      MOV ECX,ESI
004e4da7  e82458f2ff                CALL 0x0040a5d0
004e4dac  84c0                      TEST AL,AL
004e4dae  740c                      JZ 0x004e4dbc
004e4db0  8d4e30                    LEA ECX,[ESI + 0x30]
004e4db3  e8f853f2ff                CALL 0x0040a1b0
004e4db8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004e4dbc  e89fa12000                CALL 0x006eef60
004e4dc1  33d2                      XOR EDX,EDX
004e4dc3  b91e000000                MOV ECX,0x1e
004e4dc8  f7f1                      DIV ECX
004e4dca  8bf2                      MOV ESI,EDX
004e4dcc  e88fa12000                CALL 0x006eef60
004e4dd1  33d2                      XOR EDX,EDX
004e4dd3  b91e000000                MOV ECX,0x1e
004e4dd8  f7f1                      DIV ECX
004e4dda  8d420f                    LEA EAX,[EDX + 0xf]
004e4ddd  03c6                      ADD EAX,ESI
004e4ddf  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004e4de5  e876a12000                CALL 0x006eef60
004e4dea  660f6ec0                  MOVD XMM0,EAX
004e4dee  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e4df2  c1e81f                    SHR EAX,0x1f
004e4df5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e4dfe  660f5ac0                  CVTPD2PS XMM0,XMM0
004e4e02  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e4e0a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004e4e12  f30f58c0                  ADDSS XMM0,XMM0
004e4e16  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004e4e1b  e82087f3ff                CALL 0x0041d540
004e4e20  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004e4e25  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
004e4e2a  e8f186f3ff                CALL 0x0041d520
004e4e2f  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
004e4e34  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e4e3a  8d45a4                    LEA EAX,[EBP + -0x5c]
004e4e3d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004e4e45  0f280de0baba00            MOVAPS XMM1,xmmword ptr [0x00babae0]
004e4e4c  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e4e54  0f57c0                    XORPS XMM0,XMM0
004e4e57  c745c4cdcc4c3f            MOV dword ptr [EBP + -0x3c],0x3f4ccccd
004e4e5e  c745c8cdcc4c3f            MOV dword ptr [EBP + -0x38],0x3f4ccccd
004e4e65  c745cccdcc4c3f            MOV dword ptr [EBP + -0x34],0x3f4ccccd
004e4e6c  3bc8                      CMP ECX,EAX
004e4e6e  7417                      JZ 0x004e4e87
004e4e70  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
004e4e73  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004e4e77  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
004e4e7c  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004e4e81  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
004e4e84  894128                    MOV dword ptr [ECX + 0x28],EAX
004e4e87  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e4e8d  8db73c030000              LEA ESI,[EDI + 0x33c]
004e4e93  83ec0c                    SUB ESP,0xc
004e4e96  8d45d8                    LEA EAX,[EBP + -0x28]
004e4e99  0f57db                    XORPS XMM3,XMM3
004e4e9c  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004e4ea2  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
004e4eaa  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e4eb2  c7042400000000            MOV dword ptr [ESP],0x0
004e4eb9  56                        PUSH ESI
004e4eba  50                        PUSH EAX
004e4ebb  e890e03200                CALL 0x00812f50
004e4ec0  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004e4ec5  f30f1106                  MOVSS dword ptr [ESI],XMM0
004e4ec9  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
004e4ece  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
004e4ed3  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004e4ed9  8bc1                      MOV EAX,ECX
004e4edb  2500020000                AND EAX,0x200
004e4ee0  83c800                    OR EAX,0x0
004e4ee3  7435                      JZ 0x004e4f1a
004e4ee5  8bc1                      MOV EAX,ECX
004e4ee7  2500010000                AND EAX,0x100
004e4eec  83c800                    OR EAX,0x0
004e4eef  7529                      JNZ 0x004e4f1a
004e4ef1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e4ef9  8d8f14040000              LEA ECX,[EDI + 0x414]
004e4eff  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e4f07  50                        PUSH EAX
004e4f08  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e4f10  e8eb133000                CALL 0x007e6300
004e4f15  e995010000                JMP 0x004e50af
004e4f1a  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
004e4f22  0f2f8764030000            COMISS XMM0,dword ptr [EDI + 0x364]
004e4f29  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
004e4f31  7605                      JBE 0x004e4f38
004e4f33  0f28e2                    MOVAPS XMM4,XMM2
004e4f36  eb08                      JMP 0x004e4f40
004e4f38  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
004e4f40  f30f10af60030000          MOVSS XMM5,dword ptr [EDI + 0x360]
004e4f48  0f57c0                    XORPS XMM0,XMM0
004e4f4b  0f2fc5                    COMISS XMM0,XMM5
004e4f4e  7708                      JA 0x004e4f58
004e4f50  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004e4f58  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
004e4f60  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
004e4f68  f30f5955e4                MULSS XMM2,dword ptr [EBP + -0x1c]
004e4f6d  f30f5965e4                MULSS XMM4,dword ptr [EBP + -0x1c]
004e4f72  0f2ed8                    UCOMISS XMM3,XMM0
004e4f75  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
004e4f7d  9f                        LAHF
004e4f7e  f6c444                    TEST AH,0x44
004e4f81  7b37                      JNP 0x004e4fba
004e4f83  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004e4f8b  0f28c1                    MOVAPS XMM0,XMM1
004e4f8e  f30f59cc                  MULSS XMM1,XMM4
004e4f92  f30f59c2                  MULSS XMM0,XMM2
004e4f96  f30f5ecb                  DIVSS XMM1,XMM3
004e4f9a  f30f5ec3                  DIVSS XMM0,XMM3
004e4f9e  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004e4fa6  f30f58c5                  ADDSS XMM0,XMM5
004e4faa  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004e4fb2  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e4fba  81e100080001              AND ECX,0x1000800
004e4fc0  83c900                    OR ECX,0x0
004e4fc3  0f84e6000000              JZ 0x004e50af
004e4fc9  8bcf                      MOV ECX,EDI
004e4fcb  e870981d00                CALL 0x006be840
004e4fd0  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
004e4fd5  f30f1016                  MOVSS XMM2,dword ptr [ESI]
004e4fd9  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004e4fe1  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
004e4fe9  0f28c1                    MOVAPS XMM0,XMM1
004e4fec  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
004e4ff1  f30f59c1                  MULSS XMM0,XMM1
004e4ff5  0f28ca                    MOVAPS XMM1,XMM2
004e4ff8  f30f59ca                  MULSS XMM1,XMM2
004e4ffc  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004e5001  f30f58c1                  ADDSS XMM0,XMM1
004e5005  e8460af5ff                CALL 0x00435a50
004e500a  f30f101d78aaba00          MOVSS XMM3,dword ptr [0x00baaa78]
004e5012  0f28c8                    MOVAPS XMM1,XMM0
004e5015  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
004e501d  f30f5cd9                  SUBSS XMM3,XMM1
004e5021  0f57c0                    XORPS XMM0,XMM0
004e5024  f30f591d8ca0ba00          MULSS XMM3,dword ptr [0x00baa08c]
004e502c  f30f5fd8                  MAXSS XMM3,XMM0
004e5030  f30f5ddc                  MINSS XMM3,XMM4
004e5034  0f2fd8                    COMISS XMM3,XMM0
004e5037  7676                      JBE 0x004e50af
004e5039  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
004e5041  0f2ee8                    UCOMISS XMM5,XMM0
004e5044  9f                        LAHF
004e5045  f6c444                    TEST AH,0x44
004e5048  7b65                      JNP 0x004e50af
004e504a  0f2fc8                    COMISS XMM1,XMM0
004e504d  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004e5052  7616                      JBE 0x004e506a
004e5054  f30f5ee1                  DIVSS XMM4,XMM1
004e5058  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
004e505d  0f28c4                    MOVAPS XMM0,XMM4
004e5060  f30f59d4                  MULSS XMM2,XMM4
004e5064  f30f59c8                  MULSS XMM1,XMM0
004e5068  eb05                      JMP 0x004e506f
004e506a  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
004e506f  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004e5077  f30f59cb                  MULSS XMM1,XMM3
004e507b  f30f59d3                  MULSS XMM2,XMM3
004e507f  f30f59c8                  MULSS XMM1,XMM0
004e5083  f30f59d0                  MULSS XMM2,XMM0
004e5087  f30f5ecd                  DIVSS XMM1,XMM5
004e508b  f30f5ed5                  DIVSS XMM2,XMM5
004e508f  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004e5097  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004e509f  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004e50a7  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004e50af  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e50b2  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e50b9  59                        POP ECX
004e50ba  5f                        POP EDI
004e50bb  5e                        POP ESI
004e50bc  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004e50bf  33cd                      XOR ECX,EBP
004e50c1  e865a06000                CALL 0x00aef12b
004e50c6  8be5                      MOV ESP,EBP
004e50c8  5d                        POP EBP
004e50c9  8be3                      MOV ESP,EBX
004e50cb  5b                        POP EBX
004e50cc  c3                        RET
