; J460 NPC AI 0x004f1ec0 AI_004f1ec0
; types=890
; identities=890.0.0,890.0.1
; entry=004f1ec0
004f1ec0  55                        PUSH EBP
004f1ec1  8bec                      MOV EBP,ESP
004f1ec3  83e4f8                    AND ESP,0xfffffff8
004f1ec6  81ecd8000000              SUB ESP,0xd8
004f1ecc  a1b493bf00                MOV EAX,[0x00bf93b4]
004f1ed1  33c4                      XOR EAX,ESP
004f1ed3  898424d4000000            MOV dword ptr [ESP + 0xd4],EAX
004f1eda  56                        PUSH ESI
004f1edb  57                        PUSH EDI
004f1edc  8bf9                      MOV EDI,ECX
004f1ede  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004f1ee4  83f810                    CMP EAX,0x10
004f1ee7  0f87e60c0000              JA 0x004f2bd3
004f1eed  0fb680042c4f00            MOVZX EAX,byte ptr [EAX + 0x4f2c04]
004f1ef4  ff2485e82b4f00            JMP dword ptr [EAX*0x4 + 0x4f2be8]
004f2bd3  8b8c24dc000000            MOV ECX,dword ptr [ESP + 0xdc]
004f2bda  5f                        POP EDI
004f2bdb  5e                        POP ESI
004f2bdc  33cc                      XOR ECX,ESP
004f2bde  e848c55f00                CALL 0x00aef12b
004f2be3  8be5                      MOV ESP,EBP
004f2be5  5d                        POP EBP
004f2be6  c3                        RET
