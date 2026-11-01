; J460 NPC AI 0x004f2c20 AI_004f2c20
; types=891
; identities=891.0.0,891.1.0
; entry=004f2c20
004f2c20  53                        PUSH EBX
004f2c21  8bdc                      MOV EBX,ESP
004f2c23  83ec08                    SUB ESP,0x8
004f2c26  83e4f8                    AND ESP,0xfffffff8
004f2c29  83c404                    ADD ESP,0x4
004f2c2c  55                        PUSH EBP
004f2c2d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004f2c30  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004f2c34  8bec                      MOV EBP,ESP
004f2c36  6aff                      PUSH -0x1
004f2c38  68103faf00                PUSH 0xaf3f10
004f2c3d  64a100000000              MOV EAX,FS:[0x0]
004f2c43  50                        PUSH EAX
004f2c44  53                        PUSH EBX
004f2c45  81ec30020000              SUB ESP,0x230
004f2c4b  a1b493bf00                MOV EAX,[0x00bf93b4]
004f2c50  33c5                      XOR EAX,EBP
004f2c52  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004f2c55  56                        PUSH ESI
004f2c56  57                        PUSH EDI
004f2c57  50                        PUSH EAX
004f2c58  8d45f4                    LEA EAX,[EBP + -0xc]
004f2c5b  64a300000000              MOV FS:[0x0],EAX
004f2c61  8bf9                      MOV EDI,ECX
004f2c63  89bd24feffff              MOV dword ptr [EBP + 0xfffffe24],EDI
004f2c69  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004f2c71  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
004f2c77  89b530feffff              MOV dword ptr [EBP + 0xfffffe30],ESI
004f2c7d  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004f2c85  2bc8                      SUB ECX,EAX
004f2c87  a1dc87b100                MOV EAX,[0x00b187dc]
004f2c8c  898d3cfeffff              MOV dword ptr [EBP + 0xfffffe3c],ECX
004f2c92  898538feffff              MOV dword ptr [EBP + 0xfffffe38],EAX
004f2c98  85f6                      TEST ESI,ESI
004f2c9a  7455                      JZ 0x004f2cf1
004f2c9c  a17816c700                MOV EAX,[0x00c71678]
004f2ca1  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f2ca8  7c06                      JL 0x004f2cb0
004f2caa  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f2cae  740d                      JZ 0x004f2cbd
004f2cb0  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004f2cb3  83e80a                    SUB EAX,0xa
004f2cb6  3ddd030000                CMP EAX,0x3dd
004f2cbb  7734                      JA 0x004f2cf1
004f2cbd  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004f2cc3  2500000020                AND EAX,0x20000000
004f2cc8  83c800                    OR EAX,0x0
004f2ccb  7404                      JZ 0x004f2cd1
004f2ccd  b101                      MOV CL,0x1
004f2ccf  eb02                      JMP 0x004f2cd3
004f2cd1  32c9                      XOR CL,CL
004f2cd3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004f2cd9  2500000020                AND EAX,0x20000000
004f2cde  83c800                    OR EAX,0x0
004f2ce1  7404                      JZ 0x004f2ce7
004f2ce3  b001                      MOV AL,0x1
004f2ce5  eb02                      JMP 0x004f2ce9
004f2ce7  32c0                      XOR AL,AL
004f2ce9  3ac8                      CMP CL,AL
004f2ceb  0f8467010000              JZ 0x004f2e58
004f2cf1  a17816c700                MOV EAX,[0x00c71678]
004f2cf6  6a00                      PUSH 0x0
004f2cf8  6a00                      PUSH 0x0
004f2cfa  6aff                      PUSH -0x1
004f2cfc  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f2d02  8d45dc                    LEA EAX,[EBP + -0x24]
004f2d05  6aff                      PUSH -0x1
004f2d07  ff7728                    PUSH dword ptr [EDI + 0x28]
004f2d0a  81c118120000              ADD ECX,0x1218
004f2d10  50                        PUSH EAX
004f2d11  e84a82f2ff                CALL 0x0041af60
004f2d16  33c9                      XOR ECX,ECX
004f2d18  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004f2d1f  394de8                    CMP dword ptr [EBP + -0x18],ECX
004f2d22  0f869e000000              JBE 0x004f2dc6
004f2d28  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004f2d2b  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004f2d2e  85f6                      TEST ESI,ESI
004f2d30  0f8486000000              JZ 0x004f2dbc
004f2d36  a17816c700                MOV EAX,[0x00c71678]
004f2d3b  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f2d42  7c06                      JL 0x004f2d4a
004f2d44  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f2d48  740d                      JZ 0x004f2d57
004f2d4a  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004f2d4d  83e80a                    SUB EAX,0xa
004f2d50  3ddd030000                CMP EAX,0x3dd
004f2d55  7765                      JA 0x004f2dbc
004f2d57  3bf7                      CMP ESI,EDI
004f2d59  7461                      JZ 0x004f2dbc
004f2d5b  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004f2d61  2500000020                AND EAX,0x20000000
004f2d66  83c800                    OR EAX,0x0
004f2d69  7404                      JZ 0x004f2d6f
004f2d6b  b201                      MOV DL,0x1
004f2d6d  eb02                      JMP 0x004f2d71
004f2d6f  32d2                      XOR DL,DL
004f2d71  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004f2d77  2500000020                AND EAX,0x20000000
004f2d7c  83c800                    OR EAX,0x0
004f2d7f  7404                      JZ 0x004f2d85
004f2d81  b001                      MOV AL,0x1
004f2d83  eb02                      JMP 0x004f2d87
004f2d85  32c0                      XOR AL,AL
004f2d87  3ad0                      CMP DL,AL
004f2d89  7531                      JNZ 0x004f2dbc
004f2d8b  8bb6ec0b0000              MOV ESI,dword ptr [ESI + 0xbec]
004f2d91  89b530feffff              MOV dword ptr [EBP + 0xfffffe30],ESI
004f2d97  85f6                      TEST ESI,ESI
004f2d99  7421                      JZ 0x004f2dbc
004f2d9b  a17816c700                MOV EAX,[0x00c71678]
004f2da0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f2da7  7c06                      JL 0x004f2daf
004f2da9  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f2dad  741f                      JZ 0x004f2dce
004f2daf  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004f2db2  83e80a                    SUB EAX,0xa
004f2db5  3ddd030000                CMP EAX,0x3dd
004f2dba  7612                      JBE 0x004f2dce
004f2dbc  41                        INC ECX
004f2dbd  3b4de8                    CMP ECX,dword ptr [EBP + -0x18]
004f2dc0  0f8262ffffff              JC 0x004f2d28
004f2dc6  8bf7                      MOV ESI,EDI
004f2dc8  89bd30feffff              MOV dword ptr [EBP + 0xfffffe30],EDI
004f2dce  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004f2dd4  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004f2dda  85c9                      TEST ECX,ECX
004f2ddc  741e                      JZ 0x004f2dfc
004f2dde  8985fcfdffff              MOV dword ptr [EBP + 0xfffffdfc],EAX
004f2de4  81c1cc030000              ADD ECX,0x3cc
004f2dea  8d85fcfdffff              LEA EAX,[EBP + 0xfffffdfc]
004f2df0  50                        PUSH EAX
004f2df1  e81ac4fdff                CALL 0x004cf210
004f2df6  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004f2dfc  8930                      MOV dword ptr [EAX],ESI
004f2dfe  85f6                      TEST ESI,ESI
004f2e00  7408                      JZ 0x004f2e0a
004f2e02  50                        PUSH EAX
004f2e03  8bce                      MOV ECX,ESI
004f2e05  e8e6aefdff                CALL 0x004cdcf0
004f2e0a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f2e11  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004f2e15  c787a00b000001000000      MOV dword ptr [EDI + 0xba0],0x1
004f2e1f  7537                      JNZ 0x004f2e58
004f2e21  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004f2e27  85d2                      TEST EDX,EDX
004f2e29  7405                      JZ 0x004f2e30
004f2e2b  83c230                    ADD EDX,0x30
004f2e2e  eb05                      JMP 0x004f2e35
004f2e30  ba18f6c700                MOV EDX,0xc7f618
004f2e35  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004f2e38  85c0                      TEST EAX,EAX
004f2e3a  7415                      JZ 0x004f2e51
004f2e3c  8d48fc                    LEA ECX,[EAX + -0x4]
004f2e3f  8b01                      MOV EAX,dword ptr [ECX]
004f2e41  2902                      SUB dword ptr [EDX],EAX
004f2e43  51                        PUSH ECX
004f2e44  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004f2e48  ff9538feffff              CALL dword ptr [EBP + 0xfffffe38]
004f2e4e  83c404                    ADD ESP,0x4
004f2e51  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f2e58  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004f2e60  f30f11851cfeffff          MOVSS dword ptr [EBP + 0xfffffe1c],XMM0
004f2e68  3bf7                      CMP ESI,EDI
004f2e6a  0f859e070000              JNZ 0x004f360e
004f2e70  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004f2e77  0f8ea1040000              JLE 0x004f331e
004f2e7d  33c0                      XOR EAX,EAX
004f2e7f  33f6                      XOR ESI,ESI
004f2e81  89850cfeffff              MOV dword ptr [EBP + 0xfffffe0c],EAX
004f2e87  8945c8                    MOV dword ptr [EBP + -0x38],EAX
004f2e8a  89b518feffff              MOV dword ptr [EBP + 0xfffffe18],ESI
004f2e90  8975cc                    MOV dword ptr [EBP + -0x34],ESI
004f2e93  8985fcfdffff              MOV dword ptr [EBP + 0xfffffdfc],EAX
004f2e99  8945d0                    MOV dword ptr [EBP + -0x30],EAX
004f2e9c  56                        PUSH ESI
004f2e9d  56                        PUSH ESI
004f2e9e  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004f2ea5  a17816c700                MOV EAX,[0x00c71678]
004f2eaa  6aff                      PUSH -0x1
004f2eac  6a01                      PUSH 0x1
004f2eae  ff7728                    PUSH dword ptr [EDI + 0x28]
004f2eb1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f2eb7  8d45dc                    LEA EAX,[EBP + -0x24]
004f2eba  81c118120000              ADD ECX,0x1218
004f2ec0  50                        PUSH EAX
004f2ec1  e89a80f2ff                CALL 0x0041af60
004f2ec6  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004f2eca  33d2                      XOR EDX,EDX
004f2ecc  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004f2ecf  89952cfeffff              MOV dword ptr [EBP + 0xfffffe2c],EDX
004f2ed5  85c9                      TEST ECX,ECX
004f2ed7  0f8451010000              JZ 0x004f302e
004f2edd  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004f2ee0  8b3490                    MOV ESI,dword ptr [EAX + EDX*0x4]
004f2ee3  85f6                      TEST ESI,ESI
004f2ee5  0f8422010000              JZ 0x004f300d
004f2eeb  a17816c700                MOV EAX,[0x00c71678]
004f2ef0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f2ef7  7c06                      JL 0x004f2eff
004f2ef9  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f2efd  7411                      JZ 0x004f2f10
004f2eff  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004f2f02  83e80a                    SUB EAX,0xa
004f2f05  3ddd030000                CMP EAX,0x3dd
004f2f0a  0f87f5000000              JA 0x004f3005
004f2f10  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004f2f16  2500000020                AND EAX,0x20000000
004f2f1b  89b50cfeffff              MOV dword ptr [EBP + 0xfffffe0c],ESI
004f2f21  83c800                    OR EAX,0x0
004f2f24  c68537feffff01            MOV byte ptr [EBP + 0xfffffe37],0x1
004f2f2b  7507                      JNZ 0x004f2f34
004f2f2d  c68537feffff00            MOV byte ptr [EBP + 0xfffffe37],0x0
004f2f34  8bcf                      MOV ECX,EDI
004f2f36  e87538f6ff                CALL 0x004567b0
004f2f3b  388537feffff              CMP byte ptr [EBP + 0xfffffe37],AL
004f2f41  0f85ce000000              JNZ 0x004f3015
004f2f47  39beec0b0000              CMP dword ptr [ESI + 0xbec],EDI
004f2f4d  0f85c2000000              JNZ 0x004f3015
004f2f53  a17816c700                MOV EAX,[0x00c71678]
004f2f58  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
004f2f5e  899504feffff              MOV dword ptr [EBP + 0xfffffe04],EDX
004f2f64  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004f2f6a  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
004f2f70  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
004f2f76  898500feffff              MOV dword ptr [EBP + 0xfffffe00],EAX
004f2f7c  8d8500feffff              LEA EAX,[EBP + 0xfffffe00]
004f2f82  50                        PUSH EAX
004f2f83  e8b81a4500                CALL 0x00944a40
004f2f88  84c0                      TEST AL,AL
004f2f8a  7429                      JZ 0x004f2fb5
004f2f8c  83be640b000004            CMP dword ptr [ESI + 0xb64],0x4
004f2f93  0f8584000000              JNZ 0x004f301d
004f2f99  8b8518feffff              MOV EAX,dword ptr [EBP + 0xfffffe18]
004f2f9f  3b85fcfdffff              CMP EAX,dword ptr [EBP + 0xfffffdfc]
004f2fa5  743a                      JZ 0x004f2fe1
004f2fa7  8930                      MOV dword ptr [EAX],ESI
004f2fa9  83c004                    ADD EAX,0x4
004f2fac  898518feffff              MOV dword ptr [EBP + 0xfffffe18],EAX
004f2fb2  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004f2fb5  8bb518feffff              MOV ESI,dword ptr [EBP + 0xfffffe18]
004f2fbb  8b952cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe2c]
004f2fc1  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004f2fc4  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004f2fc7  42                        INC EDX
004f2fc8  89952cfeffff              MOV dword ptr [EBP + 0xfffffe2c],EDX
004f2fce  3bd1                      CMP EDX,ECX
004f2fd0  0f820affffff              JC 0x004f2ee0
004f2fd6  8b45c8                    MOV EAX,dword ptr [EBP + -0x38]
004f2fd9  89850cfeffff              MOV dword ptr [EBP + 0xfffffe0c],EAX
004f2fdf  eb4f                      JMP 0x004f3030
004f2fe1  8d8d0cfeffff              LEA ECX,[EBP + 0xfffffe0c]
004f2fe7  51                        PUSH ECX
004f2fe8  50                        PUSH EAX
004f2fe9  8d4dc8                    LEA ECX,[EBP + -0x38]
004f2fec  e82f99f3ff                CALL 0x0042c920
004f2ff1  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
004f2ff4  8b75cc                    MOV ESI,dword ptr [EBP + -0x34]
004f2ff7  8985fcfdffff              MOV dword ptr [EBP + 0xfffffdfc],EAX
004f2ffd  89b518feffff              MOV dword ptr [EBP + 0xfffffe18],ESI
004f3003  ebb6                      JMP 0x004f2fbb
004f3005  8bb518feffff              MOV ESI,dword ptr [EBP + 0xfffffe18]
004f300b  ebb7                      JMP 0x004f2fc4
004f300d  8bb518feffff              MOV ESI,dword ptr [EBP + 0xfffffe18]
004f3013  ebb2                      JMP 0x004f2fc7
004f3015  8bb518feffff              MOV ESI,dword ptr [EBP + 0xfffffe18]
004f301b  eba4                      JMP 0x004f2fc1
004f301d  8b45c8                    MOV EAX,dword ptr [EBP + -0x38]
004f3020  8bb518feffff              MOV ESI,dword ptr [EBP + 0xfffffe18]
004f3026  89850cfeffff              MOV dword ptr [EBP + 0xfffffe0c],EAX
004f302c  eb02                      JMP 0x004f3030
004f302e  33c0                      XOR EAX,EAX
004f3030  2bf0                      SUB ESI,EAX
004f3032  33c9                      XOR ECX,ECX
004f3034  c1fe02                    SAR ESI,0x2
004f3037  898d2cfeffff              MOV dword ptr [EBP + 0xfffffe2c],ECX
004f303d  89b518feffff              MOV dword ptr [EBP + 0xfffffe18],ESI
004f3043  85f6                      TEST ESI,ESI
004f3045  0f843a020000              JZ 0x004f3285
004f304b  8bbd0cfeffff              MOV EDI,dword ptr [EBP + 0xfffffe0c]
004f3051  c785e0fdffff0000803f      MOV dword ptr [EBP + 0xfffffde0],0x3f800000
004f305b  898de4fdffff              MOV dword ptr [EBP + 0xfffffde4],ECX
004f3061  898dd8fdffff              MOV dword ptr [EBP + 0xfffffdd8],ECX
004f3067  c785dcfdffff000090c1      MOV dword ptr [EBP + 0xfffffddc],0xc1900000
004f3071  898dd0fdffff              MOV dword ptr [EBP + 0xfffffdd0],ECX
004f3077  c785d4fdffff0000803f      MOV dword ptr [EBP + 0xfffffdd4],0x3f800000
004f3081  898dc8fdffff              MOV dword ptr [EBP + 0xfffffdc8],ECX
004f3087  c785ccfdffff000090c1      MOV dword ptr [EBP + 0xfffffdcc],0xc1900000
004f3091  c785c0fdffff000080bf      MOV dword ptr [EBP + 0xfffffdc0],0xbf800000
004f309b  898dc4fdffff              MOV dword ptr [EBP + 0xfffffdc4],ECX
004f30a1  898de8fdffff              MOV dword ptr [EBP + 0xfffffde8],ECX
004f30a7  c785ecfdffff000090c1      MOV dword ptr [EBP + 0xfffffdec],0xc1900000
004f30b1  898df0fdffff              MOV dword ptr [EBP + 0xfffffdf0],ECX
004f30b7  c785f4fdffff000080bf      MOV dword ptr [EBP + 0xfffffdf4],0xbf800000
004f30c1  898d10feffff              MOV dword ptr [EBP + 0xfffffe10],ECX
004f30c7  c78514feffff000090c1      MOV dword ptr [EBP + 0xfffffe14],0xc1900000
004f30d1  8b048f                    MOV EAX,dword ptr [EDI + ECX*0x4]
004f30d4  6a01                      PUSH 0x1
004f30d6  68ecd2b100                PUSH 0xb1d2ec
004f30db  c780640b000009000000      MOV dword ptr [EAX + 0xb64],0x9
004f30e5  8b048f                    MOV EAX,dword ptr [EDI + ECX*0x4]
004f30e8  83c048                    ADD EAX,0x48
004f30eb  8bc8                      MOV ECX,EAX
004f30ed  898504feffff              MOV dword ptr [EBP + 0xfffffe04],EAX
004f30f3  e8d874f1ff                CALL 0x0040a5d0
004f30f8  84c0                      TEST AL,AL
004f30fa  7418                      JZ 0x004f3114
004f30fc  8bb504feffff              MOV ESI,dword ptr [EBP + 0xfffffe04]
004f3102  8d4e30                    LEA ECX,[ESI + 0x30]
004f3105  e8a670f1ff                CALL 0x0040a1b0
004f310a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004f310e  8bb518feffff              MOV ESI,dword ptr [EBP + 0xfffffe18]
004f3114  8b8d2cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe2c]
004f311a  8d95d8fdffff              LEA EDX,[EBP + 0xfffffdd8]
004f3120  51                        PUSH ECX
004f3121  c7042400000040            MOV dword ptr [ESP],0x40000000
004f3128  0f57c0                    XORPS XMM0,XMM0
004f312b  0f1145a0                  MOVUPS xmmword ptr [EBP + -0x60],XMM0
004f312f  8b048f                    MOV EAX,dword ptr [EDI + ECX*0x4]
004f3132  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
004f3139  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
004f3140  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004f3147  c780c40b0000a6ffffff      MOV dword ptr [EAX + 0xbc4],0xffffffa6
004f3151  8d4590                    LEA EAX,[EBP + -0x70]
004f3154  8b0c8f                    MOV ECX,dword ptr [EDI + ECX*0x4]
004f3157  50                        PUSH EAX
004f3158  8d85e0fdffff              LEA EAX,[EBP + 0xfffffde0]
004f315e  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004f3165  6a20                      PUSH 0x20
004f3167  50                        PUSH EAX
004f3168  0f114590                  MOVUPS xmmword ptr [EBP + -0x70],XMM0
004f316c  e81f871100                CALL 0x0060b890
004f3171  8b8d2cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe2c]
004f3177  8d4590                    LEA EAX,[EBP + -0x70]
004f317a  83c40c                    ADD ESP,0xc
004f317d  0f57c0                    XORPS XMM0,XMM0
004f3180  0f1145a0                  MOVUPS xmmword ptr [EBP + -0x60],XMM0
004f3184  8d95c8fdffff              LEA EDX,[EBP + 0xfffffdc8]
004f318a  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
004f3191  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
004f3198  c7042400000040            MOV dword ptr [ESP],0x40000000
004f319f  8b0c8f                    MOV ECX,dword ptr [EDI + ECX*0x4]
004f31a2  50                        PUSH EAX
004f31a3  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
004f31a9  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004f31b0  6a20                      PUSH 0x20
004f31b2  50                        PUSH EAX
004f31b3  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004f31ba  0f114590                  MOVUPS xmmword ptr [EBP + -0x70],XMM0
004f31be  e8cd861100                CALL 0x0060b890
004f31c3  83c40c                    ADD ESP,0xc
004f31c6  8d4590                    LEA EAX,[EBP + -0x70]
004f31c9  0f57c0                    XORPS XMM0,XMM0
004f31cc  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
004f31d3  0f1145a0                  MOVUPS xmmword ptr [EBP + -0x60],XMM0
004f31d7  8d95e8fdffff              LEA EDX,[EBP + 0xfffffde8]
004f31dd  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004f31e4  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
004f31eb  c7042400000040            MOV dword ptr [ESP],0x40000000
004f31f2  50                        PUSH EAX
004f31f3  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
004f31f9  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004f3200  6a20                      PUSH 0x20
004f3202  50                        PUSH EAX
004f3203  8b852cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe2c]
004f3209  0f114590                  MOVUPS xmmword ptr [EBP + -0x70],XMM0
004f320d  8b0c87                    MOV ECX,dword ptr [EDI + EAX*0x4]
004f3210  e87b861100                CALL 0x0060b890
004f3215  83c40c                    ADD ESP,0xc
004f3218  8d4590                    LEA EAX,[EBP + -0x70]
004f321b  0f57c0                    XORPS XMM0,XMM0
004f321e  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
004f3225  0f1145a0                  MOVUPS xmmword ptr [EBP + -0x60],XMM0
004f3229  8d9510feffff              LEA EDX,[EBP + 0xfffffe10]
004f322f  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004f3236  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
004f323d  c7042400000040            MOV dword ptr [ESP],0x40000000
004f3244  50                        PUSH EAX
004f3245  8d85f0fdffff              LEA EAX,[EBP + 0xfffffdf0]
004f324b  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004f3252  6a20                      PUSH 0x20
004f3254  50                        PUSH EAX
004f3255  8b852cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe2c]
004f325b  0f114590                  MOVUPS xmmword ptr [EBP + -0x70],XMM0
004f325f  8b0c87                    MOV ECX,dword ptr [EDI + EAX*0x4]
004f3262  e829861100                CALL 0x0060b890
004f3267  8b8d2cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe2c]
004f326d  83c410                    ADD ESP,0x10
004f3270  41                        INC ECX
004f3271  898d2cfeffff              MOV dword ptr [EBP + 0xfffffe2c],ECX
004f3277  3bce                      CMP ECX,ESI
004f3279  0f8252feffff              JC 0x004f30d1
004f327f  8bbd24feffff              MOV EDI,dword ptr [EBP + 0xfffffe24]
004f3285  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004f3289  c787c40b0000a6ffffff      MOV dword ptr [EDI + 0xbc4],0xffffffa6
004f3293  753b                      JNZ 0x004f32d0
004f3295  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004f329b  85d2                      TEST EDX,EDX
004f329d  7405                      JZ 0x004f32a4
004f329f  83c230                    ADD EDX,0x30
004f32a2  eb05                      JMP 0x004f32a9
004f32a4  ba18f6c700                MOV EDX,0xc7f618
004f32a9  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004f32ac  85c0                      TEST EAX,EAX
004f32ae  7420                      JZ 0x004f32d0
004f32b0  8d48fc                    LEA ECX,[EAX + -0x4]
004f32b3  8b01                      MOV EAX,dword ptr [ECX]
004f32b5  2902                      SUB dword ptr [EDX],EAX
004f32b7  51                        PUSH ECX
004f32b8  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004f32bc  ff9538feffff              CALL dword ptr [EBP + 0xfffffe38]
004f32c2  83c404                    ADD ESP,0x4
004f32c5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004f32d0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f32d7  8b8d0cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe0c]
004f32dd  85c9                      TEST ECX,ECX
004f32df  0f8423030000              JZ 0x004f3608
004f32e5  8b85fcfdffff              MOV EAX,dword ptr [EBP + 0xfffffdfc]
004f32eb  2bc1                      SUB EAX,ECX
004f32ed  c1f802                    SAR EAX,0x2
004f32f0  8d148500000000            LEA EDX,[EAX*0x4 + 0x0]
004f32f7  8bc1                      MOV EAX,ECX
004f32f9  81fa00100000              CMP EDX,0x1000
004f32ff  7216                      JC 0x004f3317
004f3301  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004f3304  83c223                    ADD EDX,0x23
004f3307  2bc1                      SUB EAX,ECX
004f3309  83c0fc                    ADD EAX,-0x4
004f330c  83f81f                    CMP EAX,0x1f
004f330f  7606                      JBE 0x004f3317
004f3311  ff159488b100              CALL dword ptr [0x00b18894]
004f3317  52                        PUSH EDX
004f3318  51                        PUSH ECX
004f3319  e9e2020000                JMP 0x004f3600
004f331e  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004f3325  0f8fe3020000              JG 0x004f360e
004f332b  6a18                      PUSH 0x18
004f332d  c78508feffff00000000      MOV dword ptr [EBP + 0xfffffe08],0x0
004f3337  c7850cfeffff00000000      MOV dword ptr [EBP + 0xfffffe0c],0x0
004f3341  e87ac15100                CALL 0x00a0f4c0
004f3346  83c404                    ADD ESP,0x4
004f3349  8900                      MOV dword ptr [EAX],EAX
004f334b  894004                    MOV dword ptr [EAX + 0x4],EAX
004f334e  894008                    MOV dword ptr [EAX + 0x8],EAX
004f3351  66c7400c0101              MOV word ptr [EAX + 0xc],0x101
004f3357  898508feffff              MOV dword ptr [EBP + 0xfffffe08],EAX
004f335d  6a00                      PUSH 0x0
004f335f  6a00                      PUSH 0x0
004f3361  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
004f3368  a17816c700                MOV EAX,[0x00c71678]
004f336d  6aff                      PUSH -0x1
004f336f  6aff                      PUSH -0x1
004f3371  ff7728                    PUSH dword ptr [EDI + 0x28]
004f3374  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f337a  8d45dc                    LEA EAX,[EBP + -0x24]
004f337d  81c118120000              ADD ECX,0x1218
004f3383  50                        PUSH EAX
004f3384  e8d77bf2ff                CALL 0x0041af60
004f3389  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
004f338d  33d2                      XOR EDX,EDX
004f338f  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004f3392  8995fcfdffff              MOV dword ptr [EBP + 0xfffffdfc],EDX
004f3398  89852cfeffff              MOV dword ptr [EBP + 0xfffffe2c],EAX
004f339e  3955e8                    CMP dword ptr [EBP + -0x18],EDX
004f33a1  0f8630010000              JBE 0x004f34d7
004f33a7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004f33b0  8b3490                    MOV ESI,dword ptr [EAX + EDX*0x4]
004f33b3  85f6                      TEST ESI,ESI
004f33b5  0f840c010000              JZ 0x004f34c7
004f33bb  a17816c700                MOV EAX,[0x00c71678]
004f33c0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f33c7  7c06                      JL 0x004f33cf
004f33c9  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f33cd  7411                      JZ 0x004f33e0
004f33cf  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004f33d2  83e80a                    SUB EAX,0xa
004f33d5  3ddd030000                CMP EAX,0x3dd
004f33da  0f87e1000000              JA 0x004f34c1
004f33e0  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004f33e6  2500000020                AND EAX,0x20000000
004f33eb  c68537feffff01            MOV byte ptr [EBP + 0xfffffe37],0x1
004f33f2  83c800                    OR EAX,0x0
004f33f5  7507                      JNZ 0x004f33fe
004f33f7  c68537feffff00            MOV byte ptr [EBP + 0xfffffe37],0x0
004f33fe  8bcf                      MOV ECX,EDI
004f3400  e8ab33f6ff                CALL 0x004567b0
004f3405  388537feffff              CMP byte ptr [EBP + 0xfffffe37],AL
004f340b  0f85b0000000              JNZ 0x004f34c1
004f3411  39beec0b0000              CMP dword ptr [ESI + 0xbec],EDI
004f3417  0f85a4000000              JNZ 0x004f34c1
004f341d  83be640b000004            CMP dword ptr [ESI + 0xb64],0x4
004f3424  0f85d9000000              JNZ 0x004f3503
004f342a  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004f3432  f30f118524feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM0
004f343a  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004f3442  f30f118504feffff          MOVSS dword ptr [EBP + 0xfffffe04],XMM0
004f344a  e8f1b31c00                CALL 0x006be840
004f344f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004f3457  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004f345f  f30f5c8504feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffe04]
004f3467  f30f5c8d24feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffe24]
004f346f  f30f59c0                  MULSS XMM0,XMM0
004f3473  f30f59c9                  MULSS XMM1,XMM1
004f3477  f30f58c1                  ADDSS XMM0,XMM1
004f347b  e8d025f4ff                CALL 0x00435a50
004f3480  f30f108e80030000          MOVSS XMM1,dword ptr [ESI + 0x380]
004f3488  8d8510feffff              LEA EAX,[EBP + 0xfffffe10]
004f348e  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004f3496  8d8d08feffff              LEA ECX,[EBP + 0xfffffe08]
004f349c  50                        PUSH EAX
004f349d  8d85f0fdffff              LEA EAX,[EBP + 0xfffffdf0]
004f34a3  89b514feffff              MOV dword ptr [EBP + 0xfffffe14],ESI
004f34a9  50                        PUSH EAX
004f34aa  f30f5cc1                  SUBSS XMM0,XMM1
004f34ae  f30f118510feffff          MOVSS dword ptr [EBP + 0xfffffe10],XMM0
004f34b6  e815520000                CALL 0x004f86d0
004f34bb  8b95fcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdfc]
004f34c1  8b852cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe2c]
004f34c7  42                        INC EDX
004f34c8  8995fcfdffff              MOV dword ptr [EBP + 0xfffffdfc],EDX
004f34ce  3b55e8                    CMP EDX,dword ptr [EBP + -0x18]
004f34d1  0f82d9feffff              JC 0x004f33b0
004f34d7  8b8d08feffff              MOV ECX,dword ptr [EBP + 0xfffffe08]
004f34dd  33f6                      XOR ESI,ESI
004f34df  8b01                      MOV EAX,dword ptr [ECX]
004f34e1  3bc1                      CMP EAX,ECX
004f34e3  0f84a2000000              JZ 0x004f358b
004f34e9  0f1f8000000000            NOP dword ptr [EAX]
004f34f0  85f6                      TEST ESI,ESI
004f34f2  751f                      JNZ 0x004f3513
004f34f4  8b4814                    MOV ECX,dword ptr [EAX + 0x14]
004f34f7  c781c00b000002000000      MOV dword ptr [ECX + 0xbc0],0x2
004f3501  eb21                      JMP 0x004f3524
004f3503  8b8d08feffff              MOV ECX,dword ptr [EBP + 0xfffffe08]
004f3509  b804000000                MOV EAX,0x4
004f350e  e97d000000                JMP 0x004f3590
004f3513  8b5014                    MOV EDX,dword ptr [EAX + 0x14]
004f3516  33c9                      XOR ECX,ECX
004f3518  83fe01                    CMP ESI,0x1
004f351b  0f94c1                    SETZ CL
004f351e  898ac00b0000              MOV dword ptr [EDX + 0xbc0],ECX
004f3524  8b4814                    MOV ECX,dword ptr [EAX + 0x14]
004f3527  83b9a40b000004            CMP dword ptr [ECX + 0xba4],0x4
004f352e  7d0a                      JGE 0x004f353a
004f3530  c781a40b00001e000000      MOV dword ptr [ECX + 0xba4],0x1e
004f353a  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004f353d  80790d00                  CMP byte ptr [ECX + 0xd],0x0
004f3541  7421                      JZ 0x004f3564
004f3543  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
004f3546  80790d00                  CMP byte ptr [ECX + 0xd],0x0
004f354a  7514                      JNZ 0x004f3560
004f354c  0f1f4000                  NOP dword ptr [EAX]
004f3550  3b4108                    CMP EAX,dword ptr [ECX + 0x8]
004f3553  750b                      JNZ 0x004f3560
004f3555  8bc1                      MOV EAX,ECX
004f3557  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
004f355a  80790d00                  CMP byte ptr [ECX + 0xd],0x0
004f355e  74f0                      JZ 0x004f3550
004f3560  8bc1                      MOV EAX,ECX
004f3562  eb18                      JMP 0x004f357c
004f3564  8bc1                      MOV EAX,ECX
004f3566  8b10                      MOV EDX,dword ptr [EAX]
004f3568  807a0d00                  CMP byte ptr [EDX + 0xd],0x0
004f356c  750e                      JNZ 0x004f357c
004f356e  6690                      NOP
004f3570  8b0a                      MOV ECX,dword ptr [EDX]
004f3572  8bc2                      MOV EAX,EDX
004f3574  8bd1                      MOV EDX,ECX
004f3576  80790d00                  CMP byte ptr [ECX + 0xd],0x0
004f357a  74f4                      JZ 0x004f3570
004f357c  8b8d08feffff              MOV ECX,dword ptr [EBP + 0xfffffe08]
004f3582  46                        INC ESI
004f3583  3bc1                      CMP EAX,ECX
004f3585  0f8565ffffff              JNZ 0x004f34f0
004f358b  b82c010000                MOV EAX,0x12c
004f3590  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004f3596  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004f359a  7544                      JNZ 0x004f35e0
004f359c  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004f35a2  85d2                      TEST EDX,EDX
004f35a4  7405                      JZ 0x004f35ab
004f35a6  83c230                    ADD EDX,0x30
004f35a9  eb05                      JMP 0x004f35b0
004f35ab  ba18f6c700                MOV EDX,0xc7f618
004f35b0  8b852cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe2c]
004f35b6  85c0                      TEST EAX,EAX
004f35b8  7426                      JZ 0x004f35e0
004f35ba  8d48fc                    LEA ECX,[EAX + -0x4]
004f35bd  8b01                      MOV EAX,dword ptr [ECX]
004f35bf  2902                      SUB dword ptr [EDX],EAX
004f35c1  51                        PUSH ECX
004f35c2  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004f35c6  ff9538feffff              CALL dword ptr [EBP + 0xfffffe38]
004f35cc  8b8d08feffff              MOV ECX,dword ptr [EBP + 0xfffffe08]
004f35d2  83c404                    ADD ESP,0x4
004f35d5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004f35e0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f35e7  8d8508feffff              LEA EAX,[EBP + 0xfffffe08]
004f35ed  ff7104                    PUSH dword ptr [ECX + 0x4]
004f35f0  8bc8                      MOV ECX,EAX
004f35f2  50                        PUSH EAX
004f35f3  e8e892f3ff                CALL 0x0042c8e0
004f35f8  6a18                      PUSH 0x18
004f35fa  ffb508feffff              PUSH dword ptr [EBP + 0xfffffe08]
004f3600  e857bb5f00                CALL 0x00aef15c
004f3605  83c408                    ADD ESP,0x8
004f3608  8bb530feffff              MOV ESI,dword ptr [EBP + 0xfffffe30]
004f360e  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004f3614  8b953cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe3c]
004f361a  85c0                      TEST EAX,EAX
004f361c  7e08                      JLE 0x004f3626
004f361e  2bc2                      SUB EAX,EDX
004f3620  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004f3626  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004f362c  85c0                      TEST EAX,EAX
004f362e  7e08                      JLE 0x004f3638
004f3630  2bc2                      SUB EAX,EDX
004f3632  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004f3638  8b8fc40b0000              MOV ECX,dword ptr [EDI + 0xbc4]
004f363e  85c9                      TEST ECX,ECX
004f3640  7909                      JNS 0x004f364b
004f3642  33c0                      XOR EAX,EAX
004f3644  03ca                      ADD ECX,EDX
004f3646  0f48c1                    CMOVS EAX,ECX
004f3649  eb0b                      JMP 0x004f3656
004f364b  7e0f                      JLE 0x004f365c
004f364d  2bca                      SUB ECX,EDX
004f364f  33c0                      XOR EAX,EAX
004f3651  85c9                      TEST ECX,ECX
004f3653  0f4fc1                    CMOVG EAX,ECX
004f3656  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004f365c  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004f3662  83f809                    CMP EAX,0x9
004f3665  0f8732100000              JA 0x004f469d
004f366b  ff248508474f00            JMP dword ptr [EAX*0x4 + 0x4f4708]
004f3672  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004f367c  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004f3686  e912100000                JMP 0x004f469d
004f368b  a118ddb100                MOV EAX,[0x00b1dd18]
004f3690  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004f3696  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004f369d  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004f36a4  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004f36a7  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004f36aa  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004f36ae  c745fc08000000            MOV dword ptr [EBP + -0x4],0x8
004f36b5  a130ddb100                MOV EAX,[0x00b1dd30]
004f36ba  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004f36c0  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004f36c7  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004f36ce  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004f36d1  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004f36d4  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004f36d8  51                        PUSH ECX
004f36d9  c645fc09                  MOV byte ptr [EBP + -0x4],0x9
004f36dd  8d45bc                    LEA EAX,[EBP + -0x44]
004f36e0  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004f36e7  8bcf                      MOV ECX,EDI
004f36e9  50                        PUSH EAX
004f36ea  8d45d4                    LEA EAX,[EBP + -0x2c]
004f36ed  50                        PUSH EAX
004f36ee  e83ddc1c00                CALL 0x006c1330
004f36f3  c645fc08                  MOV byte ptr [EBP + -0x4],0x8
004f36f7  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004f36fa  83fa10                    CMP EDX,0x10
004f36fd  7228                      JC 0x004f3727
004f36ff  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004f3702  42                        INC EDX
004f3703  8bc1                      MOV EAX,ECX
004f3705  81fa00100000              CMP EDX,0x1000
004f370b  7210                      JC 0x004f371d
004f370d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004f3710  83c223                    ADD EDX,0x23
004f3713  2bc1                      SUB EAX,ECX
004f3715  83c0fc                    ADD EAX,-0x4
004f3718  83f81f                    CMP EAX,0x1f
004f371b  7749                      JA 0x004f3766
004f371d  52                        PUSH EDX
004f371e  51                        PUSH ECX
004f371f  e838ba5f00                CALL 0x00aef15c
004f3724  83c408                    ADD ESP,0x8
004f3727  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f372e  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004f3731  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004f3738  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004f373f  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004f3743  83fa10                    CMP EDX,0x10
004f3746  722e                      JC 0x004f3776
004f3748  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004f374b  42                        INC EDX
004f374c  8bc1                      MOV EAX,ECX
004f374e  81fa00100000              CMP EDX,0x1000
004f3754  7216                      JC 0x004f376c
004f3756  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004f3759  83c223                    ADD EDX,0x23
004f375c  2bc1                      SUB EAX,ECX
004f375e  83c0fc                    ADD EAX,-0x4
004f3761  83f81f                    CMP EAX,0x1f
004f3764  7606                      JBE 0x004f376c
004f3766  ff159488b100              CALL dword ptr [0x00b18894]
004f376c  52                        PUSH EDX
004f376d  51                        PUSH ECX
004f376e  e8e9b95f00                CALL 0x00aef15c
004f3773  83c408                    ADD ESP,0x8
004f3776  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004f377d  7438                      JZ 0x004f37b7
004f377f  6a01                      PUSH 0x1
004f3781  6884030000                PUSH 0x384
004f3786  83ec08                    SUB ESP,0x8
004f3789  8d8510feffff              LEA EAX,[EBP + 0xfffffe10]
004f378f  8bcf                      MOV ECX,EDI
004f3791  c7442404cdcc4c3f          MOV dword ptr [ESP + 0x4],0x3f4ccccd
004f3799  c7042400000000            MOV dword ptr [ESP],0x0
004f37a0  50                        PUSH EAX
004f37a1  e89ab41c00                CALL 0x006bec40
004f37a6  50                        PUSH EAX
004f37a7  8d8f14040000              LEA ECX,[EDI + 0x414]
004f37ad  e80efc2e00                CALL 0x007e33c0
004f37b2  e95a040000                JMP 0x004f3c11
004f37b7  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004f37bd  2500080001                AND EAX,0x1000800
004f37c2  83c800                    OR EAX,0x0
004f37c5  7450                      JZ 0x004f3817
004f37c7  8bcf                      MOV ECX,EDI
004f37c9  e872b01c00                CALL 0x006be840
004f37ce  6a00                      PUSH 0x0
004f37d0  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004f37d6  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004f37dc  898514feffff              MOV dword ptr [EBP + 0xfffffe14],EAX
004f37e2  8d8510feffff              LEA EAX,[EBP + 0xfffffe10]
004f37e8  898d10feffff              MOV dword ptr [EBP + 0xfffffe10],ECX
004f37ee  8d8f14040000              LEA ECX,[EDI + 0x414]
004f37f4  50                        PUSH EAX
004f37f5  e846112f00                CALL 0x007e4940
004f37fa  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f3802  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f380a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f3812  e9fa030000                JMP 0x004f3c11
004f3817  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004f381d  83f801                    CMP EAX,0x1
004f3820  7459                      JZ 0x004f387b
004f3822  83f802                    CMP EAX,0x2
004f3825  7454                      JZ 0x004f387b
004f3827  85f6                      TEST ESI,ESI
004f3829  7456                      JZ 0x004f3881
004f382b  8bce                      MOV ECX,ESI
004f382d  e80eb01c00                CALL 0x006be840
004f3832  6a00                      PUSH 0x0
004f3834  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004f383a  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004f3840  898514feffff              MOV dword ptr [EBP + 0xfffffe14],EAX
004f3846  8d8510feffff              LEA EAX,[EBP + 0xfffffe10]
004f384c  898d10feffff              MOV dword ptr [EBP + 0xfffffe10],ECX
004f3852  8d8f14040000              LEA ECX,[EDI + 0x414]
004f3858  50                        PUSH EAX
004f3859  e8e2102f00                CALL 0x007e4940
004f385e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f3866  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f386e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f3876  e996030000                JMP 0x004f3c11
004f387b  8bce                      MOV ECX,ESI
004f387d  85f6                      TEST ESI,ESI
004f387f  7502                      JNZ 0x004f3883
004f3881  8bcf                      MOV ECX,EDI
004f3883  e8b8af1c00                CALL 0x006be840
004f3888  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004f388f  8bc8                      MOV ECX,EAX
004f3891  898d38feffff              MOV dword ptr [EBP + 0xfffffe38],ECX
004f3897  0f85d5000000              JNZ 0x004f3972
004f389d  85f6                      TEST ESI,ESI
004f389f  0f84a6000000              JZ 0x004f394b
004f38a5  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
004f38ad  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004f38b5  f30f109140030000          MOVSS XMM2,dword ptr [ECX + 0x340]
004f38bd  f30f5cc8                  SUBSS XMM1,XMM0
004f38c1  f30f118524feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM0
004f38c9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004f38d1  f30f5cc2                  SUBSS XMM0,XMM2
004f38d5  f30f119504feffff          MOVSS dword ptr [EBP + 0xfffffe04],XMM2
004f38dd  f30f59c9                  MULSS XMM1,XMM1
004f38e1  f30f59c0                  MULSS XMM0,XMM0
004f38e5  f30f58c1                  ADDSS XMM0,XMM1
004f38e9  e86221f4ff                CALL 0x00435a50
004f38ee  8b8538feffff              MOV EAX,dword ptr [EBP + 0xfffffe38]
004f38f4  f30f590554a1ba00          MULSS XMM0,dword ptr [0x00baa154]
004f38fc  6a01                      PUSH 0x1
004f38fe  6884030000                PUSH 0x384
004f3903  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004f390b  f30f59c8                  MULSS XMM1,XMM0
004f390f  51                        PUSH ECX
004f3910  c704247b142e3f            MOV dword ptr [ESP],0x3f2e147b
004f3917  f30f588d24feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe24]
004f391f  f30f118d10feffff          MOVSS dword ptr [EBP + 0xfffffe10],XMM1
004f3927  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
004f392f  8d8510feffff              LEA EAX,[EBP + 0xfffffe10]
004f3935  f30f59c8                  MULSS XMM1,XMM0
004f3939  f30f588d04feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe04]
004f3941  f30f118d14feffff          MOVSS dword ptr [EBP + 0xfffffe14],XMM1
004f3949  eb70                      JMP 0x004f39bb
004f394b  51                        PUSH ECX
004f394c  8d85e8fdffff              LEA EAX,[EBP + 0xfffffde8]
004f3952  c7042400000000            MOV dword ptr [ESP],0x0
004f3959  50                        PUSH EAX
004f395a  8bcf                      MOV ECX,EDI
004f395c  e8dfb21c00                CALL 0x006bec40
004f3961  6a01                      PUSH 0x1
004f3963  6884030000                PUSH 0x384
004f3968  51                        PUSH ECX
004f3969  c704247b142e3f            MOV dword ptr [ESP],0x3f2e147b
004f3970  eb49                      JMP 0x004f39bb
004f3972  85f6                      TEST ESI,ESI
004f3974  7420                      JZ 0x004f3996
004f3976  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
004f397c  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
004f3982  898510feffff              MOV dword ptr [EBP + 0xfffffe10],EAX
004f3988  8d8510feffff              LEA EAX,[EBP + 0xfffffe10]
004f398e  898d14feffff              MOV dword ptr [EBP + 0xfffffe14],ECX
004f3994  eb16                      JMP 0x004f39ac
004f3996  51                        PUSH ECX
004f3997  8d85e8fdffff              LEA EAX,[EBP + 0xfffffde8]
004f399d  c7042400000000            MOV dword ptr [ESP],0x0
004f39a4  50                        PUSH EAX
004f39a5  8bcf                      MOV ECX,EDI
004f39a7  e894b21c00                CALL 0x006bec40
004f39ac  6a01                      PUSH 0x1
004f39ae  6884030000                PUSH 0x384
004f39b3  51                        PUSH ECX
004f39b4  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004f39bb  50                        PUSH EAX
004f39bc  8d8f14040000              LEA ECX,[EDI + 0x414]
004f39c2  e8f9f92e00                CALL 0x007e33c0
004f39c7  85f6                      TEST ESI,ESI
004f39c9  0f8442020000              JZ 0x004f3c11
004f39cf  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004f39d3  0f8589000000              JNZ 0x004f3a62
004f39d9  e882b51f00                CALL 0x006eef60
004f39de  33d2                      XOR EDX,EDX
004f39e0  b90c000000                MOV ECX,0xc
004f39e5  f7f1                      DIV ECX
004f39e7  85d2                      TEST EDX,EDX
004f39e9  7577                      JNZ 0x004f3a62
004f39eb  3997c40b0000              CMP dword ptr [EDI + 0xbc4],EDX
004f39f1  7c6f                      JL 0x004f3a62
004f39f3  8b8538feffff              MOV EAX,dword ptr [EBP + 0xfffffe38]
004f39f9  f30f100d40cbba00          MOVSS XMM1,dword ptr [0x00bacb40]
004f3a01  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
004f3a09  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004f3a11  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004f3a19  0f54c1                    ANDPS XMM0,XMM1
004f3a1c  0f2fd0                    COMISS XMM2,XMM0
004f3a1f  7718                      JA 0x004f3a39
004f3a21  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004f3a29  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004f3a31  0f54c1                    ANDPS XMM0,XMM1
004f3a34  0f2fd0                    COMISS XMM2,XMM0
004f3a37  7629                      JBE 0x004f3a62
004f3a39  83bec40b000000            CMP dword ptr [ESI + 0xbc4],0x0
004f3a40  0f8ccb010000              JL 0x004f3c11
004f3a46  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
004f3a4d  0f85be010000              JNZ 0x004f3c11
004f3a53  c786c40b000008000000      MOV dword ptr [ESI + 0xbc4],0x8
004f3a5d  e9af010000                JMP 0x004f3c11
004f3a62  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
004f3a69  0f852c010000              JNZ 0x004f3b9b
004f3a6f  e8ecb41f00                CALL 0x006eef60
004f3a74  a803                      TEST AL,0x3
004f3a76  0f851f010000              JNZ 0x004f3b9b
004f3a7c  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
004f3a83  0f8f12010000              JG 0x004f3b9b
004f3a89  8bb538feffff              MOV ESI,dword ptr [EBP + 0xfffffe38]
004f3a8f  f30f10059ca8ba00          MOVSS XMM0,dword ptr [0x00baa89c]
004f3a97  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
004f3a9f  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004f3aa7  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f3aae  0f2fc1                    COMISS XMM0,XMM1
004f3ab1  0f86e4000000              JBE 0x004f3b9b
004f3ab7  a17816c700                MOV EAX,[0x00c71678]
004f3abc  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
004f3ac2  6a00                      PUSH 0x0
004f3ac4  6a00                      PUSH 0x0
004f3ac6  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
004f3acc  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
004f3ad2  6a00                      PUSH 0x0
004f3ad4  6884030000                PUSH 0x384
004f3ad9  898df4fdffff              MOV dword ptr [EBP + 0xfffffdf4],ECX
004f3adf  8d8df0fdffff              LEA ECX,[EBP + 0xfffffdf0]
004f3ae5  6a01                      PUSH 0x1
004f3ae7  8985f0fdffff              MOV dword ptr [EBP + 0xfffffdf0],EAX
004f3aed  8d873c030000              LEA EAX,[EDI + 0x33c]
004f3af3  51                        PUSH ECX
004f3af4  50                        PUSH EAX
004f3af5  8bca                      MOV ECX,EDX
004f3af7  e8f4d22f00                CALL 0x007f0df0
004f3afc  84c0                      TEST AL,AL
004f3afe  0f8497000000              JZ 0x004f3b9b
004f3b04  6a00                      PUSH 0x0
004f3b06  68180ab600                PUSH 0xb60a18
004f3b0b  8d4f48                    LEA ECX,[EDI + 0x48]
004f3b0e  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004f3b18  e86368f1ff                CALL 0x0040a380
004f3b1d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004f3b25  0f2f863c030000            COMISS XMM0,dword ptr [ESI + 0x33c]
004f3b2c  0f97c0                    SETA AL
004f3b2f  888748010000              MOV byte ptr [EDI + 0x148],AL
004f3b35  0f2f863c030000            COMISS XMM0,dword ptr [ESI + 0x33c]
004f3b3c  760a                      JBE 0x004f3b48
004f3b3e  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004f3b46  eb08                      JMP 0x004f3b50
004f3b48  f30f10851cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe1c]
004f3b50  51                        PUSH ECX
004f3b51  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f3b58  b8a7000000                MOV EAX,0xa7
004f3b5d  6a00                      PUSH 0x0
004f3b5f  6a02                      PUSH 0x2
004f3b61  51                        PUSH ECX
004f3b62  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004f3b6a  b970000000                MOV ECX,0x70
004f3b6f  c7873803000000000000      MOV dword ptr [EDI + 0x338],0x0
004f3b79  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004f3b7d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f3b84  0f44c1                    CMOVZ EAX,ECX
004f3b87  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004f3b91  50                        PUSH EAX
004f3b92  8bcf                      MOV ECX,EDI
004f3b94  e807301e00                CALL 0x006d6ba0
004f3b99  eb76                      JMP 0x004f3c11
004f3b9b  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004f3ba2  756d                      JNZ 0x004f3c11
004f3ba4  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
004f3bab  7f64                      JG 0x004f3c11
004f3bad  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
004f3bb5  8bcf                      MOV ECX,EDI
004f3bb7  6a07                      PUSH 0x7
004f3bb9  6a01                      PUSH 0x1
004f3bbb  e8a0721d00                CALL 0x006cae60
004f3bc0  84c0                      TEST AL,AL
004f3bc2  744d                      JZ 0x004f3c11
004f3bc4  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004f3bcc  b90808b600                MOV ECX,0xb60808
004f3bd1  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004f3bd9  b84407b600                MOV EAX,0xb60744
004f3bde  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f3be5  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004f3bec  0f2fc8                    COMISS XMM1,XMM0
004f3bef  6a00                      PUSH 0x0
004f3bf1  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004f3bfb  0f46c1                    CMOVBE EAX,ECX
004f3bfe  8d4f48                    LEA ECX,[EDI + 0x48]
004f3c01  50                        PUSH EAX
004f3c02  e87967f1ff                CALL 0x0040a380
004f3c07  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004f3c11  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f3c19  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
004f3c21  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f3c29  e96f0a0000                JMP 0x004f469d
004f3c2e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f3c32  0f84af050000              JZ 0x004f41e7
004f3c38  68dcd2b100                PUSH 0xb1d2dc
004f3c3d  8d4f78                    LEA ECX,[EDI + 0x78]
004f3c40  e88b71f1ff                CALL 0x0040add0
004f3c45  84c0                      TEST AL,AL
004f3c47  0f84ae020000              JZ 0x004f3efb
004f3c4d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004f3c54  0f84a3000000              JZ 0x004f3cfd
004f3c5a  f30f1097200f0000          MOVSS XMM2,dword ptr [EDI + 0xf20]
004f3c62  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004f3c69  9f                        LAHF
004f3c6a  f6c444                    TEST AH,0x44
004f3c6d  7a15                      JP 0x004f3c84
004f3c6f  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
004f3c77  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f3c7e  9f                        LAHF
004f3c7f  f6c444                    TEST AH,0x44
004f3c82  7b79                      JNP 0x004f3cfd
004f3c84  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
004f3c8c  0f28c1                    MOVAPS XMM0,XMM1
004f3c8f  f30f59c1                  MULSS XMM0,XMM1
004f3c93  0f28ca                    MOVAPS XMM1,XMM2
004f3c96  f30f59ca                  MULSS XMM1,XMM2
004f3c9a  f30f58c1                  ADDSS XMM0,XMM1
004f3c9e  e8ad1df4ff                CALL 0x00435a50
004f3ca3  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f3caa  7634                      JBE 0x004f3ce0
004f3cac  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004f3cb4  f30f5ec8                  DIVSS XMM1,XMM0
004f3cb8  0f28c1                    MOVAPS XMM0,XMM1
004f3cbb  f30f598f240f0000          MULSS XMM1,dword ptr [EDI + 0xf24]
004f3cc3  f30f5987200f0000          MULSS XMM0,dword ptr [EDI + 0xf20]
004f3ccb  f30f118d24feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM1
004f3cd3  f30f118520feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM0
004f3cdb  e9c5000000                JMP 0x004f3da5
004f3ce0  f30f1087200f0000          MOVSS XMM0,dword ptr [EDI + 0xf20]
004f3ce8  f30f118520feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM0
004f3cf0  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
004f3cf8  e9a0000000                JMP 0x004f3d9d
004f3cfd  8bcf                      MOV ECX,EDI
004f3cff  e83cab1c00                CALL 0x006be840
004f3d04  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004f3d0c  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004f3d14  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004f3d1c  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004f3d24  0f28c1                    MOVAPS XMM0,XMM1
004f3d27  f30f118d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM1
004f3d2f  f30f59c1                  MULSS XMM0,XMM1
004f3d33  0f28ca                    MOVAPS XMM1,XMM2
004f3d36  f30f119538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM2
004f3d3e  f30f59ca                  MULSS XMM1,XMM2
004f3d42  f30f58c1                  ADDSS XMM0,XMM1
004f3d46  e8051df4ff                CALL 0x00435a50
004f3d4b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f3d52  7631                      JBE 0x004f3d85
004f3d54  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004f3d5c  f30f5ec8                  DIVSS XMM1,XMM0
004f3d60  0f28c1                    MOVAPS XMM0,XMM1
004f3d63  f30f598d38feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe38]
004f3d6b  f30f59853cfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffe3c]
004f3d73  f30f118d24feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM1
004f3d7b  f30f118520feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM0
004f3d83  eb20                      JMP 0x004f3da5
004f3d85  f30f10953cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe3c]
004f3d8d  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
004f3d95  f30f119520feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM2
004f3d9d  f30f118524feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM0
004f3da5  8d8d20feffff              LEA ECX,[EBP + 0xfffffe20]
004f3dab  8b01                      MOV EAX,dword ptr [ECX]
004f3dad  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
004f3db0  898dfcfdffff              MOV dword ptr [EBP + 0xfffffdfc],ECX
004f3db6  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004f3dbc  8985f8fdffff              MOV dword ptr [EBP + 0xfffffdf8],EAX
004f3dc2  e869b1f4ff                CALL 0x0043ef30
004f3dc7  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004f3dcb  f30f10851cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe1c]
004f3dd3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004f3dd9  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
004f3de1  0f8582000000              JNZ 0x004f3e69
004f3de7  83f812                    CMP EAX,0x12
004f3dea  750a                      JNZ 0x004f3df6
004f3dec  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f3df4  eb0d                      JMP 0x004f3e03
004f3df6  83f813                    CMP EAX,0x13
004f3df9  7510                      JNZ 0x004f3e0b
004f3dfb  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f3e03  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
004f3e0b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f3e11  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
004f3e17  c7853cfeffff6a000000      MOV dword ptr [EBP + 0xfffffe3c],0x6a
004f3e21  e85a294600                CALL 0x00956780
004f3e26  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
004f3e2e  83ec08                    SUB ESP,0x8
004f3e31  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f3e39  f30f110424                MOVSS dword ptr [ESP],XMM0
004f3e3e  6a00                      PUSH 0x0
004f3e40  6a02                      PUSH 0x2
004f3e42  51                        PUSH ECX
004f3e43  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f3e4a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f3e50  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
004f3e56  e8d59d4300                CALL 0x0092dc30
004f3e5b  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004f3e61  50                        PUSH EAX
004f3e62  6a03                      PUSH 0x3
004f3e64  e97d000000                JMP 0x004f3ee6
004f3e69  83f812                    CMP EAX,0x12
004f3e6c  750a                      JNZ 0x004f3e78
004f3e6e  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f3e76  eb0d                      JMP 0x004f3e85
004f3e78  83f813                    CMP EAX,0x13
004f3e7b  7510                      JNZ 0x004f3e8d
004f3e7d  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f3e85  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
004f3e8d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f3e93  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
004f3e99  c7853cfeffff92000000      MOV dword ptr [EBP + 0xfffffe3c],0x92
004f3ea3  e8d8284600                CALL 0x00956780
004f3ea8  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
004f3eb0  83ec08                    SUB ESP,0x8
004f3eb3  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f3ebb  f30f110424                MOVSS dword ptr [ESP],XMM0
004f3ec0  6a00                      PUSH 0x0
004f3ec2  6a02                      PUSH 0x2
004f3ec4  51                        PUSH ECX
004f3ec5  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f3ecc  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f3ed2  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
004f3ed8  e8539d4300                CALL 0x0092dc30
004f3edd  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004f3ee3  50                        PUSH EAX
004f3ee4  6a01                      PUSH 0x1
004f3ee6  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
004f3eec  8bcf                      MOV ECX,EDI
004f3eee  50                        PUSH EAX
004f3eef  8d873c030000              LEA EAX,[EDI + 0x33c]
004f3ef5  50                        PUSH EAX
004f3ef6  e8e5731d00                CALL 0x006cb2e0
004f3efb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f3eff  0f84e2020000              JZ 0x004f41e7
004f3f05  687cddb100                PUSH 0xb1dd7c
004f3f0a  8d4f78                    LEA ECX,[EDI + 0x78]
004f3f0d  e8be6ef1ff                CALL 0x0040add0
004f3f12  84c0                      TEST AL,AL
004f3f14  0f84be020000              JZ 0x004f41d8
004f3f1a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004f3f21  0f84c3000000              JZ 0x004f3fea
004f3f27  f30f1097200f0000          MOVSS XMM2,dword ptr [EDI + 0xf20]
004f3f2f  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004f3f36  9f                        LAHF
004f3f37  f6c444                    TEST AH,0x44
004f3f3a  7a19                      JP 0x004f3f55
004f3f3c  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
004f3f44  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f3f4b  9f                        LAHF
004f3f4c  f6c444                    TEST AH,0x44
004f3f4f  0f8b95000000              JNP 0x004f3fea
004f3f55  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
004f3f5d  0f28c1                    MOVAPS XMM0,XMM1
004f3f60  f30f118d24feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM1
004f3f68  f30f59c1                  MULSS XMM0,XMM1
004f3f6c  0f28ca                    MOVAPS XMM1,XMM2
004f3f6f  f30f59ca                  MULSS XMM1,XMM2
004f3f73  f30f58c1                  ADDSS XMM0,XMM1
004f3f77  e8d41af4ff                CALL 0x00435a50
004f3f7c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f3f83  763a                      JBE 0x004f3fbf
004f3f85  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004f3f8d  8d8d00feffff              LEA ECX,[EBP + 0xfffffe00]
004f3f93  f30f5ec8                  DIVSS XMM1,XMM0
004f3f97  0f28c1                    MOVAPS XMM0,XMM1
004f3f9a  f30f598d24feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe24]
004f3fa2  f30f5987200f0000          MULSS XMM0,dword ptr [EDI + 0xf20]
004f3faa  f30f118d04feffff          MOVSS dword ptr [EBP + 0xfffffe04],XMM1
004f3fb2  f30f118500feffff          MOVSS dword ptr [EBP + 0xfffffe00],XMM0
004f3fba  e9d9000000                JMP 0x004f4098
004f3fbf  f30f1087200f0000          MOVSS XMM0,dword ptr [EDI + 0xf20]
004f3fc7  8d8d00feffff              LEA ECX,[EBP + 0xfffffe00]
004f3fcd  f30f118500feffff          MOVSS dword ptr [EBP + 0xfffffe00],XMM0
004f3fd5  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
004f3fdd  f30f118504feffff          MOVSS dword ptr [EBP + 0xfffffe04],XMM0
004f3fe5  e9ae000000                JMP 0x004f4098
004f3fea  8bcf                      MOV ECX,EDI
004f3fec  e84fa81c00                CALL 0x006be840
004f3ff1  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004f3ff9  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004f4001  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004f4009  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004f4011  0f28c1                    MOVAPS XMM0,XMM1
004f4014  f30f118d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM1
004f401c  f30f59c1                  MULSS XMM0,XMM1
004f4020  0f28ca                    MOVAPS XMM1,XMM2
004f4023  f30f119538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM2
004f402b  f30f59ca                  MULSS XMM1,XMM2
004f402f  f30f58c1                  ADDSS XMM0,XMM1
004f4033  e8181af4ff                CALL 0x00435a50
004f4038  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f403f  8d8d20feffff              LEA ECX,[EBP + 0xfffffe20]
004f4045  7631                      JBE 0x004f4078
004f4047  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004f404f  f30f5ec8                  DIVSS XMM1,XMM0
004f4053  0f28c1                    MOVAPS XMM0,XMM1
004f4056  f30f598d38feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe38]
004f405e  f30f59853cfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffe3c]
004f4066  f30f118d24feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM1
004f406e  f30f118520feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM0
004f4076  eb20                      JMP 0x004f4098
004f4078  f30f10953cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe3c]
004f4080  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
004f4088  f30f119520feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM2
004f4090  f30f118524feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM0
004f4098  8b01                      MOV EAX,dword ptr [ECX]
004f409a  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
004f409d  898d04feffff              MOV dword ptr [EBP + 0xfffffe04],ECX
004f40a3  8d8d40feffff              LEA ECX,[EBP + 0xfffffe40]
004f40a9  898500feffff              MOV dword ptr [EBP + 0xfffffe00],EAX
004f40af  e87caef4ff                CALL 0x0043ef30
004f40b4  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004f40b8  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004f40be  0f8582000000              JNZ 0x004f4146
004f40c4  83f812                    CMP EAX,0x12
004f40c7  750a                      JNZ 0x004f40d3
004f40c9  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f40d1  eb0d                      JMP 0x004f40e0
004f40d3  83f813                    CMP EAX,0x13
004f40d6  7510                      JNZ 0x004f40e8
004f40d8  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f40e0  f30f11851cfeffff          MOVSS dword ptr [EBP + 0xfffffe1c],XMM0
004f40e8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f40ee  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
004f40f4  c7853cfeffff6c000000      MOV dword ptr [EBP + 0xfffffe3c],0x6c
004f40fe  e87d264600                CALL 0x00956780
004f4103  f30f10851cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe1c]
004f410b  83ec08                    SUB ESP,0x8
004f410e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f4116  f30f110424                MOVSS dword ptr [ESP],XMM0
004f411b  6a00                      PUSH 0x0
004f411d  6a02                      PUSH 0x2
004f411f  51                        PUSH ECX
004f4120  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f4127  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f412d  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
004f4133  e8f89a4300                CALL 0x0092dc30
004f4138  8d8540feffff              LEA EAX,[EBP + 0xfffffe40]
004f413e  50                        PUSH EAX
004f413f  6a04                      PUSH 0x4
004f4141  e97d000000                JMP 0x004f41c3
004f4146  83f812                    CMP EAX,0x12
004f4149  750a                      JNZ 0x004f4155
004f414b  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f4153  eb0d                      JMP 0x004f4162
004f4155  83f813                    CMP EAX,0x13
004f4158  7510                      JNZ 0x004f416a
004f415a  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f4162  f30f11851cfeffff          MOVSS dword ptr [EBP + 0xfffffe1c],XMM0
004f416a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f4170  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
004f4176  c7853cfeffff92000000      MOV dword ptr [EBP + 0xfffffe3c],0x92
004f4180  e8fb254600                CALL 0x00956780
004f4185  f30f10851cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe1c]
004f418d  83ec08                    SUB ESP,0x8
004f4190  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f4198  f30f110424                MOVSS dword ptr [ESP],XMM0
004f419d  6a00                      PUSH 0x0
004f419f  6a02                      PUSH 0x2
004f41a1  51                        PUSH ECX
004f41a2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f41a9  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f41af  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
004f41b5  e8769a4300                CALL 0x0092dc30
004f41ba  8d8540feffff              LEA EAX,[EBP + 0xfffffe40]
004f41c0  50                        PUSH EAX
004f41c1  6a03                      PUSH 0x3
004f41c3  8d8500feffff              LEA EAX,[EBP + 0xfffffe00]
004f41c9  8bcf                      MOV ECX,EDI
004f41cb  50                        PUSH EAX
004f41cc  8d873c030000              LEA EAX,[EDI + 0x33c]
004f41d2  50                        PUSH EAX
004f41d3  e808711d00                CALL 0x006cb2e0
004f41d8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f41dc  7409                      JZ 0x004f41e7
004f41de  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f41e5  752a                      JNZ 0x004f4211
004f41e7  c787a40b00002d000000      MOV dword ptr [EDI + 0xba4],0x2d
004f41f1  8bb530feffff              MOV ESI,dword ptr [EBP + 0xfffffe30]
004f41f7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004f4201  85f6                      TEST ESI,ESI
004f4203  7412                      JZ 0x004f4217
004f4205  c786a00b000001000000      MOV dword ptr [ESI + 0xba0],0x1
004f420f  eb06                      JMP 0x004f4217
004f4211  8bb530feffff              MOV ESI,dword ptr [EBP + 0xfffffe30]
004f4217  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f421f  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004f4227  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f422f  e96f040000                JMP 0x004f46a3
004f4234  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f4238  8d7778                    LEA ESI,[EDI + 0x78]
004f423b  0f841f010000              JZ 0x004f4360
004f4241  68dcd2b100                PUSH 0xb1d2dc
004f4246  8bce                      MOV ECX,ESI
004f4248  e8836bf1ff                CALL 0x0040add0
004f424d  84c0                      TEST AL,AL
004f424f  0f847d000000              JZ 0x004f42d2
004f4255  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004f425b  83f812                    CMP EAX,0x12
004f425e  750a                      JNZ 0x004f426a
004f4260  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f4268  eb0d                      JMP 0x004f4277
004f426a  83f813                    CMP EAX,0x13
004f426d  7510                      JNZ 0x004f427f
004f426f  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f4277  f30f11851cfeffff          MOVSS dword ptr [EBP + 0xfffffe1c],XMM0
004f427f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f4285  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
004f428b  c7853cfeffff7a000000      MOV dword ptr [EBP + 0xfffffe3c],0x7a
004f4295  e8e6244600                CALL 0x00956780
004f429a  f30f10851cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe1c]
004f42a2  83ec08                    SUB ESP,0x8
004f42a5  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f42ad  f30f110424                MOVSS dword ptr [ESP],XMM0
004f42b2  6a00                      PUSH 0x0
004f42b4  6a02                      PUSH 0x2
004f42b6  51                        PUSH ECX
004f42b7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f42be  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f42c4  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
004f42ca  e861994300                CALL 0x0092dc30
004f42cf  8d7778                    LEA ESI,[EDI + 0x78]
004f42d2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f42d6  0f8484000000              JZ 0x004f4360
004f42dc  687cddb100                PUSH 0xb1dd7c
004f42e1  8bce                      MOV ECX,ESI
004f42e3  e8e86af1ff                CALL 0x0040add0
004f42e8  84c0                      TEST AL,AL
004f42ea  7461                      JZ 0x004f434d
004f42ec  33f6                      XOR ESI,ESI
004f42ee  c78514feffff000090c1      MOV dword ptr [EBP + 0xfffffe14],0xc1900000
004f42f8  89b510feffff              MOV dword ptr [EBP + 0xfffffe10],ESI
004f42fe  8d873c030000              LEA EAX,[EDI + 0x33c]
004f4304  6a00                      PUSH 0x0
004f4306  660f6ec6                  MOVD XMM0,ESI
004f430a  8d8d10feffff              LEA ECX,[EBP + 0xfffffe10]
004f4310  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f4313  57                        PUSH EDI
004f4314  51                        PUSH ECX
004f4315  6a0f                      PUSH 0xf
004f4317  51                        PUSH ECX
004f4318  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004f4320  f30f110424                MOVSS dword ptr [ESP],XMM0
004f4325  50                        PUSH EAX
004f4326  6a01                      PUSH 0x1
004f4328  e8e3af4700                CALL 0x0096f310
004f432d  83c41c                    ADD ESP,0x1c
004f4330  8bc8                      MOV ECX,EAX
004f4332  c780e00400000000403f      MOV dword ptr [EAX + 0x4e0],0x3f400000
004f433c  e8cfb84800                CALL 0x0097fc10
004f4341  46                        INC ESI
004f4342  8d873c030000              LEA EAX,[EDI + 0x33c]
004f4348  83fe04                    CMP ESI,0x4
004f434b  7cb7                      JL 0x004f4304
004f434d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f4351  740d                      JZ 0x004f4360
004f4353  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f435a  0f85b1feffff              JNZ 0x004f4211
004f4360  c787a40b00003c000000      MOV dword ptr [EDI + 0xba4],0x3c
004f436a  c787c40b0000a6ffffff      MOV dword ptr [EDI + 0xbc4],0xffffffa6
004f4374  e978feffff                JMP 0x004f41f1
004f4379  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004f4380  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f4388  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004f4390  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f4398  0f85c4020000              JNZ 0x004f4662
004f439e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f43a2  0f84bb000000              JZ 0x004f4463
004f43a8  68dcd2b100                PUSH 0xb1d2dc
004f43ad  8d4f78                    LEA ECX,[EDI + 0x78]
004f43b0  e81b6af1ff                CALL 0x0040add0
004f43b5  84c0                      TEST AL,AL
004f43b7  0f8497000000              JZ 0x004f4454
004f43bd  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004f43c1  b977000000                MOV ECX,0x77
004f43c6  f30f10851cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe1c]
004f43ce  b839000000                MOV EAX,0x39
004f43d3  0f44c1                    CMOVZ EAX,ECX
004f43d6  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
004f43de  8b8f640c0000              MOV ECX,dword ptr [EDI + 0xc64]
004f43e4  83f912                    CMP ECX,0x12
004f43e7  750a                      JNZ 0x004f43f3
004f43e9  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f43f1  eb0d                      JMP 0x004f4400
004f43f3  83f913                    CMP ECX,0x13
004f43f6  7510                      JNZ 0x004f4408
004f43f8  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f4400  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
004f4408  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f440e  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
004f4414  89853cfeffff              MOV dword ptr [EBP + 0xfffffe3c],EAX
004f441a  e861234600                CALL 0x00956780
004f441f  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
004f4427  83ec08                    SUB ESP,0x8
004f442a  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f4432  f30f110424                MOVSS dword ptr [ESP],XMM0
004f4437  6a00                      PUSH 0x0
004f4439  6a02                      PUSH 0x2
004f443b  51                        PUSH ECX
004f443c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f4443  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f4449  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
004f444f  e8dc974300                CALL 0x0092dc30
004f4454  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f4458  7409                      JZ 0x004f4463
004f445a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f4461  7515                      JNZ 0x004f4478
004f4463  6a00                      PUSH 0x0
004f4465  68fcd3b100                PUSH 0xb1d3fc
004f446a  8d4f48                    LEA ECX,[EDI + 0x48]
004f446d  e80e5ff1ff                CALL 0x0040a380
004f4472  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f4476  7411                      JZ 0x004f4489
004f4478  68dcd2b100                PUSH 0xb1d2dc
004f447d  8d4f78                    LEA ECX,[EDI + 0x78]
004f4480  e8eb69f1ff                CALL 0x0040ae70
004f4485  84c0                      TEST AL,AL
004f4487  7515                      JNZ 0x004f449e
004f4489  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f448c  85c0                      TEST EAX,EAX
004f448e  0f8409020000              JZ 0x004f469d
004f4494  80783400                  CMP byte ptr [EAX + 0x34],0x0
004f4498  0f84ff010000              JZ 0x004f469d
004f449e  f30f102d04a9ba00          MOVSS XMM5,dword ptr [0x00baa904]
004f44a6  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
004f44b0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004f44b8  f30f5cc5                  SUBSS XMM0,XMM5
004f44bc  f30f101500aaba00          MOVSS XMM2,dword ptr [0x00baaa00]
004f44c4  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004f44ca  f30f5ec5                  DIVSS XMM0,XMM5
004f44ce  8b9200830100              MOV EDX,dword ptr [EDX + 0x18300]
004f44d4  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004f44dc  f30f2cc0                  CVTTSS2SI EAX,XMM0
004f44e0  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004f44e8  898524feffff              MOV dword ptr [EBP + 0xfffffe24],EAX
004f44ee  f30f5cc2                  SUBSS XMM0,XMM2
004f44f2  f30f5ec5                  DIVSS XMM0,XMM5
004f44f6  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004f44fe  f30f2cf0                  CVTTSS2SI ESI,XMM0
004f4502  85c0                      TEST EAX,EAX
004f4504  781d                      JS 0x004f4523
004f4506  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
004f4509  3bc1                      CMP EAX,ECX
004f450b  7d16                      JGE 0x004f4523
004f450d  85f6                      TEST ESI,ESI
004f450f  7812                      JS 0x004f4523
004f4511  3b7210                    CMP ESI,dword ptr [EDX + 0x10]
004f4514  7d0d                      JGE 0x004f4523
004f4516  8bc1                      MOV EAX,ECX
004f4518  0fafc6                    IMUL EAX,ESI
004f451b  038524feffff              ADD EAX,dword ptr [EBP + 0xfffffe24]
004f4521  eb06                      JMP 0x004f4529
004f4523  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
004f4526  83c8ff                    OR EAX,0xffffffff
004f4529  99                        CDQ
004f452a  f7f9                      IDIV ECX
004f452c  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
004f4534  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004f453c  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004f4544  660f6ed8                  MOVD XMM3,EAX
004f4548  0f5bdb                    CVTDQ2PS XMM3,XMM3
004f454b  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
004f4553  f30f59dd                  MULSS XMM3,XMM5
004f4557  f30f59c4                  MULSS XMM0,XMM4
004f455b  f30f58da                  ADDSS XMM3,XMM2
004f455f  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004f4567  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
004f456f  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004f4577  f30f59d4                  MULSS XMM2,XMM4
004f457b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004f4583  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004f458b  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004f4593  f30f10951cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe1c]
004f459b  0f2ee2                    UCOMISS XMM4,XMM2
004f459e  9f                        LAHF
004f459f  f6c444                    TEST AH,0x44
004f45a2  7b13                      JNP 0x004f45b7
004f45a4  0f28c4                    MOVAPS XMM0,XMM4
004f45a7  f30f59e1                  MULSS XMM4,XMM1
004f45ab  f30f58c1                  ADDSS XMM0,XMM1
004f45af  f30f5cc4                  SUBSS XMM0,XMM4
004f45b3  f30f5ec8                  DIVSS XMM1,XMM0
004f45b7  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
004f45bf  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004f45c7  f30f5cd1                  SUBSS XMM2,XMM1
004f45cb  a17816c700                MOV EAX,[0x00c71678]
004f45d0  f30f5cd8                  SUBSS XMM3,XMM0
004f45d4  f30f59da                  MULSS XMM3,XMM2
004f45d8  f30f58d8                  ADDSS XMM3,XMM0
004f45dc  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004f45e4  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f45ec  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004f45f4  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f45fa  f30f59c5                  MULSS XMM0,XMM5
004f45fe  f30f59cd                  MULSS XMM1,XMM5
004f4602  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004f460a  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004f4612  f30f118524feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM0
004f461a  ffb524feffff              PUSH dword ptr [EBP + 0xfffffe24]
004f4620  f30f118d20feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM1
004f4628  ffb520feffff              PUSH dword ptr [EBP + 0xfffffe20]
004f462e  e84dc12f00                CALL 0x007f0780
004f4633  85c0                      TEST EAX,EAX
004f4635  7510                      JNZ 0x004f4647
004f4637  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004f463d  25000a0001                AND EAX,0x1000a00
004f4642  83c800                    OR EAX,0x0
004f4645  7456                      JZ 0x004f469d
004f4647  6a00                      PUSH 0x0
004f4649  6818d4b100                PUSH 0xb1d418
004f464e  8d4f48                    LEA ECX,[EDI + 0x48]
004f4651  e82a5df1ff                CALL 0x0040a380
004f4656  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004f4660  eb3b                      JMP 0x004f469d
004f4662  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004f466c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f4670  7409                      JZ 0x004f467b
004f4672  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f4679  7522                      JNZ 0x004f469d
004f467b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004f4685  c787a40b00002d000000      MOV dword ptr [EDI + 0xba4],0x2d
004f468f  85f6                      TEST ESI,ESI
004f4691  740a                      JZ 0x004f469d
004f4693  c786a00b000001000000      MOV dword ptr [ESI + 0xba0],0x1
004f469d  8bb530feffff              MOV ESI,dword ptr [EBP + 0xfffffe30]
004f46a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f46a9  8d873c030000              LEA EAX,[EDI + 0x33c]
004f46af  6884030000                PUSH 0x384
004f46b4  50                        PUSH EAX
004f46b5  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004f46bb  e8c096fdff                CALL 0x004cdd80
004f46c0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004f46c7  741e                      JZ 0x004f46e7
004f46c9  3bf7                      CMP ESI,EDI
004f46cb  741a                      JZ 0x004f46e7
004f46cd  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004f46d3  83f801                    CMP EAX,0x1
004f46d6  7405                      JZ 0x004f46dd
004f46d8  83f802                    CMP EAX,0x2
004f46db  750a                      JNZ 0x004f46e7
004f46dd  c786a00b00000f000000      MOV dword ptr [ESI + 0xba0],0xf
004f46e7  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004f46ea  64890d00000000            MOV dword ptr FS:[0x0],ECX
004f46f1  59                        POP ECX
004f46f2  5f                        POP EDI
004f46f3  5e                        POP ESI
004f46f4  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004f46f7  33cd                      XOR ECX,EBP
004f46f9  e82daa5f00                CALL 0x00aef12b
004f46fe  8be5                      MOV ESP,EBP
004f4700  5d                        POP EBP
004f4701  8be3                      MOV ESP,EBX
004f4703  5b                        POP EBX
004f4704  c3                        RET
