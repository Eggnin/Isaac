; J460 NPC AI 0x0050a6b0 AI_0050a6b0
; types=77
; identities=77.0.0
; entry=0050a6b0
0050a6b0  55                        PUSH EBP
0050a6b1  8bec                      MOV EBP,ESP
0050a6b3  83ec0c                    SUB ESP,0xc
0050a6b6  53                        PUSH EBX
0050a6b7  56                        PUSH ESI
0050a6b8  57                        PUSH EDI
0050a6b9  8bf9                      MOV EDI,ECX
0050a6bb  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0050a6c2  7511                      JNZ 0x0050a6d5
0050a6c4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0050a6ce  5f                        POP EDI
0050a6cf  5e                        POP ESI
0050a6d0  5b                        POP EBX
0050a6d1  8be5                      MOV ESP,EBP
0050a6d3  5d                        POP EBP
0050a6d4  c3                        RET
0050a6d5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050a6dd  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050a6e5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050a6ed  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050a6f1  7411                      JZ 0x0050a704
0050a6f3  68bcdeb100                PUSH 0xb1debc
0050a6f8  8d4f78                    LEA ECX,[EDI + 0x78]
0050a6fb  e87007f0ff                CALL 0x0040ae70
0050a700  84c0                      TEST AL,AL
0050a702  756a                      JNZ 0x0050a76e
0050a704  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050a70a  2500080001                AND EAX,0x1000800
0050a70f  83c800                    OR EAX,0x0
0050a712  744d                      JZ 0x0050a761
0050a714  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050a71b  7544                      JNZ 0x0050a761
0050a71d  8bcf                      MOV ECX,EDI
0050a71f  e81c411b00                CALL 0x006be840
0050a724  6a00                      PUSH 0x0
0050a726  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0050a72c  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0050a732  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0050a735  8d45f8                    LEA EAX,[EBP + -0x8]
0050a738  894df8                    MOV dword ptr [EBP + -0x8],ECX
0050a73b  8d8f14040000              LEA ECX,[EDI + 0x414]
0050a741  50                        PUSH EAX
0050a742  e8f9a12d00                CALL 0x007e4940
0050a747  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050a74f  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050a757  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050a75f  eb0d                      JMP 0x0050a76e
0050a761  6a00                      PUSH 0x0
0050a763  8d8f14040000              LEA ECX,[EDI + 0x414]
0050a769  e892bb2d00                CALL 0x007e6300
0050a76e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050a772  8d7778                    LEA ESI,[EDI + 0x78]
0050a775  0f8491000000              JZ 0x0050a80c
0050a77b  68bcdeb100                PUSH 0xb1debc
0050a780  8bce                      MOV ECX,ESI
0050a782  e84906f0ff                CALL 0x0040add0
0050a787  84c0                      TEST AL,AL
0050a789  7453                      JZ 0x0050a7de
0050a78b  51                        PUSH ECX
0050a78c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a793  6a00                      PUSH 0x0
0050a795  6a02                      PUSH 0x2
0050a797  e8c4471e00                CALL 0x006eef60
0050a79c  51                        PUSH ECX
0050a79d  8bcf                      MOV ECX,EDI
0050a79f  660f6ec0                  MOVD XMM0,EAX
0050a7a3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050a7a7  c1e81f                    SHR EAX,0x1f
0050a7aa  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050a7b3  660f5ac0                  CVTPD2PS XMM0,XMM0
0050a7b7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050a7bf  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0050a7c7  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
0050a7cf  f30f110424                MOVSS dword ptr [ESP],XMM0
0050a7d4  68cd000000                PUSH 0xcd
0050a7d9  e8c2c31c00                CALL 0x006d6ba0
0050a7de  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050a7e2  7428                      JZ 0x0050a80c
0050a7e4  68bcdeb100                PUSH 0xb1debc
0050a7e9  8bce                      MOV ECX,ESI
0050a7eb  e88006f0ff                CALL 0x0040ae70
0050a7f0  84c0                      TEST AL,AL
0050a7f2  7418                      JZ 0x0050a80c
0050a7f4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050a7fc  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0050a804  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050a80c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0050a80f  85f6                      TEST ESI,ESI
0050a811  7445                      JZ 0x0050a858
0050a813  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0050a817  8bc6                      MOV EAX,ESI
0050a819  7202                      JC 0x0050a81d
0050a81b  8b06                      MOV EAX,dword ptr [ESI]
0050a81d  b9440db600                MOV ECX,0xb60d44
0050a822  8a10                      MOV DL,byte ptr [EAX]
0050a824  3a11                      CMP DL,byte ptr [ECX]
0050a826  751a                      JNZ 0x0050a842
0050a828  84d2                      TEST DL,DL
0050a82a  7412                      JZ 0x0050a83e
0050a82c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050a82f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0050a832  750e                      JNZ 0x0050a842
0050a834  83c002                    ADD EAX,0x2
0050a837  83c102                    ADD ECX,0x2
0050a83a  84d2                      TEST DL,DL
0050a83c  75e4                      JNZ 0x0050a822
0050a83e  33c0                      XOR EAX,EAX
0050a840  eb05                      JMP 0x0050a847
0050a842  1bc0                      SBB EAX,EAX
0050a844  83c801                    OR EAX,0x1
0050a847  85c0                      TEST EAX,EAX
0050a849  750d                      JNZ 0x0050a858
0050a84b  384634                    CMP byte ptr [ESI + 0x34],AL
0050a84e  742a                      JZ 0x0050a87a
0050a850  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0050a856  7522                      JNZ 0x0050a87a
0050a858  6a01                      PUSH 0x1
0050a85a  68440db600                PUSH 0xb60d44
0050a85f  8d4f48                    LEA ECX,[EDI + 0x48]
0050a862  e869fdefff                CALL 0x0040a5d0
0050a867  84c0                      TEST AL,AL
0050a869  740f                      JZ 0x0050a87a
0050a86b  8d4f78                    LEA ECX,[EDI + 0x78]
0050a86e  e83df9efff                CALL 0x0040a1b0
0050a873  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0050a87a  0f57c0                    XORPS XMM0,XMM0
0050a87d  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
0050a884  0f97c0                    SETA AL
0050a887  888748010000              MOV byte ptr [EDI + 0x148],AL
0050a88d  5f                        POP EDI
0050a88e  5e                        POP ESI
0050a88f  5b                        POP EBX
0050a890  8be5                      MOV ESP,EBP
0050a892  5d                        POP EBP
0050a893  c3                        RET
