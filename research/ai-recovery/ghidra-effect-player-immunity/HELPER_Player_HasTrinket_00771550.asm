; J460 NPC AI 0x00771550 HELPER_Player_HasTrinket
; types=1,1000
; identities=1.*,1000.*
; entry=00771550
00771550  55                        PUSH EBP
00771551  8bec                      MOV EBP,ESP
00771553  83e4f8                    AND ESP,0xfffffff8
00771556  51                        PUSH ECX
00771557  53                        PUSH EBX
00771558  56                        PUSH ESI
00771559  8bf1                      MOV ESI,ECX
0077155b  57                        PUSH EDI
0077155c  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
0077155f  8b86f82e0000              MOV EAX,dword ptr [ESI + 0x2ef8]
00771565  85c0                      TEST EAX,EAX
00771567  740d                      JZ 0x00771576
00771569  3bc7                      CMP EAX,EDI
0077156b  7509                      JNZ 0x00771576
0077156d  80bef02e000000            CMP byte ptr [ESI + 0x2ef0],0x0
00771574  7558                      JNZ 0x007715ce
00771576  807d0c00                  CMP byte ptr [EBP + 0xc],0x0
0077157a  745d                      JZ 0x007715d9
0077157c  6a00                      PUSH 0x0
0077157e  688b000000                PUSH 0x8b
00771583  bb01000000                MOV EBX,0x1
00771588  e853f1ffff                CALL 0x007706e0
0077158d  84c0                      TEST AL,AL
0077158f  7512                      JNZ 0x007715a3
00771591  6a00                      PUSH 0x0
00771593  68ca010000                PUSH 0x1ca
00771598  8bce                      MOV ECX,ESI
0077159a  e841f1ffff                CALL 0x007706e0
0077159f  84c0                      TEST AL,AL
007715a1  7405                      JZ 0x007715a8
007715a3  bb02000000                MOV EBX,0x2
007715a8  33c9                      XOR ECX,ECX
007715aa  8d96c0160000              LEA EDX,[ESI + 0x16c0]
007715b0  8b02                      MOV EAX,dword ptr [EDX]
007715b2  25ff7f0000                AND EAX,0x7fff
007715b7  3bc7                      CMP EAX,EDI
007715b9  7413                      JZ 0x007715ce
007715bb  41                        INC ECX
007715bc  83c204                    ADD EDX,0x4
007715bf  3bcb                      CMP ECX,EBX
007715c1  72ed                      JC 0x007715b0
007715c3  32c0                      XOR AL,AL
007715c5  5f                        POP EDI
007715c6  5e                        POP ESI
007715c7  5b                        POP EBX
007715c8  8be5                      MOV ESP,EBP
007715ca  5d                        POP EBP
007715cb  c20800                    RET 0x8
007715ce  b001                      MOV AL,0x1
007715d0  5f                        POP EDI
007715d1  5e                        POP ESI
007715d2  5b                        POP EBX
007715d3  8be5                      MOV ESP,EBP
007715d5  5d                        POP EBP
007715d6  c20800                    RET 0x8
007715d9  85c0                      TEST EAX,EAX
007715db  7422                      JZ 0x007715ff
007715dd  3bc7                      CMP EAX,EDI
007715df  751e                      JNZ 0x007715ff
007715e1  80bef02e000000            CMP byte ptr [ESI + 0x2ef0],0x0
007715e8  7515                      JNZ 0x007715ff
007715ea  57                        PUSH EDI
007715eb  e8f0a00500                CALL 0x007cb6e0
007715f0  83f801                    CMP EAX,0x1
007715f3  0f9fc0                    SETG AL
007715f6  5f                        POP EDI
007715f7  5e                        POP ESI
007715f8  5b                        POP EBX
007715f9  8be5                      MOV ESP,EBP
007715fb  5d                        POP EBP
007715fc  c20800                    RET 0x8
007715ff  57                        PUSH EDI
00771600  e8dba00500                CALL 0x007cb6e0
00771605  5f                        POP EDI
00771606  85c0                      TEST EAX,EAX
00771608  5e                        POP ESI
00771609  0f9fc0                    SETG AL
0077160c  5b                        POP EBX
0077160d  8be5                      MOV ESP,EBP
0077160f  5d                        POP EBP
00771610  c20800                    RET 0x8
