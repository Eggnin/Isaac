; J460 NPC AI 0x004bd2a0 AI_004bd2a0
; types=920
; identities=920.0.0
; entry=004bd2a0
004bd2a0  55                        PUSH EBP
004bd2a1  8bec                      MOV EBP,ESP
004bd2a3  83e4f8                    AND ESP,0xfffffff8
004bd2a6  81ecf8000000              SUB ESP,0xf8
004bd2ac  a1b493bf00                MOV EAX,[0x00bf93b4]
004bd2b1  33c4                      XOR EAX,ESP
004bd2b3  898424f4000000            MOV dword ptr [ESP + 0xf4],EAX
004bd2ba  a17816c700                MOV EAX,[0x00c71678]
004bd2bf  56                        PUSH ESI
004bd2c0  57                        PUSH EDI
004bd2c1  8bf9                      MOV EDI,ECX
004bd2c3  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
004bd2c9  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004bd2d1  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004bd2d9  2bc8                      SUB ECX,EAX
004bd2db  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
004bd2e2  894c2414                  MOV dword ptr [ESP + 0x14],ECX
004bd2e6  0f859a000000              JNZ 0x004bd386
004bd2ec  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004bd2ef  0f57c9                    XORPS XMM1,XMM1
004bd2f2  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004bd2f5  746a                      JZ 0x004bd361
004bd2f7  f6403003                  TEST byte ptr [EAX + 0x30],0x3
004bd2fb  755c                      JNZ 0x004bd359
004bd2fd  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
004bd300  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
004bd303  894c240c                  MOV dword ptr [ESP + 0xc],ECX
004bd307  8bca                      MOV ECX,EDX
004bd309  83e104                    AND ECX,0x4
004bd30c  83c900                    OR ECX,0x0
004bd30f  740c                      JZ 0x004bd31d
004bd311  83781801                  CMP dword ptr [EAX + 0x18],0x1
004bd315  7406                      JZ 0x004bd31d
004bd317  83781001                  CMP dword ptr [EAX + 0x10],0x1
004bd31b  7528                      JNZ 0x004bd345
004bd31d  83e208                    AND EDX,0x8
004bd320  83ca00                    OR EDX,0x0
004bd323  7408                      JZ 0x004bd32d
004bd325  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
004bd328  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
004bd32b  7418                      JZ 0x004bd345
004bd32d  817810e8030000            CMP dword ptr [EAX + 0x10],0x3e8
004bd334  7523                      JNZ 0x004bd359
004bd336  81781493000000            CMP dword ptr [EAX + 0x14],0x93
004bd33d  751a                      JNZ 0x004bd359
004bd33f  83781801                  CMP dword ptr [EAX + 0x18],0x1
004bd343  7414                      JZ 0x004bd359
004bd345  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004bd34a  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
004bd34e  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
004bd353  c70000000000              MOV dword ptr [EAX],0x0
004bd359  83c038                    ADD EAX,0x38
004bd35c  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004bd35f  7596                      JNZ 0x004bd2f7
004bd361  0f2f4f14                  COMISS XMM1,dword ptr [EDI + 0x14]
004bd365  0f8651120000              JBE 0x004be5bc
004bd36b  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
004bd372  5f                        POP EDI
004bd373  5e                        POP ESI
004bd374  8b8c24f4000000            MOV ECX,dword ptr [ESP + 0xf4]
004bd37b  33cc                      XOR ECX,ESP
004bd37d  e8a91d6300                CALL 0x00aef12b
004bd382  8be5                      MOV ESP,EBP
004bd384  5d                        POP EBP
004bd385  c3                        RET
004bd386  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004bd38c  83f80d                    CMP EAX,0xd
004bd38f  0f878e110000              JA 0x004be523
004bd395  ff2485d0e54b00            JMP dword ptr [EAX*0x4 + 0x4be5d0]
004be523  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004be52a  0f848c000000              JZ 0x004be5bc
004be530  33f6                      XOR ESI,ESI
004be532  e8290a2300                CALL 0x006eef60
004be537  660f6ec0                  MOVD XMM0,EAX
004be53b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004be53f  c1e81f                    SHR EAX,0x1f
004be542  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004be54b  660f5ac0                  CVTPD2PS XMM0,XMM0
004be54f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004be557  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004be55f  f30f58c0                  ADDSS XMM0,XMM0
004be563  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
004be569  e8d2eff5ff                CALL 0x0041d540
004be56e  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004be576  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004be57e  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
004be584  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
004be58a  e891eff5ff                CALL 0x0041d520
004be58f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004be597  8d442408                  LEA EAX,[ESP + 0x8]
004be59b  50                        PUSH EAX
004be59c  56                        PUSH ESI
004be59d  8bcf                      MOV ECX,EDI
004be59f  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004be5a7  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
004be5ad  e80ee3ffff                CALL 0x004bc8c0
004be5b2  46                        INC ESI
004be5b3  83fe03                    CMP ESI,0x3
004be5b6  0f8276ffffff              JC 0x004be532
004be5bc  8b8c24fc000000            MOV ECX,dword ptr [ESP + 0xfc]
004be5c3  5f                        POP EDI
004be5c4  5e                        POP ESI
004be5c5  33cc                      XOR ECX,ESP
004be5c7  e85f0b6300                CALL 0x00aef12b
004be5cc  8be5                      MOV ESP,EBP
004be5ce  5d                        POP EBP
004be5cf  c3                        RET
