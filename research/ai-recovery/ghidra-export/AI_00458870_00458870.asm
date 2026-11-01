; J460 NPC AI 0x00458870 AI_00458870
; types=65
; identities=65.0.0,65.1.0,65.10.0
; entry=00458870
00458870  53                        PUSH EBX
00458871  8bdc                      MOV EBX,ESP
00458873  83ec08                    SUB ESP,0x8
00458876  83e4f8                    AND ESP,0xfffffff8
00458879  83c404                    ADD ESP,0x4
0045887c  55                        PUSH EBP
0045887d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00458880  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00458884  8bec                      MOV EBP,ESP
00458886  6aff                      PUSH -0x1
00458888  687d25af00                PUSH 0xaf257d
0045888d  64a100000000              MOV EAX,FS:[0x0]
00458893  50                        PUSH EAX
00458894  53                        PUSH EBX
00458895  81ec28010000              SUB ESP,0x128
0045889b  a1b493bf00                MOV EAX,[0x00bf93b4]
004588a0  33c5                      XOR EAX,EBP
004588a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004588a5  56                        PUSH ESI
004588a6  57                        PUSH EDI
004588a7  50                        PUSH EAX
004588a8  8d45f4                    LEA EAX,[EBP + -0xc]
004588ab  64a300000000              MOV FS:[0x0],EAX
004588b1  8bf9                      MOV EDI,ECX
004588b3  89bdccfeffff              MOV dword ptr [EBP + 0xfffffecc],EDI
004588b9  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004588c0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004588c8  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004588d0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004588d8  7540                      JNZ 0x0045891a
004588da  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004588e4  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004588ee  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004588f2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004588fc  c787340c00000000003f      MOV dword ptr [EDI + 0xc34],0x3f000000
00458906  0f85ef130000              JNZ 0x00459cfb
0045890c  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0045890f  89877c0c0000              MOV dword ptr [EDI + 0xc7c],EAX
00458915  e9e1130000                JMP 0x00459cfb
0045891a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0045891d  85c0                      TEST EAX,EAX
0045891f  0f85ff000000              JNZ 0x00458a24
00458925  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
0045892d  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00458935  f30f5ec1                  DIVSS XMM0,XMM1
00458939  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00458941  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00458949  0f2fc8                    COMISS XMM1,XMM0
0045894c  0f86c8010000              JBE 0x00458b1a
00458952  e809662900                CALL 0x006eef60
00458957  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045895d  50                        PUSH EAX
0045895e  6a00                      PUSH 0x0
00458960  57                        PUSH EDI
00458961  6840b6c700                PUSH 0xc7b640
00458966  8d873c030000              LEA EAX,[EDI + 0x33c]
0045896c  50                        PUSH EAX
0045896d  6a01                      PUSH 0x1
0045896f  68e8030000                PUSH 0x3e8
00458974  e8a701fdff                CALL 0x00428b20
00458979  6aff                      PUSH -0x1
0045897b  ff7730                    PUSH dword ptr [EDI + 0x30]
0045897e  8bcf                      MOV ECX,EDI
00458980  6a0a                      PUSH 0xa
00458982  ff7728                    PUSH dword ptr [EDI + 0x28]
00458985  e8a6852600                CALL 0x006c0f30
0045898a  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00458990  33c0                      XOR EAX,EAX
00458992  81e100000010              AND ECX,0x10000000
00458998  0bc1                      OR EAX,ECX
0045899a  7423                      JZ 0x004589bf
0045899c  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0045899f  8d4f48                    LEA ECX,[EDI + 0x48]
004589a2  6a01                      PUSH 0x1
004589a4  ff772c                    PUSH dword ptr [EDI + 0x2c]
004589a7  e864d30400                CALL 0x004a5d10
004589ac  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
004589b4  83c408                    ADD ESP,0x8
004589b7  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
004589bf  6a01                      PUSH 0x1
004589c1  6824ddb100                PUSH 0xb1dd24
004589c6  8d4f48                    LEA ECX,[EDI + 0x48]
004589c9  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004589d3  c787340c00000000003f      MOV dword ptr [EDI + 0xc34],0x3f000000
004589dd  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004589e7  e8e41bfbff                CALL 0x0040a5d0
004589ec  84c0                      TEST AL,AL
004589ee  740f                      JZ 0x004589ff
004589f0  8d4f78                    LEA ECX,[EDI + 0x78]
004589f3  e8b817fbff                CALL 0x0040a1b0
004589f8  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004589ff  51                        PUSH ECX
00458a00  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458a07  6a00                      PUSH 0x0
00458a09  6a02                      PUSH 0x2
00458a0b  51                        PUSH ECX
00458a0c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458a13  8bcf                      MOV ECX,EDI
00458a15  68ee030000                PUSH 0x3ee
00458a1a  e881e12700                CALL 0x006d6ba0
00458a1f  e9f6000000                JMP 0x00458b1a
00458a24  83f801                    CMP EAX,0x1
00458a27  0f85ed000000              JNZ 0x00458b1a
00458a2d  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00458a32  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00458a39  0f86db000000              JBE 0x00458b1a
00458a3f  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
00458a42  2500010000                AND EAX,0x100
00458a47  83c800                    OR EAX,0x0
00458a4a  0f85ca000000              JNZ 0x00458b1a
00458a50  ffb77c0c0000              PUSH dword ptr [EDI + 0xc7c]
00458a56  8d45dc                    LEA EAX,[EBP + -0x24]
00458a59  50                        PUSH EAX
00458a5a  e871832700                CALL 0x006d0dd0
00458a5f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00458a66  33f6                      XOR ESI,ESI
00458a68  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
00458a6b  85c9                      TEST ECX,ECX
00458a6d  747f                      JZ 0x00458aee
00458a6f  90                        NOP
00458a70  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00458a73  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
00458a76  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00458a7c  3bc7                      CMP EAX,EDI
00458a7e  7469                      JZ 0x00458ae9
00458a80  8b00                      MOV EAX,dword ptr [EAX]
00458a82  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
00458a88  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00458a8d  6a1e                      PUSH 0x1e
00458a8f  8b5020                    MOV EDX,dword ptr [EAX + 0x20]
00458a92  a144b6c700                MOV EAX,[0x00c7b644]
00458a97  8945c0                    MOV dword ptr [EBP + -0x40],EAX
00458a9a  8945c8                    MOV dword ptr [EBP + -0x38],EAX
00458a9d  8d45ac                    LEA EAX,[EBP + -0x54]
00458aa0  50                        PUSH EAX
00458aa1  6a00                      PUSH 0x0
00458aa3  6800010000                PUSH 0x100
00458aa8  51                        PUSH ECX
00458aa9  894dbc                    MOV dword ptr [EBP + -0x44],ECX
00458aac  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00458aaf  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00458ab5  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
00458abc  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
00458ac3  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
00458aca  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00458ad1  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00458ad8  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00458adf  f30f110424                MOVSS dword ptr [ESP],XMM0
00458ae4  ffd2                      CALL EDX
00458ae6  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
00458ae9  46                        INC ESI
00458aea  3bf1                      CMP ESI,ECX
00458aec  7282                      JC 0x00458a70
00458aee  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00458af5  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
00458af9  751f                      JNZ 0x00458b1a
00458afb  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00458b02  b101                      MOV CL,0x1
00458b04  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
00458b07  6a00                      PUSH 0x0
00458b09  6a00                      PUSH 0x0
00458b0b  e8a0bd6000                CALL 0x00a648b0
00458b10  83c408                    ADD ESP,0x8
00458b13  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00458b1a  8bcf                      MOV ECX,EDI
00458b1c  e81f5d2600                CALL 0x006be840
00458b21  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
00458b29  8db73c030000              LEA ESI,[EDI + 0x33c]
00458b2f  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
00458b35  89b5dcfeffff              MOV dword ptr [EBP + 0xfffffedc],ESI
00458b3b  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00458b43  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00458b4b  f30f5ccb                  SUBSS XMM1,XMM3
00458b4f  a17816c700                MOV EAX,[0x00c71678]
00458b54  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00458b59  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00458b5f  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
00458b67  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00458b6f  f30f104818                MOVSS XMM1,dword ptr [EAX + 0x18]
00458b74  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00458b79  f30f105020                MOVSS XMM2,dword ptr [EAX + 0x20]
00458b7e  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
00458b86  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
00458b8e  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
00458b93  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
00458b9b  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00458ba3  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00458bab  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00458bb0  f30f1195e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM2
00458bb8  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
00458bbd  83fa09                    CMP EDX,0x9
00458bc0  7419                      JZ 0x00458bdb
00458bc2  0f2fd8                    COMISS XMM3,XMM0
00458bc5  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00458bcb  8d45e4                    LEA EAX,[EBP + -0x1c]
00458bce  0f47ce                    CMOVA ECX,ESI
00458bd1  0f2f09                    COMISS XMM1,dword ptr [ECX]
00458bd4  0f47c1                    CMOVA EAX,ECX
00458bd7  8b00                      MOV EAX,dword ptr [EAX]
00458bd9  8906                      MOV dword ptr [ESI],EAX
00458bdb  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00458bde  83f80a                    CMP EAX,0xa
00458be1  0f850b030000              JNZ 0x00458ef2
00458be7  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00458bf1  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00458bfb  83fa04                    CMP EDX,0x4
00458bfe  0f8528020000              JNZ 0x00458e2c
00458c04  a118ddb100                MOV EAX,[0x00b1dd18]
00458c09  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00458c0f  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00458c16  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
00458c1d  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00458c20  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00458c23  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
00458c27  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00458c2e  a130ddb100                MOV EAX,[0x00b1dd30]
00458c33  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00458c39  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00458c40  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
00458c47  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00458c4a  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00458c4d  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00458c51  51                        PUSH ECX
00458c52  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
00458c56  8d45bc                    LEA EAX,[EBP + -0x44]
00458c59  c7042400000040            MOV dword ptr [ESP],0x40000000
00458c60  8bcf                      MOV ECX,EDI
00458c62  50                        PUSH EAX
00458c63  8d45d4                    LEA EAX,[EBP + -0x2c]
00458c66  50                        PUSH EAX
00458c67  e8c4862600                CALL 0x006c1330
00458c6c  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00458c70  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00458c73  83fa10                    CMP EDX,0x10
00458c76  7228                      JC 0x00458ca0
00458c78  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00458c7b  42                        INC EDX
00458c7c  8bc1                      MOV EAX,ECX
00458c7e  81fa00100000              CMP EDX,0x1000
00458c84  7210                      JC 0x00458c96
00458c86  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00458c89  83c223                    ADD EDX,0x23
00458c8c  2bc1                      SUB EAX,ECX
00458c8e  83c0fc                    ADD EAX,-0x4
00458c91  83f81f                    CMP EAX,0x1f
00458c94  7749                      JA 0x00458cdf
00458c96  52                        PUSH EDX
00458c97  51                        PUSH ECX
00458c98  e8bf646900                CALL 0x00aef15c
00458c9d  83c408                    ADD ESP,0x8
00458ca0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00458ca7  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00458caa  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00458cb1  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00458cb8  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00458cbc  83fa10                    CMP EDX,0x10
00458cbf  722e                      JC 0x00458cef
00458cc1  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00458cc4  42                        INC EDX
00458cc5  8bc1                      MOV EAX,ECX
00458cc7  81fa00100000              CMP EDX,0x1000
00458ccd  7216                      JC 0x00458ce5
00458ccf  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00458cd2  83c223                    ADD EDX,0x23
00458cd5  2bc1                      SUB EAX,ECX
00458cd7  83c0fc                    ADD EAX,-0x4
00458cda  83f81f                    CMP EAX,0x1f
00458cdd  7606                      JBE 0x00458ce5
00458cdf  ff159488b100              CALL dword ptr [0x00b18894]
00458ce5  52                        PUSH EDX
00458ce6  51                        PUSH ECX
00458ce7  e870646900                CALL 0x00aef15c
00458cec  83c408                    ADD ESP,0x8
00458cef  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
00458cf7  8d45e4                    LEA EAX,[EBP + -0x1c]
00458cfa  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
00458d02  51                        PUSH ECX
00458d03  c7042400000000            MOV dword ptr [ESP],0x0
00458d0a  8bcf                      MOV ECX,EDI
00458d0c  50                        PUSH EAX
00458d0d  f30f59051ca4ba00          MULSS XMM0,dword ptr [0x00baa41c]
00458d15  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00458d1d  f30f1187340c0000          MOVSS dword ptr [EDI + 0xc34],XMM0
00458d25  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00458d2d  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00458d35  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
00458d3d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00458d45  e8f65e2600                CALL 0x006bec40
00458d4a  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
00458d52  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00458d5a  6a01                      PUSH 0x1
00458d5c  6884030000                PUSH 0x384
00458d61  51                        PUSH ECX
00458d62  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00458d6a  8d8f14040000              LEA ECX,[EDI + 0x414]
00458d70  f30f110424                MOVSS dword ptr [ESP],XMM0
00458d75  50                        PUSH EAX
00458d76  e845a63800                CALL 0x007e33c0
00458d7b  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00458d81  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
00458d89  8d4101                    LEA EAX,[ECX + 0x1]
00458d8c  898710040000              MOV dword ptr [EDI + 0x410],EAX
00458d92  83f90a                    CMP ECX,0xa
00458d95  7d0d                      JGE 0x00458da4
00458d97  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00458d9f  0f28d1                    MOVAPS XMM2,XMM1
00458da2  eb08                      JMP 0x00458dac
00458da4  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
00458dac  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
00458db4  f30f580da8a9ba00          ADDSS XMM1,dword ptr [0x00baa9a8]
00458dbc  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00458dc4  f30f5cc8                  SUBSS XMM1,XMM0
00458dc8  0f2fd1                    COMISS XMM2,XMM1
00458dcb  0f86dd0e0000              JBE 0x00459cae
00458dd1  6a01                      PUSH 0x1
00458dd3  6824ddb100                PUSH 0xb1dd24
00458dd8  8d4f48                    LEA ECX,[EDI + 0x48]
00458ddb  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00458de5  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00458def  e8dc17fbff                CALL 0x0040a5d0
00458df4  84c0                      TEST AL,AL
00458df6  740f                      JZ 0x00458e07
00458df8  8d4f78                    LEA ECX,[EDI + 0x78]
00458dfb  e8b013fbff                CALL 0x0040a1b0
00458e00  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00458e07  51                        PUSH ECX
00458e08  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458e0f  6a00                      PUSH 0x0
00458e11  6a02                      PUSH 0x2
00458e13  51                        PUSH ECX
00458e14  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458e1b  8bcf                      MOV ECX,EDI
00458e1d  68ee030000                PUSH 0x3ee
00458e22  e879dd2700                CALL 0x006d6ba0
00458e27  e9820e0000                JMP 0x00459cae
00458e2c  83fa08                    CMP EDX,0x8
00458e2f  0f85790e0000              JNZ 0x00459cae
00458e35  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00458e3b  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
00458e41  41                        INC ECX
00458e42  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00458e48  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
00458e4e  c787340c00000000003f      MOV dword ptr [EDI + 0xc34],0x3f000000
00458e58  83f928                    CMP ECX,0x28
00458e5b  7e19                      JLE 0x00458e76
00458e5d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00458e67  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00458e71  e9380e0000                JMP 0x00459cae
00458e76  83f903                    CMP ECX,0x3
00458e79  0f852f0e0000              JNZ 0x00459cae
00458e7f  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00458e83  0f85250e0000              JNZ 0x00459cae
00458e89  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00458e8f  e89c60feff                CALL 0x0043ef30
00458e94  e8a7f32700                CALL 0x006d8240
00458e99  85c0                      TEST EAX,EAX
00458e9b  7e0a                      JLE 0x00458ea7
00458e9d  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
00458ea5  eb08                      JMP 0x00458eaf
00458ea7  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00458eaf  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
00458eb5  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00458eba  50                        PUSH EAX
00458ebb  6a09                      PUSH 0x9
00458ebd  8d45e4                    LEA EAX,[EBP + -0x1c]
00458ec0  c745e80000c040            MOV dword ptr [EBP + -0x18],0x40c00000
00458ec7  50                        PUSH EAX
00458ec8  56                        PUSH ESI
00458ec9  8bcf                      MOV ECX,EDI
00458ecb  e810242700                CALL 0x006cb2e0
00458ed0  51                        PUSH ECX
00458ed1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458ed8  6a00                      PUSH 0x0
00458eda  6a02                      PUSH 0x2
00458edc  51                        PUSH ECX
00458edd  c704240000803f            MOV dword ptr [ESP],0x3f800000
00458ee4  8bcf                      MOV ECX,EDI
00458ee6  6a70                      PUSH 0x70
00458ee8  e8b3dc2700                CALL 0x006d6ba0
00458eed  e9bc0d0000                JMP 0x00459cae
00458ef2  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00458efc  83fa04                    CMP EDX,0x4
00458eff  0f8555030000              JNZ 0x0045925a
00458f05  8d8f14040000              LEA ECX,[EDI + 0x414]
00458f0b  6a00                      PUSH 0x0
00458f0d  e83ed73800                CALL 0x007e6650
00458f12  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00458f19  c745cc04000000            MOV dword ptr [EBP + -0x34],0x4
00458f20  c745bc57616c6b            MOV dword ptr [EBP + -0x44],0x6b6c6157
00458f27  c645c000                  MOV byte ptr [EBP + -0x40],0x0
00458f2b  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
00458f32  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00458f39  c745e404000000            MOV dword ptr [EBP + -0x1c],0x4
00458f40  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
00458f47  c645d800                  MOV byte ptr [EBP + -0x28],0x0
00458f4b  51                        PUSH ECX
00458f4c  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
00458f50  8d45bc                    LEA EAX,[EBP + -0x44]
00458f53  c7042400000040            MOV dword ptr [ESP],0x40000000
00458f5a  8bcf                      MOV ECX,EDI
00458f5c  50                        PUSH EAX
00458f5d  8d45d4                    LEA EAX,[EBP + -0x2c]
00458f60  50                        PUSH EAX
00458f61  e8ca832600                CALL 0x006c1330
00458f66  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
00458f6a  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00458f6d  83fa10                    CMP EDX,0x10
00458f70  7228                      JC 0x00458f9a
00458f72  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00458f75  42                        INC EDX
00458f76  8bc1                      MOV EAX,ECX
00458f78  81fa00100000              CMP EDX,0x1000
00458f7e  7210                      JC 0x00458f90
00458f80  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00458f83  83c223                    ADD EDX,0x23
00458f86  2bc1                      SUB EAX,ECX
00458f88  83c0fc                    ADD EAX,-0x4
00458f8b  83f81f                    CMP EAX,0x1f
00458f8e  7749                      JA 0x00458fd9
00458f90  52                        PUSH EDX
00458f91  51                        PUSH ECX
00458f92  e8c5616900                CALL 0x00aef15c
00458f97  83c408                    ADD ESP,0x8
00458f9a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00458fa1  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00458fa4  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00458fab  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00458fb2  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00458fb6  83fa10                    CMP EDX,0x10
00458fb9  722e                      JC 0x00458fe9
00458fbb  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00458fbe  42                        INC EDX
00458fbf  8bc1                      MOV EAX,ECX
00458fc1  81fa00100000              CMP EDX,0x1000
00458fc7  7216                      JC 0x00458fdf
00458fc9  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00458fcc  83c223                    ADD EDX,0x23
00458fcf  2bc1                      SUB EAX,ECX
00458fd1  83c0fc                    ADD EAX,-0x4
00458fd4  83f81f                    CMP EAX,0x1f
00458fd7  7606                      JBE 0x00458fdf
00458fd9  ff159488b100              CALL dword ptr [0x00b18894]
00458fdf  52                        PUSH EDX
00458fe0  51                        PUSH ECX
00458fe1  e876616900                CALL 0x00aef15c
00458fe6  83c408                    ADD ESP,0x8
00458fe9  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00458fef  33c0                      XOR EAX,EAX
00458ff1  81e100000010              AND ECX,0x10000000
00458ff7  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00458ffe  0bc1                      OR EAX,ECX
00459000  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00459007  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
0045900b  7418                      JZ 0x00459025
0045900d  a17816c700                MOV EAX,[0x00c71678]
00459012  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00459018  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045901b  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0045901f  0f85890c0000              JNZ 0x00459cae
00459025  e8365f2900                CALL 0x006eef60
0045902a  33d2                      XOR EDX,EDX
0045902c  b95a000000                MOV ECX,0x5a
00459031  f7f1                      DIV ECX
00459033  85d2                      TEST EDX,EDX
00459035  7575                      JNZ 0x004590ac
00459037  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
0045903f  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
00459047  f30f59c9                  MULSS XMM1,XMM1
0045904b  f30f59c0                  MULSS XMM0,XMM0
0045904f  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
00459057  f30f58c1                  ADDSS XMM0,XMM1
0045905b  e8f0c9fdff                CALL 0x00435a50
00459060  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00459068  0f2fc8                    COMISS XMM1,XMM0
0045906b  7653                      JBE 0x004590c0
0045906d  6a01                      PUSH 0x1
0045906f  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00459079  68ccd2b100                PUSH 0xb1d2cc
0045907e  8d4f48                    LEA ECX,[EDI + 0x48]
00459081  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045908b  e84015fbff                CALL 0x0040a5d0
00459090  84c0                      TEST AL,AL
00459092  0f84160c0000              JZ 0x00459cae
00459098  8d4f78                    LEA ECX,[EDI + 0x78]
0045909b  e81011fbff                CALL 0x0040a1b0
004590a0  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004590a7  e9020c0000                JMP 0x00459cae
004590ac  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004590b4  f30f59c0                  MULSS XMM0,XMM0
004590b8  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004590c0  e89b5e2900                CALL 0x006eef60
004590c5  33d2                      XOR EDX,EDX
004590c7  b9c8000000                MOV ECX,0xc8
004590cc  f7f1                      DIV ECX
004590ce  85d2                      TEST EDX,EDX
004590d0  7522                      JNZ 0x004590f4
004590d2  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004590da  f30f59c0                  MULSS XMM0,XMM0
004590de  f30f5885f0feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffef0]
004590e6  e865c9fdff                CALL 0x00435a50
004590eb  0f2f0544aaba00            COMISS XMM0,dword ptr [0x00baaa44]
004590f2  7736                      JA 0x0045912a
004590f4  e8675e2900                CALL 0x006eef60
004590f9  33d2                      XOR EDX,EDX
004590fb  b91e000000                MOV ECX,0x1e
00459100  f7f1                      DIV ECX
00459102  85d2                      TEST EDX,EDX
00459104  0f85e8000000              JNZ 0x004591f2
0045910a  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
00459112  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00459119  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
00459121  0f2fc1                    COMISS XMM0,XMM1
00459124  0f86c8000000              JBE 0x004591f2
0045912a  6a00                      PUSH 0x0
0045912c  68000a0001                PUSH 0x1000a00
00459131  8bcf                      MOV ECX,EDI
00459133  e8f8e2fbff                CALL 0x00417430
00459138  84c0                      TEST AL,AL
0045913a  0f856e0b0000              JNZ 0x00459cae
00459140  51                        PUSH ECX
00459141  c704240000803f            MOV dword ptr [ESP],0x3f800000
00459148  6a00                      PUSH 0x0
0045914a  6a02                      PUSH 0x2
0045914c  51                        PUSH ECX
0045914d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00459154  8bcf                      MOV ECX,EDI
00459156  6a77                      PUSH 0x77
00459158  e843da2700                CALL 0x006d6ba0
0045915d  0f57c0                    XORPS XMM0,XMM0
00459160  8d4f48                    LEA ECX,[EDI + 0x48]
00459163  0f2f85f4feffff            COMISS XMM0,dword ptr [EBP + 0xfffffef4]
0045916a  6a01                      PUSH 0x1
0045916c  68f0d3b100                PUSH 0xb1d3f0
00459171  0f97c0                    SETA AL
00459174  888748010000              MOV byte ptr [EDI + 0x148],AL
0045917a  e85114fbff                CALL 0x0040a5d0
0045917f  84c0                      TEST AL,AL
00459181  7415                      JZ 0x00459198
00459183  8d4f78                    LEA ECX,[EDI + 0x78]
00459186  e82510fbff                CALL 0x0040a1b0
0045918b  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00459192  8db73c030000              LEA ESI,[EDI + 0x33c]
00459198  8b06                      MOV EAX,dword ptr [ESI]
0045919a  898734030000              MOV dword ptr [EDI + 0x334],EAX
004591a0  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004591a3  898738030000              MOV dword ptr [EDI + 0x338],EAX
004591a9  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004591b3  e8a85d2900                CALL 0x006eef60
004591b8  b903000000                MOV ECX,0x3
004591bd  33d2                      XOR EDX,EDX
004591bf  f7f1                      DIV ECX
004591c1  51                        PUSH ECX
004591c2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004591c9  6a00                      PUSH 0x0
004591cb  6a02                      PUSH 0x2
004591cd  51                        PUSH ECX
004591ce  898f10040000              MOV dword ptr [EDI + 0x410],ECX
004591d4  8bcf                      MOV ECX,EDI
004591d6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004591dd  68ef030000                PUSH 0x3ef
004591e2  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
004591e8  e8b3d92700                CALL 0x006d6ba0
004591ed  e9bc0a0000                JMP 0x00459cae
004591f2  e8695d2900                CALL 0x006eef60
004591f7  33d2                      XOR EDX,EDX
004591f9  b9b4000000                MOV ECX,0xb4
004591fe  f7f1                      DIV ECX
00459200  85d2                      TEST EDX,EDX
00459202  0f85a60a0000              JNZ 0x00459cae
00459208  52                        PUSH EDX
00459209  68000a0001                PUSH 0x1000a00
0045920e  8bcf                      MOV ECX,EDI
00459210  e81be2fbff                CALL 0x00417430
00459215  84c0                      TEST AL,AL
00459217  0f85910a0000              JNZ 0x00459cae
0045921d  e83e5d2900                CALL 0x006eef60
00459222  51                        PUSH ECX
00459223  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045922a  83e003                    AND EAX,0x3
0045922d  6a00                      PUSH 0x0
0045922f  6a02                      PUSH 0x2
00459231  51                        PUSH ECX
00459232  83c073                    ADD EAX,0x73
00459235  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045923c  50                        PUSH EAX
0045923d  8bcf                      MOV ECX,EDI
0045923f  e85cd92700                CALL 0x006d6ba0
00459244  6a01                      PUSH 0x1
00459246  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00459250  68ecd2b100                PUSH 0xb1d2ec
00459255  e924feffff                JMP 0x0045907e
0045925a  83fa08                    CMP EDX,0x8
0045925d  0f85e7000000              JNZ 0x0045934a
00459263  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00459269  8d4801                    LEA ECX,[EAX + 0x1]
0045926c  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00459272  83f805                    CMP EAX,0x5
00459275  0f85af000000              JNZ 0x0045932a
0045927b  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00459281  e8aa5cfeff                CALL 0x0043ef30
00459286  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
00459289  c78504ffffff000034c2      MOV dword ptr [EBP + 0xffffff04],0xc2340000
00459293  c78508ffffff0000e040      MOV dword ptr [EBP + 0xffffff08],0x40e00000
0045929d  83fa01                    CMP EDX,0x1
004592a0  751c                      JNZ 0x004592be
004592a2  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
004592a8  099558ffffff              OR dword ptr [EBP + 0xffffff58],EDX
004592ae  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
004592b4  c78514ffffff0000c03f      MOV dword ptr [EBP + 0xffffff14],0x3fc00000
004592be  33c9                      XOR ECX,ECX
004592c0  83fa01                    CMP EDX,0x1
004592c3  0f95c1                    SETNZ CL
004592c6  8d0c4d06000000            LEA ECX,[ECX*0x2 + 0x6]
004592cd  e86eef2700                CALL 0x006d8240
004592d2  85c0                      TEST EAX,EAX
004592d4  7e0a                      JLE 0x004592e0
004592d6  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
004592de  eb08                      JMP 0x004592e8
004592e0  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
004592e8  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004592ee  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004592f3  50                        PUSH EAX
004592f4  51                        PUSH ECX
004592f5  8d45e4                    LEA EAX,[EBP + -0x1c]
004592f8  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004592ff  50                        PUSH EAX
00459300  56                        PUSH ESI
00459301  8bcf                      MOV ECX,EDI
00459303  e8d81f2700                CALL 0x006cb2e0
00459308  51                        PUSH ECX
00459309  c704240000803f            MOV dword ptr [ESP],0x3f800000
00459310  6a00                      PUSH 0x0
00459312  6a02                      PUSH 0x2
00459314  51                        PUSH ECX
00459315  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045931c  8bcf                      MOV ECX,EDI
0045931e  6a70                      PUSH 0x70
00459320  e87bd82700                CALL 0x006d6ba0
00459325  e984090000                JMP 0x00459cae
0045932a  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
00459332  83f926                    CMP ECX,0x26
00459335  0f8e7b090000              JLE 0x00459cb6
0045933b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00459345  e96c090000                JMP 0x00459cb6
0045934a  83fa06                    CMP EDX,0x6
0045934d  0f8541040000              JNZ 0x00459794
00459353  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00459359  41                        INC ECX
0045935a  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00459360  83f914                    CMP ECX,0x14
00459363  7e14                      JLE 0x00459379
00459365  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0045936f  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00459379  ba05000000                MOV EDX,0x5
0045937e  83f801                    CMP EAX,0x1
00459381  750c                      JNZ 0x0045938f
00459383  c785f4feffff0f000000      MOV dword ptr [EBP + 0xfffffef4],0xf
0045938d  eb12                      JMP 0x004593a1
0045938f  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00459393  b802000000                MOV EAX,0x2
00459398  0f44c2                    CMOVZ EAX,EDX
0045939b  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
004593a1  8d51df                    LEA EDX,[ECX + -0x21]
004593a4  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
004593aa  85d2                      TEST EDX,EDX
004593ac  0f881e030000              JS 0x004596d0
004593b2  b867666666                MOV EAX,0x66666667
004593b7  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
004593bd  f7ea                      IMUL EDX
004593bf  d1fa                      SAR EDX,0x1
004593c1  8bc2                      MOV EAX,EDX
004593c3  c1e81f                    SHR EAX,0x1f
004593c6  03c2                      ADD EAX,EDX
004593c8  8d51df                    LEA EDX,[ECX + -0x21]
004593cb  8985f0feffff              MOV dword ptr [EBP + 0xfffffef0],EAX
004593d1  8d0480                    LEA EAX,[EAX + EAX*0x4]
004593d4  2bd0                      SUB EDX,EAX
004593d6  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
004593dc  0f85f4020000              JNZ 0x004596d6
004593e2  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
004593e8  3985f0feffff              CMP dword ptr [EBP + 0xfffffef0],EAX
004593ee  0f8de2020000              JGE 0x004596d6
004593f4  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004593f8  a17816c700                MOV EAX,[0x00c71678]
004593fd  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00459403  8d45e4                    LEA EAX,[EBP + -0x1c]
00459406  0f8524020000              JNZ 0x00459630
0045940c  51                        PUSH ECX
0045940d  c704240000a041            MOV dword ptr [ESP],0x41a00000
00459414  8bce                      MOV ECX,ESI
00459416  50                        PUSH EAX
00459417  e8b4553c00                CALL 0x0081e9d0
0045941c  6a00                      PUSH 0x0
0045941e  6a00                      PUSH 0x0
00459420  6a00                      PUSH 0x0
00459422  51                        PUSH ECX
00459423  c7042400000000            MOV dword ptr [ESP],0x0
0045942a  8bce                      MOV ECX,ESI
0045942c  50                        PUSH EAX
0045942d  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00459433  50                        PUSH EAX
00459434  e8e7a03b00                CALL 0x00813520
00459439  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0045943d  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00459445  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0045944a  8d45e4                    LEA EAX,[EBP + -0x1c]
0045944d  50                        PUSH EAX
0045944e  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00459456  e8155c2200                CALL 0x0067f070
0045945b  83c404                    ADD ESP,0x4
0045945e  8bf0                      MOV ESI,EAX
00459460  e8fb5a2900                CALL 0x006eef60
00459465  b905000000                MOV ECX,0x5
0045946a  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
0045946f  660f6ec0                  MOVD XMM0,EAX
00459473  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00459477  c1e81f                    SHR EAX,0x1f
0045947a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00459483  8b85f0feffff              MOV EAX,dword ptr [EBP + 0xfffffef0]
00459489  40                        INC EAX
0045948a  99                        CDQ
0045948b  f7f9                      IDIV ECX
0045948d  660f5ac8                  CVTPD2PS XMM1,XMM0
00459491  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00459499  f30f59d1                  MULSS XMM2,XMM1
0045949d  0f28c1                    MOVAPS XMM0,XMM1
004594a0  f30f5906                  MULSS XMM0,dword ptr [ESI]
004594a4  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
004594ac  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004594b4  f30f5895e8feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffee8]
004594bc  f30f5885e4feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffee4]
004594c4  f30f1195e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM2
004594cc  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004594d4  85d2                      TEST EDX,EDX
004594d6  0f85d7000000              JNZ 0x004595b3
004594dc  a17816c700                MOV EAX,[0x00c71678]
004594e1  8b8dccfeffff              MOV ECX,dword ptr [EBP + 0xfffffecc]
004594e7  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
004594ed  e84e532600                CALL 0x006be840
004594f2  8bf0                      MOV ESI,EAX
004594f4  8b85dcfeffff              MOV EAX,dword ptr [EBP + 0xfffffedc]
004594fa  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004594fe  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00459503  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0045950b  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00459513  f30f59c0                  MULSS XMM0,XMM0
00459517  f30f59c9                  MULSS XMM1,XMM1
0045951b  f30f58c1                  ADDSS XMM0,XMM1
0045951f  e82cc5fdff                CALL 0x00435a50
00459524  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0045952c  8d45e4                    LEA EAX,[EBP + -0x1c]
0045952f  83ec0c                    SUB ESP,0xc
00459532  8bcf                      MOV ECX,EDI
00459534  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0045953c  0f28c8                    MOVAPS XMM1,XMM0
0045953f  f30f598664030000          MULSS XMM0,dword ptr [ESI + 0x364]
00459547  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0045954f  f30f598e60030000          MULSS XMM1,dword ptr [ESI + 0x360]
00459557  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0045955f  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
00459567  c704240000a041            MOV dword ptr [ESP],0x41a00000
0045956e  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
00459576  50                        PUSH EAX
00459577  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0045957d  50                        PUSH EAX
0045957e  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00459583  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00459588  e8c3993b00                CALL 0x00812f50
0045958d  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
00459595  8bbdccfeffff              MOV EDI,dword ptr [EBP + 0xfffffecc]
0045959b  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004595a3  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
004595ab  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004595b3  e8a8592900                CALL 0x006eef60
004595b8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004595be  50                        PUSH EAX
004595bf  6a02                      PUSH 0x2
004595c1  57                        PUSH EDI
004595c2  6840b6c700                PUSH 0xc7b640
004595c7  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004595cd  50                        PUSH EAX
004595ce  6a13                      PUSH 0x13
004595d0  68e8030000                PUSH 0x3e8
004595d5  e846f5fcff                CALL 0x00428b20
004595da  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
004595e2  8bf0                      MOV ESI,EAX
004595e4  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004595eb  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004595f3  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004595fb  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00459602  6aff                      PUSH -0x1
00459604  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0045960c  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
00459612  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
00459618  51                        PUSH ECX
00459619  8bce                      MOV ECX,ESI
0045961b  c7042400002041            MOV dword ptr [ESP],0x41200000
00459622  e8792c2500                CALL 0x006ac2a0
00459627  8b06                      MOV EAX,dword ptr [ESI]
00459629  8bce                      MOV ECX,ESI
0045962b  ff500c                    CALL dword ptr [EAX + 0xc]
0045962e  eb68                      JMP 0x00459698
00459630  6a00                      PUSH 0x0
00459632  6a00                      PUSH 0x0
00459634  50                        PUSH EAX
00459635  8bce                      MOV ECX,ESI
00459637  e8249e3b00                CALL 0x00813460
0045963c  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00459640  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00459644  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0045964c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00459651  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00459659  7519                      JNZ 0x00459674
0045965b  e800592900                CALL 0x006eef60
00459660  50                        PUSH EAX
00459661  6a00                      PUSH 0x0
00459663  57                        PUSH EDI
00459664  6840b6c700                PUSH 0xc7b640
00459669  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0045966f  50                        PUSH EAX
00459670  6a03                      PUSH 0x3
00459672  eb17                      JMP 0x0045968b
00459674  e8e7582900                CALL 0x006eef60
00459679  50                        PUSH EAX
0045967a  6a00                      PUSH 0x0
0045967c  57                        PUSH EDI
0045967d  6840b6c700                PUSH 0xc7b640
00459682  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00459688  50                        PUSH EAX
00459689  6a04                      PUSH 0x4
0045968b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00459691  6a04                      PUSH 0x4
00459693  e888f4fcff                CALL 0x00428b20
00459698  a17816c700                MOV EAX,[0x00c71678]
0045969d  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004596a3  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004596a9  50                        PUSH EAX
004596aa  8bce                      MOV ECX,ESI
004596ac  e8df953b00                CALL 0x00812c90
004596b1  6884030000                PUSH 0x384
004596b6  50                        PUSH EAX
004596b7  8bce                      MOV ECX,ESI
004596b9  e822cfffff                CALL 0x004565e0
004596be  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004596c4  8db73c030000              LEA ESI,[EDI + 0x33c]
004596ca  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
004596d0  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
004596d6  8d0480                    LEA EAX,[EAX + EAX*0x4]
004596d9  83c071                    ADD EAX,0x71
004596dc  3985ecfeffff              CMP dword ptr [EBP + 0xfffffeec],EAX
004596e2  0f8ec6050000              JLE 0x00459cae
004596e8  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004596ee  8bcf                      MOV ECX,EDI
004596f0  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004596fa  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004596fd  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00459707  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
00459711  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
00459717  8b06                      MOV EAX,dword ptr [ESI]
00459719  898734030000              MOV dword ptr [EDI + 0x334],EAX
0045971f  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00459722  898738030000              MOV dword ptr [EDI + 0x338],EAX
00459728  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00459732  e809512600                CALL 0x006be840
00459737  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
0045973f  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00459747  0f2fc1                    COMISS XMM0,XMM1
0045974a  7624                      JBE 0x00459770
0045974c  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00459754  f30f5c0594aaba00          SUBSS XMM0,dword ptr [0x00baaa94]
0045975c  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00459764  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
0045976b  e946050000                JMP 0x00459cb6
00459770  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
00459778  f30f580594aaba00          ADDSS XMM0,dword ptr [0x00baaa94]
00459780  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00459788  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
0045978f  e922050000                JMP 0x00459cb6
00459794  83fa09                    CMP EDX,0x9
00459797  0f8511050000              JNZ 0x00459cae
0045979d  f30f101594aaba00          MOVSS XMM2,dword ptr [0x00baaa94]
004597a5  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
004597af  83f801                    CMP EAX,0x1
004597b2  0f8572020000              JNZ 0x00459a2a
004597b8  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
004597c0  0f57d2                    XORPS XMM2,XMM2
004597c3  8bcf                      MOV ECX,EDI
004597c5  e8962f2500                CALL 0x006ac760
004597ca  85c0                      TEST EAX,EAX
004597cc  0f8450020000              JZ 0x00459a22
004597d2  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
004597d5  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
004597d8  0f8444020000              JZ 0x00459a22
004597de  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004597e4  83e802                    SUB EAX,0x2
004597e7  0f8535020000              JNZ 0x00459a22
004597ed  51                        PUSH ECX
004597ee  c704240000803f            MOV dword ptr [ESP],0x3f800000
004597f5  50                        PUSH EAX
004597f6  6a02                      PUSH 0x2
004597f8  51                        PUSH ECX
004597f9  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00459800  8bcf                      MOV ECX,EDI
00459802  6a77                      PUSH 0x77
00459804  e897d32700                CALL 0x006d6ba0
00459809  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00459811  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00459818  7612                      JBE 0x0045982c
0045981a  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00459822  f30f5c0594aaba00          SUBSS XMM0,dword ptr [0x00baaa94]
0045982a  eb10                      JMP 0x0045983c
0045982c  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
00459834  f30f580594aaba00          ADDSS XMM0,dword ptr [0x00baaa94]
0045983c  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
00459844  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0045984c  f30f5c85f0feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffef0]
00459854  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0045985c  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00459864  e8f7562900                CALL 0x006eef60
00459869  660f6ec0                  MOVD XMM0,EAX
0045986d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00459871  c1e81f                    SHR EAX,0x1f
00459874  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0045987d  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00459883  8d4801                    LEA ECX,[EAX + 0x1]
00459886  99                        CDQ
00459887  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
0045988d  b903000000                MOV ECX,0x3
00459892  f7f9                      IDIV ECX
00459894  a17816c700                MOV EAX,[0x00c71678]
00459899  660f5ac8                  CVTPD2PS XMM1,XMM0
0045989d  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004598a3  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
004598ab  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
004598b2  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004598ba  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004598c2  660f6eda                  MOVD XMM3,EDX
004598c6  0f5bdb                    CVTDQ2PS XMM3,XMM3
004598c9  f30f598ddcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffedc]
004598d1  f30f59d8                  MULSS XMM3,XMM0
004598d5  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004598dd  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
004598e5  f30f58c8                  ADDSS XMM1,XMM0
004598e9  f30f58d9                  ADDSS XMM3,XMM1
004598ed  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
004598f5  7551                      JNZ 0x00459948
004598f7  e864562900                CALL 0x006eef60
004598fc  660f6ec0                  MOVD XMM0,EAX
00459900  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00459904  c1e81f                    SHR EAX,0x1f
00459907  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00459910  660f5ac8                  CVTPD2PS XMM1,XMM0
00459914  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0045991c  f30f5c0514abba00          SUBSS XMM0,dword ptr [0x00baab14]
00459924  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0045992c  f30f5c05a0a9ba00          SUBSS XMM0,dword ptr [0x00baa9a0]
00459934  f30f59c8                  MULSS XMM1,XMM0
00459938  f30f580d30abba00          ADDSS XMM1,dword ptr [0x00baab30]
00459940  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00459948  e813562900                CALL 0x006eef60
0045994d  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00459955  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045995b  50                        PUSH EAX
0045995c  6a00                      PUSH 0x0
0045995e  57                        PUSH EDI
0045995f  6840b6c700                PUSH 0xc7b640
00459964  8d45e4                    LEA EAX,[EBP + -0x1c]
00459967  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0045996c  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
00459974  50                        PUSH EAX
00459975  ff772c                    PUSH dword ptr [EDI + 0x2c]
00459978  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0045997d  ff7728                    PUSH dword ptr [EDI + 0x28]
00459980  e89bf1fcff                CALL 0x00428b20
00459985  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0045998b  8bf0                      MOV ESI,EAX
0045998d  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00459993  898e640b0000              MOV dword ptr [ESI + 0xb64],ECX
00459999  c7861004000003000000      MOV dword ptr [ESI + 0x410],0x3
004599a3  8a8f48010000              MOV CL,byte ptr [EDI + 0x148]
004599a9  888e48010000              MOV byte ptr [ESI + 0x148],CL
004599af  8b08                      MOV ECX,dword ptr [EAX]
004599b1  85c9                      TEST ECX,ECX
004599b3  741e                      JZ 0x004599d3
004599b5  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
004599bb  81c1cc030000              ADD ECX,0x3cc
004599c1  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004599c7  50                        PUSH EAX
004599c8  e843580700                CALL 0x004cf210
004599cd  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004599d3  50                        PUSH EAX
004599d4  8bcf                      MOV ECX,EDI
004599d6  8938                      MOV dword ptr [EAX],EDI
004599d8  e813430700                CALL 0x004cdcf0
004599dd  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
004599e3  8bce                      MOV ECX,ESI
004599e5  818e6801000000000080      OR dword ptr [ESI + 0x168],0x80000000
004599ef  898680030000              MOV dword ptr [ESI + 0x380],EAX
004599f5  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004599fb  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00459a01  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
00459a0b  8b877c0c0000              MOV EAX,dword ptr [EDI + 0xc7c]
00459a11  89867c0c0000              MOV dword ptr [ESI + 0xc7c],EAX
00459a17  8b06                      MOV EAX,dword ptr [ESI]
00459a19  ff500c                    CALL dword ptr [EAX + 0xc]
00459a1c  8db73c030000              LEA ESI,[EDI + 0x33c]
00459a22  f30f101594aaba00          MOVSS XMM2,dword ptr [0x00baaa94]
00459a2a  a17816c700                MOV EAX,[0x00c71678]
00459a2f  32c9                      XOR CL,CL
00459a31  888dfffeffff              MOV byte ptr [EBP + 0xfffffeff],CL
00459a37  388f48010000              CMP byte ptr [EDI + 0x148],CL
00459a3d  742d                      JZ 0x00459a6c
00459a3f  c78760030000000090c1      MOV dword ptr [EDI + 0x360],0xc1900000
00459a49  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00459a4f  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00459a54  f30f5cc2                  SUBSS XMM0,XMM2
00459a58  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
00459a5f  767c                      JBE 0x00459add
00459a61  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
00459a66  f30f58c2                  ADDSS XMM0,XMM2
00459a6a  eb2f                      JMP 0x00459a9b
00459a6c  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00459a74  c7876003000000009041      MOV dword ptr [EDI + 0x360],0x41900000
00459a7e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00459a84  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
00459a89  f30f58ca                  ADDSS XMM1,XMM2
00459a8d  0f2fc1                    COMISS XMM0,XMM1
00459a90  764b                      JBE 0x00459add
00459a92  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00459a97  f30f5cc2                  SUBSS XMM0,XMM2
00459a9b  f30f1106                  MOVSS dword ptr [ESI],XMM0
00459a9f  b101                      MOV CL,0x1
00459aa1  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00459aab  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00459aaf  888dfffeffff              MOV byte ptr [EBP + 0xfffffeff],CL
00459ab5  7426                      JZ 0x00459add
00459ab7  51                        PUSH ECX
00459ab8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00459abf  6a00                      PUSH 0x0
00459ac1  6a02                      PUSH 0x2
00459ac3  51                        PUSH ECX
00459ac4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00459acb  8bcf                      MOV ECX,EDI
00459acd  68ef030000                PUSH 0x3ef
00459ad2  e8c9d02700                CALL 0x006d6ba0
00459ad7  8a8dfffeffff              MOV CL,byte ptr [EBP + 0xfffffeff]
00459add  e85ee72700                CALL 0x006d8240
00459ae2  85c0                      TEST EAX,EAX
00459ae4  7e18                      JLE 0x00459afe
00459ae6  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00459aee  f30f5905c0a4ba00          MULSS XMM0,dword ptr [0x00baa4c0]
00459af6  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00459afe  84c9                      TEST CL,CL
00459b00  7415                      JZ 0x00459b17
00459b02  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00459b05  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
00459b08  750d                      JNZ 0x00459b17
00459b0a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00459b0e  7507                      JNZ 0x00459b17
00459b10  8b07                      MOV EAX,dword ptr [EDI]
00459b12  8bcf                      MOV ECX,EDI
00459b14  ff5028                    CALL dword ptr [EAX + 0x28]
00459b17  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00459b1b  8d4f48                    LEA ECX,[EDI + 0x48]
00459b1e  7409                      JZ 0x00459b29
00459b20  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00459b27  751b                      JNZ 0x00459b44
00459b29  6a00                      PUSH 0x0
00459b2b  6828ddb100                PUSH 0xb1dd28
00459b30  e84b08fbff                CALL 0x0040a380
00459b35  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00459b39  744e                      JZ 0x00459b89
00459b3b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00459b42  7445                      JZ 0x00459b89
00459b44  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00459b47  85c0                      TEST EAX,EAX
00459b49  740a                      JZ 0x00459b55
00459b4b  83781410                  CMP dword ptr [EAX + 0x14],0x10
00459b4f  7209                      JC 0x00459b5a
00459b51  8b00                      MOV EAX,dword ptr [EAX]
00459b53  eb05                      JMP 0x00459b5a
00459b55  b8eca4b100                MOV EAX,0xb1a4ec
00459b5a  b928ddb100                MOV ECX,0xb1dd28
00459b5f  90                        NOP
00459b60  8a10                      MOV DL,byte ptr [EAX]
00459b62  3a11                      CMP DL,byte ptr [ECX]
00459b64  751a                      JNZ 0x00459b80
00459b66  84d2                      TEST DL,DL
00459b68  7412                      JZ 0x00459b7c
00459b6a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00459b6d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00459b70  750e                      JNZ 0x00459b80
00459b72  83c002                    ADD EAX,0x2
00459b75  83c102                    ADD ECX,0x2
00459b78  84d2                      TEST DL,DL
00459b7a  75e4                      JNZ 0x00459b60
00459b7c  33c0                      XOR EAX,EAX
00459b7e  eb05                      JMP 0x00459b85
00459b80  1bc0                      SBB EAX,EAX
00459b82  83c801                    OR EAX,0x1
00459b85  85c0                      TEST EAX,EAX
00459b87  740a                      JZ 0x00459b93
00459b89  c7876003000000000000      MOV dword ptr [EDI + 0x360],0x0
00459b93  a17816c700                MOV EAX,[0x00c71678]
00459b98  f30f109de8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee8]
00459ba0  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
00459ba8  0f28c3                    MOVAPS XMM0,XMM3
00459bab  f30f5c85f0feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffef0]
00459bb3  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00459bb9  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
00459bc1  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
00459bc8  f30f59c2                  MULSS XMM0,XMM2
00459bcc  750b                      JNZ 0x00459bd9
00459bce  0f28c3                    MOVAPS XMM0,XMM3
00459bd1  f30f5cc1                  SUBSS XMM0,XMM1
00459bd5  f30f59c2                  MULSS XMM0,XMM2
00459bd9  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00459bdf  85c0                      TEST EAX,EAX
00459be1  7e46                      JLE 0x00459c29
00459be3  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
00459bea  7476                      JZ 0x00459c62
00459bec  f30f5c1d04a9ba00          SUBSS XMM3,dword ptr [0x00baa904]
00459bf4  0f28d0                    MOVAPS XMM2,XMM0
00459bf7  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
00459bff  0f2fd3                    COMISS XMM2,XMM3
00459c02  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
00459c0a  7614                      JBE 0x00459c20
00459c0c  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00459c14  f30f5cd0                  SUBSS XMM2,XMM0
00459c18  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
00459c20  48                        DEC EAX
00459c21  898710040000              MOV dword ptr [EDI + 0x410],EAX
00459c27  eb39                      JMP 0x00459c62
00459c29  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00459c31  0f57db                    XORPS XMM3,XMM3
00459c34  0f2fda                    COMISS XMM3,XMM2
00459c37  760d                      JBE 0x00459c46
00459c39  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00459c41  0f2f06                    COMISS XMM0,dword ptr [ESI]
00459c44  7712                      JA 0x00459c58
00459c46  0f2fd3                    COMISS XMM2,XMM3
00459c49  7617                      JBE 0x00459c62
00459c4b  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00459c4f  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
00459c56  760a                      JBE 0x00459c62
00459c58  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00459c62  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00459c69  744b                      JZ 0x00459cb6
00459c6b  6a00                      PUSH 0x0
00459c6d  6a28                      PUSH 0x28
00459c6f  8bcf                      MOV ECX,EDI
00459c71  e89a2a2500                CALL 0x006ac710
00459c76  84c0                      TEST AL,AL
00459c78  7434                      JZ 0x00459cae
00459c7a  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00459c7e  752e                      JNZ 0x00459cae
00459c80  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00459c84  7528                      JNZ 0x00459cae
00459c86  e8d5522900                CALL 0x006eef60
00459c8b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00459c91  50                        PUSH EAX
00459c92  6a00                      PUSH 0x0
00459c94  57                        PUSH EDI
00459c95  6840b6c700                PUSH 0xc7b640
00459c9a  56                        PUSH ESI
00459c9b  6a03                      PUSH 0x3
00459c9d  6a04                      PUSH 0x4
00459c9f  e87ceefcff                CALL 0x00428b20
00459ca4  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00459cae  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
00459cb6  a17816c700                MOV EAX,[0x00c71678]
00459cbb  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00459cc1  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
00459cc8  7531                      JNZ 0x00459cfb
00459cca  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00459cd2  0f2fca                    COMISS XMM1,XMM2
00459cd5  7624                      JBE 0x00459cfb
00459cd7  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00459cdf  f30f5cca                  SUBSS XMM1,XMM2
00459ce3  f30f5cc8                  SUBSS XMM1,XMM0
00459ce7  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00459cef  f30f58c8                  ADDSS XMM1,XMM0
00459cf3  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00459cfb  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00459cfe  64890d00000000            MOV dword ptr FS:[0x0],ECX
00459d05  59                        POP ECX
00459d06  5f                        POP EDI
00459d07  5e                        POP ESI
00459d08  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00459d0b  33cd                      XOR ECX,EBP
00459d0d  e819546900                CALL 0x00aef12b
00459d12  8be5                      MOV ESP,EBP
00459d14  5d                        POP EBP
00459d15  8be3                      MOV ESP,EBX
00459d17  5b                        POP EBX
00459d18  c3                        RET
