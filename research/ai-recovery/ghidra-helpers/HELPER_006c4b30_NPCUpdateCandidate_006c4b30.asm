; J460 NPC AI 0x006c4b30 HELPER_006c4b30_NPCUpdateCandidate
; types=
; identities=common_npc_update
; entry=006c4b30
006c4b30  53                        PUSH EBX
006c4b31  8bdc                      MOV EBX,ESP
006c4b33  83ec08                    SUB ESP,0x8
006c4b36  83e4f8                    AND ESP,0xfffffff8
006c4b39  83c404                    ADD ESP,0x4
006c4b3c  55                        PUSH EBP
006c4b3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006c4b40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006c4b44  8bec                      MOV EBP,ESP
006c4b46  6aff                      PUSH -0x1
006c4b48  68bcaaaf00                PUSH 0xafaabc
006c4b4d  64a100000000              MOV EAX,FS:[0x0]
006c4b53  50                        PUSH EAX
006c4b54  53                        PUSH EBX
006c4b55  81ec58030000              SUB ESP,0x358
006c4b5b  a1b493bf00                MOV EAX,[0x00bf93b4]
006c4b60  33c5                      XOR EAX,EBP
006c4b62  8945ec                    MOV dword ptr [EBP + -0x14],EAX
006c4b65  56                        PUSH ESI
006c4b66  57                        PUSH EDI
006c4b67  50                        PUSH EAX
006c4b68  8d45f4                    LEA EAX,[EBP + -0xc]
006c4b6b  64a300000000              MOV FS:[0x0],EAX
006c4b71  8bf9                      MOV EDI,ECX
006c4b73  89bd54fdffff              MOV dword ptr [EBP + 0xfffffd54],EDI
006c4b79  33c9                      XOR ECX,ECX
006c4b7b  898d6cfdffff              MOV dword ptr [EBP + 0xfffffd6c],ECX
006c4b81  898d84fdffff              MOV dword ptr [EBP + 0xfffffd84],ECX
006c4b87  388f72010000              CMP byte ptr [EDI + 0x172],CL
006c4b8d  0f84dc5c0000              JZ 0x006ca86f
006c4b93  8bcf                      MOV ECX,EDI
006c4b95  e8464effff                CALL 0x006b99e0
006c4b9a  6a00                      PUSH 0x0
006c4b9c  8bcf                      MOV ECX,EDI
006c4b9e  f30f11879c030000          MOVSS dword ptr [EDI + 0x39c],XMM0
006c4ba6  e835450100                CALL 0x006d90e0
006c4bab  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
006c4bb2  7555                      JNZ 0x006c4c09
006c4bb4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006c4bbc  8db7280f0000              LEA ESI,[EDI + 0xf28]
006c4bc2  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
006c4bca  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006c4bd2  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
006c4bda  8b0e                      MOV ECX,dword ptr [ESI]
006c4bdc  85c9                      TEST ECX,ECX
006c4bde  7429                      JZ 0x006c4c09
006c4be0  8b01                      MOV EAX,dword ptr [ECX]
006c4be2  ff5028                    CALL dword ptr [EAX + 0x28]
006c4be5  8b0e                      MOV ECX,dword ptr [ESI]
006c4be7  85c9                      TEST ECX,ECX
006c4be9  7418                      JZ 0x006c4c03
006c4beb  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
006c4bf1  89b588fdffff              MOV dword ptr [EBP + 0xfffffd88],ESI
006c4bf7  81c1cc030000              ADD ECX,0x3cc
006c4bfd  50                        PUSH EAX
006c4bfe  e80da6e0ff                CALL 0x004cf210
006c4c03  c70600000000              MOV dword ptr [ESI],0x0
006c4c09  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006c4c0f  33c0                      XOR EAX,EAX
006c4c11  81e200000200              AND EDX,0x20000
006c4c17  8bcf                      MOV ECX,EDI
006c4c19  0bc2                      OR EAX,EDX
006c4c1b  740a                      JZ 0x006c4c27
006c4c1d  e80e5d0000                CALL 0x006ca930
006c4c22  e9485c0000                JMP 0x006ca86f
006c4c27  6a00                      PUSH 0x0
006c4c29  6a02                      PUSH 0x2
006c4c2b  e8e07afeff                CALL 0x006ac710
006c4c30  84c0                      TEST AL,AL
006c4c32  744f                      JZ 0x006c4c83
006c4c34  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006c4c3a  2500000020                AND EAX,0x20000000
006c4c3f  83c800                    OR EAX,0x0
006c4c42  753f                      JNZ 0x006c4c83
006c4c44  50                        PUSH EAX
006c4c45  8bcf                      MOV ECX,EDI
006c4c47  e8440fffff                CALL 0x006b5b90
006c4c4c  84c0                      TEST AL,AL
006c4c4e  7433                      JZ 0x006c4c83
006c4c50  a17816c700                MOV EAX,[0x00c71678]
006c4c55  6a40                      PUSH 0x40
006c4c57  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006c4c5d  8d8910730000              LEA ECX,[ECX + 0x7310]
006c4c63  e818ba2600                CALL 0x00930680
006c4c68  84c0                      TEST AL,AL
006c4c6a  7417                      JZ 0x006c4c83
006c4c6c  6a00                      PUSH 0x0
006c4c6e  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c4c71  e89ac6d6ff                CALL 0x00431310
006c4c76  6afd                      PUSH -0x3
006c4c78  8d45c4                    LEA EAX,[EBP + -0x3c]
006c4c7b  8bcf                      MOV ECX,EDI
006c4c7d  50                        PUSH EAX
006c4c7e  e84d2bffff                CALL 0x006b77d0
006c4c83  8b8f580f0000              MOV ECX,dword ptr [EDI + 0xf58]
006c4c89  85c9                      TEST ECX,ECX
006c4c8b  743e                      JZ 0x006c4ccb
006c4c8d  39b9c4030000              CMP dword ptr [ECX + 0x3c4],EDI
006c4c93  7536                      JNZ 0x006c4ccb
006c4c95  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
006c4c9b  89813c030000              MOV dword ptr [ECX + 0x33c],EAX
006c4ca1  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
006c4ca7  898140030000              MOV dword ptr [ECX + 0x340],EAX
006c4cad  8b8f580f0000              MOV ECX,dword ptr [EDI + 0xf58]
006c4cb3  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
006c4cb9  898160030000              MOV dword ptr [ECX + 0x360],EAX
006c4cbf  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
006c4cc5  898164030000              MOV dword ptr [ECX + 0x364],EAX
006c4ccb  837f2817                  CMP dword ptr [EDI + 0x28],0x17
006c4ccf  7510                      JNZ 0x006c4ce1
006c4cd1  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
006c4cd5  750a                      JNZ 0x006c4ce1
006c4cd7  837f3001                  CMP dword ptr [EDI + 0x30],0x1
006c4cdb  7504                      JNZ 0x006c4ce1
006c4cdd  b101                      MOV CL,0x1
006c4cdf  eb02                      JMP 0x006c4ce3
006c4ce1  32c9                      XOR CL,CL
006c4ce3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c4ce9  c78580fdffff00000000      MOV dword ptr [EBP + 0xfffffd80],0x0
006c4cf3  83f816                    CMP EAX,0x16
006c4cf6  750c                      JNZ 0x006c4d04
006c4cf8  c78580fdffff7c75b600      MOV dword ptr [EBP + 0xfffffd80],0xb6757c
006c4d02  eb11                      JMP 0x006c4d15
006c4d04  33f6                      XOR ESI,ESI
006c4d06  83f817                    CMP EAX,0x17
006c4d09  750f                      JNZ 0x006c4d1a
006c4d0b  c78580fdffff8475b600      MOV dword ptr [EBP + 0xfffffd80],0xb67584
006c4d15  be01000000                MOV ESI,0x1
006c4d1a  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
006c4d20  8bc2                      MOV EAX,EDX
006c4d22  2500010000                AND EAX,0x100
006c4d27  83c800                    OR EAX,0x0
006c4d2a  7413                      JZ 0x006c4d3f
006c4d2c  84c9                      TEST CL,CL
006c4d2e  750f                      JNZ 0x006c4d3f
006c4d30  c78580fdffff3076b600      MOV dword ptr [EBP + 0xfffffd80],0xb67630
006c4d3a  e9ce010000                JMP 0x006c4f0d
006c4d3f  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006c4d45  33c0                      XOR EAX,EAX
006c4d47  81e100000001              AND ECX,0x1000000
006c4d4d  0bc1                      OR EAX,ECX
006c4d4f  740f                      JZ 0x006c4d60
006c4d51  c78580fdffff3876b600      MOV dword ptr [EBP + 0xfffffd80],0xb67638
006c4d5b  e9ad010000                JMP 0x006c4f0d
006c4d60  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006c4d66  33c0                      XOR EAX,EAX
006c4d68  81e100000800              AND ECX,0x80000
006c4d6e  0bc1                      OR EAX,ECX
006c4d70  740f                      JZ 0x006c4d81
006c4d72  c78580fdffff4876b600      MOV dword ptr [EBP + 0xfffffd80],0xb67648
006c4d7c  e98c010000                JMP 0x006c4f0d
006c4d81  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006c4d87  33c0                      XOR EAX,EAX
006c4d89  81e100001000              AND ECX,0x100000
006c4d8f  0bc1                      OR EAX,ECX
006c4d91  7411                      JZ 0x006c4da4
006c4d93  c78580fdffff5476b600      MOV dword ptr [EBP + 0xfffffd80],0xb67654
006c4d9d  33f6                      XOR ESI,ESI
006c4d9f  e96e010000                JMP 0x006c4f12
006c4da4  8bc2                      MOV EAX,EDX
006c4da6  2500020000                AND EAX,0x200
006c4dab  83c800                    OR EAX,0x0
006c4dae  740f                      JZ 0x006c4dbf
006c4db0  c78580fdffff1076b600      MOV dword ptr [EBP + 0xfffffd80],0xb67610
006c4dba  e94e010000                JMP 0x006c4f0d
006c4dbf  8bc2                      MOV EAX,EDX
006c4dc1  2500100000                AND EAX,0x1000
006c4dc6  83c800                    OR EAX,0x0
006c4dc9  7411                      JZ 0x006c4ddc
006c4dcb  c78580fdffff1876b600      MOV dword ptr [EBP + 0xfffffd80],0xb67618
006c4dd5  33f6                      XOR ESI,ESI
006c4dd7  e936010000                JMP 0x006c4f12
006c4ddc  8bc2                      MOV EAX,EDX
006c4dde  83e040                    AND EAX,0x40
006c4de1  83c800                    OR EAX,0x0
006c4de4  740f                      JZ 0x006c4df5
006c4de6  c78580fdffff2076b600      MOV dword ptr [EBP + 0xfffffd80],0xb67620
006c4df0  e918010000                JMP 0x006c4f0d
006c4df5  8bc2                      MOV EAX,EDX
006c4df7  2500080000                AND EAX,0x800
006c4dfc  83c800                    OR EAX,0x0
006c4dff  740f                      JZ 0x006c4e10
006c4e01  c78580fdffff2876b600      MOV dword ptr [EBP + 0xfffffd80],0xb67628
006c4e0b  e9fd000000                JMP 0x006c4f0d
006c4e10  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006c4e16  33c0                      XOR EAX,EAX
006c4e18  83e104                    AND ECX,0x4
006c4e1b  0bc1                      OR EAX,ECX
006c4e1d  740f                      JZ 0x006c4e2e
006c4e1f  c78580fdffff9076b600      MOV dword ptr [EBP + 0xfffffd80],0xb67690
006c4e29  e9df000000                JMP 0x006c4f0d
006c4e2e  81e280000000              AND EDX,0x80
006c4e34  83ca00                    OR EDX,0x0
006c4e37  0f85c6000000              JNZ 0x006c4f03
006c4e3d  a17816c700                MOV EAX,[0x00c71678]
006c4e42  68e8000000                PUSH 0xe8
006c4e47  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006c4e4d  8d8910730000              LEA ECX,[ECX + 0x7310]
006c4e53  e898b72600                CALL 0x009305f0
006c4e58  84c0                      TEST AL,AL
006c4e5a  7539                      JNZ 0x006c4e95
006c4e5c  a17816c700                MOV EAX,[0x00c71678]
006c4e61  6a42                      PUSH 0x42
006c4e63  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006c4e69  8d8910730000              LEA ECX,[ECX + 0x7310]
006c4e6f  e87cb72600                CALL 0x009305f0
006c4e74  84c0                      TEST AL,AL
006c4e76  751d                      JNZ 0x006c4e95
006c4e78  a17816c700                MOV EAX,[0x00c71678]
006c4e7d  83b88465020016            CMP dword ptr [EAX + 0x26584],0x16
006c4e84  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006c4e8a  7422                      JZ 0x006c4eae
006c4e8c  83b91012000001            CMP dword ptr [ECX + 0x1210],0x1
006c4e93  7519                      JNZ 0x006c4eae
006c4e95  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006c4e9b  2501000020                AND EAX,0x20000001
006c4ea0  83c800                    OR EAX,0x0
006c4ea3  745e                      JZ 0x006c4f03
006c4ea5  817f28d4000000            CMP dword ptr [EDI + 0x28],0xd4
006c4eac  7455                      JZ 0x006c4f03
006c4eae  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006c4eb4  33c0                      XOR EAX,EAX
006c4eb6  81e100004000              AND ECX,0x400000
006c4ebc  0bc1                      OR EAX,ECX
006c4ebe  740c                      JZ 0x006c4ecc
006c4ec0  c78580fdffffa476b600      MOV dword ptr [EBP + 0xfffffd80],0xb676a4
006c4eca  eb41                      JMP 0x006c4f0d
006c4ecc  817f28c6030000            CMP dword ptr [EDI + 0x28],0x3c6
006c4ed3  750c                      JNZ 0x006c4ee1
006c4ed5  c78580fdffffb076b600      MOV dword ptr [EBP + 0xfffffd80],0xb676b0
006c4edf  eb2c                      JMP 0x006c4f0d
006c4ee1  83bd80fdffff00            CMP dword ptr [EBP + 0xfffffd80],0x0
006c4ee8  7528                      JNZ 0x006c4f12
006c4eea  83bf0c0d000000            CMP dword ptr [EDI + 0xd0c],0x0
006c4ef1  0f84ad000000              JZ 0x006c4fa4
006c4ef7  c6871c0d000000            MOV byte ptr [EDI + 0xd1c],0x0
006c4efe  e9a1000000                JMP 0x006c4fa4
006c4f03  c78580fdffff9c76b600      MOV dword ptr [EBP + 0xfffffd80],0xb6769c
006c4f0d  be01000000                MOV ESI,0x1
006c4f12  80bfe10d000000            CMP byte ptr [EDI + 0xde1],0x0
006c4f19  8d8fd80c0000              LEA ECX,[EDI + 0xcd8]
006c4f1f  753a                      JNZ 0x006c4f5b
006c4f21  685c76b600                PUSH 0xb6765c
006c4f26  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c4f29  e81274d4ff                CALL 0x0040c340
006c4f2e  6a01                      PUSH 0x1
006c4f30  8d45d4                    LEA EAX,[EBP + -0x2c]
006c4f33  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006c4f3a  50                        PUSH EAX
006c4f3b  8d8fd80c0000              LEA ECX,[EDI + 0xcd8]
006c4f41  e80a6ed4ff                CALL 0x0040bd50
006c4f46  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c4f49  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c4f50  e8eb80d4ff                CALL 0x0040d040
006c4f55  8d8fd80c0000              LEA ECX,[EDI + 0xcd8]
006c4f5b  68eca4b100                PUSH 0xb1a4ec
006c4f60  e86b55d4ff                CALL 0x0040a4d0
006c4f65  84c0                      TEST AL,AL
006c4f67  741f                      JZ 0x006c4f88
006c4f69  80bfe10d000000            CMP byte ptr [EDI + 0xde1],0x0
006c4f70  7416                      JZ 0x006c4f88
006c4f72  8d8f080d0000              LEA ECX,[EDI + 0xd08]
006c4f78  e8b340d4ff                CALL 0x00409030
006c4f7d  8d8f280d0000              LEA ECX,[EDI + 0xd28]
006c4f83  e8a840d4ff                CALL 0x00409030
006c4f88  6a00                      PUSH 0x0
006c4f8a  ffb580fdffff              PUSH dword ptr [EBP + 0xfffffd80]
006c4f90  8d8fd80c0000              LEA ECX,[EDI + 0xcd8]
006c4f96  e8e553d4ff                CALL 0x0040a380
006c4f9b  c1e61f                    SHL ESI,0x1f
006c4f9e  89b7e80d0000              MOV dword ptr [EDI + 0xde8],ESI
006c4fa4  8b971c030000              MOV EDX,dword ptr [EDI + 0x31c]
006c4faa  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
006c4fb2  85d2                      TEST EDX,EDX
006c4fb4  7523                      JNZ 0x006c4fd9
006c4fb6  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006c4fbc  33c0                      XOR EAX,EAX
006c4fbe  81e100000002              AND ECX,0x2000000
006c4fc4  0bc1                      OR EAX,ECX
006c4fc6  7511                      JNZ 0x006c4fd9
006c4fc8  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
006c4fce  88853ffdffff              MOV byte ptr [EBP + 0xfffffd3f],AL
006c4fd4  e981010000                JMP 0x006c515a
006c4fd9  f30f108714030000          MOVSS XMM0,dword ptr [EDI + 0x314]
006c4fe1  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
006c4fe8  9f                        LAHF
006c4fe9  f6c444                    TEST AH,0x44
006c4fec  7a33                      JP 0x006c5021
006c4fee  f30f108718030000          MOVSS XMM0,dword ptr [EDI + 0x318]
006c4ff6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
006c4ffd  9f                        LAHF
006c4ffe  f6c444                    TEST AH,0x44
006c5001  7a1e                      JP 0x006c5021
006c5003  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
006c5009  898714030000              MOV dword ptr [EDI + 0x314],EAX
006c500f  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
006c5015  898718030000              MOV dword ptr [EDI + 0x318],EAX
006c501b  8b971c030000              MOV EDX,dword ptr [EDI + 0x31c]
006c5021  85d2                      TEST EDX,EDX
006c5023  7e23                      JLE 0x006c5048
006c5025  4a                        DEC EDX
006c5026  89971c030000              MOV dword ptr [EDI + 0x31c],EDX
006c502c  85d2                      TEST EDX,EDX
006c502e  7e18                      JLE 0x006c5048
006c5030  8b8714030000              MOV EAX,dword ptr [EDI + 0x314]
006c5036  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
006c503c  8b8718030000              MOV EAX,dword ptr [EDI + 0x318]
006c5042  898740030000              MOV dword ptr [EDI + 0x340],EAX
006c5048  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006c5050  8bcf                      MOV ECX,EDI
006c5052  f30f59c1                  MULSS XMM0,XMM1
006c5056  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006c505e  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006c5066  f30f59c1                  MULSS XMM0,XMM1
006c506a  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006c5072  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
006c5078  88858ffdffff              MOV byte ptr [EBP + 0xfffffd8f],AL
006c507e  e88d1f0100                CALL 0x006d7010
006c5083  8bcf                      MOV ECX,EDI
006c5085  e8a6210100                CALL 0x006d7230
006c508a  f687180f000001            TEST byte ptr [EDI + 0xf18],0x1
006c5091  741b                      JZ 0x006c50ae
006c5093  8bcf                      MOV ECX,EDI
006c5095  c787740b000001000000      MOV dword ptr [EDI + 0xb74],0x1
006c509f  e8ecd8ffff                CALL 0x006c2990
006c50a4  c787740b000000000000      MOV dword ptr [EDI + 0xb74],0x0
006c50ae  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006c50b4  33c0                      XOR EAX,EAX
006c50b6  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006c50be  8bca                      MOV ECX,EDX
006c50c0  83e101                    AND ECX,0x1
006c50c3  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c50cb  0bc1                      OR EAX,ECX
006c50cd  8bcf                      MOV ECX,EDI
006c50cf  7407                      JZ 0x006c50d8
006c50d1  e84a97feff                CALL 0x006ae820
006c50d6  eb23                      JMP 0x006c50fb
006c50d8  83b76801000000            XOR dword ptr [EDI + 0x168],0x0
006c50df  83f201                    XOR EDX,0x1
006c50e2  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
006c50e8  e83397feff                CALL 0x006ae820
006c50ed  83b76801000000            XOR dword ptr [EDI + 0x168],0x0
006c50f4  83b76c01000001            XOR dword ptr [EDI + 0x16c],0x1
006c50fb  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
006c5103  8d9588fdffff              LEA EDX,[EBP + 0xfffffd88]
006c5109  f30f5c8780030000          SUBSS XMM0,dword ptr [EDI + 0x380]
006c5111  8d8d64fdffff              LEA ECX,[EBP + 0xfffffd64]
006c5117  c78564fdffff00000000      MOV dword ptr [EBP + 0xfffffd64],0x0
006c5121  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c5129  e8427ad5ff                CALL 0x0041cb70
006c512e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006c5132  f30f58875c0c0000          ADDSS XMM0,dword ptr [EDI + 0xc5c]
006c513a  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
006c5140  88853ffdffff              MOV byte ptr [EBP + 0xfffffd3f],AL
006c5146  f30f11875c0c0000          MOVSS dword ptr [EDI + 0xc5c],XMM0
006c514e  38858ffdffff              CMP byte ptr [EBP + 0xfffffd8f],AL
006c5154  0f8415570000              JZ 0x006ca86f
006c515a  6a00                      PUSH 0x0
006c515c  6a04                      PUSH 0x4
006c515e  8bcf                      MOV ECX,EDI
006c5160  e8cb22d5ff                CALL 0x00417430
006c5165  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
006c516b  ba01000000                MOV EDX,0x1
006c5170  84c0                      TEST AL,AL
006c5172  7519                      JNZ 0x006c518d
006c5174  3bca                      CMP ECX,EDX
006c5176  0f856d070000              JNZ 0x006c58e9
006c517c  8b87680b0000              MOV EAX,dword ptr [EDI + 0xb68]
006c5182  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
006c5188  e93a170000                JMP 0x006c68c7
006c518d  83f901                    CMP ECX,0x1
006c5190  0f8553070000              JNZ 0x006c58e9
006c5196  8b87700b0000              MOV EAX,dword ptr [EDI + 0xb70]
006c519c  85c0                      TEST EAX,EAX
006c519e  0f8553020000              JNZ 0x006c53f7
006c51a4  83bf640c000006            CMP dword ptr [EDI + 0xc64],0x6
006c51ab  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
006c51b1  750f                      JNZ 0x006c51c2
006c51b3  50                        PUSH EAX
006c51b4  51                        PUSH ECX
006c51b5  8bcf                      MOV ECX,EDI
006c51b7  8897b0030000              MOV byte ptr [EDI + 0x3b0],DL
006c51bd  e81e22d5ff                CALL 0x004173e0
006c51c2  8bcf                      MOV ECX,EDI
006c51c4  e8c7d7ffff                CALL 0x006c2990
006c51c9  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c51cf  83f811                    CMP EAX,0x11
006c51d2  7405                      JZ 0x006c51d9
006c51d4  83f819                    CMP EAX,0x19
006c51d7  752c                      JNZ 0x006c5205
006c51d9  e8829d0200                CALL 0x006eef60
006c51de  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c51e4  50                        PUSH EAX
006c51e5  6a00                      PUSH 0x0
006c51e7  57                        PUSH EDI
006c51e8  6840b6c700                PUSH 0xc7b640
006c51ed  8d873c030000              LEA EAX,[EDI + 0x33c]
006c51f3  50                        PUSH EAX
006c51f4  6a00                      PUSH 0x0
006c51f6  6a60                      PUSH 0x60
006c51f8  e82339d6ff                CALL 0x00428b20
006c51fd  57                        PUSH EDI
006c51fe  8bc8                      MOV ECX,EAX
006c5200  e89b40feff                CALL 0x006a92a0
006c5205  6a00                      PUSH 0x0
006c5207  6a04                      PUSH 0x4
006c5209  8bcf                      MOV ECX,EDI
006c520b  e82022d5ff                CALL 0x00417430
006c5210  84c0                      TEST AL,AL
006c5212  741d                      JZ 0x006c5231
006c5214  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006c521a  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
006c5221  8987680b0000              MOV dword ptr [EDI + 0xb68],EAX
006c5227  c787640b000001000000      MOV dword ptr [EDI + 0xb64],0x1
006c5231  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5237  e82426d5ff                CALL 0x00417860
006c523c  6a35                      PUSH 0x35
006c523e  8bc8                      MOV ECX,EAX
006c5240  e86b6dd8ff                CALL 0x0044bfb0
006c5245  84c0                      TEST AL,AL
006c5247  746d                      JZ 0x006c52b6
006c5249  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c524c  3d12010000                CMP EAX,0x112
006c5251  7463                      JZ 0x006c52b6
006c5253  3d13010000                CMP EAX,0x113
006c5258  745c                      JZ 0x006c52b6
006c525a  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006c5262  0f2f0550a9ba00            COMISS XMM0,dword ptr [0x00baa950]
006c5269  764b                      JBE 0x006c52b6
006c526b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5271  33f6                      XOR ESI,ESI
006c5273  e8e825d5ff                CALL 0x00417860
006c5278  6a35                      PUSH 0x35
006c527a  8bc8                      MOV ECX,EAX
006c527c  e8ff972f00                CALL 0x009bea80
006c5281  85c0                      TEST EAX,EAX
006c5283  7e31                      JLE 0x006c52b6
006c5285  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006c528d  46                        INC ESI
006c528e  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
006c5296  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c529c  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
006c52a4  e8b725d5ff                CALL 0x00417860
006c52a9  6a35                      PUSH 0x35
006c52ab  8bc8                      MOV ECX,EAX
006c52ad  e8ce972f00                CALL 0x009bea80
006c52b2  3bf0                      CMP ESI,EAX
006c52b4  7ccf                      JL 0x006c5285
006c52b6  8d4f48                    LEA ECX,[EDI + 0x48]
006c52b9  33f6                      XOR ESI,ESI
006c52bb  e880bbd7ff                CALL 0x00440e40
006c52c0  85c0                      TEST EAX,EAX
006c52c2  0f84f9000000              JZ 0x006c53c1
006c52c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
006c52d0  56                        PUSH ESI
006c52d1  8d4f48                    LEA ECX,[EDI + 0x48]
006c52d4  e8275fd4ff                CALL 0x0040b200
006c52d9  8d4dac                    LEA ECX,[EBP + -0x54]
006c52dc  898588fdffff              MOV dword ptr [EBP + 0xfffffd88],EAX
006c52e2  51                        PUSH ECX
006c52e3  8bc8                      MOV ECX,EAX
006c52e5  e83620d4ff                CALL 0x00407320
006c52ea  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
006c52f1  ba2844b600                MOV EDX,0xb64428
006c52f6  8b8d84fdffff              MOV ECX,dword ptr [EBP + 0xfffffd84]
006c52fc  83c901                    OR ECX,0x1
006c52ff  898d84fdffff              MOV dword ptr [EBP + 0xfffffd84],ECX
006c5305  898d6cfdffff              MOV dword ptr [EBP + 0xfffffd6c],ECX
006c530b  8bc8                      MOV ECX,EAX
006c530d  e89e0ed9ff                CALL 0x004561b0
006c5312  84c0                      TEST AL,AL
006c5314  7542                      JNZ 0x006c5358
006c5316  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
006c531c  8d45d4                    LEA EAX,[EBP + -0x2c]
006c531f  50                        PUSH EAX
006c5320  e8fb1fd4ff                CALL 0x00407320
006c5325  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
006c532c  ba7cd5b100                MOV EDX,0xb1d57c
006c5331  8b8d84fdffff              MOV ECX,dword ptr [EBP + 0xfffffd84]
006c5337  83c902                    OR ECX,0x2
006c533a  898d84fdffff              MOV dword ptr [EBP + 0xfffffd84],ECX
006c5340  898d6cfdffff              MOV dword ptr [EBP + 0xfffffd6c],ECX
006c5346  8bc8                      MOV ECX,EAX
006c5348  e8630ed9ff                CALL 0x004561b0
006c534d  c6858ffdffff00            MOV byte ptr [EBP + 0xfffffd8f],0x0
006c5354  84c0                      TEST AL,AL
006c5356  7407                      JZ 0x006c535f
006c5358  c6858ffdffff01            MOV byte ptr [EBP + 0xfffffd8f],0x1
006c535f  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
006c5365  a802                      TEST AL,0x2
006c5367  7417                      JZ 0x006c5380
006c5369  83e0fd                    AND EAX,0xfffffffd
006c536c  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c536f  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
006c5375  e8a66bd4ff                CALL 0x0040bf20
006c537a  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
006c5380  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c5387  a801                      TEST AL,0x1
006c5389  7411                      JZ 0x006c539c
006c538b  83e0fe                    AND EAX,0xfffffffe
006c538e  8d4dac                    LEA ECX,[EBP + -0x54]
006c5391  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
006c5397  e8846bd4ff                CALL 0x0040bf20
006c539c  80bd8ffdffff00            CMP byte ptr [EBP + 0xfffffd8f],0x0
006c53a3  7513                      JNZ 0x006c53b8
006c53a5  8d4f48                    LEA ECX,[EDI + 0x48]
006c53a8  46                        INC ESI
006c53a9  e892bad7ff                CALL 0x00440e40
006c53ae  3bf0                      CMP ESI,EAX
006c53b0  0f821affffff              JC 0x006c52d0
006c53b6  eb09                      JMP 0x006c53c1
006c53b8  6a01                      PUSH 0x1
006c53ba  8bcf                      MOV ECX,EDI
006c53bc  e8efb0ffff                CALL 0x006c04b0
006c53c1  8b07                      MOV EAX,dword ptr [EDI]
006c53c3  8bcf                      MOV ECX,EDI
006c53c5  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006c53c8  ffd0                      CALL EAX
006c53ca  84c0                      TEST AL,AL
006c53cc  0f843d030000              JZ 0x006c570f
006c53d2  8bcf                      MOV ECX,EDI
006c53d4  e8874ed6ff                CALL 0x0042a260
006c53d9  85c0                      TEST EAX,EAX
006c53db  0f852e030000              JNZ 0x006c570f
006c53e1  ff772c                    PUSH dword ptr [EDI + 0x2c]
006c53e4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c53ea  ff7728                    PUSH dword ptr [EDI + 0x28]
006c53ed  e87ee00300                CALL 0x00703470
006c53f2  e918030000                JMP 0x006c570f
006c53f7  83f801                    CMP EAX,0x1
006c53fa  0f85e4010000              JNZ 0x006c55e4
006c5400  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
006c5408  be02000000                MOV ESI,0x2
006c540d  f30f10053ca8ba00          MOVSS XMM0,dword ptr [0x00baa83c]
006c5415  0f2fc1                    COMISS XMM0,XMM1
006c5418  0f47f2                    CMOVA ESI,EDX
006c541b  0f2f0d68a8ba00            COMISS XMM1,dword ptr [0x00baa868]
006c5422  7311                      JNC 0x006c5435
006c5424  f30f10875c010000          MOVSS XMM0,dword ptr [EDI + 0x15c]
006c542c  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
006c5433  7605                      JBE 0x006c543a
006c5435  be03000000                MOV ESI,0x3
006c543a  e8219b0200                CALL 0x006eef60
006c543f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5445  6a00                      PUSH 0x0
006c5447  68acd5c500                PUSH 0xc5d5ac
006c544c  68dcd5c500                PUSH 0xc5d5dc
006c5451  6a00                      PUSH 0x0
006c5453  50                        PUSH EAX
006c5454  56                        PUSH ESI
006c5455  57                        PUSH EDI
006c5456  6840b6c700                PUSH 0xc7b640
006c545b  8d873c030000              LEA EAX,[EDI + 0x33c]
006c5461  50                        PUSH EAX
006c5462  6a0f                      PUSH 0xf
006c5464  68e8030000                PUSH 0x3e8
006c5469  e8b236d6ff                CALL 0x00428b20
006c546e  50                        PUSH EAX
006c546f  e83db44200                CALL 0x00af08b1
006c5474  83c414                    ADD ESP,0x14
006c5477  8d8f4c030000              LEA ECX,[EDI + 0x34c]
006c547d  8bf0                      MOV ESI,EAX
006c547f  89b588fdffff              MOV dword ptr [EBP + 0xfffffd88],ESI
006c5485  51                        PUSH ECX
006c5486  8bce                      MOV ECX,ESI
006c5488  e8631ed5ff                CALL 0x004172f0
006c548d  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
006c5495  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
006c549d  51                        PUSH ECX
006c549e  8bce                      MOV ECX,ESI
006c54a0  f30f110424                MOVSS dword ptr [ESP],XMM0
006c54a5  e84608d7ff                CALL 0x00435cf0
006c54aa  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
006c54b1  7439                      JZ 0x006c54ec
006c54b3  8b8f640c0000              MOV ECX,dword ptr [EDI + 0xc64]
006c54b9  83f919                    CMP ECX,0x19
006c54bc  772e                      JA 0x006c54ec
006c54be  8b06                      MOV EAX,dword ptr [ESI]
006c54c0  c1e106                    SHL ECX,0x6
006c54c3  81c1c054c300              ADD ECX,0xc354c0
006c54c9  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c54cc  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
006c54d2  50                        PUSH EAX
006c54d3  e8a806e4ff                CALL 0x00505b80
006c54d8  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
006c54de  6a01                      PUSH 0x1
006c54e0  6a00                      PUSH 0x0
006c54e2  68ff000000                PUSH 0xff
006c54e7  6aff                      PUSH -0x1
006c54e9  50                        PUSH EAX
006c54ea  ffd6                      CALL ESI
006c54ec  8bcf                      MOV ECX,EDI
006c54ee  be1e010000                MOV ESI,0x11e
006c54f3  e8982fffff                CALL 0x006b8490
006c54f8  84c0                      TEST AL,AL
006c54fa  b968030000                MOV ECX,0x368
006c54ff  0f45f1                    CMOVNZ ESI,ECX
006c5502  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c5508  e8e3b5d5ff                CALL 0x00420af0
006c550d  56                        PUSH ESI
006c550e  8bc8                      MOV ECX,EAX
006c5510  e81b8d2600                CALL 0x0092e230
006c5515  51                        PUSH ECX
006c5516  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c551d  6a00                      PUSH 0x0
006c551f  6a02                      PUSH 0x2
006c5521  51                        PUSH ECX
006c5522  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5529  8bcf                      MOV ECX,EDI
006c552b  56                        PUSH ESI
006c552c  e86f160100                CALL 0x006d6ba0
006c5531  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c5534  3d91010000                CMP EAX,0x191
006c5539  7546                      JNZ 0x006c5581
006c553b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c5543  51                        PUSH ECX
006c5544  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c554a  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5551  6a00                      PUSH 0x0
006c5553  6a02                      PUSH 0x2
006c5555  6a40                      PUSH 0x40
006c5557  e884132900                CALL 0x009568e0
006c555c  51                        PUSH ECX
006c555d  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5564  6a00                      PUSH 0x0
006c5566  6a02                      PUSH 0x2
006c5568  51                        PUSH ECX
006c5569  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5570  8bcf                      MOV ECX,EDI
006c5572  68a3010000                PUSH 0x1a3
006c5577  e824160100                CALL 0x006d6ba0
006c557c  e98e010000                JMP 0x006c570f
006c5581  3d93010000                CMP EAX,0x193
006c5586  7525                      JNZ 0x006c55ad
006c5588  51                        PUSH ECX
006c5589  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5590  6a00                      PUSH 0x0
006c5592  6a02                      PUSH 0x2
006c5594  51                        PUSH ECX
006c5595  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c559c  8bcf                      MOV ECX,EDI
006c559e  68a1010000                PUSH 0x1a1
006c55a3  e8f8150100                CALL 0x006d6ba0
006c55a8  e962010000                JMP 0x006c570f
006c55ad  3d9b010000                CMP EAX,0x19b
006c55b2  0f8557010000              JNZ 0x006c570f
006c55b8  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
006c55bc  0f854d010000              JNZ 0x006c570f
006c55c2  51                        PUSH ECX
006c55c3  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c55ca  6a00                      PUSH 0x0
006c55cc  6a02                      PUSH 0x2
006c55ce  51                        PUSH ECX
006c55cf  c7042400000040            MOV dword ptr [ESP],0x40000000
006c55d6  8bcf                      MOV ECX,EDI
006c55d8  6a0e                      PUSH 0xe
006c55da  e8c1150100                CALL 0x006d6ba0
006c55df  e92b010000                JMP 0x006c570f
006c55e4  83f804                    CMP EAX,0x4
006c55e7  7546                      JNZ 0x006c562f
006c55e9  837f283e                  CMP dword ptr [EDI + 0x28],0x3e
006c55ed  7406                      JZ 0x006c55f5
006c55ef  889771010000              MOV byte ptr [EDI + 0x171],DL
006c55f5  6898d5b100                PUSH 0xb1d598
006c55fa  8d4f48                    LEA ECX,[EDI + 0x48]
006c55fd  e8ce66d4ff                CALL 0x0040bcd0
006c5602  85c0                      TEST EAX,EAX
006c5604  0f8405010000              JZ 0x006c570f
006c560a  817f280a010000            CMP dword ptr [EDI + 0x28],0x10a
006c5611  7408                      JZ 0x006c561b
006c5613  8d4f48                    LEA ECX,[EDI + 0x48]
006c5616  e84556d4ff                CALL 0x0040ac60
006c561b  6a01                      PUSH 0x1
006c561d  6898d5b100                PUSH 0xb1d598
006c5622  8d4f48                    LEA ECX,[EDI + 0x48]
006c5625  e8564dd4ff                CALL 0x0040a380
006c562a  e9e0000000                JMP 0x006c570f
006c562f  83f814                    CMP EAX,0x14
006c5632  7c76                      JL 0x006c56aa
006c5634  6898d5b100                PUSH 0xb1d598
006c5639  8d4f48                    LEA ECX,[EDI + 0x48]
006c563c  e80f4fd4ff                CALL 0x0040a550
006c5641  84c0                      TEST AL,AL
006c5643  755c                      JNZ 0x006c56a1
006c5645  6898d5b100                PUSH 0xb1d598
006c564a  8d4f48                    LEA ECX,[EDI + 0x48]
006c564d  e87e66d4ff                CALL 0x0040bcd0
006c5652  85c0                      TEST EAX,EAX
006c5654  744b                      JZ 0x006c56a1
006c5656  6898d5b100                PUSH 0xb1d598
006c565b  8d4dac                    LEA ECX,[EBP + -0x54]
006c565e  e8dd6cd4ff                CALL 0x0040c340
006c5663  8bf0                      MOV ESI,EAX
006c5665  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
006c566c  8d4f48                    LEA ECX,[EDI + 0x48]
006c566f  c7856cfdffff04000000      MOV dword ptr [EBP + 0xfffffd6c],0x4
006c5679  e8e28dd5ff                CALL 0x0041e460
006c567e  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c5681  51                        PUSH ECX
006c5682  8bc8                      MOV ECX,EAX
006c5684  e867d5d8ff                CALL 0x00452bf0
006c5689  b90c000000                MOV ECX,0xc
006c568e  8bd6                      MOV EDX,ESI
006c5690  898d84fdffff              MOV dword ptr [EBP + 0xfffffd84],ECX
006c5696  8bc8                      MOV ECX,EAX
006c5698  e82371d4ff                CALL 0x0040c7c0
006c569d  84c0                      TEST AL,AL
006c569f  7409                      JZ 0x006c56aa
006c56a1  c6858ffdffff01            MOV byte ptr [EBP + 0xfffffd8f],0x1
006c56a8  eb07                      JMP 0x006c56b1
006c56aa  c6858ffdffff00            MOV byte ptr [EBP + 0xfffffd8f],0x0
006c56b1  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
006c56b7  a808                      TEST AL,0x8
006c56b9  7417                      JZ 0x006c56d2
006c56bb  83e0f7                    AND EAX,0xfffffff7
006c56be  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c56c1  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
006c56c7  e85468d4ff                CALL 0x0040bf20
006c56cc  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
006c56d2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c56d9  a804                      TEST AL,0x4
006c56db  7411                      JZ 0x006c56ee
006c56dd  83e0fb                    AND EAX,0xfffffffb
006c56e0  8d4dac                    LEA ECX,[EBP + -0x54]
006c56e3  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
006c56e9  e83268d4ff                CALL 0x0040bf20
006c56ee  80bd8ffdffff00            CMP byte ptr [EBP + 0xfffffd8f],0x0
006c56f5  7418                      JZ 0x006c570f
006c56f7  8b87680b0000              MOV EAX,dword ptr [EDI + 0xb68]
006c56fd  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
006c5703  8b8768030000              MOV EAX,dword ptr [EDI + 0x368]
006c5709  89876c030000              MOV dword ptr [EDI + 0x36c],EAX
006c570f  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c5712  3d91030000                CMP EAX,0x391
006c5717  7539                      JNZ 0x006c5752
006c5719  68dcd2b100                PUSH 0xb1d2dc
006c571e  8d4f48                    LEA ECX,[EDI + 0x48]
006c5721  e80a59d4ff                CALL 0x0040b030
006c5726  84c0                      TEST AL,AL
006c5728  7425                      JZ 0x006c574f
006c572a  51                        PUSH ECX
006c572b  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5732  6a00                      PUSH 0x0
006c5734  6a02                      PUSH 0x2
006c5736  51                        PUSH ECX
006c5737  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c573e  8bcf                      MOV ECX,EDI
006c5740  68e3010000                PUSH 0x1e3
006c5745  e856140100                CALL 0x006d6ba0
006c574a  e96e010000                JMP 0x006c58bd
006c574f  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c5752  3d90030000                CMP EAX,0x390
006c5757  7553                      JNZ 0x006c57ac
006c5759  837f2c14                  CMP dword ptr [EDI + 0x2c],0x14
006c575d  754d                      JNZ 0x006c57ac
006c575f  68dcd2b100                PUSH 0xb1d2dc
006c5764  8d4f48                    LEA ECX,[EDI + 0x48]
006c5767  e8c458d4ff                CALL 0x0040b030
006c576c  84c0                      TEST AL,AL
006c576e  743c                      JZ 0x006c57ac
006c5770  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006c5776  e8f519d4ff                CALL 0x00407170
006c577b  6800000200                PUSH 0x20000
006c5780  51                        PUSH ECX
006c5781  c704240050c347            MOV dword ptr [ESP],0x47c35000
006c5788  50                        PUSH EAX
006c5789  51                        PUSH ECX
006c578a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5790  8d873c030000              LEA EAX,[EDI + 0x33c]
006c5796  c704240000c040            MOV dword ptr [ESP],0x40c00000
006c579d  6a05                      PUSH 0x5
006c579f  6a04                      PUSH 0x4
006c57a1  50                        PUSH EAX
006c57a2  e889db0300                CALL 0x00703330
006c57a7  e911010000                JMP 0x006c58bd
006c57ac  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c57af  3d95030000                CMP EAX,0x395
006c57b4  0f8592000000              JNZ 0x006c584c
006c57ba  6874d5b100                PUSH 0xb1d574
006c57bf  8d4f48                    LEA ECX,[EDI + 0x48]
006c57c2  e86958d4ff                CALL 0x0040b030
006c57c7  84c0                      TEST AL,AL
006c57c9  747e                      JZ 0x006c5849
006c57cb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c57d1  6a08                      PUSH 0x8
006c57d3  e898de0300                CALL 0x00703670
006c57d8  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c57e0  8d87e4010000              LEA EAX,[EDI + 0x1e4]
006c57e6  50                        PUSH EAX
006c57e7  8bcf                      MOV ECX,EDI
006c57e9  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
006c57f3  e81810ffff                CALL 0x006b6810
006c57f8  f30f101550a9ba00          MOVSS XMM2,dword ptr [0x00baa950]
006c5800  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c5806  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
006c580e  e87da63400                CALL 0x00a0fe90
006c5813  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006c581b  8bcf                      MOV ECX,EDI
006c581d  50                        PUSH EAX
006c581e  8d873c030000              LEA EAX,[EDI + 0x33c]
006c5824  50                        PUSH EAX
006c5825  e89610ffff                CALL 0x006b68c0
006c582a  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c5832  51                        PUSH ECX
006c5833  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c583a  8bcf                      MOV ECX,EDI
006c583c  6a00                      PUSH 0x0
006c583e  6a02                      PUSH 0x2
006c5840  6a30                      PUSH 0x30
006c5842  e8290cffff                CALL 0x006b6470
006c5847  eb74                      JMP 0x006c58bd
006c5849  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c584c  3d94010000                CMP EAX,0x194
006c5851  756a                      JNZ 0x006c58bd
006c5853  6840dab100                PUSH 0xb1da40
006c5858  8d4f48                    LEA ECX,[EDI + 0x48]
006c585b  e8d057d4ff                CALL 0x0040b030
006c5860  84c0                      TEST AL,AL
006c5862  7424                      JZ 0x006c5888
006c5864  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c586c  51                        PUSH ECX
006c586d  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c5873  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c587a  6a00                      PUSH 0x0
006c587c  6a02                      PUSH 0x2
006c587e  68b3030000                PUSH 0x3b3
006c5883  e858102900                CALL 0x009568e0
006c5888  681cdab100                PUSH 0xb1da1c
006c588d  8d4f48                    LEA ECX,[EDI + 0x48]
006c5890  e89b57d4ff                CALL 0x0040b030
006c5895  84c0                      TEST AL,AL
006c5897  7424                      JZ 0x006c58bd
006c5899  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c58a1  51                        PUSH ECX
006c58a2  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c58a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c58af  6a00                      PUSH 0x0
006c58b1  6a02                      PUSH 0x2
006c58b3  68b4030000                PUSH 0x3b4
006c58b8  e823102900                CALL 0x009568e0
006c58bd  83bf640b000001            CMP dword ptr [EDI + 0xb64],0x1
006c58c4  7518                      JNZ 0x006c58de
006c58c6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006c58ce  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
006c58d6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c58de  ff87700b0000              INC dword ptr [EDI + 0xb70]
006c58e4  e9de0f0000                JMP 0x006c68c7
006c58e9  83f912                    CMP ECX,0x12
006c58ec  7409                      JZ 0x006c58f7
006c58ee  83f911                    CMP ECX,0x11
006c58f1  0f85d00f0000              JNZ 0x006c68c7
006c58f7  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
006c58fe  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006c5906  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
006c590e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c5916  0f8522030000              JNZ 0x006c5c3e
006c591c  83f911                    CMP ECX,0x11
006c591f  0f859c000000              JNZ 0x006c59c1
006c5925  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c5928  3dd9000000                CMP EAX,0xd9
006c592d  744d                      JZ 0x006c597c
006c592f  3ddc000000                CMP EAX,0xdc
006c5934  7446                      JZ 0x006c597c
006c5936  3ddf000000                CMP EAX,0xdf
006c593b  743f                      JZ 0x006c597c
006c593d  3d05010000                CMP EAX,0x105
006c5942  7438                      JZ 0x006c597c
006c5944  3d92010000                CMP EAX,0x192
006c5949  7431                      JZ 0x006c597c
006c594b  3d66030000                CMP EAX,0x366
006c5950  742a                      JZ 0x006c597c
006c5952  3d67030000                CMP EAX,0x367
006c5957  7423                      JZ 0x006c597c
006c5959  3d92030000                CMP EAX,0x392
006c595e  741c                      JZ 0x006c597c
006c5960  3d68030000                CMP EAX,0x368
006c5965  7415                      JZ 0x006c597c
006c5967  3ded000000                CMP EAX,0xed
006c596c  0f85cc020000              JNZ 0x006c5c3e
006c5972  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
006c5976  0f85c2020000              JNZ 0x006c5c3e
006c597c  8d7748                    LEA ESI,[EDI + 0x48]
006c597f  687476b600                PUSH 0xb67674
006c5984  8bce                      MOV ECX,ESI
006c5986  89b570fdffff              MOV dword ptr [EBP + 0xfffffd70],ESI
006c598c  e83f63d4ff                CALL 0x0040bcd0
006c5991  85c0                      TEST EAX,EAX
006c5993  7420                      JZ 0x006c59b5
006c5995  6a00                      PUSH 0x0
006c5997  687476b600                PUSH 0xb67674
006c599c  8bce                      MOV ECX,ESI
006c599e  e8dd49d4ff                CALL 0x0040a380
006c59a3  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
006c59a9  c7875403000088130000      MOV dword ptr [EDI + 0x354],0x1388
006c59b3  eb0f                      JMP 0x006c59c4
006c59b5  c787640b000012000000      MOV dword ptr [EDI + 0xb64],0x12
006c59bf  eb12                      JMP 0x006c59d3
006c59c1  8d7748                    LEA ESI,[EDI + 0x48]
006c59c4  89b570fdffff              MOV dword ptr [EBP + 0xfffffd70],ESI
006c59ca  83f912                    CMP ECX,0x12
006c59cd  0f856b020000              JNZ 0x006c5c3e
006c59d3  683ce1b100                PUSH 0xb1e13c
006c59d8  8bce                      MOV ECX,ESI
006c59da  e8f162d4ff                CALL 0x0040bcd0
006c59df  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
006c59e2  85c0                      TEST EAX,EAX
006c59e4  0f845f010000              JZ 0x006c5b49
006c59ea  81f99b010000              CMP ECX,0x19b
006c59f0  0f85e7000000              JNZ 0x006c5add
006c59f6  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c59f9  83f801                    CMP EAX,0x1
006c59fc  7572                      JNZ 0x006c5a70
006c59fe  687c76b600                PUSH 0xb6767c
006c5a03  8bce                      MOV ECX,ESI
006c5a05  e8265ad4ff                CALL 0x0040b430
006c5a0a  898588fdffff              MOV dword ptr [EBP + 0xfffffd88],EAX
006c5a10  85c0                      TEST EAX,EAX
006c5a12  743e                      JZ 0x006c5a52
006c5a14  8bce                      MOV ECX,ESI
006c5a16  e8458ad5ff                CALL 0x0041e460
006c5a1b  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
006c5a21  8bf0                      MOV ESI,EAX
006c5a23  e8b8d1d8ff                CALL 0x00452be0
006c5a28  50                        PUSH EAX
006c5a29  8bce                      MOV ECX,ESI
006c5a2b  e8f047d4ff                CALL 0x0040a220
006c5a30  85c0                      TEST EAX,EAX
006c5a32  7424                      JZ 0x006c5a58
006c5a34  80782c00                  CMP byte ptr [EAX + 0x2c],0x0
006c5a38  741e                      JZ 0x006c5a58
006c5a3a  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c5a40  b88476b600                MOV EAX,0xb67684
006c5a45  6a00                      PUSH 0x0
006c5a47  50                        PUSH EAX
006c5a48  e83349d4ff                CALL 0x0040a380
006c5a4d  e9ec010000                JMP 0x006c5c3e
006c5a52  89b570fdffff              MOV dword ptr [EBP + 0xfffffd70],ESI
006c5a58  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c5a5e  b8e4d6b100                MOV EAX,0xb1d6e4
006c5a63  6a00                      PUSH 0x0
006c5a65  50                        PUSH EAX
006c5a66  e81549d4ff                CALL 0x0040a380
006c5a6b  e9ce010000                JMP 0x006c5c3e
006c5a70  83f802                    CMP EAX,0x2
006c5a73  750e                      JNZ 0x006c5a83
006c5a75  6a00                      PUSH 0x0
006c5a77  8bcf                      MOV ECX,EDI
006c5a79  e81265d8ff                CALL 0x0044bf90
006c5a7e  e9bb010000                JMP 0x006c5c3e
006c5a83  8bce                      MOV ECX,ESI
006c5a85  e8d689d5ff                CALL 0x0041e460
006c5a8a  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c5a8d  51                        PUSH ECX
006c5a8e  8bc8                      MOV ECX,EAX
006c5a90  e85bd1d8ff                CALL 0x00452bf0
006c5a95  baa0d5b100                MOV EDX,0xb1d5a0
006c5a9a  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
006c5aa1  8bc8                      MOV ECX,EAX
006c5aa3  e8f829e3ff                CALL 0x004f84a0
006c5aa8  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c5aab  88858ffdffff              MOV byte ptr [EBP + 0xfffffd8f],AL
006c5ab1  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c5ab8  e86364d4ff                CALL 0x0040bf20
006c5abd  80bd8ffdffff00            CMP byte ptr [EBP + 0xfffffd8f],0x0
006c5ac4  0f8474010000              JZ 0x006c5c3e
006c5aca  6a00                      PUSH 0x0
006c5acc  683ce1b100                PUSH 0xb1e13c
006c5ad1  8bce                      MOV ECX,ESI
006c5ad3  e8a848d4ff                CALL 0x0040a380
006c5ad8  e961010000                JMP 0x006c5c3e
006c5add  81f995010000              CMP ECX,0x195
006c5ae3  7551                      JNZ 0x006c5b36
006c5ae5  68d4feb500                PUSH 0xb5fed4
006c5aea  8bce                      MOV ECX,ESI
006c5aec  e83f59d4ff                CALL 0x0040b430
006c5af1  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
006c5af7  85c0                      TEST EAX,EAX
006c5af9  743b                      JZ 0x006c5b36
006c5afb  8bce                      MOV ECX,ESI
006c5afd  e85e89d5ff                CALL 0x0041e460
006c5b02  8b8d74fdffff              MOV ECX,dword ptr [EBP + 0xfffffd74]
006c5b08  8bf0                      MOV ESI,EAX
006c5b0a  e8d1d0d8ff                CALL 0x00452be0
006c5b0f  50                        PUSH EAX
006c5b10  8bce                      MOV ECX,ESI
006c5b12  e80947d4ff                CALL 0x0040a220
006c5b17  85c0                      TEST EAX,EAX
006c5b19  740a                      JZ 0x006c5b25
006c5b1b  80782c00                  CMP byte ptr [EAX + 0x2c],0x0
006c5b1f  7404                      JZ 0x006c5b25
006c5b21  b101                      MOV CL,0x1
006c5b23  eb02                      JMP 0x006c5b27
006c5b25  32c9                      XOR CL,CL
006c5b27  8b8574fdffff              MOV EAX,dword ptr [EBP + 0xfffffd74]
006c5b2d  8bb570fdffff              MOV ESI,dword ptr [EBP + 0xfffffd70]
006c5b33  884874                    MOV byte ptr [EAX + 0x74],CL
006c5b36  6a00                      PUSH 0x0
006c5b38  683ce1b100                PUSH 0xb1e13c
006c5b3d  8bce                      MOV ECX,ESI
006c5b3f  e83c48d4ff                CALL 0x0040a380
006c5b44  e9f5000000                JMP 0x006c5c3e
006c5b49  83f91c                    CMP ECX,0x1c
006c5b4c  7566                      JNZ 0x006c5bb4
006c5b4e  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
006c5b54  83e800                    SUB EAX,0x0
006c5b57  741b                      JZ 0x006c5b74
006c5b59  83e801                    SUB EAX,0x1
006c5b5c  740d                      JZ 0x006c5b6b
006c5b5e  83e801                    SUB EAX,0x1
006c5b61  751f                      JNZ 0x006c5b82
006c5b63  50                        PUSH EAX
006c5b64  681077b600                PUSH 0xb67710
006c5b69  eb10                      JMP 0x006c5b7b
006c5b6b  6a00                      PUSH 0x0
006c5b6d  680477b600                PUSH 0xb67704
006c5b72  eb07                      JMP 0x006c5b7b
006c5b74  6a00                      PUSH 0x0
006c5b76  68a825b600                PUSH 0xb625a8
006c5b7b  8bce                      MOV ECX,ESI
006c5b7d  e8fe47d4ff                CALL 0x0040a380
006c5b82  8bce                      MOV ECX,ESI
006c5b84  e8f74bd4ff                CALL 0x0040a780
006c5b89  83f803                    CMP EAX,0x3
006c5b8c  0f85ac000000              JNZ 0x006c5c3e
006c5b92  51                        PUSH ECX
006c5b93  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5b9a  6a00                      PUSH 0x0
006c5b9c  6a02                      PUSH 0x2
006c5b9e  51                        PUSH ECX
006c5b9f  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5ba6  8bcf                      MOV ECX,EDI
006c5ba8  6a74                      PUSH 0x74
006c5baa  e8f10f0100                CALL 0x006d6ba0
006c5baf  e98a000000                JMP 0x006c5c3e
006c5bb4  83f913                    CMP ECX,0x13
006c5bb7  7408                      JZ 0x006c5bc1
006c5bb9  81f996030000              CMP ECX,0x396
006c5bbf  7520                      JNZ 0x006c5be1
006c5bc1  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
006c5bc8  b9a825b600                MOV ECX,0xb625a8
006c5bcd  b80477b600                MOV EAX,0xb67704
006c5bd2  0f44c1                    CMOVZ EAX,ECX
006c5bd5  8bce                      MOV ECX,ESI
006c5bd7  6a00                      PUSH 0x0
006c5bd9  50                        PUSH EAX
006c5bda  e8a147d4ff                CALL 0x0040a380
006c5bdf  eb5d                      JMP 0x006c5c3e
006c5be1  83f93e                    CMP ECX,0x3e
006c5be4  753b                      JNZ 0x006c5c21
006c5be6  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
006c5bed  7510                      JNZ 0x006c5bff
006c5bef  6a00                      PUSH 0x0
006c5bf1  68a825b600                PUSH 0xb625a8
006c5bf6  8bce                      MOV ECX,ESI
006c5bf8  e88347d4ff                CALL 0x0040a380
006c5bfd  eb3f                      JMP 0x006c5c3e
006c5bff  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
006c5c06  7410                      JZ 0x006c5c18
006c5c08  6a00                      PUSH 0x0
006c5c0a  680477b600                PUSH 0xb67704
006c5c0f  8bce                      MOV ECX,ESI
006c5c11  e86a47d4ff                CALL 0x0040a380
006c5c16  eb26                      JMP 0x006c5c3e
006c5c18  8b07                      MOV EAX,dword ptr [EDI]
006c5c1a  8bcf                      MOV ECX,EDI
006c5c1c  ff5028                    CALL dword ptr [EAX + 0x28]
006c5c1f  eb1d                      JMP 0x006c5c3e
006c5c21  83f94a                    CMP ECX,0x4a
006c5c24  7418                      JZ 0x006c5c3e
006c5c26  83f94b                    CMP ECX,0x4b
006c5c29  7413                      JZ 0x006c5c3e
006c5c2b  83f94c                    CMP ECX,0x4c
006c5c2e  740e                      JZ 0x006c5c3e
006c5c30  8bcf                      MOV ECX,EDI
006c5c32  e889e9feff                CALL 0x006b45c0
006c5c37  8bcf                      MOV ECX,EDI
006c5c39  e8c2f70000                CALL 0x006d5400
006c5c3e  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
006c5c44  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c5c47  41                        INC ECX
006c5c48  898f10040000              MOV dword ptr [EDI + 0x410],ECX
006c5c4e  83f866                    CMP EAX,0x66
006c5c51  7536                      JNZ 0x006c5c89
006c5c53  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
006c5c57  0f84ce040000              JZ 0x006c612b
006c5c5d  83f911                    CMP ECX,0x11
006c5c60  0f85c5040000              JNZ 0x006c612b
006c5c66  51                        PUSH ECX
006c5c67  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5c6e  6a00                      PUSH 0x0
006c5c70  6a02                      PUSH 0x2
006c5c72  51                        PUSH ECX
006c5c73  c7042400000040            MOV dword ptr [ESP],0x40000000
006c5c7a  8bcf                      MOV ECX,EDI
006c5c7c  680a010000                PUSH 0x10a
006c5c81  e81a0f0100                CALL 0x006d6ba0
006c5c86  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c5c89  3d8c030000                CMP EAX,0x38c
006c5c8e  0f85af000000              JNZ 0x006c5d43
006c5c94  68dcd2b100                PUSH 0xb1d2dc
006c5c99  8d4f48                    LEA ECX,[EDI + 0x48]
006c5c9c  e88f53d4ff                CALL 0x0040b030
006c5ca1  84c0                      TEST AL,AL
006c5ca3  7421                      JZ 0x006c5cc6
006c5ca5  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c5cad  51                        PUSH ECX
006c5cae  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c5cb4  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5cbb  6a00                      PUSH 0x0
006c5cbd  6a02                      PUSH 0x2
006c5cbf  6a48                      PUSH 0x48
006c5cc1  e81a0c2900                CALL 0x009568e0
006c5cc6  68eca4b100                PUSH 0xb1a4ec
006c5ccb  8d4f48                    LEA ECX,[EDI + 0x48]
006c5cce  e87d48d4ff                CALL 0x0040a550
006c5cd3  84c0                      TEST AL,AL
006c5cd5  0f8450040000              JZ 0x006c612b
006c5cdb  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c5ce2  0f8443040000              JZ 0x006c612b
006c5ce8  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
006c5cee  e83d92d7ff                CALL 0x0043ef30
006c5cf3  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
006c5cfb  8d85e8fdffff              LEA EAX,[EBP + 0xfffffde8]
006c5d01  f30f5c0514a1ba00          SUBSS XMM0,dword ptr [0x00baa114]
006c5d09  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
006c5d11  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c5d17  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
006c5d1f  50                        PUSH EAX
006c5d20  6a09                      PUSH 0x9
006c5d22  f30f1185f4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM0
006c5d2a  e861a13400                CALL 0x00a0fe90
006c5d2f  50                        PUSH EAX
006c5d30  8d873c030000              LEA EAX,[EDI + 0x33c]
006c5d36  8bcf                      MOV ECX,EDI
006c5d38  50                        PUSH EAX
006c5d39  e8a2550000                CALL 0x006cb2e0
006c5d3e  e9e8030000                JMP 0x006c612b
006c5d43  3d8b030000                CMP EAX,0x38b
006c5d48  750c                      JNZ 0x006c5d56
006c5d4a  8bcf                      MOV ECX,EDI
006c5d4c  e8efdbdeff                CALL 0x004b3940
006c5d51  e9d5030000                JMP 0x006c612b
006c5d56  3d84030000                CMP EAX,0x384
006c5d5b  7524                      JNZ 0x006c5d81
006c5d5d  8d4f48                    LEA ECX,[EDI + 0x48]
006c5d60  e80b87d5ff                CALL 0x0041e470
006c5d65  8bc8                      MOV ECX,EAX
006c5d67  e83416d4ff                CALL 0x004073a0
006c5d6c  84c0                      TEST AL,AL
006c5d6e  0f85b7030000              JNZ 0x006c612b
006c5d74  8d4f48                    LEA ECX,[EDI + 0x48]
006c5d77  e8e44ed4ff                CALL 0x0040ac60
006c5d7c  e9aa030000                JMP 0x006c612b
006c5d81  3d93030000                CMP EAX,0x393
006c5d86  756c                      JNZ 0x006c5df4
006c5d88  8d4f48                    LEA ECX,[EDI + 0x48]
006c5d8b  68eca4b100                PUSH 0xb1a4ec
006c5d90  e8bb47d4ff                CALL 0x0040a550
006c5d95  84c0                      TEST AL,AL
006c5d97  0f848e030000              JZ 0x006c612b
006c5d9d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c5da4  0f8481030000              JZ 0x006c612b
006c5daa  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006c5db0  e8bb13d4ff                CALL 0x00407170
006c5db5  6a00                      PUSH 0x0
006c5db7  6a00                      PUSH 0x0
006c5db9  6a04                      PUSH 0x4
006c5dbb  6a01                      PUSH 0x1
006c5dbd  51                        PUSH ECX
006c5dbe  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
006c5dc5  57                        PUSH EDI
006c5dc6  50                        PUSH EAX
006c5dc7  83ec10                    SUB ESP,0x10
006c5dca  8bcc                      MOV ECX,ESP
006c5dcc  6a00                      PUSH 0x0
006c5dce  6a00                      PUSH 0x0
006c5dd0  e8ebfdd6ff                CALL 0x00435bc0
006c5dd5  51                        PUSH ECX
006c5dd6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5ddc  8d873c030000              LEA EAX,[EDI + 0x33c]
006c5de2  c704240000a042            MOV dword ptr [ESP],0x42a00000
006c5de9  50                        PUSH EAX
006c5dea  e871a20300                CALL 0x00700060
006c5def  e937030000                JMP 0x006c612b
006c5df4  3d91030000                CMP EAX,0x391
006c5df9  0f85ba010000              JNZ 0x006c5fb9
006c5dff  68dcd2b100                PUSH 0xb1d2dc
006c5e04  8d4f48                    LEA ECX,[EDI + 0x48]
006c5e07  e82452d4ff                CALL 0x0040b030
006c5e0c  84c0                      TEST AL,AL
006c5e0e  0f8417030000              JZ 0x006c612b
006c5e14  6818e5b100                PUSH 0xb1e518
006c5e19  8d4f48                    LEA ECX,[EDI + 0x48]
006c5e1c  e8af53d4ff                CALL 0x0040b1d0
006c5e21  89856cfdffff              MOV dword ptr [EBP + 0xfffffd6c],EAX
006c5e27  85c0                      TEST EAX,EAX
006c5e29  0f84fc020000              JZ 0x006c612b
006c5e2f  e82c910200                CALL 0x006eef60
006c5e34  50                        PUSH EAX
006c5e35  6a02                      PUSH 0x2
006c5e37  6a00                      PUSH 0x0
006c5e39  6840b6c700                PUSH 0xc7b640
006c5e3e  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c5e44  51                        PUSH ECX
006c5e45  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5e4b  6a02                      PUSH 0x2
006c5e4d  68e8030000                PUSH 0x3e8
006c5e52  e8c92cd6ff                CALL 0x00428b20
006c5e57  8bc8                      MOV ECX,EAX
006c5e59  e8c2caddff                CALL 0x004a2920
006c5e5e  ffb56cfdffff              PUSH dword ptr [EBP + 0xfffffd6c]
006c5e64  8bf0                      MOV ESI,EAX
006c5e66  8bce                      MOV ECX,ESI
006c5e68  e85305d9ff                CALL 0x004563c0
006c5e6d  8b0e                      MOV ECX,dword ptr [ESI]
006c5e6f  8d87e4010000              LEA EAX,[EDI + 0x1e4]
006c5e75  6a01                      PUSH 0x1
006c5e77  6a00                      PUSH 0x0
006c5e79  68ff000000                PUSH 0xff
006c5e7e  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
006c5e81  8bce                      MOV ECX,ESI
006c5e83  6aff                      PUSH -0x1
006c5e85  50                        PUSH EAX
006c5e86  ffd2                      CALL EDX
006c5e88  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c5e90  51                        PUSH ECX
006c5e91  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c5e97  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5e9e  6a00                      PUSH 0x0
006c5ea0  6a02                      PUSH 0x2
006c5ea2  6a1e                      PUSH 0x1e
006c5ea4  e8370a2900                CALL 0x009568e0
006c5ea9  8d4f48                    LEA ECX,[EDI + 0x48]
006c5eac  e8af85d5ff                CALL 0x0041e460
006c5eb1  8bc8                      MOV ECX,EAX
006c5eb3  e878afd7ff                CALL 0x00440e30
006c5eb8  8d4f48                    LEA ECX,[EDI + 0x48]
006c5ebb  8d70ff                    LEA ESI,[EAX + -0x1]
006c5ebe  e8bd48d4ff                CALL 0x0040a780
006c5ec3  3bc6                      CMP EAX,ESI
006c5ec5  0f8c60020000              JL 0x006c612b
006c5ecb  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c5ed3  51                        PUSH ECX
006c5ed4  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c5eda  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5ee1  6a00                      PUSH 0x0
006c5ee3  6a02                      PUSH 0x2
006c5ee5  6805010000                PUSH 0x105
006c5eea  e8f1092900                CALL 0x009568e0
006c5eef  e86c900200                CALL 0x006eef60
006c5ef4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5efa  8db73c030000              LEA ESI,[EDI + 0x33c]
006c5f00  50                        PUSH EAX
006c5f01  6a00                      PUSH 0x0
006c5f03  6a00                      PUSH 0x0
006c5f05  6840b6c700                PUSH 0xc7b640
006c5f0a  56                        PUSH ESI
006c5f0b  6a0f                      PUSH 0xf
006c5f0d  68e8030000                PUSH 0x3e8
006c5f12  e8092cd6ff                CALL 0x00428b20
006c5f17  ffb56cfdffff              PUSH dword ptr [EBP + 0xfffffd6c]
006c5f1d  8bc8                      MOV ECX,EAX
006c5f1f  e89c04d9ff                CALL 0x004563c0
006c5f24  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
006c5f2c  0f57db                    XORPS XMM3,XMM3
006c5f2f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c5f37  6a00                      PUSH 0x0
006c5f39  6a03                      PUSH 0x3
006c5f3b  6a03                      PUSH 0x3
006c5f3d  51                        PUSH ECX
006c5f3e  8d4db0                    LEA ECX,[EBP + -0x50]
006c5f41  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c5f48  e843973400                CALL 0x00a0f690
006c5f4d  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
006c5f55  8bd0                      MOV EDX,EAX
006c5f57  8bce                      MOV ECX,ESI
006c5f59  e81250f4ff                CALL 0x0060af70
006c5f5e  8b956cfdffff              MOV EDX,dword ptr [EBP + 0xfffffd6c]
006c5f64  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c5f6a  83c40c                    ADD ESP,0xc
006c5f6d  8bf0                      MOV ESI,EAX
006c5f6f  e86c93fbff                CALL 0x0067f2e0
006c5f74  50                        PUSH EAX
006c5f75  8bce                      MOV ECX,ESI
006c5f77  e87413d5ff                CALL 0x004172f0
006c5f7c  8bce                      MOV ECX,ESI
006c5f7e  e84dfed6ff                CALL 0x00435dd0
006c5f83  6a01                      PUSH 0x1
006c5f85  8bc8                      MOV ECX,EAX
006c5f87  e89447d4ff                CALL 0x0040a720
006c5f8c  6a00                      PUSH 0x0
006c5f8e  6a02                      PUSH 0x2
006c5f90  8d4dd8                    LEA ECX,[EBP + -0x28]
006c5f93  e838b53400                CALL 0x00a114d0
006c5f98  8bce                      MOV ECX,ESI
006c5f9a  e831fed6ff                CALL 0x00435dd0
006c5f9f  8d4dd8                    LEA ECX,[EBP + -0x28]
006c5fa2  51                        PUSH ECX
006c5fa3  6a00                      PUSH 0x0
006c5fa5  8bc8                      MOV ECX,EAX
006c5fa7  e85452d4ff                CALL 0x0040b200
006c5fac  8d4878                    LEA ECX,[EAX + 0x78]
006c5faf  e80cb63400                CALL 0x00a115c0
006c5fb4  e972010000                JMP 0x006c612b
006c5fb9  3d90030000                CMP EAX,0x390
006c5fbe  754e                      JNZ 0x006c600e
006c5fc0  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
006c5fc4  0f8561010000              JNZ 0x006c612b
006c5fca  8d4f48                    LEA ECX,[EDI + 0x48]
006c5fcd  68dcd2b100                PUSH 0xb1d2dc
006c5fd2  e85950d4ff                CALL 0x0040b030
006c5fd7  84c0                      TEST AL,AL
006c5fd9  0f844c010000              JZ 0x006c612b
006c5fdf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c5fe5  6a14                      PUSH 0x14
006c5fe7  e884d60300                CALL 0x00703670
006c5fec  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c5ff4  51                        PUSH ECX
006c5ff5  c704240000003f            MOV dword ptr [ESP],0x3f000000
006c5ffc  8bcf                      MOV ECX,EDI
006c5ffe  6a00                      PUSH 0x0
006c6000  6a02                      PUSH 0x2
006c6002  6a1d                      PUSH 0x1d
006c6004  e86704ffff                CALL 0x006b6470
006c6009  e91d010000                JMP 0x006c612b
006c600e  3d99030000                CMP EAX,0x399
006c6013  0f8512010000              JNZ 0x006c612b
006c6019  8d4f48                    LEA ECX,[EDI + 0x48]
006c601c  6850d3b100                PUSH 0xb1d350
006c6021  e80a50d4ff                CALL 0x0040b030
006c6026  84c0                      TEST AL,AL
006c6028  0f84fd000000              JZ 0x006c612b
006c602e  e82d8f0200                CALL 0x006eef60
006c6033  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6039  50                        PUSH EAX
006c603a  6a03                      PUSH 0x3
006c603c  6a00                      PUSH 0x0
006c603e  6840b6c700                PUSH 0xc7b640
006c6043  8d873c030000              LEA EAX,[EDI + 0x33c]
006c6049  50                        PUSH EAX
006c604a  6890000000                PUSH 0x90
006c604f  68e8030000                PUSH 0x3e8
006c6054  e8c72ad6ff                CALL 0x00428b20
006c6059  f30f1015ecadba00          MOVSS XMM2,dword ptr [0x00baadec]
006c6061  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c6067  0f57c9                    XORPS XMM1,XMM1
006c606a  8bf8                      MOV EDI,EAX
006c606c  e81f9e3400                CALL 0x00a0fe90
006c6071  50                        PUSH EAX
006c6072  8bcf                      MOV ECX,EDI
006c6074  e87712d5ff                CALL 0x004172f0
006c6079  8bcf                      MOV ECX,EDI
006c607b  e850fdd6ff                CALL 0x00435dd0
006c6080  8bf0                      MOV ESI,EAX
006c6082  e8598ffbff                CALL 0x0067efe0
006c6087  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
006c608f  51                        PUSH ECX
006c6090  8bce                      MOV ECX,ESI
006c6092  f30f110424                MOVSS dword ptr [ESP],XMM0
006c6097  e8e48dd7ff                CALL 0x0043ee80
006c609c  8bcf                      MOV ECX,EDI
006c609e  e82dfdd6ff                CALL 0x00435dd0
006c60a3  8bf0                      MOV ESI,EAX
006c60a5  c78588fdffff0000c03f      MOV dword ptr [EBP + 0xfffffd88],0x3fc00000
006c60af  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
006c60b5  b93c79c300                MOV ECX,0xc3793c
006c60ba  50                        PUSH EAX
006c60bb  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c60c1  50                        PUSH EAX
006c60c2  e819a43400                CALL 0x00a104e0
006c60c7  50                        PUSH EAX
006c60c8  8bce                      MOV ECX,ESI
006c60ca  e8a1a0d5ff                CALL 0x00420170
006c60cf  8b07                      MOV EAX,dword ptr [EDI]
006c60d1  51                        PUSH ECX
006c60d2  8bcf                      MOV ECX,EDI
006c60d4  c704240000a042            MOV dword ptr [ESP],0x42a00000
006c60db  ff5040                    CALL dword ptr [EAX + 0x40]
006c60de  8b07                      MOV EAX,dword ptr [EDI]
006c60e0  8bcf                      MOV ECX,EDI
006c60e2  ff500c                    CALL dword ptr [EAX + 0xc]
006c60e5  e8f68efbff                CALL 0x0067efe0
006c60ea  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
006c60f2  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c60f8  f30f1015c0a4ba00          MOVSS XMM2,dword ptr [0x00baa4c0]
006c6100  51                        PUSH ECX
006c6101  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
006c6109  8bcf                      MOV ECX,EDI
006c610b  f30f110424                MOVSS dword ptr [ESP],XMM0
006c6110  6a00                      PUSH 0x0
006c6112  6a02                      PUSH 0x2
006c6114  68dd010000                PUSH 0x1dd
006c6119  e85203ffff                CALL 0x006b6470
006c611e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6124  6a0e                      PUSH 0xe
006c6126  e845d50300                CALL 0x00703670
006c612b  8d7748                    LEA ESI,[EDI + 0x48]
006c612e  6818e5b100                PUSH 0xb1e518
006c6133  8bce                      MOV ECX,ESI
006c6135  e89650d4ff                CALL 0x0040b1d0
006c613a  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
006c6140  85c0                      TEST EAX,EAX
006c6142  0f84cd060000              JZ 0x006c6815
006c6148  50                        PUSH EAX
006c6149  8bcf                      MOV ECX,EDI
006c614b  e8d0130100                CALL 0x006d7520
006c6150  6a00                      PUSH 0x0
006c6152  6800000100                PUSH 0x10000
006c6157  8bcf                      MOV ECX,EDI
006c6159  e8d212d5ff                CALL 0x00417430
006c615e  84c0                      TEST AL,AL
006c6160  0f85d8010000              JNZ 0x006c633e
006c6166  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c616c  e8df200400                CALL 0x00708250
006c6171  83f802                    CMP EAX,0x2
006c6174  7f2e                      JG 0x006c61a4
006c6176  6aff                      PUSH -0x1
006c6178  6aff                      PUSH -0x1
006c617a  688c030000                PUSH 0x38c
006c617f  8bcf                      MOV ECX,EDI
006c6181  e89a10d5ff                CALL 0x00417220
006c6186  84c0                      TEST AL,AL
006c6188  0f84b0010000              JZ 0x006c633e
006c618e  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006c6194  25ffff0f00                AND EAX,0xfffff
006c6199  3dbbed0d00                CMP EAX,0xdedbb
006c619e  0f859a010000              JNZ 0x006c633e
006c61a4  f687ec03000001            TEST byte ptr [EDI + 0x3ec],0x1
006c61ab  7418                      JZ 0x006c61c5
006c61ad  6aff                      PUSH -0x1
006c61af  6aff                      PUSH -0x1
006c61b1  688c030000                PUSH 0x38c
006c61b6  8bcf                      MOV ECX,EDI
006c61b8  e86310d5ff                CALL 0x00417220
006c61bd  84c0                      TEST AL,AL
006c61bf  0f8479010000              JZ 0x006c633e
006c61c5  8bce                      MOV ECX,ESI
006c61c7  e89482d5ff                CALL 0x0041e460
006c61cc  6850d3b100                PUSH 0xb1d350
006c61d1  8bc8                      MOV ECX,EAX
006c61d3  e8384dd4ff                CALL 0x0040af10
006c61d8  8d4f48                    LEA ECX,[EDI + 0x48]
006c61db  8bf0                      MOV ESI,EAX
006c61dd  e8de45d4ff                CALL 0x0040a7c0
006c61e2  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
006c61ea  660f6ece                  MOVD XMM1,ESI
006c61ee  0f5bc9                    CVTDQ2PS XMM1,XMM1
006c61f1  0f2fc8                    COMISS XMM1,XMM0
006c61f4  0f8241010000              JC 0x006c633b
006c61fa  8d4f48                    LEA ECX,[EDI + 0x48]
006c61fd  e85e01d9ff                CALL 0x00456360
006c6202  d99d88fdffff              FSTP dword ptr [EBP + 0xfffffd88]
006c6208  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
006c6210  8d4f48                    LEA ECX,[EDI + 0x48]
006c6213  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
006c621b  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c6223  e89845d4ff                CALL 0x0040a7c0
006c6228  f30f588588fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffd88]
006c6230  660f6ece                  MOVD XMM1,ESI
006c6234  0f5bc9                    CVTDQ2PS XMM1,XMM1
006c6237  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
006c623f  0f2fc1                    COMISS XMM0,XMM1
006c6242  0f86f3000000              JBE 0x006c633b
006c6248  e8138d0200                CALL 0x006eef60
006c624d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6253  50                        PUSH EAX
006c6254  6a0b                      PUSH 0xb
006c6256  6a00                      PUSH 0x0
006c6258  6840b6c700                PUSH 0xc7b640
006c625d  8d873c030000              LEA EAX,[EDI + 0x33c]
006c6263  50                        PUSH EAX
006c6264  6a0f                      PUSH 0xf
006c6266  68e8030000                PUSH 0x3e8
006c626b  e8b028d6ff                CALL 0x00428b20
006c6270  8bf8                      MOV EDI,EAX
006c6272  8bcf                      MOV ECX,EDI
006c6274  e857fbd6ff                CALL 0x00435dd0
006c6279  681c77b600                PUSH 0xb6771c
006c627e  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c6281  8bf0                      MOV ESI,EAX
006c6283  e8b860d4ff                CALL 0x0040c340
006c6288  6a01                      PUSH 0x1
006c628a  8d45d4                    LEA EAX,[EBP + -0x2c]
006c628d  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
006c6294  50                        PUSH EAX
006c6295  8bce                      MOV ECX,ESI
006c6297  e8b45ad4ff                CALL 0x0040bd50
006c629c  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c629f  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c62a6  e8755cd4ff                CALL 0x0040bf20
006c62ab  8bcf                      MOV ECX,EDI
006c62ad  e81efbd6ff                CALL 0x00435dd0
006c62b2  8bcf                      MOV ECX,EDI
006c62b4  8bf0                      MOV ESI,EAX
006c62b6  e815fbd6ff                CALL 0x00435dd0
006c62bb  8bc8                      MOV ECX,EAX
006c62bd  e82efaddff                CALL 0x004a5cf0
006c62c2  6a00                      PUSH 0x0
006c62c4  50                        PUSH EAX
006c62c5  8bce                      MOV ECX,ESI
006c62c7  e89440d4ff                CALL 0x0040a360
006c62cc  8bcf                      MOV ECX,EDI
006c62ce  e8fdfad6ff                CALL 0x00435dd0
006c62d3  b902000000                MOV ECX,0x2
006c62d8  8bf0                      MOV ESI,EAX
006c62da  e8318dfbff                CALL 0x0067f010
006c62df  85c0                      TEST EAX,EAX
006c62e1  0f94c1                    SETZ CL
006c62e4  51                        PUSH ECX
006c62e5  8bce                      MOV ECX,ESI
006c62e7  e874f9d6ff                CALL 0x00435c60
006c62ec  8bcf                      MOV ECX,EDI
006c62ee  e8ddfad6ff                CALL 0x00435dd0
006c62f3  683c79c300                PUSH 0xc3793c
006c62f8  8d9588fdffff              LEA EDX,[EBP + 0xfffffd88]
006c62fe  c78588fdffff0000c03f      MOV dword ptr [EBP + 0xfffffd88],0x3fc00000
006c6308  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c630e  8bf0                      MOV ESI,EAX
006c6310  e8bb0ed5ff                CALL 0x004171d0
006c6315  83c404                    ADD ESP,0x4
006c6318  8bce                      MOV ECX,ESI
006c631a  50                        PUSH EAX
006c631b  e8509ed5ff                CALL 0x00420170
006c6320  8b07                      MOV EAX,dword ptr [EDI]
006c6322  8bcf                      MOV ECX,EDI
006c6324  ff500c                    CALL dword ptr [EAX + 0xc]
006c6327  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c632d  8bcf                      MOV ECX,EDI
006c632f  6a00                      PUSH 0x0
006c6331  6800000100                PUSH 0x10000
006c6336  e8a510d5ff                CALL 0x004173e0
006c633b  8d7748                    LEA ESI,[EDI + 0x48]
006c633e  6850d3b100                PUSH 0xb1d350
006c6343  8bce                      MOV ECX,ESI
006c6345  e8e64cd4ff                CALL 0x0040b030
006c634a  84c0                      TEST AL,AL
006c634c  0f84c3040000              JZ 0x006c6815
006c6352  6a00                      PUSH 0x0
006c6354  6800000100                PUSH 0x10000
006c6359  8bcf                      MOV ECX,EDI
006c635b  e8d010d5ff                CALL 0x00417430
006c6360  84c0                      TEST AL,AL
006c6362  0f85c5010000              JNZ 0x006c652d
006c6368  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
006c6370  be02000000                MOV ESI,0x2
006c6375  f30f10053ca8ba00          MOVSS XMM0,dword ptr [0x00baa83c]
006c637d  b801000000                MOV EAX,0x1
006c6382  0f2fc1                    COMISS XMM0,XMM1
006c6385  0f47f0                    CMOVA ESI,EAX
006c6388  0f2f0d68a8ba00            COMISS XMM1,dword ptr [0x00baa868]
006c638f  7311                      JNC 0x006c63a2
006c6391  f30f10875c010000          MOVSS XMM0,dword ptr [EDI + 0x15c]
006c6399  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
006c63a0  7605                      JBE 0x006c63a7
006c63a2  be03000000                MOV ESI,0x3
006c63a7  0f2f0d04a9ba00            COMISS XMM1,dword ptr [0x00baa904]
006c63ae  7311                      JNC 0x006c63c1
006c63b0  f30f10875c010000          MOVSS XMM0,dword ptr [EDI + 0x15c]
006c63b8  0f2f0524a9ba00            COMISS XMM0,dword ptr [0x00baa924]
006c63bf  7605                      JBE 0x006c63c6
006c63c1  be04000000                MOV ESI,0x4
006c63c6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c63cc  e87f1e0400                CALL 0x00708250
006c63d1  85c0                      TEST EAX,EAX
006c63d3  7e67                      JLE 0x006c643c
006c63d5  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c63dd  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c63e3  e86830ffff                CALL 0x006b9450
006c63e8  8b07                      MOV EAX,dword ptr [EDI]
006c63ea  8bcf                      MOV ECX,EDI
006c63ec  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006c63ef  ffd0                      CALL EAX
006c63f1  84c0                      TEST AL,AL
006c63f3  0f8434010000              JZ 0x006c652d
006c63f9  8b8f30030000              MOV ECX,dword ptr [EDI + 0x330]
006c63ff  83c160                    ADD ECX,0x60
006c6402  6a04                      PUSH 0x4
006c6404  e877f4d6ff                CALL 0x00435880
006c6409  84c0                      TEST AL,AL
006c640b  0f841c010000              JZ 0x006c652d
006c6411  837f283e                  CMP dword ptr [EDI + 0x28],0x3e
006c6415  750d                      JNZ 0x006c6424
006c6417  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
006c641e  0f8509010000              JNZ 0x006c652d
006c6424  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006c642c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c6432  e81930ffff                CALL 0x006b9450
006c6437  e9f1000000                JMP 0x006c652d
006c643c  e81f8b0200                CALL 0x006eef60
006c6441  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6447  6a00                      PUSH 0x0
006c6449  68acd5c500                PUSH 0xc5d5ac
006c644e  68dcd5c500                PUSH 0xc5d5dc
006c6453  6a00                      PUSH 0x0
006c6455  50                        PUSH EAX
006c6456  56                        PUSH ESI
006c6457  6a00                      PUSH 0x0
006c6459  6840b6c700                PUSH 0xc7b640
006c645e  8db73c030000              LEA ESI,[EDI + 0x33c]
006c6464  56                        PUSH ESI
006c6465  6a02                      PUSH 0x2
006c6467  68e8030000                PUSH 0x3e8
006c646c  e8af26d6ff                CALL 0x00428b20
006c6471  50                        PUSH EAX
006c6472  e83aa44200                CALL 0x00af08b1
006c6477  83c414                    ADD ESP,0x14
006c647a  8bf0                      MOV ESI,EAX
006c647c  8bce                      MOV ECX,ESI
006c647e  ffb574fdffff              PUSH dword ptr [EBP + 0xfffffd74]
006c6484  e837ffd8ff                CALL 0x004563c0
006c6489  8b0e                      MOV ECX,dword ptr [ESI]
006c648b  8d87e4010000              LEA EAX,[EDI + 0x1e4]
006c6491  6a01                      PUSH 0x1
006c6493  6a00                      PUSH 0x0
006c6495  68ff000000                PUSH 0xff
006c649a  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
006c649d  8bce                      MOV ECX,ESI
006c649f  6aff                      PUSH -0x1
006c64a1  50                        PUSH EAX
006c64a2  ffd2                      CALL EDX
006c64a4  8b07                      MOV EAX,dword ptr [EDI]
006c64a6  8bcf                      MOV ECX,EDI
006c64a8  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006c64ab  ffd0                      CALL EAX
006c64ad  84c0                      TEST AL,AL
006c64af  747c                      JZ 0x006c652d
006c64b1  8b8f30030000              MOV ECX,dword ptr [EDI + 0x330]
006c64b7  83c160                    ADD ECX,0x60
006c64ba  6a04                      PUSH 0x4
006c64bc  e8bff3d6ff                CALL 0x00435880
006c64c1  84c0                      TEST AL,AL
006c64c3  7468                      JZ 0x006c652d
006c64c5  837f283e                  CMP dword ptr [EDI + 0x28],0x3e
006c64c9  7509                      JNZ 0x006c64d4
006c64cb  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
006c64d2  7559                      JNZ 0x006c652d
006c64d4  e8878a0200                CALL 0x006eef60
006c64d9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c64df  6a00                      PUSH 0x0
006c64e1  68acd5c500                PUSH 0xc5d5ac
006c64e6  68dcd5c500                PUSH 0xc5d5dc
006c64eb  6a00                      PUSH 0x0
006c64ed  50                        PUSH EAX
006c64ee  6a00                      PUSH 0x0
006c64f0  57                        PUSH EDI
006c64f1  6840b6c700                PUSH 0xc7b640
006c64f6  8d873c030000              LEA EAX,[EDI + 0x33c]
006c64fc  50                        PUSH EAX
006c64fd  6a4d                      PUSH 0x4d
006c64ff  68e8030000                PUSH 0x3e8
006c6504  e81726d6ff                CALL 0x00428b20
006c6509  50                        PUSH EAX
006c650a  e8a2a34200                CALL 0x00af08b1
006c650f  83c414                    ADD ESP,0x14
006c6512  8b08                      MOV ECX,dword ptr [EAX]
006c6514  6a01                      PUSH 0x1
006c6516  6a00                      PUSH 0x0
006c6518  68ff000000                PUSH 0xff
006c651d  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
006c6520  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
006c6526  6aff                      PUSH -0x1
006c6528  51                        PUSH ECX
006c6529  8bc8                      MOV ECX,EAX
006c652b  ffd2                      CALL EDX
006c652d  837f284e                  CMP dword ptr [EDI + 0x28],0x4e
006c6531  7566                      JNZ 0x006c6599
006c6533  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
006c6539  e8f289d7ff                CALL 0x0043ef30
006c653e  f30f101548a8ba00          MOVSS XMM2,dword ptr [0x00baa848]
006c6546  8d85e8fdffff              LEA EAX,[EBP + 0xfffffde8]
006c654c  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
006c6554  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c655a  50                        PUSH EAX
006c655b  6a09                      PUSH 0x9
006c655d  c785ecfdffff0000a040      MOV dword ptr [EBP + 0xfffffdec],0x40a00000
006c6567  c785fcfdffff0000c03f      MOV dword ptr [EBP + 0xfffffdfc],0x3fc00000
006c6571  c785f4fdffff8fc275bd      MOV dword ptr [EBP + 0xfffffdf4],0xbd75c28f
006c657b  c785f0fdffff000000c0      MOV dword ptr [EBP + 0xfffffdf0],0xc0000000
006c6585  e806993400                CALL 0x00a0fe90
006c658a  50                        PUSH EAX
006c658b  8d873c030000              LEA EAX,[EDI + 0x33c]
006c6591  8bcf                      MOV ECX,EDI
006c6593  50                        PUSH EAX
006c6594  e8474d0000                CALL 0x006cb2e0
006c6599  6aff                      PUSH -0x1
006c659b  6a01                      PUSH 0x1
006c659d  680d010000                PUSH 0x10d
006c65a2  8bcf                      MOV ECX,EDI
006c65a4  e8770cd5ff                CALL 0x00417220
006c65a9  84c0                      TEST AL,AL
006c65ab  0f8450020000              JZ 0x006c6801
006c65b1  b90c000000                MOV ECX,0xc
006c65b6  e8558afbff                CALL 0x0067f010
006c65bb  83c00c                    ADD EAX,0xc
006c65be  89854cfdffff              MOV dword ptr [EBP + 0xfffffd4c],EAX
006c65c4  85c0                      TEST EAX,EAX
006c65c6  0f8e35020000              JLE 0x006c6801
006c65cc  0f1f4000                  NOP dword ptr [EAX]
006c65d0  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c65d6  50                        PUSH EAX
006c65d7  e8948afbff                CALL 0x0067f070
006c65dc  83c404                    ADD ESP,0x4
006c65df  8bf0                      MOV ESI,EAX
006c65e1  e8fa89fbff                CALL 0x0067efe0
006c65e6  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006c65ee  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
006c65f4  50                        PUSH EAX
006c65f5  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
006c65fb  8bce                      MOV ECX,ESI
006c65fd  50                        PUSH EAX
006c65fe  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c6606  e8d59e3400                CALL 0x00a104e0
006c660b  e850890200                CALL 0x006eef60
006c6610  898550fdffff              MOV dword ptr [EBP + 0xfffffd50],EAX
006c6616  8bcf                      MOV ECX,EDI
006c6618  8d8528fdffff              LEA EAX,[EBP + 0xfffffd28]
006c661e  50                        PUSH EAX
006c661f  e86c0cd5ff                CALL 0x00417290
006c6624  8bf8                      MOV EDI,EAX
006c6626  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006c662c  50                        PUSH EAX
006c662d  e83e8afbff                CALL 0x0067f070
006c6632  83c404                    ADD ESP,0x4
006c6635  8bf0                      MOV ESI,EAX
006c6637  e8a489fbff                CALL 0x0067efe0
006c663c  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
006c6644  8d8564fdffff              LEA EAX,[EBP + 0xfffffd64]
006c664a  50                        PUSH EAX
006c664b  8d8510fdffff              LEA EAX,[EBP + 0xfffffd10]
006c6651  8bce                      MOV ECX,ESI
006c6653  50                        PUSH EAX
006c6654  f30f118564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM0
006c665c  e87f9e3400                CALL 0x00a104e0
006c6661  50                        PUSH EAX
006c6662  8d8558fdffff              LEA EAX,[EBP + 0xfffffd58]
006c6668  8bcf                      MOV ECX,EDI
006c666a  50                        PUSH EAX
006c666b  e8b09d3400                CALL 0x00a10420
006c6670  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c6676  8d8d78fdffff              LEA ECX,[EBP + 0xfffffd78]
006c667c  6a00                      PUSH 0x0
006c667e  68acd5c500                PUSH 0xc5d5ac
006c6683  68dcd5c500                PUSH 0xc5d5dc
006c6688  6a00                      PUSH 0x0
006c668a  ffb550fdffff              PUSH dword ptr [EBP + 0xfffffd50]
006c6690  6a00                      PUSH 0x0
006c6692  57                        PUSH EDI
006c6693  51                        PUSH ECX
006c6694  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c669a  50                        PUSH EAX
006c669b  6a3b                      PUSH 0x3b
006c669d  68e8030000                PUSH 0x3e8
006c66a2  e87924d6ff                CALL 0x00428b20
006c66a7  50                        PUSH EAX
006c66a8  e804a24200                CALL 0x00af08b1
006c66ad  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006c66b5  8d8d20fdffff              LEA ECX,[EBP + 0xfffffd20]
006c66bb  83c414                    ADD ESP,0x14
006c66be  89856cfdffff              MOV dword ptr [EBP + 0xfffffd6c],EAX
006c66c4  f30f118560fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM0
006c66cc  51                        PUSH ECX
006c66cd  8bc8                      MOV ECX,EAX
006c66cf  e8bc0bd5ff                CALL 0x00417290
006c66d4  8bf0                      MOV ESI,EAX
006c66d6  8bcf                      MOV ECX,EDI
006c66d8  8d8508fdffff              LEA EAX,[EBP + 0xfffffd08]
006c66de  50                        PUSH EAX
006c66df  e8ac0bd5ff                CALL 0x00417290
006c66e4  50                        PUSH EAX
006c66e5  8d85f0fcffff              LEA EAX,[EBP + 0xfffffcf0]
006c66eb  8bce                      MOV ECX,ESI
006c66ed  50                        PUSH EAX
006c66ee  e88d9d3400                CALL 0x00a10480
006c66f3  f30f109578fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd78]
006c66fb  8d8dd4fcffff              LEA ECX,[EBP + 0xfffffcd4]
006c6701  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
006c6708  8bf0                      MOV ESI,EAX
006c670a  f30f108d7cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd7c]
006c6712  e879973400                CALL 0x00a0fe90
006c6717  50                        PUSH EAX
006c6718  8bce                      MOV ECX,ESI
006c671a  e8619a3400                CALL 0x00a10180
006c671f  0f57c0                    XORPS XMM0,XMM0
006c6722  d99d50fdffff              FSTP dword ptr [EBP + 0xfffffd50]
006c6728  0f2f8550fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd50]
006c672f  7610                      JBE 0x006c6741
006c6731  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
006c6739  f30f118560fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM0
006c6741  ffb574fdffff              PUSH dword ptr [EBP + 0xfffffd74]
006c6747  8bb56cfdffff              MOV ESI,dword ptr [EBP + 0xfffffd6c]
006c674d  8bce                      MOV ECX,ESI
006c674f  e86cfcd8ff                CALL 0x004563c0
006c6754  e88788fbff                CALL 0x0067efe0
006c6759  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
006c6761  51                        PUSH ECX
006c6762  8bce                      MOV ECX,ESI
006c6764  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
006c676c  f30f598560fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd60]
006c6774  f30f110424                MOVSS dword ptr [ESP],XMM0
006c6779  e832f7d6ff                CALL 0x00435eb0
006c677e  b90f000000                MOV ECX,0xf
006c6783  e88888fbff                CALL 0x0067f010
006c6788  83c00f                    ADD EAX,0xf
006c678b  8bce                      MOV ECX,ESI
006c678d  50                        PUSH EAX
006c678e  e8fdf6d6ff                CALL 0x00435e90
006c6793  8b06                      MOV EAX,dword ptr [ESI]
006c6795  6a00                      PUSH 0x0
006c6797  6a00                      PUSH 0x0
006c6799  6a00                      PUSH 0x0
006c679b  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c679e  e83d88fbff                CALL 0x0067efe0
006c67a3  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006c67ab  51                        PUSH ECX
006c67ac  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006c67b2  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
006c67ba  f30f110424                MOVSS dword ptr [ESP],XMM0
006c67bf  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006c67c7  0f28d8                    MOVAPS XMM3,XMM0
006c67ca  0f28d0                    MOVAPS XMM2,XMM0
006c67cd  0f28c8                    MOVAPS XMM1,XMM0
006c67d0  e8fbf2d6ff                CALL 0x00435ad0
006c67d5  8b8d6cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd6c]
006c67db  6a01                      PUSH 0x1
006c67dd  6a00                      PUSH 0x0
006c67df  68ff000000                PUSH 0xff
006c67e4  6aff                      PUSH -0x1
006c67e6  50                        PUSH EAX
006c67e7  ffd6                      CALL ESI
006c67e9  8b8d6cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd6c]
006c67ef  8b01                      MOV EAX,dword ptr [ECX]
006c67f1  ff500c                    CALL dword ptr [EAX + 0xc]
006c67f4  83ad4cfdffff01            SUB dword ptr [EBP + 0xfffffd4c],0x1
006c67fb  0f85cffdffff              JNZ 0x006c65d0
006c6801  8bcf                      MOV ECX,EDI
006c6803  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
006c680d  e8aeddfeff                CALL 0x006b45c0
006c6812  8d7748                    LEA ESI,[EDI + 0x48]
006c6815  817f2897010000            CMP dword ptr [EDI + 0x28],0x197
006c681c  0f8585000000              JNZ 0x006c68a7
006c6822  684c77b600                PUSH 0xb6774c
006c6827  8bce                      MOV ECX,ESI
006c6829  e80248d4ff                CALL 0x0040b030
006c682e  84c0                      TEST AL,AL
006c6830  7475                      JZ 0x006c68a7
006c6832  6800000010                PUSH 0x10000000
006c6837  6a00                      PUSH 0x0
006c6839  8bcf                      MOV ECX,EDI
006c683b  e8f00bd5ff                CALL 0x00417430
006c6840  84c0                      TEST AL,AL
006c6842  7563                      JNZ 0x006c68a7
006c6844  e817870200                CALL 0x006eef60
006c6849  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c684f  50                        PUSH EAX
006c6850  6a00                      PUSH 0x0
006c6852  57                        PUSH EDI
006c6853  6840b6c700                PUSH 0xc7b640
006c6858  8d873c030000              LEA EAX,[EDI + 0x33c]
006c685e  50                        PUSH EAX
006c685f  6a64                      PUSH 0x64
006c6861  68e8030000                PUSH 0x3e8
006c6866  e8b522d6ff                CALL 0x00428b20
006c686b  85c0                      TEST EAX,EAX
006c686d  7407                      JZ 0x006c6876
006c686f  8b10                      MOV EDX,dword ptr [EAX]
006c6871  8bc8                      MOV ECX,EAX
006c6873  ff520c                    CALL dword ptr [EDX + 0xc]
006c6876  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c687c  6a1e                      PUSH 0x1e
006c687e  e8edcd0300                CALL 0x00703670
006c6883  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c688b  51                        PUSH ECX
006c688c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c6892  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c6899  6a00                      PUSH 0x0
006c689b  6a02                      PUSH 0x2
006c689d  680a010000                PUSH 0x10a
006c68a2  e839002900                CALL 0x009568e0
006c68a7  68eca4b100                PUSH 0xb1a4ec
006c68ac  8bce                      MOV ECX,ESI
006c68ae  e89d3cd4ff                CALL 0x0040a550
006c68b3  84c0                      TEST AL,AL
006c68b5  7410                      JZ 0x006c68c7
006c68b7  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
006c68be  7407                      JZ 0x006c68c7
006c68c0  8bcf                      MOV ECX,EDI
006c68c2  e839eb0000                CALL 0x006d5400
006c68c7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006c68cd  83f812                    CMP EAX,0x12
006c68d0  0f84761e0000              JZ 0x006c874c
006c68d6  83f811                    CMP EAX,0x11
006c68d9  0f846d1e0000              JZ 0x006c874c
006c68df  8bcf                      MOV ECX,EDI
006c68e1  e8aae1ffff                CALL 0x006c4a90
006c68e6  84c0                      TEST AL,AL
006c68e8  7509                      JNZ 0x006c68f3
006c68ea  83bf640b000001            CMP dword ptr [EDI + 0xb64],0x1
006c68f1  750d                      JNZ 0x006c6900
006c68f3  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c68fa  0f844c1e0000              JZ 0x006c874c
006c6900  6a00                      PUSH 0x0
006c6902  6800010000                PUSH 0x100
006c6907  8bcf                      MOV ECX,EDI
006c6909  e8220bd5ff                CALL 0x00417430
006c690e  84c0                      TEST AL,AL
006c6910  7564                      JNZ 0x006c6976
006c6912  8b87840b0000              MOV EAX,dword ptr [EDI + 0xb84]
006c6918  3db4000000                CMP EAX,0xb4
006c691d  7e0c                      JLE 0x006c692b
006c691f  c787840b0000ffffffff      MOV dword ptr [EDI + 0xb84],0xffffffff
006c6929  eb11                      JMP 0x006c693c
006c692b  3d4cffffff                CMP EAX,0xffffff4c
006c6930  7d0a                      JGE 0x006c693c
006c6932  c787840b000000000000      MOV dword ptr [EDI + 0xb84],0x0
006c693c  8bcf                      MOV ECX,EDI
006c693e  e8fd7effff                CALL 0x006be840
006c6943  8bf0                      MOV ESI,EAX
006c6945  8bce                      MOV ECX,ESI
006c6947  e81409d5ff                CALL 0x00417260
006c694c  83f803                    CMP EAX,0x3
006c694f  7514                      JNZ 0x006c6965
006c6951  8bce                      MOV ECX,ESI
006c6953  e81809d5ff                CALL 0x00417270
006c6958  83f843                    CMP EAX,0x43
006c695b  7508                      JNZ 0x006c6965
006c695d  ff87840b0000              INC dword ptr [EDI + 0xb84]
006c6963  eb11                      JMP 0x006c6976
006c6965  8b87840b0000              MOV EAX,dword ptr [EDI + 0xb84]
006c696b  85c0                      TEST EAX,EAX
006c696d  7407                      JZ 0x006c6976
006c696f  48                        DEC EAX
006c6970  8987840b0000              MOV dword ptr [EDI + 0xb84],EAX
006c6976  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c697d  7428                      JZ 0x006c69a7
006c697f  83bf640b000001            CMP dword ptr [EDI + 0xb64],0x1
006c6986  751f                      JNZ 0x006c69a7
006c6988  8b8768030000              MOV EAX,dword ptr [EDI + 0x368]
006c698e  89876c030000              MOV dword ptr [EDI + 0x36c],EAX
006c6994  8b87680b0000              MOV EAX,dword ptr [EDI + 0xb68]
006c699a  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
006c69a0  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
006c69a7  6683bf740c000000          CMP word ptr [EDI + 0xc74],0x0
006c69af  7507                      JNZ 0x006c69b8
006c69b1  8bcf                      MOV ECX,EDI
006c69b3  e8d8bfffff                CALL 0x006c2990
006c69b8  8d4748                    LEA EAX,[EDI + 0x48]
006c69bb  684cd8b100                PUSH 0xb1d84c
006c69c0  8bc8                      MOV ECX,EAX
006c69c2  898538fdffff              MOV dword ptr [EBP + 0xfffffd38],EAX
006c69c8  e80348d4ff                CALL 0x0040b1d0
006c69cd  85c0                      TEST EAX,EAX
006c69cf  740a                      JZ 0x006c69db
006c69d1  80780c00                  CMP byte ptr [EAX + 0xc],0x0
006c69d5  7504                      JNZ 0x006c69db
006c69d7  32c9                      XOR CL,CL
006c69d9  eb02                      JMP 0x006c69dd
006c69db  b101                      MOV CL,0x1
006c69dd  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c69e3  888d8ffdffff              MOV byte ptr [EBP + 0xfffffd8f],CL
006c69e9  83f802                    CMP EAX,0x2
006c69ec  7405                      JZ 0x006c69f3
006c69ee  83f819                    CMP EAX,0x19
006c69f1  7575                      JNZ 0x006c6a68
006c69f3  84c9                      TEST CL,CL
006c69f5  7471                      JZ 0x006c6a68
006c69f7  6a00                      PUSH 0x0
006c69f9  6a07                      PUSH 0x7
006c69fb  8bcf                      MOV ECX,EDI
006c69fd  e80e5dfeff                CALL 0x006ac710
006c6a02  84c0                      TEST AL,AL
006c6a04  7462                      JZ 0x006c6a68
006c6a06  6a00                      PUSH 0x0
006c6a08  6800000001                PUSH 0x1000000
006c6a0d  8bcf                      MOV ECX,EDI
006c6a0f  e81c0ad5ff                CALL 0x00417430
006c6a14  84c0                      TEST AL,AL
006c6a16  7550                      JNZ 0x006c6a68
006c6a18  e843850200                CALL 0x006eef60
006c6a1d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6a23  6a00                      PUSH 0x0
006c6a25  68acd5c500                PUSH 0xc5d5ac
006c6a2a  68dcd5c500                PUSH 0xc5d5dc
006c6a2f  6a00                      PUSH 0x0
006c6a31  50                        PUSH EAX
006c6a32  6a00                      PUSH 0x0
006c6a34  57                        PUSH EDI
006c6a35  6840b6c700                PUSH 0xc7b640
006c6a3a  8d873c030000              LEA EAX,[EDI + 0x33c]
006c6a40  50                        PUSH EAX
006c6a41  6a17                      PUSH 0x17
006c6a43  68e8030000                PUSH 0x3e8
006c6a48  e8d320d6ff                CALL 0x00428b20
006c6a4d  50                        PUSH EAX
006c6a4e  e85e9e4200                CALL 0x00af08b1
006c6a53  83c414                    ADD ESP,0x14
006c6a56  8bf0                      MOV ESI,EAX
006c6a58  8bce                      MOV ECX,ESI
006c6a5a  6a1e                      PUSH 0x1e
006c6a5c  e82ff4d6ff                CALL 0x00435e90
006c6a61  8b16                      MOV EDX,dword ptr [ESI]
006c6a63  8bce                      MOV ECX,ESI
006c6a65  ff520c                    CALL dword ptr [EDX + 0xc]
006c6a68  83bf640c000018            CMP dword ptr [EDI + 0xc64],0x18
006c6a6f  0f8585010000              JNZ 0x006c6bfa
006c6a75  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6a7b  e8000ad4ff                CALL 0x00407480
006c6a80  8bc8                      MOV ECX,EAX
006c6a82  e809371200                CALL 0x007ea190
006c6a87  84c0                      TEST AL,AL
006c6a89  0f856b010000              JNZ 0x006c6bfa
006c6a8f  38858ffdffff              CMP byte ptr [EBP + 0xfffffd8f],AL
006c6a95  0f845f010000              JZ 0x006c6bfa
006c6a9b  6a00                      PUSH 0x0
006c6a9d  6a03                      PUSH 0x3
006c6a9f  8bcf                      MOV ECX,EDI
006c6aa1  e86a5cfeff                CALL 0x006ac710
006c6aa6  84c0                      TEST AL,AL
006c6aa8  7454                      JZ 0x006c6afe
006c6aaa  64a12c000000              MOV EAX,FS:[0x2c]
006c6ab0  8b08                      MOV ECX,dword ptr [EAX]
006c6ab2  a1100ec800                MOV EAX,[0x00c80e10]
006c6ab7  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
006c6abd  0f8fca3d0000              JG 0x006ca88d
006c6ac3  e81885fbff                CALL 0x0067efe0
006c6ac8  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006c6ad0  51                        PUSH ECX
006c6ad1  8bcf                      MOV ECX,EDI
006c6ad3  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
006c6adb  f30f110424                MOVSS dword ptr [ESP],XMM0
006c6ae0  e8ebf9feff                CALL 0x006b64d0
006c6ae5  6a01                      PUSH 0x1
006c6ae7  6a00                      PUSH 0x0
006c6ae9  68ff000000                PUSH 0xff
006c6aee  8b08                      MOV ECX,dword ptr [EAX]
006c6af0  6aff                      PUSH -0x1
006c6af2  68140ec800                PUSH 0xc80e14
006c6af7  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
006c6afa  8bc8                      MOV ECX,EAX
006c6afc  ffd2                      CALL EDX
006c6afe  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6b04  e87709d4ff                CALL 0x00407480
006c6b09  8bf0                      MOV ESI,EAX
006c6b0b  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c6b11  51                        PUSH ECX
006c6b12  8bce                      MOV ECX,ESI
006c6b14  89b564fdffff              MOV dword ptr [EBP + 0xfffffd64],ESI
006c6b1a  e871c11400                CALL 0x00812c90
006c6b1f  898550fdffff              MOV dword ptr [EBP + 0xfffffd50],EAX
006c6b25  3b874c0f0000              CMP EAX,dword ptr [EDI + 0xf4c]
006c6b2b  0f84c9000000              JZ 0x006c6bfa
006c6b31  b904000000                MOV ECX,0x4
006c6b36  e8d584fbff                CALL 0x0067f010
006c6b3b  85c0                      TEST EAX,EAX
006c6b3d  0f85ab000000              JNZ 0x006c6bee
006c6b43  8b874c0f0000              MOV EAX,dword ptr [EDI + 0xf4c]
006c6b49  85c0                      TEST EAX,EAX
006c6b4b  0f889d000000              JS 0x006c6bee
006c6b51  50                        PUSH EAX
006c6b52  8bce                      MOV ECX,ESI
006c6b54  e807f5d6ff                CALL 0x00436060
006c6b59  ffb74c0f0000              PUSH dword ptr [EDI + 0xf4c]
006c6b5f  8bce                      MOV ECX,ESI
006c6b61  898588fdffff              MOV dword ptr [EBP + 0xfffffd88],EAX
006c6b67  e8949c1200                CALL 0x007f0800
006c6b6c  85c0                      TEST EAX,EAX
006c6b6e  757e                      JNZ 0x006c6bee
006c6b70  8b8588fdffff              MOV EAX,dword ptr [EBP + 0xfffffd88]
006c6b76  85c0                      TEST EAX,EAX
006c6b78  7412                      JZ 0x006c6b8c
006c6b7a  8bc8                      MOV ECX,EAX
006c6b7c  e83f08d4ff                CALL 0x004073c0
006c6b81  8bc8                      MOV ECX,EAX
006c6b83  e8f8530400                CALL 0x0070bf80
006c6b88  84c0                      TEST AL,AL
006c6b8a  7562                      JNZ 0x006c6bee
006c6b8c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6b92  e8e908d4ff                CALL 0x00407480
006c6b97  8bf0                      MOV ESI,EAX
006c6b99  e8c2830200                CALL 0x006eef60
006c6b9e  6a00                      PUSH 0x0
006c6ba0  50                        PUSH EAX
006c6ba1  6a00                      PUSH 0x0
006c6ba3  6a0e                      PUSH 0xe
006c6ba5  ffb74c0f0000              PUSH dword ptr [EDI + 0xf4c]
006c6bab  8bce                      MOV ECX,ESI
006c6bad  e8ee501200                CALL 0x007ebca0
006c6bb2  ffb74c0f0000              PUSH dword ptr [EDI + 0xf4c]
006c6bb8  8b8d64fdffff              MOV ECX,dword ptr [EBP + 0xfffffd64]
006c6bbe  e89df4d6ff                CALL 0x00436060
006c6bc3  8bf0                      MOV ESI,EAX
006c6bc5  85f6                      TEST ESI,ESI
006c6bc7  7425                      JZ 0x006c6bee
006c6bc9  8bce                      MOV ECX,ESI
006c6bcb  e8f007d4ff                CALL 0x004073c0
006c6bd0  83f80e                    CMP EAX,0xe
006c6bd3  7519                      JNZ 0x006c6bee
006c6bd5  8bce                      MOV ECX,ESI
006c6bd7  e894fcd8ff                CALL 0x00456870
006c6bdc  6a01                      PUSH 0x1
006c6bde  8bce                      MOV ECX,ESI
006c6be0  e89b19ffff                CALL 0x006b8580
006c6be5  6a00                      PUSH 0x0
006c6be7  8bce                      MOV ECX,ESI
006c6be9  e82217ffff                CALL 0x006b8310
006c6bee  8b8550fdffff              MOV EAX,dword ptr [EBP + 0xfffffd50]
006c6bf4  89874c0f0000              MOV dword ptr [EDI + 0xf4c],EAX
006c6bfa  83bf640c000006            CMP dword ptr [EDI + 0xc64],0x6
006c6c01  0f85ba000000              JNZ 0x006c6cc1
006c6c07  6a00                      PUSH 0x0
006c6c09  6a01                      PUSH 0x1
006c6c0b  8bcf                      MOV ECX,EDI
006c6c0d  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
006c6c14  e8e707d5ff                CALL 0x00417400
006c6c19  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6c1f  e85c08d4ff                CALL 0x00407480
006c6c24  8bc8                      MOV ECX,EAX
006c6c26  e8251ed6ff                CALL 0x00428a50
006c6c2b  33f6                      XOR ESI,ESI
006c6c2d  898560fdffff              MOV dword ptr [EBP + 0xfffffd60],EAX
006c6c33  8bc8                      MOV ECX,EAX
006c6c35  89b574fdffff              MOV dword ptr [EBP + 0xfffffd74],ESI
006c6c3b  e8b00ad5ff                CALL 0x004176f0
006c6c40  85c0                      TEST EAX,EAX
006c6c42  747d                      JZ 0x006c6cc1
006c6c44  8b8d60fdffff              MOV ECX,dword ptr [EBP + 0xfffffd60]
006c6c4a  56                        PUSH ESI
006c6c4b  e8d009d5ff                CALL 0x00417620
006c6c50  8b30                      MOV ESI,dword ptr [EAX]
006c6c52  8bce                      MOV ECX,ESI
006c6c54  e8d758feff                CALL 0x006ac530
006c6c59  84c0                      TEST AL,AL
006c6c5b  7448                      JZ 0x006c6ca5
006c6c5d  8b06                      MOV EAX,dword ptr [ESI]
006c6c5f  8bce                      MOV ECX,ESI
006c6c61  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
006c6c64  ffd0                      CALL EAX
006c6c66  84c0                      TEST AL,AL
006c6c68  743b                      JZ 0x006c6ca5
006c6c6a  6a00                      PUSH 0x0
006c6c6c  68acd6c500                PUSH 0xc5d6ac
006c6c71  68dcd5c500                PUSH 0xc5d5dc
006c6c76  6a00                      PUSH 0x0
006c6c78  56                        PUSH ESI
006c6c79  e8339c4200                CALL 0x00af08b1
006c6c7e  83c414                    ADD ESP,0x14
006c6c81  80b8630c000000            CMP byte ptr [EAX + 0xc63],0x0
006c6c88  7409                      JZ 0x006c6c93
006c6c8a  83b8640c000006            CMP dword ptr [EAX + 0xc64],0x6
006c6c91  7412                      JZ 0x006c6ca5
006c6c93  6a00                      PUSH 0x0
006c6c95  6a01                      PUSH 0x1
006c6c97  8bcf                      MOV ECX,EDI
006c6c99  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
006c6ca0  e83b07d5ff                CALL 0x004173e0
006c6ca5  8bb574fdffff              MOV ESI,dword ptr [EBP + 0xfffffd74]
006c6cab  8b8d60fdffff              MOV ECX,dword ptr [EBP + 0xfffffd60]
006c6cb1  46                        INC ESI
006c6cb2  89b574fdffff              MOV dword ptr [EBP + 0xfffffd74],ESI
006c6cb8  e8330ad5ff                CALL 0x004176f0
006c6cbd  3bf0                      CMP ESI,EAX
006c6cbf  7283                      JC 0x006c6c44
006c6cc1  83bf640c000009            CMP dword ptr [EDI + 0xc64],0x9
006c6cc8  740d                      JZ 0x006c6cd7
006c6cca  817f28fc000000            CMP dword ptr [EDI + 0x28],0xfc
006c6cd1  0f8518010000              JNZ 0x006c6def
006c6cd7  8b876c0c0000              MOV EAX,dword ptr [EDI + 0xc6c]
006c6cdd  83f803                    CMP EAX,0x3
006c6ce0  0f87cd000000              JA 0x006c6db3
006c6ce6  ff24851ca96c00            JMP dword ptr [EAX*0x4 + 0x6ca91c]
006c6ced  8b8f680c0000              MOV ECX,dword ptr [EDI + 0xc68]
006c6cf3  8d41ff                    LEA EAX,[ECX + -0x1]
006c6cf6  8987680c0000              MOV dword ptr [EDI + 0xc68],EAX
006c6cfc  85c9                      TEST ECX,ECX
006c6cfe  0f89af000000              JNS 0x006c6db3
006c6d04  c7876c0c000001000000      MOV dword ptr [EDI + 0xc6c],0x1
006c6d0e  e9a0000000                JMP 0x006c6db3
006c6d13  f30f1087700c0000          MOVSS XMM0,dword ptr [EDI + 0xc70]
006c6d1b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006c6d22  7612                      JBE 0x006c6d36
006c6d24  f30f5c05d0a0ba00          SUBSS XMM0,dword ptr [0x00baa0d0]
006c6d2c  f30f1187700c0000          MOVSS dword ptr [EDI + 0xc70],XMM0
006c6d34  eb7d                      JMP 0x006c6db3
006c6d36  c7876c0c000003000000      MOV dword ptr [EDI + 0xc6c],0x3
006c6d40  b91e000000                MOV ECX,0x1e
006c6d45  e8c682fbff                CALL 0x0067f010
006c6d4a  83c03c                    ADD EAX,0x3c
006c6d4d  8987680c0000              MOV dword ptr [EDI + 0xc68],EAX
006c6d53  eb5e                      JMP 0x006c6db3
006c6d55  f30f1087700c0000          MOVSS XMM0,dword ptr [EDI + 0xc70]
006c6d5d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c6d65  0f2fc8                    COMISS XMM1,XMM0
006c6d68  7612                      JBE 0x006c6d7c
006c6d6a  f30f5805d0a0ba00          ADDSS XMM0,dword ptr [0x00baa0d0]
006c6d72  f30f1187700c0000          MOVSS dword ptr [EDI + 0xc70],XMM0
006c6d7a  eb37                      JMP 0x006c6db3
006c6d7c  c7876c0c000000000000      MOV dword ptr [EDI + 0xc6c],0x0
006c6d86  ebb8                      JMP 0x006c6d40
006c6d88  8b8f680c0000              MOV ECX,dword ptr [EDI + 0xc68]
006c6d8e  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
006c6d95  8d41ff                    LEA EAX,[ECX + -0x1]
006c6d98  8987680c0000              MOV dword ptr [EDI + 0xc68],EAX
006c6d9e  85c9                      TEST ECX,ECX
006c6da0  7911                      JNS 0x006c6db3
006c6da2  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
006c6da9  c7876c0c000002000000      MOV dword ptr [EDI + 0xc6c],0x2
006c6db3  8d4f48                    LEA ECX,[EDI + 0x48]
006c6db6  e85506d4ff                CALL 0x00407410
006c6dbb  50                        PUSH EAX
006c6dbc  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006c6dc2  e8f903d4ff                CALL 0x004071c0
006c6dc7  f30f1087700c0000          MOVSS XMM0,dword ptr [EDI + 0xc70]
006c6dcf  51                        PUSH ECX
006c6dd0  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006c6dd6  f30f110424                MOVSS dword ptr [ESP],XMM0
006c6ddb  e8a004d4ff                CALL 0x00407280
006c6de0  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
006c6de6  50                        PUSH EAX
006c6de7  8d4f48                    LEA ECX,[EDI + 0x48]
006c6dea  e8e105d4ff                CALL 0x004073d0
006c6def  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c6df5  83f808                    CMP EAX,0x8
006c6df8  750f                      JNZ 0x006c6e09
006c6dfa  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
006c6e04  e93d010000                JMP 0x006c6f46
006c6e09  83f80a                    CMP EAX,0xa
006c6e0c  7409                      JZ 0x006c6e17
006c6e0e  83f819                    CMP EAX,0x19
006c6e11  0f852f010000              JNZ 0x006c6f46
006c6e17  ff8fa80b0000              DEC dword ptr [EDI + 0xba8]
006c6e1d  83bfa80b000000            CMP dword ptr [EDI + 0xba8],0x0
006c6e24  8a8d8ffdffff              MOV CL,byte ptr [EBP + 0xfffffd8f]
006c6e2a  0f8f1c010000              JG 0x006c6f4c
006c6e30  84c9                      TEST CL,CL
006c6e32  0f8414010000              JZ 0x006c6f4c
006c6e38  6a00                      PUSH 0x0
006c6e3a  6800000001                PUSH 0x1000000
006c6e3f  8bcf                      MOV ECX,EDI
006c6e41  e8ea05d5ff                CALL 0x00417430
006c6e46  84c0                      TEST AL,AL
006c6e48  0f85f8000000              JNZ 0x006c6f46
006c6e4e  8d8f60030000              LEA ECX,[EDI + 0x360]
006c6e54  e847903400                CALL 0x00a0fea0
006c6e59  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006c6e61  f30f118510fdffff          MOVSS dword ptr [EBP + 0xfffffd10],XMM0
006c6e69  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006c6e71  d99d74fdffff              FSTP dword ptr [EBP + 0xfffffd74]
006c6e77  f30f118514fdffff          MOVSS dword ptr [EBP + 0xfffffd14],XMM0
006c6e7f  f30f108574fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd74]
006c6e87  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006c6e8e  0f86b2000000              JBE 0x006c6f46
006c6e94  8d8574fdffff              LEA EAX,[EBP + 0xfffffd74]
006c6e9a  50                        PUSH EAX
006c6e9b  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c6ea1  50                        PUSH EAX
006c6ea2  8d8f60030000              LEA ECX,[EDI + 0x360]
006c6ea8  e8f3963400                CALL 0x00a105a0
006c6ead  50                        PUSH EAX
006c6eae  8d8d10fdffff              LEA ECX,[EBP + 0xfffffd10]
006c6eb4  e8f7641100                CALL 0x007dd3b0
006c6eb9  b914000000                MOV ECX,0x14
006c6ebe  e84d81fbff                CALL 0x0067f010
006c6ec3  83c028                    ADD EAX,0x28
006c6ec6  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
006c6ecc  8987a80b0000              MOV dword ptr [EDI + 0xba8],EAX
006c6ed2  e85980d7ff                CALL 0x0043ef30
006c6ed7  8d85e8fdffff              LEA EAX,[EBP + 0xfffffde8]
006c6edd  c785f4fdffff9a99993e      MOV dword ptr [EBP + 0xfffffdf4],0x3e99999a
006c6ee7  50                        PUSH EAX
006c6ee8  6a00                      PUSH 0x0
006c6eea  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
006c6ef0  c785f0fdffff0000a0c0      MOV dword ptr [EBP + 0xfffffdf0],0xc0a00000
006c6efa  50                        PUSH EAX
006c6efb  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c6f01  c78588fdffff0000a040      MOV dword ptr [EBP + 0xfffffd88],0x40a00000
006c6f0b  50                        PUSH EAX
006c6f0c  8d8d10fdffff              LEA ECX,[EBP + 0xfffffd10]
006c6f12  e8c9953400                CALL 0x00a104e0
006c6f17  50                        PUSH EAX
006c6f18  8d873c030000              LEA EAX,[EDI + 0x33c]
006c6f1e  8bcf                      MOV ECX,EDI
006c6f20  50                        PUSH EAX
006c6f21  e8ba430000                CALL 0x006cb2e0
006c6f26  51                        PUSH ECX
006c6f27  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c6f2e  6a00                      PUSH 0x0
006c6f30  6a02                      PUSH 0x2
006c6f32  51                        PUSH ECX
006c6f33  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c6f3a  8bcf                      MOV ECX,EDI
006c6f3c  68b2000000                PUSH 0xb2
006c6f41  e85afc0000                CALL 0x006d6ba0
006c6f46  8a8d8ffdffff              MOV CL,byte ptr [EBP + 0xfffffd8f]
006c6f4c  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c6f52  83f80b                    CMP EAX,0xb
006c6f55  7409                      JZ 0x006c6f60
006c6f57  83f819                    CMP EAX,0x19
006c6f5a  0f8570010000              JNZ 0x006c70d0
006c6f60  84c9                      TEST CL,CL
006c6f62  0f8468010000              JZ 0x006c70d0
006c6f68  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c6f6e  e80d05d4ff                CALL 0x00407480
006c6f73  8bc8                      MOV ECX,EAX
006c6f75  e8d61ad6ff                CALL 0x00428a50
006c6f7a  33f6                      XOR ESI,ESI
006c6f7c  89854cfdffff              MOV dword ptr [EBP + 0xfffffd4c],EAX
006c6f82  8bc8                      MOV ECX,EAX
006c6f84  89b560fdffff              MOV dword ptr [EBP + 0xfffffd60],ESI
006c6f8a  e86107d5ff                CALL 0x004176f0
006c6f8f  85c0                      TEST EAX,EAX
006c6f91  0f8439010000              JZ 0x006c70d0
006c6f97  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
006c6fa0  8b8d4cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd4c]
006c6fa6  56                        PUSH ESI
006c6fa7  e87406d5ff                CALL 0x00417620
006c6fac  8b30                      MOV ESI,dword ptr [EAX]
006c6fae  8bce                      MOV ECX,ESI
006c6fb0  e8ab02d5ff                CALL 0x00417260
006c6fb5  83f801                    CMP EAX,0x1
006c6fb8  7410                      JZ 0x006c6fca
006c6fba  8bce                      MOV ECX,ESI
006c6fbc  e89f02d5ff                CALL 0x00417260
006c6fc1  83f802                    CMP EAX,0x2
006c6fc4  0f85e6000000              JNZ 0x006c70b0
006c6fca  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c6fd0  8bce                      MOV ECX,ESI
006c6fd2  50                        PUSH EAX
006c6fd3  e8b802d5ff                CALL 0x00417290
006c6fd8  50                        PUSH EAX
006c6fd9  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
006c6fdf  50                        PUSH EAX
006c6fe0  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c6fe6  e895943400                CALL 0x00a10480
006c6feb  8d8d78fdffff              LEA ECX,[EBP + 0xfffffd78]
006c6ff1  e8ca8f3400                CALL 0x00a0ffc0
006c6ff6  8bce                      MOV ECX,ESI
006c6ff8  c7856cfdffff6666663f      MOV dword ptr [EBP + 0xfffffd6c],0x3f666666
006c7002  e85902d5ff                CALL 0x00417260
006c7007  83f801                    CMP EAX,0x1
006c700a  750a                      JNZ 0x006c7016
006c700c  c7856cfdffffcdcc4c3f      MOV dword ptr [EBP + 0xfffffd6c],0x3f4ccccd
006c7016  8d8528fdffff              LEA EAX,[EBP + 0xfffffd28]
006c701c  8bce                      MOV ECX,ESI
006c701e  50                        PUSH EAX
006c701f  e86c02d5ff                CALL 0x00417290
006c7024  50                        PUSH EAX
006c7025  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006c702b  50                        PUSH EAX
006c702c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c7032  e849943400                CALL 0x00a10480
006c7037  8bc8                      MOV ECX,EAX
006c7039  e8628e3400                CALL 0x00a0fea0
006c703e  f30f100508abba00          MOVSS XMM0,dword ptr [0x00baab08]
006c7046  8d9588fdffff              LEA EDX,[EBP + 0xfffffd88]
006c704c  d99d88fdffff              FSTP dword ptr [EBP + 0xfffffd88]
006c7052  f30f5c8588fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffd88]
006c705a  8d8d64fdffff              LEA ECX,[EBP + 0xfffffd64]
006c7060  c78564fdffff00000000      MOV dword ptr [EBP + 0xfffffd64],0x0
006c706a  f30f59856cfdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd6c]
006c7072  f30f5e0508abba00          DIVSS XMM0,dword ptr [0x00baab08]
006c707a  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c7082  e8e95ad5ff                CALL 0x0041cb70
006c7087  8bd0                      MOV EDX,EAX
006c7089  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006c708f  e8ec56d4ff                CALL 0x0040c780
006c7094  50                        PUSH EAX
006c7095  8d8d78fdffff              LEA ECX,[EBP + 0xfffffd78]
006c709b  e8a0943400                CALL 0x00a10540
006c70a0  6a00                      PUSH 0x0
006c70a2  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
006c70a8  8bce                      MOV ECX,ESI
006c70aa  50                        PUSH EAX
006c70ab  e800a4d6ff                CALL 0x004314b0
006c70b0  8bb560fdffff              MOV ESI,dword ptr [EBP + 0xfffffd60]
006c70b6  8b8d4cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd4c]
006c70bc  46                        INC ESI
006c70bd  89b560fdffff              MOV dword ptr [EBP + 0xfffffd60],ESI
006c70c3  e82806d5ff                CALL 0x004176f0
006c70c8  3bf0                      CMP ESI,EAX
006c70ca  0f82d0feffff              JC 0x006c6fa0
006c70d0  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c70d6  83f80c                    CMP EAX,0xc
006c70d9  0f853e020000              JNZ 0x006c731d
006c70df  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c70e6  745e                      JZ 0x006c7146
006c70e8  6683bf740c000000          CMP word ptr [EDI + 0xc74],0x0
006c70f0  7562                      JNZ 0x006c7154
006c70f2  66ff87760c0000            INC word ptr [EDI + 0xc76]
006c70f9  b801000000                MOV EAX,0x1
006c70fe  83bf8401000000            CMP dword ptr [EDI + 0x184],0x0
006c7105  668987740c0000            MOV word ptr [EDI + 0xc74],AX
006c710c  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
006c7113  c7878003000000002041      MOV dword ptr [EDI + 0x380],0x41200000
006c711d  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
006c7124  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
006c712e  750a                      JNZ 0x006c713a
006c7130  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
006c713a  c1a7180f000010            SHL dword ptr [EDI + 0xf18],0x10
006c7141  e9ed0f0000                JMP 0x006c8133
006c7146  6683bf740c000000          CMP word ptr [EDI + 0xc74],0x0
006c714e  0f84df0f0000              JZ 0x006c8133
006c7154  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006c715c  8bcf                      MOV ECX,EDI
006c715e  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006c7166  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c716e  e83decd6ff                CALL 0x00435db0
006c7173  898588fdffff              MOV dword ptr [EBP + 0xfffffd88],EAX
006c7179  85c0                      TEST EAX,EAX
006c717b  0f8eb20f0000              JLE 0x006c8133
006c7181  8bf0                      MOV ESI,EAX
006c7183  0f1f4000                  NOP dword ptr [EAX]
006c7187  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
006c7190  66ff87740c0000            INC word ptr [EDI + 0xc74]
006c7197  668b87740c0000            MOV AX,word ptr [EDI + 0xc74]
006c719e  6683f806                  CMP AX,0x6
006c71a2  0f8cef000000              JL 0x006c7297
006c71a8  6683f850                  CMP AX,0x50
006c71ac  7e0a                      JLE 0x006c71b8
006c71ae  6683f855                  CMP AX,0x55
006c71b2  0f8edf000000              JLE 0x006c7297
006c71b8  6683f80a                  CMP AX,0xa
006c71bc  7c0a                      JL 0x006c71c8
006c71be  6683f855                  CMP AX,0x55
006c71c2  0f8e47010000              JLE 0x006c730f
006c71c8  8bcf                      MOV ECX,EDI
006c71ca  e8d1f5d8ff                CALL 0x004567a0
006c71cf  d80d30a6ba00              FMUL dword ptr [0x00baa630]
006c71d5  51                        PUSH ECX
006c71d6  8bcf                      MOV ECX,EDI
006c71d8  d91c24                    FSTP dword ptr [ESP]
006c71db  e830f40000                CALL 0x006d6610
006c71e0  6683bf740c00005a          CMP word ptr [EDI + 0xc74],0x5a
006c71e8  0f8c21010000              JL 0x006c730f
006c71ee  6a01                      PUSH 0x1
006c71f0  8bcf                      MOV ECX,EDI
006c71f2  e8493dffff                CALL 0x006baf40
006c71f7  33c0                      XOR EAX,EAX
006c71f9  c787640b000001000000      MOV dword ptr [EDI + 0xb64],0x1
006c7203  668987740c0000            MOV word ptr [EDI + 0xc74],AX
006c720a  8b8768030000              MOV EAX,dword ptr [EDI + 0x368]
006c7210  89876c030000              MOV dword ptr [EDI + 0x36c],EAX
006c7216  0fb7871a0f0000            MOVZX EAX,word ptr [EDI + 0xf1a]
006c721d  8987180f0000              MOV dword ptr [EDI + 0xf18],EAX
006c7223  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c7226  83f822                    CMP EAX,0x22
006c7229  744f                      JZ 0x006c727a
006c722b  83f856                    CMP EAX,0x56
006c722e  744a                      JZ 0x006c727a
006c7230  83f836                    CMP EAX,0x36
006c7233  7445                      JZ 0x006c727a
006c7235  3df6000000                CMP EAX,0xf6
006c723a  743e                      JZ 0x006c727a
006c723c  83f81d                    CMP EAX,0x1d
006c723f  7439                      JZ 0x006c727a
006c7241  3d79030000                CMP EAX,0x379
006c7246  7542                      JNZ 0x006c728a
006c7248  6840b6c700                PUSH 0xc7b640
006c724d  8d8f34030000              LEA ECX,[EDI + 0x334]
006c7253  e858611100                CALL 0x007dd3b0
006c7258  6a08                      PUSH 0x8
006c725a  6a11                      PUSH 0x11
006c725c  8bcf                      MOV ECX,EDI
006c725e  e89d01d5ff                CALL 0x00417400
006c7263  8d8f14040000              LEA ECX,[EDI + 0x414]
006c7269  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
006c7270  e8ebbf1100                CALL 0x007e3260
006c7275  e98e000000                JMP 0x006c7308
006c727a  6840b6c700                PUSH 0xc7b640
006c727f  8d8f34030000              LEA ECX,[EDI + 0x334]
006c7285  e826611100                CALL 0x007dd3b0
006c728a  8d8f14040000              LEA ECX,[EDI + 0x414]
006c7290  e8cbbf1100                CALL 0x007e3260
006c7295  eb71                      JMP 0x006c7308
006c7297  8bcf                      MOV ECX,EDI
006c7299  e802f5d8ff                CALL 0x004567a0
006c729e  d80dd0a2ba00              FMUL dword ptr [0x00baa2d0]
006c72a4  51                        PUSH ECX
006c72a5  8bcf                      MOV ECX,EDI
006c72a7  d91c24                    FSTP dword ptr [ESP]
006c72aa  e861f30000                CALL 0x006d6610
006c72af  0fb787740c0000            MOVZX EAX,word ptr [EDI + 0xc74]
006c72b6  6683f805                  CMP AX,0x5
006c72ba  7c53                      JL 0x006c730f
006c72bc  98                        CWDE
006c72bd  2b8588fdffff              SUB EAX,dword ptr [EBP + 0xfffffd88]
006c72c3  83f805                    CMP EAX,0x5
006c72c6  7d47                      JGE 0x006c730f
006c72c8  68bc76b600                PUSH 0xb676bc
006c72cd  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c72d0  e86b50d4ff                CALL 0x0040c340
006c72d5  6a01                      PUSH 0x1
006c72d7  8d45d4                    LEA EAX,[EBP + -0x2c]
006c72da  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
006c72e1  50                        PUSH EAX
006c72e2  8d4f48                    LEA ECX,[EDI + 0x48]
006c72e5  e8664ad4ff                CALL 0x0040bd50
006c72ea  8d4dd4                    LEA ECX,[EBP + -0x2c]
006c72ed  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c72f4  e8274cd4ff                CALL 0x0040bf20
006c72f9  6a01                      PUSH 0x1
006c72fb  68d476b600                PUSH 0xb676d4
006c7300  8d4f48                    LEA ECX,[EDI + 0x48]
006c7303  e87830d4ff                CALL 0x0040a380
006c7308  8b07                      MOV EAX,dword ptr [EDI]
006c730a  8bcf                      MOV ECX,EDI
006c730c  ff5060                    CALL dword ptr [EAX + 0x60]
006c730f  83ee01                    SUB ESI,0x1
006c7312  0f8578feffff              JNZ 0x006c7190
006c7318  e9160e0000                JMP 0x006c8133
006c731d  83f80e                    CMP EAX,0xe
006c7320  0f85e3010000              JNZ 0x006c7509
006c7326  6a01                      PUSH 0x1
006c7328  8d973c030000              LEA EDX,[EDI + 0x33c]
006c732e  8d8d78fdffff              LEA ECX,[EBP + 0xfffffd78]
006c7334  e8d77ffbff                CALL 0x0067f310
006c7339  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c733f  83c404                    ADD ESP,0x4
006c7342  e83901d4ff                CALL 0x00407480
006c7347  8bc8                      MOV ECX,EAX
006c7349  e89210ffff                CALL 0x006b83e0
006c734e  50                        PUSH EAX
006c734f  8d8d78fdffff              LEA ECX,[EBP + 0xfffffd78]
006c7355  e856913400                CALL 0x00a104b0
006c735a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c7360  e81b01d4ff                CALL 0x00407480
006c7365  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c736b  51                        PUSH ECX
006c736c  8bc8                      MOV ECX,EAX
006c736e  e86d04d5ff                CALL 0x004177e0
006c7373  8bc8                      MOV ECX,EAX
006c7375  c745fc08000000            MOV dword ptr [EBP + -0x4],0x8
006c737c  e81f50d4ff                CALL 0x0040c3a0
006c7381  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c7389  8bf8                      MOV EDI,EAX
006c738b  8b0f                      MOV ECX,dword ptr [EDI]
006c738d  8b712c                    MOV ESI,dword ptr [ECX + 0x2c]
006c7390  e80b894200                CALL 0x00aefca0
006c7395  f30f108578fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd78]
006c739d  50                        PUSH EAX
006c739e  e8fd884200                CALL 0x00aefca0
006c73a3  50                        PUSH EAX
006c73a4  8d45b0                    LEA EAX,[EBP + -0x50]
006c73a7  8bcf                      MOV ECX,EDI
006c73a9  50                        PUSH EAX
006c73aa  ffd6                      CALL ESI
006c73ac  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c73b2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c73b9  e85253d5ff                CALL 0x0041c710
006c73be  8bb538fdffff              MOV ESI,dword ptr [EBP + 0xfffffd38]
006c73c4  8bce                      MOV ECX,ESI
006c73c6  e84500d4ff                CALL 0x00407410
006c73cb  50                        PUSH EAX
006c73cc  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
006c73d2  e8e9fdd3ff                CALL 0x004071c0
006c73d7  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
006c73dc  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
006c73e2  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
006c73ea  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c73f2  e8d9fed3ff                CALL 0x004072d0
006c73f7  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
006c73ff  32c9                      XOR CL,CL
006c7401  f30f108d88fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd88]
006c7409  d99d64fdffff              FSTP dword ptr [EBP + 0xfffffd64]
006c740f  f30f108564fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd64]
006c7417  e8a4e13400                CALL 0x00a155c0
006c741c  f30f118550fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM0
006c7424  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
006c742a  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
006c742f  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
006c7437  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c743f  e87cfed3ff                CALL 0x004072c0
006c7444  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
006c744c  32c9                      XOR CL,CL
006c744e  f30f108d88fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd88]
006c7456  d99d64fdffff              FSTP dword ptr [EBP + 0xfffffd64]
006c745c  f30f108564fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd64]
006c7464  e857e13400                CALL 0x00a155c0
006c7469  f30f118538fdffff          MOVSS dword ptr [EBP + 0xfffffd38],XMM0
006c7471  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
006c7477  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
006c747c  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
006c7484  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c748c  e81ffed3ff                CALL 0x004072b0
006c7491  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
006c7499  32c9                      XOR CL,CL
006c749b  f30f108d88fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd88]
006c74a3  d99d64fdffff              FSTP dword ptr [EBP + 0xfffffd64]
006c74a9  f30f108564fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd64]
006c74b1  e80ae13400                CALL 0x00a155c0
006c74b6  f30f108d50fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd50]
006c74be  83ec10                    SUB ESP,0x10
006c74c1  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
006c74c7  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
006c74cd  f30f108d38fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd38]
006c74d5  0f57db                    XORPS XMM3,XMM3
006c74d8  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
006c74de  0f57d2                    XORPS XMM2,XMM2
006c74e1  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
006c74e7  0f57c9                    XORPS XMM1,XMM1
006c74ea  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c74f1  e8ea5bd4ff                CALL 0x0040d0e0
006c74f6  50                        PUSH EAX
006c74f7  8bce                      MOV ECX,ESI
006c74f9  e8d2fed3ff                CALL 0x004073d0
006c74fe  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c7504  e92d0c0000                JMP 0x006c8136
006c7509  83f80f                    CMP EAX,0xf
006c750c  0f8455090000              JZ 0x006c7e67
006c7512  83f810                    CMP EAX,0x10
006c7515  0f844c090000              JZ 0x006c7e67
006c751b  83f814                    CMP EAX,0x14
006c751e  0f8534080000              JNZ 0x006c7d58
006c7524  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c752a  e851ffd3ff                CALL 0x00407480
006c752f  8bc8                      MOV ECX,EAX
006c7531  e8aac71400                CALL 0x00813ce0
006c7536  660f6ec0                  MOVD XMM0,EAX
006c753a  0f5bc0                    CVTDQ2PS XMM0,XMM0
006c753d  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
006c7545  e816fcd4ff                CALL 0x00417160
006c754a  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006c7552  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c755a  0f28d0                    MOVAPS XMM2,XMM0
006c755d  0f57c0                    XORPS XMM0,XMM0
006c7560  e83b7dd6ff                CALL 0x0042f2a0
006c7565  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c756b  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c7573  e808ffd3ff                CALL 0x00407480
006c7578  8bc8                      MOV ECX,EAX
006c757a  e861c71400                CALL 0x00813ce0
006c757f  660f6ec0                  MOVD XMM0,EAX
006c7583  0f5bc0                    CVTDQ2PS XMM0,XMM0
006c7586  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
006c758e  e8cdfbd4ff                CALL 0x00417160
006c7593  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006c759b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c75a3  0f28d0                    MOVAPS XMM2,XMM0
006c75a6  0f57c0                    XORPS XMM0,XMM0
006c75a9  e8f27cd6ff                CALL 0x0042f2a0
006c75ae  8bb7640c0000              MOV ESI,dword ptr [EDI + 0xc64]
006c75b4  51                        PUSH ECX
006c75b5  c1e606                    SHL ESI,0x6
006c75b8  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
006c75be  81c6d454c300              ADD ESI,0xc354d4
006c75c4  f30f110424                MOVSS dword ptr [ESP],XMM0
006c75c9  e8a2fbd3ff                CALL 0x00407170
006c75ce  50                        PUSH EAX
006c75cf  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
006c75d5  56                        PUSH ESI
006c75d6  50                        PUSH EAX
006c75d7  e804bdfbff                CALL 0x006832e0
006c75dc  83c410                    ADD ESP,0x10
006c75df  8d7748                    LEA ESI,[EDI + 0x48]
006c75e2  8bce                      MOV ECX,ESI
006c75e4  50                        PUSH EAX
006c75e5  e8e6fdd3ff                CALL 0x004073d0
006c75ea  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c75f0  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
006c75f6  c1e006                    SHL EAX,0x6
006c75f9  05c054c300                ADD EAX,0xc354c0
006c75fe  50                        PUSH EAX
006c75ff  e89c00d8ff                CALL 0x004476a0
006c7604  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
006c760a  e851fcd3ff                CALL 0x00407260
006c760f  d99d64fdffff              FSTP dword ptr [EBP + 0xfffffd64]
006c7615  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
006c761b  e830fcd3ff                CALL 0x00407250
006c7620  d99d50fdffff              FSTP dword ptr [EBP + 0xfffffd50]
006c7626  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
006c762c  e80ffcd3ff                CALL 0x00407240
006c7631  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006c7639  f30f5c8588fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffd88]
006c7641  f30f109d64fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd64]
006c7649  f30f109550fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd50]
006c7651  51                        PUSH ECX
006c7652  d99d38fdffff              FSTP dword ptr [EBP + 0xfffffd38]
006c7658  f30f108d38fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd38]
006c7660  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
006c7666  f30f110424                MOVSS dword ptr [ESP],XMM0
006c766b  e880c2d5ff                CALL 0x004238f0
006c7670  50                        PUSH EAX
006c7671  8bce                      MOV ECX,ESI
006c7673  e8380cffff                CALL 0x006b82b0
006c7678  ff7720                    PUSH dword ptr [EDI + 0x20]
006c767b  8bcf                      MOV ECX,EDI
006c767d  6a1e                      PUSH 0x1e
006c767f  e88c50feff                CALL 0x006ac710
006c7684  84c0                      TEST AL,AL
006c7686  0f84aa0a0000              JZ 0x006c8136
006c768c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c7692  e8e9fdd3ff                CALL 0x00407480
006c7697  8bc8                      MOV ECX,EAX
006c7699  e8b213d6ff                CALL 0x00428a50
006c769e  32c9                      XOR CL,CL
006c76a0  898580fdffff              MOV dword ptr [EBP + 0xfffffd80],EAX
006c76a6  888d8ffdffff              MOV byte ptr [EBP + 0xfffffd8f],CL
006c76ac  33f6                      XOR ESI,ESI
006c76ae  8bc8                      MOV ECX,EAX
006c76b0  89b570fdffff              MOV dword ptr [EBP + 0xfffffd70],ESI
006c76b6  e83500d5ff                CALL 0x004176f0
006c76bb  85c0                      TEST EAX,EAX
006c76bd  0f84700a0000              JZ 0x006c8133
006c76c3  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c76c9  56                        PUSH ESI
006c76ca  e851ffd4ff                CALL 0x00417620
006c76cf  6a00                      PUSH 0x0
006c76d1  8b08                      MOV ECX,dword ptr [EAX]
006c76d3  e8b8e4feff                CALL 0x006b5b90
006c76d8  84c0                      TEST AL,AL
006c76da  0f84b9050000              JZ 0x006c7c99
006c76e0  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c76e6  56                        PUSH ESI
006c76e7  e834ffd4ff                CALL 0x00417620
006c76ec  3938                      CMP dword ptr [EAX],EDI
006c76ee  0f84a5050000              JZ 0x006c7c99
006c76f4  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c76fa  56                        PUSH ESI
006c76fb  e820ffd4ff                CALL 0x00417620
006c7700  6a00                      PUSH 0x0
006c7702  6800010020                PUSH 0x20000100
006c7707  8bcf                      MOV ECX,EDI
006c7709  8b30                      MOV ESI,dword ptr [EAX]
006c770b  e820fdd4ff                CALL 0x00417430
006c7710  6a00                      PUSH 0x0
006c7712  6800000020                PUSH 0x20000000
006c7717  8bce                      MOV ECX,ESI
006c7719  88856bfdffff              MOV byte ptr [EBP + 0xfffffd6b],AL
006c771f  e80cfdd4ff                CALL 0x00417430
006c7724  8bb570fdffff              MOV ESI,dword ptr [EBP + 0xfffffd70]
006c772a  3a856bfdffff              CMP AL,byte ptr [EBP + 0xfffffd6b]
006c7730  0f8563050000              JNZ 0x006c7c99
006c7736  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c773c  56                        PUSH ESI
006c773d  e8defed4ff                CALL 0x00417620
006c7742  6a00                      PUSH 0x0
006c7744  68acd6c500                PUSH 0xc5d6ac
006c7749  68dcd5c500                PUSH 0xc5d5dc
006c774e  6a00                      PUSH 0x0
006c7750  ff30                      PUSH dword ptr [EAX]
006c7752  e85a914200                CALL 0x00af08b1
006c7757  83c414                    ADD ESP,0x14
006c775a  83b8640c000014            CMP dword ptr [EAX + 0xc64],0x14
006c7761  0f8432050000              JZ 0x006c7c99
006c7767  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c776d  56                        PUSH ESI
006c776e  e8adfed4ff                CALL 0x00417620
006c7773  8b08                      MOV ECX,dword ptr [EAX]
006c7775  e8f6fbd4ff                CALL 0x00417370
006c777a  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c7780  56                        PUSH ESI
006c7781  d99d64fdffff              FSTP dword ptr [EBP + 0xfffffd64]
006c7787  e894fed4ff                CALL 0x00417620
006c778c  8b08                      MOV ECX,dword ptr [EAX]
006c778e  e8cdfbd4ff                CALL 0x00417360
006c7793  d99d88fdffff              FSTP dword ptr [EBP + 0xfffffd88]
006c7799  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
006c77a1  0f2f8564fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd64]
006c77a8  0f86eb040000              JBE 0x006c7c99
006c77ae  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c77b4  56                        PUSH ESI
006c77b5  e866fed4ff                CALL 0x00417620
006c77ba  6aff                      PUSH -0x1
006c77bc  6aff                      PUSH -0x1
006c77be  6825030000                PUSH 0x325
006c77c3  8b08                      MOV ECX,dword ptr [EAX]
006c77c5  e856fad4ff                CALL 0x00417220
006c77ca  84c0                      TEST AL,AL
006c77cc  0f85c7040000              JNZ 0x006c7c99
006c77d2  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c77d8  56                        PUSH ESI
006c77d9  e842fed4ff                CALL 0x00417620
006c77de  ffb570fdffff              PUSH dword ptr [EBP + 0xfffffd70]
006c77e4  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c77ea  8b30                      MOV ESI,dword ptr [EAX]
006c77ec  e82ffed4ff                CALL 0x00417620
006c77f1  8b08                      MOV ECX,dword ptr [EAX]
006c77f3  e878fbd4ff                CALL 0x00417370
006c77f8  d8057ca8ba00              FADD dword ptr [0x00baa87c]
006c77fe  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c7804  ffb570fdffff              PUSH dword ptr [EBP + 0xfffffd70]
006c780a  d99d50fdffff              FSTP dword ptr [EBP + 0xfffffd50]
006c7810  e80bfed4ff                CALL 0x00417620
006c7815  8b08                      MOV ECX,dword ptr [EAX]
006c7817  e844fbd4ff                CALL 0x00417360
006c781c  8d9550fdffff              LEA EDX,[EBP + 0xfffffd50]
006c7822  8d8d38fdffff              LEA ECX,[EBP + 0xfffffd38]
006c7828  d99d38fdffff              FSTP dword ptr [EBP + 0xfffffd38]
006c782e  e84d4fd4ff                CALL 0x0040c780
006c7833  51                        PUSH ECX
006c7834  8bce                      MOV ECX,ESI
006c7836  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006c783a  f30f110424                MOVSS dword ptr [ESP],XMM0
006c783f  e8dce4d6ff                CALL 0x00435d20
006c7844  e817770200                CALL 0x006eef60
006c7849  ffb570fdffff              PUSH dword ptr [EBP + 0xfffffd70]
006c784f  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c7855  8bf0                      MOV ESI,EAX
006c7857  e8c4fdd4ff                CALL 0x00417620
006c785c  8d8da4fcffff              LEA ECX,[EBP + 0xfffffca4]
006c7862  51                        PUSH ECX
006c7863  8b08                      MOV ECX,dword ptr [EAX]
006c7865  e826fad4ff                CALL 0x00417290
006c786a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c7870  6a00                      PUSH 0x0
006c7872  68acd5c500                PUSH 0xc5d5ac
006c7877  68dcd5c500                PUSH 0xc5d5dc
006c787c  6a00                      PUSH 0x0
006c787e  56                        PUSH ESI
006c787f  6a00                      PUSH 0x0
006c7881  6a00                      PUSH 0x0
006c7883  6840b6c700                PUSH 0xc7b640
006c7888  50                        PUSH EAX
006c7889  6a31                      PUSH 0x31
006c788b  68e8030000                PUSH 0x3e8
006c7890  e88b12d6ff                CALL 0x00428b20
006c7895  50                        PUSH EAX
006c7896  e816904200                CALL 0x00af08b1
006c789b  8bb570fdffff              MOV ESI,dword ptr [EBP + 0xfffffd70]
006c78a1  83c414                    ADD ESP,0x14
006c78a4  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c78aa  56                        PUSH ESI
006c78ab  e870fdd4ff                CALL 0x00417620
006c78b0  8d8d9cfcffff              LEA ECX,[EBP + 0xfffffc9c]
006c78b6  51                        PUSH ECX
006c78b7  8b08                      MOV ECX,dword ptr [EAX]
006c78b9  e8d2f9d4ff                CALL 0x00417290
006c78be  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c78c4  51                        PUSH ECX
006c78c5  898d6cfdffff              MOV dword ptr [EBP + 0xfffffd6c],ECX
006c78cb  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c78d1  51                        PUSH ECX
006c78d2  8bc8                      MOV ECX,EAX
006c78d4  e8a78b3400                CALL 0x00a10480
006c78d9  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
006c78df  c78588fdffffcdcccc3d      MOV dword ptr [EBP + 0xfffffd88],0x3dcccccd
006c78e9  50                        PUSH EAX
006c78ea  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006c78f0  50                        PUSH EAX
006c78f1  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c78f7  e8e48b3400                CALL 0x00a104e0
006c78fc  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c7902  e899853400                CALL 0x00a0fea0
006c7907  d99d88fdffff              FSTP dword ptr [EBP + 0xfffffd88]
006c790d  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
006c7915  0f2f055ca7ba00            COMISS XMM0,dword ptr [0x00baa75c]
006c791c  7613                      JBE 0x006c7931
006c791e  51                        PUSH ECX
006c791f  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c7925  c7042400008040            MOV dword ptr [ESP],0x40800000
006c792c  e87f873400                CALL 0x00a100b0
006c7931  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c7937  c7854cfdffff0c000000      MOV dword ptr [EBP + 0xfffffd4c],0xc
006c7941  c78564fdffff04000000      MOV dword ptr [EBP + 0xfffffd64],0x4
006c794b  e850853400                CALL 0x00a0fea0
006c7950  d8357ca8ba00              FDIV dword ptr [0x00baa87c]
006c7956  d99d88fdffff              FSTP dword ptr [EBP + 0xfffffd88]
006c795c  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
006c7964  e8d7f7d3ff                CALL 0x00407140
006c7969  f30f2cc0                  CVTTSS2SI EAX,XMM0
006c796d  8d9564fdffff              LEA EDX,[EBP + 0xfffffd64]
006c7973  8d8d60fdffff              LEA ECX,[EBP + 0xfffffd60]
006c7979  898560fdffff              MOV dword ptr [EBP + 0xfffffd60],EAX
006c797f  e8fc51d5ff                CALL 0x0041cb80
006c7984  8d954cfdffff              LEA EDX,[EBP + 0xfffffd4c]
006c798a  8bc8                      MOV ECX,EAX
006c798c  e8cf51d5ff                CALL 0x0041cb60
006c7991  33c9                      XOR ECX,ECX
006c7993  8b00                      MOV EAX,dword ptr [EAX]
006c7995  89855cfdffff              MOV dword ptr [EBP + 0xfffffd5c],EAX
006c799b  85c0                      TEST EAX,EAX
006c799d  0f8e62020000              JLE 0x006c7c05
006c79a3  40                        INC EAX
006c79a4  660f6ec8                  MOVD XMM1,EAX
006c79a8  8d874c030000              LEA EAX,[EDI + 0x34c]
006c79ae  0f5bc9                    CVTDQ2PS XMM1,XMM1
006c79b1  89854cfdffff              MOV dword ptr [EBP + 0xfffffd4c],EAX
006c79b7  f30f118d7cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM1
006c79bf  90                        NOP
006c79c0  41                        INC ECX
006c79c1  898d24fdffff              MOV dword ptr [EBP + 0xfffffd24],ECX
006c79c7  56                        PUSH ESI
006c79c8  660f6ec1                  MOVD XMM0,ECX
006c79cc  0f5bc0                    CVTDQ2PS XMM0,XMM0
006c79cf  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c79d5  f30f5ec1                  DIVSS XMM0,XMM1
006c79d9  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c79e1  f30f118564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM0
006c79e9  e832fcd4ff                CALL 0x00417620
006c79ee  8d8dccfcffff              LEA ECX,[EBP + 0xfffffccc]
006c79f4  51                        PUSH ECX
006c79f5  8b08                      MOV ECX,dword ptr [EAX]
006c79f7  e894f8d4ff                CALL 0x00417290
006c79fc  f30f109d88fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd88]
006c7a04  8d8dc4fcffff              LEA ECX,[EBP + 0xfffffcc4]
006c7a0a  8b956cfdffff              MOV EDX,dword ptr [EBP + 0xfffffd6c]
006c7a10  6a00                      PUSH 0x0
006c7a12  50                        PUSH EAX
006c7a13  e8a8873400                CALL 0x00a101c0
006c7a18  8bf8                      MOV EDI,EAX
006c7a1a  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
006c7a20  50                        PUSH EAX
006c7a21  e84a76fbff                CALL 0x0067f070
006c7a26  83c40c                    ADD ESP,0xc
006c7a29  8bf0                      MOV ESI,EAX
006c7a2b  e8b075fbff                CALL 0x0067efe0
006c7a30  8d85ecfcffff              LEA EAX,[EBP + 0xfffffcec]
006c7a36  f30f1185ecfcffff          MOVSS dword ptr [EBP + 0xfffffcec],XMM0
006c7a3e  50                        PUSH EAX
006c7a3f  8d85b4fcffff              LEA EAX,[EBP + 0xfffffcb4]
006c7a45  8bce                      MOV ECX,ESI
006c7a47  50                        PUSH EAX
006c7a48  e8938a3400                CALL 0x00a104e0
006c7a4d  8d8dd8fcffff              LEA ECX,[EBP + 0xfffffcd8]
006c7a53  c785d8fcffff00007041      MOV dword ptr [EBP + 0xfffffcd8],0x41700000
006c7a5d  51                        PUSH ECX
006c7a5e  8d8dacfcffff              LEA ECX,[EBP + 0xfffffcac]
006c7a64  51                        PUSH ECX
006c7a65  8bc8                      MOV ECX,EAX
006c7a67  e8748a3400                CALL 0x00a104e0
006c7a6c  50                        PUSH EAX
006c7a6d  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c7a73  8bcf                      MOV ECX,EDI
006c7a75  50                        PUSH EAX
006c7a76  e8a5893400                CALL 0x00a10420
006c7a7b  e8e0740200                CALL 0x006eef60
006c7a80  8bf0                      MOV ESI,EAX
006c7a82  e85975fbff                CALL 0x0067efe0
006c7a87  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006c7a8f  8d85f4fcffff              LEA EAX,[EBP + 0xfffffcf4]
006c7a95  50                        PUSH EAX
006c7a96  8d85e4fcffff              LEA EAX,[EBP + 0xfffffce4]
006c7a9c  50                        PUSH EAX
006c7a9d  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006c7aa5  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c7aab  f30f1185f4fcffff          MOVSS dword ptr [EBP + 0xfffffcf4],XMM0
006c7ab3  e8288a3400                CALL 0x00a104e0
006c7ab8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c7abe  56                        PUSH ESI
006c7abf  6a00                      PUSH 0x0
006c7ac1  6a00                      PUSH 0x0
006c7ac3  50                        PUSH EAX
006c7ac4  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c7aca  50                        PUSH EAX
006c7acb  6a6f                      PUSH 0x6f
006c7acd  68e8030000                PUSH 0x3e8
006c7ad2  e84910d6ff                CALL 0x00428b20
006c7ad7  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006c7adf  83ec20                    SUB ESP,0x20
006c7ae2  8bf8                      MOV EDI,EAX
006c7ae4  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
006c7aec  8b0f                      MOV ECX,dword ptr [EDI]
006c7aee  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
006c7af6  c74424149a99993e          MOV dword ptr [ESP + 0x14],0x3e99999a
006c7afe  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006c7b06  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
006c7b09  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006c7b11  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006c7b19  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006c7b21  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c7b28  0f28d8                    MOVAPS XMM3,XMM0
006c7b2b  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
006c7b31  0f28d0                    MOVAPS XMM2,XMM0
006c7b34  0f28c8                    MOVAPS XMM1,XMM0
006c7b37  e814e0d6ff                CALL 0x00435b50
006c7b3c  6a01                      PUSH 0x1
006c7b3e  6a00                      PUSH 0x0
006c7b40  68ff000000                PUSH 0xff
006c7b45  6aff                      PUSH -0x1
006c7b47  50                        PUSH EAX
006c7b48  8bcf                      MOV ECX,EDI
006c7b4a  ffd6                      CALL ESI
006c7b4c  8d8564fdffff              LEA EAX,[EBP + 0xfffffd64]
006c7b52  b93c79c300                MOV ECX,0xc3793c
006c7b57  50                        PUSH EAX
006c7b58  8d85dcfcffff              LEA EAX,[EBP + 0xfffffcdc]
006c7b5e  50                        PUSH EAX
006c7b5f  e87c893400                CALL 0x00a104e0
006c7b64  8bf0                      MOV ESI,EAX
006c7b66  e87574fbff                CALL 0x0067efe0
006c7b6b  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
006c7b73  8d850cfdffff              LEA EAX,[EBP + 0xfffffd0c]
006c7b79  50                        PUSH EAX
006c7b7a  8d8500fdffff              LEA EAX,[EBP + 0xfffffd00]
006c7b80  8bce                      MOV ECX,ESI
006c7b82  50                        PUSH EAX
006c7b83  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
006c7b8b  f30f11850cfdffff          MOVSS dword ptr [EBP + 0xfffffd0c],XMM0
006c7b93  e848893400                CALL 0x00a104e0
006c7b98  50                        PUSH EAX
006c7b99  8bcf                      MOV ECX,EDI
006c7b9b  e8105ed6ff                CALL 0x0042d9b0
006c7ba0  8b8d54fdffff              MOV ECX,dword ptr [EBP + 0xfffffd54]
006c7ba6  e825e2d6ff                CALL 0x00435dd0
006c7bab  8bc8                      MOV ECX,EAX
006c7bad  e84ef6d4ff                CALL 0x00417200
006c7bb2  0f57c9                    XORPS XMM1,XMM1
006c7bb5  8d8d18fdffff              LEA ECX,[EBP + 0xfffffd18]
006c7bbb  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
006c7bc0  f30f5915dcadba00          MULSS XMM2,dword ptr [0x00baaddc]
006c7bc8  e8c3823400                CALL 0x00a0fe90
006c7bcd  8b8d4cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd4c]
006c7bd3  50                        PUSH EAX
006c7bd4  8d45bc                    LEA EAX,[EBP + -0x44]
006c7bd7  50                        PUSH EAX
006c7bd8  e843883400                CALL 0x00a10420
006c7bdd  50                        PUSH EAX
006c7bde  8bcf                      MOV ECX,EDI
006c7be0  e80bf7d4ff                CALL 0x004172f0
006c7be5  8b8d24fdffff              MOV ECX,dword ptr [EBP + 0xfffffd24]
006c7beb  f30f108d7cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd7c]
006c7bf3  8bb570fdffff              MOV ESI,dword ptr [EBP + 0xfffffd70]
006c7bf9  3b8d5cfdffff              CMP ECX,dword ptr [EBP + 0xfffffd5c]
006c7bff  0f8cbbfdffff              JL 0x006c79c0
006c7c05  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c7c0b  56                        PUSH ESI
006c7c0c  c6858ffdffff01            MOV byte ptr [EBP + 0xfffffd8f],0x1
006c7c13  e808fad4ff                CALL 0x00417620
006c7c18  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
006c7c20  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
006c7c26  83ec20                    SUB ESP,0x20
006c7c29  0f28d8                    MOVAPS XMM3,XMM0
006c7c2c  0f28d0                    MOVAPS XMM2,XMM0
006c7c2f  0f28c8                    MOVAPS XMM1,XMM0
006c7c32  8b38                      MOV EDI,dword ptr [EAX]
006c7c34  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
006c7c3c  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
006c7c44  8b07                      MOV EAX,dword ptr [EDI]
006c7c46  c74424143333333f          MOV dword ptr [ESP + 0x14],0x3f333333
006c7c4e  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006c7c56  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006c7c5e  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c7c61  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006c7c69  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006c7c71  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c7c78  e8d3ded6ff                CALL 0x00435b50
006c7c7d  6a01                      PUSH 0x1
006c7c7f  6a01                      PUSH 0x1
006c7c81  68ff000000                PUSH 0xff
006c7c86  6a08                      PUSH 0x8
006c7c88  50                        PUSH EAX
006c7c89  8bcf                      MOV ECX,EDI
006c7c8b  ffd6                      CALL ESI
006c7c8d  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c7c93  8bb570fdffff              MOV ESI,dword ptr [EBP + 0xfffffd70]
006c7c99  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c7c9f  46                        INC ESI
006c7ca0  89b570fdffff              MOV dword ptr [EBP + 0xfffffd70],ESI
006c7ca6  e845fad4ff                CALL 0x004176f0
006c7cab  3bf0                      CMP ESI,EAX
006c7cad  0f8210faffff              JC 0x006c76c3
006c7cb3  80bd8ffdffff00            CMP byte ptr [EBP + 0xfffffd8f],0x0
006c7cba  0f8473040000              JZ 0x006c8133
006c7cc0  8b07                      MOV EAX,dword ptr [EDI]
006c7cc2  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
006c7cc8  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
006c7cd0  83ec20                    SUB ESP,0x20
006c7cd3  0f28d8                    MOVAPS XMM3,XMM0
006c7cd6  0f28d0                    MOVAPS XMM2,XMM0
006c7cd9  0f28c8                    MOVAPS XMM1,XMM0
006c7cdc  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c7cdf  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
006c7ce7  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
006c7cef  c74424143333333f          MOV dword ptr [ESP + 0x14],0x3f333333
006c7cf7  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006c7cff  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006c7d07  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006c7d0f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006c7d17  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c7d1e  e82dded6ff                CALL 0x00435b50
006c7d23  6a01                      PUSH 0x1
006c7d25  6a01                      PUSH 0x1
006c7d27  68ff000000                PUSH 0xff
006c7d2c  6a08                      PUSH 0x8
006c7d2e  50                        PUSH EAX
006c7d2f  8bcf                      MOV ECX,EDI
006c7d31  ffd6                      CALL ESI
006c7d33  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c7d3b  51                        PUSH ECX
006c7d3c  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c7d43  8bcf                      MOV ECX,EDI
006c7d45  6a00                      PUSH 0x0
006c7d47  6a02                      PUSH 0x2
006c7d49  689d000000                PUSH 0x9d
006c7d4e  e81de7feff                CALL 0x006b6470
006c7d53  e9db030000                JMP 0x006c8133
006c7d58  83f816                    CMP EAX,0x16
006c7d5b  0f85e3000000              JNZ 0x006c7e44
006c7d61  ff7720                    PUSH dword ptr [EDI + 0x20]
006c7d64  8bcf                      MOV ECX,EDI
006c7d66  6a1e                      PUSH 0x1e
006c7d68  e8a349feff                CALL 0x006ac710
006c7d6d  84c0                      TEST AL,AL
006c7d6f  0f84be030000              JZ 0x006c8133
006c7d75  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c7d7b  e800f7d3ff                CALL 0x00407480
006c7d80  8bc8                      MOV ECX,EAX
006c7d82  e8c90cd6ff                CALL 0x00428a50
006c7d87  8bc8                      MOV ECX,EAX
006c7d89  898570fdffff              MOV dword ptr [EBP + 0xfffffd70],EAX
006c7d8f  33f6                      XOR ESI,ESI
006c7d91  e85af9d4ff                CALL 0x004176f0
006c7d96  85c0                      TEST EAX,EAX
006c7d98  0f8495030000              JZ 0x006c8133
006c7d9e  6690                      NOP
006c7da0  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c7da6  56                        PUSH ESI
006c7da7  e874f8d4ff                CALL 0x00417620
006c7dac  6a00                      PUSH 0x0
006c7dae  8b08                      MOV ECX,dword ptr [EAX]
006c7db0  e8dbddfeff                CALL 0x006b5b90
006c7db5  84c0                      TEST AL,AL
006c7db7  7472                      JZ 0x006c7e2b
006c7db9  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c7dbf  56                        PUSH ESI
006c7dc0  e85bf8d4ff                CALL 0x00417620
006c7dc5  8b08                      MOV ECX,dword ptr [EAX]
006c7dc7  8b01                      MOV EAX,dword ptr [ECX]
006c7dc9  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006c7dcc  ffd0                      CALL EAX
006c7dce  84c0                      TEST AL,AL
006c7dd0  7559                      JNZ 0x006c7e2b
006c7dd2  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c7dd8  56                        PUSH ESI
006c7dd9  e842f8d4ff                CALL 0x00417620
006c7dde  3938                      CMP dword ptr [EAX],EDI
006c7de0  7449                      JZ 0x006c7e2b
006c7de2  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c7de8  56                        PUSH ESI
006c7de9  e832f8d4ff                CALL 0x00417620
006c7dee  6a00                      PUSH 0x0
006c7df0  68acd6c500                PUSH 0xc5d6ac
006c7df5  68dcd5c500                PUSH 0xc5d5dc
006c7dfa  6a00                      PUSH 0x0
006c7dfc  ff30                      PUSH dword ptr [EAX]
006c7dfe  e8ae8a4200                CALL 0x00af08b1
006c7e03  8bc8                      MOV ECX,EAX
006c7e05  83c414                    ADD ESP,0x14
006c7e08  85c9                      TEST ECX,ECX
006c7e0a  741f                      JZ 0x006c7e2b
006c7e0c  80b9630c000000            CMP byte ptr [ECX + 0xc63],0x0
006c7e13  7516                      JNZ 0x006c7e2b
006c7e15  8b01                      MOV EAX,dword ptr [ECX]
006c7e17  c681630c000001            MOV byte ptr [ECX + 0xc63],0x1
006c7e1e  c781640c000001000000      MOV dword ptr [ECX + 0xc64],0x1
006c7e28  ff5060                    CALL dword ptr [EAX + 0x60]
006c7e2b  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c7e31  46                        INC ESI
006c7e32  e8b9f8d4ff                CALL 0x004176f0
006c7e37  3bf0                      CMP ESI,EAX
006c7e39  0f8261ffffff              JC 0x006c7da0
006c7e3f  e9ef020000                JMP 0x006c8133
006c7e44  83f815                    CMP EAX,0x15
006c7e47  0f85e6020000              JNZ 0x006c8133
006c7e4d  8b87a80b0000              MOV EAX,dword ptr [EDI + 0xba8]
006c7e53  85c0                      TEST EAX,EAX
006c7e55  0f8ed8020000              JLE 0x006c8133
006c7e5b  48                        DEC EAX
006c7e5c  8987a80b0000              MOV dword ptr [EDI + 0xba8],EAX
006c7e62  e9cc020000                JMP 0x006c8133
006c7e67  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c7e6d  e80ef6d3ff                CALL 0x00407480
006c7e72  8bc8                      MOV ECX,EAX
006c7e74  e867be1400                CALL 0x00813ce0
006c7e79  660f6ec0                  MOVD XMM0,EAX
006c7e7d  0f5bc0                    CVTDQ2PS XMM0,XMM0
006c7e80  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
006c7e88  e8d3f2d4ff                CALL 0x00417160
006c7e8d  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006c7e95  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c7e9d  0f28d0                    MOVAPS XMM2,XMM0
006c7ea0  0f57c0                    XORPS XMM0,XMM0
006c7ea3  e8f873d6ff                CALL 0x0042f2a0
006c7ea8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c7eae  f30f118560fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM0
006c7eb6  e8c5f5d3ff                CALL 0x00407480
006c7ebb  8bc8                      MOV ECX,EAX
006c7ebd  e81ebe1400                CALL 0x00813ce0
006c7ec2  660f6ec0                  MOVD XMM0,EAX
006c7ec6  0f5bc0                    CVTDQ2PS XMM0,XMM0
006c7ec9  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
006c7ed1  e88af2d4ff                CALL 0x00417160
006c7ed6  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006c7ede  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c7ee6  0f28d0                    MOVAPS XMM2,XMM0
006c7ee9  0f57c0                    XORPS XMM0,XMM0
006c7eec  e8af73d6ff                CALL 0x0042f2a0
006c7ef1  8bb7640c0000              MOV ESI,dword ptr [EDI + 0xc64]
006c7ef7  51                        PUSH ECX
006c7ef8  c1e606                    SHL ESI,0x6
006c7efb  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
006c7f01  81c6d454c300              ADD ESI,0xc354d4
006c7f07  f30f110424                MOVSS dword ptr [ESP],XMM0
006c7f0c  e85ff2d3ff                CALL 0x00407170
006c7f11  50                        PUSH EAX
006c7f12  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
006c7f18  56                        PUSH ESI
006c7f19  50                        PUSH EAX
006c7f1a  e8c1b3fbff                CALL 0x006832e0
006c7f1f  83c410                    ADD ESP,0x10
006c7f22  8d7748                    LEA ESI,[EDI + 0x48]
006c7f25  8bce                      MOV ECX,ESI
006c7f27  50                        PUSH EAX
006c7f28  e8a3f4d3ff                CALL 0x004073d0
006c7f2d  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
006c7f33  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
006c7f39  c1e006                    SHL EAX,0x6
006c7f3c  05c054c300                ADD EAX,0xc354c0
006c7f41  50                        PUSH EAX
006c7f42  e859f7d7ff                CALL 0x004476a0
006c7f47  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
006c7f4d  e80ef3d3ff                CALL 0x00407260
006c7f52  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006c7f58  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
006c7f5e  e8edf2d3ff                CALL 0x00407250
006c7f63  d99d5cfdffff              FSTP dword ptr [EBP + 0xfffffd5c]
006c7f69  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
006c7f6f  e8ccf2d3ff                CALL 0x00407240
006c7f74  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006c7f7c  f30f5c8560fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffd60]
006c7f84  f30f109d7cfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd7c]
006c7f8c  f30f10955cfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd5c]
006c7f94  51                        PUSH ECX
006c7f95  d99d24fdffff              FSTP dword ptr [EBP + 0xfffffd24]
006c7f9b  f30f108d24fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd24]
006c7fa3  8d8dbcfdffff              LEA ECX,[EBP + 0xfffffdbc]
006c7fa9  f30f110424                MOVSS dword ptr [ESP],XMM0
006c7fae  e83db9d5ff                CALL 0x004238f0
006c7fb3  50                        PUSH EAX
006c7fb4  8bce                      MOV ECX,ESI
006c7fb6  e8f502ffff                CALL 0x006b82b0
006c7fbb  83bf640c000010            CMP dword ptr [EDI + 0xc64],0x10
006c7fc2  0f856e010000              JNZ 0x006c8136
006c7fc8  f30f101580a2ba00          MOVSS XMM2,dword ptr [0x00baa280]
006c7fd0  f30f108560fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd60]
006c7fd8  0f2fd0                    COMISS XMM2,XMM0
006c7fdb  0f8655010000              JBE 0x006c8136
006c7fe1  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006c7fe9  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
006c7ff1  51                        PUSH ECX
006c7ff2  b101                      MOV CL,0x1
006c7ff4  c7042400000000            MOV dword ptr [ESP],0x0
006c7ffb  e840d63400                CALL 0x00a15640
006c8000  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8006  83c404                    ADD ESP,0x4
006c8009  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
006c8011  e86af4d3ff                CALL 0x00407480
006c8016  8bc8                      MOV ECX,EAX
006c8018  e8430ad6ff                CALL 0x00428a60
006c801d  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
006c8025  8db73c030000              LEA ESI,[EDI + 0x33c]
006c802b  6a04                      PUSH 0x4
006c802d  56                        PUSH ESI
006c802e  8d8df8fcffff              LEA ECX,[EBP + 0xfffffcf8]
006c8034  89b524fdffff              MOV dword ptr [EBP + 0xfffffd24],ESI
006c803a  51                        PUSH ECX
006c803b  8bc8                      MOV ECX,EAX
006c803d  e84e27d5ff                CALL 0x0041a790
006c8042  8d8df8fcffff              LEA ECX,[EBP + 0xfffffcf8]
006c8048  c745fc09000000            MOV dword ptr [EBP + -0x4],0x9
006c804f  e89cf6d4ff                CALL 0x004176f0
006c8054  85c0                      TEST EAX,EAX
006c8056  0f84c5000000              JZ 0x006c8121
006c805c  33ff                      XOR EDI,EDI
006c805e  6690                      NOP
006c8060  57                        PUSH EDI
006c8061  8d8df8fcffff              LEA ECX,[EBP + 0xfffffcf8]
006c8067  e8b4f5d4ff                CALL 0x00417620
006c806c  8b08                      MOV ECX,dword ptr [EAX]
006c806e  e8edf1d4ff                CALL 0x00417260
006c8073  83f802                    CMP EAX,0x2
006c8076  0f858b000000              JNZ 0x006c8107
006c807c  57                        PUSH EDI
006c807d  8d8df8fcffff              LEA ECX,[EBP + 0xfffffcf8]
006c8083  e898f5d4ff                CALL 0x00417620
006c8088  8d4dbc                    LEA ECX,[EBP + -0x44]
006c808b  51                        PUSH ECX
006c808c  8b08                      MOV ECX,dword ptr [EAX]
006c808e  e8fdf1d4ff                CALL 0x00417290
006c8093  56                        PUSH ESI
006c8094  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c809a  51                        PUSH ECX
006c809b  8bc8                      MOV ECX,EAX
006c809d  e8de833400                CALL 0x00a10480
006c80a2  57                        PUSH EDI
006c80a3  8d8df8fcffff              LEA ECX,[EBP + 0xfffffcf8]
006c80a9  e872f5d4ff                CALL 0x00417620
006c80ae  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c80b4  8b30                      MOV ESI,dword ptr [EAX]
006c80b6  e8157e3400                CALL 0x00a0fed0
006c80bb  d83534acba00              FDIV dword ptr [0x00baac34]
006c80c1  8d8518fdffff              LEA EAX,[EBP + 0xfffffd18]
006c80c7  51                        PUSH ECX
006c80c8  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c80ce  d9e8                      FLD1
006c80d0  dee1                      FSUBRP
006c80d2  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006c80d8  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c80e0  f30f58c0                  ADDSS XMM0,XMM0
006c80e4  f30f59855cfdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd5c]
006c80ec  f30f110424                MOVSS dword ptr [ESP],XMM0
006c80f1  50                        PUSH EAX
006c80f2  e809803400                CALL 0x00a10100
006c80f7  6a00                      PUSH 0x0
006c80f9  50                        PUSH EAX
006c80fa  8bce                      MOV ECX,ESI
006c80fc  e8af93d6ff                CALL 0x004314b0
006c8101  8bb524fdffff              MOV ESI,dword ptr [EBP + 0xfffffd24]
006c8107  8d8df8fcffff              LEA ECX,[EBP + 0xfffffcf8]
006c810d  47                        INC EDI
006c810e  e8ddf5d4ff                CALL 0x004176f0
006c8113  3bf8                      CMP EDI,EAX
006c8115  0f8245ffffff              JC 0x006c8060
006c811b  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c8121  8d8df8fcffff              LEA ECX,[EBP + 0xfffffcf8]
006c8127  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c812e  e87df4d4ff                CALL 0x004175b0
006c8133  8d7748                    LEA ESI,[EDI + 0x48]
006c8136  83bf640c000019            CMP dword ptr [EDI + 0xc64],0x19
006c813d  7575                      JNZ 0x006c81b4
006c813f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8145  e836f3d3ff                CALL 0x00407480
006c814a  8bc8                      MOV ECX,EAX
006c814c  e88fbb1400                CALL 0x00813ce0
006c8151  b95a000000                MOV ECX,0x5a
006c8156  99                        CDQ
006c8157  f7f9                      IDIV ECX
006c8159  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006c8161  51                        PUSH ECX
006c8162  0f28d3                    MOVAPS XMM2,XMM3
006c8165  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c816c  8d4dd8                    LEA ECX,[EBP + -0x28]
006c816f  660f6eca                  MOVD XMM1,EDX
006c8173  0f5bc9                    CVTDQ2PS XMM1,XMM1
006c8176  f30f590d30abba00          MULSS XMM1,dword ptr [0x00baab30]
006c817e  f30f5e0db4a9ba00          DIVSS XMM1,dword ptr [0x00baa9b4]
006c8186  e805cafbff                CALL 0x00684b90
006c818b  f30f105de0                MOVSS XMM3,dword ptr [EBP + -0x20]
006c8190  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
006c8196  f30f1055dc                MOVSS XMM2,dword ptr [EBP + -0x24]
006c819b  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
006c81a0  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c81a7  e844b7d5ff                CALL 0x004238f0
006c81ac  50                        PUSH EAX
006c81ad  8bce                      MOV ECX,ESI
006c81af  e8fc00ffff                CALL 0x006b82b0
006c81b4  6a00                      PUSH 0x0
006c81b6  6800000001                PUSH 0x1000000
006c81bb  8bcf                      MOV ECX,EDI
006c81bd  e86ef2d4ff                CALL 0x00417430
006c81c2  84c0                      TEST AL,AL
006c81c4  0f84fc000000              JZ 0x006c82c6
006c81ca  8b873c020000              MOV EAX,dword ptr [EDI + 0x23c]
006c81d0  48                        DEC EAX
006c81d1  83f83a                    CMP EAX,0x3a
006c81d4  0f87ec000000              JA 0x006c82c6
006c81da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c81e0  e89bf2d3ff                CALL 0x00407480
006c81e5  8bc8                      MOV ECX,EAX
006c81e7  e8f4ba1400                CALL 0x00813ce0
006c81ec  660f6ec0                  MOVD XMM0,EAX
006c81f0  0f5bc0                    CVTDQ2PS XMM0,XMM0
006c81f3  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
006c81fb  e860efd4ff                CALL 0x00417160
006c8200  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006c8208  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c8210  0f28d0                    MOVAPS XMM2,XMM0
006c8213  0f57c0                    XORPS XMM0,XMM0
006c8216  e88570d6ff                CALL 0x0042f2a0
006c821b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8221  e85af2d3ff                CALL 0x00407480
006c8226  8bc8                      MOV ECX,EAX
006c8228  e8b3ba1400                CALL 0x00813ce0
006c822d  660f6ec0                  MOVD XMM0,EAX
006c8231  0f5bc0                    CVTDQ2PS XMM0,XMM0
006c8234  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
006c823c  e81fefd4ff                CALL 0x00417160
006c8241  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006c8249  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c8251  0f28d0                    MOVAPS XMM2,XMM0
006c8254  0f57c0                    XORPS XMM0,XMM0
006c8257  e84470d6ff                CALL 0x0042f2a0
006c825c  6a3c                      PUSH 0x3c
006c825e  6a3c                      PUSH 0x3c
006c8260  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c8268  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006c8270  6a3c                      PUSH 0x3c
006c8272  51                        PUSH ECX
006c8273  0f28d8                    MOVAPS XMM3,XMM0
006c8276  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c827d  0f28d0                    MOVAPS XMM2,XMM0
006c8280  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006c8286  0f28c8                    MOVAPS XMM1,XMM0
006c8289  e842d8d6ff                CALL 0x00435ad0
006c828e  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c8296  51                        PUSH ECX
006c8297  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
006c829d  f30f110424                MOVSS dword ptr [ESP],XMM0
006c82a2  e8c9eed3ff                CALL 0x00407170
006c82a7  50                        PUSH EAX
006c82a8  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
006c82ae  50                        PUSH EAX
006c82af  8d85bcfdffff              LEA EAX,[EBP + 0xfffffdbc]
006c82b5  50                        PUSH EAX
006c82b6  e825b0fbff                CALL 0x006832e0
006c82bb  83c410                    ADD ESP,0x10
006c82be  8bce                      MOV ECX,ESI
006c82c0  50                        PUSH EAX
006c82c1  e80af1d3ff                CALL 0x004073d0
006c82c6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c82cc  e8aff1d3ff                CALL 0x00407480
006c82d1  8bc8                      MOV ECX,EAX
006c82d3  e86801ffff                CALL 0x006b8440
006c82d8  84c0                      TEST AL,AL
006c82da  0f8473010000              JZ 0x006c8453
006c82e0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c82e7  7521                      JNZ 0x006c830a
006c82e9  80bf3d0c000000            CMP byte ptr [EDI + 0xc3d],0x0
006c82f0  7518                      JNZ 0x006c830a
006c82f2  8bcf                      MOV ECX,EDI
006c82f4  e8c743feff                CALL 0x006ac6c0
006c82f9  84c0                      TEST AL,AL
006c82fb  750d                      JNZ 0x006c830a
006c82fd  83bf8401000006            CMP dword ptr [EDI + 0x184],0x6
006c8304  7404                      JZ 0x006c830a
006c8306  b001                      MOV AL,0x1
006c8308  eb02                      JMP 0x006c830c
006c830a  32c0                      XOR AL,AL
006c830c  33c9                      XOR ECX,ECX
006c830e  0fb6c0                    MOVZX EAX,AL
006c8311  817f2876030000            CMP dword ptr [EDI + 0x28],0x376
006c8318  0f45c8                    CMOVNZ ECX,EAX
006c831b  898d7cfdffff              MOV dword ptr [EBP + 0xfffffd7c],ECX
006c8321  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8327  e854f1d3ff                CALL 0x00407480
006c832c  8bc8                      MOV ECX,EAX
006c832e  e8adb91400                CALL 0x00813ce0
006c8333  034720                    ADD EAX,dword ptr [EDI + 0x20]
006c8336  33d2                      XOR EDX,EDX
006c8338  b93c000000                MOV ECX,0x3c
006c833d  f7f1                      DIV ECX
006c833f  85d2                      TEST EDX,EDX
006c8341  0f850c010000              JNZ 0x006c8453
006c8347  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c834d  e82ef1d3ff                CALL 0x00407480
006c8352  8bc8                      MOV ECX,EAX
006c8354  e887b91400                CALL 0x00813ce0
006c8359  3d84030000                CMP EAX,0x384
006c835e  0f8eef000000              JLE 0x006c8453
006c8364  80bd7cfdffff00            CMP byte ptr [EBP + 0xfffffd7c],0x0
006c836b  0f84e2000000              JZ 0x006c8453
006c8371  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8377  e804f1d3ff                CALL 0x00407480
006c837c  8bc8                      MOV ECX,EAX
006c837e  e83d6bd7ff                CALL 0x0043eec0
006c8383  83f801                    CMP EAX,0x1
006c8386  0f85c7000000              JNZ 0x006c8453
006c838c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8392  e8e9f0d3ff                CALL 0x00407480
006c8397  8bc8                      MOV ECX,EAX
006c8399  e8e2dcd6ff                CALL 0x00436080
006c839e  84c0                      TEST AL,AL
006c83a0  0f85ad000000              JNZ 0x006c8453
006c83a6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c83ac  e8aff4d4ff                CALL 0x00417860
006c83b1  8bc8                      MOV ECX,EAX
006c83b3  e808662f00                CALL 0x009be9c0
006c83b8  84c0                      TEST AL,AL
006c83ba  0f8593000000              JNZ 0x006c8453
006c83c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c83c6  33f6                      XOR ESI,ESI
006c83c8  89b574fdffff              MOV dword ptr [EBP + 0xfffffd74],ESI
006c83ce  e8fdf4d4ff                CALL 0x004178d0
006c83d3  85c0                      TEST EAX,EAX
006c83d5  7463                      JZ 0x006c843a
006c83d7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
006c83e0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c83e6  56                        PUSH ESI
006c83e7  e884f4d4ff                CALL 0x00417870
006c83ec  8bc8                      MOV ECX,EAX
006c83ee  89857cfdffff              MOV dword ptr [EBP + 0xfffffd7c],EAX
006c83f4  e8c742feff                CALL 0x006ac6c0
006c83f9  84c0                      TEST AL,AL
006c83fb  7527                      JNZ 0x006c8424
006c83fd  8b8d7cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd7c]
006c8403  8d45bc                    LEA EAX,[EBP + -0x44]
006c8406  6a01                      PUSH 0x1
006c8408  50                        PUSH EAX
006c8409  e882eed4ff                CALL 0x00417290
006c840e  50                        PUSH EAX
006c840f  8d8f14040000              LEA ECX,[EDI + 0x414]
006c8415  e856ec1100                CALL 0x007e7070
006c841a  84c0                      TEST AL,AL
006c841c  7535                      JNZ 0x006c8453
006c841e  8bb574fdffff              MOV ESI,dword ptr [EBP + 0xfffffd74]
006c8424  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c842a  46                        INC ESI
006c842b  89b574fdffff              MOV dword ptr [EBP + 0xfffffd74],ESI
006c8431  e89af4d4ff                CALL 0x004178d0
006c8436  3bf0                      CMP ESI,EAX
006c8438  72a6                      JC 0x006c83e0
006c843a  80bf3e0c000000            CMP byte ptr [EDI + 0xc3e],0x0
006c8441  7409                      JZ 0x006c844c
006c8443  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
006c844a  eb07                      JMP 0x006c8453
006c844c  c6873e0c000001            MOV byte ptr [EDI + 0xc3e],0x1
006c8453  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c845a  0f8454030000              JZ 0x006c87b4
006c8460  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
006c8467  0f843a030000              JZ 0x006c87a7
006c846d  8bcf                      MOV ECX,EDI
006c846f  e88cc90000                CALL 0x006d4e00
006c8474  6a00                      PUSH 0x0
006c8476  6800040000                PUSH 0x400
006c847b  8bcf                      MOV ECX,EDI
006c847d  e8aeefd4ff                CALL 0x00417430
006c8482  84c0                      TEST AL,AL
006c8484  0f84d2000000              JZ 0x006c855c
006c848a  6800040000                PUSH 0x400
006c848f  6a00                      PUSH 0x0
006c8491  8bcf                      MOV ECX,EDI
006c8493  e898efd4ff                CALL 0x00417430
006c8498  84c0                      TEST AL,AL
006c849a  0f85bc000000              JNZ 0x006c855c
006c84a0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c84a6  8d873c030000              LEA EAX,[EDI + 0x33c]
006c84ac  6a01                      PUSH 0x1
006c84ae  6a00                      PUSH 0x0
006c84b0  6a01                      PUSH 0x1
006c84b2  50                        PUSH EAX
006c84b3  89855cfdffff              MOV dword ptr [EBP + 0xfffffd5c],EAX
006c84b9  e8f2b50300                CALL 0x00703ab0
006c84be  85c0                      TEST EAX,EAX
006c84c0  7415                      JZ 0x006c84d7
006c84c2  8bc8                      MOV ECX,EAX
006c84c4  e8172b1000                CALL 0x007cafe0
006c84c9  83f803                    CMP EAX,0x3
006c84cc  7509                      JNZ 0x006c84d7
006c84ce  8bc8                      MOV ECX,EAX
006c84d0  e83b6bfbff                CALL 0x0067f010
006c84d5  eb0b                      JMP 0x006c84e2
006c84d7  b903000000                MOV ECX,0x3
006c84dc  e82f6bfbff                CALL 0x0067f010
006c84e1  40                        INC EAX
006c84e2  89856cfdffff              MOV dword ptr [EBP + 0xfffffd6c],EAX
006c84e8  85c0                      TEST EAX,EAX
006c84ea  7e70                      JLE 0x006c855c
006c84ec  0f1f4000                  NOP dword ptr [EAX]
006c84f0  e86b6a0200                CALL 0x006eef60
006c84f5  8bf8                      MOV EDI,EAX
006c84f7  8d8518fdffff              LEA EAX,[EBP + 0xfffffd18]
006c84fd  50                        PUSH EAX
006c84fe  e86d6bfbff                CALL 0x0067f070
006c8503  83c404                    ADD ESP,0x4
006c8506  8bf0                      MOV ESI,EAX
006c8508  e8d36afbff                CALL 0x0067efe0
006c850d  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
006c8515  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006c851b  50                        PUSH EAX
006c851c  8d8500fdffff              LEA EAX,[EBP + 0xfffffd00]
006c8522  8bce                      MOV ECX,ESI
006c8524  50                        PUSH EAX
006c8525  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c852d  e8ae7f3400                CALL 0x00a104e0
006c8532  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8538  57                        PUSH EDI
006c8539  6a01                      PUSH 0x1
006c853b  6a00                      PUSH 0x0
006c853d  50                        PUSH EAX
006c853e  ffb55cfdffff              PUSH dword ptr [EBP + 0xfffffd5c]
006c8544  6a14                      PUSH 0x14
006c8546  6a05                      PUSH 0x5
006c8548  e8d305d6ff                CALL 0x00428b20
006c854d  83ad6cfdffff01            SUB dword ptr [EBP + 0xfffffd6c],0x1
006c8554  759a                      JNZ 0x006c84f0
006c8556  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c855c  6a00                      PUSH 0x0
006c855e  6800000400                PUSH 0x40000
006c8563  8bcf                      MOV ECX,EDI
006c8565  e8c6eed4ff                CALL 0x00417430
006c856a  84c0                      TEST AL,AL
006c856c  7546                      JNZ 0x006c85b4
006c856e  8bcf                      MOV ECX,EDI
006c8570  e84b38ffff                CALL 0x006bbdc0
006c8575  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c857b  33f6                      XOR ESI,ESI
006c857d  e84ef3d4ff                CALL 0x004178d0
006c8582  85c0                      TEST EAX,EAX
006c8584  742e                      JZ 0x006c85b4
006c8586  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
006c8590  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8596  56                        PUSH ESI
006c8597  e8d4f2d4ff                CALL 0x00417870
006c859c  57                        PUSH EDI
006c859d  8bc8                      MOV ECX,EAX
006c859f  e8dc7a0d00                CALL 0x007a0080
006c85a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c85aa  46                        INC ESI
006c85ab  e820f3d4ff                CALL 0x004178d0
006c85b0  3bf0                      CMP ESI,EAX
006c85b2  72dc                      JC 0x006c8590
006c85b4  8bcf                      MOV ECX,EDI
006c85b6  e895cd0000                CALL 0x006d5350
006c85bb  80bf3d0c000000            CMP byte ptr [EDI + 0xc3d],0x0
006c85c2  750f                      JNZ 0x006c85d3
006c85c4  837f281c                  CMP dword ptr [EDI + 0x28],0x1c
006c85c8  7409                      JZ 0x006c85d3
006c85ca  8bcf                      MOV ECX,EDI
006c85cc  e82fce0000                CALL 0x006d5400
006c85d1  eb14                      JMP 0x006c85e7
006c85d3  c787640b000012000000      MOV dword ptr [EDI + 0xb64],0x12
006c85dd  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
006c85e7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c85ed  e88eeed3ff                CALL 0x00407480
006c85f2  8bc8                      MOV ECX,EAX
006c85f4  e8971b1200                CALL 0x007ea190
006c85f9  84c0                      TEST AL,AL
006c85fb  0f84a6010000              JZ 0x006c87a7
006c8601  8bcf                      MOV ECX,EDI
006c8603  e8b840feff                CALL 0x006ac6c0
006c8608  84c0                      TEST AL,AL
006c860a  0f8597010000              JNZ 0x006c87a7
006c8610  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8616  e865eed3ff                CALL 0x00407480
006c861b  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c8621  51                        PUSH ECX
006c8622  8bc8                      MOV ECX,EAX
006c8624  e8f7dfd8ff                CALL 0x00456620
006c8629  85c0                      TEST EAX,EAX
006c862b  0f8476010000              JZ 0x006c87a7
006c8631  8bc8                      MOV ECX,EAX
006c8633  e888edd3ff                CALL 0x004073c0
006c8638  83f813                    CMP EAX,0x13
006c863b  0f8566010000              JNZ 0x006c87a7
006c8641  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006c8649  0f57c9                    XORPS XMM1,XMM1
006c864c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006c8654  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006c865c  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006c8664  0f2fc1                    COMISS XMM0,XMM1
006c8667  7613                      JBE 0x006c867c
006c8669  8d8f60030000              LEA ECX,[EDI + 0x360]
006c866f  e82c783400                CALL 0x00a0fea0
006c8674  d99f60030000              FSTP dword ptr [EDI + 0x360]
006c867a  eb2d                      JMP 0x006c86a9
006c867c  0f2fc8                    COMISS XMM1,XMM0
006c867f  7628                      JBE 0x006c86a9
006c8681  8d8f60030000              LEA ECX,[EDI + 0x360]
006c8687  e814783400                CALL 0x00a0fea0
006c868c  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006c8692  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c869a  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
006c86a1  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006c86a9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c86af  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
006c86b9  e8c2edd3ff                CALL 0x00407480
006c86be  f30f109778030000          MOVSS XMM2,dword ptr [EDI + 0x378]
006c86c6  8d8d18fdffff              LEA ECX,[EBP + 0xfffffd18]
006c86cc  f30f599770030000          MULSS XMM2,dword ptr [EDI + 0x370]
006c86d4  0f57c9                    XORPS XMM1,XMM1
006c86d7  8bf0                      MOV ESI,EAX
006c86d9  f30f5815d0a2ba00          ADDSS XMM2,dword ptr [0x00baa2d0]
006c86e1  e8aa773400                CALL 0x00a0fe90
006c86e6  50                        PUSH EAX
006c86e7  8d8500fdffff              LEA EAX,[EBP + 0xfffffd00]
006c86ed  50                        PUSH EAX
006c86ee  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c86f4  e8277d3400                CALL 0x00a10420
006c86f9  8bce                      MOV ECX,ESI
006c86fb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006c86ff  f30f118540fdffff          MOVSS dword ptr [EBP + 0xfffffd40],XMM0
006c8707  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
006c870c  f30f118544fdffff          MOVSS dword ptr [EBP + 0xfffffd44],XMM0
006c8714  ffb544fdffff              PUSH dword ptr [EBP + 0xfffffd44]
006c871a  ffb540fdffff              PUSH dword ptr [EBP + 0xfffffd40]
006c8720  e85b801200                CALL 0x007f0780
006c8725  83f804                    CMP EAX,0x4
006c8728  747d                      JZ 0x006c87a7
006c872a  f30f101530a7ba00          MOVSS XMM2,dword ptr [0x00baa730]
006c8732  8d8ddcfcffff              LEA ECX,[EBP + 0xfffffcdc]
006c8738  6a00                      PUSH 0x0
006c873a  0f57c9                    XORPS XMM1,XMM1
006c873d  e84e773400                CALL 0x00a0fe90
006c8742  50                        PUSH EAX
006c8743  8bcf                      MOV ECX,EDI
006c8745  e8668dd6ff                CALL 0x004314b0
006c874a  eb5b                      JMP 0x006c87a7
006c874c  6a00                      PUSH 0x0
006c874e  6a20                      PUSH 0x20
006c8750  8bcf                      MOV ECX,EDI
006c8752  e8d9ecd4ff                CALL 0x00417430
006c8757  84c0                      TEST AL,AL
006c8759  7509                      JNZ 0x006c8764
006c875b  83bff003000000            CMP dword ptr [EDI + 0x3f0],0x0
006c8762  7e43                      JLE 0x006c87a7
006c8764  83bff003000000            CMP dword ptr [EDI + 0x3f0],0x0
006c876b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006c8773  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
006c877b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c8783  7e22                      JLE 0x006c87a7
006c8785  8db7f4030000              LEA ESI,[EDI + 0x3f4]
006c878b  6840b6c700                PUSH 0xc7b640
006c8790  8bce                      MOV ECX,ESI
006c8792  e8997e3400                CALL 0x00a10630
006c8797  84c0                      TEST AL,AL
006c8799  740c                      JZ 0x006c87a7
006c879b  56                        PUSH ESI
006c879c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c87a2  e8094c1100                CALL 0x007dd3b0
006c87a7  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c87ae  0f857d050000              JNZ 0x006c8d31
006c87b4  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006c87ba  83f812                    CMP EAX,0x12
006c87bd  0f846e050000              JZ 0x006c8d31
006c87c3  83f811                    CMP EAX,0x11
006c87c6  0f8465050000              JZ 0x006c8d31
006c87cc  8bcf                      MOV ECX,EDI
006c87ce  e8dddfd8ff                CALL 0x004567b0
006c87d3  84c0                      TEST AL,AL
006c87d5  0f8556050000              JNZ 0x006c8d31
006c87db  6a00                      PUSH 0x0
006c87dd  8bcf                      MOV ECX,EDI
006c87df  e87c3dfeff                CALL 0x006ac560
006c87e4  84c0                      TEST AL,AL
006c87e6  0f8445050000              JZ 0x006c8d31
006c87ec  f30f1005b8acba00          MOVSS XMM0,dword ptr [0x00baacb8]
006c87f4  33f6                      XOR ESI,ESI
006c87f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c87fc  f30f118538fdffff          MOVSS dword ptr [EBP + 0xfffffd38],XMM0
006c8804  f30f118550fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM0
006c880c  f30f100524acba00          MOVSS XMM0,dword ptr [0x00baac24]
006c8814  c7854cfdffff00000000      MOV dword ptr [EBP + 0xfffffd4c],0x0
006c881e  89b588fdffff              MOV dword ptr [EBP + 0xfffffd88],ESI
006c8824  89b574fdffff              MOV dword ptr [EBP + 0xfffffd74],ESI
006c882a  f30f118560fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM0
006c8832  89b564fdffff              MOV dword ptr [EBP + 0xfffffd64],ESI
006c8838  e893f0d4ff                CALL 0x004178d0
006c883d  85c0                      TEST EAX,EAX
006c883f  0f84ec040000              JZ 0x006c8d31
006c8845  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
006c8850  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8856  56                        PUSH ESI
006c8857  e814f0d4ff                CALL 0x00417870
006c885c  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c8862  8bf0                      MOV ESI,EAX
006c8864  e8b717d6ff                CALL 0x0042a020
006c8869  6a00                      PUSH 0x0
006c886b  684f010000                PUSH 0x14f
006c8870  8bce                      MOV ECX,ESI
006c8872  e8697e0a00                CALL 0x007706e0
006c8877  88857cfdffff              MOV byte ptr [EBP + 0xfffffd7c],AL
006c887d  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c8883  6a00                      PUSH 0x0
006c8885  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
006c888b  50                        PUSH EAX
006c888c  e8df1e0100                CALL 0x006da770
006c8891  ffb57cfdffff              PUSH dword ptr [EBP + 0xfffffd7c]
006c8897  8bc8                      MOV ECX,EAX
006c8899  e8721e0100                CALL 0x006da710
006c889e  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c88a4  e85739d4ff                CALL 0x0040c200
006c88a9  6a00                      PUSH 0x0
006c88ab  6a44                      PUSH 0x44
006c88ad  8bce                      MOV ECX,ESI
006c88af  e89c8c0a00                CALL 0x00771550
006c88b4  88855cfdffff              MOV byte ptr [EBP + 0xfffffd5c],AL
006c88ba  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c88c0  6a01                      PUSH 0x1
006c88c2  8d8528fdffff              LEA EAX,[EBP + 0xfffffd28]
006c88c8  50                        PUSH EAX
006c88c9  e8a21e0100                CALL 0x006da770
006c88ce  ffb55cfdffff              PUSH dword ptr [EBP + 0xfffffd5c]
006c88d4  8bc8                      MOV ECX,EAX
006c88d6  e8351e0100                CALL 0x006da710
006c88db  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006c88e1  e81a39d4ff                CALL 0x0040c200
006c88e6  6a00                      PUSH 0x0
006c88e8  68b8020000                PUSH 0x2b8
006c88ed  8bce                      MOV ECX,ESI
006c88ef  e8ec7d0a00                CALL 0x007706e0
006c88f4  888524fdffff              MOV byte ptr [EBP + 0xfffffd24],AL
006c88fa  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c8900  6a02                      PUSH 0x2
006c8902  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006c8908  50                        PUSH EAX
006c8909  e8621e0100                CALL 0x006da770
006c890e  ffb524fdffff              PUSH dword ptr [EBP + 0xfffffd24]
006c8914  8bc8                      MOV ECX,EAX
006c8916  e8f51d0100                CALL 0x006da710
006c891b  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c8921  e8da38d4ff                CALL 0x0040c200
006c8926  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c892c  e81f1e0100                CALL 0x006da750
006c8931  84c0                      TEST AL,AL
006c8933  0f84fa010000              JZ 0x006c8b33
006c8939  8d85e4fcffff              LEA EAX,[EBP + 0xfffffce4]
006c893f  8bce                      MOV ECX,ESI
006c8941  50                        PUSH EAX
006c8942  e849e9d4ff                CALL 0x00417290
006c8947  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c894d  51                        PUSH ECX
006c894e  8bc8                      MOV ECX,EAX
006c8950  e83b763400                CALL 0x00a0ff90
006c8955  6a00                      PUSH 0x0
006c8957  8d8510fdffff              LEA EAX,[EBP + 0xfffffd10]
006c895d  50                        PUSH EAX
006c895e  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c8964  d99d80fdffff              FSTP dword ptr [EBP + 0xfffffd80]
006c896a  e8011e0100                CALL 0x006da770
006c896f  838d84fdffff10            OR dword ptr [EBP + 0xfffffd84],0x10
006c8976  8bc8                      MOV ECX,EAX
006c8978  e8731d0100                CALL 0x006da6f0
006c897d  f30f108580fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd80]
006c8985  84c0                      TEST AL,AL
006c8987  7414                      JZ 0x006c899d
006c8989  f30f108d60fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd60]
006c8991  0f2fc8                    COMISS XMM1,XMM0
006c8994  c6858ffdffff01            MOV byte ptr [EBP + 0xfffffd8f],0x1
006c899b  7707                      JA 0x006c89a4
006c899d  c6858ffdffff00            MOV byte ptr [EBP + 0xfffffd8f],0x0
006c89a4  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
006c89aa  a810                      TEST AL,0x10
006c89ac  741c                      JZ 0x006c89ca
006c89ae  83e0ef                    AND EAX,0xffffffef
006c89b1  8d8d10fdffff              LEA ECX,[EBP + 0xfffffd10]
006c89b7  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
006c89bd  e83e38d4ff                CALL 0x0040c200
006c89c2  f30f108580fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd80]
006c89ca  80bd8ffdffff00            CMP byte ptr [EBP + 0xfffffd8f],0x0
006c89d1  740e                      JZ 0x006c89e1
006c89d3  89b54cfdffff              MOV dword ptr [EBP + 0xfffffd4c],ESI
006c89d9  f30f118560fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM0
006c89e1  6a01                      PUSH 0x1
006c89e3  8d8508fdffff              LEA EAX,[EBP + 0xfffffd08]
006c89e9  50                        PUSH EAX
006c89ea  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c89f0  e87b1d0100                CALL 0x006da770
006c89f5  838d84fdffff20            OR dword ptr [EBP + 0xfffffd84],0x20
006c89fc  8bc8                      MOV ECX,EAX
006c89fe  e8ed1c0100                CALL 0x006da6f0
006c8a03  84c0                      TEST AL,AL
006c8a05  7418                      JZ 0x006c8a1f
006c8a07  f30f108538fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd38]
006c8a0f  0f2f8580fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd80]
006c8a16  c6858ffdffff01            MOV byte ptr [EBP + 0xfffffd8f],0x1
006c8a1d  7707                      JA 0x006c8a26
006c8a1f  c6858ffdffff00            MOV byte ptr [EBP + 0xfffffd8f],0x0
006c8a26  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
006c8a2c  a820                      TEST AL,0x20
006c8a2e  7414                      JZ 0x006c8a44
006c8a30  83e0df                    AND EAX,0xffffffdf
006c8a33  8d8d08fdffff              LEA ECX,[EBP + 0xfffffd08]
006c8a39  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
006c8a3f  e8bc37d4ff                CALL 0x0040c200
006c8a44  80bd8ffdffff00            CMP byte ptr [EBP + 0xfffffd8f],0x0
006c8a4b  7416                      JZ 0x006c8a63
006c8a4d  f30f108580fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd80]
006c8a55  89b588fdffff              MOV dword ptr [EBP + 0xfffffd88],ESI
006c8a5b  f30f118538fdffff          MOVSS dword ptr [EBP + 0xfffffd38],XMM0
006c8a63  6a02                      PUSH 0x2
006c8a65  8d85f0fcffff              LEA EAX,[EBP + 0xfffffcf0]
006c8a6b  50                        PUSH EAX
006c8a6c  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
006c8a72  e8f91c0100                CALL 0x006da770
006c8a77  c745fc0a000000            MOV dword ptr [EBP + -0x4],0xa
006c8a7e  8b8d84fdffff              MOV ECX,dword ptr [EBP + 0xfffffd84]
006c8a84  83c940                    OR ECX,0x40
006c8a87  898d84fdffff              MOV dword ptr [EBP + 0xfffffd84],ECX
006c8a8d  898d6cfdffff              MOV dword ptr [EBP + 0xfffffd6c],ECX
006c8a93  8bc8                      MOV ECX,EAX
006c8a95  e8561c0100                CALL 0x006da6f0
006c8a9a  84c0                      TEST AL,AL
006c8a9c  744a                      JZ 0x006c8ae8
006c8a9e  f30f108550fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd50]
006c8aa6  0f2f8580fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd80]
006c8aad  7639                      JBE 0x006c8ae8
006c8aaf  8bce                      MOV ECX,ESI
006c8ab1  e88ab81000                CALL 0x007d4340
006c8ab6  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
006c8abe  b902000000                MOV ECX,0x2
006c8ac3  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
006c8acb  e8c01f0100                CALL 0x006daa90
006c8ad0  f30f108d80fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd80]
006c8ad8  0f5ac9                    CVTPS2PD XMM1,XMM1
006c8adb  c6858ffdffff01            MOV byte ptr [EBP + 0xfffffd8f],0x1
006c8ae2  660f2fc1                  COMISD XMM0,XMM1
006c8ae6  7707                      JA 0x006c8aef
006c8ae8  c6858ffdffff00            MOV byte ptr [EBP + 0xfffffd8f],0x0
006c8aef  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c8af6  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
006c8afc  a840                      TEST AL,0x40
006c8afe  7414                      JZ 0x006c8b14
006c8b00  83e0bf                    AND EAX,0xffffffbf
006c8b03  8d8df0fcffff              LEA ECX,[EBP + 0xfffffcf0]
006c8b09  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
006c8b0f  e8ec36d4ff                CALL 0x0040c200
006c8b14  80bd8ffdffff00            CMP byte ptr [EBP + 0xfffffd8f],0x0
006c8b1b  7416                      JZ 0x006c8b33
006c8b1d  f30f108580fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd80]
006c8b25  89b574fdffff              MOV dword ptr [EBP + 0xfffffd74],ESI
006c8b2b  f30f118550fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM0
006c8b33  8bb564fdffff              MOV ESI,dword ptr [EBP + 0xfffffd64]
006c8b39  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8b3f  46                        INC ESI
006c8b40  89b564fdffff              MOV dword ptr [EBP + 0xfffffd64],ESI
006c8b46  e885edd4ff                CALL 0x004178d0
006c8b4b  3bf0                      CMP ESI,EAX
006c8b4d  0f82fdfcffff              JC 0x006c8850
006c8b53  83bd4cfdffff00            CMP dword ptr [EBP + 0xfffffd4c],0x0
006c8b5a  0f84d0000000              JZ 0x006c8c30
006c8b60  b903000000                MOV ECX,0x3
006c8b65  e8a664fbff                CALL 0x0067f010
006c8b6a  85c0                      TEST EAX,EAX
006c8b6c  0f85be000000              JNZ 0x006c8c30
006c8b72  8b8d4cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd4c]
006c8b78  8d85e4fcffff              LEA EAX,[EBP + 0xfffffce4]
006c8b7e  50                        PUSH EAX
006c8b7f  e80ce7d4ff                CALL 0x00417290
006c8b84  50                        PUSH EAX
006c8b85  8d85acfcffff              LEA EAX,[EBP + 0xfffffcac]
006c8b8b  50                        PUSH EAX
006c8b8c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c8b92  e8e9783400                CALL 0x00a10480
006c8b97  f30f108560fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd60]
006c8b9f  8bf8                      MOV EDI,EAX
006c8ba1  e8aaced6ff                CALL 0x00435a50
006c8ba6  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
006c8bae  f30f5cc8                  SUBSS XMM1,XMM0
006c8bb2  f30f118d7cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM1
006c8bba  e82164fbff                CALL 0x0067efe0
006c8bbf  f30f59857cfdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c8bc7  8bb554fdffff              MOV ESI,dword ptr [EBP + 0xfffffd54]
006c8bcd  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
006c8bd5  8d8e60030000              LEA ECX,[ESI + 0x360]
006c8bdb  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
006c8be3  e8b8723400                CALL 0x00a0fea0
006c8be8  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006c8bee  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c8bf6  8d85b4fcffff              LEA EAX,[EBP + 0xfffffcb4]
006c8bfc  f30f59855cfdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd5c]
006c8c04  51                        PUSH ECX
006c8c05  8bcf                      MOV ECX,EDI
006c8c07  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
006c8c0f  f30f5805d0a0ba00          ADDSS XMM0,dword ptr [0x00baa0d0]
006c8c17  f30f110424                MOVSS dword ptr [ESP],XMM0
006c8c1c  50                        PUSH EAX
006c8c1d  e8de743400                CALL 0x00a10100
006c8c22  50                        PUSH EAX
006c8c23  8d8e60030000              LEA ECX,[ESI + 0x360]
006c8c29  e822783400                CALL 0x00a10450
006c8c2e  8bfe                      MOV EDI,ESI
006c8c30  8bb588fdffff              MOV ESI,dword ptr [EBP + 0xfffffd88]
006c8c36  85f6                      TEST ESI,ESI
006c8c38  7453                      JZ 0x006c8c8d
006c8c3a  b903000000                MOV ECX,0x3
006c8c3f  e8cc63fbff                CALL 0x0067f010
006c8c44  85c0                      TEST EAX,EAX
006c8c46  7545                      JNZ 0x006c8c8d
006c8c48  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
006c8c4e  8bce                      MOV ECX,ESI
006c8c50  50                        PUSH EAX
006c8c51  e83ae6d4ff                CALL 0x00417290
006c8c56  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c8c5c  51                        PUSH ECX
006c8c5d  8d8dc4fcffff              LEA ECX,[EBP + 0xfffffcc4]
006c8c63  51                        PUSH ECX
006c8c64  8bc8                      MOV ECX,EAX
006c8c66  e815783400                CALL 0x00a10480
006c8c6b  51                        PUSH ECX
006c8c6c  8d8dccfcffff              LEA ECX,[EBP + 0xfffffccc]
006c8c72  c704240000003f            MOV dword ptr [ESP],0x3f000000
006c8c79  51                        PUSH ECX
006c8c7a  8bc8                      MOV ECX,EAX
006c8c7c  e87f743400                CALL 0x00a10100
006c8c81  50                        PUSH EAX
006c8c82  8d8f60030000              LEA ECX,[EDI + 0x360]
006c8c88  e8c3773400                CALL 0x00a10450
006c8c8d  8bb574fdffff              MOV ESI,dword ptr [EBP + 0xfffffd74]
006c8c93  85f6                      TEST ESI,ESI
006c8c95  0f8496000000              JZ 0x006c8d31
006c8c9b  8d8f580f0000              LEA ECX,[EDI + 0xf58]
006c8ca1  e8fa36d4ff                CALL 0x0040c3a0
006c8ca6  85c0                      TEST EAX,EAX
006c8ca8  7566                      JNZ 0x006c8d10
006c8caa  e8b1620200                CALL 0x006eef60
006c8caf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8cb5  50                        PUSH EAX
006c8cb6  6a03                      PUSH 0x3
006c8cb8  56                        PUSH ESI
006c8cb9  6840b6c700                PUSH 0xc7b640
006c8cbe  8d873c030000              LEA EAX,[EDI + 0x33c]
006c8cc4  50                        PUSH EAX
006c8cc5  6a13                      PUSH 0x13
006c8cc7  68e8030000                PUSH 0x3e8
006c8ccc  e84ffed5ff                CALL 0x00428b20
006c8cd1  8bf0                      MOV ESI,EAX
006c8cd3  57                        PUSH EDI
006c8cd4  8bce                      MOV ECX,ESI
006c8cd6  e84506feff                CALL 0x006a9320
006c8cdb  ffb574fdffff              PUSH dword ptr [EBP + 0xfffffd74]
006c8ce1  8bce                      MOV ECX,ESI
006c8ce3  e8b805feff                CALL 0x006a92a0
006c8ce8  8b0e                      MOV ECX,dword ptr [ESI]
006c8cea  51                        PUSH ECX
006c8ceb  c7042400006040            MOV dword ptr [ESP],0x40600000
006c8cf2  8b5140                    MOV EDX,dword ptr [ECX + 0x40]
006c8cf5  8bce                      MOV ECX,ESI
006c8cf7  ffd2                      CALL EDX
006c8cf9  8b06                      MOV EAX,dword ptr [ESI]
006c8cfb  8bce                      MOV ECX,ESI
006c8cfd  ff500c                    CALL dword ptr [EAX + 0xc]
006c8d00  56                        PUSH ESI
006c8d01  8db7580f0000              LEA ESI,[EDI + 0xf58]
006c8d07  8bce                      MOV ECX,ESI
006c8d09  e8c264e0ff                CALL 0x004cf1d0
006c8d0e  eb06                      JMP 0x006c8d16
006c8d10  8db7580f0000              LEA ESI,[EDI + 0xf58]
006c8d16  8bce                      MOV ECX,ESI
006c8d18  e88336d4ff                CALL 0x0040c3a0
006c8d1d  85c0                      TEST EAX,EAX
006c8d1f  7410                      JZ 0x006c8d31
006c8d21  8bce                      MOV ECX,ESI
006c8d23  e87836d4ff                CALL 0x0040c3a0
006c8d28  6a01                      PUSH 0x1
006c8d2a  8bc8                      MOV ECX,EAX
006c8d2c  e82fd1d6ff                CALL 0x00435e60
006c8d31  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8d37  e844e7d3ff                CALL 0x00407480
006c8d3c  8bc8                      MOV ECX,EAX
006c8d3e  e89daf1400                CALL 0x00813ce0
006c8d43  85c0                      TEST EAX,EAX
006c8d45  0f852d020000              JNZ 0x006c8f78
006c8d4b  50                        PUSH EAX
006c8d4c  8bcf                      MOV ECX,EDI
006c8d4e  e80d38feff                CALL 0x006ac560
006c8d53  84c0                      TEST AL,AL
006c8d55  0f841d020000              JZ 0x006c8f78
006c8d5b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8d61  e8faead4ff                CALL 0x00417860
006c8d66  6a00                      PUSH 0x0
006c8d68  6a00                      PUSH 0x0
006c8d6a  685e010000                PUSH 0x15e
006c8d6f  8bc8                      MOV ECX,EAX
006c8d71  e80a532f00                CALL 0x009be080
006c8d76  89855cfdffff              MOV dword ptr [EBP + 0xfffffd5c],EAX
006c8d7c  85c0                      TEST EAX,EAX
006c8d7e  7420                      JZ 0x006c8da0
006c8d80  50                        PUSH EAX
006c8d81  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c8d84  e88785d6ff                CALL 0x00431310
006c8d89  6a00                      PUSH 0x0
006c8d8b  51                        PUSH ECX
006c8d8c  c7042400000000            MOV dword ptr [ESP],0x0
006c8d93  8d45c4                    LEA EAX,[EBP + -0x3c]
006c8d96  6ad8                      PUSH -0x28
006c8d98  50                        PUSH EAX
006c8d99  8bcf                      MOV ECX,EDI
006c8d9b  e86047feff                CALL 0x006ad500
006c8da0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8da6  e8b5ead4ff                CALL 0x00417860
006c8dab  6887000000                PUSH 0x87
006c8db0  8bc8                      MOV ECX,EAX
006c8db2  e8f9582f00                CALL 0x009be6b0
006c8db7  8bf0                      MOV ESI,EAX
006c8db9  85f6                      TEST ESI,ESI
006c8dbb  0f84c1000000              JZ 0x006c8e82
006c8dc1  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
006c8dc9  8bce                      MOV ECX,ESI
006c8dcb  6887000000                PUSH 0x87
006c8dd0  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
006c8dd8  e803291000                CALL 0x007cb6e0
006c8ddd  83e802                    SUB EAX,0x2
006c8de0  740f                      JZ 0x006c8df1
006c8de2  83e801                    SUB EAX,0x1
006c8de5  751a                      JNZ 0x006c8e01
006c8de7  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
006c8def  eb08                      JMP 0x006c8df9
006c8df1  f30f100520a2ba00          MOVSS XMM0,dword ptr [0x00baa220]
006c8df9  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
006c8e01  6a05                      PUSH 0x5
006c8e03  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
006c8e09  8d4db4                    LEA ECX,[EBP + -0x4c]
006c8e0c  e87f011200                CALL 0x007e8f90
006c8e11  8bc8                      MOV ECX,EAX
006c8e13  c745fc0b000000            MOV dword ptr [EBP + -0x4],0xb
006c8e1a  e861021200                CALL 0x007e9080
006c8e1f  8bce                      MOV ECX,ESI
006c8e21  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006c8e27  e8d4cdf9ff                CALL 0x00665c00
006c8e2c  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
006c8e34  8d4db4                    LEA ECX,[EBP + -0x4c]
006c8e37  f30f588574fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffd74]
006c8e3f  0f2f857cfdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd7c]
006c8e46  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c8e4d  0f97856bfdffff            SETA byte ptr [EBP + 0xfffffd6b]
006c8e54  e8a733d4ff                CALL 0x0040c200
006c8e59  80bd6bfdffff00            CMP byte ptr [EBP + 0xfffffd6b],0x0
006c8e60  7420                      JZ 0x006c8e82
006c8e62  56                        PUSH ESI
006c8e63  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c8e66  e8a584d6ff                CALL 0x00431310
006c8e6b  6a00                      PUSH 0x0
006c8e6d  51                        PUSH ECX
006c8e6e  c7042400000000            MOV dword ptr [ESP],0x0
006c8e75  8d45c4                    LEA EAX,[EBP + -0x3c]
006c8e78  6aa6                      PUSH -0x5a
006c8e7a  50                        PUSH EAX
006c8e7b  8bcf                      MOV ECX,EDI
006c8e7d  e8fe53feff                CALL 0x006ae280
006c8e82  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8e88  e8d3e9d4ff                CALL 0x00417860
006c8e8d  68bc000000                PUSH 0xbc
006c8e92  8bc8                      MOV ECX,EAX
006c8e94  e817582f00                CALL 0x009be6b0
006c8e99  8bf0                      MOV ESI,EAX
006c8e9b  85f6                      TEST ESI,ESI
006c8e9d  0f84d5000000              JZ 0x006c8f78
006c8ea3  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
006c8eab  8bce                      MOV ECX,ESI
006c8ead  68bc000000                PUSH 0xbc
006c8eb2  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
006c8eba  e821281000                CALL 0x007cb6e0
006c8ebf  83e802                    SUB EAX,0x2
006c8ec2  740f                      JZ 0x006c8ed3
006c8ec4  83e801                    SUB EAX,0x1
006c8ec7  751a                      JNZ 0x006c8ee3
006c8ec9  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
006c8ed1  eb08                      JMP 0x006c8edb
006c8ed3  f30f100520a2ba00          MOVSS XMM0,dword ptr [0x00baa220]
006c8edb  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
006c8ee3  6a05                      PUSH 0x5
006c8ee5  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
006c8eeb  8d4db4                    LEA ECX,[EBP + -0x4c]
006c8eee  e89d001200                CALL 0x007e8f90
006c8ef3  8bc8                      MOV ECX,EAX
006c8ef5  c745fc0c000000            MOV dword ptr [EBP + -0x4],0xc
006c8efc  e87f011200                CALL 0x007e9080
006c8f01  8bce                      MOV ECX,ESI
006c8f03  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006c8f09  e8f2ccf9ff                CALL 0x00665c00
006c8f0e  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
006c8f16  8d4db4                    LEA ECX,[EBP + -0x4c]
006c8f19  f30f588574fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffd74]
006c8f21  0f2f857cfdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd7c]
006c8f28  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c8f2f  0f97856bfdffff            SETA byte ptr [EBP + 0xfffffd6b]
006c8f36  e8c532d4ff                CALL 0x0040c200
006c8f3b  80bd6bfdffff00            CMP byte ptr [EBP + 0xfffffd6b],0x0
006c8f42  7434                      JZ 0x006c8f78
006c8f44  8bb55cfdffff              MOV ESI,dword ptr [EBP + 0xfffffd5c]
006c8f4a  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c8f4d  56                        PUSH ESI
006c8f4e  e8bd83d6ff                CALL 0x00431310
006c8f53  6a00                      PUSH 0x0
006c8f55  6aa6                      PUSH -0x5a
006c8f57  8d45c4                    LEA EAX,[EBP + -0x3c]
006c8f5a  8bcf                      MOV ECX,EDI
006c8f5c  50                        PUSH EAX
006c8f5d  e85e44feff                CALL 0x006ad3c0
006c8f62  56                        PUSH ESI
006c8f63  8d4d9c                    LEA ECX,[EBP + -0x64]
006c8f66  e8a583d6ff                CALL 0x00431310
006c8f6b  6aa6                      PUSH -0x5a
006c8f6d  8d459c                    LEA EAX,[EBP + -0x64]
006c8f70  8bcf                      MOV ECX,EDI
006c8f72  50                        PUSH EAX
006c8f73  e858eafeff                CALL 0x006b79d0
006c8f78  8bcf                      MOV ECX,EDI
006c8f7a  e8c158ffff                CALL 0x006be840
006c8f7f  8bc8                      MOV ECX,EAX
006c8f81  e81a0eddff                CALL 0x00499da0
006c8f86  85c0                      TEST EAX,EAX
006c8f88  7423                      JZ 0x006c8fad
006c8f8a  8bc8                      MOV ECX,EAX
006c8f8c  e82fa30f00                CALL 0x007c32c0
006c8f91  84c0                      TEST AL,AL
006c8f93  7418                      JZ 0x006c8fad
006c8f95  57                        PUSH EDI
006c8f96  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c8f99  e87283d6ff                CALL 0x00431310
006c8f9e  6a00                      PUSH 0x0
006c8fa0  6afe                      PUSH -0x2
006c8fa2  8d45c4                    LEA EAX,[EBP + -0x3c]
006c8fa5  8bcf                      MOV ECX,EDI
006c8fa7  50                        PUSH EAX
006c8fa8  e8c34dfeff                CALL 0x006add70
006c8fad  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8fb3  e8a8e8d4ff                CALL 0x00417860
006c8fb8  6a00                      PUSH 0x0
006c8fba  6a00                      PUSH 0x0
006c8fbc  6802020000                PUSH 0x202
006c8fc1  8bc8                      MOV ECX,EAX
006c8fc3  e8b8502f00                CALL 0x009be080
006c8fc8  85c0                      TEST EAX,EAX
006c8fca  0f848f000000              JZ 0x006c905f
006c8fd0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c8fd6  e885e8d4ff                CALL 0x00417860
006c8fdb  8bc8                      MOV ECX,EAX
006c8fdd  e85e5a2f00                CALL 0x009bea40
006c8fe2  f30f2cc0                  CVTTSS2SI EAX,XMM0
006c8fe6  b937000000                MOV ECX,0x37
006c8feb  c7855cfdffff26000000      MOV dword ptr [EBP + 0xfffffd5c],0x26
006c8ff5  8d957cfdffff              LEA EDX,[EBP + 0xfffffd7c]
006c8ffb  2bc8                      SUB ECX,EAX
006c8ffd  898d7cfdffff              MOV dword ptr [EBP + 0xfffffd7c],ECX
006c9003  8d8d5cfdffff              LEA ECX,[EBP + 0xfffffd5c]
006c9009  e8723bd5ff                CALL 0x0041cb80
006c900e  8bcf                      MOV ECX,EDI
006c9010  8b30                      MOV ESI,dword ptr [EAX]
006c9012  8b07                      MOV EAX,dword ptr [EDI]
006c9014  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006c9017  ffd0                      CALL EAX
006c9019  84c0                      TEST AL,AL
006c901b  7405                      JZ 0x006c9022
006c901d  8d3476                    LEA ESI,[ESI + ESI*0x2]
006c9020  eb02                      JMP 0x006c9024
006c9022  03f6                      ADD ESI,ESI
006c9024  6a00                      PUSH 0x0
006c9026  8bcf                      MOV ECX,EDI
006c9028  e83335feff                CALL 0x006ac560
006c902d  84c0                      TEST AL,AL
006c902f  742e                      JZ 0x006c905f
006c9031  8bce                      MOV ECX,ESI
006c9033  e8d85ffbff                CALL 0x0067f010
006c9038  85c0                      TEST EAX,EAX
006c903a  7523                      JNZ 0x006c905f
006c903c  388773010000              CMP byte ptr [EDI + 0x173],AL
006c9042  751b                      JNZ 0x006c905f
006c9044  8bcf                      MOV ECX,EDI
006c9046  e8a5f9fdff                CALL 0x006a89f0
006c904b  8bf0                      MOV ESI,EAX
006c904d  6a00                      PUSH 0x0
006c904f  6a20                      PUSH 0x20
006c9051  8bce                      MOV ECX,ESI
006c9053  e888e3d4ff                CALL 0x004173e0
006c9058  8bce                      MOV ECX,ESI
006c905a  e8c1f9fdff                CALL 0x006a8a20
006c905f  6a00                      PUSH 0x0
006c9061  8bcf                      MOV ECX,EDI
006c9063  e828cbfeff                CALL 0x006b5b90
006c9068  84c0                      TEST AL,AL
006c906a  0f845d010000              JZ 0x006c91cd
006c9070  6a00                      PUSH 0x0
006c9072  6a20                      PUSH 0x20
006c9074  8bcf                      MOV ECX,EDI
006c9076  e8b5e3d4ff                CALL 0x00417430
006c907b  84c0                      TEST AL,AL
006c907d  0f844a010000              JZ 0x006c91cd
006c9083  83bf1802000000            CMP dword ptr [EDI + 0x218],0x0
006c908a  0f8f3d010000              JG 0x006c91cd
006c9090  6a00                      PUSH 0x0
006c9092  6a32                      PUSH 0x32
006c9094  8bcf                      MOV ECX,EDI
006c9096  e87536feff                CALL 0x006ac710
006c909b  84c0                      TEST AL,AL
006c909d  0f842a010000              JZ 0x006c91cd
006c90a3  8bcf                      MOV ECX,EDI
006c90a5  e846f9fdff                CALL 0x006a89f0
006c90aa  8bf0                      MOV ESI,EAX
006c90ac  6a00                      PUSH 0x0
006c90ae  6a20                      PUSH 0x20
006c90b0  8bce                      MOV ECX,ESI
006c90b2  e849e3d4ff                CALL 0x00417400
006c90b7  8bce                      MOV ECX,ESI
006c90b9  e862f9fdff                CALL 0x006a8a20
006c90be  8d8f60030000              LEA ECX,[EDI + 0x360]
006c90c4  6840b6c700                PUSH 0xc7b640
006c90c9  e862753400                CALL 0x00a10630
006c90ce  84c0                      TEST AL,AL
006c90d0  0f84f7000000              JZ 0x006c91cd
006c90d6  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c90dc  e89f6d3400                CALL 0x00a0fe80
006c90e1  be01000000                MOV ESI,0x1
006c90e6  ba02000000                MOV EDX,0x2
006c90eb  8bce                      MOV ECX,ESI
006c90ed  e83e5ffbff                CALL 0x0067f030
006c90f2  8d5601                    LEA EDX,[ESI + 0x1]
006c90f5  8bce                      MOV ECX,ESI
006c90f7  660f6ec0                  MOVD XMM0,EAX
006c90fb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006c90ff  c1e81f                    SHR EAX,0x1f
006c9102  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006c910b  660f5ac0                  CVTPD2PS XMM0,XMM0
006c910f  f30f590548a8ba00          MULSS XMM0,dword ptr [0x00baa848]
006c9117  f30f5c0580a8ba00          SUBSS XMM0,dword ptr [0x00baa880]
006c911f  f30f118540fdffff          MOVSS dword ptr [EBP + 0xfffffd40],XMM0
006c9127  e8045ffbff                CALL 0x0067f030
006c912c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9132  660f6ec0                  MOVD XMM0,EAX
006c9136  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006c913a  c1e81f                    SHR EAX,0x1f
006c913d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006c9146  660f5ac0                  CVTPD2PS XMM0,XMM0
006c914a  f30f590548a8ba00          MULSS XMM0,dword ptr [0x00baa848]
006c9152  f30f5c0580a8ba00          SUBSS XMM0,dword ptr [0x00baa880]
006c915a  f30f118544fdffff          MOVSS dword ptr [EBP + 0xfffffd44],XMM0
006c9162  e819e3d3ff                CALL 0x00407480
006c9167  51                        PUSH ECX
006c9168  c7042400000000            MOV dword ptr [ESP],0x0
006c916f  8db73c030000              LEA ESI,[EDI + 0x33c]
006c9175  56                        PUSH ESI
006c9176  8d4dbc                    LEA ECX,[EBP + -0x44]
006c9179  51                        PUSH ECX
006c917a  8bc8                      MOV ECX,EAX
006c917c  e80fcfd6ff                CALL 0x00436090
006c9181  56                        PUSH ESI
006c9182  8bc8                      MOV ECX,EAX
006c9184  e877743400                CALL 0x00a10600
006c9189  88856bfdffff              MOV byte ptr [EBP + 0xfffffd6b],AL
006c918f  8bce                      MOV ECX,ESI
006c9191  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006c9197  50                        PUSH EAX
006c9198  e8b3723400                CALL 0x00a10450
006c919d  80bd6bfdffff00            CMP byte ptr [EBP + 0xfffffd6b],0x0
006c91a4  7427                      JZ 0x006c91cd
006c91a6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c91ac  e8cfe2d3ff                CALL 0x00407480
006c91b1  51                        PUSH ECX
006c91b2  c7042400000000            MOV dword ptr [ESP],0x0
006c91b9  8d4dbc                    LEA ECX,[EBP + -0x44]
006c91bc  56                        PUSH ESI
006c91bd  51                        PUSH ECX
006c91be  8bc8                      MOV ECX,EAX
006c91c0  e8cbced6ff                CALL 0x00436090
006c91c5  50                        PUSH EAX
006c91c6  8bce                      MOV ECX,ESI
006c91c8  e8e3411100                CALL 0x007dd3b0
006c91cd  6a00                      PUSH 0x0
006c91cf  6a10                      PUSH 0x10
006c91d1  8bcf                      MOV ECX,EDI
006c91d3  e858e2d4ff                CALL 0x00417430
006c91d8  84c0                      TEST AL,AL
006c91da  0f85d3000000              JNZ 0x006c92b3
006c91e0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c91e6  33f6                      XOR ESI,ESI
006c91e8  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
006c91ee  e86de6d4ff                CALL 0x00417860
006c91f3  8bc8                      MOV ECX,EAX
006c91f5  e846e6d4ff                CALL 0x00417840
006c91fa  85c0                      TEST EAX,EAX
006c91fc  0f84b1000000              JZ 0x006c92b3
006c9202  8d7e01                    LEA EDI,[ESI + 0x1]
006c9205  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
006c9210  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9216  56                        PUSH ESI
006c9217  e854e6d4ff                CALL 0x00417870
006c921c  8bc8                      MOV ECX,EAX
006c921e  e89dcfd6ff                CALL 0x004361c0
006c9223  6a5d                      PUSH 0x5d
006c9225  8bc8                      MOV ECX,EAX
006c9227  e8c4732600                CALL 0x009305f0
006c922c  8b8d74fdffff              MOV ECX,dword ptr [EBP + 0xfffffd74]
006c9232  84c0                      TEST AL,AL
006c9234  0fb6c9                    MOVZX ECX,CL
006c9237  0f45cf                    CMOVNZ ECX,EDI
006c923a  46                        INC ESI
006c923b  898d74fdffff              MOV dword ptr [EBP + 0xfffffd74],ECX
006c9241  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9247  e814e6d4ff                CALL 0x00417860
006c924c  8bc8                      MOV ECX,EAX
006c924e  e8ede5d4ff                CALL 0x00417840
006c9253  3bf0                      CMP ESI,EAX
006c9255  72b9                      JC 0x006c9210
006c9257  80bd74fdffff00            CMP byte ptr [EBP + 0xfffffd74],0x0
006c925e  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c9264  744d                      JZ 0x006c92b3
006c9266  8b07                      MOV EAX,dword ptr [EDI]
006c9268  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
006c926e  f30f101db0a4ba00          MOVSS XMM3,dword ptr [0x00baa4b0]
006c9276  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006c927e  f30f100df8a1ba00          MOVSS XMM1,dword ptr [0x00baa1f8]
006c9286  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c9289  e8f2c7d6ff                CALL 0x00435a80
006c928e  6a01                      PUSH 0x1
006c9290  6a00                      PUSH 0x0
006c9292  6a00                      PUSH 0x0
006c9294  6a02                      PUSH 0x2
006c9296  50                        PUSH EAX
006c9297  8bcf                      MOV ECX,EDI
006c9299  ffd6                      CALL ESI
006c929b  57                        PUSH EDI
006c929c  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c929f  e86c80d6ff                CALL 0x00431310
006c92a4  6a00                      PUSH 0x0
006c92a6  6afe                      PUSH -0x2
006c92a8  8d45c4                    LEA EAX,[EBP + -0x3c]
006c92ab  8bcf                      MOV ECX,EDI
006c92ad  50                        PUSH EAX
006c92ae  e8ed4dfeff                CALL 0x006ae0a0
006c92b3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c92b9  e8c2e1d3ff                CALL 0x00407480
006c92be  8bc8                      MOV ECX,EAX
006c92c0  e80bced6ff                CALL 0x004360d0
006c92c5  68e8000000                PUSH 0xe8
006c92ca  8bc8                      MOV ECX,EAX
006c92cc  e81f732600                CALL 0x009305f0
006c92d1  84c0                      TEST AL,AL
006c92d3  7536                      JNZ 0x006c930b
006c92d5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c92db  e8a0e1d3ff                CALL 0x00407480
006c92e0  8bc8                      MOV ECX,EAX
006c92e2  e8e9cdd6ff                CALL 0x004360d0
006c92e7  6a42                      PUSH 0x42
006c92e9  8bc8                      MOV ECX,EAX
006c92eb  e800732600                CALL 0x009305f0
006c92f0  84c0                      TEST AL,AL
006c92f2  7517                      JNZ 0x006c930b
006c92f4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c92fa  e881e1d3ff                CALL 0x00407480
006c92ff  8bc8                      MOV ECX,EAX
006c9301  e8ca5a1500                CALL 0x0081edd0
006c9306  83f801                    CMP EAX,0x1
006c9309  755c                      JNZ 0x006c9367
006c930b  6a00                      PUSH 0x0
006c930d  6801000020                PUSH 0x20000001
006c9312  8bcf                      MOV ECX,EDI
006c9314  e817e1d4ff                CALL 0x00417430
006c9319  84c0                      TEST AL,AL
006c931b  7409                      JZ 0x006c9326
006c931d  817f28d4000000            CMP dword ptr [EDI + 0x28],0xd4
006c9324  7541                      JNZ 0x006c9367
006c9326  8b07                      MOV EAX,dword ptr [EDI]
006c9328  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c9330  f30f101dcca4ba00          MOVSS XMM3,dword ptr [0x00baa4cc]
006c9338  0f28ca                    MOVAPS XMM1,XMM2
006c933b  6a28                      PUSH 0x28
006c933d  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c9340  6a28                      PUSH 0x28
006c9342  6a28                      PUSH 0x28
006c9344  51                        PUSH ECX
006c9345  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
006c934b  c704240000803f            MOV dword ptr [ESP],0x3f800000
006c9352  e879c7d6ff                CALL 0x00435ad0
006c9357  6a01                      PUSH 0x1
006c9359  6a00                      PUSH 0x0
006c935b  68fa000000                PUSH 0xfa
006c9360  6a02                      PUSH 0x2
006c9362  50                        PUSH EAX
006c9363  8bcf                      MOV ECX,EDI
006c9365  ffd6                      CALL ESI
006c9367  6800001000                PUSH 0x100000
006c936c  6a00                      PUSH 0x0
006c936e  8bcf                      MOV ECX,EDI
006c9370  e8bbe0d4ff                CALL 0x00417430
006c9375  84c0                      TEST AL,AL
006c9377  7425                      JZ 0x006c939e
006c9379  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
006c9381  f30f1005f4a3ba00          MOVSS XMM0,dword ptr [0x00baa3f4]
006c9389  e822b9fbff                CALL 0x00684cb0
006c938e  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
006c9396  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c939e  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
006c93a5  7450                      JZ 0x006c93f7
006c93a7  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006c93af  0f28ca                    MOVAPS XMM1,XMM2
006c93b2  0f28c2                    MOVAPS XMM0,XMM2
006c93b5  f30f5c876c030000          SUBSS XMM0,dword ptr [EDI + 0x36c]
006c93bd  f30f5c8fac0b0000          SUBSS XMM1,dword ptr [EDI + 0xbac]
006c93c5  f30f59c8                  MULSS XMM1,XMM0
006c93c9  0f28c2                    MOVAPS XMM0,XMM2
006c93cc  f30f5cc1                  SUBSS XMM0,XMM1
006c93d0  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
006c93d8  e8d3b8fbff                CALL 0x00684cb0
006c93dd  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006c93e3  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c93eb  50                        PUSH EAX
006c93ec  8d8f60030000              LEA ECX,[EDI + 0x360]
006c93f2  e849713400                CALL 0x00a10540
006c93f7  8d7748                    LEA ESI,[EDI + 0x48]
006c93fa  68e076b600                PUSH 0xb676e0
006c93ff  8bce                      MOV ECX,ESI
006c9401  89b57cfdffff              MOV dword ptr [EBP + 0xfffffd7c],ESI
006c9407  e8241cd4ff                CALL 0x0040b030
006c940c  84c0                      TEST AL,AL
006c940e  0f84dc000000              JZ 0x006c94f0
006c9414  68e076b600                PUSH 0xb676e0
006c9419  8bce                      MOV ECX,ESI
006c941b  e8b01dd4ff                CALL 0x0040b1d0
006c9420  8bf0                      MOV ESI,EAX
006c9422  e8395b0200                CALL 0x006eef60
006c9427  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c942d  6a00                      PUSH 0x0
006c942f  68acd5c500                PUSH 0xc5d5ac
006c9434  68dcd5c500                PUSH 0xc5d5dc
006c9439  6a00                      PUSH 0x0
006c943b  50                        PUSH EAX
006c943c  6a00                      PUSH 0x0
006c943e  6a00                      PUSH 0x0
006c9440  6840b6c700                PUSH 0xc7b640
006c9445  8d873c030000              LEA EAX,[EDI + 0x33c]
006c944b  50                        PUSH EAX
006c944c  6a10                      PUSH 0x10
006c944e  68e8030000                PUSH 0x3e8
006c9453  e8c8f6d5ff                CALL 0x00428b20
006c9458  50                        PUSH EAX
006c9459  e853744200                CALL 0x00af08b1
006c945e  83c414                    ADD ESP,0x14
006c9461  8bf8                      MOV EDI,EAX
006c9463  8bcf                      MOV ECX,EDI
006c9465  56                        PUSH ESI
006c9466  e855cfd8ff                CALL 0x004563c0
006c946b  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
006c9473  8d4dbc                    LEA ECX,[EBP + -0x44]
006c9476  0f28ca                    MOVAPS XMM1,XMM2
006c9479  e8126a3400                CALL 0x00a0fe90
006c947e  50                        PUSH EAX
006c947f  8d8518fdffff              LEA EAX,[EBP + 0xfffffd18]
006c9485  50                        PUSH EAX
006c9486  8d4e10                    LEA ECX,[ESI + 0x10]
006c9489  e882703400                CALL 0x00a10510
006c948e  50                        PUSH EAX
006c948f  8bcf                      MOV ECX,EDI
006c9491  e81a45d6ff                CALL 0x0042d9b0
006c9496  51                        PUSH ECX
006c9497  8bcf                      MOV ECX,EDI
006c9499  c7042400002041            MOV dword ptr [ESP],0x41200000
006c94a0  e84bc8d6ff                CALL 0x00435cf0
006c94a5  8b07                      MOV EAX,dword ptr [EDI]
006c94a7  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006c94af  6a00                      PUSH 0x0
006c94b1  6a00                      PUSH 0x0
006c94b3  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c94b6  0f28d8                    MOVAPS XMM3,XMM0
006c94b9  6a00                      PUSH 0x0
006c94bb  51                        PUSH ECX
006c94bc  0f28d0                    MOVAPS XMM2,XMM0
006c94bf  c704240000003f            MOV dword ptr [ESP],0x3f000000
006c94c6  0f28c8                    MOVAPS XMM1,XMM0
006c94c9  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
006c94cf  e8fcc5d6ff                CALL 0x00435ad0
006c94d4  6a01                      PUSH 0x1
006c94d6  6a00                      PUSH 0x0
006c94d8  68ff000000                PUSH 0xff
006c94dd  6aff                      PUSH -0x1
006c94df  50                        PUSH EAX
006c94e0  8bcf                      MOV ECX,EDI
006c94e2  ffd6                      CALL ESI
006c94e4  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c94ea  8bb57cfdffff              MOV ESI,dword ptr [EBP + 0xfffffd7c]
006c94f0  8bcf                      MOV ECX,EDI
006c94f2  e819db0000                CALL 0x006d7010
006c94f7  8bcf                      MOV ECX,EDI
006c94f9  e832dd0000                CALL 0x006d7230
006c94fe  f687180f000001            TEST byte ptr [EDI + 0xf18],0x1
006c9505  741b                      JZ 0x006c9522
006c9507  8bcf                      MOV ECX,EDI
006c9509  c787740b000001000000      MOV dword ptr [EDI + 0xb74],0x1
006c9513  e87894ffff                CALL 0x006c2990
006c9518  c787740b000000000000      MOV dword ptr [EDI + 0xb74],0x0
006c9522  6820000010                PUSH 0x10000020
006c9527  6a00                      PUSH 0x0
006c9529  8bcf                      MOV ECX,EDI
006c952b  e800dfd4ff                CALL 0x00417430
006c9530  84c0                      TEST AL,AL
006c9532  0f8488020000              JZ 0x006c97c0
006c9538  6a00                      PUSH 0x0
006c953a  6a0f                      PUSH 0xf
006c953c  8bcf                      MOV ECX,EDI
006c953e  e8cd31feff                CALL 0x006ac710
006c9543  84c0                      TEST AL,AL
006c9545  7444                      JZ 0x006c958b
006c9547  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006c954f  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
006c9556  7633                      JBE 0x006c958b
006c9558  f30f5c05d4a1ba00          SUBSS XMM0,dword ptr [0x00baa1d4]
006c9560  8d957cfdffff              LEA EDX,[EBP + 0xfffffd7c]
006c9566  c7855cfdffff0000803f      MOV dword ptr [EBP + 0xfffffd5c],0x3f800000
006c9570  8d8d5cfdffff              LEA ECX,[EBP + 0xfffffd5c]
006c9576  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c957e  e8ed35d5ff                CALL 0x0041cb70
006c9583  8b00                      MOV EAX,dword ptr [EAX]
006c9585  898780030000              MOV dword ptr [EDI + 0x380],EAX
006c958b  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
006c9593  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
006c959b  f30f59c0                  MULSS XMM0,XMM0
006c959f  f30f59d2                  MULSS XMM2,XMM2
006c95a3  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c95ab  f30f5ed0                  DIVSS XMM2,XMM0
006c95af  0f57c0                    XORPS XMM0,XMM0
006c95b2  e8e95cd6ff                CALL 0x0042f2a0
006c95b7  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c95bf  0f28d0                    MOVAPS XMM2,XMM0
006c95c2  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
006c95ca  32c9                      XOR CL,CL
006c95cc  e8efbf3400                CALL 0x00a155c0
006c95d1  8bce                      MOV ECX,ESI
006c95d3  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c95db  e830ded3ff                CALL 0x00407410
006c95e0  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c95e8  83ec10                    SUB ESP,0x10
006c95eb  8bc8                      MOV ECX,EAX
006c95ed  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
006c95f5  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
006c95fb  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
006c9601  f30f110424                MOVSS dword ptr [ESP],XMM0
006c9606  e81599fbff                CALL 0x00682f20
006c960b  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006c9613  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
006c961b  e8407cd6ff                CALL 0x00431260
006c9620  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c9628  0f28d0                    MOVAPS XMM2,XMM0
006c962b  0f57c0                    XORPS XMM0,XMM0
006c962e  e86d5cd6ff                CALL 0x0042f2a0
006c9633  f30f100d90a4ba00          MOVSS XMM1,dword ptr [0x00baa490]
006c963b  0f28d0                    MOVAPS XMM2,XMM0
006c963e  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
006c9646  32c9                      XOR CL,CL
006c9648  e873bf3400                CALL 0x00a155c0
006c964d  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006c9653  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c965b  50                        PUSH EAX
006c965c  8d45bc                    LEA EAX,[EBP + -0x44]
006c965f  b93c79c300                MOV ECX,0xc3793c
006c9664  50                        PUSH EAX
006c9665  e8766e3400                CALL 0x00a104e0
006c966a  50                        PUSH EAX
006c966b  8bce                      MOV ECX,ESI
006c966d  e8fe6ad5ff                CALL 0x00420170
006c9672  0f57c0                    XORPS XMM0,XMM0
006c9675  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c9678  0f57c9                    XORPS XMM1,XMM1
006c967b  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
006c9683  f30f118d88fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM1
006c968b  660f138578fdffff          MOVLPD qword ptr [EBP + 0xfffffd78],XMM0
006c9693  e8d8c5d6ff                CALL 0x00435c70
006c9698  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006c969e  51                        PUSH ECX
006c969f  8d4f08                    LEA ECX,[EDI + 0x8]
006c96a2  e8f9cad8ff                CALL 0x004561a0
006c96a7  8d855cfdffff              LEA EAX,[EBP + 0xfffffd5c]
006c96ad  50                        PUSH EAX
006c96ae  8d4f08                    LEA ECX,[EDI + 0x8]
006c96b1  e8dacad8ff                CALL 0x00456190
006c96b6  50                        PUSH EAX
006c96b7  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006c96bd  e84e30d6ff                CALL 0x0042c710
006c96c2  84c0                      TEST AL,AL
006c96c4  0f8448010000              JZ 0x006c9812
006c96ca  8b8d7cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd7c]
006c96d0  898d70fdffff              MOV dword ptr [EBP + 0xfffffd70],ECX
006c96d6  8b8d78fdffff              MOV ECX,dword ptr [EBP + 0xfffffd78]
006c96dc  898d80fdffff              MOV dword ptr [EBP + 0xfffffd80],ECX
006c96e2  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006c96e8  e8b32cd4ff                CALL 0x0040c3a0
006c96ed  8bd0                      MOV EDX,EAX
006c96ef  8b7208                    MOV ESI,dword ptr [EDX + 0x8]
006c96f2  8bce                      MOV ECX,ESI
006c96f4  81e182020000              AND ECX,0x282
006c96fa  83c900                    OR ECX,0x0
006c96fd  754d                      JNZ 0x006c974c
006c96ff  8bc6                      MOV EAX,ESI
006c9701  83e004                    AND EAX,0x4
006c9704  0bc1                      OR EAX,ECX
006c9706  0f85d6000000              JNZ 0x006c97e2
006c970c  f30f1002                  MOVSS XMM0,dword ptr [EDX]
006c9710  0f2f8588fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd88]
006c9717  7633                      JBE 0x006c974c
006c9719  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
006c971c  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c971f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006c9727  898570fdffff              MOV dword ptr [EBP + 0xfffffd70],EAX
006c972d  8d4210                    LEA EAX,[EDX + 0x10]
006c9730  50                        PUSH EAX
006c9731  f30f118d74fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM1
006c9739  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
006c9741  89b580fdffff              MOV dword ptr [EBP + 0xfffffd80],ESI
006c9747  e81402ddff                CALL 0x00499960
006c974c  6a00                      PUSH 0x0
006c974e  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006c9754  50                        PUSH EAX
006c9755  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006c975b  e810cad8ff                CALL 0x00456170
006c9760  8d855cfdffff              LEA EAX,[EBP + 0xfffffd5c]
006c9766  50                        PUSH EAX
006c9767  8d4f08                    LEA ECX,[EDI + 0x8]
006c976a  e821cad8ff                CALL 0x00456190
006c976f  50                        PUSH EAX
006c9770  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006c9776  e8952fd6ff                CALL 0x0042c710
006c977b  84c0                      TEST AL,AL
006c977d  0f855fffffff              JNZ 0x006c96e2
006c9783  8d7748                    LEA ESI,[EDI + 0x48]
006c9786  8d4f08                    LEA ECX,[EDI + 0x8]
006c9789  e872ccd8ff                CALL 0x00456400
006c978e  f30f108574fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd74]
006c9796  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006c979d  7621                      JBE 0x006c97c0
006c979f  8b07                      MOV EAX,dword ptr [EDI]
006c97a1  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c97a4  6a00                      PUSH 0x0
006c97a6  51                        PUSH ECX
006c97a7  8b8d70fdffff              MOV ECX,dword ptr [EBP + 0xfffffd70]
006c97ad  51                        PUSH ECX
006c97ae  8b8d80fdffff              MOV ECX,dword ptr [EBP + 0xfffffd80]
006c97b4  51                        PUSH ECX
006c97b5  51                        PUSH ECX
006c97b6  8bcf                      MOV ECX,EDI
006c97b8  f30f110424                MOVSS dword ptr [ESP],XMM0
006c97bd  ff5020                    CALL dword ptr [EAX + 0x20]
006c97c0  817f28c5030000            CMP dword ptr [EDI + 0x28],0x3c5
006c97c7  8bcf                      MOV ECX,EDI
006c97c9  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006c97d1  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c97d9  7554                      JNZ 0x006c982f
006c97db  e85046e0ff                CALL 0x004cde30
006c97e0  eb52                      JMP 0x006c9834
006c97e2  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
006c97e5  8d4dc4                    LEA ECX,[EBP + -0x3c]
006c97e8  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
006c97f0  898570fdffff              MOV dword ptr [EBP + 0xfffffd70],EAX
006c97f6  8d4210                    LEA EAX,[EDX + 0x10]
006c97f9  50                        PUSH EAX
006c97fa  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
006c9802  89b580fdffff              MOV dword ptr [EBP + 0xfffffd80],ESI
006c9808  e85301ddff                CALL 0x00499960
006c980d  e971ffffff                JMP 0x006c9783
006c9812  8b857cfdffff              MOV EAX,dword ptr [EBP + 0xfffffd7c]
006c9818  898570fdffff              MOV dword ptr [EBP + 0xfffffd70],EAX
006c981e  8b8578fdffff              MOV EAX,dword ptr [EBP + 0xfffffd78]
006c9824  898580fdffff              MOV dword ptr [EBP + 0xfffffd80],EAX
006c982a  e957ffffff                JMP 0x006c9786
006c982f  e8ec4ffeff                CALL 0x006ae820
006c9834  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c983c  8d957cfdffff              LEA EDX,[EBP + 0xfffffd7c]
006c9842  f30f5c8780030000          SUBSS XMM0,dword ptr [EDI + 0x380]
006c984a  8d8d5cfdffff              LEA ECX,[EBP + 0xfffffd5c]
006c9850  c7855cfdffff00000000      MOV dword ptr [EBP + 0xfffffd5c],0x0
006c985a  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c9862  e80933d5ff                CALL 0x0041cb70
006c9867  f687180f000008            TEST byte ptr [EDI + 0xf18],0x8
006c986e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006c9872  f30f58875c0c0000          ADDSS XMM0,dword ptr [EDI + 0xc5c]
006c987a  f30f11875c0c0000          MOVSS dword ptr [EDI + 0xc5c],XMM0
006c9882  741b                      JZ 0x006c989f
006c9884  8bcf                      MOV ECX,EDI
006c9886  c787740b000004000000      MOV dword ptr [EDI + 0xb74],0x4
006c9890  e8fb90ffff                CALL 0x006c2990
006c9895  c787740b000000000000      MOV dword ptr [EDI + 0xb74],0x0
006c989f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c98a5  6a0f                      PUSH 0xf
006c98a7  e8b4c3f9ff                CALL 0x00665c60
006c98ac  84c0                      TEST AL,AL
006c98ae  0f8496000000              JZ 0x006c994a
006c98b4  8b07                      MOV EAX,dword ptr [EDI]
006c98b6  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
006c98bc  83ec10                    SUB ESP,0x10
006c98bf  0f57db                    XORPS XMM3,XMM3
006c98c2  0f57d2                    XORPS XMM2,XMM2
006c98c5  0f57c9                    XORPS XMM1,XMM1
006c98c8  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006c98cb  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006c98d3  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006c98db  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006c98e3  c7042400000000            MOV dword ptr [ESP],0x0
006c98ea  e8f137d4ff                CALL 0x0040d0e0
006c98ef  6a01                      PUSH 0x1
006c98f1  6a00                      PUSH 0x0
006c98f3  68ff000000                PUSH 0xff
006c98f8  6aff                      PUSH -0x1
006c98fa  50                        PUSH EAX
006c98fb  8bcf                      MOV ECX,EDI
006c98fd  ffd6                      CALL ESI
006c98ff  83ec10                    SUB ESP,0x10
006c9902  8d8dbcfdffff              LEA ECX,[EBP + 0xfffffdbc]
006c9908  0f57db                    XORPS XMM3,XMM3
006c990b  0f57d2                    XORPS XMM2,XMM2
006c990e  0f57c9                    XORPS XMM1,XMM1
006c9911  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006c9919  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006c9921  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006c9929  c7042400000000            MOV dword ptr [ESP],0x0
006c9930  e8ab37d4ff                CALL 0x0040d0e0
006c9935  8d7748                    LEA ESI,[EDI + 0x48]
006c9938  50                        PUSH EAX
006c9939  8bce                      MOV ECX,ESI
006c993b  e890dad3ff                CALL 0x004073d0
006c9940  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
006c994a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9950  6a04                      PUSH 0x4
006c9952  e809c3f9ff                CALL 0x00665c60
006c9957  84c0                      TEST AL,AL
006c9959  7515                      JNZ 0x006c9970
006c995b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9961  6a06                      PUSH 0x6
006c9963  e8f8c2f9ff                CALL 0x00665c60
006c9968  84c0                      TEST AL,AL
006c996a  0f84b5030000              JZ 0x006c9d25
006c9970  8d873c030000              LEA EAX,[EDI + 0x33c]
006c9976  8bcf                      MOV ECX,EDI
006c9978  89857cfdffff              MOV dword ptr [EBP + 0xfffffd7c],EAX
006c997e  e88d02feff                CALL 0x006a9c10
006c9983  83f802                    CMP EAX,0x2
006c9986  0f8d0e010000              JGE 0x006c9a9a
006c998c  8b957cfdffff              MOV EDX,dword ptr [EBP + 0xfffffd7c]
006c9992  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c9998  6a01                      PUSH 0x1
006c999a  e87159fbff                CALL 0x0067f310
006c999f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c99a5  83c404                    ADD ESP,0x4
006c99a8  e8d3dad3ff                CALL 0x00407480
006c99ad  8bc8                      MOV ECX,EAX
006c99af  e82ceafeff                CALL 0x006b83e0
006c99b4  50                        PUSH EAX
006c99b5  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c99bb  e8f06a3400                CALL 0x00a104b0
006c99c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c99c6  e8b5dad3ff                CALL 0x00407480
006c99cb  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c99d1  51                        PUSH ECX
006c99d2  8bc8                      MOV ECX,EAX
006c99d4  e807ded4ff                CALL 0x004177e0
006c99d9  8bc8                      MOV ECX,EAX
006c99db  c745fc0d000000            MOV dword ptr [EBP + -0x4],0xd
006c99e2  e8b929d4ff                CALL 0x0040c3a0
006c99e7  f30f108544fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd44]
006c99ef  8bf8                      MOV EDI,EAX
006c99f1  8b0f                      MOV ECX,dword ptr [EDI]
006c99f3  8b712c                    MOV ESI,dword ptr [ECX + 0x2c]
006c99f6  e8a5624200                CALL 0x00aefca0
006c99fb  f30f108540fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd40]
006c9a03  50                        PUSH EAX
006c9a04  e897624200                CALL 0x00aefca0
006c9a09  50                        PUSH EAX
006c9a0a  8d45d8                    LEA EAX,[EBP + -0x28]
006c9a0d  8bcf                      MOV ECX,EDI
006c9a0f  50                        PUSH EAX
006c9a10  ffd6                      CALL ESI
006c9a12  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c9a18  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c9a1f  e8ec2cd5ff                CALL 0x0041c710
006c9a24  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006c9a2a  68ff000000                PUSH 0xff
006c9a2f  6a00                      PUSH 0x0
006c9a31  6a00                      PUSH 0x0
006c9a33  8db7800c0000              LEA ESI,[EDI + 0xc80]
006c9a39  6a00                      PUSH 0x0
006c9a3b  8bce                      MOV ECX,ESI
006c9a3d  e80e95fbff                CALL 0x00682f50
006c9a42  51                        PUSH ECX
006c9a43  8bce                      MOV ECX,ESI
006c9a45  c704243333333f            MOV dword ptr [ESP],0x3f333333
006c9a4c  e82fd8d3ff                CALL 0x00407280
006c9a51  f30f100de0a3ba00          MOVSS XMM1,dword ptr [0x00baa3e0]
006c9a59  83ec0c                    SUB ESP,0xc
006c9a5c  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
006c9a61  8bce                      MOV ECX,ESI
006c9a63  f30f59c1                  MULSS XMM0,XMM1
006c9a67  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
006c9a6d  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
006c9a72  f30f59c1                  MULSS XMM0,XMM1
006c9a76  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
006c9a7c  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
006c9a81  f30f59c1                  MULSS XMM0,XMM1
006c9a85  f30f110424                MOVSS dword ptr [ESP],XMM0
006c9a8a  e85195fbff                CALL 0x00682fe0
006c9a8f  56                        PUSH ESI
006c9a90  8d7748                    LEA ESI,[EDI + 0x48]
006c9a93  8bce                      MOV ECX,ESI
006c9a95  e836d9d3ff                CALL 0x004073d0
006c9a9a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9aa0  e80bdad3ff                CALL 0x004074b0
006c9aa5  034720                    ADD EAX,dword ptr [EDI + 0x20]
006c9aa8  33d2                      XOR EDX,EDX
006c9aaa  b91e000000                MOV ECX,0x1e
006c9aaf  f7f1                      DIV ECX
006c9ab1  83fa02                    CMP EDX,0x2
006c9ab4  0f83db010000              JNC 0x006c9c95
006c9aba  6a01                      PUSH 0x1
006c9abc  8d973c030000              LEA EDX,[EDI + 0x33c]
006c9ac2  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c9ac8  e84358fbff                CALL 0x0067f310
006c9acd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9ad3  83c404                    ADD ESP,0x4
006c9ad6  e8a5d9d3ff                CALL 0x00407480
006c9adb  8bc8                      MOV ECX,EAX
006c9add  e8fee8feff                CALL 0x006b83e0
006c9ae2  50                        PUSH EAX
006c9ae3  8d8d40fdffff              LEA ECX,[EBP + 0xfffffd40]
006c9ae9  e8c2693400                CALL 0x00a104b0
006c9aee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9af4  e887d9d3ff                CALL 0x00407480
006c9af9  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c9aff  51                        PUSH ECX
006c9b00  8bc8                      MOV ECX,EAX
006c9b02  e8d9dcd4ff                CALL 0x004177e0
006c9b07  8bc8                      MOV ECX,EAX
006c9b09  c745fc0e000000            MOV dword ptr [EBP + -0x4],0xe
006c9b10  e88b28d4ff                CALL 0x0040c3a0
006c9b15  8b08                      MOV ECX,dword ptr [EAX]
006c9b17  8b512c                    MOV EDX,dword ptr [ECX + 0x2c]
006c9b1a  f30f2c8d44fdffff          CVTTSS2SI ECX,dword ptr [EBP + 0xfffffd44]
006c9b22  51                        PUSH ECX
006c9b23  f30f2c8d40fdffff          CVTTSS2SI ECX,dword ptr [EBP + 0xfffffd40]
006c9b2b  51                        PUSH ECX
006c9b2c  8d4dd8                    LEA ECX,[EBP + -0x28]
006c9b2f  51                        PUSH ECX
006c9b30  8bc8                      MOV ECX,EAX
006c9b32  ffd2                      CALL EDX
006c9b34  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006c9b3a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006c9b41  e8ca2bd5ff                CALL 0x0041c710
006c9b46  8d8f800c0000              LEA ECX,[EDI + 0xc80]
006c9b4c  e81fd7d3ff                CALL 0x00407270
006c9b51  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
006c9b59  32c9                      XOR CL,CL
006c9b5b  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
006c9b63  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006c9b69  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006c9b71  e84aba3400                CALL 0x00a155c0
006c9b76  51                        PUSH ECX
006c9b77  8d8f800c0000              LEA ECX,[EDI + 0xc80]
006c9b7d  f30f110424                MOVSS dword ptr [ESP],XMM0
006c9b82  e8f9d6d3ff                CALL 0x00407280
006c9b87  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
006c9b8c  8d8f800c0000              LEA ECX,[EDI + 0xc80]
006c9b92  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
006c9b9a  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c9ba2  e829d7d3ff                CALL 0x004072d0
006c9ba7  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006c9baf  32c9                      XOR CL,CL
006c9bb1  f30f108d7cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd7c]
006c9bb9  d99d5cfdffff              FSTP dword ptr [EBP + 0xfffffd5c]
006c9bbf  f30f10855cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd5c]
006c9bc7  e8f4b93400                CALL 0x00a155c0
006c9bcc  f30f118524fdffff          MOVSS dword ptr [EBP + 0xfffffd24],XMM0
006c9bd4  8d8f800c0000              LEA ECX,[EDI + 0xc80]
006c9bda  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
006c9bdf  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
006c9be7  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c9bef  e8ccd6d3ff                CALL 0x004072c0
006c9bf4  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006c9bfc  32c9                      XOR CL,CL
006c9bfe  f30f108d7cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd7c]
006c9c06  d99d5cfdffff              FSTP dword ptr [EBP + 0xfffffd5c]
006c9c0c  f30f10855cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd5c]
006c9c14  e8a7b93400                CALL 0x00a155c0
006c9c19  f30f11850cfdffff          MOVSS dword ptr [EBP + 0xfffffd0c],XMM0
006c9c21  8d8f800c0000              LEA ECX,[EDI + 0xc80]
006c9c27  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
006c9c2c  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
006c9c34  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006c9c3c  e86fd6d3ff                CALL 0x004072b0
006c9c41  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006c9c49  32c9                      XOR CL,CL
006c9c4b  f30f108d7cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd7c]
006c9c53  d99d5cfdffff              FSTP dword ptr [EBP + 0xfffffd5c]
006c9c59  f30f10855cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd5c]
006c9c61  e85ab93400                CALL 0x00a155c0
006c9c66  f30f108d24fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd24]
006c9c6e  8d8f800c0000              LEA ECX,[EDI + 0xc80]
006c9c74  83ec0c                    SUB ESP,0xc
006c9c77  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
006c9c7d  f30f108d0cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd0c]
006c9c85  f30f114c2404              MOVSS dword ptr [ESP + 0x4],XMM1
006c9c8b  f30f110424                MOVSS dword ptr [ESP],XMM0
006c9c90  e84b93fbff                CALL 0x00682fe0
006c9c95  8bce                      MOV ECX,ESI
006c9c97  e874d7d3ff                CALL 0x00407410
006c9c9c  50                        PUSH EAX
006c9c9d  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006c9ca3  e818d5d3ff                CALL 0x004071c0
006c9ca8  51                        PUSH ECX
006c9ca9  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
006c9cb0  8d87800c0000              LEA EAX,[EDI + 0xc80]
006c9cb6  50                        PUSH EAX
006c9cb7  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
006c9cbd  50                        PUSH EAX
006c9cbe  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
006c9cc4  50                        PUSH EAX
006c9cc5  e81696fbff                CALL 0x006832e0
006c9cca  83c410                    ADD ESP,0x10
006c9ccd  8bce                      MOV ECX,ESI
006c9ccf  e83cd7d3ff                CALL 0x00407410
006c9cd4  8bc8                      MOV ECX,EAX
006c9cd6  e895d5d3ff                CALL 0x00407270
006c9cdb  51                        PUSH ECX
006c9cdc  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
006c9ce2  d91c24                    FSTP dword ptr [ESP]
006c9ce5  e896d5d3ff                CALL 0x00407280
006c9cea  83ec10                    SUB ESP,0x10
006c9ced  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
006c9cf3  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
006c9cfb  c74424080ad7a33c          MOV dword ptr [ESP + 0x8],0x3ca3d70a
006c9d03  c74424040ad7a33c          MOV dword ptr [ESP + 0x4],0x3ca3d70a
006c9d0b  c704240ad7a33c            MOV dword ptr [ESP],0x3ca3d70a
006c9d12  e80992fbff                CALL 0x00682f20
006c9d17  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
006c9d1d  8bce                      MOV ECX,ESI
006c9d1f  50                        PUSH EAX
006c9d20  e8abd6d3ff                CALL 0x004073d0
006c9d25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9d2b  6a19                      PUSH 0x19
006c9d2d  e82ebff9ff                CALL 0x00665c60
006c9d32  84c0                      TEST AL,AL
006c9d34  7515                      JNZ 0x006c9d4b
006c9d36  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9d3c  6a09                      PUSH 0x9
006c9d3e  e81d7ad6ff                CALL 0x00431760
006c9d43  84c0                      TEST AL,AL
006c9d45  0f8453030000              JZ 0x006ca09e
006c9d4b  6a00                      PUSH 0x0
006c9d4d  8bcf                      MOV ECX,EDI
006c9d4f  e83cbefeff                CALL 0x006b5b90
006c9d54  84c0                      TEST AL,AL
006c9d56  0f8442030000              JZ 0x006ca09e
006c9d5c  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
006c9d64  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
006c9d6c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9d72  6a19                      PUSH 0x19
006c9d74  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
006c9d7c  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
006c9d84  e8d7bef9ff                CALL 0x00665c60
006c9d89  84c0                      TEST AL,AL
006c9d8b  7407                      JZ 0x006c9d94
006c9d8d  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
006c9d94  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c9d97  3d04010000                CMP EAX,0x104
006c9d9c  754a                      JNZ 0x006c9de8
006c9d9e  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
006c9da2  7562                      JNZ 0x006c9e06
006c9da4  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
006c9dac  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
006c9db4  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
006c9dbc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9dc2  e8b9d6d3ff                CALL 0x00407480
006c9dc7  8bc8                      MOV ECX,EAX
006c9dc9  e8f250d7ff                CALL 0x0043eec0
006c9dce  83f811                    CMP EAX,0x11
006c9dd1  0f85b9000000              JNZ 0x006c9e90
006c9dd7  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
006c9ddf  f30f58c0                  ADDSS XMM0,XMM0
006c9de3  e9f8000000                JMP 0x006c9ee0
006c9de8  83f847                    CMP EAX,0x47
006c9deb  74b7                      JZ 0x006c9da4
006c9ded  83f848                    CMP EAX,0x48
006c9df0  74b2                      JZ 0x006c9da4
006c9df2  83f849                    CMP EAX,0x49
006c9df5  74ad                      JZ 0x006c9da4
006c9df7  83f84a                    CMP EAX,0x4a
006c9dfa  74a8                      JZ 0x006c9da4
006c9dfc  83f84b                    CMP EAX,0x4b
006c9dff  74a3                      JZ 0x006c9da4
006c9e01  83f84c                    CMP EAX,0x4c
006c9e04  749e                      JZ 0x006c9da4
006c9e06  83f851                    CMP EAX,0x51
006c9e09  751a                      JNZ 0x006c9e25
006c9e0b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9e11  e86ad6d3ff                CALL 0x00407480
006c9e16  8bc8                      MOV ECX,EAX
006c9e18  e80351d7ff                CALL 0x0043ef20
006c9e1d  83f818                    CMP EAX,0x18
006c9e20  7482                      JZ 0x006c9da4
006c9e22  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c9e25  3d12010000                CMP EAX,0x112
006c9e2a  7437                      JZ 0x006c9e63
006c9e2c  3d13010000                CMP EAX,0x113
006c9e31  7430                      JZ 0x006c9e63
006c9e33  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9e39  e842d6d3ff                CALL 0x00407480
006c9e3e  8bc8                      MOV ECX,EAX
006c9e40  e8db50d7ff                CALL 0x0043ef20
006c9e45  83f837                    CMP EAX,0x37
006c9e48  0f856effffff              JNZ 0x006c9dbc
006c9e4e  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
006c9e56  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
006c9e5e  e951ffffff                JMP 0x006c9db4
006c9e63  80bfb003000000            CMP byte ptr [EDI + 0x3b0],0x0
006c9e6a  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
006c9e72  f30f59052ca2ba00          MULSS XMM0,dword ptr [0x00baa22c]
006c9e7a  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
006c9e82  0f8434ffffff              JZ 0x006c9dbc
006c9e88  0f57c0                    XORPS XMM0,XMM0
006c9e8b  e924ffffff                JMP 0x006c9db4
006c9e90  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9e96  e8e5d5d3ff                CALL 0x00407480
006c9e9b  8bc8                      MOV ECX,EAX
006c9e9d  e81e50d7ff                CALL 0x0043eec0
006c9ea2  83f806                    CMP EAX,0x6
006c9ea5  7512                      JNZ 0x006c9eb9
006c9ea7  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
006c9eaf  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
006c9eb7  eb27                      JMP 0x006c9ee0
006c9eb9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9ebf  e8bcd5d3ff                CALL 0x00407480
006c9ec4  8bc8                      MOV ECX,EAX
006c9ec6  e8f54fd7ff                CALL 0x0043eec0
006c9ecb  83f805                    CMP EAX,0x5
006c9ece  7418                      JZ 0x006c9ee8
006c9ed0  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
006c9ed8  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
006c9ee0  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
006c9ee8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9eee  6a09                      PUSH 0x9
006c9ef0  e86b78d6ff                CALL 0x00431760
006c9ef5  84c0                      TEST AL,AL
006c9ef7  7418                      JZ 0x006c9f11
006c9ef9  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
006c9f01  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
006c9f09  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
006c9f11  8b07                      MOV EAX,dword ptr [EDI]
006c9f13  8bcf                      MOV ECX,EDI
006c9f15  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006c9f18  ffd0                      CALL EAX
006c9f1a  84c0                      TEST AL,AL
006c9f1c  7537                      JNZ 0x006c9f55
006c9f1e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9f24  6a09                      PUSH 0x9
006c9f26  e83578d6ff                CALL 0x00431760
006c9f2b  84c0                      TEST AL,AL
006c9f2d  7526                      JNZ 0x006c9f55
006c9f2f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9f35  e846d5d3ff                CALL 0x00407480
006c9f3a  8bc8                      MOV ECX,EAX
006c9f3c  e88fc7d8ff                CALL 0x004566d0
006c9f41  85c0                      TEST EAX,EAX
006c9f43  0f8f55010000              JG 0x006ca09e
006c9f49  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
006c9f50  e949010000                JMP 0x006ca09e
006c9f55  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c9f58  83f84a                    CMP EAX,0x4a
006c9f5b  0f84fa000000              JZ 0x006ca05b
006c9f61  83f84b                    CMP EAX,0x4b
006c9f64  0f84f1000000              JZ 0x006ca05b
006c9f6a  83f84c                    CMP EAX,0x4c
006c9f6d  0f84e8000000              JZ 0x006ca05b
006c9f73  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006c9f7b  0f57c9                    XORPS XMM1,XMM1
006c9f7e  0f2fc8                    COMISS XMM1,XMM0
006c9f81  0f8207010000              JC 0x006ca08e
006c9f87  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9f8d  6a09                      PUSH 0x9
006c9f8f  e8cc77d6ff                CALL 0x00431760
006c9f94  84c0                      TEST AL,AL
006c9f96  0f858f000000              JNZ 0x006ca02b
006c9f9c  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006c9f9f  83f824                    CMP EAX,0x24
006c9fa2  0f8483000000              JZ 0x006ca02b
006c9fa8  3d06010000                CMP EAX,0x106
006c9fad  747c                      JZ 0x006ca02b
006c9faf  3d07010000                CMP EAX,0x107
006c9fb4  7475                      JZ 0x006ca02b
006c9fb6  83f84e                    CMP EAX,0x4e
006c9fb9  7470                      JZ 0x006ca02b
006c9fbb  83f847                    CMP EAX,0x47
006c9fbe  746b                      JZ 0x006ca02b
006c9fc0  83f848                    CMP EAX,0x48
006c9fc3  7466                      JZ 0x006ca02b
006c9fc5  83f849                    CMP EAX,0x49
006c9fc8  7461                      JZ 0x006ca02b
006c9fca  3d04010000                CMP EAX,0x104
006c9fcf  7506                      JNZ 0x006c9fd7
006c9fd1  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
006c9fd5  7454                      JZ 0x006ca02b
006c9fd7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9fdd  e89ed4d3ff                CALL 0x00407480
006c9fe2  8bc8                      MOV ECX,EAX
006c9fe4  e8d74ed7ff                CALL 0x0043eec0
006c9fe9  83f811                    CMP EAX,0x11
006c9fec  743d                      JZ 0x006ca02b
006c9fee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c9ff4  e887d4d3ff                CALL 0x00407480
006c9ff9  8bc8                      MOV ECX,EAX
006c9ffb  e8204fd7ff                CALL 0x0043ef20
006ca000  83f837                    CMP EAX,0x37
006ca003  7426                      JZ 0x006ca02b
006ca005  837f2851                  CMP dword ptr [EDI + 0x28],0x51
006ca009  7517                      JNZ 0x006ca022
006ca00b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca011  e86ad4d3ff                CALL 0x00407480
006ca016  8bc8                      MOV ECX,EAX
006ca018  e8034fd7ff                CALL 0x0043ef20
006ca01d  83f818                    CMP EAX,0x18
006ca020  7409                      JZ 0x006ca02b
006ca022  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
006ca029  eb73                      JMP 0x006ca09e
006ca02b  8b07                      MOV EAX,dword ptr [EDI]
006ca02d  8d4dc4                    LEA ECX,[EBP + -0x3c]
006ca030  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
006ca037  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
006ca03a  e831bcd6ff                CALL 0x00435c70
006ca03f  6a1e                      PUSH 0x1e
006ca041  50                        PUSH EAX
006ca042  6a00                      PUSH 0x0
006ca044  6a00                      PUSH 0x0
006ca046  51                        PUSH ECX
006ca047  8bcf                      MOV ECX,EDI
006ca049  c704240000803f            MOV dword ptr [ESP],0x3f800000
006ca050  ffd6                      CALL ESI
006ca052  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
006ca059  eb43                      JMP 0x006ca09e
006ca05b  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006ca063  0f57c9                    XORPS XMM1,XMM1
006ca066  0f2fc8                    COMISS XMM1,XMM0
006ca069  7223                      JC 0x006ca08e
006ca06b  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
006ca072  741a                      JZ 0x006ca08e
006ca074  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
006ca07b  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
006ca085  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
006ca08c  eb10                      JMP 0x006ca09e
006ca08e  f30f5c8584fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffd84]
006ca096  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
006ca09e  8bcf                      MOV ECX,EDI
006ca0a0  e8abc50000                CALL 0x006d6650
006ca0a5  8bcf                      MOV ECX,EDI
006ca0a7  e81426feff                CALL 0x006ac6c0
006ca0ac  84c0                      TEST AL,AL
006ca0ae  0f8551010000              JNZ 0x006ca205
006ca0b4  388771010000              CMP byte ptr [EDI + 0x171],AL
006ca0ba  0f8445010000              JZ 0x006ca205
006ca0c0  6a00                      PUSH 0x0
006ca0c2  8bcf                      MOV ECX,EDI
006ca0c4  e8c7bafeff                CALL 0x006b5b90
006ca0c9  84c0                      TEST AL,AL
006ca0cb  0f8434010000              JZ 0x006ca205
006ca0d1  8d8f60030000              LEA ECX,[EDI + 0x360]
006ca0d7  e8f45d3400                CALL 0x00a0fed0
006ca0dc  d99d7cfdffff              FSTP dword ptr [EBP + 0xfffffd7c]
006ca0e2  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
006ca0ea  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
006ca0f1  0f860e010000              JBE 0x006ca205
006ca0f7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca0fd  e87ed3d3ff                CALL 0x00407480
006ca102  8bc8                      MOV ECX,EAX
006ca104  e8b7671500                CALL 0x008208c0
006ca109  84c0                      TEST AL,AL
006ca10b  0f84f4000000              JZ 0x006ca205
006ca111  ff7720                    PUSH dword ptr [EDI + 0x20]
006ca114  8bcf                      MOV ECX,EDI
006ca116  6a07                      PUSH 0x7
006ca118  e8f325feff                CALL 0x006ac710
006ca11d  84c0                      TEST AL,AL
006ca11f  0f84e0000000              JZ 0x006ca205
006ca125  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
006ca12c  0f84d3000000              JZ 0x006ca205
006ca132  e8294e0200                CALL 0x006eef60
006ca137  8bf0                      MOV ESI,EAX
006ca139  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006ca13f  8d8760030000              LEA EAX,[EDI + 0x360]
006ca145  50                        PUSH EAX
006ca146  8d45bc                    LEA EAX,[EBP + -0x44]
006ca149  50                        PUSH EAX
006ca14a  e8d1623400                CALL 0x00a10420
006ca14f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca155  6a00                      PUSH 0x0
006ca157  68acd5c500                PUSH 0xc5d5ac
006ca15c  68dcd5c500                PUSH 0xc5d5dc
006ca161  6a00                      PUSH 0x0
006ca163  56                        PUSH ESI
006ca164  6a00                      PUSH 0x0
006ca166  57                        PUSH EDI
006ca167  6840b6c700                PUSH 0xc7b640
006ca16c  50                        PUSH EAX
006ca16d  6a63                      PUSH 0x63
006ca16f  68e8030000                PUSH 0x3e8
006ca174  e8a7e9d5ff                CALL 0x00428b20
006ca179  50                        PUSH EAX
006ca17a  e832674200                CALL 0x00af08b1
006ca17f  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
006ca187  83c414                    ADD ESP,0x14
006ca18a  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
006ca192  8bf0                      MOV ESI,EAX
006ca194  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006ca19a  b93c79c300                MOV ECX,0xc3793c
006ca19f  50                        PUSH EAX
006ca1a0  f30f5987380c0000          MULSS XMM0,dword ptr [EDI + 0xc38]
006ca1a8  8d8518fdffff              LEA EAX,[EBP + 0xfffffd18]
006ca1ae  50                        PUSH EAX
006ca1af  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006ca1b7  e824633400                CALL 0x00a104e0
006ca1bc  50                        PUSH EAX
006ca1bd  8bce                      MOV ECX,ESI
006ca1bf  e8ec37d6ff                CALL 0x0042d9b0
006ca1c4  51                        PUSH ECX
006ca1c5  8bce                      MOV ECX,ESI
006ca1c7  c70424000020c1            MOV dword ptr [ESP],0xc1200000
006ca1ce  e81dbbd6ff                CALL 0x00435cf0
006ca1d3  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006ca1d9  c7857cfdffff0000003f      MOV dword ptr [EBP + 0xfffffd7c],0x3f000000
006ca1e3  50                        PUSH EAX
006ca1e4  8d8500fdffff              LEA EAX,[EBP + 0xfffffd00]
006ca1ea  50                        PUSH EAX
006ca1eb  8d8f60030000              LEA ECX,[EDI + 0x360]
006ca1f1  e8ea623400                CALL 0x00a104e0
006ca1f6  50                        PUSH EAX
006ca1f7  8bce                      MOV ECX,ESI
006ca1f9  e812e7d5ff                CALL 0x00428910
006ca1fe  8b06                      MOV EAX,dword ptr [ESI]
006ca200  8bce                      MOV ECX,ESI
006ca202  ff500c                    CALL dword ptr [EAX + 0xc]
006ca205  8db73c030000              LEA ESI,[EDI + 0x33c]
006ca20b  56                        PUSH ESI
006ca20c  8d8f14030000              LEA ECX,[EDI + 0x314]
006ca212  89b55cfdffff              MOV dword ptr [EBP + 0xfffffd5c],ESI
006ca218  e893311100                CALL 0x007dd3b0
006ca21d  80bf600c000000            CMP byte ptr [EDI + 0xc60],0x0
006ca224  751f                      JNZ 0x006ca245
006ca226  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006ca22c  e8cf75d5ff                CALL 0x00421800
006ca231  ff772c                    PUSH dword ptr [EDI + 0x2c]
006ca234  8bc8                      MOV ECX,EAX
006ca236  ff7728                    PUSH dword ptr [EDI + 0x28]
006ca239  e8620c2600                CALL 0x0092aea0
006ca23e  c687600c000001            MOV byte ptr [EDI + 0xc60],0x1
006ca245  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006ca24b  8bcf                      MOV ECX,EDI
006ca24d  ff7720                    PUSH dword ptr [EDI + 0x20]
006ca250  8b80d0000000              MOV EAX,dword ptr [EAX + 0xd0]
006ca256  03c0                      ADD EAX,EAX
006ca258  50                        PUSH EAX
006ca259  e8b224feff                CALL 0x006ac710
006ca25e  84c0                      TEST AL,AL
006ca260  7535                      JNZ 0x006ca297
006ca262  817f2822030000            CMP dword ptr [EDI + 0x28],0x322
006ca269  7539                      JNZ 0x006ca2a4
006ca26b  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
006ca272  7530                      JNZ 0x006ca2a4
006ca274  8d4f48                    LEA ECX,[EDI + 0x48]
006ca277  e8e441d5ff                CALL 0x0041e460
006ca27c  8bc8                      MOV ECX,EAX
006ca27e  e82dd1d3ff                CALL 0x004073b0
006ca283  84c0                      TEST AL,AL
006ca285  741d                      JZ 0x006ca2a4
006ca287  ff7720                    PUSH dword ptr [EDI + 0x20]
006ca28a  8bcf                      MOV ECX,EDI
006ca28c  6a03                      PUSH 0x3
006ca28e  e87d24feff                CALL 0x006ac710
006ca293  84c0                      TEST AL,AL
006ca295  740d                      JZ 0x006ca2a4
006ca297  6a00                      PUSH 0x0
006ca299  8d8f000f0000              LEA ECX,[EDI + 0xf00]
006ca29f  e81ca5e1ff                CALL 0x004e47c0
006ca2a4  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ca2a7  3d8a030000                CMP EAX,0x38a
006ca2ac  750a                      JNZ 0x006ca2b8
006ca2ae  8bcf                      MOV ECX,EDI
006ca2b0  e89b21dfff                CALL 0x004bc450
006ca2b5  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ca2b8  3d8b030000                CMP EAX,0x38b
006ca2bd  752a                      JNZ 0x006ca2e9
006ca2bf  83bf640b000001            CMP dword ptr [EDI + 0xb64],0x1
006ca2c6  0f859b000000              JNZ 0x006ca367
006ca2cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca2d2  e8a9d1d3ff                CALL 0x00407480
006ca2d7  8bc8                      MOV ECX,EAX
006ca2d9  e892e7d5ff                CALL 0x00428a70
006ca2de  56                        PUSH ESI
006ca2df  8bc8                      MOV ECX,EAX
006ca2e1  e82aaa2700                CALL 0x00944d10
006ca2e6  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ca2e9  83f85c                    CMP EAX,0x5c
006ca2ec  7579                      JNZ 0x006ca367
006ca2ee  8d8f34030000              LEA ECX,[EDI + 0x334]
006ca2f4  6840b6c700                PUSH 0xc7b640
006ca2f9  e8b2301100                CALL 0x007dd3b0
006ca2fe  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
006ca302  7563                      JNZ 0x006ca367
006ca304  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
006ca30a  85c9                      TEST ECX,ECX
006ca30c  7459                      JZ 0x006ca367
006ca30e  e81d22feff                CALL 0x006ac530
006ca313  84c0                      TEST AL,AL
006ca315  7450                      JZ 0x006ca367
006ca317  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
006ca31d  8d45bc                    LEA EAX,[EBP + -0x44]
006ca320  50                        PUSH EAX
006ca321  8bce                      MOV ECX,ESI
006ca323  e868cfd4ff                CALL 0x00417290
006ca328  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006ca32e  51                        PUSH ECX
006ca32f  8d8d18fdffff              LEA ECX,[EBP + 0xfffffd18]
006ca335  51                        PUSH ECX
006ca336  8bc8                      MOV ECX,EAX
006ca338  e843613400                CALL 0x00a10480
006ca33d  50                        PUSH EAX
006ca33e  8d8f34030000              LEA ECX,[EDI + 0x334]
006ca344  e867301100                CALL 0x007dd3b0
006ca349  8d8500fdffff              LEA EAX,[EBP + 0xfffffd00]
006ca34f  50                        PUSH EAX
006ca350  8d8f34030000              LEA ECX,[EDI + 0x334]
006ca356  e805633400                CALL 0x00a10660
006ca35b  50                        PUSH EAX
006ca35c  8d8e34030000              LEA ECX,[ESI + 0x334]
006ca362  e849301100                CALL 0x007dd3b0
006ca367  817f289b010000            CMP dword ptr [EDI + 0x28],0x19b
006ca36e  0f8595010000              JNZ 0x006ca509
006ca374  6834d5b100                PUSH 0xb1d534
006ca379  8d4f48                    LEA ECX,[EDI + 0x48]
006ca37c  e8af0cd4ff                CALL 0x0040b030
006ca381  84c0                      TEST AL,AL
006ca383  0f8480010000              JZ 0x006ca509
006ca389  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca38f  e8ecd0d3ff                CALL 0x00407480
006ca394  8bc8                      MOV ECX,EAX
006ca396  e8d5d0d3ff                CALL 0x00407470
006ca39b  0f2f0598a1ba00            COMISS XMM0,dword ptr [0x00baa198]
006ca3a2  0f8661010000              JBE 0x006ca509
006ca3a8  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
006ca3b0  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006ca3b6  0f28d1                    MOVAPS XMM2,XMM1
006ca3b9  f30f591524a3ba00          MULSS XMM2,dword ptr [0x00baa324]
006ca3c1  e8ca5a3400                CALL 0x00a0fe90
006ca3c6  b90a000000                MOV ECX,0xa
006ca3cb  e8404cfbff                CALL 0x0067f010
006ca3d0  83c00c                    ADD EAX,0xc
006ca3d3  89857cfdffff              MOV dword ptr [EBP + 0xfffffd7c],EAX
006ca3d9  85c0                      TEST EAX,EAX
006ca3db  0f8e28010000              JLE 0x006ca509
006ca3e1  8bf8                      MOV EDI,EAX
006ca3e3  8d45bc                    LEA EAX,[EBP + -0x44]
006ca3e6  50                        PUSH EAX
006ca3e7  e8844cfbff                CALL 0x0067f070
006ca3ec  83c404                    ADD ESP,0x4
006ca3ef  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006ca3f5  50                        PUSH EAX
006ca3f6  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006ca3fc  50                        PUSH EAX
006ca3fd  e80e613400                CALL 0x00a10510
006ca402  e8d94bfbff                CALL 0x0067efe0
006ca407  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006ca40f  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006ca415  50                        PUSH EAX
006ca416  8d957cfdffff              LEA EDX,[EBP + 0xfffffd7c]
006ca41c  8d8d18fdffff              LEA ECX,[EBP + 0xfffffd18]
006ca422  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
006ca42a  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
006ca432  e899cdd4ff                CALL 0x004171d0
006ca437  83c404                    ADD ESP,0x4
006ca43a  8d8d28fdffff              LEA ECX,[EBP + 0xfffffd28]
006ca440  51                        PUSH ECX
006ca441  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006ca447  51                        PUSH ECX
006ca448  8bc8                      MOV ECX,EAX
006ca44a  e851613400                CALL 0x00a105a0
006ca44f  e80c4b0200                CALL 0x006eef60
006ca454  8b8d5cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd5c]
006ca45a  8bf0                      MOV ESI,EAX
006ca45c  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
006ca462  50                        PUSH EAX
006ca463  8d8500fdffff              LEA EAX,[EBP + 0xfffffd00]
006ca469  50                        PUSH EAX
006ca46a  e8b15f3400                CALL 0x00a10420
006ca46f  56                        PUSH ESI
006ca470  6a01                      PUSH 0x1
006ca472  6a00                      PUSH 0x0
006ca474  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
006ca47a  51                        PUSH ECX
006ca47b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca481  50                        PUSH EAX
006ca482  6a63                      PUSH 0x63
006ca484  68e8030000                PUSH 0x3e8
006ca489  e892e6d5ff                CALL 0x00428b20
006ca48e  8bf0                      MOV ESI,EAX
006ca490  8bce                      MOV ECX,ESI
006ca492  e889ced4ff                CALL 0x00417320
006ca497  8d8d24fdffff              LEA ECX,[EBP + 0xfffffd24]
006ca49d  c78524fdffff00000040      MOV dword ptr [EBP + 0xfffffd24],0x40000000
006ca4a7  51                        PUSH ECX
006ca4a8  8d8ddcfcffff              LEA ECX,[EBP + 0xfffffcdc]
006ca4ae  51                        PUSH ECX
006ca4af  8bc8                      MOV ECX,EAX
006ca4b1  e82a603400                CALL 0x00a104e0
006ca4b6  50                        PUSH EAX
006ca4b7  8bce                      MOV ECX,ESI
006ca4b9  e8f234d6ff                CALL 0x0042d9b0
006ca4be  e81d4bfbff                CALL 0x0067efe0
006ca4c3  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
006ca4cb  51                        PUSH ECX
006ca4cc  f30f100d90adba00          MOVSS XMM1,dword ptr [0x00baad90]
006ca4d4  8bce                      MOV ECX,ESI
006ca4d6  f30f5cc8                  SUBSS XMM1,XMM0
006ca4da  f30f110c24                MOVSS dword ptr [ESP],XMM1
006ca4df  e88ca7d7ff                CALL 0x00444c70
006ca4e4  51                        PUSH ECX
006ca4e5  8bce                      MOV ECX,ESI
006ca4e7  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
006ca4ee  e89da7d7ff                CALL 0x00444c90
006ca4f3  8b06                      MOV EAX,dword ptr [ESI]
006ca4f5  8bce                      MOV ECX,ESI
006ca4f7  ff500c                    CALL dword ptr [EAX + 0xc]
006ca4fa  83ef01                    SUB EDI,0x1
006ca4fd  0f85e0feffff              JNZ 0x006ca3e3
006ca503  8bbd54fdffff              MOV EDI,dword ptr [EBP + 0xfffffd54]
006ca509  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006ca510  0f84f0020000              JZ 0x006ca806
006ca516  80bd3ffdffff00            CMP byte ptr [EBP + 0xfffffd3f],0x0
006ca51d  0f85da020000              JNZ 0x006ca7fd
006ca523  8b07                      MOV EAX,dword ptr [EDI]
006ca525  8bcf                      MOV ECX,EDI
006ca527  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006ca52a  ffd0                      CALL EAX
006ca52c  84c0                      TEST AL,AL
006ca52e  0f85c9020000              JNZ 0x006ca7fd
006ca534  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006ca53a  80782c00                  CMP byte ptr [EAX + 0x2c],0x0
006ca53e  0f85b9020000              JNZ 0x006ca7fd
006ca544  6800000400                PUSH 0x40000
006ca549  6a00                      PUSH 0x0
006ca54b  8bcf                      MOV ECX,EDI
006ca54d  e8deced4ff                CALL 0x00417430
006ca552  84c0                      TEST AL,AL
006ca554  0f84a3020000              JZ 0x006ca7fd
006ca55a  8bcf                      MOV ECX,EDI
006ca55c  e85f18ffff                CALL 0x006bbdc0
006ca561  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca567  33f6                      XOR ESI,ESI
006ca569  e862d3d4ff                CALL 0x004178d0
006ca56e  85c0                      TEST EAX,EAX
006ca570  7424                      JZ 0x006ca596
006ca572  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca578  56                        PUSH ESI
006ca579  e8f2d2d4ff                CALL 0x00417870
006ca57e  57                        PUSH EDI
006ca57f  8bc8                      MOV ECX,EAX
006ca581  e8fa5a0d00                CALL 0x007a0080
006ca586  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca58c  46                        INC ESI
006ca58d  e83ed3d4ff                CALL 0x004178d0
006ca592  3bf0                      CMP ESI,EAX
006ca594  72dc                      JC 0x006ca572
006ca596  8bcf                      MOV ECX,EDI
006ca598  e8b3ad0000                CALL 0x006d5350
006ca59d  8d856cfdffff              LEA EAX,[EBP + 0xfffffd6c]
006ca5a3  50                        PUSH EAX
006ca5a4  8d8fcc030000              LEA ECX,[EDI + 0x3cc]
006ca5aa  e8c121d6ff                CALL 0x0042c770
006ca5af  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006ca5b5  50                        PUSH EAX
006ca5b6  8d8fcc030000              LEA ECX,[EDI + 0x3cc]
006ca5bc  e8dfbbd8ff                CALL 0x004561a0
006ca5c1  50                        PUSH EAX
006ca5c2  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006ca5c8  e84321d6ff                CALL 0x0042c710
006ca5cd  84c0                      TEST AL,AL
006ca5cf  7449                      JZ 0x006ca61a
006ca5d1  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006ca5d7  e85414f0ff                CALL 0x005cba30
006ca5dc  6a00                      PUSH 0x0
006ca5de  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006ca5e4  8b00                      MOV EAX,dword ptr [EAX]
006ca5e6  c70000000000              MOV dword ptr [EAX],0x0
006ca5ec  8d855cfdffff              LEA EAX,[EBP + 0xfffffd5c]
006ca5f2  50                        PUSH EAX
006ca5f3  e8f872f8ff                CALL 0x006518f0
006ca5f8  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
006ca5fe  50                        PUSH EAX
006ca5ff  8d8fcc030000              LEA ECX,[EDI + 0x3cc]
006ca605  e896bbd8ff                CALL 0x004561a0
006ca60a  50                        PUSH EAX
006ca60b  8d8d6cfdffff              LEA ECX,[EBP + 0xfffffd6c]
006ca611  e8fa20d6ff                CALL 0x0042c710
006ca616  84c0                      TEST AL,AL
006ca618  75b7                      JNZ 0x006ca5d1
006ca61a  8d8fcc030000              LEA ECX,[EDI + 0x3cc]
006ca620  e82b4de0ff                CALL 0x004cf350
006ca625  8d4f48                    LEA ECX,[EDI + 0x48]
006ca628  e8e302d4ff                CALL 0x0040a910
006ca62d  8d4f48                    LEA ECX,[EDI + 0x48]
006ca630  e88b03d4ff                CALL 0x0040a9c0
006ca635  8bcf                      MOV ECX,EDI
006ca637  e8f43ffeff                CALL 0x006ae630
006ca63c  8d8fd80c0000              LEA ECX,[EDI + 0xcd8]
006ca642  e8c9d8d3ff                CALL 0x00407f10
006ca647  8b07                      MOV EAX,dword ptr [EDI]
006ca649  51                        PUSH ECX
006ca64a  8bcf                      MOV ECX,EDI
006ca64c  c7042400000000            MOV dword ptr [ESP],0x0
006ca653  ff5040                    CALL dword ptr [EAX + 0x40]
006ca656  8b8784010000              MOV EAX,dword ptr [EDI + 0x184]
006ca65c  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
006ca666  83f803                    CMP EAX,0x3
006ca669  7c05                      JL 0x006ca670
006ca66b  83f807                    CMP EAX,0x7
006ca66e  750a                      JNZ 0x006ca67a
006ca670  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
006ca67a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ca680  e8fbcdd3ff                CALL 0x00407480
006ca685  51                        PUSH ECX
006ca686  c7042400000000            MOV dword ptr [ESP],0x0
006ca68d  8db73c030000              LEA ESI,[EDI + 0x33c]
006ca693  56                        PUSH ESI
006ca694  8d4dbc                    LEA ECX,[EBP + -0x44]
006ca697  51                        PUSH ECX
006ca698  8bc8                      MOV ECX,EAX
006ca69a  e8f1b9d6ff                CALL 0x00436090
006ca69f  50                        PUSH EAX
006ca6a0  8bce                      MOV ECX,ESI
006ca6a2  e8092d1100                CALL 0x007dd3b0
006ca6a7  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006ca6ad  83784800                  CMP dword ptr [EAX + 0x48],0x0
006ca6b1  7f23                      JG 0x006ca6d6
006ca6b3  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
006ca6bb  6a08                      PUSH 0x8
006ca6bd  ffb778030000              PUSH dword ptr [EDI + 0x378]
006ca6c3  ffb774030000              PUSH dword ptr [EDI + 0x374]
006ca6c9  51                        PUSH ECX
006ca6ca  8bcf                      MOV ECX,EDI
006ca6cc  f30f110424                MOVSS dword ptr [ESP],XMM0
006ca6d1  e8ca1bfeff                CALL 0x006ac2a0
006ca6d6  6800000200                PUSH 0x20000
006ca6db  6811000100                PUSH 0x10011
006ca6e0  8bcf                      MOV ECX,EDI
006ca6e2  c7877c03000000007a44      MOV dword ptr [EDI + 0x37c],0x447a0000
006ca6ec  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
006ca6f3  66c7873c0c00000000        MOV word ptr [EDI + 0xc3c],0x0
006ca6fc  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
006ca703  e8d8ccd4ff                CALL 0x004173e0
006ca708  817f2822030000            CMP dword ptr [EDI + 0x28],0x322
006ca70f  c7878003000000002041      MOV dword ptr [EDI + 0x380],0x41200000
006ca719  c7878403000000002041      MOV dword ptr [EDI + 0x384],0x41200000
006ca723  751f                      JNZ 0x006ca744
006ca725  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
006ca72b  85c9                      TEST ECX,ECX
006ca72d  7415                      JZ 0x006ca744
006ca72f  e81cfbd5ff                CALL 0x0042a250
006ca734  84c0                      TEST AL,AL
006ca736  740c                      JZ 0x006ca744
006ca738  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
006ca73e  57                        PUSH EDI
006ca73f  e89c39f6ff                CALL 0x0062e0e0
006ca744  6a00                      PUSH 0x0
006ca746  8bcf                      MOV ECX,EDI
006ca748  c7473400000000            MOV dword ptr [EDI + 0x34],0x0
006ca74f  c7473800000000            MOV dword ptr [EDI + 0x38],0x0
006ca756  e805ecfdff                CALL 0x006a9360
006ca75b  6a00                      PUSH 0x0
006ca75d  8bcf                      MOV ECX,EDI
006ca75f  e83cebfdff                CALL 0x006a92a0
006ca764  6a00                      PUSH 0x0
006ca766  8bcf                      MOV ECX,EDI
006ca768  e873ebfdff                CALL 0x006a92e0
006ca76d  6a00                      PUSH 0x0
006ca76f  8bcf                      MOV ECX,EDI
006ca771  e8aaebfdff                CALL 0x006a9320
006ca776  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ca779  8bcf                      MOV ECX,EDI
006ca77b  898710040000              MOV dword ptr [EDI + 0x410],EAX
006ca781  8b07                      MOV EAX,dword ptr [EDI]
006ca783  c74728c3030000            MOV dword ptr [EDI + 0x28],0x3c3
006ca78a  ff5060                    CALL dword ptr [EAX + 0x60]
006ca78d  8b07                      MOV EAX,dword ptr [EDI]
006ca78f  8d8d90fdffff              LEA ECX,[EBP + 0xfffffd90]
006ca795  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
006ca79d  83ec20                    SUB ESP,0x20
006ca7a0  0f28d8                    MOVAPS XMM3,XMM0
006ca7a3  0f28d0                    MOVAPS XMM2,XMM0
006ca7a6  0f28c8                    MOVAPS XMM1,XMM0
006ca7a9  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006ca7ac  c744241c9a99993f          MOV dword ptr [ESP + 0x1c],0x3f99999a
006ca7b4  c74424180000803f          MOV dword ptr [ESP + 0x18],0x3f800000
006ca7bc  c7442414cdcc4c3f          MOV dword ptr [ESP + 0x14],0x3f4ccccd
006ca7c4  c74424100000003f          MOV dword ptr [ESP + 0x10],0x3f000000
006ca7cc  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
006ca7d4  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
006ca7dc  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
006ca7e4  c704240000803f            MOV dword ptr [ESP],0x3f800000
006ca7eb  e860b3d6ff                CALL 0x00435b50
006ca7f0  6a01                      PUSH 0x1
006ca7f2  6a01                      PUSH 0x1
006ca7f4  6a01                      PUSH 0x1
006ca7f6  6a06                      PUSH 0x6
006ca7f8  50                        PUSH EAX
006ca7f9  8bcf                      MOV ECX,EDI
006ca7fb  ffd6                      CALL ESI
006ca7fd  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006ca804  7525                      JNZ 0x006ca82b
006ca806  83bf640b000012            CMP dword ptr [EDI + 0xb64],0x12
006ca80d  741c                      JZ 0x006ca82b
006ca80f  6800008000                PUSH 0x800000
006ca814  6a00                      PUSH 0x0
006ca816  8bcf                      MOV ECX,EDI
006ca818  e8e3cbd4ff                CALL 0x00417400
006ca81d  6a00                      PUSH 0x0
006ca81f  6800004000                PUSH 0x400000
006ca824  8bcf                      MOV ECX,EDI
006ca826  e8d5cbd4ff                CALL 0x00417400
006ca82b  8b873c0f0000              MOV EAX,dword ptr [EDI + 0xf3c]
006ca831  85c0                      TEST EAX,EAX
006ca833  7e31                      JLE 0x006ca866
006ca835  83c0ff                    ADD EAX,-0x1
006ca838  89873c0f0000              MOV dword ptr [EDI + 0xf3c],EAX
006ca83e  752f                      JNZ 0x006ca86f
006ca840  8b07                      MOV EAX,dword ptr [EDI]
006ca842  8bcf                      MOV ECX,EDI
006ca844  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006ca847  ffd0                      CALL EAX
006ca849  84c0                      TEST AL,AL
006ca84b  740a                      JZ 0x006ca857
006ca84d  c7873c0f00006affffff      MOV dword ptr [EDI + 0xf3c],0xffffff6a
006ca857  8d8f380f0000              LEA ECX,[EDI + 0xf38]
006ca85d  33d2                      XOR EDX,EDX
006ca85f  e8ecb2feff                CALL 0x006b5b50
006ca864  eb09                      JMP 0x006ca86f
006ca866  7907                      JNS 0x006ca86f
006ca868  40                        INC EAX
006ca869  89873c0f0000              MOV dword ptr [EDI + 0xf3c],EAX
006ca86f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006ca872  64890d00000000            MOV dword ptr FS:[0x0],ECX
006ca879  59                        POP ECX
006ca87a  5f                        POP EDI
006ca87b  5e                        POP ESI
006ca87c  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
006ca87f  33cd                      XOR ECX,EBP
006ca881  e8a5484200                CALL 0x00aef12b
006ca886  8be5                      MOV ESP,EBP
006ca888  5d                        POP EBP
006ca889  8be3                      MOV ESP,EBX
006ca88b  5b                        POP EBX
006ca88c  c3                        RET
006ca88d  68100ec800                PUSH 0xc80e10
006ca892  e8064a4200                CALL 0x00aef29d
006ca897  83c404                    ADD ESP,0x4
006ca89a  833d100ec800ff            CMP dword ptr [0x00c80e10],-0x1
006ca8a1  0f851cc2ffff              JNZ 0x006c6ac3
006ca8a7  83ec20                    SUB ESP,0x20
006ca8aa  c745fc06000000            MOV dword ptr [EBP + -0x4],0x6
006ca8b1  0f57db                    XORPS XMM3,XMM3
006ca8b4  0f57d2                    XORPS XMM2,XMM2
006ca8b7  0f57c9                    XORPS XMM1,XMM1
006ca8ba  b9140ec800                MOV ECX,0xc80e14
006ca8bf  c744241cba490c3e          MOV dword ptr [ESP + 0x1c],0x3e0c49ba
006ca8c7  c74424182fdd243e          MOV dword ptr [ESP + 0x18],0x3e24dd2f
006ca8cf  c74424145c8f823e          MOV dword ptr [ESP + 0x14],0x3e828f5c
006ca8d7  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006ca8df  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006ca8e7  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006ca8ef  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006ca8f7  c704240000803f            MOV dword ptr [ESP],0x3f800000
006ca8fe  e84db2d6ff                CALL 0x00435b50
006ca903  68100ec800                PUSH 0xc80e10
006ca908  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006ca90f  e83f494200                CALL 0x00aef253
006ca914  83c404                    ADD ESP,0x4
006ca917  e9a7c1ffff                JMP 0x006c6ac3
