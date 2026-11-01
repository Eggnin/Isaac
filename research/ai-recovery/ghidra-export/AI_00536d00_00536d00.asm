; J460 NPC AI 0x00536d00 AI_00536d00
; types=216
; identities=216.0.0,216.1.0,216.10.0
; entry=00536d00
00536d00  55                        PUSH EBP
00536d01  8bec                      MOV EBP,ESP
00536d03  83e4f8                    AND ESP,0xfffffff8
00536d06  83ec38                    SUB ESP,0x38
00536d09  56                        PUSH ESI
00536d0a  57                        PUSH EDI
00536d0b  8bf9                      MOV EDI,ECX
00536d0d  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00536d14  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00536d17  0f8588020000              JNZ 0x00536fa5
00536d1d  83f901                    CMP ECX,0x1
00536d20  752d                      JNZ 0x00536d4f
00536d22  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00536d29  7524                      JNZ 0x00536d4f
00536d2b  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
00536d31  8bcf                      MOV ECX,EDI
00536d33  ff7730                    PUSH dword ptr [EDI + 0x30]
00536d36  6a00                      PUSH 0x0
00536d38  ff7728                    PUSH dword ptr [EDI + 0x28]
00536d3b  e8f0a11800                CALL 0x006c0f30
00536d40  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00536d46  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00536d49  898780030000              MOV dword ptr [EDI + 0x380],EAX
00536d4f  818f6801000000000400      OR dword ptr [EDI + 0x168],0x40000
00536d59  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00536d5f  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00536d69  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00536d6f  85c9                      TEST ECX,ECX
00536d71  0f85c4010000              JNZ 0x00536f3b
00536d77  51                        PUSH ECX
00536d78  6834d7b100                PUSH 0xb1d734
00536d7d  8d4f48                    LEA ECX,[EDI + 0x48]
00536d80  e8fb35edff                CALL 0x0040a380
00536d85  e8d6811b00                CALL 0x006eef60
00536d8a  6a00                      PUSH 0x0
00536d8c  50                        PUSH EAX
00536d8d  6a00                      PUSH 0x0
00536d8f  57                        PUSH EDI
00536d90  6840b6c700                PUSH 0xc7b640
00536d95  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00536d9b  51                        PUSH ECX
00536d9c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00536da2  6a01                      PUSH 0x1
00536da4  ff7728                    PUSH dword ptr [EDI + 0x28]
00536da7  e864761c00                CALL 0x006fe410
00536dac  8bf0                      MOV ESI,EAX
00536dae  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00536db4  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00536dba  89742410                  MOV dword ptr [ESP + 0x10],ESI
00536dbe  85c9                      TEST ECX,ECX
00536dc0  741a                      JZ 0x00536ddc
00536dc2  89442408                  MOV dword ptr [ESP + 0x8],EAX
00536dc6  81c1cc030000              ADD ECX,0x3cc
00536dcc  8d442408                  LEA EAX,[ESP + 0x8]
00536dd0  50                        PUSH EAX
00536dd1  e83a84f9ff                CALL 0x004cf210
00536dd6  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00536ddc  50                        PUSH EAX
00536ddd  8bcf                      MOV ECX,EDI
00536ddf  8938                      MOV dword ptr [EAX],EDI
00536de1  e80a6ff9ff                CALL 0x004cdcf0
00536de6  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00536dec  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00536df2  85c9                      TEST ECX,ECX
00536df4  741a                      JZ 0x00536e10
00536df6  89442408                  MOV dword ptr [ESP + 0x8],EAX
00536dfa  81c1cc030000              ADD ECX,0x3cc
00536e00  8d442408                  LEA EAX,[ESP + 0x8]
00536e04  50                        PUSH EAX
00536e05  e80684f9ff                CALL 0x004cf210
00536e0a  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00536e10  50                        PUSH EAX
00536e11  8bce                      MOV ECX,ESI
00536e13  8930                      MOV dword ptr [EAX],ESI
00536e15  e8d66ef9ff                CALL 0x004cdcf0
00536e1a  8b06                      MOV EAX,dword ptr [ESI]
00536e1c  8bce                      MOV ECX,ESI
00536e1e  ff500c                    CALL dword ptr [EAX + 0xc]
00536e21  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00536e29  0f1f8000000000            NOP dword ptr [EAX]
00536e30  e82b811b00                CALL 0x006eef60
00536e35  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00536e3b  6a00                      PUSH 0x0
00536e3d  50                        PUSH EAX
00536e3e  6a00                      PUSH 0x0
00536e40  57                        PUSH EDI
00536e41  6840b6c700                PUSH 0xc7b640
00536e46  8d873c030000              LEA EAX,[EDI + 0x33c]
00536e4c  50                        PUSH EAX
00536e4d  6a0a                      PUSH 0xa
00536e4f  ff7728                    PUSH dword ptr [EDI + 0x28]
00536e52  e8b9751c00                CALL 0x006fe410
00536e57  6a00                      PUSH 0x0
00536e59  68acd6c500                PUSH 0xc5d6ac
00536e5e  68dcd5c500                PUSH 0xc5d5dc
00536e63  6a00                      PUSH 0x0
00536e65  50                        PUSH EAX
00536e66  e8469a5b00                CALL 0x00af08b1
00536e6b  8bf0                      MOV ESI,EAX
00536e6d  83c414                    ADD ESP,0x14
00536e70  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00536e76  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00536e7c  85c9                      TEST ECX,ECX
00536e7e  741a                      JZ 0x00536e9a
00536e80  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00536e84  81c1cc030000              ADD ECX,0x3cc
00536e8a  8d44240c                  LEA EAX,[ESP + 0xc]
00536e8e  50                        PUSH EAX
00536e8f  e87c83f9ff                CALL 0x004cf210
00536e94  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00536e9a  50                        PUSH EAX
00536e9b  8bcf                      MOV ECX,EDI
00536e9d  8938                      MOV dword ptr [EAX],EDI
00536e9f  e84c6ef9ff                CALL 0x004cdcf0
00536ea4  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
00536eaa  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00536eb0  85c9                      TEST ECX,ECX
00536eb2  741a                      JZ 0x00536ece
00536eb4  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00536eb8  81c1cc030000              ADD ECX,0x3cc
00536ebe  8d44240c                  LEA EAX,[ESP + 0xc]
00536ec2  50                        PUSH EAX
00536ec3  e84883f9ff                CALL 0x004cf210
00536ec8  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00536ece  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
00536ed2  50                        PUSH EAX
00536ed3  8908                      MOV dword ptr [EAX],ECX
00536ed5  e8166ef9ff                CALL 0x004cdcf0
00536eda  660f6e442408              MOVD XMM0,dword ptr [ESP + 0x8]
00536ee0  8bce                      MOV ECX,ESI
00536ee2  0f5bc0                    CVTDQ2PS XMM0,XMM0
00536ee5  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00536eeb  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00536ef2  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00536ef8  8b06                      MOV EAX,dword ptr [ESI]
00536efa  f30f5e052ca8ba00          DIVSS XMM0,dword ptr [0x00baa82c]
00536f02  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
00536f0a  ff500c                    CALL dword ptr [EAX + 0xc]
00536f0d  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00536f13  818e6801000000000400      OR dword ptr [ESI + 0x168],0x40000
00536f1d  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00536f23  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00536f27  40                        INC EAX
00536f28  89442408                  MOV dword ptr [ESP + 0x8],EAX
00536f2c  83f80c                    CMP EAX,0xc
00536f2f  0f8cfbfeffff              JL 0x00536e30
00536f35  5f                        POP EDI
00536f36  5e                        POP ESI
00536f37  8be5                      MOV ESP,EBP
00536f39  5d                        POP EBP
00536f3a  c3                        RET
00536f3b  83f901                    CMP ECX,0x1
00536f3e  7529                      JNZ 0x00536f69
00536f40  6a00                      PUSH 0x0
00536f42  68d4feb500                PUSH 0xb5fed4
00536f47  8d4f48                    LEA ECX,[EDI + 0x48]
00536f4a  e83134edff                CALL 0x0040a380
00536f4f  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00536f59  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00536f63  5f                        POP EDI
00536f64  5e                        POP ESI
00536f65  8be5                      MOV ESP,EBP
00536f67  5d                        POP EBP
00536f68  c3                        RET
00536f69  83f90a                    CMP ECX,0xa
00536f6c  0f851e050000              JNZ 0x00537490
00536f72  6a00                      PUSH 0x0
00536f74  680cd2b100                PUSH 0xb1d20c
00536f79  8d4f48                    LEA ECX,[EDI + 0x48]
00536f7c  e8ff33edff                CALL 0x0040a380
00536f81  c787540300000cfeffff      MOV dword ptr [EDI + 0x354],0xfffffe0c
00536f8b  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00536f95  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00536f9f  5f                        POP EDI
00536fa0  5e                        POP ESI
00536fa1  8be5                      MOV ESP,EBP
00536fa3  5d                        POP EBP
00536fa4  c3                        RET
00536fa5  85c9                      TEST ECX,ECX
00536fa7  0f85a1010000              JNZ 0x0053714e
00536fad  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00536fb3  398fc0030000              CMP dword ptr [EDI + 0x3c0],ECX
00536fb9  0f8431010000              JZ 0x005370f0
00536fbf  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00536fc5  89442414                  MOV dword ptr [ESP + 0x14],EAX
00536fc9  8bc1                      MOV EAX,ECX
00536fcb  2500080001                AND EAX,0x1000800
00536fd0  c7876c0300003333333f      MOV dword ptr [EDI + 0x36c],0x3f333333
00536fda  83c800                    OR EAX,0x0
00536fdd  7459                      JZ 0x00537038
00536fdf  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00536fe6  7550                      JNZ 0x00537038
00536fe8  8bcf                      MOV ECX,EDI
00536fea  e851781800                CALL 0x006be840
00536fef  6a00                      PUSH 0x0
00536ff1  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00536ff7  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00536ffd  89442418                  MOV dword ptr [ESP + 0x18],EAX
00537001  8d442414                  LEA EAX,[ESP + 0x14]
00537005  894c2414                  MOV dword ptr [ESP + 0x14],ECX
00537009  8d8f14040000              LEA ECX,[EDI + 0x414]
0053700f  50                        PUSH EAX
00537010  e82bd92a00                CALL 0x007e4940
00537015  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0053701c  7e74                      JLE 0x00537092
0053701e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00537026  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0053702e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00537036  eb5a                      JMP 0x00537092
00537038  81e100020000              AND ECX,0x200
0053703e  83c900                    OR ECX,0x0
00537041  7418                      JZ 0x0053705b
00537043  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053704a  750f                      JNZ 0x0053705b
0053704c  6a00                      PUSH 0x0
0053704e  8d8f14040000              LEA ECX,[EDI + 0x414]
00537054  e8a7f22a00                CALL 0x007e6300
00537059  eb37                      JMP 0x00537092
0053705b  8bcf                      MOV ECX,EDI
0053705d  e8de771800                CALL 0x006be840
00537062  6a01                      PUSH 0x1
00537064  6a64                      PUSH 0x64
00537066  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0053706c  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00537072  51                        PUSH ECX
00537073  89442420                  MOV dword ptr [ESP + 0x20],EAX
00537077  8d44241c                  LEA EAX,[ESP + 0x1c]
0053707b  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
0053707f  8d8f14040000              LEA ECX,[EDI + 0x414]
00537085  c704240000803e            MOV dword ptr [ESP],0x3e800000
0053708c  50                        PUSH EAX
0053708d  e82ec32a00                CALL 0x007e33c0
00537092  e8c97e1b00                CALL 0x006eef60
00537097  33d2                      XOR EDX,EDX
00537099  b90a000000                MOV ECX,0xa
0053709e  f7f1                      DIV ECX
005370a0  85d2                      TEST EDX,EDX
005370a2  0f85e8030000              JNZ 0x00537490
005370a8  e8b37e1b00                CALL 0x006eef60
005370ad  51                        PUSH ECX
005370ae  8bcf                      MOV ECX,EDI
005370b0  660f6ec0                  MOVD XMM0,EAX
005370b4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005370b8  c1e81f                    SHR EAX,0x1f
005370bb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005370c4  660f5ac0                  CVTPD2PS XMM0,XMM0
005370c8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005370d0  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005370d8  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
005370e0  f30f110424                MOVSS dword ptr [ESP],XMM0
005370e5  e8e6f31700                CALL 0x006b64d0
005370ea  5f                        POP EDI
005370eb  5e                        POP ESI
005370ec  8be5                      MOV ESP,EBP
005370ee  5d                        POP EBP
005370ef  c3                        RET
005370f0  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
005370fa  8d4c2418                  LEA ECX,[ESP + 0x18]
005370fe  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00537104  e867ebefff                CALL 0x00435c70
00537109  8b17                      MOV EDX,dword ptr [EDI]
0053710b  8bcf                      MOV ECX,EDI
0053710d  50                        PUSH EAX
0053710e  ff5224                    CALL dword ptr [EDX + 0x24]
00537111  e84a7e1b00                CALL 0x006eef60
00537116  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053711c  6a00                      PUSH 0x0
0053711e  50                        PUSH EAX
0053711f  6a00                      PUSH 0x0
00537121  57                        PUSH EDI
00537122  6840b6c700                PUSH 0xc7b640
00537127  8d873c030000              LEA EAX,[EDI + 0x33c]
0053712d  50                        PUSH EAX
0053712e  6a00                      PUSH 0x0
00537130  6a18                      PUSH 0x18
00537132  e8d9721c00                CALL 0x006fe410
00537137  8bf0                      MOV ESI,EAX
00537139  8bce                      MOV ECX,ESI
0053713b  8b16                      MOV EDX,dword ptr [ESI]
0053713d  ff520c                    CALL dword ptr [EDX + 0xc]
00537140  56                        PUSH ESI
00537141  8bcf                      MOV ECX,EDI
00537143  e868171a00                CALL 0x006d88b0
00537148  5f                        POP EDI
00537149  5e                        POP ESI
0053714a  8be5                      MOV ESP,EBP
0053714c  5d                        POP EBP
0053714d  c3                        RET
0053714e  83f901                    CMP ECX,0x1
00537151  0f8555020000              JNZ 0x005373ac
00537157  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
0053715d  85f6                      TEST ESI,ESI
0053715f  0f84d9010000              JZ 0x0053733e
00537165  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0053716d  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00537175  f30f5e0d50a9ba00          DIVSS XMM1,dword ptr [0x00baa950]
0053717d  f30f588fbc0b0000          ADDSS XMM1,dword ptr [EDI + 0xbbc]
00537185  f30f5d0dd0a9ba00          MINSS XMM1,dword ptr [0x00baa9d0]
0053718d  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
00537195  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0053719d  0f5ac0                    CVTPS2PD XMM0,XMM0
005371a0  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
005371a6  e83c975b00                CALL 0x00af08e7
005371ab  f20f5ac0                  CVTSD2SS XMM0,XMM0
005371af  f30f59442408              MULSS XMM0,dword ptr [ESP + 0x8]
005371b5  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
005371bd  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005371c5  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
005371cb  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005371d3  0f5ac0                    CVTPS2PD XMM0,XMM0
005371d6  e82a975b00                CALL 0x00af0905
005371db  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
005371e1  8bcf                      MOV ECX,EDI
005371e3  f20f5ac0                  CVTSD2SS XMM0,XMM0
005371e7  f30f59442408              MULSS XMM0,dword ptr [ESP + 0x8]
005371ed  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
005371f5  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005371fd  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00537205  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053720d  e85e05f1ff                CALL 0x00447770
00537212  85c0                      TEST EAX,EAX
00537214  742f                      JZ 0x00537245
00537216  8d442410                  LEA EAX,[ESP + 0x10]
0053721a  0f57d2                    XORPS XMM2,XMM2
0053721d  50                        PUSH EAX
0053721e  8bcf                      MOV ECX,EDI
00537220  e87b131a00                CALL 0x006d85a0
00537225  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
0053722b  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00537233  f30f5f0d2cadba00          MAXSS XMM1,dword ptr [0x00baad2c]
0053723b  f30f5d0dd0a2ba00          MINSS XMM1,dword ptr [0x00baa2d0]
00537243  eb03                      JMP 0x00537248
00537245  0f57c9                    XORPS XMM1,XMM1
00537248  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
00537250  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
00537258  0f28c3                    MOVAPS XMM0,XMM3
0053725b  f30f5cc1                  SUBSS XMM0,XMM1
0053725f  0f28d4                    MOVAPS XMM2,XMM4
00537262  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
0053726a  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00537271  0f2fd0                    COMISS XMM2,XMM0
00537274  7315                      JNC 0x0053728b
00537276  0f2fcb                    COMISS XMM1,XMM3
00537279  7609                      JBE 0x00537284
0053727b  0f28ca                    MOVAPS XMM1,XMM2
0053727e  f30f58cb                  ADDSS XMM1,XMM3
00537282  eb07                      JMP 0x0053728b
00537284  0f28cb                    MOVAPS XMM1,XMM3
00537287  f30f5cca                  SUBSS XMM1,XMM2
0053728b  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
00537293  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
0053729b  f30f1015a8a7ba00          MOVSS XMM2,dword ptr [0x00baa7a8]
005372a3  f30f59cc                  MULSS XMM1,XMM4
005372a7  f30f590d08a7ba00          MULSS XMM1,dword ptr [0x00baa708]
005372af  f30f5e0d24a9ba00          DIVSS XMM1,dword ptr [0x00baa924]
005372b7  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
005372bf  0f2fca                    COMISS XMM1,XMM2
005372c2  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
005372ca  761d                      JBE 0x005372e9
005372cc  0f1f4000                  NOP dword ptr [EAX]
005372d0  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005372d8  f30f5cc2                  SUBSS XMM0,XMM2
005372dc  0f2fc2                    COMISS XMM0,XMM2
005372df  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005372e7  77e7                      JA 0x005372d0
005372e9  6a00                      PUSH 0x0
005372eb  6800020000                PUSH 0x200
005372f0  8bcf                      MOV ECX,EDI
005372f2  e83901eeff                CALL 0x00417430
005372f7  84c0                      TEST AL,AL
005372f9  0f849d000000              JZ 0x0053739c
005372ff  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00537305  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
0053730b  81896801000000020000      OR dword ptr [ECX + 0x168],0x200
00537315  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
0053731b  8bcf                      MOV ECX,EDI
0053731d  8bb728020000              MOV ESI,dword ptr [EDI + 0x228]
00537323  e84804f1ff                CALL 0x00447770
00537328  89b028020000              MOV dword ptr [EAX + 0x228],ESI
0053732e  c7876c0300003333333f      MOV dword ptr [EDI + 0x36c],0x3f333333
00537338  5f                        POP EDI
00537339  5e                        POP ESI
0053733a  8be5                      MOV ESP,EBP
0053733c  5d                        POP EBP
0053733d  c3                        RET
0053733e  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00537344  8d4c2418                  LEA ECX,[ESP + 0x18]
00537348  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
00537352  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00537358  e813e9efff                CALL 0x00435c70
0053735d  8b17                      MOV EDX,dword ptr [EDI]
0053735f  8bcf                      MOV ECX,EDI
00537361  50                        PUSH EAX
00537362  ff5224                    CALL dword ptr [EDX + 0x24]
00537365  e8f67b1b00                CALL 0x006eef60
0053736a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00537370  6a00                      PUSH 0x0
00537372  50                        PUSH EAX
00537373  6a00                      PUSH 0x0
00537375  57                        PUSH EDI
00537376  6840b6c700                PUSH 0xc7b640
0053737b  8d873c030000              LEA EAX,[EDI + 0x33c]
00537381  50                        PUSH EAX
00537382  6a00                      PUSH 0x0
00537384  6a1a                      PUSH 0x1a
00537386  e885701c00                CALL 0x006fe410
0053738b  8bf0                      MOV ESI,EAX
0053738d  8bce                      MOV ECX,ESI
0053738f  8b16                      MOV EDX,dword ptr [ESI]
00537391  ff520c                    CALL dword ptr [EDX + 0xc]
00537394  56                        PUSH ESI
00537395  8bcf                      MOV ECX,EDI
00537397  e814151a00                CALL 0x006d88b0
0053739c  c7876c0300003333333f      MOV dword ptr [EDI + 0x36c],0x3f333333
005373a6  5f                        POP EDI
005373a7  5e                        POP ESI
005373a8  8be5                      MOV ESP,EBP
005373aa  5d                        POP EBP
005373ab  c3                        RET
005373ac  83f90a                    CMP ECX,0xa
005373af  0f85db000000              JNZ 0x00537490
005373b5  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
005373bb  85c0                      TEST EAX,EAX
005373bd  0f84c6000000              JZ 0x00537489
005373c3  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
005373c9  85c9                      TEST ECX,ECX
005373cb  0f84b8000000              JZ 0x00537489
005373d1  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
005373d9  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
005373e1  0f28d0                    MOVAPS XMM2,XMM0
005373e4  f30f5c15d0a2ba00          SUBSS XMM2,dword ptr [0x00baa2d0]
005373ec  f30f5ca7dc000000          SUBSS XMM4,dword ptr [EDI + 0xdc]
005373f4  f30f10a840030000          MOVSS XMM5,dword ptr [EAX + 0x340]
005373fc  f30f5cafe0000000          SUBSS XMM5,dword ptr [EDI + 0xe0]
00537404  f30f10893c030000          MOVSS XMM1,dword ptr [ECX + 0x33c]
0053740c  f30f109940030000          MOVSS XMM3,dword ptr [ECX + 0x340]
00537414  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0053741b  f30f5ce1                  SUBSS XMM4,XMM1
0053741f  f30f58d2                  ADDSS XMM2,XMM2
00537423  f30f5ceb                  SUBSS XMM5,XMM3
00537427  f30f59e0                  MULSS XMM4,XMM0
0053742b  f30f59e8                  MULSS XMM5,XMM0
0053742f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00537437  f30f58e1                  ADDSS XMM4,XMM1
0053743b  f30f59d2                  MULSS XMM2,XMM2
0053743f  f30f5825e49fba00          ADDSS XMM4,dword ptr [0x00ba9fe4]
00537447  f30f5cc2                  SUBSS XMM0,XMM2
0053744b  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
00537453  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0053745b  f30f58e8                  ADDSS XMM5,XMM0
0053745f  f30f58eb                  ADDSS XMM5,XMM3
00537463  f30f582db8a7ba00          ADDSS XMM5,dword ptr [0x00baa7b8]
0053746b  f30f5caf40030000          SUBSS XMM5,dword ptr [EDI + 0x340]
00537473  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
0053747b  f30f11af64030000          MOVSS dword ptr [EDI + 0x364],XMM5
00537483  5f                        POP EDI
00537484  5e                        POP ESI
00537485  8be5                      MOV ESP,EBP
00537487  5d                        POP EBP
00537488  c3                        RET
00537489  8b07                      MOV EAX,dword ptr [EDI]
0053748b  8bcf                      MOV ECX,EDI
0053748d  ff5028                    CALL dword ptr [EAX + 0x28]
00537490  5f                        POP EDI
00537491  5e                        POP ESI
00537492  8be5                      MOV ESP,EBP
00537494  5d                        POP EBP
00537495  c3                        RET
