; J460 NPC AI 0x004e5170 AI_004e5170
; types=834
; identities=834.0.0,834.1.0,834.2.0
; entry=004e5170
004e5170  53                        PUSH EBX
004e5171  8bdc                      MOV EBX,ESP
004e5173  83ec08                    SUB ESP,0x8
004e5176  83e4f8                    AND ESP,0xfffffff8
004e5179  83c404                    ADD ESP,0x4
004e517c  55                        PUSH EBP
004e517d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004e5180  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004e5184  8bec                      MOV EBP,ESP
004e5186  6aff                      PUSH -0x1
004e5188  68953caf00                PUSH 0xaf3c95
004e518d  64a100000000              MOV EAX,FS:[0x0]
004e5193  50                        PUSH EAX
004e5194  53                        PUSH EBX
004e5195  81ecc8000000              SUB ESP,0xc8
004e519b  56                        PUSH ESI
004e519c  57                        PUSH EDI
004e519d  a1b493bf00                MOV EAX,[0x00bf93b4]
004e51a2  33c5                      XOR EAX,EBP
004e51a4  50                        PUSH EAX
004e51a5  8d45f4                    LEA EAX,[EBP + -0xc]
004e51a8  64a300000000              MOV FS:[0x0],EAX
004e51ae  8bf9                      MOV EDI,ECX
004e51b0  897db0                    MOV dword ptr [EBP + -0x50],EDI
004e51b3  a17816c700                MOV EAX,[0x00c71678]
004e51b8  0f57ed                    XORPS XMM5,XMM5
004e51bb  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004e51c3  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
004e51cb  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004e51d1  f30f103554a4ba00          MOVSS XMM6,dword ptr [0x00baa454]
004e51d9  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004e51dc  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e51e2  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
004e51ea  85c0                      TEST EAX,EAX
004e51ec  0f84cf0a0000              JZ 0x004e5cc1
004e51f2  83f804                    CMP EAX,0x4
004e51f5  0f8488000000              JZ 0x004e5283
004e51fb  83f808                    CMP EAX,0x8
004e51fe  0f85d40b0000              JNZ 0x004e5dd8
004e5204  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004e5208  750a                      JNZ 0x004e5214
004e520a  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
004e5212  eb08                      JMP 0x004e521c
004e5214  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
004e521c  f30f59c1                  MULSS XMM0,XMM1
004e5220  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e5228  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e522c  7440                      JZ 0x004e526e
004e522e  68d4d2b100                PUSH 0xb1d2d4
004e5233  8d4f78                    LEA ECX,[EDI + 0x78]
004e5236  e8955bf2ff                CALL 0x0040add0
004e523b  84c0                      TEST AL,AL
004e523d  7420                      JZ 0x004e525f
004e523f  51                        PUSH ECX
004e5240  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e5247  6a00                      PUSH 0x0
004e5249  6a02                      PUSH 0x2
004e524b  51                        PUSH ECX
004e524c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e5253  8bcf                      MOV ECX,EDI
004e5255  68ee010000                PUSH 0x1ee
004e525a  e841191f00                CALL 0x006d6ba0
004e525f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e5263  7409                      JZ 0x004e526e
004e5265  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e526c  750a                      JNZ 0x004e5278
004e526e  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e5278  ff8710040000              INC dword ptr [EDI + 0x410]
004e527e  e9550b0000                JMP 0x004e5dd8
004e5283  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004e528b  8db760030000              LEA ESI,[EDI + 0x360]
004e5291  f30f106604                MOVSS XMM4,dword ptr [ESI + 0x4]
004e5296  0f28d9                    MOVAPS XMM3,XMM1
004e5299  0f541d40cbba00            ANDPS XMM3,xmmword ptr [0x00bacb40]
004e52a0  0f28c4                    MOVAPS XMM0,XMM4
004e52a3  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e52aa  0f2fd8                    COMISS XMM3,XMM0
004e52ad  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004e52b3  8975dc                    MOV dword ptr [EBP + -0x24],ESI
004e52b6  f30f115dd8                MOVSS dword ptr [EBP + -0x28],XMM3
004e52bb  760f                      JBE 0x004e52cc
004e52bd  33d2                      XOR EDX,EDX
004e52bf  b802000000                MOV EAX,0x2
004e52c4  0f2fe9                    COMISS XMM5,XMM1
004e52c7  0f47c2                    CMOVA EAX,EDX
004e52ca  eb0f                      JMP 0x004e52db
004e52cc  33c0                      XOR EAX,EAX
004e52ce  0f2fec                    COMISS XMM5,XMM4
004e52d1  0f96c0                    SETBE AL
004e52d4  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
004e52db  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004e52e1  3bc8                      CMP ECX,EAX
004e52e3  740a                      JZ 0x004e52ef
004e52e5  c787a40b00000a000000      MOV dword ptr [EDI + 0xba4],0xa
004e52ef  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004e52f5  f30f10877c030000          MOVSS XMM0,dword ptr [EDI + 0x37c]
004e52fd  f30f105044                MOVSS XMM2,dword ptr [EAX + 0x44]
004e5302  0f2fc2                    COMISS XMM0,XMM2
004e5305  7608                      JBE 0x004e530f
004e5307  f30f11977c030000          MOVSS dword ptr [EDI + 0x37c],XMM2
004e530f  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
004e5316  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
004e531e  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004e5323  7416                      JZ 0x004e533b
004e5325  0f2fb7ac0b0000            COMISS XMM6,dword ptr [EDI + 0xbac]
004e532c  760d                      JBE 0x004e533b
004e532e  f30f1005d0a0ba00          MOVSS XMM0,dword ptr [0x00baa0d0]
004e5336  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004e533b  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004e533f  0f85ac010000              JNZ 0x004e54f1
004e5345  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e534d  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004e5354  9f                        LAHF
004e5355  f6c444                    TEST AH,0x44
004e5358  7a19                      JP 0x004e5373
004e535a  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e5362  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004e5369  9f                        LAHF
004e536a  f6c444                    TEST AH,0x44
004e536d  0f8b7e010000              JNP 0x004e54f1
004e5373  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e5376  85c0                      TEST EAX,EAX
004e5378  740a                      JZ 0x004e5384
004e537a  83781410                  CMP dword ptr [EAX + 0x14],0x10
004e537e  7209                      JC 0x004e5389
004e5380  8b00                      MOV EAX,dword ptr [EAX]
004e5382  eb05                      JMP 0x004e5389
004e5384  b8eca4b100                MOV EAX,0xb1a4ec
004e5389  6a0a                      PUSH 0xa
004e538b  68cc06b600                PUSH 0xb606cc
004e5390  50                        PUSH EAX
004e5391  a13489b100                MOV EAX,[0x00b18934]
004e5396  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004e5399  ffd0                      CALL EAX
004e539b  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
004e53a3  83c40c                    ADD ESP,0xc
004e53a6  f30f101e                  MOVSS XMM3,dword ptr [ESI]
004e53aa  85c0                      TEST EAX,EAX
004e53ac  0f28c3                    MOVAPS XMM0,XMM3
004e53af  0f28cc                    MOVAPS XMM1,XMM4
004e53b2  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e53b9  0f94c2                    SETZ DL
004e53bc  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004e53c3  0f2fc8                    COMISS XMM1,XMM0
004e53c6  0f57c0                    XORPS XMM0,XMM0
004e53c9  7214                      JC 0x004e53df
004e53cb  0f2fc4                    COMISS XMM0,XMM4
004e53ce  b9f006b600                MOV ECX,0xb606f0
004e53d3  b850e4b100                MOV EAX,0xb1e450
004e53d8  0f46c1                    CMOVBE EAX,ECX
004e53db  32c9                      XOR CL,CL
004e53dd  eb0b                      JMP 0x004e53ea
004e53df  0f2fc3                    COMISS XMM0,XMM3
004e53e2  b80007b600                MOV EAX,0xb60700
004e53e7  0f97c1                    SETA CL
004e53ea  888f48010000              MOV byte ptr [EDI + 0x148],CL
004e53f0  8d4f48                    LEA ECX,[EDI + 0x48]
004e53f3  6a00                      PUSH 0x0
004e53f5  50                        PUSH EAX
004e53f6  84d2                      TEST DL,DL
004e53f8  7407                      JZ 0x004e5401
004e53fa  e8d151f2ff                CALL 0x0040a5d0
004e53ff  eb05                      JMP 0x004e5406
004e5401  e87a4ff2ff                CALL 0x0040a380
004e5406  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004e540d  7506                      JNZ 0x004e5415
004e540f  c645e001                  MOV byte ptr [EBP + -0x20],0x1
004e5413  eb34                      JMP 0x004e5449
004e5415  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004e541c  7506                      JNZ 0x004e5424
004e541e  c645e001                  MOV byte ptr [EBP + -0x20],0x1
004e5422  eb25                      JMP 0x004e5449
004e5424  6a09                      PUSH 0x9
004e5426  68d806b600                PUSH 0xb606d8
004e542b  8d8f98000000              LEA ECX,[EDI + 0x98]
004e5431  c645e000                  MOV byte ptr [EBP + -0x20],0x0
004e5435  e8461ff2ff                CALL 0x00407380
004e543a  50                        PUSH EAX
004e543b  ff55d8                    CALL dword ptr [EBP + -0x28]
004e543e  83c40c                    ADD ESP,0xc
004e5441  c645e701                  MOV byte ptr [EBP + -0x19],0x1
004e5445  85c0                      TEST EAX,EAX
004e5447  7404                      JZ 0x004e544d
004e5449  c645e700                  MOV byte ptr [EBP + -0x19],0x0
004e544d  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004e5455  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004e545d  f30f59c0                  MULSS XMM0,XMM0
004e5461  f30f59c9                  MULSS XMM1,XMM1
004e5465  f30f58c1                  ADDSS XMM0,XMM1
004e5469  e8e205f5ff                CALL 0x00435a50
004e546e  0f2f45e8                  COMISS XMM0,dword ptr [EBP + -0x18]
004e5472  7240                      JC 0x004e54b4
004e5474  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
004e547c  8bc6                      MOV EAX,ESI
004e547e  0f28c3                    MOVAPS XMM0,XMM3
004e5481  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e5488  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004e548c  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004e5493  0f2fc1                    COMISS XMM0,XMM1
004e5496  7215                      JC 0x004e54ad
004e5498  0f57c0                    XORPS XMM0,XMM0
004e549b  b8e406b600                MOV EAX,0xb606e4
004e54a0  0f2fc3                    COMISS XMM0,XMM3
004e54a3  b92407b600                MOV ECX,0xb60724
004e54a8  0f46c1                    CMOVBE EAX,ECX
004e54ab  eb0c                      JMP 0x004e54b9
004e54ad  b83407b600                MOV EAX,0xb60734
004e54b2  eb05                      JMP 0x004e54b9
004e54b4  b82407b600                MOV EAX,0xb60724
004e54b9  807de700                  CMP byte ptr [EBP + -0x19],0x0
004e54bd  8d4f48                    LEA ECX,[EDI + 0x48]
004e54c0  7417                      JZ 0x004e54d9
004e54c2  6a00                      PUSH 0x0
004e54c4  50                        PUSH EAX
004e54c5  e82656f2ff                CALL 0x0040aaf0
004e54ca  c7877c0300000000c842      MOV dword ptr [EDI + 0x37c],0x42c80000
004e54d4  e987010000                JMP 0x004e5660
004e54d9  ff75e0                    PUSH dword ptr [EBP + -0x20]
004e54dc  50                        PUSH EAX
004e54dd  e85e54f2ff                CALL 0x0040a940
004e54e2  c7877c0300000000c842      MOV dword ptr [EDI + 0x37c],0x42c80000
004e54ec  e96f010000                JMP 0x004e5660
004e54f1  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004e54f9  0f28c2                    MOVAPS XMM0,XMM2
004e54fc  f30f59c9                  MULSS XMM1,XMM1
004e5500  f30f59c2                  MULSS XMM0,XMM2
004e5504  f30f58c1                  ADDSS XMM0,XMM1
004e5508  e84305f5ff                CALL 0x00435a50
004e550d  0f2f45e8                  COMISS XMM0,dword ptr [EBP + -0x18]
004e5511  7254                      JC 0x004e5567
004e5513  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004e551b  0f28c1                    MOVAPS XMM0,XMM1
004e551e  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e5525  0f2f45d8                  COMISS XMM0,dword ptr [EBP + -0x28]
004e5529  6a00                      PUSH 0x0
004e552b  721e                      JC 0x004e554b
004e552d  0f57c0                    XORPS XMM0,XMM0
004e5530  b944e0b100                MOV ECX,0xb1e044
004e5535  0f2fc1                    COMISS XMM0,XMM1
004e5538  b820e0b100                MOV EAX,0xb1e020
004e553d  0f46c1                    CMOVBE EAX,ECX
004e5540  8d4f48                    LEA ECX,[EDI + 0x48]
004e5543  50                        PUSH EAX
004e5544  e8374ef2ff                CALL 0x0040a380
004e5549  eb4f                      JMP 0x004e559a
004e554b  6830ddb100                PUSH 0xb1dd30
004e5550  8d4f48                    LEA ECX,[EDI + 0x48]
004e5553  e8284ef2ff                CALL 0x0040a380
004e5558  0f57c0                    XORPS XMM0,XMM0
004e555b  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
004e5562  0f97c0                    SETA AL
004e5565  eb35                      JMP 0x004e559c
004e5567  6a01                      PUSH 0x1
004e5569  6844e0b100                PUSH 0xb1e044
004e556e  8d4f48                    LEA ECX,[EDI + 0x48]
004e5571  e85a50f2ff                CALL 0x0040a5d0
004e5576  84c0                      TEST AL,AL
004e5578  7420                      JZ 0x004e559a
004e557a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e557d  85c0                      TEST EAX,EAX
004e557f  7419                      JZ 0x004e559a
004e5581  8d4f78                    LEA ECX,[EDI + 0x78]
004e5584  0f57c9                    XORPS XMM1,XMM1
004e5587  e87438f2ff                CALL 0x00408e00
004e558c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e558f  85c0                      TEST EAX,EAX
004e5591  7407                      JZ 0x004e559a
004e5593  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004e559a  32c0                      XOR AL,AL
004e559c  888748010000              MOV byte ptr [EDI + 0x148],AL
004e55a2  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004e55a9  740d                      JZ 0x004e55b8
004e55ab  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004e55b2  0f85a8000000              JNZ 0x004e5660
004e55b8  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004e55be  83f801                    CMP EAX,0x1
004e55c1  0f857e000000              JNZ 0x004e5645
004e55c7  8b8f9c000000              MOV ECX,dword ptr [EDI + 0x9c]
004e55cd  85c9                      TEST ECX,ECX
004e55cf  744d                      JZ 0x004e561e
004e55d1  83791410                  CMP dword ptr [ECX + 0x14],0x10
004e55d5  8bc1                      MOV EAX,ECX
004e55d7  7202                      JC 0x004e55db
004e55d9  8b01                      MOV EAX,dword ptr [ECX]
004e55db  b91007b600                MOV ECX,0xb60710
004e55e0  8a10                      MOV DL,byte ptr [EAX]
004e55e2  3a11                      CMP DL,byte ptr [ECX]
004e55e4  751a                      JNZ 0x004e5600
004e55e6  84d2                      TEST DL,DL
004e55e8  7412                      JZ 0x004e55fc
004e55ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e55ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e55f0  750e                      JNZ 0x004e5600
004e55f2  83c002                    ADD EAX,0x2
004e55f5  83c102                    ADD ECX,0x2
004e55f8  84d2                      TEST DL,DL
004e55fa  75e4                      JNZ 0x004e55e0
004e55fc  33c0                      XOR EAX,EAX
004e55fe  eb05                      JMP 0x004e5605
004e5600  1bc0                      SBB EAX,EAX
004e5602  83c801                    OR EAX,0x1
004e5605  85c0                      TEST EAX,EAX
004e5607  7515                      JNZ 0x004e561e
004e5609  8b879c000000              MOV EAX,dword ptr [EDI + 0x9c]
004e560f  80783400                  CMP byte ptr [EAX + 0x34],0x0
004e5613  744b                      JZ 0x004e5660
004e5615  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004e561c  7542                      JNZ 0x004e5660
004e561e  6a01                      PUSH 0x1
004e5620  681007b600                PUSH 0xb60710
004e5625  8d4f48                    LEA ECX,[EDI + 0x48]
004e5628  e8c354f2ff                CALL 0x0040aaf0
004e562d  84c0                      TEST AL,AL
004e562f  742f                      JZ 0x004e5660
004e5631  8d8f98000000              LEA ECX,[EDI + 0x98]
004e5637  e8744bf2ff                CALL 0x0040a1b0
004e563c  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
004e5643  eb1b                      JMP 0x004e5660
004e5645  8d4f48                    LEA ECX,[EDI + 0x48]
004e5648  6a00                      PUSH 0x0
004e564a  83f803                    CMP EAX,0x3
004e564d  7507                      JNZ 0x004e5656
004e564f  68c006b600                PUSH 0xb606c0
004e5654  eb05                      JMP 0x004e565b
004e5656  681807b600                PUSH 0xb60718
004e565b  e8e052f2ff                CALL 0x0040a940
004e5660  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e5668  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004e566f  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004e5674  9f                        LAHF
004e5675  f6c444                    TEST AH,0x44
004e5678  0f8a84010000              JP 0x004e5802
004e567e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e5686  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004e568d  9f                        LAHF
004e568e  f6c444                    TEST AH,0x44
004e5691  0f8a6b010000              JP 0x004e5802
004e5697  8d8f14040000              LEA ECX,[EDI + 0x414]
004e569d  e84e193000                CALL 0x007e6ff0
004e56a2  6a00                      PUSH 0x0
004e56a4  51                        PUSH ECX
004e56a5  8d8f14040000              LEA ECX,[EDI + 0x414]
004e56ab  c704240000a03f            MOV dword ptr [ESP],0x3fa00000
004e56b2  e889fc2f00                CALL 0x007e5340
004e56b7  8bcf                      MOV ECX,EDI
004e56b9  e882911d00                CALL 0x006be840
004e56be  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004e56c4  8d4dd0                    LEA ECX,[EBP + -0x30]
004e56c7  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004e56cf  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004e56d7  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004e56dc  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
004e56e1  f30f115dec                MOVSS dword ptr [EBP + -0x14],XMM3
004e56e6  f30f115dc8                MOVSS dword ptr [EBP + -0x38],XMM3
004e56eb  e8e09a1900                CALL 0x0067f1d0
004e56f0  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
004e56f5  8db73c030000              LEA ESI,[EDI + 0x33c]
004e56fb  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004e5700  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004e5705  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
004e5709  0f28c1                    MOVAPS XMM0,XMM1
004e570c  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
004e5711  f30f59c1                  MULSS XMM0,XMM1
004e5715  0f28ca                    MOVAPS XMM1,XMM2
004e5718  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004e571d  f30f59ca                  MULSS XMM1,XMM2
004e5721  f30f58c1                  ADDSS XMM0,XMM1
004e5725  e82603f5ff                CALL 0x00435a50
004e572a  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004e5731  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004e5736  f30f105dec                MOVSS XMM3,dword ptr [EBP + -0x14]
004e573b  7617                      JBE 0x004e5754
004e573d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004e5745  f30f5ec8                  DIVSS XMM1,XMM0
004e5749  0f28c1                    MOVAPS XMM0,XMM1
004e574c  f30f59d9                  MULSS XMM3,XMM1
004e5750  f30f59d0                  MULSS XMM2,XMM0
004e5754  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
004e5759  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004e575e  f30f59ca                  MULSS XMM1,XMM2
004e5762  f30f59c3                  MULSS XMM0,XMM3
004e5766  f30f58c8                  ADDSS XMM1,XMM0
004e576a  0f2f0de0a3ba00            COMISS XMM1,dword ptr [0x00baa3e0]
004e5771  0f862b020000              JBE 0x004e59a2
004e5777  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004e577a  8d45c4                    LEA EAX,[EBP + -0x3c]
004e577d  6a00                      PUSH 0x0
004e577f  6a00                      PUSH 0x0
004e5781  6a00                      PUSH 0x0
004e5783  6a00                      PUSH 0x0
004e5785  6a00                      PUSH 0x0
004e5787  50                        PUSH EAX
004e5788  56                        PUSH ESI
004e5789  e862b63000                CALL 0x007f0df0
004e578e  84c0                      TEST AL,AL
004e5790  0f840c020000              JZ 0x004e59a2
004e5796  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
004e579b  8d7748                    LEA ESI,[EDI + 0x48]
004e579e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004e57a6  8bce                      MOV ECX,ESI
004e57a8  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004e57ad  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004e57b5  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004e57bf  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004e57c5  6a01                      PUSH 0x1
004e57c7  83f801                    CMP EAX,0x1
004e57ca  7523                      JNZ 0x004e57ef
004e57cc  68e406b600                PUSH 0xb606e4
004e57d1  e81a53f2ff                CALL 0x0040aaf0
004e57d6  84c0                      TEST AL,AL
004e57d8  0f84c7010000              JZ 0x004e59a5
004e57de  8d4e50                    LEA ECX,[ESI + 0x50]
004e57e1  e8ca49f2ff                CALL 0x0040a1b0
004e57e6  c6466401                  MOV byte ptr [ESI + 0x64],0x1
004e57ea  e9b3010000                JMP 0x004e59a2
004e57ef  83f803                    CMP EAX,0x3
004e57f2  7507                      JNZ 0x004e57fb
004e57f4  682407b600                PUSH 0xb60724
004e57f9  ebd6                      JMP 0x004e57d1
004e57fb  683407b600                PUSH 0xb60734
004e5800  ebcf                      JMP 0x004e57d1
004e5802  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
004e580a  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004e5812  0f28c2                    MOVAPS XMM0,XMM2
004e5815  f30f59c2                  MULSS XMM0,XMM2
004e5819  f30f59c9                  MULSS XMM1,XMM1
004e581d  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004e5822  f30f58c1                  ADDSS XMM0,XMM1
004e5826  e82502f5ff                CALL 0x00435a50
004e582b  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
004e5833  0f2fc8                    COMISS XMM1,XMM0
004e5836  7608                      JBE 0x004e5840
004e5838  ff87a00b0000              INC dword ptr [EDI + 0xba0]
004e583e  eb0a                      JMP 0x004e584a
004e5840  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004e584a  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004e584e  756a                      JNZ 0x004e58ba
004e5850  51                        PUSH ECX
004e5851  8d45bc                    LEA EAX,[EBP + -0x44]
004e5854  c7042400000000            MOV dword ptr [ESP],0x0
004e585b  50                        PUSH EAX
004e585c  8bcf                      MOV ECX,EDI
004e585e  e8dd931d00                CALL 0x006bec40
004e5863  6a01                      PUSH 0x1
004e5865  6a00                      PUSH 0x0
004e5867  8d8f14040000              LEA ECX,[EDI + 0x414]
004e586d  51                        PUSH ECX
004e586e  8d45bc                    LEA EAX,[EBP + -0x44]
004e5871  c704243333f33f            MOV dword ptr [ESP],0x3ff33333
004e5878  50                        PUSH EAX
004e5879  e842db2f00                CALL 0x007e33c0
004e587e  8d9760030000              LEA EDX,[EDI + 0x360]
004e5884  8d4dc4                    LEA ECX,[EBP + -0x3c]
004e5887  e8e4981900                CALL 0x0067f170
004e588c  f30f104a04                MOVSS XMM1,dword ptr [EDX + 0x4]
004e5891  8bf0                      MOV ESI,EAX
004e5893  f30f1002                  MOVSS XMM0,dword ptr [EDX]
004e5897  f30f59c0                  MULSS XMM0,XMM0
004e589b  f30f59c9                  MULSS XMM1,XMM1
004e589f  f30f58c1                  ADDSS XMM0,XMM1
004e58a3  e8a801f5ff                CALL 0x00435a50
004e58a8  f30f1016                  MOVSS XMM2,dword ptr [ESI]
004e58ac  0f28c8                    MOVAPS XMM1,XMM0
004e58af  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004e58b4  f30f59d0                  MULSS XMM2,XMM0
004e58b8  eb3a                      JMP 0x004e58f4
004e58ba  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
004e58bf  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004e58c7  f30f591598a5ba00          MULSS XMM2,dword ptr [0x00baa598]
004e58cf  f30f590d98a5ba00          MULSS XMM1,dword ptr [0x00baa598]
004e58d7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e58df  f30f5ed0                  DIVSS XMM2,XMM0
004e58e3  f30f5ec8                  DIVSS XMM1,XMM0
004e58e7  f30f5855e0                ADDSS XMM2,dword ptr [EBP + -0x20]
004e58ec  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004e58f4  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004e58fc  b814000000                MOV EAX,0x14
004e5901  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004e5909  b93c000000                MOV ECX,0x3c
004e590e  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004e5912  0f44c1                    CMOVZ EAX,ECX
004e5915  3987a00b0000              CMP dword ptr [EDI + 0xba0],EAX
004e591b  7f1b                      JG 0x004e5938
004e591d  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004e5924  7512                      JNZ 0x004e5938
004e5926  6a00                      PUSH 0x0
004e5928  68000a0001                PUSH 0x1000a00
004e592d  8bcf                      MOV ECX,EDI
004e592f  e8fc1af3ff                CALL 0x00417430
004e5934  84c0                      TEST AL,AL
004e5936  7460                      JZ 0x004e5998
004e5938  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e5940  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
004e5948  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e5950  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
004e5958  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e5960  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
004e5968  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e5970  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
004e5978  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e5980  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004e5988  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e5990  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004e5998  c7877c0300000000a042      MOV dword ptr [EDI + 0x37c],0x42a00000
004e59a2  8d7748                    LEA ESI,[EDI + 0x48]
004e59a5  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004e59a9  7572                      JNZ 0x004e5a1d
004e59ab  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e59b3  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004e59ba  9f                        LAHF
004e59bb  f6c444                    TEST AH,0x44
004e59be  7a19                      JP 0x004e59d9
004e59c0  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e59c8  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004e59cf  9f                        LAHF
004e59d0  f6c444                    TEST AH,0x44
004e59d3  0f8bff030000              JNP 0x004e5dd8
004e59d9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e59dd  0f84f5030000              JZ 0x004e5dd8
004e59e3  68d4d2b100                PUSH 0xb1d2d4
004e59e8  8d4f78                    LEA ECX,[EDI + 0x78]
004e59eb  e8e053f2ff                CALL 0x0040add0
004e59f0  84c0                      TEST AL,AL
004e59f2  0f84e0030000              JZ 0x004e5dd8
004e59f8  51                        PUSH ECX
004e59f9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e5a00  6a00                      PUSH 0x0
004e5a02  6a02                      PUSH 0x2
004e5a04  51                        PUSH ECX
004e5a05  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e5a0c  8bcf                      MOV ECX,EDI
004e5a0e  68ee010000                PUSH 0x1ee
004e5a13  e888111f00                CALL 0x006d6ba0
004e5a18  e9bb030000                JMP 0x004e5dd8
004e5a1d  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004e5a23  85c0                      TEST EAX,EAX
004e5a25  7e0c                      JLE 0x004e5a33
004e5a27  48                        DEC EAX
004e5a28  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004e5a2e  e9a5030000                JMP 0x004e5dd8
004e5a33  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004e5a39  8d4dd0                    LEA ECX,[EBP + -0x30]
004e5a3c  e88f971900                CALL 0x0067f1d0
004e5a41  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004e5a45  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
004e5a4d  f30f101db4a9ba00          MOVSS XMM3,dword ptr [0x00baa9b4]
004e5a55  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
004e5a5a  7515                      JNZ 0x004e5a71
004e5a5c  f30f1005f4a3ba00          MOVSS XMM0,dword ptr [0x00baa3f4]
004e5a64  f30f101d78aaba00          MOVSS XMM3,dword ptr [0x00baaa78]
004e5a6c  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
004e5a71  a17816c700                MOV EAX,[0x00c71678]
004e5a76  6aff                      PUSH -0x1
004e5a78  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004e5a7e  8d873c030000              LEA EAX,[EDI + 0x33c]
004e5a84  50                        PUSH EAX
004e5a85  8d45b4                    LEA EAX,[EBP + -0x4c]
004e5a88  81c118120000              ADD ECX,0x1218
004e5a8e  50                        PUSH EAX
004e5a8f  e8fc4cf3ff                CALL 0x0041a790
004e5a94  33c9                      XOR ECX,ECX
004e5a96  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004e5a9d  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004e5aa0  394dc0                    CMP dword ptr [EBP + -0x40],ECX
004e5aa3  0f86e3010000              JBE 0x004e5c8c
004e5aa9  0f1f8000000000            NOP dword ptr [EAX]
004e5ab0  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
004e5ab3  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e5ab6  8bd0                      MOV EDX,EAX
004e5ab8  8bcf                      MOV ECX,EDI
004e5aba  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004e5abd  e80ef6ffff                CALL 0x004e50d0
004e5ac2  84c0                      TEST AL,AL
004e5ac4  0f848e000000              JZ 0x004e5b58
004e5aca  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004e5acd  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004e5ad5  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e5add  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004e5ae5  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004e5aed  0f28c1                    MOVAPS XMM0,XMM1
004e5af0  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004e5af5  f30f59c1                  MULSS XMM0,XMM1
004e5af9  0f28ca                    MOVAPS XMM1,XMM2
004e5afc  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004e5b01  f30f59ca                  MULSS XMM1,XMM2
004e5b05  f30f58c1                  ADDSS XMM0,XMM1
004e5b09  e842fff4ff                CALL 0x00435a50
004e5b0e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004e5b15  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004e5b1a  761b                      JBE 0x004e5b37
004e5b1c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004e5b24  f30f5ec8                  DIVSS XMM1,XMM0
004e5b28  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004e5b2d  f30f59d1                  MULSS XMM2,XMM1
004e5b31  f30f59c1                  MULSS XMM0,XMM1
004e5b35  eb05                      JMP 0x004e5b3c
004e5b37  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004e5b3c  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
004e5b41  f30f59c8                  MULSS XMM1,XMM0
004e5b45  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
004e5b4a  f30f59c2                  MULSS XMM0,XMM2
004e5b4e  f30f58c8                  ADDSS XMM1,XMM0
004e5b52  0f2f4dec                  COMISS XMM1,dword ptr [EBP + -0x14]
004e5b56  7715                      JA 0x004e5b6d
004e5b58  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004e5b5b  41                        INC ECX
004e5b5c  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004e5b5f  3b4dc0                    CMP ECX,dword ptr [EBP + -0x40]
004e5b62  0f8248ffffff              JC 0x004e5ab0
004e5b68  e91f010000                JMP 0x004e5c8c
004e5b6d  8b870c0f0000              MOV EAX,dword ptr [EDI + 0xf0c]
004e5b73  8bce                      MOV ECX,ESI
004e5b75  8987100f0000              MOV dword ptr [EDI + 0xf10],EAX
004e5b7b  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e5b85  c6860001000000            MOV byte ptr [ESI + 0x100],0x0
004e5b8c  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004e5b92  6a00                      PUSH 0x0
004e5b94  83f801                    CMP EAX,0x1
004e5b97  750c                      JNZ 0x004e5ba5
004e5b99  685c07b600                PUSH 0xb6075c
004e5b9e  e8dd47f2ff                CALL 0x0040a380
004e5ba3  eb2b                      JMP 0x004e5bd0
004e5ba5  83f803                    CMP EAX,0x3
004e5ba8  750c                      JNZ 0x004e5bb6
004e5baa  686807b600                PUSH 0xb60768
004e5baf  e8cc47f2ff                CALL 0x0040a380
004e5bb4  eb1a                      JMP 0x004e5bd0
004e5bb6  684407b600                PUSH 0xb60744
004e5bbb  e8c047f2ff                CALL 0x0040a380
004e5bc0  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004e5bc7  0f94c0                    SETZ AL
004e5bca  888748010000              MOV byte ptr [EDI + 0x148],AL
004e5bd0  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004e5bd6  6a01                      PUSH 0x1
004e5bd8  83f801                    CMP EAX,0x1
004e5bdb  7507                      JNZ 0x004e5be4
004e5bdd  68e406b600                PUSH 0xb606e4
004e5be2  eb11                      JMP 0x004e5bf5
004e5be4  83f803                    CMP EAX,0x3
004e5be7  7507                      JNZ 0x004e5bf0
004e5be9  682407b600                PUSH 0xb60724
004e5bee  eb05                      JMP 0x004e5bf5
004e5bf0  683407b600                PUSH 0xb60734
004e5bf5  8bce                      MOV ECX,ESI
004e5bf7  e8f44ef2ff                CALL 0x0040aaf0
004e5bfc  84c0                      TEST AL,AL
004e5bfe  740c                      JZ 0x004e5c0c
004e5c00  8d4e50                    LEA ECX,[ESI + 0x50]
004e5c03  e8a845f2ff                CALL 0x0040a1b0
004e5c08  c6466401                  MOV byte ptr [ESI + 0x64],0x1
004e5c0c  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
004e5c11  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
004e5c16  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
004e5c1e  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004e5c28  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e5c30  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
004e5c38  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004e5c40  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e5c48  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004e5c50  c787a40b00000a000000      MOV dword ptr [EDI + 0xba4],0xa
004e5c5a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e5c62  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
004e5c69  9f                        LAHF
004e5c6a  f6c444                    TEST AH,0x44
004e5c6d  7b1d                      JNP 0x004e5c8c
004e5c6f  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
004e5c72  f30f5ec8                  DIVSS XMM1,XMM0
004e5c76  f30f5ed0                  DIVSS XMM2,XMM0
004e5c7a  f30f5808                  ADDSS XMM1,dword ptr [EAX]
004e5c7e  f30f585004                ADDSS XMM2,dword ptr [EAX + 0x4]
004e5c83  f30f1108                  MOVSS dword ptr [EAX],XMM1
004e5c87  f30f115004                MOVSS dword ptr [EAX + 0x4],XMM2
004e5c8c  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e5c93  807db400                  CMP byte ptr [EBP + -0x4c],0x0
004e5c97  0f853b010000              JNZ 0x004e5dd8
004e5c9d  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004e5ca4  b101                      MOV CL,0x1
004e5ca6  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004e5ca9  6a00                      PUSH 0x0
004e5cab  6a00                      PUSH 0x0
004e5cad  e8feeb5700                CALL 0x00a648b0
004e5cb2  83c408                    ADD ESP,0x8
004e5cb5  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e5cbc  e917010000                JMP 0x004e5dd8
004e5cc1  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e5ccb  8d7748                    LEA ESI,[EDI + 0x48]
004e5cce  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004e5cd8  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004e5ce2  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004e5cec  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004e5cf6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e5cfe  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e5d06  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e5d0e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004e5d16  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e5d1e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004e5d26  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e5d2e  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004e5d36  8b4e54                    MOV ECX,dword ptr [ESI + 0x54]
004e5d39  85c9                      TEST ECX,ECX
004e5d3b  744b                      JZ 0x004e5d88
004e5d3d  83791410                  CMP dword ptr [ECX + 0x14],0x10
004e5d41  8bc1                      MOV EAX,ECX
004e5d43  7202                      JC 0x004e5d47
004e5d45  8b01                      MOV EAX,dword ptr [ECX]
004e5d47  b9c006b600                MOV ECX,0xb606c0
004e5d4c  0f1f4000                  NOP dword ptr [EAX]
004e5d50  8a10                      MOV DL,byte ptr [EAX]
004e5d52  3a11                      CMP DL,byte ptr [ECX]
004e5d54  751a                      JNZ 0x004e5d70
004e5d56  84d2                      TEST DL,DL
004e5d58  7412                      JZ 0x004e5d6c
004e5d5a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e5d5d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e5d60  750e                      JNZ 0x004e5d70
004e5d62  83c002                    ADD EAX,0x2
004e5d65  83c102                    ADD ECX,0x2
004e5d68  84d2                      TEST DL,DL
004e5d6a  75e4                      JNZ 0x004e5d50
004e5d6c  33c0                      XOR EAX,EAX
004e5d6e  eb05                      JMP 0x004e5d75
004e5d70  1bc0                      SBB EAX,EAX
004e5d72  83c801                    OR EAX,0x1
004e5d75  85c0                      TEST EAX,EAX
004e5d77  750f                      JNZ 0x004e5d88
004e5d79  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
004e5d7c  80783400                  CMP byte ptr [EAX + 0x34],0x0
004e5d80  7427                      JZ 0x004e5da9
004e5d82  807e6400                  CMP byte ptr [ESI + 0x64],0x0
004e5d86  7521                      JNZ 0x004e5da9
004e5d88  6a01                      PUSH 0x1
004e5d8a  68c006b600                PUSH 0xb606c0
004e5d8f  8bce                      MOV ECX,ESI
004e5d91  e85a4df2ff                CALL 0x0040aaf0
004e5d96  84c0                      TEST AL,AL
004e5d98  740f                      JZ 0x004e5da9
004e5d9a  8d4e50                    LEA ECX,[ESI + 0x50]
004e5d9d  e80e44f2ff                CALL 0x0040a1b0
004e5da2  c6466401                  MOV byte ptr [ESI + 0x64],0x1
004e5da6  8d7748                    LEA ESI,[EDI + 0x48]
004e5da9  6a01                      PUSH 0x1
004e5dab  6844e0b100                PUSH 0xb1e044
004e5db0  8bce                      MOV ECX,ESI
004e5db2  e81948f2ff                CALL 0x0040a5d0
004e5db7  84c0                      TEST AL,AL
004e5db9  741d                      JZ 0x004e5dd8
004e5dbb  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004e5dbe  85c0                      TEST EAX,EAX
004e5dc0  7416                      JZ 0x004e5dd8
004e5dc2  8d4e30                    LEA ECX,[ESI + 0x30]
004e5dc5  0f57c9                    XORPS XMM1,XMM1
004e5dc8  e83330f2ff                CALL 0x00408e00
004e5dcd  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004e5dd0  85c0                      TEST EAX,EAX
004e5dd2  7404                      JZ 0x004e5dd8
004e5dd4  c6464400                  MOV byte ptr [ESI + 0x44],0x0
004e5dd8  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004e5ddc  754c                      JNZ 0x004e5e2a
004e5dde  e87d912000                CALL 0x006eef60
004e5de3  83e007                    AND EAX,0x7
004e5de6  7542                      JNZ 0x004e5e2a
004e5de8  e873912000                CALL 0x006eef60
004e5ded  51                        PUSH ECX
004e5dee  8bcf                      MOV ECX,EDI
004e5df0  660f6ec0                  MOVD XMM0,EAX
004e5df4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e5df8  c1e81f                    SHR EAX,0x1f
004e5dfb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e5e04  660f5ac0                  CVTPD2PS XMM0,XMM0
004e5e08  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e5e10  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004e5e18  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
004e5e20  f30f110424                MOVSS dword ptr [ESP],XMM0
004e5e25  e8a6061d00                CALL 0x006b64d0
004e5e2a  68c4e5b100                PUSH 0xb1e5c4
004e5e2f  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
004e5e35  8bcf                      MOV ECX,EDI
004e5e37  50                        PUSH EAX
004e5e38  e8e30d1d00                CALL 0x006b6c20
004e5e3d  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
004e5e42  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004e5e49  0f86f4060000              JBE 0x004e6543
004e5e4f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e5e55  8b8144650200              MOV EAX,dword ptr [ECX + 0x26544]
004e5e5b  c1e805                    SHR EAX,0x5
004e5e5e  a801                      TEST AL,0x1
004e5e60  7425                      JZ 0x004e5e87
004e5e62  6a01                      PUSH 0x1
004e5e64  ff7720                    PUSH dword ptr [EDI + 0x20]
004e5e67  81c12c770600              ADD ECX,0x6772c
004e5e6d  e89e8cf4ff                CALL 0x0042eb10
004e5e72  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004e5e78  51                        PUSH ECX
004e5e79  8bc8                      MOV ECX,EAX
004e5e7b  c7400401000000            MOV dword ptr [EAX + 0x4],0x1
004e5e82  e86990f4ff                CALL 0x0042eef0
004e5e87  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004e5e8f  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004e5e97  f30f5cc2                  SUBSS XMM0,XMM2
004e5e9b  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
004e5ea3  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
004e5eaa  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
004e5eb1  f30f5ec2                  DIVSS XMM0,XMM2
004e5eb5  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e5ebd  f30f2cc0                  CVTTSS2SI EAX,XMM0
004e5ec1  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
004e5ec9  f30f5cc3                  SUBSS XMM0,XMM3
004e5ecd  8d5002                    LEA EDX,[EAX + 0x2]
004e5ed0  8d48fe                    LEA ECX,[EAX + -0x2]
004e5ed3  8955d4                    MOV dword ptr [EBP + -0x2c],EDX
004e5ed6  894de8                    MOV dword ptr [EBP + -0x18],ECX
004e5ed9  f30f5ec2                  DIVSS XMM0,XMM2
004e5edd  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e5ee5  f30f2cf0                  CVTTSS2SI ESI,XMM0
004e5ee9  3bca                      CMP ECX,EDX
004e5eeb  0f8f3e010000              JG 0x004e602f
004e5ef1  8d46fe                    LEA EAX,[ESI + -0x2]
004e5ef4  83c602                    ADD ESI,0x2
004e5ef7  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004e5efa  8bc6                      MOV EAX,ESI
004e5efc  8975ec                    MOV dword ptr [EBP + -0x14],ESI
004e5eff  90                        NOP
004e5f00  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
004e5f03  8975dc                    MOV dword ptr [EBP + -0x24],ESI
004e5f06  3bf0                      CMP ESI,EAX
004e5f08  0f8f15010000              JG 0x004e6023
004e5f0e  6690                      NOP
004e5f10  85c9                      TEST ECX,ECX
004e5f12  0f88fc000000              JS 0x004e6014
004e5f18  8b55cc                    MOV EDX,dword ptr [EBP + -0x34]
004e5f1b  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
004e5f1e  3bc8                      CMP ECX,EAX
004e5f20  0f8deb000000              JGE 0x004e6011
004e5f26  85f6                      TEST ESI,ESI
004e5f28  0f88e3000000              JS 0x004e6011
004e5f2e  3b7210                    CMP ESI,dword ptr [EDX + 0x10]
004e5f31  0f8dda000000              JGE 0x004e6011
004e5f37  0fafc6                    IMUL EAX,ESI
004e5f3a  03c1                      ADD EAX,ECX
004e5f3c  0f88cf000000              JS 0x004e6011
004e5f42  3dc0010000                CMP EAX,0x1c0
004e5f47  7d06                      JGE 0x004e5f4f
004e5f49  8b448224                  MOV EAX,dword ptr [EDX + EAX*0x4 + 0x24]
004e5f4d  eb02                      JMP 0x004e5f51
004e5f4f  33c0                      XOR EAX,EAX
004e5f51  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004e5f54  85c0                      TEST EAX,EAX
004e5f56  0f84b5000000              JZ 0x004e6011
004e5f5c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e5f62  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004e5f65  99                        CDQ
004e5f66  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004e5f6c  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
004e5f6f  f7f9                      IDIV ECX
004e5f71  51                        PUSH ECX
004e5f72  c7042400000000            MOV dword ptr [ESP],0x0
004e5f79  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
004e5f7f  683c79c300                PUSH 0xc3793c
004e5f84  660f6ec0                  MOVD XMM0,EAX
004e5f88  8d45bc                    LEA EAX,[EBP + -0x44]
004e5f8b  660f6eca                  MOVD XMM1,EDX
004e5f8f  0f5bc9                    CVTDQ2PS XMM1,XMM1
004e5f92  50                        PUSH EAX
004e5f93  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e5f96  f30f59ca                  MULSS XMM1,XMM2
004e5f9a  f30f59c2                  MULSS XMM0,XMM2
004e5f9e  f30f58ca                  ADDSS XMM1,XMM2
004e5fa2  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
004e5faa  f30f58c3                  ADDSS XMM0,XMM3
004e5fae  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
004e5fb3  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
004e5fb8  e8d3f14500                CALL 0x00945190
004e5fbd  8d45c4                    LEA EAX,[EBP + -0x3c]
004e5fc0  50                        PUSH EAX
004e5fc1  8d9528ffffff              LEA EDX,[EBP + 0xffffff28]
004e5fc7  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004e5fcd  e89ef44500                CALL 0x00945470
004e5fd2  83c404                    ADD ESP,0x4
004e5fd5  84c0                      TEST AL,AL
004e5fd7  7425                      JZ 0x004e5ffe
004e5fd9  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004e5fdc  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
004e5fe2  57                        PUSH EDI
004e5fe3  8b00                      MOV EAX,dword ptr [EAX]
004e5fe5  8b7010                    MOV ESI,dword ptr [EAX + 0x10]
004e5fe8  e823b3f4ff                CALL 0x00431310
004e5fed  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004e5ff0  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004e5ff6  50                        PUSH EAX
004e5ff7  6a01                      PUSH 0x1
004e5ff9  ffd6                      CALL ESI
004e5ffb  8b75dc                    MOV ESI,dword ptr [EBP + -0x24]
004e5ffe  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004e6001  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
004e6009  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004e6011  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
004e6014  46                        INC ESI
004e6015  8975dc                    MOV dword ptr [EBP + -0x24],ESI
004e6018  3bf0                      CMP ESI,EAX
004e601a  0f8ef0feffff              JLE 0x004e5f10
004e6020  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
004e6023  41                        INC ECX
004e6024  894de8                    MOV dword ptr [EBP + -0x18],ECX
004e6027  3bca                      CMP ECX,EDX
004e6029  0f8ed1feffff              JLE 0x004e5f00
004e602f  f30f105d98                MOVSS XMM3,dword ptr [EBP + -0x68]
004e6034  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
004e603a  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004e603d  f30f585d9c                ADDSS XMM3,dword ptr [EBP + -0x64]
004e6042  6aff                      PUSH -0x1
004e6044  50                        PUSH EAX
004e6045  8d45a0                    LEA EAX,[EBP + -0x60]
004e6048  8d8918120000              LEA ECX,[ECX + 0x1218]
004e604e  50                        PUSH EAX
004e604f  e83c47f3ff                CALL 0x0041a790
004e6054  33f6                      XOR ESI,ESI
004e6056  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004e605d  8975d8                    MOV dword ptr [EBP + -0x28],ESI
004e6060  3975ac                    CMP dword ptr [EBP + -0x54],ESI
004e6063  0f86a1040000              JBE 0x004e650a
004e6069  0f57c9                    XORPS XMM1,XMM1
004e606c  0f1f4000                  NOP dword ptr [EAX]
004e6070  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
004e6073  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
004e6076  8975e0                    MOV dword ptr [EBP + -0x20],ESI
004e6079  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
004e6081  0f2ec1                    UCOMISS XMM0,XMM1
004e6084  9f                        LAHF
004e6085  f6c444                    TEST AH,0x44
004e6088  0f8b6c040000              JNP 0x004e64fa
004e608e  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
004e6095  0f845f040000              JZ 0x004e64fa
004e609b  6840b6c700                PUSH 0xc7b640
004e60a0  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004e60a6  8bce                      MOV ECX,ESI
004e60a8  50                        PUSH EAX
004e60a9  e8f23a1c00                CALL 0x006a9ba0
004e60ae  8d45c4                    LEA EAX,[EBP + -0x3c]
004e60b1  50                        PUSH EAX
004e60b2  8d9550ffffff              LEA EDX,[EBP + 0xffffff50]
004e60b8  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004e60be  e8adf34500                CALL 0x00945470
004e60c3  83c404                    ADD ESP,0x4
004e60c6  84c0                      TEST AL,AL
004e60c8  0f8429040000              JZ 0x004e64f7
004e60ce  8bce                      MOV ECX,ESI
004e60d0  e8db011d00                CALL 0x006b62b0
004e60d5  8b8f100f0000              MOV ECX,dword ptr [EDI + 0xf10]
004e60db  8bd0                      MOV EDX,EAX
004e60dd  8b870c0f0000              MOV EAX,dword ptr [EDI + 0xf0c]
004e60e3  894dcc                    MOV dword ptr [EBP + -0x34],ECX
004e60e6  2bc8                      SUB ECX,EAX
004e60e8  c1f902                    SAR ECX,0x2
004e60eb  8955dc                    MOV dword ptr [EBP + -0x24],EDX
004e60ee  85c9                      TEST ECX,ECX
004e60f0  7e2f                      JLE 0x004e6121
004e60f2  8bfa                      MOV EDI,EDX
004e60f4  8bd1                      MOV EDX,ECX
004e60f6  d1ea                      SHR EDX,0x1
004e60f8  8d3490                    LEA ESI,[EAX + EDX*0x4]
004e60fb  8975d4                    MOV dword ptr [EBP + -0x2c],ESI
004e60fe  393e                      CMP dword ptr [ESI],EDI
004e6100  7310                      JNC 0x004e6112
004e6102  8345d404                  ADD dword ptr [EBP + -0x2c],0x4
004e6106  83c8ff                    OR EAX,0xffffffff
004e6109  2bc2                      SUB EAX,EDX
004e610b  03c8                      ADD ECX,EAX
004e610d  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
004e6110  eb02                      JMP 0x004e6114
004e6112  8bca                      MOV ECX,EDX
004e6114  85c9                      TEST ECX,ECX
004e6116  7fdc                      JG 0x004e60f4
004e6118  8b7db0                    MOV EDI,dword ptr [EBP + -0x50]
004e611b  8b75e0                    MOV ESI,dword ptr [EBP + -0x20]
004e611e  8b55dc                    MOV EDX,dword ptr [EBP + -0x24]
004e6121  3b45cc                    CMP EAX,dword ptr [EBP + -0x34]
004e6124  7408                      JZ 0x004e612e
004e6126  3910                      CMP dword ptr [EAX],EDX
004e6128  0f84c9030000              JZ 0x004e64f7
004e612e  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
004e6136  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e613e  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
004e6146  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004e614e  0f28c1                    MOVAPS XMM0,XMM1
004e6151  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
004e6156  f30f59c1                  MULSS XMM0,XMM1
004e615a  0f28ca                    MOVAPS XMM1,XMM2
004e615d  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004e6162  f30f59ca                  MULSS XMM1,XMM2
004e6166  f30f58c1                  ADDSS XMM0,XMM1
004e616a  e8e1f8f4ff                CALL 0x00435a50
004e616f  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
004e6174  0f57e4                    XORPS XMM4,XMM4
004e6177  0f2fc4                    COMISS XMM0,XMM4
004e617a  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
004e617f  7621                      JBE 0x004e61a2
004e6181  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004e6189  f30f5ec8                  DIVSS XMM1,XMM0
004e618d  0f28c1                    MOVAPS XMM0,XMM1
004e6190  f30f59d9                  MULSS XMM3,XMM1
004e6194  f30f59d0                  MULSS XMM2,XMM0
004e6198  f30f115de8                MOVSS dword ptr [EBP + -0x18],XMM3
004e619d  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
004e61a2  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004e61a5  3df5000000                CMP EAX,0xf5
004e61aa  740b                      JZ 0x004e61b7
004e61ac  3d24010000                CMP EAX,0x124
004e61b1  7404                      JZ 0x004e61b7
004e61b3  32c9                      XOR CL,CL
004e61b5  eb02                      JMP 0x004e61b9
004e61b7  b101                      MOV CL,0x1
004e61b9  884de7                    MOV byte ptr [EBP + -0x19],CL
004e61bc  83f804                    CMP EAX,0x4
004e61bf  7564                      JNZ 0x004e6225
004e61c1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e61c7  2500010000                AND EAX,0x100
004e61cc  83c800                    OR EAX,0x0
004e61cf  0f85ff000000              JNZ 0x004e62d4
004e61d5  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
004e61dd  f30f591554a8ba00          MULSS XMM2,dword ptr [0x00baa854]
004e61e5  f30f591d54a8ba00          MULSS XMM3,dword ptr [0x00baa854]
004e61ed  0f2ec4                    UCOMISS XMM0,XMM4
004e61f0  9f                        LAHF
004e61f1  f6c444                    TEST AH,0x44
004e61f4  7b28                      JNP 0x004e621e
004e61f6  f30f5ed0                  DIVSS XMM2,XMM0
004e61fa  f30f5ed8                  DIVSS XMM3,XMM0
004e61fe  f30f589660030000          ADDSS XMM2,dword ptr [ESI + 0x360]
004e6206  f30f589e64030000          ADDSS XMM3,dword ptr [ESI + 0x364]
004e620e  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
004e6216  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
004e621e  8bce                      MOV ECX,ESI
004e6220  e9c1020000                JMP 0x004e64e6
004e6225  83f802                    CMP EAX,0x2
004e6228  0f85a6000000              JNZ 0x004e62d4
004e622e  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e6234  2500010000                AND EAX,0x100
004e6239  83c800                    OR EAX,0x0
004e623c  0f8592000000              JNZ 0x004e62d4
004e6242  0f28c2                    MOVAPS XMM0,XMM2
004e6245  0f28cb                    MOVAPS XMM1,XMM3
004e6248  f30f59c2                  MULSS XMM0,XMM2
004e624c  f30f59cb                  MULSS XMM1,XMM3
004e6250  f30f58c1                  ADDSS XMM0,XMM1
004e6254  e8f7f7f4ff                CALL 0x00435a50
004e6259  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004e6260  7628                      JBE 0x004e628a
004e6262  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004e626a  f30f5ec8                  DIVSS XMM1,XMM0
004e626e  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
004e6273  f30f59c1                  MULSS XMM0,XMM1
004e6277  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
004e627c  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004e6281  f30f59c1                  MULSS XMM0,XMM1
004e6285  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004e628a  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
004e6292  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
004e629a  f30f59c0                  MULSS XMM0,XMM0
004e629e  f30f59c9                  MULSS XMM1,XMM1
004e62a2  f30f58c1                  ADDSS XMM0,XMM1
004e62a6  e8a5f7f4ff                CALL 0x00435a50
004e62ab  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
004e62b0  8bce                      MOV ECX,ESI
004e62b2  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004e62b7  f30f59c8                  MULSS XMM1,XMM0
004e62bb  f30f59d0                  MULSS XMM2,XMM0
004e62bf  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
004e62c7  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
004e62cf  e912020000                JMP 0x004e64e6
004e62d4  84c9                      TEST CL,CL
004e62d6  0f85dc000000              JNZ 0x004e63b8
004e62dc  8bd6                      MOV EDX,ESI
004e62de  8bcf                      MOV ECX,EDI
004e62e0  e8ebedffff                CALL 0x004e50d0
004e62e5  84c0                      TEST AL,AL
004e62e7  0f85c8000000              JNZ 0x004e63b5
004e62ed  a17816c700                MOV EAX,[0x00c71678]
004e62f2  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004e62f9  7c06                      JL 0x004e6301
004e62fb  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004e62ff  744a                      JZ 0x004e634b
004e6301  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
004e6304  8d41f6                    LEA EAX,[ECX + -0xa]
004e6307  3ddd030000                CMP EAX,0x3dd
004e630c  0f87e5010000              JA 0x004e64f7
004e6312  83f921                    CMP ECX,0x21
004e6315  7534                      JNZ 0x004e634b
004e6317  837e2c0b                  CMP dword ptr [ESI + 0x2c],0xb
004e631b  742e                      JZ 0x004e634b
004e631d  8b06                      MOV EAX,dword ptr [ESI]
004e631f  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
004e6325  57                        PUSH EDI
004e6326  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
004e6329  e8e2aff4ff                CALL 0x00431310
004e632e  6a1e                      PUSH 0x1e
004e6330  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004e6336  50                        PUSH EAX
004e6337  6a00                      PUSH 0x0
004e6339  6a00                      PUSH 0x0
004e633b  51                        PUSH ECX
004e633c  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004e633f  c7042400007a44            MOV dword ptr [ESP],0x447a0000
004e6346  ffd6                      CALL ESI
004e6348  8b75e0                    MOV ESI,dword ptr [EBP + -0x20]
004e634b  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004e634f  0f85a2010000              JNZ 0x004e64f7
004e6355  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
004e635d  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
004e6364  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
004e6369  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
004e636e  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
004e6376  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
004e637e  9f                        LAHF
004e637f  f6c444                    TEST AH,0x44
004e6382  0f8b6f010000              JNP 0x004e64f7
004e6388  f30f5ec2                  DIVSS XMM0,XMM2
004e638c  f30f5eca                  DIVSS XMM1,XMM2
004e6390  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
004e6398  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
004e63a0  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004e63a8  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004e63b0  e942010000                JMP 0x004e64f7
004e63b5  0f57e4                    XORPS XMM4,XMM4
004e63b8  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004e63bc  f30f101d54a8ba00          MOVSS XMM3,dword ptr [0x00baa854]
004e63c4  f30f109788030000          MOVSS XMM2,dword ptr [EDI + 0x388]
004e63cc  7508                      JNZ 0x004e63d6
004e63ce  f30f101dd8adba00          MOVSS XMM3,dword ptr [0x00baadd8]
004e63d6  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
004e63db  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
004e63e0  f30f59c3                  MULSS XMM0,XMM3
004e63e4  f30f59cb                  MULSS XMM1,XMM3
004e63e8  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
004e63f0  0f2edc                    UCOMISS XMM3,XMM4
004e63f3  9f                        LAHF
004e63f4  f6c444                    TEST AH,0x44
004e63f7  7b28                      JNP 0x004e6421
004e63f9  f30f5ec3                  DIVSS XMM0,XMM3
004e63fd  f30f5ecb                  DIVSS XMM1,XMM3
004e6401  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
004e6409  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
004e6411  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004e6419  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004e6421  a17816c700                MOV EAX,[0x00c71678]
004e6426  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004e642d  7c0a                      JL 0x004e6439
004e642f  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004e6433  7504                      JNZ 0x004e6439
004e6435  b101                      MOV CL,0x1
004e6437  eb0e                      JMP 0x004e6447
004e6439  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004e643c  83e80a                    SUB EAX,0xa
004e643f  3ddd030000                CMP EAX,0x3dd
004e6444  0f96c1                    SETBE CL
004e6447  8b06                      MOV EAX,dword ptr [ESI]
004e6449  57                        PUSH EDI
004e644a  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
004e644d  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004e6450  84c9                      TEST CL,CL
004e6452  741b                      JZ 0x004e646f
004e6454  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
004e645a  e8b1aef4ff                CALL 0x00431310
004e645f  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
004e6467  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004e646d  eb11                      JMP 0x004e6480
004e646f  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
004e6475  e896aef4ff                CALL 0x00431310
004e647a  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
004e6480  6a1e                      PUSH 0x1e
004e6482  50                        PUSH EAX
004e6483  6a00                      PUSH 0x0
004e6485  6a00                      PUSH 0x0
004e6487  51                        PUSH ECX
004e6488  8bce                      MOV ECX,ESI
004e648a  f30f111424                MOVSS dword ptr [ESP],XMM2
004e648f  ff55dc                    CALL dword ptr [EBP + -0x24]
004e6492  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e6498  8d4ddc                    LEA ECX,[EBP + -0x24]
004e649b  c745dcef010000            MOV dword ptr [EBP + -0x24],0x1ef
004e64a2  e8d9024700                CALL 0x00956780
004e64a7  83ec08                    SUB ESP,0x8
004e64aa  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e64b0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e64b8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e64bf  6a00                      PUSH 0x0
004e64c1  6a02                      PUSH 0x2
004e64c3  51                        PUSH ECX
004e64c4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e64cb  ff75dc                    PUSH dword ptr [EBP + -0x24]
004e64ce  e85d774400                CALL 0x0092dc30
004e64d3  807de700                  CMP byte ptr [EBP + -0x19],0x0
004e64d7  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004e64e1  7514                      JNZ 0x004e64f7
004e64e3  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004e64e6  e8c5fd1c00                CALL 0x006b62b0
004e64eb  50                        PUSH EAX
004e64ec  8d8f0c0f0000              LEA ECX,[EDI + 0xf0c]
004e64f2  e879b0f4ff                CALL 0x00431570
004e64f7  0f57c9                    XORPS XMM1,XMM1
004e64fa  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
004e64fd  46                        INC ESI
004e64fe  8975d8                    MOV dword ptr [EBP + -0x28],ESI
004e6501  3b75ac                    CMP ESI,dword ptr [EBP + -0x54]
004e6504  0f8266fbffff              JC 0x004e6070
004e650a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e6511  807da000                  CMP byte ptr [EBP + -0x60],0x0
004e6515  753e                      JNZ 0x004e6555
004e6517  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004e651e  b101                      MOV CL,0x1
004e6520  8b55a4                    MOV EDX,dword ptr [EBP + -0x5c]
004e6523  6a00                      PUSH 0x0
004e6525  6a00                      PUSH 0x0
004e6527  e884e35700                CALL 0x00a648b0
004e652c  83c408                    ADD ESP,0x8
004e652f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e6532  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e6539  59                        POP ECX
004e653a  5f                        POP EDI
004e653b  5e                        POP ESI
004e653c  8be5                      MOV ESP,EBP
004e653e  5d                        POP EBP
004e653f  8be3                      MOV ESP,EBX
004e6541  5b                        POP EBX
004e6542  c3                        RET
004e6543  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004e6547  750c                      JNZ 0x004e6555
004e6549  8b870c0f0000              MOV EAX,dword ptr [EDI + 0xf0c]
004e654f  8987100f0000              MOV dword ptr [EDI + 0xf10],EAX
004e6555  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e6558  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e655f  59                        POP ECX
004e6560  5f                        POP EDI
004e6561  5e                        POP ESI
004e6562  8be5                      MOV ESP,EBP
004e6564  5d                        POP EBP
004e6565  8be3                      MOV ESP,EBX
004e6567  5b                        POP EBX
004e6568  c3                        RET
