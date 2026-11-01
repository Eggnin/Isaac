; J460 NPC AI 0x008d57f0 HELPER_Laser_DoDamage
; types=7
; identities=7.*
; entry=008d57f0
008d57f0  55                        PUSH EBP
008d57f1  8bec                      MOV EBP,ESP
008d57f3  83ec60                    SUB ESP,0x60
008d57f6  a1b493bf00                MOV EAX,[0x00bf93b4]
008d57fb  33c5                      XOR EAX,EBP
008d57fd  8945f8                    MOV dword ptr [EBP + -0x8],EAX
008d5800  53                        PUSH EBX
008d5801  8bd9                      MOV EBX,ECX
008d5803  56                        PUSH ESI
008d5804  57                        PUSH EDI
008d5805  837b6000                  CMP dword ptr [EBX + 0x60],0x0
008d5809  0f846e010000              JZ 0x008d597d
008d580f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
008d5815  ffb1204a0200              PUSH dword ptr [ECX + 0x24a20]
008d581b  e85020b4ff                CALL 0x00417870
008d5820  83bb3803000000            CMP dword ptr [EBX + 0x338],0x0
008d5827  8db334030000              LEA ESI,[EBX + 0x334]
008d582d  7504                      JNZ 0x008d5833
008d582f  33c0                      XOR EAX,EAX
008d5831  eb0c                      JMP 0x008d583f
008d5833  68ec59b700                PUSH 0xb759ec
008d5838  8bce                      MOV ECX,ESI
008d583a  e8a154b3ff                CALL 0x0040ace0
008d583f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
008d5843  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
008d5846  51                        PUSH ECX
008d5847  8bcb                      MOV ECX,EBX
008d5849  f30f5807                  ADDSS XMM0,dword ptr [EDI]
008d584d  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
008d5852  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
008d5857  8d45c4                    LEA EAX,[EBP + -0x3c]
008d585a  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
008d585f  50                        PUSH EAX
008d5860  8d4364                    LEA EAX,[EBX + 0x64]
008d5863  50                        PUSH EAX
008d5864  ff7360                    PUSH dword ptr [EBX + 0x60]
008d5867  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
008d586c  e82f050000                CALL 0x008d5da0
008d5871  83bb3803000000            CMP dword ptr [EBX + 0x338],0x0
008d5878  8b8380010000              MOV EAX,dword ptr [EBX + 0x180]
008d587e  8945b8                    MOV dword ptr [EBP + -0x48],EAX
008d5881  8b837c010000              MOV EAX,dword ptr [EBX + 0x17c]
008d5887  8945c8                    MOV dword ptr [EBP + -0x38],EAX
008d588a  7504                      JNZ 0x008d5890
008d588c  33c0                      XOR EAX,EAX
008d588e  eb0c                      JMP 0x008d589c
008d5890  68f859b700                PUSH 0xb759f8
008d5895  8bce                      MOV ECX,ESI
008d5897  e84454b3ff                CALL 0x0040ace0
008d589c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
008d58a0  8bcb                      MOV ECX,EBX
008d58a2  f30f5807                  ADDSS XMM0,dword ptr [EDI]
008d58a6  ff75b8                    PUSH dword ptr [EBP + -0x48]
008d58a9  ff75c8                    PUSH dword ptr [EBP + -0x38]
008d58ac  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
008d58b1  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
008d58b6  8d45bc                    LEA EAX,[EBP + -0x44]
008d58b9  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
008d58be  6a78                      PUSH 0x78
008d58c0  50                        PUSH EAX
008d58c1  ff7360                    PUSH dword ptr [EBX + 0x60]
008d58c4  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
008d58c9  e8a2060000                CALL 0x008d5f70
008d58ce  837b1403                  CMP dword ptr [EBX + 0x14],0x3
008d58d2  0f85a5000000              JNZ 0x008d597d
008d58d8  f6051c91c70001            TEST byte ptr [0x00c7911c],0x1
008d58df  8d4dcc                    LEA ECX,[EBP + -0x34]
008d58e2  b81891c700                MOV EAX,0xc79118
008d58e7  0f4405b879c300            CMOVZ EAX,dword ptr [0x00c379b8]
008d58ee  a3b879c300                MOV [0x00c379b8],EAX
008d58f3  e87818b3ff                CALL 0x00407170
008d58f8  83ec08                    SUB ESP,0x8
008d58fb  8dbb40060000              LEA EDI,[EBX + 0x640]
008d5901  8bcc                      MOV ECX,ESP
008d5903  8bf0                      MOV ESI,EAX
008d5905  57                        PUSH EDI
008d5906  e8456cb3ff                CALL 0x0040c550
008d590b  6a01                      PUSH 0x1
008d590d  8bce                      MOV ECX,ESI
008d590f  e84cd7daff                CALL 0x00683060
008d5914  8b37                      MOV ESI,dword ptr [EDI]
008d5916  8d4da4                    LEA ECX,[EBP + -0x5c]
008d5919  6aff                      PUSH -0x1
008d591b  8b06                      MOV EAX,dword ptr [ESI]
008d591d  8b7820                    MOV EDI,dword ptr [EAX + 0x20]
008d5920  e82b9c1300                CALL 0x00a0f550
008d5925  83bb3803000000            CMP dword ptr [EBX + 0x338],0x0
008d592c  7504                      JNZ 0x008d5932
008d592e  33c0                      XOR EAX,EAX
008d5930  eb10                      JMP 0x008d5942
008d5932  68ec59b700                PUSH 0xb759ec
008d5937  8d8b34030000              LEA ECX,[EBX + 0x334]
008d593d  e89e53b3ff                CALL 0x0040ace0
008d5942  8b5508                    MOV EDX,dword ptr [EBP + 0x8]
008d5945  8bce                      MOV ECX,ESI
008d5947  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
008d594c  f30f1002                  MOVSS XMM0,dword ptr [EDX]
008d5950  f30f5800                  ADDSS XMM0,dword ptr [EAX]
008d5954  f30f584a04                ADDSS XMM1,dword ptr [EDX + 0x4]
008d5959  8d45a4                    LEA EAX,[EBP + -0x5c]
008d595c  50                        PUSH EAX
008d595d  8d45bc                    LEA EAX,[EBP + -0x44]
008d5960  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
008d5968  f30f580dfca6ba00          ADDSS XMM1,dword ptr [0x00baa6fc]
008d5970  50                        PUSH EAX
008d5971  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
008d5976  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
008d597b  ffd7                      CALL EDI
008d597d  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
008d5980  5f                        POP EDI
008d5981  5e                        POP ESI
008d5982  33cd                      XOR ECX,EBP
008d5984  5b                        POP EBX
008d5985  e8a1972100                CALL 0x00aef12b
008d598a  8be5                      MOV ESP,EBP
008d598c  5d                        POP EBP
008d598d  c20400                    RET 0x4
