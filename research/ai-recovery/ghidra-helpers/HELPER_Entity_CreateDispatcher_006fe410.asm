; J460 NPC AI 0x006fe410 HELPER_Entity_CreateDispatcher
; types=
; identities=common_spawn
; entry=006fe410
006fe410  55                        PUSH EBP
006fe411  8bec                      MOV EBP,ESP
006fe413  83e4f8                    AND ESP,0xfffffff8
006fe416  83ec5c                    SUB ESP,0x5c
006fe419  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
006fe41c  53                        PUSH EBX
006fe41d  56                        PUSH ESI
006fe41e  8b7518                    MOV ESI,dword ptr [EBP + 0x18]
006fe421  57                        PUSH EDI
006fe422  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006fe426  8bf9                      MOV EDI,ECX
006fe428  8d4520                    LEA EAX,[EBP + 0x20]
006fe42b  897c2428                  MOV dword ptr [ESP + 0x28],EDI
006fe42f  50                        PUSH EAX
006fe430  8d451c                    LEA EAX,[EBP + 0x1c]
006fe433  50                        PUSH EAX
006fe434  8b4514                    MOV EAX,dword ptr [EBP + 0x14]
006fe437  56                        PUSH ESI
006fe438  50                        PUSH EAX
006fe439  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
006fe43c  50                        PUSH EAX
006fe43d  8d450c                    LEA EAX,[EBP + 0xc]
006fe440  50                        PUSH EAX
006fe441  8d442434                  LEA EAX,[ESP + 0x34]
006fe445  50                        PUSH EAX
006fe446  e895621600                CALL 0x008646e0
006fe44b  a17816c700                MOV EAX,[0x00c71678]
006fe450  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
006fe454  894c2414                  MOV dword ptr [ESP + 0x14],ECX
006fe458  894d08                    MOV dword ptr [EBP + 0x8],ECX
006fe45b  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006fe462  7c1b                      JL 0x006fe47f
006fe464  8d4d1c                    LEA ECX,[EBP + 0x1c]
006fe467  51                        PUSH ECX
006fe468  8d4d0c                    LEA ECX,[EBP + 0xc]
006fe46b  51                        PUSH ECX
006fe46c  8d4d08                    LEA ECX,[EBP + 0x8]
006fe46f  51                        PUSH ECX
006fe470  8b8820660200              MOV ECX,dword ptr [EAX + 0x26620]
006fe476  e8e5d0d2ff                CALL 0x0042b560
006fe47b  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
006fe47f  85f6                      TEST ESI,ESI
006fe481  7460                      JZ 0x006fe4e3
006fe483  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
006fe489  2500000020                AND EAX,0x20000000
006fe48e  83c800                    OR EAX,0x0
006fe491  7450                      JZ 0x006fe4e3
006fe493  81f9e8030000              CMP ECX,0x3e8
006fe499  7548                      JNZ 0x006fe4e3
006fe49b  8b5d0c                    MOV EBX,dword ptr [EBP + 0xc]
006fe49e  895c2410                  MOV dword ptr [ESP + 0x10],EBX
006fe4a2  83c3ea                    ADD EBX,-0x16
006fe4a5  83fb04                    CMP EBX,0x4
006fe4a8  7740                      JA 0x006fe4ea
006fe4aa  ff249d1cec6f00            JMP dword ptr [EBX*0x4 + 0x6fec1c]
006fe4b1  c74424102e000000          MOV dword ptr [ESP + 0x10],0x2e
006fe4b9  eb2f                      JMP 0x006fe4ea
006fe4bb  c744241035000000          MOV dword ptr [ESP + 0x10],0x35
006fe4c3  eb25                      JMP 0x006fe4ea
006fe4c5  c7442410cc000000          MOV dword ptr [ESP + 0x10],0xcc
006fe4cd  eb1b                      JMP 0x006fe4ea
006fe4cf  c74424102c000000          MOV dword ptr [ESP + 0x10],0x2c
006fe4d7  eb11                      JMP 0x006fe4ea
006fe4d9  c74424102d000000          MOV dword ptr [ESP + 0x10],0x2d
006fe4e1  eb07                      JMP 0x006fe4ea
006fe4e3  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
006fe4e6  89442410                  MOV dword ptr [ESP + 0x10],EAX
006fe4ea  8a4524                    MOV AL,byte ptr [EBP + 0x24]
006fe4ed  2401                      AND AL,0x1
006fe4ef  0fb6c0                    MOVZX EAX,AL
006fe4f2  50                        PUSH EAX
006fe4f3  51                        PUSH ECX
006fe4f4  8b8f80650200              MOV ECX,dword ptr [EDI + 0x26580]
006fe4fa  e8911bffff                CALL 0x006f0090
006fe4ff  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006fe503  85c0                      TEST EAX,EAX
006fe505  7509                      JNZ 0x006fe510
006fe507  5f                        POP EDI
006fe508  5e                        POP ESI
006fe509  5b                        POP EBX
006fe50a  8be5                      MOV ESP,EBP
006fe50c  5d                        POP EBP
006fe50d  c22000                    RET 0x20
006fe510  e87b9f3600                CALL 0x00a68490
006fe515  8bda                      MOV EBX,EDX
006fe517  8bc8                      MOV ECX,EAX
006fe519  badb34b6d7                MOV EDX,0xd7b634db
006fe51e  895c2420                  MOV dword ptr [ESP + 0x20],EBX
006fe522  f7e2                      MUL EDX
006fe524  bf82de1b43                MOV EDI,0x431bde82
006fe529  89442438                  MOV dword ptr [ESP + 0x38],EAX
006fe52d  8bf2                      MOV ESI,EDX
006fe52f  8bc1                      MOV EAX,ECX
006fe531  b9db34b6d7                MOV ECX,0xd7b634db
006fe536  f7e7                      MUL EDI
006fe538  8bf8                      MOV EDI,EAX
006fe53a  89542434                  MOV dword ptr [ESP + 0x34],EDX
006fe53e  8bc3                      MOV EAX,EBX
006fe540  f7e1                      MUL ECX
006fe542  8bda                      MOV EBX,EDX
006fe544  8bc8                      MOV ECX,EAX
006fe546  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
006fe54a  ba82de1b43                MOV EDX,0x431bde82
006fe54f  f7e2                      MUL EDX
006fe551  03ce                      ADD ECX,ESI
006fe553  89442418                  MOV dword ptr [ESP + 0x18],EAX
006fe557  83d300                    ADC EBX,0x0
006fe55a  03f9                      ADD EDI,ECX
006fe55c  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
006fe560  83d100                    ADC ECX,0x0
006fe563  897c2438                  MOV dword ptr [ESP + 0x38],EDI
006fe567  8b7d18                    MOV EDI,dword ptr [EBP + 0x18]
006fe56a  33c0                      XOR EAX,EAX
006fe56c  03d9                      ADD EBX,ECX
006fe56e  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
006fe572  13c0                      ADC EAX,EAX
006fe574  03cb                      ADD ECX,EBX
006fe576  8b5c241c                  MOV EBX,dword ptr [ESP + 0x1c]
006fe57a  13d0                      ADC EDX,EAX
006fe57c  0facd112                  SHRD ECX,EDX,0x12
006fe580  c1ea12                    SHR EDX,0x12
006fe583  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006fe587  89542438                  MOV dword ptr [ESP + 0x38],EDX
006fe58b  85ff                      TEST EDI,EDI
006fe58d  740b                      JZ 0x006fe59a
006fe58f  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006fe592  894334                    MOV dword ptr [EBX + 0x34],EAX
006fe595  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006fe598  eb09                      JMP 0x006fe5a3
006fe59a  c7433400000000            MOV dword ptr [EBX + 0x34],0x0
006fe5a1  33c0                      XOR EAX,EAX
006fe5a3  8db3c8030000              LEA ESI,[EBX + 0x3c8]
006fe5a9  894338                    MOV dword ptr [EBX + 0x38],EAX
006fe5ac  8b0e                      MOV ECX,dword ptr [ESI]
006fe5ae  85c9                      TEST ECX,ECX
006fe5b0  7414                      JZ 0x006fe5c6
006fe5b2  8d442434                  LEA EAX,[ESP + 0x34]
006fe5b6  89742434                  MOV dword ptr [ESP + 0x34],ESI
006fe5ba  50                        PUSH EAX
006fe5bb  81c1cc030000              ADD ECX,0x3cc
006fe5c1  e84a0cddff                CALL 0x004cf210
006fe5c6  893e                      MOV dword ptr [ESI],EDI
006fe5c8  85ff                      TEST EDI,EDI
006fe5ca  7408                      JZ 0x006fe5d4
006fe5cc  56                        PUSH ESI
006fe5cd  8bcf                      MOV ECX,EDI
006fe5cf  e81cf7dcff                CALL 0x004cdcf0
006fe5d4  8b4d10                    MOV ECX,dword ptr [EBP + 0x10]
006fe5d7  ff7520                    PUSH dword ptr [EBP + 0x20]
006fe5da  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
006fe5de  ff751c                    PUSH dword ptr [EBP + 0x1c]
006fe5e1  8b01                      MOV EAX,dword ptr [ECX]
006fe5e3  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
006fe5e7  89833c030000              MOV dword ptr [EBX + 0x33c],EAX
006fe5ed  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
006fe5f0  8b4d14                    MOV ECX,dword ptr [EBP + 0x14]
006fe5f3  898340030000              MOV dword ptr [EBX + 0x340],EAX
006fe5f9  56                        PUSH ESI
006fe5fa  52                        PUSH EDX
006fe5fb  8b01                      MOV EAX,dword ptr [ECX]
006fe5fd  898360030000              MOV dword ptr [EBX + 0x360],EAX
006fe603  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
006fe606  8bcb                      MOV ECX,EBX
006fe608  898364030000              MOV dword ptr [EBX + 0x364],EAX
006fe60e  8b03                      MOV EAX,dword ptr [EBX]
006fe610  ff5004                    CALL dword ptr [EAX + 0x4]
006fe613  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
006fe617  53                        PUSH EBX
006fe618  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
006fe61e  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
006fe624  8d4101                    LEA EAX,[ECX + 0x1]
006fe627  898214120000              MOV dword ptr [EDX + 0x1214],EAX
006fe62d  894b20                    MOV dword ptr [EBX + 0x20],ECX
006fe630  8d8a18120000              LEA ECX,[EDX + 0x1218]
006fe636  e8c59ed1ff                CALL 0x00418500
006fe63b  85ff                      TEST EDI,EDI
006fe63d  0f8449040000              JZ 0x006fea8c
006fe643  6a01                      PUSH 0x1
006fe645  8bcf                      MOV ECX,EDI
006fe647  e84475fbff                CALL 0x006b5b90
006fe64c  84c0                      TEST AL,AL
006fe64e  0f8438040000              JZ 0x006fea8c
006fe654  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006fe65a  33c0                      XOR EAX,EAX
006fe65c  81e100000010              AND ECX,0x10000000
006fe662  0bc1                      OR EAX,ECX
006fe664  0f8490010000              JZ 0x006fe7fa
006fe66a  8b8b6c010000              MOV ECX,dword ptr [EBX + 0x16c]
006fe670  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
006fe674  81c900000010              OR ECX,0x10000000
006fe67a  8b9368010000              MOV EDX,dword ptr [EBX + 0x168]
006fe680  899368010000              MOV dword ptr [EBX + 0x168],EDX
006fe686  898b6c010000              MOV dword ptr [EBX + 0x16c],ECX
006fe68c  83f809                    CMP EAX,0x9
006fe68f  7414                      JZ 0x006fe6a5
006fe691  83f807                    CMP EAX,0x7
006fe694  740f                      JZ 0x006fe6a5
006fe696  83c920                    OR ECX,0x20
006fe699  899368010000              MOV dword ptr [EBX + 0x168],EDX
006fe69f  898b6c010000              MOV dword ptr [EBX + 0x16c],ECX
006fe6a5  8b9764020000              MOV EDX,dword ptr [EDI + 0x264]
006fe6ab  85d2                      TEST EDX,EDX
006fe6ad  746e                      JZ 0x006fe71d
006fe6af  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
006fe6b2  f30f10823c030000          MOVSS XMM0,dword ptr [EDX + 0x33c]
006fe6ba  f30f108a40030000          MOVSS XMM1,dword ptr [EDX + 0x340]
006fe6c2  89442440                  MOV dword ptr [ESP + 0x40],EAX
006fe6c6  8b422c                    MOV EAX,dword ptr [EDX + 0x2c]
006fe6c9  89442444                  MOV dword ptr [ESP + 0x44],EAX
006fe6cd  8b4234                    MOV EAX,dword ptr [EDX + 0x34]
006fe6d0  89442448                  MOV dword ptr [ESP + 0x48],EAX
006fe6d4  8b4238                    MOV EAX,dword ptr [EDX + 0x38]
006fe6d7  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
006fe6db  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
006fe6e1  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
006fe6e7  2500010000                AND EAX,0x100
006fe6ec  83c800                    OR EAX,0x0
006fe6ef  f30f108260030000          MOVSS XMM0,dword ptr [EDX + 0x360]
006fe6f7  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
006fe6fd  f30f108a64030000          MOVSS XMM1,dword ptr [EDX + 0x364]
006fe705  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
006fe70b  f30f114c245c              MOVSS dword ptr [ESP + 0x5c],XMM1
006fe711  7452                      JZ 0x006fe765
006fe713  c744241001000000          MOV dword ptr [ESP + 0x10],0x1
006fe71b  eb54                      JMP 0x006fe771
006fe71d  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
006fe725  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006fe72d  c744244000000000          MOV dword ptr [ESP + 0x40],0x0
006fe735  c744244400000000          MOV dword ptr [ESP + 0x44],0x0
006fe73d  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
006fe745  c744244c00000000          MOV dword ptr [ESP + 0x4c],0x0
006fe74d  f30f114c2450              MOVSS dword ptr [ESP + 0x50],XMM1
006fe753  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
006fe759  f30f114c2458              MOVSS dword ptr [ESP + 0x58],XMM1
006fe75f  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
006fe765  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006fe76d  85d2                      TEST EDX,EDX
006fe76f  741a                      JZ 0x006fe78b
006fe771  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
006fe777  2500000020                AND EAX,0x20000000
006fe77c  83c800                    OR EAX,0x0
006fe77f  7412                      JZ 0x006fe793
006fe781  c744242002000000          MOV dword ptr [ESP + 0x20],0x2
006fe789  eb14                      JMP 0x006fe79f
006fe78b  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006fe793  c744242000000000          MOV dword ptr [ESP + 0x20],0x0
006fe79b  85d2                      TEST EDX,EDX
006fe79d  7419                      JZ 0x006fe7b8
006fe79f  8b8a6c010000              MOV ECX,dword ptr [EDX + 0x16c]
006fe7a5  33c0                      XOR EAX,EAX
006fe7a7  81e100004000              AND ECX,0x400000
006fe7ad  0bc1                      OR EAX,ECX
006fe7af  7407                      JZ 0x006fe7b8
006fe7b1  b804000000                MOV EAX,0x4
006fe7b6  eb02                      JMP 0x006fe7ba
006fe7b8  33c0                      XOR EAX,EAX
006fe7ba  0b442420                  OR EAX,dword ptr [ESP + 0x20]
006fe7be  8bcb                      MOV ECX,EBX
006fe7c0  0b442410                  OR EAX,dword ptr [ESP + 0x10]
006fe7c4  6a00                      PUSH 0x0
006fe7c6  6a00                      PUSH 0x0
006fe7c8  89442468                  MOV dword ptr [ESP + 0x68],EAX
006fe7cc  8d442448                  LEA EAX,[ESP + 0x48]
006fe7d0  6aff                      PUSH -0x1
006fe7d2  50                        PUSH EAX
006fe7d3  89542474                  MOV dword ptr [ESP + 0x74],EDX
006fe7d7  e894f0faff                CALL 0x006ad870
006fe7dc  8b542414                  MOV EDX,dword ptr [ESP + 0x14]
006fe7e0  8d42f6                    LEA EAX,[EDX + -0xa]
006fe7e3  3ddd030000                CMP EAX,0x3dd
006fe7e8  7739                      JA 0x006fe823
006fe7ea  6a01                      PUSH 0x1
006fe7ec  56                        PUSH ESI
006fe7ed  8d4b48                    LEA ECX,[EBX + 0x48]
006fe7f0  e81b75daff                CALL 0x004a5d10
006fe7f5  83c408                    ADD ESP,0x8
006fe7f8  eb29                      JMP 0x006fe823
006fe7fa  6a00                      PUSH 0x0
006fe7fc  6800000020                PUSH 0x20000000
006fe801  8bcf                      MOV ECX,EDI
006fe803  e8288cd1ff                CALL 0x00417430
006fe808  84c0                      TEST AL,AL
006fe80a  7417                      JZ 0x006fe823
006fe80c  6a00                      PUSH 0x0
006fe80e  6a00                      PUSH 0x0
006fe810  6aff                      PUSH -0x1
006fe812  8d4c244c                  LEA ECX,[ESP + 0x4c]
006fe816  e85574d3ff                CALL 0x00435c70
006fe81b  50                        PUSH EAX
006fe81c  8bcb                      MOV ECX,EBX
006fe81e  e84df0faff                CALL 0x006ad870
006fe823  6a00                      PUSH 0x0
006fe825  68acd6c500                PUSH 0xc5d6ac
006fe82a  68dcd5c500                PUSH 0xc5d5dc
006fe82f  6a00                      PUSH 0x0
006fe831  57                        PUSH EDI
006fe832  e87a203f00                CALL 0x00af08b1
006fe837  83c414                    ADD ESP,0x14
006fe83a  89442420                  MOV dword ptr [ESP + 0x20],EAX
006fe83e  6a00                      PUSH 0x0
006fe840  68acd6c500                PUSH 0xc5d6ac
006fe845  68dcd5c500                PUSH 0xc5d5dc
006fe84a  6a00                      PUSH 0x0
006fe84c  53                        PUSH EBX
006fe84d  e85f203f00                CALL 0x00af08b1
006fe852  83c414                    ADD ESP,0x14
006fe855  8bf0                      MOV ESI,EAX
006fe857  837c242000                CMP dword ptr [ESP + 0x20],0x0
006fe85c  0f842a020000              JZ 0x006fea8c
006fe862  85f6                      TEST ESI,ESI
006fe864  0f8422020000              JZ 0x006fea8c
006fe86a  6a00                      PUSH 0x0
006fe86c  6a01                      PUSH 0x1
006fe86e  8bce                      MOV ECX,ESI
006fe870  e8bb8bd1ff                CALL 0x00417430
006fe875  84c0                      TEST AL,AL
006fe877  0f8523010000              JNZ 0x006fe9a0
006fe87d  6800000001                PUSH 0x1000000
006fe882  6a00                      PUSH 0x0
006fe884  8bcf                      MOV ECX,EDI
006fe886  e8a58bd1ff                CALL 0x00417430
006fe88b  84c0                      TEST AL,AL
006fe88d  7466                      JZ 0x006fe8f5
006fe88f  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
006fe897  8d442440                  LEA EAX,[ESP + 0x40]
006fe89b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006fe8a3  8bce                      MOV ECX,ESI
006fe8a5  6a5a                      PUSH 0x5a
006fe8a7  50                        PUSH EAX
006fe8a8  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
006fe8b0  c744244c00000000          MOV dword ptr [ESP + 0x4c],0x0
006fe8b8  c744245000000000          MOV dword ptr [ESP + 0x50],0x0
006fe8c0  c744245400000000          MOV dword ptr [ESP + 0x54],0x0
006fe8c8  f30f114c2458              MOVSS dword ptr [ESP + 0x58],XMM1
006fe8ce  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
006fe8d4  f30f114c2460              MOVSS dword ptr [ESP + 0x60],XMM1
006fe8da  f30f11442464              MOVSS dword ptr [ESP + 0x64],XMM0
006fe8e0  c744246800000000          MOV dword ptr [ESP + 0x68],0x0
006fe8e8  c744246c00000000          MOV dword ptr [ESP + 0x6c],0x0
006fe8f0  e8db8ffbff                CALL 0x006b78d0
006fe8f5  6a00                      PUSH 0x0
006fe8f7  6800000001                PUSH 0x1000000
006fe8fc  8bcf                      MOV ECX,EDI
006fe8fe  e82d8bd1ff                CALL 0x00417430
006fe903  84c0                      TEST AL,AL
006fe905  0f8495000000              JZ 0x006fe9a0
006fe90b  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
006fe913  8d442440                  LEA EAX,[ESP + 0x40]
006fe917  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006fe91f  8bce                      MOV ECX,ESI
006fe921  6a00                      PUSH 0x0
006fe923  6a00                      PUSH 0x0
006fe925  6a5a                      PUSH 0x5a
006fe927  50                        PUSH EAX
006fe928  c744245000000000          MOV dword ptr [ESP + 0x50],0x0
006fe930  c744245400000000          MOV dword ptr [ESP + 0x54],0x0
006fe938  c744245800000000          MOV dword ptr [ESP + 0x58],0x0
006fe940  c744245c00000000          MOV dword ptr [ESP + 0x5c],0x0
006fe948  f30f114c2460              MOVSS dword ptr [ESP + 0x60],XMM1
006fe94e  f30f11442464              MOVSS dword ptr [ESP + 0x64],XMM0
006fe954  f30f114c2468              MOVSS dword ptr [ESP + 0x68],XMM1
006fe95a  f30f1144246c              MOVSS dword ptr [ESP + 0x6c],XMM0
006fe960  c744247000000000          MOV dword ptr [ESP + 0x70],0x0
006fe968  c744247400000000          MOV dword ptr [ESP + 0x74],0x0
006fe970  e89b72fbff                CALL 0x006b5c10
006fe975  83be3c02000000            CMP dword ptr [ESI + 0x23c],0x0
006fe97c  7e22                      JLE 0x006fe9a0
006fe97e  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
006fe984  818e6801000000000001      OR dword ptr [ESI + 0x168],0x1000000
006fe98e  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
006fe994  8b86b8030000              MOV EAX,dword ptr [ESI + 0x3b8]
006fe99a  8986b4030000              MOV dword ptr [ESI + 0x3b4],EAX
006fe9a0  8b7c2420                  MOV EDI,dword ptr [ESP + 0x20]
006fe9a4  8bce                      MOV ECX,ESI
006fe9a6  8b06                      MOV EAX,dword ptr [ESI]
006fe9a8  f30f108f480f0000          MOVSS XMM1,dword ptr [EDI + 0xf48]
006fe9b0  f30f598e380c0000          MULSS XMM1,dword ptr [ESI + 0xc38]
006fe9b8  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006fe9bb  f30f118e380c0000          MOVSS dword ptr [ESI + 0xc38],XMM1
006fe9c3  f30f598eb4030000          MULSS XMM1,dword ptr [ESI + 0x3b4]
006fe9cb  0f28c1                    MOVAPS XMM0,XMM1
006fe9ce  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006fe9d6  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006fe9de  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
006fe9e6  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
006fe9ee  f30f1086480f0000          MOVSS XMM0,dword ptr [ESI + 0xf48]
006fe9f6  f30f5987480f0000          MULSS XMM0,dword ptr [EDI + 0xf48]
006fe9fe  f30f1186480f0000          MOVSS dword ptr [ESI + 0xf48],XMM0
006fea06  f30f1086440f0000          MOVSS XMM0,dword ptr [ESI + 0xf44]
006fea0e  f30f5987440f0000          MULSS XMM0,dword ptr [EDI + 0xf44]
006fea16  f30f1186440f0000          MOVSS dword ptr [ESI + 0xf44],XMM0
006fea1e  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
006fea26  f30f5987440f0000          MULSS XMM0,dword ptr [EDI + 0xf44]
006fea2e  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
006fea36  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
006fea3e  f30f5987440f0000          MULSS XMM0,dword ptr [EDI + 0xf44]
006fea46  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
006fea4e  ffd0                      CALL EAX
006fea50  84c0                      TEST AL,AL
006fea52  7438                      JZ 0x006fea8c
006fea54  8bbf540f0000              MOV EDI,dword ptr [EDI + 0xf54]
006fea5a  81c6540f0000              ADD ESI,0xf54
006fea60  8b0e                      MOV ECX,dword ptr [ESI]
006fea62  3bcf                      CMP ECX,EDI
006fea64  7426                      JZ 0x006fea8c
006fea66  85c9                      TEST ECX,ECX
006fea68  7414                      JZ 0x006fea7e
006fea6a  8d442434                  LEA EAX,[ESP + 0x34]
006fea6e  89742434                  MOV dword ptr [ESP + 0x34],ESI
006fea72  50                        PUSH EAX
006fea73  81c1cc030000              ADD ECX,0x3cc
006fea79  e89207ddff                CALL 0x004cf210
006fea7e  893e                      MOV dword ptr [ESI],EDI
006fea80  85ff                      TEST EDI,EDI
006fea82  7408                      JZ 0x006fea8c
006fea84  56                        PUSH ESI
006fea85  8bcf                      MOV ECX,EDI
006fea87  e864f2dcff                CALL 0x004cdcf0
006fea8c  53                        PUSH EBX
006fea8d  e85e8e0000                CALL 0x007078f0
006fea92  84c0                      TEST AL,AL
006fea94  7407                      JZ 0x006fea9d
006fea96  51                        PUSH ECX
006fea97  53                        PUSH EBX
006fea98  e8238f0000                CALL 0x007079c0
006fea9d  80bb7201000000            CMP byte ptr [EBX + 0x172],0x0
006feaa4  0f84e3000000              JZ 0x006feb8d
006feaaa  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
006feaae  8b8158770600              MOV EAX,dword ptr [ECX + 0x67758]
006feab4  3b815c770600              CMP EAX,dword ptr [ECX + 0x6775c]
006feaba  0f84cd000000              JZ 0x006feb8d
006feac0  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
006feac3  8db180770600              LEA ESI,[ECX + 0x67780]
006feac9  8b7b28                    MOV EDI,dword ptr [EBX + 0x28]
006feacc  8bce                      MOV ECX,ESI
006feace  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
006fead2  8d442428                  LEA EAX,[ESP + 0x28]
006fead6  50                        PUSH EAX
006fead7  8d442438                  LEA EAX,[ESP + 0x38]
006feadb  897c242c                  MOV dword ptr [ESP + 0x2c],EDI
006feadf  50                        PUSH EAX
006feae0  e8bb392e00                CALL 0x009e24a0
006feae5  8b06                      MOV EAX,dword ptr [ESI]
006feae7  39442434                  CMP dword ptr [ESP + 0x34],EAX
006feaeb  7523                      JNZ 0x006feb10
006feaed  8d442428                  LEA EAX,[ESP + 0x28]
006feaf1  897c2428                  MOV dword ptr [ESP + 0x28],EDI
006feaf5  50                        PUSH EAX
006feaf6  8d442438                  LEA EAX,[ESP + 0x38]
006feafa  c7442430ffffffff          MOV dword ptr [ESP + 0x30],0xffffffff
006feb02  50                        PUSH EAX
006feb03  8bce                      MOV ECX,ESI
006feb05  e896392e00                CALL 0x009e24a0
006feb0a  8b0e                      MOV ECX,dword ptr [ESI]
006feb0c  3908                      CMP dword ptr [EAX],ECX
006feb0e  747d                      JZ 0x006feb8d
006feb10  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006feb16  33ff                      XOR EDI,EDI
006feb18  81c6a8ba0100              ADD ESI,0x1baa8
006feb1e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
006feb21  2b06                      SUB EAX,dword ptr [ESI]
006feb23  c1f802                    SAR EAX,0x2
006feb26  85c0                      TEST EAX,EAX
006feb28  7463                      JZ 0x006feb8d
006feb2a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
006feb30  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
006feb33  8bc1                      MOV EAX,ECX
006feb35  2b06                      SUB EAX,dword ptr [ESI]
006feb37  c1f802                    SAR EAX,0x2
006feb3a  85c0                      TEST EAX,EAX
006feb3c  7512                      JNZ 0x006feb50
006feb3e  68bce6b700                PUSH 0xb7e6bc
006feb43  6a10                      PUSH 0x10
006feb45  e876273100                CALL 0x00a112c0
006feb4a  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
006feb4d  83c408                    ADD ESP,0x8
006feb50  8b06                      MOV EAX,dword ptr [ESI]
006feb52  2bc8                      SUB ECX,EAX
006feb54  c1f902                    SAR ECX,0x2
006feb57  3bf9                      CMP EDI,ECX
006feb59  7303                      JNC 0x006feb5e
006feb5b  8d04b8                    LEA EAX,[EAX + EDI*0x4]
006feb5e  ff7514                    PUSH dword ptr [EBP + 0x14]
006feb61  8b08                      MOV ECX,dword ptr [EAX]
006feb63  ff7510                    PUSH dword ptr [EBP + 0x10]
006feb66  81c1c81f0000              ADD ECX,0x1fc8
006feb6c  53                        PUSH EBX
006feb6d  6a06                      PUSH 0x6
006feb6f  e80c1b2e00                CALL 0x009e0680
006feb74  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006feb7a  47                        INC EDI
006feb7b  81c6a8ba0100              ADD ESI,0x1baa8
006feb81  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
006feb84  2b06                      SUB EAX,dword ptr [ESI]
006feb86  c1f802                    SAR EAX,0x2
006feb89  3bf8                      CMP EDI,EAX
006feb8b  72a3                      JC 0x006feb30
006feb8d  e8fe983600                CALL 0x00a68490
006feb92  8bda                      MOV EBX,EDX
006feb94  8bc8                      MOV ECX,EAX
006feb96  badb34b6d7                MOV EDX,0xd7b634db
006feb9b  895c2434                  MOV dword ptr [ESP + 0x34],EBX
006feb9f  f7e2                      MUL EDX
006feba1  bf82de1b43                MOV EDI,0x431bde82
006feba6  89442428                  MOV dword ptr [ESP + 0x28],EAX
006febaa  8bf2                      MOV ESI,EDX
006febac  8bc1                      MOV EAX,ECX
006febae  b9db34b6d7                MOV ECX,0xd7b634db
006febb3  f7e7                      MUL EDI
006febb5  8bf8                      MOV EDI,EAX
006febb7  89542428                  MOV dword ptr [ESP + 0x28],EDX
006febbb  8bc3                      MOV EAX,EBX
006febbd  f7e1                      MUL ECX
006febbf  8bda                      MOV EBX,EDX
006febc1  8bc8                      MOV ECX,EAX
006febc3  8b442434                  MOV EAX,dword ptr [ESP + 0x34]
006febc7  ba82de1b43                MOV EDX,0x431bde82
006febcc  f7e2                      MUL EDX
006febce  03ce                      ADD ECX,ESI
006febd0  89442434                  MOV dword ptr [ESP + 0x34],EAX
006febd4  83d300                    ADC EBX,0x0
006febd7  03f9                      ADD EDI,ECX
006febd9  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
006febdd  83d100                    ADC ECX,0x0
006febe0  897c2420                  MOV dword ptr [ESP + 0x20],EDI
006febe4  33c0                      XOR EAX,EAX
006febe6  03d9                      ADD EBX,ECX
006febe8  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
006febec  13c0                      ADC EAX,EAX
006febee  03cb                      ADD ECX,EBX
006febf0  5f                        POP EDI
006febf1  13d0                      ADC EDX,EAX
006febf3  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
006febf7  0facd112                  SHRD ECX,EDX,0x12
006febfb  5e                        POP ESI
006febfc  c1ea12                    SHR EDX,0x12
006febff  2b4c2410                  SUB ECX,dword ptr [ESP + 0x10]
006fec03  5b                        POP EBX
006fec04  1b54242c                  SBB EDX,dword ptr [ESP + 0x2c]
006fec08  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
006fec0e  111534b6c700              ADC dword ptr [0x00c7b634],EDX
006fec14  8be5                      MOV ESP,EBP
006fec16  5d                        POP EBP
006fec17  c22000                    RET 0x20
