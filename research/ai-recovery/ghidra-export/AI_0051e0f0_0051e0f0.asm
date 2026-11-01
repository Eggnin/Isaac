; J460 NPC AI 0x0051e0f0 AI_0051e0f0
; types=271,272
; identities=271.0.0,271.1.0,272.0.0,272.1.0
; entry=0051e0f0
0051e0f0  53                        PUSH EBX
0051e0f1  8bdc                      MOV EBX,ESP
0051e0f3  83ec08                    SUB ESP,0x8
0051e0f6  83e4f8                    AND ESP,0xfffffff8
0051e0f9  83c404                    ADD ESP,0x4
0051e0fc  55                        PUSH EBP
0051e0fd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0051e100  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0051e104  8bec                      MOV EBP,ESP
0051e106  6aff                      PUSH -0x1
0051e108  686d45af00                PUSH 0xaf456d
0051e10d  64a100000000              MOV EAX,FS:[0x0]
0051e113  50                        PUSH EAX
0051e114  53                        PUSH EBX
0051e115  81ec40010000              SUB ESP,0x140
0051e11b  a1b493bf00                MOV EAX,[0x00bf93b4]
0051e120  33c5                      XOR EAX,EBP
0051e122  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0051e125  56                        PUSH ESI
0051e126  57                        PUSH EDI
0051e127  50                        PUSH EAX
0051e128  8d45f4                    LEA EAX,[EBP + -0xc]
0051e12b  64a300000000              MOV FS:[0x0],EAX
0051e131  8bf9                      MOV EDI,ECX
0051e133  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
0051e13b  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0051e141  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0051e149  2bd0                      SUB EDX,EAX
0051e14b  85c9                      TEST ECX,ECX
0051e14d  0f8505020000              JNZ 0x0051e358
0051e153  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0051e157  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051e161  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0051e167  0f855a110000              JNZ 0x0051f2c7
0051e16d  33f6                      XOR ESI,ESI
0051e16f  89b5dcfeffff              MOV dword ptr [EBP + 0xfffffedc],ESI
0051e175  39b7c8000000              CMP dword ptr [EDI + 0xc8],ESI
0051e17b  0f8660010000              JBE 0x0051e2e1
0051e181  8d4748                    LEA EAX,[EDI + 0x48]
0051e184  56                        PUSH ESI
0051e185  8bc8                      MOV ECX,EAX
0051e187  e894d0eeff                CALL 0x0040b220
0051e18c  8b00                      MOV EAX,dword ptr [EAX]
0051e18e  85c0                      TEST EAX,EAX
0051e190  7414                      JZ 0x0051e1a6
0051e192  83c020                    ADD EAX,0x20
0051e195  8d4dd4                    LEA ECX,[EBP + -0x2c]
0051e198  50                        PUSH EAX
0051e199  e8b2edeeff                CALL 0x0040cf50
0051e19e  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
0051e1a1  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0051e1a4  eb17                      JMP 0x0051e1bd
0051e1a6  33c0                      XOR EAX,EAX
0051e1a8  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
0051e1af  b90f000000                MOV ECX,0xf
0051e1b4  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0051e1b7  894de8                    MOV dword ptr [EBP + -0x18],ECX
0051e1ba  8845d4                    MOV byte ptr [EBP + -0x2c],AL
0051e1bd  83f910                    CMP ECX,0x10
0051e1c0  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0051e1c7  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0051e1ca  8d55d4                    LEA EDX,[EBP + -0x2c]
0051e1cd  0f43d1                    CMOVNC EDX,ECX
0051e1d0  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0051e1d6  8995e4feffff              MOV dword ptr [EBP + 0xfffffee4],EDX
0051e1dc  83f805                    CMP EAX,0x5
0051e1df  0f82b1000000              JC 0x0051e296
0051e1e5  83c0fc                    ADD EAX,-0x4
0051e1e8  03c2                      ADD EAX,EDX
0051e1ea  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0051e1f0  2bc2                      SUB EAX,EDX
0051e1f2  50                        PUSH EAX
0051e1f3  6a41                      PUSH 0x41
0051e1f5  52                        PUSH EDX
0051e1f6  e8f6235d00                CALL 0x00af05f1
0051e1fb  8bc8                      MOV ECX,EAX
0051e1fd  83c40c                    ADD ESP,0xc
0051e200  85c9                      TEST ECX,ECX
0051e202  0f8488000000              JZ 0x0051e290
0051e208  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0051e210  8bd1                      MOV EDX,ECX
0051e212  c785c4feffff01000000      MOV dword ptr [EBP + 0xfffffec4],0x1
0051e21c  be38ceb100                MOV ESI,0xb1ce38
0051e221  8b02                      MOV EAX,dword ptr [EDX]
0051e223  3b06                      CMP EAX,dword ptr [ESI]
0051e225  7510                      JNZ 0x0051e237
0051e227  83c204                    ADD EDX,0x4
0051e22a  c785c4fefffffdffffff      MOV dword ptr [EBP + 0xfffffec4],0xfffffffd
0051e234  83c604                    ADD ESI,0x4
0051e237  8a02                      MOV AL,byte ptr [EDX]
0051e239  3a06                      CMP AL,byte ptr [ESI]
0051e23b  7525                      JNZ 0x0051e262
0051e23d  83bdc4fefffffd            CMP dword ptr [EBP + 0xfffffec4],-0x3
0051e244  7418                      JZ 0x0051e25e
0051e246  8a4201                    MOV AL,byte ptr [EDX + 0x1]
0051e249  3a4601                    CMP AL,byte ptr [ESI + 0x1]
0051e24c  7514                      JNZ 0x0051e262
0051e24e  8a4202                    MOV AL,byte ptr [EDX + 0x2]
0051e251  3a4602                    CMP AL,byte ptr [ESI + 0x2]
0051e254  750c                      JNZ 0x0051e262
0051e256  8a4203                    MOV AL,byte ptr [EDX + 0x3]
0051e259  3a4603                    CMP AL,byte ptr [ESI + 0x3]
0051e25c  7504                      JNZ 0x0051e262
0051e25e  33c0                      XOR EAX,EAX
0051e260  eb05                      JMP 0x0051e267
0051e262  1bc0                      SBB EAX,EAX
0051e264  83c801                    OR EAX,0x1
0051e267  85c0                      TEST EAX,EAX
0051e269  0f8480000000              JZ 0x0051e2ef
0051e26f  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
0051e275  41                        INC ECX
0051e276  2bc1                      SUB EAX,ECX
0051e278  50                        PUSH EAX
0051e279  6a41                      PUSH 0x41
0051e27b  51                        PUSH ECX
0051e27c  e870235d00                CALL 0x00af05f1
0051e281  8bc8                      MOV ECX,EAX
0051e283  83c40c                    ADD ESP,0xc
0051e286  85c9                      TEST ECX,ECX
0051e288  7586                      JNZ 0x0051e210
0051e28a  8bb5dcfeffff              MOV ESI,dword ptr [EBP + 0xfffffedc]
0051e290  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
0051e296  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0051e29d  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0051e2a0  83fa10                    CMP EDX,0x10
0051e2a3  7229                      JC 0x0051e2ce
0051e2a5  42                        INC EDX
0051e2a6  8bc1                      MOV EAX,ECX
0051e2a8  81fa00100000              CMP EDX,0x1000
0051e2ae  7214                      JC 0x0051e2c4
0051e2b0  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051e2b3  83c223                    ADD EDX,0x23
0051e2b6  2bc1                      SUB EAX,ECX
0051e2b8  83c0fc                    ADD EAX,-0x4
0051e2bb  83f81f                    CMP EAX,0x1f
0051e2be  0f878e000000              JA 0x0051e352
0051e2c4  52                        PUSH EDX
0051e2c5  51                        PUSH ECX
0051e2c6  e8910e5d00                CALL 0x00aef15c
0051e2cb  83c408                    ADD ESP,0x8
0051e2ce  46                        INC ESI
0051e2cf  89b5dcfeffff              MOV dword ptr [EBP + 0xfffffedc],ESI
0051e2d5  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
0051e2db  0f82a0feffff              JC 0x0051e181
0051e2e1  51                        PUSH ECX
0051e2e2  8d4f48                    LEA ECX,[EDI + 0x48]
0051e2e5  e816ddeeff                CALL 0x0040c000
0051e2ea  e9d80f0000                JMP 0x0051f2c7
0051e2ef  2b8de4feffff              SUB ECX,dword ptr [EBP + 0xfffffee4]
0051e2f5  83f9ff                    CMP ECX,-0x1
0051e2f8  7490                      JZ 0x0051e28a
0051e2fa  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0051e2fd  8d48fc                    LEA ECX,[EAX + -0x4]
0051e300  3bc8                      CMP ECX,EAX
0051e302  7717                      JA 0x0051e31b
0051e304  837de810                  CMP dword ptr [EBP + -0x18],0x10
0051e308  8d45d4                    LEA EAX,[EBP + -0x2c]
0051e30b  894de4                    MOV dword ptr [EBP + -0x1c],ECX
0051e30e  0f4385e8feffff            CMOVNC EAX,dword ptr [EBP + 0xfffffee8]
0051e315  c6040800                  MOV byte ptr [EAX + ECX*0x1],0x0
0051e319  eb0d                      JMP 0x0051e328
0051e31b  2bc8                      SUB ECX,EAX
0051e31d  6a00                      PUSH 0x0
0051e31f  51                        PUSH ECX
0051e320  8d4dd4                    LEA ECX,[EBP + -0x2c]
0051e323  e84865efff                CALL 0x00414870
0051e328  6a09                      PUSH 0x9
0051e32a  68700eb600                PUSH 0xb60e70
0051e32f  8d4dd4                    LEA ECX,[EBP + -0x2c]
0051e332  e8b9b4f7ff                CALL 0x004997f0
0051e337  8bb5dcfeffff              MOV ESI,dword ptr [EBP + 0xfffffedc]
0051e33d  8d45d4                    LEA EAX,[EBP + -0x2c]
0051e340  50                        PUSH EAX
0051e341  56                        PUSH ESI
0051e342  8d4f48                    LEA ECX,[EDI + 0x48]
0051e345  e8e6dbeeff                CALL 0x0040bf30
0051e34a  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0051e34d  e944ffffff                JMP 0x0051e296
0051e352  ff159488b100              CALL dword ptr [0x00b18894]
0051e358  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0051e35e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0051e366  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0051e36e  0f57c0                    XORPS XMM0,XMM0
0051e371  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
0051e37b  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
0051e381  8d0416                    LEA EAX,[ESI + EDX*0x1]
0051e384  898710040000              MOV dword ptr [EDI + 0x410],EAX
0051e38a  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0051e392  83f904                    CMP ECX,0x4
0051e395  0f8502080000              JNZ 0x0051eb9d
0051e39b  6a00                      PUSH 0x0
0051e39d  68d0d4b100                PUSH 0xb1d4d0
0051e3a2  8d4f48                    LEA ECX,[EDI + 0x48]
0051e3a5  e8d6bfeeff                CALL 0x0040a380
0051e3aa  8bcf                      MOV ECX,EDI
0051e3ac  e88f041a00                CALL 0x006be840
0051e3b1  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
0051e3b9  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
0051e3c1  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
0051e3c9  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
0051e3d1  0f28d4                    MOVAPS XMM2,XMM4
0051e3d4  f30f11a5e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM4
0051e3dc  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0051e3e3  0f28c3                    MOVAPS XMM0,XMM3
0051e3e6  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0051e3ed  0f2fd0                    COMISS XMM2,XMM0
0051e3f0  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
0051e3f8  0f869f000000              JBE 0x0051e49d
0051e3fe  817f280f010000            CMP dword ptr [EDI + 0x28],0x10f
0051e405  f30f591d54adba00          MULSS XMM3,dword ptr [0x00baad54]
0051e40d  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
0051e415  0f8582000000              JNZ 0x0051e49d
0051e41b  0f28c4                    MOVAPS XMM0,XMM4
0051e41e  f30f59db                  MULSS XMM3,XMM3
0051e422  f30f59c4                  MULSS XMM0,XMM4
0051e426  f30f58c3                  ADDSS XMM0,XMM3
0051e42a  e82176f1ff                CALL 0x00435a50
0051e42f  a17816c700                MOV EAX,[0x00c71678]
0051e434  0f28d8                    MOVAPS XMM3,XMM0
0051e437  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051e43f  f30f1015d0a8ba00          MOVSS XMM2,dword ptr [0x00baa8d0]
0051e447  0f28c8                    MOVAPS XMM1,XMM0
0051e44a  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
0051e451  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0051e457  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
0051e45f  f30f5c4818                SUBSS XMM1,dword ptr [EAX + 0x18]
0051e464  0f2fd1                    COMISS XMM2,XMM1
0051e467  760b                      JBE 0x0051e474
0051e469  0f57db                    XORPS XMM3,XMM3
0051e46c  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
0051e474  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0051e47b  f30f10a5e8feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffee8]
0051e483  7518                      JNZ 0x0051e49d
0051e485  f30f5c0514abba00          SUBSS XMM0,dword ptr [0x00baab14]
0051e48d  0f2fd0                    COMISS XMM2,XMM0
0051e490  760b                      JBE 0x0051e49d
0051e492  0f57db                    XORPS XMM3,XMM3
0051e495  f30f119ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM3
0051e49d  0f28c3                    MOVAPS XMM0,XMM3
0051e4a0  0f28cc                    MOVAPS XMM1,XMM4
0051e4a3  f30f59c3                  MULSS XMM0,XMM3
0051e4a7  f30f59cc                  MULSS XMM1,XMM4
0051e4ab  f30f58c1                  ADDSS XMM0,XMM1
0051e4af  e89c75f1ff                CALL 0x00435a50
0051e4b4  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0051e4bb  f30f109de8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee8]
0051e4c3  f30f1095dcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffedc]
0051e4cb  7617                      JBE 0x0051e4e4
0051e4cd  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0051e4d5  f30f5ec8                  DIVSS XMM1,XMM0
0051e4d9  0f28c1                    MOVAPS XMM0,XMM1
0051e4dc  f30f59d1                  MULSS XMM2,XMM1
0051e4e0  f30f59d8                  MULSS XMM3,XMM0
0051e4e4  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051e4eb  741a                      JZ 0x0051e507
0051e4ed  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
0051e4f3  0f57d2                    XORPS XMM2,XMM2
0051e4f6  50                        PUSH EAX
0051e4f7  8bcf                      MOV ECX,EDI
0051e4f9  e8d29d1b00                CALL 0x006d82d0
0051e4fe  f30f1018                  MOVSS XMM3,dword ptr [EAX]
0051e502  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0051e507  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051e50a  3d0f010000                CMP EAX,0x10f
0051e50f  7512                      JNZ 0x0051e523
0051e511  f30f591d28a5ba00          MULSS XMM3,dword ptr [0x00baa528]
0051e519  f30f591528a5ba00          MULSS XMM2,dword ptr [0x00baa528]
0051e521  eb17                      JMP 0x0051e53a
0051e523  3d10010000                CMP EAX,0x110
0051e528  7510                      JNZ 0x0051e53a
0051e52a  f30f591d60a5ba00          MULSS XMM3,dword ptr [0x00baa560]
0051e532  f30f591560a5ba00          MULSS XMM2,dword ptr [0x00baa560]
0051e53a  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0051e542  83c8ff                    OR EAX,0xffffffff
0051e545  0f28c1                    MOVAPS XMM0,XMM1
0051e548  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
0051e54e  f30f59c3                  MULSS XMM0,XMM3
0051e552  f30f59ca                  MULSS XMM1,XMM2
0051e556  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0051e55e  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0051e566  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0051e56e  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0051e576  39871c0f0000              CMP dword ptr [EDI + 0xf1c],EAX
0051e57c  0f84b1000000              JZ 0x0051e633
0051e582  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051e58a  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
0051e590  50                        PUSH EAX
0051e591  8bcf                      MOV ECX,EDI
0051e593  e808a01b00                CALL 0x006d85a0
0051e598  8bc8                      MOV ECX,EAX
0051e59a  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0051e59e  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0051e5a5  9f                        LAHF
0051e5a6  f6c444                    TEST AH,0x44
0051e5a9  7a68                      JP 0x0051e613
0051e5ab  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0051e5b0  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0051e5b7  9f                        LAHF
0051e5b8  f6c444                    TEST AH,0x44
0051e5bb  7a56                      JP 0x0051e613
0051e5bd  6a09                      PUSH 0x9
0051e5bf  8bcf                      MOV ECX,EDI
0051e5c1  e89a9c1b00                CALL 0x006d8260
0051e5c6  84c0                      TEST AL,AL
0051e5c8  7407                      JZ 0x0051e5d1
0051e5ca  b801000000                MOV EAX,0x1
0051e5cf  eb44                      JMP 0x0051e615
0051e5d1  6a0a                      PUSH 0xa
0051e5d3  8bcf                      MOV ECX,EDI
0051e5d5  e8869c1b00                CALL 0x006d8260
0051e5da  84c0                      TEST AL,AL
0051e5dc  7407                      JZ 0x0051e5e5
0051e5de  b802000000                MOV EAX,0x2
0051e5e3  eb30                      JMP 0x0051e615
0051e5e5  6a08                      PUSH 0x8
0051e5e7  8bcf                      MOV ECX,EDI
0051e5e9  e8729c1b00                CALL 0x006d8260
0051e5ee  84c0                      TEST AL,AL
0051e5f0  741c                      JZ 0x0051e60e
0051e5f2  817f2810010000            CMP dword ptr [EDI + 0x28],0x110
0051e5f9  7513                      JNZ 0x0051e60e
0051e5fb  8bcf                      MOV ECX,EDI
0051e5fd  e81e861b00                CALL 0x006d6c20
0051e602  83f802                    CMP EAX,0x2
0051e605  7f07                      JG 0x0051e60e
0051e607  b803000000                MOV EAX,0x3
0051e60c  eb07                      JMP 0x0051e615
0051e60e  83c8ff                    OR EAX,0xffffffff
0051e611  eb08                      JMP 0x0051e61b
0051e613  33c0                      XOR EAX,EAX
0051e615  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
0051e61b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051e622  740f                      JZ 0x0051e633
0051e624  f7d0                      NOT EAX
0051e626  c1e81f                    SHR EAX,0x1f
0051e629  85c0                      TEST EAX,EAX
0051e62b  0f84d20b0000              JZ 0x0051f203
0051e631  eb4a                      JMP 0x0051e67d
0051e633  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0051e639  b889888888                MOV EAX,0x88888889
0051e63e  f7ee                      IMUL ESI
0051e640  b889888888                MOV EAX,0x88888889
0051e645  03d6                      ADD EDX,ESI
0051e647  c1fa04                    SAR EDX,0x4
0051e64a  8bf2                      MOV ESI,EDX
0051e64c  c1ee1f                    SHR ESI,0x1f
0051e64f  03f2                      ADD ESI,EDX
0051e651  f7e9                      IMUL ECX
0051e653  03d1                      ADD EDX,ECX
0051e655  c1fa04                    SAR EDX,0x4
0051e658  8bc2                      MOV EAX,EDX
0051e65a  c1e81f                    SHR EAX,0x1f
0051e65d  03c2                      ADD EAX,EDX
0051e65f  3bc6                      CMP EAX,ESI
0051e661  0f8e9c0b0000              JLE 0x0051f203
0051e667  e8f4081d00                CALL 0x006eef60
0051e66c  33d2                      XOR EDX,EDX
0051e66e  b903000000                MOV ECX,0x3
0051e673  f7f1                      DIV ECX
0051e675  85d2                      TEST EDX,EDX
0051e677  0f85860b0000              JNZ 0x0051f203
0051e67d  817f2810010000            CMP dword ptr [EDI + 0x28],0x110
0051e684  be03000000                MOV ESI,0x3
0051e689  7512                      JNZ 0x0051e69d
0051e68b  8bcf                      MOV ECX,EDI
0051e68d  e88e851b00                CALL 0x006d6c20
0051e692  83f802                    CMP EAX,0x2
0051e695  b904000000                MOV ECX,0x4
0051e69a  0f4ef1                    CMOVLE ESI,ECX
0051e69d  e8be081d00                CALL 0x006eef60
0051e6a2  33d2                      XOR EDX,EDX
0051e6a4  f7f6                      DIV ESI
0051e6a6  817f280f010000            CMP dword ptr [EDI + 0x28],0x10f
0051e6ad  8bf2                      MOV ESI,EDX
0051e6af  752c                      JNZ 0x0051e6dd
0051e6b1  83fe01                    CMP ESI,0x1
0051e6b4  7405                      JZ 0x0051e6bb
0051e6b6  83fe02                    CMP ESI,0x2
0051e6b9  7522                      JNZ 0x0051e6dd
0051e6bb  8bcf                      MOV ECX,EDI
0051e6bd  e87e011a00                CALL 0x006be840
0051e6c2  0f57c9                    XORPS XMM1,XMM1
0051e6c5  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051e6cd  33c0                      XOR EAX,EAX
0051e6cf  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0051e6d7  0f2fc8                    COMISS XMM1,XMM0
0051e6da  0f47f0                    CMOVA ESI,EAX
0051e6dd  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051e6e4  7436                      JZ 0x0051e71c
0051e6e6  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051e6ee  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051e6f4  8bb5e8feffff              MOV ESI,dword ptr [EBP + 0xfffffee8]
0051e6fa  8bcf                      MOV ECX,EDI
0051e6fc  50                        PUSH EAX
0051e6fd  e89e9e1b00                CALL 0x006d85a0
0051e702  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0051e70a  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051e712  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0051e71a  eb18                      JMP 0x0051e734
0051e71c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051e724  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051e72c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051e734  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0051e73c  85f6                      TEST ESI,ESI
0051e73e  751b                      JNZ 0x0051e75b
0051e740  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0051e74a  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
0051e750  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0051e756  e9a80a0000                JMP 0x0051f203
0051e75b  83fe01                    CMP ESI,0x1
0051e75e  0f85dd010000              JNZ 0x0051e941
0051e764  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0051e76e  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0051e778  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051e77b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051e785  3d0f010000                CMP EAX,0x10f
0051e78a  0f8585000000              JNZ 0x0051e815
0051e790  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
0051e798  0f57db                    XORPS XMM3,XMM3
0051e79b  51                        PUSH ECX
0051e79c  0f28ca                    MOVAPS XMM1,XMM2
0051e79f  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0051e7a6  8d4dc0                    LEA ECX,[EBP + -0x40]
0051e7a9  e84251f0ff                CALL 0x004238f0
0051e7ae  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0051e7b6  8bf0                      MOV ESI,EAX
0051e7b8  e883edefff                CALL 0x0041d540
0051e7bd  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051e7c5  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0051e7cd  e84eedefff                CALL 0x0041d520
0051e7d2  51                        PUSH ECX
0051e7d3  c7042400008040            MOV dword ptr [ESP],0x40800000
0051e7da  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051e7e0  56                        PUSH ESI
0051e7e1  6a20                      PUSH 0x20
0051e7e3  50                        PUSH EAX
0051e7e4  8d95d0feffff              LEA EDX,[EBP + 0xfffffed0]
0051e7ea  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051e7f2  8bcf                      MOV ECX,EDI
0051e7f4  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
0051e7fe  c785d4feffff000020c2      MOV dword ptr [EBP + 0xfffffed4],0xc2200000
0051e808  e883d00e00                CALL 0x0060b890
0051e80d  83c410                    ADD ESP,0x10
0051e810  e9ee090000                JMP 0x0051f203
0051e815  3d10010000                CMP EAX,0x110
0051e81a  0f85e3090000              JNZ 0x0051f203
0051e820  0f57c9                    XORPS XMM1,XMM1
0051e823  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
0051e82b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0051e830  0f57c0                    XORPS XMM0,XMM0
0051e833  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0051e83a  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0051e83e  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0051e845  0f280540beba00            MOVAPS XMM0,xmmword ptr [0x00babe40]
0051e84c  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0051e850  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0051e857  0f28c1                    MOVAPS XMM0,XMM1
0051e85a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0051e862  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051e86a  e8d1ecefff                CALL 0x0041d540
0051e86f  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0051e877  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0051e87f  e89cecefff                CALL 0x0041d520
0051e884  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0051e88c  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0051e894  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0051e89c  f30f5e0578aaba00          DIVSS XMM0,dword ptr [0x00baaa78]
0051e8a4  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051e8ac  e88fecefff                CALL 0x0041d540
0051e8b1  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0051e8b9  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0051e8c1  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0051e8c9  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0051e8d1  e84aecefff                CALL 0x0041d520
0051e8d6  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0051e8de  8d45c0                    LEA EAX,[EBP + -0x40]
0051e8e1  51                        PUSH ECX
0051e8e2  c7042400008040            MOV dword ptr [ESP],0x40800000
0051e8e9  8d95d8feffff              LEA EDX,[EBP + 0xfffffed8]
0051e8ef  50                        PUSH EAX
0051e8f0  f30f5c0524a9ba00          SUBSS XMM0,dword ptr [0x00baa924]
0051e8f8  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0051e8fe  8bcf                      MOV ECX,EDI
0051e900  6a20                      PUSH 0x20
0051e902  50                        PUSH EAX
0051e903  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0051e90b  e880cf0e00                CALL 0x0060b890
0051e910  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
0051e918  83c410                    ADD ESP,0x10
0051e91b  f30f580db4a9ba00          ADDSS XMM1,dword ptr [0x00baa9b4]
0051e923  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
0051e92b  0f2fc1                    COMISS XMM0,XMM1
0051e92e  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
0051e936  0f87f4feffff              JA 0x0051e830
0051e93c  e9c2080000                JMP 0x0051f203
0051e941  83fe02                    CMP ESI,0x2
0051e944  0f8527020000              JNZ 0x0051eb71
0051e94a  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0051e954  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0051e95e  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051e961  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051e96b  3d0f010000                CMP EAX,0x10f
0051e970  0f85c4000000              JNZ 0x0051ea3a
0051e976  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
0051e97e  0f57db                    XORPS XMM3,XMM3
0051e981  51                        PUSH ECX
0051e982  0f28ca                    MOVAPS XMM1,XMM2
0051e985  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0051e98c  8d4dc0                    LEA ECX,[EBP + -0x40]
0051e98f  e85c4ff0ff                CALL 0x004238f0
0051e994  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
0051e99c  8bf0                      MOV ESI,EAX
0051e99e  e89debefff                CALL 0x0041d540
0051e9a3  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051e9ab  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
0051e9b3  e868ebefff                CALL 0x0041d520
0051e9b8  51                        PUSH ECX
0051e9b9  c7042400008040            MOV dword ptr [ESP],0x40800000
0051e9c0  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051e9c6  56                        PUSH ESI
0051e9c7  6a20                      PUSH 0x20
0051e9c9  50                        PUSH EAX
0051e9ca  8d95d0feffff              LEA EDX,[EBP + 0xfffffed0]
0051e9d0  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051e9d8  8bcf                      MOV ECX,EDI
0051e9da  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
0051e9e4  c785d4feffff000020c2      MOV dword ptr [EBP + 0xfffffed4],0xc2200000
0051e9ee  e89dce0e00                CALL 0x0060b890
0051e9f3  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0051e9fb  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
0051ea01  83c40c                    ADD ESP,0xc
0051ea04  0f57db                    XORPS XMM3,XMM3
0051ea07  0f28d1                    MOVAPS XMM2,XMM1
0051ea0a  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0051ea11  e8da4ef0ff                CALL 0x004238f0
0051ea16  f30f1005b0a6ba00          MOVSS XMM0,dword ptr [0x00baa6b0]
0051ea1e  8bf0                      MOV ESI,EAX
0051ea20  e81bebefff                CALL 0x0041d540
0051ea25  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051ea2d  f30f1005b0a6ba00          MOVSS XMM0,dword ptr [0x00baa6b0]
0051ea35  e993fdffff                JMP 0x0051e7cd
0051ea3a  3d10010000                CMP EAX,0x110
0051ea3f  0f85be070000              JNZ 0x0051f203
0051ea45  0f57c9                    XORPS XMM1,XMM1
0051ea48  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
0051ea50  0f57c0                    XORPS XMM0,XMM0
0051ea53  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0051ea5a  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0051ea5e  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0051ea65  0f280540beba00            MOVAPS XMM0,xmmword ptr [0x00babe40]
0051ea6c  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0051ea70  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0051ea77  0f28c1                    MOVAPS XMM0,XMM1
0051ea7a  f30f580510a9ba00          ADDSS XMM0,dword ptr [0x00baa910]
0051ea82  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0051ea8a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0051ea92  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051ea9a  e8a1eaefff                CALL 0x0041d540
0051ea9f  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0051eaa7  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0051eaaf  e86ceaefff                CALL 0x0041d520
0051eab4  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0051eabc  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0051eac4  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0051eacc  f30f5e0578aaba00          DIVSS XMM0,dword ptr [0x00baaa78]
0051ead4  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0051eadc  e85feaefff                CALL 0x0041d540
0051eae1  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0051eae9  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0051eaf1  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0051eaf9  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0051eb01  e81aeaefff                CALL 0x0041d520
0051eb06  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0051eb0e  8d45c0                    LEA EAX,[EBP + -0x40]
0051eb11  51                        PUSH ECX
0051eb12  c7042400008040            MOV dword ptr [ESP],0x40800000
0051eb19  8d95c8feffff              LEA EDX,[EBP + 0xfffffec8]
0051eb1f  50                        PUSH EAX
0051eb20  f30f5c0524a9ba00          SUBSS XMM0,dword ptr [0x00baa924]
0051eb28  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0051eb2e  8bcf                      MOV ECX,EDI
0051eb30  6a20                      PUSH 0x20
0051eb32  50                        PUSH EAX
0051eb33  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
0051eb3b  e850cd0e00                CALL 0x0060b890
0051eb40  f30f108ddcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffedc]
0051eb48  83c410                    ADD ESP,0x10
0051eb4b  f30f580db4a9ba00          ADDSS XMM1,dword ptr [0x00baa9b4]
0051eb53  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
0051eb5b  0f2fc1                    COMISS XMM0,XMM1
0051eb5e  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
0051eb66  0f87e4feffff              JA 0x0051ea50
0051eb6c  e992060000                JMP 0x0051f203
0051eb71  83fe03                    CMP ESI,0x3
0051eb74  0f8589060000              JNZ 0x0051f203
0051eb7a  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0051eb84  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0051eb8e  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051eb98  e966060000                JMP 0x0051f203
0051eb9d  83f908                    CMP ECX,0x8
0051eba0  0f85ef010000              JNZ 0x0051ed95
0051eba6  6a00                      PUSH 0x0
0051eba8  8bcf                      MOV ECX,EDI
0051ebaa  e8a1a41b00                CALL 0x006d9050
0051ebaf  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0051ebb6  8d4f48                    LEA ECX,[EDI + 0x48]
0051ebb9  6a00                      PUSH 0x0
0051ebbb  752c                      JNZ 0x0051ebe9
0051ebbd  68680eb600                PUSH 0xb60e68
0051ebc2  e8b9b7eeff                CALL 0x0040a380
0051ebc7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051ebcb  740d                      JZ 0x0051ebda
0051ebcd  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0051ebd4  0f8529060000              JNZ 0x0051f203
0051ebda  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0051ebe4  e91a060000                JMP 0x0051f203
0051ebe9  68b80eb600                PUSH 0xb60eb8
0051ebee  e88db7eeff                CALL 0x0040a380
0051ebf3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051ebf7  0f847f010000              JZ 0x0051ed7c
0051ebfd  68dcd2b100                PUSH 0xb1d2dc
0051ec02  8d4f78                    LEA ECX,[EDI + 0x78]
0051ec05  e8c6c1eeff                CALL 0x0040add0
0051ec0a  84c0                      TEST AL,AL
0051ec0c  0f8457010000              JZ 0x0051ed69
0051ec12  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0051ec18  e81303f2ff                CALL 0x0043ef30
0051ec1d  51                        PUSH ECX
0051ec1e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051ec25  6a00                      PUSH 0x0
0051ec27  6a02                      PUSH 0x2
0051ec29  51                        PUSH ECX
0051ec2a  c704240000003f            MOV dword ptr [ESP],0x3f000000
0051ec31  8bcf                      MOV ECX,EDI
0051ec33  680b010000                PUSH 0x10b
0051ec38  c7851cffffff000088c1      MOV dword ptr [EBP + 0xffffff1c],0xc1880000
0051ec42  c78520ffffff6666a63f      MOV dword ptr [EBP + 0xffffff20],0x3fa66666
0051ec4c  e84f7f1b00                CALL 0x006d6ba0
0051ec51  51                        PUSH ECX
0051ec52  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051ec59  6a00                      PUSH 0x0
0051ec5b  6a02                      PUSH 0x2
0051ec5d  51                        PUSH ECX
0051ec5e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051ec65  8bcf                      MOV ECX,EDI
0051ec67  68b2000000                PUSH 0xb2
0051ec6c  e82f7f1b00                CALL 0x006d6ba0
0051ec71  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051ec74  3d0f010000                CMP EAX,0x10f
0051ec79  0f85b1000000              JNZ 0x0051ed30
0051ec7f  8bcf                      MOV ECX,EDI
0051ec81  e8bafb1900                CALL 0x006be840
0051ec86  8db73c030000              LEA ESI,[EDI + 0x33c]
0051ec8c  8d8f200f0000              LEA ECX,[EDI + 0xf20]
0051ec92  6840b6c700                PUSH 0xc7b640
0051ec97  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0051ec9f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0051eca7  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0051ecab  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0051ecb0  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051ecb8  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0051ecc0  e86b194f00                CALL 0x00a10630
0051ecc5  84c0                      TEST AL,AL
0051ecc7  7419                      JZ 0x0051ece2
0051ecc9  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0051eccd  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051ecd5  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0051ecda  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051ece2  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
0051ece8  e8d3124f00                CALL 0x00a0ffc0
0051eced  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0051ecf5  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0051ecfb  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
0051ed03  50                        PUSH EAX
0051ed04  6a05                      PUSH 0x5
0051ed06  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0051ed0c  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0051ed14  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0051ed1c  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
0051ed24  50                        PUSH EAX
0051ed25  56                        PUSH ESI
0051ed26  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
0051ed2e  eb32                      JMP 0x0051ed62
0051ed30  3d10010000                CMP EAX,0x110
0051ed35  7532                      JNZ 0x0051ed69
0051ed37  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0051ed3d  c785e0feffff00002041      MOV dword ptr [EBP + 0xfffffee0],0x41200000
0051ed47  50                        PUSH EAX
0051ed48  6a09                      PUSH 0x9
0051ed4a  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051ed50  c785e4feffff00004041      MOV dword ptr [EBP + 0xfffffee4],0x41400000
0051ed5a  50                        PUSH EAX
0051ed5b  8d873c030000              LEA EAX,[EDI + 0x33c]
0051ed61  50                        PUSH EAX
0051ed62  8bcf                      MOV ECX,EDI
0051ed64  e877c51a00                CALL 0x006cb2e0
0051ed69  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051ed6d  740d                      JZ 0x0051ed7c
0051ed6f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0051ed76  0f8587040000              JNZ 0x0051f203
0051ed7c  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0051ed86  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051ed90  e964040000                JMP 0x0051f1f9
0051ed95  83f909                    CMP ECX,0x9
0051ed98  0f840d010000              JZ 0x0051eeab
0051ed9e  83f90a                    CMP ECX,0xa
0051eda1  0f8404010000              JZ 0x0051eeab
0051eda7  83f90d                    CMP ECX,0xd
0051edaa  0f8553040000              JNZ 0x0051f203
0051edb0  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0051edb7  8d4f48                    LEA ECX,[EDI + 0x48]
0051edba  6a00                      PUSH 0x0
0051edbc  7536                      JNZ 0x0051edf4
0051edbe  68680eb600                PUSH 0xb60e68
0051edc3  e8b8b5eeff                CALL 0x0040a380
0051edc8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051edcc  740d                      JZ 0x0051eddb
0051edce  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0051edd5  0f8528040000              JNZ 0x0051f203
0051eddb  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0051ede5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051edef  e90f040000                JMP 0x0051f203
0051edf4  68980eb600                PUSH 0xb60e98
0051edf9  e882b5eeff                CALL 0x0040a380
0051edfe  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0051ee04  b867666666                MOV EAX,0x66666667
0051ee09  f7ee                      IMUL ESI
0051ee0b  b867666666                MOV EAX,0x66666667
0051ee10  c1fa02                    SAR EDX,0x2
0051ee13  8bca                      MOV ECX,EDX
0051ee15  c1e91f                    SHR ECX,0x1f
0051ee18  03ca                      ADD ECX,EDX
0051ee1a  f7ade4feffff              IMUL dword ptr [EBP + 0xfffffee4]
0051ee20  c1fa02                    SAR EDX,0x2
0051ee23  8bc2                      MOV EAX,EDX
0051ee25  c1e81f                    SHR EAX,0x1f
0051ee28  03c2                      ADD EAX,EDX
0051ee2a  3bc8                      CMP ECX,EAX
0051ee2c  0f8e37ffffff              JLE 0x0051ed69
0051ee32  83fe14                    CMP ESI,0x14
0051ee35  0f8d2effffff              JGE 0x0051ed69
0051ee3b  8bcf                      MOV ECX,EDI
0051ee3d  e8de7d1b00                CALL 0x006d6c20
0051ee42  83f802                    CMP EAX,0x2
0051ee45  0f8f1effffff              JG 0x0051ed69
0051ee4b  51                        PUSH ECX
0051ee4c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051ee53  6a00                      PUSH 0x0
0051ee55  6a02                      PUSH 0x2
0051ee57  51                        PUSH ECX
0051ee58  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0051ee5f  8bcf                      MOV ECX,EDI
0051ee61  6809010000                PUSH 0x109
0051ee66  e8357d1b00                CALL 0x006d6ba0
0051ee6b  e8f0001d00                CALL 0x006eef60
0051ee70  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051ee76  6a00                      PUSH 0x0
0051ee78  68acd6c500                PUSH 0xc5d6ac
0051ee7d  68dcd5c500                PUSH 0xc5d5dc
0051ee82  6a00                      PUSH 0x0
0051ee84  50                        PUSH EAX
0051ee85  6a00                      PUSH 0x0
0051ee87  57                        PUSH EDI
0051ee88  6840b6c700                PUSH 0xc7b640
0051ee8d  8d873c030000              LEA EAX,[EDI + 0x33c]
0051ee93  50                        PUSH EAX
0051ee94  6a01                      PUSH 0x1
0051ee96  6a26                      PUSH 0x26
0051ee98  e8839cf0ff                CALL 0x00428b20
0051ee9d  50                        PUSH EAX
0051ee9e  e80e1a5d00                CALL 0x00af08b1
0051eea3  83c414                    ADD ESP,0x14
0051eea6  e9befeffff                JMP 0x0051ed69
0051eeab  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0051eeb2  0f85d6000000              JNZ 0x0051ef8e
0051eeb8  817f2810010000            CMP dword ptr [EDI + 0x28],0x110
0051eebf  750a                      JNZ 0x0051eecb
0051eec1  b8ac0eb600                MOV EAX,0xb60eac
0051eec6  83f90a                    CMP ECX,0xa
0051eec9  7405                      JZ 0x0051eed0
0051eecb  b838deb100                MOV EAX,0xb1de38
0051eed0  6a00                      PUSH 0x0
0051eed2  50                        PUSH EAX
0051eed3  8d4f48                    LEA ECX,[EDI + 0x48]
0051eed6  e8a5b4eeff                CALL 0x0040a380
0051eedb  83bf1004000019            CMP dword ptr [EDI + 0x410],0x19
0051eee2  7e14                      JLE 0x0051eef8
0051eee4  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0051eeee  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051eef8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051eeff  0f84fe020000              JZ 0x0051f203
0051ef05  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051ef0b  0f57d2                    XORPS XMM2,XMM2
0051ef0e  50                        PUSH EAX
0051ef0f  8bcf                      MOV ECX,EDI
0051ef11  e8ba931b00                CALL 0x006d82d0
0051ef16  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051ef19  f30f108de0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee0]
0051ef21  f30f1095e4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee4]
0051ef29  3d0f010000                CMP EAX,0x10f
0051ef2e  7512                      JNZ 0x0051ef42
0051ef30  f30f590d60a2ba00          MULSS XMM1,dword ptr [0x00baa260]
0051ef38  f30f591560a2ba00          MULSS XMM2,dword ptr [0x00baa260]
0051ef40  eb17                      JMP 0x0051ef59
0051ef42  3d10010000                CMP EAX,0x110
0051ef47  7510                      JNZ 0x0051ef59
0051ef49  f30f590d8ca2ba00          MULSS XMM1,dword ptr [0x00baa28c]
0051ef51  f30f59158ca2ba00          MULSS XMM2,dword ptr [0x00baa28c]
0051ef59  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0051ef61  f30f59c8                  MULSS XMM1,XMM0
0051ef65  f30f59d0                  MULSS XMM2,XMM0
0051ef69  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0051ef71  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0051ef79  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0051ef81  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0051ef89  e975020000                JMP 0x0051f203
0051ef8e  6a00                      PUSH 0x0
0051ef90  68a00eb600                PUSH 0xb60ea0
0051ef95  8d4f48                    LEA ECX,[EDI + 0x48]
0051ef98  e8e3b3eeff                CALL 0x0040a380
0051ef9d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051efa1  0f843f020000              JZ 0x0051f1e6
0051efa7  68dcd2b100                PUSH 0xb1d2dc
0051efac  8d4f78                    LEA ECX,[EDI + 0x78]
0051efaf  e81cbeeeff                CALL 0x0040add0
0051efb4  84c0                      TEST AL,AL
0051efb6  0f842a020000              JZ 0x0051f1e6
0051efbc  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051efbf  3d0f010000                CMP EAX,0x10f
0051efc4  0f850e010000              JNZ 0x0051f0d8
0051efca  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
0051efd1  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0051efd7  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051efdf  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0051efe7  6a00                      PUSH 0x0
0051efe9  57                        PUSH EDI
0051efea  50                        PUSH EAX
0051efeb  6a1e                      PUSH 0x1e
0051efed  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051eff5  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051effb  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051f003  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0051f00b  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
0051f015  c785ccfeffff000048c2      MOV dword ptr [EBP + 0xfffffecc],0xc2480000
0051f01f  51                        PUSH ECX
0051f020  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051f028  750c                      JNZ 0x0051f036
0051f02a  c704240000b442            MOV dword ptr [ESP],0x42b40000
0051f031  e981000000                JMP 0x0051f0b7
0051f036  c7042400003442            MOV dword ptr [ESP],0x42340000
0051f03d  50                        PUSH EAX
0051f03e  6a05                      PUSH 0x5
0051f040  e8cb024500                CALL 0x0096f310
0051f045  83c41c                    ADD ESP,0x1c
0051f048  8bc8                      MOV ECX,EAX
0051f04a  8b10                      MOV EDX,dword ptr [EAX]
0051f04c  c7808401000000000000      MOV dword ptr [EAX + 0x184],0x0
0051f056  ff520c                    CALL dword ptr [EDX + 0xc]
0051f059  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051f061  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0051f067  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0051f06f  6a00                      PUSH 0x0
0051f071  57                        PUSH EDI
0051f072  50                        PUSH EAX
0051f073  6a1e                      PUSH 0x1e
0051f075  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051f07d  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051f083  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051f08b  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0051f093  51                        PUSH ECX
0051f094  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
0051f09e  c785ccfeffff000048c2      MOV dword ptr [EBP + 0xfffffecc],0xc2480000
0051f0a8  c7042400000743            MOV dword ptr [ESP],0x43070000
0051f0af  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051f0b7  50                        PUSH EAX
0051f0b8  6a05                      PUSH 0x5
0051f0ba  e851024500                CALL 0x0096f310
0051f0bf  83c41c                    ADD ESP,0x1c
0051f0c2  8bc8                      MOV ECX,EAX
0051f0c4  c7808401000000000000      MOV dword ptr [EAX + 0x184],0x0
0051f0ce  8b10                      MOV EDX,dword ptr [EAX]
0051f0d0  ff520c                    CALL dword ptr [EDX + 0xc]
0051f0d3  e90e010000                JMP 0x0051f1e6
0051f0d8  3d10010000                CMP EAX,0x110
0051f0dd  0f8503010000              JNZ 0x0051f1e6
0051f0e3  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
0051f0ed  0f57c0                    XORPS XMM0,XMM0
0051f0f0  c785ccfeffff000048c2      MOV dword ptr [EBP + 0xfffffecc],0xc2480000
0051f0fa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0051f100  83bf640b00000a            CMP dword ptr [EDI + 0xb64],0xa
0051f107  0f28c8                    MOVAPS XMM1,XMM0
0051f10a  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0051f112  7510                      JNZ 0x0051f124
0051f114  f30f580d10a9ba00          ADDSS XMM1,dword ptr [0x00baa910]
0051f11c  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
0051f124  0f28c1                    MOVAPS XMM0,XMM1
0051f127  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0051f12f  f30f5e0578aaba00          DIVSS XMM0,dword ptr [0x00baaa78]
0051f137  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051f13f  e8fce3efff                CALL 0x0041d540
0051f144  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0051f14c  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0051f154  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0051f15c  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0051f164  e8b7e3efff                CALL 0x0041d520
0051f169  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0051f171  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0051f177  6a00                      PUSH 0x0
0051f179  57                        PUSH EDI
0051f17a  50                        PUSH EAX
0051f17b  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0051f183  6a1e                      PUSH 0x1e
0051f185  51                        PUSH ECX
0051f186  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0051f18c  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0051f194  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0051f19c  f30f110424                MOVSS dword ptr [ESP],XMM0
0051f1a1  50                        PUSH EAX
0051f1a2  6a05                      PUSH 0x5
0051f1a4  e867014500                CALL 0x0096f310
0051f1a9  83c41c                    ADD ESP,0x1c
0051f1ac  8bc8                      MOV ECX,EAX
0051f1ae  8b10                      MOV EDX,dword ptr [EAX]
0051f1b0  c7808401000000000000      MOV dword ptr [EAX + 0x184],0x0
0051f1ba  ff520c                    CALL dword ptr [EDX + 0xc]
0051f1bd  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0051f1c5  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
0051f1cd  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
0051f1d5  0f2fc8                    COMISS XMM1,XMM0
0051f1d8  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0051f1e0  0f871affffff              JA 0x0051f100
0051f1e6  83bf1004000032            CMP dword ptr [EDI + 0x410],0x32
0051f1ed  7e14                      JLE 0x0051f203
0051f1ef  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0051f1f9  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051f203  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051f207  0f848b000000              JZ 0x0051f298
0051f20d  6868ddb100                PUSH 0xb1dd68
0051f212  8d4f78                    LEA ECX,[EDI + 0x78]
0051f215  e8b6bbeeff                CALL 0x0040add0
0051f21a  84c0                      TEST AL,AL
0051f21c  747a                      JZ 0x0051f298
0051f21e  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0051f224  83f812                    CMP EAX,0x12
0051f227  750a                      JNZ 0x0051f233
0051f229  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0051f231  eb0d                      JMP 0x0051f240
0051f233  83f813                    CMP EAX,0x13
0051f236  7510                      JNZ 0x0051f248
0051f238  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0051f240  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0051f248  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0051f24e  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0051f254  c785e8feffff13010000      MOV dword ptr [EBP + 0xfffffee8],0x113
0051f25e  e81d754300                CALL 0x00956780
0051f263  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
0051f26b  83ec08                    SUB ESP,0x8
0051f26e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0051f276  f30f110424                MOVSS dword ptr [ESP],XMM0
0051f27b  6a00                      PUSH 0x0
0051f27d  6a02                      PUSH 0x2
0051f27f  51                        PUSH ECX
0051f280  c704246666263f            MOV dword ptr [ESP],0x3f266666
0051f287  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0051f28d  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
0051f293  e898e94000                CALL 0x0092dc30
0051f298  a17816c700                MOV EAX,[0x00c71678]
0051f29d  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0051f2a3  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0051f2aa  751b                      JNZ 0x0051f2c7
0051f2ac  f30f100514abba00          MOVSS XMM0,dword ptr [0x00baab14]
0051f2b4  0f2f8740030000            COMISS XMM0,dword ptr [EDI + 0x340]
0051f2bb  760a                      JBE 0x0051f2c7
0051f2bd  c787400300000000a043      MOV dword ptr [EDI + 0x340],0x43a00000
0051f2c7  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0051f2ca  64890d00000000            MOV dword ptr FS:[0x0],ECX
0051f2d1  59                        POP ECX
0051f2d2  5f                        POP EDI
0051f2d3  5e                        POP ESI
0051f2d4  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0051f2d7  33cd                      XOR ECX,EBP
0051f2d9  e84dfe5c00                CALL 0x00aef12b
0051f2de  8be5                      MOV ESP,EBP
0051f2e0  5d                        POP EBP
0051f2e1  8be3                      MOV ESP,EBX
0051f2e3  5b                        POP EBX
0051f2e4  c3                        RET
