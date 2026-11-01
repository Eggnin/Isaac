; J460 NPC AI 0x004bf310 AI_004bf310
; types=296
; identities=296.0.0
; entry=004bf310
004bf310  55                        PUSH EBP
004bf311  8bec                      MOV EBP,ESP
004bf313  6aff                      PUSH -0x1
004bf315  68a535af00                PUSH 0xaf35a5
004bf31a  64a100000000              MOV EAX,FS:[0x0]
004bf320  50                        PUSH EAX
004bf321  83ec74                    SUB ESP,0x74
004bf324  a1b493bf00                MOV EAX,[0x00bf93b4]
004bf329  33c5                      XOR EAX,EBP
004bf32b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
004bf32e  53                        PUSH EBX
004bf32f  56                        PUSH ESI
004bf330  57                        PUSH EDI
004bf331  50                        PUSH EAX
004bf332  8d45f4                    LEA EAX,[EBP + -0xc]
004bf335  64a300000000              MOV FS:[0x0],EAX
004bf33b  8bf9                      MOV EDI,ECX
004bf33d  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004bf344  0f859c010000              JNZ 0x004bf4e6
004bf34a  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004bf354  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004bf35e  c745e468ffb500            MOV dword ptr [EBP + -0x1c],0xb5ff68
004bf365  c745e8f4feb500            MOV dword ptr [EBP + -0x18],0xb5fef4
004bf36c  c745ec28ffb500            MOV dword ptr [EBP + -0x14],0xb5ff28
004bf373  e8e8fb2200                CALL 0x006eef60
004bf378  33d2                      XOR EDX,EDX
004bf37a  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004bf381  b903000000                MOV ECX,0x3
004bf386  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
004bf38d  f7f1                      DIV ECX
004bf38f  c745e00f000000            MOV dword ptr [EBP + -0x20],0xf
004bf396  c645cc00                  MOV byte ptr [EBP + -0x34],0x0
004bf39a  8b5495e4                  MOV EDX,dword ptr [EBP + EDX*0x4 + -0x1c]
004bf39e  8bca                      MOV ECX,EDX
004bf3a0  8d5901                    LEA EBX,[ECX + 0x1]
004bf3a3  8a01                      MOV AL,byte ptr [ECX]
004bf3a5  41                        INC ECX
004bf3a6  84c0                      TEST AL,AL
004bf3a8  75f9                      JNZ 0x004bf3a3
004bf3aa  2bcb                      SUB ECX,EBX
004bf3ac  51                        PUSH ECX
004bf3ad  52                        PUSH EDX
004bf3ae  8d4dcc                    LEA ECX,[EBP + -0x34]
004bf3b1  e81ad9f4ff                CALL 0x0040ccd0
004bf3b6  8d45cc                    LEA EAX,[EBP + -0x34]
004bf3b9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004bf3c0  50                        PUSH EAX
004bf3c1  6a00                      PUSH 0x0
004bf3c3  8d4f48                    LEA ECX,[EDI + 0x48]
004bf3c6  e865cbf4ff                CALL 0x0040bf30
004bf3cb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004bf3d2  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
004bf3d5  83fa10                    CMP EDX,0x10
004bf3d8  722e                      JC 0x004bf408
004bf3da  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004bf3dd  42                        INC EDX
004bf3de  8bc1                      MOV EAX,ECX
004bf3e0  81fa00100000              CMP EDX,0x1000
004bf3e6  7216                      JC 0x004bf3fe
004bf3e8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004bf3eb  83c223                    ADD EDX,0x23
004bf3ee  2bc1                      SUB EAX,ECX
004bf3f0  83c0fc                    ADD EAX,-0x4
004bf3f3  83f81f                    CMP EAX,0x1f
004bf3f6  7606                      JBE 0x004bf3fe
004bf3f8  ff159488b100              CALL dword ptr [0x00b18894]
004bf3fe  52                        PUSH EDX
004bf3ff  51                        PUSH ECX
004bf400  e857fd6200                CALL 0x00aef15c
004bf405  83c408                    ADD ESP,0x8
004bf408  51                        PUSH ECX
004bf409  8d4f48                    LEA ECX,[EDI + 0x48]
004bf40c  e8efcbf4ff                CALL 0x0040c000
004bf411  e84afb2200                CALL 0x006eef60
004bf416  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004bf41c  660f6ec0                  MOVD XMM0,EAX
004bf420  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004bf424  c1e81f                    SHR EAX,0x1f
004bf427  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004bf430  660f5ac0                  CVTPD2PS XMM0,XMM0
004bf434  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004bf43c  f30f5905c4abba00          MULSS XMM0,dword ptr [0x00baabc4]
004bf444  f30f2cc0                  CVTTSS2SI EAX,XMM0
004bf448  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004bf44e  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
004bf454  89877c0c0000              MOV dword ptr [EDI + 0xc7c],EAX
004bf45a  8d45b0                    LEA EAX,[EBP + -0x50]
004bf45d  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004bf463  50                        PUSH EAX
004bf464  e897383500                CALL 0x00812d00
004bf469  8b08                      MOV ECX,dword ptr [EAX]
004bf46b  898fb00b0000              MOV dword ptr [EDI + 0xbb0],ECX
004bf471  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004bf474  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
004bf47a  e8e1fa2200                CALL 0x006eef60
004bf47f  33d2                      XOR EDX,EDX
004bf481  be06000000                MOV ESI,0x6
004bf486  f7f6                      DIV ESI
004bf488  fec2                      INC DL
004bf48a  8897c40b0000              MOV byte ptr [EDI + 0xbc4],DL
004bf490  e8cbfa2200                CALL 0x006eef60
004bf495  33d2                      XOR EDX,EDX
004bf497  f7f6                      DIV ESI
004bf499  fec2                      INC DL
004bf49b  8897c50b0000              MOV byte ptr [EDI + 0xbc5],DL
004bf4a1  66c787c60b00005000        MOV word ptr [EDI + 0xbc6],0x50
004bf4aa  e8b1fa2200                CALL 0x006eef60
004bf4af  33d2                      XOR EDX,EDX
004bf4b1  b9c8000000                MOV ECX,0xc8
004bf4b6  f7f1                      DIV ECX
004bf4b8  81c290010000              ADD EDX,0x190
004bf4be  660f6ec2                  MOVD XMM0,EDX
004bf4c2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004bf4c6  c1ea1f                    SHR EDX,0x1f
004bf4c9  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004bf4d2  660f5ac0                  CVTPD2PS XMM0,XMM0
004bf4d6  f30f588780030000          ADDSS XMM0,dword ptr [EDI + 0x380]
004bf4de  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004bf4e6  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004bf4ee  8d8f84030000              LEA ECX,[EDI + 0x384]
004bf4f4  f30f1009                  MOVSS XMM1,dword ptr [ECX]
004bf4f8  0f2fc1                    COMISS XMM0,XMM1
004bf4fb  761e                      JBE 0x004bf51b
004bf4fd  f30f5c055ca7ba00          SUBSS XMM0,dword ptr [0x00baa75c]
004bf505  8d45c0                    LEA EAX,[EBP + -0x40]
004bf508  0f2fc1                    COMISS XMM0,XMM1
004bf50b  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
004bf510  0f46c1                    CMOVBE EAX,ECX
004bf513  8b00                      MOV EAX,dword ptr [EAX]
004bf515  898780030000              MOV dword ptr [EDI + 0x380],EAX
004bf51b  6a00                      PUSH 0x0
004bf51d  68acd6c500                PUSH 0xc5d6ac
004bf522  68dcd5c500                PUSH 0xc5d5dc
004bf527  6a00                      PUSH 0x0
004bf529  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
004bf52f  e87d136300                CALL 0x00af08b1
004bf534  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004bf53c  83c414                    ADD ESP,0x14
004bf53f  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004bf546  8bd8                      MOV EBX,EAX
004bf548  895db4                    MOV dword ptr [EBP + -0x4c],EBX
004bf54b  9f                        LAHF
004bf54c  f6c444                    TEST AH,0x44
004bf54f  0f8a7a050000              JP 0x004bfacf
004bf555  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004bf55d  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004bf564  9f                        LAHF
004bf565  f6c444                    TEST AH,0x44
004bf568  0f8a61050000              JP 0x004bfacf
004bf56e  ffb77c0c0000              PUSH dword ptr [EDI + 0xc7c]
004bf574  8d459c                    LEA EAX,[EBP + -0x64]
004bf577  8bcf                      MOV ECX,EDI
004bf579  50                        PUSH EAX
004bf57a  e851182100                CALL 0x006d0dd0
004bf57f  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004bf586  8d4dd4                    LEA ECX,[EBP + -0x2c]
004bf589  0fb687c60b0000            MOVZX EAX,byte ptr [EDI + 0xbc6]
004bf590  660f6ed0                  MOVD XMM2,EAX
004bf594  0fb687c40b0000            MOVZX EAX,byte ptr [EDI + 0xbc4]
004bf59b  0f5bd2                    CVTDQ2PS XMM2,XMM2
004bf59e  50                        PUSH EAX
004bf59f  e89c075000                CALL 0x009bfd40
004bf5a4  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004bf5a8  8d4d8c                    LEA ECX,[EBP + -0x74]
004bf5ab  0fb687c60b0000            MOVZX EAX,byte ptr [EDI + 0xbc6]
004bf5b2  660f6ed0                  MOVD XMM2,EAX
004bf5b6  0fb687c50b0000            MOVZX EAX,byte ptr [EDI + 0xbc5]
004bf5bd  0f5bd2                    CVTDQ2PS XMM2,XMM2
004bf5c0  50                        PUSH EAX
004bf5c1  e87a075000                CALL 0x009bfd40
004bf5c6  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004bf5ca  a17816c700                MOV EAX,[0x00c71678]
004bf5cf  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004bf5d7  660f6e80f8640200          MOVD XMM0,dword ptr [EAX + 0x264f8]
004bf5df  0f5bc0                    CVTDQ2PS XMM0,XMM0
004bf5e2  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004bf5e7  0f28c1                    MOVAPS XMM0,XMM1
004bf5ea  f30f5987b80b0000          MULSS XMM0,dword ptr [EDI + 0xbb8]
004bf5f2  f30f598fbc0b0000          MULSS XMM1,dword ptr [EDI + 0xbbc]
004bf5fa  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
004bf602  f30f588fb40b0000          ADDSS XMM1,dword ptr [EDI + 0xbb4]
004bf60a  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004bf612  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004bf61a  80bfc70b000001            CMP byte ptr [EDI + 0xbc7],0x1
004bf621  0f8529010000              JNZ 0x004bf750
004bf627  f30f108fbc0b0000          MOVSS XMM1,dword ptr [EDI + 0xbbc]
004bf62f  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004bf637  f30f59c0                  MULSS XMM0,XMM0
004bf63b  f30f59c9                  MULSS XMM1,XMM1
004bf63f  f30f58c1                  ADDSS XMM0,XMM1
004bf643  e80864f7ff                CALL 0x00435a50
004bf648  8bcf                      MOV ECX,EDI
004bf64a  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
004bf64f  e8ecf11f00                CALL 0x006be840
004bf654  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004bf65c  f30f5c8fb00b0000          SUBSS XMM1,dword ptr [EDI + 0xbb0]
004bf664  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004bf66c  f30f5c97b40b0000          SUBSS XMM2,dword ptr [EDI + 0xbb4]
004bf674  0f28c1                    MOVAPS XMM0,XMM1
004bf677  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
004bf67c  f30f59c1                  MULSS XMM0,XMM1
004bf680  0f28ca                    MOVAPS XMM1,XMM2
004bf683  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
004bf688  f30f59ca                  MULSS XMM1,XMM2
004bf68c  f30f58c1                  ADDSS XMM0,XMM1
004bf690  e8bb63f7ff                CALL 0x00435a50
004bf695  0f28d0                    MOVAPS XMM2,XMM0
004bf698  0f57c0                    XORPS XMM0,XMM0
004bf69b  0f2fd0                    COMISS XMM2,XMM0
004bf69e  7618                      JBE 0x004bf6b8
004bf6a0  f30f104dc0                MOVSS XMM1,dword ptr [EBP + -0x40]
004bf6a5  f30f5eca                  DIVSS XMM1,XMM2
004bf6a9  0f28c1                    MOVAPS XMM0,XMM1
004bf6ac  f30f594dc4                MULSS XMM1,dword ptr [EBP + -0x3c]
004bf6b1  f30f5945c8                MULSS XMM0,dword ptr [EBP + -0x38]
004bf6b6  eb0a                      JMP 0x004bf6c2
004bf6b8  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004bf6bd  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
004bf6c2  f30f1097b80b0000          MOVSS XMM2,dword ptr [EDI + 0xbb8]
004bf6ca  f30f109fbc0b0000          MOVSS XMM3,dword ptr [EDI + 0xbbc]
004bf6d2  f30f5cc2                  SUBSS XMM0,XMM2
004bf6d6  f30f5ccb                  SUBSS XMM1,XMM3
004bf6da  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004bf6e2  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004bf6ea  f30f58d0                  ADDSS XMM2,XMM0
004bf6ee  f30f58d9                  ADDSS XMM3,XMM1
004bf6f2  0f28c2                    MOVAPS XMM0,XMM2
004bf6f5  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
004bf6fa  f30f59c2                  MULSS XMM0,XMM2
004bf6fe  0f28cb                    MOVAPS XMM1,XMM3
004bf701  f30f115dc8                MOVSS dword ptr [EBP + -0x38],XMM3
004bf706  f30f59cb                  MULSS XMM1,XMM3
004bf70a  f30f58c1                  ADDSS XMM0,XMM1
004bf70e  e83d63f7ff                CALL 0x00435a50
004bf713  0f28c8                    MOVAPS XMM1,XMM0
004bf716  0f57c0                    XORPS XMM0,XMM0
004bf719  0f2fc8                    COMISS XMM1,XMM0
004bf71c  7618                      JBE 0x004bf736
004bf71e  f30f1045c0                MOVSS XMM0,dword ptr [EBP + -0x40]
004bf723  f30f5ec1                  DIVSS XMM0,XMM1
004bf727  0f28c8                    MOVAPS XMM1,XMM0
004bf72a  f30f5945c8                MULSS XMM0,dword ptr [EBP + -0x38]
004bf72f  f30f594dc4                MULSS XMM1,dword ptr [EBP + -0x3c]
004bf734  eb0a                      JMP 0x004bf740
004bf736  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
004bf73b  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004bf740  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
004bf748  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
004bf750  83bf7c0c000001            CMP dword ptr [EDI + 0xc7c],0x1
004bf757  7524                      JNZ 0x004bf77d
004bf759  85db                      TEST EBX,EBX
004bf75b  7420                      JZ 0x004bf77d
004bf75d  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
004bf765  f30f108b40030000          MOVSS XMM1,dword ptr [EBX + 0x340]
004bf76d  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004bf775  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004bf77d  33c9                      XOR ECX,ECX
004bf77f  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004bf782  394da8                    CMP dword ptr [EBP + -0x58],ECX
004bf785  0f86ef020000              JBE 0x004bfa7a
004bf78b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004bf790  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
004bf793  6a00                      PUSH 0x0
004bf795  68acd6c500                PUSH 0xc5d6ac
004bf79a  68dcd5c500                PUSH 0xc5d5dc
004bf79f  6a00                      PUSH 0x0
004bf7a1  ff3488                    PUSH dword ptr [EAX + ECX*0x4]
004bf7a4  e808116300                CALL 0x00af08b1
004bf7a9  8bd8                      MOV EBX,EAX
004bf7ab  83c414                    ADD ESP,0x14
004bf7ae  85db                      TEST EBX,EBX
004bf7b0  0f84b1020000              JZ 0x004bfa67
004bf7b6  817b2828010000            CMP dword ptr [EBX + 0x28],0x128
004bf7bd  0f85a4020000              JNZ 0x004bfa67
004bf7c3  8383c00b00000a            ADD dword ptr [EBX + 0xbc0],0xa
004bf7ca  8d4d9c                    LEA ECX,[EBP + -0x64]
004bf7cd  6a00                      PUSH 0x0
004bf7cf  68acd6c500                PUSH 0xc5d6ac
004bf7d4  68dcd5c500                PUSH 0xc5d5dc
004bf7d9  6a00                      PUSH 0x0
004bf7db  ffb340030000              PUSH dword ptr [EBX + 0x340]
004bf7e1  ffb33c030000              PUSH dword ptr [EBX + 0x33c]
004bf7e7  53                        PUSH EBX
004bf7e8  e883eeffff                CALL 0x004be670
004bf7ed  50                        PUSH EAX
004bf7ee  e8be106300                CALL 0x00af08b1
004bf7f3  83c414                    ADD ESP,0x14
004bf7f6  85c0                      TEST EAX,EAX
004bf7f8  0f847e000000              JZ 0x004bf87c
004bf7fe  3bc3                      CMP EAX,EBX
004bf800  747a                      JZ 0x004bf87c
004bf802  8bb3c00b0000              MOV ESI,dword ptr [EBX + 0xbc0]
004bf808  660f6e80c00b0000          MOVD XMM0,dword ptr [EAX + 0xbc0]
004bf810  0f5bc0                    CVTDQ2PS XMM0,XMM0
004bf813  660f6ece                  MOVD XMM1,ESI
004bf817  0f5bc9                    CVTDQ2PS XMM1,XMM1
004bf81a  f30f5cc1                  SUBSS XMM0,XMM1
004bf81e  f30f59055ca0ba00          MULSS XMM0,dword ptr [0x00baa05c]
004bf826  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004bf82b  e810ddf5ff                CALL 0x0041d540
004bf830  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004bf835  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
004bf83a  e8e1dcf5ff                CALL 0x0041d520
004bf83f  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
004bf844  e817a5fdff                CALL 0x00499d60
004bf849  f30f590558aaba00          MULSS XMM0,dword ptr [0x00baaa58]
004bf851  33c0                      XOR EAX,EAX
004bf853  b902000000                MOV ECX,0x2
004bf858  f30f100dd4acba00          MOVSS XMM1,dword ptr [0x00baacd4]
004bf860  0f2fc8                    COMISS XMM1,XMM0
004bf863  0f57c9                    XORPS XMM1,XMM1
004bf866  0f47c1                    CMOVA EAX,ECX
004bf869  b9feffffff                MOV ECX,0xfffffffe
004bf86e  0f2fc1                    COMISS XMM0,XMM1
004bf871  0f47c1                    CMOVA EAX,ECX
004bf874  03c6                      ADD EAX,ESI
004bf876  8983c00b0000              MOV dword ptr [EBX + 0xbc0],EAX
004bf87c  660f6e83c00b0000          MOVD XMM0,dword ptr [EBX + 0xbc0]
004bf884  8d4584                    LEA EAX,[EBP + -0x7c]
004bf887  0f5bc0                    CVTDQ2PS XMM0,XMM0
004bf88a  50                        PUSH EAX
004bf88b  8d4dd4                    LEA ECX,[EBP + -0x2c]
004bf88e  f30f590520a0ba00          MULSS XMM0,dword ptr [0x00baa020]
004bf896  0f28d0                    MOVAPS XMM2,XMM0
004bf899  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004bf89e  e80d075000                CALL 0x009bffb0
004bf8a3  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
004bf8a8  8bf0                      MOV ESI,EAX
004bf8aa  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004bf8b2  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004bf8b7  e884dcf5ff                CALL 0x0041d540
004bf8bc  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004bf8c1  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004bf8c6  e855dcf5ff                CALL 0x0041d520
004bf8cb  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
004bf8d0  8d45e8                    LEA EAX,[EBP + -0x18]
004bf8d3  f30f102e                  MOVSS XMM5,dword ptr [ESI]
004bf8d7  8d4d8c                    LEA ECX,[EBP + -0x74]
004bf8da  0f28cd                    MOVAPS XMM1,XMM5
004bf8dd  0f28e2                    MOVAPS XMM4,XMM2
004bf8e0  f30f5965c4                MULSS XMM4,dword ptr [EBP + -0x3c]
004bf8e5  50                        PUSH EAX
004bf8e6  f30f596dc4                MULSS XMM5,dword ptr [EBP + -0x3c]
004bf8eb  f30f59c8                  MULSS XMM1,XMM0
004bf8ef  f30f59d0                  MULSS XMM2,XMM0
004bf8f3  f30f58e1                  ADDSS XMM4,XMM1
004bf8f7  f30f5cea                  SUBSS XMM5,XMM2
004bf8fb  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
004bf900  f30f592554a3ba00          MULSS XMM4,dword ptr [0x00baa354]
004bf908  f30f58afb00b0000          ADDSS XMM5,dword ptr [EDI + 0xbb0]
004bf910  f30f58a7b40b0000          ADDSS XMM4,dword ptr [EDI + 0xbb4]
004bf918  f30f116dc4                MOVSS dword ptr [EBP + -0x3c],XMM5
004bf91d  f30f1165b8                MOVSS dword ptr [EBP + -0x48],XMM4
004bf922  e889065000                CALL 0x009bffb0
004bf927  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004bf92c  8bf0                      MOV ESI,EAX
004bf92e  e80ddcf5ff                CALL 0x0041d540
004bf933  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004bf938  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004bf93d  e8dedbf5ff                CALL 0x0041d520
004bf942  f30f102e                  MOVSS XMM5,dword ptr [ESI]
004bf946  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
004bf94b  0f28cd                    MOVAPS XMM1,XMM5
004bf94e  f30f596dbc                MULSS XMM5,dword ptr [EBP + -0x44]
004bf953  0f28e2                    MOVAPS XMM4,XMM2
004bf956  f30f5965bc                MULSS XMM4,dword ptr [EBP + -0x44]
004bf95b  f30f59c8                  MULSS XMM1,XMM0
004bf95f  f30f59d0                  MULSS XMM2,XMM0
004bf963  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
004bf96b  f30f58e1                  ADDSS XMM4,XMM1
004bf96f  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004bf977  f30f5cea                  SUBSS XMM5,XMM2
004bf97b  f30f592554a3ba00          MULSS XMM4,dword ptr [0x00baa354]
004bf983  f30f116dbc                MOVSS dword ptr [EBP + -0x44],XMM5
004bf988  f30f1165c8                MOVSS dword ptr [EBP + -0x38],XMM4
004bf98d  e88edbf5ff                CALL 0x0041d520
004bf992  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004bf99a  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
004bf99f  0f57c9                    XORPS XMM1,XMM1
004bf9a2  f30f5897b00b0000          ADDSS XMM2,dword ptr [EDI + 0xbb0]
004bf9aa  f30f1065c4                MOVSS XMM4,dword ptr [EBP + -0x3c]
004bf9af  f30f105db8                MOVSS XMM3,dword ptr [EBP + -0x48]
004bf9b4  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004bf9bc  f30f5cd4                  SUBSS XMM2,XMM4
004bf9c0  f30f5fc8                  MAXSS XMM1,XMM0
004bf9c4  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004bf9cc  f30f5dc1                  MINSS XMM0,XMM1
004bf9d0  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
004bf9d5  f30f588fb40b0000          ADDSS XMM1,dword ptr [EDI + 0xbb4]
004bf9dd  f30f59d0                  MULSS XMM2,XMM0
004bf9e1  f30f5ccb                  SUBSS XMM1,XMM3
004bf9e5  f30f58e2                  ADDSS XMM4,XMM2
004bf9e9  f30f59c8                  MULSS XMM1,XMM0
004bf9ed  f30f11a334030000          MOVSS dword ptr [EBX + 0x334],XMM4
004bf9f5  f30f58d9                  ADDSS XMM3,XMM1
004bf9f9  f30f119b38030000          MOVSS dword ptr [EBX + 0x338],XMM3
004bfa01  8b87b00b0000              MOV EAX,dword ptr [EDI + 0xbb0]
004bfa07  8983b00b0000              MOV dword ptr [EBX + 0xbb0],EAX
004bfa0d  8b87b40b0000              MOV EAX,dword ptr [EDI + 0xbb4]
004bfa13  8983b40b0000              MOV dword ptr [EBX + 0xbb4],EAX
004bfa19  8b87b80b0000              MOV EAX,dword ptr [EDI + 0xbb8]
004bfa1f  8983b80b0000              MOV dword ptr [EBX + 0xbb8],EAX
004bfa25  8b87bc0b0000              MOV EAX,dword ptr [EDI + 0xbbc]
004bfa2b  8983bc0b0000              MOV dword ptr [EBX + 0xbbc],EAX
004bfa31  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004bfa37  8983c40b0000              MOV dword ptr [EBX + 0xbc4],EAX
004bfa3d  a17816c700                MOV EAX,[0x00c71678]
004bfa42  51                        PUSH ECX
004bfa43  8d8b3c030000              LEA ECX,[EBX + 0x33c]
004bfa49  c70424000048c3            MOV dword ptr [ESP],0xc3480000
004bfa50  51                        PUSH ECX
004bfa51  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004bfa57  e804393500                CALL 0x00813360
004bfa5c  84c0                      TEST AL,AL
004bfa5e  7507                      JNZ 0x004bfa67
004bfa60  8b03                      MOV EAX,dword ptr [EBX]
004bfa62  8bcb                      MOV ECX,EBX
004bfa64  ff5028                    CALL dword ptr [EAX + 0x28]
004bfa67  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
004bfa6a  41                        INC ECX
004bfa6b  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004bfa6e  3b4da8                    CMP ECX,dword ptr [EBP + -0x58]
004bfa71  0f8219fdffff              JC 0x004bf790
004bfa77  8b5db4                    MOV EBX,dword ptr [EBP + -0x4c]
004bfa7a  8d4d90                    LEA ECX,[EBP + -0x70]
004bfa7d  e8ce3effff                CALL 0x004b3950
004bfa82  8d4dd8                    LEA ECX,[EBP + -0x28]
004bfa85  e8c63effff                CALL 0x004b3950
004bfa8a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004bfa91  807d9c00                  CMP byte ptr [EBP + -0x64],0x0
004bfa95  7538                      JNZ 0x004bfacf
004bfa97  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004bfa9d  85d2                      TEST EDX,EDX
004bfa9f  7405                      JZ 0x004bfaa6
004bfaa1  83c230                    ADD EDX,0x30
004bfaa4  eb05                      JMP 0x004bfaab
004bfaa6  ba18f6c700                MOV EDX,0xc7f618
004bfaab  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
004bfaae  85c9                      TEST ECX,ECX
004bfab0  7416                      JZ 0x004bfac8
004bfab2  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
004bfab5  83c1fc                    ADD ECX,-0x4
004bfab8  2902                      SUB dword ptr [EDX],EAX
004bfaba  51                        PUSH ECX
004bfabb  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004bfabf  ff15dc87b100              CALL dword ptr [0x00b187dc]
004bfac5  83c404                    ADD ESP,0x4
004bfac8  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004bfacf  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
004bfad7  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
004bfadf  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004bfae7  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004bfaef  f30f589fb80b0000          ADDSS XMM3,dword ptr [EDI + 0xbb8]
004bfaf7  f30f5cd8                  SUBSS XMM3,XMM0
004bfafb  f30f591df8a1ba00          MULSS XMM3,dword ptr [0x00baa1f8]
004bfb03  f30f58d8                  ADDSS XMM3,XMM0
004bfb07  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004bfb0f  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004bfb17  0f28cb                    MOVAPS XMM1,XMM3
004bfb1a  f30f115db4                MOVSS dword ptr [EBP + -0x4c],XMM3
004bfb1f  f30f5887bc0b0000          ADDSS XMM0,dword ptr [EDI + 0xbbc]
004bfb27  f30f59cb                  MULSS XMM1,XMM3
004bfb2b  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
004bfb33  f30f5cc2                  SUBSS XMM0,XMM2
004bfb37  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
004bfb3f  f30f58c2                  ADDSS XMM0,XMM2
004bfb43  0f28d0                    MOVAPS XMM2,XMM0
004bfb46  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004bfb4b  f30f59d0                  MULSS XMM2,XMM0
004bfb4f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004bfb57  f30f58d1                  ADDSS XMM2,XMM1
004bfb5b  0f2f15d0a9ba00            COMISS XMM2,dword ptr [0x00baa9d0]
004bfb62  763c                      JBE 0x004bfba0
004bfb64  0f28c2                    MOVAPS XMM0,XMM2
004bfb67  e8e45ef7ff                CALL 0x00435a50
004bfb6c  0f28d0                    MOVAPS XMM2,XMM0
004bfb6f  0f57c0                    XORPS XMM0,XMM0
004bfb72  0f2fd0                    COMISS XMM2,XMM0
004bfb75  7629                      JBE 0x004bfba0
004bfb77  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004bfb7f  f30f5eca                  DIVSS XMM1,XMM2
004bfb83  0f28c1                    MOVAPS XMM0,XMM1
004bfb86  f30f594db8                MULSS XMM1,dword ptr [EBP + -0x48]
004bfb8b  f30f5945b4                MULSS XMM0,dword ptr [EBP + -0x4c]
004bfb90  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004bfb98  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004bfba0  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004bfba8  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
004bfbaf  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004bfbb7  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004bfbbf  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004bfbc7  9f                        LAHF
004bfbc8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004bfbd0  f30f5ec8                  DIVSS XMM1,XMM0
004bfbd4  f6c444                    TEST AH,0x44
004bfbd7  7b13                      JNP 0x004bfbec
004bfbd9  0f28c2                    MOVAPS XMM0,XMM2
004bfbdc  f30f59d1                  MULSS XMM2,XMM1
004bfbe0  f30f58c1                  ADDSS XMM0,XMM1
004bfbe4  f30f5cc2                  SUBSS XMM0,XMM2
004bfbe8  f30f5ec8                  DIVSS XMM1,XMM0
004bfbec  0f28c1                    MOVAPS XMM0,XMM1
004bfbef  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
004bfbf7  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
004bfbff  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004bfc07  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004bfc0f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004bfc12  85f6                      TEST ESI,ESI
004bfc14  744a                      JZ 0x004bfc60
004bfc16  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004bfc1a  8bc6                      MOV EAX,ESI
004bfc1c  7202                      JC 0x004bfc20
004bfc1e  8b06                      MOV EAX,dword ptr [ESI]
004bfc20  b904deb100                MOV ECX,0xb1de04
004bfc25  8a10                      MOV DL,byte ptr [EAX]
004bfc27  3a11                      CMP DL,byte ptr [ECX]
004bfc29  751a                      JNZ 0x004bfc45
004bfc2b  84d2                      TEST DL,DL
004bfc2d  7412                      JZ 0x004bfc41
004bfc2f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004bfc32  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004bfc35  750e                      JNZ 0x004bfc45
004bfc37  83c002                    ADD EAX,0x2
004bfc3a  83c102                    ADD ECX,0x2
004bfc3d  84d2                      TEST DL,DL
004bfc3f  75e4                      JNZ 0x004bfc25
004bfc41  33c0                      XOR EAX,EAX
004bfc43  eb05                      JMP 0x004bfc4a
004bfc45  1bc0                      SBB EAX,EAX
004bfc47  83c801                    OR EAX,0x1
004bfc4a  85c0                      TEST EAX,EAX
004bfc4c  7512                      JNZ 0x004bfc60
004bfc4e  384634                    CMP byte ptr [ESI + 0x34],AL
004bfc51  742e                      JZ 0x004bfc81
004bfc53  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004bfc59  8d7748                    LEA ESI,[EDI + 0x48]
004bfc5c  7523                      JNZ 0x004bfc81
004bfc5e  eb03                      JMP 0x004bfc63
004bfc60  8d7748                    LEA ESI,[EDI + 0x48]
004bfc63  6a01                      PUSH 0x1
004bfc65  6804deb100                PUSH 0xb1de04
004bfc6a  8bce                      MOV ECX,ESI
004bfc6c  e85fa9f4ff                CALL 0x0040a5d0
004bfc71  84c0                      TEST AL,AL
004bfc73  740c                      JZ 0x004bfc81
004bfc75  8d4e30                    LEA ECX,[ESI + 0x30]
004bfc78  e833a5f4ff                CALL 0x0040a1b0
004bfc7d  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004bfc81  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004bfc89  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004bfc91  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004bfc99  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004bfca1  83bf8801000002            CMP dword ptr [EDI + 0x188],0x2
004bfca8  7553                      JNZ 0x004bfcfd
004bfcaa  85db                      TEST EBX,EBX
004bfcac  7445                      JZ 0x004bfcf3
004bfcae  f30f108b3c030000          MOVSS XMM1,dword ptr [EBX + 0x33c]
004bfcb6  f30f109340030000          MOVSS XMM2,dword ptr [EBX + 0x340]
004bfcbe  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004bfcc6  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004bfcce  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004bfcd6  f30f588370030000          ADDSS XMM0,dword ptr [EBX + 0x370]
004bfcde  f30f59d2                  MULSS XMM2,XMM2
004bfce2  f30f59c9                  MULSS XMM1,XMM1
004bfce6  f30f59c0                  MULSS XMM0,XMM0
004bfcea  f30f58d1                  ADDSS XMM2,XMM1
004bfcee  0f2fd0                    COMISS XMM2,XMM0
004bfcf1  760a                      JBE 0x004bfcfd
004bfcf3  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004bfcfd  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004bfd00  64890d00000000            MOV dword ptr FS:[0x0],ECX
004bfd07  59                        POP ECX
004bfd08  5f                        POP EDI
004bfd09  5e                        POP ESI
004bfd0a  5b                        POP EBX
004bfd0b  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004bfd0e  33cd                      XOR ECX,EBP
004bfd10  e816f46200                CALL 0x00aef12b
004bfd15  8be5                      MOV ESP,EBP
004bfd17  5d                        POP EBP
004bfd18  c3                        RET
