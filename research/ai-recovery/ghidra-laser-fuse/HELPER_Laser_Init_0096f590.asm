; J460 NPC AI 0x0096f590 HELPER_Laser_Init
; types=7
; identities=7.*
; entry=0096f590
0096f590  55                        PUSH EBP
0096f591  8bec                      MOV EBP,ESP
0096f593  83e4f8                    AND ESP,0xfffffff8
0096f596  51                        PUSH ECX
0096f597  53                        PUSH EBX
0096f598  56                        PUSH ESI
0096f599  57                        PUSH EDI
0096f59a  ff7514                    PUSH dword ptr [EBP + 0x14]
0096f59d  8bf9                      MOV EDI,ECX
0096f59f  ff7510                    PUSH dword ptr [EBP + 0x10]
0096f5a2  ff750c                    PUSH dword ptr [EBP + 0xc]
0096f5a5  ff7508                    PUSH dword ptr [EBP + 0x8]
0096f5a8  e8f39dd3ff                CALL 0x006a93a0
0096f5ad  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0096f5b3  85c0                      TEST EAX,EAX
0096f5b5  0f848d000000              JZ 0x0096f648
0096f5bb  6a01                      PUSH 0x1
0096f5bd  83c074                    ADD EAX,0x74
0096f5c0  8d4f48                    LEA ECX,[EDI + 0x48]
0096f5c3  50                        PUSH EAX
0096f5c4  e887c7a9ff                CALL 0x0040bd50
0096f5c9  837f7410                  CMP dword ptr [EDI + 0x74],0x10
0096f5cd  8d4f60                    LEA ECX,[EDI + 0x60]
0096f5d0  894c240c                  MOV dword ptr [ESP + 0xc],ECX
0096f5d4  7206                      JC 0x0096f5dc
0096f5d6  8b09                      MOV ECX,dword ptr [ECX]
0096f5d8  894c240c                  MOV dword ptr [ESP + 0xc],ECX
0096f5dc  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0096f5df  85f6                      TEST ESI,ESI
0096f5e1  7447                      JZ 0x0096f62a
0096f5e3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0096f5e7  8bc6                      MOV EAX,ESI
0096f5e9  7205                      JC 0x0096f5f0
0096f5eb  8b06                      MOV EAX,dword ptr [ESI]
0096f5ed  0f1f00                    NOP dword ptr [EAX]
0096f5f0  8a10                      MOV DL,byte ptr [EAX]
0096f5f2  3a11                      CMP DL,byte ptr [ECX]
0096f5f4  751a                      JNZ 0x0096f610
0096f5f6  84d2                      TEST DL,DL
0096f5f8  7412                      JZ 0x0096f60c
0096f5fa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0096f5fd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0096f600  750e                      JNZ 0x0096f610
0096f602  83c002                    ADD EAX,0x2
0096f605  83c102                    ADD ECX,0x2
0096f608  84d2                      TEST DL,DL
0096f60a  75e4                      JNZ 0x0096f5f0
0096f60c  33c0                      XOR EAX,EAX
0096f60e  eb05                      JMP 0x0096f615
0096f610  1bc0                      SBB EAX,EAX
0096f612  83c801                    OR EAX,0x1
0096f615  85c0                      TEST EAX,EAX
0096f617  750d                      JNZ 0x0096f626
0096f619  384634                    CMP byte ptr [ESI + 0x34],AL
0096f61c  742a                      JZ 0x0096f648
0096f61e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0096f624  7522                      JNZ 0x0096f648
0096f626  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
0096f62a  6a01                      PUSH 0x1
0096f62c  51                        PUSH ECX
0096f62d  8d4f48                    LEA ECX,[EDI + 0x48]
0096f630  e89bafa9ff                CALL 0x0040a5d0
0096f635  84c0                      TEST AL,AL
0096f637  740f                      JZ 0x0096f648
0096f639  8d4f78                    LEA ECX,[EDI + 0x78]
0096f63c  e86faba9ff                CALL 0x0040a1b0
0096f641  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0096f648  66c787170500000000        MOV word ptr [EDI + 0x517],0x0
0096f651  c7871c0500000000803f      MOV dword ptr [EDI + 0x51c],0x3f800000
0096f65b  c7874005000000000000      MOV dword ptr [EDI + 0x540],0x0
0096f665  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0096f66d  f30f118710040000          MOVSS dword ptr [EDI + 0x410],XMM0
0096f675  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0096f67d  f30f118714040000          MOVSS dword ptr [EDI + 0x414],XMM0
0096f685  c787e00400000000803f      MOV dword ptr [EDI + 0x4e0],0x3f800000
0096f68f  c7871c04000000000000      MOV dword ptr [EDI + 0x41c],0x0
0096f699  c7871804000000000000      MOV dword ptr [EDI + 0x418],0x0
0096f6a3  c7872004000000000000      MOV dword ptr [EDI + 0x420],0x0
0096f6ad  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
0096f6b7  c7872804000000000000      MOV dword ptr [EDI + 0x428],0x0
0096f6c1  c7872c04000000000000      MOV dword ptr [EDI + 0x42c],0x0
0096f6cb  c7873004000000000000      MOV dword ptr [EDI + 0x430],0x0
0096f6d5  c7873404000000000000      MOV dword ptr [EDI + 0x434],0x0
0096f6df  c7873804000000000000      MOV dword ptr [EDI + 0x438],0x0
0096f6e9  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
0096f6f3  c7874004000000000000      MOV dword ptr [EDI + 0x440],0x0
0096f6fd  c7874404000000000000      MOV dword ptr [EDI + 0x444],0x0
0096f707  c7874804000000000000      MOV dword ptr [EDI + 0x448],0x0
0096f711  c7874c04000000000000      MOV dword ptr [EDI + 0x44c],0x0
0096f71b  c7875004000000000000      MOV dword ptr [EDI + 0x450],0x0
0096f725  c7875404000000000000      MOV dword ptr [EDI + 0x454],0x0
0096f72f  c787fc04000000000000      MOV dword ptr [EDI + 0x4fc],0x0
0096f739  c787f804000000000000      MOV dword ptr [EDI + 0x4f8],0x0
0096f743  c7875804000000000000      MOV dword ptr [EDI + 0x458],0x0
0096f74d  66c7875c04000001ff        MOV word ptr [EDI + 0x45c],0xff01
0096f756  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0096f760  c7876004000000000000      MOV dword ptr [EDI + 0x460],0x0
0096f76a  c787b804000000000000      MOV dword ptr [EDI + 0x4b8],0x0
0096f774  c6875e04000000            MOV byte ptr [EDI + 0x45e],0x0
0096f77b  c687c004000000            MOV byte ptr [EDI + 0x4c0],0x0
0096f782  c787d404000000000000      MOV dword ptr [EDI + 0x4d4],0x0
0096f78c  c787d004000000000000      MOV dword ptr [EDI + 0x4d0],0x0
0096f796  c787bc0400000000a042      MOV dword ptr [EDI + 0x4bc],0x42a00000
0096f7a0  c687e404000000            MOV byte ptr [EDI + 0x4e4],0x0
0096f7a7  c787e804000000000000      MOV dword ptr [EDI + 0x4e8],0x0
0096f7b1  c6870005000000            MOV byte ptr [EDI + 0x500],0x0
0096f7b8  66c787140500000000        MOV word ptr [EDI + 0x514],0x0
0096f7c1  c787f004000000000000      MOV dword ptr [EDI + 0x4f0],0x0
0096f7cb  c787ec04000000000000      MOV dword ptr [EDI + 0x4ec],0x0
0096f7d5  c7870405000000000000      MOV dword ptr [EDI + 0x504],0x0
0096f7df  c7870805000000000000      MOV dword ptr [EDI + 0x508],0x0
0096f7e9  c7870c05000000000000      MOV dword ptr [EDI + 0x50c],0x0
0096f7f3  c7871005000000000000      MOV dword ptr [EDI + 0x510],0x0
0096f7fd  8b8720050000              MOV EAX,dword ptr [EDI + 0x520]
0096f803  898724050000              MOV dword ptr [EDI + 0x524],EAX
0096f809  8b87ac040000              MOV EAX,dword ptr [EDI + 0x4ac]
0096f80f  8987b0040000              MOV dword ptr [EDI + 0x4b0],EAX
0096f815  8b8780040000              MOV EAX,dword ptr [EDI + 0x480]
0096f81b  898784040000              MOV dword ptr [EDI + 0x484],EAX
0096f821  8b8798040000              MOV EAX,dword ptr [EDI + 0x498]
0096f827  89879c040000              MOV dword ptr [EDI + 0x49c],EAX
0096f82d  8b878c040000              MOV EAX,dword ptr [EDI + 0x48c]
0096f833  57                        PUSH EDI
0096f834  898790040000              MOV dword ptr [EDI + 0x490],EAX
0096f83a  c787f404000000000000      MOV dword ptr [EDI + 0x4f4],0x0
0096f844  c787440500000000807f      MOV dword ptr [EDI + 0x544],0x7f800000
0096f84e  c787580500000000807f      MOV dword ptr [EDI + 0x558],0x7f800000
0096f858  c7875c05000000000000      MOV dword ptr [EDI + 0x55c],0x0
0096f862  c7876005000000000000      MOV dword ptr [EDI + 0x560],0x0
0096f86c  e86f1defff                CALL 0x008615e0
0096f871  5f                        POP EDI
0096f872  5e                        POP ESI
0096f873  5b                        POP EBX
0096f874  8be5                      MOV ESP,EBP
0096f876  5d                        POP EBP
0096f877  c21000                    RET 0x10
