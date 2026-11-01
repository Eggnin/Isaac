; J460 NPC AI 0x006bb790 HELPER_006bb790_ConfigCopyCandidate
; types=
; identities=entity_init
; entry=006bb790
006bb790  55                        PUSH EBP
006bb791  8bec                      MOV EBP,ESP
006bb793  6aff                      PUSH -0x1
006bb795  68e0a7af00                PUSH 0xafa7e0
006bb79a  64a100000000              MOV EAX,FS:[0x0]
006bb7a0  50                        PUSH EAX
006bb7a1  81ecac000000              SUB ESP,0xac
006bb7a7  a1b493bf00                MOV EAX,[0x00bf93b4]
006bb7ac  33c5                      XOR EAX,EBP
006bb7ae  8945f0                    MOV dword ptr [EBP + -0x10],EAX
006bb7b1  53                        PUSH EBX
006bb7b2  56                        PUSH ESI
006bb7b3  57                        PUSH EDI
006bb7b4  50                        PUSH EAX
006bb7b5  8d45f4                    LEA EAX,[EBP + -0xc]
006bb7b8  64a300000000              MOV FS:[0x0],EAX
006bb7be  8bf9                      MOV EDI,ECX
006bb7c0  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006bb7c6  f30f7e05d4f4b100          MOVQ XMM0,qword ptr [0x00b1f4d4]
006bb7ce  898548ffffff              MOV dword ptr [EBP + 0xffffff48],EAX
006bb7d4  a1dcf4b100                MOV EAX,[0x00b1f4dc]
006bb7d9  660fd6854cffffff          MOVQ qword ptr [EBP + 0xffffff4c],XMM0
006bb7e1  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
006bb7e7  c6873d0c000000            MOV byte ptr [EDI + 0xc3d],0x0
006bb7ee  e8bde0feff                CALL 0x006a98b0
006bb7f3  83bf3003000000            CMP dword ptr [EDI + 0x330],0x0
006bb7fa  0f848e050000              JZ 0x006bbd8e
006bb800  6a01                      PUSH 0x1
006bb802  8bcf                      MOV ECX,EDI
006bb804  e837f7ffff                CALL 0x006baf40
006bb809  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
006bb811  8d4760                    LEA EAX,[EDI + 0x60]
006bb814  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
006bb81c  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
006bb824  f30f1187e8000000          MOVSS dword ptr [EDI + 0xe8],XMM0
006bb82c  837f7410                  CMP dword ptr [EDI + 0x74],0x10
006bb830  7203                      JC 0x006bb835
006bb832  8b4760                    MOV EAX,dword ptr [EDI + 0x60]
006bb835  6a01                      PUSH 0x1
006bb837  50                        PUSH EAX
006bb838  8d4f48                    LEA ECX,[EDI + 0x48]
006bb83b  e890edd4ff                CALL 0x0040a5d0
006bb840  84c0                      TEST AL,AL
006bb842  7420                      JZ 0x006bb864
006bb844  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
006bb847  85c0                      TEST EAX,EAX
006bb849  7419                      JZ 0x006bb864
006bb84b  8d4f78                    LEA ECX,[EDI + 0x78]
006bb84e  0f57c9                    XORPS XMM1,XMM1
006bb851  e8aad5d4ff                CALL 0x00408e00
006bb856  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
006bb859  85c0                      TEST EAX,EAX
006bb85b  7407                      JZ 0x006bb864
006bb85d  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
006bb864  8b8f30030000              MOV ECX,dword ptr [EDI + 0x330]
006bb86a  f30f1005d0a0ba00          MOVSS XMM0,dword ptr [0x00baa0d0]
006bb872  6a01                      PUSH 0x1
006bb874  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bb87c  8a4158                    MOV AL,byte ptr [ECX + 0x58]
006bb87f  88873c0c0000              MOV byte ptr [EDI + 0xc3c],AL
006bb885  8a412c                    MOV AL,byte ptr [ECX + 0x2c]
006bb888  88873d0c0000              MOV byte ptr [EDI + 0xc3d],AL
006bb88e  8b81e0000000              MOV EAX,dword ptr [ECX + 0xe0]
006bb894  8987400c0000              MOV dword ptr [EDI + 0xc40],EAX
006bb89a  8b81e4000000              MOV EAX,dword ptr [ECX + 0xe4]
006bb8a0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006bb8a6  81c1a8ba0100              ADD ECX,0x1baa8
006bb8ac  8987440c0000              MOV dword ptr [EDI + 0xc44],EAX
006bb8b2  51                        PUSH ECX
006bb8b3  68d0000000                PUSH 0xd0
006bb8b8  e8c3273000                CALL 0x009be080
006bb8bd  85c0                      TEST EAX,EAX
006bb8bf  7410                      JZ 0x006bb8d1
006bb8c1  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
006bb8c9  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bb8d1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006bb8d7  83390c                    CMP dword ptr [ECX],0xc
006bb8da  7510                      JNZ 0x006bb8ec
006bb8dc  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
006bb8e4  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bb8ec  81c1a8ba0100              ADD ECX,0x1baa8
006bb8f2  6a05                      PUSH 0x5
006bb8f4  e8b706d9ff                CALL 0x0044bfb0
006bb8f9  84c0                      TEST AL,AL
006bb8fb  7434                      JZ 0x006bb931
006bb8fd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006bb903  6a05                      PUSH 0x5
006bb905  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
006bb90b  e870313000                CALL 0x009bea80
006bb910  660f6ec0                  MOVD XMM0,EAX
006bb914  0f5bc0                    CVTDQ2PS XMM0,XMM0
006bb917  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
006bb91f  f30f598570ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff70]
006bb927  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bb92f  eb08                      JMP 0x006bb939
006bb931  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
006bb939  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006bb93f  8b9e00830100              MOV EBX,dword ptr [ESI + 0x18300]
006bb945  8a03                      MOV AL,byte ptr [EBX]
006bb947  88856fffffff              MOV byte ptr [EBP + 0xffffff6f],AL
006bb94d  84c0                      TEST AL,AL
006bb94f  7410                      JZ 0x006bb961
006bb951  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
006bb959  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bb961  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
006bb967  c78568ffffff0d000000      MOV dword ptr [EBP + 0xffffff68],0xd
006bb971  51                        PUSH ECX
006bb972  8d8d5cffffff              LEA ECX,[EBP + 0xffffff5c]
006bb978  51                        PUSH ECX
006bb979  8d8ed8bb0100              LEA ECX,[ESI + 0x1bbd8]
006bb97f  e81ccfd6ff                CALL 0x004288a0
006bb984  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
006bb98a  80780d00                  CMP byte ptr [EAX + 0xd],0x0
006bb98e  751e                      JNZ 0x006bb9ae
006bb990  8378100d                  CMP dword ptr [EAX + 0x10],0xd
006bb994  7f18                      JG 0x006bb9ae
006bb996  3b86d8bb0100              CMP EAX,dword ptr [ESI + 0x1bbd8]
006bb99c  7410                      JZ 0x006bb9ae
006bb99e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006bb9a6  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bb9ae  80bf3d0c000000            CMP byte ptr [EDI + 0xc3d],0x0
006bb9b5  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006bb9bb  0f84ef020000              JZ 0x006bbcb0
006bb9c1  8b486c                    MOV ECX,dword ptr [EAX + 0x6c]
006bb9c4  2b4868                    SUB ECX,dword ptr [EAX + 0x68]
006bb9c7  b843082184                MOV EAX,0x84210843
006bb9cc  f7e9                      IMUL ECX
006bb9ce  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
006bb9d4  03d1                      ADD EDX,ECX
006bb9d6  c1fa06                    SAR EDX,0x6
006bb9d9  8bda                      MOV EBX,EDX
006bb9db  c1eb1f                    SHR EBX,0x1f
006bb9de  03da                      ADD EBX,EDX
006bb9e0  85c0                      TEST EAX,EAX
006bb9e2  740c                      JZ 0x006bb9f0
006bb9e4  33c9                      XOR ECX,ECX
006bb9e6  8178289b010000            CMP dword ptr [EAX + 0x28],0x19b
006bb9ed  0f44d9                    CMOVZ EBX,ECX
006bb9f0  803d7016c70000            CMP byte ptr [0x00c71670],0x0
006bb9f7  740d                      JZ 0x006bba06
006bb9f9  33db                      XOR EBX,EBX
006bb9fb  881d7016c700              MOV byte ptr [0x00c71670],BL
006bba01  e98c010000                JMP 0x006bbb92
006bba06  85db                      TEST EBX,EBX
006bba08  0f8e84010000              JLE 0x006bbb92
006bba0e  837f3000                  CMP dword ptr [EDI + 0x30],0x0
006bba12  0f857a010000              JNZ 0x006bbb92
006bba18  a19c16c700                MOV EAX,[0x00c7169c]
006bba1d  80784f00                  CMP byte ptr [EAX + 0x4f],0x0
006bba21  7520                      JNZ 0x006bba43
006bba23  83780802                  CMP dword ptr [EAX + 0x8],0x2
006bba27  0f8565010000              JNZ 0x006bbb92
006bba2d  83be3066020000            CMP dword ptr [ESI + 0x26630],0x0
006bba34  770d                      JA 0x006bba43
006bba36  80be8965020000            CMP byte ptr [ESI + 0x26589],0x0
006bba3d  0f844f010000              JZ 0x006bbb92
006bba43  80786d00                  CMP byte ptr [EAX + 0x6d],0x0
006bba47  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
006bba4f  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bba57  7518                      JNZ 0x006bba71
006bba59  83780802                  CMP dword ptr [EAX + 0x8],0x2
006bba5d  7522                      JNZ 0x006bba81
006bba5f  83be3066020000            CMP dword ptr [ESI + 0x26630],0x0
006bba66  7709                      JA 0x006bba71
006bba68  80be8965020000            CMP byte ptr [ESI + 0x26589],0x0
006bba6f  7410                      JZ 0x006bba81
006bba71  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
006bba79  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bba81  83bec869020003            CMP dword ptr [ESI + 0x269c8],0x3
006bba88  7510                      JNZ 0x006bba9a
006bba8a  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
006bba92  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bba9a  8d8ea8ba0100              LEA ECX,[ESI + 0x1baa8]
006bbaa0  6a05                      PUSH 0x5
006bbaa2  e80905d9ff                CALL 0x0044bfb0
006bbaa7  84c0                      TEST AL,AL
006bbaa9  742e                      JZ 0x006bbad9
006bbaab  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006bbab1  6a05                      PUSH 0x5
006bbab3  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
006bbab9  e8c22f3000                CALL 0x009bea80
006bbabe  660f6ec0                  MOVD XMM0,EAX
006bbac2  0f5bc0                    CVTDQ2PS XMM0,XMM0
006bbac5  f30f58c0                  ADDSS XMM0,XMM0
006bbac9  f30f598570ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff70]
006bbad1  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bbad9  a17816c700                MOV EAX,[0x00c71678]
006bbade  83b88465020022            CMP dword ptr [EAX + 0x26584],0x22
006bbae5  7409                      JZ 0x006bbaf0
006bbae7  83b87467020001            CMP dword ptr [EAX + 0x26774],0x1
006bbaee  7c10                      JL 0x006bbb00
006bbaf0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006bbaf8  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
006bbb00  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006bbb06  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
006bbb09  85c0                      TEST EAX,EAX
006bbb0b  7403                      JZ 0x006bbb10
006bbb0d  8b405c                    MOV EAX,dword ptr [EAX + 0x5c]
006bbb10  f30f7e0504f5b100          MOVQ XMM0,qword ptr [0x00b1f504]
006bbb18  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
006bbb1e  898558ffffff              MOV dword ptr [EBP + 0xffffff58],EAX
006bbb24  a10cf5b100                MOV EAX,[0x00b1f50c]
006bbb29  660fd6855cffffff          MOVQ qword ptr [EBP + 0xffffff5c],XMM0
006bbb31  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
006bbb37  e844d51200                CALL 0x007e9080
006bbb3c  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
006bbb44  d99d68ffffff              FSTP dword ptr [EBP + 0xffffff68]
006bbb4a  0f2f8d68ffffff            COMISS XMM1,dword ptr [EBP + 0xffffff68]
006bbb51  7610                      JBE 0x006bbb63
006bbb53  53                        PUSH EBX
006bbb54  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
006bbb5a  e8c1d41200                CALL 0x007e9020
006bbb5f  40                        INC EAX
006bbb60  894730                    MOV dword ptr [EDI + 0x30],EAX
006bbb63  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006bbb69  83382d                    CMP dword ptr [EAX],0x2d
006bbb6c  751e                      JNZ 0x006bbb8c
006bbb6e  837f3002                  CMP dword ptr [EDI + 0x30],0x2
006bbb72  7518                      JNZ 0x006bbb8c
006bbb74  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006bbb7a  83be846502001e            CMP dword ptr [ESI + 0x26584],0x1e
006bbb81  750f                      JNZ 0x006bbb92
006bbb83  c7473000000000            MOV dword ptr [EDI + 0x30],0x0
006bbb8a  eb06                      JMP 0x006bbb92
006bbb8c  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006bbb92  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
006bbb95  83f804                    CMP EAX,0x4
006bbb98  7405                      JZ 0x006bbb9f
006bbb9a  83f805                    CMP EAX,0x5
006bbb9d  7522                      JNZ 0x006bbbc1
006bbb9f  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006bbba5  8b00                      MOV EAX,dword ptr [EAX]
006bbba7  83f82d                    CMP EAX,0x2d
006bbbaa  7509                      JNZ 0x006bbbb5
006bbbac  c7473003000000            MOV dword ptr [EDI + 0x30],0x3
006bbbb3  eb0c                      JMP 0x006bbbc1
006bbbb5  83f84e                    CMP EAX,0x4e
006bbbb8  7507                      JNZ 0x006bbbc1
006bbbba  c7473001000000            MOV dword ptr [EDI + 0x30],0x1
006bbbc1  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
006bbbc4  85c9                      TEST ECX,ECX
006bbbc6  0f8482010000              JZ 0x006bbd4e
006bbbcc  3bcb                      CMP ECX,EBX
006bbbce  0f877a010000              JA 0x006bbd4e
006bbbd4  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006bbbda  6bc97c                    IMUL ECX,ECX,0x7c
006bbbdd  8b4068                    MOV EAX,dword ptr [EAX + 0x68]
006bbbe0  83c184                    ADD ECX,-0x7c
006bbbe3  03c1                      ADD EAX,ECX
006bbbe5  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
006bbbeb  50                        PUSH EAX
006bbbec  e89f3dfeff                CALL 0x0069f990
006bbbf1  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006bbbf8  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
006bbbfb  83e801                    SUB EAX,0x1
006bbbfe  8987780c0000              MOV dword ptr [EDI + 0xc78],EAX
006bbc04  784e                      JS 0x006bbc54
006bbc06  3bc3                      CMP EAX,EBX
006bbc08  7d4a                      JGE 0x006bbc54
006bbc0a  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
006bbc0f  0f28c2                    MOVAPS XMM0,XMM2
006bbc12  0f28ca                    MOVAPS XMM1,XMM2
006bbc15  f30f5987e8000000          MULSS XMM0,dword ptr [EDI + 0xe8]
006bbc1d  f30f598fe4000000          MULSS XMM1,dword ptr [EDI + 0xe4]
006bbc25  f30f1187e8000000          MOVSS dword ptr [EDI + 0xe8],XMM0
006bbc2d  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
006bbc32  f30f598784030000          MULSS XMM0,dword ptr [EDI + 0x384]
006bbc3a  f30f118fe4000000          MOVSS dword ptr [EDI + 0xe4],XMM1
006bbc42  f30f1197380c0000          MOVSS dword ptr [EDI + 0xc38],XMM2
006bbc4a  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
006bbc52  eb1a                      JMP 0x006bbc6e
006bbc54  50                        PUSH EAX
006bbc55  68cc75b600                PUSH 0xb675cc
006bbc5a  6a01                      PUSH 0x1
006bbc5c  e85f563500                CALL 0x00a112c0
006bbc61  83c40c                    ADD ESP,0xc
006bbc64  c787780c0000ffffffff      MOV dword ptr [EDI + 0xc78],0xffffffff
006bbc6e  8b07                      MOV EAX,dword ptr [EDI]
006bbc70  8bcf                      MOV ECX,EDI
006bbc72  ff5060                    CALL dword ptr [EAX + 0x60]
006bbc75  6a01                      PUSH 0x1
006bbc77  8bcf                      MOV ECX,EDI
006bbc79  e8c2f2ffff                CALL 0x006baf40
006bbc7e  6a00                      PUSH 0x0
006bbc80  8d4760                    LEA EAX,[EDI + 0x60]
006bbc83  8d4f48                    LEA ECX,[EDI + 0x48]
006bbc86  50                        PUSH EAX
006bbc87  e804ead4ff                CALL 0x0040a690
006bbc8c  8d4dd0                    LEA ECX,[EBP + -0x30]
006bbc8f  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006bbc96  e8a513d5ff                CALL 0x0040d040
006bbc9b  8d4db8                    LEA ECX,[EBP + -0x48]
006bbc9e  e89d13d5ff                CALL 0x0040d040
006bbca3  8d4da0                    LEA ECX,[EBP + -0x60]
006bbca6  e89513d5ff                CALL 0x0040d040
006bbcab  e99e000000                JMP 0x006bbd4e
006bbcb0  80783400                  CMP byte ptr [EAX + 0x34],0x0
006bbcb4  0f8494000000              JZ 0x006bbd4e
006bbcba  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
006bbcc1  0f8587000000              JNZ 0x006bbd4e
006bbcc7  80bd6fffffff00            CMP byte ptr [EBP + 0xffffff6f],0x0
006bbcce  757e                      JNZ 0x006bbd4e
006bbcd0  6a04                      PUSH 0x4
006bbcd2  8bcb                      MOV ECX,EBX
006bbcd4  e837c7ffff                CALL 0x006b8410
006bbcd9  84c0                      TEST AL,AL
006bbcdb  7571                      JNZ 0x006bbd4e
006bbcdd  837b0805                  CMP dword ptr [EBX + 0x8],0x5
006bbce1  7509                      JNZ 0x006bbcec
006bbce3  817f2879030000            CMP dword ptr [EDI + 0x28],0x379
006bbcea  7462                      JZ 0x006bbd4e
006bbcec  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
006bbcf2  e889d31200                CALL 0x007e9080
006bbcf7  f30f108d70ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff70]
006bbcff  d99d68ffffff              FSTP dword ptr [EBP + 0xffffff68]
006bbd05  0f2f8d68ffffff            COMISS XMM1,dword ptr [EBP + 0xffffff68]
006bbd0c  7739                      JA 0x006bbd47
006bbd0e  a17816c700                MOV EAX,[0x00c71678]
006bbd13  83b88465020022            CMP dword ptr [EAX + 0x26584],0x22
006bbd1a  742b                      JZ 0x006bbd47
006bbd1c  83b87467020001            CMP dword ptr [EAX + 0x26774],0x1
006bbd23  7c29                      JL 0x006bbd4e
006bbd25  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
006bbd2b  e850d31200                CALL 0x007e9080
006bbd30  f30f1005d4a1ba00          MOVSS XMM0,dword ptr [0x00baa1d4]
006bbd38  d99d68ffffff              FSTP dword ptr [EBP + 0xffffff68]
006bbd3e  0f2f8568ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff68]
006bbd45  7607                      JBE 0x006bbd4e
006bbd47  c687630c000001            MOV byte ptr [EDI + 0xc63],0x1
006bbd4e  803d7016c70000            CMP byte ptr [0x00c71670],0x0
006bbd55  7410                      JZ 0x006bbd67
006bbd57  c687630c000000            MOV byte ptr [EDI + 0xc63],0x0
006bbd5e  c6057016c70000            MOV byte ptr [0x00c71670],0x0
006bbd65  eb3c                      JMP 0x006bbda3
006bbd67  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
006bbd6e  7433                      JZ 0x006bbda3
006bbd70  8bb7640c0000              MOV ESI,dword ptr [EDI + 0xc64]
006bbd76  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
006bbd7c  e86fd31200                CALL 0x007e90f0
006bbd81  6a01                      PUSH 0x1
006bbd83  56                        PUSH ESI
006bbd84  50                        PUSH EAX
006bbd85  8bcf                      MOV ECX,EDI
006bbd87  e854460100                CALL 0x006d03e0
006bbd8c  eb15                      JMP 0x006bbda3
006bbd8e  ff772c                    PUSH dword ptr [EDI + 0x2c]
006bbd91  ff7728                    PUSH dword ptr [EDI + 0x28]
006bbd94  68e875b600                PUSH 0xb675e8
006bbd99  6a01                      PUSH 0x1
006bbd9b  e820553500                CALL 0x00a112c0
006bbda0  83c410                    ADD ESP,0x10
006bbda3  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006bbda6  64890d00000000            MOV dword ptr FS:[0x0],ECX
006bbdad  59                        POP ECX
006bbdae  5f                        POP EDI
006bbdaf  5e                        POP ESI
006bbdb0  5b                        POP EBX
006bbdb1  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
006bbdb4  33cd                      XOR ECX,EBP
006bbdb6  e870334300                CALL 0x00aef12b
006bbdbb  8be5                      MOV ESP,EBP
006bbdbd  5d                        POP EBP
006bbdbe  c3                        RET
