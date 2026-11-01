; J460 NPC AI 0x0096fc70 HELPER_Laser_WallEndpoint
; types=7
; identities=7.*
; entry=0096fc70
0096fc70  55                        PUSH EBP
0096fc71  8bec                      MOV EBP,ESP
0096fc73  83e4f8                    AND ESP,0xfffffff8
0096fc76  51                        PUSH ECX
0096fc77  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
0096fc7f  53                        PUSH EBX
0096fc80  56                        PUSH ESI
0096fc81  57                        PUSH EDI
0096fc82  8bf9                      MOV EDI,ECX
0096fc84  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0096fc8a  2305dc48c300              AND EAX,dword ptr [0x00c348dc]
0096fc90  8bb728040000              MOV ESI,dword ptr [EDI + 0x428]
0096fc96  8bce                      MOV ECX,ESI
0096fc98  8b9730040000              MOV EDX,dword ptr [EDI + 0x430]
0096fc9e  8bda                      MOV EBX,EDX
0096fca0  230dd048c300              AND ECX,dword ptr [0x00c348d0]
0096fca6  231dd848c300              AND EBX,dword ptr [0x00c348d8]
0096fcac  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0096fcb0  8b872c040000              MOV EAX,dword ptr [EDI + 0x42c]
0096fcb6  2305d448c300              AND EAX,dword ptr [0x00c348d4]
0096fcbc  0bc8                      OR ECX,EAX
0096fcbe  7506                      JNZ 0x0096fcc6
0096fcc0  0b5c240c                  OR EBX,dword ptr [ESP + 0xc]
0096fcc4  7408                      JZ 0x0096fcce
0096fcc6  f30f100530aaba00          MOVSS XMM0,dword ptr [0x00baaa30]
0096fcce  a17816c700                MOV EAX,[0x00c71678]
0096fcd3  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0096fcd9  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0096fcdc  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
0096fcdf  c1e80f                    SHR EAX,0xf
0096fce2  a801                      TEST AL,0x1
0096fce4  7506                      JNZ 0x0096fcec
0096fce6  837f2c05                  CMP dword ptr [EDI + 0x2c],0x5
0096fcea  753e                      JNZ 0x0096fd2a
0096fcec  8b8f2c040000              MOV ECX,dword ptr [EDI + 0x42c]
0096fcf2  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0096fcf8  2335704bc300              AND ESI,dword ptr [0x00c34b70]
0096fcfe  230d744bc300              AND ECX,dword ptr [0x00c34b74]
0096fd04  2315784bc300              AND EDX,dword ptr [0x00c34b78]
0096fd0a  23057c4bc300              AND EAX,dword ptr [0x00c34b7c]
0096fd10  0bf1                      OR ESI,ECX
0096fd12  750e                      JNZ 0x0096fd22
0096fd14  0bd0                      OR EDX,EAX
0096fd16  750a                      JNZ 0x0096fd22
0096fd18  f30f1005d0acba00          MOVSS XMM0,dword ptr [0x00baacd0]
0096fd20  eb08                      JMP 0x0096fd2a
0096fd22  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
0096fd2a  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
0096fd2d  8d874c030000              LEA EAX,[EDI + 0x34c]
0096fd33  51                        PUSH ECX
0096fd34  f30f110424                MOVSS dword ptr [ESP],XMM0
0096fd39  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
0096fd3f  50                        PUSH EAX
0096fd40  ff7510                    PUSH dword ptr [EBP + 0x10]
0096fd43  ff750c                    PUSH dword ptr [EBP + 0xc]
0096fd46  56                        PUSH ESI
0096fd47  e814000000                CALL 0x0096fd60
0096fd4c  83c418                    ADD ESP,0x18
0096fd4f  8bc6                      MOV EAX,ESI
0096fd51  5f                        POP EDI
0096fd52  5e                        POP ESI
0096fd53  5b                        POP EBX
0096fd54  8be5                      MOV ESP,EBP
0096fd56  5d                        POP EBP
0096fd57  c20c00                    RET 0xc
