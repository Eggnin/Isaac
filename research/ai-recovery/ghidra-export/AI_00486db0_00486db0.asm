; J460 NPC AI 0x00486db0 AI_00486db0
; types=270
; identities=270.0.0
; entry=00486db0
00486db0  55                        PUSH EBP
00486db1  8bec                      MOV EBP,ESP
00486db3  6aff                      PUSH -0x1
00486db5  68cd2caf00                PUSH 0xaf2ccd
00486dba  64a100000000              MOV EAX,FS:[0x0]
00486dc0  50                        PUSH EAX
00486dc1  81ecdc000000              SUB ESP,0xdc
00486dc7  a1b493bf00                MOV EAX,[0x00bf93b4]
00486dcc  33c5                      XOR EAX,EBP
00486dce  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00486dd1  53                        PUSH EBX
00486dd2  56                        PUSH ESI
00486dd3  57                        PUSH EDI
00486dd4  50                        PUSH EAX
00486dd5  8d45f4                    LEA EAX,[EBP + -0xc]
00486dd8  64a300000000              MOV FS:[0x0],EAX
00486dde  8bf9                      MOV EDI,ECX
00486de0  89bd2cffffff              MOV dword ptr [EBP + 0xffffff2c],EDI
00486de6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00486dee  0f57c9                    XORPS XMM1,XMM1
00486df1  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00486df9  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00486e01  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00486e09  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00486e0e  0f2fc1                    COMISS XMM0,XMM1
00486e11  764b                      JBE 0x00486e5e
00486e13  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00486e16  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00486e19  7443                      JZ 0x00486e5e
00486e1b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00486e20  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00486e23  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
00486e26  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
00486e2c  8bca                      MOV ECX,EDX
00486e2e  83e104                    AND ECX,0x4
00486e31  83c900                    OR ECX,0x0
00486e34  7420                      JZ 0x00486e56
00486e36  83781001                  CMP dword ptr [EAX + 0x10],0x1
00486e3a  741a                      JZ 0x00486e56
00486e3c  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
00486e3f  83f901                    CMP ECX,0x1
00486e42  7412                      JZ 0x00486e56
00486e44  83f903                    CMP ECX,0x3
00486e47  740d                      JZ 0x00486e56
00486e49  81e200100000              AND EDX,0x1000
00486e4f  83ca00                    OR EDX,0x0
00486e52  7502                      JNZ 0x00486e56
00486e54  8910                      MOV dword ptr [EAX],EDX
00486e56  83c038                    ADD EAX,0x38
00486e59  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00486e5c  75c2                      JNZ 0x00486e20
00486e5e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00486e64  83f810                    CMP EAX,0x10
00486e67  0f8707090000              JA 0x00487774
00486e6d  0fb6808c784800            MOVZX EAX,byte ptr [EAX + 0x48788c]
00486e74  ff248570784800            JMP dword ptr [EAX*0x4 + 0x487870]
00487774  8b87b00b0000              MOV EAX,dword ptr [EDI + 0xbb0]
0048777a  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00487780  8b87b40b0000              MOV EAX,dword ptr [EDI + 0xbb4]
00487786  898740030000              MOV dword ptr [EDI + 0x340],EAX
0048778c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00487793  0f8eba000000              JLE 0x00487853
00487799  a17816c700                MOV EAX,[0x00c71678]
0048779e  6a00                      PUSH 0x0
004877a0  6a00                      PUSH 0x0
004877a2  6aff                      PUSH -0x1
004877a4  6aff                      PUSH -0x1
004877a6  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004877b0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004877b6  8d45e0                    LEA EAX,[EBP + -0x20]
004877b9  68e4000000                PUSH 0xe4
004877be  81c118120000              ADD ECX,0x1218
004877c4  50                        PUSH EAX
004877c5  e89637f9ff                CALL 0x0041af60
004877ca  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004877d1  33f6                      XOR ESI,ESI
004877d3  8b5de4                    MOV EBX,dword ptr [EBP + -0x1c]
004877d6  3975ec                    CMP dword ptr [EBP + -0x14],ESI
004877d9  7644                      JBE 0x0048781f
004877db  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004877e0  6a00                      PUSH 0x0
004877e2  68acd6c500                PUSH 0xc5d6ac
004877e7  68dcd5c500                PUSH 0xc5d5dc
004877ec  6a00                      PUSH 0x0
004877ee  ff34b3                    PUSH dword ptr [EBX + ESI*0x4]
004877f1  e8bb906600                CALL 0x00af08b1
004877f6  83c414                    ADD ESP,0x14
004877f9  85c0                      TEST EAX,EAX
004877fb  741c                      JZ 0x00487819
004877fd  81b81004000096000000      CMP dword ptr [EAX + 0x410],0x96
00487807  7d10                      JGE 0x00487819
00487809  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
00487813  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00487819  46                        INC ESI
0048781a  3b75ec                    CMP ESI,dword ptr [EBP + -0x14]
0048781d  72c1                      JC 0x004877e0
0048781f  807de000                  CMP byte ptr [EBP + -0x20],0x0
00487823  752e                      JNZ 0x00487853
00487825  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0048782b  85d2                      TEST EDX,EDX
0048782d  7405                      JZ 0x00487834
0048782f  83c230                    ADD EDX,0x30
00487832  eb05                      JMP 0x00487839
00487834  ba18f6c700                MOV EDX,0xc7f618
00487839  85db                      TEST EBX,EBX
0048783b  7416                      JZ 0x00487853
0048783d  8b43fc                    MOV EAX,dword ptr [EBX + -0x4]
00487840  8d4bfc                    LEA ECX,[EBX + -0x4]
00487843  2902                      SUB dword ptr [EDX],EAX
00487845  51                        PUSH ECX
00487846  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0048784a  ff15dc87b100              CALL dword ptr [0x00b187dc]
00487850  83c404                    ADD ESP,0x4
00487853  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00487856  64890d00000000            MOV dword ptr FS:[0x0],ECX
0048785d  59                        POP ECX
0048785e  5f                        POP EDI
0048785f  5e                        POP ESI
00487860  5b                        POP EBX
00487861  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00487864  33cd                      XOR ECX,EBP
00487866  e8c0786600                CALL 0x00aef12b
0048786b  8be5                      MOV ESP,EBP
0048786d  5d                        POP EBP
0048786e  c3                        RET
