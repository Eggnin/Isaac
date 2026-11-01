; J460 NPC AI 0x004a8b70 HELPER_Delirium_AttackIDDispatchA
; types=412
; identities=delirium.attack_id_dispatch
; entry=004a8b70
004a8b70  55                        PUSH EBP
004a8b71  8bec                      MOV EBP,ESP
004a8b73  81ec84010000              SUB ESP,0x184
004a8b79  a1b493bf00                MOV EAX,[0x00bf93b4]
004a8b7e  33c5                      XOR EAX,EBP
004a8b80  8945fc                    MOV dword ptr [EBP + -0x4],EAX
004a8b83  53                        PUSH EBX
004a8b84  56                        PUSH ESI
004a8b85  57                        PUSH EDI
004a8b86  8bf9                      MOV EDI,ECX
004a8b88  837f282d                  CMP dword ptr [EDI + 0x28],0x2d
004a8b8c  0f84840c0000              JZ 0x004a9816
004a8b92  83bfc80b000054            CMP dword ptr [EDI + 0xbc8],0x54
004a8b99  750d                      JNZ 0x004a8ba8
004a8b9b  83bfcc0b00000a            CMP dword ptr [EDI + 0xbcc],0xa
004a8ba2  0f846e0c0000              JZ 0x004a9816
004a8ba8  8b87d80b0000              MOV EAX,dword ptr [EDI + 0xbd8]
004a8bae  be0b000000                MOV ESI,0xb
004a8bb3  0fb6c8                    MOVZX ECX,AL
004a8bb6  8bd0                      MOV EDX,EAX
004a8bb8  898584feffff              MOV dword ptr [EBP + 0xfffffe84],EAX
004a8bbe  c1ad84feffff18            SHR dword ptr [EBP + 0xfffffe84],0x18
004a8bc5  c1e810                    SHR EAX,0x10
004a8bc8  c1ea08                    SHR EDX,0x8
004a8bcb  0fb6c0                    MOVZX EAX,AL
004a8bce  898580feffff              MOV dword ptr [EBP + 0xfffffe80],EAX
004a8bd4  0fb687dc0b0000            MOVZX EAX,byte ptr [EDI + 0xbdc]
004a8bdb  0fb6da                    MOVZX EBX,DL
004a8bde  8995c4feffff              MOV dword ptr [EBP + 0xfffffec4],EDX
004a8be4  898d88feffff              MOV dword ptr [EBP + 0xfffffe88],ECX
004a8bea  899da4feffff              MOV dword ptr [EBP + 0xfffffea4],EBX
004a8bf0  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
004a8bf6  81f9ff000000              CMP ECX,0xff
004a8bfc  7515                      JNZ 0x004a8c13
004a8bfe  e85d632400                CALL 0x006eef60
004a8c03  33d2                      XOR EDX,EDX
004a8c05  f7f6                      DIV ESI
004a8c07  899588feffff              MOV dword ptr [EBP + 0xfffffe88],EDX
004a8c0d  8b95c4feffff              MOV EDX,dword ptr [EBP + 0xfffffec4]
004a8c13  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a8c1b  0f57db                    XORPS XMM3,XMM3
004a8c1e  0f283d70b4ba00            MOVAPS XMM7,xmmword ptr [0x00bab470]
004a8c25  33c0                      XOR EAX,EAX
004a8c27  833d2c16c70002            CMP dword ptr [0x00c7162c],0x2
004a8c2e  0f28d1                    MOVAPS XMM2,XMM1
004a8c31  f30f102d08a7ba00          MOVSS XMM5,dword ptr [0x00baa708]
004a8c39  f30f119db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM3
004a8c41  f30f101d80a2ba00          MOVSS XMM3,dword ptr [0x00baa280]
004a8c49  8d7001                    LEA ESI,[EAX + 0x1]
004a8c4c  c785c0feffff06000000      MOV dword ptr [EBP + 0xfffffec0],0x6
004a8c56  c785a8feffff04000000      MOV dword ptr [EBP + 0xfffffea8],0x4
004a8c60  c78590feffff00004040      MOV dword ptr [EBP + 0xfffffe90],0x40400000
004a8c6a  c78594feffff00000000      MOV dword ptr [EBP + 0xfffffe94],0x0
004a8c74  c685cffeffff00            MOV byte ptr [EBP + 0xfffffecf],0x0
004a8c7b  c785a0feffff09000000      MOV dword ptr [EBP + 0xfffffea0],0x9
004a8c85  f30f118dacfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM1
004a8c8d  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004a8c95  f30f119db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM3
004a8c9d  f30f11958cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM2
004a8ca5  0f8caf000000              JL 0x004a8d5a
004a8cab  0f281d40b2ba00            MOVAPS XMM3,xmmword ptr [0x00bab240]
004a8cb2  33c9                      XOR ECX,ECX
004a8cb4  0f282550caba00            MOVAPS XMM4,xmmword ptr [0x00baca50]
004a8cbb  0f282d40b1ba00            MOVAPS XMM5,xmmword ptr [0x00bab140]
004a8cc2  660f6ef6                  MOVD XMM6,ESI
004a8cc6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
004a8cd0  660f6ec1                  MOVD XMM0,ECX
004a8cd4  8d4104                    LEA EAX,[ECX + 0x4]
004a8cd7  660f70c800                PSHUFD XMM1,XMM0,0x0
004a8cdc  660ffecb                  PADDD XMM1,XMM3
004a8ce0  0f5bc1                    CVTDQ2PS XMM0,XMM1
004a8ce3  660f3840cf                PMULLD XMM1,XMM7
004a8ce8  0f59c4                    MULPS XMM0,XMM4
004a8ceb  0f11848d78ffffff          MOVUPS xmmword ptr [EBP + ECX*0x4 + 0xffffff78],XMM0
004a8cf3  0f57c0                    XORPS XMM0,XMM0
004a8cf6  660f66c1                  PCMPGTD XMM0,XMM1
004a8cfa  660fdbc5                  PAND XMM0,XMM5
004a8cfe  660ffec1                  PADDD XMM0,XMM1
004a8d02  660fe2c6                  PSRAD XMM0,XMM6
004a8d06  0f11448db8                MOVUPS xmmword ptr [EBP + ECX*0x4 + -0x48],XMM0
004a8d0b  660f6ec0                  MOVD XMM0,EAX
004a8d0f  660f70c800                PSHUFD XMM1,XMM0,0x0
004a8d14  660ffecb                  PADDD XMM1,XMM3
004a8d18  0f5bc1                    CVTDQ2PS XMM0,XMM1
004a8d1b  660f3840cf                PMULLD XMM1,XMM7
004a8d20  0f59c4                    MULPS XMM0,XMM4
004a8d23  0f11448d88                MOVUPS xmmword ptr [EBP + ECX*0x4 + -0x78],XMM0
004a8d28  0f57c0                    XORPS XMM0,XMM0
004a8d2b  660f66c1                  PCMPGTD XMM0,XMM1
004a8d2f  660fdbc5                  PAND XMM0,XMM5
004a8d33  660ffec1                  PADDD XMM0,XMM1
004a8d37  660fe2c6                  PSRAD XMM0,XMM6
004a8d3b  0f11448dc8                MOVUPS xmmword ptr [EBP + ECX*0x4 + -0x38],XMM0
004a8d40  83c108                    ADD ECX,0x8
004a8d43  83f910                    CMP ECX,0x10
004a8d46  7c88                      JL 0x004a8cd0
004a8d48  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a8d50  f30f102d08a7ba00          MOVSS XMM5,dword ptr [0x00baa708]
004a8d58  eb27                      JMP 0x004a8d81
004a8d5a  33c9                      XOR ECX,ECX
004a8d5c  0f1f4000                  NOP dword ptr [EAX]
004a8d60  660f6ec0                  MOVD XMM0,EAX
004a8d64  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a8d67  894c85b8                  MOV dword ptr [EBP + EAX*0x4 + -0x48],ECX
004a8d6b  83c105                    ADD ECX,0x5
004a8d6e  f30f59c5                  MULSS XMM0,XMM5
004a8d72  f30f11848578ffffff        MOVSS dword ptr [EBP + EAX*0x4 + 0xffffff78],XMM0
004a8d7b  40                        INC EAX
004a8d7c  83f950                    CMP ECX,0x50
004a8d7f  7cdf                      JL 0x004a8d60
004a8d81  8b8588feffff              MOV EAX,dword ptr [EBP + 0xfffffe88]
004a8d87  0f57c0                    XORPS XMM0,XMM0
004a8d8a  660f138598feffff          MOVLPD qword ptr [EBP + 0xfffffe98],XMM0
004a8d92  b904000000                MOV ECX,0x4
004a8d97  83f80a                    CMP EAX,0xa
004a8d9a  0f878c050000              JA 0x004a932c
004a8da0  660f138598feffff          MOVLPD qword ptr [EBP + 0xfffffe98],XMM0
004a8da8  ff248528984a00            JMP dword ptr [EAX*0x4 + 0x4a9828]
004a8daf  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004a8db7  81fbff000000              CMP EBX,0xff
004a8dbd  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
004a8dc5  b802000000                MOV EAX,0x2
004a8dca  be12000000                MOV ESI,0x12
004a8dcf  c785c0feffff14000000      MOV dword ptr [EBP + 0xfffffec0],0x14
004a8dd9  c785a8feffff01000000      MOV dword ptr [EBP + 0xfffffea8],0x1
004a8de3  0f44d8                    CMOVZ EBX,EAX
004a8de6  c78590feffff00002040      MOV dword ptr [EBP + 0xfffffe90],0x40200000
004a8df0  c685cffeffff01            MOV byte ptr [EBP + 0xfffffecf],0x1
004a8df7  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004a8dff  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004a8e07  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
004a8e0f  f30f11958cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM2
004a8e17  c785b0feffff00000008      MOV dword ptr [EBP + 0xfffffeb0],0x8000000
004a8e21  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
004a8e2b  f30f1195acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM2
004a8e33  e950050000                JMP 0x004a9388
004a8e38  f30f101530a6ba00          MOVSS XMM2,dword ptr [0x00baa630]
004a8e40  be19000000                MOV ESI,0x19
004a8e45  f30f101deca6ba00          MOVSS XMM3,dword ptr [0x00baa6ec]
004a8e4d  c785c0feffff08000000      MOV dword ptr [EBP + 0xfffffec0],0x8
004a8e57  c785a8feffff01000000      MOV dword ptr [EBP + 0xfffffea8],0x1
004a8e61  c78590feffff00008040      MOV dword ptr [EBP + 0xfffffe90],0x40800000
004a8e6b  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
004a8e73  f30f119db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM3
004a8e7b  f30f1195b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM2
004a8e83  c785b0feffff02000000      MOV dword ptr [EBP + 0xfffffeb0],0x2
004a8e8d  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
004a8e97  e9ad040000                JMP 0x004a9349
004a8e9c  f30f1015c8a6ba00          MOVSS XMM2,dword ptr [0x00baa6c8]
004a8ea4  be05000000                MOV ESI,0x5
004a8ea9  c785c0feffff06000000      MOV dword ptr [EBP + 0xfffffec0],0x6
004a8eb3  c78590feffff00009040      MOV dword ptr [EBP + 0xfffffe90],0x40900000
004a8ebd  c785a8feffff01000000      MOV dword ptr [EBP + 0xfffffea8],0x1
004a8ec7  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004a8ece  c78578ffffffdb0fc93e      MOV dword ptr [EBP + 0xffffff78],0x3ec90fdb
004a8ed8  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
004a8ee0  f30f1195b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM2
004a8ee8  f30f1195b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM2
004a8ef0  c785b0feffff00008000      MOV dword ptr [EBP + 0xfffffeb0],0x800000
004a8efa  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
004a8f04  e940040000                JMP 0x004a9349
004a8f09  f30f102578a4ba00          MOVSS XMM4,dword ptr [0x00baa478]
004a8f11  33d2                      XOR EDX,EDX
004a8f13  f30f101d4ca5ba00          MOVSS XMM3,dword ptr [0x00baa54c]
004a8f1b  89b5c0feffff              MOV dword ptr [EBP + 0xfffffec0],ESI
004a8f21  33f6                      XOR ESI,ESI
004a8f23  c7857cfeffff19000000      MOV dword ptr [EBP + 0xfffffe7c],0x19
004a8f2d  33c9                      XOR ECX,ECX
004a8f2f  c78590feffff00008040      MOV dword ptr [EBP + 0xfffffe90],0x40800000
004a8f39  c785a8feffff0c000000      MOV dword ptr [EBP + 0xfffffea8],0xc
004a8f43  660f6ece                  MOVD XMM1,ESI
004a8f47  46                        INC ESI
004a8f48  0f5bc9                    CVTDQ2PS XMM1,XMM1
004a8f4b  89540db8                  MOV dword ptr [EBP + ECX*0x1 + -0x48],EDX
004a8f4f  89540dc4                  MOV dword ptr [EBP + ECX*0x1 + -0x3c],EDX
004a8f53  83c20a                    ADD EDX,0xa
004a8f56  8b440db8                  MOV EAX,dword ptr [EBP + ECX*0x1 + -0x48]
004a8f5a  89440dd0                  MOV dword ptr [EBP + ECX*0x1 + -0x30],EAX
004a8f5e  8b440db8                  MOV EAX,dword ptr [EBP + ECX*0x1 + -0x48]
004a8f62  f30f59cc                  MULSS XMM1,XMM4
004a8f66  89440ddc                  MOV dword ptr [EBP + ECX*0x1 + -0x24],EAX
004a8f6a  0f28c1                    MOVAPS XMM0,XMM1
004a8f6d  f30f118c0d78ffffff        MOVSS dword ptr [EBP + ECX*0x1 + 0xffffff78],XMM1
004a8f76  f30f58c5                  ADDSS XMM0,XMM5
004a8f7a  f30f58cb                  ADDSS XMM1,XMM3
004a8f7e  f30f11440d84              MOVSS dword ptr [EBP + ECX*0x1 + -0x7c],XMM0
004a8f84  f30f58c3                  ADDSS XMM0,XMM3
004a8f88  f30f114c0d90              MOVSS dword ptr [EBP + ECX*0x1 + -0x70],XMM1
004a8f8e  f30f11440d9c              MOVSS dword ptr [EBP + ECX*0x1 + -0x64],XMM0
004a8f94  83c104                    ADD ECX,0x4
004a8f97  83f90c                    CMP ECX,0xc
004a8f9a  7ca7                      JL 0x004a8f43
004a8f9c  80bdc4feffffff            CMP byte ptr [EBP + 0xfffffec4],0xff
004a8fa3  b803000000                MOV EAX,0x3
004a8fa8  f30f100d20a7ba00          MOVSS XMM1,dword ptr [0x00baa720]
004a8fb0  0f57c0                    XORPS XMM0,XMM0
004a8fb3  8bb57cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe7c]
004a8fb9  0f44d8                    CMOVZ EBX,EAX
004a8fbc  660f138598feffff          MOVLPD qword ptr [EBP + 0xfffffe98],XMM0
004a8fc4  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
004a8fca  8b8598feffff              MOV EAX,dword ptr [EBP + 0xfffffe98]
004a8fd0  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004a8fd8  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004a8fe0  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
004a8fe8  f30f1195acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM2
004a8ff0  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
004a8ff6  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
004a8ffc  e987030000                JMP 0x004a9388
004a9001  8b85c8feffff              MOV EAX,dword ptr [EBP + 0xfffffec8]
004a9007  be14000000                MOV ESI,0x14
004a900c  f30f100db4a6ba00          MOVSS XMM1,dword ptr [0x00baa6b4]
004a9014  83c003                    ADD EAX,0x3
004a9017  80faff                    CMP DL,0xff
004a901a  89b5c0feffff              MOV dword ptr [EBP + 0xfffffec0],ESI
004a9020  c785a8feffff01000000      MOV dword ptr [EBP + 0xfffffea8],0x1
004a902a  0f44d9                    CMOVZ EBX,ECX
004a902d  c78590feffff0000a040      MOV dword ptr [EBP + 0xfffffe90],0x40a00000
004a9037  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
004a903d  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004a9045  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004a904d  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
004a9055  899da4feffff              MOV dword ptr [EBP + 0xfffffea4],EBX
004a905b  c785b0feffff20000000      MOV dword ptr [EBP + 0xfffffeb0],0x20
004a9065  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
004a906f  f30f1195acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM2
004a9077  e918030000                JMP 0x004a9394
004a907c  8385c8feffff02            ADD dword ptr [EBP + 0xfffffec8],0x2
004a9083  b802000000                MOV EAX,0x2
004a9088  f30f100d34a7ba00          MOVSS XMM1,dword ptr [0x00baa734]
004a9090  80faff                    CMP DL,0xff
004a9093  f30f101598a6ba00          MOVSS XMM2,dword ptr [0x00baa698]
004a909b  be14000000                MOV ESI,0x14
004a90a0  c785c0feffff0a000000      MOV dword ptr [EBP + 0xfffffec0],0xa
004a90aa  0f44d8                    CMOVZ EBX,EAX
004a90ad  c785a8feffff01000000      MOV dword ptr [EBP + 0xfffffea8],0x1
004a90b7  c685cffeffff01            MOV byte ptr [EBP + 0xfffffecf],0x1
004a90be  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004a90c6  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004a90ce  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
004a90d6  f30f11958cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM2
004a90de  c785b0feffff00004000      MOV dword ptr [EBP + 0xfffffeb0],0x400000
004a90e8  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
004a90f2  f30f1195acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM2
004a90fa  e989020000                JMP 0x004a9388
004a90ff  f30f100d54a7ba00          MOVSS XMM1,dword ptr [0x00baa754]
004a9107  c785b0feffff00080000      MOV dword ptr [EBP + 0xfffffeb0],0x800
004a9111  b802000000                MOV EAX,0x2
004a9116  c78590feffff0000a040      MOV dword ptr [EBP + 0xfffffe90],0x40a00000
004a9120  c785c0feffff0e000000      MOV dword ptr [EBP + 0xfffffec0],0xe
004a912a  8d7017                    LEA ESI,[EAX + 0x17]
004a912d  80faff                    CMP DL,0xff
004a9130  c785a8feffff01000000      MOV dword ptr [EBP + 0xfffffea8],0x1
004a913a  0f28c2                    MOVAPS XMM0,XMM2
004a913d  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
004a9145  0f44d8                    CMOVZ EBX,EAX
004a9148  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004a9150  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
004a9158  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
004a9162  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
004a916a  e919020000                JMP 0x004a9388
004a916f  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
004a9177  c785b0feffff00100000      MOV dword ptr [EBP + 0xfffffeb0],0x1000
004a9181  eb8e                      JMP 0x004a9111
004a9183  018dc8feffff              ADD dword ptr [EBP + 0xfffffec8],ECX
004a9189  be0a000000                MOV ESI,0xa
004a918e  f30f100dc8a6ba00          MOVSS XMM1,dword ptr [0x00baa6c8]
004a9196  89b5c0feffff              MOV dword ptr [EBP + 0xfffffec0],ESI
004a919c  c78590feffff00008040      MOV dword ptr [EBP + 0xfffffe90],0x40800000
004a91a6  8d46f9                    LEA EAX,[ESI + -0x7]
004a91a9  c785b0feffff00002000      MOV dword ptr [EBP + 0xfffffeb0],0x200000
004a91b3  e975ffffff                JMP 0x004a912d
004a91b8  f30f1015c8a6ba00          MOVSS XMM2,dword ptr [0x00baa6c8]
004a91c0  be1e000000                MOV ESI,0x1e
004a91c5  8385c8feffff02            ADD dword ptr [EBP + 0xfffffec8],0x2
004a91cc  660f138598feffff          MOVLPD qword ptr [EBP + 0xfffffe98],XMM0
004a91d4  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
004a91da  c785c0feffff0e000000      MOV dword ptr [EBP + 0xfffffec0],0xe
004a91e4  c78590feffff00008040      MOV dword ptr [EBP + 0xfffffe90],0x40800000
004a91ee  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
004a91f6  f30f1195b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM2
004a91fe  f30f1195b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM2
004a9206  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
004a920c  e92c010000                JMP 0x004a933d
004a9211  8bcf                      MOV ECX,EDI
004a9213  c785a8feffff01000000      MOV dword ptr [EBP + 0xfffffea8],0x1
004a921d  be12000000                MOV ESI,0x12
004a9222  e819562100                CALL 0x006be840
004a9227  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004a922f  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004a9237  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004a923f  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004a9247  0f28c1                    MOVAPS XMM0,XMM1
004a924a  f30f118dacfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM1
004a9252  f30f59c1                  MULSS XMM0,XMM1
004a9256  0f28ca                    MOVAPS XMM1,XMM2
004a9259  f30f1195a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM2
004a9261  f30f59ca                  MULSS XMM1,XMM2
004a9265  f30f58c1                  ADDSS XMM0,XMM1
004a9269  e8e2c7f8ff                CALL 0x00435a50
004a926e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004a9275  f30f1095a0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea0]
004a927d  f30f109dacfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeac]
004a9285  7617                      JBE 0x004a929e
004a9287  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a928f  f30f5ec8                  DIVSS XMM1,XMM0
004a9293  0f28c1                    MOVAPS XMM0,XMM1
004a9296  f30f59d9                  MULSS XMM3,XMM1
004a929a  f30f59d0                  MULSS XMM2,XMM0
004a929e  f30f100534a7ba00          MOVSS XMM0,dword ptr [0x00baa734]
004a92a6  b804000000                MOV EAX,0x4
004a92ab  80bdc4feffffff            CMP byte ptr [EBP + 0xfffffec4],0xff
004a92b2  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
004a92ba  0f44d8                    CMOVZ EBX,EAX
004a92bd  c785a0feffff05000000      MOV dword ptr [EBP + 0xfffffea0],0x5
004a92c7  f30f591d5ca7ba00          MULSS XMM3,dword ptr [0x00baa75c]
004a92cf  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
004a92d7  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004a92df  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
004a92e7  0f57c0                    XORPS XMM0,XMM0
004a92ea  660f138598feffff          MOVLPD qword ptr [EBP + 0xfffffe98],XMM0
004a92f2  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
004a92fa  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
004a9300  8b8598feffff              MOV EAX,dword ptr [EBP + 0xfffffe98]
004a9306  f30f119590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM2
004a930e  f30f119d94feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM3
004a9316  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
004a931e  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
004a9324  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
004a932a  eb5c                      JMP 0x004a9388
004a932c  8b859cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe9c]
004a9332  be0a000000                MOV ESI,0xa
004a9337  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
004a933d  8b8598feffff              MOV EAX,dword ptr [EBP + 0xfffffe98]
004a9343  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
004a9349  c685cffeffff00            MOV byte ptr [EBP + 0xfffffecf],0x0
004a9350  c785a0feffff09000000      MOV dword ptr [EBP + 0xfffffea0],0x9
004a935a  f30f118d8cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM1
004a9362  81fbff000000              CMP EBX,0xff
004a9368  7524                      JNZ 0x004a938e
004a936a  bb01000000                MOV EBX,0x1
004a936f  c685cffeffff00            MOV byte ptr [EBP + 0xfffffecf],0x0
004a9376  c785a0feffff09000000      MOV dword ptr [EBP + 0xfffffea0],0x9
004a9380  f30f118d8cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM1
004a9388  899da4feffff              MOV dword ptr [EBP + 0xfffffea4],EBX
004a938e  8b85c8feffff              MOV EAX,dword ptr [EBP + 0xfffffec8]
004a9394  660f6ec0                  MOVD XMM0,EAX
004a9398  b904000000                MOV ECX,0x4
004a939d  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a93a0  817f289c010000            CMP dword ptr [EDI + 0x28],0x19c
004a93a7  ba01000000                MOV EDX,0x1
004a93ac  8b9dc0feffff              MOV EBX,dword ptr [EBP + 0xfffffec0]
004a93b2  0f44ca                    CMOVZ ECX,EDX
004a93b5  0fafce                    IMUL ECX,ESI
004a93b8  f30f5e05e4aaba00          DIVSS XMM0,dword ptr [0x00baaae4]
004a93c0  898d7cfeffff              MOV dword ptr [EBP + 0xfffffe7c],ECX
004a93c6  32c9                      XOR CL,CL
004a93c8  33f6                      XOR ESI,ESI
004a93ca  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
004a93d2  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
004a93da  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004a93e0  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
004a93e6  2b44b5b8                  SUB EAX,dword ptr [EBP + ESI*0x4 + -0x48]
004a93ea  99                        CDQ
004a93eb  f7bd7cfeffff              IDIV dword ptr [EBP + 0xfffffe7c]
004a93f1  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
004a93f7  85d2                      TEST EDX,EDX
004a93f9  0f85be020000              JNZ 0x004a96bd
004a93ff  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
004a9406  c685d0feffff01            MOV byte ptr [EBP + 0xfffffed0],0x1
004a940d  0f1185d4feffff            MOVUPS xmmword ptr [EBP + 0xfffffed4],XMM0
004a9414  c785e4feffff0000803f      MOV dword ptr [EBP + 0xfffffee4],0x3f800000
004a941e  e83d5b2400                CALL 0x006eef60
004a9423  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004a942b  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
004a9435  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
004a943f  660f6ec0                  MOVD XMM0,EAX
004a9443  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9447  c1e81f                    SHR EAX,0x1f
004a944a  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
004a9454  c78548ffffff00007ac4      MOV dword ptr [EBP + 0xffffff48],0xc47a0000
004a945e  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
004a9468  c78558ffffff00000000      MOV dword ptr [EBP + 0xffffff58],0x0
004a9472  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
004a947a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9483  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
004a948b  f30f118d40ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM1
004a9493  c7855cffffff1e000000      MOV dword ptr [EBP + 0xffffff5c],0x1e
004a949d  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004a94a7  660f5ac0                  CVTPD2PS XMM0,XMM0
004a94ab  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
004a94b5  c68568ffffff00            MOV byte ptr [EBP + 0xffffff68],0x0
004a94bc  c7856cffffff000080bf      MOV dword ptr [EBP + 0xffffff6c],0xbf800000
004a94c6  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
004a94d0  c68574ffffff00            MOV byte ptr [EBP + 0xffffff74],0x0
004a94d7  c785d4feffff0000a040      MOV dword ptr [EBP + 0xfffffed4],0x40a00000
004a94e1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a94e9  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
004a94f1  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004a94f9  0f280520c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac820]
004a9500  0f1185ecfeffff            MOVUPS xmmword ptr [EBP + 0xfffffeec],XMM0
004a9507  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004a950e  0f1185fcfeffff            MOVUPS xmmword ptr [EBP + 0xfffffefc],XMM0
004a9515  0f57c0                    XORPS XMM0,XMM0
004a9518  0f11850cffffff            MOVUPS xmmword ptr [EBP + 0xffffff0c],XMM0
004a951f  660f138528ffffff          MOVLPD qword ptr [EBP + 0xffffff28],XMM0
004a9527  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a952f  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
004a9537  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004a953f  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
004a9547  0f57c0                    XORPS XMM0,XMM0
004a954a  660f138550ffffff          MOVLPD qword ptr [EBP + 0xffffff50],XMM0
004a9552  e8095a2400                CALL 0x006eef60
004a9557  33d2                      XOR EDX,EDX
004a9559  c785dcfeffff8fc275bd      MOV dword ptr [EBP + 0xfffffedc],0xbd75c28f
004a9563  83c9ff                    OR ECX,0xffffffff
004a9566  c785d8feffffcdcc4cc0      MOV dword ptr [EBP + 0xfffffed8],0xc04ccccd
004a9570  f7f1                      DIV ECX
004a9572  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
004a9578  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
004a957e  0b85b0feffff              OR EAX,dword ptr [EBP + 0xfffffeb0]
004a9584  0b8dc4feffff              OR ECX,dword ptr [EBP + 0xfffffec4]
004a958a  660f6ec2                  MOVD XMM0,EDX
004a958e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9592  c1ea1f                    SHR EDX,0x1f
004a9595  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
004a959c  c78518ffffff0000803f      MOV dword ptr [EBP + 0xffffff18],0x3f800000
004a95a6  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
004a95ac  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
004a95b2  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004a95bb  8d973c030000              LEA EDX,[EDI + 0x33c]
004a95c1  660f5ac0                  CVTPD2PS XMM0,XMM0
004a95c5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a95cd  f30f580528a5ba00          ADDSS XMM0,dword ptr [0x00baa528]
004a95d5  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004a95dd  f30f1002                  MOVSS XMM0,dword ptr [EDX]
004a95e1  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004a95e9  f30f104204                MOVSS XMM0,dword ptr [EDX + 0x4]
004a95ee  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004a95f6  f30f10859cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe9c]
004a95fe  f30f5884b578ffffff        ADDSS XMM0,dword ptr [EBP + ESI*0x4 + 0xffffff78]
004a9607  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004a960f  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
004a9617  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004a961f  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
004a9627  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004a962f  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
004a9637  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004a963f  7449                      JZ 0x004a968a
004a9641  f685c0feffff01            TEST byte ptr [EBP + 0xfffffec0],0x1
004a9648  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
004a964e  7407                      JZ 0x004a9657
004a9650  0d00000400                OR EAX,0x40000
004a9655  eb2d                      JMP 0x004a9684
004a9657  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
004a965f  0d00000800                OR EAX,0x80000
004a9664  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004a966c  f30f1085acfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeac]
004a9674  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004a967c  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004a9684  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
004a968a  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
004a9690  83f809                    CMP EAX,0x9
004a9693  750f                      JNZ 0x004a96a4
004a9695  660f6ec3                  MOVD XMM0,EBX
004a9699  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a969c  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
004a96a4  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
004a96aa  51                        PUSH ECX
004a96ab  50                        PUSH EAX
004a96ac  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
004a96b2  8bcf                      MOV ECX,EDI
004a96b4  50                        PUSH EAX
004a96b5  52                        PUSH EDX
004a96b6  e8251c2200                CALL 0x006cb2e0
004a96bb  b101                      MOV CL,0x1
004a96bd  46                        INC ESI
004a96be  3bb5a8feffff              CMP ESI,dword ptr [EBP + 0xfffffea8]
004a96c4  0f8c16fdffff              JL 0x004a93e0
004a96ca  8b9da4feffff              MOV EBX,dword ptr [EBP + 0xfffffea4]
004a96d0  84c9                      TEST CL,CL
004a96d2  0f84e4000000              JZ 0x004a97bc
004a96d8  817f289c010000            CMP dword ptr [EDI + 0x28],0x19c
004a96df  7572                      JNZ 0x004a9753
004a96e1  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004a96e4  85f6                      TEST ESI,ESI
004a96e6  744a                      JZ 0x004a9732
004a96e8  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004a96ec  8bc6                      MOV EAX,ESI
004a96ee  7202                      JC 0x004a96f2
004a96f0  8b06                      MOV EAX,dword ptr [ESI]
004a96f2  b924e9b100                MOV ECX,0xb1e924
004a96f7  8a10                      MOV DL,byte ptr [EAX]
004a96f9  3a11                      CMP DL,byte ptr [ECX]
004a96fb  751a                      JNZ 0x004a9717
004a96fd  84d2                      TEST DL,DL
004a96ff  7412                      JZ 0x004a9713
004a9701  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a9704  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a9707  750e                      JNZ 0x004a9717
004a9709  83c002                    ADD EAX,0x2
004a970c  83c102                    ADD ECX,0x2
004a970f  84d2                      TEST DL,DL
004a9711  75e4                      JNZ 0x004a96f7
004a9713  33c0                      XOR EAX,EAX
004a9715  eb05                      JMP 0x004a971c
004a9717  1bc0                      SBB EAX,EAX
004a9719  83c801                    OR EAX,0x1
004a971c  85c0                      TEST EAX,EAX
004a971e  7512                      JNZ 0x004a9732
004a9720  384634                    CMP byte ptr [ESI + 0x34],AL
004a9723  742e                      JZ 0x004a9753
004a9725  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004a972b  8d7748                    LEA ESI,[EDI + 0x48]
004a972e  7523                      JNZ 0x004a9753
004a9730  eb03                      JMP 0x004a9735
004a9732  8d7748                    LEA ESI,[EDI + 0x48]
004a9735  6a01                      PUSH 0x1
004a9737  6824e9b100                PUSH 0xb1e924
004a973c  8bce                      MOV ECX,ESI
004a973e  e88d0ef6ff                CALL 0x0040a5d0
004a9743  84c0                      TEST AL,AL
004a9745  740c                      JZ 0x004a9753
004a9747  8d4e30                    LEA ECX,[ESI + 0x30]
004a974a  e8610af6ff                CALL 0x0040a1b0
004a974f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004a9753  4b                        DEC EBX
004a9754  85db                      TEST EBX,EBX
004a9756  7f64                      JG 0x004a97bc
004a9758  e803582400                CALL 0x006eef60
004a975d  33d2                      XOR EDX,EDX
004a975f  b964000000                MOV ECX,0x64
004a9764  f7f1                      DIV ECX
004a9766  8b8580feffff              MOV EAX,dword ptr [EBP + 0xfffffe80]
004a976c  3bd0                      CMP EDX,EAX
004a976e  7d0b                      JGE 0x004a977b
004a9770  83e80a                    SUB EAX,0xa
004a9773  898580feffff              MOV dword ptr [EBP + 0xfffffe80],EAX
004a9779  eb3c                      JMP 0x004a97b7
004a977b  8b9d88feffff              MOV EBX,dword ptr [EBP + 0xfffffe88]
004a9781  be0b000000                MOV ESI,0xb
004a9786  e8d5572400                CALL 0x006eef60
004a978b  33d2                      XOR EDX,EDX
004a978d  f7f6                      DIV ESI
004a978f  3bd3                      CMP EDX,EBX
004a9791  74f3                      JZ 0x004a9786
004a9793  899588feffff              MOV dword ptr [EBP + 0xfffffe88],EDX
004a9799  c78580feffff1e000000      MOV dword ptr [EBP + 0xfffffe80],0x1e
004a97a3  e8b8572400                CALL 0x006eef60
004a97a8  33d2                      XOR EDX,EDX
004a97aa  b9ff000000                MOV ECX,0xff
004a97af  f7f1                      DIV ECX
004a97b1  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
004a97b7  bbff000000                MOV EBX,0xff
004a97bc  8b85c8feffff              MOV EAX,dword ptr [EBP + 0xfffffec8]
004a97c2  33c9                      XOR ECX,ECX
004a97c4  0fb6d0                    MOVZX EDX,AL
004a97c7  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
004a97cd  0fa4d108                  SHLD ECX,EDX,0x8
004a97d1  40                        INC EAX
004a97d2  c1e208                    SHL EDX,0x8
004a97d5  0fb6c0                    MOVZX EAX,AL
004a97d8  0bd0                      OR EDX,EAX
004a97da  8b8580feffff              MOV EAX,dword ptr [EBP + 0xfffffe80]
004a97e0  0fa4d108                  SHLD ECX,EDX,0x8
004a97e4  0fb6c0                    MOVZX EAX,AL
004a97e7  c1e208                    SHL EDX,0x8
004a97ea  0bd0                      OR EDX,EAX
004a97ec  0fb6c3                    MOVZX EAX,BL
004a97ef  8b9d88feffff              MOV EBX,dword ptr [EBP + 0xfffffe88]
004a97f5  0fa4d108                  SHLD ECX,EDX,0x8
004a97f9  c1e208                    SHL EDX,0x8
004a97fc  0bd0                      OR EDX,EAX
004a97fe  0fb6c3                    MOVZX EAX,BL
004a9801  0fa4d108                  SHLD ECX,EDX,0x8
004a9805  c1e208                    SHL EDX,0x8
004a9808  0bd0                      OR EDX,EAX
004a980a  898fdc0b0000              MOV dword ptr [EDI + 0xbdc],ECX
004a9810  8997d80b0000              MOV dword ptr [EDI + 0xbd8],EDX
004a9816  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004a9819  5f                        POP EDI
004a981a  5e                        POP ESI
004a981b  33cd                      XOR ECX,EBP
004a981d  5b                        POP EBX
004a981e  e808596400                CALL 0x00aef12b
004a9823  8be5                      MOV ESP,EBP
004a9825  5d                        POP EBP
004a9826  c3                        RET
