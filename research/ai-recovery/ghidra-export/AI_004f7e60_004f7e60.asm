; J460 NPC AI 0x004f7e60 AI_004f7e60
; types=863
; identities=863.0.0,863.0.1,863.0.2
; entry=004f7e60
004f7e60  55                        PUSH EBP
004f7e61  8bec                      MOV EBP,ESP
004f7e63  83ec24                    SUB ESP,0x24
004f7e66  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004f7e6c  8b82acba0100              MOV EAX,dword ptr [EDX + 0x1baac]
004f7e72  2b82a8ba0100              SUB EAX,dword ptr [EDX + 0x1baa8]
004f7e78  53                        PUSH EBX
004f7e79  56                        PUSH ESI
004f7e7a  8db2a8ba0100              LEA ESI,[EDX + 0x1baa8]
004f7e80  c1f802                    SAR EAX,0x2
004f7e83  57                        PUSH EDI
004f7e84  8bf9                      MOV EDI,ECX
004f7e86  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004f7e8a  33db                      XOR EBX,EBX
004f7e8c  897df4                    MOV dword ptr [EBP + -0xc],EDI
004f7e8f  85c0                      TEST EAX,EAX
004f7e91  7462                      JZ 0x004f7ef5
004f7e93  8d7b01                    LEA EDI,[EBX + 0x1]
004f7e96  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004f7e99  8bc1                      MOV EAX,ECX
004f7e9b  2b06                      SUB EAX,dword ptr [ESI]
004f7e9d  c1f802                    SAR EAX,0x2
004f7ea0  85c0                      TEST EAX,EAX
004f7ea2  7518                      JNZ 0x004f7ebc
004f7ea4  68bce6b700                PUSH 0xb7e6bc
004f7ea9  6a10                      PUSH 0x10
004f7eab  e810945100                CALL 0x00a112c0
004f7eb0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004f7eb3  83c408                    ADD ESP,0x8
004f7eb6  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004f7ebc  8b06                      MOV EAX,dword ptr [ESI]
004f7ebe  2bc8                      SUB ECX,EAX
004f7ec0  c1f902                    SAR ECX,0x2
004f7ec3  3bd9                      CMP EBX,ECX
004f7ec5  7303                      JNC 0x004f7eca
004f7ec7  8d0498                    LEA EAX,[EAX + EBX*0x4]
004f7eca  8b00                      MOV EAX,dword ptr [EAX]
004f7ecc  8db2a8ba0100              LEA ESI,[EDX + 0x1baa8]
004f7ed2  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004f7ed5  0fb6c9                    MOVZX ECX,CL
004f7ed8  83b824160000ff            CMP dword ptr [EAX + 0x1624],-0x1
004f7edf  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004f7ee2  0f45cf                    CMOVNZ ECX,EDI
004f7ee5  2b06                      SUB EAX,dword ptr [ESI]
004f7ee7  43                        INC EBX
004f7ee8  c1f802                    SAR EAX,0x2
004f7eeb  894dfc                    MOV dword ptr [EBP + -0x4],ECX
004f7eee  3bd8                      CMP EBX,EAX
004f7ef0  72a4                      JC 0x004f7e96
004f7ef2  8b7df4                    MOV EDI,dword ptr [EBP + -0xc]
004f7ef5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004f7efb  83e800                    SUB EAX,0x0
004f7efe  0f84f4030000              JZ 0x004f82f8
004f7f04  83e803                    SUB EAX,0x3
004f7f07  0f84ba020000              JZ 0x004f81c7
004f7f0d  83e801                    SUB EAX,0x1
004f7f10  0f854d040000              JNZ 0x004f8363
004f7f16  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004f7f19  7408                      JZ 0x004f7f23
004f7f1b  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f7f21  7575                      JNZ 0x004f7f98
004f7f23  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f7f26  85f6                      TEST ESI,ESI
004f7f28  744c                      JZ 0x004f7f76
004f7f2a  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f7f2e  8bc6                      MOV EAX,ESI
004f7f30  7202                      JC 0x004f7f34
004f7f32  8b06                      MOV EAX,dword ptr [ESI]
004f7f34  b9fcd6b100                MOV ECX,0xb1d6fc
004f7f39  0f1f8000000000            NOP dword ptr [EAX]
004f7f40  8a10                      MOV DL,byte ptr [EAX]
004f7f42  3a11                      CMP DL,byte ptr [ECX]
004f7f44  751a                      JNZ 0x004f7f60
004f7f46  84d2                      TEST DL,DL
004f7f48  7412                      JZ 0x004f7f5c
004f7f4a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f7f4d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f7f50  750e                      JNZ 0x004f7f60
004f7f52  83c002                    ADD EAX,0x2
004f7f55  83c102                    ADD ECX,0x2
004f7f58  84d2                      TEST DL,DL
004f7f5a  75e4                      JNZ 0x004f7f40
004f7f5c  33c0                      XOR EAX,EAX
004f7f5e  eb05                      JMP 0x004f7f65
004f7f60  1bc0                      SBB EAX,EAX
004f7f62  83c801                    OR EAX,0x1
004f7f65  85c0                      TEST EAX,EAX
004f7f67  750d                      JNZ 0x004f7f76
004f7f69  384634                    CMP byte ptr [ESI + 0x34],AL
004f7f6c  742a                      JZ 0x004f7f98
004f7f6e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f7f74  7522                      JNZ 0x004f7f98
004f7f76  6a01                      PUSH 0x1
004f7f78  68fcd6b100                PUSH 0xb1d6fc
004f7f7d  8d4f48                    LEA ECX,[EDI + 0x48]
004f7f80  e84b26f1ff                CALL 0x0040a5d0
004f7f85  84c0                      TEST AL,AL
004f7f87  740f                      JZ 0x004f7f98
004f7f89  8d4f78                    LEA ECX,[EDI + 0x78]
004f7f8c  e81f22f1ff                CALL 0x0040a1b0
004f7f91  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f7f98  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f7f9c  7411                      JZ 0x004f7faf
004f7f9e  68dcd2b100                PUSH 0xb1d2dc
004f7fa3  8d4f78                    LEA ECX,[EDI + 0x78]
004f7fa6  e8c52ef1ff                CALL 0x0040ae70
004f7fab  84c0                      TEST AL,AL
004f7fad  750d                      JNZ 0x004f7fbc
004f7faf  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f7fb2  85c0                      TEST EAX,EAX
004f7fb4  7472                      JZ 0x004f8028
004f7fb6  80783400                  CMP byte ptr [EAX + 0x34],0x0
004f7fba  746c                      JZ 0x004f8028
004f7fbc  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004f7fc4  8d45ec                    LEA EAX,[EBP + -0x14]
004f7fc7  51                        PUSH ECX
004f7fc8  c7042400000000            MOV dword ptr [ESP],0x0
004f7fcf  8bcf                      MOV ECX,EDI
004f7fd1  50                        PUSH EAX
004f7fd2  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004f7fd7  e8646c1c00                CALL 0x006bec40
004f7fdc  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004f7fe1  6a01                      PUSH 0x1
004f7fe3  6884030000                PUSH 0x384
004f7fe8  51                        PUSH ECX
004f7fe9  f30f110424                MOVSS dword ptr [ESP],XMM0
004f7fee  8d8f14040000              LEA ECX,[EDI + 0x414]
004f7ff4  50                        PUSH EAX
004f7ff5  e8c6b32e00                CALL 0x007e33c0
004f7ffa  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004f8002  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
004f800a  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004f8012  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
004f801a  f30f5dc1                  MINSS XMM0,XMM1
004f801e  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004f8026  eb30                      JMP 0x004f8058
004f8028  6a01                      PUSH 0x1
004f802a  6884030000                PUSH 0x384
004f802f  83ec08                    SUB ESP,0x8
004f8032  8d45e4                    LEA EAX,[EBP + -0x1c]
004f8035  8bcf                      MOV ECX,EDI
004f8037  c74424049a99993e          MOV dword ptr [ESP + 0x4],0x3e99999a
004f803f  c7042400000000            MOV dword ptr [ESP],0x0
004f8046  50                        PUSH EAX
004f8047  e8f46b1c00                CALL 0x006bec40
004f804c  50                        PUSH EAX
004f804d  8d8f14040000              LEA ECX,[EDI + 0x414]
004f8053  e868b32e00                CALL 0x007e33c0
004f8058  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
004f805e  83f8ff                    CMP EAX,-0x1
004f8061  7422                      JZ 0x004f8085
004f8063  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004f8069  6a00                      PUSH 0x0
004f806b  57                        PUSH EDI
004f806c  50                        PUSH EAX
004f806d  6a0a                      PUSH 0xa
004f806f  e86ce14500                CALL 0x009561e0
004f8074  33c9                      XOR ECX,ECX
004f8076  84c0                      TEST AL,AL
004f8078  0f95c1                    SETNZ CL
004f807b  85c9                      TEST ECX,ECX
004f807d  0f84b0000000              JZ 0x004f8133
004f8083  eb36                      JMP 0x004f80bb
004f8085  8bcf                      MOV ECX,EDI
004f8087  e8b4671c00                CALL 0x006be840
004f808c  50                        PUSH EAX
004f808d  8bcf                      MOV ECX,EDI
004f808f  e8ccfc1d00                CALL 0x006d7d60
004f8094  84c0                      TEST AL,AL
004f8096  0f8497000000              JZ 0x004f8133
004f809c  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
004f80a3  0f848a000000              JZ 0x004f8133
004f80a9  e8b26e1f00                CALL 0x006eef60
004f80ae  33d2                      XOR EDX,EDX
004f80b0  b903000000                MOV ECX,0x3
004f80b5  f7f1                      DIV ECX
004f80b7  85d2                      TEST EDX,EDX
004f80b9  7578                      JNZ 0x004f8133
004f80bb  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004f80c3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004f80c9  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
004f80ce  83f812                    CMP EAX,0x12
004f80d1  750a                      JNZ 0x004f80dd
004f80d3  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f80db  eb0d                      JMP 0x004f80ea
004f80dd  83f813                    CMP EAX,0x13
004f80e0  750d                      JNZ 0x004f80ef
004f80e2  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f80ea  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
004f80ef  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f80f5  8d4df4                    LEA ECX,[EBP + -0xc]
004f80f8  c745f474000000            MOV dword ptr [EBP + -0xc],0x74
004f80ff  e87ce64500                CALL 0x00956780
004f8104  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
004f8109  83ec08                    SUB ESP,0x8
004f810c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f8114  f30f110424                MOVSS dword ptr [ESP],XMM0
004f8119  6a00                      PUSH 0x0
004f811b  6a3c                      PUSH 0x3c
004f811d  51                        PUSH ECX
004f811e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f8125  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f812b  ff75f4                    PUSH dword ptr [EBP + -0xc]
004f812e  e8fd5a4300                CALL 0x0092dc30
004f8133  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004f813a  0f8f23020000              JG 0x004f8363
004f8140  807dfc00                  CMP byte ptr [EBP + -0x4],0x0
004f8144  0f8519020000              JNZ 0x004f8363
004f814a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f814d  85f6                      TEST ESI,ESI
004f814f  7445                      JZ 0x004f8196
004f8151  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f8155  8bc6                      MOV EAX,ESI
004f8157  7202                      JC 0x004f815b
004f8159  8b06                      MOV EAX,dword ptr [ESI]
004f815b  b9b407b600                MOV ECX,0xb607b4
004f8160  8a10                      MOV DL,byte ptr [EAX]
004f8162  3a11                      CMP DL,byte ptr [ECX]
004f8164  751a                      JNZ 0x004f8180
004f8166  84d2                      TEST DL,DL
004f8168  7412                      JZ 0x004f817c
004f816a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f816d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f8170  750e                      JNZ 0x004f8180
004f8172  83c002                    ADD EAX,0x2
004f8175  83c102                    ADD ECX,0x2
004f8178  84d2                      TEST DL,DL
004f817a  75e4                      JNZ 0x004f8160
004f817c  33c0                      XOR EAX,EAX
004f817e  eb05                      JMP 0x004f8185
004f8180  1bc0                      SBB EAX,EAX
004f8182  83c801                    OR EAX,0x1
004f8185  85c0                      TEST EAX,EAX
004f8187  750d                      JNZ 0x004f8196
004f8189  384634                    CMP byte ptr [ESI + 0x34],AL
004f818c  742a                      JZ 0x004f81b8
004f818e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f8194  7522                      JNZ 0x004f81b8
004f8196  6a01                      PUSH 0x1
004f8198  68b407b600                PUSH 0xb607b4
004f819d  8d4f48                    LEA ECX,[EDI + 0x48]
004f81a0  e82b24f1ff                CALL 0x0040a5d0
004f81a5  84c0                      TEST AL,AL
004f81a7  740f                      JZ 0x004f81b8
004f81a9  8d4f78                    LEA ECX,[EDI + 0x78]
004f81ac  e8ff1ff1ff                CALL 0x0040a1b0
004f81b1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f81b8  c787c00b00000a000000      MOV dword ptr [EDI + 0xbc0],0xa
004f81c2  e992010000                JMP 0x004f8359
004f81c7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f81cf  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f81d7  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f81df  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f81e3  7409                      JZ 0x004f81ee
004f81e5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f81ec  756e                      JNZ 0x004f825c
004f81ee  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f81f1  85f6                      TEST ESI,ESI
004f81f3  7445                      JZ 0x004f823a
004f81f5  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f81f9  8bc6                      MOV EAX,ESI
004f81fb  7202                      JC 0x004f81ff
004f81fd  8b06                      MOV EAX,dword ptr [ESI]
004f81ff  b954bcb100                MOV ECX,0xb1bc54
004f8204  8a10                      MOV DL,byte ptr [EAX]
004f8206  3a11                      CMP DL,byte ptr [ECX]
004f8208  751a                      JNZ 0x004f8224
004f820a  84d2                      TEST DL,DL
004f820c  7412                      JZ 0x004f8220
004f820e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f8211  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f8214  750e                      JNZ 0x004f8224
004f8216  83c002                    ADD EAX,0x2
004f8219  83c102                    ADD ECX,0x2
004f821c  84d2                      TEST DL,DL
004f821e  75e4                      JNZ 0x004f8204
004f8220  33c0                      XOR EAX,EAX
004f8222  eb05                      JMP 0x004f8229
004f8224  1bc0                      SBB EAX,EAX
004f8226  83c801                    OR EAX,0x1
004f8229  85c0                      TEST EAX,EAX
004f822b  750d                      JNZ 0x004f823a
004f822d  384634                    CMP byte ptr [ESI + 0x34],AL
004f8230  742a                      JZ 0x004f825c
004f8232  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f8238  7522                      JNZ 0x004f825c
004f823a  6a01                      PUSH 0x1
004f823c  6854bcb100                PUSH 0xb1bc54
004f8241  8d4f48                    LEA ECX,[EDI + 0x48]
004f8244  e88723f1ff                CALL 0x0040a5d0
004f8249  84c0                      TEST AL,AL
004f824b  740f                      JZ 0x004f825c
004f824d  8d4f78                    LEA ECX,[EDI + 0x78]
004f8250  e85b1ff1ff                CALL 0x0040a1b0
004f8255  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f825c  807dfc00                  CMP byte ptr [EBP + -0x4],0x0
004f8260  0f84fd000000              JZ 0x004f8363
004f8266  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f8269  85f6                      TEST ESI,ESI
004f826b  7449                      JZ 0x004f82b6
004f826d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f8271  8bc6                      MOV EAX,ESI
004f8273  7202                      JC 0x004f8277
004f8275  8b06                      MOV EAX,dword ptr [ESI]
004f8277  b9ac07b600                MOV ECX,0xb607ac
004f827c  0f1f4000                  NOP dword ptr [EAX]
004f8280  8a10                      MOV DL,byte ptr [EAX]
004f8282  3a11                      CMP DL,byte ptr [ECX]
004f8284  751a                      JNZ 0x004f82a0
004f8286  84d2                      TEST DL,DL
004f8288  7412                      JZ 0x004f829c
004f828a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f828d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f8290  750e                      JNZ 0x004f82a0
004f8292  83c002                    ADD EAX,0x2
004f8295  83c102                    ADD ECX,0x2
004f8298  84d2                      TEST DL,DL
004f829a  75e4                      JNZ 0x004f8280
004f829c  33c0                      XOR EAX,EAX
004f829e  eb05                      JMP 0x004f82a5
004f82a0  1bc0                      SBB EAX,EAX
004f82a2  83c801                    OR EAX,0x1
004f82a5  85c0                      TEST EAX,EAX
004f82a7  750d                      JNZ 0x004f82b6
004f82a9  384634                    CMP byte ptr [ESI + 0x34],AL
004f82ac  742a                      JZ 0x004f82d8
004f82ae  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f82b4  7522                      JNZ 0x004f82d8
004f82b6  6a01                      PUSH 0x1
004f82b8  68ac07b600                PUSH 0xb607ac
004f82bd  8d4f48                    LEA ECX,[EDI + 0x48]
004f82c0  e80b23f1ff                CALL 0x0040a5d0
004f82c5  84c0                      TEST AL,AL
004f82c7  740f                      JZ 0x004f82d8
004f82c9  8d4f78                    LEA ECX,[EDI + 0x78]
004f82cc  e8df1ef1ff                CALL 0x0040a1b0
004f82d1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f82d8  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004f82e2  c787c00b00000a000000      MOV dword ptr [EDI + 0xbc0],0xa
004f82ec  c787b00b00003333333f      MOV dword ptr [EDI + 0xbb0],0x3f333333
004f82f6  eb6b                      JMP 0x004f8363
004f82f8  837f3000                  CMP dword ptr [EDI + 0x30],0x0
004f82fc  755b                      JNZ 0x004f8359
004f82fe  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
004f8304  f30f7e05d4f4b100          MOVQ XMM0,qword ptr [0x00b1f4d4]
004f830c  8b1ddcf4b100              MOV EBX,dword ptr [0x00b1f4dc]
004f8312  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
004f8317  85f6                      TEST ESI,ESI
004f8319  7510                      JNZ 0x004f832b
004f831b  6854bfb600                PUSH 0xb6bf54
004f8320  6a10                      PUSH 0x10
004f8322  e8998f5100                CALL 0x00a112c0
004f8327  83c408                    ADD ESP,0x8
004f832a  cc                        INT3
004f832b  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004f832e  8bc6                      MOV EAX,ESI
004f8330  d3e8                      SHR EAX,CL
004f8332  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004f8335  33c6                      XOR EAX,ESI
004f8337  8bd0                      MOV EDX,EAX
004f8339  d3e2                      SHL EDX,CL
004f833b  8bcb                      MOV ECX,EBX
004f833d  33d0                      XOR EDX,EAX
004f833f  8bc2                      MOV EAX,EDX
004f8341  d3e8                      SHR EAX,CL
004f8343  8bcf                      MOV ECX,EDI
004f8345  33c2                      XOR EAX,EDX
004f8347  6aff                      PUSH -0x1
004f8349  83e001                    AND EAX,0x1
004f834c  40                        INC EAX
004f834d  50                        PUSH EAX
004f834e  ff772c                    PUSH dword ptr [EDI + 0x2c]
004f8351  ff7728                    PUSH dword ptr [EDI + 0x28]
004f8354  e8d78b1c00                CALL 0x006c0f30
004f8359  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004f8363  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004f8369  85d2                      TEST EDX,EDX
004f836b  7e1a                      JLE 0x004f8387
004f836d  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004f8375  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004f837d  2bc8                      SUB ECX,EAX
004f837f  03ca                      ADD ECX,EDX
004f8381  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
004f8387  5f                        POP EDI
004f8388  5e                        POP ESI
004f8389  5b                        POP EBX
004f838a  8be5                      MOV ESP,EBP
004f838c  5d                        POP EBP
004f838d  c3                        RET
