; J460 NPC AI 0x007ea3e0 HELPER_Entity_TimeScale
; types=1
; identities=1.*
; entry=007ea3e0
007ea3e0  55                        PUSH EBP
007ea3e1  8bec                      MOV EBP,ESP
007ea3e3  83e4f8                    AND ESP,0xfffffff8
007ea3e6  83ec1c                    SUB ESP,0x1c
007ea3e9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
007ea3f1  53                        PUSH EBX
007ea3f2  56                        PUSH ESI
007ea3f3  8b750c                    MOV ESI,dword ptr [EBP + 0xc]
007ea3f6  894c2414                  MOV dword ptr [ESP + 0x14],ECX
007ea3fa  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
007ea400  57                        PUSH EDI
007ea401  85f6                      TEST ESI,ESI
007ea403  740a                      JZ 0x007ea40f
007ea405  837e2801                  CMP dword ptr [ESI + 0x28],0x1
007ea409  0f84ae000000              JZ 0x007ea4bd
007ea40f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007ea415  6a01                      PUSH 0x1
007ea417  81c1a8ba0100              ADD ECX,0x1baa8
007ea41d  51                        PUSH ECX
007ea41e  68e8000000                PUSH 0xe8
007ea423  e8583c1d00                CALL 0x009be080
007ea428  85c0                      TEST EAX,EAX
007ea42a  740e                      JZ 0x007ea43a
007ea42c  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
007ea434  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
007ea43a  8b1d7816c700              MOV EBX,dword ptr [0x00c71678]
007ea440  8d442414                  LEA EAX,[ESP + 0x14]
007ea444  50                        PUSH EAX
007ea445  8d442420                  LEA EAX,[ESP + 0x20]
007ea449  c74424184d000000          MOV dword ptr [ESP + 0x18],0x4d
007ea451  50                        PUSH EAX
007ea452  8d8bd8bb0100              LEA ECX,[EBX + 0x1bbd8]
007ea458  e843e4c3ff                CALL 0x004288a0
007ea45d  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
007ea461  80780d00                  CMP byte ptr [EAX + 0xd],0x0
007ea465  7556                      JNZ 0x007ea4bd
007ea467  8378104d                  CMP dword ptr [EAX + 0x10],0x4d
007ea46b  7f50                      JG 0x007ea4bd
007ea46d  3b83d8bb0100              CMP EAX,dword ptr [EBX + 0x1bbd8]
007ea473  7448                      JZ 0x007ea4bd
007ea475  6a00                      PUSH 0x0
007ea477  8bcb                      MOV ECX,EBX
007ea479  e8f2d3c2ff                CALL 0x00417870
007ea47e  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
007ea486  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
007ea48e  f30f59c0                  MULSS XMM0,XMM0
007ea492  f30f59c9                  MULSS XMM1,XMM1
007ea496  f30f58c1                  ADDSS XMM0,XMM1
007ea49a  e8b1b5c4ff                CALL 0x00435a50
007ea49f  f30f5e0560a7ba00          DIVSS XMM0,dword ptr [0x00baa760]
007ea4a7  f30f5f058ca0ba00          MAXSS XMM0,dword ptr [0x00baa08c]
007ea4af  f30f5d0598a5ba00          MINSS XMM0,dword ptr [0x00baa598]
007ea4b7  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
007ea4bd  e88eddf1ff                CALL 0x00708250
007ea4c2  33c9                      XOR ECX,ECX
007ea4c4  48                        DEC EAX
007ea4c5  85c0                      TEST EAX,EAX
007ea4c7  68a5020000                PUSH 0x2a5
007ea4cc  0f4fc8                    CMOVG ECX,EAX
007ea4cf  660f6ec1                  MOVD XMM0,ECX
007ea4d3  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
007ea4d7  0f5bc0                    CVTDQ2PS XMM0,XMM0
007ea4da  81c110730000              ADD ECX,0x7310
007ea4e0  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
007ea4e8  f30f58442414              ADDSS XMM0,dword ptr [ESP + 0x14]
007ea4ee  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
007ea4f4  e887641400                CALL 0x00930980
007ea4f9  8bf8                      MOV EDI,EAX
007ea4fb  85ff                      TEST EDI,EDI
007ea4fd  0f848e000000              JZ 0x007ea591
007ea503  85f6                      TEST ESI,ESI
007ea505  744f                      JZ 0x007ea556
007ea507  837e2801                  CMP dword ptr [ESI + 0x28],0x1
007ea50b  7549                      JNZ 0x007ea556
007ea50d  6a00                      PUSH 0x0
007ea50f  68a5020000                PUSH 0x2a5
007ea514  8bce                      MOV ECX,ESI
007ea516  e8c561f8ff                CALL 0x007706e0
007ea51b  84c0                      TEST AL,AL
007ea51d  7472                      JZ 0x007ea591
007ea51f  660f6e4f08                MOVD XMM1,dword ptr [EDI + 0x8]
007ea524  0f57c0                    XORPS XMM0,XMM0
007ea527  0f5bc9                    CVTDQ2PS XMM1,XMM1
007ea52a  f30f5cc8                  SUBSS XMM1,XMM0
007ea52e  f30f5e0db4a9ba00          DIVSS XMM1,dword ptr [0x00baa9b4]
007ea536  f30f5fc8                  MAXSS XMM1,XMM0
007ea53a  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
007ea540  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
007ea548  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
007ea550  f30f59c1                  MULSS XMM0,XMM1
007ea554  eb41                      JMP 0x007ea597
007ea556  660f6e4f08                MOVD XMM1,dword ptr [EDI + 0x8]
007ea55b  0f57c0                    XORPS XMM0,XMM0
007ea55e  0f5bc9                    CVTDQ2PS XMM1,XMM1
007ea561  f30f5cc8                  SUBSS XMM1,XMM0
007ea565  f30f5e0db4a9ba00          DIVSS XMM1,dword ptr [0x00baa9b4]
007ea56d  f30f5fc8                  MAXSS XMM1,XMM0
007ea571  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
007ea579  f30f5dc8                  MINSS XMM1,XMM0
007ea57d  f30f5cc1                  SUBSS XMM0,XMM1
007ea581  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
007ea587  f30f5f058ca0ba00          MAXSS XMM0,dword ptr [0x00baa08c]
007ea58f  eb06                      JMP 0x007ea597
007ea591  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
007ea597  a17816c700                MOV EAX,[0x00c71678]
007ea59c  83b88465020016            CMP dword ptr [EAX + 0x26584],0x16
007ea5a3  740f                      JZ 0x007ea5b4
007ea5a5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
007ea5ab  83b81012000002            CMP dword ptr [EAX + 0x1210],0x2
007ea5b2  7508                      JNZ 0x007ea5bc
007ea5b4  f30f590508a5ba00          MULSS XMM0,dword ptr [0x00baa508]
007ea5bc  5f                        POP EDI
007ea5bd  5e                        POP ESI
007ea5be  5b                        POP EBX
007ea5bf  8be5                      MOV ESP,EBP
007ea5c1  5d                        POP EBP
007ea5c2  c20800                    RET 0x8
