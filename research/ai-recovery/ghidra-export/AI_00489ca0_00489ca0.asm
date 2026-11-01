; J460 NPC AI 0x00489ca0 AI_00489ca0
; types=269,401
; identities=269.0.0,269.1.0,401.0.0
; entry=00489ca0
00489ca0  55                        PUSH EBP
00489ca1  8bec                      MOV EBP,ESP
00489ca3  83e4f8                    AND ESP,0xfffffff8
00489ca6  81ece0000000              SUB ESP,0xe0
00489cac  a1b493bf00                MOV EAX,[0x00bf93b4]
00489cb1  33c4                      XOR EAX,ESP
00489cb3  898424dc000000            MOV dword ptr [ESP + 0xdc],EAX
00489cba  56                        PUSH ESI
00489cbb  57                        PUSH EDI
00489cbc  8bf9                      MOV EDI,ECX
00489cbe  897c2408                  MOV dword ptr [ESP + 0x8],EDI
00489cc2  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00489cc6  7519                      JNZ 0x00489ce1
00489cc8  e823e71000                CALL 0x005983f0
00489ccd  5f                        POP EDI
00489cce  5e                        POP ESI
00489ccf  8b8c24dc000000            MOV ECX,dword ptr [ESP + 0xdc]
00489cd6  33cc                      XOR ECX,ESP
00489cd8  e84e546600                CALL 0x00aef12b
00489cdd  8be5                      MOV ESP,EBP
00489cdf  5d                        POP EBP
00489ce0  c3                        RET
00489ce1  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00489ce4  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
00489ce8  81f991010000              CMP ECX,0x191
00489cee  750b                      JNZ 0x00489cfb
00489cf0  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00489cf4  c644240f01                MOV byte ptr [ESP + 0xf],0x1
00489cf9  7405                      JZ 0x00489d00
00489cfb  c644240f00                MOV byte ptr [ESP + 0xf],0x0
00489d00  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
00489d06  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00489d0c  85c0                      TEST EAX,EAX
00489d0e  0f85b2000000              JNZ 0x00489dc6
00489d14  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00489d18  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00489d22  0f8581000000              JNZ 0x00489da9
00489d28  81f90d010000              CMP ECX,0x10d
00489d2e  7579                      JNZ 0x00489da9
00489d30  394f34                    CMP dword ptr [EDI + 0x34],ECX
00489d33  7474                      JZ 0x00489da9
00489d35  e826522600                CALL 0x006eef60
00489d3a  8b7f30                    MOV EDI,dword ptr [EDI + 0x30]
00489d3d  8bf0                      MOV ESI,EAX
00489d3f  8d442410                  LEA EAX,[ESP + 0x10]
00489d43  50                        PUSH EAX
00489d44  e827531f00                CALL 0x0067f070
00489d49  83c404                    ADD ESP,0x4
00489d4c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00489d52  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00489d57  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00489d5b  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00489d5f  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00489d67  6a00                      PUSH 0x0
00489d69  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
00489d71  56                        PUSH ESI
00489d72  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
00489d7a  57                        PUSH EDI
00489d7b  f30f589040030000          ADDSS XMM2,dword ptr [EAX + 0x340]
00489d83  8bf8                      MOV EDI,EAX
00489d85  57                        PUSH EDI
00489d86  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00489d8c  8d8760030000              LEA EAX,[EDI + 0x360]
00489d92  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
00489d98  50                        PUSH EAX
00489d99  8d442434                  LEA EAX,[ESP + 0x34]
00489d9d  50                        PUSH EAX
00489d9e  ff772c                    PUSH dword ptr [EDI + 0x2c]
00489da1  ff7728                    PUSH dword ptr [EDI + 0x28]
00489da4  e867462700                CALL 0x006fe410
00489da9  6a01                      PUSH 0x1
00489dab  8bcf                      MOV ECX,EDI
00489dad  e8fe662300                CALL 0x006c04b0
00489db2  5f                        POP EDI
00489db3  5e                        POP ESI
00489db4  8b8c24dc000000            MOV ECX,dword ptr [ESP + 0xdc]
00489dbb  33cc                      XOR ECX,ESP
00489dbd  e869536600                CALL 0x00aef12b
00489dc2  8be5                      MOV ESP,EBP
00489dc4  5d                        POP EBP
00489dc5  c3                        RET
00489dc6  83f803                    CMP EAX,0x3
00489dc9  756a                      JNZ 0x00489e35
00489dcb  6a00                      PUSH 0x0
00489dcd  6854bcb100                PUSH 0xb1bc54
00489dd2  8d4f48                    LEA ECX,[EDI + 0x48]
00489dd5  e8a605f8ff                CALL 0x0040a380
00489dda  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00489de0  33c0                      XOR EAX,EAX
00489de2  81e100000010              AND ECX,0x10000000
00489de8  0bc1                      OR EAX,ECX
00489dea  7418                      JZ 0x00489e04
00489dec  a17816c700                MOV EAX,[0x00c71678]
00489df1  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00489df7  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00489dfa  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00489dfe  0f85b90f0000              JNZ 0x0048adbd
00489e04  e857512600                CALL 0x006eef60
00489e09  33d2                      XOR EDX,EDX
00489e0b  b91e000000                MOV ECX,0x1e
00489e10  f7f1                      DIV ECX
00489e12  85d2                      TEST EDX,EDX
00489e14  0f85a30f0000              JNZ 0x0048adbd
00489e1a  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00489e24  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
00489e2a  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
00489e30  e9880f0000                JMP 0x0048adbd
00489e35  83f804                    CMP EAX,0x4
00489e38  0f856e040000              JNZ 0x0048a2ac
00489e3e  6a00                      PUSH 0x0
00489e40  8bcf                      MOV ECX,EDI
00489e42  e869662300                CALL 0x006c04b0
00489e47  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00489e4d  85c0                      TEST EAX,EAX
00489e4f  7539                      JNZ 0x00489e8a
00489e51  50                        PUSH EAX
00489e52  6838d9b100                PUSH 0xb1d938
00489e57  8d4f48                    LEA ECX,[EDI + 0x48]
00489e5a  e82105f8ff                CALL 0x0040a380
00489e5f  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00489e69  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00489e73  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00489e7d  c744240842000000          MOV dword ptr [ESP + 0x8],0x42
00489e85  e9560d0000                JMP 0x0048abe0
00489e8a  83f801                    CMP EAX,0x1
00489e8d  7536                      JNZ 0x00489ec5
00489e8f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00489e93  740d                      JZ 0x00489ea2
00489e95  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00489e9c  0f851b0f0000              JNZ 0x0048adbd
00489ea2  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
00489eac  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00489eb6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00489ec0  e9f80e0000                JMP 0x0048adbd
00489ec5  83f802                    CMP EAX,0x2
00489ec8  0f85ef0e0000              JNZ 0x0048adbd
00489ece  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00489ed4  8d4801                    LEA ECX,[EAX + 0x1]
00489ed7  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00489edd  83f832                    CMP EAX,0x32
00489ee0  7d4e                      JGE 0x00489f30
00489ee2  660f6ec1                  MOVD XMM0,ECX
00489ee6  0f5bc0                    CVTDQ2PS XMM0,XMM0
00489ee9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00489ef1  f30f5e0524a9ba00          DIVSS XMM0,dword ptr [0x00baa924]
00489ef9  f30f5cc8                  SUBSS XMM1,XMM0
00489efd  f30f118f380c0000          MOVSS dword ptr [EDI + 0xc38],XMM1
00489f05  f30f598fb4030000          MULSS XMM1,dword ptr [EDI + 0x3b4]
00489f0d  0f28c1                    MOVAPS XMM0,XMM1
00489f10  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00489f18  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00489f20  f30f118fe8000000          MOVSS dword ptr [EDI + 0xe8],XMM1
00489f28  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
00489f30  6a00                      PUSH 0x0
00489f32  6840d9b100                PUSH 0xb1d940
00489f37  8d4f48                    LEA ECX,[EDI + 0x48]
00489f3a  e84104f8ff                CALL 0x0040a380
00489f3f  51                        PUSH ECX
00489f40  8d442434                  LEA EAX,[ESP + 0x34]
00489f44  c7042400000000            MOV dword ptr [ESP],0x0
00489f4b  50                        PUSH EAX
00489f4c  8bcf                      MOV ECX,EDI
00489f4e  e8ed4c2300                CALL 0x006bec40
00489f53  8bf8                      MOV EDI,EAX
00489f55  8d442428                  LEA EAX,[ESP + 0x28]
00489f59  50                        PUSH EAX
00489f5a  e811511f00                CALL 0x0067f070
00489f5f  83c404                    ADD ESP,0x4
00489f62  8bf0                      MOV ESI,EAX
00489f64  e8f74f2600                CALL 0x006eef60
00489f69  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00489f6f  83ec0c                    SUB ESP,0xc
00489f72  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00489f7a  660f6ec0                  MOVD XMM0,EAX
00489f7e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00489f82  c1e81f                    SHR EAX,0x1f
00489f85  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00489f8e  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
00489f96  8d44242c                  LEA EAX,[ESP + 0x2c]
00489f9a  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
00489fa2  c704240000a041            MOV dword ptr [ESP],0x41a00000
00489fa9  50                        PUSH EAX
00489faa  660f5ac8                  CVTPD2PS XMM1,XMM0
00489fae  8d442420                  LEA EAX,[ESP + 0x20]
00489fb2  50                        PUSH EAX
00489fb3  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00489fbb  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00489fc3  0f28c1                    MOVAPS XMM0,XMM1
00489fc6  f30f590e                  MULSS XMM1,dword ptr [ESI]
00489fca  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
00489fcf  f30f580f                  ADDSS XMM1,dword ptr [EDI]
00489fd3  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
00489fd8  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
00489fde  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00489fe4  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00489fea  e8618f3800                CALL 0x00812f50
00489fef  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00489ff5  8d442420                  LEA EAX,[ESP + 0x20]
00489ff9  8b7c2408                  MOV EDI,dword ptr [ESP + 0x8]
00489ffd  6a01                      PUSH 0x1
00489fff  6a64                      PUSH 0x64
0048a001  51                        PUSH ECX
0048a002  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0048a008  8d8f14040000              LEA ECX,[EDI + 0x414]
0048a00e  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0048a014  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a01b  50                        PUSH EAX
0048a01c  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0048a022  e899933500                CALL 0x007e33c0
0048a027  8bcf                      MOV ECX,EDI
0048a029  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0048a033  e808482300                CALL 0x006be840
0048a038  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0048a040  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0048a048  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0048a050  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
0048a058  f30f59c0                  MULSS XMM0,XMM0
0048a05c  f30f59c9                  MULSS XMM1,XMM1
0048a060  f30f58c8                  ADDSS XMM1,XMM0
0048a064  f30f100548acba00          MOVSS XMM0,dword ptr [0x00baac48]
0048a06c  0f2fc1                    COMISS XMM0,XMM1
0048a06f  7612                      JBE 0x0048a083
0048a071  e8ea4e2600                CALL 0x006eef60
0048a076  33d2                      XOR EDX,EDX
0048a078  b90f000000                MOV ECX,0xf
0048a07d  f7f1                      DIV ECX
0048a07f  85d2                      TEST EDX,EDX
0048a081  743e                      JZ 0x0048a0c1
0048a083  6a00                      PUSH 0x0
0048a085  6800020000                PUSH 0x200
0048a08a  8bcf                      MOV ECX,EDI
0048a08c  e89fd3f8ff                CALL 0x00417430
0048a091  84c0                      TEST AL,AL
0048a093  7409                      JZ 0x0048a09e
0048a095  83bf2802000005            CMP dword ptr [EDI + 0x228],0x5
0048a09c  7c23                      JL 0x0048a0c1
0048a09e  6a00                      PUSH 0x0
0048a0a0  6800080001                PUSH 0x1000800
0048a0a5  8bcf                      MOV ECX,EDI
0048a0a7  e884d3f8ff                CALL 0x00417430
0048a0ac  84c0                      TEST AL,AL
0048a0ae  0f84090d0000              JZ 0x0048adbd
0048a0b4  83bf3002000005            CMP dword ptr [EDI + 0x230],0x5
0048a0bb  0f8dfc0c0000              JGE 0x0048adbd
0048a0c1  817f280d010000            CMP dword ptr [EDI + 0x28],0x10d
0048a0c8  0f85ba000000              JNZ 0x0048a188
0048a0ce  a17816c700                MOV EAX,[0x00c71678]
0048a0d3  6800000010                PUSH 0x10000000
0048a0d8  6a00                      PUSH 0x0
0048a0da  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048a0e0  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0048a0e6  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0048a0ec  03c8                      ADD ECX,EAX
0048a0ee  33c0                      XOR EAX,EAX
0048a0f0  85c9                      TEST ECX,ECX
0048a0f2  0f4fc1                    CMOVG EAX,ECX
0048a0f5  8bcf                      MOV ECX,EDI
0048a0f7  83f803                    CMP EAX,0x3
0048a0fa  0f9c442417                SETL byte ptr [ESP + 0x17]
0048a0ff  e82cd3f8ff                CALL 0x00417430
0048a104  84c0                      TEST AL,AL
0048a106  7426                      JZ 0x0048a12e
0048a108  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0048a10c  b8f4000000                MOV EAX,0xf4
0048a111  6a00                      PUSH 0x0
0048a113  51                        PUSH ECX
0048a114  b93a000000                MOV ECX,0x3a
0048a119  0f44c1                    CMOVZ EAX,ECX
0048a11c  8bcf                      MOV ECX,EDI
0048a11e  6a00                      PUSH 0x0
0048a120  50                        PUSH EAX
0048a121  e8ba262200                CALL 0x006ac7e0
0048a126  83f803                    CMP EAX,0x3
0048a129  0f9244240f                SETC byte ptr [ESP + 0xf]
0048a12e  e82d4e2600                CALL 0x006eef60
0048a133  83e001                    AND EAX,0x1
0048a136  83c808                    OR EAX,0x8
0048a139  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0048a13d  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0048a143  750a                      JNZ 0x0048a14f
0048a145  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0048a14f  e80c4e2600                CALL 0x006eef60
0048a154  33d2                      XOR EDX,EDX
0048a156  b905000000                MOV ECX,0x5
0048a15b  f7f1                      DIV ECX
0048a15d  85d2                      TEST EDX,EDX
0048a15f  0f85e6000000              JNZ 0x0048a24b
0048a165  3854240f                  CMP byte ptr [ESP + 0xf],DL
0048a169  0f84dc000000              JZ 0x0048a24b
0048a16f  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0048a173  0f84d2000000              JZ 0x0048a24b
0048a179  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0048a183  e9c3000000                JMP 0x0048a24b
0048a188  817c241c91010000          CMP dword ptr [ESP + 0x1c],0x191
0048a190  0f85b5000000              JNZ 0x0048a24b
0048a196  e8c54d2600                CALL 0x006eef60
0048a19b  a801                      TEST AL,0x1
0048a19d  740c                      JZ 0x0048a1ab
0048a19f  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0048a1a4  b809000000                MOV EAX,0x9
0048a1a9  7405                      JZ 0x0048a1b0
0048a1ab  b808000000                MOV EAX,0x8
0048a1b0  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0048a1b6  a17816c700                MOV EAX,[0x00c71678]
0048a1bb  6800000010                PUSH 0x10000000
0048a1c0  6a00                      PUSH 0x0
0048a1c2  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048a1c8  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0048a1ce  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0048a1d4  03c8                      ADD ECX,EAX
0048a1d6  33c0                      XOR EAX,EAX
0048a1d8  85c9                      TEST ECX,ECX
0048a1da  0f4fc1                    CMOVG EAX,ECX
0048a1dd  8bcf                      MOV ECX,EDI
0048a1df  83f803                    CMP EAX,0x3
0048a1e2  0f9c442423                SETL byte ptr [ESP + 0x23]
0048a1e7  e844d2f8ff                CALL 0x00417430
0048a1ec  84c0                      TEST AL,AL
0048a1ee  7427                      JZ 0x0048a217
0048a1f0  807c240f01                CMP byte ptr [ESP + 0xf],0x1
0048a1f5  b817000000                MOV EAX,0x17
0048a1fa  6a00                      PUSH 0x0
0048a1fc  51                        PUSH ECX
0048a1fd  b9f4000000                MOV ECX,0xf4
0048a202  0f44c1                    CMOVZ EAX,ECX
0048a205  8bcf                      MOV ECX,EDI
0048a207  6a00                      PUSH 0x0
0048a209  50                        PUSH EAX
0048a20a  e8d1252200                CALL 0x006ac7e0
0048a20f  83f803                    CMP EAX,0x3
0048a212  0f9244241b                SETC byte ptr [ESP + 0x1b]
0048a217  e8444d2600                CALL 0x006eef60
0048a21c  33d2                      XOR EDX,EDX
0048a21e  b905000000                MOV ECX,0x5
0048a223  f7f1                      DIV ECX
0048a225  85d2                      TEST EDX,EDX
0048a227  7407                      JZ 0x0048a230
0048a229  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0048a22e  7411                      JZ 0x0048a241
0048a230  807c241b00                CMP byte ptr [ESP + 0x1b],0x0
0048a235  740a                      JZ 0x0048a241
0048a237  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0048a241  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048a24b  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0048a255  8bcf                      MOV ECX,EDI
0048a257  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048a261  f30f108fb4030000          MOVSS XMM1,dword ptr [EDI + 0x3b4]
0048a269  c787380c00000000803f      MOV dword ptr [EDI + 0xc38],0x3f800000
0048a273  0f28c1                    MOVAPS XMM0,XMM1
0048a276  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0048a280  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0048a288  6a01                      PUSH 0x1
0048a28a  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0048a292  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
0048a29a  f30f118fe8000000          MOVSS dword ptr [EDI + 0xe8],XMM1
0048a2a2  e809622300                CALL 0x006c04b0
0048a2a7  e9110b0000                JMP 0x0048adbd
0048a2ac  81f90d010000              CMP ECX,0x10d
0048a2b2  0f8587030000              JNZ 0x0048a63f
0048a2b8  83f808                    CMP EAX,0x8
0048a2bb  740e                      JZ 0x0048a2cb
0048a2bd  83f809                    CMP EAX,0x9
0048a2c0  7409                      JZ 0x0048a2cb
0048a2c2  83f80a                    CMP EAX,0xa
0048a2c5  0f85f20a0000              JNZ 0x0048adbd
0048a2cb  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0048a2d2  7534                      JNZ 0x0048a308
0048a2d4  6a00                      PUSH 0x0
0048a2d6  6828d9b100                PUSH 0xb1d928
0048a2db  8d4f48                    LEA ECX,[EDI + 0x48]
0048a2de  e89d00f8ff                CALL 0x0040a380
0048a2e3  51                        PUSH ECX
0048a2e4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a2eb  6a00                      PUSH 0x0
0048a2ed  6a3c                      PUSH 0x3c
0048a2ef  51                        PUSH ECX
0048a2f0  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0048a2f7  8bcf                      MOV ECX,EDI
0048a2f9  6839010000                PUSH 0x139
0048a2fe  e89dc82400                CALL 0x006d6ba0
0048a303  e918040000                JMP 0x0048a720
0048a308  83f808                    CMP EAX,0x8
0048a30b  0f8572010000              JNZ 0x0048a483
0048a311  6a00                      PUSH 0x0
0048a313  68ccd2b100                PUSH 0xb1d2cc
0048a318  8d4f48                    LEA ECX,[EDI + 0x48]
0048a31b  e86000f8ff                CALL 0x0040a380
0048a320  68dcd2b100                PUSH 0xb1d2dc
0048a325  8d4f48                    LEA ECX,[EDI + 0x48]
0048a328  e8030df8ff                CALL 0x0040b030
0048a32d  84c0                      TEST AL,AL
0048a32f  0f846f0a0000              JZ 0x0048ada4
0048a335  8bcf                      MOV ECX,EDI
0048a337  e804452300                CALL 0x006be840
0048a33c  8bcf                      MOV ECX,EDI
0048a33e  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0048a346  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0048a34c  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0048a354  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0048a35a  e8e1442300                CALL 0x006be840
0048a35f  51                        PUSH ECX
0048a360  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a367  8db73c030000              LEA ESI,[EDI + 0x33c]
0048a36d  6a00                      PUSH 0x0
0048a36f  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0048a377  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0048a37f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0048a387  6a3c                      PUSH 0x3c
0048a389  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0048a391  51                        PUSH ECX
0048a392  f30f5844242c              ADDSS XMM0,dword ptr [ESP + 0x2c]
0048a398  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0048a39f  8bcf                      MOV ECX,EDI
0048a3a1  f30f584c2418              ADDSS XMM1,dword ptr [ESP + 0x18]
0048a3a7  6a39                      PUSH 0x39
0048a3a9  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0048a3ad  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0048a3b2  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0048a3b8  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
0048a3be  e8ddc72400                CALL 0x006d6ba0
0048a3c3  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0048a3c7  752e                      JNZ 0x0048a3f7
0048a3c9  8d4c2438                  LEA ECX,[ESP + 0x38]
0048a3cd  e85e4bfbff                CALL 0x0043ef30
0048a3d2  50                        PUSH EAX
0048a3d3  6a09                      PUSH 0x9
0048a3d5  8d442418                  LEA EAX,[ESP + 0x18]
0048a3d9  c744241800002041          MOV dword ptr [ESP + 0x18],0x41200000
0048a3e1  50                        PUSH EAX
0048a3e2  56                        PUSH ESI
0048a3e3  8bcf                      MOV ECX,EDI
0048a3e5  c74424240000c040          MOV dword ptr [ESP + 0x24],0x40c00000
0048a3ed  e8ee0e2400                CALL 0x006cb2e0
0048a3f2  e9ad090000                JMP 0x0048ada4
0048a3f7  e8644b2600                CALL 0x006eef60
0048a3fc  8d4c2438                  LEA ECX,[ESP + 0x38]
0048a400  a801                      TEST AL,0x1
0048a402  7555                      JNZ 0x0048a459
0048a404  e8274bfbff                CALL 0x0043ef30
0048a409  8bf0                      MOV ESI,EAX
0048a40b  8d4c2410                  LEA ECX,[ESP + 0x10]
0048a40f  8d442428                  LEA EAX,[ESP + 0x28]
0048a413  50                        PUSH EAX
0048a414  e8175c5800                CALL 0x00a10030
0048a419  56                        PUSH ESI
0048a41a  6a03                      PUSH 0x3
0048a41c  8bcf                      MOV ECX,EDI
0048a41e  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0048a423  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048a427  8d442428                  LEA EAX,[ESP + 0x28]
0048a42b  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0048a433  50                        PUSH EAX
0048a434  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0048a43c  8d873c030000              LEA EAX,[EDI + 0x33c]
0048a442  50                        PUSH EAX
0048a443  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
0048a449  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0048a44f  e88c0e2400                CALL 0x006cb2e0
0048a454  e94b090000                JMP 0x0048ada4
0048a459  e8d24afbff                CALL 0x0043ef30
0048a45e  50                        PUSH EAX
0048a45f  6a08                      PUSH 0x8
0048a461  8d442418                  LEA EAX,[ESP + 0x18]
0048a465  c744241800002041          MOV dword ptr [ESP + 0x18],0x41200000
0048a46d  50                        PUSH EAX
0048a46e  56                        PUSH ESI
0048a46f  8bcf                      MOV ECX,EDI
0048a471  c744242400000000          MOV dword ptr [ESP + 0x24],0x0
0048a479  e8620e2400                CALL 0x006cb2e0
0048a47e  e921090000                JMP 0x0048ada4
0048a483  83f809                    CMP EAX,0x9
0048a486  0f85e2000000              JNZ 0x0048a56e
0048a48c  6a00                      PUSH 0x0
0048a48e  68ecd2b100                PUSH 0xb1d2ec
0048a493  8d4f48                    LEA ECX,[EDI + 0x48]
0048a496  e8e5fef7ff                CALL 0x0040a380
0048a49b  51                        PUSH ECX
0048a49c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a4a3  6a00                      PUSH 0x0
0048a4a5  6a3c                      PUSH 0x3c
0048a4a7  51                        PUSH ECX
0048a4a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a4af  8bcf                      MOV ECX,EDI
0048a4b1  6807010000                PUSH 0x107
0048a4b6  e8e5c62400                CALL 0x006d6ba0
0048a4bb  68dcd2b100                PUSH 0xb1d2dc
0048a4c0  8d4f48                    LEA ECX,[EDI + 0x48]
0048a4c3  e8c80bf8ff                CALL 0x0040b090
0048a4c8  84c0                      TEST AL,AL
0048a4ca  0f84d4080000              JZ 0x0048ada4
0048a4d0  688cdeb100                PUSH 0xb1de8c
0048a4d5  8d4f48                    LEA ECX,[EDI + 0x48]
0048a4d8  e8b30bf8ff                CALL 0x0040b090
0048a4dd  84c0                      TEST AL,AL
0048a4df  0f85bf080000              JNZ 0x0048ada4
0048a4e5  8d4c2438                  LEA ECX,[ESP + 0x38]
0048a4e9  e8424afbff                CALL 0x0043ef30
0048a4ee  8bcf                      MOV ECX,EDI
0048a4f0  8bf0                      MOV ESI,EAX
0048a4f2  e849432300                CALL 0x006be840
0048a4f7  8bcf                      MOV ECX,EDI
0048a4f9  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0048a501  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0048a507  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0048a50f  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0048a515  e826432300                CALL 0x006be840
0048a51a  56                        PUSH ESI
0048a51b  51                        PUSH ECX
0048a51c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a523  8bcf                      MOV ECX,EDI
0048a525  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
0048a52d  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
0048a535  8d442418                  LEA EAX,[ESP + 0x18]
0048a539  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0048a541  50                        PUSH EAX
0048a542  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0048a54a  6a01                      PUSH 0x1
0048a54c  f30f584c242c              ADDSS XMM1,dword ptr [ESP + 0x2c]
0048a552  f30f58542418              ADDSS XMM2,dword ptr [ESP + 0x18]
0048a558  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
0048a55e  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
0048a564  e867282400                CALL 0x006ccdd0
0048a569  e936080000                JMP 0x0048ada4
0048a56e  83f80a                    CMP EAX,0xa
0048a571  0f852d080000              JNZ 0x0048ada4
0048a577  6a00                      PUSH 0x0
0048a579  68e4d2b100                PUSH 0xb1d2e4
0048a57e  8d4f48                    LEA ECX,[EDI + 0x48]
0048a581  e8fafdf7ff                CALL 0x0040a380
0048a586  68dcd2b100                PUSH 0xb1d2dc
0048a58b  8d4f48                    LEA ECX,[EDI + 0x48]
0048a58e  e89d0af8ff                CALL 0x0040b030
0048a593  84c0                      TEST AL,AL
0048a595  0f8409080000              JZ 0x0048ada4
0048a59b  51                        PUSH ECX
0048a59c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a5a3  6a00                      PUSH 0x0
0048a5a5  6a3c                      PUSH 0x3c
0048a5a7  51                        PUSH ECX
0048a5a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a5af  8bcf                      MOV ECX,EDI
0048a5b1  6892000000                PUSH 0x92
0048a5b6  e8e5c52400                CALL 0x006d6ba0
0048a5bb  e8a0492600                CALL 0x006eef60
0048a5c0  8bf0                      MOV ESI,EAX
0048a5c2  8d442428                  LEA EAX,[ESP + 0x28]
0048a5c6  50                        PUSH EAX
0048a5c7  e8a44a1f00                CALL 0x0067f070
0048a5cc  83c404                    ADD ESP,0x4
0048a5cf  b93a000000                MOV ECX,0x3a
0048a5d4  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0048a5d8  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0048a5dd  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048a5e1  b8f4000000                MOV EAX,0xf4
0048a5e6  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
0048a5ee  0f44c1                    CMOVZ EAX,ECX
0048a5f1  8d4c2410                  LEA ECX,[ESP + 0x10]
0048a5f5  f30f591550a9ba00          MULSS XMM2,dword ptr [0x00baa950]
0048a5fd  6a00                      PUSH 0x0
0048a5ff  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048a607  56                        PUSH ESI
0048a608  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0048a610  6a00                      PUSH 0x0
0048a612  57                        PUSH EDI
0048a613  6840b6c700                PUSH 0xc7b640
0048a618  51                        PUSH ECX
0048a619  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048a61f  6a00                      PUSH 0x0
0048a621  50                        PUSH EAX
0048a622  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0048a628  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
0048a62e  e8dd3d2700                CALL 0x006fe410
0048a633  8bc8                      MOV ECX,EAX
0048a635  8b10                      MOV EDX,dword ptr [EAX]
0048a637  ff520c                    CALL dword ptr [EDX + 0xc]
0048a63a  e965070000                JMP 0x0048ada4
0048a63f  81f991010000              CMP ECX,0x191
0048a645  0f8572070000              JNZ 0x0048adbd
0048a64b  83f808                    CMP EAX,0x8
0048a64e  740e                      JZ 0x0048a65e
0048a650  83f809                    CMP EAX,0x9
0048a653  7409                      JZ 0x0048a65e
0048a655  83f80d                    CMP EAX,0xd
0048a658  0f855f070000              JNZ 0x0048adbd
0048a65e  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
0048a664  85c9                      TEST ECX,ECX
0048a666  0f85e0000000              JNZ 0x0048a74c
0048a66c  83f808                    CMP EAX,0x8
0048a66f  740a                      JZ 0x0048a67b
0048a671  83f80d                    CMP EAX,0xd
0048a674  b830d9b100                MOV EAX,0xb1d930
0048a679  7505                      JNZ 0x0048a680
0048a67b  b828d9b100                MOV EAX,0xb1d928
0048a680  6a00                      PUSH 0x0
0048a682  50                        PUSH EAX
0048a683  8d4f48                    LEA ECX,[EDI + 0x48]
0048a686  e8f5fcf7ff                CALL 0x0040a380
0048a68b  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
0048a692  0f8588000000              JNZ 0x0048a720
0048a698  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048a69e  8d4c2408                  LEA ECX,[ESP + 0x8]
0048a6a2  c744240840000000          MOV dword ptr [ESP + 0x8],0x40
0048a6aa  e8d1c04c00                CALL 0x00956780
0048a6af  83ec08                    SUB ESP,0x8
0048a6b2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048a6ba  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a6c1  6a00                      PUSH 0x0
0048a6c3  6a02                      PUSH 0x2
0048a6c5  51                        PUSH ECX
0048a6c6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a6cd  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048a6d3  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0048a6d7  e854354a00                CALL 0x0092dc30
0048a6dc  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048a6e2  8d4c2408                  LEA ECX,[ESP + 0x8]
0048a6e6  c7442408a3010000          MOV dword ptr [ESP + 0x8],0x1a3
0048a6ee  e88dc04c00                CALL 0x00956780
0048a6f3  83ec08                    SUB ESP,0x8
0048a6f6  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048a6fe  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a705  6a00                      PUSH 0x0
0048a707  6a02                      PUSH 0x2
0048a709  51                        PUSH ECX
0048a70a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a711  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048a717  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0048a71b  e810354a00                CALL 0x0092dc30
0048a720  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048a724  740d                      JZ 0x0048a733
0048a726  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048a72d  0f858a060000              JNZ 0x0048adbd
0048a733  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0048a73d  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048a747  e971060000                JMP 0x0048adbd
0048a74c  83f808                    CMP EAX,0x8
0048a74f  0f8575010000              JNZ 0x0048a8ca
0048a755  6a00                      PUSH 0x0
0048a757  68ccd2b100                PUSH 0xb1d2cc
0048a75c  8d4f48                    LEA ECX,[EDI + 0x48]
0048a75f  e81cfcf7ff                CALL 0x0040a380
0048a764  68dcd2b100                PUSH 0xb1d2dc
0048a769  8d4f48                    LEA ECX,[EDI + 0x48]
0048a76c  e8bf08f8ff                CALL 0x0040b030
0048a771  84c0                      TEST AL,AL
0048a773  0f842b060000              JZ 0x0048ada4
0048a779  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048a77f  8d4c2408                  LEA ECX,[ESP + 0x8]
0048a783  c744240807010000          MOV dword ptr [ESP + 0x8],0x107
0048a78b  e8f0bf4c00                CALL 0x00956780
0048a790  83ec08                    SUB ESP,0x8
0048a793  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048a79b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a7a2  6a00                      PUSH 0x0
0048a7a4  6a02                      PUSH 0x2
0048a7a6  51                        PUSH ECX
0048a7a7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a7ae  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048a7b4  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0048a7b8  e873344a00                CALL 0x0092dc30
0048a7bd  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0048a7c5  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0048a7cb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0048a7d0  e88b472600                CALL 0x006eef60
0048a7d5  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
0048a7db  0f57c9                    XORPS XMM1,XMM1
0048a7de  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
0048a7e6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048a7ec  6a00                      PUSH 0x0
0048a7ee  50                        PUSH EAX
0048a7ef  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048a7f7  6a00                      PUSH 0x0
0048a7f9  57                        PUSH EDI
0048a7fa  6840b6c700                PUSH 0xc7b640
0048a7ff  8d442424                  LEA EAX,[ESP + 0x24]
0048a803  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0048a809  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0048a80f  f30f59c1                  MULSS XMM0,XMM1
0048a813  50                        PUSH EAX
0048a814  6a16                      PUSH 0x16
0048a816  68e8030000                PUSH 0x3e8
0048a81b  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0048a823  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0048a829  e8e23b2700                CALL 0x006fe410
0048a82e  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
0048a834  0f57d2                    XORPS XMM2,XMM2
0048a837  0f2ec2                    UCOMISS XMM0,XMM2
0048a83a  8bc8                      MOV ECX,EAX
0048a83c  0f28c8                    MOVAPS XMM1,XMM0
0048a83f  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0048a846  f30f590de8a2ba00          MULSS XMM1,dword ptr [0x00baa2e8]
0048a84e  9f                        LAHF
0048a84f  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
0048a857  f6c444                    TEST AH,0x44
0048a85a  7a08                      JP 0x0048a864
0048a85c  f30f100dd0a5ba00          MOVSS XMM1,dword ptr [0x00baa5d0]
0048a864  8b01                      MOV EAX,dword ptr [ECX]
0048a866  0f28c1                    MOVAPS XMM0,XMM1
0048a869  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0048a871  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0048a879  c7815c04000046000000      MOV dword ptr [ECX + 0x45c],0x46
0048a883  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
0048a88b  c7816004000046000000      MOV dword ptr [ECX + 0x460],0x46
0048a895  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
0048a89d  ff500c                    CALL dword ptr [EAX + 0xc]
0048a8a0  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
0048a8a6  f30f58053ca1ba00          ADDSS XMM0,dword ptr [0x00baa13c]
0048a8ae  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048a8b6  0f2fc8                    COMISS XMM1,XMM0
0048a8b9  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0048a8bf  0f830bffffff              JNC 0x0048a7d0
0048a8c5  e9da040000                JMP 0x0048ada4
0048a8ca  83f809                    CMP EAX,0x9
0048a8cd  0f854e030000              JNZ 0x0048ac21
0048a8d3  83f903                    CMP ECX,0x3
0048a8d6  0f84ca020000              JZ 0x0048aba6
0048a8dc  83f901                    CMP ECX,0x1
0048a8df  0f8417010000              JZ 0x0048a9fc
0048a8e5  83f904                    CMP ECX,0x4
0048a8e8  0f840e010000              JZ 0x0048a9fc
0048a8ee  83f902                    CMP ECX,0x2
0048a8f1  0f84ae000000              JZ 0x0048a9a5
0048a8f7  83f905                    CMP ECX,0x5
0048a8fa  0f84a5000000              JZ 0x0048a9a5
0048a900  83f906                    CMP ECX,0x6
0048a903  0f85b4040000              JNZ 0x0048adbd
0048a909  6a00                      PUSH 0x0
0048a90b  6854d9b100                PUSH 0xb1d954
0048a910  8d4f48                    LEA ECX,[EDI + 0x48]
0048a913  e868faf7ff                CALL 0x0040a380
0048a918  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
0048a91f  7544                      JNZ 0x0048a965
0048a921  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048a927  8d4c2408                  LEA ECX,[ESP + 0x8]
0048a92b  c744240842000000          MOV dword ptr [ESP + 0x8],0x42
0048a933  e848be4c00                CALL 0x00956780
0048a938  83ec08                    SUB ESP,0x8
0048a93b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048a943  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a94a  6a00                      PUSH 0x0
0048a94c  6a02                      PUSH 0x2
0048a94e  51                        PUSH ECX
0048a94f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048a956  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048a95c  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0048a960  e8cb324a00                CALL 0x0092dc30
0048a965  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048a969  740d                      JZ 0x0048a978
0048a96b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048a972  0f8545040000              JNZ 0x0048adbd
0048a978  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0048a982  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0048a98c  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048a996  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048a9a0  e918040000                JMP 0x0048adbd
0048a9a5  6a00                      PUSH 0x0
0048a9a7  6848d9b100                PUSH 0xb1d948
0048a9ac  8d4f48                    LEA ECX,[EDI + 0x48]
0048a9af  e8ccf9f7ff                CALL 0x0040a380
0048a9b4  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0048a9ba  40                        INC EAX
0048a9bb  898710040000              MOV dword ptr [EDI + 0x410],EAX
0048a9c1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048a9c5  740d                      JZ 0x0048a9d4
0048a9c7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048a9ce  0f85e9030000              JNZ 0x0048adbd
0048a9d4  83f81e                    CMP EAX,0x1e
0048a9d7  0f8ee0030000              JLE 0x0048adbd
0048a9dd  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0048a9e3  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048a9ed  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048a9f7  e9c1030000                JMP 0x0048adbd
0048a9fc  8d7748                    LEA ESI,[EDI + 0x48]
0048a9ff  6870d9b100                PUSH 0xb1d970
0048aa04  8bce                      MOV ECX,ESI
0048aa06  e8c5faf7ff                CALL 0x0040a4d0
0048aa0b  84c0                      TEST AL,AL
0048aa0d  7555                      JNZ 0x0048aa64
0048aa0f  6a00                      PUSH 0x0
0048aa11  6870d9b100                PUSH 0xb1d970
0048aa16  8bce                      MOV ECX,ESI
0048aa18  e863f9f7ff                CALL 0x0040a380
0048aa1d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048aa23  8d4c2408                  LEA ECX,[ESP + 0x8]
0048aa27  c7442408bf030000          MOV dword ptr [ESP + 0x8],0x3bf
0048aa2f  e84cbd4c00                CALL 0x00956780
0048aa34  83ec08                    SUB ESP,0x8
0048aa37  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048aa3f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048aa46  6a00                      PUSH 0x0
0048aa48  6a02                      PUSH 0x2
0048aa4a  51                        PUSH ECX
0048aa4b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048aa52  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048aa58  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0048aa5c  e8cf314a00                CALL 0x0092dc30
0048aa61  8d7748                    LEA ESI,[EDI + 0x48]
0048aa64  ff8710040000              INC dword ptr [EDI + 0x410]
0048aa6a  8bce                      MOV ECX,ESI
0048aa6c  68dcd2b100                PUSH 0xb1d2dc
0048aa71  e8ba05f8ff                CALL 0x0040b030
0048aa76  84c0                      TEST AL,AL
0048aa78  0f8416010000              JZ 0x0048ab94
0048aa7e  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0048aa84  83f801                    CMP EAX,0x1
0048aa87  0f8585000000              JNZ 0x0048ab12
0048aa8d  8d4c2438                  LEA ECX,[ESP + 0x38]
0048aa91  e89a44fbff                CALL 0x0043ef30
0048aa96  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
0048aa9e  8db73c030000              LEA ESI,[EDI + 0x33c]
0048aaa4  8b842494000000            MOV EAX,dword ptr [ESP + 0x94]
0048aaab  8bcf                      MOV ECX,EDI
0048aaad  818c249000000000000008    OR dword ptr [ESP + 0x90],0x8000000
0048aab8  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048aabb  89842494000000            MOV dword ptr [ESP + 0x94],EAX
0048aac2  8d442438                  LEA EAX,[ESP + 0x38]
0048aac6  50                        PUSH EAX
0048aac7  6a09                      PUSH 0x9
0048aac9  8d442418                  LEA EAX,[ESP + 0x18]
0048aacd  c744244c8fc275bd          MOV dword ptr [ESP + 0x4c],0xbd75c28f
0048aad5  50                        PUSH EAX
0048aad6  f30f590530a1ba00          MULSS XMM0,dword ptr [0x00baa130]
0048aade  56                        PUSH ESI
0048aadf  c7442450000000c0          MOV dword ptr [ESP + 0x50],0xc0000000
0048aae7  c744246cf6287c3f          MOV dword ptr [ESP + 0x6c],0x3f7c28f6
0048aaef  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
0048aaf5  c74424200000c040          MOV dword ptr [ESP + 0x20],0x40c00000
0048aafd  c744242400004040          MOV dword ptr [ESP + 0x24],0x40400000
0048ab05  e8d6072400                CALL 0x006cb2e0
0048ab0a  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0048ab10  eb06                      JMP 0x0048ab18
0048ab12  8db73c030000              LEA ESI,[EDI + 0x33c]
0048ab18  83f804                    CMP EAX,0x4
0048ab1b  7577                      JNZ 0x0048ab94
0048ab1d  8d4c2438                  LEA ECX,[ESP + 0x38]
0048ab21  e80a44fbff                CALL 0x0043ef30
0048ab26  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
0048ab2e  8bcf                      MOV ECX,EDI
0048ab30  8b842494000000            MOV EAX,dword ptr [ESP + 0x94]
0048ab37  818c249000000000000008    OR dword ptr [ESP + 0x90],0x8000000
0048ab42  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048ab45  89842494000000            MOV dword ptr [ESP + 0x94],EAX
0048ab4c  8d442438                  LEA EAX,[ESP + 0x38]
0048ab50  50                        PUSH EAX
0048ab51  6a09                      PUSH 0x9
0048ab53  8d442418                  LEA EAX,[ESP + 0x18]
0048ab57  c744244c8fc275bd          MOV dword ptr [ESP + 0x4c],0xbd75c28f
0048ab5f  50                        PUSH EAX
0048ab60  f30f590534a1ba00          MULSS XMM0,dword ptr [0x00baa134]
0048ab68  56                        PUSH ESI
0048ab69  c7442450000000c0          MOV dword ptr [ESP + 0x50],0xc0000000
0048ab71  c744246c3333833f          MOV dword ptr [ESP + 0x6c],0x3f833333
0048ab79  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
0048ab7f  c7442420cdcc4c40          MOV dword ptr [ESP + 0x20],0x404ccccd
0048ab87  c744242400008040          MOV dword ptr [ESP + 0x24],0x40800000
0048ab8f  e84c072400                CALL 0x006cb2e0
0048ab94  83bf100400005a            CMP dword ptr [EDI + 0x410],0x5a
0048ab9b  0f8c1c020000              JL 0x0048adbd
0048aba1  e937feffff                JMP 0x0048a9dd
0048aba6  6a00                      PUSH 0x0
0048aba8  6860d9b100                PUSH 0xb1d960
0048abad  8d4f48                    LEA ECX,[EDI + 0x48]
0048abb0  e8cbf7f7ff                CALL 0x0040a380
0048abb5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048abb9  740d                      JZ 0x0048abc8
0048abbb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048abc2  0f85f5010000              JNZ 0x0048adbd
0048abc8  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0048abce  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048abd8  c7442408a3010000          MOV dword ptr [ESP + 0x8],0x1a3
0048abe0  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048abe6  8d4c2408                  LEA ECX,[ESP + 0x8]
0048abea  e891bb4c00                CALL 0x00956780
0048abef  83ec08                    SUB ESP,0x8
0048abf2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048abfa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048ac01  6a00                      PUSH 0x0
0048ac03  6a02                      PUSH 0x2
0048ac05  51                        PUSH ECX
0048ac06  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048ac0d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048ac13  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0048ac17  e814304a00                CALL 0x0092dc30
0048ac1c  e99c010000                JMP 0x0048adbd
0048ac21  83f80d                    CMP EAX,0xd
0048ac24  0f8593010000              JNZ 0x0048adbd
0048ac2a  6a00                      PUSH 0x0
0048ac2c  6820d4b100                PUSH 0xb1d420
0048ac31  8d4f48                    LEA ECX,[EDI + 0x48]
0048ac34  e847f7f7ff                CALL 0x0040a380
0048ac39  6820d4b100                PUSH 0xb1d420
0048ac3e  8d4f48                    LEA ECX,[EDI + 0x48]
0048ac41  e8ea03f8ff                CALL 0x0040b030
0048ac46  84c0                      TEST AL,AL
0048ac48  0f8456010000              JZ 0x0048ada4
0048ac4e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048ac54  8d4c2408                  LEA ECX,[ESP + 0x8]
0048ac58  c744240809010000          MOV dword ptr [ESP + 0x8],0x109
0048ac60  e81bbb4c00                CALL 0x00956780
0048ac65  83ec08                    SUB ESP,0x8
0048ac68  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048ac70  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048ac77  6a00                      PUSH 0x0
0048ac79  6a02                      PUSH 0x2
0048ac7b  51                        PUSH ECX
0048ac7c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048ac83  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048ac89  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0048ac8d  e89e2f4a00                CALL 0x0092dc30
0048ac92  6800000010                PUSH 0x10000000
0048ac97  6a00                      PUSH 0x0
0048ac99  8bcf                      MOV ECX,EDI
0048ac9b  c744241002000000          MOV dword ptr [ESP + 0x10],0x2
0048aca3  e888c7f8ff                CALL 0x00417430
0048aca8  84c0                      TEST AL,AL
0048acaa  743b                      JZ 0x0048ace7
0048acac  6a00                      PUSH 0x0
0048acae  51                        PUSH ECX
0048acaf  6a00                      PUSH 0x0
0048acb1  68f4000000                PUSH 0xf4
0048acb6  8bcf                      MOV ECX,EDI
0048acb8  e8231b2200                CALL 0x006ac7e0
0048acbd  6a00                      PUSH 0x0
0048acbf  51                        PUSH ECX
0048acc0  6a00                      PUSH 0x0
0048acc2  be03000000                MOV ESI,0x3
0048acc7  8bcf                      MOV ECX,EDI
0048acc9  6a17                      PUSH 0x17
0048accb  2bf0                      SUB ESI,EAX
0048accd  e80e1b2200                CALL 0x006ac7e0
0048acd2  2bf0                      SUB ESI,EAX
0048acd4  83fe02                    CMP ESI,0x2
0048acd7  7f0e                      JG 0x0048ace7
0048acd9  8bc6                      MOV EAX,ESI
0048acdb  89442408                  MOV dword ptr [ESP + 0x8],EAX
0048acdf  85c0                      TEST EAX,EAX
0048ace1  0f8ebd000000              JLE 0x0048ada4
0048ace7  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0048acec  7462                      JZ 0x0048ad50
0048acee  6690                      NOP
0048acf0  e86b422600                CALL 0x006eef60
0048acf5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048acfb  8bf0                      MOV ESI,EAX
0048acfd  6a00                      PUSH 0x0
0048acff  6a00                      PUSH 0x0
0048ad01  6a00                      PUSH 0x0
0048ad03  51                        PUSH ECX
0048ad04  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0048ad0a  8d873c030000              LEA EAX,[EDI + 0x33c]
0048ad10  c7042400007042            MOV dword ptr [ESP],0x42700000
0048ad17  50                        PUSH EAX
0048ad18  8d44243c                  LEA EAX,[ESP + 0x3c]
0048ad1c  50                        PUSH EAX
0048ad1d  e8fe873800                CALL 0x00813520
0048ad22  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048ad28  6a00                      PUSH 0x0
0048ad2a  56                        PUSH ESI
0048ad2b  6a00                      PUSH 0x0
0048ad2d  57                        PUSH EDI
0048ad2e  6840b6c700                PUSH 0xc7b640
0048ad33  50                        PUSH EAX
0048ad34  6a00                      PUSH 0x0
0048ad36  68f4000000                PUSH 0xf4
0048ad3b  e8d0362700                CALL 0x006fe410
0048ad40  836c240801                SUB dword ptr [ESP + 0x8],0x1
0048ad45  75a9                      JNZ 0x0048acf0
0048ad47  eb5b                      JMP 0x0048ada4
0048ad50  e80b422600                CALL 0x006eef60
0048ad55  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048ad5b  8bf0                      MOV ESI,EAX
0048ad5d  6a00                      PUSH 0x0
0048ad5f  6a00                      PUSH 0x0
0048ad61  6a00                      PUSH 0x0
0048ad63  51                        PUSH ECX
0048ad64  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0048ad6a  8d873c030000              LEA EAX,[EDI + 0x33c]
0048ad70  c7042400007042            MOV dword ptr [ESP],0x42700000
0048ad77  50                        PUSH EAX
0048ad78  8d44243c                  LEA EAX,[ESP + 0x3c]
0048ad7c  50                        PUSH EAX
0048ad7d  e89e873800                CALL 0x00813520
0048ad82  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048ad88  6a00                      PUSH 0x0
0048ad8a  56                        PUSH ESI
0048ad8b  6a00                      PUSH 0x0
0048ad8d  57                        PUSH EDI
0048ad8e  6840b6c700                PUSH 0xc7b640
0048ad93  50                        PUSH EAX
0048ad94  6a00                      PUSH 0x0
0048ad96  6a17                      PUSH 0x17
0048ad98  e873362700                CALL 0x006fe410
0048ad9d  836c240801                SUB dword ptr [ESP + 0x8],0x1
0048ada2  75ac                      JNZ 0x0048ad50
0048ada4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048ada8  7409                      JZ 0x0048adb3
0048adaa  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048adb1  750a                      JNZ 0x0048adbd
0048adb3  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048adbd  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0048adc4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048adcc  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0048add4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048addc  7435                      JZ 0x0048ae13
0048adde  f30f108fb4030000          MOVSS XMM1,dword ptr [EDI + 0x3b4]
0048ade6  0f28c1                    MOVAPS XMM0,XMM1
0048ade9  c787380c00000000803f      MOV dword ptr [EDI + 0xc38],0x3f800000
0048adf3  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0048adfb  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0048ae03  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
0048ae0b  f30f118fe8000000          MOVSS dword ptr [EDI + 0xe8],XMM1
0048ae13  8b8c24e4000000            MOV ECX,dword ptr [ESP + 0xe4]
0048ae1a  5f                        POP EDI
0048ae1b  5e                        POP ESI
0048ae1c  33cc                      XOR ECX,ESP
0048ae1e  e808436600                CALL 0x00aef12b
0048ae23  8be5                      MOV ESP,EBP
0048ae25  5d                        POP EBP
0048ae26  c3                        RET
