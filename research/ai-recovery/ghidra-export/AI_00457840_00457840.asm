; J460 NPC AI 0x00457840 AI_00457840
; types=64
; identities=64.0.0
; entry=00457840
00457840  53                        PUSH EBX
00457841  8bdc                      MOV EBX,ESP
00457843  83ec08                    SUB ESP,0x8
00457846  83e4f8                    AND ESP,0xfffffff8
00457849  83c404                    ADD ESP,0x4
0045784c  55                        PUSH EBP
0045784d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00457850  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00457854  8bec                      MOV EBP,ESP
00457856  6aff                      PUSH -0x1
00457858  682525af00                PUSH 0xaf2525
0045785d  64a100000000              MOV EAX,FS:[0x0]
00457863  50                        PUSH EAX
00457864  53                        PUSH EBX
00457865  81ec30020000              SUB ESP,0x230
0045786b  a1b493bf00                MOV EAX,[0x00bf93b4]
00457870  33c5                      XOR EAX,EBP
00457872  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00457875  56                        PUSH ESI
00457876  57                        PUSH EDI
00457877  50                        PUSH EAX
00457878  8d45f4                    LEA EAX,[EBP + -0xc]
0045787b  64a300000000              MOV FS:[0x0],EAX
00457881  8bf9                      MOV EDI,ECX
00457883  89bd28feffff              MOV dword ptr [EBP + 0xfffffe28],EDI
00457889  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00457890  7572                      JNZ 0x00457904
00457892  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00457896  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004578a0  0f85a00f0000              JNZ 0x00458846
004578a6  0f280db0c4ba00            MOVAPS XMM1,xmmword ptr [0x00bac4b0]
004578ad  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
004578b3  81c7e4010000              ADD EDI,0x1e4
004578b9  c785f0fdffffcac848be      MOV dword ptr [EBP + 0xfffffdf0],0xbe48c8ca
004578c3  c785f4fdffff8382023f      MOV dword ptr [EBP + 0xfffffdf4],0x3f028283
004578cd  0f57c0                    XORPS XMM0,XMM0
004578d0  c785f8fdffffcac8483e      MOV dword ptr [EBP + 0xfffffdf8],0x3e48c8ca
004578da  3bf8                      CMP EDI,EAX
004578dc  0f84640f0000              JZ 0x00458846
004578e2  8b85f8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdf8]
004578e8  0f114710                  MOVUPS xmmword ptr [EDI + 0x10],XMM0
004578ec  f30f7e85f0fdffff          MOVQ XMM0,qword ptr [EBP + 0xfffffdf0]
004578f4  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
004578f9  0f110f                    MOVUPS xmmword ptr [EDI],XMM1
004578fc  894728                    MOV dword ptr [EDI + 0x28],EAX
004578ff  e9420f0000                JMP 0x00458846
00457904  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045790c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00457914  6a00                      PUSH 0x0
00457916  6a03                      PUSH 0x3
00457918  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00457920  e8eb4d2500                CALL 0x006ac710
00457925  84c0                      TEST AL,AL
00457927  0f844e010000              JZ 0x00457a7b
0045792d  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00457931  0f8544010000              JNZ 0x00457a7b
00457937  e824762900                CALL 0x006eef60
0045793c  660f6ec0                  MOVD XMM0,EAX
00457940  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00457944  c1e81f                    SHR EAX,0x1f
00457947  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00457950  660f5ac0                  CVTPD2PS XMM0,XMM0
00457954  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0045795c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00457964  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
0045796c  f30f118520feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM0
00457974  e8e7752900                CALL 0x006eef60
00457979  8bf0                      MOV ESI,EAX
0045797b  e8e0752900                CALL 0x006eef60
00457980  660f6ec0                  MOVD XMM0,EAX
00457984  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00457988  c1e81f                    SHR EAX,0x1f
0045798b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00457994  660f5ac0                  CVTPD2PS XMM0,XMM0
00457998  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004579a0  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004579a8  f30f58c0                  ADDSS XMM0,XMM0
004579ac  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
004579b4  e8675bfcff                CALL 0x0041d520
004579b9  f30f118530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM0
004579c1  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
004579c9  e8725bfcff                CALL 0x0041d540
004579ce  f30f109530feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe30]
004579d6  8d8514feffff              LEA EAX,[EBP + 0xfffffe14]
004579dc  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004579e4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004579ea  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
004579f2  6a00                      PUSH 0x0
004579f4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004579fc  68acd5c500                PUSH 0xc5d5ac
00457a01  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
00457a09  68dcd5c500                PUSH 0xc5d5dc
00457a0e  6a00                      PUSH 0x0
00457a10  56                        PUSH ESI
00457a11  6a00                      PUSH 0x0
00457a13  57                        PUSH EDI
00457a14  6840b6c700                PUSH 0xc7b640
00457a19  50                        PUSH EAX
00457a1a  6a07                      PUSH 0x7
00457a1c  68e8030000                PUSH 0x3e8
00457a21  f30f118514feffff          MOVSS dword ptr [EBP + 0xfffffe14],XMM0
00457a29  f30f119518feffff          MOVSS dword ptr [EBP + 0xfffffe18],XMM2
00457a31  e8ea10fdff                CALL 0x00428b20
00457a36  50                        PUSH EAX
00457a37  e8758e6900                CALL 0x00af08b1
00457a3c  f30f108520feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe20]
00457a44  83c414                    ADD ESP,0x14
00457a47  8bf0                      MOV ESI,EAX
00457a49  8d87e4010000              LEA EAX,[EDI + 0x1e4]
00457a4f  6a01                      PUSH 0x1
00457a51  8b0e                      MOV ECX,dword ptr [ESI]
00457a53  6a00                      PUSH 0x0
00457a55  68ff000000                PUSH 0xff
00457a5a  6aff                      PUSH -0x1
00457a5c  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00457a5f  8bce                      MOV ECX,ESI
00457a61  50                        PUSH EAX
00457a62  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00457a6a  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
00457a72  ffd2                      CALL EDX
00457a74  8b06                      MOV EAX,dword ptr [ESI]
00457a76  8bce                      MOV ECX,ESI
00457a78  ff500c                    CALL dword ptr [EAX + 0xc]
00457a7b  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00457a82  0f85fc000000              JNZ 0x00457b84
00457a88  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00457a90  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
00457a98  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00457aa0  0f2fc8                    COMISS XMM1,XMM0
00457aa3  0f86db000000              JBE 0x00457b84
00457aa9  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00457ab3  e8a8742900                CALL 0x006eef60
00457ab8  6a01                      PUSH 0x1
00457aba  8d4f48                    LEA ECX,[EDI + 0x48]
00457abd  8bf0                      MOV ESI,EAX
00457abf  e85c37fbff                CALL 0x0040b220
00457ac4  56                        PUSH ESI
00457ac5  8bcf                      MOV ECX,EDI
00457ac7  6a00                      PUSH 0x0
00457ac9  f30f104044                MOVSS XMM0,dword ptr [EAX + 0x44]
00457ace  51                        PUSH ECX
00457acf  f30f10893c030000          MOVSS XMM1,dword ptr [ECX + 0x33c]
00457ad7  f30f584840                ADDSS XMM1,dword ptr [EAX + 0x40]
00457adc  f30f588140030000          ADDSS XMM0,dword ptr [ECX + 0x340]
00457ae4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00457aea  8d8514feffff              LEA EAX,[EBP + 0xfffffe14]
00457af0  6840b6c700                PUSH 0xc7b640
00457af5  50                        PUSH EAX
00457af6  6a01                      PUSH 0x1
00457af8  68e8030000                PUSH 0x3e8
00457afd  f30f118d14feffff          MOVSS dword ptr [EBP + 0xfffffe14],XMM1
00457b05  f30f118518feffff          MOVSS dword ptr [EBP + 0xfffffe18],XMM0
00457b0d  e80e10fdff                CALL 0x00428b20
00457b12  8bcf                      MOV ECX,EDI
00457b14  8bf0                      MOV ESI,EAX
00457b16  e8a5ca2500                CALL 0x006b45c0
00457b1b  6a01                      PUSH 0x1
00457b1d  8d4f48                    LEA ECX,[EDI + 0x48]
00457b20  e8fb36fbff                CALL 0x0040b220
00457b25  6a01                      PUSH 0x1
00457b27  6a00                      PUSH 0x0
00457b29  68ff000000                PUSH 0xff
00457b2e  c6407400                  MOV byte ptr [EAX + 0x74],0x0
00457b32  8d87e4010000              LEA EAX,[EDI + 0x1e4]
00457b38  8b0e                      MOV ECX,dword ptr [ESI]
00457b3a  6aff                      PUSH -0x1
00457b3c  50                        PUSH EAX
00457b3d  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00457b40  8bce                      MOV ECX,ESI
00457b42  ffd2                      CALL EDX
00457b44  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00457b4c  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
00457b54  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00457b5c  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
00457b64  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00457b6c  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
00457b74  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00457b7c  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
00457b84  6a00                      PUSH 0x0
00457b86  6a07                      PUSH 0x7
00457b88  8bcf                      MOV ECX,EDI
00457b8a  e8814b2500                CALL 0x006ac710
00457b8f  84c0                      TEST AL,AL
00457b91  0f8483000000              JZ 0x00457c1a
00457b97  e8c4732900                CALL 0x006eef60
00457b9c  6a00                      PUSH 0x0
00457b9e  68acd5c500                PUSH 0xc5d5ac
00457ba3  68dcd5c500                PUSH 0xc5d5dc
00457ba8  6a00                      PUSH 0x0
00457baa  50                        PUSH EAX
00457bab  33d2                      XOR EDX,EDX
00457bad  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00457bb3  395730                    CMP dword ptr [EDI + 0x30],EDX
00457bb6  6a00                      PUSH 0x0
00457bb8  57                        PUSH EDI
00457bb9  0f95c2                    SETNZ DL
00457bbc  6840b6c700                PUSH 0xc7b640
00457bc1  51                        PUSH ECX
00457bc2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00457bc8  8d145517000000            LEA EDX,[EDX*0x2 + 0x17]
00457bcf  52                        PUSH EDX
00457bd0  68e8030000                PUSH 0x3e8
00457bd5  e8460ffdff                CALL 0x00428b20
00457bda  50                        PUSH EAX
00457bdb  e8d18c6900                CALL 0x00af08b1
00457be0  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
00457be8  8bc8                      MOV ECX,EAX
00457bea  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00457bf2  83c414                    ADD ESP,0x14
00457bf5  f30f591530a6ba00          MULSS XMM2,dword ptr [0x00baa630]
00457bfd  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
00457c05  8b01                      MOV EAX,dword ptr [ECX]
00457c07  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
00457c0f  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00457c17  ff500c                    CALL dword ptr [EAX + 0xc]
00457c1a  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00457c20  33c0                      XOR EAX,EAX
00457c22  81e100000010              AND ECX,0x10000000
00457c28  be03000000                MOV ESI,0x3
00457c2d  0bc1                      OR EAX,ECX
00457c2f  7505                      JNZ 0x00457c36
00457c31  be04000000                MOV ESI,0x4
00457c36  8bcf                      MOV ECX,EDI
00457c38  89b530feffff              MOV dword ptr [EBP + 0xfffffe30],ESI
00457c3e  e8fd6b2600                CALL 0x006be840
00457c43  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00457c4b  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00457c53  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00457c5b  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00457c63  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00457c69  f30f118d20feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM1
00457c71  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
00457c79  85c0                      TEST EAX,EAX
00457c7b  0f85ee040000              JNZ 0x0045816f
00457c81  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00457c87  83f804                    CMP EAX,0x4
00457c8a  0f8568020000              JNZ 0x00457ef8
00457c90  8d8f14040000              LEA ECX,[EDI + 0x414]
00457c96  6a00                      PUSH 0x0
00457c98  51                        PUSH ECX
00457c99  c704240000803f            MOV dword ptr [ESP],0x3f800000
00457ca0  e89bd63800                CALL 0x007e5340
00457ca5  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00457cac  c745cc04000000            MOV dword ptr [EBP + -0x34],0x4
00457cb3  c745bc57616c6b            MOV dword ptr [EBP + -0x44],0x6b6c6157
00457cba  c645c000                  MOV byte ptr [EBP + -0x40],0x0
00457cbe  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00457cc5  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00457ccc  c745e404000000            MOV dword ptr [EBP + -0x1c],0x4
00457cd3  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
00457cda  c645d800                  MOV byte ptr [EBP + -0x28],0x0
00457cde  51                        PUSH ECX
00457cdf  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00457ce3  8d45bc                    LEA EAX,[EBP + -0x44]
00457ce6  c7042400004040            MOV dword ptr [ESP],0x40400000
00457ced  8bcf                      MOV ECX,EDI
00457cef  50                        PUSH EAX
00457cf0  8d45d4                    LEA EAX,[EBP + -0x2c]
00457cf3  50                        PUSH EAX
00457cf4  e837962600                CALL 0x006c1330
00457cf9  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00457cfd  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00457d00  83fa10                    CMP EDX,0x10
00457d03  7228                      JC 0x00457d2d
00457d05  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00457d08  42                        INC EDX
00457d09  8bc1                      MOV EAX,ECX
00457d0b  81fa00100000              CMP EDX,0x1000
00457d11  7210                      JC 0x00457d23
00457d13  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00457d16  83c223                    ADD EDX,0x23
00457d19  2bc1                      SUB EAX,ECX
00457d1b  83c0fc                    ADD EAX,-0x4
00457d1e  83f81f                    CMP EAX,0x1f
00457d21  7749                      JA 0x00457d6c
00457d23  52                        PUSH EDX
00457d24  51                        PUSH ECX
00457d25  e832746900                CALL 0x00aef15c
00457d2a  83c408                    ADD ESP,0x8
00457d2d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00457d34  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00457d37  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00457d3e  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00457d45  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00457d49  83fa10                    CMP EDX,0x10
00457d4c  722e                      JC 0x00457d7c
00457d4e  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00457d51  42                        INC EDX
00457d52  8bc1                      MOV EAX,ECX
00457d54  81fa00100000              CMP EDX,0x1000
00457d5a  7216                      JC 0x00457d72
00457d5c  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00457d5f  83c223                    ADD EDX,0x23
00457d62  2bc1                      SUB EAX,ECX
00457d64  83c0fc                    ADD EAX,-0x4
00457d67  83f81f                    CMP EAX,0x1f
00457d6a  7606                      JBE 0x00457d72
00457d6c  ff159488b100              CALL dword ptr [0x00b18894]
00457d72  52                        PUSH EDX
00457d73  51                        PUSH ECX
00457d74  e8e3736900                CALL 0x00aef15c
00457d79  83c408                    ADD ESP,0x8
00457d7c  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00457d82  33c0                      XOR EAX,EAX
00457d84  81e100000010              AND ECX,0x10000000
00457d8a  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00457d91  0bc1                      OR EAX,ECX
00457d93  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00457d9a  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
00457d9e  7418                      JZ 0x00457db8
00457da0  a17816c700                MOV EAX,[0x00c71678]
00457da5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00457dab  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00457dae  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00457db2  0f85410a0000              JNZ 0x004587f9
00457db8  6800000010                PUSH 0x10000000
00457dbd  6a00                      PUSH 0x0
00457dbf  8bcf                      MOV ECX,EDI
00457dc1  e86af6fbff                CALL 0x00417430
00457dc6  84c0                      TEST AL,AL
00457dc8  743a                      JZ 0x00457e04
00457dca  6a00                      PUSH 0x0
00457dcc  51                        PUSH ECX
00457dcd  6a00                      PUSH 0x0
00457dcf  6a1f                      PUSH 0x1f
00457dd1  8bcf                      MOV ECX,EDI
00457dd3  e8084a2500                CALL 0x006ac7e0
00457dd8  6a00                      PUSH 0x0
00457dda  51                        PUSH ECX
00457ddb  6a01                      PUSH 0x1
00457ddd  6a1d                      PUSH 0x1d
00457ddf  8bcf                      MOV ECX,EDI
00457de1  8bf0                      MOV ESI,EAX
00457de3  e8f8492500                CALL 0x006ac7e0
00457de8  6a00                      PUSH 0x0
00457dea  51                        PUSH ECX
00457deb  6a00                      PUSH 0x0
00457ded  6a17                      PUSH 0x17
00457def  8bcf                      MOV ECX,EDI
00457df1  03f0                      ADD ESI,EAX
00457df3  e8e8492500                CALL 0x006ac7e0
00457df8  03c6                      ADD EAX,ESI
00457dfa  898528feffff              MOV dword ptr [EBP + 0xfffffe28],EAX
00457e00  8bf0                      MOV ESI,EAX
00457e02  eb20                      JMP 0x00457e24
00457e04  a17816c700                MOV EAX,[0x00c71678]
00457e09  33f6                      XOR ESI,ESI
00457e0b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00457e11  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
00457e17  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
00457e1d  03c1                      ADD EAX,ECX
00457e1f  85c0                      TEST EAX,EAX
00457e21  0f4ff0                    CMOVG ESI,EAX
00457e24  e837712900                CALL 0x006eef60
00457e29  33d2                      XOR EDX,EDX
00457e2b  b928000000                MOV ECX,0x28
00457e30  f7f1                      DIV ECX
00457e32  85d2                      TEST EDX,EDX
00457e34  7547                      JNZ 0x00457e7d
00457e36  3bb530feffff              CMP ESI,dword ptr [EBP + 0xfffffe30]
00457e3c  7d3f                      JGE 0x00457e7d
00457e3e  6a01                      PUSH 0x1
00457e40  68ecd2b100                PUSH 0xb1d2ec
00457e45  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00457e4f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00457e59  8d4f48                    LEA ECX,[EDI + 0x48]
00457e5c  e86f27fbff                CALL 0x0040a5d0
00457e61  84c0                      TEST AL,AL
00457e63  0f8490090000              JZ 0x004587f9
00457e69  8d4f78                    LEA ECX,[EDI + 0x78]
00457e6c  e83f23fbff                CALL 0x0040a1b0
00457e71  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00457e78  e97c090000                JMP 0x004587f9
00457e7d  e8de702900                CALL 0x006eef60
00457e82  33d2                      XOR EDX,EDX
00457e84  b914000000                MOV ECX,0x14
00457e89  f7f1                      DIV ECX
00457e8b  85d2                      TEST EDX,EDX
00457e8d  0f8566090000              JNZ 0x004587f9
00457e93  f30f108d20feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe20]
00457e9b  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
00457ea3  f30f59c0                  MULSS XMM0,XMM0
00457ea7  f30f59c9                  MULSS XMM1,XMM1
00457eab  f30f58c1                  ADDSS XMM0,XMM1
00457eaf  e89cdbfdff                CALL 0x00435a50
00457eb4  f30f100dc0aaba00          MOVSS XMM1,dword ptr [0x00baaac0]
00457ebc  0f2fc8                    COMISS XMM1,XMM0
00457ebf  0f8634090000              JBE 0x004587f9
00457ec5  0f57c0                    XORPS XMM0,XMM0
00457ec8  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00457ed2  0f2f8520feffff            COMISS XMM0,dword ptr [EBP + 0xfffffe20]
00457ed9  6a01                      PUSH 0x1
00457edb  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00457ee5  68ccd2b100                PUSH 0xb1d2cc
00457eea  0f97c0                    SETA AL
00457eed  888748010000              MOV byte ptr [EDI + 0x148],AL
00457ef3  e961ffffff                JMP 0x00457e59
00457ef8  83f80d                    CMP EAX,0xd
00457efb  0f8545020000              JNZ 0x00458146
00457f01  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00457f07  8d4801                    LEA ECX,[EAX + 0x1]
00457f0a  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00457f10  83f819                    CMP EAX,0x19
00457f13  0f8525020000              JNZ 0x0045813e
00457f19  51                        PUSH ECX
00457f1a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00457f21  6a00                      PUSH 0x0
00457f23  6a02                      PUSH 0x2
00457f25  51                        PUSH ECX
00457f26  c704240000803f            MOV dword ptr [ESP],0x3f800000
00457f2d  8bcf                      MOV ECX,EDI
00457f2f  6a72                      PUSH 0x72
00457f31  e86aec2700                CALL 0x006d6ba0
00457f36  51                        PUSH ECX
00457f37  c704240000803f            MOV dword ptr [ESP],0x3f800000
00457f3e  6a00                      PUSH 0x0
00457f40  6a02                      PUSH 0x2
00457f42  51                        PUSH ECX
00457f43  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
00457f4a  8bcf                      MOV ECX,EDI
00457f4c  6809010000                PUSH 0x109
00457f51  e84aec2700                CALL 0x006d6ba0
00457f56  8d850cfeffff              LEA EAX,[EBP + 0xfffffe0c]
00457f5c  50                        PUSH EAX
00457f5d  e80e712200                CALL 0x0067f070
00457f62  83c404                    ADD ESP,0x4
00457f65  c78528feffff02000000      MOV dword ptr [EBP + 0xfffffe28],0x2
00457f6f  8bcf                      MOV ECX,EDI
00457f71  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00457f75  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00457f7d  6800000010                PUSH 0x10000000
00457f82  6a00                      PUSH 0x0
00457f84  f30f118d20feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM1
00457f8c  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00457f91  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00457f99  f30f118d30feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM1
00457fa1  e88af4fbff                CALL 0x00417430
00457fa6  84c0                      TEST AL,AL
00457fa8  7442                      JZ 0x00457fec
00457faa  6a00                      PUSH 0x0
00457fac  51                        PUSH ECX
00457fad  6a00                      PUSH 0x0
00457faf  6a17                      PUSH 0x17
00457fb1  8bcf                      MOV ECX,EDI
00457fb3  e828482500                CALL 0x006ac7e0
00457fb8  6a00                      PUSH 0x0
00457fba  51                        PUSH ECX
00457fbb  6a00                      PUSH 0x0
00457fbd  6a1f                      PUSH 0x1f
00457fbf  8bcf                      MOV ECX,EDI
00457fc1  2bf0                      SUB ESI,EAX
00457fc3  e818482500                CALL 0x006ac7e0
00457fc8  6a00                      PUSH 0x0
00457fca  51                        PUSH ECX
00457fcb  6a01                      PUSH 0x1
00457fcd  6a1d                      PUSH 0x1d
00457fcf  8bcf                      MOV ECX,EDI
00457fd1  2bf0                      SUB ESI,EAX
00457fd3  e808482500                CALL 0x006ac7e0
00457fd8  2bf0                      SUB ESI,EAX
00457fda  b802000000                MOV EAX,0x2
00457fdf  3bf0                      CMP ESI,EAX
00457fe1  0f4ec6                    CMOVLE EAX,ESI
00457fe4  898528feffff              MOV dword ptr [EBP + 0xfffffe28],EAX
00457fea  eb05                      JMP 0x00457ff1
00457fec  b802000000                MOV EAX,0x2
00457ff1  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00457ff5  0f85e2000000              JNZ 0x004580dd
00457ffb  e8606f2900                CALL 0x006eef60
00458000  83e001                    AND EAX,0x1
00458003  c1e003                    SHL EAX,0x3
00458006  83c817                    OR EAX,0x17
00458009  898538feffff              MOV dword ptr [EBP + 0xfffffe38],EAX
0045800f  8b8528feffff              MOV EAX,dword ptr [EBP + 0xfffffe28]
00458015  85c0                      TEST EAX,EAX
00458017  7e5f                      JLE 0x00458078
00458019  e8426f2900                CALL 0x006eef60
0045801e  f30f108520feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe20]
00458026  8db73c030000              LEA ESI,[EDI + 0x33c]
0045802c  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00458030  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00458036  50                        PUSH EAX
00458037  6a00                      PUSH 0x0
00458039  57                        PUSH EDI
0045803a  f30f118514feffff          MOVSS dword ptr [EBP + 0xfffffe14],XMM0
00458042  8d8514feffff              LEA EAX,[EBP + 0xfffffe14]
00458048  f30f108530feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe30]
00458050  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
00458055  6840b6c700                PUSH 0xc7b640
0045805a  50                        PUSH EAX
0045805b  6a00                      PUSH 0x0
0045805d  ffb538feffff              PUSH dword ptr [EBP + 0xfffffe38]
00458063  f30f118518feffff          MOVSS dword ptr [EBP + 0xfffffe18],XMM0
0045806b  e8b00afdff                CALL 0x00428b20
00458070  8b8528feffff              MOV EAX,dword ptr [EBP + 0xfffffe28]
00458076  eb06                      JMP 0x0045807e
00458078  8db73c030000              LEA ESI,[EDI + 0x33c]
0045807e  83f801                    CMP EAX,0x1
00458081  0f8e72070000              JLE 0x004587f9
00458087  e8d46e2900                CALL 0x006eef60
0045808c  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00458090  f30f5c8520feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffe20]
00458098  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045809e  50                        PUSH EAX
0045809f  6a00                      PUSH 0x0
004580a1  57                        PUSH EDI
004580a2  f30f118524feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM0
004580aa  8d8524feffff              LEA EAX,[EBP + 0xfffffe24]
004580b0  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004580b5  f30f5c8530feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffe30]
004580bd  6840b6c700                PUSH 0xc7b640
004580c2  50                        PUSH EAX
004580c3  6a00                      PUSH 0x0
004580c5  ffb538feffff              PUSH dword ptr [EBP + 0xfffffe38]
004580cb  f30f118528feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM0
004580d3  e8480afdff                CALL 0x00428b20
004580d8  e91c070000                JMP 0x004587f9
004580dd  85c0                      TEST EAX,EAX
004580df  0f8e14070000              JLE 0x004587f9
004580e5  e8766e2900                CALL 0x006eef60
004580ea  f30f108520feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe20]
004580f2  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004580fa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00458100  50                        PUSH EAX
00458101  6a00                      PUSH 0x0
00458103  57                        PUSH EDI
00458104  f30f118534feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM0
0045810c  8d8534feffff              LEA EAX,[EBP + 0xfffffe34]
00458112  f30f108530feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe30]
0045811a  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00458122  6840b6c700                PUSH 0xc7b640
00458127  50                        PUSH EAX
00458128  6a01                      PUSH 0x1
0045812a  6a1d                      PUSH 0x1d
0045812c  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
00458134  e8e709fdff                CALL 0x00428b20
00458139  e9bb060000                JMP 0x004587f9
0045813e  83f939                    CMP ECX,0x39
00458141  e990040000                JMP 0x004585d6
00458146  83f808                    CMP EAX,0x8
00458149  0f85aa060000              JNZ 0x004587f9
0045814f  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00458155  8d4801                    LEA ECX,[EAX + 0x1]
00458158  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0045815e  83f816                    CMP EAX,0x16
00458161  0f8484040000              JZ 0x004585eb
00458167  83f928                    CMP ECX,0x28
0045816a  e967040000                JMP 0x004585d6
0045816f  83f801                    CMP EAX,0x1
00458172  0f8581060000              JNZ 0x004587f9
00458178  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045817e  83f804                    CMP EAX,0x4
00458181  0f8552010000              JNZ 0x004582d9
00458187  6a00                      PUSH 0x0
00458189  8d8f14040000              LEA ECX,[EDI + 0x414]
0045818f  e8bce43800                CALL 0x007e6650
00458194  6800000010                PUSH 0x10000000
00458199  6a00                      PUSH 0x0
0045819b  8bcf                      MOV ECX,EDI
0045819d  e88ef2fbff                CALL 0x00417430
004581a2  84c0                      TEST AL,AL
004581a4  7418                      JZ 0x004581be
004581a6  a17816c700                MOV EAX,[0x00c71678]
004581ab  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004581b1  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004581b4  f6404401                  TEST byte ptr [EAX + 0x44],0x1
004581b8  0f853b060000              JNZ 0x004587f9
004581be  a17816c700                MOV EAX,[0x00c71678]
004581c3  6800000010                PUSH 0x10000000
004581c8  6a00                      PUSH 0x0
004581ca  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004581d0  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004581d6  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004581dc  03c8                      ADD ECX,EAX
004581de  33c0                      XOR EAX,EAX
004581e0  85c9                      TEST ECX,ECX
004581e2  0f4fc1                    CMOVG EAX,ECX
004581e5  8bcf                      MOV ECX,EDI
004581e7  3bc6                      CMP EAX,ESI
004581e9  0f9c853ffeffff            SETL byte ptr [EBP + 0xfffffe3f]
004581f0  e83bf2fbff                CALL 0x00417430
004581f5  84c0                      TEST AL,AL
004581f7  745c                      JZ 0x00458255
004581f9  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004581fc  85c0                      TEST EAX,EAX
004581fe  7510                      JNZ 0x00458210
00458200  50                        PUSH EAX
00458201  51                        PUSH ECX
00458202  50                        PUSH EAX
00458203  6a12                      PUSH 0x12
00458205  8bcf                      MOV ECX,EDI
00458207  e8d4452500                CALL 0x006ac7e0
0045820c  3bc6                      CMP EAX,ESI
0045820e  eb3e                      JMP 0x0045824e
00458210  83f801                    CMP EAX,0x1
00458213  7540                      JNZ 0x00458255
00458215  6a00                      PUSH 0x0
00458217  51                        PUSH ECX
00458218  6a00                      PUSH 0x0
0045821a  682e030000                PUSH 0x32e
0045821f  8bcf                      MOV ECX,EDI
00458221  e8ba452500                CALL 0x006ac7e0
00458226  6a00                      PUSH 0x0
00458228  51                        PUSH ECX
00458229  6a00                      PUSH 0x0
0045822b  6a5e                      PUSH 0x5e
0045822d  8bcf                      MOV ECX,EDI
0045822f  8bf0                      MOV ESI,EAX
00458231  e8aa452500                CALL 0x006ac7e0
00458236  6a00                      PUSH 0x0
00458238  51                        PUSH ECX
00458239  6a00                      PUSH 0x0
0045823b  6a55                      PUSH 0x55
0045823d  8bcf                      MOV ECX,EDI
0045823f  03f0                      ADD ESI,EAX
00458241  e89a452500                CALL 0x006ac7e0
00458246  03c6                      ADD EAX,ESI
00458248  3b8530feffff              CMP EAX,dword ptr [EBP + 0xfffffe30]
0045824e  0f9c853ffeffff            SETL byte ptr [EBP + 0xfffffe3f]
00458255  e8066d2900                CALL 0x006eef60
0045825a  33d2                      XOR EDX,EDX
0045825c  b928000000                MOV ECX,0x28
00458261  f7f1                      DIV ECX
00458263  85d2                      TEST EDX,EDX
00458265  7514                      JNZ 0x0045827b
00458267  38953ffeffff              CMP byte ptr [EBP + 0xfffffe3f],DL
0045826d  740c                      JZ 0x0045827b
0045826f  6a01                      PUSH 0x1
00458271  6808ddb100                PUSH 0xb1dd08
00458276  e9cafbffff                JMP 0x00457e45
0045827b  e8e06c2900                CALL 0x006eef60
00458280  33d2                      XOR EDX,EDX
00458282  b914000000                MOV ECX,0x14
00458287  f7f1                      DIV ECX
00458289  85d2                      TEST EDX,EDX
0045828b  0f8568050000              JNZ 0x004587f9
00458291  f30f108d20feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe20]
00458299  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
004582a1  f30f59c0                  MULSS XMM0,XMM0
004582a5  f30f59c9                  MULSS XMM1,XMM1
004582a9  f30f58c1                  ADDSS XMM0,XMM1
004582ad  e89ed7fdff                CALL 0x00435a50
004582b2  f30f100dc0aaba00          MOVSS XMM1,dword ptr [0x00baaac0]
004582ba  0f2fc8                    COMISS XMM1,XMM0
004582bd  0f8636050000              JBE 0x004587f9
004582c3  6a01                      PUSH 0x1
004582c5  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004582cf  68f8dcb100                PUSH 0xb1dcf8
004582d4  e976fbffff                JMP 0x00457e4f
004582d9  83f80d                    CMP EAX,0xd
004582dc  0f85d4020000              JNZ 0x004585b6
004582e2  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004582e8  8d4801                    LEA ECX,[EAX + 0x1]
004582eb  898f10040000              MOV dword ptr [EDI + 0x410],ECX
004582f1  83f819                    CMP EAX,0x19
004582f4  0f85bf010000              JNZ 0x004584b9
004582fa  837f3000                  CMP dword ptr [EDI + 0x30],0x0
004582fe  0f85b5010000              JNZ 0x004584b9
00458304  6800000010                PUSH 0x10000000
00458309  6a00                      PUSH 0x0
0045830b  8bcf                      MOV ECX,EDI
0045830d  c78530feffff02000000      MOV dword ptr [EBP + 0xfffffe30],0x2
00458317  e814f1fbff                CALL 0x00417430
0045831c  84c0                      TEST AL,AL
0045831e  7420                      JZ 0x00458340
00458320  6a00                      PUSH 0x0
00458322  51                        PUSH ECX
00458323  6a00                      PUSH 0x0
00458325  6a12                      PUSH 0x12
00458327  8bcf                      MOV ECX,EDI
00458329  e8b2442500                CALL 0x006ac7e0
0045832e  2bf0                      SUB ESI,EAX
00458330  b802000000                MOV EAX,0x2
00458335  3bf0                      CMP ESI,EAX
00458337  0f4ec6                    CMOVLE EAX,ESI
0045833a  898530feffff              MOV dword ptr [EBP + 0xfffffe30],EAX
00458340  51                        PUSH ECX
00458341  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458348  6a00                      PUSH 0x0
0045834a  6a02                      PUSH 0x2
0045834c  51                        PUSH ECX
0045834d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458354  8bcf                      MOV ECX,EDI
00458356  689e000000                PUSH 0x9e
0045835b  e840e82700                CALL 0x006d6ba0
00458360  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
00458366  84c0                      TEST AL,AL
00458368  7416                      JZ 0x00458380
0045836a  c78534feffff000020c2      MOV dword ptr [EBP + 0xfffffe34],0xc2200000
00458374  c78538feffff00000000      MOV dword ptr [EBP + 0xfffffe38],0x0
0045837e  eb14                      JMP 0x00458394
00458380  c78514feffff00002042      MOV dword ptr [EBP + 0xfffffe14],0x42200000
0045838a  c78518feffff00000000      MOV dword ptr [EBP + 0xfffffe18],0x0
00458394  84c0                      TEST AL,AL
00458396  8d8d34feffff              LEA ECX,[EBP + 0xfffffe34]
0045839c  8d85c8fdffff              LEA EAX,[EBP + 0xfffffdc8]
004583a2  8db514feffff              LEA ESI,[EBP + 0xfffffe14]
004583a8  50                        PUSH EAX
004583a9  0f45f1                    CMOVNZ ESI,ECX
004583ac  e8bf6c2200                CALL 0x0067f070
004583b1  83c404                    ADD ESP,0x4
004583b4  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004583b8  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004583c0  f30f580e                  ADDSS XMM1,dword ptr [ESI]
004583c4  f30f118d20feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM1
004583cc  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004583d1  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004583d9  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
004583de  33f6                      XOR ESI,ESI
004583e0  f30f118d28feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM1
004583e8  39b530feffff              CMP dword ptr [EBP + 0xfffffe30],ESI
004583ee  0f8e05040000              JLE 0x004587f9
004583f4  85f6                      TEST ESI,ESI
004583f6  750a                      JNZ 0x00458402
004583f8  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00458400  eb08                      JMP 0x0045840a
00458402  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0045840a  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
00458412  e8496b2900                CALL 0x006eef60
00458417  f30f108520feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe20]
0045841f  f30f598538feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe38]
00458427  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045842d  6a00                      PUSH 0x0
0045842f  68acd6c500                PUSH 0xc5d6ac
00458434  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0045843c  68dcd5c500                PUSH 0xc5d5dc
00458441  6a00                      PUSH 0x0
00458443  50                        PUSH EAX
00458444  6a00                      PUSH 0x0
00458446  f30f11850cfeffff          MOVSS dword ptr [EBP + 0xfffffe0c],XMM0
0045844e  8d850cfeffff              LEA EAX,[EBP + 0xfffffe0c]
00458454  f30f108528feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe28]
0045845c  f30f598538feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe38]
00458464  57                        PUSH EDI
00458465  6840b6c700                PUSH 0xc7b640
0045846a  50                        PUSH EAX
0045846b  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00458473  6a00                      PUSH 0x0
00458475  6a12                      PUSH 0x12
00458477  f30f118510feffff          MOVSS dword ptr [EBP + 0xfffffe10],XMM0
0045847f  e89c06fdff                CALL 0x00428b20
00458484  50                        PUSH EAX
00458485  e827846900                CALL 0x00af08b1
0045848a  46                        INC ESI
0045848b  83c414                    ADD ESP,0x14
0045848e  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00458495  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0045849b  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
004584a2  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
004584a8  3bb530feffff              CMP ESI,dword ptr [EBP + 0xfffffe30]
004584ae  0f8c40ffffff              JL 0x004583f4
004584b4  e940030000                JMP 0x004587f9
004584b9  83f913                    CMP ECX,0x13
004584bc  0f857cfcffff              JNZ 0x0045813e
004584c2  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004584c6  0f8572fcffff              JNZ 0x0045813e
004584cc  51                        PUSH ECX
004584cd  c704240000803f            MOV dword ptr [ESP],0x3f800000
004584d4  6a00                      PUSH 0x0
004584d6  6a02                      PUSH 0x2
004584d8  51                        PUSH ECX
004584d9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004584e0  8bcf                      MOV ECX,EDI
004584e2  689e000000                PUSH 0x9e
004584e7  e8b4e62700                CALL 0x006d6ba0
004584ec  a17816c700                MOV EAX,[0x00c71678]
004584f1  6a00                      PUSH 0x0
004584f3  6a00                      PUSH 0x0
004584f5  6a00                      PUSH 0x0
004584f7  51                        PUSH ECX
004584f8  c7042400008c42            MOV dword ptr [ESP],0x428c0000
004584ff  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00458505  51                        PUSH ECX
00458506  8d8d1cfeffff              LEA ECX,[EBP + 0xfffffe1c]
0045850c  51                        PUSH ECX
0045850d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00458513  e808b03b00                CALL 0x00813520
00458518  8bf8                      MOV EDI,EAX
0045851a  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
00458520  50                        PUSH EAX
00458521  e84a6b2200                CALL 0x0067f070
00458526  83c404                    ADD ESP,0x4
00458529  8bf0                      MOV ESI,EAX
0045852b  e8306a2900                CALL 0x006eef60
00458530  51                        PUSH ECX
00458531  660f6ec0                  MOVD XMM0,EAX
00458535  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00458539  c1e81f                    SHR EAX,0x1f
0045853c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00458545  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0045854c  6a00                      PUSH 0x0
0045854e  660f5ad0                  CVTPD2PS XMM2,XMM0
00458552  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0045855a  0f28c2                    MOVAPS XMM0,XMM2
0045855d  f30f595604                MULSS XMM2,dword ptr [ESI + 0x4]
00458562  f30f5906                  MULSS XMM0,dword ptr [ESI]
00458566  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0045856e  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00458576  f30f585704                ADDSS XMM2,dword ptr [EDI + 0x4]
0045857b  f30f5807                  ADDSS XMM0,dword ptr [EDI]
0045857f  8bbd28feffff              MOV EDI,dword ptr [EBP + 0xfffffe28]
00458585  f30f119538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM2
0045858d  ffb538feffff              PUSH dword ptr [EBP + 0xfffffe38]
00458593  f30f118534feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM0
0045859b  8d873c030000              LEA EAX,[EDI + 0x33c]
004585a1  ffb534feffff              PUSH dword ptr [EBP + 0xfffffe34]
004585a7  57                        PUSH EDI
004585a8  50                        PUSH EAX
004585a9  e8a2a12600                CALL 0x006c2750
004585ae  83c418                    ADD ESP,0x18
004585b1  e943020000                JMP 0x004587f9
004585b6  83f808                    CMP EAX,0x8
004585b9  0f853a020000              JNZ 0x004587f9
004585bf  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004585c5  8d4801                    LEA ECX,[EAX + 0x1]
004585c8  898f10040000              MOV dword ptr [EDI + 0x410],ECX
004585ce  83f809                    CMP EAX,0x9
004585d1  7418                      JZ 0x004585eb
004585d3  83f91d                    CMP ECX,0x1d
004585d6  0f8e1d020000              JLE 0x004587f9
004585dc  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004585e6  e90e020000                JMP 0x004587f9
004585eb  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004585f3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004585f9  f30f118530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM0
00458601  83f812                    CMP EAX,0x12
00458604  750a                      JNZ 0x00458610
00458606  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0045860e  eb0d                      JMP 0x0045861d
00458610  83f813                    CMP EAX,0x13
00458613  7510                      JNZ 0x00458625
00458615  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0045861d  f30f118530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM0
00458625  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045862b  8d8d38feffff              LEA ECX,[EBP + 0xfffffe38]
00458631  c78538feffff68000000      MOV dword ptr [EBP + 0xfffffe38],0x68
0045863b  e840e14f00                CALL 0x00956780
00458640  f30f108530feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe30]
00458648  83ec08                    SUB ESP,0x8
0045864b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00458653  f30f110424                MOVSS dword ptr [ESP],XMM0
00458658  6a00                      PUSH 0x0
0045865a  6a02                      PUSH 0x2
0045865c  51                        PUSH ECX
0045865d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458664  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045866a  ffb538feffff              PUSH dword ptr [EBP + 0xfffffe38]
00458670  e8bb554d00                CALL 0x0092dc30
00458675  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00458679  0f85e2000000              JNZ 0x00458761
0045867f  8d8d40feffff              LEA ECX,[EBP + 0xfffffe40]
00458685  e8a668feff                CALL 0x0043ef30
0045868a  8bcf                      MOV ECX,EDI
0045868c  8bf0                      MOV ESI,EAX
0045868e  e8ad612600                CALL 0x006be840
00458693  56                        PUSH ESI
00458694  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0045869a  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
004586a0  8d852cfeffff              LEA EAX,[EBP + 0xfffffe2c]
004586a6  51                        PUSH ECX
004586a7  c7042400002041            MOV dword ptr [ESP],0x41200000
004586ae  50                        PUSH EAX
004586af  898d2cfeffff              MOV dword ptr [EBP + 0xfffffe2c],ECX
004586b5  8bcf                      MOV ECX,EDI
004586b7  6a01                      PUSH 0x1
004586b9  899530feffff              MOV dword ptr [EBP + 0xfffffe30],EDX
004586bf  e80c472700                CALL 0x006ccdd0
004586c4  8bd0                      MOV EDX,EAX
004586c6  6a01                      PUSH 0x1
004586c8  6a00                      PUSH 0x0
004586ca  68ff000000                PUSH 0xff
004586cf  f30f108218040000          MOVSS XMM0,dword ptr [EDX + 0x418]
004586d7  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
004586df  8b8a3c040000              MOV ECX,dword ptr [EDX + 0x43c]
004586e5  838a3804000006            OR dword ptr [EDX + 0x438],0x6
004586ec  898a3c040000              MOV dword ptr [EDX + 0x43c],ECX
004586f2  8d4d90                    LEA ECX,[EBP + -0x70]
004586f5  c78220040000cdcccc3f      MOV dword ptr [EDX + 0x420],0x3fcccccd
004586ff  f30f118218040000          MOVSS dword ptr [EDX + 0x418],XMM0
00458707  f30f108214040000          MOVSS XMM0,dword ptr [EDX + 0x414]
0045870f  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00458717  6aff                      PUSH -0x1
00458719  51                        PUSH ECX
0045871a  8bca                      MOV ECX,EDX
0045871c  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
00458724  f30f118214040000          MOVSS dword ptr [EDX + 0x414],XMM0
0045872c  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00458733  0f114590                  MOVUPS xmmword ptr [EBP + -0x70],XMM0
00458737  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
0045873e  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
00458745  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
0045874c  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00458753  0f1145a0                  MOVUPS xmmword ptr [EBP + -0x60],XMM0
00458757  8b02                      MOV EAX,dword ptr [EDX]
00458759  ff503c                    CALL dword ptr [EAX + 0x3c]
0045875c  e998000000                JMP 0x004587f9
00458761  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00458767  e8c467feff                CALL 0x0043ef30
0045876c  0f2805c0c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac9c0]
00458773  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
00458779  0f118524ffffff            MOVUPS xmmword ptr [EBP + 0xffffff24],XMM0
00458780  50                        PUSH EAX
00458781  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00458789  0f57c9                    XORPS XMM1,XMM1
0045878c  8d8504feffff              LEA EAX,[EBP + 0xfffffe04]
00458792  c78534ffffffcac8483e      MOV dword ptr [EBP + 0xffffff34],0x3e48c8ca
0045879c  f30f58c1                  ADDSS XMM0,XMM1
004587a0  c78538ffffffcac8483e      MOV dword ptr [EBP + 0xffffff38],0x3e48c8ca
004587aa  6a09                      PUSH 0x9
004587ac  50                        PUSH EAX
004587ad  8d85fcfdffff              LEA EAX,[EBP + 0xfffffdfc]
004587b3  c7853cffffffcac8483e      MOV dword ptr [EBP + 0xffffff3c],0x3e48c8ca
004587bd  50                        PUSH EAX
004587be  f30f1185fcfdffff          MOVSS dword ptr [EBP + 0xfffffdfc],XMM0
004587c6  8bcf                      MOV ECX,EDI
004587c8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004587d0  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
004587d8  c78504feffff00000041      MOV dword ptr [EBP + 0xfffffe04],0x41000000
004587e2  c78508feffff0000c040      MOV dword ptr [EBP + 0xfffffe08],0x40c00000
004587ec  f30f118500feffff          MOVSS dword ptr [EBP + 0xfffffe00],XMM0
004587f4  e8e72a2700                CALL 0x006cb2e0
004587f9  a17816c700                MOV EAX,[0x00c71678]
004587fe  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00458804  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0045880b  7539                      JNZ 0x00458846
0045880d  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00458815  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
0045881d  0f2fca                    COMISS XMM1,XMM2
00458820  7624                      JBE 0x00458846
00458822  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0045882a  f30f5cca                  SUBSS XMM1,XMM2
0045882e  f30f5cc8                  SUBSS XMM1,XMM0
00458832  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0045883a  f30f58c8                  ADDSS XMM1,XMM0
0045883e  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00458846  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00458849  64890d00000000            MOV dword ptr FS:[0x0],ECX
00458850  59                        POP ECX
00458851  5f                        POP EDI
00458852  5e                        POP ESI
00458853  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00458856  33cd                      XOR ECX,EBP
00458858  e8ce686900                CALL 0x00aef12b
0045885d  8be5                      MOV ESP,EBP
0045885f  5d                        POP EBP
00458860  8be3                      MOV ESP,EBX
00458862  5b                        POP EBX
00458863  c3                        RET
