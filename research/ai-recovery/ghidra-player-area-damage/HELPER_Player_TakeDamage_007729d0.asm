; J460 NPC AI 0x007729d0 HELPER_Player_TakeDamage
; types=1
; identities=1.*
; entry=007729d0
007729d0  55                        PUSH EBP
007729d1  8bec                      MOV EBP,ESP
007729d3  6aff                      PUSH -0x1
007729d5  687af2af00                PUSH 0xaff27a
007729da  64a100000000              MOV EAX,FS:[0x0]
007729e0  50                        PUSH EAX
007729e1  81ec40010000              SUB ESP,0x140
007729e7  a1b493bf00                MOV EAX,[0x00bf93b4]
007729ec  33c5                      XOR EAX,EBP
007729ee  8945f0                    MOV dword ptr [EBP + -0x10],EAX
007729f1  56                        PUSH ESI
007729f2  57                        PUSH EDI
007729f3  50                        PUSH EAX
007729f4  8d45f4                    LEA EAX,[EBP + -0xc]
007729f7  64a300000000              MOV FS:[0x0],EAX
007729fd  8bf9                      MOV EDI,ECX
007729ff  89bdd4feffff              MOV dword ptr [EBP + 0xfffffed4],EDI
00772a05  83bfc013000028            CMP dword ptr [EDI + 0x13c0],0x28
00772a0c  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
00772a0f  8b7514                    MOV ESI,dword ptr [EBP + 0x14]
00772a12  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
00772a18  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
00772a1b  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
00772a21  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
00772a27  7571                      JNZ 0x00772a9a
00772a29  8b8f681e0000              MOV ECX,dword ptr [EDI + 0x1e68]
00772a2f  85c9                      TEST ECX,ECX
00772a31  7467                      JZ 0x00772a9a
00772a33  6a00                      PUSH 0x0
00772a35  6814010000                PUSH 0x114
00772a3a  e8a1dcffff                CALL 0x007706e0
00772a3f  84c0                      TEST AL,AL
00772a41  7557                      JNZ 0x00772a9a
00772a43  83bfc013000028            CMP dword ptr [EDI + 0x13c0],0x28
00772a4a  751d                      JNZ 0x00772a69
00772a4c  8b8f681e0000              MOV ECX,dword ptr [EDI + 0x1e68]
00772a52  81b90016000060010000      CMP dword ptr [ECX + 0x1600],0x160
00772a5c  750b                      JNZ 0x00772a69
00772a5e  81c11c040000              ADD ECX,0x41c
00772a64  e8a754c9ff                CALL 0x00407f10
00772a69  ff7518                    PUSH dword ptr [EBP + 0x18]
00772a6c  8b8f681e0000              MOV ECX,dword ptr [EDI + 0x1e68]
00772a72  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
00772a78  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00772a7d  81ca00080000              OR EDX,0x800
00772a83  56                        PUSH ESI
00772a84  ff7510                    PUSH dword ptr [EBP + 0x10]
00772a87  8b01                      MOV EAX,dword ptr [ECX]
00772a89  52                        PUSH EDX
00772a8a  51                        PUSH ECX
00772a8b  f30f110424                MOVSS dword ptr [ESP],XMM0
00772a90  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
00772a93  ffd0                      CALL EAX
00772a95  e997650000                JMP 0x00779031
00772a9a  813ec6030000              CMP dword ptr [ESI],0x3c6
00772aa0  754d                      JNZ 0x00772aef
00772aa2  6a00                      PUSH 0x0
00772aa4  68acd6c500                PUSH 0xc5d6ac
00772aa9  68dcd5c500                PUSH 0xc5d5dc
00772aae  6a00                      PUSH 0x0
00772ab0  ff7624                    PUSH dword ptr [ESI + 0x24]
00772ab3  e8f9dd3700                CALL 0x00af08b1
00772ab8  83c414                    ADD ESP,0x14
00772abb  85c0                      TEST EAX,EAX
00772abd  7430                      JZ 0x00772aef
00772abf  6a00                      PUSH 0x0
00772ac1  6878d6c500                PUSH 0xc5d678
00772ac6  68dcd5c500                PUSH 0xc5d5dc
00772acb  6a00                      PUSH 0x0
00772acd  ffb0c4030000              PUSH dword ptr [EAX + 0x3c4]
00772ad3  e8d9dd3700                CALL 0x00af08b1
00772ad8  83c414                    ADD ESP,0x14
00772adb  85c0                      TEST EAX,EAX
00772add  7410                      JZ 0x00772aef
00772adf  8b80f00e0000              MOV EAX,dword ptr [EAX + 0xef0]
00772ae5  48                        DEC EAX
00772ae6  83f81c                    CMP EAX,0x1c
00772ae9  0f8640650000              JBE 0x0077902f
00772aef  833e03                    CMP dword ptr [ESI],0x3
00772af2  752d                      JNZ 0x00772b21
00772af4  6a00                      PUSH 0x0
00772af6  6878d6c500                PUSH 0xc5d678
00772afb  68dcd5c500                PUSH 0xc5d5dc
00772b00  6a00                      PUSH 0x0
00772b02  ff7624                    PUSH dword ptr [ESI + 0x24]
00772b05  e8a7dd3700                CALL 0x00af08b1
00772b0a  83c414                    ADD ESP,0x14
00772b0d  85c0                      TEST EAX,EAX
00772b0f  7410                      JZ 0x00772b21
00772b11  8b80f00e0000              MOV EAX,dword ptr [EAX + 0xef0]
00772b17  48                        DEC EAX
00772b18  83f81c                    CMP EAX,0x1c
00772b1b  0f860e650000              JBE 0x0077902f
00772b21  ff7510                    PUSH dword ptr [EBP + 0x10]
00772b24  8bcf                      MOV ECX,EDI
00772b26  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
00772b2c  e8df4f0500                CALL 0x007c7b10
00772b31  84c0                      TEST AL,AL
00772b33  0f85f6640000              JNZ 0x0077902f
00772b39  833e21                    CMP dword ptr [ESI],0x21
00772b3c  0f8531010000              JNZ 0x00772c73
00772b42  837e0404                  CMP dword ptr [ESI + 0x4],0x4
00772b46  0f8527010000              JNZ 0x00772c73
00772b4c  8b87c0130000              MOV EAX,dword ptr [EDI + 0x13c0]
00772b52  83c0fc                    ADD EAX,-0x4
00772b55  83f824                    CMP EAX,0x24
00772b58  770e                      JA 0x00772b68
00772b5a  0fb68088917700            MOVZX EAX,byte ptr [EAX + 0x779188]
00772b61  ff24857c917700            JMP dword ptr [EAX*0x4 + 0x77917c]
00772b68  8d8f08150000              LEA ECX,[EDI + 0x1508]
00772b6e  6a70                      PUSH 0x70
00772b70  e80bdb1b00                CALL 0x00930680
00772b75  84c0                      TEST AL,AL
00772b77  0f85b2640000              JNZ 0x0077902f
00772b7d  83bfc013000027            CMP dword ptr [EDI + 0x13c0],0x27
00772b84  0f84a5640000              JZ 0x0077902f
00772b8a  833e21                    CMP dword ptr [ESI],0x21
00772b8d  0f85e0000000              JNZ 0x00772c73
00772b93  837e0404                  CMP dword ptr [ESI + 0x4],0x4
00772b97  0f85d6000000              JNZ 0x00772c73
00772b9d  388773010000              CMP byte ptr [EDI + 0x173],AL
00772ba3  0f8586640000              JNZ 0x0077902f
00772ba9  8bcf                      MOV ECX,EDI
00772bab  e8f05b0600                CALL 0x007d87a0
00772bb0  6a70                      PUSH 0x70
00772bb2  8d8f08150000              LEA ECX,[EDI + 0x1508]
00772bb8  e8c3da1b00                CALL 0x00930680
00772bbd  84c0                      TEST AL,AL
00772bbf  7513                      JNZ 0x00772bd4
00772bc1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00772bc7  6a70                      PUSH 0x70
00772bc9  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
00772bcf  e87cbc2400                CALL 0x009be850
00772bd4  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00772bda  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00772be0  c78504ffffff2b000000      MOV dword ptr [EBP + 0xffffff04],0x2b
00772bea  e8913b1e00                CALL 0x00956780
00772bef  83ec08                    SUB ESP,0x8
00772bf2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00772bfa  c704240000803f            MOV dword ptr [ESP],0x3f800000
00772c01  6a00                      PUSH 0x0
00772c03  6a02                      PUSH 0x2
00772c05  51                        PUSH ECX
00772c06  c704240000803f            MOV dword ptr [ESP],0x3f800000
00772c0d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00772c13  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
00772c19  e812b01b00                CALL 0x0092dc30
00772c1e  a19c16c700                MOV EAX,[0x00c7169c]
00772c23  80b88ea3020000            CMP byte ptr [EAX + 0x2a38e],0x0
00772c2a  0f84bd630000              JZ 0x00778fed
00772c30  6a00                      PUSH 0x0
00772c32  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00772c38  c785e8feffff9a99193f      MOV dword ptr [EBP + 0xfffffee8],0x3f19999a
00772c42  50                        PUSH EAX
00772c43  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
00772c49  c78504ffffff9a99993f      MOV dword ptr [EBP + 0xffffff04],0x3f99999a
00772c53  50                        PUSH EAX
00772c54  a1187bc500                MOV EAX,[0x00c57b18]
00772c59  b9187bc500                MOV ECX,0xc57b18
00772c5e  68700ba200                PUSH 0xa20b70
00772c63  ffb718160000              PUSH dword ptr [EDI + 0x1618]
00772c69  ff5074                    CALL dword ptr [EAX + 0x74]
00772c6c  b001                      MOV AL,0x1
00772c6e  e9be630000                JMP 0x00779031
00772c73  8bcf                      MOV ECX,EDI
00772c75  e8868a0600                CALL 0x007db700
00772c7a  84c0                      TEST AL,AL
00772c7c  0f85ad630000              JNZ 0x0077902f
00772c82  813ee8030000              CMP dword ptr [ESI],0x3e8
00772c88  7510                      JNZ 0x00772c9a
00772c8a  837e0413                  CMP dword ptr [ESI + 0x4],0x13
00772c8e  750a                      JNZ 0x00772c9a
00772c90  837e0801                  CMP dword ptr [ESI + 0x8],0x1
00772c94  0f8495630000              JZ 0x0077902f
00772c9a  a17816c700                MOV EAX,[0x00c71678]
00772c9f  8b4e20                    MOV ECX,dword ptr [ESI + 0x20]
00772ca2  83e102                    AND ECX,0x2
00772ca5  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00772cac  7d19                      JGE 0x00772cc7
00772cae  85c9                      TEST ECX,ECX
00772cb0  0f8579630000              JNZ 0x0077902f
00772cb6  8b4d10                    MOV ECX,dword ptr [EBP + 0x10]
00772cb9  33c0                      XOR EAX,EAX
00772cbb  83e104                    AND ECX,0x4
00772cbe  0bc1                      OR EAX,ECX
00772cc0  7450                      JZ 0x00772d12
00772cc2  e968630000                JMP 0x0077902f
00772cc7  85c9                      TEST ECX,ECX
00772cc9  7437                      JZ 0x00772d02
00772ccb  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
00772cce  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00772cd4  85c0                      TEST EAX,EAX
00772cd6  0f8453630000              JZ 0x0077902f
00772cdc  57                        PUSH EDI
00772cdd  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00772ce3  e828e6cbff                CALL 0x00431310
00772ce8  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
00772cee  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00772cf4  50                        PUSH EAX
00772cf5  e816a0f3ff                CALL 0x006acd10
00772cfa  84c0                      TEST AL,AL
00772cfc  0f852d630000              JNZ 0x0077902f
00772d02  8b4d10                    MOV ECX,dword ptr [EBP + 0x10]
00772d05  33c0                      XOR EAX,EAX
00772d07  83e104                    AND ECX,0x4
00772d0a  0bc1                      OR EAX,ECX
00772d0c  0f851d630000              JNZ 0x0077902f
00772d12  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
00772d15  85c9                      TEST ECX,ECX
00772d17  743d                      JZ 0x00772d56
00772d19  81792862030000            CMP dword ptr [ECX + 0x28],0x362
00772d20  7534                      JNZ 0x00772d56
00772d22  8b87c01f0000              MOV EAX,dword ptr [EDI + 0x1fc0]
00772d28  3bc8                      CMP ECX,EAX
00772d2a  742a                      JZ 0x00772d56
00772d2c  3981bc030000              CMP dword ptr [ECX + 0x3bc],EAX
00772d32  7504                      JNZ 0x00772d38
00772d34  85c0                      TEST EAX,EAX
00772d36  751e                      JNZ 0x00772d56
00772d38  3981c0030000              CMP dword ptr [ECX + 0x3c0],EAX
00772d3e  7504                      JNZ 0x00772d44
00772d40  85c0                      TEST EAX,EAX
00772d42  7512                      JNZ 0x00772d56
00772d44  8b89c8030000              MOV ECX,dword ptr [ECX + 0x3c8]
00772d4a  3bcf                      CMP ECX,EDI
00772d4c  7408                      JZ 0x00772d56
00772d4e  3bc8                      CMP ECX,EAX
00772d50  0f85d9620000              JNZ 0x0077902f
00772d56  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00772d5d  0f85cc620000              JNZ 0x0077902f
00772d63  83bfc013000028            CMP dword ptr [EDI + 0x13c0],0x28
00772d6a  750a                      JNZ 0x00772d76
00772d6c  8b8f681e0000              MOV ECX,dword ptr [EDI + 0x1e68]
00772d72  85c9                      TEST ECX,ECX
00772d74  7502                      JNZ 0x00772d78
00772d76  8bcf                      MOV ECX,EDI
00772d78  6a00                      PUSH 0x0
00772d7a  6814010000                PUSH 0x114
00772d7f  e85cd9ffff                CALL 0x007706e0
00772d84  84c0                      TEST AL,AL
00772d86  7509                      JNZ 0x00772d91
00772d88  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
00772d8f  7514                      JNZ 0x00772da5
00772d91  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00772d97  2520280000                AND EAX,0x2820
00772d9c  83c800                    OR EAX,0x0
00772d9f  0f848a620000              JZ 0x0077902f
00772da5  83ec28                    SUB ESP,0x28
00772da8  8bcc                      MOV ECX,ESP
00772daa  ff7624                    PUSH dword ptr [ESI + 0x24]
00772dad  e85ee5cbff                CALL 0x00431310
00772db2  8bcf                      MOV ECX,EDI
00772db4  e8778c0600                CALL 0x007dba30
00772db9  84c0                      TEST AL,AL
00772dbb  0f856e620000              JNZ 0x0077902f
00772dc1  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00772dc5  7408                      JZ 0x00772dcf
00772dc7  3887a9200000              CMP byte ptr [EDI + 0x20a9],AL
00772dcd  742c                      JZ 0x00772dfb
00772dcf  8d4748                    LEA EAX,[EDI + 0x48]
00772dd2  6898d5b100                PUSH 0xb1d598
00772dd7  8bc8                      MOV ECX,EAX
00772dd9  e8f276c9ff                CALL 0x0040a4d0
00772dde  84c0                      TEST AL,AL
00772de0  0f8549620000              JNZ 0x0077902f
00772de6  6834aeb600                PUSH 0xb6ae34
00772deb  8d4f48                    LEA ECX,[EDI + 0x48]
00772dee  e8dd76c9ff                CALL 0x0040a4d0
00772df3  84c0                      TEST AL,AL
00772df5  0f8534620000              JNZ 0x0077902f
00772dfb  813e87030000              CMP dword ptr [ESI],0x387
00772e01  7544                      JNZ 0x00772e47
00772e03  837e040a                  CMP dword ptr [ESI + 0x4],0xa
00772e07  753e                      JNZ 0x00772e47
00772e09  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
00772e0c  85c9                      TEST ECX,ECX
00772e0e  7437                      JZ 0x00772e47
00772e10  8b81c0030000              MOV EAX,dword ptr [ECX + 0x3c0]
00772e16  85c0                      TEST EAX,EAX
00772e18  7421                      JZ 0x00772e3b
00772e1a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00772e20  81782887030000            CMP dword ptr [EAX + 0x28],0x387
00772e27  7512                      JNZ 0x00772e3b
00772e29  83782c0a                  CMP dword ptr [EAX + 0x2c],0xa
00772e2d  750c                      JNZ 0x00772e3b
00772e2f  8bc8                      MOV ECX,EAX
00772e31  8b81c0030000              MOV EAX,dword ptr [ECX + 0x3c0]
00772e37  85c0                      TEST EAX,EAX
00772e39  75e5                      JNZ 0x00772e20
00772e3b  39b9c4030000              CMP dword ptr [ECX + 0x3c4],EDI
00772e41  0f84e8610000              JZ 0x0077902f
00772e47  8d873c030000              LEA EAX,[EDI + 0x33c]
00772e4d  6a01                      PUSH 0x1
00772e4f  8d95c0feffff              LEA EDX,[EBP + 0xfffffec0]
00772e55  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00772e5b  8bc8                      MOV ECX,EAX
00772e5d  e8ae4ed7ff                CALL 0x004e7d10
00772e62  83c404                    ADD ESP,0x4
00772e65  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00772e6b  6a00                      PUSH 0x0
00772e6d  85c0                      TEST EAX,EAX
00772e6f  0f8427010000              JZ 0x00772f9c
00772e75  8b08                      MOV ECX,dword ptr [EAX]
00772e77  8b7120                    MOV ESI,dword ptr [ECX + 0x20]
00772e7a  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00772e80  e88be4cbff                CALL 0x00431310
00772e85  6a0f                      PUSH 0xf
00772e87  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00772e8d  50                        PUSH EAX
00772e8e  6a00                      PUSH 0x0
00772e90  6a40                      PUSH 0x40
00772e92  51                        PUSH ECX
00772e93  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00772e99  c7042400006040            MOV dword ptr [ESP],0x40600000
00772ea0  ffd6                      CALL ESI
00772ea2  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00772ea8  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00772eae  c78504fffffff5010000      MOV dword ptr [EBP + 0xffffff04],0x1f5
00772eb8  e8c3381e00                CALL 0x00956780
00772ebd  83ec08                    SUB ESP,0x8
00772ec0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00772ec8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00772ecf  6a00                      PUSH 0x0
00772ed1  6a0a                      PUSH 0xa
00772ed3  51                        PUSH ECX
00772ed4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00772edb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00772ee1  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
00772ee7  e844ad1b00                CALL 0x0092dc30
00772eec  8b8fd8030000              MOV ECX,dword ptr [EDI + 0x3d8]
00772ef2  85c9                      TEST ECX,ECX
00772ef4  7405                      JZ 0x00772efb
00772ef6  8b01                      MOV EAX,dword ptr [ECX]
00772ef8  ff5028                    CALL dword ptr [EAX + 0x28]
00772efb  e860c0f7ff                CALL 0x006eef60
00772f00  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00772f06  50                        PUSH EAX
00772f07  6a00                      PUSH 0x0
00772f09  ffb5f8feffff              PUSH dword ptr [EBP + 0xfffffef8]
00772f0f  8d873c030000              LEA EAX,[EDI + 0x33c]
00772f15  6840b6c700                PUSH 0xc7b640
00772f1a  50                        PUSH EAX
00772f1b  68a0000000                PUSH 0xa0
00772f20  68e8030000                PUSH 0x3e8
00772f25  e8f65bcbff                CALL 0x00428b20
00772f2a  ffb5f8feffff              PUSH dword ptr [EBP + 0xfffffef8]
00772f30  8bf0                      MOV ESI,EAX
00772f32  8bce                      MOV ECX,ESI
00772f34  e86763f3ff                CALL 0x006a92a0
00772f39  57                        PUSH EDI
00772f3a  8bce                      MOV ECX,ESI
00772f3c  e8df63f3ff                CALL 0x006a9320
00772f41  c7866804000000000000      MOV dword ptr [ESI + 0x468],0x0
00772f4b  0f57c0                    XORPS XMM0,XMM0
00772f4e  c7866c0400000000c0c1      MOV dword ptr [ESI + 0x46c],0xc1c00000
00772f58  8bce                      MOV ECX,ESI
00772f5a  f30f108f4c030000          MOVSS XMM1,dword ptr [EDI + 0x34c]
00772f62  f30f58c8                  ADDSS XMM1,XMM0
00772f66  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00772f6e  f30f5c059ca8ba00          SUBSS XMM0,dword ptr [0x00baa89c]
00772f76  f30f118e4c030000          MOVSS dword ptr [ESI + 0x34c],XMM1
00772f7e  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
00772f86  8b06                      MOV EAX,dword ptr [ESI]
00772f88  ff500c                    CALL dword ptr [EAX + 0xc]
00772f8b  56                        PUSH ESI
00772f8c  8d8fd8030000              LEA ECX,[EDI + 0x3d8]
00772f92  e8e9c3d5ff                CALL 0x004cf380
00772f97  e993600000                JMP 0x0077902f
00772f9c  6a6c                      PUSH 0x6c
00772f9e  8bcf                      MOV ECX,EDI
00772fa0  e8abe5ffff                CALL 0x00771550
00772fa5  84c0                      TEST AL,AL
00772fa7  0f84fa000000              JZ 0x007730a7
00772fad  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00772fb3  83e004                    AND EAX,0x4
00772fb6  83c800                    OR EAX,0x0
00772fb9  0f84e8000000              JZ 0x007730a7
00772fbf  8bb77c170000              MOV ESI,dword ptr [EDI + 0x177c]
00772fc5  8d8ec0060000              LEA ECX,[ESI + 0x6c0]
00772fcb  e820610700                CALL 0x007e90f0
00772fd0  8b86c0060000              MOV EAX,dword ptr [ESI + 0x6c0]
00772fd6  33d2                      XOR EDX,EDX
00772fd8  b964000000                MOV ECX,0x64
00772fdd  f7f1                      DIV ECX
00772fdf  83fa21                    CMP EDX,0x21
00772fe2  0f83b9000000              JNC 0x007730a1
00772fe8  6a6c                      PUSH 0x6c
00772fea  8bcf                      MOV ECX,EDI
00772fec  e8ef860500                CALL 0x007cb6e0
00772ff1  8bc8                      MOV ECX,EAX
00772ff3  b8c0bcb600                MOV EAX,0xb6bcc0
00772ff8  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
00772ffe  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00773004  85c9                      TEST ECX,ECX
00773006  7e7c                      JLE 0x00773084
00773008  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
0077300e  6690                      NOP
00773010  8b8f7c170000              MOV ECX,dword ptr [EDI + 0x177c]
00773016  81c1c0060000              ADD ECX,0x6c0
0077301c  e8cf600700                CALL 0x007e90f0
00773021  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773027  8bf0                      MOV ESI,EAX
00773029  6a00                      PUSH 0x0
0077302b  6a00                      PUSH 0x0
0077302d  6a00                      PUSH 0x0
0077302f  51                        PUSH ECX
00773030  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00773036  8d873c030000              LEA EAX,[EDI + 0x33c]
0077303c  c7042400002042            MOV dword ptr [ESP],0x42200000
00773043  50                        PUSH EAX
00773044  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
0077304a  50                        PUSH EAX
0077304b  e8d0040a00                CALL 0x00813520
00773050  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773056  56                        PUSH ESI
00773057  6a00                      PUSH 0x0
00773059  57                        PUSH EDI
0077305a  6840b6c700                PUSH 0xc7b640
0077305f  50                        PUSH EAX
00773060  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00773066  ff30                      PUSH dword ptr [EAX]
00773068  6a05                      PUSH 0x5
0077306a  e8b15acbff                CALL 0x00428b20
0077306f  83ad04ffffff01            SUB dword ptr [EBP + 0xffffff04],0x1
00773076  7598                      JNZ 0x00773010
00773078  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
0077307e  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00773084  83c004                    ADD EAX,0x4
00773087  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
0077308d  3dd0bcb600                CMP EAX,0xb6bcd0
00773092  0f8c6cffffff              JL 0x00773004
00773098  6a6c                      PUSH 0x6c
0077309a  8bcf                      MOV ECX,EDI
0077309c  e8bfeeffff                CALL 0x00771f60
007730a1  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
007730a7  6a00                      PUSH 0x0
007730a9  68df000000                PUSH 0xdf
007730ae  8bcf                      MOV ECX,EDI
007730b0  e82bd6ffff                CALL 0x007706e0
007730b5  84c0                      TEST AL,AL
007730b7  0f84aa000000              JZ 0x00773167
007730bd  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
007730c3  8bc1                      MOV EAX,ECX
007730c5  83e002                    AND EAX,0x2
007730c8  83c800                    OR EAX,0x0
007730cb  0f855e5f0000              JNZ 0x0077902f
007730d1  8bc1                      MOV EAX,ECX
007730d3  83e004                    AND EAX,0x4
007730d6  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
007730dc  83c800                    OR EAX,0x0
007730df  0f8491000000              JZ 0x00773176
007730e5  8bcf                      MOV ECX,EDI
007730e7  e8747f0500                CALL 0x007cb060
007730ec  398744130000              CMP dword ptr [EDI + 0x1344],EAX
007730f2  0f8d375f0000              JGE 0x0077902f
007730f8  e863bef7ff                CALL 0x006eef60
007730fd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773103  6a00                      PUSH 0x0
00773105  68acd5c500                PUSH 0xc5d5ac
0077310a  68dcd5c500                PUSH 0xc5d5dc
0077310f  6a00                      PUSH 0x0
00773111  50                        PUSH EAX
00773112  6a00                      PUSH 0x0
00773114  6a00                      PUSH 0x0
00773116  6840b6c700                PUSH 0xc7b640
0077311b  8d873c030000              LEA EAX,[EDI + 0x33c]
00773121  50                        PUSH EAX
00773122  6a31                      PUSH 0x31
00773124  68e8030000                PUSH 0x3e8
00773129  e8f259cbff                CALL 0x00428b20
0077312e  50                        PUSH EAX
0077312f  e87dd73700                CALL 0x00af08b1
00773134  83c414                    ADD ESP,0x14
00773137  8bcf                      MOV ECX,EDI
00773139  c780dc00000000000000      MOV dword ptr [EAX + 0xdc],0x0
00773143  6a00                      PUSH 0x0
00773145  6a00                      PUSH 0x0
00773147  6a01                      PUSH 0x1
00773149  c780e00000000000c0c1      MOV dword ptr [EAX + 0xe0],0xc1c00000
00773153  c780580300000000803f      MOV dword ptr [EAX + 0x358],0x3f800000
0077315d  e80e59feff                CALL 0x00758a70
00773162  e9c85e0000                JMP 0x0077902f
00773167  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
0077316d  83e004                    AND EAX,0x4
00773170  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00773176  6a00                      PUSH 0x0
00773178  6877010000                PUSH 0x177
0077317d  8bcf                      MOV ECX,EDI
0077317f  e85cd5ffff                CALL 0x007706e0
00773184  84c0                      TEST AL,AL
00773186  0f84d1000000              JZ 0x0077325d
0077318c  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00773192  83c800                    OR EAX,0x0
00773195  0f84c2000000              JZ 0x0077325d
0077319b  6830afb600                PUSH 0xb6af30
007731a0  8d4d80                    LEA ECX,[EBP + -0x80]
007731a3  e89891c9ff                CALL 0x0040c340
007731a8  6824afb600                PUSH 0xb6af24
007731ad  8d4dc0                    LEA ECX,[EBP + -0x40]
007731b0  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
007731b7  e88491c9ff                CALL 0x0040c340
007731bc  6868aeb600                PUSH 0xb6ae68
007731c1  8d4dd8                    LEA ECX,[EBP + -0x28]
007731c4  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
007731c8  e87391c9ff                CALL 0x0040c340
007731cd  685caeb600                PUSH 0xb6ae5c
007731d2  8d4da8                    LEA ECX,[EBP + -0x58]
007731d5  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
007731d9  e86291c9ff                CALL 0x0040c340
007731de  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
007731e2  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
007731e8  8b9728160000              MOV EDX,dword ptr [EDI + 0x1628]
007731ee  e8ddbff0ff                CALL 0x0067f1d0
007731f3  8d4d80                    LEA ECX,[EBP + -0x80]
007731f6  51                        PUSH ECX
007731f7  8d4dc0                    LEA ECX,[EBP + -0x40]
007731fa  51                        PUSH ECX
007731fb  8d4dd8                    LEA ECX,[EBP + -0x28]
007731fe  51                        PUSH ECX
007731ff  8d4da8                    LEA ECX,[EBP + -0x58]
00773202  51                        PUSH ECX
00773203  ff7004                    PUSH dword ptr [EAX + 0x4]
00773206  8bcf                      MOV ECX,EDI
00773208  ff30                      PUSH dword ptr [EAX]
0077320a  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00773210  50                        PUSH EAX
00773211  e8caa50300                CALL 0x007ad7e0
00773216  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
0077321a  6a00                      PUSH 0x0
0077321c  6aff                      PUSH -0x1
0077321e  50                        PUSH EAX
0077321f  6a00                      PUSH 0x0
00773221  6877010000                PUSH 0x177
00773226  8bcf                      MOV ECX,EDI
00773228  e8236dfeff                CALL 0x00759f50
0077322d  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00773233  e8e88cc9ff                CALL 0x0040bf20
00773238  8d4da8                    LEA ECX,[EBP + -0x58]
0077323b  e8e08cc9ff                CALL 0x0040bf20
00773240  8d4dd8                    LEA ECX,[EBP + -0x28]
00773243  e8d88cc9ff                CALL 0x0040bf20
00773248  8d4dc0                    LEA ECX,[EBP + -0x40]
0077324b  e8d08cc9ff                CALL 0x0040bf20
00773250  8d4d80                    LEA ECX,[EBP + -0x80]
00773253  e8c88cc9ff                CALL 0x0040bf20
00773258  e9d25d0000                JMP 0x0077902f
0077325d  6a05                      PUSH 0x5
0077325f  8bcf                      MOV ECX,EDI
00773261  e81ae5e3ff                CALL 0x005b1780
00773266  84c0                      TEST AL,AL
00773268  751c                      JNZ 0x00773286
0077326a  6a0a                      PUSH 0xa
0077326c  8bcf                      MOV ECX,EDI
0077326e  e80de5e3ff                CALL 0x005b1780
00773273  84c0                      TEST AL,AL
00773275  7465                      JZ 0x007732dc
00773277  6a00                      PUSH 0x0
00773279  6a34                      PUSH 0x34
0077327b  8bcf                      MOV ECX,EDI
0077327d  e85ed4ffff                CALL 0x007706e0
00773282  84c0                      TEST AL,AL
00773284  7456                      JZ 0x007732dc
00773286  6a00                      PUSH 0x0
00773288  6895000000                PUSH 0x95
0077328d  8bcf                      MOV ECX,EDI
0077328f  e84cd4ffff                CALL 0x007706e0
00773294  84c0                      TEST AL,AL
00773296  7444                      JZ 0x007732dc
00773298  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
0077329e  83c800                    OR EAX,0x0
007732a1  7439                      JZ 0x007732dc
007732a3  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
007732a6  83f801                    CMP EAX,0x1
007732a9  7405                      JZ 0x007732b0
007732ab  83f803                    CMP EAX,0x3
007732ae  752c                      JNZ 0x007732dc
007732b0  6a00                      PUSH 0x0
007732b2  6838d8c500                PUSH 0xc5d838
007732b7  68dcd5c500                PUSH 0xc5d5dc
007732bc  6a00                      PUSH 0x0
007732be  ff7624                    PUSH dword ptr [ESI + 0x24]
007732c1  e8ebd53700                CALL 0x00af08b1
007732c6  83c414                    ADD ESP,0x14
007732c9  85c0                      TEST EAX,EAX
007732cb  740f                      JZ 0x007732dc
007732cd  8bc8                      MOV ECX,EAX
007732cf  e8cce3cbff                CALL 0x004316a0
007732d4  84c0                      TEST AL,AL
007732d6  0f85535d0000              JNZ 0x0077902f
007732dc  6a0a                      PUSH 0xa
007732de  8bcf                      MOV ECX,EDI
007732e0  e89be4e3ff                CALL 0x005b1780
007732e5  84c0                      TEST AL,AL
007732e7  7426                      JZ 0x0077330f
007732e9  6a00                      PUSH 0x0
007732eb  6895000000                PUSH 0x95
007732f0  8bcf                      MOV ECX,EDI
007732f2  e8e9d3ffff                CALL 0x007706e0
007732f7  84c0                      TEST AL,AL
007732f9  7414                      JZ 0x0077330f
007732fb  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00773301  83c800                    OR EAX,0x0
00773304  7409                      JZ 0x0077330f
00773306  833e08                    CMP dword ptr [ESI],0x8
00773309  0f84205d0000              JZ 0x0077902f
0077330f  6a00                      PUSH 0x0
00773311  6800010000                PUSH 0x100
00773316  8bcf                      MOV ECX,EDI
00773318  e8c3d3ffff                CALL 0x007706e0
0077331d  84c0                      TEST AL,AL
0077331f  7412                      JZ 0x00773333
00773321  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773327  83e002                    AND EAX,0x2
0077332a  83c800                    OR EAX,0x0
0077332d  0f85fc5c0000              JNZ 0x0077902f
00773333  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00773337  7518                      JNZ 0x00773351
00773339  83bfec1a000014            CMP dword ptr [EDI + 0x1aec],0x14
00773340  750f                      JNZ 0x00773351
00773342  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00773348  83c800                    OR EAX,0x0
0077334b  0f85de5c0000              JNZ 0x0077902f
00773351  6a00                      PUSH 0x0
00773353  68b2020000                PUSH 0x2b2
00773358  8bcf                      MOV ECX,EDI
0077335a  e881d3ffff                CALL 0x007706e0
0077335f  84c0                      TEST AL,AL
00773361  0f8481040000              JZ 0x007737e8
00773367  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
0077336d  2500002002                AND EAX,0x2200000
00773372  83c800                    OR EAX,0x0
00773375  0f856d040000              JNZ 0x007737e8
0077337b  394624                    CMP dword ptr [ESI + 0x24],EAX
0077337e  7421                      JZ 0x007733a1
00773380  8b06                      MOV EAX,dword ptr [ESI]
00773382  83f80a                    CMP EAX,0xa
00773385  7c07                      JL 0x0077338e
00773387  3de8030000                CMP EAX,0x3e8
0077338c  7c0a                      JL 0x00773398
0077338e  83f809                    CMP EAX,0x9
00773391  7405                      JZ 0x00773398
00773393  83f801                    CMP EAX,0x1
00773396  7509                      JNZ 0x007733a1
00773398  c685fffeffff01            MOV byte ptr [EBP + 0xfffffeff],0x1
0077339f  eb07                      JMP 0x007733a8
007733a1  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
007733a8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007733ae  e89d44caff                CALL 0x00417850
007733b3  8bc8                      MOV ECX,EAX
007733b5  e8a661cbff                CALL 0x00429560
007733ba  0fb6c8                    MOVZX ECX,AL
007733bd  f7d9                      NEG ECX
007733bf  1bc9                      SBB ECX,ECX
007733c1  83c102                    ADD ECX,0x2
007733c4  e847bcf0ff                CALL 0x0067f010
007733c9  85c0                      TEST EAX,EAX
007733cb  0f8517040000              JNZ 0x007737e8
007733d1  3885fffeffff              CMP byte ptr [EBP + 0xfffffeff],AL
007733d7  0f840b040000              JZ 0x007737e8
007733dd  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
007733e0  e8cb3fcaff                CALL 0x004173b0
007733e5  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
007733e8  84c0                      TEST AL,AL
007733ea  0f84db010000              JZ 0x007735cb
007733f0  6800800000                PUSH 0x8000
007733f5  6a00                      PUSH 0x0
007733f7  e83440caff                CALL 0x00417430
007733fc  84c0                      TEST AL,AL
007733fe  0f85e4030000              JNZ 0x007737e8
00773404  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
00773407  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
0077340d  50                        PUSH EAX
0077340e  e87d3ecaff                CALL 0x00417290
00773413  8bbdd8feffff              MOV EDI,dword ptr [EBP + 0xfffffed8]
00773419  8bf0                      MOV ESI,EAX
0077341b  8b4f24                    MOV ECX,dword ptr [EDI + 0x24]
0077341e  e82d3fcaff                CALL 0x00417350
00773423  8b4f24                    MOV ECX,dword ptr [EDI + 0x24]
00773426  83c004                    ADD EAX,0x4
00773429  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
0077342f  e81c3fcaff                CALL 0x00417350
00773434  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
0077343a  8bce                      MOV ECX,ESI
0077343c  8bf8                      MOV EDI,EAX
0077343e  e8edca2900                CALL 0x00a0ff30
00773443  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00773449  d99dd0feffff              FSTP dword ptr [EBP + 0xfffffed0]
0077344f  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
00773452  e8e93ecaff                CALL 0x00417340
00773457  8b9504ffffff              MOV EDX,dword ptr [EBP + 0xffffff04]
0077345d  8bcf                      MOV ECX,EDI
0077345f  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00773467  e80497caff                CALL 0x0041cb70
0077346c  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
00773474  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
0077347a  f30f5900                  MULSS XMM0,dword ptr [EAX]
0077347e  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
00773486  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
0077348e  0f2f85d0feffff            COMISS XMM0,dword ptr [EBP + 0xfffffed0]
00773495  0f8253030000              JC 0x007737ee
0077349b  8db760030000              LEA ESI,[EDI + 0x360]
007734a1  8bbdd8feffff              MOV EDI,dword ptr [EBP + 0xfffffed8]
007734a7  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
007734ad  50                        PUSH EAX
007734ae  8b4f24                    MOV ECX,dword ptr [EDI + 0x24]
007734b1  e81a3ecaff                CALL 0x004172d0
007734b6  8bc8                      MOV ECX,EAX
007734b8  e813ca2900                CALL 0x00a0fed0
007734bd  d99d04ffffff              FSTP dword ptr [EBP + 0xffffff04]
007734c3  8bce                      MOV ECX,ESI
007734c5  e806ca2900                CALL 0x00a0fed0
007734ca  d88504ffffff              FADD dword ptr [EBP + 0xffffff04]
007734d0  d99d04ffffff              FSTP dword ptr [EBP + 0xffffff04]
007734d6  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
007734de  f30f5e05a0a8ba00          DIVSS XMM0,dword ptr [0x00baa8a0]
007734e6  e865202a00                CALL 0x00a15550
007734eb  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
007734f3  8bce                      MOV ECX,ESI
007734f5  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
007734fd  e8cec92900                CALL 0x00a0fed0
00773502  d8b504ffffff              FDIV dword ptr [EBP + 0xffffff04]
00773508  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
0077350e  8b7f24                    MOV EDI,dword ptr [EDI + 0x24]
00773511  8bcf                      MOV ECX,EDI
00773513  50                        PUSH EAX
00773514  d88de8feffff              FMUL dword ptr [EBP + 0xfffffee8]
0077351a  d99dd0feffff              FSTP dword ptr [EBP + 0xfffffed0]
00773520  e86b3dcaff                CALL 0x00417290
00773525  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
0077352b  51                        PUSH ECX
0077352c  8d4de8                    LEA ECX,[EBP + -0x18]
0077352f  51                        PUSH ECX
00773530  8bc8                      MOV ECX,EAX
00773532  e849cf2900                CALL 0x00a10480
00773537  8d4dd0                    LEA ECX,[EBP + -0x30]
0077353a  51                        PUSH ECX
0077353b  8bc8                      MOV ECX,EAX
0077353d  e8eeca2900                CALL 0x00a10030
00773542  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00773548  51                        PUSH ECX
00773549  8d4d90                    LEA ECX,[EBP + -0x70]
0077354c  51                        PUSH ECX
0077354d  8bc8                      MOV ECX,EAX
0077354f  e88ccf2900                CALL 0x00a104e0
00773554  ffb5d4feffff              PUSH dword ptr [EBP + 0xfffffed4]
0077355a  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00773560  8bf0                      MOV ESI,EAX
00773562  e8a9ddcbff                CALL 0x00431310
00773567  6a01                      PUSH 0x1
00773569  6a01                      PUSH 0x1
0077356b  56                        PUSH ESI
0077356c  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00773572  8bcf                      MOV ECX,EDI
00773574  50                        PUSH EAX
00773575  e80645f4ff                CALL 0x006b7a80
0077357a  8bb5d4feffff              MOV ESI,dword ptr [EBP + 0xfffffed4]
00773580  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00773588  51                        PUSH ECX
00773589  c704240000803f            MOV dword ptr [ESP],0x3f800000
00773590  8bce                      MOV ECX,ESI
00773592  6a00                      PUSH 0x0
00773594  6a02                      PUSH 0x2
00773596  684c020000                PUSH 0x24c
0077359b  c786fc1e00000000a041      MOV dword ptr [ESI + 0x1efc],0x41a00000
007735a5  e8c62ef4ff                CALL 0x006b6470
007735aa  6a08                      PUSH 0x8
007735ac  8bce                      MOV ECX,ESI
007735ae  e81d2cccff                CALL 0x004361d0
007735b3  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
007735b9  838e6c01000010            OR dword ptr [ESI + 0x16c],0x10
007735c0  898668010000              MOV dword ptr [ESI + 0x168],EAX
007735c6  e9645a0000                JMP 0x0077902f
007735cb  e8608ff3ff                CALL 0x006ac530
007735d0  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
007735d3  84c0                      TEST AL,AL
007735d5  0f8438010000              JZ 0x00773713
007735db  8d45e8                    LEA EAX,[EBP + -0x18]
007735de  50                        PUSH EAX
007735df  e8ac3ccaff                CALL 0x00417290
007735e4  8bbdd8feffff              MOV EDI,dword ptr [EBP + 0xfffffed8]
007735ea  8bf0                      MOV ESI,EAX
007735ec  8b4f24                    MOV ECX,dword ptr [EDI + 0x24]
007735ef  e85c3dcaff                CALL 0x00417350
007735f4  8b4f24                    MOV ECX,dword ptr [EDI + 0x24]
007735f7  83c004                    ADD EAX,0x4
007735fa  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00773600  e84b3dcaff                CALL 0x00417350
00773605  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
0077360b  8bce                      MOV ECX,ESI
0077360d  8bf8                      MOV EDI,EAX
0077360f  e81cc92900                CALL 0x00a0ff30
00773614  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
0077361a  d99dd0feffff              FSTP dword ptr [EBP + 0xfffffed0]
00773620  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
00773623  e8183dcaff                CALL 0x00417340
00773628  8b9504ffffff              MOV EDX,dword ptr [EBP + 0xffffff04]
0077362e  8bcf                      MOV ECX,EDI
00773630  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00773638  e83395caff                CALL 0x0041cb70
0077363d  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
00773645  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
0077364b  f30f5900                  MULSS XMM0,dword ptr [EAX]
0077364f  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
00773657  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
0077365f  0f2f85d0feffff            COMISS XMM0,dword ptr [EBP + 0xfffffed0]
00773666  0f8282010000              JC 0x007737ee
0077366c  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
0077366f  8d45e8                    LEA EAX,[EBP + -0x18]
00773672  50                        PUSH EAX
00773673  e8183ccaff                CALL 0x00417290
00773678  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0077367e  51                        PUSH ECX
0077367f  8d4dd0                    LEA ECX,[EBP + -0x30]
00773682  51                        PUSH ECX
00773683  8bc8                      MOV ECX,EAX
00773685  e8f6cd2900                CALL 0x00a10480
0077368a  51                        PUSH ECX
0077368b  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
00773691  c704240000a041            MOV dword ptr [ESP],0x41a00000
00773698  51                        PUSH ECX
00773699  8bc8                      MOV ECX,EAX
0077369b  e860ca2900                CALL 0x00a10100
007736a0  8b7624                    MOV ESI,dword ptr [ESI + 0x24]
007736a3  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
007736a9  57                        PUSH EDI
007736aa  e861dccbff                CALL 0x00431310
007736af  6a01                      PUSH 0x1
007736b1  6a0f                      PUSH 0xf
007736b3  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
007736b9  8bce                      MOV ECX,ESI
007736bb  50                        PUSH EAX
007736bc  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
007736c2  50                        PUSH EAX
007736c3  e8b843f4ff                CALL 0x006b7a80
007736c8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007736d0  51                        PUSH ECX
007736d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
007736d8  6a00                      PUSH 0x0
007736da  6a02                      PUSH 0x2
007736dc  c787fc1e00000000a041      MOV dword ptr [EDI + 0x1efc],0x41a00000
007736e6  684c020000                PUSH 0x24c
007736eb  8bcf                      MOV ECX,EDI
007736ed  e87e2df4ff                CALL 0x006b6470
007736f2  6a08                      PUSH 0x8
007736f4  8bcf                      MOV ECX,EDI
007736f6  e8d52accff                CALL 0x004361d0
007736fb  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00773701  838f6c01000010            OR dword ptr [EDI + 0x16c],0x10
00773708  898768010000              MOV dword ptr [EDI + 0x168],EAX
0077370e  e91c590000                JMP 0x0077902f
00773713  e828decbff                CALL 0x00431540
00773718  84c0                      TEST AL,AL
0077371a  7510                      JNZ 0x0077372c
0077371c  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
0077371f  e80cdecbff                CALL 0x00431530
00773724  84c0                      TEST AL,AL
00773726  0f84bc000000              JZ 0x007737e8
0077372c  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
0077372f  8d45e8                    LEA EAX,[EBP + -0x18]
00773732  50                        PUSH EAX
00773733  e8583bcaff                CALL 0x00417290
00773738  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0077373e  51                        PUSH ECX
0077373f  8d4dd0                    LEA ECX,[EBP + -0x30]
00773742  51                        PUSH ECX
00773743  8bc8                      MOV ECX,EAX
00773745  e836cd2900                CALL 0x00a10480
0077374a  51                        PUSH ECX
0077374b  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
00773751  c7042400002041            MOV dword ptr [ESP],0x41200000
00773758  51                        PUSH ECX
00773759  8bc8                      MOV ECX,EAX
0077375b  e8a0c92900                CALL 0x00a10100
00773760  6a00                      PUSH 0x0
00773762  680cd7c500                PUSH 0xc5d70c
00773767  68dcd5c500                PUSH 0xc5d5dc
0077376c  6a00                      PUSH 0x0
0077376e  ff7624                    PUSH dword ptr [ESI + 0x24]
00773771  e83bd13700                CALL 0x00af08b1
00773776  6a00                      PUSH 0x0
00773778  6800d9c500                PUSH 0xc5d900
0077377d  68dcd5c500                PUSH 0xc5d5dc
00773782  6a00                      PUSH 0x0
00773784  ff7624                    PUSH dword ptr [ESI + 0x24]
00773787  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
0077378d  e81fd13700                CALL 0x00af08b1
00773792  8bf0                      MOV ESI,EAX
00773794  83c428                    ADD ESP,0x28
00773797  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
0077379d  85c0                      TEST EAX,EAX
0077379f  740f                      JZ 0x007737b0
007737a1  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
007737a7  51                        PUSH ECX
007737a8  57                        PUSH EDI
007737a9  8bc8                      MOV ECX,EAX
007737ab  e8f0f7edff                CALL 0x00652fa0
007737b0  85f6                      TEST ESI,ESI
007737b2  740f                      JZ 0x007737c3
007737b4  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
007737ba  8bce                      MOV ECX,ESI
007737bc  50                        PUSH EAX
007737bd  57                        PUSH EDI
007737be  e8bd68f0ff                CALL 0x0067a080
007737c3  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
007737cb  51                        PUSH ECX
007737cc  c704240000a03f            MOV dword ptr [ESP],0x3fa00000
007737d3  6a00                      PUSH 0x0
007737d5  6a02                      PUSH 0x2
007737d7  c787fc1e000000006041      MOV dword ptr [EDI + 0x1efc],0x41600000
007737e1  6a03                      PUSH 0x3
007737e3  e903ffffff                JMP 0x007736eb
007737e8  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
007737ee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007737f4  e85740caff                CALL 0x00417850
007737f9  8bc8                      MOV ECX,EAX
007737fb  e8505dcbff                CALL 0x00429550
00773800  33c9                      XOR ECX,ECX
00773802  84c0                      TEST AL,AL
00773804  6a00                      PUSH 0x0
00773806  0f95c1                    SETNZ CL
00773809  6877010000                PUSH 0x177
0077380e  8d0c8d05000000            LEA ECX,[ECX*0x4 + 0x5]
00773815  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
0077381b  8bcf                      MOV ECX,EDI
0077381d  e8beceffff                CALL 0x007706e0
00773822  84c0                      TEST AL,AL
00773824  0f845d010000              JZ 0x00773987
0077382a  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
00773830  e8dbb7f0ff                CALL 0x0067f010
00773835  85c0                      TEST EAX,EAX
00773837  0f854a010000              JNZ 0x00773987
0077383d  833e09                    CMP dword ptr [ESI],0x9
00773840  7423                      JZ 0x00773865
00773842  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773848  e80340caff                CALL 0x00417850
0077384d  8bc8                      MOV ECX,EAX
0077384f  e8fc5ccbff                CALL 0x00429550
00773854  84c0                      TEST AL,AL
00773856  0f842b010000              JZ 0x00773987
0077385c  833e02                    CMP dword ptr [ESI],0x2
0077385f  0f8522010000              JNZ 0x00773987
00773865  8d4e18                    LEA ECX,[ESI + 0x18]
00773868  51                        PUSH ECX
00773869  8d45e8                    LEA EAX,[EBP + -0x18]
0077386c  c7042400002041            MOV dword ptr [ESP],0x41200000
00773873  50                        PUSH EAX
00773874  e887c82900                CALL 0x00a10100
00773879  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
0077387f  51                        PUSH ECX
00773880  8bc8                      MOV ECX,EAX
00773882  e8d9cd2900                CALL 0x00a10660
00773887  51                        PUSH ECX
00773888  8d45e8                    LEA EAX,[EBP + -0x18]
0077388b  c70424000070c1            MOV dword ptr [ESP],0xc1700000
00773892  50                        PUSH EAX
00773893  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
00773899  e842ca2900                CALL 0x00a102e0
0077389e  51                        PUSH ECX
0077389f  c704240000803f            MOV dword ptr [ESP],0x3f800000
007738a6  8db73c030000              LEA ESI,[EDI + 0x33c]
007738ac  6a00                      PUSH 0x0
007738ae  6a07                      PUSH 0x7
007738b0  ff7004                    PUSH dword ptr [EAX + 0x4]
007738b3  8bcf                      MOV ECX,EDI
007738b5  ff30                      PUSH dword ptr [EAX]
007738b7  56                        PUSH ESI
007738b8  e833d20100                CALL 0x00790af0
007738bd  51                        PUSH ECX
007738be  c704240000803f            MOV dword ptr [ESP],0x3f800000
007738c5  8bcf                      MOV ECX,EDI
007738c7  6a00                      PUSH 0x0
007738c9  6a07                      PUSH 0x7
007738cb  ffb5c0feffff              PUSH dword ptr [EBP + 0xfffffec0]
007738d1  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
007738d7  56                        PUSH ESI
007738d8  e813d20100                CALL 0x00790af0
007738dd  51                        PUSH ECX
007738de  8d45e8                    LEA EAX,[EBP + -0x18]
007738e1  c7042400007041            MOV dword ptr [ESP],0x41700000
007738e8  50                        PUSH EAX
007738e9  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
007738ef  e8ecc92900                CALL 0x00a102e0
007738f4  51                        PUSH ECX
007738f5  c704240000803f            MOV dword ptr [ESP],0x3f800000
007738fc  8bcf                      MOV ECX,EDI
007738fe  6a00                      PUSH 0x0
00773900  6a07                      PUSH 0x7
00773902  ff7004                    PUSH dword ptr [EAX + 0x4]
00773905  ff30                      PUSH dword ptr [EAX]
00773907  56                        PUSH ESI
00773908  e8e3d10100                CALL 0x00790af0
0077390d  6880aeb600                PUSH 0xb6ae80
00773912  8d4d80                    LEA ECX,[EBP + -0x80]
00773915  e8268ac9ff                CALL 0x0040c340
0077391a  6870aeb600                PUSH 0xb6ae70
0077391f  8d4dc0                    LEA ECX,[EBP + -0x40]
00773922  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
00773929  e8128ac9ff                CALL 0x0040c340
0077392e  688cafb600                PUSH 0xb6af8c
00773933  8d4dd8                    LEA ECX,[EBP + -0x28]
00773936  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
0077393a  e8018ac9ff                CALL 0x0040c340
0077393f  687cafb600                PUSH 0xb6af7c
00773944  8d4da8                    LEA ECX,[EBP + -0x58]
00773947  c645fc07                  MOV byte ptr [EBP + -0x4],0x7
0077394b  e8f089c9ff                CALL 0x0040c340
00773950  8d4580                    LEA EAX,[EBP + -0x80]
00773953  c645fc08                  MOV byte ptr [EBP + -0x4],0x8
00773957  50                        PUSH EAX
00773958  8d45c0                    LEA EAX,[EBP + -0x40]
0077395b  50                        PUSH EAX
0077395c  8d45d8                    LEA EAX,[EBP + -0x28]
0077395f  50                        PUSH EAX
00773960  8d45a8                    LEA EAX,[EBP + -0x58]
00773963  50                        PUSH EAX
00773964  ffb5c0feffff              PUSH dword ptr [EBP + 0xfffffec0]
0077396a  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00773970  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00773976  50                        PUSH EAX
00773977  8bcf                      MOV ECX,EDI
00773979  e8629e0300                CALL 0x007ad7e0
0077397e  c645fc09                  MOV byte ptr [EBP + -0x4],0x9
00773982  e993f8ffff                JMP 0x0077321a
00773987  6a00                      PUSH 0x0
00773989  68c1010000                PUSH 0x1c1
0077398e  8bcf                      MOV ECX,EDI
00773990  e84bcdffff                CALL 0x007706e0
00773995  84c0                      TEST AL,AL
00773997  0f840e010000              JZ 0x00773aab
0077399d  8d8f70170000              LEA ECX,[EDI + 0x1770]
007739a3  68c1010000                PUSH 0x1c1
007739a8  e85383e5ff                CALL 0x005cbd00
007739ad  6a04                      PUSH 0x4
007739af  8bc8                      MOV ECX,EAX
007739b1  e86a560700                CALL 0x007e9020
007739b6  85c0                      TEST EAX,EAX
007739b8  0f85ed000000              JNZ 0x00773aab
007739be  8b06                      MOV EAX,dword ptr [ESI]
007739c0  83f809                    CMP EAX,0x9
007739c3  7409                      JZ 0x007739ce
007739c5  83f802                    CMP EAX,0x2
007739c8  0f85dd000000              JNZ 0x00773aab
007739ce  51                        PUSH ECX
007739cf  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
007739d5  c7042400002041            MOV dword ptr [ESP],0x41200000
007739dc  50                        PUSH EAX
007739dd  8d4e18                    LEA ECX,[ESI + 0x18]
007739e0  e81bc72900                CALL 0x00a10100
007739e5  8d4de8                    LEA ECX,[EBP + -0x18]
007739e8  51                        PUSH ECX
007739e9  8bc8                      MOV ECX,EAX
007739eb  e870cc2900                CALL 0x00a10660
007739f0  51                        PUSH ECX
007739f1  c704240000803f            MOV dword ptr [ESP],0x3f800000
007739f8  8bcf                      MOV ECX,EDI
007739fa  6a00                      PUSH 0x0
007739fc  6a07                      PUSH 0x7
007739fe  ff7004                    PUSH dword ptr [EAX + 0x4]
00773a01  ff30                      PUSH dword ptr [EAX]
00773a03  8d873c030000              LEA EAX,[EDI + 0x33c]
00773a09  50                        PUSH EAX
00773a0a  e8e1d00100                CALL 0x00790af0
00773a0f  68f04bc300                PUSH 0xc34bf0
00773a14  8bf8                      MOV EDI,EAX
00773a16  8d45b0                    LEA EAX,[EBP + -0x50]
00773a19  68a04bc300                PUSH 0xc34ba0
00773a1e  50                        PUSH EAX
00773a1f  8bcf                      MOV ECX,EDI
00773a21  e89a3dcaff                CALL 0x004177c0
00773a26  8bd0                      MOV EDX,EAX
00773a28  8d4dc8                    LEA ECX,[EBP + -0x38]
00773a2b  e8f021ccff                CALL 0x00435c20
00773a30  83c404                    ADD ESP,0x4
00773a33  8d4d88                    LEA ECX,[EBP + -0x78]
00773a36  8bd0                      MOV EDX,EAX
00773a38  e8e321ccff                CALL 0x00435c20
00773a3d  83ec0c                    SUB ESP,0xc
00773a40  8bcc                      MOV ECX,ESP
00773a42  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00773a45  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00773a48  8bcf                      MOV ECX,EDI
00773a4a  e80127f0ff                CALL 0x00676150
00773a4f  8b07                      MOV EAX,dword ptr [EDI]
00773a51  8d8d54ffffff              LEA ECX,[EBP + 0xffffff54]
00773a57  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00773a5f  83ec10                    SUB ESP,0x10
00773a62  0f28d9                    MOVAPS XMM3,XMM1
00773a65  0f28d1                    MOVAPS XMM2,XMM1
00773a68  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00773a6b  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00773a73  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00773a7b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00773a83  c704240000803f            MOV dword ptr [ESP],0x3f800000
00773a8a  e85196c9ff                CALL 0x0040d0e0
00773a8f  6a01                      PUSH 0x1
00773a91  6a00                      PUSH 0x0
00773a93  68ff000000                PUSH 0xff
00773a98  6aff                      PUSH -0x1
00773a9a  50                        PUSH EAX
00773a9b  8bcf                      MOV ECX,EDI
00773a9d  ffd6                      CALL ESI
00773a9f  8b07                      MOV EAX,dword ptr [EDI]
00773aa1  8bcf                      MOV ECX,EDI
00773aa3  ff500c                    CALL dword ptr [EAX + 0xc]
00773aa6  e984550000                JMP 0x0077902f
00773aab  6a00                      PUSH 0x0
00773aad  68c9010000                PUSH 0x1c9
00773ab2  8bcf                      MOV ECX,EDI
00773ab4  e827ccffff                CALL 0x007706e0
00773ab9  84c0                      TEST AL,AL
00773abb  7462                      JZ 0x00773b1f
00773abd  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773ac3  2500002002                AND EAX,0x2200000
00773ac8  83c800                    OR EAX,0x0
00773acb  7552                      JNZ 0x00773b1f
00773acd  8d8f70170000              LEA ECX,[EDI + 0x1770]
00773ad3  68c9010000                PUSH 0x1c9
00773ad8  e82382e5ff                CALL 0x005cbd00
00773add  6a05                      PUSH 0x5
00773adf  8bc8                      MOV ECX,EAX
00773ae1  e83a550700                CALL 0x007e9020
00773ae6  85c0                      TEST EAX,EAX
00773ae8  7535                      JNZ 0x00773b1f
00773aea  8b07                      MOV EAX,dword ptr [EDI]
00773aec  8d8d54ffffff              LEA ECX,[EBP + 0xffffff54]
00773af2  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
00773afa  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00773b02  0f28d1                    MOVAPS XMM2,XMM1
00773b05  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00773b08  e8731fccff                CALL 0x00435a80
00773b0d  6a01                      PUSH 0x1
00773b0f  6a01                      PUSH 0x1
00773b11  6a01                      PUSH 0x1
00773b13  6a0a                      PUSH 0xa
00773b15  50                        PUSH EAX
00773b16  8bcf                      MOV ECX,EDI
00773b18  ffd6                      CALL ESI
00773b1a  e910550000                JMP 0x0077902f
00773b1f  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773b25  2500040d10                AND EAX,0x100d0400
00773b2a  83c800                    OR EAX,0x0
00773b2d  7507                      JNZ 0x00773b36
00773b2f  8bcf                      MOV ECX,EDI
00773b31  e8dae00500                CALL 0x007d1c10
00773b36  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773b3c  6a49                      PUSH 0x49
00773b3e  e81d21efff                CALL 0x00665c60
00773b43  84c0                      TEST AL,AL
00773b45  0f85a6540000              JNZ 0x00778ff1
00773b4b  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00773b4f  7515                      JNZ 0x00773b66
00773b51  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773b57  6a37                      PUSH 0x37
00773b59  e80221efff                CALL 0x00665c60
00773b5e  84c0                      TEST AL,AL
00773b60  0f858b540000              JNZ 0x00778ff1
00773b66  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773b6c  e8df3ccaff                CALL 0x00417850
00773b71  8bc8                      MOV ECX,EAX
00773b73  e8d859cbff                CALL 0x00429550
00773b78  84c0                      TEST AL,AL
00773b7a  740f                      JZ 0x00773b8b
00773b7c  8bcf                      MOV ECX,EDI
00773b7e  e8fdd9e3ff                CALL 0x005b1580
00773b83  84c0                      TEST AL,AL
00773b85  0f8566540000              JNZ 0x00778ff1
00773b8b  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00773b90  0f57c9                    XORPS XMM1,XMM1
00773b93  0f2fc8                    COMISS XMM1,XMM0
00773b96  0f8298000000              JC 0x00773c34
00773b9c  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773ba2  2500800000                AND EAX,0x8000
00773ba7  83c800                    OR EAX,0x0
00773baa  0f8484000000              JZ 0x00773c34
00773bb0  8bcf                      MOV ECX,EDI
00773bb2  e869f70400                CALL 0x007c3320
00773bb7  84c0                      TEST AL,AL
00773bb9  740e                      JZ 0x00773bc9
00773bbb  813ee8030000              CMP dword ptr [ESI],0x3e8
00773bc1  756c                      JNZ 0x00773c2f
00773bc3  837e047b                  CMP dword ptr [ESI + 0x4],0x7b
00773bc7  7566                      JNZ 0x00773c2f
00773bc9  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
00773bcf  e8bc45f3ff                CALL 0x006a8190
00773bd4  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773bda  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00773be0  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00773be5  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
00773beb  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
00773bee  56                        PUSH ESI
00773bef  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00773bf7  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00773bfd  e85e5dd2ff                CALL 0x00499960
00773c02  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
00773c08  8d4f08                    LEA ECX,[EDI + 0x8]
00773c0b  50                        PUSH EAX
00773c0c  e89f41f4ff                CALL 0x006b7db0
00773c11  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00773c16  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
00773c1b  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773c21  094718                    OR dword ptr [EDI + 0x18],EAX
00773c24  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
00773c27  09471c                    OR dword ptr [EDI + 0x1c],EAX
00773c2a  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
00773c2f  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00773c34  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00773c3c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773c42  f30f2cc0                  CVTTSS2SI EAX,XMM0
00773c46  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
00773c4c  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00773c52  e8f93bcaff                CALL 0x00417850
00773c57  8bc8                      MOV ECX,EAX
00773c59  e8f258cbff                CALL 0x00429550
00773c5e  b901000000                MOV ECX,0x1
00773c63  84c0                      TEST AL,AL
00773c65  741f                      JZ 0x00773c86
00773c67  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
00773c6d  85c0                      TEST EAX,EAX
00773c6f  7515                      JNZ 0x00773c86
00773c71  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00773c76  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00773c7d  0f47c1                    CMOVA EAX,ECX
00773c80  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00773c86  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773c8c  2500000002                AND EAX,0x2000000
00773c91  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
00773c97  83c800                    OR EAX,0x0
00773c9a  0f8570020000              JNZ 0x00773f10
00773ca0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773ca6  e87544f8ff                CALL 0x006f8120
00773cab  84c0                      TEST AL,AL
00773cad  7562                      JNZ 0x00773d11
00773caf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773cb5  e87608cbff                CALL 0x00424530
00773cba  8bc8                      MOV ECX,EAX
00773cbc  e8df86c9ff                CALL 0x0040c3a0
00773cc1  83f807                    CMP EAX,0x7
00773cc4  7d26                      JGE 0x00773cec
00773cc6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773ccc  e8df47f4ff                CALL 0x006b84b0
00773cd1  83f801                    CMP EAX,0x1
00773cd4  7d16                      JGE 0x00773cec
00773cd6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773cdc  e84f08cbff                CALL 0x00424530
00773ce1  8bc8                      MOV ECX,EAX
00773ce3  e8a8b3fdff                CALL 0x0074f090
00773ce8  84c0                      TEST AL,AL
00773cea  7425                      JZ 0x00773d11
00773cec  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00773cf2  c78504ffffff02000000      MOV dword ptr [EBP + 0xffffff04],0x2
00773cfc  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00773d02  e8798ecaff                CALL 0x0041cb80
00773d07  8b00                      MOV EAX,dword ptr [EAX]
00773d09  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00773d0f  eb0b                      JMP 0x00773d1c
00773d11  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773d17  e80444f8ff                CALL 0x006f8120
00773d1c  6a00                      PUSH 0x0
00773d1e  6a6c                      PUSH 0x6c
00773d20  8bcf                      MOV ECX,EDI
00773d22  e8b9c9ffff                CALL 0x007706e0
00773d27  84c0                      TEST AL,AL
00773d29  754e                      JNZ 0x00773d79
00773d2b  8d8f08150000              LEA ECX,[EDI + 0x1508]
00773d31  6a6c                      PUSH 0x6c
00773d33  e8b8c81b00                CALL 0x009305f0
00773d38  84c0                      TEST AL,AL
00773d3a  753d                      JNZ 0x00773d79
00773d3c  6a0e                      PUSH 0xe
00773d3e  8bcf                      MOV ECX,EDI
00773d40  e89b790500                CALL 0x007cb6e0
00773d45  83f802                    CMP EAX,0x2
00773d48  7f2f                      JG 0x00773d79
00773d4a  f6462004                  TEST byte ptr [ESI + 0x20],0x4
00773d4e  7529                      JNZ 0x00773d79
00773d50  6a00                      PUSH 0x0
00773d52  6879020000                PUSH 0x279
00773d57  8bcf                      MOV ECX,EDI
00773d59  e882c9ffff                CALL 0x007706e0
00773d5e  84c0                      TEST AL,AL
00773d60  0f8496000000              JZ 0x00773dfc
00773d66  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773d6c  e88f43f8ff                CALL 0x006f8100
00773d71  84c0                      TEST AL,AL
00773d73  0f8583000000              JNZ 0x00773dfc
00773d79  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00773d81  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773d87  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00773d8f  e8bc3acaff                CALL 0x00417850
00773d94  8bc8                      MOV ECX,EAX
00773d96  e8b557cbff                CALL 0x00429550
00773d9b  84c0                      TEST AL,AL
00773d9d  740a                      JZ 0x00773da9
00773d9f  f30f100d80a3ba00          MOVSS XMM1,dword ptr [0x00baa380]
00773da7  eb08                      JMP 0x00773db1
00773da9  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
00773db1  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
00773db7  83f801                    CMP EAX,0x1
00773dba  7e40                      JLE 0x00773dfc
00773dbc  660f6ec0                  MOVD XMM0,EAX
00773dc0  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
00773dc6  0f5bc0                    CVTDQ2PS XMM0,XMM0
00773dc9  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00773dcf  c785e8feffff01000000      MOV dword ptr [EBP + 0xfffffee8],0x1
00773dd9  f30f59c1                  MULSS XMM0,XMM1
00773ddd  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00773de5  f30f2cc0                  CVTTSS2SI EAX,XMM0
00773de9  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00773def  e88c8dcaff                CALL 0x0041cb80
00773df4  8b00                      MOV EAX,dword ptr [EAX]
00773df6  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00773dfc  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00773e02  e8f98bcbff                CALL 0x0042ca00
00773e07  6a1d                      PUSH 0x1d
00773e09  8bc8                      MOV ECX,EAX
00773e0b  e890bffbff                CALL 0x0072fda0
00773e10  50                        PUSH EAX
00773e11  8d8f08150000              LEA ECX,[EDI + 0x1508]
00773e17  e8a4c71b00                CALL 0x009305c0
00773e1c  84c0                      TEST AL,AL
00773e1e  746a                      JZ 0x00773e8a
00773e20  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00773e28  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773e2e  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00773e36  e8153acaff                CALL 0x00417850
00773e3b  8bc8                      MOV ECX,EAX
00773e3d  e80e57cbff                CALL 0x00429550
00773e42  84c0                      TEST AL,AL
00773e44  7410                      JZ 0x00773e56
00773e46  f30f1005c0a4ba00          MOVSS XMM0,dword ptr [0x00baa4c0]
00773e4e  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00773e56  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00773e5c  c785e8feffff02000000      MOV dword ptr [EBP + 0xfffffee8],0x2
00773e66  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00773e6c  e80f8dcaff                CALL 0x0041cb80
00773e71  660f6e00                  MOVD XMM0,dword ptr [EAX]
00773e75  0f5bc0                    CVTDQ2PS XMM0,XMM0
00773e78  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
00773e80  f30f2cc0                  CVTTSS2SI EAX,XMM0
00773e84  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00773e8a  8bcf                      MOV ECX,EDI
00773e8c  e84f710500                CALL 0x007cafe0
00773e91  8b8d00ffffff              MOV ECX,dword ptr [EBP + 0xffffff00]
00773e97  83f803                    CMP EAX,0x3
00773e9a  b802000000                MOV EAX,0x2
00773e9f  0f44c8                    CMOVZ ECX,EAX
00773ea2  898d00ffffff              MOV dword ptr [EBP + 0xffffff00],ECX
00773ea8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773eae  6a2f                      PUSH 0x2f
00773eb0  e8ab1defff                CALL 0x00665c60
00773eb5  84c0                      TEST AL,AL
00773eb7  7423                      JZ 0x00773edc
00773eb9  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00773ebf  c78504ffffff02000000      MOV dword ptr [EBP + 0xffffff04],0x2
00773ec9  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00773ecf  e8ac8ccaff                CALL 0x0041cb80
00773ed4  8b00                      MOV EAX,dword ptr [EAX]
00773ed6  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00773edc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773ee2  6a30                      PUSH 0x30
00773ee4  e8771defff                CALL 0x00665c60
00773ee9  84c0                      TEST AL,AL
00773eeb  7423                      JZ 0x00773f10
00773eed  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00773ef3  c78504ffffff18000000      MOV dword ptr [EBP + 0xffffff04],0x18
00773efd  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00773f03  e8788ccaff                CALL 0x0041cb80
00773f08  8b00                      MOV EAX,dword ptr [EAX]
00773f0a  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00773f10  8bb5e0feffff              MOV ESI,dword ptr [EBP + 0xfffffee0]
00773f16  8bc6                      MOV EAX,ESI
00773f18  2500002000                AND EAX,0x200000
00773f1d  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
00773f23  83c800                    OR EAX,0x0
00773f26  740a                      JZ 0x00773f32
00773f28  c78500ffffff00000000      MOV dword ptr [EBP + 0xffffff00],0x0
00773f32  8bc6                      MOV EAX,ESI
00773f34  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00773f3a  2500400000                AND EAX,0x4000
00773f3f  83c800                    OR EAX,0x0
00773f42  747a                      JZ 0x00773fbe
00773f44  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
00773f47  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00773f4d  85c0                      TEST EAX,EAX
00773f4f  7433                      JZ 0x00773f84
00773f51  8bc8                      MOV ECX,EAX
00773f53  e85834caff                CALL 0x004173b0
00773f58  84c0                      TEST AL,AL
00773f5a  7517                      JNZ 0x00773f73
00773f5c  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00773f62  e83935caff                CALL 0x004174a0
00773f67  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00773f6d  85c0                      TEST EAX,EAX
00773f6f  7413                      JZ 0x00773f84
00773f71  eb06                      JMP 0x00773f79
00773f73  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00773f79  8bc8                      MOV ECX,EAX
00773f7b  e83034caff                CALL 0x004173b0
00773f80  84c0                      TEST AL,AL
00773f82  751a                      JNZ 0x00773f9e
00773f84  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00773f8a  8d873c030000              LEA EAX,[EDI + 0x33c]
00773f90  50                        PUSH EAX
00773f91  e8baf9f8ff                CALL 0x00703950
00773f96  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00773f9c  eb06                      JMP 0x00773fa4
00773f9e  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00773fa4  57                        PUSH EDI
00773fa5  8d4de8                    LEA ECX,[EBP + -0x18]
00773fa8  51                        PUSH ECX
00773fa9  8bc8                      MOV ECX,EAX
00773fab  e8e032caff                CALL 0x00417290
00773fb0  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00773fb6  50                        PUSH EAX
00773fb7  6a01                      PUSH 0x1
00773fb9  e8125afeff                CALL 0x007599d0
00773fbe  56                        PUSH ESI
00773fbf  ff7510                    PUSH dword ptr [EBP + 0x10]
00773fc2  8bcf                      MOV ECX,EDI
00773fc4  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
00773fca  e831f10400                CALL 0x007c3100
00773fcf  8ad0                      MOV DL,AL
00773fd1  c685f3feffff01            MOV byte ptr [EBP + 0xfffffef3],0x1
00773fd8  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00773fde  2520000010                AND EAX,0x10000020
00773fe3  8bc8                      MOV ECX,EAX
00773fe5  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
00773feb  83c900                    OR ECX,0x0
00773fee  7407                      JZ 0x00773ff7
00773ff0  c685f3feffff00            MOV byte ptr [EBP + 0xfffffef3],0x0
00773ff7  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00773ffb  751b                      JNZ 0x00774018
00773ffd  83bfec1a00000b            CMP dword ptr [EDI + 0x1aec],0xb
00774004  7512                      JNZ 0x00774018
00774006  80bf101b000000            CMP byte ptr [EDI + 0x1b10],0x0
0077400d  7409                      JZ 0x00774018
0077400f  b201                      MOV DL,0x1
00774011  c687101b000000            MOV byte ptr [EDI + 0x1b10],0x0
00774018  83bfbc13000000            CMP dword ptr [EDI + 0x13bc],0x0
0077401f  7e0c                      JLE 0x0077402d
00774021  8b4d10                    MOV ECX,dword ptr [EBP + 0x10]
00774024  33c0                      XOR EAX,EAX
00774026  83e108                    AND ECX,0x8
00774029  0bc1                      OR EAX,ECX
0077402b  7412                      JZ 0x0077403f
0077402d  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00774032  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00774039  7604                      JBE 0x0077403f
0077403b  84d2                      TEST DL,DL
0077403d  740f                      JZ 0x0077404e
0077403f  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
00774045  83c800                    OR EAX,0x0
00774048  0f84e14f0000              JZ 0x0077902f
0077404e  8d8708150000              LEA EAX,[EDI + 0x1508]
00774054  6839010000                PUSH 0x139
00774059  8bc8                      MOV ECX,EAX
0077405b  e890c51b00                CALL 0x009305f0
00774060  84c0                      TEST AL,AL
00774062  0f8498010000              JZ 0x00774200
00774068  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
0077406e  83e020                    AND EAX,0x20
00774071  83c800                    OR EAX,0x0
00774074  0f8586010000              JNZ 0x00774200
0077407a  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00774082  51                        PUSH ECX
00774083  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077408a  8bcf                      MOV ECX,EDI
0077408c  50                        PUSH EAX
0077408d  6a02                      PUSH 0x2
0077408f  6815010000                PUSH 0x115
00774094  e8d723f4ff                CALL 0x006b6470
00774099  e8c2aef7ff                CALL 0x006eef60
0077409e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007740a4  50                        PUSH EAX
007740a5  6a0b                      PUSH 0xb
007740a7  57                        PUSH EDI
007740a8  6840b6c700                PUSH 0xc7b640
007740ad  8d873c030000              LEA EAX,[EDI + 0x33c]
007740b3  50                        PUSH EAX
007740b4  6a10                      PUSH 0x10
007740b6  68e8030000                PUSH 0x3e8
007740bb  e8604acbff                CALL 0x00428b20
007740c0  8bf0                      MOV ESI,EAX
007740c2  57                        PUSH EDI
007740c3  8bce                      MOV ECX,ESI
007740c5  e8e623ceff                CALL 0x004564b0
007740ca  8d8f4c030000              LEA ECX,[EDI + 0x34c]
007740d0  51                        PUSH ECX
007740d1  8bce                      MOV ECX,ESI
007740d3  e81832caff                CALL 0x004172f0
007740d8  8d4f48                    LEA ECX,[EDI + 0x48]
007740db  e82031caff                CALL 0x00417200
007740e0  50                        PUSH EAX
007740e1  8bce                      MOV ECX,ESI
007740e3  e8c898cbff                CALL 0x0042d9b0
007740e8  51                        PUSH ECX
007740e9  8bce                      MOV ECX,ESI
007740eb  c7042400008041            MOV dword ptr [ESP],0x41800000
007740f2  e8f91bccff                CALL 0x00435cf0
007740f7  8b06                      MOV EAX,dword ptr [ESI]
007740f9  8bce                      MOV ECX,ESI
007740fb  ff500c                    CALL dword ptr [EAX + 0xc]
007740fe  6a01                      PUSH 0x1
00774100  8db708150000              LEA ESI,[EDI + 0x1508]
00774106  6839010000                PUSH 0x139
0077410b  8bce                      MOV ECX,ESI
0077410d  e88ec31b00                CALL 0x009304a0
00774112  8bcf                      MOV ECX,EDI
00774114  e8b7710600                CALL 0x007db2d0
00774119  84c0                      TEST AL,AL
0077411b  755c                      JNZ 0x00774179
0077411d  6817020000                PUSH 0x217
00774122  8bce                      MOV ECX,ESI
00774124  e8c7c41b00                CALL 0x009305f0
00774129  84c0                      TEST AL,AL
0077412b  7410                      JZ 0x0077413d
0077412d  6a01                      PUSH 0x1
0077412f  6817020000                PUSH 0x217
00774134  8bce                      MOV ECX,ESI
00774136  e865c31b00                CALL 0x009304a0
0077413b  eb3c                      JMP 0x00774179
0077413d  6a00                      PUSH 0x0
0077413f  6839010000                PUSH 0x139
00774144  8bcf                      MOV ECX,EDI
00774146  e895c5ffff                CALL 0x007706e0
0077414b  84c0                      TEST AL,AL
0077414d  7412                      JZ 0x00774161
0077414f  80bfb413000000            CMP byte ptr [EDI + 0x13b4],0x0
00774156  7509                      JNZ 0x00774161
00774158  c687b413000001            MOV byte ptr [EDI + 0x13b4],0x1
0077415f  eb18                      JMP 0x00774179
00774161  6a2e                      PUSH 0x2e
00774163  8bce                      MOV ECX,ESI
00774165  e816c51b00                CALL 0x00930680
0077416a  84c0                      TEST AL,AL
0077416c  740b                      JZ 0x00774179
0077416e  6a01                      PUSH 0x1
00774170  6a2e                      PUSH 0x2e
00774172  8bce                      MOV ECX,ESI
00774174  e8d7c31b00                CALL 0x00930550
00774179  6839010000                PUSH 0x139
0077417e  8bce                      MOV ECX,ESI
00774180  e8ebc81b00                CALL 0x00930a70
00774185  85c0                      TEST EAX,EAX
00774187  7f1f                      JG 0x007741a8
00774189  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0077418f  e86c88cbff                CALL 0x0042ca00
00774194  6839010000                PUSH 0x139
00774199  8bc8                      MOV ECX,EAX
0077419b  e870bbfbff                CALL 0x0072fd10
007741a0  50                        PUSH EAX
007741a1  8bcf                      MOV ECX,EDI
007741a3  e8a896feff                CALL 0x0075d850
007741a8  6a3c                      PUSH 0x3c
007741aa  8bcf                      MOV ECX,EDI
007741ac  e87f710600                CALL 0x007db330
007741b1  6a00                      PUSH 0x0
007741b3  6a51                      PUSH 0x51
007741b5  8bcf                      MOV ECX,EDI
007741b7  8987bc130000              MOV dword ptr [EDI + 0x13bc],EAX
007741bd  e88ed3ffff                CALL 0x00771550
007741c2  84c0                      TEST AL,AL
007741c4  7422                      JZ 0x007741e8
007741c6  6a51                      PUSH 0x51
007741c8  8bcf                      MOV ECX,EDI
007741ca  e811750500                CALL 0x007cb6e0
007741cf  03c0                      ADD EAX,EAX
007741d1  8bcf                      MOV ECX,EDI
007741d3  50                        PUSH EAX
007741d4  e857710600                CALL 0x007db330
007741d9  8b8fbc130000              MOV ECX,dword ptr [EDI + 0x13bc]
007741df  0fafc8                    IMUL ECX,EAX
007741e2  898fbc130000              MOV dword ptr [EDI + 0x13bc],ECX
007741e8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
007741ee  83a76c010000ef            AND dword ptr [EDI + 0x16c],0xffffffef
007741f5  898768010000              MOV dword ptr [EDI + 0x168],EAX
007741fb  e92f4e0000                JMP 0x0077902f
00774200  83bf901d000000            CMP dword ptr [EDI + 0x1d90],0x0
00774207  7e7e                      JLE 0x00774287
00774209  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
0077420f  83c800                    OR EAX,0x0
00774212  7573                      JNZ 0x00774287
00774214  8d8f70170000              LEA ECX,[EDI + 0x1770]
0077421a  681f020000                PUSH 0x21f
0077421f  e8dc7ae5ff                CALL 0x005cbd00
00774224  6a02                      PUSH 0x2
00774226  8bc8                      MOV ECX,EAX
00774228  e8f34d0700                CALL 0x007e9020
0077422d  85c0                      TEST EAX,EAX
0077422f  7556                      JNZ 0x00774287
00774231  8b07                      MOV EAX,dword ptr [EDI]
00774233  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0077423b  6880000000                PUSH 0x80
00774240  6a40                      PUSH 0x40
00774242  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00774245  0f28d8                    MOVAPS XMM3,XMM0
00774248  6a40                      PUSH 0x40
0077424a  51                        PUSH ECX
0077424b  0f28d0                    MOVAPS XMM2,XMM0
0077424e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00774255  0f28c8                    MOVAPS XMM1,XMM0
00774258  8d8d54ffffff              LEA ECX,[EBP + 0xffffff54]
0077425e  e86d18ccff                CALL 0x00435ad0
00774263  6a01                      PUSH 0x1
00774265  6a01                      PUSH 0x1
00774267  68ff000000                PUSH 0xff
0077426c  6a0f                      PUSH 0xf
0077426e  50                        PUSH EAX
0077426f  8bcf                      MOV ECX,EDI
00774271  ffd6                      CALL ESI
00774273  6a08                      PUSH 0x8
00774275  8bcf                      MOV ECX,EDI
00774277  e8b4700600                CALL 0x007db330
0077427c  8987bc130000              MOV dword ptr [EDI + 0x13bc],EAX
00774282  e974f4ffff                JMP 0x007736fb
00774287  ff7518                    PUSH dword ptr [EBP + 0x18]
0077428a  660f6e9500ffffff          MOVD XMM2,dword ptr [EBP + 0xffffff00]
00774292  8b0d9016c700              MOV ECX,dword ptr [0x00c71690]
00774298  56                        PUSH ESI
00774299  ff7510                    PUSH dword ptr [EBP + 0x10]
0077429c  0f5bd2                    CVTDQ2PS XMM2,XMM2
0077429f  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
007742a5  57                        PUSH EDI
007742a6  e8b5020f00                CALL 0x00864560
007742ab  84c0                      TEST AL,AL
007742ad  0f847c4d0000              JZ 0x0077902f
007742b3  8bcf                      MOV ECX,EDI
007742b5  e8f6f20500                CALL 0x007d35b0
007742ba  84c0                      TEST AL,AL
007742bc  0f856d4d0000              JNZ 0x0077902f
007742c2  83bfc013000025            CMP dword ptr [EDI + 0x13c0],0x25
007742c9  7528                      JNZ 0x007742f3
007742cb  813e62030000              CMP dword ptr [ESI],0x362
007742d1  7520                      JNZ 0x007742f3
007742d3  8bcf                      MOV ECX,EDI
007742d5  e8c6440600                CALL 0x007d87a0
007742da  6a00                      PUSH 0x0
007742dc  6a27                      PUSH 0x27
007742de  8bcf                      MOV ECX,EDI
007742e0  e8fba30500                CALL 0x007ce6e0
007742e5  6a5a                      PUSH 0x5a
007742e7  8bcf                      MOV ECX,EDI
007742e9  e8e21eccff                CALL 0x004361d0
007742ee  e93c4d0000                JMP 0x0077902f
007742f3  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
007742f6  85c9                      TEST ECX,ECX
007742f8  7434                      JZ 0x0077432e
007742fa  e8414ef3ff                CALL 0x006a9140
007742ff  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00774305  85c0                      TEST EAX,EAX
00774307  7425                      JZ 0x0077432e
00774309  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077430f  e87c8deeff                CALL 0x0065d090
00774314  660f6e9d00ffffff          MOVD XMM3,dword ptr [EBP + 0xffffff00]
0077431c  8bc8                      MOV ECX,EAX
0077431e  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
00774324  0f5bdb                    CVTDQ2PS XMM3,XMM3
00774327  6a10                      PUSH 0x10
00774329  e89217cbff                CALL 0x00425ac0
0077432e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774334  e8578deeff                CALL 0x0065d090
00774339  660f6e9d00ffffff          MOVD XMM3,dword ptr [EBP + 0xffffff00]
00774341  8bc8                      MOV ECX,EAX
00774343  0f5bdb                    CVTDQ2PS XMM3,XMM3
00774346  57                        PUSH EDI
00774347  6a03                      PUSH 0x3
00774349  e87217cbff                CALL 0x00425ac0
0077434e  8d8f7c160000              LEA ECX,[EDI + 0x167c]
00774354  56                        PUSH ESI
00774355  e80656d2ff                CALL 0x00499960
0077435a  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00774360  8bcf                      MOV ECX,EDI
00774362  8987a8160000              MOV dword ptr [EDI + 0x16a8],EAX
00774368  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0077436b  8987ac160000              MOV dword ptr [EDI + 0x16ac],EAX
00774371  c687b513000001            MOV byte ptr [EDI + 0x13b5],0x1
00774378  c787f41e000000000000      MOV dword ptr [EDI + 0x1ef4],0x0
00774382  c787bc13000004000000      MOV dword ptr [EDI + 0x13bc],0x4
0077438c  e85fb50500                CALL 0x007cf8f0
00774391  80bdf3feffff00            CMP byte ptr [EBP + 0xfffffef3],0x0
00774398  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
007743a0  0f849d000000              JZ 0x00774443
007743a6  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
007743ac  0187b0160000              ADD dword ptr [EDI + 0x16b0],EAX
007743b2  83bfc013000016            CMP dword ptr [EDI + 0x13c0],0x16
007743b9  753a                      JNZ 0x007743f5
007743bb  8b8744130000              MOV EAX,dword ptr [EDI + 0x1344]
007743c1  8bcf                      MOV ECX,EDI
007743c3  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
007743c9  e852ff0500                CALL 0x007d4320
007743ce  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
007743d4  3bc8                      CMP ECX,EAX
007743d6  7f23                      JG 0x007743fb
007743d8  83bf4c13000001            CMP dword ptr [EDI + 0x134c],0x1
007743df  7f1a                      JG 0x007743fb
007743e1  750c                      JNZ 0x007743ef
007743e3  8b87881d0000              MOV EAX,dword ptr [EDI + 0x1d88]
007743e9  03c1                      ADD EAX,ECX
007743eb  85c0                      TEST EAX,EAX
007743ed  7f0c                      JG 0x007743fb
007743ef  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
007743f5  0187b4160000              ADD dword ptr [EDI + 0x16b4],EAX
007743fb  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
007743fe  85c9                      TEST ECX,ECX
00774400  740d                      JZ 0x0077440f
00774402  e8394df3ff                CALL 0x006a9140
00774407  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
0077440d  eb0a                      JMP 0x00774419
0077440f  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
00774419  8bcf                      MOV ECX,EDI
0077441b  e81081f3ff                CALL 0x006ac530
00774420  84c0                      TEST AL,AL
00774422  741f                      JZ 0x00774443
00774424  83bdf8feffff00            CMP dword ptr [EBP + 0xfffffef8],0x0
0077442b  7416                      JZ 0x00774443
0077442d  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00774432  e869b83700                CALL 0x00aefca0
00774437  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
0077443d  50                        PUSH EAX
0077443e  e8cd3df3ff                CALL 0x006a8210
00774443  8b06                      MOV EAX,dword ptr [ESI]
00774445  83e80a                    SUB EAX,0xa
00774448  3ddd030000                CMP EAX,0x3dd
0077444d  7717                      JA 0x00774466
0077444f  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774455  e8a6d3caff                CALL 0x00421800
0077445a  ff7604                    PUSH dword ptr [ESI + 0x4]
0077445d  8bc8                      MOV ECX,EAX
0077445f  ff36                      PUSH dword ptr [ESI]
00774461  e88a661b00                CALL 0x0092aaf0
00774466  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077446c  6a06                      PUSH 0x6
0077446e  c685dffeffff01            MOV byte ptr [EBP + 0xfffffedf],0x1
00774475  e8e6d2cbff                CALL 0x00431760
0077447a  84c0                      TEST AL,AL
0077447c  7431                      JZ 0x007744af
0077447e  680045ffff                PUSH 0xffff4500
00774483  8d4dac                    LEA ECX,[EBP + -0x54]
00774486  e8c5b02900                CALL 0x00a0f550
0077448b  f30f2c4508                CVTTSS2SI EAX,dword ptr [EBP + 0x8]
00774490  50                        PUSH EAX
00774491  68a8afb600                PUSH 0xb6afa8
00774496  8d45ac                    LEA EAX,[EBP + -0x54]
00774499  50                        PUSH EAX
0077449a  8d873c030000              LEA EAX,[EDI + 0x33c]
007744a0  50                        PUSH EAX
007744a1  ff357816c700              PUSH dword ptr [0x00c71678]
007744a7  e8d4f0f8ff                CALL 0x00703580
007744ac  83c414                    ADD ESP,0x14
007744af  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
007744b5  8bc1                      MOV EAX,ECX
007744b7  2502020000                AND EAX,0x202
007744bc  83c800                    OR EAX,0x0
007744bf  7426                      JZ 0x007744e7
007744c1  8bc1                      MOV EAX,ECX
007744c3  83e004                    AND EAX,0x4
007744c6  83c800                    OR EAX,0x0
007744c9  751c                      JNZ 0x007744e7
007744cb  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007744d3  51                        PUSH ECX
007744d4  c704240000803f            MOV dword ptr [ESP],0x3f800000
007744db  8bcf                      MOV ECX,EDI
007744dd  50                        PUSH EAX
007744de  6a02                      PUSH 0x2
007744e0  6a2b                      PUSH 0x2b
007744e2  e8891ff4ff                CALL 0x006b6470
007744e7  8b06                      MOV EAX,dword ptr [ESI]
007744e9  83f832                    CMP EAX,0x32
007744ec  745a                      JZ 0x00774548
007744ee  83f856                    CMP EAX,0x56
007744f1  7455                      JZ 0x00774548
007744f3  83f85a                    CMP EAX,0x5a
007744f6  7450                      JZ 0x00774548
007744f8  3d96010000                CMP EAX,0x196
007744fd  7449                      JZ 0x00774548
007744ff  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
00774502  81f996010000              CMP ECX,0x196
00774508  743e                      JZ 0x00774548
0077450a  3d26010000                CMP EAX,0x126
0077450f  7437                      JZ 0x00774548
00774511  81f926010000              CMP ECX,0x126
00774517  742f                      JZ 0x00774548
00774519  3d2b010000                CMP EAX,0x12b
0077451e  7428                      JZ 0x00774548
00774520  83f809                    CMP EAX,0x9
00774523  750f                      JNZ 0x00774534
00774525  83f932                    CMP ECX,0x32
00774528  741e                      JZ 0x00774548
0077452a  83f956                    CMP ECX,0x56
0077452d  7419                      JZ 0x00774548
0077452f  83f95a                    CMP ECX,0x5a
00774532  7414                      JZ 0x00774548
00774534  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077453a  e831d2caff                CALL 0x00421770
0077453f  83f818                    CMP EAX,0x18
00774542  0f85d2000000              JNZ 0x0077461a
00774548  83bf6813000000            CMP dword ptr [EDI + 0x1368],0x0
0077454f  0f8ec5000000              JLE 0x0077461a
00774555  6aff                      PUSH -0x1
00774557  8bcf                      MOV ECX,EDI
00774559  e8a24efeff                CALL 0x00759400
0077455e  b903000000                MOV ECX,0x3
00774563  e8a8aaf0ff                CALL 0x0067f010
00774568  40                        INC EAX
00774569  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
0077456f  8d8f68130000              LEA ECX,[EDI + 0x1368]
00774575  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
0077457b  e8e085caff                CALL 0x0041cb60
00774580  8b00                      MOV EAX,dword ptr [EAX]
00774582  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00774588  85c0                      TEST EAX,EAX
0077458a  0f8e80000000              JLE 0x00774610
00774590  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00774596  e8c5a9f7ff                CALL 0x006eef60
0077459b  8bf8                      MOV EDI,EAX
0077459d  8d45e8                    LEA EAX,[EBP + -0x18]
007745a0  50                        PUSH EAX
007745a1  e8caaaf0ff                CALL 0x0067f070
007745a6  83c404                    ADD ESP,0x4
007745a9  8bf0                      MOV ESI,EAX
007745ab  e830aaf0ff                CALL 0x0067efe0
007745b0  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
007745b8  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
007745be  50                        PUSH EAX
007745bf  8d45d0                    LEA EAX,[EBP + -0x30]
007745c2  8bce                      MOV ECX,ESI
007745c4  50                        PUSH EAX
007745c5  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
007745cd  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
007745d5  e806bf2900                CALL 0x00a104e0
007745da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007745e0  57                        PUSH EDI
007745e1  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
007745e7  6a01                      PUSH 0x1
007745e9  57                        PUSH EDI
007745ea  50                        PUSH EAX
007745eb  8d873c030000              LEA EAX,[EDI + 0x33c]
007745f1  50                        PUSH EAX
007745f2  6a14                      PUSH 0x14
007745f4  6a05                      PUSH 0x5
007745f6  e82545cbff                CALL 0x00428b20
007745fb  83ad04ffffff01            SUB dword ptr [EBP + 0xffffff04],0x1
00774602  7592                      JNZ 0x00774596
00774604  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
0077460a  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00774610  f7d8                      NEG EAX
00774612  8bcf                      MOV ECX,EDI
00774614  50                        PUSH EAX
00774615  e8e64dfeff                CALL 0x00759400
0077461a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0077461e  0f85ff000000              JNZ 0x00774723
00774624  8b87ec1a0000              MOV EAX,dword ptr [EDI + 0x1aec]
0077462a  83f811                    CMP EAX,0x11
0077462d  7567                      JNZ 0x00774696
0077462f  8d48f1                    LEA ECX,[EAX + -0xf]
00774632  e8d9a9f0ff                CALL 0x0067f010
00774637  85c0                      TEST EAX,EAX
00774639  7537                      JNZ 0x00774672
0077463b  8d8d54ffffff              LEA ECX,[EBP + 0xffffff54]
00774641  e82a2bc9ff                CALL 0x00407170
00774646  50                        PUSH EAX
00774647  6a00                      PUSH 0x0
00774649  51                        PUSH ECX
0077464a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00774651  8d873c030000              LEA EAX,[EDI + 0x33c]
00774657  57                        PUSH EDI
00774658  51                        PUSH ECX
00774659  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077465f  c704240000aa42            MOV dword ptr [ESP],0x42aa0000
00774666  50                        PUSH EAX
00774667  e874f5f8ff                CALL 0x00703be0
0077466c  6a00                      PUSH 0x0
0077466e  6a00                      PUSH 0x0
00774670  eb04                      JMP 0x00774676
00774672  6a00                      PUSH 0x0
00774674  6a01                      PUSH 0x1
00774676  57                        PUSH EDI
00774677  51                        PUSH ECX
00774678  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077467e  8d873c030000              LEA EAX,[EDI + 0x33c]
00774684  c704240000f042            MOV dword ptr [ESP],0x42f00000
0077468b  50                        PUSH EAX
0077468c  e8cffcf8ff                CALL 0x00704360
00774691  e98d000000                JMP 0x00774723
00774696  83f814                    CMP EAX,0x14
00774699  756d                      JNZ 0x00774708
0077469b  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
007746a2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007746a8  6a00                      PUSH 0x0
007746aa  6a00                      PUSH 0x0
007746ac  6a04                      PUSH 0x4
007746ae  83ec10                    SUB ESP,0x10
007746b1  8bc4                      MOV EAX,ESP
007746b3  57                        PUSH EDI
007746b4  6a01                      PUSH 0x1
007746b6  83ec08                    SUB ESP,0x8
007746b9  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
007746bc  8d873c030000              LEA EAX,[EDI + 0x33c]
007746c2  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
007746ca  c7042400002042            MOV dword ptr [ESP],0x42200000
007746d1  50                        PUSH EAX
007746d2  e8c9abf8ff                CALL 0x006ff2a0
007746d7  e884a8f7ff                CALL 0x006eef60
007746dc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007746e2  50                        PUSH EAX
007746e3  6a00                      PUSH 0x0
007746e5  6a00                      PUSH 0x0
007746e7  6840b6c700                PUSH 0xc7b640
007746ec  8d873c030000              LEA EAX,[EDI + 0x33c]
007746f2  50                        PUSH EAX
007746f3  6a01                      PUSH 0x1
007746f5  68e8030000                PUSH 0x3e8
007746fa  e82144cbff                CALL 0x00428b20
007746ff  8bc8                      MOV ECX,EAX
00774701  8b10                      MOV EDX,dword ptr [EAX]
00774703  ff520c                    CALL dword ptr [EDX + 0xc]
00774706  eb1b                      JMP 0x00774723
00774708  83f82c                    CMP EAX,0x2c
0077470b  7516                      JNZ 0x00774723
0077470d  6a00                      PUSH 0x0
0077470f  6aff                      PUSH -0x1
00774711  6a01                      PUSH 0x1
00774713  6a69                      PUSH 0x69
00774715  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
0077471b  8bcf                      MOV ECX,EDI
0077471d  50                        PUSH EAX
0077471e  e8adf2e3ff                CALL 0x005b39d0
00774723  6a00                      PUSH 0x0
00774725  681a020000                PUSH 0x21a
0077472a  8bcf                      MOV ECX,EDI
0077472c  e8afbfffff                CALL 0x007706e0
00774731  84c0                      TEST AL,AL
00774733  0f8489000000              JZ 0x007747c2
00774739  83bfc016000000            CMP dword ptr [EDI + 0x16c0],0x0
00774740  7513                      JNZ 0x00774755
00774742  8b8fc4170000              MOV ECX,dword ptr [EDI + 0x17c4]
00774748  85c9                      TEST ECX,ECX
0077474a  7476                      JZ 0x007747c2
0077474c  e82f85e9ff                CALL 0x0060cc80
00774751  84c0                      TEST AL,AL
00774753  746d                      JZ 0x007747c2
00774755  8d8f70170000              LEA ECX,[EDI + 0x1770]
0077475b  681a020000                PUSH 0x21a
00774760  e89b75e5ff                CALL 0x005cbd00
00774765  6a0a                      PUSH 0xa
00774767  8bc8                      MOV ECX,EAX
00774769  e8b2480700                CALL 0x007e9020
0077476e  85c0                      TEST EAX,EAX
00774770  7410                      JZ 0x00774782
00774772  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774778  e8f3cfcaff                CALL 0x00421770
0077477d  83f829                    CMP EAX,0x29
00774780  7540                      JNZ 0x007747c2
00774782  8bcf                      MOV ECX,EDI
00774784  e8479afeff                CALL 0x0075e1d0
00774789  6a00                      PUSH 0x0
0077478b  6aff                      PUSH -0x1
0077478d  6a01                      PUSH 0x1
0077478f  68df010000                PUSH 0x1df
00774794  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
0077479a  8bcf                      MOV ECX,EDI
0077479c  50                        PUSH EAX
0077479d  e82ef2e3ff                CALL 0x005b39d0
007747a2  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007747aa  51                        PUSH ECX
007747ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
007747b2  8bcf                      MOV ECX,EDI
007747b4  6a00                      PUSH 0x0
007747b6  6a02                      PUSH 0x2
007747b8  689d000000                PUSH 0x9d
007747bd  e8ae1cf4ff                CALL 0x006b6470
007747c2  6a53                      PUSH 0x53
007747c4  8d8f08150000              LEA ECX,[EDI + 0x1508]
007747ca  e821be1b00                CALL 0x009305f0
007747cf  8bcf                      MOV ECX,EDI
007747d1  84c0                      TEST AL,AL
007747d3  742b                      JZ 0x00774800
007747d5  e8f6520500                CALL 0x007c9ad0
007747da  b902000000                MOV ECX,0x2
007747df  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
007747e7  e824a8f0ff                CALL 0x0067f010
007747ec  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
007747f4  f7d8                      NEG EAX
007747f6  1bc0                      SBB EAX,EAX
007747f8  83e0fe                    AND EAX,0xfffffffe
007747fb  83c06a                    ADD EAX,0x6a
007747fe  eb1a                      JMP 0x0077481a
00774800  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
00774808  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00774810  e8bb520500                CALL 0x007c9ad0
00774815  b837000000                MOV EAX,0x37
0077481a  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
00774822  51                        PUSH ECX
00774823  f30f110424                MOVSS dword ptr [ESP],XMM0
00774828  8bcf                      MOV ECX,EDI
0077482a  6a00                      PUSH 0x0
0077482c  6a02                      PUSH 0x2
0077482e  50                        PUSH EAX
0077482f  e83c1cf4ff                CALL 0x006b6470
00774834  8b06                      MOV EAX,dword ptr [ESI]
00774836  83f82d                    CMP EAX,0x2d
00774839  751a                      JNZ 0x00774855
0077483b  8d4855                    LEA ECX,[EAX + 0x55]
0077483e  e8cda7f0ff                CALL 0x0067f010
00774843  51                        PUSH ECX
00774844  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077484b  83c032                    ADD EAX,0x32
0077484e  6a00                      PUSH 0x0
00774850  50                        PUSH EAX
00774851  6a54                      PUSH 0x54
00774853  eb1d                      JMP 0x00774872
00774855  83f84e                    CMP EAX,0x4e
00774858  752b                      JNZ 0x00774885
0077485a  8d4834                    LEA ECX,[EAX + 0x34]
0077485d  e8aea7f0ff                CALL 0x0067f010
00774862  51                        PUSH ECX
00774863  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077486a  83c032                    ADD EAX,0x32
0077486d  6a00                      PUSH 0x0
0077486f  50                        PUSH EAX
00774870  6a56                      PUSH 0x56
00774872  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0077487a  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774880  e85b201e00                CALL 0x009568e0
00774885  6a00                      PUSH 0x0
00774887  6a28                      PUSH 0x28
00774889  8bcf                      MOV ECX,EDI
0077488b  e8c0ccffff                CALL 0x00771550
00774890  be14000000                MOV ESI,0x14
00774895  84c0                      TEST AL,AL
00774897  0f84e9000000              JZ 0x00774986
0077489d  6a28                      PUSH 0x28
0077489f  8bcf                      MOV ECX,EDI
007748a1  e83a6e0500                CALL 0x007cb6e0
007748a6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007748ac  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
007748b2  e8992fcaff                CALL 0x00417850
007748b7  8bc8                      MOV ECX,EAX
007748b9  e8924ccbff                CALL 0x00429550
007748be  84c0                      TEST AL,AL
007748c0  b90a000000                MOV ECX,0xa
007748c5  0f45f1                    CMOVNZ ESI,ECX
007748c8  83bd04ffffff02            CMP dword ptr [EBP + 0xffffff04],0x2
007748cf  751c                      JNZ 0x007748ed
007748d1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007748d7  e8742fcaff                CALL 0x00417850
007748dc  8bc8                      MOV ECX,EAX
007748de  e86d4ccbff                CALL 0x00429550
007748e3  be21000000                MOV ESI,0x21
007748e8  8d4ef3                    LEA ECX,[ESI + -0xd]
007748eb  eb1e                      JMP 0x0077490b
007748ed  7e21                      JLE 0x00774910
007748ef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007748f5  e8562fcaff                CALL 0x00417850
007748fa  8bc8                      MOV ECX,EAX
007748fc  e84f4ccbff                CALL 0x00429550
00774901  be32000000                MOV ESI,0x32
00774906  b91e000000                MOV ECX,0x1e
0077490b  84c0                      TEST AL,AL
0077490d  0f45f1                    CMOVNZ ESI,ECX
00774910  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774916  e8352fcaff                CALL 0x00417850
0077491b  8bc8                      MOV ECX,EAX
0077491d  e82e4ccbff                CALL 0x00429550
00774922  84c0                      TEST AL,AL
00774924  740a                      JZ 0x00774930
00774926  f30f1005bca6ba00          MOVSS XMM0,dword ptr [0x00baa6bc]
0077492e  eb08                      JMP 0x00774938
00774930  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
00774938  f30f59876c150000          MULSS XMM0,dword ptr [EDI + 0x156c]
00774940  b964000000                MOV ECX,0x64
00774945  f30f2cc0                  CVTTSS2SI EAX,XMM0
00774949  03f0                      ADD ESI,EAX
0077494b  e8c0a6f0ff                CALL 0x0067f010
00774950  3bc6                      CMP EAX,ESI
00774952  732d                      JNC 0x00774981
00774954  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0077495a  e8a180cbff                CALL 0x0042ca00
0077495f  6a01                      PUSH 0x1
00774961  6a01                      PUSH 0x1
00774963  6a28                      PUSH 0x28
00774965  8bc8                      MOV ECX,EAX
00774967  e804b4fbff                CALL 0x0072fd70
0077496c  50                        PUSH EAX
0077496d  8d4db0                    LEA ECX,[EBP + -0x50]
00774970  e80b16ccff                CALL 0x00435f80
00774975  50                        PUSH EAX
00774976  8d8f08150000              LEA ECX,[EDI + 0x1508]
0077497c  e89fb81b00                CALL 0x00930220
00774981  be14000000                MOV ESI,0x14
00774986  6a00                      PUSH 0x0
00774988  6a30                      PUSH 0x30
0077498a  8bcf                      MOV ECX,EDI
0077498c  e8bfcbffff                CALL 0x00771550
00774991  84c0                      TEST AL,AL
00774993  0f8492000000              JZ 0x00774a2b
00774999  f30f10876c150000          MOVSS XMM0,dword ptr [EDI + 0x156c]
007749a1  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
007749a7  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
007749af  8bce                      MOV ECX,ESI
007749b1  c78504ffffff02000000      MOV dword ptr [EBP + 0xffffff04],0x2
007749bb  f30f2cc0                  CVTTSS2SI EAX,XMM0
007749bf  2bc8                      SUB ECX,EAX
007749c1  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
007749c7  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
007749cd  e8ae81caff                CALL 0x0041cb80
007749d2  8b08                      MOV ECX,dword ptr [EAX]
007749d4  e837a6f0ff                CALL 0x0067f010
007749d9  85c0                      TEST EAX,EAX
007749db  754e                      JNZ 0x00774a2b
007749dd  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007749e5  51                        PUSH ECX
007749e6  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007749ec  c704240000803f            MOV dword ptr [ESP],0x3f800000
007749f3  50                        PUSH EAX
007749f4  6a02                      PUSH 0x2
007749f6  6a21                      PUSH 0x21
007749f8  e8e31e1e00                CALL 0x009568e0
007749fd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774a03  e8581eceff                CALL 0x00456860
00774a08  6a00                      PUSH 0x0
00774a0a  6a00                      PUSH 0x0
00774a0c  6a1e                      PUSH 0x1e
00774a0e  8bc8                      MOV ECX,EAX
00774a10  e8fb872300                CALL 0x009ad210
00774a15  6a00                      PUSH 0x0
00774a17  6aff                      PUSH -0x1
00774a19  6a01                      PUSH 0x1
00774a1b  6a23                      PUSH 0x23
00774a1d  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
00774a23  8bcf                      MOV ECX,EDI
00774a25  50                        PUSH EAX
00774a26  e8a5efe3ff                CALL 0x005b39d0
00774a2b  6a00                      PUSH 0x0
00774a2d  6a1d                      PUSH 0x1d
00774a2f  8bcf                      MOV ECX,EDI
00774a31  e81acbffff                CALL 0x00771550
00774a36  be05000000                MOV ESI,0x5
00774a3b  84c0                      TEST AL,AL
00774a3d  744b                      JZ 0x00774a8a
00774a3f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774a45  e8062ecaff                CALL 0x00417850
00774a4a  8bc8                      MOV ECX,EAX
00774a4c  e8ff4acbff                CALL 0x00429550
00774a51  84c0                      TEST AL,AL
00774a53  740b                      JZ 0x00774a60
00774a55  8bce                      MOV ECX,ESI
00774a57  e8b4a5f0ff                CALL 0x0067f010
00774a5c  85c0                      TEST EAX,EAX
00774a5e  752a                      JNZ 0x00774a8a
00774a60  6a00                      PUSH 0x0
00774a62  8d873c030000              LEA EAX,[EDI + 0x33c]
00774a68  8bcf                      MOV ECX,EDI
00774a6a  50                        PUSH EAX
00774a6b  6a1d                      PUSH 0x1d
00774a6d  e86e6c0500                CALL 0x007cb6e0
00774a72  b902000000                MOV ECX,0x2
00774a77  8bf0                      MOV ESI,EAX
00774a79  e892a5f0ff                CALL 0x0067f010
00774a7e  40                        INC EAX
00774a7f  8bcf                      MOV ECX,EDI
00774a81  0faff0                    IMUL ESI,EAX
00774a84  56                        PUSH ESI
00774a85  e8464ffeff                CALL 0x007599d0
00774a8a  6a00                      PUSH 0x0
00774a8c  6894000000                PUSH 0x94
00774a91  8bcf                      MOV ECX,EDI
00774a93  e848bcffff                CALL 0x007706e0
00774a98  84c0                      TEST AL,AL
00774a9a  7464                      JZ 0x00774b00
00774a9c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774aa2  e8a92dcaff                CALL 0x00417850
00774aa7  8bc8                      MOV ECX,EAX
00774aa9  e8a24acbff                CALL 0x00429550
00774aae  84c0                      TEST AL,AL
00774ab0  741d                      JZ 0x00774acf
00774ab2  e859102a00                CALL 0x00a15b10
00774ab7  2b87a02e0000              SUB EAX,dword ptr [EDI + 0x2ea0]
00774abd  1b97a42e0000              SBB EDX,dword ptr [EDI + 0x2ea4]
00774ac3  8955ec                    MOV dword ptr [EBP + -0x14],EDX
00774ac6  7507                      JNZ 0x00774acf
00774ac8  3d88130000                CMP EAX,0x1388
00774acd  7631                      JBE 0x00774b00
00774acf  6a00                      PUSH 0x0
00774ad1  8db73c030000              LEA ESI,[EDI + 0x33c]
00774ad7  b905000000                MOV ECX,0x5
00774adc  56                        PUSH ESI
00774add  e82ea5f0ff                CALL 0x0067f010
00774ae2  83c002                    ADD EAX,0x2
00774ae5  8bcf                      MOV ECX,EDI
00774ae7  50                        PUSH EAX
00774ae8  e8e34efeff                CALL 0x007599d0
00774aed  e81e102a00                CALL 0x00a15b10
00774af2  8987a02e0000              MOV dword ptr [EDI + 0x2ea0],EAX
00774af8  8997a42e0000              MOV dword ptr [EDI + 0x2ea4],EDX
00774afe  eb06                      JMP 0x00774b06
00774b00  8db73c030000              LEA ESI,[EDI + 0x33c]
00774b06  6a00                      PUSH 0x0
00774b08  680d020000                PUSH 0x20d
00774b0d  8bcf                      MOV ECX,EDI
00774b0f  e8ccbbffff                CALL 0x007706e0
00774b14  84c0                      TEST AL,AL
00774b16  7437                      JZ 0x00774b4f
00774b18  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774b1e  e82d2dcaff                CALL 0x00417850
00774b23  8bc8                      MOV ECX,EAX
00774b25  e8264acbff                CALL 0x00429550
00774b2a  84c0                      TEST AL,AL
00774b2c  741a                      JZ 0x00774b48
00774b2e  fe87ca2e0000              INC byte ptr [EDI + 0x2eca]
00774b34  33d2                      XOR EDX,EDX
00774b36  0fb687ca2e0000            MOVZX EAX,byte ptr [EDI + 0x2eca]
00774b3d  b905000000                MOV ECX,0x5
00774b42  f7f1                      DIV ECX
00774b44  85d2                      TEST EDX,EDX
00774b46  7507                      JNZ 0x00774b4f
00774b48  8bcf                      MOV ECX,EDI
00774b4a  e84150feff                CALL 0x00759b90
00774b4f  6a00                      PUSH 0x0
00774b51  6892020000                PUSH 0x292
00774b56  8bcf                      MOV ECX,EDI
00774b58  e883bbffff                CALL 0x007706e0
00774b5d  84c0                      TEST AL,AL
00774b5f  0f8400010000              JZ 0x00774c65
00774b65  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774b6b  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
00774b75  e80629c9ff                CALL 0x00407480
00774b7a  8bc8                      MOV ECX,EAX
00774b7c  e8df3ecbff                CALL 0x00428a60
00774b81  6a00                      PUSH 0x0
00774b83  6a00                      PUSH 0x0
00774b85  6aff                      PUSH -0x1
00774b87  68e4000000                PUSH 0xe4
00774b8c  6a03                      PUSH 0x3
00774b8e  8d4db0                    LEA ECX,[EBP + -0x50]
00774b91  51                        PUSH ECX
00774b92  8bc8                      MOV ECX,EAX
00774b94  e8c763caff                CALL 0x0041af60
00774b99  8d4db0                    LEA ECX,[EBP + -0x50]
00774b9c  c745fc0a000000            MOV dword ptr [EBP + -0x4],0xa
00774ba3  e8482bcaff                CALL 0x004176f0
00774ba8  85c0                      TEST EAX,EAX
00774baa  7453                      JZ 0x00774bff
00774bac  33f6                      XOR ESI,ESI
00774bae  6690                      NOP
00774bb0  56                        PUSH ESI
00774bb1  8d4db0                    LEA ECX,[EBP + -0x50]
00774bb4  e8672acaff                CALL 0x00417620
00774bb9  8b00                      MOV EAX,dword ptr [EAX]
00774bbb  8bc8                      MOV ECX,EAX
00774bbd  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00774bc3  e82816ccff                CALL 0x004361f0
00774bc8  3bc7                      CMP EAX,EDI
00774bca  7520                      JNZ 0x00774bec
00774bcc  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
00774bd2  e88927caff                CALL 0x00417360
00774bd7  51                        PUSH ECX
00774bd8  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
00774bde  d91c24                    FSTP dword ptr [ESP]
00774be1  e83a11ccff                CALL 0x00435d20
00774be6  ff85d0feffff              INC dword ptr [EBP + 0xfffffed0]
00774bec  8d4db0                    LEA ECX,[EBP + -0x50]
00774bef  46                        INC ESI
00774bf0  e8fb2acaff                CALL 0x004176f0
00774bf5  3bf0                      CMP ESI,EAX
00774bf7  72b7                      JC 0x00774bb0
00774bf9  8db73c030000              LEA ESI,[EDI + 0x33c]
00774bff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774c05  e8462ccaff                CALL 0x00417850
00774c0a  8bc8                      MOV ECX,EAX
00774c0c  e83f49cbff                CALL 0x00429550
00774c11  84c0                      TEST AL,AL
00774c13  742e                      JZ 0x00774c43
00774c15  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00774c1a  f30f5887d42e0000          ADDSS XMM0,dword ptr [EDI + 0x2ed4]
00774c22  f30f100d54a8ba00          MOVSS XMM1,dword ptr [0x00baa854]
00774c2a  0f2fc1                    COMISS XMM0,XMM1
00774c2d  f30f1187d42e0000          MOVSS dword ptr [EDI + 0x2ed4],XMM0
00774c35  721f                      JC 0x00774c56
00774c37  f30f5cc1                  SUBSS XMM0,XMM1
00774c3b  f30f1187d42e0000          MOVSS dword ptr [EDI + 0x2ed4],XMM0
00774c43  83bdd0feffff10            CMP dword ptr [EBP + 0xfffffed0],0x10
00774c4a  730a                      JNC 0x00774c56
00774c4c  6a01                      PUSH 0x1
00774c4e  56                        PUSH ESI
00774c4f  8bcf                      MOV ECX,EDI
00774c51  e80acc0500                CALL 0x007d1860
00774c56  8d4db0                    LEA ECX,[EBP + -0x50]
00774c59  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00774c60  e84b29caff                CALL 0x004175b0
00774c65  6a00                      PUSH 0x0
00774c67  68b8020000                PUSH 0x2b8
00774c6c  8bcf                      MOV ECX,EDI
00774c6e  e86dbaffff                CALL 0x007706e0
00774c73  8db708150000              LEA ESI,[EDI + 0x1508]
00774c79  84c0                      TEST AL,AL
00774c7b  7421                      JZ 0x00774c9e
00774c7d  68b8020000                PUSH 0x2b8
00774c82  8bce                      MOV ECX,ESI
00774c84  e8e7bd1b00                CALL 0x00930a70
00774c89  83f80a                    CMP EAX,0xa
00774c8c  7d10                      JGE 0x00774c9e
00774c8e  6a01                      PUSH 0x1
00774c90  6a01                      PUSH 0x1
00774c92  68b8020000                PUSH 0x2b8
00774c97  8bce                      MOV ECX,ESI
00774c99  e842b61b00                CALL 0x009302e0
00774c9e  80bdf3feffff00            CMP byte ptr [EBP + 0xfffffef3],0x0
00774ca5  0f846f010000              JZ 0x00774e1a
00774cab  6a00                      PUSH 0x0
00774cad  6891000000                PUSH 0x91
00774cb2  8bcf                      MOV ECX,EDI
00774cb4  e897c8ffff                CALL 0x00771550
00774cb9  84c0                      TEST AL,AL
00774cbb  0f8459010000              JZ 0x00774e1a
00774cc1  6891000000                PUSH 0x91
00774cc6  8bcf                      MOV ECX,EDI
00774cc8  e893d2ffff                CALL 0x00771f60
00774ccd  84c0                      TEST AL,AL
00774ccf  0f8445010000              JZ 0x00774e1a
00774cd5  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774cdb  e8207dcbff                CALL 0x0042ca00
00774ce0  6891000000                PUSH 0x91
00774ce5  8bc8                      MOV ECX,EAX
00774ce7  e884b0fbff                CALL 0x0072fd70
00774cec  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
00774cf2  85c0                      TEST EAX,EAX
00774cf4  7410                      JZ 0x00774d06
00774cf6  8b4854                    MOV ECX,dword ptr [EAX + 0x54]
00774cf9  098f74150000              OR dword ptr [EDI + 0x1574],ECX
00774cff  8bce                      MOV ECX,ESI
00774d01  e8aa12ccff                CALL 0x00435fb0
00774d06  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00774d0e  51                        PUSH ECX
00774d0f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00774d16  8bcf                      MOV ECX,EDI
00774d18  6a00                      PUSH 0x0
00774d1a  6a02                      PUSH 0x2
00774d1c  680b010000                PUSH 0x10b
00774d21  e84a17f4ff                CALL 0x006b6470
00774d26  e835a2f7ff                CALL 0x006eef60
00774d2b  8bf8                      MOV EDI,EAX
00774d2d  8d45e8                    LEA EAX,[EBP + -0x18]
00774d30  50                        PUSH EAX
00774d31  e83aa3f0ff                CALL 0x0067f070
00774d36  8bf0                      MOV ESI,EAX
00774d38  e8a3a2f0ff                CALL 0x0067efe0
00774d3d  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00774d45  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
00774d4b  56                        PUSH ESI
00774d4c  8d4dd0                    LEA ECX,[EBP + -0x30]
00774d4f  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
00774d57  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00774d5f  e86c24caff                CALL 0x004171d0
00774d64  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774d6a  83c408                    ADD ESP,0x8
00774d6d  57                        PUSH EDI
00774d6e  6a64                      PUSH 0x64
00774d70  6a00                      PUSH 0x0
00774d72  50                        PUSH EAX
00774d73  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
00774d79  6a0f                      PUSH 0xf
00774d7b  68e8030000                PUSH 0x3e8
00774d80  e89b3dcbff                CALL 0x00428b20
00774d85  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774d8b  8bf8                      MOV EDI,EAX
00774d8d  e87e2bcaff                CALL 0x00417910
00774d92  6a00                      PUSH 0x0
00774d94  685e010000                PUSH 0x15e
00774d99  6a05                      PUSH 0x5
00774d9b  8bc8                      MOV ECX,EAX
00774d9d  e80e02f2ff                CALL 0x00694fb0
00774da2  8bcf                      MOV ECX,EDI
00774da4  8bf0                      MOV ESI,EAX
00774da6  e82510ccff                CALL 0x00435dd0
00774dab  6a00                      PUSH 0x0
00774dad  8d4e74                    LEA ECX,[ESI + 0x74]
00774db0  51                        PUSH ECX
00774db1  8bc8                      MOV ECX,EAX
00774db3  e8986fc9ff                CALL 0x0040bd50
00774db8  8bcf                      MOV ECX,EDI
00774dba  e81110ccff                CALL 0x00435dd0
00774dbf  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00774dc5  83c138                    ADD ECX,0x38
00774dc8  51                        PUSH ECX
00774dc9  6a00                      PUSH 0x0
00774dcb  8bc8                      MOV ECX,EAX
00774dcd  e85e71c9ff                CALL 0x0040bf30
00774dd2  8bcf                      MOV ECX,EDI
00774dd4  e8f70fccff                CALL 0x00435dd0
00774dd9  8bc8                      MOV ECX,EAX
00774ddb  e81072c9ff                CALL 0x0040bff0
00774de0  8bcf                      MOV ECX,EDI
00774de2  e8e90fccff                CALL 0x00435dd0
00774de7  6a00                      PUSH 0x0
00774de9  6898d5b100                PUSH 0xb1d598
00774dee  8bc8                      MOV ECX,EAX
00774df0  e88b55c9ff                CALL 0x0040a380
00774df5  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00774dfd  8bcf                      MOV ECX,EDI
00774dff  e8dc8ed5ff                CALL 0x004cdce0
00774e04  6a05                      PUSH 0x5
00774e06  8bcf                      MOV ECX,EDI
00774e08  e89371cdff                CALL 0x0044bfa0
00774e0d  8b07                      MOV EAX,dword ptr [EDI]
00774e0f  8bcf                      MOV ECX,EDI
00774e11  ff500c                    CALL dword ptr [EAX + 0xc]
00774e14  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
00774e1a  6a0d                      PUSH 0xd
00774e1c  8bcf                      MOV ECX,EDI
00774e1e  e89d590300                CALL 0x007aa7c0
00774e23  be05000000                MOV ESI,0x5
00774e28  84c0                      TEST AL,AL
00774e2a  7469                      JZ 0x00774e95
00774e2c  8bce                      MOV ECX,ESI
00774e2e  e8dda1f0ff                CALL 0x0067f010
00774e33  85c0                      TEST EAX,EAX
00774e35  755e                      JNZ 0x00774e95
00774e37  e824a1f7ff                CALL 0x006eef60
00774e3c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774e42  50                        PUSH EAX
00774e43  6a00                      PUSH 0x0
00774e45  57                        PUSH EDI
00774e46  6840b6c700                PUSH 0xc7b640
00774e4b  8d873c030000              LEA EAX,[EDI + 0x33c]
00774e51  50                        PUSH EAX
00774e52  6a3d                      PUSH 0x3d
00774e54  68e8030000                PUSH 0x3e8
00774e59  e8c23ccbff                CALL 0x00428b20
00774e5e  8bf0                      MOV ESI,EAX
00774e60  57                        PUSH EDI
00774e61  8bce                      MOV ECX,ESI
00774e63  e83844f3ff                CALL 0x006a92a0
00774e68  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
00774e70  83ec08                    SUB ESP,0x8
00774e73  8bce                      MOV ECX,ESI
00774e75  c74424040000b442          MOV dword ptr [ESP + 0x4],0x42b40000
00774e7d  f30f110424                MOVSS dword ptr [ESP],XMM0
00774e82  e86910ccff                CALL 0x00435ef0
00774e87  6a0a                      PUSH 0xa
00774e89  8bce                      MOV ECX,ESI
00774e8b  e80010ccff                CALL 0x00435e90
00774e90  be05000000                MOV ESI,0x5
00774e95  6a00                      PUSH 0x0
00774e97  68a2000000                PUSH 0xa2
00774e9c  8bcf                      MOV ECX,EDI
00774e9e  e83db8ffff                CALL 0x007706e0
00774ea3  84c0                      TEST AL,AL
00774ea5  0f8495000000              JZ 0x00774f40
00774eab  f30f10876c150000          MOVSS XMM0,dword ptr [EDI + 0x156c]
00774eb3  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
00774eb9  f30f590554a1ba00          MULSS XMM0,dword ptr [0x00baa154]
00774ec1  8bce                      MOV ECX,ESI
00774ec3  c78504ffffff01000000      MOV dword ptr [EBP + 0xffffff04],0x1
00774ecd  f30f2cc0                  CVTTSS2SI EAX,XMM0
00774ed1  2bc8                      SUB ECX,EAX
00774ed3  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
00774ed9  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00774edf  e89c7ccaff                CALL 0x0041cb80
00774ee4  8b08                      MOV ECX,dword ptr [EAX]
00774ee6  e825a1f0ff                CALL 0x0067f010
00774eeb  85c0                      TEST EAX,EAX
00774eed  7551                      JNZ 0x00774f40
00774eef  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774ef5  e8067bcbff                CALL 0x0042ca00
00774efa  6a3a                      PUSH 0x3a
00774efc  8bc8                      MOV ECX,EAX
00774efe  e80daefbff                CALL 0x0072fd10
00774f03  50                        PUSH EAX
00774f04  8d4db0                    LEA ECX,[EBP + -0x50]
00774f07  e87410ccff                CALL 0x00435f80
00774f0c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774f12  e8e97acbff                CALL 0x0042ca00
00774f17  68a2000000                PUSH 0xa2
00774f1c  8bc8                      MOV ECX,EAX
00774f1e  e8edadfbff                CALL 0x0072fd10
00774f23  6a01                      PUSH 0x1
00774f25  6a01                      PUSH 0x1
00774f27  8db708150000              LEA ESI,[EDI + 0x1508]
00774f2d  8b4078                    MOV EAX,dword ptr [EAX + 0x78]
00774f30  8bce                      MOV ECX,ESI
00774f32  8945b8                    MOV dword ptr [EBP + -0x48],EAX
00774f35  8d45b0                    LEA EAX,[EBP + -0x50]
00774f38  50                        PUSH EAX
00774f39  e8e2b21b00                CALL 0x00930220
00774f3e  eb06                      JMP 0x00774f46
00774f40  8db708150000              LEA ESI,[EDI + 0x1508]
00774f46  6a00                      PUSH 0x0
00774f48  6a75                      PUSH 0x75
00774f4a  8bcf                      MOV ECX,EDI
00774f4c  e88fb7ffff                CALL 0x007706e0
00774f51  84c0                      TEST AL,AL
00774f53  0f84a9000000              JZ 0x00775002
00774f59  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774f5f  e8ec28caff                CALL 0x00417850
00774f64  8bc8                      MOV ECX,EAX
00774f66  e8e545cbff                CALL 0x00429550
00774f6b  84c0                      TEST AL,AL
00774f6d  741d                      JZ 0x00774f8c
00774f6f  e89c0b2a00                CALL 0x00a15b10
00774f74  2b87b82e0000              SUB EAX,dword ptr [EDI + 0x2eb8]
00774f7a  1b97bc2e0000              SBB EDX,dword ptr [EDI + 0x2ebc]
00774f80  8955ec                    MOV dword ptr [EBP + -0x14],EDX
00774f83  7507                      JNZ 0x00774f8c
00774f85  3d30750000                CMP EAX,0x7530
00774f8a  7676                      JBE 0x00775002
00774f8c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774f92  e8697acbff                CALL 0x0042ca00
00774f97  6a75                      PUSH 0x75
00774f99  8bc8                      MOV ECX,EAX
00774f9b  e870adfbff                CALL 0x0072fd10
00774fa0  50                        PUSH EAX
00774fa1  8d4db0                    LEA ECX,[EBP + -0x50]
00774fa4  e8d70fccff                CALL 0x00435f80
00774fa9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00774faf  e89c28caff                CALL 0x00417850
00774fb4  8bc8                      MOV ECX,EAX
00774fb6  e89545cbff                CALL 0x00429550
00774fbb  84c0                      TEST AL,AL
00774fbd  7418                      JZ 0x00774fd7
00774fbf  c745b8c2010000            MOV dword ptr [EBP + -0x48],0x1c2
00774fc6  e8450b2a00                CALL 0x00a15b10
00774fcb  8987b82e0000              MOV dword ptr [EDI + 0x2eb8],EAX
00774fd1  8997bc2e0000              MOV dword ptr [EDI + 0x2ebc],EDX
00774fd7  6a01                      PUSH 0x1
00774fd9  6a01                      PUSH 0x1
00774fdb  8d45b0                    LEA EAX,[EBP + -0x50]
00774fde  8bce                      MOV ECX,ESI
00774fe0  50                        PUSH EAX
00774fe1  e83ab21b00                CALL 0x00930220
00774fe6  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00774fec  e80f7acbff                CALL 0x0042ca00
00774ff1  6a75                      PUSH 0x75
00774ff3  8bc8                      MOV ECX,EAX
00774ff5  e816adfbff                CALL 0x0072fd10
00774ffa  50                        PUSH EAX
00774ffb  8bcf                      MOV ECX,EDI
00774ffd  e84e88feff                CALL 0x0075d850
00775002  6a00                      PUSH 0x0
00775004  6862020000                PUSH 0x262
00775009  8bcf                      MOV ECX,EDI
0077500b  e8d0b6ffff                CALL 0x007706e0
00775010  84c0                      TEST AL,AL
00775012  742f                      JZ 0x00775043
00775014  6a01                      PUSH 0x1
00775016  6a01                      PUSH 0x1
00775018  6862020000                PUSH 0x262
0077501d  8bce                      MOV ECX,ESI
0077501f  e8bcb21b00                CALL 0x009302e0
00775024  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0077502a  e8d179cbff                CALL 0x0042ca00
0077502f  6862020000                PUSH 0x262
00775034  8bc8                      MOV ECX,EAX
00775036  e8d5acfbff                CALL 0x0072fd10
0077503b  50                        PUSH EAX
0077503c  8bcf                      MOV ECX,EDI
0077503e  e80d88feff                CALL 0x0075d850
00775043  33f6                      XOR ESI,ESI
00775045  56                        PUSH ESI
00775046  8bcf                      MOV ECX,EDI
00775048  e8a352cbff                CALL 0x0042a2f0
0077504d  3d63020000                CMP EAX,0x263
00775052  7510                      JNZ 0x00775064
00775054  6a00                      PUSH 0x0
00775056  6a00                      PUSH 0x0
00775058  6a00                      PUSH 0x0
0077505a  56                        PUSH ESI
0077505b  6a01                      PUSH 0x1
0077505d  8bcf                      MOV ECX,EDI
0077505f  e83cc50100                CALL 0x007915a0
00775064  46                        INC ESI
00775065  83fe04                    CMP ESI,0x4
00775068  72db                      JC 0x00775045
0077506a  83bfc01300001b            CMP dword ptr [EDI + 0x13c0],0x1b
00775071  7527                      JNZ 0x0077509a
00775073  83bf4413000000            CMP dword ptr [EDI + 0x1344],0x0
0077507a  7f12                      JG 0x0077508e
0077507c  83bf4c13000000            CMP dword ptr [EDI + 0x134c],0x0
00775083  7f09                      JG 0x0077508e
00775085  83bf881d000000            CMP dword ptr [EDI + 0x1d88],0x0
0077508c  7e0c                      JLE 0x0077509a
0077508e  6810270000                PUSH 0x2710
00775093  8bcf                      MOV ECX,EDI
00775095  e866410600                CALL 0x007d9200
0077509a  6a00                      PUSH 0x0
0077509c  6812010000                PUSH 0x112
007750a1  8bcf                      MOV ECX,EDI
007750a3  e838b6ffff                CALL 0x007706e0
007750a8  8db708150000              LEA ESI,[EDI + 0x1508]
007750ae  84c0                      TEST AL,AL
007750b0  7410                      JZ 0x007750c2
007750b2  6a01                      PUSH 0x1
007750b4  6a01                      PUSH 0x1
007750b6  6812010000                PUSH 0x112
007750bb  8bce                      MOV ECX,ESI
007750bd  e81eb21b00                CALL 0x009302e0
007750c2  6a00                      PUSH 0x0
007750c4  689c000000                PUSH 0x9c
007750c9  8bcf                      MOV ECX,EDI
007750cb  e810b6ffff                CALL 0x007706e0
007750d0  84c0                      TEST AL,AL
007750d2  746b                      JZ 0x0077513f
007750d4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007750da  e87127caff                CALL 0x00417850
007750df  8bc8                      MOV ECX,EAX
007750e1  e86a44cbff                CALL 0x00429550
007750e6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007750ec  84c0                      TEST AL,AL
007750ee  0f9485fefeffff            SETZ byte ptr [EBP + 0xfffffefe]
007750f5  e85627caff                CALL 0x00417850
007750fa  8bc8                      MOV ECX,EAX
007750fc  e84f44cbff                CALL 0x00429550
00775101  84c0                      TEST AL,AL
00775103  7420                      JZ 0x00775125
00775105  8a87cb2e0000              MOV AL,byte ptr [EDI + 0x2ecb]
0077510b  028500ffffff              ADD AL,byte ptr [EBP + 0xffffff00]
00775111  8887cb2e0000              MOV byte ptr [EDI + 0x2ecb],AL
00775117  3c14                      CMP AL,0x14
00775119  720a                      JC 0x00775125
0077511b  2c14                      SUB AL,0x14
0077511d  8887cb2e0000              MOV byte ptr [EDI + 0x2ecb],AL
00775123  eb09                      JMP 0x0077512e
00775125  80bdfefeffff00            CMP byte ptr [EBP + 0xfffffefe],0x0
0077512c  7411                      JZ 0x0077513f
0077512e  6a00                      PUSH 0x0
00775130  6a00                      PUSH 0x0
00775132  6a00                      PUSH 0x0
00775134  6aff                      PUSH -0x1
00775136  6a01                      PUSH 0x1
00775138  8bcf                      MOV ECX,EDI
0077513a  e861c40100                CALL 0x007915a0
0077513f  6a00                      PUSH 0x0
00775141  68b4000000                PUSH 0xb4
00775146  8bcf                      MOV ECX,EDI
00775148  e893b5ffff                CALL 0x007706e0
0077514d  84c0                      TEST AL,AL
0077514f  7454                      JZ 0x007751a5
00775151  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775157  e8f426caff                CALL 0x00417850
0077515c  8bc8                      MOV ECX,EAX
0077515e  e8ed43cbff                CALL 0x00429550
00775163  84c0                      TEST AL,AL
00775165  741d                      JZ 0x00775184
00775167  e8a4092a00                CALL 0x00a15b10
0077516c  2b87c02e0000              SUB EAX,dword ptr [EDI + 0x2ec0]
00775172  1b97c42e0000              SBB EDX,dword ptr [EDI + 0x2ec4]
00775178  8955ec                    MOV dword ptr [EBP + -0x14],EDX
0077517b  7507                      JNZ 0x00775184
0077517d  3d88130000                CMP EAX,0x1388
00775182  7621                      JBE 0x007751a5
00775184  6a01                      PUSH 0x1
00775186  6a01                      PUSH 0x1
00775188  68b4000000                PUSH 0xb4
0077518d  8bce                      MOV ECX,ESI
0077518f  e84cb11b00                CALL 0x009302e0
00775194  e877092a00                CALL 0x00a15b10
00775199  8987c02e0000              MOV dword ptr [EDI + 0x2ec0],EAX
0077519f  8997c42e0000              MOV dword ptr [EDI + 0x2ec4],EDX
007751a5  6a00                      PUSH 0x0
007751a7  68d6000000                PUSH 0xd6
007751ac  8bcf                      MOV ECX,EDI
007751ae  e82db5ffff                CALL 0x007706e0
007751b3  84c0                      TEST AL,AL
007751b5  7451                      JZ 0x00775208
007751b7  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007751bd  e83e78cbff                CALL 0x0042ca00
007751c2  68d6000000                PUSH 0xd6
007751c7  8bc8                      MOV ECX,EAX
007751c9  e842abfbff                CALL 0x0072fd10
007751ce  50                        PUSH EAX
007751cf  8d4db0                    LEA ECX,[EBP + -0x50]
007751d2  e8a90dccff                CALL 0x00435f80
007751d7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007751dd  e86e26caff                CALL 0x00417850
007751e2  8bc8                      MOV ECX,EAX
007751e4  e86743cbff                CALL 0x00429550
007751e9  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
007751ec  84c0                      TEST AL,AL
007751ee  b82c010000                MOV EAX,0x12c
007751f3  0f45c8                    CMOVNZ ECX,EAX
007751f6  8d45b0                    LEA EAX,[EBP + -0x50]
007751f9  6a01                      PUSH 0x1
007751fb  6a01                      PUSH 0x1
007751fd  894db8                    MOV dword ptr [EBP + -0x48],ECX
00775200  8bce                      MOV ECX,ESI
00775202  50                        PUSH EAX
00775203  e818b01b00                CALL 0x00930220
00775208  6a00                      PUSH 0x0
0077520a  6a01                      PUSH 0x1
0077520c  8bcf                      MOV ECX,EDI
0077520e  e83dc3ffff                CALL 0x00771550
00775213  84c0                      TEST AL,AL
00775215  0f84bb000000              JZ 0x007752d6
0077521b  6a01                      PUSH 0x1
0077521d  8bcf                      MOV ECX,EDI
0077521f  e8bc640500                CALL 0x007cb6e0
00775224  8bf0                      MOV ESI,EAX
00775226  8bcf                      MOV ECX,EDI
00775228  89b5d0feffff              MOV dword ptr [EBP + 0xfffffed0],ESI
0077522e  e8ad5d0500                CALL 0x007cafe0
00775233  8d8f7c170000              LEA ECX,[EDI + 0x177c]
00775239  6a01                      PUSH 0x1
0077523b  83f803                    CMP EAX,0x3
0077523e  7518                      JNZ 0x00775258
00775240  e8bb6ae5ff                CALL 0x005cbd00
00775245  6a02                      PUSH 0x2
00775247  8bc8                      MOV ECX,EAX
00775249  e8d23d0700                CALL 0x007e9020
0077524e  8bf0                      MOV ESI,EAX
00775250  89b5d0feffff              MOV dword ptr [EBP + 0xfffffed0],ESI
00775256  eb0c                      JMP 0x00775264
00775258  e8a36ae5ff                CALL 0x005cbd00
0077525d  8bc8                      MOV ECX,EAX
0077525f  e88c3e0700                CALL 0x007e90f0
00775264  85f6                      TEST ESI,ESI
00775266  7e6e                      JLE 0x007752d6
00775268  e8f39cf7ff                CALL 0x006eef60
0077526d  8bf8                      MOV EDI,EAX
0077526f  8d45e8                    LEA EAX,[EBP + -0x18]
00775272  50                        PUSH EAX
00775273  e8f89df0ff                CALL 0x0067f070
00775278  83c404                    ADD ESP,0x4
0077527b  8bf0                      MOV ESI,EAX
0077527d  e85e9df0ff                CALL 0x0067efe0
00775282  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0077528a  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00775290  50                        PUSH EAX
00775291  8d45d0                    LEA EAX,[EBP + -0x30]
00775294  8bce                      MOV ECX,ESI
00775296  50                        PUSH EAX
00775297  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0077529f  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
007752a7  e834b22900                CALL 0x00a104e0
007752ac  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007752b2  57                        PUSH EDI
007752b3  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
007752b9  6a00                      PUSH 0x0
007752bb  57                        PUSH EDI
007752bc  50                        PUSH EAX
007752bd  8d873c030000              LEA EAX,[EDI + 0x33c]
007752c3  50                        PUSH EAX
007752c4  6a14                      PUSH 0x14
007752c6  6a05                      PUSH 0x5
007752c8  e85338cbff                CALL 0x00428b20
007752cd  83add0feffff01            SUB dword ptr [EBP + 0xfffffed0],0x1
007752d4  7592                      JNZ 0x00775268
007752d6  6a00                      PUSH 0x0
007752d8  68cc000000                PUSH 0xcc
007752dd  8bcf                      MOV ECX,EDI
007752df  e8fcb3ffff                CALL 0x007706e0
007752e4  84c0                      TEST AL,AL
007752e6  0f84da000000              JZ 0x007753c6
007752ec  b902000000                MOV ECX,0x2
007752f1  e81a9df0ff                CALL 0x0067f010
007752f6  85c0                      TEST EAX,EAX
007752f8  0f84c8000000              JZ 0x007753c6
007752fe  b904000000                MOV ECX,0x4
00775303  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0077530d  e8fe9cf0ff                CALL 0x0067f010
00775312  8bf0                      MOV ESI,EAX
00775314  85f6                      TEST ESI,ESI
00775316  7525                      JNZ 0x0077533d
00775318  50                        PUSH EAX
00775319  6a16                      PUSH 0x16
0077531b  8bcf                      MOV ECX,EDI
0077531d  e82ec2ffff                CALL 0x00771550
00775322  84c0                      TEST AL,AL
00775324  741c                      JZ 0x00775342
00775326  8d4e05                    LEA ECX,[ESI + 0x5]
00775329  e8e29cf0ff                CALL 0x0067f010
0077532e  85c0                      TEST EAX,EAX
00775330  7410                      JZ 0x00775342
00775332  8d4e03                    LEA ECX,[ESI + 0x3]
00775335  e8d69cf0ff                CALL 0x0067f010
0077533a  8d7001                    LEA ESI,[EAX + 0x1]
0077533d  83fe03                    CMP ESI,0x3
00775340  7735                      JA 0x00775377
00775342  ff24b5b0917700            JMP dword ptr [ESI*0x4 + 0x7791b0]
00775377  e8e49bf7ff                CALL 0x006eef60
0077537c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775382  8bf0                      MOV ESI,EAX
00775384  e8f720c9ff                CALL 0x00407480
00775389  6a00                      PUSH 0x0
0077538b  6a00                      PUSH 0x0
0077538d  6a00                      PUSH 0x0
0077538f  51                        PUSH ECX
00775390  c7042400002042            MOV dword ptr [ESP],0x42200000
00775397  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0077539d  51                        PUSH ECX
0077539e  8d4de8                    LEA ECX,[EBP + -0x18]
007753a1  51                        PUSH ECX
007753a2  8bc8                      MOV ECX,EAX
007753a4  e877e10900                CALL 0x00813520
007753a9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007753af  56                        PUSH ESI
007753b0  6a00                      PUSH 0x0
007753b2  57                        PUSH EDI
007753b3  6840b6c700                PUSH 0xc7b640
007753b8  50                        PUSH EAX
007753b9  ffb5f8feffff              PUSH dword ptr [EBP + 0xfffffef8]
007753bf  6a05                      PUSH 0x5
007753c1  e85a37cbff                CALL 0x00428b20
007753c6  68db000000                PUSH 0xdb
007753cb  8bcf                      MOV ECX,EDI
007753cd  e8eec3e3ff                CALL 0x005b17c0
007753d2  6a16                      PUSH 0x16
007753d4  8bcf                      MOV ECX,EDI
007753d6  8bf0                      MOV ESI,EAX
007753d8  e8a37beeff                CALL 0x0065cf80
007753dd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007753e3  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
007753e9  e86224caff                CALL 0x00417850
007753ee  8bc8                      MOV ECX,EAX
007753f0  e85b41cbff                CALL 0x00429550
007753f5  f30f108f6c150000          MOVSS XMM1,dword ptr [EDI + 0x156c]
007753fd  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
00775405  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
0077540d  84c0                      TEST AL,AL
0077540f  7408                      JZ 0x00775419
00775411  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
00775419  f30f58c1                  ADDSS XMM0,XMM1
0077541d  8bcf                      MOV ECX,EDI
0077541f  6a00                      PUSH 0x0
00775421  68db000000                PUSH 0xdb
00775426  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0077542e  e8adb2ffff                CALL 0x007706e0
00775433  84c0                      TEST AL,AL
00775435  0f84b1000000              JZ 0x007754ec
0077543b  8bce                      MOV ECX,ESI
0077543d  e83e3c0700                CALL 0x007e9080
00775442  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
0077544a  d99dd0feffff              FSTP dword ptr [EBP + 0xfffffed0]
00775450  0f2f85d0feffff            COMISS XMM0,dword ptr [EBP + 0xfffffed0]
00775457  0f828f000000              JC 0x007754ec
0077545d  6a00                      PUSH 0x0
0077545f  6a16                      PUSH 0x16
00775461  8bcf                      MOV ECX,EDI
00775463  e8e8c0ffff                CALL 0x00771550
00775468  84c0                      TEST AL,AL
0077546a  7411                      JZ 0x0077547d
0077546c  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00775472  6a05                      PUSH 0x5
00775474  e8a73b0700                CALL 0x007e9020
00775479  85c0                      TEST EAX,EAX
0077547b  756f                      JNZ 0x007754ec
0077547d  e8de9af7ff                CALL 0x006eef60
00775482  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775488  8bf0                      MOV ESI,EAX
0077548a  e8c123caff                CALL 0x00417850
0077548f  8bc8                      MOV ECX,EAX
00775491  e8ba40cbff                CALL 0x00429550
00775496  33c9                      XOR ECX,ECX
00775498  84c0                      TEST AL,AL
0077549a  0f95c1                    SETNZ CL
0077549d  41                        INC ECX
0077549e  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
007754a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007754aa  e8d11fc9ff                CALL 0x00407480
007754af  6a00                      PUSH 0x0
007754b1  6a00                      PUSH 0x0
007754b3  6a00                      PUSH 0x0
007754b5  51                        PUSH ECX
007754b6  c7042400002042            MOV dword ptr [ESP],0x42200000
007754bd  8d8f3c030000              LEA ECX,[EDI + 0x33c]
007754c3  51                        PUSH ECX
007754c4  8d4de8                    LEA ECX,[EBP + -0x18]
007754c7  51                        PUSH ECX
007754c8  8bc8                      MOV ECX,EAX
007754ca  e851e00900                CALL 0x00813520
007754cf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007754d5  56                        PUSH ESI
007754d6  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
007754dc  57                        PUSH EDI
007754dd  6840b6c700                PUSH 0xc7b640
007754e2  50                        PUSH EAX
007754e3  6a0a                      PUSH 0xa
007754e5  6a05                      PUSH 0x5
007754e7  e83436cbff                CALL 0x00428b20
007754ec  68e1000000                PUSH 0xe1
007754f1  8bcf                      MOV ECX,EDI
007754f3  e8c8c2e3ff                CALL 0x005b17c0
007754f8  6a00                      PUSH 0x0
007754fa  68e1000000                PUSH 0xe1
007754ff  8bcf                      MOV ECX,EDI
00775501  8bf0                      MOV ESI,EAX
00775503  e8d8b1ffff                CALL 0x007706e0
00775508  84c0                      TEST AL,AL
0077550a  0f8499000000              JZ 0x007755a9
00775510  8bce                      MOV ECX,ESI
00775512  e8693b0700                CALL 0x007e9080
00775517  f30f10876c150000          MOVSS XMM0,dword ptr [EDI + 0x156c]
0077551f  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
00775527  d99d04ffffff              FSTP dword ptr [EBP + 0xffffff04]
0077552d  f30f580508a1ba00          ADDSS XMM0,dword ptr [0x00baa108]
00775535  0f2f8504ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff04]
0077553c  726b                      JC 0x007755a9
0077553e  6a00                      PUSH 0x0
00775540  6a16                      PUSH 0x16
00775542  8bcf                      MOV ECX,EDI
00775544  e807c0ffff                CALL 0x00771550
00775549  84c0                      TEST AL,AL
0077554b  7411                      JZ 0x0077555e
0077554d  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00775553  6a05                      PUSH 0x5
00775555  e8c63a0700                CALL 0x007e9020
0077555a  85c0                      TEST EAX,EAX
0077555c  754b                      JNZ 0x007755a9
0077555e  e8fd99f7ff                CALL 0x006eef60
00775563  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775569  8bf0                      MOV ESI,EAX
0077556b  e8101fc9ff                CALL 0x00407480
00775570  6a00                      PUSH 0x0
00775572  6a00                      PUSH 0x0
00775574  6a00                      PUSH 0x0
00775576  51                        PUSH ECX
00775577  c7042400002042            MOV dword ptr [ESP],0x42200000
0077557e  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00775584  51                        PUSH ECX
00775585  8d4de8                    LEA ECX,[EBP + -0x18]
00775588  51                        PUSH ECX
00775589  8bc8                      MOV ECX,EAX
0077558b  e890df0900                CALL 0x00813520
00775590  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775596  56                        PUSH ESI
00775597  6a03                      PUSH 0x3
00775599  57                        PUSH EDI
0077559a  6840b6c700                PUSH 0xc7b640
0077559f  50                        PUSH EAX
007755a0  6a0a                      PUSH 0xa
007755a2  6a05                      PUSH 0x5
007755a4  e87735cbff                CALL 0x00428b20
007755a9  68e3000000                PUSH 0xe3
007755ae  8bcf                      MOV ECX,EDI
007755b0  e80bc2e3ff                CALL 0x005b17c0
007755b5  6a00                      PUSH 0x0
007755b7  8bf0                      MOV ESI,EAX
007755b9  8bcf                      MOV ECX,EDI
007755bb  68e3000000                PUSH 0xe3
007755c0  89b5f8feffff              MOV dword ptr [EBP + 0xfffffef8],ESI
007755c6  e815b1ffff                CALL 0x007706e0
007755cb  84c0                      TEST AL,AL
007755cd  0f849c000000              JZ 0x0077566f
007755d3  8bcf                      MOV ECX,EDI
007755d5  e8065a0500                CALL 0x007cafe0
007755da  83f803                    CMP EAX,0x3
007755dd  7422                      JZ 0x00775601
007755df  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007755e5  e86622caff                CALL 0x00417850
007755ea  8bc8                      MOV ECX,EAX
007755ec  e85f3fcbff                CALL 0x00429550
007755f1  84c0                      TEST AL,AL
007755f3  750c                      JNZ 0x00775601
007755f5  6a02                      PUSH 0x2
007755f7  8bce                      MOV ECX,ESI
007755f9  e8223a0700                CALL 0x007e9020
007755fe  40                        INC EAX
007755ff  eb09                      JMP 0x0077560a
00775601  6a02                      PUSH 0x2
00775603  8bce                      MOV ECX,ESI
00775605  e8163a0700                CALL 0x007e9020
0077560a  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
00775610  85c0                      TEST EAX,EAX
00775612  7e5b                      JLE 0x0077566f
00775614  8bce                      MOV ECX,ESI
00775616  e8d53a0700                CALL 0x007e90f0
0077561b  8bf0                      MOV ESI,EAX
0077561d  8d45e8                    LEA EAX,[EBP + -0x18]
00775620  50                        PUSH EAX
00775621  e84a9af0ff                CALL 0x0067f070
00775626  83c404                    ADD ESP,0x4
00775629  c78504ffffff00000040      MOV dword ptr [EBP + 0xffffff04],0x40000000
00775633  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00775639  51                        PUSH ECX
0077563a  8d4dd0                    LEA ECX,[EBP + -0x30]
0077563d  51                        PUSH ECX
0077563e  8bc8                      MOV ECX,EAX
00775640  e89bae2900                CALL 0x00a104e0
00775645  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077564b  56                        PUSH ESI
0077564c  6a01                      PUSH 0x1
0077564e  57                        PUSH EDI
0077564f  50                        PUSH EAX
00775650  8d873c030000              LEA EAX,[EDI + 0x33c]
00775656  50                        PUSH EAX
00775657  6a14                      PUSH 0x14
00775659  6a05                      PUSH 0x5
0077565b  e8c034cbff                CALL 0x00428b20
00775660  83add0feffff01            SUB dword ptr [EBP + 0xfffffed0],0x1
00775667  8bb5f8feffff              MOV ESI,dword ptr [EBP + 0xfffffef8]
0077566d  75a5                      JNZ 0x00775614
0077566f  6a08                      PUSH 0x8
00775671  8bcf                      MOV ECX,EDI
00775673  e80879eeff                CALL 0x0065cf80
00775678  6a00                      PUSH 0x0
0077567a  6a08                      PUSH 0x8
0077567c  8bcf                      MOV ECX,EDI
0077567e  8bf0                      MOV ESI,EAX
00775680  e8cbbeffff                CALL 0x00771550
00775685  84c0                      TEST AL,AL
00775687  0f8482000000              JZ 0x0077570f
0077568d  f30f10876c150000          MOVSS XMM0,dword ptr [EDI + 0x156c]
00775695  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
0077569b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
007756a3  b914000000                MOV ECX,0x14
007756a8  c78504ffffff01000000      MOV dword ptr [EBP + 0xffffff04],0x1
007756b2  f30f2cc0                  CVTTSS2SI EAX,XMM0
007756b6  2bc8                      SUB ECX,EAX
007756b8  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
007756be  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
007756c4  e8b774caff                CALL 0x0041cb80
007756c9  8bce                      MOV ECX,ESI
007756cb  ff30                      PUSH dword ptr [EAX]
007756cd  e84e390700                CALL 0x007e9020
007756d2  6a08                      PUSH 0x8
007756d4  8bcf                      MOV ECX,EDI
007756d6  8bf0                      MOV ESI,EAX
007756d8  e803600500                CALL 0x007cb6e0
007756dd  3bf0                      CMP ESI,EAX
007756df  7d2e                      JGE 0x0077570f
007756e1  6a5d                      PUSH 0x5d
007756e3  8d8f08150000              LEA ECX,[EDI + 0x1508]
007756e9  e802af1b00                CALL 0x009305f0
007756ee  84c0                      TEST AL,AL
007756f0  751d                      JNZ 0x0077570f
007756f2  6a00                      PUSH 0x0
007756f4  6aff                      PUSH -0x1
007756f6  6a01                      PUSH 0x1
007756f8  6a5d                      PUSH 0x5d
007756fa  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
00775700  8bcf                      MOV ECX,EDI
00775702  50                        PUSH EAX
00775703  e8c8e2e3ff                CALL 0x005b39d0
00775708  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
0077570f  6a00                      PUSH 0x0
00775711  68d3000000                PUSH 0xd3
00775716  8bcf                      MOV ECX,EDI
00775718  e8c3afffff                CALL 0x007706e0
0077571d  84c0                      TEST AL,AL
0077571f  0f84d1000000              JZ 0x007757f6
00775725  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077572b  e82021caff                CALL 0x00417850
00775730  8bc8                      MOV ECX,EAX
00775732  e8193ecbff                CALL 0x00429550
00775737  84c0                      TEST AL,AL
00775739  7421                      JZ 0x0077575c
0077573b  e8d0032a00                CALL 0x00a15b10
00775740  2b87a82e0000              SUB EAX,dword ptr [EDI + 0x2ea8]
00775746  1b97ac2e0000              SBB EDX,dword ptr [EDI + 0x2eac]
0077574c  8955ec                    MOV dword ptr [EBP + -0x14],EDX
0077574f  750b                      JNZ 0x0077575c
00775751  3ddc050000                CMP EAX,0x5dc
00775756  0f869a000000              JBE 0x007757f6
0077575c  68d3000000                PUSH 0xd3
00775761  8bcf                      MOV ECX,EDI
00775763  e858c0e3ff                CALL 0x005b17c0
00775768  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077576e  8bf0                      MOV ESI,EAX
00775770  e8db20caff                CALL 0x00417850
00775775  8bc8                      MOV ECX,EAX
00775777  e8d43dcbff                CALL 0x00429550
0077577c  8bce                      MOV ECX,ESI
0077577e  84c0                      TEST AL,AL
00775780  740c                      JZ 0x0077578e
00775782  6a02                      PUSH 0x2
00775784  e897380700                CALL 0x007e9020
00775789  8d7001                    LEA ESI,[EAX + 0x1]
0077578c  eb0a                      JMP 0x00775798
0077578e  6a04                      PUSH 0x4
00775790  e88b380700                CALL 0x007e9020
00775795  8d7002                    LEA ESI,[EAX + 0x2]
00775798  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077579e  e8dd1cc9ff                CALL 0x00407480
007757a3  6a00                      PUSH 0x0
007757a5  6a00                      PUSH 0x0
007757a7  6a01                      PUSH 0x1
007757a9  51                        PUSH ECX
007757aa  c7042400000000            MOV dword ptr [ESP],0x0
007757b1  8d8f3c030000              LEA ECX,[EDI + 0x33c]
007757b7  51                        PUSH ECX
007757b8  8d4de8                    LEA ECX,[EBP + -0x18]
007757bb  51                        PUSH ECX
007757bc  8bc8                      MOV ECX,EAX
007757be  e85ddd0900                CALL 0x00813520
007757c3  85f6                      TEST ESI,ESI
007757c5  7e1e                      JLE 0x007757e5
007757c7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
007757d0  6840b6c700                PUSH 0xc7b640
007757d5  8d45e8                    LEA EAX,[EBP + -0x18]
007757d8  8bcf                      MOV ECX,EDI
007757da  50                        PUSH EAX
007757db  e8609e0400                CALL 0x007bf640
007757e0  83ee01                    SUB ESI,0x1
007757e3  75eb                      JNZ 0x007757d0
007757e5  e826032a00                CALL 0x00a15b10
007757ea  8987a82e0000              MOV dword ptr [EDI + 0x2ea8],EAX
007757f0  8997ac2e0000              MOV dword ptr [EDI + 0x2eac],EDX
007757f6  6a00                      PUSH 0x0
007757f8  6806010000                PUSH 0x106
007757fd  8bcf                      MOV ECX,EDI
007757ff  e8dcaeffff                CALL 0x007706e0
00775804  84c0                      TEST AL,AL
00775806  0f84be000000              JZ 0x007758ca
0077580c  be02000000                MOV ESI,0x2
00775811  8bce                      MOV ECX,ESI
00775813  e8687b0600                CALL 0x007dd380
00775818  8b8f44130000              MOV ECX,dword ptr [EDI + 0x1344]
0077581e  2b8d00ffffff              SUB ECX,dword ptr [EBP + 0xffffff00]
00775824  038f881d0000              ADD ECX,dword ptr [EDI + 0x1d88]
0077582a  038f4c130000              ADD ECX,dword ptr [EDI + 0x134c]
00775830  3bc8                      CMP ECX,EAX
00775832  0f8f92000000              JG 0x007758ca
00775838  8bce                      MOV ECX,ESI
0077583a  e8417b0600                CALL 0x007dd380
0077583f  8b8f44130000              MOV ECX,dword ptr [EDI + 0x1344]
00775845  038f881d0000              ADD ECX,dword ptr [EDI + 0x1d88]
0077584b  038f4c130000              ADD ECX,dword ptr [EDI + 0x134c]
00775851  3bc8                      CMP ECX,EAX
00775853  7e75                      JLE 0x007758ca
00775855  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077585b  e8f01fcaff                CALL 0x00417850
00775860  8bc8                      MOV ECX,EAX
00775862  e8e93ccbff                CALL 0x00429550
00775867  84c0                      TEST AL,AL
00775869  7409                      JZ 0x00775874
0077586b  80bfd82e000000            CMP byte ptr [EDI + 0x2ed8],0x0
00775872  7556                      JNZ 0x007758ca
00775874  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0077587c  51                        PUSH ECX
0077587d  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00775883  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077588a  6a00                      PUSH 0x0
0077588c  6a02                      PUSH 0x2
0077588e  6a21                      PUSH 0x21
00775890  e84b101e00                CALL 0x009568e0
00775895  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077589b  e8c00fceff                CALL 0x00456860
007758a0  6a00                      PUSH 0x0
007758a2  6a00                      PUSH 0x0
007758a4  6a1f                      PUSH 0x1f
007758a6  8bc8                      MOV ECX,EAX
007758a8  e863792300                CALL 0x009ad210
007758ad  6a00                      PUSH 0x0
007758af  6aff                      PUSH -0x1
007758b1  6a01                      PUSH 0x1
007758b3  6a23                      PUSH 0x23
007758b5  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
007758bb  8bcf                      MOV ECX,EDI
007758bd  50                        PUSH EAX
007758be  e80de1e3ff                CALL 0x005b39d0
007758c3  c687d82e000001            MOV byte ptr [EDI + 0x2ed8],0x1
007758ca  6a00                      PUSH 0x0
007758cc  682d010000                PUSH 0x12d
007758d1  8bcf                      MOV ECX,EDI
007758d3  e808aeffff                CALL 0x007706e0
007758d8  84c0                      TEST AL,AL
007758da  750e                      JNZ 0x007758ea
007758dc  8bcf                      MOV ECX,EDI
007758de  e87d200500                CALL 0x007c7960
007758e3  3d2d010000                CMP EAX,0x12d
007758e8  7511                      JNZ 0x007758fb
007758ea  6a01                      PUSH 0x1
007758ec  6a01                      PUSH 0x1
007758ee  6a6c                      PUSH 0x6c
007758f0  8d8f08150000              LEA ECX,[EDI + 0x1508]
007758f6  e8e5a91b00                CALL 0x009302e0
007758fb  682f010000                PUSH 0x12f
00775900  8bcf                      MOV ECX,EDI
00775902  e8b9bee3ff                CALL 0x005b17c0
00775907  6a00                      PUSH 0x0
00775909  8bf0                      MOV ESI,EAX
0077590b  8bcf                      MOV ECX,EDI
0077590d  682f010000                PUSH 0x12f
00775912  89b504ffffff              MOV dword ptr [EBP + 0xffffff04],ESI
00775918  e8c3adffff                CALL 0x007706e0
0077591d  84c0                      TEST AL,AL
0077591f  7512                      JNZ 0x00775933
00775921  8bcf                      MOV ECX,EDI
00775923  e838200500                CALL 0x007c7960
00775928  3d2f010000                CMP EAX,0x12f
0077592d  0f85e8000000              JNZ 0x00775a1b
00775933  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775939  e8121fcaff                CALL 0x00417850
0077593e  8bc8                      MOV ECX,EAX
00775940  e80b3ccbff                CALL 0x00429550
00775945  f30f10876c150000          MOVSS XMM0,dword ptr [EDI + 0x156c]
0077594d  84c0                      TEST AL,AL
0077594f  746f                      JZ 0x007759c0
00775951  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
00775958  be0a000000                MOV ESI,0xa
0077595d  721c                      JC 0x0077597b
0077595f  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
00775965  be32000000                MOV ESI,0x32
0077596a  6a64                      PUSH 0x64
0077596c  e8af360700                CALL 0x007e9020
00775971  3bc6                      CMP EAX,ESI
00775973  0f92c0                    SETC AL
00775976  e987000000                JMP 0x00775a02
0077597b  0f2f05b8a7ba00            COMISS XMM0,dword ptr [0x00baa7b8]
00775982  7219                      JC 0x0077599d
00775984  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
0077598a  be23000000                MOV ESI,0x23
0077598f  6a64                      PUSH 0x64
00775991  e88a360700                CALL 0x007e9020
00775996  3bc6                      CMP EAX,ESI
00775998  0f92c0                    SETC AL
0077599b  eb65                      JMP 0x00775a02
0077599d  0f2f055ca7ba00            COMISS XMM0,dword ptr [0x00baa75c]
007759a4  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
007759aa  b814000000                MOV EAX,0x14
007759af  6a64                      PUSH 0x64
007759b1  0f43f0                    CMOVNC ESI,EAX
007759b4  e867360700                CALL 0x007e9020
007759b9  3bc6                      CMP EAX,ESI
007759bb  0f92c0                    SETC AL
007759be  eb42                      JMP 0x00775a02
007759c0  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
007759c8  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
007759ce  b904000000                MOV ECX,0x4
007759d3  c78504ffffff01000000      MOV dword ptr [EBP + 0xffffff04],0x1
007759dd  f30f2cc0                  CVTTSS2SI EAX,XMM0
007759e1  2bc8                      SUB ECX,EAX
007759e3  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
007759e9  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
007759ef  e88c71caff                CALL 0x0041cb80
007759f4  8bce                      MOV ECX,ESI
007759f6  ff30                      PUSH dword ptr [EAX]
007759f8  e823360700                CALL 0x007e9020
007759fd  85c0                      TEST EAX,EAX
007759ff  0f94c0                    SETZ AL
00775a02  8db708150000              LEA ESI,[EDI + 0x1508]
00775a08  84c0                      TEST AL,AL
00775a0a  7415                      JZ 0x00775a21
00775a0c  6a01                      PUSH 0x1
00775a0e  6a01                      PUSH 0x1
00775a10  6a3a                      PUSH 0x3a
00775a12  8bce                      MOV ECX,ESI
00775a14  e8c7a81b00                CALL 0x009302e0
00775a19  eb06                      JMP 0x00775a21
00775a1b  8db708150000              LEA ESI,[EDI + 0x1508]
00775a21  6a00                      PUSH 0x0
00775a23  689d000000                PUSH 0x9d
00775a28  8bcf                      MOV ECX,EDI
00775a2a  e8b1acffff                CALL 0x007706e0
00775a2f  84c0                      TEST AL,AL
00775a31  7524                      JNZ 0x00775a57
00775a33  6a00                      PUSH 0x0
00775a35  68b7020000                PUSH 0x2b7
00775a3a  8bcf                      MOV ECX,EDI
00775a3c  e89facffff                CALL 0x007706e0
00775a41  84c0                      TEST AL,AL
00775a43  7512                      JNZ 0x00775a57
00775a45  6a00                      PUSH 0x0
00775a47  68ba000000                PUSH 0xba
00775a4c  8bcf                      MOV ECX,EDI
00775a4e  e88dacffff                CALL 0x007706e0
00775a53  84c0                      TEST AL,AL
00775a55  745d                      JZ 0x00775ab4
00775a57  83bfc013000006            CMP dword ptr [EDI + 0x13c0],0x6
00775a5e  8bcf                      MOV ECX,EDI
00775a60  6a00                      PUSH 0x0
00775a62  689d000000                PUSH 0x9d
00775a67  0f958504ffffff            SETNZ byte ptr [EBP + 0xffffff04]
00775a6e  e86dacffff                CALL 0x007706e0
00775a73  84c0                      TEST AL,AL
00775a75  7414                      JZ 0x00775a8b
00775a77  6a01                      PUSH 0x1
00775a79  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
00775a7f  8bce                      MOV ECX,ESI
00775a81  689d000000                PUSH 0x9d
00775a86  e855a81b00                CALL 0x009302e0
00775a8b  6a00                      PUSH 0x0
00775a8d  68b7020000                PUSH 0x2b7
00775a92  8bcf                      MOV ECX,EDI
00775a94  e847acffff                CALL 0x007706e0
00775a99  84c0                      TEST AL,AL
00775a9b  7410                      JZ 0x00775aad
00775a9d  6a01                      PUSH 0x1
00775a9f  6a01                      PUSH 0x1
00775aa1  68b7020000                PUSH 0x2b7
00775aa6  8bce                      MOV ECX,ESI
00775aa8  e833a81b00                CALL 0x009302e0
00775aad  66ff877c130000            INC word ptr [EDI + 0x137c]
00775ab4  6a00                      PUSH 0x0
00775ab6  6873010000                PUSH 0x173
00775abb  8bcf                      MOV ECX,EDI
00775abd  e81eacffff                CALL 0x007706e0
00775ac2  84c0                      TEST AL,AL
00775ac4  743f                      JZ 0x00775b05
00775ac6  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00775acc  8b06                      MOV EAX,dword ptr [ESI]
00775ace  83f804                    CMP EAX,0x4
00775ad1  7432                      JZ 0x00775b05
00775ad3  83f806                    CMP EAX,0x6
00775ad6  742d                      JZ 0x00775b05
00775ad8  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00775ade  e81d6fcbff                CALL 0x0042ca00
00775ae3  6a01                      PUSH 0x1
00775ae5  6a01                      PUSH 0x1
00775ae7  6a41                      PUSH 0x41
00775ae9  8bc8                      MOV ECX,EAX
00775aeb  e820a2fbff                CALL 0x0072fd10
00775af0  50                        PUSH EAX
00775af1  8d4db0                    LEA ECX,[EBP + -0x50]
00775af4  e88704ccff                CALL 0x00435f80
00775af9  50                        PUSH EAX
00775afa  8d8f08150000              LEA ECX,[EDI + 0x1508]
00775b00  e81ba71b00                CALL 0x00930220
00775b05  6a00                      PUSH 0x0
00775b07  6a43                      PUSH 0x43
00775b09  8bcf                      MOV ECX,EDI
00775b0b  e840baffff                CALL 0x00771550
00775b10  84c0                      TEST AL,AL
00775b12  0f84a0000000              JZ 0x00775bb8
00775b18  6a43                      PUSH 0x43
00775b1a  8bcf                      MOV ECX,EDI
00775b1c  be32000000                MOV ESI,0x32
00775b21  e8ba5b0500                CALL 0x007cb6e0
00775b26  83e802                    SUB EAX,0x2
00775b29  740a                      JZ 0x00775b35
00775b2b  83e801                    SUB EAX,0x1
00775b2e  750a                      JNZ 0x00775b3a
00775b30  8d7064                    LEA ESI,[EAX + 0x64]
00775b33  eb05                      JMP 0x00775b3a
00775b35  be4b000000                MOV ESI,0x4b
00775b3a  6a43                      PUSH 0x43
00775b3c  8bcf                      MOV ECX,EDI
00775b3e  e83d74eeff                CALL 0x0065cf80
00775b43  6a64                      PUSH 0x64
00775b45  8bc8                      MOV ECX,EAX
00775b47  e8d4340700                CALL 0x007e9020
00775b4c  3bc6                      CMP EAX,ESI
00775b4e  7368                      JNC 0x00775bb8
00775b50  6a43                      PUSH 0x43
00775b52  8bcf                      MOV ECX,EDI
00775b54  e82774eeff                CALL 0x0065cf80
00775b59  6a05                      PUSH 0x5
00775b5b  8bc8                      MOV ECX,EAX
00775b5d  e8be340700                CALL 0x007e9020
00775b62  83f804                    CMP EAX,0x4
00775b65  7751                      JA 0x00775bb8
00775b67  ff2485c0917700            JMP dword ptr [EAX*0x4 + 0x7791c0]
00775bb8  6a00                      PUSH 0x0
00775bba  6897010000                PUSH 0x197
00775bbf  8bcf                      MOV ECX,EDI
00775bc1  e81aabffff                CALL 0x007706e0
00775bc6  8db708150000              LEA ESI,[EDI + 0x1508]
00775bcc  b92effffff                MOV ECX,0xffffff2e
00775bd1  84c0                      TEST AL,AL
00775bd3  0f848d000000              JZ 0x00775c66
00775bd9  6897010000                PUSH 0x197
00775bde  8bce                      MOV ECX,ESI
00775be0  e80baa1b00                CALL 0x009305f0
00775be5  84c0                      TEST AL,AL
00775be7  7478                      JZ 0x00775c61
00775be9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775bef  e85c1ccaff                CALL 0x00417850
00775bf4  8bc8                      MOV ECX,EAX
00775bf6  e85539cbff                CALL 0x00429550
00775bfb  84c0                      TEST AL,AL
00775bfd  741d                      JZ 0x00775c1c
00775bff  66ff87c82e0000            INC word ptr [EDI + 0x2ec8]
00775c06  6683bfc82e000005          CMP word ptr [EDI + 0x2ec8],0x5
00775c0e  7c51                      JL 0x00775c61
00775c10  b82effffff                MOV EAX,0xffffff2e
00775c15  668987c82e0000            MOV word ptr [EDI + 0x2ec8],AX
00775c1c  6a01                      PUSH 0x1
00775c1e  6897010000                PUSH 0x197
00775c23  8bce                      MOV ECX,ESI
00775c25  e876a81b00                CALL 0x009304a0
00775c2a  6897010000                PUSH 0x197
00775c2f  8bcf                      MOV ECX,EDI
00775c31  e88abbe3ff                CALL 0x005b17c0
00775c36  6a04                      PUSH 0x4
00775c38  8bc8                      MOV ECX,EAX
00775c3a  e8e1330700                CALL 0x007e9020
00775c3f  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00775c45  89872c190000              MOV dword ptr [EDI + 0x192c],EAX
00775c4b  e8b06dcbff                CALL 0x0042ca00
00775c50  6a11                      PUSH 0x11
00775c52  8bc8                      MOV ECX,EAX
00775c54  e847a1fbff                CALL 0x0072fda0
00775c59  50                        PUSH EAX
00775c5a  8bcf                      MOV ECX,EDI
00775c5c  e8ef7bfeff                CALL 0x0075d850
00775c61  b92effffff                MOV ECX,0xffffff2e
00775c66  6683bfc82e000000          CMP word ptr [EDI + 0x2ec8],0x0
00775c6e  7d07                      JGE 0x00775c77
00775c70  66898fc82e0000            MOV word ptr [EDI + 0x2ec8],CX
00775c77  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775c7d  e8ce1bcaff                CALL 0x00417850
00775c82  8bc8                      MOV ECX,EAX
00775c84  e8c738cbff                CALL 0x00429550
00775c89  84c0                      TEST AL,AL
00775c8b  7542                      JNZ 0x00775ccf
00775c8d  6a00                      PUSH 0x0
00775c8f  689f010000                PUSH 0x19f
00775c94  8bcf                      MOV ECX,EDI
00775c96  e845aaffff                CALL 0x007706e0
00775c9b  84c0                      TEST AL,AL
00775c9d  7430                      JZ 0x00775ccf
00775c9f  689f010000                PUSH 0x19f
00775ca4  8bce                      MOV ECX,ESI
00775ca6  e845a91b00                CALL 0x009305f0
00775cab  84c0                      TEST AL,AL
00775cad  7420                      JZ 0x00775ccf
00775caf  6a01                      PUSH 0x1
00775cb1  689f010000                PUSH 0x19f
00775cb6  8bce                      MOV ECX,ESI
00775cb8  e8e3a71b00                CALL 0x009304a0
00775cbd  6a00                      PUSH 0x0
00775cbf  8d8f30050000              LEA ECX,[EDI + 0x530]
00775cc5  6844aeb600                PUSH 0xb6ae44
00775cca  e8b146c9ff                CALL 0x0040a380
00775ccf  6a00                      PUSH 0x0
00775cd1  689c010000                PUSH 0x19c
00775cd6  8bcf                      MOV ECX,EDI
00775cd8  e803aaffff                CALL 0x007706e0
00775cdd  84c0                      TEST AL,AL
00775cdf  0f846a010000              JZ 0x00775e4f
00775ce5  8bcf                      MOV ECX,EDI
00775ce7  e894330500                CALL 0x007c9080
00775cec  8bb5d4feffff              MOV ESI,dword ptr [EBP + 0xfffffed4]
00775cf2  8bf8                      MOV EDI,EAX
00775cf4  8bce                      MOV ECX,ESI
00775cf6  e8b5330500                CALL 0x007c90b0
00775cfb  ff8634190000              INC dword ptr [ESI + 0x1934]
00775d01  8bce                      MOV ECX,ESI
00775d03  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
00775d09  e872330500                CALL 0x007c9080
00775d0e  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
00775d14  8bf0                      MOV ESI,EAX
00775d16  e895330500                CALL 0x007c90b0
00775d1b  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00775d21  3bfe                      CMP EDI,ESI
00775d23  0f8409010000              JZ 0x00775e32
00775d29  0f2805a0b3ba00            MOVAPS XMM0,xmmword ptr [0x00bab3a0]
00775d30  be06000000                MOV ESI,0x6
00775d35  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00775d3b  0f118560ffffff            MOVUPS xmmword ptr [EBP + 0xffffff60],XMM0
00775d42  0f280540afba00            MOVAPS XMM0,xmmword ptr [0x00baaf40]
00775d49  0f118570ffffff            MOVUPS xmmword ptr [EBP + 0xffffff70],XMM0
00775d50  e8abbacaff                CALL 0x00421800
00775d55  68c7010000                PUSH 0x1c7
00775d5a  8bc8                      MOV ECX,EAX
00775d5c  e83f3d1b00                CALL 0x00929aa0
00775d61  84c0                      TEST AL,AL
00775d63  740f                      JZ 0x00775d74
00775d65  c78578ffffff00080000      MOV dword ptr [EBP + 0xffffff78],0x800
00775d6f  be07000000                MOV ESI,0x7
00775d74  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00775d7a  e881bacaff                CALL 0x00421800
00775d7f  68f6010000                PUSH 0x1f6
00775d84  8bc8                      MOV ECX,EAX
00775d86  e8153d1b00                CALL 0x00929aa0
00775d8b  84c0                      TEST AL,AL
00775d8d  740c                      JZ 0x00775d9b
00775d8f  c784b560ffffff00100000    MOV dword ptr [EBP + ESI*0x4 + 0xffffff60],0x1000
00775d9a  46                        INC ESI
00775d9b  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
00775da1  689c010000                PUSH 0x19c
00775da6  8d8f70170000              LEA ECX,[EDI + 0x1770]
00775dac  e84f5fe5ff                CALL 0x005cbd00
00775db1  56                        PUSH ESI
00775db2  8bc8                      MOV ECX,EAX
00775db4  e867320700                CALL 0x007e9020
00775db9  8bd0                      MOV EDX,EAX
00775dbb  33c9                      XOR ECX,ECX
00775dbd  899504ffffff              MOV dword ptr [EBP + 0xffffff04],EDX
00775dc3  85f6                      TEST ESI,ESI
00775dc5  7e71                      JLE 0x00775e38
00775dc7  8d0411                    LEA EAX,[ECX + EDX*0x1]
00775dca  99                        CDQ
00775dcb  f7fe                      IDIV ESI
00775dcd  8b849560ffffff            MOV EAX,dword ptr [EBP + EDX*0x4 + 0xffffff60]
00775dd4  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
00775dda  858738190000              TEST dword ptr [EDI + 0x1938],EAX
00775de0  740d                      JZ 0x00775def
00775de2  8b9504ffffff              MOV EDX,dword ptr [EBP + 0xffffff04]
00775de8  41                        INC ECX
00775de9  3bce                      CMP ECX,ESI
00775deb  7cda                      JL 0x00775dc7
00775ded  eb49                      JMP 0x00775e38
00775def  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00775df7  51                        PUSH ECX
00775df8  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00775dfe  c704240000803f            MOV dword ptr [ESP],0x3f800000
00775e05  6a00                      PUSH 0x0
00775e07  6a02                      PUSH 0x2
00775e09  68f1030000                PUSH 0x3f1
00775e0e  e8cd0a1e00                CALL 0x009568e0
00775e13  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
00775e19  8bcf                      MOV ECX,EDI
00775e1b  098738190000              OR dword ptr [EDI + 0x1938],EAX
00775e21  818f7415000000020000      OR dword ptr [EDI + 0x1574],0x200
00775e2b  e840d7feff                CALL 0x00763570
00775e30  eb06                      JMP 0x00775e38
00775e32  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
00775e38  8bb5f8feffff              MOV ESI,dword ptr [EBP + 0xfffffef8]
00775e3e  39b5c8feffff              CMP dword ptr [EBP + 0xfffffec8],ESI
00775e44  7409                      JZ 0x00775e4f
00775e46  6a01                      PUSH 0x1
00775e48  8bcf                      MOV ECX,EDI
00775e4a  e8211f0500                CALL 0x007c7d70
00775e4f  6a04                      PUSH 0x4
00775e51  6a00                      PUSH 0x0
00775e53  8bcf                      MOV ECX,EDI
00775e55  e8d615caff                CALL 0x00417430
00775e5a  84c0                      TEST AL,AL
00775e5c  741b                      JZ 0x00775e79
00775e5e  39bf8c020000              CMP dword ptr [EDI + 0x28c],EDI
00775e64  7513                      JNZ 0x00775e79
00775e66  83bf8c13000000            CMP dword ptr [EDI + 0x138c],0x0
00775e6d  7e0a                      JLE 0x00775e79
00775e6f  c7878c13000058020000      MOV dword ptr [EDI + 0x138c],0x258
00775e79  6a00                      PUSH 0x0
00775e7b  68c0010000                PUSH 0x1c0
00775e80  8bcf                      MOV ECX,EDI
00775e82  e859a8ffff                CALL 0x007706e0
00775e87  84c0                      TEST AL,AL
00775e89  0f84a4000000              JZ 0x00775f33
00775e8f  6a04                      PUSH 0x4
00775e91  6a00                      PUSH 0x0
00775e93  8bcf                      MOV ECX,EDI
00775e95  e84615caff                CALL 0x004173e0
00775e9a  57                        PUSH EDI
00775e9b  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00775ea1  e86ab4cbff                CALL 0x00431310
00775ea6  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00775eac  50                        PUSH EAX
00775ead  8d8f68020000              LEA ECX,[EDI + 0x268]
00775eb3  e8a83ad2ff                CALL 0x00499960
00775eb8  83bf8c13000000            CMP dword ptr [EDI + 0x138c],0x0
00775ebf  7f0a                      JG 0x00775ecb
00775ec1  c7878c13000058020000      MOV dword ptr [EDI + 0x138c],0x258
00775ecb  8d8f70170000              LEA ECX,[EDI + 0x1770]
00775ed1  68c0010000                PUSH 0x1c0
00775ed6  e8255ee5ff                CALL 0x005cbd00
00775edb  6a04                      PUSH 0x4
00775edd  8bc8                      MOV ECX,EAX
00775edf  e83c310700                CALL 0x007e9020
00775ee4  85c0                      TEST EAX,EAX
00775ee6  754b                      JNZ 0x00775f33
00775ee8  e87390f7ff                CALL 0x006eef60
00775eed  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775ef3  8bf0                      MOV ESI,EAX
00775ef5  e88615c9ff                CALL 0x00407480
00775efa  6a00                      PUSH 0x0
00775efc  6a00                      PUSH 0x0
00775efe  6a00                      PUSH 0x0
00775f00  51                        PUSH ECX
00775f01  c7042400002042            MOV dword ptr [ESP],0x42200000
00775f08  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00775f0e  51                        PUSH ECX
00775f0f  8d4de8                    LEA ECX,[EBP + -0x18]
00775f12  51                        PUSH ECX
00775f13  8bc8                      MOV ECX,EAX
00775f15  e806d60900                CALL 0x00813520
00775f1a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775f20  56                        PUSH ESI
00775f21  6a01                      PUSH 0x1
00775f23  57                        PUSH EDI
00775f24  6840b6c700                PUSH 0xc7b640
00775f29  50                        PUSH EAX
00775f2a  6a0a                      PUSH 0xa
00775f2c  6a05                      PUSH 0x5
00775f2e  e8ed2bcbff                CALL 0x00428b20
00775f33  6a00                      PUSH 0x0
00775f35  68c4010000                PUSH 0x1c4
00775f3a  8bcf                      MOV ECX,EDI
00775f3c  e89fa7ffff                CALL 0x007706e0
00775f41  84c0                      TEST AL,AL
00775f43  0f8422010000              JZ 0x0077606b
00775f49  68c4010000                PUSH 0x1c4
00775f4e  8d8f08150000              LEA ECX,[EDI + 0x1508]
00775f54  e897a61b00                CALL 0x009305f0
00775f59  84c0                      TEST AL,AL
00775f5b  0f850a010000              JNZ 0x0077606b
00775f61  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775f67  e8e418caff                CALL 0x00417850
00775f6c  8bc8                      MOV ECX,EAX
00775f6e  e8dd35cbff                CALL 0x00429550
00775f73  84c0                      TEST AL,AL
00775f75  7421                      JZ 0x00775f98
00775f77  e894fb2900                CALL 0x00a15b10
00775f7c  2b87b02e0000              SUB EAX,dword ptr [EDI + 0x2eb0]
00775f82  1b97b42e0000              SBB EDX,dword ptr [EDI + 0x2eb4]
00775f88  8955ec                    MOV dword ptr [EBP + -0x14],EDX
00775f8b  750b                      JNZ 0x00775f98
00775f8d  3da00f0000                CMP EAX,0xfa0
00775f92  0f86d3000000              JBE 0x0077606b
00775f98  6a01                      PUSH 0x1
00775f9a  6a01                      PUSH 0x1
00775f9c  68c4010000                PUSH 0x1c4
00775fa1  8d8f08150000              LEA ECX,[EDI + 0x1508]
00775fa7  e834a31b00                CALL 0x009302e0
00775fac  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00775fb2  e89918caff                CALL 0x00417850
00775fb7  8bc8                      MOV ECX,EAX
00775fb9  e89235cbff                CALL 0x00429550
00775fbe  0fb6c0                    MOVZX EAX,AL
00775fc1  8bcf                      MOV ECX,EDI
00775fc3  f7d8                      NEG EAX
00775fc5  1bc0                      SBB EAX,EAX
00775fc7  83e020                    AND EAX,0x20
00775fca  50                        PUSH EAX
00775fcb  6aff                      PUSH -0x1
00775fcd  6a01                      PUSH 0x1
00775fcf  6a26                      PUSH 0x26
00775fd1  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
00775fd7  50                        PUSH EAX
00775fd8  e8f3d9e3ff                CALL 0x005b39d0
00775fdd  6a01                      PUSH 0x1
00775fdf  68c4010000                PUSH 0x1c4
00775fe4  8d8f08150000              LEA ECX,[EDI + 0x1508]
00775fea  e8b1a41b00                CALL 0x009304a0
00775fef  68d6000000                PUSH 0xd6
00775ff4  8d8f08150000              LEA ECX,[EDI + 0x1508]
00775ffa  e8f1a51b00                CALL 0x009305f0
00775fff  84c0                      TEST AL,AL
00776001  7557                      JNZ 0x0077605a
00776003  8d8f70170000              LEA ECX,[EDI + 0x1770]
00776009  68c4010000                PUSH 0x1c4
0077600e  e8ed5ce5ff                CALL 0x005cbd00
00776013  6a05                      PUSH 0x5
00776015  8bc8                      MOV ECX,EAX
00776017  e804300700                CALL 0x007e9020
0077601c  85c0                      TEST EAX,EAX
0077601e  753a                      JNZ 0x0077605a
00776020  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00776026  e8d569cbff                CALL 0x0042ca00
0077602b  68d6000000                PUSH 0xd6
00776030  8bc8                      MOV ECX,EAX
00776032  e8d99cfbff                CALL 0x0072fd10
00776037  50                        PUSH EAX
00776038  8d4db0                    LEA ECX,[EBP + -0x50]
0077603b  e840ffcbff                CALL 0x00435f80
00776040  6a01                      PUSH 0x1
00776042  6a01                      PUSH 0x1
00776044  8d45b0                    LEA EAX,[EBP + -0x50]
00776047  c745b83c000000            MOV dword ptr [EBP + -0x48],0x3c
0077604e  50                        PUSH EAX
0077604f  8d8f08150000              LEA ECX,[EDI + 0x1508]
00776055  e8c6a11b00                CALL 0x00930220
0077605a  e8b1fa2900                CALL 0x00a15b10
0077605f  8987b02e0000              MOV dword ptr [EDI + 0x2eb0],EAX
00776065  8997b42e0000              MOV dword ptr [EDI + 0x2eb4],EDX
0077606b  6a00                      PUSH 0x0
0077606d  6830020000                PUSH 0x230
00776072  8bcf                      MOV ECX,EDI
00776074  e867a6ffff                CALL 0x007706e0
00776079  84c0                      TEST AL,AL
0077607b  0f8415010000              JZ 0x00776196
00776081  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776087  e8c417caff                CALL 0x00417850
0077608c  8bc8                      MOV ECX,EAX
0077608e  e8bd34cbff                CALL 0x00429550
00776093  84c0                      TEST AL,AL
00776095  7416                      JZ 0x007760ad
00776097  8a87d02e0000              MOV AL,byte ptr [EDI + 0x2ed0]
0077609d  3c03                      CMP AL,0x3
0077609f  0f83f1000000              JNC 0x00776196
007760a5  fec0                      INC AL
007760a7  8887d02e0000              MOV byte ptr [EDI + 0x2ed0],AL
007760ad  33c0                      XOR EAX,EAX
007760af  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
007760b5  660f6ec0                  MOVD XMM0,EAX
007760b9  8d45e8                    LEA EAX,[EBP + -0x18]
007760bc  0f5bc0                    CVTDQ2PS XMM0,XMM0
007760bf  51                        PUSH ECX
007760c0  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
007760c8  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
007760d0  f30f110424                MOVSS dword ptr [ESP],XMM0
007760d5  50                        PUSH EAX
007760d6  e875a22900                CALL 0x00a10350
007760db  83c408                    ADD ESP,0x8
007760de  c785c8feffff00002041      MOV dword ptr [EBP + 0xfffffec8],0x41200000
007760e8  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007760ee  8d4de8                    LEA ECX,[EBP + -0x18]
007760f1  50                        PUSH EAX
007760f2  e849a42900                CALL 0x00a10540
007760f7  e8648ef7ff                CALL 0x006eef60
007760fc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776102  50                        PUSH EAX
00776103  6a00                      PUSH 0x0
00776105  57                        PUSH EDI
00776106  8d45e8                    LEA EAX,[EBP + -0x18]
00776109  50                        PUSH EAX
0077610a  8d873c030000              LEA EAX,[EDI + 0x33c]
00776110  50                        PUSH EAX
00776111  6a01                      PUSH 0x1
00776113  6a02                      PUSH 0x2
00776115  e8062acbff                CALL 0x00428b20
0077611a  8bf0                      MOV ESI,EAX
0077611c  51                        PUSH ECX
0077611d  8bce                      MOV ECX,ESI
0077611f  c70424713daa3f            MOV dword ptr [ESP],0x3faa3d71
00776126  e8f5ffefff                CALL 0x00676120
0077612b  8b0e                      MOV ECX,dword ptr [ESI]
0077612d  51                        PUSH ECX
0077612e  c7042400002041            MOV dword ptr [ESP],0x41200000
00776135  8b5140                    MOV EDX,dword ptr [ECX + 0x40]
00776138  8bce                      MOV ECX,ESI
0077613a  ffd2                      CALL EDX
0077613c  68a046c300                PUSH 0xc346a0
00776141  8d45b0                    LEA EAX,[EBP + -0x50]
00776144  8bce                      MOV ECX,ESI
00776146  50                        PUSH EAX
00776147  e87416caff                CALL 0x004177c0
0077614c  8bd0                      MOV EDX,EAX
0077614e  8d4dc8                    LEA ECX,[EBP + -0x38]
00776151  e8cafacbff                CALL 0x00435c20
00776156  83ec0c                    SUB ESP,0xc
00776159  8bcc                      MOV ECX,ESP
0077615b  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
0077615e  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00776161  8bce                      MOV ECX,ESI
00776163  e8e8ffefff                CALL 0x00676150
00776168  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
0077616e  40                        INC EAX
0077616f  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00776175  83f80a                    CMP EAX,0xa
00776178  0f8c37ffffff              JL 0x007760b5
0077617e  6a01                      PUSH 0x1
00776180  6a01                      PUSH 0x1
00776182  6a39                      PUSH 0x39
00776184  8d8f08150000              LEA ECX,[EDI + 0x1508]
0077618a  e801a21b00                CALL 0x00930390
0077618f  8bcf                      MOV ECX,EDI
00776191  e8dad3feff                CALL 0x00763570
00776196  6a00                      PUSH 0x0
00776198  68a3020000                PUSH 0x2a3
0077619d  8bcf                      MOV ECX,EDI
0077619f  e83ca5ffff                CALL 0x007706e0
007761a4  84c0                      TEST AL,AL
007761a6  740c                      JZ 0x007761b4
007761a8  6840b6c700                PUSH 0xc7b640
007761ad  8bcf                      MOV ECX,EDI
007761af  e87c1a0600                CALL 0x007d7c30
007761b4  6a00                      PUSH 0x0
007761b6  68be020000                PUSH 0x2be
007761bb  8bcf                      MOV ECX,EDI
007761bd  e81ea5ffff                CALL 0x007706e0
007761c2  84c0                      TEST AL,AL
007761c4  0f84b8000000              JZ 0x00776282
007761ca  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007761d0  33c0                      XOR EAX,EAX
007761d2  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
007761d8  e8a312c9ff                CALL 0x00407480
007761dd  8bc8                      MOV ECX,EAX
007761df  e86c28cbff                CALL 0x00428a50
007761e4  33f6                      XOR ESI,ESI
007761e6  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
007761ec  8bc8                      MOV ECX,EAX
007761ee  89b504ffffff              MOV dword ptr [EBP + 0xffffff04],ESI
007761f4  e8f714caff                CALL 0x004176f0
007761f9  85c0                      TEST EAX,EAX
007761fb  746e                      JZ 0x0077626b
007761fd  0f1f00                    NOP dword ptr [EAX]
00776200  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00776206  56                        PUSH ESI
00776207  e80414caff                CALL 0x00417610
0077620c  8bc8                      MOV ECX,EAX
0077620e  e8cdfbcbff                CALL 0x00435de0
00776213  8bf0                      MOV ESI,EAX
00776215  85f6                      TEST ESI,ESI
00776217  742d                      JZ 0x00776246
00776219  8bce                      MOV ECX,ESI
0077621b  e85010caff                CALL 0x00417270
00776220  3dce000000                CMP EAX,0xce
00776225  751f                      JNZ 0x00776246
00776227  8bce                      MOV ECX,ESI
00776229  e8c2ffcbff                CALL 0x004361f0
0077622e  3bc7                      CMP EAX,EDI
00776230  7514                      JNZ 0x00776246
00776232  8bce                      MOV ECX,ESI
00776234  e84710caff                CALL 0x00417280
00776239  3dbe020000                CMP EAX,0x2be
0077623e  7506                      JNZ 0x00776246
00776240  ff85d0feffff              INC dword ptr [EBP + 0xfffffed0]
00776246  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
0077624c  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00776252  46                        INC ESI
00776253  89b504ffffff              MOV dword ptr [EBP + 0xffffff04],ESI
00776259  e89214caff                CALL 0x004176f0
0077625e  3bf0                      CMP ESI,EAX
00776260  729e                      JC 0x00776200
00776262  83bdd0feffff06            CMP dword ptr [EBP + 0xfffffed0],0x6
00776269  7d17                      JGE 0x00776282
0077626b  6a00                      PUSH 0x0
0077626d  6a00                      PUSH 0x0
0077626f  8d873c030000              LEA EAX,[EDI + 0x33c]
00776275  8bcf                      MOV ECX,EDI
00776277  50                        PUSH EAX
00776278  68be020000                PUSH 0x2be
0077627d  e82e31e5ff                CALL 0x005c93b0
00776282  6a00                      PUSH 0x0
00776284  689e000000                PUSH 0x9e
00776289  8bcf                      MOV ECX,EDI
0077628b  e8c0b2ffff                CALL 0x00771550
00776290  84c0                      TEST AL,AL
00776292  0f84fa020000              JZ 0x00776592
00776298  689e000000                PUSH 0x9e
0077629d  8bcf                      MOV ECX,EDI
0077629f  e83c540500                CALL 0x007cb6e0
007762a4  40                        INC EAX
007762a5  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
007762ab  85c0                      TEST EAX,EAX
007762ad  0f8edf020000              JLE 0x00776592
007762b3  8d4db4                    LEA ECX,[EBP + -0x4c]
007762b6  e855e2caff                CALL 0x00424510
007762bb  6a00                      PUSH 0x0
007762bd  c745fc0b000000            MOV dword ptr [EBP + -0x4],0xb
007762c4  8d4db4                    LEA ECX,[EBP + -0x4c]
007762c7  ffb768130000              PUSH dword ptr [EDI + 0x1368]
007762cd  6a00                      PUSH 0x0
007762cf  e88c68d2ff                CALL 0x0049cb60
007762d4  6a00                      PUSH 0x0
007762d6  ffb75c130000              PUSH dword ptr [EDI + 0x135c]
007762dc  8d4db4                    LEA ECX,[EBP + -0x4c]
007762df  6a01                      PUSH 0x1
007762e1  e87a68d2ff                CALL 0x0049cb60
007762e6  6a00                      PUSH 0x0
007762e8  ffb764130000              PUSH dword ptr [EDI + 0x1364]
007762ee  8d4db4                    LEA ECX,[EBP + -0x4c]
007762f1  6a02                      PUSH 0x2
007762f3  e86868d2ff                CALL 0x0049cb60
007762f8  8b87c0130000              MOV EAX,dword ptr [EDI + 0x13c0]
007762fe  83f812                    CMP EAX,0x12
00776301  750c                      JNZ 0x0077630f
00776303  6a00                      PUSH 0x0
00776305  ffb7a81d0000              PUSH dword ptr [EDI + 0x1da8]
0077630b  6a03                      PUSH 0x3
0077630d  eb0f                      JMP 0x0077631e
0077630f  83f824                    CMP EAX,0x24
00776312  7512                      JNZ 0x00776326
00776314  6a00                      PUSH 0x0
00776316  ffb7ac1d0000              PUSH dword ptr [EDI + 0x1dac]
0077631c  6a04                      PUSH 0x4
0077631e  8d4db4                    LEA ECX,[EBP + -0x4c]
00776321  e83a68d2ff                CALL 0x0049cb60
00776326  8d4db4                    LEA ECX,[EBP + -0x4c]
00776329  e8c215caff                CALL 0x004178f0
0077632e  84c0                      TEST AL,AL
00776330  0f8440020000              JZ 0x00776576
00776336  83ec10                    SUB ESP,0x10
00776339  8d8f7c170000              LEA ECX,[EDI + 0x177c]
0077633f  8bf4                      MOV ESI,ESP
00776341  6a23                      PUSH 0x23
00776343  689e000000                PUSH 0x9e
00776348  e8b359e5ff                CALL 0x005cbd00
0077634d  8bc8                      MOV ECX,EAX
0077634f  e89c2d0700                CALL 0x007e90f0
00776354  50                        PUSH EAX
00776355  8bce                      MOV ECX,ESI
00776357  e8342c0700                CALL 0x007e8f90
0077635c  8d4db4                    LEA ECX,[EBP + -0x4c]
0077635f  e88c68d2ff                CALL 0x0049cbf0
00776364  83f804                    CMP EAX,0x4
00776367  0f8709020000              JA 0x00776576
0077636d  ff2485d4917700            JMP dword ptr [EAX*0x4 + 0x7791d4]
00776576  8d4db4                    LEA ECX,[EBP + -0x4c]
00776579  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00776580  e85b04cbff                CALL 0x004269e0
00776585  83ad04ffffff01            SUB dword ptr [EBP + 0xffffff04],0x1
0077658c  0f8521fdffff              JNZ 0x007762b3
00776592  6a00                      PUSH 0x0
00776594  68d4020000                PUSH 0x2d4
00776599  8bcf                      MOV ECX,EDI
0077659b  e840a1ffff                CALL 0x007706e0
007765a0  84c0                      TEST AL,AL
007765a2  0f8414020000              JZ 0x007767bc
007765a8  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
007765ae  2500000410                AND EAX,0x10040000
007765b3  83c800                    OR EAX,0x0
007765b6  0f8500020000              JNZ 0x007767bc
007765bc  50                        PUSH EAX
007765bd  6a16                      PUSH 0x16
007765bf  8bcf                      MOV ECX,EDI
007765c1  e88aafffff                CALL 0x00771550
007765c6  84c0                      TEST AL,AL
007765c8  7415                      JZ 0x007765df
007765ca  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
007765d0  6a05                      PUSH 0x5
007765d2  e8492a0700                CALL 0x007e9020
007765d7  85c0                      TEST EAX,EAX
007765d9  0f85dd010000              JNZ 0x007767bc
007765df  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007765e5  c785c8feffff00002041      MOV dword ptr [EBP + 0xfffffec8],0x41200000
007765ef  50                        PUSH EAX
007765f0  8d45d0                    LEA EAX,[EBP + -0x30]
007765f3  8d8f30160000              LEA ECX,[EDI + 0x1630]
007765f9  50                        PUSH EAX
007765fa  e8e19e2900                CALL 0x00a104e0
007765ff  8bf0                      MOV ESI,EAX
00776601  8d4590                    LEA EAX,[EBP + -0x70]
00776604  50                        PUSH EAX
00776605  e8668af0ff                CALL 0x0067f070
0077660a  50                        PUSH EAX
0077660b  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
00776611  c78504ffffff00000040      MOV dword ptr [EBP + 0xffffff04],0x40000000
0077661b  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
00776621  e8aa0bcaff                CALL 0x004171d0
00776626  83c408                    ADD ESP,0x8
00776629  8bce                      MOV ECX,ESI
0077662b  50                        PUSH EAX
0077662c  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00776632  50                        PUSH EAX
00776633  e8e89d2900                CALL 0x00a10420
00776638  51                        PUSH ECX
00776639  8d4de8                    LEA ECX,[EBP + -0x18]
0077663c  c7042400009041            MOV dword ptr [ESP],0x41900000
00776643  51                        PUSH ECX
00776644  8bc8                      MOV ECX,EAX
00776646  e8b59a2900                CALL 0x00a10100
0077664b  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00776650  b801000000                MOV EAX,0x1
00776655  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0077665c  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
00776662  bf02000000                MOV EDI,0x2
00776667  6a00                      PUSH 0x0
00776669  6a16                      PUSH 0x16
0077666b  0f47f8                    CMOVA EDI,EAX
0077666e  e8ddaeffff                CALL 0x00771550
00776673  84c0                      TEST AL,AL
00776675  b906000000                MOV ECX,0x6
0077667a  0f45f9                    CMOVNZ EDI,ECX
0077667d  e8de88f7ff                CALL 0x006eef60
00776682  8bf0                      MOV ESI,EAX
00776684  c785c8feffffcdcccc3e      MOV dword ptr [EBP + 0xfffffec8],0x3ecccccd
0077668e  8d45e8                    LEA EAX,[EBP + -0x18]
00776691  50                        PUSH EAX
00776692  8d95c8feffff              LEA EDX,[EBP + 0xfffffec8]
00776698  8d4dd0                    LEA ECX,[EBP + -0x30]
0077669b  e8300bcaff                CALL 0x004171d0
007766a0  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
007766a6  83c404                    ADD ESP,0x4
007766a9  50                        PUSH EAX
007766aa  8d4590                    LEA EAX,[EBP + -0x70]
007766ad  50                        PUSH EAX
007766ae  e86d9d2900                CALL 0x00a10420
007766b3  56                        PUSH ESI
007766b4  57                        PUSH EDI
007766b5  ffb5d4feffff              PUSH dword ptr [EBP + 0xfffffed4]
007766bb  8d4de8                    LEA ECX,[EBP + -0x18]
007766be  51                        PUSH ECX
007766bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007766c5  50                        PUSH EAX
007766c6  6a0a                      PUSH 0xa
007766c8  6a05                      PUSH 0x5
007766ca  e85124cbff                CALL 0x00428b20
007766cf  8bf0                      MOV ESI,EAX
007766d1  6a2d                      PUSH 0x2d
007766d3  8bce                      MOV ECX,ESI
007766d5  e8166be9ff                CALL 0x0060d1f0
007766da  8b16                      MOV EDX,dword ptr [ESI]
007766dc  8bce                      MOV ECX,ESI
007766de  ff520c                    CALL dword ptr [EDX + 0xc]
007766e1  e87a88f7ff                CALL 0x006eef60
007766e6  8bf0                      MOV ESI,EAX
007766e8  c785c8feffffcdcccc3e      MOV dword ptr [EBP + 0xfffffec8],0x3ecccccd
007766f2  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007766f8  50                        PUSH EAX
007766f9  8d45d0                    LEA EAX,[EBP + -0x30]
007766fc  50                        PUSH EAX
007766fd  8d4de8                    LEA ECX,[EBP + -0x18]
00776700  e8db9d2900                CALL 0x00a104e0
00776705  56                        PUSH ESI
00776706  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077670c  6a02                      PUSH 0x2
0077670e  ffb5d4feffff              PUSH dword ptr [EBP + 0xfffffed4]
00776714  50                        PUSH EAX
00776715  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
0077671b  6a02                      PUSH 0x2
0077671d  68e8030000                PUSH 0x3e8
00776722  e8f923cbff                CALL 0x00428b20
00776727  8bc8                      MOV ECX,EAX
00776729  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
0077672f  83ff06                    CMP EDI,0x6
00776732  757d                      JNZ 0x007767b1
00776734  8b09                      MOV ECX,dword ptr [ECX]
00776736  83ec20                    SUB ESP,0x20
00776739  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
00776741  0f28d8                    MOVAPS XMM3,XMM0
00776744  0f28d0                    MOVAPS XMM2,XMM0
00776747  0f28c8                    MOVAPS XMM1,XMM0
0077674a  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
0077674d  8d8d54ffffff              LEA ECX,[EBP + 0xffffff54]
00776753  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
0077675b  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00776763  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
0077676b  c74424100000803f          MOV dword ptr [ESP + 0x10],0x3f800000
00776773  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
0077677b  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
00776783  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
0077678b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00776792  e8b9f3cbff                CALL 0x00435b50
00776797  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
0077679d  6a01                      PUSH 0x1
0077679f  6a00                      PUSH 0x0
007767a1  68ff000000                PUSH 0xff
007767a6  6aff                      PUSH -0x1
007767a8  50                        PUSH EAX
007767a9  ffd6                      CALL ESI
007767ab  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
007767b1  8b01                      MOV EAX,dword ptr [ECX]
007767b3  ff500c                    CALL dword ptr [EAX + 0xc]
007767b6  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
007767bc  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
007767c2  8d8f3c030000              LEA ECX,[EDI + 0x33c]
007767c8  83c010                    ADD EAX,0x10
007767cb  50                        PUSH EAX
007767cc  8d45e8                    LEA EAX,[EBP + -0x18]
007767cf  50                        PUSH EAX
007767d0  e8ab9c2900                CALL 0x00a10480
007767d5  8d4dd0                    LEA ECX,[EBP + -0x30]
007767d8  51                        PUSH ECX
007767d9  8bc8                      MOV ECX,EAX
007767db  e850982900                CALL 0x00a10030
007767e0  50                        PUSH EAX
007767e1  8d873c030000              LEA EAX,[EDI + 0x33c]
007767e7  50                        PUSH EAX
007767e8  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
007767ee  8d8fc81f0000              LEA ECX,[EDI + 0x1fc8]
007767f4  ff7024                    PUSH dword ptr [EAX + 0x24]
007767f7  6a04                      PUSH 0x4
007767f9  e8829e2600                CALL 0x009e0680
007767fe  6a00                      PUSH 0x0
00776800  68f6010000                PUSH 0x1f6
00776805  8bcf                      MOV ECX,EDI
00776807  e8d49effff                CALL 0x007706e0
0077680c  84c0                      TEST AL,AL
0077680e  7427                      JZ 0x00776837
00776810  e8cb87f0ff                CALL 0x0067efe0
00776815  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0077681d  8d45e8                    LEA EAX,[EBP + -0x18]
00776820  51                        PUSH ECX
00776821  f30f110424                MOVSS dword ptr [ESP],XMM0
00776826  50                        PUSH EAX
00776827  e8249b2900                CALL 0x00a10350
0077682c  83c408                    ADD ESP,0x8
0077682f  8bcf                      MOV ECX,EDI
00776831  50                        PUSH EAX
00776832  e8592d0500                CALL 0x007c9590
00776837  6a00                      PUSH 0x0
00776839  6a61                      PUSH 0x61
0077683b  8bcf                      MOV ECX,EDI
0077683d  e80eadffff                CALL 0x00771550
00776842  84c0                      TEST AL,AL
00776844  7461                      JZ 0x007768a7
00776846  6a61                      PUSH 0x61
00776848  8bcf                      MOV ECX,EDI
0077684a  e8914e0500                CALL 0x007cb6e0
0077684f  66ff8f80130000            DEC word ptr [EDI + 0x1380]
00776856  6683bf8013000000          CMP word ptr [EDI + 0x1380],0x0
0077685e  8d7001                    LEA ESI,[EAX + 0x1]
00776861  7f30                      JG 0x00776893
00776863  0fb78f82130000            MOVZX ECX,word ptr [EDI + 0x1382]
0077686a  0fbfc1                    MOVSX EAX,CX
0077686d  3bc6                      CMP EAX,ESI
0077686f  7d1b                      JGE 0x0077688c
00776871  818f7415000000020000      OR dword ptr [EDI + 0x1574],0x200
0077687b  8d4101                    LEA EAX,[ECX + 0x1]
0077687e  8bcf                      MOV ECX,EDI
00776880  66898782130000            MOV word ptr [EDI + 0x1382],AX
00776887  e8e4ccfeff                CALL 0x00763570
0077688c  8bcf                      MOV ECX,EDI
0077688e  e80d340600                CALL 0x007d9ca0
00776893  0fbf8782130000            MOVSX EAX,word ptr [EDI + 0x1382]
0077689a  3bc6                      CMP EAX,ESI
0077689c  7c09                      JL 0x007768a7
0077689e  6a61                      PUSH 0x61
007768a0  8bcf                      MOV ECX,EDI
007768a2  e8b9b6ffff                CALL 0x00771f60
007768a7  6a00                      PUSH 0x0
007768a9  6a69                      PUSH 0x69
007768ab  8bcf                      MOV ECX,EDI
007768ad  e89eacffff                CALL 0x00771550
007768b2  84c0                      TEST AL,AL
007768b4  0f84d5000000              JZ 0x0077698f
007768ba  6a69                      PUSH 0x69
007768bc  8bcf                      MOV ECX,EDI
007768be  be14000000                MOV ESI,0x14
007768c3  e8184e0500                CALL 0x007cb6e0
007768c8  83e802                    SUB EAX,0x2
007768cb  740a                      JZ 0x007768d7
007768cd  83e801                    SUB EAX,0x1
007768d0  750a                      JNZ 0x007768dc
007768d2  8d7007                    LEA ESI,[EAX + 0x7]
007768d5  eb05                      JMP 0x007768dc
007768d7  be0a000000                MOV ESI,0xa
007768dc  8d8f7c170000              LEA ECX,[EDI + 0x177c]
007768e2  6a69                      PUSH 0x69
007768e4  e81754e5ff                CALL 0x005cbd00
007768e9  56                        PUSH ESI
007768ea  8bc8                      MOV ECX,EAX
007768ec  e82f270700                CALL 0x007e9020
007768f1  85c0                      TEST EAX,EAX
007768f3  0f8596000000              JNZ 0x0077698f
007768f9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007768ff  e86caecaff                CALL 0x00421770
00776904  83f829                    CMP EAX,0x29
00776907  7507                      JNZ 0x00776910
00776909  b101                      MOV CL,0x1
0077690b  e8c0b0e3ff                CALL 0x005b19d0
00776910  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776916  e8153acbff                CALL 0x0042a330
0077691b  6a02                      PUSH 0x2
0077691d  8bc8                      MOV ECX,EAX
0077691f  e82ccdfdff                CALL 0x00753650
00776924  e83786f7ff                CALL 0x006eef60
00776929  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077692f  8bf0                      MOV ESI,EAX
00776931  e84a0bc9ff                CALL 0x00407480
00776936  6a00                      PUSH 0x0
00776938  6a00                      PUSH 0x0
0077693a  6a00                      PUSH 0x0
0077693c  51                        PUSH ECX
0077693d  c7042400002042            MOV dword ptr [ESP],0x42200000
00776944  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0077694a  51                        PUSH ECX
0077694b  8d4de8                    LEA ECX,[EBP + -0x18]
0077694e  51                        PUSH ECX
0077694f  8bc8                      MOV ECX,EAX
00776951  e8cacb0900                CALL 0x00813520
00776956  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077695c  56                        PUSH ESI
0077695d  6a16                      PUSH 0x16
0077695f  57                        PUSH EDI
00776960  6840b6c700                PUSH 0xc7b640
00776965  50                        PUSH EAX
00776966  6a64                      PUSH 0x64
00776968  6a05                      PUSH 0x5
0077696a  e8b121cbff                CALL 0x00428b20
0077696f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776975  e8f6adcaff                CALL 0x00421770
0077697a  83f829                    CMP EAX,0x29
0077697d  7507                      JNZ 0x00776986
0077697f  32c9                      XOR CL,CL
00776981  e84ab0e3ff                CALL 0x005b19d0
00776986  6a69                      PUSH 0x69
00776988  8bcf                      MOV ECX,EDI
0077698a  e8d1b5ffff                CALL 0x00771f60
0077698f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776995  e8b60ecaff                CALL 0x00417850
0077699a  8bc8                      MOV ECX,EAX
0077699c  e8af2bcbff                CALL 0x00429550
007769a1  f30f10876c150000          MOVSS XMM0,dword ptr [EDI + 0x156c]
007769a9  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
007769b1  84c0                      TEST AL,AL
007769b3  740a                      JZ 0x007769bf
007769b5  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
007769bd  eb08                      JMP 0x007769c7
007769bf  f30f100df8a1ba00          MOVSS XMM1,dword ptr [0x00baa1f8]
007769c7  f30f58c8                  ADDSS XMM1,XMM0
007769cb  8bcf                      MOV ECX,EDI
007769cd  6a00                      PUSH 0x0
007769cf  6a21                      PUSH 0x21
007769d1  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
007769d9  e872abffff                CALL 0x00771550
007769de  84c0                      TEST AL,AL
007769e0  743f                      JZ 0x00776a21
007769e2  8d8f7c170000              LEA ECX,[EDI + 0x177c]
007769e8  6a21                      PUSH 0x21
007769ea  e81153e5ff                CALL 0x005cbd00
007769ef  8bc8                      MOV ECX,EAX
007769f1  e88a260700                CALL 0x007e9080
007769f6  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
007769fe  d99d04ffffff              FSTP dword ptr [EBP + 0xffffff04]
00776a04  0f2f8504ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff04]
00776a0b  7214                      JC 0x00776a21
00776a0d  6a01                      PUSH 0x1
00776a0f  6a01                      PUSH 0x1
00776a11  683e010000                PUSH 0x13e
00776a16  8d8f08150000              LEA ECX,[EDI + 0x1508]
00776a1c  e8bf981b00                CALL 0x009302e0
00776a21  6a00                      PUSH 0x0
00776a23  6a68                      PUSH 0x68
00776a25  8bcf                      MOV ECX,EDI
00776a27  e824abffff                CALL 0x00771550
00776a2c  84c0                      TEST AL,AL
00776a2e  0f84d0000000              JZ 0x00776b04
00776a34  6a68                      PUSH 0x68
00776a36  8bcf                      MOV ECX,EDI
00776a38  be14000000                MOV ESI,0x14
00776a3d  e89e4c0500                CALL 0x007cb6e0
00776a42  83e802                    SUB EAX,0x2
00776a45  740a                      JZ 0x00776a51
00776a47  83e801                    SUB EAX,0x1
00776a4a  750a                      JNZ 0x00776a56
00776a4c  8d7007                    LEA ESI,[EAX + 0x7]
00776a4f  eb05                      JMP 0x00776a56
00776a51  be0a000000                MOV ESI,0xa
00776a56  8d8f7c170000              LEA ECX,[EDI + 0x177c]
00776a5c  6a68                      PUSH 0x68
00776a5e  e89d52e5ff                CALL 0x005cbd00
00776a63  56                        PUSH ESI
00776a64  8bc8                      MOV ECX,EAX
00776a66  e8b5250700                CALL 0x007e9020
00776a6b  85c0                      TEST EAX,EAX
00776a6d  0f8591000000              JNZ 0x00776b04
00776a73  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776a79  e8f2accaff                CALL 0x00421770
00776a7e  83f829                    CMP EAX,0x29
00776a81  7507                      JNZ 0x00776a8a
00776a83  b101                      MOV CL,0x1
00776a85  e846afe3ff                CALL 0x005b19d0
00776a8a  6a68                      PUSH 0x68
00776a8c  8d8f7c170000              LEA ECX,[EDI + 0x177c]
00776a92  e86952e5ff                CALL 0x005cbd00
00776a97  8bc8                      MOV ECX,EAX
00776a99  e852260700                CALL 0x007e90f0
00776a9e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776aa4  8bf0                      MOV ESI,EAX
00776aa6  e8d509c9ff                CALL 0x00407480
00776aab  6a00                      PUSH 0x0
00776aad  6a00                      PUSH 0x0
00776aaf  6a00                      PUSH 0x0
00776ab1  51                        PUSH ECX
00776ab2  c7042400002042            MOV dword ptr [ESP],0x42200000
00776ab9  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00776abf  51                        PUSH ECX
00776ac0  8d4de8                    LEA ECX,[EBP + -0x18]
00776ac3  51                        PUSH ECX
00776ac4  8bc8                      MOV ECX,EAX
00776ac6  e855ca0900                CALL 0x00813520
00776acb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776ad1  56                        PUSH ESI
00776ad2  6a00                      PUSH 0x0
00776ad4  57                        PUSH EDI
00776ad5  6840b6c700                PUSH 0xc7b640
00776ada  50                        PUSH EAX
00776adb  6a64                      PUSH 0x64
00776add  6a05                      PUSH 0x5
00776adf  e83c20cbff                CALL 0x00428b20
00776ae4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776aea  e881accaff                CALL 0x00421770
00776aef  83f829                    CMP EAX,0x29
00776af2  7507                      JNZ 0x00776afb
00776af4  32c9                      XOR CL,CL
00776af6  e8d5aee3ff                CALL 0x005b19d0
00776afb  6a68                      PUSH 0x68
00776afd  8bcf                      MOV ECX,EDI
00776aff  e85cb4ffff                CALL 0x00771f60
00776b04  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776b0a  e8410dcaff                CALL 0x00417850
00776b0f  8bc8                      MOV ECX,EAX
00776b11  e83a2acbff                CALL 0x00429550
00776b16  84c0                      TEST AL,AL
00776b18  be14000000                MOV ESI,0x14
00776b1d  6a00                      PUSH 0x0
00776b1f  b821000000                MOV EAX,0x21
00776b24  8bcf                      MOV ECX,EDI
00776b26  6801020000                PUSH 0x201
00776b2b  0f45f0                    CMOVNZ ESI,EAX
00776b2e  e8ad9bffff                CALL 0x007706e0
00776b33  84c0                      TEST AL,AL
00776b35  0f842f010000              JZ 0x00776c6a
00776b3b  8d8f70170000              LEA ECX,[EDI + 0x1770]
00776b41  6801020000                PUSH 0x201
00776b46  e8b551e5ff                CALL 0x005cbd00
00776b4b  56                        PUSH ESI
00776b4c  8bc8                      MOV ECX,EAX
00776b4e  e8cd240700                CALL 0x007e9020
00776b53  85c0                      TEST EAX,EAX
00776b55  0f850f010000              JNZ 0x00776c6a
00776b5b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776b61  e81a09c9ff                CALL 0x00407480
00776b66  8bf0                      MOV ESI,EAX
00776b68  8d8f60030000              LEA ECX,[EDI + 0x360]
00776b6e  8d45e8                    LEA EAX,[EBP + -0x18]
00776b71  50                        PUSH EAX
00776b72  e8b9942900                CALL 0x00a10030
00776b77  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00776b7d  c785c8feffff00007041      MOV dword ptr [EBP + 0xfffffec8],0x41700000
00776b87  51                        PUSH ECX
00776b88  8d4dd0                    LEA ECX,[EBP + -0x30]
00776b8b  51                        PUSH ECX
00776b8c  8bc8                      MOV ECX,EAX
00776b8e  e84d992900                CALL 0x00a104e0
00776b93  50                        PUSH EAX
00776b94  8d4590                    LEA EAX,[EBP + -0x70]
00776b97  50                        PUSH EAX
00776b98  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00776b9e  e8dd982900                CALL 0x00a10480
00776ba3  50                        PUSH EAX
00776ba4  8bce                      MOV ECX,ESI
00776ba6  e8e5c00900                CALL 0x00812c90
00776bab  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776bb1  8bf0                      MOV ESI,EAX
00776bb3  89b504ffffff              MOV dword ptr [EBP + 0xffffff04],ESI
00776bb9  e8c208c9ff                CALL 0x00407480
00776bbe  56                        PUSH ESI
00776bbf  8bc8                      MOV ECX,EAX
00776bc1  e89af4cbff                CALL 0x00436060
00776bc6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776bcc  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
00776bd2  e8a908c9ff                CALL 0x00407480
00776bd7  8bc8                      MOV ECX,EAX
00776bd9  e8b2350700                CALL 0x007ea190
00776bde  84c0                      TEST AL,AL
00776be0  756b                      JNZ 0x00776c4d
00776be2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776be8  e89308c9ff                CALL 0x00407480
00776bed  56                        PUSH ESI
00776bee  8bc8                      MOV ECX,EAX
00776bf0  e80b9c0700                CALL 0x007f0800
00776bf5  85c0                      TEST EAX,EAX
00776bf7  7554                      JNZ 0x00776c4d
00776bf9  8b85c8feffff              MOV EAX,dword ptr [EBP + 0xfffffec8]
00776bff  85c0                      TEST EAX,EAX
00776c01  7412                      JZ 0x00776c15
00776c03  8bc8                      MOV ECX,EAX
00776c05  e8b607c9ff                CALL 0x004073c0
00776c0a  8bc8                      MOV ECX,EAX
00776c0c  e86f53f9ff                CALL 0x0070bf80
00776c11  84c0                      TEST AL,AL
00776c13  7538                      JNZ 0x00776c4d
00776c15  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776c1b  e86008c9ff                CALL 0x00407480
00776c20  6801020000                PUSH 0x201
00776c25  8d8f70170000              LEA ECX,[EDI + 0x1770]
00776c2b  8bf0                      MOV ESI,EAX
00776c2d  e8ce50e5ff                CALL 0x005cbd00
00776c32  8bc8                      MOV ECX,EAX
00776c34  e8b7240700                CALL 0x007e90f0
00776c39  6a00                      PUSH 0x0
00776c3b  50                        PUSH EAX
00776c3c  6a04                      PUSH 0x4
00776c3e  6a0e                      PUSH 0xe
00776c40  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
00776c46  8bce                      MOV ECX,ESI
00776c48  e853500700                CALL 0x007ebca0
00776c4d  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00776c55  51                        PUSH ECX
00776c56  c704240000803f            MOV dword ptr [ESP],0x3f800000
00776c5d  8bcf                      MOV ECX,EDI
00776c5f  6a00                      PUSH 0x0
00776c61  6a02                      PUSH 0x2
00776c63  6a25                      PUSH 0x25
00776c65  e806f8f3ff                CALL 0x006b6470
00776c6a  6a00                      PUSH 0x0
00776c6c  6a7a                      PUSH 0x7a
00776c6e  8bcf                      MOV ECX,EDI
00776c70  e8dba8ffff                CALL 0x00771550
00776c75  84c0                      TEST AL,AL
00776c77  0f843c010000              JZ 0x00776db9
00776c7d  6a7a                      PUSH 0x7a
00776c7f  8bcf                      MOV ECX,EDI
00776c81  be32000000                MOV ESI,0x32
00776c86  e8554a0500                CALL 0x007cb6e0
00776c8b  83e802                    SUB EAX,0x2
00776c8e  740a                      JZ 0x00776c9a
00776c90  83e801                    SUB EAX,0x1
00776c93  750a                      JNZ 0x00776c9f
00776c95  8d7010                    LEA ESI,[EAX + 0x10]
00776c98  eb05                      JMP 0x00776c9f
00776c9a  be19000000                MOV ESI,0x19
00776c9f  8d8f7c170000              LEA ECX,[EDI + 0x177c]
00776ca5  6a7a                      PUSH 0x7a
00776ca7  e85450e5ff                CALL 0x005cbd00
00776cac  56                        PUSH ESI
00776cad  8bc8                      MOV ECX,EAX
00776caf  e86c230700                CALL 0x007e9020
00776cb4  85c0                      TEST EAX,EAX
00776cb6  0f85fd000000              JNZ 0x00776db9
00776cbc  8d4db4                    LEA ECX,[EBP + -0x4c]
00776cbf  e84cd8caff                CALL 0x00424510
00776cc4  8d8fc8160000              LEA ECX,[EDI + 0x16c8]
00776cca  c745fc0c000000            MOV dword ptr [EBP + -0x4],0xc
00776cd1  e86a0bcaff                CALL 0x00417840
00776cd6  50                        PUSH EAX
00776cd7  8d4db4                    LEA ECX,[EBP + -0x4c]
00776cda  e8415bcbff                CALL 0x0042c820
00776cdf  8d8fc8160000              LEA ECX,[EDI + 0x16c8]
00776ce5  be01000000                MOV ESI,0x1
00776cea  e8510bcaff                CALL 0x00417840
00776cef  3bc6                      CMP EAX,ESI
00776cf1  7650                      JBE 0x00776d43
00776cf3  56                        PUSH ESI
00776cf4  8d8fc8160000              LEA ECX,[EDI + 0x16c8]
00776cfa  e8115bcbff                CALL 0x0042c810
00776cff  833800                    CMP dword ptr [EAX],0x0
00776d02  7e2f                      JLE 0x00776d33
00776d04  6a00                      PUSH 0x0
00776d06  56                        PUSH ESI
00776d07  8bcf                      MOV ECX,EDI
00776d09  e892750500                CALL 0x007ce2a0
00776d0e  84c0                      TEST AL,AL
00776d10  7421                      JZ 0x00776d33
00776d12  56                        PUSH ESI
00776d13  8bcf                      MOV ECX,EDI
00776d15  e8a6a40100                CALL 0x007911c0
00776d1a  85c0                      TEST EAX,EAX
00776d1c  7915                      JNS 0x00776d33
00776d1e  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00776d24  89b5c8feffff              MOV dword ptr [EBP + 0xfffffec8],ESI
00776d2a  50                        PUSH EAX
00776d2b  8d4db4                    LEA ECX,[EBP + -0x4c]
00776d2e  e81d5bcbff                CALL 0x0042c850
00776d33  8d8fc8160000              LEA ECX,[EDI + 0x16c8]
00776d39  46                        INC ESI
00776d3a  e8010bcaff                CALL 0x00417840
00776d3f  3bf0                      CMP ESI,EAX
00776d41  72b0                      JC 0x00776cf3
00776d43  8d4db4                    LEA ECX,[EBP + -0x4c]
00776d46  e8f50acaff                CALL 0x00417840
00776d4b  85c0                      TEST EAX,EAX
00776d4d  745b                      JZ 0x00776daa
00776d4f  6a7a                      PUSH 0x7a
00776d51  8d8f7c170000              LEA ECX,[EDI + 0x177c]
00776d57  e8a44fe5ff                CALL 0x005cbd00
00776d5c  8d4db4                    LEA ECX,[EBP + -0x4c]
00776d5f  8bf0                      MOV ESI,EAX
00776d61  e8da0acaff                CALL 0x00417840
00776d66  50                        PUSH EAX
00776d67  8bce                      MOV ECX,ESI
00776d69  e8b2220700                CALL 0x007e9020
00776d6e  50                        PUSH EAX
00776d6f  8d4db4                    LEA ECX,[EBP + -0x4c]
00776d72  e8995acbff                CALL 0x0042c810
00776d77  6a01                      PUSH 0x1
00776d79  6a00                      PUSH 0x0
00776d7b  8bcf                      MOV ECX,EDI
00776d7d  ff30                      PUSH dword ptr [EAX]
00776d7f  e8ac970100                CALL 0x00790530
00776d84  8bcf                      MOV ECX,EDI
00776d86  e8658b0500                CALL 0x007cf8f0
00776d8b  51                        PUSH ECX
00776d8c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00776d92  0f28d0                    MOVAPS XMM2,XMM0
00776d95  c704240000803f            MOV dword ptr [ESP],0x3f800000
00776d9c  6a00                      PUSH 0x0
00776d9e  6a02                      PUSH 0x2
00776da0  6885030000                PUSH 0x385
00776da5  e836fb1d00                CALL 0x009568e0
00776daa  8d4db4                    LEA ECX,[EBP + -0x4c]
00776dad  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00776db4  e8c7d7c9ff                CALL 0x00414580
00776db9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776dbf  e8bc06c9ff                CALL 0x00407480
00776dc4  8bc8                      MOV ECX,EAX
00776dc6  e8851ccbff                CALL 0x00428a50
00776dcb  8bc8                      MOV ECX,EAX
00776dcd  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00776dd3  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
00776ddd  e80e09caff                CALL 0x004176f0
00776de2  85c0                      TEST EAX,EAX
00776de4  0f84c1000000              JZ 0x00776eab
00776dea  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00776df0  33c9                      XOR ECX,ECX
00776df2  51                        PUSH ECX
00776df3  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00776df9  e82208caff                CALL 0x00417620
00776dfe  8b08                      MOV ECX,dword ptr [EAX]
00776e00  e84b34cbff                CALL 0x0042a250
00776e05  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00776e0b  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
00776e11  84c0                      TEST AL,AL
00776e13  743f                      JZ 0x00776e54
00776e15  e80608caff                CALL 0x00417620
00776e1a  8b00                      MOV EAX,dword ptr [EAX]
00776e1c  8bc8                      MOV ECX,EAX
00776e1e  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
00776e24  e8c7f3cbff                CALL 0x004361f0
00776e29  3bc7                      CMP EAX,EDI
00776e2b  755f                      JNZ 0x00776e8c
00776e2d  ffb5d8feffff              PUSH dword ptr [EBP + 0xfffffed8]
00776e33  f30f104d08                MOVSS XMM1,dword ptr [EBP + 0x8]
00776e38  ff7510                    PUSH dword ptr [EBP + 0x10]
00776e3b  8b8dc8feffff              MOV ECX,dword ptr [EBP + 0xfffffec8]
00776e41  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
00776e47  e80449ebff                CALL 0x0062b750
00776e4c  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00776e52  eb38                      JMP 0x00776e8c
00776e54  e8c707caff                CALL 0x00417620
00776e59  8b08                      MOV ECX,dword ptr [EAX]
00776e5b  e8d056f3ff                CALL 0x006ac530
00776e60  84c0                      TEST AL,AL
00776e62  7428                      JZ 0x00776e8c
00776e64  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
00776e6a  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00776e70  e8ab07caff                CALL 0x00417620
00776e75  f30f105508                MOVSS XMM2,dword ptr [EBP + 0x8]
00776e7a  56                        PUSH ESI
00776e7b  ff7510                    PUSH dword ptr [EBP + 0x10]
00776e7e  8b08                      MOV ECX,dword ptr [EAX]
00776e80  ffb5e0feffff              PUSH dword ptr [EBP + 0xfffffee0]
00776e86  57                        PUSH EDI
00776e87  e894fef5ff                CALL 0x006d6d20
00776e8c  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
00776e92  ff85ecfeffff              INC dword ptr [EBP + 0xfffffeec]
00776e98  e85308caff                CALL 0x004176f0
00776e9d  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
00776ea3  3bc8                      CMP ECX,EAX
00776ea5  0f8247ffffff              JC 0x00776df2
00776eab  80bdf3feffff00            CMP byte ptr [EBP + 0xfffffef3],0x0
00776eb2  743d                      JZ 0x00776ef1
00776eb4  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00776ebb  7534                      JNZ 0x00776ef1
00776ebd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776ec3  e868d6caff                CALL 0x00424530
00776ec8  6a01                      PUSH 0x1
00776eca  6a05                      PUSH 0x5
00776ecc  8bc8                      MOV ECX,EAX
00776ece  e8ad1bcbff                CALL 0x00428a80
00776ed3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776ed9  e852d6caff                CALL 0x00424530
00776ede  8bc8                      MOV ECX,EAX
00776ee0  e8bb54c9ff                CALL 0x0040c3a0
00776ee5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776eeb  50                        PUSH EAX
00776eec  e85fcdfdff                CALL 0x00753c50
00776ef1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776ef7  6a02                      PUSH 0x2
00776ef9  e862a8cbff                CALL 0x00431760
00776efe  84c0                      TEST AL,AL
00776f00  64a12c000000              MOV EAX,FS:[0x2c]
00776f06  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00776f0c  740f                      JZ 0x00776f1d
00776f0e  c78500ffffff00000000      MOV dword ptr [EBP + 0xffffff00],0x0
00776f18  e9250f0000                JMP 0x00777e42
00776f1d  83bd00ffffff00            CMP dword ptr [EBP + 0xffffff00],0x0
00776f24  0f8e180f0000              JLE 0x00777e42
00776f2a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00776f30  e81b09caff                CALL 0x00417850
00776f35  8bc8                      MOV ECX,EAX
00776f37  e81426cbff                CALL 0x00429550
00776f3c  84c0                      TEST AL,AL
00776f3e  0f85f1080000              JNZ 0x00777835
00776f44  8b874c130000              MOV EAX,dword ptr [EDI + 0x134c]
00776f4a  8db74c130000              LEA ESI,[EDI + 0x134c]
00776f50  40                        INC EAX
00776f51  8d9740130000              LEA EDX,[EDI + 0x1340]
00776f57  d1f8                      SAR EAX,0x1
00776f59  8d8f44130000              LEA ECX,[EDI + 0x1344]
00776f5f  0387881d0000              ADD EAX,dword ptr [EDI + 0x1d88]
00776f65  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00776f68  e8f35bcaff                CALL 0x0041cb60
00776f6d  8b00                      MOV EAX,dword ptr [EAX]
00776f6f  40                        INC EAX
00776f70  d1f8                      SAR EAX,0x1
00776f72  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00776f75  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00776f7b  83e020                    AND EAX,0x20
00776f7e  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
00776f84  83c800                    OR EAX,0x0
00776f87  0f85a9000000              JNZ 0x00777036
00776f8d  50                        PUSH EAX
00776f8e  6a6b                      PUSH 0x6b
00776f90  8bcf                      MOV ECX,EDI
00776f92  e8b9a5ffff                CALL 0x00771550
00776f97  84c0                      TEST AL,AL
00776f99  0f8597000000              JNZ 0x00777036
00776f9f  8b8744130000              MOV EAX,dword ptr [EDI + 0x1344]
00776fa5  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
00776fab  c685fdfeffff00            MOV byte ptr [EBP + 0xfffffefd],0x0
00776fb2  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00776fb8  8b06                      MOV EAX,dword ptr [ESI]
00776fba  8b0e                      MOV ECX,dword ptr [ESI]
00776fbc  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
00776fc2  8b8f881d0000              MOV ECX,dword ptr [EDI + 0x1d88]
00776fc8  8d7801                    LEA EDI,[EAX + 0x1]
00776fcb  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
00776fd2  d1ff                      SAR EDI,0x1
00776fd4  03f9                      ADD EDI,ECX
00776fd6  89bdc8feffff              MOV dword ptr [EBP + 0xfffffec8],EDI
00776fdc  8bf8                      MOV EDI,EAX
00776fde  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
00776fe4  89bdecfeffff              MOV dword ptr [EBP + 0xfffffeec],EDI
00776fea  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
00776ff0  85c9                      TEST ECX,ECX
00776ff2  0f8ec4000000              JLE 0x007770bc
00776ff8  8bb5c8feffff              MOV ESI,dword ptr [EBP + 0xfffffec8]
00776ffe  83ee01                    SUB ESI,0x1
00777001  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0077700b  785d                      JS 0x0077706a
0077700d  0f1f00                    NOP dword ptr [EAX]
00777010  56                        PUSH ESI
00777011  8bcf                      MOV ECX,EDI
00777013  e8883a0500                CALL 0x007caaa0
00777018  84c0                      TEST AL,AL
0077701a  754e                      JNZ 0x0077706a
0077701c  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
00777022  85c0                      TEST EAX,EAX
00777024  7536                      JNZ 0x0077705c
00777026  f6874c13000001            TEST byte ptr [EDI + 0x134c],0x1
0077702d  742d                      JZ 0x0077705c
0077702f  b801000000                MOV EAX,0x1
00777034  eb29                      JMP 0x0077705f
00777036  8b8744130000              MOV EAX,dword ptr [EDI + 0x1344]
0077703c  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
00777042  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00777048  3bc2                      CMP EAX,EDX
0077704a  0f8c5bffffff              JL 0x00776fab
00777050  c685fdfeffff01            MOV byte ptr [EBP + 0xfffffefd],0x1
00777057  e95cffffff                JMP 0x00776fb8
0077705c  83c002                    ADD EAX,0x2
0077705f  83ee01                    SUB ESI,0x1
00777062  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00777068  79a6                      JNS 0x00777010
0077706a  8db74c130000              LEA ESI,[EDI + 0x134c]
00777070  8bd6                      MOV EDX,ESI
00777072  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
00777078  e8e35acaff                CALL 0x0041cb60
0077707d  8b8f881d0000              MOV ECX,dword ptr [EDI + 0x1d88]
00777083  8b9744130000              MOV EDX,dword ptr [EDI + 0x1344]
00777089  8995f8feffff              MOV dword ptr [EBP + 0xfffffef8],EDX
0077708f  8b00                      MOV EAX,dword ptr [EAX]
00777091  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
00777097  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0077709d  8b8740130000              MOV EAX,dword ptr [EDI + 0x1340]
007770a3  8d0448                    LEA EAX,[EAX + ECX*0x2]
007770a6  48                        DEC EAX
007770a7  3bd0                      CMP EDX,EAX
007770a9  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
007770af  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
007770b5  0f9d85fffeffff            SETGE byte ptr [EBP + 0xfffffeff]
007770bc  83bde8feffff00            CMP dword ptr [EBP + 0xfffffee8],0x0
007770c3  0f8e12010000              JLE 0x007771db
007770c9  80bdfdfeffff00            CMP byte ptr [EBP + 0xfffffefd],0x0
007770d0  0f8505010000              JNZ 0x007771db
007770d6  8d95ecfeffff              LEA EDX,[EBP + 0xfffffeec]
007770dc  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
007770e2  e8795acaff                CALL 0x0041cb60
007770e7  8b36                      MOV ESI,dword ptr [ESI]
007770e9  8b08                      MOV ECX,dword ptr [EAX]
007770eb  8bc6                      MOV EAX,ESI
007770ed  2bc1                      SUB EAX,ECX
007770ef  898d00ffffff              MOV dword ptr [EBP + 0xffffff00],ECX
007770f5  3bf0                      CMP ESI,EAX
007770f7  7e65                      JLE 0x0077715e
007770f9  0f1f8000000000            NOP dword ptr [EAX]
00777100  56                        PUSH ESI
00777101  8bcf                      MOV ECX,EDI
00777103  e81821feff                CALL 0x00759220
00777108  84c0                      TEST AL,AL
0077710a  743b                      JZ 0x00777147
0077710c  56                        PUSH ESI
0077710d  8bcf                      MOV ECX,EDI
0077710f  e8cc20feff                CALL 0x007591e0
00777114  6a00                      PUSH 0x0
00777116  6aff                      PUSH -0x1
00777118  6a09                      PUSH 0x9
0077711a  6a23                      PUSH 0x23
0077711c  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
00777122  8bcf                      MOV ECX,EDI
00777124  50                        PUSH EAX
00777125  e8a6c8e3ff                CALL 0x005b39d0
0077712a  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00777132  51                        PUSH ECX
00777133  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077713a  8bcf                      MOV ECX,EDI
0077713c  6a00                      PUSH 0x0
0077713e  6a02                      PUSH 0x2
00777140  6a50                      PUSH 0x50
00777142  e829f3f3ff                CALL 0x006b6470
00777147  8b974c130000              MOV EDX,dword ptr [EDI + 0x134c]
0077714d  4e                        DEC ESI
0077714e  8b8d00ffffff              MOV ECX,dword ptr [EBP + 0xffffff00]
00777154  8bc2                      MOV EAX,EDX
00777156  2bc1                      SUB EAX,ECX
00777158  3bf0                      CMP ESI,EAX
0077715a  7fa4                      JG 0x00777100
0077715c  8bf2                      MOV ESI,EDX
0077715e  8b8748130000              MOV EAX,dword ptr [EDI + 0x1348]
00777164  85c0                      TEST EAX,EAX
00777166  7e4d                      JLE 0x007771b5
00777168  83bf4413000000            CMP dword ptr [EDI + 0x1344],0x0
0077716f  7f44                      JG 0x007771b5
00777171  83bf881d000000            CMP dword ptr [EDI + 0x1d88],0x0
00777178  7f3b                      JG 0x007771b5
0077717a  2bf1                      SUB ESI,ECX
0077717c  85f6                      TEST ESI,ESI
0077717e  7f35                      JG 0x007771b5
00777180  2bc8                      SUB ECX,EAX
00777182  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
0077718c  898dc8feffff              MOV dword ptr [EBP + 0xfffffec8],ECX
00777192  8d95c8feffff              LEA EDX,[EBP + 0xfffffec8]
00777198  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0077719e  e8dd59caff                CALL 0x0041cb80
007771a3  8b08                      MOV ECX,dword ptr [EAX]
007771a5  898d00ffffff              MOV dword ptr [EBP + 0xffffff00],ECX
007771ab  c7874813000000000000      MOV dword ptr [EDI + 0x1348],0x0
007771b5  85c9                      TEST ECX,ECX
007771b7  0f8ede050000              JLE 0x0077779b
007771bd  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
007771c3  8d8f4c130000              LEA ECX,[EDI + 0x134c]
007771c9  e89259caff                CALL 0x0041cb60
007771ce  8b00                      MOV EAX,dword ptr [EAX]
007771d0  29874c130000              SUB dword ptr [EDI + 0x134c],EAX
007771d6  e9c0050000                JMP 0x0077779b
007771db  85c9                      TEST ECX,ECX
007771dd  0f8e12030000              JLE 0x007774f5
007771e3  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
007771ea  0f8505030000              JNZ 0x007774f5
007771f0  80bdfdfeffff00            CMP byte ptr [EBP + 0xfffffefd],0x0
007771f7  0f85f8020000              JNZ 0x007774f5
007771fd  83bf4813000000            CMP dword ptr [EDI + 0x1348],0x0
00777204  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0077720a  7e57                      JLE 0x00777263
0077720c  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
00777212  85c0                      TEST EAX,EAX
00777214  7f4d                      JG 0x00777263
00777216  833e00                    CMP dword ptr [ESI],0x0
00777219  8bc1                      MOV EAX,ECX
0077721b  7f4c                      JG 0x00777269
0077721d  83f901                    CMP ECX,0x1
00777220  7f47                      JG 0x00777269
00777222  2b9748130000              SUB EDX,dword ptr [EDI + 0x1348]
00777228  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0077722e  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
00777234  8d95c8feffff              LEA EDX,[EBP + 0xfffffec8]
0077723a  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
00777244  e83759caff                CALL 0x0041cb80
00777249  8b10                      MOV EDX,dword ptr [EAX]
0077724b  8b87881d0000              MOV EAX,dword ptr [EDI + 0x1d88]
00777251  899500ffffff              MOV dword ptr [EBP + 0xffffff00],EDX
00777257  c7874813000000000000      MOV dword ptr [EDI + 0x1348],0x0
00777261  eb06                      JMP 0x00777269
00777263  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
00777269  85d2                      TEST EDX,EDX
0077726b  0f8e2a050000              JLE 0x0077779b
00777271  48                        DEC EAX
00777272  8bcf                      MOV ECX,EDI
00777274  8987881d0000              MOV dword ptr [EDI + 0x1d88],EAX
0077727a  e8212c0500                CALL 0x007c9ea0
0077727f  83bfc013000010            CMP dword ptr [EDI + 0x13c0],0x10
00777286  7537                      JNZ 0x007772bf
00777288  8b85b8feffff              MOV EAX,dword ptr [EBP + 0xfffffeb8]
0077728e  83c800                    OR EAX,0x0
00777291  752c                      JNZ 0x007772bf
00777293  3987bc030000              CMP dword ptr [EDI + 0x3bc],EAX
00777299  7524                      JNZ 0x007772bf
0077729b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007772a1  e88ad2caff                CALL 0x00424530
007772a6  8bc8                      MOV ECX,EAX
007772a8  e80343fdff                CALL 0x0074b5b0
007772ad  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007772b3  e8c801c9ff                CALL 0x00407480
007772b8  8bc8                      MOV ECX,EAX
007772ba  e801c5fdff                CALL 0x007537c0
007772bf  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
007772c5  a14c11c800                MOV EAX,[0x00c8114c]
007772ca  8b09                      MOV ECX,dword ptr [ECX]
007772cc  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
007772d2  0f8f761d0000              JG 0x0077904e
007772d8  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
007772e0  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
007772e8  e8f37cf0ff                CALL 0x0067efe0
007772ed  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
007772f5  8d873c030000              LEA EAX,[EDI + 0x33c]
007772fb  6a00                      PUSH 0x0
007772fd  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
00777305  51                        PUSH ECX
00777306  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0077730e  f30f110c24                MOVSS dword ptr [ESP],XMM1
00777313  685011c800                PUSH 0xc81150
00777318  51                        PUSH ECX
00777319  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077731f  f30f110424                MOVSS dword ptr [ESP],XMM0
00777324  6a08                      PUSH 0x8
00777326  6a23                      PUSH 0x23
00777328  50                        PUSH EAX
00777329  e802c0f8ff                CALL 0x00703330
0077732e  e8ad7cf0ff                CALL 0x0067efe0
00777333  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0077733b  51                        PUSH ECX
0077733c  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
00777344  8bcf                      MOV ECX,EDI
00777346  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0077734e  f30f110424                MOVSS dword ptr [ESP],XMM0
00777353  6a00                      PUSH 0x0
00777355  6a02                      PUSH 0x2
00777357  68ce010000                PUSH 0x1ce
0077735c  e80ff1f3ff                CALL 0x006b6470
00777361  6a00                      PUSH 0x0
00777363  6825020000                PUSH 0x225
00777368  8bcf                      MOV ECX,EDI
0077736a  e87193ffff                CALL 0x007706e0
0077736f  84c0                      TEST AL,AL
00777371  0f8424040000              JZ 0x0077779b
00777377  e8647cf0ff                CALL 0x0067efe0
0077737c  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00777384  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
0077738e  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00777396  e8c57bf7ff                CALL 0x006eef60
0077739b  660f6e85e8feffff          MOVD XMM0,dword ptr [EBP + 0xfffffee8]
007773a3  8bf0                      MOV ESI,EAX
007773a5  0f5bc0                    CVTDQ2PS XMM0,XMM0
007773a8  51                        PUSH ECX
007773a9  8d4590                    LEA EAX,[EBP + -0x70]
007773ac  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
007773b4  f30f5885b8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeb8]
007773bc  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
007773c4  f30f110424                MOVSS dword ptr [ESP],XMM0
007773c9  50                        PUSH EAX
007773ca  e8818f2900                CALL 0x00a10350
007773cf  83c408                    ADD ESP,0x8
007773d2  c785c8feffff00002041      MOV dword ptr [EBP + 0xfffffec8],0x41200000
007773dc  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
007773e2  51                        PUSH ECX
007773e3  8d8dccfeffff              LEA ECX,[EBP + 0xfffffecc]
007773e9  51                        PUSH ECX
007773ea  8bc8                      MOV ECX,EAX
007773ec  e8ef902900                CALL 0x00a104e0
007773f1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007773f7  56                        PUSH ESI
007773f8  6a00                      PUSH 0x0
007773fa  57                        PUSH EDI
007773fb  50                        PUSH EAX
007773fc  8d873c030000              LEA EAX,[EDI + 0x33c]
00777402  50                        PUSH EAX
00777403  6a1d                      PUSH 0x1d
00777405  6a02                      PUSH 0x2
00777407  e81417cbff                CALL 0x00428b20
0077740c  6a00                      PUSH 0x0
0077740e  b902000000                MOV ECX,0x2
00777413  8bf0                      MOV ESI,EAX
00777415  e8f67bf0ff                CALL 0x0067f010
0077741a  8d0445ffffffff            LEA EAX,[EAX*0x2 + 0xffffffff]
00777421  50                        PUSH EAX
00777422  51                        PUSH ECX
00777423  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077742a  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00777430  6a01                      PUSH 0x1
00777432  50                        PUSH EAX
00777433  8bcf                      MOV ECX,EDI
00777435  e886820400                CALL 0x007bf6c0
0077743a  68f048c300                PUSH 0xc348f0
0077743f  8d9550ffffff              LEA EDX,[EBP + 0xffffff50]
00777445  8d4db0                    LEA ECX,[EBP + -0x50]
00777448  e8d3e7cbff                CALL 0x00435c20
0077744d  83ec0c                    SUB ESP,0xc
00777450  8bcc                      MOV ECX,ESP
00777452  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00777455  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00777458  8bce                      MOV ECX,ESI
0077745a  e8f1ecefff                CALL 0x00676150
0077745f  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
00777467  f30f5905f4a4ba00          MULSS XMM0,dword ptr [0x00baa4f4]
0077746f  51                        PUSH ECX
00777470  8bce                      MOV ECX,ESI
00777472  f30f110424                MOVSS dword ptr [ESP],XMM0
00777477  e8a4ecefff                CALL 0x00676120
0077747c  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
00777484  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
0077748c  8b06                      MOV EAX,dword ptr [ESI]
0077748e  51                        PUSH ECX
0077748f  8bce                      MOV ECX,ESI
00777491  f30f580584a8ba00          ADDSS XMM0,dword ptr [0x00baa884]
00777499  f30f110424                MOVSS dword ptr [ESP],XMM0
0077749e  ff5040                    CALL dword ptr [EAX + 0x40]
007774a1  f30f108568ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff68]
007774a9  51                        PUSH ECX
007774aa  8bce                      MOV ECX,ESI
007774ac  f30f110424                MOVSS dword ptr [ESP],XMM0
007774b1  e80aebefff                CALL 0x00675fc0
007774b6  57                        PUSH EDI
007774b7  8bce                      MOV ECX,ESI
007774b9  e8e21df3ff                CALL 0x006a92a0
007774be  8b06                      MOV EAX,dword ptr [ESI]
007774c0  8bce                      MOV ECX,ESI
007774c2  ff500c                    CALL dword ptr [EAX + 0xc]
007774c5  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
007774cb  40                        INC EAX
007774cc  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
007774d2  83f80a                    CMP EAX,0xa
007774d5  0f8cbbfeffff              JL 0x00777396
007774db  66ff8790180000            INC word ptr [EDI + 0x1890]
007774e2  8bcf                      MOV ECX,EDI
007774e4  838f7415000002            OR dword ptr [EDI + 0x1574],0x2
007774eb  e880c0feff                CALL 0x00763570
007774f0  e9a6020000                JMP 0x0077779b
007774f5  8b87a41d0000              MOV EAX,dword ptr [EDI + 0x1da4]
007774fb  85c0                      TEST EAX,EAX
007774fd  7e66                      JLE 0x00777565
007774ff  83bf4813000000            CMP dword ptr [EDI + 0x1348],0x0
00777506  7f5d                      JG 0x00777565
00777508  80bdfdfeffff00            CMP byte ptr [EBP + 0xfffffefd],0x0
0077750f  8d8fa41d0000              LEA ECX,[EDI + 0x1da4]
00777515  7435                      JZ 0x0077754c
00777517  03c0                      ADD EAX,EAX
00777519  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
00777523  2b85f8feffff              SUB EAX,dword ptr [EBP + 0xfffffef8]
00777529  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0077752f  03c2                      ADD EAX,EDX
00777531  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
00777537  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
0077753d  e83e56caff                CALL 0x0041cb80
00777542  8bd0                      MOV EDX,EAX
00777544  8d8fa41d0000              LEA ECX,[EDI + 0x1da4]
0077754a  eb06                      JMP 0x00777552
0077754c  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00777552  e80956caff                CALL 0x0041cb60
00777557  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
0077755d  0310                      ADD EDX,dword ptr [EAX]
0077755f  899500ffffff              MOV dword ptr [EBP + 0xffffff00],EDX
00777565  8b8f881d0000              MOV ECX,dword ptr [EDI + 0x1d88]
0077756b  85c9                      TEST ECX,ECX
0077756d  7e3a                      JLE 0x007775a9
0077756f  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
00777576  7431                      JZ 0x007775a9
00777578  8b8744130000              MOV EAX,dword ptr [EDI + 0x1344]
0077757e  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
00777584  f7d0                      NOT EAX
00777586  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0077758c  83e001                    AND EAX,0x1
0077758f  40                        INC EAX
00777590  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
00777596  e8c555caff                CALL 0x0041cb60
0077759b  8b8f881d0000              MOV ECX,dword ptr [EDI + 0x1d88]
007775a1  8b10                      MOV EDX,dword ptr [EAX]
007775a3  899500ffffff              MOV dword ptr [EBP + 0xffffff00],EDX
007775a9  8b8748130000              MOV EAX,dword ptr [EDI + 0x1348]
007775af  85c0                      TEST EAX,EAX
007775b1  7e4e                      JLE 0x00777601
007775b3  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
007775b9  83cf00                    OR EDI,0x0
007775bc  8bbdd4feffff              MOV EDI,dword ptr [EBP + 0xfffffed4]
007775c2  7423                      JZ 0x007775e7
007775c4  8b06                      MOV EAX,dword ptr [ESI]
007775c6  03c1                      ADD EAX,ECX
007775c8  33c9                      XOR ECX,ECX
007775ca  85c0                      TEST EAX,EAX
007775cc  8b8744130000              MOV EAX,dword ptr [EDI + 0x1344]
007775d2  0f9ec1                    SETLE CL
007775d5  2bc1                      SUB EAX,ECX
007775d7  2b87a41d0000              SUB EAX,dword ptr [EDI + 0x1da4]
007775dd  3bd0                      CMP EDX,EAX
007775df  7e20                      JLE 0x00777601
007775e1  8b8748130000              MOV EAX,dword ptr [EDI + 0x1348]
007775e7  2bd0                      SUB EDX,EAX
007775e9  c7874813000000000000      MOV dword ptr [EDI + 0x1348],0x0
007775f3  b800000000                MOV EAX,0x0
007775f8  0f48d0                    CMOVS EDX,EAX
007775fb  899500ffffff              MOV dword ptr [EBP + 0xffffff00],EDX
00777601  8b8fa41d0000              MOV ECX,dword ptr [EDI + 0x1da4]
00777607  c685fefeffff01            MOV byte ptr [EBP + 0xfffffefe],0x1
0077760e  0fb6b5fefeffff            MOVZX ESI,byte ptr [EBP + 0xfffffefe]
00777615  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
0077761f  8d0409                    LEA EAX,[ECX + ECX*0x1]
00777622  3bd0                      CMP EDX,EAX
00777624  0f4eb5b8feffff            CMOVLE ESI,dword ptr [EBP + 0xfffffeb8]
0077762b  80bdfdfeffff00            CMP byte ptr [EBP + 0xfffffefd],0x0
00777632  897594                    MOV dword ptr [EBP + -0x6c],ESI
00777635  7462                      JZ 0x00777699
00777637  2b8744130000              SUB EAX,dword ptr [EDI + 0x1344]
0077763d  8db744130000              LEA ESI,[EDI + 0x1344]
00777643  03c2                      ADD EAX,EDX
00777645  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
0077764f  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
00777655  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
0077765b  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00777661  e81a55caff                CALL 0x0041cb80
00777666  8b8fa41d0000              MOV ECX,dword ptr [EDI + 0x1da4]
0077766c  8b00                      MOV EAX,dword ptr [EAX]
0077766e  40                        INC EAX
0077766f  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
00777679  99                        CDQ
0077767a  2bc2                      SUB EAX,EDX
0077767c  8d95e8feffff              LEA EDX,[EBP + 0xfffffee8]
00777682  d1f8                      SAR EAX,0x1
00777684  2bc8                      SUB ECX,EAX
00777686  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0077768c  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00777692  e8e954caff                CALL 0x0041cb80
00777697  eb31                      JMP 0x007776ca
00777699  8d4201                    LEA EAX,[EDX + 0x1]
0077769c  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
007776a6  99                        CDQ
007776a7  2bc2                      SUB EAX,EDX
007776a9  8d95d4feffff              LEA EDX,[EBP + 0xfffffed4]
007776af  d1f8                      SAR EAX,0x1
007776b1  2bc8                      SUB ECX,EAX
007776b3  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
007776b9  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
007776bf  e8bc54caff                CALL 0x0041cb80
007776c4  8db744130000              LEA ESI,[EDI + 0x1344]
007776ca  8b00                      MOV EAX,dword ptr [EAX]
007776cc  8bcf                      MOV ECX,EDI
007776ce  8987a41d0000              MOV dword ptr [EDI + 0x1da4],EAX
007776d4  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
007776da  6a00                      PUSH 0x0
007776dc  6a00                      PUSH 0x0
007776de  f7d8                      NEG EAX
007776e0  50                        PUSH EAX
007776e1  e88a13feff                CALL 0x00758a70
007776e6  807d9400                  CMP byte ptr [EBP + -0x6c],0x0
007776ea  0f84ab000000              JZ 0x0077779b
007776f0  8b8fc0130000              MOV ECX,dword ptr [EDI + 0x13c0]
007776f6  83f90e                    CMP ECX,0xe
007776f9  0f849c000000              JZ 0x0077779b
007776ff  83f921                    CMP ECX,0x21
00777702  0f8493000000              JZ 0x0077779b
00777708  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0077770f  0f8586000000              JNZ 0x0077779b
00777715  80bdf3feffff00            CMP byte ptr [EBP + 0xfffffef3],0x0
0077771c  747d                      JZ 0x0077779b
0077771e  83bd00ffffff00            CMP dword ptr [EBP + 0xffffff00],0x0
00777725  7e74                      JLE 0x0077779b
00777727  8b06                      MOV EAX,dword ptr [ESI]
00777729  3b8740130000              CMP EAX,dword ptr [EDI + 0x1340]
0077772f  7d6a                      JGE 0x0077779b
00777731  83f916                    CMP ECX,0x16
00777734  750b                      JNZ 0x00777741
00777736  8bcf                      MOV ECX,EDI
00777738  e8e3cb0500                CALL 0x007d4320
0077773d  3906                      CMP dword ptr [ESI],EAX
0077773f  7d5a                      JGE 0x0077779b
00777741  6a6b                      PUSH 0x6b
00777743  8bcf                      MOV ECX,EDI
00777745  33f6                      XOR ESI,ESI
00777747  e8943f0500                CALL 0x007cb6e0
0077774c  83f802                    CMP EAX,0x2
0077774f  7505                      JNZ 0x00777756
00777751  8d7017                    LEA ESI,[EAX + 0x17]
00777754  eb0b                      JMP 0x00777761
00777756  83f803                    CMP EAX,0x3
00777759  b832000000                MOV EAX,0x32
0077775e  0f4df0                    CMOVGE ESI,EAX
00777761  6a6b                      PUSH 0x6b
00777763  8bcf                      MOV ECX,EDI
00777765  e81658eeff                CALL 0x0065cf80
0077776a  6a64                      PUSH 0x64
0077776c  8bc8                      MOV ECX,EAX
0077776e  e8ad180700                CALL 0x007e9020
00777773  3bc6                      CMP EAX,ESI
00777775  7224                      JC 0x0077779b
00777777  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077777d  e8aecdcaff                CALL 0x00424530
00777782  8bc8                      MOV ECX,EAX
00777784  e8273efdff                CALL 0x0074b5b0
00777789  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077778f  e8ecfcc8ff                CALL 0x00407480
00777794  8bc8                      MOV ECX,EAX
00777796  e825c0fdff                CALL 0x007537c0
0077779b  8bcf                      MOV ECX,EDI
0077779d  e87e6c0500                CALL 0x007ce420
007777a2  8bb74c130000              MOV ESI,dword ptr [EDI + 0x134c]
007777a8  8d9740130000              LEA EDX,[EDI + 0x1340]
007777ae  46                        INC ESI
007777af  8d8f44130000              LEA ECX,[EDI + 0x1344]
007777b5  d1fe                      SAR ESI,0x1
007777b7  03b7881d0000              ADD ESI,dword ptr [EDI + 0x1d88]
007777bd  e89e53caff                CALL 0x0041cb60
007777c2  8b8f4c190000              MOV ECX,dword ptr [EDI + 0x194c]
007777c8  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
007777cb  898db8feffff              MOV dword ptr [EBP + 0xfffffeb8],ECX
007777d1  8b00                      MOV EAX,dword ptr [EAX]
007777d3  40                        INC EAX
007777d4  d1f8                      SAR EAX,0x1
007777d6  894594                    MOV dword ptr [EBP + -0x6c],EAX
007777d9  8bc1                      MOV EAX,ECX
007777db  3bd6                      CMP EDX,ESI
007777dd  7e17                      JLE 0x007777f6
007777df  90                        NOP
007777e0  8bc1                      MOV EAX,ECX
007777e2  85c9                      TEST ECX,ECX
007777e4  7e10                      JLE 0x007777f6
007777e6  4a                        DEC EDX
007777e7  8d41ff                    LEA EAX,[ECX + -0x1]
007777ea  89874c190000              MOV dword ptr [EDI + 0x194c],EAX
007777f0  8bc8                      MOV ECX,EAX
007777f2  3bd6                      CMP EDX,ESI
007777f4  7fea                      JG 0x007777e0
007777f6  8b5594                    MOV EDX,dword ptr [EBP + -0x6c]
007777f9  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
007777fc  3bf2                      CMP ESI,EDX
007777fe  7e18                      JLE 0x00777818
00777800  8bc8                      MOV ECX,EAX
00777802  8bc1                      MOV EAX,ECX
00777804  85c9                      TEST ECX,ECX
00777806  7e10                      JLE 0x00777818
00777808  4e                        DEC ESI
00777809  8d41ff                    LEA EAX,[ECX + -0x1]
0077780c  89874c190000              MOV dword ptr [EDI + 0x194c],EAX
00777812  8bc8                      MOV ECX,EAX
00777814  3bf2                      CMP ESI,EDX
00777816  7fea                      JG 0x00777802
00777818  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
0077781e  3bc1                      CMP EAX,ECX
00777820  0f8d1c060000              JGE 0x00777e42
00777826  2bc8                      SUB ECX,EAX
00777828  51                        PUSH ECX
00777829  8bcf                      MOV ECX,EDI
0077782b  e8a02a0500                CALL 0x007ca2d0
00777830  e90d060000                JMP 0x00777e42
00777835  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077783b  e840fcc8ff                CALL 0x00407480
00777840  8bc8                      MOV ECX,EAX
00777842  e889e8cbff                CALL 0x004360d0
00777847  68de010000                PUSH 0x1de
0077784c  8bc8                      MOV ECX,EAX
0077784e  e89d8d1b00                CALL 0x009305f0
00777853  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00777859  84c0                      TEST AL,AL
0077785b  745d                      JZ 0x007778ba
0077785d  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
00777860  85c9                      TEST ECX,ECX
00777862  7456                      JZ 0x007778ba
00777864  e8d718f3ff                CALL 0x006a9140
00777869  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0077786c  85c0                      TEST EAX,EAX
0077786e  744a                      JZ 0x007778ba
00777870  6683b8d22e000000          CMP word ptr [EAX + 0x2ed2],0x0
00777878  7640                      JBE 0x007778ba
0077787a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00777880  e8fbfbc8ff                CALL 0x00407480
00777885  8bc8                      MOV ECX,EAX
00777887  e844e8cbff                CALL 0x004360d0
0077788c  6a01                      PUSH 0x1
0077788e  68de010000                PUSH 0x1de
00777893  8bc8                      MOV ECX,EAX
00777895  e8068c1b00                CALL 0x009304a0
0077789a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007778a0  e8dbfbc8ff                CALL 0x00407480
007778a5  6a00                      PUSH 0x0
007778a7  8bc8                      MOV ECX,EAX
007778a9  e892a00a00                CALL 0x00821940
007778ae  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
007778b1  33c9                      XOR ECX,ECX
007778b3  668988d22e0000            MOV word ptr [EAX + 0x2ed2],CX
007778ba  6800001000                PUSH 0x100000
007778bf  6a00                      PUSH 0x0
007778c1  8bcf                      MOV ECX,EDI
007778c3  e868fbc9ff                CALL 0x00417430
007778c8  84c0                      TEST AL,AL
007778ca  7438                      JZ 0x00777904
007778cc  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
007778cf  85c9                      TEST ECX,ECX
007778d1  7431                      JZ 0x00777904
007778d3  ffb7dc020000              PUSH dword ptr [EDI + 0x2dc]
007778d9  e8c216f3ff                CALL 0x006a8fa0
007778de  84c0                      TEST AL,AL
007778e0  7522                      JNZ 0x00777904
007778e2  660f6e8500ffffff          MOVD XMM0,dword ptr [EBP + 0xffffff00]
007778ea  0f5bc0                    CVTDQ2PS XMM0,XMM0
007778ed  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
007778f5  e8b6f6e2ff                CALL 0x005a6fb0
007778fa  f30f2cc0                  CVTTSS2SI EAX,XMM0
007778fe  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
00777904  83bd00ffffff00            CMP dword ptr [EBP + 0xffffff00],0x0
0077790b  f30f100de4a0ba00          MOVSS XMM1,dword ptr [0x00baa0e4]
00777913  0f8eea030000              JLE 0x00777d03
00777919  660f6e8750130000          MOVD XMM0,dword ptr [EDI + 0x1350]
00777921  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777924  f30f59c1                  MULSS XMM0,XMM1
00777928  e8b38cccff                CALL 0x004405e0
0077792d  f30f2cc0                  CVTTSS2SI EAX,XMM0
00777931  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00777937  8d8f50130000              LEA ECX,[EDI + 0x1350]
0077793d  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00777940  e81b52caff                CALL 0x0041cb60
00777945  8b00                      MOV EAX,dword ptr [EAX]
00777947  298750130000              SUB dword ptr [EDI + 0x1350],EAX
0077794d  660f6e8750130000          MOVD XMM0,dword ptr [EDI + 0x1350]
00777955  298500ffffff              SUB dword ptr [EBP + 0xffffff00],EAX
0077795b  0f5bc0                    CVTDQ2PS XMM0,XMM0
0077795e  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777966  e8758cccff                CALL 0x004405e0
0077796b  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
0077796e  f30f2cc0                  CVTTSS2SI EAX,XMM0
00777972  2bf0                      SUB ESI,EAX
00777974  85f6                      TEST ESI,ESI
00777976  7e38                      JLE 0x007779b0
00777978  6a00                      PUSH 0x0
0077797a  6aff                      PUSH -0x1
0077797c  6a09                      PUSH 0x9
0077797e  6a23                      PUSH 0x23
00777980  8d85fafeffff              LEA EAX,[EBP + 0xfffffefa]
00777986  8bcf                      MOV ECX,EDI
00777988  50                        PUSH EAX
00777989  e842c0e3ff                CALL 0x005b39d0
0077798e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00777996  51                        PUSH ECX
00777997  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077799e  8bcf                      MOV ECX,EDI
007779a0  6a00                      PUSH 0x0
007779a2  6a02                      PUSH 0x2
007779a4  6a50                      PUSH 0x50
007779a6  e8c5eaf3ff                CALL 0x006b6470
007779ab  83ee01                    SUB ESI,0x1
007779ae  75c8                      JNZ 0x00777978
007779b0  83bd00ffffff00            CMP dword ptr [EBP + 0xffffff00],0x0
007779b7  f30f100de4a0ba00          MOVSS XMM1,dword ptr [0x00baa0e4]
007779bf  0f8e3e030000              JLE 0x00777d03
007779c5  660f6e87881d0000          MOVD XMM0,dword ptr [EDI + 0x1d88]
007779cd  0f5bc0                    CVTDQ2PS XMM0,XMM0
007779d0  f30f59c1                  MULSS XMM0,XMM1
007779d4  e8078cccff                CALL 0x004405e0
007779d9  f30f2cc0                  CVTTSS2SI EAX,XMM0
007779dd  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
007779e3  8d8f881d0000              LEA ECX,[EDI + 0x1d88]
007779e9  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
007779ef  e86c51caff                CALL 0x0041cb60
007779f4  8b00                      MOV EAX,dword ptr [EAX]
007779f6  2987881d0000              SUB dword ptr [EDI + 0x1d88],EAX
007779fc  660f6e87881d0000          MOVD XMM0,dword ptr [EDI + 0x1d88]
00777a04  298500ffffff              SUB dword ptr [EBP + 0xffffff00],EAX
00777a0a  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777a0d  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777a15  e8c68bccff                CALL 0x004405e0
00777a1a  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
00777a20  f30f2cc0                  CVTTSS2SI EAX,XMM0
00777a24  2bc8                      SUB ECX,EAX
00777a26  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
00777a2c  85c9                      TEST ECX,ECX
00777a2e  0f8e36020000              JLE 0x00777c6a
00777a34  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
00777a3a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00777a40  e89b75f0ff                CALL 0x0067efe0
00777a45  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00777a4d  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
00777a57  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00777a5c  0f1f4000                  NOP dword ptr [EAX]
00777a60  e8fb74f7ff                CALL 0x006eef60
00777a65  660f6e85e8feffff          MOVD XMM0,dword ptr [EBP + 0xfffffee8]
00777a6d  8bf0                      MOV ESI,EAX
00777a6f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777a72  51                        PUSH ECX
00777a73  8d4590                    LEA EAX,[EBP + -0x70]
00777a76  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
00777a7e  f30f5845ec                ADDSS XMM0,dword ptr [EBP + -0x14]
00777a83  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00777a8b  f30f110424                MOVSS dword ptr [ESP],XMM0
00777a90  50                        PUSH EAX
00777a91  e8ba882900                CALL 0x00a10350
00777a96  83c408                    ADD ESP,0x8
00777a99  c745d400002041            MOV dword ptr [EBP + -0x2c],0x41200000
00777aa0  8d4dd4                    LEA ECX,[EBP + -0x2c]
00777aa3  51                        PUSH ECX
00777aa4  8d8db4feffff              LEA ECX,[EBP + 0xfffffeb4]
00777aaa  51                        PUSH ECX
00777aab  8bc8                      MOV ECX,EAX
00777aad  e82e8a2900                CALL 0x00a104e0
00777ab2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00777ab8  56                        PUSH ESI
00777ab9  6a00                      PUSH 0x0
00777abb  57                        PUSH EDI
00777abc  50                        PUSH EAX
00777abd  8d873c030000              LEA EAX,[EDI + 0x33c]
00777ac3  50                        PUSH EAX
00777ac4  6a1d                      PUSH 0x1d
00777ac6  6a02                      PUSH 0x2
00777ac8  e85310cbff                CALL 0x00428b20
00777acd  6a00                      PUSH 0x0
00777acf  b902000000                MOV ECX,0x2
00777ad4  8bf0                      MOV ESI,EAX
00777ad6  e83575f0ff                CALL 0x0067f010
00777adb  8d0445ffffffff            LEA EAX,[EAX*0x2 + 0xffffffff]
00777ae2  50                        PUSH EAX
00777ae3  51                        PUSH ECX
00777ae4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00777aeb  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00777af1  6a01                      PUSH 0x1
00777af3  50                        PUSH EAX
00777af4  8bcf                      MOV ECX,EDI
00777af6  e8c57b0400                CALL 0x007bf6c0
00777afb  68f048c300                PUSH 0xc348f0
00777b00  8d9550ffffff              LEA EDX,[EBP + 0xffffff50]
00777b06  8d4db0                    LEA ECX,[EBP + -0x50]
00777b09  e812e1cbff                CALL 0x00435c20
00777b0e  83ec0c                    SUB ESP,0xc
00777b11  8bcc                      MOV ECX,ESP
00777b13  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00777b16  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00777b19  8bce                      MOV ECX,ESI
00777b1b  e830e6efff                CALL 0x00676150
00777b20  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
00777b28  f30f5905f4a4ba00          MULSS XMM0,dword ptr [0x00baa4f4]
00777b30  51                        PUSH ECX
00777b31  8bce                      MOV ECX,ESI
00777b33  f30f110424                MOVSS dword ptr [ESP],XMM0
00777b38  e8e3e5efff                CALL 0x00676120
00777b3d  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
00777b45  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00777b4d  8b06                      MOV EAX,dword ptr [ESI]
00777b4f  51                        PUSH ECX
00777b50  8bce                      MOV ECX,ESI
00777b52  f30f110424                MOVSS dword ptr [ESP],XMM0
00777b57  ff5040                    CALL dword ptr [EAX + 0x40]
00777b5a  f30f108568ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff68]
00777b62  51                        PUSH ECX
00777b63  8bce                      MOV ECX,ESI
00777b65  f30f110424                MOVSS dword ptr [ESP],XMM0
00777b6a  e851e4efff                CALL 0x00675fc0
00777b6f  57                        PUSH EDI
00777b70  8bce                      MOV ECX,ESI
00777b72  e82917f3ff                CALL 0x006a92a0
00777b77  8b06                      MOV EAX,dword ptr [ESI]
00777b79  8bce                      MOV ECX,ESI
00777b7b  ff500c                    CALL dword ptr [EAX + 0xc]
00777b7e  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
00777b84  40                        INC EAX
00777b85  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
00777b8b  83f80a                    CMP EAX,0xa
00777b8e  0f8cccfeffff              JL 0x00777a60
00777b94  83adecfeffff01            SUB dword ptr [EBP + 0xfffffeec],0x1
00777b9b  0f859ffeffff              JNZ 0x00777a40
00777ba1  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
00777ba7  a17c11c800                MOV EAX,[0x00c8117c]
00777bac  8b09                      MOV ECX,dword ptr [ECX]
00777bae  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
00777bb4  0f8ff3140000              JG 0x007790ad
00777bba  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00777bc2  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00777bc7  e81474f0ff                CALL 0x0067efe0
00777bcc  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00777bd4  8d873c030000              LEA EAX,[EDI + 0x33c]
00777bda  6a00                      PUSH 0x0
00777bdc  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
00777be1  51                        PUSH ECX
00777be2  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00777bea  f30f110c24                MOVSS dword ptr [ESP],XMM1
00777bef  688011c800                PUSH 0xc81180
00777bf4  51                        PUSH ECX
00777bf5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00777bfb  f30f110424                MOVSS dword ptr [ESP],XMM0
00777c00  6a08                      PUSH 0x8
00777c02  6a23                      PUSH 0x23
00777c04  50                        PUSH EAX
00777c05  e826b7f8ff                CALL 0x00703330
00777c0a  e8d173f0ff                CALL 0x0067efe0
00777c0f  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00777c17  51                        PUSH ECX
00777c18  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
00777c20  8bcf                      MOV ECX,EDI
00777c22  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00777c2a  f30f110424                MOVSS dword ptr [ESP],XMM0
00777c2f  6a00                      PUSH 0x0
00777c31  6a02                      PUSH 0x2
00777c33  68ce010000                PUSH 0x1ce
00777c38  e833e8f3ff                CALL 0x006b6470
00777c3d  6a00                      PUSH 0x0
00777c3f  6825020000                PUSH 0x225
00777c44  8bcf                      MOV ECX,EDI
00777c46  e8958affff                CALL 0x007706e0
00777c4b  84c0                      TEST AL,AL
00777c4d  741b                      JZ 0x00777c6a
00777c4f  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
00777c55  8bcf                      MOV ECX,EDI
00777c57  66018790180000            ADD word ptr [EDI + 0x1890],AX
00777c5e  838f7415000002            OR dword ptr [EDI + 0x1574],0x2
00777c65  e806b9feff                CALL 0x00763570
00777c6a  83bd00ffffff00            CMP dword ptr [EBP + 0xffffff00],0x0
00777c71  0f8e8c000000              JLE 0x00777d03
00777c77  660f6e87a41d0000          MOVD XMM0,dword ptr [EDI + 0x1da4]
00777c7f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777c82  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777c8a  e85189ccff                CALL 0x004405e0
00777c8f  f30f2cc0                  CVTTSS2SI EAX,XMM0
00777c93  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00777c99  8d8fa41d0000              LEA ECX,[EDI + 0x1da4]
00777c9f  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00777ca2  e8b94ecaff                CALL 0x0041cb60
00777ca7  8b00                      MOV EAX,dword ptr [EAX]
00777ca9  2987a41d0000              SUB dword ptr [EDI + 0x1da4],EAX
00777caf  660f6e87a41d0000          MOVD XMM0,dword ptr [EDI + 0x1da4]
00777cb7  298500ffffff              SUB dword ptr [EBP + 0xffffff00],EAX
00777cbd  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777cc0  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777cc8  e81389ccff                CALL 0x004405e0
00777ccd  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
00777cd0  f30f2cc0                  CVTTSS2SI EAX,XMM0
00777cd4  2bf0                      SUB ESI,EAX
00777cd6  85f6                      TEST ESI,ESI
00777cd8  7e29                      JLE 0x00777d03
00777cda  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00777ce0  ba05000000                MOV EDX,0x5
00777ce5  8d873c030000              LEA EAX,[EDI + 0x33c]
00777ceb  6a00                      PUSH 0x0
00777ced  50                        PUSH EAX
00777cee  8d4afd                    LEA ECX,[EDX + -0x3]
00777cf1  e83a73f0ff                CALL 0x0067f030
00777cf6  50                        PUSH EAX
00777cf7  8bcf                      MOV ECX,EDI
00777cf9  e8d21cfeff                CALL 0x007599d0
00777cfe  83ee01                    SUB ESI,0x1
00777d01  75dd                      JNZ 0x00777ce0
00777d03  33c9                      XOR ECX,ECX
00777d05  398d00ffffff              CMP dword ptr [EBP + 0xffffff00],ECX
00777d0b  7e5f                      JLE 0x00777d6c
00777d0d  660f6e874c190000          MOVD XMM0,dword ptr [EDI + 0x194c]
00777d15  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777d18  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777d20  e8bb88ccff                CALL 0x004405e0
00777d25  f30f2cc0                  CVTTSS2SI EAX,XMM0
00777d29  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00777d2f  8d8f4c190000              LEA ECX,[EDI + 0x194c]
00777d35  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00777d38  e8234ecaff                CALL 0x0041cb60
00777d3d  8b00                      MOV EAX,dword ptr [EAX]
00777d3f  29874c190000              SUB dword ptr [EDI + 0x194c],EAX
00777d45  660f6e874c190000          MOVD XMM0,dword ptr [EDI + 0x194c]
00777d4d  298500ffffff              SUB dword ptr [EBP + 0xffffff00],EAX
00777d53  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777d56  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777d5e  e87d88ccff                CALL 0x004405e0
00777d63  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00777d66  f30f2cc0                  CVTTSS2SI EAX,XMM0
00777d6a  2bc8                      SUB ECX,EAX
00777d6c  51                        PUSH ECX
00777d6d  8bcf                      MOV ECX,EDI
00777d6f  e85c250500                CALL 0x007ca2d0
00777d74  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
00777d7a  85c0                      TEST EAX,EAX
00777d7c  7e57                      JLE 0x00777dd5
00777d7e  660f6e874c130000          MOVD XMM0,dword ptr [EDI + 0x134c]
00777d86  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777d89  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777d91  e84a88ccff                CALL 0x004405e0
00777d96  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00777d9c  8d8f4c130000              LEA ECX,[EDI + 0x134c]
00777da2  e8b94dcaff                CALL 0x0041cb60
00777da7  8b00                      MOV EAX,dword ptr [EAX]
00777da9  29874c130000              SUB dword ptr [EDI + 0x134c],EAX
00777daf  660f6e874c130000          MOVD XMM0,dword ptr [EDI + 0x134c]
00777db7  298500ffffff              SUB dword ptr [EBP + 0xffffff00],EAX
00777dbd  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777dc0  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777dc8  e81388ccff                CALL 0x004405e0
00777dcd  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
00777dd3  85c0                      TEST EAX,EAX
00777dd5  0f9fc1                    SETG CL
00777dd8  888dfefeffff              MOV byte ptr [EBP + 0xfffffefe],CL
00777dde  85c0                      TEST EAX,EAX
00777de0  7e55                      JLE 0x00777e37
00777de2  660f6e8744130000          MOVD XMM0,dword ptr [EDI + 0x1344]
00777dea  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777ded  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777df5  e8e687ccff                CALL 0x004405e0
00777dfa  8d9500ffffff              LEA EDX,[EBP + 0xffffff00]
00777e00  8d8f44130000              LEA ECX,[EDI + 0x1344]
00777e06  e8554dcaff                CALL 0x0041cb60
00777e0b  8b00                      MOV EAX,dword ptr [EAX]
00777e0d  298744130000              SUB dword ptr [EDI + 0x1344],EAX
00777e13  660f6e8744130000          MOVD XMM0,dword ptr [EDI + 0x1344]
00777e1b  298500ffffff              SUB dword ptr [EBP + 0xffffff00],EAX
00777e21  0f5bc0                    CVTDQ2PS XMM0,XMM0
00777e24  f30f5905e4a0ba00          MULSS XMM0,dword ptr [0x00baa0e4]
00777e2c  e8af87ccff                CALL 0x004405e0
00777e31  8a8dfefeffff              MOV CL,byte ptr [EBP + 0xfffffefe]
00777e37  84c9                      TEST CL,CL
00777e39  7407                      JZ 0x00777e42
00777e3b  8bcf                      MOV ECX,EDI
00777e3d  e85e200500                CALL 0x007c9ea0
00777e42  6a00                      PUSH 0x0
00777e44  68a5020000                PUSH 0x2a5
00777e49  8bcf                      MOV ECX,EDI
00777e4b  e89088ffff                CALL 0x007706e0
00777e50  84c0                      TEST AL,AL
00777e52  743e                      JZ 0x00777e92
00777e54  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00777e5a  e821f6c8ff                CALL 0x00407480
00777e5f  8bc8                      MOV ECX,EAX
00777e61  e81ae2cbff                CALL 0x00436080
00777e66  8db708150000              LEA ESI,[EDI + 0x1508]
00777e6c  84c0                      TEST AL,AL
00777e6e  7528                      JNZ 0x00777e98
00777e70  68a5020000                PUSH 0x2a5
00777e75  8bce                      MOV ECX,ESI
00777e77  e874871b00                CALL 0x009305f0
00777e7c  84c0                      TEST AL,AL
00777e7e  7518                      JNZ 0x00777e98
00777e80  83bfac1e000000            CMP dword ptr [EDI + 0x1eac],0x0
00777e87  750f                      JNZ 0x00777e98
00777e89  c685fdfeffff01            MOV byte ptr [EBP + 0xfffffefd],0x1
00777e90  eb0d                      JMP 0x00777e9f
00777e92  8db708150000              LEA ESI,[EDI + 0x1508]
00777e98  c685fdfeffff00            MOV byte ptr [EBP + 0xfffffefd],0x0
00777e9f  8bcf                      MOV ECX,EDI
00777ea1  e80a380600                CALL 0x007db6b0
00777ea6  84c0                      TEST AL,AL
00777ea8  7410                      JZ 0x00777eba
00777eaa  83bd00ffffff00            CMP dword ptr [EBP + 0xffffff00],0x0
00777eb1  c685fffeffff01            MOV byte ptr [EBP + 0xfffffeff],0x1
00777eb8  7f07                      JG 0x00777ec1
00777eba  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
00777ec1  80bdfdfeffff00            CMP byte ptr [EBP + 0xfffffefd],0x0
00777ec8  7517                      JNZ 0x00777ee1
00777eca  68c0020000                PUSH 0x2c0
00777ecf  8bce                      MOV ECX,ESI
00777ed1  e81a871b00                CALL 0x009305f0
00777ed6  c685fefeffff00            MOV byte ptr [EBP + 0xfffffefe],0x0
00777edd  84c0                      TEST AL,AL
00777edf  7407                      JZ 0x00777ee8
00777ee1  c685fefeffff01            MOV byte ptr [EBP + 0xfffffefe],0x1
00777ee8  83bf4413000000            CMP dword ptr [EDI + 0x1344],0x0
00777eef  7f12                      JG 0x00777f03
00777ef1  83bf4c13000000            CMP dword ptr [EDI + 0x134c],0x0
00777ef8  7f09                      JG 0x00777f03
00777efa  83bf881d000000            CMP dword ptr [EDI + 0x1d88],0x0
00777f01  7e0d                      JLE 0x00777f10
00777f03  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
00777f0a  0f845e020000              JZ 0x0077816e
00777f10  8a85e0feffff              MOV AL,byte ptr [EBP + 0xfffffee0]
00777f16  8bcf                      MOV ECX,EDI
00777f18  6a00                      PUSH 0x0
00777f1a  2401                      AND AL,0x1
00777f1c  68b6020000                PUSH 0x2b6
00777f21  8885fbfeffff              MOV byte ptr [EBP + 0xfffffefb],AL
00777f27  e8b487ffff                CALL 0x007706e0
00777f2c  84c0                      TEST AL,AL
00777f2e  7459                      JZ 0x00777f89
00777f30  8bcf                      MOV ECX,EDI
00777f32  e8a9300500                CALL 0x007cafe0
00777f37  8bcf                      MOV ECX,EDI
00777f39  83f803                    CMP EAX,0x3
00777f3c  7504                      JNZ 0x00777f42
00777f3e  6a01                      PUSH 0x1
00777f40  eb02                      JMP 0x00777f44
00777f42  6a02                      PUSH 0x2
00777f44  e8f7aa0500                CALL 0x007d2a40
00777f49  6a00                      PUSH 0x0
00777f4b  6aff                      PUSH -0x1
00777f4d  6a09                      PUSH 0x9
00777f4f  6a23                      PUSH 0x23
00777f51  8d85d6feffff              LEA EAX,[EBP + 0xfffffed6]
00777f57  8bcf                      MOV ECX,EDI
00777f59  50                        PUSH EAX
00777f5a  e871bae3ff                CALL 0x005b39d0
00777f5f  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00777f67  51                        PUSH ECX
00777f68  c704240000803f            MOV dword ptr [ESP],0x3f800000
00777f6f  8bcf                      MOV ECX,EDI
00777f71  6a00                      PUSH 0x0
00777f73  6a02                      PUSH 0x2
00777f75  6a50                      PUSH 0x50
00777f77  e8f4e4f3ff                CALL 0x006b6470
00777f7c  6a00                      PUSH 0x0
00777f7e  8bcf                      MOV ECX,EDI
00777f80  e8db2e0500                CALL 0x007cae60
00777f85  85c0                      TEST EAX,EAX
00777f87  7f09                      JG 0x00777f92
00777f89  80bdfbfeffff00            CMP byte ptr [EBP + 0xfffffefb],0x0
00777f90  740c                      JZ 0x00777f9e
00777f92  8bcf                      MOV ECX,EDI
00777f94  e8372b0500                CALL 0x007caad0
00777f99  e9d0010000                JMP 0x0077816e
00777f9e  8a85fffeffff              MOV AL,byte ptr [EBP + 0xfffffeff]
00777fa4  84c0                      TEST AL,AL
00777fa6  743c                      JZ 0x00777fe4
00777fa8  c7874413000000000000      MOV dword ptr [EDI + 0x1344],0x0
00777fb2  c7874c13000000000000      MOV dword ptr [EDI + 0x134c],0x0
00777fbc  c7875013000000000000      MOV dword ptr [EDI + 0x1350],0x0
00777fc6  c787881d000000000000      MOV dword ptr [EDI + 0x1d88],0x0
00777fd0  c7874813000000000000      MOV dword ptr [EDI + 0x1348],0x0
00777fda  c787a41d000000000000      MOV dword ptr [EDI + 0x1da4],0x0
00777fe4  80bdfefeffff00            CMP byte ptr [EBP + 0xfffffefe],0x0
00777feb  0f857d010000              JNZ 0x0077816e
00777ff1  84c0                      TEST AL,AL
00777ff3  7415                      JZ 0x0077800a
00777ff5  8b07                      MOV EAX,dword ptr [EDI]
00777ff7  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00777ffd  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
00778000  e86bdccbff                CALL 0x00435c70
00778005  50                        PUSH EAX
00778006  8bcf                      MOV ECX,EDI
00778008  ffd6                      CALL ESI
0077800a  8bcf                      MOV ECX,EDI
0077800c  e80f7c0300                CALL 0x007afc20
00778011  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
00778017  8d8f7c160000              LEA ECX,[EDI + 0x167c]
0077801d  56                        PUSH ESI
0077801e  8885fbfeffff              MOV byte ptr [EBP + 0xfffffefb],AL
00778024  e83719d2ff                CALL 0x00499960
00778029  80bdfbfeffff00            CMP byte ptr [EBP + 0xfffffefb],0x0
00778030  744b                      JZ 0x0077807d
00778032  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778038  e813f8c9ff                CALL 0x00417850
0077803d  8bc8                      MOV ECX,EAX
0077803f  e80c15cbff                CALL 0x00429550
00778044  84c0                      TEST AL,AL
00778046  7435                      JZ 0x0077807d
00778048  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
0077804b  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
00778051  85c0                      TEST EAX,EAX
00778053  7428                      JZ 0x0077807d
00778055  8bc8                      MOV ECX,EAX
00778057  e854f3c9ff                CALL 0x004173b0
0077805c  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00778062  84c0                      TEST AL,AL
00778064  7511                      JNZ 0x00778077
00778066  e835f4c9ff                CALL 0x004174a0
0077806b  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
00778071  85c0                      TEST EAX,EAX
00778073  75e0                      JNZ 0x00778055
00778075  eb06                      JMP 0x0077807d
00778077  57                        PUSH EDI
00778078  e803800200                CALL 0x007a0080
0077807d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00778084  0f84ed000000              JZ 0x00778177
0077808a  8b06                      MOV EAX,dword ptr [ESI]
0077808c  83e80a                    SUB EAX,0xa
0077808f  3ddd030000                CMP EAX,0x3dd
00778094  7712                      JA 0x007780a8
00778096  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0077809c  e85f97caff                CALL 0x00421800
007780a1  ff7604                    PUSH dword ptr [ESI + 0x4]
007780a4  ff36                      PUSH dword ptr [ESI]
007780a6  eb1e                      JMP 0x007780c6
007780a8  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
007780ab  83e80a                    SUB EAX,0xa
007780ae  3ddd030000                CMP EAX,0x3dd
007780b3  7718                      JA 0x007780cd
007780b5  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007780bb  e84097caff                CALL 0x00421800
007780c0  ff760c                    PUSH dword ptr [ESI + 0xc]
007780c3  ff7608                    PUSH dword ptr [ESI + 0x8]
007780c6  8bc8                      MOV ECX,EAX
007780c8  e8032b1b00                CALL 0x0092abd0
007780cd  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
007780d3  83e004                    AND EAX,0x4
007780d6  83c800                    OR EAX,0x0
007780d9  0f848f000000              JZ 0x0077816e
007780df  833e02                    CMP dword ptr [ESI],0x2
007780e2  0f8586000000              JNZ 0x0077816e
007780e8  6a00                      PUSH 0x0
007780ea  6800d9c500                PUSH 0xc5d900
007780ef  68dcd5c500                PUSH 0xc5d5dc
007780f4  6a00                      PUSH 0x0
007780f6  ff7624                    PUSH dword ptr [ESI + 0x24]
007780f9  e8b3873700                CALL 0x00af08b1
007780fe  8bf0                      MOV ESI,EAX
00778100  83c414                    ADD ESP,0x14
00778103  85f6                      TEST ESI,ESI
00778105  7467                      JZ 0x0077816e
00778107  68c04bc300                PUSH 0xc34bc0
0077810c  8d45b0                    LEA EAX,[EBP + -0x50]
0077810f  8bce                      MOV ECX,ESI
00778111  50                        PUSH EAX
00778112  e8a9f6c9ff                CALL 0x004177c0
00778117  8bd0                      MOV EDX,EAX
00778119  8d4de0                    LEA ECX,[EBP + -0x20]
0077811c  e84ff0c9ff                CALL 0x00417170
00778121  83c404                    ADD ESP,0x4
00778124  8bc8                      MOV ECX,EAX
00778126  e885f0c9ff                CALL 0x004171b0
0077812b  84c0                      TEST AL,AL
0077812d  743f                      JZ 0x0077816e
0077812f  68d04bc300                PUSH 0xc34bd0
00778134  8d45b0                    LEA EAX,[EBP + -0x50]
00778137  8bce                      MOV ECX,ESI
00778139  50                        PUSH EAX
0077813a  e881f6c9ff                CALL 0x004177c0
0077813f  8bd0                      MOV EDX,EAX
00778141  8d4de0                    LEA ECX,[EBP + -0x20]
00778144  e827f0c9ff                CALL 0x00417170
00778149  83c404                    ADD ESP,0x4
0077814c  8bc8                      MOV ECX,EAX
0077814e  e85df0c9ff                CALL 0x004171b0
00778153  84c0                      TEST AL,AL
00778155  7417                      JZ 0x0077816e
00778157  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0077815d  e89e96caff                CALL 0x00421800
00778162  6880010000                PUSH 0x180
00778167  8bc8                      MOV ECX,EAX
00778169  e8b2181b00                CALL 0x00929a20
0077816e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00778175  7563                      JNZ 0x007781da
00778177  6a00                      PUSH 0x0
00778179  683c010000                PUSH 0x13c
0077817e  8bcf                      MOV ECX,EDI
00778180  e85b85ffff                CALL 0x007706e0
00778185  84c0                      TEST AL,AL
00778187  7451                      JZ 0x007781da
00778189  6a00                      PUSH 0x0
0077818b  6804010000                PUSH 0x104
00778190  8bcf                      MOV ECX,EDI
00778192  e84985ffff                CALL 0x007706e0
00778197  84c0                      TEST AL,AL
00778199  753f                      JNZ 0x007781da
0077819b  8b8fe0130000              MOV ECX,dword ptr [EDI + 0x13e0]
007781a1  85c9                      TEST ECX,ECX
007781a3  7435                      JZ 0x007781da
007781a5  8b01                      MOV EAX,dword ptr [ECX]
007781a7  8b4038                    MOV EAX,dword ptr [EAX + 0x38]
007781aa  ffd0                      CALL EAX
007781ac  84c0                      TEST AL,AL
007781ae  742a                      JZ 0x007781da
007781b0  8d8f70170000              LEA ECX,[EDI + 0x1770]
007781b6  683c010000                PUSH 0x13c
007781bb  e8403be5ff                CALL 0x005cbd00
007781c0  8bc8                      MOV ECX,EAX
007781c2  e8290f0700                CALL 0x007e90f0
007781c7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007781cd  57                        PUSH EDI
007781ce  50                        PUSH EAX
007781cf  6a00                      PUSH 0x0
007781d1  e8fa61f8ff                CALL 0x006fe3d0
007781d6  32c0                      XOR AL,AL
007781d8  eb06                      JMP 0x007781e0
007781da  8a85dffeffff              MOV AL,byte ptr [EBP + 0xfffffedf]
007781e0  33c9                      XOR ECX,ECX
007781e2  0fb6c0                    MOVZX EAX,AL
007781e5  398ffc030000              CMP dword ptr [EDI + 0x3fc],ECX
007781eb  6a00                      PUSH 0x0
007781ed  0f44c8                    CMOVZ ECX,EAX
007781f0  894d94                    MOV dword ptr [EBP + -0x6c],ECX
007781f3  8bcf                      MOV ECX,EDI
007781f5  6a2b                      PUSH 0x2b
007781f7  e85493ffff                CALL 0x00771550
007781fc  84c0                      TEST AL,AL
007781fe  0f84c4010000              JZ 0x007783c8
00778204  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0077820b  0f85b7010000              JNZ 0x007783c8
00778211  6a2b                      PUSH 0x2b
00778213  8bcf                      MOV ECX,EDI
00778215  e8c6340500                CALL 0x007cb6e0
0077821a  8bb744130000              MOV ESI,dword ptr [EDI + 0x1344]
00778220  8bc8                      MOV ECX,EAX
00778222  33c0                      XOR EAX,EAX
00778224  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
00778227  83f902                    CMP ECX,0x2
0077822a  0f9fc0                    SETG AL
0077822d  40                        INC EAX
0077822e  8bc8                      MOV ECX,EAX
00778230  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00778233  e848510600                CALL 0x007dd380
00778238  3bf0                      CMP ESI,EAX
0077823a  0f8f88010000              JG 0x007783c8
00778240  83bf4c13000000            CMP dword ptr [EDI + 0x134c],0x0
00778247  7e1c                      JLE 0x00778265
00778249  85f6                      TEST ESI,ESI
0077824b  0f8f77010000              JG 0x007783c8
00778251  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00778254  e827510600                CALL 0x007dd380
00778259  39874c130000              CMP dword ptr [EDI + 0x134c],EAX
0077825f  0f8f63010000              JG 0x007783c8
00778265  837dd401                  CMP dword ptr [EBP + -0x2c],0x1
00778269  7528                      JNZ 0x00778293
0077826b  8d8f7c170000              LEA ECX,[EDI + 0x177c]
00778271  6a2b                      PUSH 0x2b
00778273  e8883ae5ff                CALL 0x005cbd00
00778278  8bc8                      MOV ECX,EAX
0077827a  e8710e0700                CALL 0x007e90f0
0077827f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778285  57                        PUSH EDI
00778286  50                        PUSH EAX
00778287  6a00                      PUSH 0x0
00778289  e84261f8ff                CALL 0x006fe3d0
0077828e  e935010000                JMP 0x007783c8
00778293  8d4dcc                    LEA ECX,[EBP + -0x34]
00778296  e875c2caff                CALL 0x00424510
0077829b  8d45ec                    LEA EAX,[EBP + -0x14]
0077829e  c745fc0f000000            MOV dword ptr [EBP + -0x4],0xf
007782a5  50                        PUSH EAX
007782a6  8d4dcc                    LEA ECX,[EBP + -0x34]
007782a9  c745ec02000000            MOV dword ptr [EBP + -0x14],0x2
007782b0  e86b430600                CALL 0x007dc620
007782b5  8d45ec                    LEA EAX,[EBP + -0x14]
007782b8  c745ec04000000            MOV dword ptr [EBP + -0x14],0x4
007782bf  50                        PUSH EAX
007782c0  8d4dcc                    LEA ECX,[EBP + -0x34]
007782c3  e858430600                CALL 0x007dc620
007782c8  8d45ec                    LEA EAX,[EBP + -0x14]
007782cb  c745ec06000000            MOV dword ptr [EBP + -0x14],0x6
007782d2  50                        PUSH EAX
007782d3  8d4dcc                    LEA ECX,[EBP + -0x34]
007782d6  e845430600                CALL 0x007dc620
007782db  8d45ec                    LEA EAX,[EBP + -0x14]
007782de  c745ec07000000            MOV dword ptr [EBP + -0x14],0x7
007782e5  50                        PUSH EAX
007782e6  8d4dcc                    LEA ECX,[EBP + -0x34]
007782e9  e832430600                CALL 0x007dc620
007782ee  8d45ec                    LEA EAX,[EBP + -0x14]
007782f1  c745ec08000000            MOV dword ptr [EBP + -0x14],0x8
007782f8  50                        PUSH EAX
007782f9  8d4dcc                    LEA ECX,[EBP + -0x34]
007782fc  e81f430600                CALL 0x007dc620
00778301  8d45ec                    LEA EAX,[EBP + -0x14]
00778304  c745ec09000000            MOV dword ptr [EBP + -0x14],0x9
0077830b  50                        PUSH EAX
0077830c  8d4dcc                    LEA ECX,[EBP + -0x34]
0077830f  e80c430600                CALL 0x007dc620
00778314  8d45ec                    LEA EAX,[EBP + -0x14]
00778317  c745ec0b000000            MOV dword ptr [EBP + -0x14],0xb
0077831e  50                        PUSH EAX
0077831f  8d4dcc                    LEA ECX,[EBP + -0x34]
00778322  e8f9420600                CALL 0x007dc620
00778327  8d45ec                    LEA EAX,[EBP + -0x14]
0077832a  c745ec0c000000            MOV dword ptr [EBP + -0x14],0xc
00778331  50                        PUSH EAX
00778332  8d4dcc                    LEA ECX,[EBP + -0x34]
00778335  e8e6420600                CALL 0x007dc620
0077833a  8d45ec                    LEA EAX,[EBP + -0x14]
0077833d  c745ec0d000000            MOV dword ptr [EBP + -0x14],0xd
00778344  50                        PUSH EAX
00778345  8d4dcc                    LEA ECX,[EBP + -0x34]
00778348  e8d3420600                CALL 0x007dc620
0077834d  8d45ec                    LEA EAX,[EBP + -0x14]
00778350  c745ec12000000            MOV dword ptr [EBP + -0x14],0x12
00778357  50                        PUSH EAX
00778358  8d4dcc                    LEA ECX,[EBP + -0x34]
0077835b  e8c0420600                CALL 0x007dc620
00778360  8d45ec                    LEA EAX,[EBP + -0x14]
00778363  c745ec13000000            MOV dword ptr [EBP + -0x14],0x13
0077836a  50                        PUSH EAX
0077836b  8d4dcc                    LEA ECX,[EBP + -0x34]
0077836e  e8ad420600                CALL 0x007dc620
00778373  8d45ec                    LEA EAX,[EBP + -0x14]
00778376  c745ec14000000            MOV dword ptr [EBP + -0x14],0x14
0077837d  50                        PUSH EAX
0077837e  8d4dcc                    LEA ECX,[EBP + -0x34]
00778381  e89a420600                CALL 0x007dc620
00778386  8d45ec                    LEA EAX,[EBP + -0x14]
00778389  c745ec15000000            MOV dword ptr [EBP + -0x14],0x15
00778390  50                        PUSH EAX
00778391  8d4dcc                    LEA ECX,[EBP + -0x34]
00778394  e887420600                CALL 0x007dc620
00778399  8d45ec                    LEA EAX,[EBP + -0x14]
0077839c  c745ec18000000            MOV dword ptr [EBP + -0x14],0x18
007783a3  50                        PUSH EAX
007783a4  8d4dcc                    LEA ECX,[EBP + -0x34]
007783a7  e874420600                CALL 0x007dc620
007783ac  6a00                      PUSH 0x0
007783ae  8d45cc                    LEA EAX,[EBP + -0x34]
007783b1  8bcf                      MOV ECX,EDI
007783b3  50                        PUSH EAX
007783b4  e8775b0500                CALL 0x007cdf30
007783b9  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
007783c0  8d4dcc                    LEA ECX,[EBP + -0x34]
007783c3  e808c6c9ff                CALL 0x004149d0
007783c8  b901000000                MOV ECX,0x1
007783cd  e8ae4f0600                CALL 0x007dd380
007783d2  398744130000              CMP dword ptr [EDI + 0x1344],EAX
007783d8  0f8f48020000              JG 0x00778626
007783de  6a00                      PUSH 0x0
007783e0  6847010000                PUSH 0x147
007783e5  8bcf                      MOV ECX,EDI
007783e7  e8f482ffff                CALL 0x007706e0
007783ec  84c0                      TEST AL,AL
007783ee  743b                      JZ 0x0077842b
007783f0  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007783f6  e80546cbff                CALL 0x0042ca00
007783fb  6a3a                      PUSH 0x3a
007783fd  8bc8                      MOV ECX,EAX
007783ff  e80c79fbff                CALL 0x0072fd10
00778404  50                        PUSH EAX
00778405  8d4db0                    LEA ECX,[EBP + -0x50]
00778408  e873dbcbff                CALL 0x00435f80
0077840d  6a01                      PUSH 0x1
0077840f  6a01                      PUSH 0x1
00778411  8d45b0                    LEA EAX,[EBP + -0x50]
00778414  c745b896000000            MOV dword ptr [EBP + -0x48],0x96
0077841b  8db708150000              LEA ESI,[EDI + 0x1508]
00778421  50                        PUSH EAX
00778422  8bce                      MOV ECX,ESI
00778424  e8f77d1b00                CALL 0x00930220
00778429  eb06                      JMP 0x00778431
0077842b  8db708150000              LEA ESI,[EDI + 0x1508]
00778431  6a00                      PUSH 0x0
00778433  6848010000                PUSH 0x148
00778438  8bcf                      MOV ECX,EDI
0077843a  e8a182ffff                CALL 0x007706e0
0077843f  84c0                      TEST AL,AL
00778441  7416                      JZ 0x00778459
00778443  6a00                      PUSH 0x0
00778445  6aff                      PUSH -0x1
00778447  6a01                      PUSH 0x1
00778449  6a23                      PUSH 0x23
0077844b  8d85d6feffff              LEA EAX,[EBP + 0xfffffed6]
00778451  8bcf                      MOV ECX,EDI
00778453  50                        PUSH EAX
00778454  e877b5e3ff                CALL 0x005b39d0
00778459  83bf4c13000000            CMP dword ptr [EDI + 0x134c],0x0
00778460  7e23                      JLE 0x00778485
00778462  83bf4413000000            CMP dword ptr [EDI + 0x1344],0x0
00778469  0f8fb7010000              JG 0x00778626
0077846f  b901000000                MOV ECX,0x1
00778474  e8074f0600                CALL 0x007dd380
00778479  39874c130000              CMP dword ptr [EDI + 0x134c],EAX
0077847f  0f85a1010000              JNZ 0x00778626
00778485  6a00                      PUSH 0x0
00778487  688e000000                PUSH 0x8e
0077848c  8bcf                      MOV ECX,EDI
0077848e  e84d82ffff                CALL 0x007706e0
00778493  84c0                      TEST AL,AL
00778495  0f84e3000000              JZ 0x0077857e
0077849b  688e000000                PUSH 0x8e
007784a0  8bce                      MOV ECX,ESI
007784a2  e849811b00                CALL 0x009305f0
007784a7  84c0                      TEST AL,AL
007784a9  0f84cf000000              JZ 0x0077857e
007784af  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
007784b6  0f85c2000000              JNZ 0x0077857e
007784bc  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
007784c2  2520000400                AND EAX,0x40020
007784c7  83c800                    OR EAX,0x0
007784ca  0f85ae000000              JNZ 0x0077857e
007784d0  50                        PUSH EAX
007784d1  6a02                      PUSH 0x2
007784d3  8bcf                      MOV ECX,EDI
007784d5  e82608feff                CALL 0x00758d00
007784da  6a01                      PUSH 0x1
007784dc  688e000000                PUSH 0x8e
007784e1  8bce                      MOV ECX,ESI
007784e3  e8b87f1b00                CALL 0x009304a0
007784e8  6a00                      PUSH 0x0
007784ea  688e000000                PUSH 0x8e
007784ef  8bcf                      MOV ECX,EDI
007784f1  e83a4e0300                CALL 0x007ad330
007784f6  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007784fe  51                        PUSH ECX
007784ff  c704240000803f            MOV dword ptr [ESP],0x3f800000
00778506  8bcf                      MOV ECX,EDI
00778508  6a00                      PUSH 0x0
0077850a  6a02                      PUSH 0x2
0077850c  6a36                      PUSH 0x36
0077850e  e85ddff3ff                CALL 0x006b6470
00778513  e8486af7ff                CALL 0x006eef60
00778518  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077851e  6a00                      PUSH 0x0
00778520  68acd5c500                PUSH 0xc5d5ac
00778525  68dcd5c500                PUSH 0xc5d5dc
0077852a  6a00                      PUSH 0x0
0077852c  50                        PUSH EAX
0077852d  6a04                      PUSH 0x4
0077852f  6a00                      PUSH 0x0
00778531  6840b6c700                PUSH 0xc7b640
00778536  8d873c030000              LEA EAX,[EDI + 0x33c]
0077853c  50                        PUSH EAX
0077853d  6a31                      PUSH 0x31
0077853f  68e8030000                PUSH 0x3e8
00778544  e8d705cbff                CALL 0x00428b20
00778549  50                        PUSH EAX
0077854a  e862833700                CALL 0x00af08b1
0077854f  f30f1015fcadba00          MOVSS XMM2,dword ptr [0x00baadfc]
00778557  8d4de8                    LEA ECX,[EBP + -0x18]
0077855a  83c414                    ADD ESP,0x14
0077855d  0f57c9                    XORPS XMM1,XMM1
00778560  8bf0                      MOV ESI,EAX
00778562  e829792900                CALL 0x00a0fe90
00778567  50                        PUSH EAX
00778568  8bce                      MOV ECX,ESI
0077856a  e851decdff                CALL 0x004563c0
0077856f  51                        PUSH ECX
00778570  8bce                      MOV ECX,ESI
00778572  c704240000803f            MOV dword ptr [ESP],0x3f800000
00778579  e872d7cbff                CALL 0x00435cf0
0077857e  6a00                      PUSH 0x0
00778580  6a14                      PUSH 0x14
00778582  8bcf                      MOV ECX,EDI
00778584  e8c78fffff                CALL 0x00771550
00778589  84c0                      TEST AL,AL
0077858b  0f8495000000              JZ 0x00778626
00778591  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00778595  0f858b000000              JNZ 0x00778626
0077859b  6a14                      PUSH 0x14
0077859d  8bcf                      MOV ECX,EDI
0077859f  e83c310500                CALL 0x007cb6e0
007785a4  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
007785aa  85c0                      TEST EAX,EAX
007785ac  7e56                      JLE 0x00778604
007785ae  6690                      NOP
007785b0  e8ab69f7ff                CALL 0x006eef60
007785b5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007785bb  8bf0                      MOV ESI,EAX
007785bd  e8beeec8ff                CALL 0x00407480
007785c2  6a00                      PUSH 0x0
007785c4  6a00                      PUSH 0x0
007785c6  6a00                      PUSH 0x0
007785c8  51                        PUSH ECX
007785c9  c7042400002042            MOV dword ptr [ESP],0x42200000
007785d0  8d8f3c030000              LEA ECX,[EDI + 0x33c]
007785d6  51                        PUSH ECX
007785d7  8d4de8                    LEA ECX,[EBP + -0x18]
007785da  51                        PUSH ECX
007785db  8bc8                      MOV ECX,EAX
007785dd  e83eaf0900                CALL 0x00813520
007785e2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007785e8  56                        PUSH ESI
007785e9  6a06                      PUSH 0x6
007785eb  57                        PUSH EDI
007785ec  6840b6c700                PUSH 0xc7b640
007785f1  50                        PUSH EAX
007785f2  6a0a                      PUSH 0xa
007785f4  6a05                      PUSH 0x5
007785f6  e82505cbff                CALL 0x00428b20
007785fb  83ade8feffff01            SUB dword ptr [EBP + 0xfffffee8],0x1
00778602  75ac                      JNZ 0x007785b0
00778604  ff8f94130000              DEC dword ptr [EDI + 0x1394]
0077860a  83bf9413000000            CMP dword ptr [EDI + 0x1394],0x0
00778611  7f13                      JG 0x00778626
00778613  6a14                      PUSH 0x14
00778615  8bcf                      MOV ECX,EDI
00778617  e84499ffff                CALL 0x00771f60
0077861c  c7879413000003000000      MOV dword ptr [EDI + 0x1394],0x3
00778626  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
0077862c  8d95c0feffff              LEA EDX,[EBP + 0xfffffec0]
00778632  8d4dec                    LEA ECX,[EBP + -0x14]
00778635  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
0077863b  c745ec02000000            MOV dword ptr [EBP + -0x14],0x2
00778642  e81945caff                CALL 0x0041cb60
00778647  8b00                      MOV EAX,dword ptr [EAX]
00778649  8bc8                      MOV ECX,EAX
0077864b  c1e104                    SHL ECX,0x4
0077864e  2bc8                      SUB ECX,EAX
00778650  c1e102                    SHL ECX,0x2
00778653  51                        PUSH ECX
00778654  8bcf                      MOV ECX,EDI
00778656  e8d52c0600                CALL 0x007db330
0077865b  83a76c010000ef            AND dword ptr [EDI + 0x16c],0xffffffef
00778662  80bdfdfeffff00            CMP byte ptr [EBP + 0xfffffefd],0x0
00778669  8987bc130000              MOV dword ptr [EDI + 0x13bc],EAX
0077866f  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00778675  898768010000              MOV dword ptr [EDI + 0x168],EAX
0077867b  0f8449010000              JZ 0x007787ca
00778681  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778687  e8f4edc8ff                CALL 0x00407480
0077868c  6a3c                      PUSH 0x3c
0077868e  8bc8                      MOV ECX,EAX
00778690  e8cb1b0700                CALL 0x007ea260
00778695  8bcf                      MOV ECX,EDI
00778697  e804010600                CALL 0x007d87a0
0077869c  6a01                      PUSH 0x1
0077869e  6a01                      PUSH 0x1
007786a0  68a5020000                PUSH 0x2a5
007786a5  8d8f08150000              LEA ECX,[EDI + 0x1508]
007786ab  e8307c1b00                CALL 0x009302e0
007786b0  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007786b6  e84543cbff                CALL 0x0042ca00
007786bb  68a5020000                PUSH 0x2a5
007786c0  8bc8                      MOV ECX,EAX
007786c2  e84976fbff                CALL 0x0072fd10
007786c7  50                        PUSH EAX
007786c8  8d4db0                    LEA ECX,[EBP + -0x50]
007786cb  e8b0d8cbff                CALL 0x00435f80
007786d0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007786d6  c745b896000000            MOV dword ptr [EBP + -0x48],0x96
007786dd  e89eedc8ff                CALL 0x00407480
007786e2  8bc8                      MOV ECX,EAX
007786e4  e8e7d9cbff                CALL 0x004360d0
007786e9  6a01                      PUSH 0x1
007786eb  6a01                      PUSH 0x1
007786ed  8d4db0                    LEA ECX,[EBP + -0x50]
007786f0  51                        PUSH ECX
007786f1  8bc8                      MOV ECX,EAX
007786f3  e8287b1b00                CALL 0x00930220
007786f8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00778700  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778706  6a0a                      PUSH 0xa
00778708  e823b1f8ff                CALL 0x00703830
0077870d  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
00778713  8b08                      MOV ECX,dword ptr [EAX]
00778715  a1ac11c800                MOV EAX,[0x00c811ac]
0077871a  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
00778720  0f8fe6090000              JG 0x0077910c
00778726  f30f101d78a0ba00          MOVSS XMM3,dword ptr [0x00baa078]
0077872e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778734  6a00                      PUSH 0x0
00778736  68b011c800                PUSH 0xc811b0
0077873b  e880e0f8ff                CALL 0x007067c0
00778740  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778746  e835edc8ff                CALL 0x00407480
0077874b  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00778751  51                        PUSH ECX
00778752  8bc8                      MOV ECX,EAX
00778754  e817ac0a00                CALL 0x00823370
00778759  f30f101d68a0ba00          MOVSS XMM3,dword ptr [0x00baa068]
00778761  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778767  6a01                      PUSH 0x1
00778769  50                        PUSH EAX
0077876a  e851e0f8ff                CALL 0x007067c0
0077876f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778775  8db73c030000              LEA ESI,[EDI + 0x33c]
0077877b  6a0c                      PUSH 0xc
0077877d  83ec08                    SUB ESP,0x8
00778780  c7442404295c8f3d          MOV dword ptr [ESP + 0x4],0x3d8f5c29
00778788  c70424cdcc4c3d            MOV dword ptr [ESP],0x3d4ccccd
0077878f  56                        PUSH ESI
00778790  e8dbaff8ff                CALL 0x00703770
00778795  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0077879d  51                        PUSH ECX
0077879e  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007787a4  c704240000803f            MOV dword ptr [ESP],0x3f800000
007787ab  6a00                      PUSH 0x0
007787ad  6a02                      PUSH 0x2
007787af  6841010000                PUSH 0x141
007787b4  e827e11d00                CALL 0x009568e0
007787b9  6a3c                      PUSH 0x3c
007787bb  8bcf                      MOV ECX,EDI
007787bd  e86e2b0600                CALL 0x007db330
007787c2  0187bc130000              ADD dword ptr [EDI + 0x13bc],EAX
007787c8  eb06                      JMP 0x007787d0
007787ca  8db73c030000              LEA ESI,[EDI + 0x33c]
007787d0  6a00                      PUSH 0x0
007787d2  6a51                      PUSH 0x51
007787d4  8bcf                      MOV ECX,EDI
007787d6  e8758dffff                CALL 0x00771550
007787db  84c0                      TEST AL,AL
007787dd  7420                      JZ 0x007787ff
007787df  6a51                      PUSH 0x51
007787e1  8bcf                      MOV ECX,EDI
007787e3  e8f82e0500                CALL 0x007cb6e0
007787e8  03c0                      ADD EAX,EAX
007787ea  8bcf                      MOV ECX,EDI
007787ec  50                        PUSH EAX
007787ed  e83e2b0600                CALL 0x007db330
007787f2  0faf87bc130000            IMUL EAX,dword ptr [EDI + 0x13bc]
007787f9  8987bc130000              MOV dword ptr [EDI + 0x13bc],EAX
007787ff  6a00                      PUSH 0x0
00778801  6880000000                PUSH 0x80
00778806  8bcf                      MOV ECX,EDI
00778808  e8438dffff                CALL 0x00771550
0077880d  84c0                      TEST AL,AL
0077880f  7460                      JZ 0x00778871
00778811  6880000000                PUSH 0x80
00778816  8bcf                      MOV ECX,EDI
00778818  c78504ffffff19000000      MOV dword ptr [EBP + 0xffffff04],0x19
00778822  e8b92e0500                CALL 0x007cb6e0
00778827  83e802                    SUB EAX,0x2
0077882a  7411                      JZ 0x0077883d
0077882c  83e801                    SUB EAX,0x1
0077882f  7516                      JNZ 0x00778847
00778831  c78504ffffff08000000      MOV dword ptr [EBP + 0xffffff04],0x8
0077883b  eb0a                      JMP 0x00778847
0077883d  c78504ffffff0c000000      MOV dword ptr [EBP + 0xffffff04],0xc
00778847  8d8f7c170000              LEA ECX,[EDI + 0x177c]
0077884d  6880000000                PUSH 0x80
00778852  e8a934e5ff                CALL 0x005cbd00
00778857  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
0077885d  8bc8                      MOV ECX,EAX
0077885f  e8bc070700                CALL 0x007e9020
00778864  85c0                      TEST EAX,EAX
00778866  7509                      JNZ 0x00778871
00778868  6a01                      PUSH 0x1
0077886a  8bcf                      MOV ECX,EDI
0077886c  e8cf1f0500                CALL 0x007ca840
00778871  80bdf3feffff00            CMP byte ptr [EBP + 0xfffffef3],0x0
00778878  0f8408020000              JZ 0x00778a86
0077887e  6a00                      PUSH 0x0
00778880  6860010000                PUSH 0x160
00778885  8bcf                      MOV ECX,EDI
00778887  e8547effff                CALL 0x007706e0
0077888c  84c0                      TEST AL,AL
0077888e  0f84f2010000              JZ 0x00778a86
00778894  6860010000                PUSH 0x160
00778899  8bcf                      MOV ECX,EDI
0077889b  e820890100                CALL 0x007911c0
007788a0  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
007788a6  85c0                      TEST EAX,EAX
007788a8  0f88d8010000              JS 0x00778a86
007788ae  6a01                      PUSH 0x1
007788b0  8d88ac000000              LEA ECX,[EAX + 0xac]
007788b6  c1e105                    SHL ECX,0x5
007788b9  50                        PUSH EAX
007788ba  6a00                      PUSH 0x0
007788bc  ff3439                    PUSH dword ptr [ECX + EDI*0x1]
007788bf  8bcf                      MOV ECX,EDI
007788c1  e87a6f0100                CALL 0x0078f840
007788c6  6a00                      PUSH 0x0
007788c8  6a00                      PUSH 0x0
007788ca  ffb5c0feffff              PUSH dword ptr [EBP + 0xfffffec0]
007788d0  8bcf                      MOV ECX,EDI
007788d2  6a00                      PUSH 0x0
007788d4  6a00                      PUSH 0x0
007788d6  68da010000                PUSH 0x1da
007788db  e80068feff                CALL 0x0075f0e0
007788e0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007788e8  51                        PUSH ECX
007788e9  c704240000803f            MOV dword ptr [ESP],0x3f800000
007788f0  8bcf                      MOV ECX,EDI
007788f2  6a00                      PUSH 0x0
007788f4  6a02                      PUSH 0x2
007788f6  6a35                      PUSH 0x35
007788f8  e873dbf3ff                CALL 0x006b6470
007788fd  e85e66f7ff                CALL 0x006eef60
00778902  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778908  50                        PUSH EAX
00778909  6a00                      PUSH 0x0
0077890b  6a00                      PUSH 0x0
0077890d  6840b6c700                PUSH 0xc7b640
00778912  56                        PUSH ESI
00778913  6a61                      PUSH 0x61
00778915  68e8030000                PUSH 0x3e8
0077891a  e80102cbff                CALL 0x00428b20
0077891f  8bc8                      MOV ECX,EAX
00778921  8b10                      MOV EDX,dword ptr [EAX]
00778923  ff520c                    CALL dword ptr [EDX + 0xc]
00778926  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0077892e  8d8d54ffffff              LEA ECX,[EBP + 0xffffff54]
00778934  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
0077893c  e82fe8c8ff                CALL 0x00407170
00778941  8bf0                      MOV ESI,EAX
00778943  e89866f0ff                CALL 0x0067efe0
00778948  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00778950  8d873c030000              LEA EAX,[EDI + 0x33c]
00778956  6a00                      PUSH 0x0
00778958  f30f108dc0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec0]
00778960  51                        PUSH ECX
00778961  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00778969  f30f110c24                MOVSS dword ptr [ESP],XMM1
0077896e  56                        PUSH ESI
0077896f  51                        PUSH ECX
00778970  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778976  f30f110424                MOVSS dword ptr [ESP],XMM0
0077897b  6a08                      PUSH 0x8
0077897d  6a23                      PUSH 0x23
0077897f  50                        PUSH EAX
00778980  e8aba9f8ff                CALL 0x00703330
00778985  68d6000000                PUSH 0xd6
0077898a  8d8f08150000              LEA ECX,[EDI + 0x1508]
00778990  e85b7c1b00                CALL 0x009305f0
00778995  84c0                      TEST AL,AL
00778997  7555                      JNZ 0x007789ee
00778999  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0077899f  e85c40cbff                CALL 0x0042ca00
007789a4  68d6000000                PUSH 0xd6
007789a9  8bc8                      MOV ECX,EAX
007789ab  e86073fbff                CALL 0x0072fd10
007789b0  50                        PUSH EAX
007789b1  8d4db0                    LEA ECX,[EBP + -0x50]
007789b4  e8c7d5cbff                CALL 0x00435f80
007789b9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007789bf  e88ceec9ff                CALL 0x00417850
007789c4  8bc8                      MOV ECX,EAX
007789c6  e8850bcbff                CALL 0x00429550
007789cb  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
007789ce  84c0                      TEST AL,AL
007789d0  b82c010000                MOV EAX,0x12c
007789d5  0f45c8                    CMOVNZ ECX,EAX
007789d8  8d45b0                    LEA EAX,[EBP + -0x50]
007789db  6a01                      PUSH 0x1
007789dd  6a01                      PUSH 0x1
007789df  894db8                    MOV dword ptr [EBP + -0x48],ECX
007789e2  8d8f08150000              LEA ECX,[EDI + 0x1508]
007789e8  50                        PUSH EAX
007789e9  e832781b00                CALL 0x00930220
007789ee  6a00                      PUSH 0x0
007789f0  6a3b                      PUSH 0x3b
007789f2  8bcf                      MOV ECX,EDI
007789f4  e8e77cffff                CALL 0x007706e0
007789f9  84c0                      TEST AL,AL
007789fb  7411                      JZ 0x00778a0e
007789fd  6a04                      PUSH 0x4
007789ff  6a01                      PUSH 0x1
00778a01  6a7b                      PUSH 0x7b
00778a03  8d8f08150000              LEA ECX,[EDI + 0x1508]
00778a09  e882791b00                CALL 0x00930390
00778a0e  8bcf                      MOV ECX,EDI
00778a10  e87b46e9ff                CALL 0x0060d090
00778a15  8b07                      MOV EAX,dword ptr [EDI]
00778a17  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00778a1d  57                        PUSH EDI
00778a1e  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
00778a21  e8ea88cbff                CALL 0x00431310
00778a26  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00778a2e  e8fdcfeeff                CALL 0x00665a30
00778a33  6a1e                      PUSH 0x1e
00778a35  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00778a3b  50                        PUSH EAX
00778a3c  6a00                      PUSH 0x0
00778a3e  6801280002                PUSH 0x2002801
00778a43  51                        PUSH ECX
00778a44  8bcf                      MOV ECX,EDI
00778a46  f30f110424                MOVSS dword ptr [ESP],XMM0
00778a4b  ffd6                      CALL ESI
00778a4d  8bcf                      MOV ECX,EDI
00778a4f  e83c46e9ff                CALL 0x0060d090
00778a54  8b07                      MOV EAX,dword ptr [EDI]
00778a56  8d4d98                    LEA ECX,[EBP + -0x68]
00778a59  57                        PUSH EDI
00778a5a  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
00778a5d  e8ae88cbff                CALL 0x00431310
00778a62  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00778a6a  e8c1cfeeff                CALL 0x00665a30
00778a6f  6a1e                      PUSH 0x1e
00778a71  8d4598                    LEA EAX,[EBP + -0x68]
00778a74  50                        PUSH EAX
00778a75  6a00                      PUSH 0x0
00778a77  6801280002                PUSH 0x2002801
00778a7c  51                        PUSH ECX
00778a7d  8bcf                      MOV ECX,EDI
00778a7f  f30f110424                MOVSS dword ptr [ESP],XMM0
00778a84  ffd6                      CALL ESI
00778a86  807d9400                  CMP byte ptr [EBP + -0x6c],0x0
00778a8a  7461                      JZ 0x00778aed
00778a8c  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00778a92  e80939c9ff                CALL 0x0040c3a0
00778a97  85c0                      TEST EAX,EAX
00778a99  7426                      JZ 0x00778ac1
00778a9b  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00778aa1  e8fa38c9ff                CALL 0x0040c3a0
00778aa6  8bc8                      MOV ECX,EAX
00778aa8  e803c9caff                CALL 0x004253b0
00778aad  83f828                    CMP EAX,0x28
00778ab0  750f                      JNZ 0x00778ac1
00778ab2  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00778ab8  e8e338c9ff                CALL 0x0040c3a0
00778abd  8bc8                      MOV ECX,EAX
00778abf  eb12                      JMP 0x00778ad3
00778ac1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778ac7  e8a48ccaff                CALL 0x00421770
00778acc  83f81e                    CMP EAX,0x1e
00778acf  740c                      JZ 0x00778add
00778ad1  8bcf                      MOV ECX,EDI
00778ad3  68b0d3b100                PUSH 0xb1d3b0
00778ad8  e843330300                CALL 0x007abe20
00778add  83bf001600002f            CMP dword ptr [EDI + 0x1600],0x2f
00778ae4  7407                      JZ 0x00778aed
00778ae6  8bcf                      MOV ECX,EDI
00778ae8  e8c3ab0400                CALL 0x007c36b0
00778aed  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00778af3  c6879913000001            MOV byte ptr [EDI + 0x1399],0x1
00778afa  e801eec9ff                CALL 0x00417900
00778aff  8bc8                      MOV ECX,EAX
00778b01  e80a75f7ff                CALL 0x006f0010
00778b06  84c0                      TEST AL,AL
00778b08  0f84bf000000              JZ 0x00778bcd
00778b0e  660f6e8500ffffff          MOVD XMM0,dword ptr [EBP + 0xffffff00]
00778b16  8d95c0feffff              LEA EDX,[EBP + 0xfffffec0]
00778b1c  8bb718160000              MOV ESI,dword ptr [EDI + 0x1618]
00778b22  8d4dec                    LEA ECX,[EBP + -0x14]
00778b25  0f5bc0                    CVTDQ2PS XMM0,XMM0
00778b28  c745d40000803f            MOV dword ptr [EBP + -0x2c],0x3f800000
00778b2f  c785c0feffff9a99193f      MOV dword ptr [EBP + 0xfffffec0],0x3f19999a
00778b39  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00778b41  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00778b46  e82540caff                CALL 0x0041cb70
00778b4b  8d55d4                    LEA EDX,[EBP + -0x2c]
00778b4e  8bc8                      MOV ECX,EAX
00778b50  e82b3cc9ff                CALL 0x0040c780
00778b55  8d5594                    LEA EDX,[EBP + -0x6c]
00778b58  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
00778b5e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00778b62  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00778b6a  660f6e8500ffffff          MOVD XMM0,dword ptr [EBP + 0xffffff00]
00778b72  0f5bc0                    CVTDQ2PS XMM0,XMM0
00778b75  c785c8feffff00000040      MOV dword ptr [EBP + 0xfffffec8],0x40000000
00778b7f  c74594cdcccc3e            MOV dword ptr [EBP + -0x6c],0x3ecccccd
00778b86  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00778b8e  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00778b96  e8d53fcaff                CALL 0x0041cb70
00778b9b  8d95c8feffff              LEA EDX,[EBP + 0xfffffec8]
00778ba1  8bc8                      MOV ECX,EAX
00778ba3  e8d83bc9ff                CALL 0x0040c780
00778ba8  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
00778bb0  b9187bc500                MOV ECX,0xc57b18
00778bb5  56                        PUSH ESI
00778bb6  83ec08                    SUB ESP,0x8
00778bb9  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00778bbd  f30f114c2404              MOVSS dword ptr [ESP + 0x4],XMM1
00778bc3  f30f110424                MOVSS dword ptr [ESP],XMM0
00778bc8  e8837f2a00                CALL 0x00a20b50
00778bcd  6a00                      PUSH 0x0
00778bcf  8bcf                      MOV ECX,EDI
00778bd1  e8ea1b0500                CALL 0x007ca7c0
00778bd6  8bcf                      MOV ECX,EDI
00778bd8  e8e31f0500                CALL 0x007cabc0
00778bdd  83bfbc13000000            CMP dword ptr [EDI + 0x13bc],0x0
00778be4  7e31                      JLE 0x00778c17
00778be6  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00778bed  7528                      JNZ 0x00778c17
00778bef  8bcf                      MOV ECX,EDI
00778bf1  e82aecc9ff                CALL 0x00417820
00778bf6  85c0                      TEST EAX,EAX
00778bf8  741d                      JZ 0x00778c17
00778bfa  8b8fbc130000              MOV ECX,dword ptr [EDI + 0x13bc]
00778c00  3988bc130000              CMP dword ptr [EAX + 0x13bc],ECX
00778c06  7d0f                      JGE 0x00778c17
00778c08  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
00778c0f  7506                      JNZ 0x00778c17
00778c11  8988bc130000              MOV dword ptr [EAX + 0x13bc],ECX
00778c17  6a00                      PUSH 0x0
00778c19  68b2000000                PUSH 0xb2
00778c1e  8bcf                      MOV ECX,EDI
00778c20  e82b89ffff                CALL 0x00771550
00778c25  84c0                      TEST AL,AL
00778c27  7472                      JZ 0x00778c9b
00778c29  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
00778c2f  2500000010                AND EAX,0x10000000
00778c34  83c800                    OR EAX,0x0
00778c37  7562                      JNZ 0x00778c9b
00778c39  8d8f7c170000              LEA ECX,[EDI + 0x177c]
00778c3f  68b2000000                PUSH 0xb2
00778c44  e8b730e5ff                CALL 0x005cbd00
00778c49  68b2000000                PUSH 0xb2
00778c4e  8bcf                      MOV ECX,EDI
00778c50  8bf0                      MOV ESI,EAX
00778c52  e8892a0500                CALL 0x007cb6e0
00778c57  b903000000                MOV ECX,0x3
00778c5c  c745ec01000000            MOV dword ptr [EBP + -0x14],0x1
00778c63  2bc8                      SUB ECX,EAX
00778c65  8d95c0feffff              LEA EDX,[EBP + 0xfffffec0]
00778c6b  898dc0feffff              MOV dword ptr [EBP + 0xfffffec0],ECX
00778c71  8d4dec                    LEA ECX,[EBP + -0x14]
00778c74  e8073fcaff                CALL 0x0041cb80
00778c79  8bce                      MOV ECX,ESI
00778c7b  ff30                      PUSH dword ptr [EAX]
00778c7d  e89e030700                CALL 0x007e9020
00778c82  85c0                      TEST EAX,EAX
00778c84  7515                      JNZ 0x00778c9b
00778c86  50                        PUSH EAX
00778c87  6aff                      PUSH -0x1
00778c89  6a0b                      PUSH 0xb
00778c8b  6a28                      PUSH 0x28
00778c8d  8d85d6feffff              LEA EAX,[EBP + 0xfffffed6]
00778c93  8bcf                      MOV ECX,EDI
00778c95  50                        PUSH EAX
00778c96  e835ade3ff                CALL 0x005b39d0
00778c9b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00778ca2  0f8545030000              JNZ 0x00778fed
00778ca8  83bfc01300001e            CMP dword ptr [EDI + 0x13c0],0x1e
00778caf  0f8538030000              JNZ 0x00778fed
00778cb5  80bdf3feffff00            CMP byte ptr [EBP + 0xfffffef3],0x0
00778cbc  0f842b030000              JZ 0x00778fed
00778cc2  80bf9813000000            CMP byte ptr [EDI + 0x1398],0x0
00778cc9  7415                      JZ 0x00778ce0
00778ccb  8d4f48                    LEA ECX,[EDI + 0x48]
00778cce  6834aeb600                PUSH 0xb6ae34
00778cd3  e8f817c9ff                CALL 0x0040a4d0
00778cd8  84c0                      TEST AL,AL
00778cda  0f850d030000              JNZ 0x00778fed
00778ce0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00778ce8  51                        PUSH ECX
00778ce9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00778cf0  8bcf                      MOV ECX,EDI
00778cf2  6a00                      PUSH 0x0
00778cf4  6a02                      PUSH 0x2
00778cf6  6853020000                PUSH 0x253
00778cfb  e870d7f3ff                CALL 0x006b6470
00778d00  8d8f70170000              LEA ECX,[EDI + 0x1770]
00778d06  6802010000                PUSH 0x102
00778d0b  e8f02fe5ff                CALL 0x005cbd00
00778d10  8bf0                      MOV ESI,EAX
00778d12  8bce                      MOV ECX,ESI
00778d14  89b5e8feffff              MOV dword ptr [EBP + 0xfffffee8],ESI
00778d1a  e861030700                CALL 0x007e9080
00778d1f  d80d30a6ba00              FMUL dword ptr [0x00baa630]
00778d25  8bce                      MOV ECX,ESI
00778d27  d9e8                      FLD1
00778d29  dee9                      FSUBP
00778d2b  d99f54150000              FSTP dword ptr [EDI + 0x1554]
00778d31  e84a030700                CALL 0x007e9080
00778d36  d80df8a1ba00              FMUL dword ptr [0x00baa1f8]
00778d3c  8bce                      MOV ECX,ESI
00778d3e  d82554a1ba00              FSUB dword ptr [0x00baa154]
00778d44  d99f4c150000              FSTP dword ptr [EDI + 0x154c]
00778d4a  e831030700                CALL 0x007e9080
00778d4f  d80d28a5ba00              FMUL dword ptr [0x00baa528]
00778d55  8bce                      MOV ECX,ESI
00778d57  d82580a3ba00              FSUB dword ptr [0x00baa380]
00778d5d  d99f50150000              FSTP dword ptr [EDI + 0x1550]
00778d63  e818030700                CALL 0x007e9080
00778d68  d80d00aaba00              FMUL dword ptr [0x00baaa00]
00778d6e  8bce                      MOV ECX,ESI
00778d70  d82550a9ba00              FSUB dword ptr [0x00baa950]
00778d76  d99f58150000              FSTP dword ptr [EDI + 0x1558]
00778d7c  e8ff020700                CALL 0x007e9080
00778d81  d80dd0a2ba00              FMUL dword ptr [0x00baa2d0]
00778d87  8bce                      MOV ECX,ESI
00778d89  d825d4a1ba00              FSUB dword ptr [0x00baa1d4]
00778d8f  d99f5c150000              FSTP dword ptr [EDI + 0x155c]
00778d95  e8e6020700                CALL 0x007e9080
00778d9a  d80d30a6ba00              FMUL dword ptr [0x00baa630]
00778da0  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00778da6  d9e8                      FLD1
00778da8  dee9                      FSUBP
00778daa  6a3e                      PUSH 0x3e
00778dac  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
00778db2  d99f60150000              FSTP dword ptr [EDI + 0x1560]
00778db8  e8d3010700                CALL 0x007e8f90
00778dbd  8bc8                      MOV ECX,EAX
00778dbf  c745fc11000000            MOV dword ptr [EBP + -0x4],0x11
00778dc6  e825030700                CALL 0x007e90f0
00778dcb  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00778dd1  8987ec030000              MOV dword ptr [EDI + 0x3ec],EAX
00778dd7  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00778dde  e81d34c9ff                CALL 0x0040c200
00778de3  6a01                      PUSH 0x1
00778de5  56                        PUSH ESI
00778de6  8bcf                      MOV ECX,EDI
00778de8  e8b3fae4ff                CALL 0x005c88a0
00778ded  8bcf                      MOV ECX,EDI
00778def  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
00778df9  e8c289ffff                CALL 0x007717c0
00778dfe  8bc8                      MOV ECX,EAX
00778e00  83e901                    SUB ECX,0x1
00778e03  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
00778e09  0f8884000000              JS 0x00778e93
00778e0f  8db1b0050000              LEA ESI,[ECX + 0x5b0]
00778e15  8d34b7                    LEA ESI,[EDI + ESI*0x4]
00778e18  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00778e20  8b06                      MOV EAX,dword ptr [ESI]
00778e22  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
00778e28  85c0                      TEST EAX,EAX
00778e2a  7427                      JZ 0x00778e53
00778e2c  50                        PUSH EAX
00778e2d  8bcf                      MOV ECX,EDI
00778e2f  e8fc4c0300                CALL 0x007adb30
00778e34  ffb5c0feffff              PUSH dword ptr [EBP + 0xfffffec0]
00778e3a  8bcf                      MOV ECX,EDI
00778e3c  c70600000000              MOV dword ptr [ESI],0x0
00778e42  e859450300                CALL 0x007ad3a0
00778e47  ff8504ffffff              INC dword ptr [EBP + 0xffffff04]
00778e4d  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
00778e53  49                        DEC ECX
00778e54  83ee04                    SUB ESI,0x4
00778e57  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
00778e5d  85c9                      TEST ECX,ECX
00778e5f  79bf                      JNS 0x00778e20
00778e61  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
00778e67  85f6                      TEST ESI,ESI
00778e69  7e28                      JLE 0x00778e93
00778e6b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00778e70  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778e76  e8b514cbff                CALL 0x0042a330
00778e7b  6a00                      PUSH 0x0
00778e7d  6a00                      PUSH 0x0
00778e7f  8bc8                      MOV ECX,EAX
00778e81  e81aaefbff                CALL 0x00733ca0
00778e86  50                        PUSH EAX
00778e87  8bcf                      MOV ECX,EDI
00778e89  e8a28effff                CALL 0x00771d30
00778e8e  83ee01                    SUB ESI,0x1
00778e91  75dd                      JNZ 0x00778e70
00778e93  8bcf                      MOV ECX,EDI
00778e95  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
00778e9f  e89c450300                CALL 0x007ad440
00778ea4  8bf0                      MOV ESI,EAX
00778ea6  83ee01                    SUB ESI,0x1
00778ea9  7847                      JS 0x00778ef2
00778eab  8d86f4020000              LEA EAX,[ESI + 0x2f4]
00778eb1  8d04c7                    LEA EAX,[EDI + EAX*0x8]
00778eb4  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00778eba  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00778ec0  833800                    CMP dword ptr [EAX],0x0
00778ec3  741f                      JZ 0x00778ee4
00778ec5  8bc8                      MOV ECX,EAX
00778ec7  e874a7fdff                CALL 0x00753640
00778ecc  84c0                      TEST AL,AL
00778ece  750e                      JNZ 0x00778ede
00778ed0  56                        PUSH ESI
00778ed1  8bcf                      MOV ECX,EDI
00778ed3  e878b90200                CALL 0x007a4850
00778ed8  ff85ecfeffff              INC dword ptr [EBP + 0xfffffeec]
00778ede  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
00778ee4  83e808                    SUB EAX,0x8
00778ee7  83ee01                    SUB ESI,0x1
00778eea  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
00778ef0  79ce                      JNS 0x00778ec0
00778ef2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778ef8  e863e9c9ff                CALL 0x00417860
00778efd  68fb000000                PUSH 0xfb
00778f02  8bc8                      MOV ECX,EAX
00778f04  e837fad7ff                CALL 0x004f8940
00778f09  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778f0f  8885fffeffff              MOV byte ptr [EBP + 0xfffffeff],AL
00778f15  e846e9c9ff                CALL 0x00417860
00778f1a  68fc000000                PUSH 0xfc
00778f1f  8bc8                      MOV ECX,EAX
00778f21  e81afad7ff                CALL 0x004f8940
00778f26  8a8dfffeffff              MOV CL,byte ptr [EBP + 0xfffffeff]
00778f2c  8885fefeffff              MOV byte ptr [EBP + 0xfffffefe],AL
00778f32  84c9                      TEST CL,CL
00778f34  7414                      JZ 0x00778f4a
00778f36  84c0                      TEST AL,AL
00778f38  7410                      JZ 0x00778f4a
00778f3a  32c0                      XOR AL,AL
00778f3c  32c9                      XOR CL,CL
00778f3e  8885fefeffff              MOV byte ptr [EBP + 0xfffffefe],AL
00778f44  888dfffeffff              MOV byte ptr [EBP + 0xfffffeff],CL
00778f4a  83bdecfeffff00            CMP dword ptr [EBP + 0xfffffeec],0x0
00778f51  0f8e8a000000              JLE 0x00778fe1
00778f57  84c9                      TEST CL,CL
00778f59  753f                      JNZ 0x00778f9a
00778f5b  84c0                      TEST AL,AL
00778f5d  7511                      JNZ 0x00778f70
00778f5f  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00778f65  6a02                      PUSH 0x2
00778f67  e8b4000700                CALL 0x007e9020
00778f6c  85c0                      TEST EAX,EAX
00778f6e  742a                      JZ 0x00778f9a
00778f70  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778f76  e8b513cbff                CALL 0x0042a330
00778f7b  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00778f81  8bf0                      MOV ESI,EAX
00778f83  e868010700                CALL 0x007e90f0
00778f88  50                        PUSH EAX
00778f89  8bce                      MOV ECX,ESI
00778f8b  e870b9fbff                CALL 0x00734900
00778f90  50                        PUSH EAX
00778f91  8bcf                      MOV ECX,EDI
00778f93  e898ac0200                CALL 0x007a3c30
00778f98  eb2e                      JMP 0x00778fc8
00778f9a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00778fa0  e88b13cbff                CALL 0x0042a330
00778fa5  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
00778fab  8bf0                      MOV ESI,EAX
00778fad  e83e010700                CALL 0x007e90f0
00778fb2  6a00                      PUSH 0x0
00778fb4  6a01                      PUSH 0x1
00778fb6  6a01                      PUSH 0x1
00778fb8  50                        PUSH EAX
00778fb9  8bce                      MOV ECX,ESI
00778fbb  e8b0b8fbff                CALL 0x00734870
00778fc0  50                        PUSH EAX
00778fc1  8bcf                      MOV ECX,EDI
00778fc3  e848ac0200                CALL 0x007a3c10
00778fc8  83adecfeffff01            SUB dword ptr [EBP + 0xfffffeec],0x1
00778fcf  8a85fefeffff              MOV AL,byte ptr [EBP + 0xfffffefe]
00778fd5  8a8dfffeffff              MOV CL,byte ptr [EBP + 0xfffffeff]
00778fdb  0f8576ffffff              JNZ 0x00778f57
00778fe1  6834aeb600                PUSH 0xb6ae34
00778fe6  8bcf                      MOV ECX,EDI
00778fe8  e8332e0300                CALL 0x007abe20
00778fed  b001                      MOV AL,0x1
00778fef  eb40                      JMP 0x00779031
00778ff1  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00778ff6  8d95c0feffff              LEA EDX,[EBP + 0xfffffec0]
00778ffc  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00779004  8d4dec                    LEA ECX,[EBP + -0x14]
00779007  c745ec02000000            MOV dword ptr [EBP + -0x14],0x2
0077900e  f30f2cc0                  CVTTSS2SI EAX,XMM0
00779012  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
00779018  e8433bcaff                CALL 0x0041cb60
0077901d  8b00                      MOV EAX,dword ptr [EAX]
0077901f  8bc8                      MOV ECX,EAX
00779021  c1e104                    SHL ECX,0x4
00779024  2bc8                      SUB ECX,EAX
00779026  c1e102                    SHL ECX,0x2
00779029  898fbc130000              MOV dword ptr [EDI + 0x13bc],ECX
0077902f  32c0                      XOR AL,AL
00779031  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00779034  64890d00000000            MOV dword ptr FS:[0x0],ECX
0077903b  59                        POP ECX
0077903c  5f                        POP EDI
0077903d  5e                        POP ESI
0077903e  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00779041  33cd                      XOR ECX,EBP
00779043  e8e3603700                CALL 0x00aef12b
00779048  8be5                      MOV ESP,EBP
0077904a  5d                        POP EBP
0077904b  c21400                    RET 0x14
0077904e  684c11c800                PUSH 0xc8114c
00779053  e845623700                CALL 0x00aef29d
00779058  83c404                    ADD ESP,0x4
0077905b  833d4c11c800ff            CMP dword ptr [0x00c8114c],-0x1
00779062  0f8570e2ffff              JNZ 0x007772d8
00779068  c745fc0d000000            MOV dword ptr [EBP + -0x4],0xd
0077906f  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
00779077  f30f101d24a3ba00          MOVSS XMM3,dword ptr [0x00baa324]
0077907f  0f28ca                    MOVAPS XMM1,XMM2
00779082  51                        PUSH ECX
00779083  b95011c800                MOV ECX,0xc81150
00779088  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077908f  e85ca8caff                CALL 0x004238f0
00779094  684c11c800                PUSH 0xc8114c
00779099  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
007790a0  e8ae613700                CALL 0x00aef253
007790a5  83c404                    ADD ESP,0x4
007790a8  e92be2ffff                JMP 0x007772d8
007790ad  687c11c800                PUSH 0xc8117c
007790b2  e8e6613700                CALL 0x00aef29d
007790b7  83c404                    ADD ESP,0x4
007790ba  833d7c11c800ff            CMP dword ptr [0x00c8117c],-0x1
007790c1  0f85f3eaffff              JNZ 0x00777bba
007790c7  c745fc0e000000            MOV dword ptr [EBP + -0x4],0xe
007790ce  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
007790d6  f30f101d24a3ba00          MOVSS XMM3,dword ptr [0x00baa324]
007790de  0f28ca                    MOVAPS XMM1,XMM2
007790e1  51                        PUSH ECX
007790e2  b98011c800                MOV ECX,0xc81180
007790e7  c704240000803f            MOV dword ptr [ESP],0x3f800000
007790ee  e8fda7caff                CALL 0x004238f0
007790f3  687c11c800                PUSH 0xc8117c
007790f8  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
007790ff  e84f613700                CALL 0x00aef253
00779104  83c404                    ADD ESP,0x4
00779107  e9aeeaffff                JMP 0x00777bba
0077910c  68ac11c800                PUSH 0xc811ac
00779111  e887613700                CALL 0x00aef29d
00779116  83c404                    ADD ESP,0x4
00779119  833dac11c800ff            CMP dword ptr [0x00c811ac],-0x1
00779120  0f8500f6ffff              JNZ 0x00778726
00779126  83ec0c                    SUB ESP,0xc
00779129  c745fc10000000            MOV dword ptr [EBP + -0x4],0x10
00779130  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00779138  b9b011c800                MOV ECX,0xc811b0
0077913d  0f28d8                    MOVAPS XMM3,XMM0
00779140  0f28d0                    MOVAPS XMM2,XMM0
00779143  0f28c8                    MOVAPS XMM1,XMM0
00779146  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
0077914e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00779156  c704240000803f            MOV dword ptr [ESP],0x3f800000
0077915d  e88e1cd3ff                CALL 0x004aadf0
00779162  68ac11c800                PUSH 0xc811ac
00779167  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0077916e  e8e0603700                CALL 0x00aef253
00779173  83c404                    ADD ESP,0x4
00779176  e9abf5ffff                JMP 0x00778726
