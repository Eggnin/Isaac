; J460 NPC AI 0x005513a0 AI_005513a0
; types=857
; identities=857.0.0
; entry=005513a0
005513a0  55                        PUSH EBP
005513a1  8bec                      MOV EBP,ESP
005513a3  6aff                      PUSH -0x1
005513a5  68304baf00                PUSH 0xaf4b30
005513aa  64a100000000              MOV EAX,FS:[0x0]
005513b0  50                        PUSH EAX
005513b1  81ecbc010000              SUB ESP,0x1bc
005513b7  a1b493bf00                MOV EAX,[0x00bf93b4]
005513bc  33c5                      XOR EAX,EBP
005513be  8945f0                    MOV dword ptr [EBP + -0x10],EAX
005513c1  53                        PUSH EBX
005513c2  56                        PUSH ESI
005513c3  57                        PUSH EDI
005513c4  50                        PUSH EAX
005513c5  8d45f4                    LEA EAX,[EBP + -0xc]
005513c8  64a300000000              MOV FS:[0x0],EAX
005513ce  8bf9                      MOV EDI,ECX
005513d0  a17816c700                MOV EAX,[0x00c71678]
005513d5  f30f2c9fa4030000          CVTTSS2SI EBX,dword ptr [EDI + 0x3a4]
005513dd  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005513e3  898558feffff              MOV dword ptr [EBP + 0xfffffe58],EAX
005513e9  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005513f1  2bd8                      SUB EBX,EAX
005513f3  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005513f9  899d60feffff              MOV dword ptr [EBP + 0xfffffe60],EBX
005513ff  83f809                    CMP EAX,0x9
00551402  0f8791080000              JA 0x00551c99
00551408  ff2485041d5500            JMP dword ptr [EAX*0x4 + 0x551d04]
00551c99  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00551ca0  7446                      JZ 0x00551ce8
00551ca2  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
00551ca8  e883d2eeff                CALL 0x0043ef30
00551cad  8d85a0feffff              LEA EAX,[EBP + 0xfffffea0]
00551cb3  c78534ffffff0b000000      MOV dword ptr [EBP + 0xffffff34],0xb
00551cbd  50                        PUSH EAX
00551cbe  51                        PUSH ECX
00551cbf  c7042400002041            MOV dword ptr [ESP],0x41200000
00551cc6  8bcf                      MOV ECX,EDI
00551cc8  6840b6c700                PUSH 0xc7b640
00551ccd  6a04                      PUSH 0x4
00551ccf  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
00551cd9  c785fcfeffff00040000      MOV dword ptr [EBP + 0xfffffefc],0x400
00551ce3  e8e8b01700                CALL 0x006ccdd0
00551ce8  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00551ceb  64890d00000000            MOV dword ptr FS:[0x0],ECX
00551cf2  59                        POP ECX
00551cf3  5f                        POP EDI
00551cf4  5e                        POP ESI
00551cf5  5b                        POP EBX
00551cf6  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00551cf9  33cd                      XOR ECX,EBP
00551cfb  e82bd45900                CALL 0x00aef12b
00551d00  8be5                      MOV ESP,EBP
00551d02  5d                        POP EBP
00551d03  c3                        RET
