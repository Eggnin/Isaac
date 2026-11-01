; J460 NPC AI 0x00971810 HELPER_Laser_ApplyDamage
; types=7
; identities=7.*
; entry=00971810
00971810  53                        PUSH EBX
00971811  8bdc                      MOV EBX,ESP
00971813  83ec08                    SUB ESP,0x8
00971816  83e4f8                    AND ESP,0xfffffff8
00971819  83c404                    ADD ESP,0x4
0097181c  55                        PUSH EBP
0097181d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00971820  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00971824  8bec                      MOV EBP,ESP
00971826  6aff                      PUSH -0x1
00971828  68a0cab000                PUSH 0xb0caa0
0097182d  64a100000000              MOV EAX,FS:[0x0]
00971833  50                        PUSH EAX
00971834  53                        PUSH EBX
00971835  81ec50020000              SUB ESP,0x250
0097183b  a1b493bf00                MOV EAX,[0x00bf93b4]
00971840  33c5                      XOR EAX,EBP
00971842  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00971845  56                        PUSH ESI
00971846  57                        PUSH EDI
00971847  50                        PUSH EAX
00971848  8d45f4                    LEA EAX,[EBP + -0xc]
0097184b  64a300000000              MOV FS:[0x0],EAX
00971851  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
00971859  8bf9                      MOV EDI,ECX
0097185b  897d84                    MOV dword ptr [EBP + -0x7c],EDI
0097185e  80bf5d04000000            CMP byte ptr [EDI + 0x45d],0x0
00971865  0f843e180000              JZ 0x009730a9
0097186b  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
00971875  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
0097187f  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
00971889  6a0a                      PUSH 0xa
0097188b  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00971891  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00971898  e8e3afabff                CALL 0x0042c880
0097189d  8d8728040000              LEA EAX,[EDI + 0x428]
009718a3  68604cc300                PUSH 0xc34c60
009718a8  8bd0                      MOV EDX,EAX
009718aa  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
009718b0  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
009718b6  e8b558aaff                CALL 0x00417170
009718bb  83c404                    ADD ESP,0x4
009718be  8b08                      MOV ECX,dword ptr [EAX]
009718c0  0b4804                    OR ECX,dword ptr [EAX + 0x4]
009718c3  750f                      JNZ 0x009718d4
009718c5  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
009718c8  0b480c                    OR ECX,dword ptr [EAX + 0xc]
009718cb  c6855fffffff00            MOV byte ptr [EBP + 0xffffff5f],0x0
009718d2  7407                      JZ 0x009718db
009718d4  c6855fffffff01            MOV byte ptr [EBP + 0xffffff5f],0x1
009718db  a17816c700                MOV EAX,[0x00c71678]
009718e0  33c9                      XOR ECX,ECX
009718e2  8bb548ffffff              MOV ESI,dword ptr [EBP + 0xffffff48]
009718e8  898d60ffffff              MOV dword ptr [EBP + 0xffffff60],ECX
009718ee  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
009718f4  898570ffffff              MOV dword ptr [EBP + 0xffffff70],EAX
009718fa  398864120000              CMP dword ptr [EAX + 0x1264],ECX
00971900  0f866f040000              JBE 0x00971d75
00971906  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00971910  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00971916  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00971919  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0097191f  894580                    MOV dword ptr [EBP + -0x80],EAX
00971922  817828e8030000            CMP dword ptr [EAX + 0x28],0x3e8
00971929  0f85e3010000              JNZ 0x00971b12
0097192f  8b482c                    MOV ECX,dword ptr [EAX + 0x2c]
00971932  83f915                    CMP ECX,0x15
00971935  741b                      JZ 0x00971952
00971937  83f921                    CMP ECX,0x21
0097193a  7416                      JZ 0x00971952
0097193c  83f93f                    CMP ECX,0x3f
0097193f  7411                      JZ 0x00971952
00971941  83f940                    CMP ECX,0x40
00971944  740c                      JZ 0x00971952
00971946  81f99f000000              CMP ECX,0x9f
0097194c  0f85c0010000              JNZ 0x00971b12
00971952  3bb54cffffff              CMP ESI,dword ptr [EBP + 0xffffff4c]
00971958  0f85a8020000              JNZ 0x00971c06
0097195e  8d4580                    LEA EAX,[EBP + -0x80]
00971961  50                        PUSH EAX
00971962  56                        PUSH ESI
00971963  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00971969  e8b2afabff                CALL 0x0042c920
0097196e  8b4580                    MOV EAX,dword ptr [EBP + -0x80]
00971971  8bb548ffffff              MOV ESI,dword ptr [EBP + 0xffffff48]
00971977  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0097197d  68204bc300                PUSH 0xc34b20
00971982  8d9728040000              LEA EDX,[EDI + 0x428]
00971988  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
0097198e  e8dd57aaff                CALL 0x00417170
00971993  83c404                    ADD ESP,0x4
00971996  8b08                      MOV ECX,dword ptr [EAX]
00971998  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097199b  750c                      JNZ 0x009719a9
0097199d  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
009719a0  0b480c                    OR ECX,dword ptr [EAX + 0xc]
009719a3  0f84ad030000              JZ 0x00971d56
009719a9  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
009719af  6a00                      PUSH 0x0
009719b1  e8aaabd3ff                CALL 0x006ac560
009719b6  8b9578ffffff              MOV EDX,dword ptr [EBP + 0xffffff78]
009719bc  84c0                      TEST AL,AL
009719be  750a                      JNZ 0x009719ca
009719c0  837a2805                  CMP dword ptr [EDX + 0x28],0x5
009719c4  0f858c030000              JNZ 0x00971d56
009719ca  85d2                      TEST EDX,EDX
009719cc  7429                      JZ 0x009719f7
009719ce  837a2805                  CMP dword ptr [EDX + 0x28],0x5
009719d2  7523                      JNZ 0x009719f7
009719d4  83ba3405000000            CMP dword ptr [EDX + 0x534],0x0
009719db  0f8575030000              JNZ 0x00971d56
009719e1  8b4a2c                    MOV ECX,dword ptr [EDX + 0x2c]
009719e4  e857c9d7ff                CALL 0x006ee340
009719e9  84c0                      TEST AL,AL
009719eb  740a                      JZ 0x009719f7
009719ed  837a3000                  CMP dword ptr [EDX + 0x30],0x0
009719f1  0f845f030000              JZ 0x00971d56
009719f7  8b8784040000              MOV EAX,dword ptr [EDI + 0x484]
009719fd  2b8780040000              SUB EAX,dword ptr [EDI + 0x480]
00971a03  f30f1025a4acba00          MOVSS XMM4,dword ptr [0x00baaca4]
00971a0b  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00971a13  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
00971a1b  c1f803                    SAR EAX,0x3
00971a1e  83c0ff                    ADD EAX,-0x1
00971a21  f30f11a558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM4
00971a29  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
00971a2e  f30f11957cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM2
00971a36  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
00971a40  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00971a46  0f840a030000              JZ 0x00971d56
00971a4c  8b8a40030000              MOV ECX,dword ptr [EDX + 0x340]
00971a52  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
00971a58  898d28ffffff              MOV dword ptr [EBP + 0xffffff28],ECX
00971a5e  8b8f80040000              MOV ECX,dword ptr [EDI + 0x480]
00971a64  83c108                    ADD ECX,0x8
00971a67  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
00971a6d  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
00971a73  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00971a79  50                        PUSH EAX
00971a7a  8d51f8                    LEA EDX,[ECX + -0x8]
00971a7d  51                        PUSH ECX
00971a7e  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
00971a84  e8b7a80200                CALL 0x0099c340
00971a89  8b8d74ffffff              MOV ECX,dword ptr [EBP + 0xffffff74]
00971a8f  0f28e0                    MOVAPS XMM4,XMM0
00971a92  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
00971a9a  83c408                    ADD ESP,0x8
00971a9d  0f2fc4                    COMISS XMM0,XMM4
00971aa0  0f8670010000              JBE 0x00971c16
00971aa6  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
00971aae  0f2fc4                    COMISS XMM0,XMM4
00971ab1  0f865f010000              JBE 0x00971c16
00971ab7  f30f1019                  MOVSS XMM3,dword ptr [ECX]
00971abb  f30f5c1a                  SUBSS XMM3,dword ptr [EDX]
00971abf  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00971ac4  f30f5c49fc                SUBSS XMM1,dword ptr [ECX + -0x4]
00971ac9  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00971acf  f30f11a558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM4
00971ad7  f30f599d40ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff40]
00971adf  f30f598d40ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff40]
00971ae7  f30f581a                  ADDSS XMM3,dword ptr [EDX]
00971aeb  f30f5849fc                ADDSS XMM1,dword ptr [ECX + -0x4]
00971af0  f30f5c983c030000          SUBSS XMM3,dword ptr [EAX + 0x33c]
00971af8  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
00971b00  f30f115d88                MOVSS dword ptr [EBP + -0x78],XMM3
00971b05  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
00971b0d  e911010000                JMP 0x00971c23
00971b12  50                        PUSH EAX
00971b13  8bcf                      MOV ECX,EDI
00971b15  e866b4ffff                CALL 0x0096cf80
00971b1a  84c0                      TEST AL,AL
00971b1c  0f85d2000000              JNZ 0x00971bf4
00971b22  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00971b28  8b4828                    MOV ECX,dword ptr [EAX + 0x28]
00971b2b  83f904                    CMP ECX,0x4
00971b2e  7560                      JNZ 0x00971b90
00971b30  8b97bc030000              MOV EDX,dword ptr [EDI + 0x3bc]
00971b36  85d2                      TEST EDX,EDX
00971b38  742a                      JZ 0x00971b64
00971b3a  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
00971b3d  83f902                    CMP ECX,0x2
00971b40  7508                      JNZ 0x00971b4a
00971b42  837a3401                  CMP dword ptr [EDX + 0x34],0x1
00971b46  751c                      JNZ 0x00971b64
00971b48  eb27                      JMP 0x00971b71
00971b4a  81f9e8030000              CMP ECX,0x3e8
00971b50  7508                      JNZ 0x00971b5a
00971b52  837a3401                  CMP dword ptr [EDX + 0x34],0x1
00971b56  750c                      JNZ 0x00971b64
00971b58  eb17                      JMP 0x00971b71
00971b5a  83f901                    CMP ECX,0x1
00971b5d  7412                      JZ 0x00971b71
00971b5f  83f903                    CMP ECX,0x3
00971b62  740d                      JZ 0x00971b71
00971b64  8b4f34                    MOV ECX,dword ptr [EDI + 0x34]
00971b67  83f901                    CMP ECX,0x1
00971b6a  7405                      JZ 0x00971b71
00971b6c  83f903                    CMP ECX,0x3
00971b6f  751c                      JNZ 0x00971b8d
00971b71  3bb54cffffff              CMP ESI,dword ptr [EBP + 0xffffff4c]
00971b77  0f84e1fdffff              JZ 0x0097195e
00971b7d  8906                      MOV dword ptr [ESI],EAX
00971b7f  83c604                    ADD ESI,0x4
00971b82  89b548ffffff              MOV dword ptr [EBP + 0xffffff48],ESI
00971b88  e9f0fdffff                JMP 0x0097197d
00971b8d  8b4828                    MOV ECX,dword ptr [EAX + 0x28]
00971b90  80bd5fffffff00            CMP byte ptr [EBP + 0xffffff5f],0x0
00971b97  0f84e0fdffff              JZ 0x0097197d
00971b9d  83f909                    CMP ECX,0x9
00971ba0  0f85d7fdffff              JNZ 0x0097197d
00971ba6  8b8038040000              MOV EAX,dword ptr [EAX + 0x438]
00971bac  2500000080                AND EAX,0x80000000
00971bb1  83c800                    OR EAX,0x0
00971bb4  0f85c3fdffff              JNZ 0x0097197d
00971bba  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00971bbd  83f801                    CMP EAX,0x1
00971bc0  740a                      JZ 0x00971bcc
00971bc2  83f802                    CMP EAX,0x2
00971bc5  7405                      JZ 0x00971bcc
00971bc7  83f803                    CMP EAX,0x3
00971bca  7512                      JNZ 0x00971bde
00971bcc  e88fd3d7ff                CALL 0x006eef60
00971bd1  33d2                      XOR EDX,EDX
00971bd3  b932000000                MOV ECX,0x32
00971bd8  f7f1                      DIV ECX
00971bda  85d2                      TEST EDX,EDX
00971bdc  7416                      JZ 0x00971bf4
00971bde  e87dd3d7ff                CALL 0x006eef60
00971be3  33d2                      XOR EDX,EDX
00971be5  b905000000                MOV ECX,0x5
00971bea  f7f1                      DIV ECX
00971bec  85d2                      TEST EDX,EDX
00971bee  0f8589fdffff              JNZ 0x0097197d
00971bf4  3bb54cffffff              CMP ESI,dword ptr [EBP + 0xffffff4c]
00971bfa  0f845efdffff              JZ 0x0097195e
00971c00  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00971c06  8906                      MOV dword ptr [ESI],EAX
00971c08  83c604                    ADD ESI,0x4
00971c0b  89b548ffffff              MOV dword ptr [EBP + 0xffffff48],ESI
00971c11  e967fdffff                JMP 0x0097197d
00971c16  f30f108d7cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff7c]
00971c1e  f30f105d88                MOVSS XMM3,dword ptr [EBP + -0x78]
00971c23  0f2e1d40b6c700            UCOMISS XMM3,dword ptr [0x00c7b640]
00971c2a  9f                        LAHF
00971c2b  f6c444                    TEST AH,0x44
00971c2e  7a34                      JP 0x00971c64
00971c30  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00971c37  9f                        LAHF
00971c38  f6c444                    TEST AH,0x44
00971c3b  7a27                      JP 0x00971c64
00971c3d  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
00971c43  83c108                    ADD ECX,0x8
00971c46  40                        INC EAX
00971c47  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
00971c4d  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
00971c53  3b8554ffffff              CMP EAX,dword ptr [EBP + 0xffffff54]
00971c59  0f8214feffff              JC 0x00971a73
00971c5f  e9f2000000                JMP 0x00971d56
00971c64  0f28c1                    MOVAPS XMM0,XMM1
00971c67  f30f59c1                  MULSS XMM0,XMM1
00971c6b  0f28cb                    MOVAPS XMM1,XMM3
00971c6e  f30f59cb                  MULSS XMM1,XMM3
00971c72  f30f58c1                  ADDSS XMM0,XMM1
00971c76  e8d53dacff                CALL 0x00435a50
00971c7b  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
00971c80  0f28d8                    MOVAPS XMM3,XMM0
00971c83  f30f10957cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff7c]
00971c8b  0f57c0                    XORPS XMM0,XMM0
00971c8e  0f2fd8                    COMISS XMM3,XMM0
00971c91  7617                      JBE 0x00971caa
00971c93  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00971c9b  f30f5ec3                  DIVSS XMM0,XMM3
00971c9f  f30f59c8                  MULSS XMM1,XMM0
00971ca3  f30f59d0                  MULSS XMM2,XMM0
00971ca7  0f57c0                    XORPS XMM0,XMM0
00971caa  a17816c700                MOV EAX,[0x00c71678]
00971caf  f30f102d1ca8ba00          MOVSS XMM5,dword ptr [0x00baa81c]
00971cb7  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
00971cbd  0f28e5                    MOVAPS XMM4,XMM5
00971cc0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00971cc7  7c06                      JL 0x00971ccf
00971cc9  83792801                  CMP dword ptr [ECX + 0x28],0x1
00971ccd  740f                      JZ 0x00971cde
00971ccf  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00971cd2  83f80a                    CMP EAX,0xa
00971cd5  7c0f                      JL 0x00971ce6
00971cd7  3de8030000                CMP EAX,0x3e8
00971cdc  7d08                      JGE 0x00971ce6
00971cde  f30f102504a9ba00          MOVSS XMM4,dword ptr [0x00baa904]
00971ce6  0f2feb                    COMISS XMM5,XMM3
00971ce9  f30f59cc                  MULSS XMM1,XMM4
00971ced  f30f59d4                  MULSS XMM2,XMM4
00971cf1  7612                      JBE 0x00971d05
00971cf3  f30f5e1dd0a9ba00          DIVSS XMM3,dword ptr [0x00baa9d0]
00971cfb  f30f59cb                  MULSS XMM1,XMM3
00971cff  f30f59d3                  MULSS XMM2,XMM3
00971d03  eb08                      JMP 0x00971d0d
00971d05  f30f5ecb                  DIVSS XMM1,XMM3
00971d09  f30f5ed3                  DIVSS XMM2,XMM3
00971d0d  f30f10996c030000          MOVSS XMM3,dword ptr [ECX + 0x36c]
00971d15  0f2ed8                    UCOMISS XMM3,XMM0
00971d18  9f                        LAHF
00971d19  f6c444                    TEST AH,0x44
00971d1c  7b38                      JNP 0x00971d56
00971d1e  f30f10819c030000          MOVSS XMM0,dword ptr [ECX + 0x39c]
00971d26  f30f59d0                  MULSS XMM2,XMM0
00971d2a  f30f59c8                  MULSS XMM1,XMM0
00971d2e  f30f5ed3                  DIVSS XMM2,XMM3
00971d32  f30f5ecb                  DIVSS XMM1,XMM3
00971d36  f30f589164030000          ADDSS XMM2,dword ptr [ECX + 0x364]
00971d3e  f30f588960030000          ADDSS XMM1,dword ptr [ECX + 0x360]
00971d46  f30f119164030000          MOVSS dword ptr [ECX + 0x364],XMM2
00971d4e  f30f118960030000          MOVSS dword ptr [ECX + 0x360],XMM1
00971d56  8b8d60ffffff              MOV ECX,dword ptr [EBP + 0xffffff60]
00971d5c  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
00971d62  41                        INC ECX
00971d63  898d60ffffff              MOV dword ptr [EBP + 0xffffff60],ECX
00971d69  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
00971d6f  0f829bfbffff              JC 0x00971910
00971d75  8b8d44ffffff              MOV ECX,dword ptr [EBP + 0xffffff44]
00971d7b  8bf9                      MOV EDI,ECX
00971d7d  898d40ffffff              MOV dword ptr [EBP + 0xffffff40],ECX
00971d83  3bfe                      CMP EDI,ESI
00971d85  0f84ff120000              JZ 0x0097308a
00971d8b  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
00971d8e  0f57e4                    XORPS XMM4,XMM4
00971d91  8b8280040000              MOV EAX,dword ptr [EDX + 0x480]
00971d97  8b8a84040000              MOV ECX,dword ptr [EDX + 0x484]
00971d9d  2bc8                      SUB ECX,EAX
00971d9f  894588                    MOV dword ptr [EBP + -0x78],EAX
00971da2  c1f903                    SAR ECX,0x3
00971da5  f30f11a568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM4
00971dad  c78574ffffff00000000      MOV dword ptr [EBP + 0xffffff74],0x0
00971db7  898d54ffffff              MOV dword ptr [EBP + 0xffffff54],ECX
00971dbd  8d41ff                    LEA EAX,[ECX + -0x1]
00971dc0  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
00971dc6  85c0                      TEST EAX,EAX
00971dc8  0f84a5120000              JZ 0x00973073
00971dce  8b0f                      MOV ECX,dword ptr [EDI]
00971dd0  898d7cffffff              MOV dword ptr [EBP + 0xffffff7c],ECX
00971dd6  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
00971ddc  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
00971de2  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
00971de8  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00971dee  898db4feffff              MOV dword ptr [EBP + 0xfffffeb4],ECX
00971df4  f30f108070030000          MOVSS XMM0,dword ptr [EAX + 0x370]
00971dfc  f30f588270030000          ADDSS XMM0,dword ptr [EDX + 0x370]
00971e04  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
00971e0a  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00971e12  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
00971e15  f30f1044c108              MOVSS XMM0,dword ptr [ECX + EAX*0x8 + 0x8]
00971e1b  8d04c1                    LEA EAX,[ECX + EAX*0x8]
00971e1e  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00971e23  8bca                      MOV ECX,EDX
00971e25  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00971e2d  f30f10400c                MOVSS XMM0,dword ptr [EAX + 0xc]
00971e32  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
00971e3a  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00971e42  e80941acff                CALL 0x00435f50
00971e47  84c0                      TEST AL,AL
00971e49  0f85e1000000              JNZ 0x00971f30
00971e4f  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
00971e55  8b9574ffffff              MOV EDX,dword ptr [EBP + 0xffffff74]
00971e5b  83c0fe                    ADD EAX,-0x2
00971e5e  3bd0                      CMP EDX,EAX
00971e60  0f85ca000000              JNZ 0x00971f30
00971e66  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00971e69  80b81605000000            CMP byte ptr [EAX + 0x516],0x0
00971e70  0f85ba000000              JNZ 0x00971f30
00971e76  0f57c0                    XORPS XMM0,XMM0
00971e79  0f2f80d0040000            COMISS XMM0,dword ptr [EAX + 0x4d0]
00971e80  0f82aa000000              JC 0x00971f30
00971e86  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
00971e89  f30f108d78ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff78]
00971e91  8d0cd0                    LEA ECX,[EAX + EDX*0x8]
00971e94  f30f5c4904                SUBSS XMM1,dword ptr [ECX + 0x4]
00971e99  f30f105580                MOVSS XMM2,dword ptr [EBP + -0x80]
00971e9e  f30f5c11                  SUBSS XMM2,dword ptr [ECX]
00971ea2  0f28c1                    MOVAPS XMM0,XMM1
00971ea5  f30f118d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM1
00971ead  f30f59c1                  MULSS XMM0,XMM1
00971eb1  0f28ca                    MOVAPS XMM1,XMM2
00971eb4  f30f119560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM2
00971ebc  f30f59ca                  MULSS XMM1,XMM2
00971ec0  f30f58c1                  ADDSS XMM0,XMM1
00971ec4  e8873bacff                CALL 0x00435a50
00971ec9  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00971ed0  7621                      JBE 0x00971ef3
00971ed2  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00971eda  f30f5ec8                  DIVSS XMM1,XMM0
00971ede  0f28c1                    MOVAPS XMM0,XMM1
00971ee1  f30f598d70ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff70]
00971ee9  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
00971ef1  eb10                      JMP 0x00971f03
00971ef3  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
00971efb  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
00971f03  f30f584580                ADDSS XMM0,dword ptr [EBP + -0x80]
00971f08  f30f588d78ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff78]
00971f10  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00971f15  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00971f1d  0f28c1                    MOVAPS XMM0,XMM1
00971f20  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
00971f28  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00971f30  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
00971f33  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00971f39  50                        PUSH EAX
00971f3a  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00971f40  50                        PUSH EAX
00971f41  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
00971f47  8d14c1                    LEA EDX,[ECX + EAX*0x8]
00971f4a  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00971f50  e8eba30200                CALL 0x0099c340
00971f55  f30f104d80                MOVSS XMM1,dword ptr [EBP + -0x80]
00971f5a  83c408                    ADD ESP,0x8
00971f5d  f30f5c0a                  SUBSS XMM1,dword ptr [EDX]
00971f61  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
00971f69  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
00971f71  f30f5c4204                SUBSS XMM0,dword ptr [EDX + 0x4]
00971f76  f30f59c9                  MULSS XMM1,XMM1
00971f7a  f30f59c0                  MULSS XMM0,XMM0
00971f7e  f30f58c1                  ADDSS XMM0,XMM1
00971f82  e8c93aacff                CALL 0x00435a50
00971f87  83bd74ffffff00            CMP dword ptr [EBP + 0xffffff74],0x0
00971f8e  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00971f96  0f85be000000              JNZ 0x0097205a
00971f9c  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
00971f9f  e88caeffff                CALL 0x0096ce30
00971fa4  84c0                      TEST AL,AL
00971fa6  0f84ae000000              JZ 0x0097205a
00971fac  f30f10811c040000          MOVSS XMM0,dword ptr [ECX + 0x41c]
00971fb4  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00971fbc  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00971fc4  e877b5aaff                CALL 0x0041d540
00971fc9  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
00971fd1  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
00971fd4  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00971fd8  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00971fde  f30f5cc8                  SUBSS XMM1,XMM0
00971fe2  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00971fea  f30f5cc1                  SUBSS XMM0,XMM1
00971fee  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00971ff6  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00971ffe  e81db5aaff                CALL 0x0041d520
00972003  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
00972006  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
0097200e  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00972013  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00972019  f30f5cc8                  SUBSS XMM1,XMM0
0097201d  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
00972025  f30f59c0                  MULSS XMM0,XMM0
00972029  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00972031  f30f5cd1                  SUBSS XMM2,XMM1
00972035  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
0097203d  f30f59d2                  MULSS XMM2,XMM2
00972041  f30f58d0                  ADDSS XMM2,XMM0
00972045  0f2fca                    COMISS XMM1,XMM2
00972048  761e                      JBE 0x00972068
0097204a  0f57e4                    XORPS XMM4,XMM4
0097204d  0f28ca                    MOVAPS XMM1,XMM2
00972050  f30f11a558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM4
00972058  eb11                      JMP 0x0097206b
0097205a  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00972060  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
00972068  0f57e4                    XORPS XMM4,XMM4
0097206b  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00972073  f30f59c0                  MULSS XMM0,XMM0
00972077  0f2fc1                    COMISS XMM0,XMM1
0097207a  7739                      JA 0x009720b5
0097207c  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
00972084  f30f588568ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff68]
0097208c  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
00972092  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
00972095  40                        INC EAX
00972096  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
0097209c  f30f118568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM0
009720a4  3b856cffffff              CMP EAX,dword ptr [EBP + 0xffffff6c]
009720aa  0f8262fdffff              JC 0x00971e12
009720b0  e9be0f0000                JMP 0x00973073
009720b5  8b4828                    MOV ECX,dword ptr [EAX + 0x28]
009720b8  83f909                    CMP ECX,0x9
009720bb  7520                      JNZ 0x009720dd
009720bd  c7803804000000000000      MOV dword ptr [EAX + 0x438],0x0
009720c7  c7803c04000000000000      MOV dword ptr [EAX + 0x43c],0x0
009720d1  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
009720d8  e9930f0000                JMP 0x00973070
009720dd  81f9e8030000              CMP ECX,0x3e8
009720e3  750c                      JNZ 0x009720f1
009720e5  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
009720ec  e97f0f0000                JMP 0x00973070
009720f1  f30f108070030000          MOVSS XMM0,dword ptr [EAX + 0x370]
009720f9  f30f59c0                  MULSS XMM0,XMM0
009720fd  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00972105  0f28c1                    MOVAPS XMM0,XMM1
00972108  e84339acff                CALL 0x00435a50
0097210d  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00972110  0f28c8                    MOVAPS XMM1,XMM0
00972113  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
0097211b  f30f5c8870030000          SUBSS XMM1,dword ptr [EAX + 0x370]
00972123  f30f59c9                  MULSS XMM1,XMM1
00972127  0f2fc1                    COMISS XMM0,XMM1
0097212a  760e                      JBE 0x0097213a
0097212c  f30f5cc1                  SUBSS XMM0,XMM1
00972130  e81b39acff                CALL 0x00435a50
00972135  0f28e0                    MOVAPS XMM4,XMM0
00972138  eb03                      JMP 0x0097213d
0097213a  0f57e4                    XORPS XMM4,XMM4
0097213d  f30f109d70ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff70]
00972145  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
00972148  0f28c3                    MOVAPS XMM0,XMM3
0097214b  f30f598558ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff58]
00972153  8b9574ffffff              MOV EDX,dword ptr [EBP + 0xffffff74]
00972159  f30f105580                MOVSS XMM2,dword ptr [EBP + -0x80]
0097215e  8d0cd0                    LEA ECX,[EAX + EDX*0x8]
00972161  f30f5c11                  SUBSS XMM2,dword ptr [ECX]
00972165  0f28c8                    MOVAPS XMM1,XMM0
00972168  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0097216b  f30f588d68ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff68]
00972173  f30f5cc4                  SUBSS XMM0,XMM4
00972177  f30f5ed3                  DIVSS XMM2,XMM3
0097217b  0f28f1                    MOVAPS XMM6,XMM1
0097217e  f30f118d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM1
00972186  f30f108d78ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff78]
0097218e  f30f5cf4                  SUBSS XMM6,XMM4
00972192  f30f5c4904                SUBSS XMM1,dword ptr [ECX + 0x4]
00972197  f30f115580                MOVSS dword ptr [EBP + -0x80],XMM2
0097219c  f30f5ecb                  DIVSS XMM1,XMM3
009721a0  0f28da                    MOVAPS XMM3,XMM2
009721a3  0f28e1                    MOVAPS XMM4,XMM1
009721a6  f30f59d8                  MULSS XMM3,XMM0
009721aa  f30f59e0                  MULSS XMM4,XMM0
009721ae  f30f5819                  ADDSS XMM3,dword ptr [ECX]
009721b2  f30f108044050000          MOVSS XMM0,dword ptr [EAX + 0x544]
009721ba  0f2fc6                    COMISS XMM0,XMM6
009721bd  f30f586104                ADDSS XMM4,dword ptr [ECX + 0x4]
009721c2  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
009721ca  f30f115d88                MOVSS dword ptr [EBP + -0x78],XMM3
009721cf  f30f11a57cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM4
009721d7  7628                      JBE 0x00972201
009721d9  f30f11b044050000          MOVSS dword ptr [EAX + 0x544],XMM6
009721e1  f30f119848050000          MOVSS dword ptr [EAX + 0x548],XMM3
009721e9  f30f11a04c050000          MOVSS dword ptr [EAX + 0x54c],XMM4
009721f1  f30f119050050000          MOVSS dword ptr [EAX + 0x550],XMM2
009721f9  f30f118854050000          MOVSS dword ptr [EAX + 0x554],XMM1
00972201  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
00972207  8d8dc0fdffff              LEA ECX,[EBP + 0xfffffdc0]
0097220d  68c04ac300                PUSH 0xc34ac0
00972212  e8594faaff                CALL 0x00417170
00972217  83c404                    ADD ESP,0x4
0097221a  8b08                      MOV ECX,dword ptr [EAX]
0097221c  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097221f  750c                      JNZ 0x0097222d
00972221  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00972224  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00972227  0f8419010000              JZ 0x00972346
0097222d  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00972230  80b85c04000000            CMP byte ptr [EAX + 0x45c],0x0
00972237  7527                      JNZ 0x00972260
00972239  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00972241  0f57d2                    XORPS XMM2,XMM2
00972244  8bc8                      MOV ECX,EAX
00972246  e815a5d3ff                CALL 0x006ac760
0097224b  85c0                      TEST EAX,EAX
0097224d  0f84f3000000              JZ 0x00972346
00972253  f30f105d88                MOVSS XMM3,dword ptr [EBP + -0x78]
00972258  f30f10a57cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff7c]
00972260  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00972266  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0097226c  83ec0c                    SUB ESP,0xc
0097226f  f30f119d1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM3
00972277  f30f101d54a8ba00          MOVSS XMM3,dword ptr [0x00baa854]
0097227f  f30f11a520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM4
00972287  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0097228d  c744240800007041          MOV dword ptr [ESP + 0x8],0x41700000
00972295  c744240400007041          MOV dword ptr [ESP + 0x4],0x41700000
0097229d  c7042400007041            MOV dword ptr [ESP],0x41700000
009722a4  50                        PUSH EAX
009722a5  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
009722ab  50                        PUSH EAX
009722ac  e89f0ceaff                CALL 0x00812f50
009722b1  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
009722b7  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
009722bd  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
009722c3  898d20ffffff              MOV dword ptr [EBP + 0xffffff20],ECX
009722c9  e892ccd7ff                CALL 0x006eef60
009722ce  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
009722d1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
009722d7  6a00                      PUSH 0x0
009722d9  68acd5c500                PUSH 0xc5d5ac
009722de  68dcd5c500                PUSH 0xc5d5dc
009722e3  6a00                      PUSH 0x0
009722e5  50                        PUSH EAX
009722e6  6a00                      PUSH 0x0
009722e8  ffb2c8030000              PUSH dword ptr [EDX + 0x3c8]
009722ee  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
009722f4  6840b6c700                PUSH 0xc7b640
009722f9  50                        PUSH EAX
009722fa  6a35                      PUSH 0x35
009722fc  68e8030000                PUSH 0x3e8
00972301  e81a68abff                CALL 0x00428b20
00972306  50                        PUSH EAX
00972307  e8a5e51700                CALL 0x00af08b1
0097230c  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00972314  8bc8                      MOV ECX,EAX
00972316  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0097231e  83c414                    ADD ESP,0x14
00972321  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00972329  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00972331  8b01                      MOV EAX,dword ptr [ECX]
00972333  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
0097233b  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00972343  ff500c                    CALL dword ptr [EAX + 0xc]
00972346  a17816c700                MOV EAX,[0x00c71678]
0097234b  8b17                      MOV EDX,dword ptr [EDI]
0097234d  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00972354  7c06                      JL 0x0097235c
00972356  837a2801                  CMP dword ptr [EDX + 0x28],0x1
0097235a  7461                      JZ 0x009723bd
0097235c  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
0097235f  8d41f6                    LEA EAX,[ECX + -0xa]
00972362  3ddd030000                CMP EAX,0x3dd
00972367  0f8773030000              JA 0x009726e0
0097236d  83f921                    CMP ECX,0x21
00972370  0f846a030000              JZ 0x009726e0
00972376  83f911                    CMP ECX,0x11
00972379  0f8461030000              JZ 0x009726e0
0097237f  81f924010000              CMP ECX,0x124
00972385  0f8455030000              JZ 0x009726e0
0097238b  81f975030000              CMP ECX,0x375
00972391  7506                      JNZ 0x00972399
00972393  837a2c0a                  CMP dword ptr [EDX + 0x2c],0xa
00972397  eb1e                      JMP 0x009723b7
00972399  81f9c0030000              CMP ECX,0x3c0
0097239f  0f843b030000              JZ 0x009726e0
009723a5  81f9c5030000              CMP ECX,0x3c5
009723ab  0f842f030000              JZ 0x009726e0
009723b1  81f9f5000000              CMP ECX,0xf5
009723b7  0f8423030000              JZ 0x009726e0
009723bd  80ba7301000000            CMP byte ptr [EDX + 0x173],0x0
009723c4  0f8516030000              JNZ 0x009726e0
009723ca  683046c300                PUSH 0xc34630
009723cf  51                        PUSH ECX
009723d0  68504ac300                PUSH 0xc34a50
009723d5  ba3049c300                MOV EDX,0xc34930
009723da  8d8db0fdffff              LEA ECX,[EBP + 0xfffffdb0]
009723e0  e83b38acff                CALL 0x00435c20
009723e5  83c408                    ADD ESP,0x8
009723e8  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
009723ee  8bd0                      MOV EDX,EAX
009723f0  e82b38acff                CALL 0x00435c20
009723f5  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
009723fb  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00972401  83c404                    ADD ESP,0x4
00972404  50                        PUSH EAX
00972405  e8664daaff                CALL 0x00417170
0097240a  83c404                    ADD ESP,0x4
0097240d  8b08                      MOV ECX,dword ptr [EAX]
0097240f  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00972412  750c                      JNZ 0x00972420
00972414  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00972417  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097241a  0f84c0020000              JZ 0x009726e0
00972420  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00972423  80b85c04000000            CMP byte ptr [EAX + 0x45c],0x0
0097242a  751a                      JNZ 0x00972446
0097242c  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00972434  0f57d2                    XORPS XMM2,XMM2
00972437  8bc8                      MOV ECX,EAX
00972439  e822a3d3ff                CALL 0x006ac760
0097243e  85c0                      TEST EAX,EAX
00972440  0f849a020000              JZ 0x009726e0
00972446  8b07                      MOV EAX,dword ptr [EDI]
00972448  f30f108d7cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff7c]
00972450  f30f105588                MOVSS XMM2,dword ptr [EBP + -0x78]
00972455  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
0097245d  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
00972465  0f28c1                    MOVAPS XMM0,XMM1
00972468  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
00972470  f30f59c1                  MULSS XMM0,XMM1
00972474  0f28ca                    MOVAPS XMM1,XMM2
00972477  f30f59ca                  MULSS XMM1,XMM2
0097247b  f30f115588                MOVSS dword ptr [EBP + -0x78],XMM2
00972480  f30f58c1                  ADDSS XMM0,XMM1
00972484  e8c735acff                CALL 0x00435a50
00972489  8b07                      MOV EAX,dword ptr [EDI]
0097248b  f30f109070030000          MOVSS XMM2,dword ptr [EAX + 0x370]
00972493  0f2fc2                    COMISS XMM0,XMM2
00972496  7632                      JBE 0x009724ca
00972498  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0097249f  7629                      JBE 0x009724ca
009724a1  f30f5ed0                  DIVSS XMM2,XMM0
009724a5  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
009724aa  0f28c2                    MOVAPS XMM0,XMM2
009724ad  f30f59c8                  MULSS XMM1,XMM0
009724b1  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
009724b9  f30f59c2                  MULSS XMM0,XMM2
009724bd  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
009724c2  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
009724ca  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
009724d0  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
009724d6  68504ac300                PUSH 0xc34a50
009724db  e8904caaff                CALL 0x00417170
009724e0  83c404                    ADD ESP,0x4
009724e3  8b08                      MOV ECX,dword ptr [EAX]
009724e5  0b4804                    OR ECX,dword ptr [EAX + 0x4]
009724e8  7548                      JNZ 0x00972532
009724ea  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
009724ed  0b480c                    OR ECX,dword ptr [EAX + 0xc]
009724f0  7540                      JNZ 0x00972532
009724f2  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
009724f8  8d8d50feffff              LEA ECX,[EBP + 0xfffffe50]
009724fe  683046c300                PUSH 0xc34630
00972503  e8684caaff                CALL 0x00417170
00972508  83c404                    ADD ESP,0x4
0097250b  8b08                      MOV ECX,dword ptr [EAX]
0097250d  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00972510  7514                      JNZ 0x00972526
00972512  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00972515  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00972518  750c                      JNZ 0x00972526
0097251a  c78568ffffff13000000      MOV dword ptr [EBP + 0xffffff68],0x13
00972524  eb16                      JMP 0x0097253c
00972526  c78568ffffff30000000      MOV dword ptr [EBP + 0xffffff68],0x30
00972530  eb0a                      JMP 0x0097253c
00972532  c78568ffffff1a000000      MOV dword ptr [EBP + 0xffffff68],0x1a
0097253c  68d045c300                PUSH 0xc345d0
00972541  51                        PUSH ECX
00972542  68e045c300                PUSH 0xc345e0
00972547  51                        PUSH ECX
00972548  68c045c300                PUSH 0xc345c0
0097254d  51                        PUSH ECX
0097254e  68f048c300                PUSH 0xc348f0
00972553  51                        PUSH ECX
00972554  68504cc300                PUSH 0xc34c50
00972559  51                        PUSH ECX
0097255a  685048c300                PUSH 0xc34850
0097255f  ba8048c300                MOV EDX,0xc34880
00972564  8d8df0fdffff              LEA ECX,[EBP + 0xfffffdf0]
0097256a  e8b136acff                CALL 0x00435c20
0097256f  83c408                    ADD ESP,0x8
00972572  8d8d40feffff              LEA ECX,[EBP + 0xfffffe40]
00972578  8bd0                      MOV EDX,EAX
0097257a  e8a136acff                CALL 0x00435c20
0097257f  83c408                    ADD ESP,0x8
00972582  8d8d30feffff              LEA ECX,[EBP + 0xfffffe30]
00972588  8bd0                      MOV EDX,EAX
0097258a  e89136acff                CALL 0x00435c20
0097258f  83c408                    ADD ESP,0x8
00972592  8d8d20feffff              LEA ECX,[EBP + 0xfffffe20]
00972598  8bd0                      MOV EDX,EAX
0097259a  e88136acff                CALL 0x00435c20
0097259f  83c408                    ADD ESP,0x8
009725a2  8d8d10feffff              LEA ECX,[EBP + 0xfffffe10]
009725a8  8bd0                      MOV EDX,EAX
009725aa  e87136acff                CALL 0x00435c20
009725af  83c408                    ADD ESP,0x8
009725b2  8d8d00feffff              LEA ECX,[EBP + 0xfffffe00]
009725b8  8bd0                      MOV EDX,EAX
009725ba  e86136acff                CALL 0x00435c20
009725bf  83c404                    ADD ESP,0x4
009725c2  8d8da0fdffff              LEA ECX,[EBP + 0xfffffda0]
009725c8  51                        PUSH ECX
009725c9  8bc8                      MOV ECX,EAX
009725cb  e830fcc1ff                CALL 0x00592200
009725d0  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
009725d6  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
009725dc  50                        PUSH EAX
009725dd  e88e4baaff                CALL 0x00417170
009725e2  83c404                    ADD ESP,0x4
009725e5  e876c9d7ff                CALL 0x006eef60
009725ea  8b0f                      MOV ECX,dword ptr [EDI]
009725ec  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
009725f1  50                        PUSH EAX
009725f2  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
009725f5  f30f58893c030000          ADDSS XMM1,dword ptr [ECX + 0x33c]
009725fd  f30f108140030000          MOVSS XMM0,dword ptr [ECX + 0x340]
00972605  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0097260b  6a00                      PUSH 0x0
0097260d  ffb0c8030000              PUSH dword ptr [EAX + 0x3c8]
00972613  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
0097261b  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00972621  f30f108d7cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff7c]
00972629  6840b6c700                PUSH 0xc7b640
0097262e  50                        PUSH EAX
0097262f  ffb568ffffff              PUSH dword ptr [EBP + 0xffffff68]
00972635  f30f58c8                  ADDSS XMM1,XMM0
00972639  6a02                      PUSH 0x2
0097263b  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
00972643  e8d864abff                CALL 0x00428b20
00972648  8bc8                      MOV ECX,EAX
0097264a  894588                    MOV dword ptr [EBP + -0x78],EAX
0097264d  8b10                      MOV EDX,dword ptr [EAX]
0097264f  ff520c                    CALL dword ptr [EDX + 0xc]
00972652  0f1085a0feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffea0]
00972659  83ec10                    SUB ESP,0x10
0097265c  8bcc                      MOV ECX,ESP
0097265e  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00972661  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
00972664  e8e73ad0ff                CALL 0x00676150
00972669  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
0097266c  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
0097266f  51                        PUSH ECX
00972670  8b01                      MOV EAX,dword ptr [ECX]
00972672  f30f108288030000          MOVSS XMM0,dword ptr [EDX + 0x388]
0097267a  f30f110424                MOVSS dword ptr [ESP],XMM0
0097267f  ff5040                    CALL dword ptr [EAX + 0x40]
00972682  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00972685  f30f1080e0040000          MOVSS XMM0,dword ptr [EAX + 0x4e0]
0097268d  f30f5f056ca0ba00          MAXSS XMM0,dword ptr [0x00baa06c]
00972695  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
00972698  8bc8                      MOV ECX,EAX
0097269a  f30f118024040000          MOVSS dword ptr [EAX + 0x424],XMM0
009726a2  f30f118020040000          MOVSS dword ptr [EAX + 0x420],XMM0
009726aa  e8d150d0ff                CALL 0x00677780
009726af  8b5588                    MOV EDX,dword ptr [EBP + -0x78]
009726b2  8b0f                      MOV ECX,dword ptr [EDI]
009726b4  ff05649cc700              INC dword ptr [0x00c79c64]
009726ba  6a01                      PUSH 0x1
009726bc  8b02                      MOV EAX,dword ptr [EDX]
009726be  898d6cffffff              MOV dword ptr [EBP + 0xffffff6c],ECX
009726c4  51                        PUSH ECX
009726c5  8bca                      MOV ECX,EDX
009726c7  ff505c                    CALL dword ptr [EAX + 0x5c]
009726ca  8b8d6cffffff              MOV ECX,dword ptr [EBP + 0xffffff6c]
009726d0  6a00                      PUSH 0x0
009726d2  ff7588                    PUSH dword ptr [EBP + -0x78]
009726d5  8b01                      MOV EAX,dword ptr [ECX]
009726d7  ff505c                    CALL dword ptr [EAX + 0x5c]
009726da  ff0d649cc700              DEC dword ptr [0x00c79c64]
009726e0  f30f10852cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff2c]
009726e8  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
009726eb  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
009726f3  e85838acff                CALL 0x00435f50
009726f8  84c0                      TEST AL,AL
009726fa  0f85ca000000              JNZ 0x009727ca
00972700  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
00972706  8d8de0fdffff              LEA ECX,[EBP + 0xfffffde0]
0097270c  68304bc300                PUSH 0xc34b30
00972711  e85a4aaaff                CALL 0x00417170
00972716  83c404                    ADD ESP,0x4
00972719  8b08                      MOV ECX,dword ptr [EAX]
0097271b  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097271e  7522                      JNZ 0x00972742
00972720  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00972723  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00972726  751a                      JNZ 0x00972742
00972728  f30f108d2cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff2c]
00972730  f30f109570ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff70]
00972738  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00972740  eb37                      JMP 0x00972779
00972742  f30f109570ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff70]
0097274a  0f28ca                    MOVAPS XMM1,XMM2
0097274d  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00972755  f30f5d0dc4abba00          MINSS XMM1,dword ptr [0x00baabc4]
0097275d  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00972765  f30f5e0dc4abba00          DIVSS XMM1,dword ptr [0x00baabc4]
0097276d  f30f58cb                  ADDSS XMM1,XMM3
00972771  f30f598d2cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff2c]
00972779  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
0097277f  8d8dd0fdffff              LEA ECX,[EBP + 0xfffffdd0]
00972785  68404cc300                PUSH 0xc34c40
0097278a  e8e149aaff                CALL 0x00417170
0097278f  83c404                    ADD ESP,0x4
00972792  8b08                      MOV ECX,dword ptr [EAX]
00972794  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00972797  7508                      JNZ 0x009727a1
00972799  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097279c  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097279f  741f                      JZ 0x009727c0
009727a1  f30f5d1508abba00          MINSS XMM2,dword ptr [0x00baab08]
009727a9  0f28c3                    MOVAPS XMM0,XMM3
009727ac  f30f5e1508abba00          DIVSS XMM2,dword ptr [0x00baab08]
009727b4  f30f5cc2                  SUBSS XMM0,XMM2
009727b8  f30f58c0                  ADDSS XMM0,XMM0
009727bc  f30f59c8                  MULSS XMM1,XMM0
009727c0  f30f5f0d20a1ba00          MAXSS XMM1,dword ptr [0x00baa120]
009727c8  eb08                      JMP 0x009727d2
009727ca  f30f108d6cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff6c]
009727d2  ff37                      PUSH dword ptr [EDI]
009727d4  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
009727d7  0f28d1                    MOVAPS XMM2,XMM1
009727da  e8e1bb0000                CALL 0x0097e3c0
009727df  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
009727e2  e86937acff                CALL 0x00435f50
009727e7  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
009727ea  84c0                      TEST AL,AL
009727ec  740a                      JZ 0x009727f8
009727ee  83793002                  CMP dword ptr [ECX + 0x30],0x2
009727f2  0f85d2010000              JNZ 0x009729ca
009727f8  8b17                      MOV EDX,dword ptr [EDI]
009727fa  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
00972800  2500000004                AND EAX,0x4000000
00972805  83c800                    OR EAX,0x0
00972808  741e                      JZ 0x00972828
0097280a  837a2804                  CMP dword ptr [EDX + 0x28],0x4
0097280e  0f85b6010000              JNZ 0x009729ca
00972814  8b81c8030000              MOV EAX,dword ptr [ECX + 0x3c8]
0097281a  85c0                      TEST EAX,EAX
0097281c  0f84a8010000              JZ 0x009729ca
00972822  83782801                  CMP dword ptr [EAX + 0x28],0x1
00972826  eb1e                      JMP 0x00972846
00972828  837a2801                  CMP dword ptr [EDX + 0x28],0x1
0097282c  751e                      JNZ 0x0097284c
0097282e  8b81c8030000              MOV EAX,dword ptr [ECX + 0x3c8]
00972834  85c0                      TEST EAX,EAX
00972836  7414                      JZ 0x0097284c
00972838  8b8068010000              MOV EAX,dword ptr [EAX + 0x168]
0097283e  2500000020                AND EAX,0x20000000
00972843  83c800                    OR EAX,0x0
00972846  0f857e010000              JNZ 0x009729ca
0097284c  83793002                  CMP dword ptr [ECX + 0x30],0x2
00972850  f30f105580                MOVSS XMM2,dword ptr [EBP + -0x80]
00972855  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
0097285d  f30f115588                MOVSS dword ptr [EBP + -0x78],XMM2
00972862  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
0097286a  7573                      JNZ 0x009728df
0097286c  f30f108960030000          MOVSS XMM1,dword ptr [ECX + 0x360]
00972874  f30f109164030000          MOVSS XMM2,dword ptr [ECX + 0x364]
0097287c  0f28c1                    MOVAPS XMM0,XMM1
0097287f  f30f59c1                  MULSS XMM0,XMM1
00972883  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
00972888  0f28ca                    MOVAPS XMM1,XMM2
0097288b  f30f59ca                  MULSS XMM1,XMM2
0097288f  f30f11957cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM2
00972897  f30f58c1                  ADDSS XMM0,XMM1
0097289b  e8b031acff                CALL 0x00435a50
009728a0  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
009728a7  7631                      JBE 0x009728da
009728a9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
009728b1  f30f5ec8                  DIVSS XMM1,XMM0
009728b5  f30f105588                MOVSS XMM2,dword ptr [EBP + -0x78]
009728ba  0f28c1                    MOVAPS XMM0,XMM1
009728bd  f30f59d0                  MULSS XMM2,XMM0
009728c1  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
009728c9  f30f59c1                  MULSS XMM0,XMM1
009728cd  f30f115588                MOVSS dword ptr [EBP + -0x78],XMM2
009728d2  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
009728da  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
009728dd  8b17                      MOV EDX,dword ptr [EDI]
009728df  51                        PUSH ECX
009728e0  8bca                      MOV ECX,EDX
009728e2  e829f9d3ff                CALL 0x006b2210
009728e7  f30f108d7cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff7c]
009728ef  0f28d0                    MOVAPS XMM2,XMM0
009728f2  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
009728f7  0f57e4                    XORPS XMM4,XMM4
009728fa  0f2fd4                    COMISS XMM2,XMM4
009728fd  7608                      JBE 0x00972907
009728ff  f30f5ec2                  DIVSS XMM0,XMM2
00972903  f30f5eca                  DIVSS XMM1,XMM2
00972907  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0097290a  f30f10907c030000          MOVSS XMM2,dword ptr [EAX + 0x37c]
00972912  f30f5915b8a5ba00          MULSS XMM2,dword ptr [0x00baa5b8]
0097291a  8b07                      MOV EAX,dword ptr [EDI]
0097291c  0f28da                    MOVAPS XMM3,XMM2
0097291f  f30f59d1                  MULSS XMM2,XMM1
00972923  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00972926  f30f59d8                  MULSS XMM3,XMM0
0097292a  83f801                    CMP EAX,0x1
0097292d  7405                      JZ 0x00972934
0097292f  83f803                    CMP EAX,0x3
00972932  7510                      JNZ 0x00972944
00972934  f30f591d98a1ba00          MULSS XMM3,dword ptr [0x00baa198]
0097293c  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
00972944  8b9550ffffff              MOV EDX,dword ptr [EBP + 0xffffff50]
0097294a  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00972950  68e04ac300                PUSH 0xc34ae0
00972955  e81648aaff                CALL 0x00417170
0097295a  83c404                    ADD ESP,0x4
0097295d  8b08                      MOV ECX,dword ptr [EAX]
0097295f  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00972962  7508                      JNZ 0x0097296c
00972964  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00972967  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097296a  740e                      JZ 0x0097297a
0097296c  0f28c3                    MOVAPS XMM0,XMM3
0097296f  f30f58d8                  ADDSS XMM3,XMM0
00972973  0f28c2                    MOVAPS XMM0,XMM2
00972976  f30f58d0                  ADDSS XMM2,XMM0
0097297a  8b0f                      MOV ECX,dword ptr [EDI]
0097297c  f30f10a96c030000          MOVSS XMM5,dword ptr [ECX + 0x36c]
00972984  0f2eec                    UCOMISS XMM5,XMM4
00972987  9f                        LAHF
00972988  f6c444                    TEST AH,0x44
0097298b  7b40                      JNP 0x009729cd
0097298d  f30f10899c030000          MOVSS XMM1,dword ptr [ECX + 0x39c]
00972995  0f28c1                    MOVAPS XMM0,XMM1
00972998  f30f59ca                  MULSS XMM1,XMM2
0097299c  f30f59c3                  MULSS XMM0,XMM3
009729a0  f30f5ecd                  DIVSS XMM1,XMM5
009729a4  f30f5ec5                  DIVSS XMM0,XMM5
009729a8  f30f588964030000          ADDSS XMM1,dword ptr [ECX + 0x364]
009729b0  f30f588160030000          ADDSS XMM0,dword ptr [ECX + 0x360]
009729b8  f30f118964030000          MOVSS dword ptr [ECX + 0x364],XMM1
009729c0  f30f118160030000          MOVSS dword ptr [ECX + 0x360],XMM0
009729c8  eb03                      JMP 0x009729cd
009729ca  0f57e4                    XORPS XMM4,XMM4
009729cd  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
009729d0  8bca                      MOV ECX,EDX
009729d2  e859a4ffff                CALL 0x0096ce30
009729d7  84c0                      TEST AL,AL
009729d9  0f8494060000              JZ 0x00973073
009729df  8b8280040000              MOV EAX,dword ptr [EDX + 0x480]
009729e5  8b9574ffffff              MOV EDX,dword ptr [EBP + 0xffffff74]
009729eb  8b0f                      MOV ECX,dword ptr [EDI]
009729ed  f30f104d80                MOVSS XMM1,dword ptr [EBP + -0x80]
009729f2  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
009729f9  f30f1044d00c              MOVSS XMM0,dword ptr [EAX + EDX*0x8 + 0xc]
009729ff  f30f5c44d004              SUBSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
00972a05  f30f1074d008              MOVSS XMM6,dword ptr [EAX + EDX*0x8 + 0x8]
00972a0b  f30f5c34d0                SUBSS XMM6,dword ptr [EAX + EDX*0x8]
00972a10  f30f10913c030000          MOVSS XMM2,dword ptr [ECX + 0x33c]
00972a18  f30f109940030000          MOVSS XMM3,dword ptr [ECX + 0x340]
00972a20  f30f598558ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff58]
00972a28  f30f59b558ffffff          MULSS XMM6,dword ptr [EBP + 0xffffff58]
00972a30  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
00972a36  f30f118d7cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM1
00972a3e  f30f5834d0                ADDSS XMM6,dword ptr [EAX + EDX*0x8]
00972a43  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
00972a46  f30f5cd8                  SUBSS XMM3,XMM0
00972a4a  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
00972a52  f30f5cd6                  SUBSS XMM2,XMM6
00972a56  f30f117588                MOVSS dword ptr [EBP + -0x78],XMM6
00972a5b  f30f59d9                  MULSS XMM3,XMM1
00972a5f  f30f599578ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff78]
00972a67  f30f108a70030000          MOVSS XMM1,dword ptr [EDX + 0x370]
00972a6f  0f28c1                    MOVAPS XMM0,XMM1
00972a72  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00972a79  f30f58da                  ADDSS XMM3,XMM2
00972a7d  f30f109170030000          MOVSS XMM2,dword ptr [ECX + 0x370]
00972a85  0f28eb                    MOVAPS XMM5,XMM3
00972a88  f30f5cea                  SUBSS XMM5,XMM2
00972a8c  f30f58d3                  ADDSS XMM2,XMM3
00972a90  f30f5fe8                  MAXSS XMM5,XMM0
00972a94  0f2fca                    COMISS XMM1,XMM2
00972a97  f30f11ad68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM5
00972a9f  7706                      JA 0x00972aa7
00972aa1  f30f10c9                  MOVSS XMM1,XMM1
00972aa5  eb04                      JMP 0x00972aab
00972aa7  f30f10ca                  MOVSS XMM1,XMM2
00972aab  0f28c5                    MOVAPS XMM0,XMM5
00972aae  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
00972ab6  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00972abe  0f2fc8                    COMISS XMM1,XMM0
00972ac1  0f86ac050000              JBE 0x00973073
00972ac7  6a00                      PUSH 0x0
00972ac9  8d4a78                    LEA ECX,[EDX + 0x78]
00972acc  e84f77a9ff                CALL 0x0040a220
00972ad1  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
00972ad4  83c030                    ADD EAX,0x30
00972ad7  6a00                      PUSH 0x0
00972ad9  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
00972adf  8d4948                    LEA ECX,[ECX + 0x48]
00972ae2  e83987a9ff                CALL 0x0040b220
00972ae7  8d4848                    LEA ECX,[EAX + 0x48]
00972aea  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00972aed  05f0000000                ADD EAX,0xf0
00972af2  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00972af8  51                        PUSH ECX
00972af9  8d4db8                    LEA ECX,[EBP + -0x48]
00972afc  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00972aff  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00972b03  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
00972b07  0f1145c8                  MOVUPS xmmword ptr [EBP + -0x38],XMM0
00972b0b  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00972b10  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00972b13  660fd645d8                MOVQ qword ptr [EBP + -0x28],XMM0
00972b18  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00972b1b  e8a006d1ff                CALL 0x006831c0
00972b20  0f1045b8                  MOVUPS XMM0,xmmword ptr [EBP + -0x48]
00972b24  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00972b27  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00972b2d  ffb56cffffff              PUSH dword ptr [EBP + 0xffffff6c]
00972b33  0f1185d8feffff            MOVUPS xmmword ptr [EBP + 0xfffffed8],XMM0
00972b3a  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00972b40  0f1045c8                  MOVUPS XMM0,xmmword ptr [EBP + -0x38]
00972b44  0f1185e8feffff            MOVUPS xmmword ptr [EBP + 0xfffffee8],XMM0
00972b4b  f30f7e45d8                MOVQ XMM0,qword ptr [EBP + -0x28]
00972b50  660fd685f8feffff          MOVQ qword ptr [EBP + 0xfffffef8],XMM0
00972b58  e86306d1ff                CALL 0x006831c0
00972b5d  0f1085d8feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffed8]
00972b64  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
00972b6a  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
00972b6d  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00972b70  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
00972b74  0f1085e8feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffee8]
00972b7b  0f11459c                  MOVUPS xmmword ptr [EBP + -0x64],XMM0
00972b7f  f30f7e85f8feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffef8]
00972b87  660fd645ac                MOVQ qword ptr [EBP + -0x54],XMM0
00972b8c  f30f108050030000          MOVSS XMM0,dword ptr [EAX + 0x350]
00972b94  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00972b9c  e8bfc3d7ff                CALL 0x006eef60
00972ba1  83e003                    AND EAX,0x3
00972ba4  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
00972baa  0f866a020000              JBE 0x00972e1a
00972bb0  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
00972bb8  8bf8                      MOV EDI,EAX
00972bba  f30f5c8568ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff68]
00972bc2  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00972bca  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
00972bcf  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00972bd7  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00972bdf  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
00972be7  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00972bef  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00972bf7  e864c3d7ff                CALL 0x006eef60
00972bfc  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
00972c02  e859c3d7ff                CALL 0x006eef60
00972c07  660f6ec0                  MOVD XMM0,EAX
00972c0b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00972c0f  c1e81f                    SHR EAX,0x1f
00972c12  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00972c1b  660f5ac0                  CVTPD2PS XMM0,XMM0
00972c1f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00972c27  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00972c2f  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
00972c37  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00972c3f  e81cc3d7ff                CALL 0x006eef60
00972c44  660f6ec0                  MOVD XMM0,EAX
00972c48  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00972c4c  c1e81f                    SHR EAX,0x1f
00972c4f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00972c58  660f5ac0                  CVTPD2PS XMM0,XMM0
00972c5c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00972c64  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00972c6c  f30f58c0                  ADDSS XMM0,XMM0
00972c70  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00972c78  e8c3a8aaff                CALL 0x0041d540
00972c7d  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
00972c85  f30f594d80                MULSS XMM1,dword ptr [EBP + -0x80]
00972c8a  f30f58c1                  ADDSS XMM0,XMM1
00972c8e  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
00972c96  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
00972c9e  e87da8aaff                CALL 0x0041d520
00972ca3  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
00972cab  f30f598d78ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff78]
00972cb3  f30f58c1                  ADDSS XMM0,XMM1
00972cb7  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00972cbf  e89cc2d7ff                CALL 0x006eef60
00972cc4  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
00972ccc  660f6ec0                  MOVD XMM0,EAX
00972cd0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00972cd4  c1e81f                    SHR EAX,0x1f
00972cd7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00972ce0  660f5ac0                  CVTPD2PS XMM0,XMM0
00972ce4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00972cec  f30f59c8                  MULSS XMM1,XMM0
00972cf0  f30f588d68ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff68]
00972cf8  f30f118d6cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM1
00972d00  e85bc2d7ff                CALL 0x006eef60
00972d05  f30f109d6cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff6c]
00972d0d  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00972d13  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00972d19  0f28cb                    MOVAPS XMM1,XMM3
00972d1c  f30f598d78ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff78]
00972d24  6a01                      PUSH 0x1
00972d26  f30f599d7cffffff          MULSS XMM3,dword ptr [EBP + 0xffffff7c]
00972d2e  6a00                      PUSH 0x0
00972d30  660f6ec0                  MOVD XMM0,EAX
00972d34  f30f584d88                ADDSS XMM1,dword ptr [EBP + -0x78]
00972d39  f30f589d74ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff74]
00972d41  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00972d45  c1e81f                    SHR EAX,0x1f
00972d48  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00972d51  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00972d57  50                        PUSH EAX
00972d58  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00972d5e  50                        PUSH EAX
00972d5f  660f5ad0                  CVTPD2PS XMM2,XMM0
00972d63  6a63                      PUSH 0x63
00972d65  68e8030000                PUSH 0x3e8
00972d6a  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00972d72  0f28c2                    MOVAPS XMM0,XMM2
00972d75  f30f599538ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff38]
00972d7d  f30f598534ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff34]
00972d85  f30f58da                  ADDSS XMM3,XMM2
00972d89  f30f58c8                  ADDSS XMM1,XMM0
00972d8d  f30f119dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM3
00972d95  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
00972d9d  e87e5dabff                CALL 0x00428b20
00972da2  8bc8                      MOV ECX,EAX
00972da4  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
00972daa  f30f1089e4000000          MOVSS XMM1,dword ptr [ECX + 0xe4]
00972db2  f30f1081e8000000          MOVSS XMM0,dword ptr [ECX + 0xe8]
00972dba  f30f58c9                  ADDSS XMM1,XMM1
00972dbe  f30f58c0                  ADDSS XMM0,XMM0
00972dc2  8b01                      MOV EAX,dword ptr [ECX]
00972dc4  8d558c                    LEA EDX,[EBP + -0x74]
00972dc7  6a01                      PUSH 0x1
00972dc9  6a00                      PUSH 0x0
00972dcb  68ff000000                PUSH 0xff
00972dd0  6aff                      PUSH -0x1
00972dd2  52                        PUSH EDX
00972dd3  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
00972ddb  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00972de3  ff503c                    CALL dword ptr [EAX + 0x3c]
00972de6  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00972dec  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
00972df4  c7814c03000000000000      MOV dword ptr [ECX + 0x34c],0x0
00972dfe  f30f118150030000          MOVSS dword ptr [ECX + 0x350],XMM0
00972e06  8b01                      MOV EAX,dword ptr [ECX]
00972e08  ff500c                    CALL dword ptr [EAX + 0xc]
00972e0b  83ef01                    SUB EDI,0x1
00972e0e  0f85e3fdffff              JNZ 0x00972bf7
00972e14  8bbd40ffffff              MOV EDI,dword ptr [EBP + 0xffffff40]
00972e1a  8b07                      MOV EAX,dword ptr [EDI]
00972e1c  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00972e22  33c0                      XOR EAX,EAX
00972e24  81e100000001              AND ECX,0x1000000
00972e2a  0bc1                      OR EAX,ECX
00972e2c  7404                      JZ 0x00972e32
00972e2e  b001                      MOV AL,0x1
00972e30  eb02                      JMP 0x00972e34
00972e32  32c0                      XOR AL,AL
00972e34  84c0                      TEST AL,AL
00972e36  0f8431020000              JZ 0x0097306d
00972e3c  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00972e42  e88900d1ff                CALL 0x00682ed0
00972e47  0f2805c0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7c0]
00972e4e  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00972e54  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
00972e5a  0f1185d8feffff            MOVUPS xmmword ptr [EBP + 0xfffffed8],XMM0
00972e61  e85a03d1ff                CALL 0x006831c0
00972e66  0f1085d8feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffed8]
00972e6d  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
00972e73  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00972e76  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00972e7a  0f1085e8feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffee8]
00972e81  0f1145c8                  MOVUPS xmmword ptr [EBP + -0x38],XMM0
00972e85  f30f7e85f8feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffef8]
00972e8d  660fd645d8                MOVQ qword ptr [EBP + -0x28],XMM0
00972e92  e8c9c0d7ff                CALL 0x006eef60
00972e97  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
00972e9d  e8bec0d7ff                CALL 0x006eef60
00972ea2  660f6ec0                  MOVD XMM0,EAX
00972ea6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00972eaa  c1e81f                    SHR EAX,0x1f
00972ead  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00972eb6  660f5ac0                  CVTPD2PS XMM0,XMM0
00972eba  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00972ec2  f30f58c0                  ADDSS XMM0,XMM0
00972ec6  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00972ece  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
00972ed6  e885c0d7ff                CALL 0x006eef60
00972edb  660f6ec0                  MOVD XMM0,EAX
00972edf  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00972ee3  c1e81f                    SHR EAX,0x1f
00972ee6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00972eef  660f5ac0                  CVTPD2PS XMM0,XMM0
00972ef3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00972efb  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00972f03  f30f58c0                  ADDSS XMM0,XMM0
00972f07  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
00972f0f  e82ca6aaff                CALL 0x0041d540
00972f14  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
00972f1c  f30f594d80                MULSS XMM1,dword ptr [EBP + -0x80]
00972f21  f30f58c1                  ADDSS XMM0,XMM1
00972f25  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00972f2d  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
00972f35  e8e6a5aaff                CALL 0x0041d520
00972f3a  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
00972f42  f30f598d78ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff78]
00972f4a  f30f58c1                  ADDSS XMM0,XMM1
00972f4e  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
00972f56  e805c0d7ff                CALL 0x006eef60
00972f5b  f30f109560ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff60]
00972f63  f30f5c9568ffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff68]
00972f6b  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00972f71  660f6ec0                  MOVD XMM0,EAX
00972f75  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00972f79  c1e81f                    SHR EAX,0x1f
00972f7c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00972f82  6a02                      PUSH 0x2
00972f84  6a00                      PUSH 0x0
00972f86  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00972f8f  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
00972f95  50                        PUSH EAX
00972f96  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00972f9c  50                        PUSH EAX
00972f9d  660f5ac0                  CVTPD2PS XMM0,XMM0
00972fa1  6a02                      PUSH 0x2
00972fa3  68e8030000                PUSH 0x3e8
00972fa8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00972fb0  f30f59d0                  MULSS XMM2,XMM0
00972fb4  f30f589568ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff68]
00972fbc  0f28c2                    MOVAPS XMM0,XMM2
00972fbf  f30f59957cffffff          MULSS XMM2,dword ptr [EBP + 0xffffff7c]
00972fc7  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
00972fcf  f30f589574ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff74]
00972fd7  f30f584588                ADDSS XMM0,dword ptr [EBP + -0x78]
00972fdc  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
00972fe4  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00972fec  e82f5babff                CALL 0x00428b20
00972ff1  6a01                      PUSH 0x1
00972ff3  898570ffffff              MOV dword ptr [EBP + 0xffffff70],EAX
00972ff9  6a00                      PUSH 0x0
00972ffb  8b10                      MOV EDX,dword ptr [EAX]
00972ffd  68ff000000                PUSH 0xff
00973002  6aff                      PUSH -0x1
00973004  8d4db8                    LEA ECX,[EBP + -0x48]
00973007  51                        PUSH ECX
00973008  8bc8                      MOV ECX,EAX
0097300a  ff523c                    CALL dword ptr [EDX + 0x3c]
0097300d  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
00973013  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
0097301b  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
00973025  f30f118050030000          MOVSS dword ptr [EAX + 0x350],XMM0
0097302d  e82ebfd7ff                CALL 0x006eef60
00973032  8b8d70ffffff              MOV ECX,dword ptr [EBP + 0xffffff70]
00973038  660f6ec0                  MOVD XMM0,EAX
0097303c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00973040  c1e81f                    SHR EAX,0x1f
00973043  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0097304c  8b01                      MOV EAX,dword ptr [ECX]
0097304e  660f5ac0                  CVTPD2PS XMM0,XMM0
00973052  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0097305a  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00973062  f30f118174040000          MOVSS dword ptr [ECX + 0x474],XMM0
0097306a  ff500c                    CALL dword ptr [EAX + 0xc]
0097306d  0f57e4                    XORPS XMM4,XMM4
00973070  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
00973073  83c704                    ADD EDI,0x4
00973076  89bd40ffffff              MOV dword ptr [EBP + 0xffffff40],EDI
0097307c  3bfe                      CMP EDI,ESI
0097307e  0f850dedffff              JNZ 0x00971d91
00973084  8b8d44ffffff              MOV ECX,dword ptr [EBP + 0xffffff44]
0097308a  85c9                      TEST ECX,ECX
0097308c  0f84de050000              JZ 0x00973670
00973092  8b854cffffff              MOV EAX,dword ptr [EBP + 0xffffff4c]
00973098  2bc1                      SUB EAX,ECX
0097309a  c1f802                    SAR EAX,0x2
0097309d  50                        PUSH EAX
0097309e  51                        PUSH ECX
0097309f  e89c96a9ff                CALL 0x0040c740
009730a4  e9c7050000                JMP 0x00973670
009730a9  f30f10871c040000          MOVSS XMM0,dword ptr [EDI + 0x41c]
009730b1  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
009730b9  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
009730c1  e87aa4aaff                CALL 0x0041d540
009730c6  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
009730ce  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
009730d6  e845a4aaff                CALL 0x0041d520
009730db  a17816c700                MOV EAX,[0x00c71678]
009730e0  33c9                      XOR ECX,ECX
009730e2  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
009730e7  898d70ffffff              MOV dword ptr [EBP + 0xffffff70],ECX
009730ed  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
009730f3  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
009730f9  398864120000              CMP dword ptr [EAX + 0x1264],ECX
009730ff  0f866b050000              JBE 0x00973670
00973105  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
0097310b  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
0097310e  8bcf                      MOV ECX,EDI
00973110  56                        PUSH ESI
00973111  e86a9effff                CALL 0x0096cf80
00973116  84c0                      TEST AL,AL
00973118  0f8433050000              JZ 0x00973651
0097311e  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
00973122  f30f109e3c030000          MOVSS XMM3,dword ptr [ESI + 0x33c]
0097312a  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
00973132  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
0097313a  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00973142  f30f106580                MOVSS XMM4,dword ptr [EBP + -0x80]
00973147  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
0097314f  0f28cc                    MOVAPS XMM1,XMM4
00973152  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
0097315a  f30f10b670030000          MOVSS XMM6,dword ptr [ESI + 0x370]
00973162  f30f58b770030000          ADDSS XMM6,dword ptr [EDI + 0x370]
0097316a  f30f59c3                  MULSS XMM0,XMM3
0097316e  f30f59ca                  MULSS XMM1,XMM2
00973172  f30f59e3                  MULSS XMM4,XMM3
00973176  f30f58c8                  ADDSS XMM1,XMM0
0097317a  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
00973182  f30f59c2                  MULSS XMM0,XMM2
00973186  f30f5ce0                  SUBSS XMM4,XMM0
0097318a  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
0097318f  0f54e5                    ANDPS XMM4,XMM5
00973192  f30f11a564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM4
0097319a  7534                      JNZ 0x009731d0
0097319c  f30f59d2                  MULSS XMM2,XMM2
009731a0  f30f59db                  MULSS XMM3,XMM3
009731a4  f30f58d3                  ADDSS XMM2,XMM3
009731a8  0f28c2                    MOVAPS XMM0,XMM2
009731ab  e8a028acff                CALL 0x00435a50
009731b0  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
009731b5  0f28f0                    MOVAPS XMM6,XMM0
009731b8  f30f593520a1ba00          MULSS XMM6,dword ptr [0x00baa120]
009731c0  f30f10a564ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff64]
009731c8  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
009731d0  0f2ff4                    COMISS XMM6,XMM4
009731d3  0f8678040000              JBE 0x00973651
009731d9  0f57f6                    XORPS XMM6,XMM6
009731dc  0f2fce                    COMISS XMM1,XMM6
009731df  0f866c040000              JBE 0x00973651
009731e5  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
009731ed  0f54c5                    ANDPS XMM0,XMM5
009731f0  f30f588760040000          ADDSS XMM0,dword ptr [EDI + 0x460]
009731f8  0f2fc1                    COMISS XMM0,XMM1
009731fb  0f8650040000              JBE 0x00973651
00973201  f30f10952cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff2c]
00973209  8bcf                      MOV ECX,EDI
0097320b  56                        PUSH ESI
0097320c  e8afb10000                CALL 0x0097e3c0
00973211  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00973217  2500000004                AND EAX,0x4000000
0097321c  83c800                    OR EAX,0x0
0097321f  0f8469040000              JZ 0x0097368e
00973225  837e2804                  CMP dword ptr [ESI + 0x28],0x4
00973229  7519                      JNZ 0x00973244
0097322b  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
00973231  85c9                      TEST ECX,ECX
00973233  740f                      JZ 0x00973244
00973235  83792801                  CMP dword ptr [ECX + 0x28],0x1
00973239  b804000000                MOV EAX,0x4
0097323e  0f8475040000              JZ 0x009736b9
00973244  f30f10ad74ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff74]
0097324c  f30f106580                MOVSS XMM4,dword ptr [EBP + -0x80]
00973251  8bcf                      MOV ECX,EDI
00973253  e8d89bffff                CALL 0x0096ce30
00973258  84c0                      TEST AL,AL
0097325a  0f84f1030000              JZ 0x00973651
00973260  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
00973265  0f28f5                    MOVAPS XMM6,XMM5
00973268  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00973270  0f28d1                    MOVAPS XMM2,XMM1
00973273  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
0097327b  f30f59cc                  MULSS XMM1,XMM4
0097327f  f30f59d5                  MULSS XMM2,XMM5
00973283  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0097328b  0f573570cbba00            XORPS XMM6,xmmword ptr [0x00bacb70]
00973292  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0097329a  f30f11b530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM6
009732a2  f30f5cd9                  SUBSS XMM3,XMM1
009732a6  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
009732ab  f30f108e70030000          MOVSS XMM1,dword ptr [ESI + 0x370]
009732b3  f30f5cc2                  SUBSS XMM0,XMM2
009732b7  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
009732bf  f30f109770030000          MOVSS XMM2,dword ptr [EDI + 0x370]
009732c7  f30f59dc                  MULSS XMM3,XMM4
009732cb  f30f59c5                  MULSS XMM0,XMM5
009732cf  f30f58d8                  ADDSS XMM3,XMM0
009732d3  0f28c2                    MOVAPS XMM0,XMM2
009732d6  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
009732dd  0f28e3                    MOVAPS XMM4,XMM3
009732e0  f30f58d9                  ADDSS XMM3,XMM1
009732e4  f30f5ce1                  SUBSS XMM4,XMM1
009732e8  0f2fd3                    COMISS XMM2,XMM3
009732eb  f30f5fe0                  MAXSS XMM4,XMM0
009732ef  f30f11a554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM4
009732f7  7706                      JA 0x009732ff
009732f9  f30f10ca                  MOVSS XMM1,XMM2
009732fd  eb04                      JMP 0x00973303
009732ff  f30f10cb                  MOVSS XMM1,XMM3
00973303  0f28c4                    MOVAPS XMM0,XMM4
00973306  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
0097330e  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00973316  0f2fc8                    COMISS XMM1,XMM0
00973319  0f8632030000              JBE 0x00973651
0097331f  6a00                      PUSH 0x0
00973321  8d4f78                    LEA ECX,[EDI + 0x78]
00973324  e8f76ea9ff                CALL 0x0040a220
00973329  6a00                      PUSH 0x0
0097332b  8d4f48                    LEA ECX,[EDI + 0x48]
0097332e  8d7030                    LEA ESI,[EAX + 0x30]
00973331  e8ea7ea9ff                CALL 0x0040b220
00973336  0f1087f0000000            MOVUPS XMM0,xmmword ptr [EDI + 0xf0]
0097333d  0f1185d8feffff            MOVUPS xmmword ptr [EBP + 0xfffffed8],XMM0
00973344  8d4848                    LEA ECX,[EAX + 0x48]
00973347  8b8718010000              MOV EAX,dword ptr [EDI + 0x118]
0097334d  0f108700010000            MOVUPS XMM0,xmmword ptr [EDI + 0x100]
00973354  51                        PUSH ECX
00973355  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
0097335b  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00973361  0f1185e8feffff            MOVUPS xmmword ptr [EBP + 0xfffffee8],XMM0
00973368  f30f7e8710010000          MOVQ XMM0,qword ptr [EDI + 0x110]
00973370  660fd685f8feffff          MOVQ qword ptr [EBP + 0xfffffef8],XMM0
00973378  e843fed0ff                CALL 0x006831c0
0097337d  0f1085d8feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffed8]
00973384  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
0097338a  8d4db8                    LEA ECX,[EBP + -0x48]
0097338d  56                        PUSH ESI
0097338e  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00973392  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00973395  0f1085e8feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffee8]
0097339c  0f1145c8                  MOVUPS xmmword ptr [EBP + -0x38],XMM0
009733a0  f30f7e85f8feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffef8]
009733a8  660fd645d8                MOVQ qword ptr [EBP + -0x28],XMM0
009733ad  e80efed0ff                CALL 0x006831c0
009733b2  0f1045b8                  MOVUPS XMM0,xmmword ptr [EBP + -0x48]
009733b6  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
009733b9  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
009733bc  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
009733c0  0f1045c8                  MOVUPS XMM0,xmmword ptr [EBP + -0x38]
009733c4  0f11459c                  MOVUPS xmmword ptr [EBP + -0x64],XMM0
009733c8  f30f7e45d8                MOVQ XMM0,qword ptr [EBP + -0x28]
009733cd  660fd645ac                MOVQ qword ptr [EBP + -0x54],XMM0
009733d2  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
009733da  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
009733e2  e879bbd7ff                CALL 0x006eef60
009733e7  83e003                    AND EAX,0x3
009733ea  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
009733f0  0f865b020000              JBE 0x00973651
009733f6  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
009733fe  8bf8                      MOV EDI,EAX
00973400  f30f5c8554ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff54]
00973408  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
00973410  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
00973418  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00973420  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
00973428  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
0097342d  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00973435  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0097343d  0f1f00                    NOP dword ptr [EAX]
00973440  e81bbbd7ff                CALL 0x006eef60
00973445  8bf0                      MOV ESI,EAX
00973447  e814bbd7ff                CALL 0x006eef60
0097344c  660f6ec0                  MOVD XMM0,EAX
00973450  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00973454  c1e81f                    SHR EAX,0x1f
00973457  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00973460  660f5ac0                  CVTPD2PS XMM0,XMM0
00973464  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0097346c  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00973474  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
0097347c  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00973484  e8d7bad7ff                CALL 0x006eef60
00973489  660f6ec0                  MOVD XMM0,EAX
0097348d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00973491  c1e81f                    SHR EAX,0x1f
00973494  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0097349d  660f5ac0                  CVTPD2PS XMM0,XMM0
009734a1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
009734a9  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
009734b1  f30f58c0                  ADDSS XMM0,XMM0
009734b5  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
009734bd  e87ea0aaff                CALL 0x0041d540
009734c2  f30f108d40ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff40]
009734ca  f30f598d74ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff74]
009734d2  f30f58c1                  ADDSS XMM0,XMM1
009734d6  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
009734de  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
009734e6  e835a0aaff                CALL 0x0041d520
009734eb  f30f108d40ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff40]
009734f3  f30f594d80                MULSS XMM1,dword ptr [EBP + -0x80]
009734f8  f30f58c1                  ADDSS XMM0,XMM1
009734fc  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
00973504  e857bad7ff                CALL 0x006eef60
00973509  f30f108d58ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff58]
00973511  660f6ec0                  MOVD XMM0,EAX
00973515  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00973519  c1e81f                    SHR EAX,0x1f
0097351c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00973525  660f5ac0                  CVTPD2PS XMM0,XMM0
00973529  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00973531  f30f59c8                  MULSS XMM1,XMM0
00973535  f30f588d54ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff54]
0097353d  f30f118d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM1
00973545  e816bad7ff                CALL 0x006eef60
0097354a  f30f109d64ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff64]
00973552  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00973558  0f28cb                    MOVAPS XMM1,XMM3
0097355b  f30f594d80                MULSS XMM1,dword ptr [EBP + -0x80]
00973560  56                        PUSH ESI
00973561  660f6ec0                  MOVD XMM0,EAX
00973565  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00973569  c1e81f                    SHR EAX,0x1f
0097356c  6a01                      PUSH 0x1
0097356e  6a00                      PUSH 0x0
00973570  f30f588d3cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff3c]
00973578  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00973581  f30f599d30ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff30]
00973589  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0097358f  50                        PUSH EAX
00973590  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
00973596  50                        PUSH EAX
00973597  f30f585d88                ADDSS XMM3,dword ptr [EBP + -0x78]
0097359c  660f5ad0                  CVTPD2PS XMM2,XMM0
009735a0  6a63                      PUSH 0x63
009735a2  68e8030000                PUSH 0x3e8
009735a7  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
009735af  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
009735b7  f30f59c2                  MULSS XMM0,XMM2
009735bb  f30f58c8                  ADDSS XMM1,XMM0
009735bf  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
009735c7  f30f59c2                  MULSS XMM0,XMM2
009735cb  f30f58d8                  ADDSS XMM3,XMM0
009735cf  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
009735d7  f30f119d18ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM3
009735df  e83c55abff                CALL 0x00428b20
009735e4  8bf0                      MOV ESI,EAX
009735e6  f30f108ee4000000          MOVSS XMM1,dword ptr [ESI + 0xe4]
009735ee  f30f1086e8000000          MOVSS XMM0,dword ptr [ESI + 0xe8]
009735f6  f30f58c9                  ADDSS XMM1,XMM1
009735fa  f30f58c0                  ADDSS XMM0,XMM0
009735fe  8b06                      MOV EAX,dword ptr [ESI]
00973600  8d4d8c                    LEA ECX,[EBP + -0x74]
00973603  6a01                      PUSH 0x1
00973605  6a00                      PUSH 0x0
00973607  68ff000000                PUSH 0xff
0097360c  6aff                      PUSH -0x1
0097360e  51                        PUSH ECX
0097360f  8bce                      MOV ECX,ESI
00973611  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
00973619  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
00973621  ff503c                    CALL dword ptr [EAX + 0x3c]
00973624  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0097362c  8bce                      MOV ECX,ESI
0097362e  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00973638  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
00973640  8b06                      MOV EAX,dword ptr [ESI]
00973642  ff500c                    CALL dword ptr [EAX + 0xc]
00973645  83ef01                    SUB EDI,0x1
00973648  0f85f2fdffff              JNZ 0x00973440
0097364e  8b7d84                    MOV EDI,dword ptr [EBP + -0x7c]
00973651  8b8d70ffffff              MOV ECX,dword ptr [EBP + 0xffffff70]
00973657  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
0097365d  41                        INC ECX
0097365e  898d70ffffff              MOV dword ptr [EBP + 0xffffff70],ECX
00973664  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
0097366a  0f8295faffff              JC 0x00973105
00973670  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00973673  64890d00000000            MOV dword ptr FS:[0x0],ECX
0097367a  59                        POP ECX
0097367b  5f                        POP EDI
0097367c  5e                        POP ESI
0097367d  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00973680  33cd                      XOR ECX,EBP
00973682  e8a4ba1700                CALL 0x00aef12b
00973687  8be5                      MOV ESP,EBP
00973689  5d                        POP EBP
0097368a  8be3                      MOV ESP,EBX
0097368c  5b                        POP EBX
0097368d  c3                        RET
0097368e  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00973691  83f801                    CMP EAX,0x1
00973694  7523                      JNZ 0x009736b9
00973696  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
0097369c  85c9                      TEST ECX,ECX
0097369e  7419                      JZ 0x009736b9
009736a0  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
009736a6  2500000020                AND EAX,0x20000000
009736ab  83c800                    OR EAX,0x0
009736ae  0f8590fbffff              JNZ 0x00973244
009736b4  b801000000                MOV EAX,0x1
009736b9  f30f108e7c030000          MOVSS XMM1,dword ptr [ESI + 0x37c]
009736c1  0f57f6                    XORPS XMM6,XMM6
009736c4  0f2fce                    COMISS XMM1,XMM6
009736c7  f30f10ad74ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff74]
009736cf  f30f106580                MOVSS XMM4,dword ptr [EBP + -0x80]
009736d4  0f28c5                    MOVAPS XMM0,XMM5
009736d7  0f28dc                    MOVAPS XMM3,XMM4
009736da  7608                      JBE 0x009736e4
009736dc  f30f5ec1                  DIVSS XMM0,XMM1
009736e0  f30f5ed9                  DIVSS XMM3,XMM1
009736e4  f30f108f7c030000          MOVSS XMM1,dword ptr [EDI + 0x37c]
009736ec  f30f590db8a5ba00          MULSS XMM1,dword ptr [0x00baa5b8]
009736f4  0f28d1                    MOVAPS XMM2,XMM1
009736f7  f30f59cb                  MULSS XMM1,XMM3
009736fb  f30f59d0                  MULSS XMM2,XMM0
009736ff  83f801                    CMP EAX,0x1
00973702  7405                      JZ 0x00973709
00973704  83f803                    CMP EAX,0x3
00973707  7510                      JNZ 0x00973719
00973709  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
00973711  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
00973719  68e04ac300                PUSH 0xc34ae0
0097371e  8d9728040000              LEA EDX,[EDI + 0x428]
00973724  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
0097372a  e8413aaaff                CALL 0x00417170
0097372f  83c404                    ADD ESP,0x4
00973732  8b08                      MOV ECX,dword ptr [EAX]
00973734  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00973737  7508                      JNZ 0x00973741
00973739  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097373c  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097373f  740e                      JZ 0x0097374f
00973741  0f28c2                    MOVAPS XMM0,XMM2
00973744  f30f58d0                  ADDSS XMM2,XMM0
00973748  0f28c1                    MOVAPS XMM0,XMM1
0097374b  f30f58c8                  ADDSS XMM1,XMM0
0097374f  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
00973757  0f2ede                    UCOMISS XMM3,XMM6
0097375a  9f                        LAHF
0097375b  f6c444                    TEST AH,0x44
0097375e  0f8bedfaffff              JNP 0x00973251
00973764  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
0097376c  f30f59d0                  MULSS XMM2,XMM0
00973770  f30f59c8                  MULSS XMM1,XMM0
00973774  f30f5ed3                  DIVSS XMM2,XMM3
00973778  f30f5ecb                  DIVSS XMM1,XMM3
0097377c  f30f589660030000          ADDSS XMM2,dword ptr [ESI + 0x360]
00973784  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
0097378c  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
00973794  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0097379c  e9b0faffff                JMP 0x00973251
