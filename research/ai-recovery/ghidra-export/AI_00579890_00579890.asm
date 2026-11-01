; J460 NPC AI 0x00579890 AI_00579890
; types=900
; identities=900.0.0
; entry=00579890
00579890  55                        PUSH EBP
00579891  8bec                      MOV EBP,ESP
00579893  83e4f8                    AND ESP,0xfffffff8
00579896  81ec20030000              SUB ESP,0x320
0057989c  a1b493bf00                MOV EAX,[0x00bf93b4]
005798a1  33c4                      XOR EAX,ESP
005798a3  8984241c030000            MOV dword ptr [ESP + 0x31c],EAX
005798aa  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
005798b2  a17816c700                MOV EAX,[0x00c71678]
005798b7  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005798bf  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
005798c7  56                        PUSH ESI
005798c8  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005798ce  57                        PUSH EDI
005798cf  8bf9                      MOV EDI,ECX
005798d1  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
005798d7  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
005798df  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
005798e5  0f57c0                    XORPS XMM0,XMM0
005798e8  897c2438                  MOV dword ptr [ESP + 0x38],EDI
005798ec  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
005798f2  8bf2                      MOV ESI,EDX
005798f4  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
005798f8  83fa10                    CMP EDX,0x10
005798fb  0f84440a0000              JZ 0x0057a345
00579901  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
00579907  3c02                      CMP AL,0x2
00579909  0f8d360a0000              JGE 0x0057a345
0057990f  0fbec0                    MOVSX EAX,AL
00579912  b902000000                MOV ECX,0x2
00579917  2bc8                      SUB ECX,EAX
00579919  660f6ec1                  MOVD XMM0,ECX
0057991d  0f5bc0                    CVTDQ2PS XMM0,XMM0
00579920  f30f598784030000          MULSS XMM0,dword ptr [EDI + 0x384]
00579928  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
00579930  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00579937  0f86050a0000              JBE 0x0057a342
0057993d  83fa06                    CMP EDX,0x6
00579940  0f8585000000              JNZ 0x005799cb
00579946  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0057994c  8d8c2480000000            LEA ECX,[ESP + 0x80]
00579953  c784248000000030000000    MOV dword ptr [ESP + 0x80],0x30
0057995e  e81dce3d00                CALL 0x00956780
00579963  83ec08                    SUB ESP,0x8
00579966  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0057996e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579975  6a00                      PUSH 0x0
00579977  6a02                      PUSH 0x2
00579979  51                        PUSH ECX
0057997a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579981  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00579987  ffb42494000000            PUSH dword ptr [ESP + 0x94]
0057998e  e89d423b00                CALL 0x0092dc30
00579993  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
00579999  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
0057999f  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
005799a5  898740030000              MOV dword ptr [EDI + 0x340],EAX
005799ab  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005799b3  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005799bb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005799c3  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005799cb  51                        PUSH ECX
005799cc  c704240000803f            MOV dword ptr [ESP],0x3f800000
005799d3  6a00                      PUSH 0x0
005799d5  6a02                      PUSH 0x2
005799d7  51                        PUSH ECX
005799d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
005799df  8bcf                      MOV ECX,EDI
005799e1  6a70                      PUSH 0x70
005799e3  e8b8d11500                CALL 0x006d6ba0
005799e8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005799ee  8d8c2484000000            LEA ECX,[ESP + 0x84]
005799f5  c78424840000001e000000    MOV dword ptr [ESP + 0x84],0x1e
00579a00  e87bcd3d00                CALL 0x00956780
00579a05  83ec08                    SUB ESP,0x8
00579a08  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00579a10  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579a17  6a00                      PUSH 0x0
00579a19  6a02                      PUSH 0x2
00579a1b  51                        PUSH ECX
00579a1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579a23  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00579a29  ffb42498000000            PUSH dword ptr [ESP + 0x98]
00579a30  e8fb413b00                CALL 0x0092dc30
00579a35  e826551700                CALL 0x006eef60
00579a3a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00579a40  8db73c030000              LEA ESI,[EDI + 0x33c]
00579a46  6a00                      PUSH 0x0
00579a48  50                        PUSH EAX
00579a49  6a03                      PUSH 0x3
00579a4b  6a00                      PUSH 0x0
00579a4d  6840b6c700                PUSH 0xc7b640
00579a52  56                        PUSH ESI
00579a53  6a02                      PUSH 0x2
00579a55  68e8030000                PUSH 0x3e8
00579a5a  e8b1491800                CALL 0x006fe410
00579a5f  8bc8                      MOV ECX,EAX
00579a61  8b10                      MOV EDX,dword ptr [EAX]
00579a63  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
00579a6d  c780500300000000c0c1      MOV dword ptr [EAX + 0x350],0xc1c00000
00579a77  ff520c                    CALL dword ptr [EDX + 0xc]
00579a7a  e8e1541700                CALL 0x006eef60
00579a7f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00579a85  6a00                      PUSH 0x0
00579a87  50                        PUSH EAX
00579a88  6a00                      PUSH 0x0
00579a8a  6a00                      PUSH 0x0
00579a8c  6840b6c700                PUSH 0xc7b640
00579a91  56                        PUSH ESI
00579a92  6a07                      PUSH 0x7
00579a94  68e8030000                PUSH 0x3e8
00579a99  e872491800                CALL 0x006fe410
00579a9e  8bc8                      MOV ECX,EAX
00579aa0  8b10                      MOV EDX,dword ptr [EAX]
00579aa2  ff520c                    CALL dword ptr [EDX + 0xc]
00579aa5  e8b6541700                CALL 0x006eef60
00579aaa  33d2                      XOR EDX,EDX
00579aac  b903000000                MOV ECX,0x3
00579ab1  f7f1                      DIV ECX
00579ab3  8d7208                    LEA ESI,[EDX + 0x8]
00579ab6  8974240c                  MOV dword ptr [ESP + 0xc],ESI
00579aba  85f6                      TEST ESI,ESI
00579abc  0f8e74070000              JLE 0x0057a236
00579ac2  e899541700                CALL 0x006eef60
00579ac7  660f6ec0                  MOVD XMM0,EAX
00579acb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00579acf  c1e81f                    SHR EAX,0x1f
00579ad2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00579adb  660f5ac8                  CVTPD2PS XMM1,XMM0
00579adf  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00579ae7  f30f590d04a7ba00          MULSS XMM1,dword ptr [0x00baa704]
00579aef  f30f58c9                  ADDSS XMM1,XMM1
00579af3  0f28c1                    MOVAPS XMM0,XMM1
00579af6  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
00579afc  e83f3aeaff                CALL 0x0041d540
00579b01  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00579b09  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
00579b11  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00579b19  f30f11842488000000        MOVSS dword ptr [ESP + 0x88],XMM0
00579b22  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00579b28  e8f339eaff                CALL 0x0041d520
00579b2d  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00579b35  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
00579b3d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00579b45  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
00579b4e  e80d541700                CALL 0x006eef60
00579b53  660f6ec0                  MOVD XMM0,EAX
00579b57  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00579b5b  c1e81f                    SHR EAX,0x1f
00579b5e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00579b67  660f5ac0                  CVTPD2PS XMM0,XMM0
00579b6b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00579b73  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00579b7b  f30f58c0                  ADDSS XMM0,XMM0
00579b7f  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00579b85  e8d6531700                CALL 0x006eef60
00579b8a  660f6ec0                  MOVD XMM0,EAX
00579b8e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00579b92  c1e81f                    SHR EAX,0x1f
00579b95  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00579b9e  660f5ac0                  CVTPD2PS XMM0,XMM0
00579ba2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00579baa  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00579bb2  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00579bba  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
00579bc0  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
00579bc6  e87539eaff                CALL 0x0041d540
00579bcb  f30f5944245c              MULSS XMM0,dword ptr [ESP + 0x5c]
00579bd1  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
00579bd7  f30f11842498000000        MOVSS dword ptr [ESP + 0x98],XMM0
00579be0  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
00579be6  e83539eaff                CALL 0x0041d520
00579beb  f30f5944245c              MULSS XMM0,dword ptr [ESP + 0x5c]
00579bf1  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
00579bf7  f30f1184249c000000        MOVSS dword ptr [ESP + 0x9c],XMM0
00579c00  e85b531700                CALL 0x006eef60
00579c05  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00579c0b  89442424                  MOV dword ptr [ESP + 0x24],EAX
00579c0f  8d442424                  LEA EAX,[ESP + 0x24]
00579c13  50                        PUSH EAX
00579c14  8d442424                  LEA EAX,[ESP + 0x24]
00579c18  894c2460                  MOV dword ptr [ESP + 0x60],ECX
00579c1c  50                        PUSH EAX
00579c1d  6a00                      PUSH 0x0
00579c1f  8d8424a4000000            LEA EAX,[ESP + 0xa4]
00579c26  c744242c00000000          MOV dword ptr [ESP + 0x2c],0x0
00579c2e  50                        PUSH EAX
00579c2f  8d842498000000            LEA EAX,[ESP + 0x98]
00579c36  c744247c05000000          MOV dword ptr [ESP + 0x7c],0x5
00579c3e  50                        PUSH EAX
00579c3f  8d842480000000            LEA EAX,[ESP + 0x80]
00579c46  c744243ce8030000          MOV dword ptr [ESP + 0x3c],0x3e8
00579c4e  50                        PUSH EAX
00579c4f  8d442440                  LEA EAX,[ESP + 0x40]
00579c53  50                        PUSH EAX
00579c54  e887aa2e00                CALL 0x008646e0
00579c59  a17816c700                MOV EAX,[0x00c71678]
00579c5e  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00579c65  0f8c82020000              JL 0x00579eed
00579c6b  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
00579c71  89442408                  MOV dword ptr [ESP + 0x8],EAX
00579c75  e8e6521700                CALL 0x006eef60
00579c7a  837c242805                CMP dword ptr [ESP + 0x28],0x5
00579c7f  8bf0                      MOV ESI,EAX
00579c81  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00579c89  a174f6b100                MOV EAX,[0x00b1f674]
00579c8e  89742440                  MOV dword ptr [ESP + 0x40],ESI
00579c92  660fd68424d4000000        MOVQ qword ptr [ESP + 0xd4],XMM0
00579c9b  89442430                  MOV dword ptr [ESP + 0x30],EAX
00579c9f  898424dc000000            MOV dword ptr [ESP + 0xdc],EAX
00579ca6  0f8541020000              JNZ 0x00579eed
00579cac  8b4c246c                  MOV ECX,dword ptr [ESP + 0x6c]
00579cb0  81f92c010000              CMP ECX,0x12c
00579cb6  0f87f2010000              JA 0x00579eae
00579cbc  0f843a010000              JZ 0x00579dfc
00579cc2  83f946                    CMP ECX,0x46
00579cc5  0f8481000000              JZ 0x00579d4c
00579ccb  83f964                    CMP ECX,0x64
00579cce  0f8519020000              JNZ 0x00579eed
00579cd4  8b742420                  MOV ESI,dword ptr [ESP + 0x20]
00579cd8  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00579cdc  89742414                  MOV dword ptr [ESP + 0x14],ESI
00579ce0  83fe19                    CMP ESI,0x19
00579ce3  743e                      JZ 0x00579d23
00579ce5  8d842490000000            LEA EAX,[ESP + 0x90]
00579cec  89b42490000000            MOV dword ptr [ESP + 0x90],ESI
00579cf3  50                        PUSH EAX
00579cf4  8d8424e8000000            LEA EAX,[ESP + 0xe8]
00579cfb  8d4920                    LEA ECX,[ECX + 0x20]
00579cfe  50                        PUSH EAX
00579cff  e89cebeaff                CALL 0x004288a0
00579d04  8b8424ec000000            MOV EAX,dword ptr [ESP + 0xec]
00579d0b  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00579d0f  80780d00                  CMP byte ptr [EAX + 0xd],0x0
00579d13  750a                      JNZ 0x00579d1f
00579d15  3b7010                    CMP ESI,dword ptr [EAX + 0x10]
00579d18  7c05                      JL 0x00579d1f
00579d1a  3b4120                    CMP EAX,dword ptr [ECX + 0x20]
00579d1d  7504                      JNZ 0x00579d23
00579d1f  b001                      MOV AL,0x1
00579d21  eb02                      JMP 0x00579d25
00579d23  32c0                      XOR AL,AL
00579d25  85f6                      TEST ESI,ESI
00579d27  7408                      JZ 0x00579d31
00579d29  84c0                      TEST AL,AL
00579d2b  0f84c4010000              JZ 0x00579ef5
00579d31  8b01                      MOV EAX,dword ptr [ECX]
00579d33  6a00                      PUSH 0x0
00579d35  8b8084000000              MOV EAX,dword ptr [EAX + 0x84]
00579d3b  ffd0                      CALL EAX
00579d3d  8bf0                      MOV ESI,EAX
00579d3f  89742414                  MOV dword ptr [ESP + 0x14],ESI
00579d43  89742420                  MOV dword ptr [ESP + 0x20],ESI
00579d47  e9a9010000                JMP 0x00579ef5
00579d4c  8b542420                  MOV EDX,dword ptr [ESP + 0x20]
00579d50  8bc2                      MOV EAX,EDX
00579d52  c1e80b                    SHR EAX,0xb
00579d55  89442464                  MOV dword ptr [ESP + 0x64],EAX
00579d59  89542414                  MOV dword ptr [ESP + 0x14],EDX
00579d5d  85d2                      TEST EDX,EDX
00579d5f  7430                      JZ 0x00579d91
00579d61  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00579d65  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00579d6b  6a00                      PUSH 0x0
00579d6d  52                        PUSH EDX
00579d6e  8b00                      MOV EAX,dword ptr [EAX]
00579d70  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00579d76  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
00579d79  e802ad1b00                CALL 0x00734a80
00579d7e  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00579d82  50                        PUSH EAX
00579d83  ffd6                      CALL ESI
00579d85  84c0                      TEST AL,AL
00579d87  0f8468010000              JZ 0x00579ef5
00579d8d  8b742440                  MOV ESI,dword ptr [ESP + 0x40]
00579d91  a17816c700                MOV EAX,[0x00c71678]
00579d96  0540a70100                ADD EAX,0x1a740
00579d9b  89442414                  MOV dword ptr [ESP + 0x14],EAX
00579d9f  85f6                      TEST ESI,ESI
00579da1  7510                      JNZ 0x00579db3
00579da3  6854bfb600                PUSH 0xb6bf54
00579da8  6a10                      PUSH 0x10
00579daa  e811754900                CALL 0x00a112c0
00579daf  83c408                    ADD ESP,0x8
00579db2  cc                        INT3
00579db3  8b8c24d4000000            MOV ECX,dword ptr [ESP + 0xd4]
00579dba  8bd6                      MOV EDX,ESI
00579dbc  d3ea                      SHR EDX,CL
00579dbe  8b8c24d8000000            MOV ECX,dword ptr [ESP + 0xd8]
00579dc5  33d6                      XOR EDX,ESI
00579dc7  8bc2                      MOV EAX,EDX
00579dc9  d3e0                      SHL EAX,CL
00579dcb  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
00579dcf  33c2                      XOR EAX,EDX
00579dd1  8bf0                      MOV ESI,EAX
00579dd3  d3ee                      SHR ESI,CL
00579dd5  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00579dd9  33f0                      XOR ESI,EAX
00579ddb  56                        PUSH ESI
00579ddc  89742444                  MOV dword ptr [ESP + 0x44],ESI
00579de0  e81bab1b00                CALL 0x00734900
00579de5  8bd0                      MOV EDX,EAX
00579de7  8b442464                  MOV EAX,dword ptr [ESP + 0x64]
00579deb  83e001                    AND EAX,0x1
00579dee  c1e00b                    SHL EAX,0xb
00579df1  0bd0                      OR EDX,EAX
00579df3  89542420                  MOV dword ptr [ESP + 0x20],EDX
00579df7  e95dffffff                JMP 0x00579d59
00579dfc  8b742420                  MOV ESI,dword ptr [ESP + 0x20]
00579e00  89742414                  MOV dword ptr [ESP + 0x14],ESI
00579e04  85f6                      TEST ESI,ESI
00579e06  7414                      JZ 0x00579e1c
00579e08  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00579e0c  56                        PUSH ESI
00579e0d  8b01                      MOV EAX,dword ptr [ECX]
00579e0f  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00579e12  ffd0                      CALL EAX
00579e14  84c0                      TEST AL,AL
00579e16  0f84d9000000              JZ 0x00579ef5
00579e1c  8b742440                  MOV ESI,dword ptr [ESP + 0x40]
00579e20  85f6                      TEST ESI,ESI
00579e22  7510                      JNZ 0x00579e34
00579e24  6854bfb600                PUSH 0xb6bf54
00579e29  6a10                      PUSH 0x10
00579e2b  e890744900                CALL 0x00a112c0
00579e30  83c408                    ADD ESP,0x8
00579e33  cc                        INT3
00579e34  8b8c24d4000000            MOV ECX,dword ptr [ESP + 0xd4]
00579e3b  8bc6                      MOV EAX,ESI
00579e3d  d3e8                      SHR EAX,CL
00579e3f  8b8c24d8000000            MOV ECX,dword ptr [ESP + 0xd8]
00579e46  33c6                      XOR EAX,ESI
00579e48  8bd0                      MOV EDX,EAX
00579e4a  d3e2                      SHL EDX,CL
00579e4c  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
00579e50  33d0                      XOR EDX,EAX
00579e52  6a01                      PUSH 0x1
00579e54  6a0a                      PUSH 0xa
00579e56  8bf2                      MOV ESI,EDX
00579e58  6a0a                      PUSH 0xa
00579e5a  d3ee                      SHR ESI,CL
00579e5c  33f2                      XOR ESI,EDX
00579e5e  6a19                      PUSH 0x19
00579e60  56                        PUSH ESI
00579e61  89742454                  MOV dword ptr [ESP + 0x54],ESI
00579e65  e816a31b00                CALL 0x00734180
00579e6a  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00579e72  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
00579e78  6a00                      PUSH 0x0
00579e7a  6a01                      PUSH 0x1
00579e7c  6a01                      PUSH 0x1
00579e7e  50                        PUSH EAX
00579e7f  8d842428010000            LEA EAX,[ESP + 0x128]
00579e86  89b42428010000            MOV dword ptr [ESP + 0x128],ESI
00579e8d  50                        PUSH EAX
00579e8e  660fd6842430010000        MOVQ qword ptr [ESP + 0x130],XMM0
00579e97  898c2438010000            MOV dword ptr [ESP + 0x138],ECX
00579e9e  e89db42e00                CALL 0x00865340
00579ea3  8bf0                      MOV ESI,EAX
00579ea5  89742420                  MOV dword ptr [ESP + 0x20],ESI
00579ea9  e952ffffff                JMP 0x00579e00
00579eae  81f95e010000              CMP ECX,0x15e
00579eb4  7537                      JNZ 0x00579eed
00579eb6  8b742420                  MOV ESI,dword ptr [ESP + 0x20]
00579eba  89742414                  MOV dword ptr [ESP + 0x14],ESI
00579ebe  85f6                      TEST ESI,ESI
00579ec0  7410                      JZ 0x00579ed2
00579ec2  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00579ec6  56                        PUSH ESI
00579ec7  8b01                      MOV EAX,dword ptr [ECX]
00579ec9  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
00579ecc  ffd0                      CALL EAX
00579ece  84c0                      TEST AL,AL
00579ed0  7423                      JZ 0x00579ef5
00579ed2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00579ed8  6a00                      PUSH 0x0
00579eda  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00579ee0  e8bb9d1b00                CALL 0x00733ca0
00579ee5  8bf0                      MOV ESI,EAX
00579ee7  89742420                  MOV dword ptr [ESP + 0x20],ESI
00579eeb  ebcd                      JMP 0x00579eba
00579eed  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
00579ef1  89442414                  MOV dword ptr [ESP + 0x14],EAX
00579ef5  8b4c245c                  MOV ECX,dword ptr [ESP + 0x5c]
00579ef9  6a00                      PUSH 0x0
00579efb  ff74242c                  PUSH dword ptr [ESP + 0x2c]
00579eff  8b8980650200              MOV ECX,dword ptr [ECX + 0x26580]
00579f05  e886611700                CALL 0x006f0090
00579f0a  89442430                  MOV dword ptr [ESP + 0x30],EAX
00579f0e  85c0                      TEST EAX,EAX
00579f10  7507                      JNZ 0x00579f19
00579f12  33c9                      XOR ECX,ECX
00579f14  e9f9020000                JMP 0x0057a212
00579f19  e872e54e00                CALL 0x00a68490
00579f1e  89542440                  MOV dword ptr [ESP + 0x40],EDX
00579f22  8bc8                      MOV ECX,EAX
00579f24  badb34b6d7                MOV EDX,0xd7b634db
00579f29  bf82de1b43                MOV EDI,0x431bde82
00579f2e  f7e2                      MUL EDX
00579f30  89442478                  MOV dword ptr [ESP + 0x78],EAX
00579f34  8bf2                      MOV ESI,EDX
00579f36  8bc1                      MOV EAX,ECX
00579f38  b9db34b6d7                MOV ECX,0xd7b634db
00579f3d  f7e7                      MUL EDI
00579f3f  8bf8                      MOV EDI,EAX
00579f41  89542470                  MOV dword ptr [ESP + 0x70],EDX
00579f45  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
00579f49  f7e1                      MUL ECX
00579f4b  8bc8                      MOV ECX,EAX
00579f4d  89542464                  MOV dword ptr [ESP + 0x64],EDX
00579f51  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
00579f55  ba82de1b43                MOV EDX,0x431bde82
00579f5a  f7e2                      MUL EDX
00579f5c  03ce                      ADD ECX,ESI
00579f5e  89542408                  MOV dword ptr [ESP + 0x8],EDX
00579f62  8b542464                  MOV EDX,dword ptr [ESP + 0x64]
00579f66  83d200                    ADC EDX,0x0
00579f69  89442440                  MOV dword ptr [ESP + 0x40],EAX
00579f6d  8b742440                  MOV ESI,dword ptr [ESP + 0x40]
00579f71  03f9                      ADD EDI,ECX
00579f73  8b4c2470                  MOV ECX,dword ptr [ESP + 0x70]
00579f77  83d100                    ADC ECX,0x0
00579f7a  897c2478                  MOV dword ptr [ESP + 0x78],EDI
00579f7e  33c0                      XOR EAX,EAX
00579f80  03d1                      ADD EDX,ECX
00579f82  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00579f86  13c0                      ADC EAX,EAX
00579f88  03f2                      ADD ESI,EDX
00579f8a  13c8                      ADC ECX,EAX
00579f8c  0facce12                  SHRD ESI,ECX,0x12
00579f90  89742440                  MOV dword ptr [ESP + 0x40],ESI
00579f94  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
00579f98  c1e912                    SHR ECX,0x12
00579f9b  8dbec8030000              LEA EDI,[ESI + 0x3c8]
00579fa1  894c2408                  MOV dword ptr [ESP + 0x8],ECX
00579fa5  8b0f                      MOV ECX,dword ptr [EDI]
00579fa7  c7463400000000            MOV dword ptr [ESI + 0x34],0x0
00579fae  c7463800000000            MOV dword ptr [ESI + 0x38],0x0
00579fb5  85c9                      TEST ECX,ECX
00579fb7  741a                      JZ 0x00579fd3
00579fb9  8d842494000000            LEA EAX,[ESP + 0x94]
00579fc0  89bc2494000000            MOV dword ptr [ESP + 0x94],EDI
00579fc7  50                        PUSH EAX
00579fc8  81c1cc030000              ADD ECX,0x3cc
00579fce  e83d52f5ff                CALL 0x004cf210
00579fd3  ff742424                  PUSH dword ptr [ESP + 0x24]
00579fd7  8b06                      MOV EAX,dword ptr [ESI]
00579fd9  ff742418                  PUSH dword ptr [ESP + 0x18]
00579fdd  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
00579fe1  ff742474                  PUSH dword ptr [ESP + 0x74]
00579fe5  c70700000000              MOV dword ptr [EDI],0x0
00579feb  f30f10842494000000        MOVSS XMM0,dword ptr [ESP + 0x94]
00579ff4  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
00579ffc  f30f10842498000000        MOVSS XMM0,dword ptr [ESP + 0x98]
0057a005  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
0057a00d  f30f10442454              MOVSS XMM0,dword ptr [ESP + 0x54]
0057a013  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0057a01b  f30f1044245c              MOVSS XMM0,dword ptr [ESP + 0x5c]
0057a021  51                        PUSH ECX
0057a022  8bce                      MOV ECX,ESI
0057a024  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
0057a02c  ff5004                    CALL dword ptr [EAX + 0x4]
0057a02f  8b44245c                  MOV EAX,dword ptr [ESP + 0x5c]
0057a033  56                        PUSH ESI
0057a034  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
0057a03a  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
0057a040  8d4101                    LEA EAX,[ECX + 0x1]
0057a043  898214120000              MOV dword ptr [EDX + 0x1214],EAX
0057a049  894e20                    MOV dword ptr [ESI + 0x20],ECX
0057a04c  8d8a18120000              LEA ECX,[EDX + 0x1218]
0057a052  e8a9e4e9ff                CALL 0x00418500
0057a057  56                        PUSH ESI
0057a058  e893d81800                CALL 0x007078f0
0057a05d  84c0                      TEST AL,AL
0057a05f  7407                      JZ 0x0057a068
0057a061  51                        PUSH ECX
0057a062  56                        PUSH ESI
0057a063  e858d91800                CALL 0x007079c0
0057a068  80be7201000000            CMP byte ptr [ESI + 0x172],0x0
0057a06f  0f8407010000              JZ 0x0057a17c
0057a075  8b4c245c                  MOV ECX,dword ptr [ESP + 0x5c]
0057a079  8b8158770600              MOV EAX,dword ptr [ECX + 0x67758]
0057a07f  3b815c770600              CMP EAX,dword ptr [ECX + 0x6775c]
0057a085  0f84f1000000              JZ 0x0057a17c
0057a08b  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
0057a08e  8b7e28                    MOV EDI,dword ptr [ESI + 0x28]
0057a091  8db180770600              LEA ESI,[ECX + 0x67780]
0057a097  898424a4000000            MOV dword ptr [ESP + 0xa4],EAX
0057a09e  8bce                      MOV ECX,ESI
0057a0a0  8d8424a0000000            LEA EAX,[ESP + 0xa0]
0057a0a7  89bc24a0000000            MOV dword ptr [ESP + 0xa0],EDI
0057a0ae  50                        PUSH EAX
0057a0af  8d442430                  LEA EAX,[ESP + 0x30]
0057a0b3  50                        PUSH EAX
0057a0b4  e8e7834600                CALL 0x009e24a0
0057a0b9  8b06                      MOV EAX,dword ptr [ESI]
0057a0bb  3944242c                  CMP dword ptr [ESP + 0x2c],EAX
0057a0bf  7537                      JNZ 0x0057a0f8
0057a0c1  8d8424a8000000            LEA EAX,[ESP + 0xa8]
0057a0c8  89bc24a8000000            MOV dword ptr [ESP + 0xa8],EDI
0057a0cf  50                        PUSH EAX
0057a0d0  8d8424e4000000            LEA EAX,[ESP + 0xe4]
0057a0d7  c78424b0000000ffffffff    MOV dword ptr [ESP + 0xb0],0xffffffff
0057a0e2  50                        PUSH EAX
0057a0e3  8bce                      MOV ECX,ESI
0057a0e5  e8b6834600                CALL 0x009e24a0
0057a0ea  8b00                      MOV EAX,dword ptr [EAX]
0057a0ec  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0057a0f0  3b06                      CMP EAX,dword ptr [ESI]
0057a0f2  0f8484000000              JZ 0x0057a17c
0057a0f8  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0057a0fe  33ff                      XOR EDI,EDI
0057a100  81c6a8ba0100              ADD ESI,0x1baa8
0057a106  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0057a109  2b06                      SUB EAX,dword ptr [ESI]
0057a10b  c1f802                    SAR EAX,0x2
0057a10e  85c0                      TEST EAX,EAX
0057a110  746a                      JZ 0x0057a17c
0057a112  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0057a115  8bc1                      MOV EAX,ECX
0057a117  2b06                      SUB EAX,dword ptr [ESI]
0057a119  c1f802                    SAR EAX,0x2
0057a11c  85c0                      TEST EAX,EAX
0057a11e  7512                      JNZ 0x0057a132
0057a120  68bce6b700                PUSH 0xb7e6bc
0057a125  6a10                      PUSH 0x10
0057a127  e894714900                CALL 0x00a112c0
0057a12c  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0057a12f  83c408                    ADD ESP,0x8
0057a132  8b06                      MOV EAX,dword ptr [ESI]
0057a134  2bc8                      SUB ECX,EAX
0057a136  c1f902                    SAR ECX,0x2
0057a139  3bf9                      CMP EDI,ECX
0057a13b  7303                      JNC 0x0057a140
0057a13d  8d04b8                    LEA EAX,[EAX + EDI*0x4]
0057a140  8d8c2498000000            LEA ECX,[ESP + 0x98]
0057a147  51                        PUSH ECX
0057a148  8d8c248c000000            LEA ECX,[ESP + 0x8c]
0057a14f  51                        PUSH ECX
0057a150  ff742438                  PUSH dword ptr [ESP + 0x38]
0057a154  8b08                      MOV ECX,dword ptr [EAX]
0057a156  6a06                      PUSH 0x6
0057a158  81c1c81f0000              ADD ECX,0x1fc8
0057a15e  e81d654600                CALL 0x009e0680
0057a163  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0057a169  47                        INC EDI
0057a16a  81c6a8ba0100              ADD ESI,0x1baa8
0057a170  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0057a173  2b06                      SUB EAX,dword ptr [ESI]
0057a175  c1f802                    SAR EAX,0x2
0057a178  3bf8                      CMP EDI,EAX
0057a17a  7296                      JC 0x0057a112
0057a17c  e80fe34e00                CALL 0x00a68490
0057a181  89542424                  MOV dword ptr [ESP + 0x24],EDX
0057a185  8bc8                      MOV ECX,EAX
0057a187  badb34b6d7                MOV EDX,0xd7b634db
0057a18c  bf82de1b43                MOV EDI,0x431bde82
0057a191  f7e2                      MUL EDX
0057a193  8bf2                      MOV ESI,EDX
0057a195  89442478                  MOV dword ptr [ESP + 0x78],EAX
0057a199  8bc1                      MOV EAX,ECX
0057a19b  b9db34b6d7                MOV ECX,0xd7b634db
0057a1a0  f7e7                      MUL EDI
0057a1a2  89542448                  MOV dword ptr [ESP + 0x48],EDX
0057a1a6  8bf8                      MOV EDI,EAX
0057a1a8  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
0057a1ac  f7e1                      MUL ECX
0057a1ae  89542450                  MOV dword ptr [ESP + 0x50],EDX
0057a1b2  8bc8                      MOV ECX,EAX
0057a1b4  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
0057a1b8  ba82de1b43                MOV EDX,0x431bde82
0057a1bd  f7e2                      MUL EDX
0057a1bf  03ce                      ADD ECX,ESI
0057a1c1  89542464                  MOV dword ptr [ESP + 0x64],EDX
0057a1c5  8b542450                  MOV EDX,dword ptr [ESP + 0x50]
0057a1c9  83d200                    ADC EDX,0x0
0057a1cc  89442470                  MOV dword ptr [ESP + 0x70],EAX
0057a1d0  03f9                      ADD EDI,ECX
0057a1d2  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
0057a1d6  897c2478                  MOV dword ptr [ESP + 0x78],EDI
0057a1da  83d100                    ADC ECX,0x0
0057a1dd  8b7c2438                  MOV EDI,dword ptr [ESP + 0x38]
0057a1e1  33c0                      XOR EAX,EAX
0057a1e3  03d1                      ADD EDX,ECX
0057a1e5  8b4c2470                  MOV ECX,dword ptr [ESP + 0x70]
0057a1e9  13c0                      ADC EAX,EAX
0057a1eb  03ca                      ADD ECX,EDX
0057a1ed  8b542464                  MOV EDX,dword ptr [ESP + 0x64]
0057a1f1  13d0                      ADC EDX,EAX
0057a1f3  0facd112                  SHRD ECX,EDX,0x12
0057a1f7  c1ea12                    SHR EDX,0x12
0057a1fa  2b4c2440                  SUB ECX,dword ptr [ESP + 0x40]
0057a1fe  1b542408                  SBB EDX,dword ptr [ESP + 0x8]
0057a202  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
0057a208  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
0057a20c  111534b6c700              ADC dword ptr [0x00c7b634],EDX
0057a212  8b01                      MOV EAX,dword ptr [ECX]
0057a214  c7814c03000000000000      MOV dword ptr [ECX + 0x34c],0x0
0057a21e  c781500300000000c0c1      MOV dword ptr [ECX + 0x350],0xc1c00000
0057a228  ff500c                    CALL dword ptr [EAX + 0xc]
0057a22b  836c240c01                SUB dword ptr [ESP + 0xc],0x1
0057a230  0f858cf8ffff              JNZ 0x00579ac2
0057a236  80bfc00b000000            CMP byte ptr [EDI + 0xbc0],0x0
0057a23d  0fbe87c10b0000            MOVSX EAX,byte ptr [EDI + 0xbc1]
0057a244  7409                      JZ 0x0057a24f
0057a246  8b0c856c1fb600            MOV ECX,dword ptr [EAX*0x4 + 0xb61f6c]
0057a24d  eb07                      JMP 0x0057a256
0057a24f  8b0c85741fb600            MOV ECX,dword ptr [EAX*0x4 + 0xb61f74]
0057a256  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0057a259  894c240c                  MOV dword ptr [ESP + 0xc],ECX
0057a25d  85f6                      TEST ESI,ESI
0057a25f  744a                      JZ 0x0057a2ab
0057a261  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0057a265  8bc6                      MOV EAX,ESI
0057a267  7207                      JC 0x0057a270
0057a269  8b06                      MOV EAX,dword ptr [ESI]
0057a26b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0057a270  8a10                      MOV DL,byte ptr [EAX]
0057a272  3a11                      CMP DL,byte ptr [ECX]
0057a274  751a                      JNZ 0x0057a290
0057a276  84d2                      TEST DL,DL
0057a278  7412                      JZ 0x0057a28c
0057a27a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0057a27d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0057a280  750e                      JNZ 0x0057a290
0057a282  83c002                    ADD EAX,0x2
0057a285  83c102                    ADD ECX,0x2
0057a288  84d2                      TEST DL,DL
0057a28a  75e4                      JNZ 0x0057a270
0057a28c  33c0                      XOR EAX,EAX
0057a28e  eb05                      JMP 0x0057a295
0057a290  1bc0                      SBB EAX,EAX
0057a292  83c801                    OR EAX,0x1
0057a295  85c0                      TEST EAX,EAX
0057a297  7512                      JNZ 0x0057a2ab
0057a299  384634                    CMP byte ptr [ESI + 0x34],AL
0057a29c  742d                      JZ 0x0057a2cb
0057a29e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0057a2a4  8d7748                    LEA ESI,[EDI + 0x48]
0057a2a7  7522                      JNZ 0x0057a2cb
0057a2a9  eb03                      JMP 0x0057a2ae
0057a2ab  8d7748                    LEA ESI,[EDI + 0x48]
0057a2ae  6a01                      PUSH 0x1
0057a2b0  ff742410                  PUSH dword ptr [ESP + 0x10]
0057a2b4  8bce                      MOV ECX,ESI
0057a2b6  e81503e9ff                CALL 0x0040a5d0
0057a2bb  84c0                      TEST AL,AL
0057a2bd  740c                      JZ 0x0057a2cb
0057a2bf  8d4e30                    LEA ECX,[ESI + 0x30]
0057a2c2  e8e9fee8ff                CALL 0x0040a1b0
0057a2c7  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0057a2cb  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0057a2d5  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
0057a2df  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0057a2e3  0f57c0                    XORPS XMM0,XMM0
0057a2e6  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0057a2ec  0f8476050000              JZ 0x0057a868
0057a2f2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0057a2f9  0f8469050000              JZ 0x0057a868
0057a2ff  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
0057a306  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0057a309  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
0057a30c  3bc1                      CMP EAX,ECX
0057a30e  0f845f170000              JZ 0x0057ba73
0057a314  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
0057a31c  0f1f4000                  NOP dword ptr [EAX]
0057a320  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0057a324  f30f59c1                  MULSS XMM0,XMM1
0057a328  f30f1100                  MOVSS dword ptr [EAX],XMM0
0057a32c  83c038                    ADD EAX,0x38
0057a32f  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
0057a334  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
0057a339  3bc1                      CMP EAX,ECX
0057a33b  75e3                      JNZ 0x0057a320
0057a33d  e931170000                JMP 0x0057ba73
0057a342  0f57c0                    XORPS XMM0,XMM0
0057a345  83fe10                    CMP ESI,0x10
0057a348  0f8725170000              JA 0x0057ba73
0057a34e  ff24b5e8bd5700            JMP dword ptr [ESI*0x4 + 0x57bde8]
0057a868  c687c00b000000            MOV byte ptr [EDI + 0xbc0],0x0
0057a86f  e8ec461700                CALL 0x006eef60
0057a874  33d2                      XOR EDX,EDX
0057a876  b91e000000                MOV ECX,0x1e
0057a87b  f7f1                      DIV ECX
0057a87d  03d1                      ADD EDX,ECX
0057a87f  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0057a885  fe87c10b0000              INC byte ptr [EDI + 0xbc1]
0057a88b  c687c30b000000            MOV byte ptr [EDI + 0xbc3],0x0
0057a892  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0057a89c  e9d2110000                JMP 0x0057ba73
0057ba73  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0057ba79  83f808                    CMP EAX,0x8
0057ba7c  740a                      JZ 0x0057ba88
0057ba7e  83f809                    CMP EAX,0x9
0057ba81  7405                      JZ 0x0057ba88
0057ba83  83f80a                    CMP EAX,0xa
0057ba86  755f                      JNZ 0x0057bae7
0057ba88  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0057ba8c  8d7778                    LEA ESI,[EDI + 0x78]
0057ba8f  7456                      JZ 0x0057bae7
0057ba91  6844d6b100                PUSH 0xb1d644
0057ba96  8bce                      MOV ECX,ESI
0057ba98  e833f3e8ff                CALL 0x0040add0
0057ba9d  84c0                      TEST AL,AL
0057ba9f  7429                      JZ 0x0057baca
0057baa1  51                        PUSH ECX
0057baa2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0057baa9  6a00                      PUSH 0x0
0057baab  6a02                      PUSH 0x2
0057baad  51                        PUSH ECX
0057baae  c704240000803f            MOV dword ptr [ESP],0x3f800000
0057bab5  8bcf                      MOV ECX,EDI
0057bab7  683a010000                PUSH 0x13a
0057babc  e8dfb01500                CALL 0x006d6ba0
0057bac1  c687c00b000001            MOV byte ptr [EDI + 0xbc0],0x1
0057bac8  eb1d                      JMP 0x0057bae7
0057baca  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0057bace  7417                      JZ 0x0057bae7
0057bad0  68f4fdb500                PUSH 0xb5fdf4
0057bad5  8bce                      MOV ECX,ESI
0057bad7  e8f4f2e8ff                CALL 0x0040add0
0057badc  84c0                      TEST AL,AL
0057bade  7407                      JZ 0x0057bae7
0057bae0  c687c00b000000            MOV byte ptr [EDI + 0xbc0],0x0
0057bae7  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
0057baee  7463                      JZ 0x0057bb53
0057baf0  a17816c700                MOV EAX,[0x00c71678]
0057baf5  8d4f48                    LEA ECX,[EDI + 0x48]
0057baf8  6a00                      PUSH 0x0
0057bafa  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0057bb00  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0057bb05  f30f5805e8a7ba00          ADDSS XMM0,dword ptr [0x00baa7e8]
0057bb0d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0057bb15  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0057bb1d  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0057bb25  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0057bb2c  7607                      JBE 0x0057bb35
0057bb2e  68c0dab100                PUSH 0xb1dac0
0057bb33  eb19                      JMP 0x0057bb4e
0057bb35  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
0057bb3d  0f2fc8                    COMISS XMM1,XMM0
0057bb40  7607                      JBE 0x0057bb49
0057bb42  6888dab100                PUSH 0xb1da88
0057bb47  eb05                      JMP 0x0057bb4e
0057bb49  68401fb600                PUSH 0xb61f40
0057bb4e  e8edede8ff                CALL 0x0040a940
0057bb53  83bf640b000007            CMP dword ptr [EDI + 0xb64],0x7
0057bb5a  0f845c020000              JZ 0x0057bdbc
0057bb60  8bcf                      MOV ECX,EDI
0057bb62  e8d92c1400                CALL 0x006be840
0057bb67  8ab7c10b0000              MOV DH,byte ptr [EDI + 0xbc1]
0057bb6d  f30f101da0a9ba00          MOVSS XMM3,dword ptr [0x00baa9a0]
0057bb75  88742413                  MOV byte ptr [ESP + 0x13],DH
0057bb79  80fe01                    CMP DH,0x1
0057bb7c  754a                      JNZ 0x0057bbc8
0057bb7e  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
0057bb82  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0057bb8a  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
0057bb92  f30f10561c                MOVSS XMM2,dword ptr [ESI + 0x1c]
0057bb97  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
0057bb9c  f30f5cd3                  SUBSS XMM2,XMM3
0057bba0  f30f58c3                  ADDSS XMM0,XMM3
0057bba4  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0057bbac  f30f5cd0                  SUBSS XMM2,XMM0
0057bbb0  f30f59d1                  MULSS XMM2,XMM1
0057bbb4  f30f58d0                  ADDSS XMM2,XMM0
0057bbb8  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0057bbc0  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0057bbc6  eb65                      JMP 0x0057bc2d
0057bbc8  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0057bbd0  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0057bbd8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0057bbde  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0057bbe4  83f808                    CMP EAX,0x8
0057bbe7  741b                      JZ 0x0057bc04
0057bbe9  83f80a                    CMP EAX,0xa
0057bbec  7416                      JZ 0x0057bc04
0057bbee  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0057bbf6  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
0057bbfe  f30f58d0                  ADDSS XMM2,XMM0
0057bc02  eb1f                      JMP 0x0057bc23
0057bc04  0f57c0                    XORPS XMM0,XMM0
0057bc07  0f2fc2                    COMISS XMM0,XMM2
0057bc0a  760a                      JBE 0x0057bc16
0057bc0c  f30f5c157ca8ba00          SUBSS XMM2,dword ptr [0x00baa87c]
0057bc14  eb0d                      JMP 0x0057bc23
0057bc16  0f2fd0                    COMISS XMM2,XMM0
0057bc19  760e                      JBE 0x0057bc29
0057bc1b  f30f58157ca8ba00          ADDSS XMM2,dword ptr [0x00baa87c]
0057bc23  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0057bc29  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
0057bc2d  ff8fa40b0000              DEC dword ptr [EDI + 0xba4]
0057bc33  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
0057bc3a  7f54                      JG 0x0057bc90
0057bc3c  e81f331700                CALL 0x006eef60
0057bc41  660f6ec0                  MOVD XMM0,EAX
0057bc45  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0057bc49  c1e81f                    SHR EAX,0x1f
0057bc4c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0057bc55  660f5ac0                  CVTPD2PS XMM0,XMM0
0057bc59  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0057bc61  f30f58c0                  ADDSS XMM0,XMM0
0057bc65  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
0057bc6d  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0057bc75  e8e6321700                CALL 0x006eef60
0057bc7a  33d2                      XOR EDX,EDX
0057bc7c  b91e000000                MOV ECX,0x1e
0057bc81  f7f1                      DIV ECX
0057bc83  83c20a                    ADD EDX,0xa
0057bc86  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
0057bc8c  8a742413                  MOV DH,byte ptr [ESP + 0x13]
0057bc90  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
0057bc96  0f2f0d04a9ba00            COMISS XMM1,dword ptr [0x00baa904]
0057bc9d  7607                      JBE 0x0057bca6
0057bc9f  b901000000                MOV ECX,0x1
0057bca4  eb10                      JMP 0x0057bcb6
0057bca6  f30f100528aeba00          MOVSS XMM0,dword ptr [0x00baae28]
0057bcae  0f2fc1                    COMISS XMM0,XMM1
0057bcb1  7626                      JBE 0x0057bcd9
0057bcb3  83c9ff                    OR ECX,0xffffffff
0057bcb6  8a97c20b0000              MOV DL,byte ptr [EDI + 0xbc2]
0057bcbc  0fbec2                    MOVSX EAX,DL
0057bcbf  3bc1                      CMP EAX,ECX
0057bcc1  7404                      JZ 0x0057bcc7
0057bcc3  84d2                      TEST DL,DL
0057bcc5  7512                      JNZ 0x0057bcd9
0057bcc7  888fc20b0000              MOV byte ptr [EDI + 0xbc2],CL
0057bccd  c7871004000006000000      MOV dword ptr [EDI + 0x410],0x6
0057bcd7  eb16                      JMP 0x0057bcef
0057bcd9  ff8f10040000              DEC dword ptr [EDI + 0x410]
0057bcdf  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0057bce6  7f07                      JG 0x0057bcef
0057bce8  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0057bcef  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0057bcf5  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
0057bcfc  0f86ba000000              JBE 0x0057bdbc
0057bd02  80fe01                    CMP DH,0x1
0057bd05  743b                      JZ 0x0057bd42
0057bd07  8bcf                      MOV ECX,EDI
0057bd09  e8322b1400                CALL 0x006be840
0057bd0e  f30f1005e0a8ba00          MOVSS XMM0,dword ptr [0x00baa8e0]
0057bd16  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0057bd1e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0057bd26  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0057bd2d  0f2fc1                    COMISS XMM0,XMM1
0057bd30  760a                      JBE 0x0057bd3c
0057bd32  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0057bd3a  eb06                      JMP 0x0057bd42
0057bd3c  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0057bd42  8a87c20b0000              MOV AL,byte ptr [EDI + 0xbc2]
0057bd48  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
0057bd50  84c0                      TEST AL,AL
0057bd52  7e30                      JLE 0x0057bd84
0057bd54  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
0057bd59  f30f5c05a0a9ba00          SUBSS XMM0,dword ptr [0x00baa9a0]
0057bd61  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
0057bd68  7652                      JBE 0x0057bdbc
0057bd6a  f30f59979c030000          MULSS XMM2,dword ptr [EDI + 0x39c]
0057bd72  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0057bd7a  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0057bd82  eb38                      JMP 0x0057bdbc
0057bd84  7936                      JNS 0x0057bdbc
0057bd86  f30f104e14                MOVSS XMM1,dword ptr [ESI + 0x14]
0057bd8b  f30f580da0a9ba00          ADDSS XMM1,dword ptr [0x00baa9a0]
0057bd93  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0057bd9b  0f2fc1                    COMISS XMM0,XMM1
0057bd9e  761c                      JBE 0x0057bdbc
0057bda0  f30f59979c030000          MULSS XMM2,dword ptr [EDI + 0x39c]
0057bda8  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0057bdb0  f30f5cc2                  SUBSS XMM0,XMM2
0057bdb4  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0057bdbc  f30f10442458              MOVSS XMM0,dword ptr [ESP + 0x58]
0057bdc2  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
0057bdca  8b8c2424030000            MOV ECX,dword ptr [ESP + 0x324]
0057bdd1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0057bdd9  5f                        POP EDI
0057bdda  5e                        POP ESI
0057bddb  33cc                      XOR ECX,ESP
0057bddd  e849335700                CALL 0x00aef12b
0057bde2  8be5                      MOV ESP,EBP
0057bde4  5d                        POP EBP
0057bde5  c3                        RET
