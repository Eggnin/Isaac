; J460 NPC AI 0x0050af90 AI_0050af90
; types=11,210,211,238,280
; identities=11.0.0,11.1.0,210.0.0,211.0.0,238.0.0,280.0.0
; entry=0050af90
0050af90  53                        PUSH EBX
0050af91  8bdc                      MOV EBX,ESP
0050af93  83ec08                    SUB ESP,0x8
0050af96  83e4f8                    AND ESP,0xfffffff8
0050af99  83c404                    ADD ESP,0x4
0050af9c  55                        PUSH EBP
0050af9d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0050afa0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0050afa4  8bec                      MOV EBP,ESP
0050afa6  6aff                      PUSH -0x1
0050afa8  680542af00                PUSH 0xaf4205
0050afad  64a100000000              MOV EAX,FS:[0x0]
0050afb3  50                        PUSH EAX
0050afb4  53                        PUSH EBX
0050afb5  81ec48010000              SUB ESP,0x148
0050afbb  a1b493bf00                MOV EAX,[0x00bf93b4]
0050afc0  33c5                      XOR EAX,EBP
0050afc2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0050afc5  56                        PUSH ESI
0050afc6  57                        PUSH EDI
0050afc7  50                        PUSH EAX
0050afc8  8d45f4                    LEA EAX,[EBP + -0xc]
0050afcb  64a300000000              MOV FS:[0x0],EAX
0050afd1  8bf9                      MOV EDI,ECX
0050afd3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0050afda  0f85ab000000              JNZ 0x0050b08b
0050afe0  817f28ee000000            CMP dword ptr [EDI + 0x28],0xee
0050afe7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050aff1  7555                      JNZ 0x0050b048
0050aff3  0f280db0c4ba00            MOVAPS XMM1,xmmword ptr [0x00bac4b0]
0050affa  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050b000  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
0050b006  c785ccfeffffcac848be      MOV dword ptr [EBP + 0xfffffecc],0xbe48c8ca
0050b010  c785d0feffff8382023f      MOV dword ptr [EBP + 0xfffffed0],0x3f028283
0050b01a  0f57c0                    XORPS XMM0,XMM0
0050b01d  c785d4feffffcac8483e      MOV dword ptr [EBP + 0xfffffed4],0x3e48c8ca
0050b027  3bc8                      CMP ECX,EAX
0050b029  741d                      JZ 0x0050b048
0050b02b  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
0050b031  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0050b035  f30f7e85ccfeffff          MOVQ XMM0,qword ptr [EBP + 0xfffffecc]
0050b03d  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0050b042  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0050b045  894128                    MOV dword ptr [ECX + 0x28],EAX
0050b048  e8133f1e00                CALL 0x006eef60
0050b04d  33d2                      XOR EDX,EDX
0050b04f  b914000000                MOV ECX,0x14
0050b054  f7f1                      DIV ECX
0050b056  03d1                      ADD EDX,ECX
0050b058  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0050b05c  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0050b062  7506                      JNZ 0x0050b06a
0050b064  837f280b                  CMP dword ptr [EDI + 0x28],0xb
0050b068  740d                      JZ 0x0050b077
0050b06a  817f28ee000000            CMP dword ptr [EDI + 0x28],0xee
0050b071  0f85210b0000              JNZ 0x0050bb98
0050b077  6a00                      PUSH 0x0
0050b079  8d4f48                    LEA ECX,[EDI + 0x48]
0050b07c  68c0dcb100                PUSH 0xb1dcc0
0050b081  e8baf8efff                CALL 0x0040a940
0050b086  e90d0b0000                JMP 0x0050bb98
0050b08b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050b092  7455                      JZ 0x0050b0e9
0050b094  817f28d2000000            CMP dword ptr [EDI + 0x28],0xd2
0050b09b  754c                      JNZ 0x0050b0e9
0050b09d  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0050b0a5  0f2f0500aeba00            COMISS XMM0,dword ptr [0x00baae00]
0050b0ac  0f86e60a0000              JBE 0x0050bb98
0050b0b2  e8a93e1e00                CALL 0x006eef60
0050b0b7  a801                      TEST AL,0x1
0050b0b9  0f85d90a0000              JNZ 0x0050bb98
0050b0bf  6aff                      PUSH -0x1
0050b0c1  6a00                      PUSH 0x0
0050b0c3  6a00                      PUSH 0x0
0050b0c5  68d3000000                PUSH 0xd3
0050b0ca  8bcf                      MOV ECX,EDI
0050b0cc  e85f5e1b00                CALL 0x006c0f30
0050b0d1  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
0050b0d7  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0050b0de  898780030000              MOV dword ptr [EDI + 0x380],EAX
0050b0e4  e9af0a0000                JMP 0x0050bb98
0050b0e9  817f28ee000000            CMP dword ptr [EDI + 0x28],0xee
0050b0f0  0f57c9                    XORPS XMM1,XMM1
0050b0f3  7563                      JNZ 0x0050b158
0050b0f5  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0050b0fa  0f2fc1                    COMISS XMM0,XMM1
0050b0fd  7659                      JBE 0x0050b158
0050b0ff  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0050b102  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0050b105  7451                      JZ 0x0050b158
0050b107  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0050b110  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
0050b113  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
0050b116  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
0050b11c  8bca                      MOV ECX,EDX
0050b11e  83e104                    AND ECX,0x4
0050b121  83c900                    OR ECX,0x0
0050b124  742a                      JZ 0x0050b150
0050b126  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
0050b129  d1e9                      SHR ECX,0x1
0050b12b  f6c101                    TEST CL,0x1
0050b12e  7520                      JNZ 0x0050b150
0050b130  83781001                  CMP dword ptr [EAX + 0x10],0x1
0050b134  741a                      JZ 0x0050b150
0050b136  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
0050b139  83f901                    CMP ECX,0x1
0050b13c  7412                      JZ 0x0050b150
0050b13e  83f903                    CMP ECX,0x3
0050b141  740d                      JZ 0x0050b150
0050b143  81e200100000              AND EDX,0x1000
0050b149  83ca00                    OR EDX,0x0
0050b14c  7502                      JNZ 0x0050b150
0050b14e  8910                      MOV dword ptr [EAX],EDX
0050b150  83c038                    ADD EAX,0x38
0050b153  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0050b156  75b8                      JNZ 0x0050b110
0050b158  a118ddb100                MOV EAX,[0x00b1dd18]
0050b15d  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0050b163  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050b16a  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0050b171  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0050b174  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0050b177  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0050b17b  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0050b182  a130ddb100                MOV EAX,[0x00b1dd30]
0050b187  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0050b18d  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0050b194  c745b808000000            MOV dword ptr [EBP + -0x48],0x8
0050b19b  8945a8                    MOV dword ptr [EBP + -0x58],EAX
0050b19e  894dac                    MOV dword ptr [EBP + -0x54],ECX
0050b1a1  c645b000                  MOV byte ptr [EBP + -0x50],0x0
0050b1a5  51                        PUSH ECX
0050b1a6  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0050b1aa  8d45d4                    LEA EAX,[EBP + -0x2c]
0050b1ad  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0050b1b4  8bcf                      MOV ECX,EDI
0050b1b6  50                        PUSH EAX
0050b1b7  8d45a8                    LEA EAX,[EBP + -0x58]
0050b1ba  50                        PUSH EAX
0050b1bb  e870611b00                CALL 0x006c1330
0050b1c0  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0050b1c4  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
0050b1c7  83fa10                    CMP EDX,0x10
0050b1ca  7228                      JC 0x0050b1f4
0050b1cc  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0050b1cf  42                        INC EDX
0050b1d0  8bc1                      MOV EAX,ECX
0050b1d2  81fa00100000              CMP EDX,0x1000
0050b1d8  7210                      JC 0x0050b1ea
0050b1da  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050b1dd  83c223                    ADD EDX,0x23
0050b1e0  2bc1                      SUB EAX,ECX
0050b1e2  83c0fc                    ADD EAX,-0x4
0050b1e5  83f81f                    CMP EAX,0x1f
0050b1e8  7749                      JA 0x0050b233
0050b1ea  52                        PUSH EDX
0050b1eb  51                        PUSH ECX
0050b1ec  e86b3f5e00                CALL 0x00aef15c
0050b1f1  83c408                    ADD ESP,0x8
0050b1f4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050b1fb  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0050b1fe  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0050b205  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0050b20c  c645a800                  MOV byte ptr [EBP + -0x58],0x0
0050b210  83fa10                    CMP EDX,0x10
0050b213  722e                      JC 0x0050b243
0050b215  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0050b218  42                        INC EDX
0050b219  8bc1                      MOV EAX,ECX
0050b21b  81fa00100000              CMP EDX,0x1000
0050b221  7216                      JC 0x0050b239
0050b223  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050b226  83c223                    ADD EDX,0x23
0050b229  2bc1                      SUB EAX,ECX
0050b22b  83c0fc                    ADD EAX,-0x4
0050b22e  83f81f                    CMP EAX,0x1f
0050b231  7606                      JBE 0x0050b239
0050b233  ff159488b100              CALL dword ptr [0x00b18894]
0050b239  52                        PUSH EDX
0050b23a  51                        PUSH ECX
0050b23b  e81c3f5e00                CALL 0x00aef15c
0050b240  83c408                    ADD ESP,0x8
0050b243  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0050b247  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0050b24f  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050b252  7505                      JNZ 0x0050b259
0050b254  83f80b                    CMP EAX,0xb
0050b257  740b                      JZ 0x0050b264
0050b259  3dee000000                CMP EAX,0xee
0050b25e  0f85f4020000              JNZ 0x0050b558
0050b264  8bb79c000000              MOV ESI,dword ptr [EDI + 0x9c]
0050b26a  85f6                      TEST ESI,ESI
0050b26c  744d                      JZ 0x0050b2bb
0050b26e  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0050b272  8bc6                      MOV EAX,ESI
0050b274  7202                      JC 0x0050b278
0050b276  8b06                      MOV EAX,dword ptr [ESI]
0050b278  b9c0dcb100                MOV ECX,0xb1dcc0
0050b27d  0f1f00                    NOP dword ptr [EAX]
0050b280  8a10                      MOV DL,byte ptr [EAX]
0050b282  3a11                      CMP DL,byte ptr [ECX]
0050b284  751a                      JNZ 0x0050b2a0
0050b286  84d2                      TEST DL,DL
0050b288  7412                      JZ 0x0050b29c
0050b28a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050b28d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0050b290  750e                      JNZ 0x0050b2a0
0050b292  83c002                    ADD EAX,0x2
0050b295  83c102                    ADD ECX,0x2
0050b298  84d2                      TEST DL,DL
0050b29a  75e4                      JNZ 0x0050b280
0050b29c  33c0                      XOR EAX,EAX
0050b29e  eb05                      JMP 0x0050b2a5
0050b2a0  1bc0                      SBB EAX,EAX
0050b2a2  83c801                    OR EAX,0x1
0050b2a5  85c0                      TEST EAX,EAX
0050b2a7  7512                      JNZ 0x0050b2bb
0050b2a9  384634                    CMP byte ptr [ESI + 0x34],AL
0050b2ac  7436                      JZ 0x0050b2e4
0050b2ae  3887ac000000              CMP byte ptr [EDI + 0xac],AL
0050b2b4  8d7748                    LEA ESI,[EDI + 0x48]
0050b2b7  752b                      JNZ 0x0050b2e4
0050b2b9  eb03                      JMP 0x0050b2be
0050b2bb  8d7748                    LEA ESI,[EDI + 0x48]
0050b2be  6a01                      PUSH 0x1
0050b2c0  68c0dcb100                PUSH 0xb1dcc0
0050b2c5  8bce                      MOV ECX,ESI
0050b2c7  e824f8efff                CALL 0x0040aaf0
0050b2cc  84c0                      TEST AL,AL
0050b2ce  740c                      JZ 0x0050b2dc
0050b2d0  8d4e50                    LEA ECX,[ESI + 0x50]
0050b2d3  e8d8eeefff                CALL 0x0040a1b0
0050b2d8  c6466401                  MOV byte ptr [ESI + 0x64],0x1
0050b2dc  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0050b2e4  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0050b2ea  85d2                      TEST EDX,EDX
0050b2ec  0f8f47020000              JG 0x0050b539
0050b2f2  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050b2f8  25000a0001                AND EAX,0x1000a00
0050b2fd  83c800                    OR EAX,0x0
0050b300  0f8533020000              JNZ 0x0050b539
0050b306  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b30d  7412                      JZ 0x0050b321
0050b30f  6a07                      PUSH 0x7
0050b311  50                        PUSH EAX
0050b312  8bcf                      MOV ECX,EDI
0050b314  e847fb1b00                CALL 0x006cae60
0050b319  84c0                      TEST AL,AL
0050b31b  0f840b040000              JZ 0x0050b72c
0050b321  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b328  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0050b330  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
0050b338  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0050b340  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0050b348  7431                      JZ 0x0050b37b
0050b34a  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050b352  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0050b358  50                        PUSH EAX
0050b359  8bcf                      MOV ECX,EDI
0050b35b  e840d21c00                CALL 0x006d85a0
0050b360  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0050b364  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0050b36c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0050b371  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0050b379  eb64                      JMP 0x0050b3df
0050b37b  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0050b383  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0050b38b  0f28c1                    MOVAPS XMM0,XMM1
0050b38e  f30f59c1                  MULSS XMM0,XMM1
0050b392  0f28ca                    MOVAPS XMM1,XMM2
0050b395  f30f59ca                  MULSS XMM1,XMM2
0050b399  f30f58c1                  ADDSS XMM0,XMM1
0050b39d  e8aea6f2ff                CALL 0x00435a50
0050b3a2  0f28c8                    MOVAPS XMM1,XMM0
0050b3a5  0f57d2                    XORPS XMM2,XMM2
0050b3a8  0f2fca                    COMISS XMM1,XMM2
0050b3ab  762a                      JBE 0x0050b3d7
0050b3ad  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0050b3b5  f30f5ec1                  DIVSS XMM0,XMM1
0050b3b9  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0050b3c1  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0050b3c9  f30f5ec1                  DIVSS XMM0,XMM1
0050b3cd  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0050b3d5  eb08                      JMP 0x0050b3df
0050b3d7  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0050b3df  f30f108ddcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffedc]
0050b3e7  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0050b3ee  9f                        LAHF
0050b3ef  f6c444                    TEST AH,0x44
0050b3f2  7a11                      JP 0x0050b405
0050b3f4  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0050b3fb  9f                        LAHF
0050b3fc  f6c444                    TEST AH,0x44
0050b3ff  0f8b27030000              JNP 0x0050b72c
0050b405  837f280b                  CMP dword ptr [EDI + 0x28],0xb
0050b409  7524                      JNZ 0x0050b42f
0050b40b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b412  7404                      JZ 0x0050b418
0050b414  33d2                      XOR EDX,EDX
0050b416  eb0e                      JMP 0x0050b426
0050b418  e8433b1e00                CALL 0x006eef60
0050b41d  33d2                      XOR EDX,EDX
0050b41f  b914000000                MOV ECX,0x14
0050b424  f7f1                      DIV ECX
0050b426  8d4228                    LEA EAX,[EDX + 0x28]
0050b429  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0050b42f  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0050b435  e8f63af3ff                CALL 0x0043ef30
0050b43a  817f28ee000000            CMP dword ptr [EDI + 0x28],0xee
0050b441  c785f4feffff9a99993e      MOV dword ptr [EBP + 0xfffffef4],0x3e99999a
0050b44b  c785f0feffff0000a0c0      MOV dword ptr [EBP + 0xfffffef0],0xc0a00000
0050b455  7545                      JNZ 0x0050b49c
0050b457  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b45e  7404                      JZ 0x0050b464
0050b460  33d2                      XOR EDX,EDX
0050b462  eb0e                      JMP 0x0050b472
0050b464  e8f73a1e00                CALL 0x006eef60
0050b469  33d2                      XOR EDX,EDX
0050b46b  b91e000000                MOV ECX,0x1e
0050b470  f7f1                      DIV ECX
0050b472  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0050b479  8d423c                    LEA EAX,[EDX + 0x3c]
0050b47c  838d40ffffff02            OR dword ptr [EBP + 0xffffff40],0x2
0050b483  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0050b489  8b8544ffffff              MOV EAX,dword ptr [EBP + 0xffffff44]
0050b48f  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
0050b495  0f118524ffffff            MOVUPS xmmword ptr [EBP + 0xffffff24],XMM0
0050b49c  e80fe71a00                CALL 0x006b9bb0
0050b4a1  83e806                    SUB EAX,0x6
0050b4a4  7416                      JZ 0x0050b4bc
0050b4a6  83e815                    SUB EAX,0x15
0050b4a9  7411                      JZ 0x0050b4bc
0050b4ab  83e801                    SUB EAX,0x1
0050b4ae  7516                      JNZ 0x0050b4c6
0050b4b0  c7857cffffff03000000      MOV dword ptr [EBP + 0xffffff7c],0x3
0050b4ba  eb0a                      JMP 0x0050b4c6
0050b4bc  c7857cffffff04000000      MOV dword ptr [EBP + 0xffffff7c],0x4
0050b4c6  f30f108ddcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffedc]
0050b4ce  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0050b4d4  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0050b4dc  8d873c030000              LEA EAX,[EDI + 0x33c]
0050b4e2  51                        PUSH ECX
0050b4e3  6a00                      PUSH 0x0
0050b4e5  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
0050b4eb  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0050b4f3  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0050b4fb  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0050b503  51                        PUSH ECX
0050b504  50                        PUSH EAX
0050b505  8bcf                      MOV ECX,EDI
0050b507  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
0050b50f  e8ccfd1b00                CALL 0x006cb2e0
0050b514  51                        PUSH ECX
0050b515  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050b51c  6a00                      PUSH 0x0
0050b51e  6a02                      PUSH 0x2
0050b520  51                        PUSH ECX
0050b521  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050b528  8bcf                      MOV ECX,EDI
0050b52a  68b2000000                PUSH 0xb2
0050b52f  e86cb61c00                CALL 0x006d6ba0
0050b534  e9f3010000                JMP 0x0050b72c
0050b539  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0050b541  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050b549  2bc8                      SUB ECX,EAX
0050b54b  03ca                      ADD ECX,EDX
0050b54d  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
0050b553  e9d4010000                JMP 0x0050b72c
0050b558  3dd2000000                CMP EAX,0xd2
0050b55d  0f854a010000              JNZ 0x0050b6ad
0050b563  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0050b56a  0f8f20010000              JG 0x0050b690
0050b570  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050b576  25000a0001                AND EAX,0x1000a00
0050b57b  83c800                    OR EAX,0x0
0050b57e  0f850c010000              JNZ 0x0050b690
0050b584  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b58b  741f                      JZ 0x0050b5ac
0050b58d  6a07                      PUSH 0x7
0050b58f  50                        PUSH EAX
0050b590  8bcf                      MOV ECX,EDI
0050b592  e8c9f81b00                CALL 0x006cae60
0050b597  84c0                      TEST AL,AL
0050b599  7511                      JNZ 0x0050b5ac
0050b59b  6a09                      PUSH 0x9
0050b59d  8bcf                      MOV ECX,EDI
0050b59f  e8bccc1c00                CALL 0x006d8260
0050b5a4  84c0                      TEST AL,AL
0050b5a6  0f84e4000000              JZ 0x0050b690
0050b5ac  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0050b5b4  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0050b5bc  f30f59c0                  MULSS XMM0,XMM0
0050b5c0  f30f59c9                  MULSS XMM1,XMM1
0050b5c4  f30f58c1                  ADDSS XMM0,XMM1
0050b5c8  e883a4f2ff                CALL 0x00435a50
0050b5cd  0f57d2                    XORPS XMM2,XMM2
0050b5d0  0f2fc2                    COMISS XMM0,XMM2
0050b5d3  0f8653010000              JBE 0x0050b72c
0050b5d9  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b5e0  7404                      JZ 0x0050b5e6
0050b5e2  33d2                      XOR EDX,EDX
0050b5e4  eb0e                      JMP 0x0050b5f4
0050b5e6  e875391e00                CALL 0x006eef60
0050b5eb  33d2                      XOR EDX,EDX
0050b5ed  b91e000000                MOV ECX,0x1e
0050b5f2  f7f1                      DIV ECX
0050b5f4  8d421e                    LEA EAX,[EDX + 0x1e]
0050b5f7  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0050b5fd  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0050b603  e82839f3ff                CALL 0x0043ef30
0050b608  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0050b610  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
0050b618  c785f0feffff0000a040      MOV dword ptr [EBP + 0xfffffef0],0x40a00000
0050b622  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
0050b62c  c7854cffffff0000a040      MOV dword ptr [EBP + 0xffffff4c],0x40a00000
0050b636  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0050b63e  e81d391e00                CALL 0x006eef60
0050b643  b903000000                MOV ECX,0x3
0050b648  33d2                      XOR EDX,EDX
0050b64a  f7f1                      DIV ECX
0050b64c  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0050b652  50                        PUSH EAX
0050b653  51                        PUSH ECX
0050b654  c7042400002041            MOV dword ptr [ESP],0x41200000
0050b65b  8bcf                      MOV ECX,EDI
0050b65d  6840b6c700                PUSH 0xc7b640
0050b662  8d4203                    LEA EAX,[EDX + 0x3]
0050b665  50                        PUSH EAX
0050b666  e865171c00                CALL 0x006ccdd0
0050b66b  51                        PUSH ECX
0050b66c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050b673  6a00                      PUSH 0x0
0050b675  6a02                      PUSH 0x2
0050b677  51                        PUSH ECX
0050b678  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050b67f  8bcf                      MOV ECX,EDI
0050b681  68b2000000                PUSH 0xb2
0050b686  e815b51c00                CALL 0x006d6ba0
0050b68b  e99c000000                JMP 0x0050b72c
0050b690  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0050b698  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050b6a0  2bc8                      SUB ECX,EAX
0050b6a2  018fa00b0000              ADD dword ptr [EDI + 0xba0],ECX
0050b6a8  e97f000000                JMP 0x0050b72c
0050b6ad  3d18010000                CMP EAX,0x118
0050b6b2  7578                      JNZ 0x0050b72c
0050b6b4  8bb79c000000              MOV ESI,dword ptr [EDI + 0x9c]
0050b6ba  85f6                      TEST ESI,ESI
0050b6bc  744d                      JZ 0x0050b70b
0050b6be  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0050b6c2  8bc6                      MOV EAX,ESI
0050b6c4  7202                      JC 0x0050b6c8
0050b6c6  8b06                      MOV EAX,dword ptr [ESI]
0050b6c8  b9740db600                MOV ECX,0xb60d74
0050b6cd  0f1f00                    NOP dword ptr [EAX]
0050b6d0  8a10                      MOV DL,byte ptr [EAX]
0050b6d2  3a11                      CMP DL,byte ptr [ECX]
0050b6d4  751a                      JNZ 0x0050b6f0
0050b6d6  84d2                      TEST DL,DL
0050b6d8  7412                      JZ 0x0050b6ec
0050b6da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050b6dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0050b6e0  750e                      JNZ 0x0050b6f0
0050b6e2  83c002                    ADD EAX,0x2
0050b6e5  83c102                    ADD ECX,0x2
0050b6e8  84d2                      TEST DL,DL
0050b6ea  75e4                      JNZ 0x0050b6d0
0050b6ec  33c0                      XOR EAX,EAX
0050b6ee  eb05                      JMP 0x0050b6f5
0050b6f0  1bc0                      SBB EAX,EAX
0050b6f2  83c801                    OR EAX,0x1
0050b6f5  85c0                      TEST EAX,EAX
0050b6f7  7512                      JNZ 0x0050b70b
0050b6f9  384634                    CMP byte ptr [ESI + 0x34],AL
0050b6fc  742e                      JZ 0x0050b72c
0050b6fe  3887ac000000              CMP byte ptr [EDI + 0xac],AL
0050b704  8d7748                    LEA ESI,[EDI + 0x48]
0050b707  7523                      JNZ 0x0050b72c
0050b709  eb03                      JMP 0x0050b70e
0050b70b  8d7748                    LEA ESI,[EDI + 0x48]
0050b70e  6a01                      PUSH 0x1
0050b710  68740db600                PUSH 0xb60d74
0050b715  8bce                      MOV ECX,ESI
0050b717  e8d4f3efff                CALL 0x0040aaf0
0050b71c  84c0                      TEST AL,AL
0050b71e  740c                      JZ 0x0050b72c
0050b720  8d4e50                    LEA ECX,[ESI + 0x50]
0050b723  e888eaefff                CALL 0x0040a1b0
0050b728  c6466401                  MOV byte ptr [ESI + 0x64],0x1
0050b72c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050b734  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0050b73c  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050b742  2500080001                AND EAX,0x1000800
0050b747  83c800                    OR EAX,0x0
0050b74a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050b752  745f                      JZ 0x0050b7b3
0050b754  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b75b  7556                      JNZ 0x0050b7b3
0050b75d  8bcf                      MOV ECX,EDI
0050b75f  e8dc301b00                CALL 0x006be840
0050b764  6a00                      PUSH 0x0
0050b766  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0050b76c  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0050b772  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0050b778  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0050b77e  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
0050b784  8d8f14040000              LEA ECX,[EDI + 0x414]
0050b78a  50                        PUSH EAX
0050b78b  e8b0912d00                CALL 0x007e4940
0050b790  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0050b797  7e27                      JLE 0x0050b7c0
0050b799  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050b7a1  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050b7a9  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050b7b1  eb0d                      JMP 0x0050b7c0
0050b7b3  6a00                      PUSH 0x0
0050b7b5  8d8f14040000              LEA ECX,[EDI + 0x414]
0050b7bb  e840ab2d00                CALL 0x007e6300
0050b7c0  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
0050b7c8  0f57d2                    XORPS XMM2,XMM2
0050b7cb  8bcf                      MOV ECX,EDI
0050b7cd  e88e0f1a00                CALL 0x006ac760
0050b7d2  85c0                      TEST EAX,EAX
0050b7d4  0f84b6010000              JZ 0x0050b990
0050b7da  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050b7dd  3dd3000000                CMP EAX,0xd3
0050b7e2  0f858e000000              JNZ 0x0050b876
0050b7e8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050b7ee  2500000001                AND EAX,0x1000000
0050b7f3  83c800                    OR EAX,0x0
0050b7f6  0f8594010000              JNZ 0x0050b990
0050b7fc  e85f371e00                CALL 0x006eef60
0050b801  50                        PUSH EAX
0050b802  6a00                      PUSH 0x0
0050b804  57                        PUSH EDI
0050b805  6840b6c700                PUSH 0xc7b640
0050b80a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0050b810  51                        PUSH ECX
0050b811  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050b817  6a16                      PUSH 0x16
0050b819  68e8030000                PUSH 0x3e8
0050b81e  e8fdd2f1ff                CALL 0x00428b20
0050b823  8bf0                      MOV ESI,EAX
0050b825  e836371e00                CALL 0x006eef60
0050b82a  8bce                      MOV ECX,ESI
0050b82c  660f6ec0                  MOVD XMM0,EAX
0050b830  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050b834  c1e81f                    SHR EAX,0x1f
0050b837  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050b840  8b06                      MOV EAX,dword ptr [ESI]
0050b842  660f5ac0                  CVTPD2PS XMM0,XMM0
0050b846  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050b84e  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0050b856  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0050b85e  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0050b866  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0050b86e  ff500c                    CALL dword ptr [EAX + 0xc]
0050b871  e91a010000                JMP 0x0050b990
0050b876  3dd2000000                CMP EAX,0xd2
0050b87b  7545                      JNZ 0x0050b8c2
0050b87d  e8de361e00                CALL 0x006eef60
0050b882  51                        PUSH ECX
0050b883  8bcf                      MOV ECX,EDI
0050b885  660f6ec0                  MOVD XMM0,EAX
0050b889  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050b88d  c1e81f                    SHR EAX,0x1f
0050b890  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050b899  660f5ac8                  CVTPD2PS XMM1,XMM0
0050b89d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0050b8a5  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
0050b8ad  f30f580d80a2ba00          ADDSS XMM1,dword ptr [0x00baa280]
0050b8b5  f30f110c24                MOVSS dword ptr [ESP],XMM1
0050b8ba  e811ac1a00                CALL 0x006b64d0
0050b8bf  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050b8c2  3dee000000                CMP EAX,0xee
0050b8c7  0f8581000000              JNZ 0x0050b94e
0050b8cd  e88e361e00                CALL 0x006eef60
0050b8d2  51                        PUSH ECX
0050b8d3  8bcf                      MOV ECX,EDI
0050b8d5  660f6ec0                  MOVD XMM0,EAX
0050b8d9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050b8dd  c1e81f                    SHR EAX,0x1f
0050b8e0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050b8e9  660f5ac0                  CVTPD2PS XMM0,XMM0
0050b8ed  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050b8f5  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0050b8fd  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0050b905  f30f110424                MOVSS dword ptr [ESP],XMM0
0050b90a  e8c1ab1a00                CALL 0x006b64d0
0050b90f  6a01                      PUSH 0x1
0050b911  8bc8                      MOV ECX,EAX
0050b913  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0050b91a  6a00                      PUSH 0x0
0050b91c  0f57c0                    XORPS XMM0,XMM0
0050b91f  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
0050b926  68ff000000                PUSH 0xff
0050b92b  8b01                      MOV EAX,dword ptr [ECX]
0050b92d  8d55c0                    LEA EDX,[EBP + -0x40]
0050b930  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0050b934  6aff                      PUSH -0x1
0050b936  0f280530c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac030]
0050b93d  52                        PUSH EDX
0050b93e  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0050b942  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0050b949  ff503c                    CALL dword ptr [EAX + 0x3c]
0050b94c  eb42                      JMP 0x0050b990
0050b94e  e80d361e00                CALL 0x006eef60
0050b953  51                        PUSH ECX
0050b954  8bcf                      MOV ECX,EDI
0050b956  660f6ec0                  MOVD XMM0,EAX
0050b95a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050b95e  c1e81f                    SHR EAX,0x1f
0050b961  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050b96a  660f5ac0                  CVTPD2PS XMM0,XMM0
0050b96e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050b976  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0050b97e  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0050b986  f30f110424                MOVSS dword ptr [ESP],XMM0
0050b98b  e840ab1a00                CALL 0x006b64d0
0050b990  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050b993  3d18010000                CMP EAX,0x118
0050b998  0f858f010000              JNZ 0x0050bb2d
0050b99e  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0050b9a4  85d2                      TEST EDX,EDX
0050b9a6  0f8f0a020000              JG 0x0050bbb6
0050b9ac  8bcf                      MOV ECX,EDI
0050b9ae  e86db21c00                CALL 0x006d6c20
0050b9b3  83f805                    CMP EAX,0x5
0050b9b6  0f8d6e010000              JGE 0x0050bb2a
0050b9bc  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b9c3  741b                      JZ 0x0050b9e0
0050b9c5  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0050b9cd  8bcf                      MOV ECX,EDI
0050b9cf  6a07                      PUSH 0x7
0050b9d1  6a00                      PUSH 0x0
0050b9d3  e888f41b00                CALL 0x006cae60
0050b9d8  84c0                      TEST AL,AL
0050b9da  0f844a010000              JZ 0x0050bb2a
0050b9e0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050b9e7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0050b9ef  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0050b9f7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0050b9ff  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0050ba07  7470                      JZ 0x0050ba79
0050ba09  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050ba11  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0050ba17  50                        PUSH EAX
0050ba18  8bcf                      MOV ECX,EDI
0050ba1a  e881cb1c00                CALL 0x006d85a0
0050ba1f  f30f1095d8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed8]
0050ba27  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
0050ba2e  f30f108ddcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffedc]
0050ba36  9f                        LAHF
0050ba37  f6c444                    TEST AH,0x44
0050ba3a  7a0d                      JP 0x0050ba49
0050ba3c  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
0050ba43  9f                        LAHF
0050ba44  f6c444                    TEST AH,0x44
0050ba47  7b30                      JNP 0x0050ba79
0050ba49  f30f5915a0a9ba00          MULSS XMM2,dword ptr [0x00baa9a0]
0050ba51  f30f590da0a9ba00          MULSS XMM1,dword ptr [0x00baa9a0]
0050ba59  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0050ba61  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0050ba69  f30f1195e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM2
0050ba71  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0050ba79  51                        PUSH ECX
0050ba7a  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0050ba81  8db73c030000              LEA ESI,[EDI + 0x33c]
0050ba87  6a00                      PUSH 0x0
0050ba89  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
0050ba8f  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
0050ba95  57                        PUSH EDI
0050ba96  56                        PUSH ESI
0050ba97  e8b46c1b00                CALL 0x006c2750
0050ba9c  83c414                    ADD ESP,0x14
0050ba9f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050baa6  6a00                      PUSH 0x0
0050baa8  6a02                      PUSH 0x2
0050baaa  51                        PUSH ECX
0050baab  c704240000003f            MOV dword ptr [ESP],0x3f000000
0050bab2  8bcf                      MOV ECX,EDI
0050bab4  68b5000000                PUSH 0xb5
0050bab9  e8e2b01c00                CALL 0x006d6ba0
0050babe  8d4d94                    LEA ECX,[EBP + -0x6c]
0050bac1  e8aab6efff                CALL 0x00407170
0050bac6  6840b6c700                PUSH 0xc7b640
0050bacb  50                        PUSH EAX
0050bacc  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0050bad2  c785e0feffff00000000      MOV dword ptr [EBP + 0xfffffee0],0x0
0050badc  50                        PUSH EAX
0050badd  8bd6                      MOV EDX,ESI
0050badf  c785e4feffff000020c1      MOV dword ptr [EBP + 0xfffffee4],0xc1200000
0050bae9  b901000000                MOV ECX,0x1
0050baee  e8fdc11c00                CALL 0x006d7cf0
0050baf3  83c40c                    ADD ESP,0xc
0050baf6  8bc8                      MOV ECX,EAX
0050baf8  c780580300000000803f      MOV dword ptr [EAX + 0x358],0x3f800000
0050bb02  57                        PUSH EDI
0050bb03  e8a8a9f4ff                CALL 0x004564b0
0050bb08  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050bb0f  7407                      JZ 0x0050bb18
0050bb11  b85a000000                MOV EAX,0x5a
0050bb16  eb0c                      JMP 0x0050bb24
0050bb18  e843341e00                CALL 0x006eef60
0050bb1d  83e001                    AND EAX,0x1
0050bb20  40                        INC EAX
0050bb21  6bc05a                    IMUL EAX,EAX,0x5a
0050bb24  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0050bb2a  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050bb2d  3dd2000000                CMP EAX,0xd2
0050bb32  7407                      JZ 0x0050bb3b
0050bb34  3dd3000000                CMP EAX,0xd3
0050bb39  755d                      JNZ 0x0050bb98
0050bb3b  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0050bb3e  33d2                      XOR EDX,EDX
0050bb40  b932000000                MOV ECX,0x32
0050bb45  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
0050bb4d  f7f1                      DIV ECX
0050bb4f  8bcf                      MOV ECX,EDI
0050bb51  660f6ec2                  MOVD XMM0,EDX
0050bb55  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050bb59  c1ea1f                    SHR EDX,0x1f
0050bb5c  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
0050bb65  660f5ad0                  CVTPD2PS XMM2,XMM0
0050bb69  e8f20b1a00                CALL 0x006ac760
0050bb6e  85c0                      TEST EAX,EAX
0050bb70  7426                      JZ 0x0050bb98
0050bb72  e8e9331e00                CALL 0x006eef60
0050bb77  a801                      TEST AL,0x1
0050bb79  751d                      JNZ 0x0050bb98
0050bb7b  51                        PUSH ECX
0050bb7c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050bb83  6a00                      PUSH 0x0
0050bb85  6a02                      PUSH 0x2
0050bb87  51                        PUSH ECX
0050bb88  c704243333333f            MOV dword ptr [ESP],0x3f333333
0050bb8f  8bcf                      MOV ECX,EDI
0050bb91  6a03                      PUSH 0x3
0050bb93  e808b01c00                CALL 0x006d6ba0
0050bb98  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0050bb9b  64890d00000000            MOV dword ptr FS:[0x0],ECX
0050bba2  59                        POP ECX
0050bba3  5f                        POP EDI
0050bba4  5e                        POP ESI
0050bba5  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0050bba8  33cd                      XOR ECX,EBP
0050bbaa  e87c355e00                CALL 0x00aef12b
0050bbaf  8be5                      MOV ESP,EBP
0050bbb1  5d                        POP EBP
0050bbb2  8be3                      MOV ESP,EBX
0050bbb4  5b                        POP EBX
0050bbb5  c3                        RET
0050bbb6  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0050bbbe  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050bbc6  2bc8                      SUB ECX,EAX
0050bbc8  03ca                      ADD ECX,EDX
0050bbca  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
0050bbd0  ebc6                      JMP 0x0050bb98
