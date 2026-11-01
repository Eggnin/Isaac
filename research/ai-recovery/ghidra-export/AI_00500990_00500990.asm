; J460 NPC AI 0x00500990 AI_00500990
; types=825
; identities=825.0.0
; entry=00500990
00500990  55                        PUSH EBP
00500991  8bec                      MOV EBP,ESP
00500993  83e4f8                    AND ESP,0xfffffff8
00500996  a17816c700                MOV EAX,[0x00c71678]
0050099b  83ec4c                    SUB ESP,0x4c
0050099e  53                        PUSH EBX
0050099f  8b9800830100              MOV EBX,dword ptr [EAX + 0x18300]
005009a5  56                        PUSH ESI
005009a6  57                        PUSH EDI
005009a7  8bf9                      MOV EDI,ECX
005009a9  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005009af  83f806                    CMP EAX,0x6
005009b2  0f87ff040000              JA 0x00500eb7
005009b8  ff24854c0f5000            JMP dword ptr [EAX*0x4 + 0x500f4c]
00500eb7  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00500ebf  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00500ec6  9f                        LAHF
00500ec7  f6c444                    TEST AH,0x44
00500eca  7a15                      JP 0x00500ee1
00500ecc  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00500ed4  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00500edb  9f                        LAHF
00500edc  f6c444                    TEST AH,0x44
00500edf  7b40                      JNP 0x00500f21
00500ee1  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00500ee9  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00500ef1  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00500ef9  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00500f01  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00500f09  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00500f11  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00500f19  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00500f21  5f                        POP EDI
00500f22  5e                        POP ESI
00500f23  5b                        POP EBX
00500f24  8be5                      MOV ESP,EBP
00500f26  5d                        POP EBP
00500f27  c3                        RET
