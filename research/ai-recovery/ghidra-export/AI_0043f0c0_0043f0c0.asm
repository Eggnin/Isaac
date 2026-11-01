; J460 NPC AI 0x0043f0c0 AI_0043f0c0
; types=908
; identities=908.0.0
; entry=0043f0c0
0043f0c0  55                        PUSH EBP
0043f0c1  8bec                      MOV EBP,ESP
0043f0c3  83e4f8                    AND ESP,0xfffffff8
0043f0c6  81ec80010000              SUB ESP,0x180
0043f0cc  a1b493bf00                MOV EAX,[0x00bf93b4]
0043f0d1  33c4                      XOR EAX,ESP
0043f0d3  8984247c010000            MOV dword ptr [ESP + 0x17c],EAX
0043f0da  a17816c700                MOV EAX,[0x00c71678]
0043f0df  56                        PUSH ESI
0043f0e0  57                        PUSH EDI
0043f0e1  8bf9                      MOV EDI,ECX
0043f0e3  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0043f0e9  897c2454                  MOV dword ptr [ESP + 0x54],EDI
0043f0ed  894c2408                  MOV dword ptr [ESP + 0x8],ECX
0043f0f1  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0043f0f7  83f810                    CMP EAX,0x10
0043f0fa  0f8772140000              JA 0x00440572
0043f100  0fb680cc054400            MOVZX EAX,byte ptr [EAX + 0x4405cc]
0043f107  ff2485b0054400            JMP dword ptr [EAX*0x4 + 0x4405b0]
00440572  8bf1                      MOV ESI,ECX
00440574  83bef073000000            CMP dword ptr [ESI + 0x73f0],0x0
0044057b  7e1f                      JLE 0x0044059c
0044057d  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00440582  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00440589  7611                      JBE 0x0044059c
0044058b  a17816c700                MOV EAX,[0x00c71678]
00440590  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00440596  8986f0730000              MOV dword ptr [ESI + 0x73f0],EAX
0044059c  8b8c2484010000            MOV ECX,dword ptr [ESP + 0x184]
004405a3  5f                        POP EDI
004405a4  5e                        POP ESI
004405a5  33cc                      XOR ECX,ESP
004405a7  e87feb6a00                CALL 0x00aef12b
004405ac  8be5                      MOV ESP,EBP
004405ae  5d                        POP EBP
004405af  c3                        RET
