; J460 NPC AI 0x0048f110 AI_0048f110
; types=403
; identities=403.0.0
; entry=0048f110
0048f110  53                        PUSH EBX
0048f111  8bdc                      MOV EBX,ESP
0048f113  83ec08                    SUB ESP,0x8
0048f116  83e4f8                    AND ESP,0xfffffff8
0048f119  83c404                    ADD ESP,0x4
0048f11c  55                        PUSH EBP
0048f11d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0048f120  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0048f124  8bec                      MOV EBP,ESP
0048f126  6aff                      PUSH -0x1
0048f128  68b62daf00                PUSH 0xaf2db6
0048f12d  64a100000000              MOV EAX,FS:[0x0]
0048f133  50                        PUSH EAX
0048f134  53                        PUSH EBX
0048f135  81ecc0000000              SUB ESP,0xc0
0048f13b  a1b493bf00                MOV EAX,[0x00bf93b4]
0048f140  33c5                      XOR EAX,EBP
0048f142  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0048f145  56                        PUSH ESI
0048f146  57                        PUSH EDI
0048f147  50                        PUSH EAX
0048f148  8d45f4                    LEA EAX,[EBP + -0xc]
0048f14b  64a300000000              MOV FS:[0x0],EAX
0048f151  8bf9                      MOV EDI,ECX
0048f153  897da8                    MOV dword ptr [EBP + -0x58],EDI
0048f156  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0048f15d  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0048f160  894598                    MOV dword ptr [EBP + -0x68],EAX
0048f163  757c                      JNZ 0x0048f1e1
0048f165  0f2815e0baba00            MOVAPS XMM2,xmmword ptr [0x00babae0]
0048f16c  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
0048f172  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0048f17c  0f57c9                    XORPS XMM1,XMM1
0048f17f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048f189  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0048f193  81c7e4010000              ADD EDI,0x1e4
0048f199  c78550ffffffcdcc4c3f      MOV dword ptr [EBP + 0xffffff50],0x3f4ccccd
0048f1a3  c78554ffffffcdcc4c3f      MOV dword ptr [EBP + 0xffffff54],0x3f4ccccd
0048f1ad  c78558ffffffcdcc4c3f      MOV dword ptr [EBP + 0xffffff58],0x3f4ccccd
0048f1b7  3bf8                      CMP EDI,EAX
0048f1b9  0f8494140000              JZ 0x00490653
0048f1bf  f30f7e8550ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff50]
0048f1c7  8b8558ffffff              MOV EAX,dword ptr [EBP + 0xffffff58]
0048f1cd  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0048f1d2  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
0048f1d5  894728                    MOV dword ptr [EDI + 0x28],EAX
0048f1d8  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
0048f1dc  e972140000                JMP 0x00490653
0048f1e1  ff8710040000              INC dword ptr [EDI + 0x410]
0048f1e7  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
0048f1ee  c6857cffffff00            MOV byte ptr [EBP + 0xffffff7c],0x0
0048f1f5  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
0048f1fc  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
0048f203  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
0048f20a  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0048f211  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0048f217  ff7720                    PUSH dword ptr [EDI + 0x20]
0048f21a  8bcf                      MOV ECX,EDI
0048f21c  50                        PUSH EAX
0048f21d  e8ae1b2400                CALL 0x006d0dd0
0048f222  80bd6cffffff00            CMP byte ptr [EBP + 0xffffff6c],0x0
0048f229  b101                      MOV CL,0x1
0048f22b  884d9f                    MOV byte ptr [EBP + -0x61],CL
0048f22e  888d7cffffff              MOV byte ptr [EBP + 0xffffff7c],CL
0048f234  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
0048f237  894d8c                    MOV dword ptr [EBP + -0x74],ECX
0048f23a  894d80                    MOV dword ptr [EBP + -0x80],ECX
0048f23d  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0048f240  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0048f243  894d84                    MOV dword ptr [EBP + -0x7c],ECX
0048f246  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0048f249  894588                    MOV dword ptr [EBP + -0x78],EAX
0048f24c  751c                      JNZ 0x0048f26a
0048f24e  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0048f252  b101                      MOV CL,0x1
0048f254  8b9570ffffff              MOV EDX,dword ptr [EBP + 0xffffff70]
0048f25a  6a00                      PUSH 0x0
0048f25c  6a00                      PUSH 0x0
0048f25e  e84d565d00                CALL 0x00a648b0
0048f263  83c408                    ADD ESP,0x8
0048f266  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0048f26a  a17816c700                MOV EAX,[0x00c71678]
0048f26f  6a01                      PUSH 0x1
0048f271  6a00                      PUSH 0x0
0048f273  6aff                      PUSH -0x1
0048f275  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048f27b  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0048f281  6aff                      PUSH -0x1
0048f283  68d4000000                PUSH 0xd4
0048f288  81c118120000              ADD ECX,0x1218
0048f28e  50                        PUSH EAX
0048f28f  e8ccbcf8ff                CALL 0x0041af60
0048f294  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0048f298  33d2                      XOR EDX,EDX
0048f29a  8bb578ffffff              MOV ESI,dword ptr [EBP + 0xffffff78]
0048f2a0  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
0048f2a6  8955b8                    MOV dword ptr [EBP + -0x48],EDX
0048f2a9  8975b4                    MOV dword ptr [EBP + -0x4c],ESI
0048f2ac  894590                    MOV dword ptr [EBP + -0x70],EAX
0048f2af  85f6                      TEST ESI,ESI
0048f2b1  745d                      JZ 0x0048f310
0048f2b3  8bf8                      MOV EDI,EAX
0048f2b5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0048f2c0  8b0497                    MOV EAX,dword ptr [EDI + EDX*0x4]
0048f2c3  8b8068010000              MOV EAX,dword ptr [EAX + 0x168]
0048f2c9  2500000020                AND EAX,0x20000000
0048f2ce  83c800                    OR EAX,0x0
0048f2d1  742f                      JZ 0x0048f302
0048f2d3  3bd6                      CMP EDX,ESI
0048f2d5  7212                      JC 0x0048f2e9
0048f2d7  6864b7b100                PUSH 0xb1b764
0048f2dc  6a10                      PUSH 0x10
0048f2de  e8dd1f5800                CALL 0x00a112c0
0048f2e3  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
0048f2e6  83c408                    ADD ESP,0x8
0048f2e9  4e                        DEC ESI
0048f2ea  8bca                      MOV ECX,EDX
0048f2ec  3bd6                      CMP EDX,ESI
0048f2ee  730c                      JNC 0x0048f2fc
0048f2f0  8b448f04                  MOV EAX,dword ptr [EDI + ECX*0x4 + 0x4]
0048f2f4  89048f                    MOV dword ptr [EDI + ECX*0x4],EAX
0048f2f7  41                        INC ECX
0048f2f8  3bce                      CMP ECX,ESI
0048f2fa  72f4                      JC 0x0048f2f0
0048f2fc  89b578ffffff              MOV dword ptr [EBP + 0xffffff78],ESI
0048f302  42                        INC EDX
0048f303  8955b8                    MOV dword ptr [EBP + -0x48],EDX
0048f306  3bd6                      CMP EDX,ESI
0048f308  72b6                      JC 0x0048f2c0
0048f30a  8b7da8                    MOV EDI,dword ptr [EBP + -0x58]
0048f30d  8975b4                    MOV dword ptr [EBP + -0x4c],ESI
0048f310  33f6                      XOR ESI,ESI
0048f312  3975a4                    CMP dword ptr [EBP + -0x5c],ESI
0048f315  767f                      JBE 0x0048f396
0048f317  a17816c700                MOV EAX,[0x00c71678]
0048f31c  8bb814660200              MOV EDI,dword ptr [EAX + 0x26614]
0048f322  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
0048f325  8b14b0                    MOV EDX,dword ptr [EAX + ESI*0x4]
0048f328  83ff02                    CMP EDI,0x2
0048f32b  7c06                      JL 0x0048f333
0048f32d  837a2801                  CMP dword ptr [EDX + 0x28],0x1
0048f331  7445                      JZ 0x0048f378
0048f333  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
0048f336  8d41f6                    LEA EAX,[ECX + -0xa]
0048f339  3ddd030000                CMP EAX,0x3dd
0048f33e  774d                      JA 0x0048f38d
0048f340  83f921                    CMP ECX,0x21
0048f343  7448                      JZ 0x0048f38d
0048f345  83f911                    CMP ECX,0x11
0048f348  7443                      JZ 0x0048f38d
0048f34a  81f924010000              CMP ECX,0x124
0048f350  743b                      JZ 0x0048f38d
0048f352  81f975030000              CMP ECX,0x375
0048f358  7506                      JNZ 0x0048f360
0048f35a  837a2c0a                  CMP dword ptr [EDX + 0x2c],0xa
0048f35e  eb16                      JMP 0x0048f376
0048f360  81f9c0030000              CMP ECX,0x3c0
0048f366  7425                      JZ 0x0048f38d
0048f368  81f9c5030000              CMP ECX,0x3c5
0048f36e  741d                      JZ 0x0048f38d
0048f370  81f9f5000000              CMP ECX,0xf5
0048f376  7415                      JZ 0x0048f38d
0048f378  80ba7301000000            CMP byte ptr [EDX + 0x173],0x0
0048f37f  750c                      JNZ 0x0048f38d
0048f381  817a28c3030000            CMP dword ptr [EDX + 0x28],0x3c3
0048f388  7403                      JZ 0x0048f38d
0048f38a  ff45ac                    INC dword ptr [EBP + -0x54]
0048f38d  46                        INC ESI
0048f38e  3b75a4                    CMP ESI,dword ptr [EBP + -0x5c]
0048f391  728f                      JC 0x0048f322
0048f393  8b7da8                    MOV EDI,dword ptr [EBP + -0x58]
0048f396  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048f39a  0f8489000000              JZ 0x0048f429
0048f3a0  68d0d9b100                PUSH 0xb1d9d0
0048f3a5  8d4f78                    LEA ECX,[EDI + 0x78]
0048f3a8  e823baf7ff                CALL 0x0040add0
0048f3ad  84c0                      TEST AL,AL
0048f3af  7478                      JZ 0x0048f429
0048f3b1  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0048f3b9  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0048f3bf  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0048f3c4  83f812                    CMP EAX,0x12
0048f3c7  750a                      JNZ 0x0048f3d3
0048f3c9  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0048f3d1  eb0d                      JMP 0x0048f3e0
0048f3d3  83f813                    CMP EAX,0x13
0048f3d6  750d                      JNZ 0x0048f3e5
0048f3d8  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0048f3e0  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0048f3e5  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048f3eb  8d4dbc                    LEA ECX,[EBP + -0x44]
0048f3ee  c745bccc030000            MOV dword ptr [EBP + -0x44],0x3cc
0048f3f5  e886734c00                CALL 0x00956780
0048f3fa  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0048f3ff  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048f405  83ec08                    SUB ESP,0x8
0048f408  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048f410  f30f110424                MOVSS dword ptr [ESP],XMM0
0048f415  6a00                      PUSH 0x0
0048f417  6a02                      PUSH 0x2
0048f419  51                        PUSH ECX
0048f41a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048f421  ff75bc                    PUSH dword ptr [EBP + -0x44]
0048f424  e807e84900                CALL 0x0092dc30
0048f429  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0048f42f  8b0ddc87b100              MOV ECX,dword ptr [0x00b187dc]
0048f435  f30f100de0a3ba00          MOVSS XMM1,dword ptr [0x00baa3e0]
0048f43d  894db8                    MOV dword ptr [EBP + -0x48],ECX
0048f440  83f803                    CMP EAX,0x3
0048f443  0f859c000000              JNZ 0x0048f4e5
0048f449  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048f44c  85f6                      TEST ESI,ESI
0048f44e  744b                      JZ 0x0048f49b
0048f450  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048f454  8bc6                      MOV EAX,ESI
0048f456  7202                      JC 0x0048f45a
0048f458  8b06                      MOV EAX,dword ptr [ESI]
0048f45a  b954bcb100                MOV ECX,0xb1bc54
0048f45f  90                        NOP
0048f460  8a10                      MOV DL,byte ptr [EAX]
0048f462  3a11                      CMP DL,byte ptr [ECX]
0048f464  751a                      JNZ 0x0048f480
0048f466  84d2                      TEST DL,DL
0048f468  7412                      JZ 0x0048f47c
0048f46a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048f46d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048f470  750e                      JNZ 0x0048f480
0048f472  83c002                    ADD EAX,0x2
0048f475  83c102                    ADD ECX,0x2
0048f478  84d2                      TEST DL,DL
0048f47a  75e4                      JNZ 0x0048f460
0048f47c  33c0                      XOR EAX,EAX
0048f47e  eb05                      JMP 0x0048f485
0048f480  1bc0                      SBB EAX,EAX
0048f482  83c801                    OR EAX,0x1
0048f485  85c0                      TEST EAX,EAX
0048f487  7512                      JNZ 0x0048f49b
0048f489  384634                    CMP byte ptr [ESI + 0x34],AL
0048f48c  742e                      JZ 0x0048f4bc
0048f48e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048f494  8d7748                    LEA ESI,[EDI + 0x48]
0048f497  7523                      JNZ 0x0048f4bc
0048f499  eb03                      JMP 0x0048f49e
0048f49b  8d7748                    LEA ESI,[EDI + 0x48]
0048f49e  6a01                      PUSH 0x1
0048f4a0  6854bcb100                PUSH 0xb1bc54
0048f4a5  8bce                      MOV ECX,ESI
0048f4a7  e824b1f7ff                CALL 0x0040a5d0
0048f4ac  84c0                      TEST AL,AL
0048f4ae  740c                      JZ 0x0048f4bc
0048f4b0  8d4e30                    LEA ECX,[ESI + 0x30]
0048f4b3  e8f8acf7ff                CALL 0x0040a1b0
0048f4b8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048f4bc  81bf1004000096000000      CMP dword ptr [EDI + 0x410],0x96
0048f4c6  0f8efe100000              JLE 0x004905ca
0048f4cc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048f4d6  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0048f4e0  e9e5100000                JMP 0x004905ca
0048f4e5  83f80d                    CMP EAX,0xd
0048f4e8  0f85a9020000              JNZ 0x0048f797
0048f4ee  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048f4f1  85c0                      TEST EAX,EAX
0048f4f3  740a                      JZ 0x0048f4ff
0048f4f5  83781410                  CMP dword ptr [EAX + 0x14],0x10
0048f4f9  7209                      JC 0x0048f504
0048f4fb  8b00                      MOV EAX,dword ptr [EAX]
0048f4fd  eb05                      JMP 0x0048f504
0048f4ff  b8eca4b100                MOV EAX,0xb1a4ec
0048f504  b920d4b100                MOV ECX,0xb1d420
0048f509  0f1f8000000000            NOP dword ptr [EAX]
0048f510  8a10                      MOV DL,byte ptr [EAX]
0048f512  3a11                      CMP DL,byte ptr [ECX]
0048f514  751a                      JNZ 0x0048f530
0048f516  84d2                      TEST DL,DL
0048f518  7412                      JZ 0x0048f52c
0048f51a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048f51d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048f520  750e                      JNZ 0x0048f530
0048f522  83c002                    ADD EAX,0x2
0048f525  83c102                    ADD ECX,0x2
0048f528  84d2                      TEST DL,DL
0048f52a  75e4                      JNZ 0x0048f510
0048f52c  33c0                      XOR EAX,EAX
0048f52e  eb05                      JMP 0x0048f535
0048f530  1bc0                      SBB EAX,EAX
0048f532  83c801                    OR EAX,0x1
0048f535  85c0                      TEST EAX,EAX
0048f537  7441                      JZ 0x0048f57a
0048f539  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048f53f  8d4dbc                    LEA ECX,[EBP + -0x44]
0048f542  c745bca1010000            MOV dword ptr [EBP + -0x44],0x1a1
0048f549  e832724c00                CALL 0x00956780
0048f54e  83ec08                    SUB ESP,0x8
0048f551  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048f557  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048f55f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048f566  6a00                      PUSH 0x0
0048f568  6a02                      PUSH 0x2
0048f56a  51                        PUSH ECX
0048f56b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048f572  ff75bc                    PUSH dword ptr [EBP + -0x44]
0048f575  e8b6e64900                CALL 0x0092dc30
0048f57a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048f57d  85f6                      TEST ESI,ESI
0048f57f  744a                      JZ 0x0048f5cb
0048f581  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048f585  8bc6                      MOV EAX,ESI
0048f587  7202                      JC 0x0048f58b
0048f589  8b06                      MOV EAX,dword ptr [ESI]
0048f58b  b920d4b100                MOV ECX,0xb1d420
0048f590  8a10                      MOV DL,byte ptr [EAX]
0048f592  3a11                      CMP DL,byte ptr [ECX]
0048f594  751a                      JNZ 0x0048f5b0
0048f596  84d2                      TEST DL,DL
0048f598  7412                      JZ 0x0048f5ac
0048f59a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048f59d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048f5a0  750e                      JNZ 0x0048f5b0
0048f5a2  83c002                    ADD EAX,0x2
0048f5a5  83c102                    ADD ECX,0x2
0048f5a8  84d2                      TEST DL,DL
0048f5aa  75e4                      JNZ 0x0048f590
0048f5ac  33c0                      XOR EAX,EAX
0048f5ae  eb05                      JMP 0x0048f5b5
0048f5b0  1bc0                      SBB EAX,EAX
0048f5b2  83c801                    OR EAX,0x1
0048f5b5  85c0                      TEST EAX,EAX
0048f5b7  7512                      JNZ 0x0048f5cb
0048f5b9  384634                    CMP byte ptr [ESI + 0x34],AL
0048f5bc  742e                      JZ 0x0048f5ec
0048f5be  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048f5c4  8d7748                    LEA ESI,[EDI + 0x48]
0048f5c7  7523                      JNZ 0x0048f5ec
0048f5c9  eb03                      JMP 0x0048f5ce
0048f5cb  8d7748                    LEA ESI,[EDI + 0x48]
0048f5ce  6a01                      PUSH 0x1
0048f5d0  6820d4b100                PUSH 0xb1d420
0048f5d5  8bce                      MOV ECX,ESI
0048f5d7  e8f4aff7ff                CALL 0x0040a5d0
0048f5dc  84c0                      TEST AL,AL
0048f5de  740c                      JZ 0x0048f5ec
0048f5e0  8d4e30                    LEA ECX,[ESI + 0x30]
0048f5e3  e8c8abf7ff                CALL 0x0040a1b0
0048f5e8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048f5ec  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0048f5f4  b801000000                MOV EAX,0x1
0048f5f9  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0048f601  b902000000                MOV ECX,0x2
0048f606  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0048f60d  0f47c1                    CMOVA EAX,ECX
0048f610  3945ac                    CMP dword ptr [EBP + -0x54],EAX
0048f613  7c0d                      JL 0x0048f622
0048f615  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0048f61c  0f847b0f0000              JZ 0x0049059d
0048f622  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048f626  0f84800f0000              JZ 0x004905ac
0048f62c  6820d4b100                PUSH 0xb1d420
0048f631  8d4f78                    LEA ECX,[EDI + 0x78]
0048f634  e897b7f7ff                CALL 0x0040add0
0048f639  84c0                      TEST AL,AL
0048f63b  0f845c0f0000              JZ 0x0049059d
0048f641  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0048f648  740a                      JZ 0x0048f654
0048f64a  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048f654  e807f92500                CALL 0x006eef60
0048f659  660f6ec0                  MOVD XMM0,EAX
0048f65d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048f661  c1e81f                    SHR EAX,0x1f
0048f664  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048f66d  660f5ac0                  CVTPD2PS XMM0,XMM0
0048f671  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048f679  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048f681  f30f58c0                  ADDSS XMM0,XMM0
0048f685  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0048f68a  e891def8ff                CALL 0x0041d520
0048f68f  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0048f694  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0048f699  e8a2def8ff                CALL 0x0041d540
0048f69e  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
0048f6a3  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
0048f6ab  a17816c700                MOV EAX,[0x00c71678]
0048f6b0  f30f59157ca9ba00          MULSS XMM2,dword ptr [0x00baa97c]
0048f6b8  6a00                      PUSH 0x0
0048f6ba  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048f6c2  6a00                      PUSH 0x0
0048f6c4  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0048f6cc  6a00                      PUSH 0x0
0048f6ce  51                        PUSH ECX
0048f6cf  c7042400000000            MOV dword ptr [ESP],0x0
0048f6d6  8d4da0                    LEA ECX,[EBP + -0x60]
0048f6d9  51                        PUSH ECX
0048f6da  8d4db0                    LEA ECX,[EBP + -0x50]
0048f6dd  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0048f6e2  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
0048f6e7  51                        PUSH ECX
0048f6e8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048f6ee  e82d3e3800                CALL 0x00813520
0048f6f3  837d9801                  CMP dword ptr [EBP + -0x68],0x1
0048f6f7  bee3000000                MOV ESI,0xe3
0048f6fc  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0048f702  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048f706  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0048f70b  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0048f710  b815010000                MOV EAX,0x115
0048f715  0f44f0                    CMOVZ ESI,EAX
0048f718  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0048f71d  81e100000010              AND ECX,0x10000000
0048f723  33c0                      XOR EAX,EAX
0048f725  0bc1                      OR EAX,ECX
0048f727  7416                      JZ 0x0048f73f
0048f729  6a00                      PUSH 0x0
0048f72b  51                        PUSH ECX
0048f72c  6a00                      PUSH 0x0
0048f72e  56                        PUSH ESI
0048f72f  8bcf                      MOV ECX,EDI
0048f731  e8aad02100                CALL 0x006ac7e0
0048f736  83f801                    CMP EAX,0x1
0048f739  0f835e0e0000              JNC 0x0049059d
0048f73f  e81cf82500                CALL 0x006eef60
0048f744  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048f74a  50                        PUSH EAX
0048f74b  6a00                      PUSH 0x0
0048f74d  57                        PUSH EDI
0048f74e  6840b6c700                PUSH 0xc7b640
0048f753  8d45a0                    LEA EAX,[EBP + -0x60]
0048f756  50                        PUSH EAX
0048f757  6a00                      PUSH 0x0
0048f759  56                        PUSH ESI
0048f75a  e8c193f9ff                CALL 0x00428b20
0048f75f  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
0048f762  89887c0c0000              MOV dword ptr [EAX + 0xc7c],ECX
0048f768  33c9                      XOR ECX,ECX
0048f76a  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0048f770  81e200000010              AND EDX,0x10000000
0048f776  0bca                      OR ECX,EDX
0048f778  0f841f0e0000              JZ 0x0049059d
0048f77e  c7808003000000002041      MOV dword ptr [EAX + 0x380],0x41200000
0048f788  c7808403000000002041      MOV dword ptr [EAX + 0x384],0x41200000
0048f792  e9060e0000                JMP 0x0049059d
0048f797  83f810                    CMP EAX,0x10
0048f79a  0f85ec070000              JNZ 0x0048ff8c
0048f7a0  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0048f7a6  85c0                      TEST EAX,EAX
0048f7a8  0f8568010000              JNZ 0x0048f916
0048f7ae  39477c                    CMP dword ptr [EDI + 0x7c],EAX
0048f7b1  0f8486000000              JZ 0x0048f83d
0048f7b7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048f7be  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048f7c1  743b                      JZ 0x0048f7fe
0048f7c3  83781410                  CMP dword ptr [EAX + 0x14],0x10
0048f7c7  7202                      JC 0x0048f7cb
0048f7c9  8b00                      MOV EAX,dword ptr [EAX]
0048f7cb  b9d8d9b100                MOV ECX,0xb1d9d8
0048f7d0  8a10                      MOV DL,byte ptr [EAX]
0048f7d2  3a11                      CMP DL,byte ptr [ECX]
0048f7d4  751a                      JNZ 0x0048f7f0
0048f7d6  84d2                      TEST DL,DL
0048f7d8  7412                      JZ 0x0048f7ec
0048f7da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048f7dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048f7e0  750e                      JNZ 0x0048f7f0
0048f7e2  83c002                    ADD EAX,0x2
0048f7e5  83c102                    ADD ECX,0x2
0048f7e8  84d2                      TEST DL,DL
0048f7ea  75e4                      JNZ 0x0048f7d0
0048f7ec  33c0                      XOR EAX,EAX
0048f7ee  eb05                      JMP 0x0048f7f5
0048f7f0  1bc0                      SBB EAX,EAX
0048f7f2  83c801                    OR EAX,0x1
0048f7f5  85c0                      TEST EAX,EAX
0048f7f7  7544                      JNZ 0x0048f83d
0048f7f9  e9d1000000                JMP 0x0048f8cf
0048f7fe  83781410                  CMP dword ptr [EAX + 0x14],0x10
0048f802  7202                      JC 0x0048f806
0048f804  8b00                      MOV EAX,dword ptr [EAX]
0048f806  b9d8d9b100                MOV ECX,0xb1d9d8
0048f80b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0048f810  8a10                      MOV DL,byte ptr [EAX]
0048f812  3a11                      CMP DL,byte ptr [ECX]
0048f814  751a                      JNZ 0x0048f830
0048f816  84d2                      TEST DL,DL
0048f818  7412                      JZ 0x0048f82c
0048f81a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048f81d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048f820  750e                      JNZ 0x0048f830
0048f822  83c002                    ADD EAX,0x2
0048f825  83c102                    ADD ECX,0x2
0048f828  84d2                      TEST DL,DL
0048f82a  75e4                      JNZ 0x0048f810
0048f82c  33c0                      XOR EAX,EAX
0048f82e  eb05                      JMP 0x0048f835
0048f830  1bc0                      SBB EAX,EAX
0048f832  83c801                    OR EAX,0x1
0048f835  85c0                      TEST EAX,EAX
0048f837  0f8492000000              JZ 0x0048f8cf
0048f83d  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048f840  85f6                      TEST ESI,ESI
0048f842  744a                      JZ 0x0048f88e
0048f844  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048f848  8bc6                      MOV EAX,ESI
0048f84a  7202                      JC 0x0048f84e
0048f84c  8b06                      MOV EAX,dword ptr [ESI]
0048f84e  b9d8d9b100                MOV ECX,0xb1d9d8
0048f853  8a10                      MOV DL,byte ptr [EAX]
0048f855  3a11                      CMP DL,byte ptr [ECX]
0048f857  751a                      JNZ 0x0048f873
0048f859  84d2                      TEST DL,DL
0048f85b  7412                      JZ 0x0048f86f
0048f85d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048f860  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048f863  750e                      JNZ 0x0048f873
0048f865  83c002                    ADD EAX,0x2
0048f868  83c102                    ADD ECX,0x2
0048f86b  84d2                      TEST DL,DL
0048f86d  75e4                      JNZ 0x0048f853
0048f86f  33c0                      XOR EAX,EAX
0048f871  eb05                      JMP 0x0048f878
0048f873  1bc0                      SBB EAX,EAX
0048f875  83c801                    OR EAX,0x1
0048f878  85c0                      TEST EAX,EAX
0048f87a  7512                      JNZ 0x0048f88e
0048f87c  384634                    CMP byte ptr [ESI + 0x34],AL
0048f87f  742e                      JZ 0x0048f8af
0048f881  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048f887  8d7748                    LEA ESI,[EDI + 0x48]
0048f88a  7523                      JNZ 0x0048f8af
0048f88c  eb03                      JMP 0x0048f891
0048f88e  8d7748                    LEA ESI,[EDI + 0x48]
0048f891  6a01                      PUSH 0x1
0048f893  68d8d9b100                PUSH 0xb1d9d8
0048f898  8bce                      MOV ECX,ESI
0048f89a  e831adf7ff                CALL 0x0040a5d0
0048f89f  84c0                      TEST AL,AL
0048f8a1  740c                      JZ 0x0048f8af
0048f8a3  8d4e30                    LEA ECX,[ESI + 0x30]
0048f8a6  e805a9f7ff                CALL 0x0040a1b0
0048f8ab  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048f8af  51                        PUSH ECX
0048f8b0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048f8b7  6a00                      PUSH 0x0
0048f8b9  6a02                      PUSH 0x2
0048f8bb  51                        PUSH ECX
0048f8bc  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048f8c3  8bcf                      MOV ECX,EDI
0048f8c5  68cd030000                PUSH 0x3cd
0048f8ca  e8d1722400                CALL 0x006d6ba0
0048f8cf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048f8d3  740d                      JZ 0x0048f8e2
0048f8d5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048f8dc  0f85e80c0000              JNZ 0x004905ca
0048f8e2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048f8ec  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0048f8f6  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0048f8fd  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0048f907  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048f911  e9b40c0000                JMP 0x004905ca
0048f916  83f801                    CMP EAX,0x1
0048f919  0f85fb000000              JNZ 0x0048fa1a
0048f91f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048f922  85f6                      TEST ESI,ESI
0048f924  744a                      JZ 0x0048f970
0048f926  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048f92a  8bc6                      MOV EAX,ESI
0048f92c  7202                      JC 0x0048f930
0048f92e  8b06                      MOV EAX,dword ptr [ESI]
0048f930  b90cdab100                MOV ECX,0xb1da0c
0048f935  8a10                      MOV DL,byte ptr [EAX]
0048f937  3a11                      CMP DL,byte ptr [ECX]
0048f939  751a                      JNZ 0x0048f955
0048f93b  84d2                      TEST DL,DL
0048f93d  7412                      JZ 0x0048f951
0048f93f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048f942  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048f945  750e                      JNZ 0x0048f955
0048f947  83c002                    ADD EAX,0x2
0048f94a  83c102                    ADD ECX,0x2
0048f94d  84d2                      TEST DL,DL
0048f94f  75e4                      JNZ 0x0048f935
0048f951  33c0                      XOR EAX,EAX
0048f953  eb05                      JMP 0x0048f95a
0048f955  1bc0                      SBB EAX,EAX
0048f957  83c801                    OR EAX,0x1
0048f95a  85c0                      TEST EAX,EAX
0048f95c  7512                      JNZ 0x0048f970
0048f95e  384634                    CMP byte ptr [ESI + 0x34],AL
0048f961  742e                      JZ 0x0048f991
0048f963  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048f969  8d7748                    LEA ESI,[EDI + 0x48]
0048f96c  7523                      JNZ 0x0048f991
0048f96e  eb03                      JMP 0x0048f973
0048f970  8d7748                    LEA ESI,[EDI + 0x48]
0048f973  6a01                      PUSH 0x1
0048f975  680cdab100                PUSH 0xb1da0c
0048f97a  8bce                      MOV ECX,ESI
0048f97c  e84facf7ff                CALL 0x0040a5d0
0048f981  84c0                      TEST AL,AL
0048f983  740c                      JZ 0x0048f991
0048f985  8d4e30                    LEA ECX,[ESI + 0x30]
0048f988  e823a8f7ff                CALL 0x0040a1b0
0048f98d  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048f991  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048f997  8db73c030000              LEA ESI,[EDI + 0x33c]
0048f99d  56                        PUSH ESI
0048f99e  e8ad3f2700                CALL 0x00703950
0048f9a3  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0048f9a7  8bf8                      MOV EDI,EAX
0048f9a9  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0048f9ae  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0048f9b6  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0048f9be  f30f59c0                  MULSS XMM0,XMM0
0048f9c2  f30f59c9                  MULSS XMM1,XMM1
0048f9c6  f30f58c1                  ADDSS XMM0,XMM1
0048f9ca  e88160faff                CALL 0x00435a50
0048f9cf  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
0048f9d2  f30f108870030000          MOVSS XMM1,dword ptr [EAX + 0x370]
0048f9da  33c0                      XOR EAX,EAX
0048f9dc  f30f588f70030000          ADDSS XMM1,dword ptr [EDI + 0x370]
0048f9e4  8b7da8                    MOV EDI,dword ptr [EBP + -0x58]
0048f9e7  0f2fc8                    COMISS XMM1,XMM0
0048f9ea  0f97c0                    SETA AL
0048f9ed  837dac00                  CMP dword ptr [EBP + -0x54],0x0
0048f9f1  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0048f9f7  7408                      JZ 0x0048fa01
0048f9f9  85c0                      TEST EAX,EAX
0048f9fb  0f84c90b0000              JZ 0x004905ca
0048fa01  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048fa0b  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0048fa15  e9b00b0000                JMP 0x004905ca
0048fa1a  83f802                    CMP EAX,0x2
0048fa1d  0f85f4020000              JNZ 0x0048fd17
0048fa23  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048fa26  85f6                      TEST ESI,ESI
0048fa28  7451                      JZ 0x0048fa7b
0048fa2a  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048fa2e  8bc6                      MOV EAX,ESI
0048fa30  7202                      JC 0x0048fa34
0048fa32  8b06                      MOV EAX,dword ptr [ESI]
0048fa34  b90cdab100                MOV ECX,0xb1da0c
0048fa39  0f1f8000000000            NOP dword ptr [EAX]
0048fa40  8a10                      MOV DL,byte ptr [EAX]
0048fa42  3a11                      CMP DL,byte ptr [ECX]
0048fa44  751a                      JNZ 0x0048fa60
0048fa46  84d2                      TEST DL,DL
0048fa48  7412                      JZ 0x0048fa5c
0048fa4a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048fa4d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048fa50  750e                      JNZ 0x0048fa60
0048fa52  83c002                    ADD EAX,0x2
0048fa55  83c102                    ADD ECX,0x2
0048fa58  84d2                      TEST DL,DL
0048fa5a  75e4                      JNZ 0x0048fa40
0048fa5c  33c0                      XOR EAX,EAX
0048fa5e  eb05                      JMP 0x0048fa65
0048fa60  1bc0                      SBB EAX,EAX
0048fa62  83c801                    OR EAX,0x1
0048fa65  85c0                      TEST EAX,EAX
0048fa67  7512                      JNZ 0x0048fa7b
0048fa69  384634                    CMP byte ptr [ESI + 0x34],AL
0048fa6c  742e                      JZ 0x0048fa9c
0048fa6e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048fa74  8d7748                    LEA ESI,[EDI + 0x48]
0048fa77  7523                      JNZ 0x0048fa9c
0048fa79  eb03                      JMP 0x0048fa7e
0048fa7b  8d7748                    LEA ESI,[EDI + 0x48]
0048fa7e  6a01                      PUSH 0x1
0048fa80  680cdab100                PUSH 0xb1da0c
0048fa85  8bce                      MOV ECX,ESI
0048fa87  e844abf7ff                CALL 0x0040a5d0
0048fa8c  84c0                      TEST AL,AL
0048fa8e  740c                      JZ 0x0048fa9c
0048fa90  8d4e30                    LEA ECX,[ESI + 0x30]
0048fa93  e818a7f7ff                CALL 0x0040a1b0
0048fa98  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048fa9c  a17816c700                MOV EAX,[0x00c71678]
0048faa1  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0048faa7  8d45b0                    LEA EAX,[EBP + -0x50]
0048faaa  50                        PUSH EAX
0048faab  8bce                      MOV ECX,ESI
0048faad  e84e323800                CALL 0x00812d00
0048fab2  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0048fab5  85c0                      TEST EAX,EAX
0048fab7  7468                      JZ 0x0048fb21
0048fab9  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0048fabc  85c0                      TEST EAX,EAX
0048fabe  7461                      JZ 0x0048fb21
0048fac0  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
0048fac3  83f80b                    CMP EAX,0xb
0048fac6  7535                      JNZ 0x0048fafd
0048fac8  b884000000                MOV EAX,0x84
0048facd  99                        CDQ
0048face  f77e0c                    IDIV dword ptr [ESI + 0xc]
0048fad1  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
0048fad9  660f6eca                  MOVD XMM1,EDX
0048fadd  660f6ed0                  MOVD XMM2,EAX
0048fae1  0f5bc9                    CVTDQ2PS XMM1,XMM1
0048fae4  0f5bd2                    CVTDQ2PS XMM2,XMM2
0048fae7  f30f59c8                  MULSS XMM1,XMM0
0048faeb  f30f59d0                  MULSS XMM2,XMM0
0048faef  f30f58c8                  ADDSS XMM1,XMM0
0048faf3  f30f581500aaba00          ADDSS XMM2,dword ptr [0x00baaa00]
0048fafb  eb2e                      JMP 0x0048fb2b
0048fafd  83f80c                    CMP EAX,0xc
0048fb00  7507                      JNZ 0x0048fb09
0048fb02  b877000000                MOV EAX,0x77
0048fb07  ebc4                      JMP 0x0048facd
0048fb09  83f809                    CMP EAX,0x9
0048fb0c  7507                      JNZ 0x0048fb15
0048fb0e  b848010000                MOV EAX,0x148
0048fb13  ebb8                      JMP 0x0048facd
0048fb15  83f80a                    CMP EAX,0xa
0048fb18  7507                      JNZ 0x0048fb21
0048fb1a  b83b010000                MOV EAX,0x13b
0048fb1f  ebac                      JMP 0x0048facd
0048fb21  f30f1055b4                MOVSS XMM2,dword ptr [EBP + -0x4c]
0048fb26  f30f104db0                MOVSS XMM1,dword ptr [EBP + -0x50]
0048fb2b  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
0048fb30  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0048fb38  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
0048fb3d  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0048fb45  0f28c1                    MOVAPS XMM0,XMM1
0048fb48  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0048fb4d  f30f59c1                  MULSS XMM0,XMM1
0048fb51  0f28ca                    MOVAPS XMM1,XMM2
0048fb54  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
0048fb59  f30f59ca                  MULSS XMM1,XMM2
0048fb5d  f30f58c1                  ADDSS XMM0,XMM1
0048fb61  e8ea5efaff                CALL 0x00435a50
0048fb66  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
0048fb6b  0f57c9                    XORPS XMM1,XMM1
0048fb6e  0f2fc1                    COMISS XMM0,XMM1
0048fb71  f30f105da4                MOVSS XMM3,dword ptr [EBP + -0x5c]
0048fb76  7614                      JBE 0x0048fb8c
0048fb78  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0048fb80  f30f5ee0                  DIVSS XMM4,XMM0
0048fb84  f30f59d4                  MULSS XMM2,XMM4
0048fb88  f30f59dc                  MULSS XMM3,XMM4
0048fb8c  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0048fb94  f30f5915b0a4ba00          MULSS XMM2,dword ptr [0x00baa4b0]
0048fb9c  f30f591db0a4ba00          MULSS XMM3,dword ptr [0x00baa4b0]
0048fba4  0f2ee1                    UCOMISS XMM4,XMM1
0048fba7  9f                        LAHF
0048fba8  f6c444                    TEST AH,0x44
0048fbab  7b3b                      JNP 0x0048fbe8
0048fbad  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0048fbb5  0f28c1                    MOVAPS XMM0,XMM1
0048fbb8  f30f59cb                  MULSS XMM1,XMM3
0048fbbc  f30f59c2                  MULSS XMM0,XMM2
0048fbc0  f30f5ecc                  DIVSS XMM1,XMM4
0048fbc4  f30f5ec4                  DIVSS XMM0,XMM4
0048fbc8  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0048fbd0  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0048fbd8  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0048fbe0  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0048fbe8  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0048fbf0  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0048fbf8  0f28c1                    MOVAPS XMM0,XMM1
0048fbfb  f30f59c1                  MULSS XMM0,XMM1
0048fbff  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
0048fc04  0f28ca                    MOVAPS XMM1,XMM2
0048fc07  f30f59ca                  MULSS XMM1,XMM2
0048fc0b  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0048fc10  f30f58c1                  ADDSS XMM0,XMM1
0048fc14  e8375efaff                CALL 0x00435a50
0048fc19  f30f100d0ca7ba00          MOVSS XMM1,dword ptr [0x00baa70c]
0048fc21  0f2fc1                    COMISS XMM0,XMM1
0048fc24  762e                      JBE 0x0048fc54
0048fc26  0f57d2                    XORPS XMM2,XMM2
0048fc29  0f2fc2                    COMISS XMM0,XMM2
0048fc2c  7626                      JBE 0x0048fc54
0048fc2e  f30f5ec8                  DIVSS XMM1,XMM0
0048fc32  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0048fc37  f30f59c1                  MULSS XMM0,XMM1
0048fc3b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0048fc43  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0048fc48  f30f59c1                  MULSS XMM0,XMM1
0048fc4c  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0048fc54  83bf1004000078            CMP dword ptr [EDI + 0x410],0x78
0048fc5b  7f3c                      JG 0x0048fc99
0048fc5d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0048fc65  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0048fc6d  f30f5c45a8                SUBSS XMM0,dword ptr [EBP + -0x58]
0048fc72  f30f5c4dac                SUBSS XMM1,dword ptr [EBP + -0x54]
0048fc77  f30f59c0                  MULSS XMM0,XMM0
0048fc7b  f30f59c9                  MULSS XMM1,XMM1
0048fc7f  f30f58c1                  ADDSS XMM0,XMM1
0048fc83  e8c85dfaff                CALL 0x00435a50
0048fc88  f30f100d10a9ba00          MOVSS XMM1,dword ptr [0x00baa910]
0048fc90  0f2fc8                    COMISS XMM1,XMM0
0048fc93  0f8631090000              JBE 0x004905ca
0048fc99  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0048fc9f  33c0                      XOR EAX,EAX
0048fca1  81e100000010              AND ECX,0x10000000
0048fca7  0bc1                      OR EAX,ECX
0048fca9  7426                      JZ 0x0048fcd1
0048fcab  837d9801                  CMP dword ptr [EBP + -0x68],0x1
0048fcaf  b8e3000000                MOV EAX,0xe3
0048fcb4  6a00                      PUSH 0x0
0048fcb6  51                        PUSH ECX
0048fcb7  b915010000                MOV ECX,0x115
0048fcbc  0f44c1                    CMOVZ EAX,ECX
0048fcbf  8bcf                      MOV ECX,EDI
0048fcc1  6a00                      PUSH 0x0
0048fcc3  50                        PUSH EAX
0048fcc4  e817cb2100                CALL 0x006ac7e0
0048fcc9  85c0                      TEST EAX,EAX
0048fccb  0f85f9080000              JNZ 0x004905ca
0048fcd1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048fcdb  33c0                      XOR EAX,EAX
0048fcdd  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
0048fce7  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0048fced  81e100000010              AND ECX,0x10000000
0048fcf3  0bc1                      OR EAX,ECX
0048fcf5  740a                      JZ 0x0048fd01
0048fcf7  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0048fd01  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0048fd08  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0048fd12  e9b3080000                JMP 0x004905ca
0048fd17  83f803                    CMP EAX,0x3
0048fd1a  0f85aa080000              JNZ 0x004905ca
0048fd20  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048fd23  85f6                      TEST ESI,ESI
0048fd25  744a                      JZ 0x0048fd71
0048fd27  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048fd2b  8bc6                      MOV EAX,ESI
0048fd2d  7202                      JC 0x0048fd31
0048fd2f  8b06                      MOV EAX,dword ptr [ESI]
0048fd31  b914dab100                MOV ECX,0xb1da14
0048fd36  8a10                      MOV DL,byte ptr [EAX]
0048fd38  3a11                      CMP DL,byte ptr [ECX]
0048fd3a  751a                      JNZ 0x0048fd56
0048fd3c  84d2                      TEST DL,DL
0048fd3e  7412                      JZ 0x0048fd52
0048fd40  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048fd43  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048fd46  750e                      JNZ 0x0048fd56
0048fd48  83c002                    ADD EAX,0x2
0048fd4b  83c102                    ADD ECX,0x2
0048fd4e  84d2                      TEST DL,DL
0048fd50  75e4                      JNZ 0x0048fd36
0048fd52  33c0                      XOR EAX,EAX
0048fd54  eb05                      JMP 0x0048fd5b
0048fd56  1bc0                      SBB EAX,EAX
0048fd58  83c801                    OR EAX,0x1
0048fd5b  85c0                      TEST EAX,EAX
0048fd5d  7512                      JNZ 0x0048fd71
0048fd5f  384634                    CMP byte ptr [ESI + 0x34],AL
0048fd62  742e                      JZ 0x0048fd92
0048fd64  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048fd6a  8d7748                    LEA ESI,[EDI + 0x48]
0048fd6d  7523                      JNZ 0x0048fd92
0048fd6f  eb03                      JMP 0x0048fd74
0048fd71  8d7748                    LEA ESI,[EDI + 0x48]
0048fd74  6a01                      PUSH 0x1
0048fd76  6814dab100                PUSH 0xb1da14
0048fd7b  8bce                      MOV ECX,ESI
0048fd7d  e84ea8f7ff                CALL 0x0040a5d0
0048fd82  84c0                      TEST AL,AL
0048fd84  740c                      JZ 0x0048fd92
0048fd86  8d4e30                    LEA ECX,[ESI + 0x30]
0048fd89  e822a4f7ff                CALL 0x0040a1b0
0048fd8e  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048fd92  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048fd96  740d                      JZ 0x0048fda5
0048fd98  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048fd9f  0f8516060000              JNZ 0x004903bb
0048fda5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048fdaf  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0048fdb6  741f                      JZ 0x0048fdd7
0048fdb8  837da404                  CMP dword ptr [EBP + -0x5c],0x4
0048fdbc  7319                      JNC 0x0048fdd7
0048fdbe  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0048fdc8  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0048fdd2  e9e4050000                JMP 0x004903bb
0048fdd7  837d9801                  CMP dword ptr [EBP + -0x68],0x1
0048fddb  7526                      JNZ 0x0048fe03
0048fddd  837db400                  CMP dword ptr [EBP + -0x4c],0x0
0048fde1  b803000000                MOV EAX,0x3
0048fde6  b90e000000                MOV ECX,0xe
0048fdeb  0f44c1                    CMOVZ EAX,ECX
0048fdee  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0048fdf4  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0048fdfe  e9b8050000                JMP 0x004903bb
0048fe03  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048fe09  8d4db4                    LEA ECX,[EBP + -0x4c]
0048fe0c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0048fe16  c745b4a2010000            MOV dword ptr [EBP + -0x4c],0x1a2
0048fe1d  e85e694c00                CALL 0x00956780
0048fe22  83ec08                    SUB ESP,0x8
0048fe25  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048fe2b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048fe33  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048fe3a  6a00                      PUSH 0x0
0048fe3c  6a02                      PUSH 0x2
0048fe3e  51                        PUSH ECX
0048fe3f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048fe46  ff75b4                    PUSH dword ptr [EBP + -0x4c]
0048fe49  e8e2dd4900                CALL 0x0092dc30
0048fe4e  8bcf                      MOV ECX,EDI
0048fe50  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0048fe5a  e8e1e92200                CALL 0x006be840
0048fe5f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0048fe67  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0048fe6f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0048fe77  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0048fe7f  e8dc9e0000                CALL 0x00499d60
0048fe84  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0048fe89  e8d2f02500                CALL 0x006eef60
0048fe8e  c745a4000000c2            MOV dword ptr [EBP + -0x5c],0xc2000000
0048fe95  660f6ec8                  MOVD XMM1,EAX
0048fe99  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0048fe9d  c1e81f                    SHR EAX,0x1f
0048fea0  33f6                      XOR ESI,ESI
0048fea2  8975a0                    MOV dword ptr [EBP + -0x60],ESI
0048fea5  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0048feae  660f5ac1                  CVTPD2PS XMM0,XMM1
0048feb2  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
0048feb7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048febf  f30f590d48a9ba00          MULSS XMM1,dword ptr [0x00baa948]
0048fec7  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
0048fecf  f30f580d78aaba00          ADDSS XMM1,dword ptr [0x00baaa78]
0048fed7  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
0048fedf  f30f58c1                  ADDSS XMM0,XMM1
0048fee3  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0048feeb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0048fef0  0f57c0                    XORPS XMM0,XMM0
0048fef3  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0048fefa  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0048fefe  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0048ff05  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
0048ff0c  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0048ff10  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0048ff17  660f6ec6                  MOVD XMM0,ESI
0048ff1b  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048ff1e  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
0048ff26  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0048ff2e  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0048ff36  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0048ff3b  e8e0d5f8ff                CALL 0x0041d520
0048ff40  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0048ff45  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0048ff4a  e8f1d5f8ff                CALL 0x0041d540
0048ff4f  51                        PUSH ECX
0048ff50  c7042400008040            MOV dword ptr [ESP],0x40800000
0048ff57  8d45c0                    LEA EAX,[EBP + -0x40]
0048ff5a  50                        PUSH EAX
0048ff5b  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
0048ff60  8d4594                    LEA EAX,[EBP + -0x6c]
0048ff63  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0048ff68  8d55a0                    LEA EDX,[EBP + -0x60]
0048ff6b  6a19                      PUSH 0x19
0048ff6d  50                        PUSH EAX
0048ff6e  8bcf                      MOV ECX,EDI
0048ff70  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0048ff75  e816b91700                CALL 0x0060b890
0048ff7a  46                        INC ESI
0048ff7b  83c410                    ADD ESP,0x10
0048ff7e  83fe04                    CMP ESI,0x4
0048ff81  0f8c69ffffff              JL 0x0048fef0
0048ff87  e92f040000                JMP 0x004903bb
0048ff8c  83f808                    CMP EAX,0x8
0048ff8f  0f853e040000              JNZ 0x004903d3
0048ff95  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0048ff9b  85c0                      TEST EAX,EAX
0048ff9d  0f85bb020000              JNZ 0x0049025e
0048ffa3  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048ffa6  85f6                      TEST ESI,ESI
0048ffa8  7451                      JZ 0x0048fffb
0048ffaa  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048ffae  8bc6                      MOV EAX,ESI
0048ffb0  7202                      JC 0x0048ffb4
0048ffb2  8b06                      MOV EAX,dword ptr [ESI]
0048ffb4  b9f4d9b100                MOV ECX,0xb1d9f4
0048ffb9  0f1f8000000000            NOP dword ptr [EAX]
0048ffc0  8a10                      MOV DL,byte ptr [EAX]
0048ffc2  3a11                      CMP DL,byte ptr [ECX]
0048ffc4  751a                      JNZ 0x0048ffe0
0048ffc6  84d2                      TEST DL,DL
0048ffc8  7412                      JZ 0x0048ffdc
0048ffca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048ffcd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048ffd0  750e                      JNZ 0x0048ffe0
0048ffd2  83c002                    ADD EAX,0x2
0048ffd5  83c102                    ADD ECX,0x2
0048ffd8  84d2                      TEST DL,DL
0048ffda  75e4                      JNZ 0x0048ffc0
0048ffdc  33c0                      XOR EAX,EAX
0048ffde  eb05                      JMP 0x0048ffe5
0048ffe0  1bc0                      SBB EAX,EAX
0048ffe2  83c801                    OR EAX,0x1
0048ffe5  85c0                      TEST EAX,EAX
0048ffe7  7512                      JNZ 0x0048fffb
0048ffe9  384634                    CMP byte ptr [ESI + 0x34],AL
0048ffec  742e                      JZ 0x0049001c
0048ffee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048fff4  8d7748                    LEA ESI,[EDI + 0x48]
0048fff7  7523                      JNZ 0x0049001c
0048fff9  eb03                      JMP 0x0048fffe
0048fffb  8d7748                    LEA ESI,[EDI + 0x48]
0048fffe  6a01                      PUSH 0x1
00490000  68f4d9b100                PUSH 0xb1d9f4
00490005  8bce                      MOV ECX,ESI
00490007  e8c4a5f7ff                CALL 0x0040a5d0
0049000c  84c0                      TEST AL,AL
0049000e  740c                      JZ 0x0049001c
00490010  8d4e30                    LEA ECX,[ESI + 0x30]
00490013  e898a1f7ff                CALL 0x0040a1b0
00490018  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0049001c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00490020  0f8409020000              JZ 0x0049022f
00490026  681cd8b100                PUSH 0xb1d81c
0049002b  8d4f78                    LEA ECX,[EDI + 0x78]
0049002e  e89dadf7ff                CALL 0x0040add0
00490033  84c0                      TEST AL,AL
00490035  0f84f4010000              JZ 0x0049022f
0049003b  e820ef2500                CALL 0x006eef60
00490040  33d2                      XOR EDX,EDX
00490042  b91e000000                MOV ECX,0x1e
00490047  f7f1                      DIV ECX
00490049  8d420f                    LEA EAX,[EDX + 0xf]
0049004c  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
0049004f  e80cef2500                CALL 0x006eef60
00490054  83e001                    AND EAX,0x1
00490057  740a                      JZ 0x00490063
00490059  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00490061  eb08                      JMP 0x0049006b
00490063  f30f100d74adba00          MOVSS XMM1,dword ptr [0x00baad74]
0049006b  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
0049006e  6a01                      PUSH 0x1
00490070  6a00                      PUSH 0x0
00490072  6aff                      PUSH -0x1
00490074  660f6ec0                  MOVD XMM0,EAX
00490078  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049007c  c1e81f                    SHR EAX,0x1f
0049007f  6aff                      PUSH -0x1
00490081  6a07                      PUSH 0x7
00490083  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049008c  a17816c700                MOV EAX,[0x00c71678]
00490091  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00490097  8d855cffffff              LEA EAX,[EBP + 0xffffff5c]
0049009d  660f5ac0                  CVTPD2PS XMM0,XMM0
004900a1  81c118120000              ADD ECX,0x1218
004900a7  50                        PUSH EAX
004900a8  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
004900b0  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004900b8  f30f59c1                  MULSS XMM0,XMM1
004900bc  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004900c1  e89aaef8ff                CALL 0x0041af60
004900c6  33d2                      XOR EDX,EDX
004900c8  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004900cc  399568ffffff              CMP dword ptr [EBP + 0xffffff68],EDX
004900d2  0f8679000000              JBE 0x00490151
004900d8  8bb560ffffff              MOV ESI,dword ptr [EBP + 0xffffff60]
004900de  0f57d2                    XORPS XMM2,XMM2
004900e1  8b0c96                    MOV ECX,dword ptr [ESI + EDX*0x4]
004900e4  80b9c004000000            CMP byte ptr [ECX + 0x4c0],0x0
004900eb  7440                      JZ 0x0049012d
004900ed  f30f1081cc040000          MOVSS XMM0,dword ptr [ECX + 0x4cc]
004900f5  0f2ec2                    UCOMISS XMM0,XMM2
004900f8  9f                        LAHF
004900f9  f6c444                    TEST AH,0x44
004900fc  7b2f                      JNP 0x0049012d
004900fe  8b89bc030000              MOV ECX,dword ptr [ECX + 0x3bc]
00490104  85c9                      TEST ECX,ECX
00490106  7425                      JZ 0x0049012d
00490108  a17816c700                MOV EAX,[0x00c71678]
0049010d  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00490114  7c06                      JL 0x0049011c
00490116  83792801                  CMP dword ptr [ECX + 0x28],0x1
0049011a  740d                      JZ 0x00490129
0049011c  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0049011f  83e80a                    SUB EAX,0xa
00490122  3ddd030000                CMP EAX,0x3dd
00490127  7704                      JA 0x0049012d
00490129  3bcf                      CMP ECX,EDI
0049012b  750b                      JNZ 0x00490138
0049012d  42                        INC EDX
0049012e  3b9568ffffff              CMP EDX,dword ptr [EBP + 0xffffff68]
00490134  72ab                      JC 0x004900e1
00490136  eb19                      JMP 0x00490151
00490138  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0049013d  e81eee2500                CALL 0x006eef60
00490142  33d2                      XOR EDX,EDX
00490144  b90a000000                MOV ECX,0xa
00490149  f7f1                      DIV ECX
0049014b  8d4205                    LEA EAX,[EDX + 0x5]
0049014e  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
00490151  33f6                      XOR ESI,ESI
00490153  897594                    MOV dword ptr [EBP + -0x6c],ESI
00490156  897598                    MOV dword ptr [EBP + -0x68],ESI
00490159  0f1f8000000000            NOP dword ptr [EAX]
00490160  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00490168  8d4594                    LEA EAX,[EBP + -0x6c]
0049016b  660f6ed6                  MOVD XMM2,ESI
0049016f  0f57c0                    XORPS XMM0,XMM0
00490172  0f5bd2                    CVTDQ2PS XMM2,XMM2
00490175  6a00                      PUSH 0x0
00490177  57                        PUSH EDI
00490178  50                        PUSH EAX
00490179  6a78                      PUSH 0x78
0049017b  f30f58c8                  ADDSS XMM1,XMM0
0049017f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00490187  f30f591500aaba00          MULSS XMM2,dword ptr [0x00baaa00]
0049018f  8d45a0                    LEA EAX,[EBP + -0x60]
00490192  51                        PUSH ECX
00490193  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
0049019b  f30f5897b00b0000          ADDSS XMM2,dword ptr [EDI + 0xbb0]
004901a3  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
004901a8  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004901ad  f30f111424                MOVSS dword ptr [ESP],XMM2
004901b2  50                        PUSH EAX
004901b3  6a01                      PUSH 0x1
004901b5  e856f14d00                CALL 0x0096f310
004901ba  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
004901bd  83c41c                    ADD ESP,0x1c
004901c0  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004901c5  8b10                      MOV EDX,dword ptr [EAX]
004901c7  8988c4040000              MOV dword ptr [EAX + 0x4c4],ECX
004901cd  8bc8                      MOV ECX,EAX
004901cf  c680c004000001            MOV byte ptr [EAX + 0x4c0],0x1
004901d6  c780c80400000000e144      MOV dword ptr [EAX + 0x4c8],0x44e10000
004901e0  f30f1180cc040000          MOVSS dword ptr [EAX + 0x4cc],XMM0
004901e8  ff520c                    CALL dword ptr [EDX + 0xc]
004901eb  46                        INC ESI
004901ec  83fe04                    CMP ESI,0x4
004901ef  0f8c6bffffff              JL 0x00490160
004901f5  80bd5cffffff00            CMP byte ptr [EBP + 0xffffff5c],0x0
004901fc  7531                      JNZ 0x0049022f
004901fe  a178dec700                MOV EAX,[0x00c7de78]
00490203  8d5030                    LEA EDX,[EAX + 0x30]
00490206  85c0                      TEST EAX,EAX
00490208  7505                      JNZ 0x0049020f
0049020a  ba18f6c700                MOV EDX,0xc7f618
0049020f  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
00490215  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
00490218  85c0                      TEST EAX,EAX
0049021a  7416                      JZ 0x00490232
0049021c  8d48fc                    LEA ECX,[EAX + -0x4]
0049021f  8b01                      MOV EAX,dword ptr [ECX]
00490221  2902                      SUB dword ptr [EDX],EAX
00490223  51                        PUSH ECX
00490224  835a0400                  SBB dword ptr [EDX + 0x4],0x0
00490228  ffd6                      CALL ESI
0049022a  83c404                    ADD ESP,0x4
0049022d  eb03                      JMP 0x00490232
0049022f  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
00490232  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00490236  740d                      JZ 0x00490245
00490238  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049023f  0f8579010000              JNZ 0x004903be
00490245  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0049024f  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00490259  e960010000                JMP 0x004903be
0049025e  83f801                    CMP EAX,0x1
00490261  0f85ac000000              JNZ 0x00490313
00490267  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049026f  f30f59c1                  MULSS XMM0,XMM1
00490273  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049027b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0049027e  85f6                      TEST ESI,ESI
00490280  744a                      JZ 0x004902cc
00490282  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00490286  8bc6                      MOV EAX,ESI
00490288  7202                      JC 0x0049028c
0049028a  8b06                      MOV EAX,dword ptr [ESI]
0049028c  b900dab100                MOV ECX,0xb1da00
00490291  8a10                      MOV DL,byte ptr [EAX]
00490293  3a11                      CMP DL,byte ptr [ECX]
00490295  751a                      JNZ 0x004902b1
00490297  84d2                      TEST DL,DL
00490299  7412                      JZ 0x004902ad
0049029b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049029e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004902a1  750e                      JNZ 0x004902b1
004902a3  83c002                    ADD EAX,0x2
004902a6  83c102                    ADD ECX,0x2
004902a9  84d2                      TEST DL,DL
004902ab  75e4                      JNZ 0x00490291
004902ad  33c0                      XOR EAX,EAX
004902af  eb05                      JMP 0x004902b6
004902b1  1bc0                      SBB EAX,EAX
004902b3  83c801                    OR EAX,0x1
004902b6  85c0                      TEST EAX,EAX
004902b8  7512                      JNZ 0x004902cc
004902ba  384634                    CMP byte ptr [ESI + 0x34],AL
004902bd  742e                      JZ 0x004902ed
004902bf  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004902c5  8d7748                    LEA ESI,[EDI + 0x48]
004902c8  7523                      JNZ 0x004902ed
004902ca  eb03                      JMP 0x004902cf
004902cc  8d7748                    LEA ESI,[EDI + 0x48]
004902cf  6a01                      PUSH 0x1
004902d1  6800dab100                PUSH 0xb1da00
004902d6  8bce                      MOV ECX,ESI
004902d8  e8f3a2f7ff                CALL 0x0040a5d0
004902dd  84c0                      TEST AL,AL
004902df  740c                      JZ 0x004902ed
004902e1  8d4e30                    LEA ECX,[ESI + 0x30]
004902e4  e8c79ef7ff                CALL 0x0040a1b0
004902e9  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004902ed  83bf1004000078            CMP dword ptr [EDI + 0x410],0x78
004902f4  0f8ec1000000              JLE 0x004903bb
004902fa  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00490304  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0049030e  e9a8000000                JMP 0x004903bb
00490313  83f802                    CMP EAX,0x2
00490316  0f85ae020000              JNZ 0x004905ca
0049031c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0049031f  85f6                      TEST ESI,ESI
00490321  744a                      JZ 0x0049036d
00490323  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00490327  8bc6                      MOV EAX,ESI
00490329  7202                      JC 0x0049032d
0049032b  8b06                      MOV EAX,dword ptr [ESI]
0049032d  b934dab100                MOV ECX,0xb1da34
00490332  8a10                      MOV DL,byte ptr [EAX]
00490334  3a11                      CMP DL,byte ptr [ECX]
00490336  751a                      JNZ 0x00490352
00490338  84d2                      TEST DL,DL
0049033a  7412                      JZ 0x0049034e
0049033c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049033f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00490342  750e                      JNZ 0x00490352
00490344  83c002                    ADD EAX,0x2
00490347  83c102                    ADD ECX,0x2
0049034a  84d2                      TEST DL,DL
0049034c  75e4                      JNZ 0x00490332
0049034e  33c0                      XOR EAX,EAX
00490350  eb05                      JMP 0x00490357
00490352  1bc0                      SBB EAX,EAX
00490354  83c801                    OR EAX,0x1
00490357  85c0                      TEST EAX,EAX
00490359  7512                      JNZ 0x0049036d
0049035b  384634                    CMP byte ptr [ESI + 0x34],AL
0049035e  742e                      JZ 0x0049038e
00490360  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00490366  8d7748                    LEA ESI,[EDI + 0x48]
00490369  7523                      JNZ 0x0049038e
0049036b  eb03                      JMP 0x00490370
0049036d  8d7748                    LEA ESI,[EDI + 0x48]
00490370  6a01                      PUSH 0x1
00490372  6834dab100                PUSH 0xb1da34
00490377  8bce                      MOV ECX,ESI
00490379  e852a2f7ff                CALL 0x0040a5d0
0049037e  84c0                      TEST AL,AL
00490380  740c                      JZ 0x0049038e
00490382  8d4e30                    LEA ECX,[ESI + 0x30]
00490385  e8269ef7ff                CALL 0x0040a1b0
0049038a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0049038e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00490392  7409                      JZ 0x0049039d
00490394  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049039b  751e                      JNZ 0x004903bb
0049039d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004903a7  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004903b1  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004903bb  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
004903be  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004903c6  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004903ce  e90f020000                JMP 0x004905e2
004903d3  83f80e                    CMP EAX,0xe
004903d6  0f85ee010000              JNZ 0x004905ca
004903dc  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004903df  85c0                      TEST EAX,EAX
004903e1  740a                      JZ 0x004903ed
004903e3  83781410                  CMP dword ptr [EAX + 0x14],0x10
004903e7  7209                      JC 0x004903f2
004903e9  8b00                      MOV EAX,dword ptr [EAX]
004903eb  eb05                      JMP 0x004903f2
004903ed  b8eca4b100                MOV EAX,0xb1a4ec
004903f2  b920d4b100                MOV ECX,0xb1d420
004903f7  8a10                      MOV DL,byte ptr [EAX]
004903f9  3a11                      CMP DL,byte ptr [ECX]
004903fb  751a                      JNZ 0x00490417
004903fd  84d2                      TEST DL,DL
004903ff  7412                      JZ 0x00490413
00490401  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00490404  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00490407  750e                      JNZ 0x00490417
00490409  83c002                    ADD EAX,0x2
0049040c  83c102                    ADD ECX,0x2
0049040f  84d2                      TEST DL,DL
00490411  75e4                      JNZ 0x004903f7
00490413  33c0                      XOR EAX,EAX
00490415  eb05                      JMP 0x0049041c
00490417  1bc0                      SBB EAX,EAX
00490419  83c801                    OR EAX,0x1
0049041c  85c0                      TEST EAX,EAX
0049041e  7441                      JZ 0x00490461
00490420  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00490426  8d4db4                    LEA ECX,[EBP + -0x4c]
00490429  c745b4a1010000            MOV dword ptr [EBP + -0x4c],0x1a1
00490430  e84b634c00                CALL 0x00956780
00490435  83ec08                    SUB ESP,0x8
00490438  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049043e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00490446  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049044d  6a00                      PUSH 0x0
0049044f  6a02                      PUSH 0x2
00490451  51                        PUSH ECX
00490452  c704240000803f            MOV dword ptr [ESP],0x3f800000
00490459  ff75b4                    PUSH dword ptr [EBP + -0x4c]
0049045c  e8cfd74900                CALL 0x0092dc30
00490461  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00490464  85f6                      TEST ESI,ESI
00490466  744a                      JZ 0x004904b2
00490468  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0049046c  8bc6                      MOV EAX,ESI
0049046e  7202                      JC 0x00490472
00490470  8b06                      MOV EAX,dword ptr [ESI]
00490472  b920d4b100                MOV ECX,0xb1d420
00490477  8a10                      MOV DL,byte ptr [EAX]
00490479  3a11                      CMP DL,byte ptr [ECX]
0049047b  751a                      JNZ 0x00490497
0049047d  84d2                      TEST DL,DL
0049047f  7412                      JZ 0x00490493
00490481  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00490484  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00490487  750e                      JNZ 0x00490497
00490489  83c002                    ADD EAX,0x2
0049048c  83c102                    ADD ECX,0x2
0049048f  84d2                      TEST DL,DL
00490491  75e4                      JNZ 0x00490477
00490493  33c0                      XOR EAX,EAX
00490495  eb05                      JMP 0x0049049c
00490497  1bc0                      SBB EAX,EAX
00490499  83c801                    OR EAX,0x1
0049049c  85c0                      TEST EAX,EAX
0049049e  7512                      JNZ 0x004904b2
004904a0  384634                    CMP byte ptr [ESI + 0x34],AL
004904a3  742e                      JZ 0x004904d3
004904a5  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004904ab  8d7748                    LEA ESI,[EDI + 0x48]
004904ae  7523                      JNZ 0x004904d3
004904b0  eb03                      JMP 0x004904b5
004904b2  8d7748                    LEA ESI,[EDI + 0x48]
004904b5  6a01                      PUSH 0x1
004904b7  6820d4b100                PUSH 0xb1d420
004904bc  8bce                      MOV ECX,ESI
004904be  e80da1f7ff                CALL 0x0040a5d0
004904c3  84c0                      TEST AL,AL
004904c5  740c                      JZ 0x004904d3
004904c7  8d4e30                    LEA ECX,[ESI + 0x30]
004904ca  e8e19cf7ff                CALL 0x0040a1b0
004904cf  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004904d3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004904d7  0f84cf000000              JZ 0x004905ac
004904dd  6820d4b100                PUSH 0xb1d420
004904e2  8d4f78                    LEA ECX,[EDI + 0x78]
004904e5  e8e6a8f7ff                CALL 0x0040add0
004904ea  84c0                      TEST AL,AL
004904ec  0f84ab000000              JZ 0x0049059d
004904f2  be02000000                MOV ESI,0x2
004904f7  e864ea2500                CALL 0x006eef60
004904fc  660f6ec0                  MOVD XMM0,EAX
00490500  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00490504  c1e81f                    SHR EAX,0x1f
00490507  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00490510  660f5ac0                  CVTPD2PS XMM0,XMM0
00490514  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049051c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00490524  f30f58c0                  ADDSS XMM0,XMM0
00490528  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0049052d  e8eecff8ff                CALL 0x0041d520
00490532  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00490537  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0049053c  e8ffcff8ff                CALL 0x0041d540
00490541  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
00490546  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
0049054e  f30f590d7ca9ba00          MULSS XMM1,dword ptr [0x00baa97c]
00490556  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0049055e  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00490566  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
0049056b  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
00490570  e8ebe92500                CALL 0x006eef60
00490575  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049057b  50                        PUSH EAX
0049057c  6a00                      PUSH 0x0
0049057e  57                        PUSH EDI
0049057f  6840b6c700                PUSH 0xc7b640
00490584  8d4594                    LEA EAX,[EBP + -0x6c]
00490587  50                        PUSH EAX
00490588  6a01                      PUSH 0x1
0049058a  68d4000000                PUSH 0xd4
0049058f  e88c85f9ff                CALL 0x00428b20
00490594  83ee01                    SUB ESI,0x1
00490597  0f855affffff              JNZ 0x004904f7
0049059d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004905a1  7409                      JZ 0x004905ac
004905a3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004905aa  751e                      JNZ 0x004905ca
004905ac  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004905b6  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004905c0  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004905ca  8d8f14040000              LEA ECX,[EDI + 0x414]
004905d0  6a00                      PUSH 0x0
004905d2  e879603500                CALL 0x007e6650
004905d7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004905df  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
004905e2  80bd6cffffff00            CMP byte ptr [EBP + 0xffffff6c],0x0
004905e9  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004905f1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004905f9  7529                      JNZ 0x00490624
004905fb  a178dec700                MOV EAX,[0x00c7de78]
00490600  8d5030                    LEA EDX,[EAX + 0x30]
00490603  85c0                      TEST EAX,EAX
00490605  7505                      JNZ 0x0049060c
00490607  ba18f6c700                MOV EDX,0xc7f618
0049060c  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
0049060f  85c0                      TEST EAX,EAX
00490611  7411                      JZ 0x00490624
00490613  8d48fc                    LEA ECX,[EAX + -0x4]
00490616  8b01                      MOV EAX,dword ptr [ECX]
00490618  2902                      SUB dword ptr [EDX],EAX
0049061a  51                        PUSH ECX
0049061b  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0049061f  ffd6                      CALL ESI
00490621  83c404                    ADD ESP,0x4
00490624  807d9f00                  CMP byte ptr [EBP + -0x61],0x0
00490628  7529                      JNZ 0x00490653
0049062a  a178dec700                MOV EAX,[0x00c7de78]
0049062f  8d5030                    LEA EDX,[EAX + 0x30]
00490632  85c0                      TEST EAX,EAX
00490634  7505                      JNZ 0x0049063b
00490636  ba18f6c700                MOV EDX,0xc7f618
0049063b  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
0049063e  85c0                      TEST EAX,EAX
00490640  7411                      JZ 0x00490653
00490642  8d48fc                    LEA ECX,[EAX + -0x4]
00490645  8b01                      MOV EAX,dword ptr [ECX]
00490647  2902                      SUB dword ptr [EDX],EAX
00490649  51                        PUSH ECX
0049064a  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0049064e  ffd6                      CALL ESI
00490650  83c404                    ADD ESP,0x4
00490653  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00490656  64890d00000000            MOV dword ptr FS:[0x0],ECX
0049065d  59                        POP ECX
0049065e  5f                        POP EDI
0049065f  5e                        POP ESI
00490660  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00490663  33cd                      XOR ECX,EBP
00490665  e8c1ea6500                CALL 0x00aef12b
0049066a  8be5                      MOV ESP,EBP
0049066c  5d                        POP EBP
0049066d  8be3                      MOV ESP,EBX
0049066f  5b                        POP EBX
00490670  c3                        RET
