; J460 NPC AI 0x00500f70 AI_00500f70
; types=826
; identities=826.0.0
; entry=00500f70
00500f70  55                        PUSH EBP
00500f71  8bec                      MOV EBP,ESP
00500f73  83e4f8                    AND ESP,0xfffffff8
00500f76  81ec30010000              SUB ESP,0x130
00500f7c  a1b493bf00                MOV EAX,[0x00bf93b4]
00500f81  33c4                      XOR EAX,ESP
00500f83  8984242c010000            MOV dword ptr [ESP + 0x12c],EAX
00500f8a  a17816c700                MOV EAX,[0x00c71678]
00500f8f  56                        PUSH ESI
00500f90  57                        PUSH EDI
00500f91  8bf9                      MOV EDI,ECX
00500f93  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00500f99  89442410                  MOV dword ptr [ESP + 0x10],EAX
00500f9d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00500fa5  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
00500fad  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00500fb3  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00500fbb  83f810                    CMP EAX,0x10
00500fbe  0f874e0d0000              JA 0x00501d12
00500fc4  0fb680f41d5000            MOVZX EAX,byte ptr [EAX + 0x501df4]
00500fcb  ff2485dc1d5000            JMP dword ptr [EAX*0x4 + 0x501ddc]
00501d12  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00501d15  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
00501d18  3bc2                      CMP EAX,EDX
00501d1a  7441                      JZ 0x00501d5d
00501d1c  f30f100dbca6ba00          MOVSS XMM1,dword ptr [0x00baa6bc]
00501d24  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00501d27  81e104000001              AND ECX,0x1000004
00501d2d  83c900                    OR ECX,0x0
00501d30  7424                      JZ 0x00501d56
00501d32  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00501d37  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
00501d3b  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
00501d40  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00501d44  f30f59c1                  MULSS XMM0,XMM1
00501d48  f30f1100                  MOVSS dword ptr [EAX],XMM0
00501d4c  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
00501d51  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
00501d56  83c038                    ADD EAX,0x38
00501d59  3bc2                      CMP EAX,EDX
00501d5b  75c7                      JNZ 0x00501d24
00501d5d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00501d64  7446                      JZ 0x00501dac
00501d66  e8f5d11e00                CALL 0x006eef60
00501d6b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00501d71  8d973c030000              LEA EDX,[EDI + 0x33c]
00501d77  6a00                      PUSH 0x0
00501d79  50                        PUSH EAX
00501d7a  6a00                      PUSH 0x0
00501d7c  6a00                      PUSH 0x0
00501d7e  6840b6c700                PUSH 0xc7b640
00501d83  52                        PUSH EDX
00501d84  6a00                      PUSH 0x0
00501d86  68d9000000                PUSH 0xd9
00501d8b  e880c61f00                CALL 0x006fe410
00501d90  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
00501d98  f30f58c0                  ADDSS XMM0,XMM0
00501d9c  f30f118084030000          MOVSS dword ptr [EAX + 0x384],XMM0
00501da4  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
00501dac  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00501db3  7413                      JZ 0x00501dc8
00501db5  0f57c0                    XORPS XMM0,XMM0
00501db8  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
00501dbf  0f97c0                    SETA AL
00501dc2  888748010000              MOV byte ptr [EDI + 0x148],AL
00501dc8  8b8c2434010000            MOV ECX,dword ptr [ESP + 0x134]
00501dcf  5f                        POP EDI
00501dd0  5e                        POP ESI
00501dd1  33cc                      XOR ECX,ESP
00501dd3  e853d35e00                CALL 0x00aef12b
00501dd8  8be5                      MOV ESP,EBP
00501dda  5d                        POP EBP
00501ddb  c3                        RET
