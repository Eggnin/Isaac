; J460 NPC AI 0x00561a20 AI_00561a20
; types=874
; identities=874.0.0
; entry=00561a20
00561a20  55                        PUSH EBP
00561a21  8bec                      MOV EBP,ESP
00561a23  6aff                      PUSH -0x1
00561a25  68654eaf00                PUSH 0xaf4e65
00561a2a  64a100000000              MOV EAX,FS:[0x0]
00561a30  50                        PUSH EAX
00561a31  81ec2c010000              SUB ESP,0x12c
00561a37  a1b493bf00                MOV EAX,[0x00bf93b4]
00561a3c  33c5                      XOR EAX,EBP
00561a3e  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00561a41  53                        PUSH EBX
00561a42  56                        PUSH ESI
00561a43  57                        PUSH EDI
00561a44  50                        PUSH EAX
00561a45  8d45f4                    LEA EAX,[EBP + -0xc]
00561a48  64a300000000              MOV FS:[0x0],EAX
00561a4e  8bd9                      MOV EBX,ECX
00561a50  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
00561a57  750f                      JNZ 0x00561a68
00561a59  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00561a63  e9fd070000                JMP 0x00562265
00561a68  51                        PUSH ECX
00561a69  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00561a6f  c7042400000000            MOV dword ptr [ESP],0x0
00561a76  50                        PUSH EAX
00561a77  e8c4d11500                CALL 0x006bec40
00561a7c  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
00561a82  32c9                      XOR CL,CL
00561a84  888deffeffff              MOV byte ptr [EBP + 0xfffffeef],CL
00561a8a  83f804                    CMP EAX,0x4
00561a8d  0f85b4040000              JNZ 0x00561f47
00561a93  6a01                      PUSH 0x1
00561a95  6a00                      PUSH 0x0
00561a97  8d8b14040000              LEA ECX,[EBX + 0x414]
00561a9d  51                        PUSH ECX
00561a9e  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00561aa4  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
00561aab  50                        PUSH EAX
00561aac  e80f192800                CALL 0x007e33c0
00561ab1  6a00                      PUSH 0x0
00561ab3  6a05                      PUSH 0x5
00561ab5  8bcb                      MOV ECX,EBX
00561ab7  e854ac1400                CALL 0x006ac710
00561abc  84c0                      TEST AL,AL
00561abe  7459                      JZ 0x00561b19
00561ac0  8bcb                      MOV ECX,EBX
00561ac2  e879cd1500                CALL 0x006be840
00561ac7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00561acf  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00561ad7  f30f5c833c030000          SUBSS XMM0,dword ptr [EBX + 0x33c]
00561adf  f30f5c8b40030000          SUBSS XMM1,dword ptr [EBX + 0x340]
00561ae7  f30f59c0                  MULSS XMM0,XMM0
00561aeb  f30f59c9                  MULSS XMM1,XMM1
00561aef  f30f58c8                  ADDSS XMM1,XMM0
00561af3  f30f1005e0abba00          MOVSS XMM0,dword ptr [0x00baabe0]
00561afb  0f2fc1                    COMISS XMM0,XMM1
00561afe  7619                      JBE 0x00561b19
00561b00  8b03                      MOV EAX,dword ptr [EBX]
00561b02  8d4d9c                    LEA ECX,[EBP + -0x64]
00561b05  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
00561b08  e86341edff                CALL 0x00435c70
00561b0d  50                        PUSH EAX
00561b0e  8bcb                      MOV ECX,EBX
00561b10  ffd2                      CALL EDX
00561b12  c685effeffff01            MOV byte ptr [EBP + 0xfffffeef],0x1
00561b19  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00561b21  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00561b29  c745c00f000000            MOV dword ptr [EBP + -0x40],0xf
00561b30  c745bc08000000            MOV dword ptr [EBP + -0x44],0x8
00561b37  c645b400                  MOV byte ptr [EBP + -0x4c],0x0
00561b3b  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00561b43  a118ddb100                MOV EAX,[0x00b1dd18]
00561b48  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00561b4e  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00561b51  894db0                    MOV dword ptr [EBP + -0x50],ECX
00561b54  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00561b5b  a130ddb100                MOV EAX,[0x00b1dd30]
00561b60  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00561b66  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00561b6d  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
00561b74  8945d8                    MOV dword ptr [EBP + -0x28],EAX
00561b77  894ddc                    MOV dword ptr [EBP + -0x24],ECX
00561b7a  c645e000                  MOV byte ptr [EBP + -0x20],0x0
00561b7e  51                        PUSH ECX
00561b7f  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00561b83  8d45ac                    LEA EAX,[EBP + -0x54]
00561b86  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00561b8d  8bcb                      MOV ECX,EBX
00561b8f  50                        PUSH EAX
00561b90  8d45d8                    LEA EAX,[EBP + -0x28]
00561b93  50                        PUSH EAX
00561b94  e897f71500                CALL 0x006c1330
00561b99  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00561b9d  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
00561ba0  83fa10                    CMP EDX,0x10
00561ba3  7228                      JC 0x00561bcd
00561ba5  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00561ba8  42                        INC EDX
00561ba9  8bc1                      MOV EAX,ECX
00561bab  81fa00100000              CMP EDX,0x1000
00561bb1  7210                      JC 0x00561bc3
00561bb3  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00561bb6  83c223                    ADD EDX,0x23
00561bb9  2bc1                      SUB EAX,ECX
00561bbb  83c0fc                    ADD EAX,-0x4
00561bbe  83f81f                    CMP EAX,0x1f
00561bc1  7749                      JA 0x00561c0c
00561bc3  52                        PUSH EDX
00561bc4  51                        PUSH ECX
00561bc5  e892d55800                CALL 0x00aef15c
00561bca  83c408                    ADD ESP,0x8
00561bcd  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00561bd4  8b55c0                    MOV EDX,dword ptr [EBP + -0x40]
00561bd7  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00561bde  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00561be5  c645d800                  MOV byte ptr [EBP + -0x28],0x0
00561be9  83fa10                    CMP EDX,0x10
00561bec  722e                      JC 0x00561c1c
00561bee  8b4dac                    MOV ECX,dword ptr [EBP + -0x54]
00561bf1  42                        INC EDX
00561bf2  8bc1                      MOV EAX,ECX
00561bf4  81fa00100000              CMP EDX,0x1000
00561bfa  7216                      JC 0x00561c12
00561bfc  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00561bff  83c223                    ADD EDX,0x23
00561c02  2bc1                      SUB EAX,ECX
00561c04  83c0fc                    ADD EAX,-0x4
00561c07  83f81f                    CMP EAX,0x1f
00561c0a  7606                      JBE 0x00561c12
00561c0c  ff159488b100              CALL dword ptr [0x00b18894]
00561c12  52                        PUSH EDX
00561c13  51                        PUSH ECX
00561c14  e843d55800                CALL 0x00aef15c
00561c19  83c408                    ADD ESP,0x8
00561c1c  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
00561c20  741a                      JZ 0x00561c3c
00561c22  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00561c29  7411                      JZ 0x00561c3c
00561c2b  6a00                      PUSH 0x0
00561c2d  8d4b48                    LEA ECX,[EBX + 0x48]
00561c30  68a8dcb100                PUSH 0xb1dca8
00561c35  e8068deaff                CALL 0x0040a940
00561c3a  eb2a                      JMP 0x00561c66
00561c3c  6a01                      PUSH 0x1
00561c3e  68a8dcb100                PUSH 0xb1dca8
00561c43  8d4b48                    LEA ECX,[EBX + 0x48]
00561c46  e8a58eeaff                CALL 0x0040aaf0
00561c4b  84c0                      TEST AL,AL
00561c4d  7417                      JZ 0x00561c66
00561c4f  83bb9c00000000            CMP dword ptr [EBX + 0x9c],0x0
00561c56  740e                      JZ 0x00561c66
00561c58  8d8b98000000              LEA ECX,[EBX + 0x98]
00561c5e  0f57c9                    XORPS XMM1,XMM1
00561c61  e89a71eaff                CALL 0x00408e00
00561c66  83bbc00b000000            CMP dword ptr [EBX + 0xbc0],0x0
00561c6d  0f8f69040000              JG 0x005620dc
00561c73  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00561c7a  7420                      JZ 0x00561c9c
00561c7c  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00561c84  8bcb                      MOV ECX,EBX
00561c86  6a07                      PUSH 0x7
00561c88  6a00                      PUSH 0x0
00561c8a  e8d1911600                CALL 0x006cae60
00561c8f  0fb6c0                    MOVZX EAX,AL
00561c92  85c0                      TEST EAX,EAX
00561c94  0f8442040000              JZ 0x005620dc
00561c9a  eb1b                      JMP 0x00561cb7
00561c9c  80bb400b000000            CMP byte ptr [EBX + 0xb40],0x0
00561ca3  0f8433040000              JZ 0x005620dc
00561ca9  e8b2d21800                CALL 0x006eef60
00561cae  83e00f                    AND EAX,0xf
00561cb1  0f8525040000              JNZ 0x005620dc
00561cb7  51                        PUSH ECX
00561cb8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00561cbf  6a00                      PUSH 0x0
00561cc1  6a02                      PUSH 0x2
00561cc3  51                        PUSH ECX
00561cc4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00561ccb  8bcb                      MOV ECX,EBX
00561ccd  689e000000                PUSH 0x9e
00561cd2  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
00561cdc  e8bf4e1700                CALL 0x006d6ba0
00561ce1  8a8348010000              MOV AL,byte ptr [EBX + 0x148]
00561ce7  84c0                      TEST AL,AL
00561ce9  7416                      JZ 0x00561d01
00561ceb  c785e0feffff000080bf      MOV dword ptr [EBP + 0xfffffee0],0xbf800000
00561cf5  c785e4feffff00000000      MOV dword ptr [EBP + 0xfffffee4],0x0
00561cff  eb14                      JMP 0x00561d15
00561d01  c785d8feffff0000803f      MOV dword ptr [EBP + 0xfffffed8],0x3f800000
00561d0b  c785dcfeffff00000000      MOV dword ptr [EBP + 0xfffffedc],0x0
00561d15  84c0                      TEST AL,AL
00561d17  8d95e0feffff              LEA EDX,[EBP + 0xfffffee0]
00561d1d  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00561d23  0f45ca                    CMOVNZ ECX,EDX
00561d26  8b01                      MOV EAX,dword ptr [ECX]
00561d28  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00561d2b  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
00561d31  898ddcfeffff              MOV dword ptr [EBP + 0xfffffedc],ECX
00561d37  e824d21800                CALL 0x006eef60
00561d3c  660f6ec0                  MOVD XMM0,EAX
00561d40  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00561d44  c1e81f                    SHR EAX,0x1f
00561d47  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00561d50  660f5ac0                  CVTPD2PS XMM0,XMM0
00561d54  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00561d5c  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
00561d64  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
00561d6c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00561d74  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00561d7c  e8bfb7ebff                CALL 0x0041d540
00561d81  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00561d89  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
00561d91  e88ab7ebff                CALL 0x0041d520
00561d96  0f28e8                    MOVAPS XMM5,XMM0
00561d99  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00561da1  0f28cd                    MOVAPS XMM1,XMM5
00561da4  0f28e0                    MOVAPS XMM4,XMM0
00561da7  f30f59a5d8feffff          MULSS XMM4,dword ptr [EBP + 0xfffffed8]
00561daf  f30f598ddcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffedc]
00561db7  f30f59add8feffff          MULSS XMM5,dword ptr [EBP + 0xfffffed8]
00561dbf  f30f5985dcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffedc]
00561dc7  f30f5ce1                  SUBSS XMM4,XMM1
00561dcb  f30f58e8                  ADDSS XMM5,XMM0
00561dcf  f30f11a5e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM4
00561dd7  f30f11ade8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM5
00561ddf  e87cd11800                CALL 0x006eef60
00561de4  660f6ec0                  MOVD XMM0,EAX
00561de8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00561dec  c1e81f                    SHR EAX,0x1f
00561def  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00561df8  660f5ac8                  CVTPD2PS XMM1,XMM0
00561dfc  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00561e04  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00561e0c  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00561e14  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
00561e1c  f30f59c1                  MULSS XMM0,XMM1
00561e20  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
00561e28  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
00561e30  f30f59c1                  MULSS XMM0,XMM1
00561e34  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00561e3c  e81fd11800                CALL 0x006eef60
00561e41  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00561e47  8db33c030000              LEA ESI,[EBX + 0x33c]
00561e4d  50                        PUSH EAX
00561e4e  6a01                      PUSH 0x1
00561e50  53                        PUSH EBX
00561e51  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00561e57  50                        PUSH EAX
00561e58  56                        PUSH ESI
00561e59  688d000000                PUSH 0x8d
00561e5e  68e8030000                PUSH 0x3e8
00561e63  e8b86cecff                CALL 0x00428b20
00561e68  8bc8                      MOV ECX,EAX
00561e6a  8b10                      MOV EDX,dword ptr [EAX]
00561e6c  c7805c040000b4000000      MOV dword ptr [EAX + 0x45c],0xb4
00561e76  c78060040000b4000000      MOV dword ptr [EAX + 0x460],0xb4
00561e80  ff520c                    CALL dword ptr [EDX + 0xc]
00561e83  e8d8d01800                CALL 0x006eef60
00561e88  50                        PUSH EAX
00561e89  6a01                      PUSH 0x1
00561e8b  6a00                      PUSH 0x0
00561e8d  8d8b60030000              LEA ECX,[EBX + 0x360]
00561e93  51                        PUSH ECX
00561e94  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00561e9a  56                        PUSH ESI
00561e9b  6a02                      PUSH 0x2
00561e9d  68e8030000                PUSH 0x3e8
00561ea2  e8796cecff                CALL 0x00428b20
00561ea7  8bf0                      MOV ESI,EAX
00561ea9  e8b2d01800                CALL 0x006eef60
00561eae  660f6ec0                  MOVD XMM0,EAX
00561eb2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00561eb6  c1e81f                    SHR EAX,0x1f
00561eb9  8d4e48                    LEA ECX,[ESI + 0x48]
00561ebc  6a00                      PUSH 0x0
00561ebe  6834d5b100                PUSH 0xb1d534
00561ec3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00561ecc  660f5ac0                  CVTPD2PS XMM0,XMM0
00561ed0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00561ed8  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00561ee0  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00561ee8  e89384eaff                CALL 0x0040a380
00561eed  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00561ef4  8d4598                    LEA EAX,[EBP + -0x68]
00561ef7  0f114598                  MOVUPS xmmword ptr [EBP + -0x68],XMM0
00561efb  8d4e48                    LEA ECX,[ESI + 0x48]
00561efe  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00561f08  0f280580c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac580]
00561f0f  50                        PUSH EAX
00561f10  c786500300000000c8c1      MOV dword ptr [ESI + 0x350],0xc1c80000
00561f1a  c78654030000f4010000      MOV dword ptr [ESI + 0x354],0x1f4
00561f24  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
00561f28  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00561f2f  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
00561f36  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
00561f3d  e88e54eaff                CALL 0x004073d0
00561f42  e995010000                JMP 0x005620dc
00561f47  83f808                    CMP EAX,0x8
00561f4a  0f854e010000              JNZ 0x0056209e
00561f50  6a01                      PUSH 0x1
00561f52  6a00                      PUSH 0x0
00561f54  8d8b14040000              LEA ECX,[EBX + 0x414]
00561f5a  51                        PUSH ECX
00561f5b  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00561f61  c704240000803f            MOV dword ptr [ESP],0x3f800000
00561f68  50                        PUSH EAX
00561f69  e852142800                CALL 0x007e33c0
00561f6e  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00561f76  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00561f7e  c745c00f000000            MOV dword ptr [EBP + -0x40],0xf
00561f85  c745bc08000000            MOV dword ptr [EBP + -0x44],0x8
00561f8c  c645b400                  MOV byte ptr [EBP + -0x4c],0x0
00561f90  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00561f98  a118ddb100                MOV EAX,[0x00b1dd18]
00561f9d  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00561fa3  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00561fa6  894db0                    MOV dword ptr [EBP + -0x50],ECX
00561fa9  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00561fb0  a130ddb100                MOV EAX,[0x00b1dd30]
00561fb5  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00561fbb  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00561fc2  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
00561fc9  8945d8                    MOV dword ptr [EBP + -0x28],EAX
00561fcc  894ddc                    MOV dword ptr [EBP + -0x24],ECX
00561fcf  c645e000                  MOV byte ptr [EBP + -0x20],0x0
00561fd3  51                        PUSH ECX
00561fd4  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
00561fd8  8d45ac                    LEA EAX,[EBP + -0x54]
00561fdb  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00561fe2  8bcb                      MOV ECX,EBX
00561fe4  50                        PUSH EAX
00561fe5  8d45d8                    LEA EAX,[EBP + -0x28]
00561fe8  50                        PUSH EAX
00561fe9  e842f31500                CALL 0x006c1330
00561fee  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00561ff2  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
00561ff5  83fa10                    CMP EDX,0x10
00561ff8  7228                      JC 0x00562022
00561ffa  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00561ffd  42                        INC EDX
00561ffe  8bc1                      MOV EAX,ECX
00562000  81fa00100000              CMP EDX,0x1000
00562006  7210                      JC 0x00562018
00562008  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0056200b  83c223                    ADD EDX,0x23
0056200e  2bc1                      SUB EAX,ECX
00562010  83c0fc                    ADD EAX,-0x4
00562013  83f81f                    CMP EAX,0x1f
00562016  7749                      JA 0x00562061
00562018  52                        PUSH EDX
00562019  51                        PUSH ECX
0056201a  e83dd15800                CALL 0x00aef15c
0056201f  83c408                    ADD ESP,0x8
00562022  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00562029  8b55c0                    MOV EDX,dword ptr [EBP + -0x40]
0056202c  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00562033  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
0056203a  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0056203e  83fa10                    CMP EDX,0x10
00562041  722e                      JC 0x00562071
00562043  8b4dac                    MOV ECX,dword ptr [EBP + -0x54]
00562046  42                        INC EDX
00562047  8bc1                      MOV EAX,ECX
00562049  81fa00100000              CMP EDX,0x1000
0056204f  7216                      JC 0x00562067
00562051  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00562054  83c223                    ADD EDX,0x23
00562057  2bc1                      SUB EAX,ECX
00562059  83c0fc                    ADD EAX,-0x4
0056205c  83f81f                    CMP EAX,0x1f
0056205f  7606                      JBE 0x00562067
00562061  ff159488b100              CALL dword ptr [0x00b18894]
00562067  52                        PUSH EDX
00562068  51                        PUSH ECX
00562069  e8eed05800                CALL 0x00aef15c
0056206e  83c408                    ADD ESP,0x8
00562071  6a00                      PUSH 0x0
00562073  8d4b48                    LEA ECX,[EBX + 0x48]
00562076  68b4dcb100                PUSH 0xb1dcb4
0056207b  e8c088eaff                CALL 0x0040a940
00562080  83bb9c00000000            CMP dword ptr [EBX + 0x9c],0x0
00562087  7409                      JZ 0x00562092
00562089  80bbac00000000            CMP byte ptr [EBX + 0xac],0x0
00562090  754a                      JNZ 0x005620dc
00562092  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
0056209c  eb3e                      JMP 0x005620dc
0056209e  83f805                    CMP EAX,0x5
005620a1  753f                      JNZ 0x005620e2
005620a3  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
005620ab  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005620b3  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
005620bb  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
005620bf  7409                      JZ 0x005620ca
005620c1  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
005620c8  7518                      JNZ 0x005620e2
005620ca  8b03                      MOV EAX,dword ptr [EBX]
005620cc  8d4d9c                    LEA ECX,[EBP + -0x64]
005620cf  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
005620d2  e8993bedff                CALL 0x00435c70
005620d7  50                        PUSH EAX
005620d8  8bcb                      MOV ECX,EBX
005620da  ffd2                      CALL EDX
005620dc  8a8deffeffff              MOV CL,byte ptr [EBP + 0xfffffeef]
005620e2  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
005620e9  0f8476010000              JZ 0x00562265
005620ef  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
005620f5  2500000001                AND EAX,0x1000000
005620fa  83c800                    OR EAX,0x0
005620fd  0f8562010000              JNZ 0x00562265
00562103  84c9                      TEST CL,CL
00562105  746d                      JZ 0x00562174
00562107  50                        PUSH EAX
00562108  50                        PUSH EAX
00562109  6a04                      PUSH 0x4
0056210b  6a01                      PUSH 0x1
0056210d  51                        PUSH ECX
0056210e  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
00562111  0f57c0                    XORPS XMM0,XMM0
00562114  8945e8                    MOV dword ptr [EBP + -0x18],EAX
00562117  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0056211a  8d45c4                    LEA EAX,[EBP + -0x3c]
0056211d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00562124  53                        PUSH EBX
00562125  50                        PUSH EAX
00562126  83ec10                    SUB ESP,0x10
00562129  8bc4                      MOV EAX,ESP
0056212b  0f1145d4                  MOVUPS xmmword ptr [EBP + -0x2c],XMM0
0056212f  0f2805f0c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac4f0]
00562136  0f1145c4                  MOVUPS xmmword ptr [EBP + -0x3c],XMM0
0056213a  51                        PUSH ECX
0056213b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00562141  c70000000000              MOV dword ptr [EAX],0x0
00562147  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
0056214e  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
00562155  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
0056215c  8d833c030000              LEA EAX,[EBX + 0x33c]
00562162  c7042400002042            MOV dword ptr [ESP],0x42200000
00562169  50                        PUSH EAX
0056216a  e8f1de1900                CALL 0x00700060
0056216f  e9f1000000                JMP 0x00562265
00562174  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0056217a  e8b1cdedff                CALL 0x0043ef30
0056217f  f30f109360030000          MOVSS XMM2,dword ptr [EBX + 0x360]
00562187  f30f5915f8a1ba00          MULSS XMM2,dword ptr [0x00baa1f8]
0056218f  8b854cffffff              MOV EAX,dword ptr [EBP + 0xffffff4c]
00562195  f30f109b64030000          MOVSS XMM3,dword ptr [EBX + 0x364]
0056219d  f30f591df8a1ba00          MULSS XMM3,dword ptr [0x00baa1f8]
005621a5  838d48ffffff02            OR dword ptr [EBP + 0xffffff48],0x2
005621ac  0f280520c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac520]
005621b3  0f28ca                    MOVAPS XMM1,XMM2
005621b6  0f11852cffffff            MOVUPS xmmword ptr [EBP + 0xffffff2c],XMM0
005621bd  c785fcfeffff9a99993e      MOV dword ptr [EBP + 0xfffffefc],0x3e99999a
005621c7  0f28c3                    MOVAPS XMM0,XMM3
005621ca  f30f59ca                  MULSS XMM1,XMM2
005621ce  c785f8feffff0000a0c0      MOV dword ptr [EBP + 0xfffffef8],0xc0a00000
005621d8  f30f59c3                  MULSS XMM0,XMM3
005621dc  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
005621e2  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
005621ea  f30f1195d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM2
005621f2  f30f58c1                  ADDSS XMM0,XMM1
005621f6  f30f119de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM3
005621fe  f30f119dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM3
00562206  e84538edff                CALL 0x00435a50
0056220b  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00562213  0f2fc1                    COMISS XMM0,XMM1
00562216  762f                      JBE 0x00562247
00562218  0f57d2                    XORPS XMM2,XMM2
0056221b  0f2fc2                    COMISS XMM0,XMM2
0056221e  7627                      JBE 0x00562247
00562220  f30f5ec8                  DIVSS XMM1,XMM0
00562224  0f28c1                    MOVAPS XMM0,XMM1
00562227  f30f598de8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee8]
0056222f  f30f5985e4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee4]
00562237  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
0056223f  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00562247  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0056224d  8bcb                      MOV ECX,EBX
0056224f  50                        PUSH EAX
00562250  6a00                      PUSH 0x0
00562252  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00562258  50                        PUSH EAX
00562259  8d833c030000              LEA EAX,[EBX + 0x33c]
0056225f  50                        PUSH EAX
00562260  e87b901600                CALL 0x006cb2e0
00562265  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00562268  64890d00000000            MOV dword ptr FS:[0x0],ECX
0056226f  59                        POP ECX
00562270  5f                        POP EDI
00562271  5e                        POP ESI
00562272  5b                        POP EBX
00562273  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00562276  33cd                      XOR ECX,EBP
00562278  e8aece5800                CALL 0x00aef12b
0056227d  8be5                      MOV ESP,EBP
0056227f  5d                        POP EBP
00562280  c3                        RET
