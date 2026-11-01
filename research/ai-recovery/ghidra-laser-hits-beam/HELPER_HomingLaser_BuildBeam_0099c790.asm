; J460 NPC AI 0x0099c790 HELPER_HomingLaser_BuildBeam
; types=7
; identities=7.*
; entry=0099c790
0099c790  53                        PUSH EBX
0099c791  8bdc                      MOV EBX,ESP
0099c793  83ec08                    SUB ESP,0x8
0099c796  83e4f8                    AND ESP,0xfffffff8
0099c799  83c404                    ADD ESP,0x4
0099c79c  55                        PUSH EBP
0099c79d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0099c7a0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0099c7a4  8bec                      MOV EBP,ESP
0099c7a6  6aff                      PUSH -0x1
0099c7a8  687dd9b000                PUSH 0xb0d97d
0099c7ad  64a100000000              MOV EAX,FS:[0x0]
0099c7b3  50                        PUSH EAX
0099c7b4  53                        PUSH EBX
0099c7b5  81eca8000000              SUB ESP,0xa8
0099c7bb  56                        PUSH ESI
0099c7bc  57                        PUSH EDI
0099c7bd  a1b493bf00                MOV EAX,[0x00bf93b4]
0099c7c2  33c5                      XOR EAX,EBP
0099c7c4  50                        PUSH EAX
0099c7c5  8d45f4                    LEA EAX,[EBP + -0xc]
0099c7c8  64a300000000              MOV FS:[0x0],EAX
0099c7ce  8bf1                      MOV ESI,ECX
0099c7d0  8975e0                    MOV dword ptr [EBP + -0x20],ESI
0099c7d3  8b4e4c                    MOV ECX,dword ptr [ESI + 0x4c]
0099c7d6  8d7e48                    LEA EDI,[ESI + 0x48]
0099c7d9  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
0099c7e1  8bd1                      MOV EDX,ECX
0099c7e3  2b17                      SUB EDX,dword ptr [EDI]
0099c7e5  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099c7ea  f7ea                      IMUL EDX
0099c7ec  89bd68ffffff              MOV dword ptr [EBP + 0xffffff68],EDI
0099c7f2  c1fa02                    SAR EDX,0x2
0099c7f5  8bc2                      MOV EAX,EDX
0099c7f7  c1e81f                    SHR EAX,0x1f
0099c7fa  03c2                      ADD EAX,EDX
0099c7fc  0f85db000000              JNZ 0x0099c8dd
0099c802  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
0099c807  0f28d3                    MOVAPS XMM2,XMM3
0099c80a  f30f104e08                MOVSS XMM1,dword ptr [ESI + 0x8]
0099c80f  0f28c1                    MOVAPS XMM0,XMM1
0099c812  f30f115d94                MOVSS dword ptr [EBP + -0x6c],XMM3
0099c817  f30f58560c                ADDSS XMM2,dword ptr [ESI + 0xc]
0099c81c  f30f584610                ADDSS XMM0,dword ptr [ESI + 0x10]
0099c821  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
0099c826  f30f115d9c                MOVSS dword ptr [EBP + -0x64],XMM3
0099c82b  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
0099c830  f30f59d4                  MULSS XMM2,XMM4
0099c834  f30f59c4                  MULSS XMM0,XMM4
0099c838  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
0099c83d  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
0099c842  3b4f08                    CMP ECX,dword ptr [EDI + 0x8]
0099c845  7417                      JZ 0x0099c85e
0099c847  0f104594                  MOVUPS XMM0,xmmword ptr [EBP + -0x6c]
0099c84b  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0099c84e  f30f7e45a4                MOVQ XMM0,qword ptr [EBP + -0x5c]
0099c853  660fd64110                MOVQ qword ptr [ECX + 0x10],XMM0
0099c858  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099c85c  eb14                      JMP 0x0099c872
0099c85e  8d4594                    LEA EAX,[EBP + -0x6c]
0099c861  50                        PUSH EAX
0099c862  51                        PUSH ECX
0099c863  8bcf                      MOV ECX,EDI
0099c865  e8464f0000                CALL 0x009a17b0
0099c86a  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
0099c872  f30f105e0c                MOVSS XMM3,dword ptr [ESI + 0xc]
0099c877  f30f105610                MOVSS XMM2,dword ptr [ESI + 0x10]
0099c87c  0f28cb                    MOVAPS XMM1,XMM3
0099c87f  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
0099c884  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
0099c887  0f28c2                    MOVAPS XMM0,XMM2
0099c88a  f30f584608                ADDSS XMM0,dword ptr [ESI + 0x8]
0099c88f  f30f115d94                MOVSS dword ptr [EBP + -0x6c],XMM3
0099c894  f30f115598                MOVSS dword ptr [EBP + -0x68],XMM2
0099c899  f30f59cc                  MULSS XMM1,XMM4
0099c89d  f30f59c4                  MULSS XMM0,XMM4
0099c8a1  f30f114d9c                MOVSS dword ptr [EBP + -0x64],XMM1
0099c8a6  f30f115da4                MOVSS dword ptr [EBP + -0x5c],XMM3
0099c8ab  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0099c8b0  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
0099c8b5  3b4708                    CMP EAX,dword ptr [EDI + 0x8]
0099c8b8  7417                      JZ 0x0099c8d1
0099c8ba  0f104594                  MOVUPS XMM0,xmmword ptr [EBP + -0x6c]
0099c8be  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099c8c1  f30f7e45a4                MOVQ XMM0,qword ptr [EBP + -0x5c]
0099c8c6  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099c8cb  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099c8cf  eb0c                      JMP 0x0099c8dd
0099c8d1  8d4d94                    LEA ECX,[EBP + -0x6c]
0099c8d4  51                        PUSH ECX
0099c8d5  50                        PUSH EAX
0099c8d6  8bcf                      MOV ECX,EDI
0099c8d8  e8d34e0000                CALL 0x009a17b0
0099c8dd  33c9                      XOR ECX,ECX
0099c8df  33f6                      XOR ESI,ESI
0099c8e1  894da0                    MOV dword ptr [EBP + -0x60],ECX
0099c8e4  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0099c8e7  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
0099c8ea  898d7cffffff              MOV dword ptr [EBP + 0xffffff7c],ECX
0099c8f0  894da8                    MOV dword ptr [EBP + -0x58],ECX
0099c8f3  8975fc                    MOV dword ptr [EBP + -0x4],ESI
0099c8f6  397308                    CMP dword ptr [EBX + 0x8],ESI
0099c8f9  0f8437010000              JZ 0x0099ca36
0099c8ff  a17816c700                MOV EAX,[0x00c71678]
0099c904  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0099c90a  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0099c90d  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
0099c913  0f861d010000              JBE 0x0099ca36
0099c919  33ff                      XOR EDI,EDI
0099c91b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0099c920  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
0099c926  6a00                      PUSH 0x0
0099c928  8b04b8                    MOV EAX,dword ptr [EAX + EDI*0x4]
0099c92b  8bc8                      MOV ECX,EAX
0099c92d  8945cc                    MOV dword ptr [EBP + -0x34],EAX
0099c930  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0099c933  e828fcd0ff                CALL 0x006ac560
0099c938  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
0099c93b  8b530c                    MOV EDX,dword ptr [EBX + 0xc]
0099c93e  84c0                      TEST AL,AL
0099c940  7428                      JZ 0x0099c96a
0099c942  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
0099c948  2510000020                AND EAX,0x20000010
0099c94d  83c800                    OR EAX,0x0
0099c950  7518                      JNZ 0x0099c96a
0099c952  3bca                      CMP ECX,EDX
0099c954  7414                      JZ 0x0099c96a
0099c956  837b0804                  CMP dword ptr [EBX + 0x8],0x4
0099c95a  7508                      JNZ 0x0099c964
0099c95c  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0099c95f  3b4228                    CMP EAX,dword ptr [EDX + 0x28]
0099c962  7406                      JZ 0x0099c96a
0099c964  c645eb01                  MOV byte ptr [EBP + -0x15],0x1
0099c968  eb04                      JMP 0x0099c96e
0099c96a  c645eb00                  MOV byte ptr [EBP + -0x15],0x0
0099c96e  a17816c700                MOV EAX,[0x00c71678]
0099c973  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0099c97a  7c1f                      JL 0x0099c99b
0099c97c  83792803                  CMP dword ptr [ECX + 0x28],0x3
0099c980  7519                      JNZ 0x0099c99b
0099c982  83792c43                  CMP dword ptr [ECX + 0x2c],0x43
0099c986  7513                      JNZ 0x0099c99b
0099c988  ffb2c8030000              PUSH dword ptr [EDX + 0x3c8]
0099c98e  e80dc6d0ff                CALL 0x006a8fa0
0099c993  84c0                      TEST AL,AL
0099c995  7504                      JNZ 0x0099c99b
0099c997  b001                      MOV AL,0x1
0099c999  eb02                      JMP 0x0099c99d
0099c99b  32c0                      XOR AL,AL
0099c99d  807deb00                  CMP byte ptr [EBP + -0x15],0x0
0099c9a1  7504                      JNZ 0x0099c9a7
0099c9a3  84c0                      TEST AL,AL
0099c9a5  7435                      JZ 0x0099c9dc
0099c9a7  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
0099c9ad  3bf1                      CMP ESI,ECX
0099c9af  740d                      JZ 0x0099c9be
0099c9b1  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
0099c9b4  8906                      MOV dword ptr [ESI],EAX
0099c9b6  83c604                    ADD ESI,0x4
0099c9b9  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
0099c9bc  eb27                      JMP 0x0099c9e5
0099c9be  8d45ec                    LEA EAX,[EBP + -0x14]
0099c9c1  50                        PUSH EAX
0099c9c2  56                        PUSH ESI
0099c9c3  8d4da0                    LEA ECX,[EBP + -0x60]
0099c9c6  e855ffa8ff                CALL 0x0042c920
0099c9cb  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0099c9ce  8b75a4                    MOV ESI,dword ptr [EBP + -0x5c]
0099c9d1  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
0099c9d4  898d7cffffff              MOV dword ptr [EBP + 0xffffff7c],ECX
0099c9da  eb09                      JMP 0x0099c9e5
0099c9dc  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
0099c9df  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
0099c9e5  837b0805                  CMP dword ptr [EBX + 0x8],0x5
0099c9e9  7532                      JNZ 0x0099ca1d
0099c9eb  83782801                  CMP dword ptr [EAX + 0x28],0x1
0099c9ef  752c                      JNZ 0x0099ca1d
0099c9f1  3b430c                    CMP EAX,dword ptr [EBX + 0xc]
0099c9f4  7427                      JZ 0x0099ca1d
0099c9f6  3bf1                      CMP ESI,ECX
0099c9f8  740a                      JZ 0x0099ca04
0099c9fa  8906                      MOV dword ptr [ESI],EAX
0099c9fc  83c604                    ADD ESI,0x4
0099c9ff  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
0099ca02  eb19                      JMP 0x0099ca1d
0099ca04  8d45ec                    LEA EAX,[EBP + -0x14]
0099ca07  50                        PUSH EAX
0099ca08  56                        PUSH ESI
0099ca09  8d4da0                    LEA ECX,[EBP + -0x60]
0099ca0c  e80fffa8ff                CALL 0x0042c920
0099ca11  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
0099ca14  8b75a4                    MOV ESI,dword ptr [EBP + -0x5c]
0099ca17  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
0099ca1d  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0099ca20  47                        INC EDI
0099ca21  3bb864120000              CMP EDI,dword ptr [EAX + 0x1264]
0099ca27  0f82f3feffff              JC 0x0099c920
0099ca2d  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
0099ca33  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0099ca36  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0099ca39  8b02                      MOV EAX,dword ptr [EDX]
0099ca3b  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0099ca3e  85c0                      TEST EAX,EAX
0099ca40  0f8480080000              JZ 0x0099d2c6
0099ca46  0f108028040000            MOVUPS XMM0,xmmword ptr [EAX + 0x428]
0099ca4d  68704bc300                PUSH 0xc34b70
0099ca52  8d5580                    LEA EDX,[EBP + -0x80]
0099ca55  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
0099ca5b  0f114580                  MOVUPS xmmword ptr [EBP + -0x80],XMM0
0099ca5f  e80ca7a7ff                CALL 0x00417170
0099ca64  83c404                    ADD ESP,0x4
0099ca67  8b08                      MOV ECX,dword ptr [EAX]
0099ca69  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0099ca6c  750c                      JNZ 0x0099ca7a
0099ca6e  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0099ca71  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0099ca74  0f8449080000              JZ 0x0099d2c3
0099ca7a  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0099ca7d  f30f108034030000          MOVSS XMM0,dword ptr [EAX + 0x334]
0099ca85  f30f108838030000          MOVSS XMM1,dword ptr [EAX + 0x338]
0099ca8d  8b88c8030000              MOV ECX,dword ptr [EAX + 0x3c8]
0099ca93  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0099ca98  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
0099caa0  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
0099caa5  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
0099caad  85c9                      TEST ECX,ECX
0099caaf  743c                      JZ 0x0099caed
0099cab1  83792801                  CMP dword ptr [ECX + 0x28],0x1
0099cab5  7536                      JNZ 0x0099caed
0099cab7  8b810c140000              MOV EAX,dword ptr [ECX + 0x140c]
0099cabd  85c0                      TEST EAX,EAX
0099cabf  742e                      JZ 0x0099caef
0099cac1  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0099cac9  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0099cad1  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0099cad6  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
0099cadb  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
0099cae3  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
0099caeb  eb02                      JMP 0x0099caef
0099caed  33c9                      XOR ECX,ECX
0099caef  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0099caf6  9f                        LAHF
0099caf7  f6c444                    TEST AH,0x44
0099cafa  7a11                      JP 0x0099cb0d
0099cafc  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
0099cb03  9f                        LAHF
0099cb04  f6c444                    TEST AH,0x44
0099cb07  0f8bb6070000              JNP 0x0099d2c3
0099cb0d  85c9                      TEST ECX,ECX
0099cb0f  0f848f040000              JZ 0x0099cfa4
0099cb15  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099cb18  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099cb1d  2b0f                      SUB ECX,dword ptr [EDI]
0099cb1f  f7e9                      IMUL ECX
0099cb21  c1fa02                    SAR EDX,0x2
0099cb24  8bca                      MOV ECX,EDX
0099cb26  c1e91f                    SHR ECX,0x1f
0099cb29  03ca                      ADD ECX,EDX
0099cb2b  898d78ffffff              MOV dword ptr [EBP + 0xffffff78],ECX
0099cb31  8d1449                    LEA EDX,[ECX + ECX*0x2]
0099cb34  c1e203                    SHL EDX,0x3
0099cb37  83f901                    CMP ECX,0x1
0099cb3a  761f                      JBE 0x0099cb5b
0099cb3c  8b07                      MOV EAX,dword ptr [EDI]
0099cb3e  f30f105c10d0              MOVSS XMM3,dword ptr [EAX + EDX*0x1 + -0x30]
0099cb44  f30f106410d4              MOVSS XMM4,dword ptr [EAX + EDX*0x1 + -0x2c]
0099cb4a  83c0e8                    ADD EAX,-0x18
0099cb4d  f30f115dd8                MOVSS dword ptr [EBP + -0x28],XMM3
0099cb52  03c2                      ADD EAX,EDX
0099cb54  f30f1165ec                MOVSS dword ptr [EBP + -0x14],XMM4
0099cb59  eb27                      JMP 0x0099cb82
0099cb5b  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099cb5e  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0099cb63  f30f106008                MOVSS XMM4,dword ptr [EAX + 0x8]
0099cb68  f30f115dd8                MOVSS dword ptr [EBP + -0x28],XMM3
0099cb6d  f30f1165ec                MOVSS dword ptr [EBP + -0x14],XMM4
0099cb72  85c9                      TEST ECX,ECX
0099cb74  7409                      JZ 0x0099cb7f
0099cb76  8b07                      MOV EAX,dword ptr [EDI]
0099cb78  83c0e8                    ADD EAX,-0x18
0099cb7b  03c2                      ADD EAX,EDX
0099cb7d  eb03                      JMP 0x0099cb82
0099cb7f  83c00c                    ADD EAX,0xc
0099cb82  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0099cb86  f30f119554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM2
0099cb8e  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0099cb93  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
0099cb98  0f28d0                    MOVAPS XMM2,XMM0
0099cb9b  f30f5cd3                  SUBSS XMM2,XMM3
0099cb9f  0f28d9                    MOVAPS XMM3,XMM1
0099cba2  f30f5cdc                  SUBSS XMM3,XMM4
0099cba6  0f28c2                    MOVAPS XMM0,XMM2
0099cba9  f30f119560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM2
0099cbb1  0f28cb                    MOVAPS XMM1,XMM3
0099cbb4  f30f59c2                  MULSS XMM0,XMM2
0099cbb8  f30f59cb                  MULSS XMM1,XMM3
0099cbbc  f30f119d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM3
0099cbc4  f30f58c1                  ADDSS XMM0,XMM1
0099cbc8  e8838ea9ff                CALL 0x00435a50
0099cbcd  0f57c9                    XORPS XMM1,XMM1
0099cbd0  0f2fc1                    COMISS XMM0,XMM1
0099cbd3  7633                      JBE 0x0099cc08
0099cbd5  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099cbdd  f30f5ec8                  DIVSS XMM1,XMM0
0099cbe1  0f28c1                    MOVAPS XMM0,XMM1
0099cbe4  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
0099cbec  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
0099cbf4  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
0099cbfc  f30f59c1                  MULSS XMM0,XMM1
0099cc00  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
0099cc08  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
0099cc10  f30f5c4dd4                SUBSS XMM1,dword ptr [EBP + -0x2c]
0099cc15  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
0099cc1a  f30f5c55cc                SUBSS XMM2,dword ptr [EBP + -0x34]
0099cc1f  0f28c1                    MOVAPS XMM0,XMM1
0099cc22  f30f118d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM1
0099cc2a  f30f59c1                  MULSS XMM0,XMM1
0099cc2e  0f28ca                    MOVAPS XMM1,XMM2
0099cc31  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
0099cc36  f30f59ca                  MULSS XMM1,XMM2
0099cc3a  f30f58c1                  ADDSS XMM0,XMM1
0099cc3e  e80d8ea9ff                CALL 0x00435a50
0099cc43  0f28d0                    MOVAPS XMM2,XMM0
0099cc46  0f57c0                    XORPS XMM0,XMM0
0099cc49  0f2fd0                    COMISS XMM2,XMM0
0099cc4c  7631                      JBE 0x0099cc7f
0099cc4e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099cc56  f30f5eca                  DIVSS XMM1,XMM2
0099cc5a  f30f109570ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff70]
0099cc62  0f28c1                    MOVAPS XMM0,XMM1
0099cc65  f30f59d0                  MULSS XMM2,XMM0
0099cc69  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
0099cc6e  f30f59c1                  MULSS XMM0,XMM1
0099cc72  f30f119570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM2
0099cc7a  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0099cc7f  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
0099cc87  f30f5c4dd8                SUBSS XMM1,dword ptr [EBP + -0x28]
0099cc8c  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
0099cc91  f30f5c55ec                SUBSS XMM2,dword ptr [EBP + -0x14]
0099cc96  0f28c1                    MOVAPS XMM0,XMM1
0099cc99  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
0099cc9e  f30f59c1                  MULSS XMM0,XMM1
0099cca2  0f28ca                    MOVAPS XMM1,XMM2
0099cca5  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
0099ccaa  f30f59ca                  MULSS XMM1,XMM2
0099ccae  f30f58c1                  ADDSS XMM0,XMM1
0099ccb2  e8998da9ff                CALL 0x00435a50
0099ccb7  0f28d0                    MOVAPS XMM2,XMM0
0099ccba  0f57c0                    XORPS XMM0,XMM0
0099ccbd  0f2fd0                    COMISS XMM2,XMM0
0099ccc0  762d                      JBE 0x0099ccef
0099ccc2  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099ccca  f30f5eca                  DIVSS XMM1,XMM2
0099ccce  f30f1055ac                MOVSS XMM2,dword ptr [EBP + -0x54]
0099ccd3  0f28c1                    MOVAPS XMM0,XMM1
0099ccd6  f30f59d0                  MULSS XMM2,XMM0
0099ccda  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
0099ccdf  f30f59c1                  MULSS XMM0,XMM1
0099cce3  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
0099cce8  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0099cced  eb0a                      JMP 0x0099ccf9
0099ccef  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
0099ccf4  f30f1055ac                MOVSS XMM2,dword ptr [EBP + -0x54]
0099ccf9  83bd78ffffff01            CMP dword ptr [EBP + 0xffffff78],0x1
0099cd00  7607                      JBE 0x0099cd09
0099cd02  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099cd05  83404ce8                  ADD dword ptr [EAX + 0x4c],-0x18
0099cd09  8b07                      MOV EAX,dword ptr [EDI]
0099cd0b  3b4704                    CMP EAX,dword ptr [EDI + 0x4]
0099cd0e  7558                      JNZ 0x0099cd68
0099cd10  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
0099cd18  8d45b4                    LEA EAX,[EBP + -0x4c]
0099cd1b  50                        PUSH EAX
0099cd1c  f30f105dec                MOVSS XMM3,dword ptr [EBP + -0x14]
0099cd21  0f28ca                    MOVAPS XMM1,XMM2
0099cd24  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0099cd2c  8bcf                      MOV ECX,EDI
0099cd2e  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
0099cd33  f30f58c3                  ADDSS XMM0,XMM3
0099cd37  f30f1155b4                MOVSS dword ptr [EBP + -0x4c],XMM2
0099cd3c  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
0099cd44  f30f58ca                  ADDSS XMM1,XMM2
0099cd48  f30f115db8                MOVSS dword ptr [EBP + -0x48],XMM3
0099cd4d  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0099cd52  f30f115dc0                MOVSS dword ptr [EBP + -0x40],XMM3
0099cd57  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0099cd5c  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
0099cd61  e80a4a0000                CALL 0x009a1770
0099cd66  eb13                      JMP 0x0099cd7b
0099cd68  0f28c2                    MOVAPS XMM0,XMM2
0099cd6b  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
0099cd73  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
0099cd7b  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0099cd83  e8b807a8ff                CALL 0x0041d540
0099cd88  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0099cd8d  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0099cd95  e88607a8ff                CALL 0x0041d520
0099cd9a  f30f1075d0                MOVSS XMM6,dword ptr [EBP + -0x30]
0099cd9f  0f28e0                    MOVAPS XMM4,XMM0
0099cda2  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
0099cda7  0f28cc                    MOVAPS XMM1,XMM4
0099cdaa  f30f106dac                MOVSS XMM5,dword ptr [EBP + -0x54]
0099cdaf  0f28d8                    MOVAPS XMM3,XMM0
0099cdb2  f30f109560ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff60]
0099cdba  f30f59c6                  MULSS XMM0,XMM6
0099cdbe  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
0099cdc1  f30f59ce                  MULSS XMM1,XMM6
0099cdc5  f30f59dd                  MULSS XMM3,XMM5
0099cdc9  f30f59e5                  MULSS XMM4,XMM5
0099cdcd  f30f5cd9                  SUBSS XMM3,XMM1
0099cdd1  0f28cd                    MOVAPS XMM1,XMM5
0099cdd4  f30f590deca8ba00          MULSS XMM1,dword ptr [0x00baa8ec]
0099cddc  f30f58e0                  ADDSS XMM4,XMM0
0099cde0  f30f10ad5cffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff5c]
0099cde8  0f28c6                    MOVAPS XMM0,XMM6
0099cdeb  f30f5905eca8ba00          MULSS XMM0,dword ptr [0x00baa8ec]
0099cdf3  f30f584dd8                ADDSS XMM1,dword ptr [EBP + -0x28]
0099cdf8  f30f5845ec                ADDSS XMM0,dword ptr [EBP + -0x14]
0099cdfd  f30f58d9                  ADDSS XMM3,XMM1
0099ce01  f30f58e0                  ADDSS XMM4,XMM0
0099ce05  f30f100524a9ba00          MOVSS XMM0,dword ptr [0x00baa924]
0099ce0d  f30f59d0                  MULSS XMM2,XMM0
0099ce11  0f28cb                    MOVAPS XMM1,XMM3
0099ce14  f30f59e8                  MULSS XMM5,XMM0
0099ce18  f30f58d3                  ADDSS XMM2,XMM3
0099ce1c  f30f59f0                  MULSS XMM6,XMM0
0099ce20  0f28c4                    MOVAPS XMM0,XMM4
0099ce23  f30f58ec                  ADDSS XMM5,XMM4
0099ce27  f30f5c8d78ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff78]
0099ce2f  f30f5cc6                  SUBSS XMM0,XMM6
0099ce33  f30f1175d0                MOVSS dword ptr [EBP + -0x30],XMM6
0099ce38  f30f115db4                MOVSS dword ptr [EBP + -0x4c],XMM3
0099ce3d  f30f1165b8                MOVSS dword ptr [EBP + -0x48],XMM4
0099ce42  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
0099ce47  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099ce4c  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0099ce51  f30f116dc8                MOVSS dword ptr [EBP + -0x38],XMM5
0099ce56  3b4708                    CMP EAX,dword ptr [EDI + 0x8]
0099ce59  741d                      JZ 0x0099ce78
0099ce5b  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
0099ce5f  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099ce62  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
0099ce67  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099ce6c  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099ce70  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099ce73  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099ce76  eb17                      JMP 0x0099ce8f
0099ce78  8d4db4                    LEA ECX,[EBP + -0x4c]
0099ce7b  51                        PUSH ECX
0099ce7c  50                        PUSH EAX
0099ce7d  8bcf                      MOV ECX,EDI
0099ce7f  e82c490000                CALL 0x009a17b0
0099ce84  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099ce87  f30f1075d0                MOVSS XMM6,dword ptr [EBP + -0x30]
0099ce8c  8b484c                    MOV ECX,dword ptr [EAX + 0x4c]
0099ce8f  0f28d6                    MOVAPS XMM2,XMM6
0099ce92  f30f1065d4                MOVSS XMM4,dword ptr [EBP + -0x2c]
0099ce97  0f28cc                    MOVAPS XMM1,XMM4
0099ce9a  f30f106dcc                MOVSS XMM5,dword ptr [EBP + -0x34]
0099ce9f  f30f58d5                  ADDSS XMM2,XMM5
0099cea3  f30f109d78ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff78]
0099ceab  f30f58dc                  ADDSS XMM3,XMM4
0099ceaf  0f28c5                    MOVAPS XMM0,XMM5
0099ceb2  f30f5cc6                  SUBSS XMM0,XMM6
0099ceb6  f30f1165b4                MOVSS dword ptr [EBP + -0x4c],XMM4
0099cebb  f30f5c8d78ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff78]
0099cec3  f30f116db8                MOVSS dword ptr [EBP + -0x48],XMM5
0099cec8  f30f1155c8                MOVSS dword ptr [EBP + -0x38],XMM2
0099cecd  f30f115dc4                MOVSS dword ptr [EBP + -0x3c],XMM3
0099ced2  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0099ced7  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099cedc  3b4f08                    CMP ECX,dword ptr [EDI + 0x8]
0099cedf  741a                      JZ 0x0099cefb
0099cee1  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
0099cee5  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0099cee8  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
0099ceed  660fd64110                MOVQ qword ptr [ECX + 0x10],XMM0
0099cef2  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099cef6  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099cef9  eb12                      JMP 0x0099cf0d
0099cefb  8d45b4                    LEA EAX,[EBP + -0x4c]
0099cefe  50                        PUSH EAX
0099ceff  51                        PUSH ECX
0099cf00  8bcf                      MOV ECX,EDI
0099cf02  e8a9480000                CALL 0x009a17b0
0099cf07  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099cf0a  8b484c                    MOV ECX,dword ptr [EAX + 0x4c]
0099cf0d  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
0099cf15  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
0099cf1d  f30f10a554ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff54]
0099cf25  0f28cc                    MOVAPS XMM1,XMM4
0099cf28  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
0099cf2d  f30f5cc8                  SUBSS XMM1,XMM0
0099cf31  f30f105de4                MOVSS XMM3,dword ptr [EBP + -0x1c]
0099cf36  0f28c3                    MOVAPS XMM0,XMM3
0099cf39  f30f591524a9ba00          MULSS XMM2,dword ptr [0x00baa924]
0099cf41  f30f1165b4                MOVSS dword ptr [EBP + -0x4c],XMM4
0099cf46  f30f115db8                MOVSS dword ptr [EBP + -0x48],XMM3
0099cf4b  f30f5cc2                  SUBSS XMM0,XMM2
0099cf4f  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099cf54  f30f1165c4                MOVSS dword ptr [EBP + -0x3c],XMM4
0099cf59  f30f115dc8                MOVSS dword ptr [EBP + -0x38],XMM3
0099cf5e  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0099cf63  3b4f08                    CMP ECX,dword ptr [EDI + 0x8]
0099cf66  7421                      JZ 0x0099cf89
0099cf68  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
0099cf6c  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0099cf6f  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
0099cf74  660fd64110                MOVQ qword ptr [ECX + 0x10],XMM0
0099cf79  8bc8                      MOV ECX,EAX
0099cf7b  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099cf7f  e81c0d0000                CALL 0x0099dca0
0099cf84  e93a030000                JMP 0x0099d2c3
0099cf89  8d45b4                    LEA EAX,[EBP + -0x4c]
0099cf8c  50                        PUSH EAX
0099cf8d  51                        PUSH ECX
0099cf8e  8bcf                      MOV ECX,EDI
0099cf90  e81b480000                CALL 0x009a17b0
0099cf95  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099cf98  8bc8                      MOV ECX,EAX
0099cf9a  e8010d0000                CALL 0x0099dca0
0099cf9f  e91f030000                JMP 0x0099d2c3
0099cfa4  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099cfa7  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
0099cfac  f30f10500c                MOVSS XMM2,dword ptr [EAX + 0xc]
0099cfb1  f30f105810                MOVSS XMM3,dword ptr [EAX + 0x10]
0099cfb6  f30f5c5004                SUBSS XMM2,dword ptr [EAX + 0x4]
0099cfbb  f30f5c5808                SUBSS XMM3,dword ptr [EAX + 0x8]
0099cfc0  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0099cfc5  0f28c1                    MOVAPS XMM0,XMM1
0099cfc8  f30f5c4008                SUBSS XMM0,dword ptr [EAX + 0x8]
0099cfcd  0f28ca                    MOVAPS XMM1,XMM2
0099cfd0  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
0099cfd5  f30f59ca                  MULSS XMM1,XMM2
0099cfd9  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0099cfde  0f28c3                    MOVAPS XMM0,XMM3
0099cfe1  f30f59c3                  MULSS XMM0,XMM3
0099cfe5  f30f115d8c                MOVSS dword ptr [EBP + -0x74],XMM3
0099cfea  f30f58c1                  ADDSS XMM0,XMM1
0099cfee  e85d8aa9ff                CALL 0x00435a50
0099cff3  0f28c8                    MOVAPS XMM1,XMM0
0099cff6  0f57c0                    XORPS XMM0,XMM0
0099cff9  0f2fc8                    COMISS XMM1,XMM0
0099cffc  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
0099d001  7634                      JBE 0x0099d037
0099d003  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
0099d008  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
0099d00d  f30f59c0                  MULSS XMM0,XMM0
0099d011  f30f59c9                  MULSS XMM1,XMM1
0099d015  f30f58c1                  ADDSS XMM0,XMM1
0099d019  e8328aa9ff                CALL 0x00435a50
0099d01e  f30f5e45dc                DIVSS XMM0,dword ptr [EBP + -0x24]
0099d023  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
0099d028  f30f10658c                MOVSS XMM4,dword ptr [EBP + -0x74]
0099d02d  f30f59c8                  MULSS XMM1,XMM0
0099d031  f30f59e0                  MULSS XMM4,XMM0
0099d035  eb0a                      JMP 0x0099d041
0099d037  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
0099d03c  f30f10658c                MOVSS XMM4,dword ptr [EBP + -0x74]
0099d041  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099d044  f30f106dec                MOVSS XMM5,dword ptr [EBP + -0x14]
0099d049  51                        PUSH ECX
0099d04a  c704240000a041            MOV dword ptr [ESP],0x41a00000
0099d051  f30f107004                MOVSS XMM6,dword ptr [EAX + 0x4]
0099d056  f30f107808                MOVSS XMM7,dword ptr [EAX + 0x8]
0099d05b  0f28d6                    MOVAPS XMM2,XMM6
0099d05e  f30f58d1                  ADDSS XMM2,XMM1
0099d062  0f28df                    MOVAPS XMM3,XMM7
0099d065  f30f58dc                  ADDSS XMM3,XMM4
0099d069  0f28e5                    MOVAPS XMM4,XMM5
0099d06c  f30f592524a2ba00          MULSS XMM4,dword ptr [0x00baa224]
0099d074  8d4588                    LEA EAX,[EBP + -0x78]
0099d077  6a00                      PUSH 0x0
0099d079  6840b6c700                PUSH 0xc7b640
0099d07e  f30f5cd6                  SUBSS XMM2,XMM6
0099d082  f30f58e6                  ADDSS XMM4,XMM6
0099d086  f30f5cdf                  SUBSS XMM3,XMM7
0099d08a  50                        PUSH EAX
0099d08b  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0099d091  0f28c2                    MOVAPS XMM0,XMM2
0099d094  f30f590524a2ba00          MULSS XMM0,dword ptr [0x00baa224]
0099d09c  50                        PUSH EAX
0099d09d  0f28cb                    MOVAPS XMM1,XMM3
0099d0a0  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0099d0a6  f30f590d24a2ba00          MULSS XMM1,dword ptr [0x00baa224]
0099d0ae  50                        PUSH EAX
0099d0af  f30f58c6                  ADDSS XMM0,XMM6
0099d0b3  f30f58cf                  ADDSS XMM1,XMM7
0099d0b7  f30f5ce0                  SUBSS XMM4,XMM0
0099d0bb  f30f592524a2ba00          MULSS XMM4,dword ptr [0x00baa224]
0099d0c3  f30f58e0                  ADDSS XMM4,XMM0
0099d0c7  f30f1165dc                MOVSS dword ptr [EBP + -0x24],XMM4
0099d0cc  f30f1065d8                MOVSS XMM4,dword ptr [EBP + -0x28]
0099d0d1  0f28c4                    MOVAPS XMM0,XMM4
0099d0d4  f30f590524a2ba00          MULSS XMM0,dword ptr [0x00baa224]
0099d0dc  f30f58c7                  ADDSS XMM0,XMM7
0099d0e0  f30f5cc1                  SUBSS XMM0,XMM1
0099d0e4  f30f590524a2ba00          MULSS XMM0,dword ptr [0x00baa224]
0099d0ec  f30f58c1                  ADDSS XMM0,XMM1
0099d0f0  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0099d0f5  f30f100530a3ba00          MOVSS XMM0,dword ptr [0x00baa330]
0099d0fd  f30f59e8                  MULSS XMM5,XMM0
0099d101  f30f59d0                  MULSS XMM2,XMM0
0099d105  f30f59e0                  MULSS XMM4,XMM0
0099d109  f30f58ee                  ADDSS XMM5,XMM6
0099d10d  f30f58d6                  ADDSS XMM2,XMM6
0099d111  f30f59d8                  MULSS XMM3,XMM0
0099d115  f30f58e7                  ADDSS XMM4,XMM7
0099d119  f30f58df                  ADDSS XMM3,XMM7
0099d11d  f30f5cea                  SUBSS XMM5,XMM2
0099d121  f30f5ce3                  SUBSS XMM4,XMM3
0099d125  f30f59e8                  MULSS XMM5,XMM0
0099d129  f30f58ea                  ADDSS XMM5,XMM2
0099d12d  f30f59e0                  MULSS XMM4,XMM0
0099d131  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
0099d136  f30f58e3                  ADDSS XMM4,XMM3
0099d13a  f30f5cc5                  SUBSS XMM0,XMM5
0099d13e  f30f116dec                MOVSS dword ptr [EBP + -0x14],XMM5
0099d143  f30f1165d8                MOVSS dword ptr [EBP + -0x28],XMM4
0099d148  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
0099d14d  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
0099d152  f30f5cc4                  SUBSS XMM0,XMM4
0099d156  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0099d15b  e8002cfdff                CALL 0x0096fd60
0099d160  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0099d163  83c418                    ADD ESP,0x18
0099d166  8b08                      MOV ECX,dword ptr [EAX]
0099d168  894a0c                    MOV dword ptr [EDX + 0xc],ECX
0099d16b  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0099d16e  894210                    MOV dword ptr [EDX + 0x10],EAX
0099d171  8b07                      MOV EAX,dword ptr [EDI]
0099d173  894704                    MOV dword ptr [EDI + 0x4],EAX
0099d176  f30f104208                MOVSS XMM0,dword ptr [EDX + 0x8]
0099d17b  f30f104a04                MOVSS XMM1,dword ptr [EDX + 0x4]
0099d180  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0099d185  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0099d18a  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
0099d18f  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
0099d194  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099d199  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
0099d19e  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0099d1a3  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0099d1a8  3b4708                    CMP EAX,dword ptr [EDI + 0x8]
0099d1ab  741a                      JZ 0x0099d1c7
0099d1ad  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
0099d1b1  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099d1b4  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
0099d1b9  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099d1be  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099d1c2  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
0099d1c5  eb12                      JMP 0x0099d1d9
0099d1c7  8d4db4                    LEA ECX,[EBP + -0x4c]
0099d1ca  51                        PUSH ECX
0099d1cb  50                        PUSH EAX
0099d1cc  8bcf                      MOV ECX,EDI
0099d1ce  e8dd450000                CALL 0x009a17b0
0099d1d3  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0099d1d6  8b424c                    MOV EAX,dword ptr [EDX + 0x4c]
0099d1d9  f30f1065d4                MOVSS XMM4,dword ptr [EBP + -0x2c]
0099d1de  f30f106dcc                MOVSS XMM5,dword ptr [EBP + -0x34]
0099d1e3  f30f104a0c                MOVSS XMM1,dword ptr [EDX + 0xc]
0099d1e8  f30f5ccc                  SUBSS XMM1,XMM4
0099d1ec  f30f104210                MOVSS XMM0,dword ptr [EDX + 0x10]
0099d1f1  f30f5cc5                  SUBSS XMM0,XMM5
0099d1f5  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
0099d1fa  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0099d1ff  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
0099d204  f30f1165b4                MOVSS dword ptr [EBP + -0x4c],XMM4
0099d209  f30f590d24a2ba00          MULSS XMM1,dword ptr [0x00baa224]
0099d211  f30f590524a2ba00          MULSS XMM0,dword ptr [0x00baa224]
0099d219  f30f58cc                  ADDSS XMM1,XMM4
0099d21d  f30f116db8                MOVSS dword ptr [EBP + -0x48],XMM5
0099d222  f30f1155c0                MOVSS dword ptr [EBP + -0x40],XMM2
0099d227  f30f58c5                  ADDSS XMM0,XMM5
0099d22b  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
0099d230  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0099d235  3b4708                    CMP EAX,dword ptr [EDI + 0x8]
0099d238  7417                      JZ 0x0099d251
0099d23a  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
0099d23e  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099d241  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
0099d246  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099d24b  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099d24f  eb19                      JMP 0x0099d26a
0099d251  8d4db4                    LEA ECX,[EBP + -0x4c]
0099d254  51                        PUSH ECX
0099d255  50                        PUSH EAX
0099d256  8bcf                      MOV ECX,EDI
0099d258  e853450000                CALL 0x009a17b0
0099d25d  f30f1065d4                MOVSS XMM4,dword ptr [EBP + -0x2c]
0099d262  f30f106dcc                MOVSS XMM5,dword ptr [EBP + -0x34]
0099d267  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0099d26a  f30f105a0c                MOVSS XMM3,dword ptr [EDX + 0xc]
0099d26f  8d45b4                    LEA EAX,[EBP + -0x4c]
0099d272  f30f105210                MOVSS XMM2,dword ptr [EDX + 0x10]
0099d277  0f28cb                    MOVAPS XMM1,XMM3
0099d27a  0f28c2                    MOVAPS XMM0,XMM2
0099d27d  f30f115db4                MOVSS dword ptr [EBP + -0x4c],XMM3
0099d282  f30f5ccc                  SUBSS XMM1,XMM4
0099d286  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
0099d28b  f30f5cc5                  SUBSS XMM0,XMM5
0099d28f  f30f115dc4                MOVSS dword ptr [EBP + -0x3c],XMM3
0099d294  50                        PUSH EAX
0099d295  8bcf                      MOV ECX,EDI
0099d297  f30f1155c8                MOVSS dword ptr [EBP + -0x38],XMM2
0099d29c  f30f590d30a3ba00          MULSS XMM1,dword ptr [0x00baa330]
0099d2a4  f30f590530a3ba00          MULSS XMM0,dword ptr [0x00baa330]
0099d2ac  f30f58cc                  ADDSS XMM1,XMM4
0099d2b0  f30f58c5                  ADDSS XMM0,XMM5
0099d2b4  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099d2b9  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0099d2be  e8ad440000                CALL 0x009a1770
0099d2c3  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0099d2c6  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
0099d2c9  83f801                    CMP EAX,0x1
0099d2cc  0f8581040000              JNZ 0x0099d753
0099d2d2  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099d2d5  8bd1                      MOV EDX,ECX
0099d2d7  8b07                      MOV EAX,dword ptr [EDI]
0099d2d9  2bd0                      SUB EDX,EAX
0099d2db  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0099d2de  894dcc                    MOV dword ptr [EBP + -0x34],ECX
0099d2e1  8d42d0                    LEA EAX,[EDX + -0x30]
0099d2e4  83f818                    CMP EAX,0x18
0099d2e7  0f8337030000              JNC 0x0099d624
0099d2ed  0f1f00                    NOP dword ptr [EAX]
0099d2f0  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
0099d2f3  33d2                      XOR EDX,EDX
0099d2f5  2bce                      SUB ECX,ESI
0099d2f7  89558c                    MOV dword ptr [EBP + -0x74],EDX
0099d2fa  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099d2ff  c645eb00                  MOV byte ptr [EBP + -0x15],0x0
0099d303  f7e9                      IMUL ECX
0099d305  c1fa02                    SAR EDX,0x2
0099d308  8bc2                      MOV EAX,EDX
0099d30a  c1e81f                    SHR EAX,0x1f
0099d30d  48                        DEC EAX
0099d30e  03c2                      ADD EAX,EDX
0099d310  0f8453090000              JZ 0x0099dc69
0099d316  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
0099d319  8bc6                      MOV EAX,ESI
0099d31b  33f6                      XOR ESI,ESI
0099d31d  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
0099d323  807deb00                  CMP byte ptr [EBP + -0x15],0x0
0099d327  8bd0                      MOV EDX,EAX
0099d329  894dcc                    MOV dword ptr [EBP + -0x34],ECX
0099d32c  8955ec                    MOV dword ptr [EBP + -0x14],EDX
0099d32f  0f85cb020000              JNZ 0x0099d600
0099d335  f30f104c0618              MOVSS XMM1,dword ptr [ESI + EAX*0x1 + 0x18]
0099d33b  f30f1044061c              MOVSS XMM0,dword ptr [ESI + EAX*0x1 + 0x1c]
0099d341  f30f5c0c06                SUBSS XMM1,dword ptr [ESI + EAX*0x1]
0099d346  f30f5c440604              SUBSS XMM0,dword ptr [ESI + EAX*0x1 + 0x4]
0099d34c  f30f59c9                  MULSS XMM1,XMM1
0099d350  f30f59c0                  MULSS XMM0,XMM0
0099d354  f30f58c1                  ADDSS XMM0,XMM1
0099d358  f30f100d40acba00          MOVSS XMM1,dword ptr [0x00baac40]
0099d360  0f2fc8                    COMISS XMM1,XMM0
0099d363  0f874a020000              JA 0x0099d5b3
0099d369  8b4db0                    MOV ECX,dword ptr [EBP + -0x50]
0099d36c  33c0                      XOR EAX,EAX
0099d36e  8b55a0                    MOV EDX,dword ptr [EBP + -0x60]
0099d371  2bca                      SUB ECX,EDX
0099d373  c1f902                    SAR ECX,0x2
0099d376  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0099d379  894ddc                    MOV dword ptr [EBP + -0x24],ECX
0099d37c  85c9                      TEST ECX,ECX
0099d37e  0f842f020000              JZ 0x0099d5b3
0099d384  8b0482                    MOV EAX,dword ptr [EDX + EAX*0x4]
0099d387  8b17                      MOV EDX,dword ptr [EDI]
0099d389  03d6                      ADD EDX,ESI
0099d38b  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0099d391  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0099d397  51                        PUSH ECX
0099d398  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0099d39e  8d4218                    LEA EAX,[EDX + 0x18]
0099d3a1  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
0099d3a7  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
0099d3ad  6a00                      PUSH 0x0
0099d3af  50                        PUSH EAX
0099d3b0  e87bf0ffff                CALL 0x0099c430
0099d3b5  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099d3b8  83c40c                    ADD ESP,0xc
0099d3bb  f30f104814                MOVSS XMM1,dword ptr [EAX + 0x14]
0099d3c0  f30f59c9                  MULSS XMM1,XMM1
0099d3c4  0f2fc8                    COMISS XMM1,XMM0
0099d3c7  0f869d000000              JBE 0x0099d46a
0099d3cd  8b07                      MOV EAX,dword ptr [EDI]
0099d3cf  f30f109d78ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff78]
0099d3d7  f30f10a574ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff74]
0099d3df  0f28c3                    MOVAPS XMM0,XMM3
0099d3e2  0f28cc                    MOVAPS XMM1,XMM4
0099d3e5  f30f10743004              MOVSS XMM6,dword ptr [EAX + ESI*0x1 + 0x4]
0099d3eb  f30f10543014              MOVSS XMM2,dword ptr [EAX + ESI*0x1 + 0x14]
0099d3f1  f30f5cc6                  SUBSS XMM0,XMM6
0099d3f5  f30f102c30                MOVSS XMM5,dword ptr [EAX + ESI*0x1]
0099d3fa  f30f5cd6                  SUBSS XMM2,XMM6
0099d3fe  f30f5ccd                  SUBSS XMM1,XMM5
0099d402  f30f59d0                  MULSS XMM2,XMM0
0099d406  f30f10443010              MOVSS XMM0,dword ptr [EAX + ESI*0x1 + 0x10]
0099d40c  f30f5cc5                  SUBSS XMM0,XMM5
0099d410  f30f59c8                  MULSS XMM1,XMM0
0099d414  0f57c0                    XORPS XMM0,XMM0
0099d417  f30f58d1                  ADDSS XMM2,XMM1
0099d41b  0f2fd0                    COMISS XMM2,XMM0
0099d41e  764a                      JBE 0x0099d46a
0099d420  f30f101524acba00          MOVSS XMM2,dword ptr [0x00baac24]
0099d428  0f28cc                    MOVAPS XMM1,XMM4
0099d42b  0f28c3                    MOVAPS XMM0,XMM3
0099d42e  f30f5ccd                  SUBSS XMM1,XMM5
0099d432  f30f5cc6                  SUBSS XMM0,XMM6
0099d436  f30f59c9                  MULSS XMM1,XMM1
0099d43a  f30f59c0                  MULSS XMM0,XMM0
0099d43e  f30f58c1                  ADDSS XMM0,XMM1
0099d442  0f2fc2                    COMISS XMM0,XMM2
0099d445  7623                      JBE 0x0099d46a
0099d447  0f28cc                    MOVAPS XMM1,XMM4
0099d44a  0f28c3                    MOVAPS XMM0,XMM3
0099d44d  f30f5c44301c              SUBSS XMM0,dword ptr [EAX + ESI*0x1 + 0x1c]
0099d453  f30f5c4c3018              SUBSS XMM1,dword ptr [EAX + ESI*0x1 + 0x18]
0099d459  f30f59c0                  MULSS XMM0,XMM0
0099d45d  f30f59c9                  MULSS XMM1,XMM1
0099d461  f30f58c1                  ADDSS XMM0,XMM1
0099d465  0f2fc2                    COMISS XMM0,XMM2
0099d468  7718                      JA 0x0099d482
0099d46a  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0099d46d  40                        INC EAX
0099d46e  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0099d471  3b45dc                    CMP EAX,dword ptr [EBP + -0x24]
0099d474  0f8339010000              JNC 0x0099d5b3
0099d47a  8b55a0                    MOV EDX,dword ptr [EBP + -0x60]
0099d47d  e902ffffff                JMP 0x0099d384
0099d482  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0099d48a  8d4e18                    LEA ECX,[ESI + 0x18]
0099d48d  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
0099d495  03c8                      ADD ECX,EAX
0099d497  8b5704                    MOV EDX,dword ptr [EDI + 0x4]
0099d49a  f30f1165b4                MOVSS dword ptr [EBP + -0x4c],XMM4
0099d49f  f30f115db8                MOVSS dword ptr [EBP + -0x48],XMM3
0099d4a4  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099d4a9  f30f1155c0                MOVSS dword ptr [EBP + -0x40],XMM2
0099d4ae  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
0099d4b3  f30f1155c8                MOVSS dword ptr [EBP + -0x38],XMM2
0099d4b8  898d54ffffff              MOV dword ptr [EBP + 0xffffff54],ECX
0099d4be  3b5708                    CMP EDX,dword ptr [EDI + 0x8]
0099d4c1  0f84ac000000              JZ 0x0099d573
0099d4c7  3bca                      CMP ECX,EDX
0099d4c9  751a                      JNZ 0x0099d4e5
0099d4cb  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
0099d4cf  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
0099d4d2  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
0099d4d7  660fd64210                MOVQ qword ptr [EDX + 0x10],XMM0
0099d4dc  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099d4e0  e99a000000                JMP 0x0099d57f
0099d4e5  0f1042e8                  MOVUPS XMM0,xmmword ptr [EDX + -0x18]
0099d4e9  8d42e8                    LEA EAX,[EDX + -0x18]
0099d4ec  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0099d4ef  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
0099d4f2  f30f7e4010                MOVQ XMM0,qword ptr [EAX + 0x10]
0099d4f7  660fd64210                MOVQ qword ptr [EDX + 0x10],XMM0
0099d4fc  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099d500  3bc1                      CMP EAX,ECX
0099d502  7450                      JZ 0x0099d554
0099d504  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
0099d50a  8d4a14                    LEA ECX,[EDX + 0x14]
0099d50d  8bf8                      MOV EDI,EAX
0099d50f  8d57fc                    LEA EDX,[EDI + -0x4]
0099d512  8b42ec                    MOV EAX,dword ptr [EDX + -0x14]
0099d515  8d49e8                    LEA ECX,[ECX + -0x18]
0099d518  8941ec                    MOV dword ptr [ECX + -0x14],EAX
0099d51b  8d52e8                    LEA EDX,[EDX + -0x18]
0099d51e  8b4208                    MOV EAX,dword ptr [EDX + 0x8]
0099d521  83ef18                    SUB EDI,0x18
0099d524  8941f0                    MOV dword ptr [ECX + -0x10],EAX
0099d527  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
0099d52a  8941f4                    MOV dword ptr [ECX + -0xc],EAX
0099d52d  8b4210                    MOV EAX,dword ptr [EDX + 0x10]
0099d530  8941f8                    MOV dword ptr [ECX + -0x8],EAX
0099d533  8b4214                    MOV EAX,dword ptr [EDX + 0x14]
0099d536  8941fc                    MOV dword ptr [ECX + -0x4],EAX
0099d539  8b4218                    MOV EAX,dword ptr [EDX + 0x18]
0099d53c  8901                      MOV dword ptr [ECX],EAX
0099d53e  3bfe                      CMP EDI,ESI
0099d540  75d0                      JNZ 0x0099d512
0099d542  8bb570ffffff              MOV ESI,dword ptr [EBP + 0xffffff70]
0099d548  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
0099d54e  8b8d54ffffff              MOV ECX,dword ptr [EBP + 0xffffff54]
0099d554  f30f1121                  MOVSS dword ptr [ECX],XMM4
0099d558  f30f115904                MOVSS dword ptr [ECX + 0x4],XMM3
0099d55d  f30f114908                MOVSS dword ptr [ECX + 0x8],XMM1
0099d562  f30f11510c                MOVSS dword ptr [ECX + 0xc],XMM2
0099d567  f30f114910                MOVSS dword ptr [ECX + 0x10],XMM1
0099d56c  f30f115114                MOVSS dword ptr [ECX + 0x14],XMM2
0099d571  eb0c                      JMP 0x0099d57f
0099d573  8d45b4                    LEA EAX,[EBP + -0x4c]
0099d576  50                        PUSH EAX
0099d577  51                        PUSH ECX
0099d578  8bcf                      MOV ECX,EDI
0099d57a  e831420000                CALL 0x009a17b0
0099d57f  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0099d582  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099d585  8d1481                    LEA EDX,[ECX + EAX*0x4]
0099d588  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0099d58b  8d4a04                    LEA ECX,[EDX + 0x4]
0099d58e  2bc1                      SUB EAX,ECX
0099d590  50                        PUSH EAX
0099d591  51                        PUSH ECX
0099d592  52                        PUSH EDX
0099d593  e825331500                CALL 0x00af08bd
0099d598  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0099d59b  83c40c                    ADD ESP,0xc
0099d59e  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0099d5a1  83e804                    SUB EAX,0x4
0099d5a4  8945b0                    MOV dword ptr [EBP + -0x50],EAX
0099d5a7  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0099d5aa  c645eb01                  MOV byte ptr [EBP + -0x15],0x1
0099d5ae  e8ed060000                CALL 0x0099dca0
0099d5b3  8b07                      MOV EAX,dword ptr [EDI]
0099d5b5  83c618                    ADD ESI,0x18
0099d5b8  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099d5bb  ff458c                    INC dword ptr [EBP + -0x74]
0099d5be  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0099d5c1  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0099d5c4  894dcc                    MOV dword ptr [EBP + -0x34],ECX
0099d5c7  2bc8                      SUB ECX,EAX
0099d5c9  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099d5ce  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
0099d5d4  f7e9                      IMUL ECX
0099d5d6  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099d5d9  c1fa02                    SAR EDX,0x2
0099d5dc  8bc2                      MOV EAX,EDX
0099d5de  c1e81f                    SHR EAX,0x1f
0099d5e1  48                        DEC EAX
0099d5e2  03c2                      ADD EAX,EDX
0099d5e4  39458c                    CMP dword ptr [EBP + -0x74],EAX
0099d5e7  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
0099d5ea  0f8233fdffff              JC 0x0099d323
0099d5f0  807deb00                  CMP byte ptr [EBP + -0x15],0x0
0099d5f4  0f846f060000              JZ 0x0099dc69
0099d5fa  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
0099d5fd  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
0099d600  2bca                      SUB ECX,EDX
0099d602  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099d607  f7e9                      IMUL ECX
0099d609  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
0099d60c  c1fa02                    SAR EDX,0x2
0099d60f  8bc2                      MOV EAX,EDX
0099d611  c1e81f                    SHR EAX,0x1f
0099d614  03c2                      ADD EAX,EDX
0099d616  83f806                    CMP EAX,0x6
0099d619  0f82d1fcffff              JC 0x0099d2f0
0099d61f  e945060000                JMP 0x0099dc69
0099d624  83c8ff                    OR EAX,0xffffffff
0099d627  c745d801000000            MOV dword ptr [EBP + -0x28],0x1
0099d62e  89458c                    MOV dword ptr [EBP + -0x74],EAX
0099d631  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099d636  f7ea                      IMUL EDX
0099d638  c1fa02                    SAR EDX,0x2
0099d63b  8bc2                      MOV EAX,EDX
0099d63d  c1e81f                    SHR EAX,0x1f
0099d640  48                        DEC EAX
0099d641  03c2                      ADD EAX,EDX
0099d643  83f801                    CMP EAX,0x1
0099d646  0f861d060000              JBE 0x0099dc69
0099d64c  c745ec18000000            MOV dword ptr [EBP + -0x14],0x18
0099d653  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
0099d656  8bd6                      MOV EDX,ESI
0099d658  2bd0                      SUB EDX,EAX
0099d65a  33c9                      XOR ECX,ECX
0099d65c  c1fa02                    SAR EDX,0x2
0099d65f  894de4                    MOV dword ptr [EBP + -0x1c],ECX
0099d662  8955dc                    MOV dword ptr [EBP + -0x24],EDX
0099d665  85d2                      TEST EDX,EDX
0099d667  0f84a8000000              JZ 0x0099d715
0099d66d  0f1f00                    NOP dword ptr [EAX]
0099d670  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0099d673  8b17                      MOV EDX,dword ptr [EDI]
0099d675  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0099d67b  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0099d681  898d64ffffff              MOV dword ptr [EBP + 0xffffff64],ECX
0099d687  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0099d68a  03d1                      ADD EDX,ECX
0099d68c  51                        PUSH ECX
0099d68d  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
0099d693  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
0099d699  6a00                      PUSH 0x0
0099d69b  8d4218                    LEA EAX,[EDX + 0x18]
0099d69e  50                        PUSH EAX
0099d69f  e88cedffff                CALL 0x0099c430
0099d6a4  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099d6a7  83c40c                    ADD ESP,0xc
0099d6aa  f30f104814                MOVSS XMM1,dword ptr [EAX + 0x14]
0099d6af  f30f59c9                  MULSS XMM1,XMM1
0099d6b3  0f2fc8                    COMISS XMM1,XMM0
0099d6b6  7711                      JA 0x0099d6c9
0099d6b8  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
0099d6bb  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
0099d6be  41                        INC ECX
0099d6bf  894de4                    MOV dword ptr [EBP + -0x1c],ECX
0099d6c2  3b4ddc                    CMP ECX,dword ptr [EBP + -0x24]
0099d6c5  72a9                      JC 0x0099d670
0099d6c7  eb4c                      JMP 0x0099d715
0099d6c9  8b07                      MOV EAX,dword ptr [EDI]
0099d6cb  0345ec                    ADD EAX,dword ptr [EBP + -0x14]
0099d6ce  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
0099d6d6  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099d6d9  f30f1100                  MOVSS dword ptr [EAX],XMM0
0099d6dd  f30f108568ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff68]
0099d6e5  f30f114004                MOVSS dword ptr [EAX + 0x4],XMM0
0099d6ea  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0099d6ed  8d1481                    LEA EDX,[ECX + EAX*0x4]
0099d6f0  8bc6                      MOV EAX,ESI
0099d6f2  8d4a04                    LEA ECX,[EDX + 0x4]
0099d6f5  2bc1                      SUB EAX,ECX
0099d6f7  50                        PUSH EAX
0099d6f8  51                        PUSH ECX
0099d6f9  52                        PUSH EDX
0099d6fa  e8be311500                CALL 0x00af08bd
0099d6ff  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
0099d702  83ee04                    SUB ESI,0x4
0099d705  83c40c                    ADD ESP,0xc
0099d708  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
0099d70b  83f8ff                    CMP EAX,-0x1
0099d70e  0f4445d8                  CMOVZ EAX,dword ptr [EBP + -0x28]
0099d712  89458c                    MOV dword ptr [EBP + -0x74],EAX
0099d715  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099d718  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099d71d  2b0f                      SUB ECX,dword ptr [EDI]
0099d71f  ff45d8                    INC dword ptr [EBP + -0x28]
0099d722  8345ec18                  ADD dword ptr [EBP + -0x14],0x18
0099d726  f7e9                      IMUL ECX
0099d728  c1fa02                    SAR EDX,0x2
0099d72b  8bc2                      MOV EAX,EDX
0099d72d  c1e81f                    SHR EAX,0x1f
0099d730  48                        DEC EAX
0099d731  03c2                      ADD EAX,EDX
0099d733  3945d8                    CMP dword ptr [EBP + -0x28],EAX
0099d736  0f8217ffffff              JC 0x0099d653
0099d73c  837d8cff                  CMP dword ptr [EBP + -0x74],-0x1
0099d740  0f8e23050000              JLE 0x0099dc69
0099d746  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0099d749  e852050000                CALL 0x0099dca0
0099d74e  e916050000                JMP 0x0099dc69
0099d753  83f804                    CMP EAX,0x4
0099d756  0f85e0000000              JNZ 0x0099d83c
0099d75c  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
0099d75f  2b07                      SUB EAX,dword ptr [EDI]
0099d761  83e830                    SUB EAX,0x30
0099d764  83f818                    CMP EAX,0x18
0099d767  0f83fc040000              JNC 0x0099dc69
0099d76d  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099d770  8bc6                      MOV EAX,ESI
0099d772  2bc1                      SUB EAX,ECX
0099d774  c1f802                    SAR EAX,0x2
0099d777  85c0                      TEST EAX,EAX
0099d779  0f84b0000000              JZ 0x0099d82f
0099d77f  8d4104                    LEA EAX,[ECX + 0x4]
0099d782  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0099d785  8b01                      MOV EAX,dword ptr [ECX]
0099d787  8b4a4c                    MOV ECX,dword ptr [EDX + 0x4c]
0099d78a  8b37                      MOV ESI,dword ptr [EDI]
0099d78c  2bce                      SUB ECX,ESI
0099d78e  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0099d796  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0099d79e  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0099d7a3  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0099d7ab  8d45b4                    LEA EAX,[EBP + -0x4c]
0099d7ae  50                        PUSH EAX
0099d7af  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099d7b4  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0099d7b9  f7e9                      IMUL ECX
0099d7bb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0099d7c3  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099d7c8  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0099d7cd  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
0099d7d2  8bcf                      MOV ECX,EDI
0099d7d4  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0099d7d9  c1fa02                    SAR EDX,0x2
0099d7dc  8bc2                      MOV EAX,EDX
0099d7de  c1e81f                    SHR EAX,0x1f
0099d7e1  03c2                      ADD EAX,EDX
0099d7e3  8d0440                    LEA EAX,[EAX + EAX*0x2]
0099d7e6  8d40fd                    LEA EAX,[EAX + -0x3]
0099d7e9  8d04c6                    LEA EAX,[ESI + EAX*0x8]
0099d7ec  50                        PUSH EAX
0099d7ed  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
0099d7f3  50                        PUSH EAX
0099d7f4  e8873e0000                CALL 0x009a1680
0099d7f9  8b75b0                    MOV ESI,dword ptr [EBP + -0x50]
0099d7fc  8bc6                      MOV EAX,ESI
0099d7fe  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
0099d801  2bc1                      SUB EAX,ECX
0099d803  50                        PUSH EAX
0099d804  51                        PUSH ECX
0099d805  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099d808  51                        PUSH ECX
0099d809  e8af301500                CALL 0x00af08bd
0099d80e  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099d811  83ee04                    SUB ESI,0x4
0099d814  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0099d817  8bc6                      MOV EAX,ESI
0099d819  2bc1                      SUB EAX,ECX
0099d81b  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0099d81e  c1f802                    SAR EAX,0x2
0099d821  83c40c                    ADD ESP,0xc
0099d824  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
0099d827  85c0                      TEST EAX,EAX
0099d829  0f8556ffffff              JNZ 0x0099d785
0099d82f  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0099d832  e869040000                CALL 0x0099dca0
0099d837  e92d040000                JMP 0x0099dc69
0099d83c  83f805                    CMP EAX,0x5
0099d83f  0f8524040000              JNZ 0x0099dc69
0099d845  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
0099d848  8b0f                      MOV ECX,dword ptr [EDI]
0099d84a  2bc1                      SUB EAX,ECX
0099d84c  83e830                    SUB EAX,0x30
0099d84f  83f818                    CMP EAX,0x18
0099d852  0f8311040000              JNC 0x0099dc69
0099d858  8b424c                    MOV EAX,dword ptr [EDX + 0x4c]
0099d85b  f30f1050e8                MOVSS XMM2,dword ptr [EAX + -0x18]
0099d860  f30f1058ec                MOVSS XMM3,dword ptr [EAX + -0x14]
0099d865  f30f5c11                  SUBSS XMM2,dword ptr [ECX]
0099d869  f30f5c5904                SUBSS XMM3,dword ptr [ECX + 0x4]
0099d86e  0f28c2                    MOVAPS XMM0,XMM2
0099d871  f30f1155d4                MOVSS dword ptr [EBP + -0x2c],XMM2
0099d876  0f28cb                    MOVAPS XMM1,XMM3
0099d879  f30f59c2                  MULSS XMM0,XMM2
0099d87d  f30f59cb                  MULSS XMM1,XMM3
0099d881  f30f115dd0                MOVSS dword ptr [EBP + -0x30],XMM3
0099d886  f30f58c8                  ADDSS XMM1,XMM0
0099d88a  f30f10056ca0ba00          MOVSS XMM0,dword ptr [0x00baa06c]
0099d892  0f2fc1                    COMISS XMM0,XMM1
0099d895  0f87ce030000              JA 0x0099dc69
0099d89b  83c0e8                    ADD EAX,-0x18
0099d89e  8bcf                      MOV ECX,EDI
0099d8a0  50                        PUSH EAX
0099d8a1  8d45dc                    LEA EAX,[EBP + -0x24]
0099d8a4  50                        PUSH EAX
0099d8a5  e8663d0000                CALL 0x009a1610
0099d8aa  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099d8ad  2bf1                      SUB ESI,ECX
0099d8af  c1fe02                    SAR ESI,0x2
0099d8b2  8975b0                    MOV dword ptr [EBP + -0x50],ESI
0099d8b5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0099d8c0  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0099d8c3  f30f1025d0acba00          MOVSS XMM4,dword ptr [0x00baacd0]
0099d8cb  8b704c                    MOV ESI,dword ptr [EAX + 0x4c]
0099d8ce  33c0                      XOR EAX,EAX
0099d8d0  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0099d8d3  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
0099d8d6  89758c                    MOV dword ptr [EBP + -0x74],ESI
0099d8d9  f30f1076e8                MOVSS XMM6,dword ptr [ESI + -0x18]
0099d8de  f30f107eec                MOVSS XMM7,dword ptr [ESI + -0x14]
0099d8e3  85c0                      TEST EAX,EAX
0099d8e5  0f846e030000              JZ 0x0099dc59
0099d8eb  8b7ddc                    MOV EDI,dword ptr [EBP + -0x24]
0099d8ee  8bf7                      MOV ESI,EDI
0099d8f0  8b14b9                    MOV EDX,dword ptr [ECX + EDI*0x4]
0099d8f3  0f28c6                    MOVAPS XMM0,XMM6
0099d8f6  0f28cf                    MOVAPS XMM1,XMM7
0099d8f9  0f28ec                    MOVAPS XMM5,XMM4
0099d8fc  f30f5c8a40030000          SUBSS XMM1,dword ptr [EDX + 0x340]
0099d904  f30f5c823c030000          SUBSS XMM0,dword ptr [EDX + 0x33c]
0099d90c  f30f59c9                  MULSS XMM1,XMM1
0099d910  f30f59c0                  MULSS XMM0,XMM0
0099d914  f30f58c8                  ADDSS XMM1,XMM0
0099d918  0f2fe1                    COMISS XMM4,XMM1
0099d91b  7603                      JBE 0x0099d920
0099d91d  0f28e1                    MOVAPS XMM4,XMM1
0099d920  0f2fe9                    COMISS XMM5,XMM1
0099d923  0f46d6                    CMOVBE EDX,ESI
0099d926  47                        INC EDI
0099d927  8bf2                      MOV ESI,EDX
0099d929  3bf8                      CMP EDI,EAX
0099d92b  72c3                      JC 0x0099d8f0
0099d92d  8bbd68ffffff              MOV EDI,dword ptr [EBP + 0xffffff68]
0099d933  8bc2                      MOV EAX,EDX
0099d935  8975e4                    MOV dword ptr [EBP + -0x1c],ESI
0099d938  8b758c                    MOV ESI,dword ptr [EBP + -0x74]
0099d93b  85c0                      TEST EAX,EAX
0099d93d  0f8416030000              JZ 0x0099dc59
0099d943  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0099d94b  0f28e2                    MOVAPS XMM4,XMM2
0099d94e  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0099d956  f30f5cc6                  SUBSS XMM0,XMM6
0099d95a  f30f5ccf                  SUBSS XMM1,XMM7
0099d95e  f30f1165ac                MOVSS dword ptr [EBP + -0x54],XMM4
0099d963  f30f115de4                MOVSS dword ptr [EBP + -0x1c],XMM3
0099d968  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0099d96d  0f28c2                    MOVAPS XMM0,XMM2
0099d970  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
0099d975  0f28cb                    MOVAPS XMM1,XMM3
0099d978  f30f59c2                  MULSS XMM0,XMM2
0099d97c  f30f59cb                  MULSS XMM1,XMM3
0099d980  f30f58c1                  ADDSS XMM0,XMM1
0099d984  e8c780a9ff                CALL 0x00435a50
0099d989  0f28c8                    MOVAPS XMM1,XMM0
0099d98c  0f57c0                    XORPS XMM0,XMM0
0099d98f  0f2fc8                    COMISS XMM1,XMM0
0099d992  7623                      JBE 0x0099d9b7
0099d994  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0099d99c  f30f5ec1                  DIVSS XMM0,XMM1
0099d9a0  0f28e0                    MOVAPS XMM4,XMM0
0099d9a3  f30f5945d0                MULSS XMM0,dword ptr [EBP + -0x30]
0099d9a8  f30f5965d4                MULSS XMM4,dword ptr [EBP + -0x2c]
0099d9ad  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0099d9b2  f30f1165ac                MOVSS dword ptr [EBP + -0x54],XMM4
0099d9b7  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
0099d9bc  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
0099d9c1  0f28c1                    MOVAPS XMM0,XMM1
0099d9c4  f30f59c1                  MULSS XMM0,XMM1
0099d9c8  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
0099d9cd  0f28ca                    MOVAPS XMM1,XMM2
0099d9d0  f30f59ca                  MULSS XMM1,XMM2
0099d9d4  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
0099d9d9  f30f58c1                  ADDSS XMM0,XMM1
0099d9dd  e86e80a9ff                CALL 0x00435a50
0099d9e2  0f28c8                    MOVAPS XMM1,XMM0
0099d9e5  0f57c0                    XORPS XMM0,XMM0
0099d9e8  0f2fc8                    COMISS XMM1,XMM0
0099d9eb  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
0099d9f3  7620                      JBE 0x0099da15
0099d9f5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0099d9fd  f30f5ec1                  DIVSS XMM0,XMM1
0099da01  0f28c8                    MOVAPS XMM1,XMM0
0099da04  f30f5945d8                MULSS XMM0,dword ptr [EBP + -0x28]
0099da09  f30f594dec                MULSS XMM1,dword ptr [EBP + -0x14]
0099da0e  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0099da13  eb05                      JMP 0x0099da1a
0099da15  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
0099da1a  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
0099da1f  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099da24  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099da27  2b0f                      SUB ECX,dword ptr [EDI]
0099da29  f30f59c1                  MULSS XMM0,XMM1
0099da2d  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
0099da32  f30f594d8c                MULSS XMM1,dword ptr [EBP + -0x74]
0099da37  f7e9                      IMUL ECX
0099da39  f30f58c1                  ADDSS XMM0,XMM1
0099da3d  c1fa02                    SAR EDX,0x2
0099da40  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0099da48  8bc2                      MOV EAX,EDX
0099da4a  c1e81f                    SHR EAX,0x1f
0099da4d  03c2                      ADD EAX,EDX
0099da4f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0099da57  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
0099da5c  83f802                    CMP EAX,0x2
0099da5f  722c                      JC 0x0099da8d
0099da61  8b17                      MOV EDX,dword ptr [EDI]
0099da63  8d0c40                    LEA ECX,[EAX + EAX*0x2]
0099da66  8d0440                    LEA EAX,[EAX + EAX*0x2]
0099da69  f30f104ccae8              MOVSS XMM1,dword ptr [EDX + ECX*0x8 + -0x18]
0099da6f  f30f1054caec              MOVSS XMM2,dword ptr [EDX + ECX*0x8 + -0x14]
0099da75  f30f5c4cc2d0              SUBSS XMM1,dword ptr [EDX + EAX*0x8 + -0x30]
0099da7b  f30f5c54c2d4              SUBSS XMM2,dword ptr [EDX + EAX*0x8 + -0x2c]
0099da81  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
0099da86  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
0099da8b  eb0a                      JMP 0x0099da97
0099da8d  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
0099da92  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0099da97  0f28c1                    MOVAPS XMM0,XMM1
0099da9a  f30f59c1                  MULSS XMM0,XMM1
0099da9e  0f28ca                    MOVAPS XMM1,XMM2
0099daa1  f30f59ca                  MULSS XMM1,XMM2
0099daa5  f30f58c1                  ADDSS XMM0,XMM1
0099daa9  e8a27fa9ff                CALL 0x00435a50
0099daae  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
0099dab6  0f57e4                    XORPS XMM4,XMM4
0099dab9  0f2fc4                    COMISS XMM0,XMM4
0099dabc  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
0099dac1  f30f105dd0                MOVSS XMM3,dword ptr [EBP + -0x30]
0099dac6  7612                      JBE 0x0099dada
0099dac8  0f28cd                    MOVAPS XMM1,XMM5
0099dacb  f30f5ec8                  DIVSS XMM1,XMM0
0099dacf  0f28c1                    MOVAPS XMM0,XMM1
0099dad2  f30f59d9                  MULSS XMM3,XMM1
0099dad6  f30f59d0                  MULSS XMM2,XMM0
0099dada  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
0099dae2  0f2fc4                    COMISS XMM0,XMM4
0099dae5  7616                      JBE 0x0099dafd
0099dae7  0f28cd                    MOVAPS XMM1,XMM5
0099daea  f30f5ec8                  DIVSS XMM1,XMM0
0099daee  0f28c1                    MOVAPS XMM0,XMM1
0099daf1  f30f594dd8                MULSS XMM1,dword ptr [EBP + -0x28]
0099daf6  f30f5945ec                MULSS XMM0,dword ptr [EBP + -0x14]
0099dafb  eb0a                      JMP 0x0099db07
0099dafd  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0099db02  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
0099db07  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
0099db0f  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0099db17  f30f594dac                MULSS XMM1,dword ptr [EBP + -0x54]
0099db1c  f30f5945ac                MULSS XMM0,dword ptr [EBP + -0x54]
0099db21  f30f58cb                  ADDSS XMM1,XMM3
0099db25  f30f58d0                  ADDSS XMM2,XMM0
0099db29  0f28c1                    MOVAPS XMM0,XMM1
0099db2c  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
0099db31  f30f59c1                  MULSS XMM0,XMM1
0099db35  0f28ca                    MOVAPS XMM1,XMM2
0099db38  f30f1155d4                MOVSS dword ptr [EBP + -0x2c],XMM2
0099db3d  f30f59ca                  MULSS XMM1,XMM2
0099db41  f30f58c1                  ADDSS XMM0,XMM1
0099db45  e8067fa9ff                CALL 0x00435a50
0099db4a  f30f105dd0                MOVSS XMM3,dword ptr [EBP + -0x30]
0099db4f  0f28c8                    MOVAPS XMM1,XMM0
0099db52  0f57c0                    XORPS XMM0,XMM0
0099db55  0f2fc8                    COMISS XMM1,XMM0
0099db58  7625                      JBE 0x0099db7f
0099db5a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0099db62  f30f5ec1                  DIVSS XMM0,XMM1
0099db66  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
0099db6b  f30f59c8                  MULSS XMM1,XMM0
0099db6f  f30f59d8                  MULSS XMM3,XMM0
0099db73  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
0099db78  f30f115dd0                MOVSS dword ptr [EBP + -0x30],XMM3
0099db7d  eb05                      JMP 0x0099db84
0099db7f  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
0099db84  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
0099db8c  0f28c3                    MOVAPS XMM0,XMM3
0099db8f  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
0099db92  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0099db9a  f30f584ee8                ADDSS XMM1,dword ptr [ESI + -0x18]
0099db9f  f30f5846ec                ADDSS XMM0,dword ptr [ESI + -0x14]
0099dba4  f30f118d6cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM1
0099dbac  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
0099dbb1  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0099dbb9  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
0099dbc1  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0099dbc6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0099dbce  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0099dbd3  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0099dbd8  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
0099dbdd  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0099dbe2  3b4708                    CMP EAX,dword ptr [EDI + 0x8]
0099dbe5  7417                      JZ 0x0099dbfe
0099dbe7  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
0099dbeb  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099dbee  f30f7e45c4                MOVQ XMM0,qword ptr [EBP + -0x3c]
0099dbf3  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099dbf8  83470418                  ADD dword ptr [EDI + 0x4],0x18
0099dbfc  eb0c                      JMP 0x0099dc0a
0099dbfe  8d4db4                    LEA ECX,[EBP + -0x4c]
0099dc01  51                        PUSH ECX
0099dc02  50                        PUSH EAX
0099dc03  8bcf                      MOV ECX,EDI
0099dc05  e8a63b0000                CALL 0x009a17b0
0099dc0a  a17816c700                MOV EAX,[0x00c71678]
0099dc0f  51                        PUSH ECX
0099dc10  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
0099dc16  c7042400000000            MOV dword ptr [ESP],0x0
0099dc1d  51                        PUSH ECX
0099dc1e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0099dc24  e83757e7ff                CALL 0x00813360
0099dc29  84c0                      TEST AL,AL
0099dc2b  742c                      JZ 0x0099dc59
0099dc2d  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
0099dc30  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099dc35  2b0f                      SUB ECX,dword ptr [EDI]
0099dc37  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
0099dc3c  f30f105dd0                MOVSS XMM3,dword ptr [EBP + -0x30]
0099dc41  f7e9                      IMUL ECX
0099dc43  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
0099dc46  c1fa02                    SAR EDX,0x2
0099dc49  8bc2                      MOV EAX,EDX
0099dc4b  c1e81f                    SHR EAX,0x1f
0099dc4e  03c2                      ADD EAX,EDX
0099dc50  83f819                    CMP EAX,0x19
0099dc53  0f8267fcffff              JC 0x0099d8c0
0099dc59  f30f100d80a2ba00          MOVSS XMM1,dword ptr [0x00baa280]
0099dc61  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0099dc64  e8f7040000                CALL 0x0099e160
0099dc69  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
0099dc6c  85c0                      TEST EAX,EAX
0099dc6e  7412                      JZ 0x0099dc82
0099dc70  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
0099dc76  2bc8                      SUB ECX,EAX
0099dc78  c1f902                    SAR ECX,0x2
0099dc7b  51                        PUSH ECX
0099dc7c  50                        PUSH EAX
0099dc7d  e8beeaa6ff                CALL 0x0040c740
0099dc82  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0099dc85  64890d00000000            MOV dword ptr FS:[0x0],ECX
0099dc8c  59                        POP ECX
0099dc8d  5f                        POP EDI
0099dc8e  5e                        POP ESI
0099dc8f  8be5                      MOV ESP,EBP
0099dc91  5d                        POP EBP
0099dc92  8be3                      MOV ESP,EBX
0099dc94  5b                        POP EBX
0099dc95  c20800                    RET 0x8
