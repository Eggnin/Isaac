; J460 NPC AI 0x004d1290 AI_004d1290
; types=45
; identities=45.0.0,45.10.0
; entry=004d1290
004d1290  53                        PUSH EBX
004d1291  8bdc                      MOV EBX,ESP
004d1293  83ec08                    SUB ESP,0x8
004d1296  83e4f8                    AND ESP,0xfffffff8
004d1299  83c404                    ADD ESP,0x4
004d129c  55                        PUSH EBP
004d129d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004d12a0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004d12a4  8bec                      MOV EBP,ESP
004d12a6  6aff                      PUSH -0x1
004d12a8  680538af00                PUSH 0xaf3805
004d12ad  64a100000000              MOV EAX,FS:[0x0]
004d12b3  50                        PUSH EAX
004d12b4  53                        PUSH EBX
004d12b5  81ec28010000              SUB ESP,0x128
004d12bb  a1b493bf00                MOV EAX,[0x00bf93b4]
004d12c0  33c5                      XOR EAX,EBP
004d12c2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004d12c5  56                        PUSH ESI
004d12c6  57                        PUSH EDI
004d12c7  50                        PUSH EAX
004d12c8  8d45f4                    LEA EAX,[EBP + -0xc]
004d12cb  64a300000000              MOV FS:[0x0],EAX
004d12d1  8bf9                      MOV EDI,ECX
004d12d3  89bde0feffff              MOV dword ptr [EBP + 0xfffffee0],EDI
004d12d9  33c0                      XOR EAX,EAX
004d12db  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
004d12e1  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004d12e4  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004d12e7  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
004d12ed  e86edc2100                CALL 0x006eef60
004d12f2  33d2                      XOR EDX,EDX
004d12f4  b914000000                MOV ECX,0x14
004d12f9  f7f1                      DIV ECX
004d12fb  83c20a                    ADD EDX,0xa
004d12fe  660f6ec2                  MOVD XMM0,EDX
004d1302  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d1306  c1ea1f                    SHR EDX,0x1f
004d1309  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004d1312  660f5ac8                  CVTPD2PS XMM1,XMM0
004d1316  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004d131b  0f2fc1                    COMISS XMM0,XMM1
004d131e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d1326  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004d132e  0f86a6000000              JBE 0x004d13da
004d1334  e827dc2100                CALL 0x006eef60
004d1339  33d2                      XOR EDX,EDX
004d133b  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
004d1343  b91e000000                MOV ECX,0x1e
004d1348  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004d1350  f7f1                      DIV ECX
004d1352  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d1358  8995d4feffff              MOV dword ptr [EBP + 0xfffffed4],EDX
004d135e  83f812                    CMP EAX,0x12
004d1361  750a                      JNZ 0x004d136d
004d1363  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d136b  eb0d                      JMP 0x004d137a
004d136d  83f813                    CMP EAX,0x13
004d1370  7510                      JNZ 0x004d1382
004d1372  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d137a  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004d1382  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d1388  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004d138e  c785e8feffff61000000      MOV dword ptr [EBP + 0xfffffee8],0x61
004d1398  e8e3534800                CALL 0x00956780
004d139d  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
004d13a5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d13ab  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
004d13b1  83ec08                    SUB ESP,0x8
004d13b4  83c019                    ADD EAX,0x19
004d13b7  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d13bf  f30f110424                MOVSS dword ptr [ESP],XMM0
004d13c4  6a00                      PUSH 0x0
004d13c6  50                        PUSH EAX
004d13c7  51                        PUSH ECX
004d13c8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d13cf  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
004d13d5  e856c84500                CALL 0x0092dc30
004d13da  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004d13e0  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
004d13e6  85c0                      TEST EAX,EAX
004d13e8  0f850e060000              JNZ 0x004d19fc
004d13ee  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004d13f4  83f812                    CMP EAX,0x12
004d13f7  750a                      JNZ 0x004d1403
004d13f9  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004d1401  eb0d                      JMP 0x004d1410
004d1403  83f813                    CMP EAX,0x13
004d1406  7510                      JNZ 0x004d1418
004d1408  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004d1410  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004d1418  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004d141e  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004d1424  c785e8feffff65000000      MOV dword ptr [EBP + 0xfffffee8],0x65
004d142e  e84d534800                CALL 0x00956780
004d1433  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
004d143b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004d1441  83ec08                    SUB ESP,0x8
004d1444  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004d144c  f30f110424                MOVSS dword ptr [ESP],XMM0
004d1451  6a00                      PUSH 0x0
004d1453  6a2d                      PUSH 0x2d
004d1455  51                        PUSH ECX
004d1456  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d145d  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
004d1463  e8c8c74500                CALL 0x0092dc30
004d1468  818f6801000000000400      OR dword ptr [EDI + 0x168],0x40000
004d1472  b101                      MOV CL,0x1
004d1474  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004d1478  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004d147e  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004d1484  888deffeffff              MOV byte ptr [EBP + 0xfffffeef],CL
004d148a  7565                      JNZ 0x004d14f1
004d148c  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
004d1492  898780030000              MOV dword ptr [EDI + 0x380],EAX
004d1498  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004d14a2  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004d14ac  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004d14b2  898734030000              MOV dword ptr [EDI + 0x334],EAX
004d14b8  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004d14be  898738030000              MOV dword ptr [EDI + 0x338],EAX
004d14c4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d14ce  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004d14d8  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d14e2  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004d14ec  e9f3160000                JMP 0x004d2be4
004d14f1  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004d14f9  33f6                      XOR ESI,ESI
004d14fb  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
004d1503  f30f1025f0abba00          MOVSS XMM4,dword ptr [0x00baabf0]
004d150b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004d1510  f30f100cf598c6c500        MOVSS XMM1,dword ptr [ESI*0x8 + 0xc5c698]
004d1519  f30f1004f59cc6c500        MOVSS XMM0,dword ptr [ESI*0x8 + 0xc5c69c]
004d1522  f30f5cca                  SUBSS XMM1,XMM2
004d1526  f30f5cc3                  SUBSS XMM0,XMM3
004d152a  f30f59c9                  MULSS XMM1,XMM1
004d152e  f30f59c0                  MULSS XMM0,XMM0
004d1532  f30f58c1                  ADDSS XMM0,XMM1
004d1536  0f2fe0                    COMISS XMM4,XMM0
004d1539  770b                      JA 0x004d1546
004d153b  46                        INC ESI
004d153c  83fe04                    CMP ESI,0x4
004d153f  7ccf                      JL 0x004d1510
004d1541  e9ae000000                JMP 0x004d15f4
004d1546  660f6ed6                  MOVD XMM2,ESI
004d154a  0f5bd2                    CVTDQ2PS XMM2,XMM2
004d154d  f30f5915b4a9ba00          MULSS XMM2,dword ptr [0x00baa9b4]
004d1555  0f28c2                    MOVAPS XMM0,XMM2
004d1558  f30f591588a0ba00          MULSS XMM2,dword ptr [0x00baa088]
004d1560  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
004d1568  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
004d1570  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
004d1578  0f28c2                    MOVAPS XMM0,XMM2
004d157b  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004d1585  e896bff4ff                CALL 0x0041d520
004d158a  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004d1592  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
004d159a  e8a1bff4ff                CALL 0x0041d540
004d159f  f30f1095e8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee8]
004d15a7  32c9                      XOR CL,CL
004d15a9  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
004d15b1  888deffeffff              MOV byte ptr [EBP + 0xfffffeef],CL
004d15b7  f30f591554a8ba00          MULSS XMM2,dword ptr [0x00baa854]
004d15bf  f30f5804f598c6c500        ADDSS XMM0,dword ptr [ESI*0x8 + 0xc5c698]
004d15c8  f30f5814f59cc6c500        ADDSS XMM2,dword ptr [ESI*0x8 + 0xc5c69c]
004d15d1  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
004d15d9  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
004d15e1  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004d15e7  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004d15ee  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004d15f4  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004d15fa  898734030000              MOV dword ptr [EDI + 0x334],EAX
004d1600  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004d1606  898738030000              MOV dword ptr [EDI + 0x338],EAX
004d160c  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004d1613  0f855c010000              JNZ 0x004d1775
004d1619  84c9                      TEST CL,CL
004d161b  0f8454010000              JZ 0x004d1775
004d1621  6aff                      PUSH -0x1
004d1623  ff7730                    PUSH dword ptr [EDI + 0x30]
004d1626  8bcf                      MOV ECX,EDI
004d1628  6a0a                      PUSH 0xa
004d162a  ff7728                    PUSH dword ptr [EDI + 0x28]
004d162d  e8fef81e00                CALL 0x006c0f30
004d1632  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
004d1638  6a00                      PUSH 0x0
004d163a  898780030000              MOV dword ptr [EDI + 0x380],EAX
004d1640  a17816c700                MOV EAX,[0x00c71678]
004d1645  6a00                      PUSH 0x0
004d1647  6aff                      PUSH -0x1
004d1649  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004d1653  6aff                      PUSH -0x1
004d1655  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004d165f  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d1665  8d45dc                    LEA EAX,[EBP + -0x24]
004d1668  6a2d                      PUSH 0x2d
004d166a  81c118120000              ADD ECX,0x1218
004d1670  c785e8feffff01000000      MOV dword ptr [EBP + 0xfffffee8],0x1
004d167a  50                        PUSH EAX
004d167b  e8e098f4ff                CALL 0x0041af60
004d1680  33c0                      XOR EAX,EAX
004d1682  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004d1689  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
004d168f  3945e8                    CMP dword ptr [EBP + -0x18],EAX
004d1692  0f86b1000000              JBE 0x004d1749
004d1698  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004d169b  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
004d169e  3bcf                      CMP ECX,EDI
004d16a0  0f8493000000              JZ 0x004d1739
004d16a6  6a00                      PUSH 0x0
004d16a8  68acd6c500                PUSH 0xc5d6ac
004d16ad  68dcd5c500                PUSH 0xc5d5dc
004d16b2  6a00                      PUSH 0x0
004d16b4  51                        PUSH ECX
004d16b5  e8f7f16100                CALL 0x00af08b1
004d16ba  8bf0                      MOV ESI,EAX
004d16bc  83c414                    ADD ESP,0x14
004d16bf  83bebc03000000            CMP dword ptr [ESI + 0x3bc],0x0
004d16c6  756b                      JNZ 0x004d1733
004d16c8  6aff                      PUSH -0x1
004d16ca  ff7730                    PUSH dword ptr [EDI + 0x30]
004d16cd  8bce                      MOV ECX,ESI
004d16cf  ff762c                    PUSH dword ptr [ESI + 0x2c]
004d16d2  ff7628                    PUSH dword ptr [ESI + 0x28]
004d16d5  e856f81e00                CALL 0x006c0f30
004d16da  8b8684030000              MOV EAX,dword ptr [ESI + 0x384]
004d16e0  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004d16e6  898680030000              MOV dword ptr [ESI + 0x380],EAX
004d16ec  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004d16f2  85c9                      TEST ECX,ECX
004d16f4  741e                      JZ 0x004d1714
004d16f6  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
004d16fc  81c1cc030000              ADD ECX,0x3cc
004d1702  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004d1708  50                        PUSH EAX
004d1709  e802dbffff                CALL 0x004cf210
004d170e  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004d1714  50                        PUSH EAX
004d1715  8bcf                      MOV ECX,EDI
004d1717  8938                      MOV dword ptr [EAX],EDI
004d1719  e8d2c5ffff                CALL 0x004cdcf0
004d171e  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
004d1724  8bc1                      MOV EAX,ECX
004d1726  41                        INC ECX
004d1727  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
004d172d  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
004d1733  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
004d1739  40                        INC EAX
004d173a  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
004d1740  3b45e8                    CMP EAX,dword ptr [EBP + -0x18]
004d1743  0f824fffffff              JC 0x004d1698
004d1749  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d1750  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004d1754  751f                      JNZ 0x004d1775
004d1756  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004d175d  b101                      MOV CL,0x1
004d175f  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
004d1762  6a00                      PUSH 0x0
004d1764  6a00                      PUSH 0x0
004d1766  e845315900                CALL 0x00a648b0
004d176b  83c408                    ADD ESP,0x8
004d176e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d1775  83bdd0feffff03            CMP dword ptr [EBP + 0xfffffed0],0x3
004d177c  0f85ef000000              JNZ 0x004d1871
004d1782  33f6                      XOR ESI,ESI
004d1784  39b7c8000000              CMP dword ptr [EDI + 0xc8],ESI
004d178a  0f86d8000000              JBE 0x004d1868
004d1790  3bb754010000              CMP ESI,dword ptr [EDI + 0x154]
004d1796  0f84bf000000              JZ 0x004d185b
004d179c  8d4f48                    LEA ECX,[EDI + 0x48]
004d179f  56                        PUSH ESI
004d17a0  e87b9af3ff                CALL 0x0040b220
004d17a5  8b00                      MOV EAX,dword ptr [EAX]
004d17a7  85c0                      TEST EAX,EAX
004d17a9  7414                      JZ 0x004d17bf
004d17ab  83c020                    ADD EAX,0x20
004d17ae  8d4dd4                    LEA ECX,[EBP + -0x2c]
004d17b1  50                        PUSH EAX
004d17b2  e899b7f3ff                CALL 0x0040cf50
004d17b7  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004d17ba  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
004d17bd  eb17                      JMP 0x004d17d6
004d17bf  33c0                      XOR EAX,EAX
004d17c1  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004d17c8  ba0f000000                MOV EDX,0xf
004d17cd  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004d17d0  8955e8                    MOV dword ptr [EBP + -0x18],EDX
004d17d3  8845d4                    MOV byte ptr [EBP + -0x2c],AL
004d17d6  8d48fc                    LEA ECX,[EAX + -0x4]
004d17d9  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004d17e0  3bc8                      CMP ECX,EAX
004d17e2  7713                      JA 0x004d17f7
004d17e4  83fa10                    CMP EDX,0x10
004d17e7  894de4                    MOV dword ptr [EBP + -0x1c],ECX
004d17ea  8d45d4                    LEA EAX,[EBP + -0x2c]
004d17ed  0f4345d4                  CMOVNC EAX,dword ptr [EBP + -0x2c]
004d17f1  c6040800                  MOV byte ptr [EAX + ECX*0x1],0x0
004d17f5  eb0d                      JMP 0x004d1804
004d17f7  2bc8                      SUB ECX,EAX
004d17f9  6a00                      PUSH 0x0
004d17fb  51                        PUSH ECX
004d17fc  8d4dd4                    LEA ECX,[EBP + -0x2c]
004d17ff  e86c30f4ff                CALL 0x00414870
004d1804  6a0e                      PUSH 0xe
004d1806  68f802b600                PUSH 0xb602f8
004d180b  8d4dd4                    LEA ECX,[EBP + -0x2c]
004d180e  e8dd7ffcff                CALL 0x004997f0
004d1813  8d45d4                    LEA EAX,[EBP + -0x2c]
004d1816  50                        PUSH EAX
004d1817  56                        PUSH ESI
004d1818  8d4f48                    LEA ECX,[EDI + 0x48]
004d181b  e810a7f3ff                CALL 0x0040bf30
004d1820  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d1827  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004d182a  83fa10                    CMP EDX,0x10
004d182d  722c                      JC 0x004d185b
004d182f  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004d1832  42                        INC EDX
004d1833  8bc1                      MOV EAX,ECX
004d1835  81fa00100000              CMP EDX,0x1000
004d183b  7214                      JC 0x004d1851
004d183d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004d1840  83c223                    ADD EDX,0x23
004d1843  2bc1                      SUB EAX,ECX
004d1845  83c0fc                    ADD EAX,-0x4
004d1848  83f81f                    CMP EAX,0x1f
004d184b  0f879e000000              JA 0x004d18ef
004d1851  52                        PUSH EDX
004d1852  51                        PUSH ECX
004d1853  e804d96100                CALL 0x00aef15c
004d1858  83c408                    ADD ESP,0x8
004d185b  46                        INC ESI
004d185c  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
004d1862  0f8228ffffff              JC 0x004d1790
004d1868  51                        PUSH ECX
004d1869  8d4f48                    LEA ECX,[EDI + 0x48]
004d186c  e88fa7f3ff                CALL 0x0040c000
004d1871  80bdeffeffff00            CMP byte ptr [EBP + 0xfffffeef],0x0
004d1878  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004d1882  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d188c  0f845b010000              JZ 0x004d19ed
004d1892  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004d1898  33c9                      XOR ECX,ECX
004d189a  81c6a8ba0100              ADD ESI,0x1baa8
004d18a0  c745e40000a043            MOV dword ptr [EBP + -0x1c],0x43a00000
004d18a7  c745e80000b943            MOV dword ptr [EBP + -0x18],0x43b90000
004d18ae  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
004d18b4  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004d18b7  2b06                      SUB EAX,dword ptr [ESI]
004d18b9  c1f802                    SAR EAX,0x2
004d18bc  85c0                      TEST EAX,EAX
004d18be  0f841f010000              JZ 0x004d19e3
004d18c4  85c9                      TEST ECX,ECX
004d18c6  752d                      JNZ 0x004d18f5
004d18c8  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004d18cb  2b06                      SUB EAX,dword ptr [ESI]
004d18cd  c1f802                    SAR EAX,0x2
004d18d0  85c0                      TEST EAX,EAX
004d18d2  750f                      JNZ 0x004d18e3
004d18d4  68bce6b700                PUSH 0xb7e6bc
004d18d9  6a10                      PUSH 0x10
004d18db  e8e0f95300                CALL 0x00a112c0
004d18e0  83c408                    ADD ESP,0x8
004d18e3  8b0e                      MOV ECX,dword ptr [ESI]
004d18e5  8d45e4                    LEA EAX,[EBP + -0x1c]
004d18e8  8b09                      MOV ECX,dword ptr [ECX]
004d18ea  e9c1000000                JMP 0x004d19b0
004d18ef  ff159488b100              CALL dword ptr [0x00b18894]
004d18f5  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004d18f8  8bc1                      MOV EAX,ECX
004d18fa  8b16                      MOV EDX,dword ptr [ESI]
004d18fc  2bc2                      SUB EAX,EDX
004d18fe  c1f802                    SAR EAX,0x2
004d1901  85c0                      TEST EAX,EAX
004d1903  7514                      JNZ 0x004d1919
004d1905  68bce6b700                PUSH 0xb7e6bc
004d190a  6a10                      PUSH 0x10
004d190c  e8aff95300                CALL 0x00a112c0
004d1911  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004d1914  83c408                    ADD ESP,0x8
004d1917  8b16                      MOV EDX,dword ptr [ESI]
004d1919  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
004d191f  2bca                      SUB ECX,EDX
004d1921  c1f902                    SAR ECX,0x2
004d1924  3bc1                      CMP EAX,ECX
004d1926  7303                      JNC 0x004d192b
004d1928  8d1482                    LEA EDX,[EDX + EAX*0x4]
004d192b  8b32                      MOV ESI,dword ptr [EDX]
004d192d  e82ed62100                CALL 0x006eef60
004d1932  660f6ec0                  MOVD XMM0,EAX
004d1936  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d193a  c1e81f                    SHR EAX,0x1f
004d193d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d1946  660f5ac0                  CVTPD2PS XMM0,XMM0
004d194a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d1952  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004d195a  f30f58c0                  ADDSS XMM0,XMM0
004d195e  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004d1966  e8d5bbf4ff                CALL 0x0041d540
004d196b  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004d1973  f30f580514abba00          ADDSS XMM0,dword ptr [0x00baab14]
004d197b  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
004d1983  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
004d198b  e890bbf4ff                CALL 0x0041d520
004d1990  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004d1998  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004d199e  8bce                      MOV ECX,ESI
004d19a0  f30f580540abba00          ADDSS XMM0,dword ptr [0x00baab40]
004d19a8  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004d19b0  6a00                      PUSH 0x0
004d19b2  6a00                      PUSH 0x0
004d19b4  50                        PUSH EAX
004d19b5  e896bf2f00                CALL 0x007cd950
004d19ba  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004d19c0  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
004d19c6  81c6a8ba0100              ADD ESI,0x1baa8
004d19cc  41                        INC ECX
004d19cd  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
004d19d3  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004d19d6  2b06                      SUB EAX,dword ptr [ESI]
004d19d8  c1f802                    SAR EAX,0x2
004d19db  3bc8                      CMP ECX,EAX
004d19dd  0f82e1feffff              JC 0x004d18c4
004d19e3  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004d19ed  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d19f7  e9bd110000                JMP 0x004d2bb9
004d19fc  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004d1a02  85c9                      TEST ECX,ECX
004d1a04  742e                      JZ 0x004d1a34
004d1a06  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004d1a0c  85c0                      TEST EAX,EAX
004d1a0e  7409                      JZ 0x004d1a19
004d1a10  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
004d1a17  7415                      JZ 0x004d1a2e
004d1a19  8d4dc4                    LEA ECX,[EBP + -0x3c]
004d1a1c  e84f42f6ff                CALL 0x00435c70
004d1a21  8b17                      MOV EDX,dword ptr [EDI]
004d1a23  8bcf                      MOV ECX,EDI
004d1a25  50                        PUSH EAX
004d1a26  ff5224                    CALL dword ptr [EDX + 0x24]
004d1a29  e948110000                JMP 0x004d2b76
004d1a2e  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
004d1a34  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d1a38  7409                      JZ 0x004d1a43
004d1a3a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004d1a41  750f                      JNZ 0x004d1a52
004d1a43  83f806                    CMP EAX,0x6
004d1a46  740a                      JZ 0x004d1a52
004d1a48  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d1a52  85c9                      TEST ECX,ECX
004d1a54  0f85a6080000              JNZ 0x004d2300
004d1a5a  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d1a5e  b828000000                MOV EAX,0x28
004d1a63  ba0f000000                MOV EDX,0xf
004d1a68  0f45d0                    CMOVNZ EDX,EAX
004d1a6b  a17816c700                MOV EAX,[0x00c71678]
004d1a70  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d1a76  8a01                      MOV AL,byte ptr [ECX]
004d1a78  8885effeffff              MOV byte ptr [EBP + 0xfffffeef],AL
004d1a7e  84c0                      TEST AL,AL
004d1a80  a17816c700                MOV EAX,[0x00c71678]
004d1a85  7505                      JNZ 0x004d1a8c
004d1a87  83ceff                    OR ESI,0xffffffff
004d1a8a  eb0c                      JMP 0x004d1a98
004d1a8c  8bb0f8640200              MOV ESI,dword ptr [EAX + 0x264f8]
004d1a92  2bb1f0110000              SUB ESI,dword ptr [ECX + 0x11f0]
004d1a98  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004d1a9f  89b5e8feffff              MOV dword ptr [EBP + 0xfffffee8],ESI
004d1aa5  0f856b020000              JNZ 0x004d1d16
004d1aab  80bdeffeffff00            CMP byte ptr [EBP + 0xfffffeef],0x0
004d1ab2  0f845e020000              JZ 0x004d1d16
004d1ab8  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004d1abe  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004d1ac4  83f806                    CMP EAX,0x6
004d1ac7  0f8e49020000              JLE 0x004d1d16
004d1acd  8bca                      MOV ECX,EDX
004d1acf  e83cd51a00                CALL 0x0067f010
004d1ad4  85c0                      TEST EAX,EAX
004d1ad6  7409                      JZ 0x004d1ae1
004d1ad8  83fe3c                    CMP ESI,0x3c
004d1adb  0f8d35020000              JGE 0x004d1d16
004d1ae1  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004d1ae8  0f8528020000              JNZ 0x004d1d16
004d1aee  e86dd42100                CALL 0x006eef60
004d1af3  33d2                      XOR EDX,EDX
004d1af5  b903000000                MOV ECX,0x3
004d1afa  f7f1                      DIV ECX
004d1afc  85d2                      TEST EDX,EDX
004d1afe  7414                      JZ 0x004d1b14
004d1b00  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d1b04  740e                      JZ 0x004d1b14
004d1b06  83fe3c                    CMP ESI,0x3c
004d1b09  7c09                      JL 0x004d1b14
004d1b0b  c685effeffff00            MOV byte ptr [EBP + 0xfffffeef],0x0
004d1b12  eb10                      JMP 0x004d1b24
004d1b14  c685effeffff01            MOV byte ptr [EBP + 0xfffffeef],0x1
004d1b1b  83fe3c                    CMP ESI,0x3c
004d1b1e  0f8c9b000000              JL 0x004d1bbf
004d1b24  be98c6c500                MOV ESI,0xc5c698
004d1b29  0f1f8000000000            NOP dword ptr [EAX]
004d1b30  8bcf                      MOV ECX,EDI
004d1b32  e809cd1e00                CALL 0x006be840
004d1b37  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004d1b3f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004d1b47  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
004d1b4b  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004d1b50  f30f59c0                  MULSS XMM0,XMM0
004d1b54  f30f59c9                  MULSS XMM1,XMM1
004d1b58  f30f58c8                  ADDSS XMM1,XMM0
004d1b5c  f30f100518acba00          MOVSS XMM0,dword ptr [0x00baac18]
004d1b64  0f2fc1                    COMISS XMM0,XMM1
004d1b67  7714                      JA 0x004d1b7d
004d1b69  83c608                    ADD ESI,0x8
004d1b6c  81feb8c6c500              CMP ESI,0xc5c6b8
004d1b72  7cbc                      JL 0x004d1b30
004d1b74  80bdeffeffff00            CMP byte ptr [EBP + 0xfffffeef],0x0
004d1b7b  753c                      JNZ 0x004d1bb9
004d1b7d  e8ded32100                CALL 0x006eef60
004d1b82  b978000000                MOV ECX,0x78
004d1b87  33d2                      XOR EDX,EDX
004d1b89  f7f1                      DIV ECX
004d1b8b  51                        PUSH ECX
004d1b8c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1b93  6a00                      PUSH 0x0
004d1b95  8d422d                    LEA EAX,[EDX + 0x2d]
004d1b98  50                        PUSH EAX
004d1b99  51                        PUSH ECX
004d1b9a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1ba1  8bcf                      MOV ECX,EDI
004d1ba3  6a65                      PUSH 0x65
004d1ba5  e8f64f2000                CALL 0x006d6ba0
004d1baa  c787a00b00001e000000      MOV dword ptr [EDI + 0xba0],0x1e
004d1bb4  e95d010000                JMP 0x004d1d16
004d1bb9  8bb5e8feffff              MOV ESI,dword ptr [EBP + 0xfffffee8]
004d1bbf  51                        PUSH ECX
004d1bc0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1bc7  6a00                      PUSH 0x0
004d1bc9  6a02                      PUSH 0x2
004d1bcb  51                        PUSH ECX
004d1bcc  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1bd3  8bcf                      MOV ECX,EDI
004d1bd5  6a5d                      PUSH 0x5d
004d1bd7  e8c44f2000                CALL 0x006d6ba0
004d1bdc  32c9                      XOR CL,CL
004d1bde  83fe3c                    CMP ESI,0x3c
004d1be1  7d16                      JGE 0x004d1bf9
004d1be3  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004d1be9  898734030000              MOV dword ptr [EDI + 0x334],EAX
004d1bef  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004d1bf7  eb21                      JMP 0x004d1c1a
004d1bf9  8bcf                      MOV ECX,EDI
004d1bfb  e840cc1e00                CALL 0x006be840
004d1c00  b101                      MOV CL,0x1
004d1c02  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004d1c0a  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004d1c12  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004d1c1a  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
004d1c22  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004d1c28  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
004d1c2e  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004d1c34  898740030000              MOV dword ptr [EDI + 0x340],EAX
004d1c3a  837f3003                  CMP dword ptr [EDI + 0x30],0x3
004d1c3e  7552                      JNZ 0x004d1c92
004d1c40  84c9                      TEST CL,CL
004d1c42  744e                      JZ 0x004d1c92
004d1c44  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
004d1c4b  7f45                      JG 0x004d1c92
004d1c4d  6a01                      PUSH 0x1
004d1c4f  681c03b600                PUSH 0xb6031c
004d1c54  8d4f48                    LEA ECX,[EDI + 0x48]
004d1c57  e87489f3ff                CALL 0x0040a5d0
004d1c5c  84c0                      TEST AL,AL
004d1c5e  740f                      JZ 0x004d1c6f
004d1c60  8d4f78                    LEA ECX,[EDI + 0x78]
004d1c63  e84885f3ff                CALL 0x0040a1b0
004d1c68  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004d1c6f  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004d1c79  c787c40b000002000000      MOV dword ptr [EDI + 0xbc4],0x2
004d1c83  c787a00b0000b4000000      MOV dword ptr [EDI + 0xba0],0xb4
004d1c8d  e984000000                JMP 0x004d1d16
004d1c92  6a01                      PUSH 0x1
004d1c94  685ce5b100                PUSH 0xb1e55c
004d1c99  8d4f48                    LEA ECX,[EDI + 0x48]
004d1c9c  e82f89f3ff                CALL 0x0040a5d0
004d1ca1  84c0                      TEST AL,AL
004d1ca3  740f                      JZ 0x004d1cb4
004d1ca5  8d4f78                    LEA ECX,[EDI + 0x78]
004d1ca8  e80385f3ff                CALL 0x0040a1b0
004d1cad  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004d1cb4  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004d1cb7  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004d1cc1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004d1ccb  83f802                    CMP EAX,0x2
004d1cce  7523                      JNZ 0x004d1cf3
004d1cd0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d1cd4  7413                      JZ 0x004d1ce9
004d1cd6  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004d1cde  8d4f78                    LEA ECX,[EDI + 0x78]
004d1ce1  e81a71f3ff                CALL 0x00408e00
004d1ce6  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004d1ce9  c787100400000a000000      MOV dword ptr [EDI + 0x410],0xa
004d1cf3  c787a00b000050000000      MOV dword ptr [EDI + 0xba0],0x50
004d1cfd  83f802                    CMP EAX,0x2
004d1d00  7514                      JNZ 0x004d1d16
004d1d02  c787a00b000032000000      MOV dword ptr [EDI + 0xba0],0x32
004d1d0c  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004d1d16  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004d1d1c  83f807                    CMP EAX,0x7
004d1d1f  0f8593010000              JNZ 0x004d1eb8
004d1d25  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004d1d2b  8db73c030000              LEA ESI,[EDI + 0x33c]
004d1d31  8906                      MOV dword ptr [ESI],EAX
004d1d33  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004d1d39  894604                    MOV dword ptr [ESI + 0x4],EAX
004d1d3c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d1d40  742f                      JZ 0x004d1d71
004d1d42  8d4f78                    LEA ECX,[EDI + 0x78]
004d1d45  68dcd2b100                PUSH 0xb1d2dc
004d1d4a  e82191f3ff                CALL 0x0040ae70
004d1d4f  84c0                      TEST AL,AL
004d1d51  741e                      JZ 0x004d1d71
004d1d53  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d1d57  7411                      JZ 0x004d1d6a
004d1d59  6854e5b100                PUSH 0xb1e554
004d1d5e  8d4f78                    LEA ECX,[EDI + 0x78]
004d1d61  e80a91f3ff                CALL 0x0040ae70
004d1d66  84c0                      TEST AL,AL
004d1d68  7507                      JNZ 0x004d1d71
004d1d6a  b804000000                MOV EAX,0x4
004d1d6f  eb02                      JMP 0x004d1d73
004d1d71  33c0                      XOR EAX,EAX
004d1d73  898788010000              MOV dword ptr [EDI + 0x188],EAX
004d1d79  8d5748                    LEA EDX,[EDI + 0x48]
004d1d7c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d1d80  0f84bd000000              JZ 0x004d1e43
004d1d86  68dcd2b100                PUSH 0xb1d2dc
004d1d8b  8d4f78                    LEA ECX,[EDI + 0x78]
004d1d8e  e83d90f3ff                CALL 0x0040add0
004d1d93  84c0                      TEST AL,AL
004d1d95  0f84a5000000              JZ 0x004d1e40
004d1d9b  51                        PUSH ECX
004d1d9c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1da3  6a00                      PUSH 0x0
004d1da5  6a02                      PUSH 0x2
004d1da7  51                        PUSH ECX
004d1da8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1daf  8bcf                      MOV ECX,EDI
004d1db1  6a34                      PUSH 0x34
004d1db3  e8e84d2000                CALL 0x006d6ba0
004d1db8  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
004d1dbf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d1dc5  6a00                      PUSH 0x0
004d1dc7  6a00                      PUSH 0x0
004d1dc9  6800000001                PUSH 0x1000000
004d1dce  83ec10                    SUB ESP,0x10
004d1dd1  8bc4                      MOV EAX,ESP
004d1dd3  57                        PUSH EDI
004d1dd4  6a00                      PUSH 0x0
004d1dd6  83ec08                    SUB ESP,0x8
004d1dd9  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004d1ddc  c744240400004842          MOV dword ptr [ESP + 0x4],0x42480000
004d1de4  c7042400009643            MOV dword ptr [ESP],0x43960000
004d1deb  56                        PUSH ESI
004d1dec  e8afd42200                CALL 0x006ff2a0
004d1df1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d1df7  6a0d                      PUSH 0xd
004d1df9  83ec08                    SUB ESP,0x8
004d1dfc  c74424040000803e          MOV dword ptr [ESP + 0x4],0x3e800000
004d1e04  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
004d1e0b  56                        PUSH ESI
004d1e0c  e85f192300                CALL 0x00703770
004d1e11  f30f101d10a3ba00          MOVSS XMM3,dword ptr [0x00baa310]
004d1e19  51                        PUSH ECX
004d1e1a  0f28d3                    MOVAPS XMM2,XMM3
004d1e1d  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004d1e24  0f28cb                    MOVAPS XMM1,XMM3
004d1e27  8d4d98                    LEA ECX,[EBP + -0x68]
004d1e2a  e8c11af5ff                CALL 0x004238f0
004d1e2f  f30f1095d8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed8]
004d1e37  8bcf                      MOV ECX,EDI
004d1e39  50                        PUSH EAX
004d1e3a  56                        PUSH ESI
004d1e3b  e810471e00                CALL 0x006b6550
004d1e40  8d5748                    LEA EDX,[EDI + 0x48]
004d1e43  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004d1e4b  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
004d1e51  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004d1e59  2bc8                      SUB ECX,EAX
004d1e5b  03f1                      ADD ESI,ECX
004d1e5d  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d1e61  89b710040000              MOV dword ptr [EDI + 0x410],ESI
004d1e67  0f8586030000              JNZ 0x004d21f3
004d1e6d  8bca                      MOV ECX,EDX
004d1e6f  e80c89f3ff                CALL 0x0040a780
004d1e74  83f828                    CMP EAX,0x28
004d1e77  0f8c76030000              JL 0x004d21f3
004d1e7d  8d4f48                    LEA ECX,[EDI + 0x48]
004d1e80  e8fb88f3ff                CALL 0x0040a780
004d1e85  83f832                    CMP EAX,0x32
004d1e88  0f8d65030000              JGE 0x004d21f3
004d1e8e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d1e92  7416                      JZ 0x004d1eaa
004d1e94  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
004d1e9c  8d4f78                    LEA ECX,[EDI + 0x78]
004d1e9f  e85c6ff3ff                CALL 0x00408e00
004d1ea4  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
004d1eaa  8d460a                    LEA EAX,[ESI + 0xa]
004d1ead  898710040000              MOV dword ptr [EDI + 0x410],EAX
004d1eb3  e93b030000                JMP 0x004d21f3
004d1eb8  83f806                    CMP EAX,0x6
004d1ebb  0f8506030000              JNZ 0x004d21c7
004d1ec1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d1ec5  0f844d020000              JZ 0x004d2118
004d1ecb  68dcd2b100                PUSH 0xb1d2dc
004d1ed0  8d4f78                    LEA ECX,[EDI + 0x78]
004d1ed3  e8f88ef3ff                CALL 0x0040add0
004d1ed8  84c0                      TEST AL,AL
004d1eda  0f848a010000              JZ 0x004d206a
004d1ee0  51                        PUSH ECX
004d1ee1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1ee8  6a00                      PUSH 0x0
004d1eea  6a02                      PUSH 0x2
004d1eec  51                        PUSH ECX
004d1eed  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d1ef4  8bcf                      MOV ECX,EDI
004d1ef6  6a34                      PUSH 0x34
004d1ef8  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004d1f02  e8994c2000                CALL 0x006d6ba0
004d1f07  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
004d1f0e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d1f14  8db73c030000              LEA ESI,[EDI + 0x33c]
004d1f1a  6a00                      PUSH 0x0
004d1f1c  6a00                      PUSH 0x0
004d1f1e  6800000001                PUSH 0x1000000
004d1f23  83ec10                    SUB ESP,0x10
004d1f26  8bc4                      MOV EAX,ESP
004d1f28  57                        PUSH EDI
004d1f29  6a00                      PUSH 0x0
004d1f2b  83ec08                    SUB ESP,0x8
004d1f2e  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004d1f31  c744240400004842          MOV dword ptr [ESP + 0x4],0x42480000
004d1f39  c7042400009643            MOV dword ptr [ESP],0x43960000
004d1f40  56                        PUSH ESI
004d1f41  e85ad32200                CALL 0x006ff2a0
004d1f46  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d1f4c  6a0d                      PUSH 0xd
004d1f4e  83ec08                    SUB ESP,0x8
004d1f51  c74424040000803e          MOV dword ptr [ESP + 0x4],0x3e800000
004d1f59  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
004d1f60  56                        PUSH ESI
004d1f61  e80a182300                CALL 0x00703770
004d1f66  8b06                      MOV EAX,dword ptr [ESI]
004d1f68  898734030000              MOV dword ptr [EDI + 0x334],EAX
004d1f6e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004d1f71  898738030000              MOV dword ptr [EDI + 0x338],EAX
004d1f77  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004d1f7e  0f85b7000000              JNZ 0x004d203b
004d1f84  8d4d98                    LEA ECX,[EBP + -0x68]
004d1f87  e8e451f3ff                CALL 0x00407170
004d1f8c  f30f1095d8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed8]
004d1f94  8bcf                      MOV ECX,EDI
004d1f96  50                        PUSH EAX
004d1f97  56                        PUSH ESI
004d1f98  e823471e00                CALL 0x006b66c0
004d1f9d  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
004d1fa7  e8b4cf2100                CALL 0x006eef60
004d1fac  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d1fb2  50                        PUSH EAX
004d1fb3  6a0a                      PUSH 0xa
004d1fb5  57                        PUSH EDI
004d1fb6  6840b6c700                PUSH 0xc7b640
004d1fbb  56                        PUSH ESI
004d1fbc  6a48                      PUSH 0x48
004d1fbe  68e8030000                PUSH 0x3e8
004d1fc3  e8586bf5ff                CALL 0x00428b20
004d1fc8  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
004d1fce  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
004d1fd4  8db0bc030000              LEA ESI,[EAX + 0x3bc]
004d1fda  85c9                      TEST ECX,ECX
004d1fdc  7418                      JZ 0x004d1ff6
004d1fde  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
004d1fe4  89b5d0feffff              MOV dword ptr [EBP + 0xfffffed0],ESI
004d1fea  50                        PUSH EAX
004d1feb  81c1cc030000              ADD ECX,0x3cc
004d1ff1  e81ad2ffff                CALL 0x004cf210
004d1ff6  56                        PUSH ESI
004d1ff7  8bcf                      MOV ECX,EDI
004d1ff9  893e                      MOV dword ptr [ESI],EDI
004d1ffb  e8f0bcffff                CALL 0x004cdcf0
004d2000  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
004d2006  8db73c030000              LEA ESI,[EDI + 0x33c]
004d200c  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
004d2012  660f6ec0                  MOVD XMM0,EAX
004d2016  40                        INC EAX
004d2017  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
004d201d  0f5bc0                    CVTDQ2PS XMM0,XMM0
004d2020  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004d2028  f30f118174040000          MOVSS dword ptr [ECX + 0x474],XMM0
004d2030  83f804                    CMP EAX,0x4
004d2033  0f8c6effffff              JL 0x004d1fa7
004d2039  eb2f                      JMP 0x004d206a
004d203b  f30f101d10a3ba00          MOVSS XMM3,dword ptr [0x00baa310]
004d2043  51                        PUSH ECX
004d2044  0f28d3                    MOVAPS XMM2,XMM3
004d2047  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004d204e  0f28cb                    MOVAPS XMM1,XMM3
004d2051  8d4d98                    LEA ECX,[EBP + -0x68]
004d2054  e89718f5ff                CALL 0x004238f0
004d2059  f30f1095d8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed8]
004d2061  8bcf                      MOV ECX,EDI
004d2063  50                        PUSH EAX
004d2064  56                        PUSH ESI
004d2065  e8e6441e00                CALL 0x006b6550
004d206a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d206e  0f84a4000000              JZ 0x004d2118
004d2074  6854e5b100                PUSH 0xb1e554
004d2079  8d4f78                    LEA ECX,[EDI + 0x78]
004d207c  e84f8df3ff                CALL 0x0040add0
004d2081  84c0                      TEST AL,AL
004d2083  0f8480000000              JZ 0x004d2109
004d2089  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004d2090  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d209a  7e6d                      JLE 0x004d2109
004d209c  8bcf                      MOV ECX,EDI
004d209e  e89dc71e00                CALL 0x006be840
004d20a3  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004d20ab  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004d20b3  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004d20bb  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
004d20c3  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
004d20ca  753d                      JNZ 0x004d2109
004d20cc  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004d20d3  8d4d98                    LEA ECX,[EBP + -0x68]
004d20d6  8b07                      MOV EAX,dword ptr [EDI]
004d20d8  6a01                      PUSH 0x1
004d20da  6a01                      PUSH 0x1
004d20dc  68ff000000                PUSH 0xff
004d20e1  6a08                      PUSH 0x8
004d20e3  0f114598                  MOVUPS xmmword ptr [EBP + -0x68],XMM0
004d20e7  c745b80000803f            MOV dword ptr [EBP + -0x48],0x3f800000
004d20ee  0f57c0                    XORPS XMM0,XMM0
004d20f1  c745bccdcc4c3e            MOV dword ptr [EBP + -0x44],0x3e4ccccd
004d20f8  51                        PUSH ECX
004d20f9  8bcf                      MOV ECX,EDI
004d20fb  c745c0cdcc4c3e            MOV dword ptr [EBP + -0x40],0x3e4ccccd
004d2102  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
004d2106  ff503c                    CALL dword ptr [EAX + 0x3c]
004d2109  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d210d  7409                      JZ 0x004d2118
004d210f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004d2116  754a                      JNZ 0x004d2162
004d2118  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004d211e  85c0                      TEST EAX,EAX
004d2120  7f0c                      JG 0x004d212e
004d2122  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d212c  eb34                      JMP 0x004d2162
004d212e  83c0ff                    ADD EAX,-0x1
004d2131  ba0803b600                MOV EDX,0xb60308
004d2136  b92c03b600                MOV ECX,0xb6032c
004d213b  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004d2141  0f45ca                    CMOVNZ ECX,EDX
004d2144  6a01                      PUSH 0x1
004d2146  51                        PUSH ECX
004d2147  8d4f48                    LEA ECX,[EDI + 0x48]
004d214a  e88184f3ff                CALL 0x0040a5d0
004d214f  84c0                      TEST AL,AL
004d2151  740f                      JZ 0x004d2162
004d2153  8d4f78                    LEA ECX,[EDI + 0x78]
004d2156  e85580f3ff                CALL 0x0040a1b0
004d215b  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004d2162  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
004d2169  7542                      JNZ 0x004d21ad
004d216b  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004d2173  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004d217b  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004d2183  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004d218b  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004d2193  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004d219b  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004d21a3  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004d21ab  eb46                      JMP 0x004d21f3
004d21ad  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004d21b3  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
004d21b9  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004d21bf  898740030000              MOV dword ptr [EDI + 0x340],EAX
004d21c5  eb2c                      JMP 0x004d21f3
004d21c7  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004d21cd  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
004d21d3  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004d21d9  898740030000              MOV dword ptr [EDI + 0x340],EAX
004d21df  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004d21e9  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d21f3  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004d21fa  0f8476090000              JZ 0x004d2b76
004d2200  51                        PUSH ECX
004d2201  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d2208  6a00                      PUSH 0x0
004d220a  6a02                      PUSH 0x2
004d220c  51                        PUSH ECX
004d220d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d2214  8bcf                      MOV ECX,EDI
004d2216  6a52                      PUSH 0x52
004d2218  e883492000                CALL 0x006d6ba0
004d221d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d2223  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004d2229  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
004d222f  83b86412000000            CMP dword ptr [EAX + 0x1264],0x0
004d2236  0f868f000000              JBE 0x004d22cb
004d223c  33ff                      XOR EDI,EDI
004d223e  6690                      NOP
004d2240  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004d2246  8b34b8                    MOV ESI,dword ptr [EAX + EDI*0x4]
004d2249  8bce                      MOV ECX,ESI
004d224b  8b06                      MOV EAX,dword ptr [ESI]
004d224d  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
004d2250  ffd0                      CALL EAX
004d2252  84c0                      TEST AL,AL
004d2254  745a                      JZ 0x004d22b0
004d2256  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
004d225c  a144b6c700                MOV EAX,[0x00c7b644]
004d2261  6a1e                      PUSH 0x1e
004d2263  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
004d2266  894ddc                    MOV dword ptr [EBP + -0x24],ECX
004d2269  8d4dc4                    LEA ECX,[EBP + -0x3c]
004d226c  51                        PUSH ECX
004d226d  6a00                      PUSH 0x0
004d226f  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004d2272  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004d2275  8b06                      MOV EAX,dword ptr [ESI]
004d2277  6a00                      PUSH 0x0
004d2279  51                        PUSH ECX
004d227a  8bce                      MOV ECX,ESI
004d227c  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
004d2283  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
004d228a  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004d2291  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
004d2298  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004d229f  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004d22a6  c704240000c842            MOV dword ptr [ESP],0x42c80000
004d22ad  ff5020                    CALL dword ptr [EAX + 0x20]
004d22b0  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
004d22b6  47                        INC EDI
004d22b7  3bb864120000              CMP EDI,dword ptr [EAX + 0x1264]
004d22bd  7281                      JC 0x004d2240
004d22bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d22c5  8bbde0feffff              MOV EDI,dword ptr [EBP + 0xfffffee0]
004d22cb  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004d22d1  c7801472000014000000      MOV dword ptr [EAX + 0x7214],0x14
004d22db  c7801872000006000000      MOV dword ptr [EAX + 0x7218],0x6
004d22e5  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004d22eb  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
004d22f5  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004d22fb  e976080000                JMP 0x004d2b76
004d2300  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004d2306  8db73c030000              LEA ESI,[EDI + 0x33c]
004d230c  8906                      MOV dword ptr [ESI],EAX
004d230e  8bcf                      MOV ECX,EDI
004d2310  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004d2316  894604                    MOV dword ptr [ESI + 0x4],EAX
004d2319  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004d2321  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004d2329  e84254f7ff                CALL 0x00447770
004d232e  8bcf                      MOV ECX,EDI
004d2330  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
004d2338  0f2f85e0feffff            COMISS XMM0,dword ptr [EBP + 0xfffffee0]
004d233f  7627                      JBE 0x004d2368
004d2341  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004d2349  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004d2351  e81a54f7ff                CALL 0x00447770
004d2356  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004d235e  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
004d2366  eb11                      JMP 0x004d2379
004d2368  e80354f7ff                CALL 0x00447770
004d236d  8b8080030000              MOV EAX,dword ptr [EAX + 0x380]
004d2373  898780030000              MOV dword ptr [EDI + 0x380],EAX
004d2379  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004d2380  741e                      JZ 0x004d23a0
004d2382  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
004d2388  8d4d9c                    LEA ECX,[EBP + -0x64]
004d238b  8b06                      MOV EAX,dword ptr [ESI]
004d238d  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
004d2390  e8db38f6ff                CALL 0x00435c70
004d2395  50                        PUSH EAX
004d2396  8bce                      MOV ECX,ESI
004d2398  ffd2                      CALL EDX
004d239a  8db73c030000              LEA ESI,[EDI + 0x33c]
004d23a0  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
004d23a7  0f85fe000000              JNZ 0x004d24ab
004d23ad  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d23b1  0f84eb000000              JZ 0x004d24a2
004d23b7  6898d5b100                PUSH 0xb1d598
004d23bc  8d4f78                    LEA ECX,[EDI + 0x78]
004d23bf  e80c8af3ff                CALL 0x0040add0
004d23c4  84c0                      TEST AL,AL
004d23c6  0f84d6000000              JZ 0x004d24a2
004d23cc  51                        PUSH ECX
004d23cd  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d23d4  6a00                      PUSH 0x0
004d23d6  6a02                      PUSH 0x2
004d23d8  51                        PUSH ECX
004d23d9  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
004d23e0  8bcf                      MOV ECX,EDI
004d23e2  6a30                      PUSH 0x30
004d23e4  e8b7472000                CALL 0x006d6ba0
004d23e9  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
004d23f1  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004d23f9  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004d2401  e83ab1f4ff                CALL 0x0041d540
004d2406  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004d240e  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004d2416  e805b1f4ff                CALL 0x0041d520
004d241b  f30f10a5d0feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffed0]
004d2423  0f28c8                    MOVAPS XMM1,XMM0
004d2426  f30f590d10a9ba00          MULSS XMM1,dword ptr [0x00baa910]
004d242e  0f28d4                    MOVAPS XMM2,XMM4
004d2431  83ec10                    SUB ESP,0x10
004d2434  f30f592510a9ba00          MULSS XMM4,dword ptr [0x00baa910]
004d243c  0f57ed                    XORPS XMM5,XMM5
004d243f  8bc4                      MOV EAX,ESP
004d2441  83ec08                    SUB ESP,0x8
004d2444  f30f59c5                  MULSS XMM0,XMM5
004d2448  f30f101deca8ba00          MOVSS XMM3,dword ptr [0x00baa8ec]
004d2450  f30f59d5                  MULSS XMM2,XMM5
004d2454  f30f58c4                  ADDSS XMM0,XMM4
004d2458  f30f5cd1                  SUBSS XMM2,XMM1
004d245c  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004d2461  f30f5816                  ADDSS XMM2,dword ptr [ESI]
004d2465  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004d246d  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
004d2474  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
004d247c  f30f1015a0a8ba00          MOVSS XMM2,dword ptr [0x00baa8a0]
004d2484  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004d2487  c744240400004842          MOV dword ptr [ESP + 0x4],0x42480000
004d248f  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004d2495  6a00                      PUSH 0x0
004d2497  6a00                      PUSH 0x0
004d2499  6a00                      PUSH 0x0
004d249b  57                        PUSH EDI
004d249c  50                        PUSH EAX
004d249d  e8bec82200                CALL 0x006fed60
004d24a2  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
004d24a9  742e                      JZ 0x004d24d9
004d24ab  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004d24b1  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004d24b9  f30f104838                MOVSS XMM1,dword ptr [EAX + 0x38]
004d24be  0f2fc1                    COMISS XMM0,XMM1
004d24c1  7616                      JBE 0x004d24d9
004d24c3  ff7048                    PUSH dword ptr [EAX + 0x48]
004d24c6  ff7040                    PUSH dword ptr [EAX + 0x40]
004d24c9  ff703c                    PUSH dword ptr [EAX + 0x3c]
004d24cc  51                        PUSH ECX
004d24cd  8bcf                      MOV ECX,EDI
004d24cf  f30f110c24                MOVSS dword ptr [ESP],XMM1
004d24d4  e8c79d1d00                CALL 0x006ac2a0
004d24d9  ff7720                    PUSH dword ptr [EDI + 0x20]
004d24dc  8bcf                      MOV ECX,EDI
004d24de  6a04                      PUSH 0x4
004d24e0  e82ba21d00                CALL 0x006ac710
004d24e5  84c0                      TEST AL,AL
004d24e7  0f841d040000              JZ 0x004d290a
004d24ed  a17816c700                MOV EAX,[0x00c71678]
004d24f2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d24f8  803900                    CMP byte ptr [ECX],0x0
004d24fb  0f8409040000              JZ 0x004d290a
004d2501  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004d2507  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004d250d  83f83c                    CMP EAX,0x3c
004d2510  0f8ef4030000              JLE 0x004d290a
004d2516  8bcf                      MOV ECX,EDI
004d2518  e823c31e00                CALL 0x006be840
004d251d  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004d2522  f30f101e                  MOVSS XMM3,dword ptr [ESI]
004d2526  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004d252e  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
004d2536  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004d253e  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004d2546  f30f589040030000          ADDSS XMM2,dword ptr [EAX + 0x340]
004d254e  f30f58883c030000          ADDSS XMM1,dword ptr [EAX + 0x33c]
004d2556  f30f5cc2                  SUBSS XMM0,XMM2
004d255a  f30f5cd9                  SUBSS XMM3,XMM1
004d255e  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004d2566  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
004d256e  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004d2575  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004d257d  f30f119de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM3
004d2585  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004d258d  e8aeaff4ff                CALL 0x0041d540
004d2592  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004d259a  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004d25a2  e879aff4ff                CALL 0x0041d520
004d25a7  f30f109dd0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffed0]
004d25af  f30f10a5e4feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffee4]
004d25b7  0f28eb                    MOVAPS XMM5,XMM3
004d25ba  f30f59ade8feffff          MULSS XMM5,dword ptr [EBP + 0xfffffee8]
004d25c2  0f28cc                    MOVAPS XMM1,XMM4
004d25c5  f30f59a5e8feffff          MULSS XMM4,dword ptr [EBP + 0xfffffee8]
004d25cd  f30f59d8                  MULSS XMM3,XMM0
004d25d1  f30f59c8                  MULSS XMM1,XMM0
004d25d5  f30f100514a9ba00          MOVSS XMM0,dword ptr [0x00baa914]
004d25dd  f30f5ce3                  SUBSS XMM4,XMM3
004d25e1  f30f58e9                  ADDSS XMM5,XMM1
004d25e5  f30f100d40cbba00          MOVSS XMM1,dword ptr [0x00bacb40]
004d25ed  0f54e1                    ANDPS XMM4,XMM1
004d25f0  0f2fc4                    COMISS XMM0,XMM4
004d25f3  0f82ec000000              JC 0x004d26e5
004d25f9  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
004d2601  0f54e9                    ANDPS XMM5,XMM1
004d2604  0f2fc5                    COMISS XMM0,XMM5
004d2607  0f82d8000000              JC 0x004d26e5
004d260d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004d2613  83f809                    CMP EAX,0x9
004d2616  0f84c9000000              JZ 0x004d26e5
004d261c  83f80b                    CMP EAX,0xb
004d261f  0f84c0000000              JZ 0x004d26e5
004d2625  8bcf                      MOV ECX,EDI
004d2627  e84451f7ff                CALL 0x00447770
004d262c  83b8640b000007            CMP dword ptr [EAX + 0xb64],0x7
004d2633  0f84ac000000              JZ 0x004d26e5
004d2639  8bcf                      MOV ECX,EDI
004d263b  e83051f7ff                CALL 0x00447770
004d2640  83b8640b000006            CMP dword ptr [EAX + 0xb64],0x6
004d2647  0f8498000000              JZ 0x004d26e5
004d264d  837f3003                  CMP dword ptr [EDI + 0x30],0x3
004d2651  0f848e000000              JZ 0x004d26e5
004d2657  e804c92100                CALL 0x006eef60
004d265c  a807                      TEST AL,0x7
004d265e  0f8581000000              JNZ 0x004d26e5
004d2664  a17816c700                MOV EAX,[0x00c71678]
004d2669  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d266f  803900                    CMP byte ptr [ECX],0x0
004d2672  7471                      JZ 0x004d26e5
004d2674  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004d267a  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004d2680  83f83c                    CMP EAX,0x3c
004d2683  7e60                      JLE 0x004d26e5
004d2685  6a01                      PUSH 0x1
004d2687  8d4f48                    LEA ECX,[EDI + 0x48]
004d268a  681403b600                PUSH 0xb60314
004d268f  e83c7ff3ff                CALL 0x0040a5d0
004d2694  84c0                      TEST AL,AL
004d2696  7415                      JZ 0x004d26ad
004d2698  8d4f78                    LEA ECX,[EDI + 0x78]
004d269b  e8107bf3ff                CALL 0x0040a1b0
004d26a0  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004d26a7  8db73c030000              LEA ESI,[EDI + 0x33c]
004d26ad  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004d26b3  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004d26bd  ff7048                    PUSH dword ptr [EAX + 0x48]
004d26c0  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
004d26c5  ff7040                    PUSH dword ptr [EAX + 0x40]
004d26c8  f30f5905f0a4ba00          MULSS XMM0,dword ptr [0x00baa4f0]
004d26d0  ff703c                    PUSH dword ptr [EAX + 0x3c]
004d26d3  51                        PUSH ECX
004d26d4  8bcf                      MOV ECX,EDI
004d26d6  f30f110424                MOVSS dword ptr [ESP],XMM0
004d26db  e8c09b1d00                CALL 0x006ac2a0
004d26e0  e925020000                JMP 0x004d290a
004d26e5  e876c82100                CALL 0x006eef60
004d26ea  33d2                      XOR EDX,EDX
004d26ec  b964000000                MOV ECX,0x64
004d26f1  f7f1                      DIV ECX
004d26f3  85d2                      TEST EDX,EDX
004d26f5  0f8528010000              JNZ 0x004d2823
004d26fb  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004d2702  0f851b010000              JNZ 0x004d2823
004d2708  8bcf                      MOV ECX,EDI
004d270a  e86150f7ff                CALL 0x00447770
004d270f  83b8a40b000002            CMP dword ptr [EAX + 0xba4],0x2
004d2716  7d06                      JGE 0x004d271e
004d2718  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d271c  7532                      JNZ 0x004d2750
004d271e  8bcf                      MOV ECX,EDI
004d2720  e84b50f7ff                CALL 0x00447770
004d2725  83b8a40b000001            CMP dword ptr [EAX + 0xba4],0x1
004d272c  0f8df1000000              JGE 0x004d2823
004d2732  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d2736  0f85e7000000              JNZ 0x004d2823
004d273c  8bcf                      MOV ECX,EDI
004d273e  e82d50f7ff                CALL 0x00447770
004d2743  83b8a00b000000            CMP dword ptr [EAX + 0xba0],0x0
004d274a  0f85d3000000              JNZ 0x004d2823
004d2750  837f3003                  CMP dword ptr [EDI + 0x30],0x3
004d2754  756d                      JNZ 0x004d27c3
004d2756  8bcf                      MOV ECX,EDI
004d2758  e81350f7ff                CALL 0x00447770
004d275d  83b8640b000006            CMP dword ptr [EAX + 0xb64],0x6
004d2764  745d                      JZ 0x004d27c3
004d2766  a17816c700                MOV EAX,[0x00c71678]
004d276b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d2771  803900                    CMP byte ptr [ECX],0x0
004d2774  744d                      JZ 0x004d27c3
004d2776  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004d277c  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004d2782  83f83c                    CMP EAX,0x3c
004d2785  7e3c                      JLE 0x004d27c3
004d2787  6a01                      PUSH 0x1
004d2789  8d4f48                    LEA ECX,[EDI + 0x48]
004d278c  684403b600                PUSH 0xb60344
004d2791  e83a7ef3ff                CALL 0x0040a5d0
004d2796  84c0                      TEST AL,AL
004d2798  7415                      JZ 0x004d27af
004d279a  8d4f78                    LEA ECX,[EDI + 0x78]
004d279d  e80e7af3ff                CALL 0x0040a1b0
004d27a2  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004d27a9  8db73c030000              LEA ESI,[EDI + 0x33c]
004d27af  8bcf                      MOV ECX,EDI
004d27b1  e8ba4ff7ff                CALL 0x00447770
004d27b6  ff80a40b0000              INC dword ptr [EAX + 0xba4]
004d27bc  b80b000000                MOV EAX,0xb
004d27c1  eb3a                      JMP 0x004d27fd
004d27c3  6a01                      PUSH 0x1
004d27c5  8d4f48                    LEA ECX,[EDI + 0x48]
004d27c8  684cd3b100                PUSH 0xb1d34c
004d27cd  e8fe7df3ff                CALL 0x0040a5d0
004d27d2  84c0                      TEST AL,AL
004d27d4  7415                      JZ 0x004d27eb
004d27d6  8d4f78                    LEA ECX,[EDI + 0x78]
004d27d9  e8d279f3ff                CALL 0x0040a1b0
004d27de  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004d27e5  8db73c030000              LEA ESI,[EDI + 0x33c]
004d27eb  8bcf                      MOV ECX,EDI
004d27ed  e87e4ff7ff                CALL 0x00447770
004d27f2  ff80a40b0000              INC dword ptr [EAX + 0xba4]
004d27f8  b808000000                MOV EAX,0x8
004d27fd  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004d2803  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d2807  0f85fd000000              JNZ 0x004d290a
004d280d  8bcf                      MOV ECX,EDI
004d280f  e85c4ff7ff                CALL 0x00447770
004d2814  c780a00b000064000000      MOV dword ptr [EAX + 0xba0],0x64
004d281e  e9e7000000                JMP 0x004d290a
004d2823  a17816c700                MOV EAX,[0x00c71678]
004d2828  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004d282e  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004d2834  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004d283a  03c8                      ADD ECX,EAX
004d283c  33c0                      XOR EAX,EAX
004d283e  85c9                      TEST ECX,ECX
004d2840  0f4fc1                    CMOVG EAX,ECX
004d2843  83f808                    CMP EAX,0x8
004d2846  7d12                      JGE 0x004d285a
004d2848  e813c72100                CALL 0x006eef60
004d284d  33d2                      XOR EDX,EDX
004d284f  b932000000                MOV ECX,0x32
004d2854  f7f1                      DIV ECX
004d2856  85d2                      TEST EDX,EDX
004d2858  743e                      JZ 0x004d2898
004d285a  a17816c700                MOV EAX,[0x00c71678]
004d285f  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004d2865  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004d286b  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004d2871  03c8                      ADD ECX,EAX
004d2873  33c0                      XOR EAX,EAX
004d2875  85c9                      TEST ECX,ECX
004d2877  0f4fc1                    CMOVG EAX,ECX
004d287a  83f806                    CMP EAX,0x6
004d287d  0f8d87000000              JGE 0x004d290a
004d2883  33c9                      XOR ECX,ECX
004d2885  837f3003                  CMP dword ptr [EDI + 0x30],0x3
004d2889  0f94c1                    SETZ CL
004d288c  83c104                    ADD ECX,0x4
004d288f  e87cc71a00                CALL 0x0067f010
004d2894  85c0                      TEST EAX,EAX
004d2896  7572                      JNZ 0x004d290a
004d2898  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004d289f  7f69                      JG 0x004d290a
004d28a1  83bf640b00000b            CMP dword ptr [EDI + 0xb64],0xb
004d28a8  7460                      JZ 0x004d290a
004d28aa  8bcf                      MOV ECX,EDI
004d28ac  e8bf4ef7ff                CALL 0x00447770
004d28b1  83b8a00b000000            CMP dword ptr [EAX + 0xba0],0x0
004d28b8  7550                      JNZ 0x004d290a
004d28ba  a17816c700                MOV EAX,[0x00c71678]
004d28bf  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d28c5  803900                    CMP byte ptr [ECX],0x0
004d28c8  7440                      JZ 0x004d290a
004d28ca  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004d28d0  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004d28d6  83f83c                    CMP EAX,0x3c
004d28d9  7e2f                      JLE 0x004d290a
004d28db  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d28df  7429                      JZ 0x004d290a
004d28e1  6a00                      PUSH 0x0
004d28e3  e878c62100                CALL 0x006eef60
004d28e8  a801                      TEST AL,0x1
004d28ea  b95003b600                MOV ECX,0xb60350
004d28ef  b83c03b600                MOV EAX,0xb6033c
004d28f4  0f44c1                    CMOVZ EAX,ECX
004d28f7  8d4f48                    LEA ECX,[EDI + 0x48]
004d28fa  50                        PUSH EAX
004d28fb  e8807af3ff                CALL 0x0040a380
004d2900  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
004d290a  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004d2911  0f85eb020000              JNZ 0x004d2c02
004d2917  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d2921  83bf640b00000b            CMP dword ptr [EDI + 0xb64],0xb
004d2928  0f851d020000              JNZ 0x004d2b4b
004d292e  68dcd2b100                PUSH 0xb1d2dc
004d2933  8d4f48                    LEA ECX,[EDI + 0x48]
004d2936  e8f586f3ff                CALL 0x0040b030
004d293b  84c0                      TEST AL,AL
004d293d  0f8408020000              JZ 0x004d2b4b
004d2943  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
004d294b  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
004d2953  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004d295b  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004d2963  e8b8abf4ff                CALL 0x0041d520
004d2968  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
004d2970  6a00                      PUSH 0x0
004d2972  57                        PUSH EDI
004d2973  6840b6c700                PUSH 0xc7b640
004d2978  6a14                      PUSH 0x14
004d297a  51                        PUSH ECX
004d297b  f30f110c24                MOVSS dword ptr [ESP],XMM1
004d2980  56                        PUSH ESI
004d2981  6a01                      PUSH 0x1
004d2983  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004d298b  e880c94900                CALL 0x0096f310
004d2990  0f57c0                    XORPS XMM0,XMM0
004d2993  83c41c                    ADD ESP,0x1c
004d2996  0f2f85e4feffff            COMISS XMM0,dword ptr [EBP + 0xfffffee4]
004d299d  8bf0                      MOV ESI,EAX
004d299f  7708                      JA 0x004d29a9
004d29a1  f30f1005c4abba00          MOVSS XMM0,dword ptr [0x00baabc4]
004d29a9  8b06                      MOV EAX,dword ptr [ESI]
004d29ab  8bce                      MOV ECX,ESI
004d29ad  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
004d29b5  c686c004000001            MOV byte ptr [ESI + 0x4c0],0x1
004d29bc  c786c404000000000000      MOV dword ptr [ESI + 0x4c4],0x0
004d29c6  c786c80400000000c040      MOV dword ptr [ESI + 0x4c8],0x40c00000
004d29d0  c786cc04000000000040      MOV dword ptr [ESI + 0x4cc],0x40000000
004d29da  ff500c                    CALL dword ptr [EAX + 0xc]
004d29dd  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
004d29e5  6a00                      PUSH 0x0
004d29e7  57                        PUSH EDI
004d29e8  6840b6c700                PUSH 0xc7b640
004d29ed  6a14                      PUSH 0x14
004d29ef  51                        PUSH ECX
004d29f0  f30f110424                MOVSS dword ptr [ESP],XMM0
004d29f5  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004d29fb  51                        PUSH ECX
004d29fc  6a01                      PUSH 0x1
004d29fe  e80dc94900                CALL 0x0096f310
004d2a03  0f57c0                    XORPS XMM0,XMM0
004d2a06  83c41c                    ADD ESP,0x1c
004d2a09  0f2f85e4feffff            COMISS XMM0,dword ptr [EBP + 0xfffffee4]
004d2a10  8bc8                      MOV ECX,EAX
004d2a12  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
004d2a18  7708                      JA 0x004d2a22
004d2a1a  f30f1005c4abba00          MOVSS XMM0,dword ptr [0x00baabc4]
004d2a22  8b01                      MOV EAX,dword ptr [ECX]
004d2a24  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
004d2a2c  c681c004000001            MOV byte ptr [ECX + 0x4c0],0x1
004d2a33  c781c404000000000000      MOV dword ptr [ECX + 0x4c4],0x0
004d2a3d  c781c80400000000c0c0      MOV dword ptr [ECX + 0x4c8],0xc0c00000
004d2a47  c781cc040000000000c0      MOV dword ptr [ECX + 0x4cc],0xc0000000
004d2a51  ff500c                    CALL dword ptr [EAX + 0xc]
004d2a54  6a00                      PUSH 0x0
004d2a56  6a00                      PUSH 0x0
004d2a58  ba05000000                MOV EDX,0x5
004d2a5d  b9502f4d00                MOV ECX,0x4d2f50
004d2a62  e899841300                CALL 0x0060af00
004d2a67  8b88c0030000              MOV ECX,dword ptr [EAX + 0x3c0]
004d2a6d  83c408                    ADD ESP,0x8
004d2a70  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
004d2a76  05c0030000                ADD EAX,0x3c0
004d2a7b  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
004d2a81  85c9                      TEST ECX,ECX
004d2a83  7418                      JZ 0x004d2a9d
004d2a85  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004d2a88  81c1cc030000              ADD ECX,0x3cc
004d2a8e  8d45e8                    LEA EAX,[EBP + -0x18]
004d2a91  50                        PUSH EAX
004d2a92  e879c7ffff                CALL 0x004cf210
004d2a97  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
004d2a9d  50                        PUSH EAX
004d2a9e  8bce                      MOV ECX,ESI
004d2aa0  8930                      MOV dword ptr [EAX],ESI
004d2aa2  e849b2ffff                CALL 0x004cdcf0
004d2aa7  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
004d2aad  81c1c4030000              ADD ECX,0x3c4
004d2ab3  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
004d2ab9  8b01                      MOV EAX,dword ptr [ECX]
004d2abb  85c0                      TEST EAX,EAX
004d2abd  7418                      JZ 0x004d2ad7
004d2abf  894de8                    MOV dword ptr [EBP + -0x18],ECX
004d2ac2  8d4de8                    LEA ECX,[EBP + -0x18]
004d2ac5  51                        PUSH ECX
004d2ac6  8d88cc030000              LEA ECX,[EAX + 0x3cc]
004d2acc  e83fc7ffff                CALL 0x004cf210
004d2ad1  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
004d2ad7  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
004d2add  8901                      MOV dword ptr [ECX],EAX
004d2adf  51                        PUSH ECX
004d2ae0  8bc8                      MOV ECX,EAX
004d2ae2  e809b2ffff                CALL 0x004cdcf0
004d2ae7  6a00                      PUSH 0x0
004d2ae9  6a00                      PUSH 0x0
004d2aeb  ba0f000000                MOV EDX,0xf
004d2af0  b9d02f4d00                MOV ECX,0x4d2fd0
004d2af5  e806841300                CALL 0x0060af00
004d2afa  8b88c0030000              MOV ECX,dword ptr [EAX + 0x3c0]
004d2b00  83c408                    ADD ESP,0x8
004d2b03  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
004d2b09  05c0030000                ADD EAX,0x3c0
004d2b0e  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
004d2b14  85c9                      TEST ECX,ECX
004d2b16  7418                      JZ 0x004d2b30
004d2b18  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004d2b1b  81c1cc030000              ADD ECX,0x3cc
004d2b21  8d45e8                    LEA EAX,[EBP + -0x18]
004d2b24  50                        PUSH EAX
004d2b25  e8e6c6ffff                CALL 0x004cf210
004d2b2a  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
004d2b30  50                        PUSH EAX
004d2b31  8bce                      MOV ECX,ESI
004d2b33  8930                      MOV dword ptr [EAX],ESI
004d2b35  e8b6b1ffff                CALL 0x004cdcf0
004d2b3a  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
004d2b40  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
004d2b46  e8d5671d00                CALL 0x006a9320
004d2b4b  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
004d2b51  3b87640b0000              CMP EAX,dword ptr [EDI + 0xb64]
004d2b57  741d                      JZ 0x004d2b76
004d2b59  83f808                    CMP EAX,0x8
004d2b5c  7405                      JZ 0x004d2b63
004d2b5e  83f80b                    CMP EAX,0xb
004d2b61  7513                      JNZ 0x004d2b76
004d2b63  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d2b67  740d                      JZ 0x004d2b76
004d2b69  8bcf                      MOV ECX,EDI
004d2b6b  e8004cf7ff                CALL 0x00447770
004d2b70  ff88a40b0000              DEC dword ptr [EAX + 0xba4]
004d2b76  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
004d2b7c  85d2                      TEST EDX,EDX
004d2b7e  7e21                      JLE 0x004d2ba1
004d2b80  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004d2b88  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004d2b90  2bc8                      SUB ECX,EAX
004d2b92  33c0                      XOR EAX,EAX
004d2b94  03ca                      ADD ECX,EDX
004d2b96  85c9                      TEST ECX,ECX
004d2b98  0f4fc1                    CMOVG EAX,ECX
004d2b9b  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004d2ba1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004d2ba9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004d2bb1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004d2bb9  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004d2bbe  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004d2bc5  761d                      JBE 0x004d2be4
004d2bc7  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004d2bca  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004d2bcd  7415                      JZ 0x004d2be4
004d2bcf  90                        NOP
004d2bd0  8378102d                  CMP dword ptr [EAX + 0x10],0x2d
004d2bd4  7506                      JNZ 0x004d2bdc
004d2bd6  c70000000000              MOV dword ptr [EAX],0x0
004d2bdc  83c038                    ADD EAX,0x38
004d2bdf  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004d2be2  75ec                      JNZ 0x004d2bd0
004d2be4  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004d2be7  64890d00000000            MOV dword ptr FS:[0x0],ECX
004d2bee  59                        POP ECX
004d2bef  5f                        POP EDI
004d2bf0  5e                        POP ESI
004d2bf1  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004d2bf4  33cd                      XOR ECX,EBP
004d2bf6  e830c56100                CALL 0x00aef12b
004d2bfb  8be5                      MOV ESP,EBP
004d2bfd  5d                        POP EBP
004d2bfe  8be3                      MOV ESP,EBX
004d2c00  5b                        POP EBX
004d2c01  c3                        RET
004d2c02  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d2c06  7429                      JZ 0x004d2c31
004d2c08  6898d5b100                PUSH 0xb1d598
004d2c0d  8d4f78                    LEA ECX,[EDI + 0x78]
004d2c10  e85b82f3ff                CALL 0x0040ae70
004d2c15  84c0                      TEST AL,AL
004d2c17  7418                      JZ 0x004d2c31
004d2c19  687cdab100                PUSH 0xb1da7c
004d2c1e  8d4f48                    LEA ECX,[EDI + 0x48]
004d2c21  e86a84f3ff                CALL 0x0040b090
004d2c26  84c0                      TEST AL,AL
004d2c28  7507                      JNZ 0x004d2c31
004d2c2a  b904000000                MOV ECX,0x4
004d2c2f  eb02                      JMP 0x004d2c33
004d2c31  33c9                      XOR ECX,ECX
004d2c33  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004d2c39  898f88010000              MOV dword ptr [EDI + 0x188],ECX
004d2c3f  83f80a                    CMP EAX,0xa
004d2c42  0f85f8010000              JNZ 0x004d2e40
004d2c48  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004d2c4c  0f84f9feffff              JZ 0x004d2b4b
004d2c52  68dcd2b100                PUSH 0xb1d2dc
004d2c57  8d4f78                    LEA ECX,[EDI + 0x78]
004d2c5a  e87181f3ff                CALL 0x0040add0
004d2c5f  84c0                      TEST AL,AL
004d2c61  0f84e4feffff              JZ 0x004d2b4b
004d2c67  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d2c6d  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004d2c73  50                        PUSH EAX
004d2c74  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004d2c7a  e881003400                CALL 0x00812d00
004d2c7f  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
004d2c84  f30f1016                  MOVSS XMM2,dword ptr [ESI]
004d2c88  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
004d2c8d  f30f5c10                  SUBSS XMM2,dword ptr [EAX]
004d2c91  0f28c1                    MOVAPS XMM0,XMM1
004d2c94  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004d2c9c  f30f59c1                  MULSS XMM0,XMM1
004d2ca0  0f28ca                    MOVAPS XMM1,XMM2
004d2ca3  f30f59ca                  MULSS XMM1,XMM2
004d2ca7  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
004d2caf  f30f58c1                  ADDSS XMM0,XMM1
004d2cb3  e8982df6ff                CALL 0x00435a50
004d2cb8  f30f100d68a8ba00          MOVSS XMM1,dword ptr [0x00baa868]
004d2cc0  f30f5ec8                  DIVSS XMM1,XMM0
004d2cc4  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004d2cc7  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
004d2ccf  f30f59c1                  MULSS XMM0,XMM1
004d2cd3  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004d2cdb  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
004d2ce3  f30f59c1                  MULSS XMM0,XMM1
004d2ce7  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004d2cef  83f803                    CMP EAX,0x3
004d2cf2  7565                      JNZ 0x004d2d59
004d2cf4  e867c22100                CALL 0x006eef60
004d2cf9  33d2                      XOR EDX,EDX
004d2cfb  b906000000                MOV ECX,0x6
004d2d00  f7f1                      DIV ECX
004d2d02  8b34959c03b600            MOV ESI,dword ptr [EDX*0x4 + 0xb6039c]
004d2d09  81fe18000003              CMP ESI,0x3000018
004d2d0f  7521                      JNZ 0x004d2d32
004d2d11  6a03                      PUSH 0x3
004d2d13  6a18                      PUSH 0x18
004d2d15  8d45dc                    LEA EAX,[EBP + -0x24]
004d2d18  8bcf                      MOV ECX,EDI
004d2d1a  50                        PUSH EAX
004d2d1b  e840df1f00                CALL 0x006d0c60
004d2d20  b901000000                MOV ECX,0x1
004d2d25  39480c                    CMP dword ptr [EAX + 0xc],ECX
004d2d28  760b                      JBE 0x004d2d35
004d2d2a  888deffeffff              MOV byte ptr [EBP + 0xfffffeef],CL
004d2d30  eb0a                      JMP 0x004d2d3c
004d2d32  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004d2d35  c685effeffff00            MOV byte ptr [EBP + 0xfffffeef],0x0
004d2d3c  f6c101                    TEST CL,0x1
004d2d3f  7408                      JZ 0x004d2d49
004d2d41  8d4ddc                    LEA ECX,[EBP + -0x24]
004d2d44  e86748f4ff                CALL 0x004175b0
004d2d49  80bdeffeffff00            CMP byte ptr [EBP + 0xfffffeef],0x0
004d2d50  7438                      JZ 0x004d2d8a
004d2d52  be12000000                MOV ESI,0x12
004d2d57  eb31                      JMP 0x004d2d8a
004d2d59  83f801                    CMP EAX,0x1
004d2d5c  7517                      JNZ 0x004d2d75
004d2d5e  e8fdc12100                CALL 0x006eef60
004d2d63  33d2                      XOR EDX,EDX
004d2d65  b905000000                MOV ECX,0x5
004d2d6a  f7f1                      DIV ECX
004d2d6c  8b34958803b600            MOV ESI,dword ptr [EDX*0x4 + 0xb60388]
004d2d73  eb15                      JMP 0x004d2d8a
004d2d75  e8e6c12100                CALL 0x006eef60
004d2d7a  33d2                      XOR EDX,EDX
004d2d7c  b90c000000                MOV ECX,0xc
004d2d81  f7f1                      DIV ECX
004d2d83  8b34955803b600            MOV ESI,dword ptr [EDX*0x4 + 0xb60358]
004d2d8a  51                        PUSH ECX
004d2d8b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d2d92  6a00                      PUSH 0x0
004d2d94  6a02                      PUSH 0x2
004d2d96  e8c5c12100                CALL 0x006eef60
004d2d9b  51                        PUSH ECX
004d2d9c  8bcf                      MOV ECX,EDI
004d2d9e  660f6ec0                  MOVD XMM0,EAX
004d2da2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d2da6  c1e81f                    SHR EAX,0x1f
004d2da9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d2db2  660f5ac0                  CVTPD2PS XMM0,XMM0
004d2db6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d2dbe  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004d2dc6  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
004d2dce  f30f110424                MOVSS dword ptr [ESP],XMM0
004d2dd3  6809010000                PUSH 0x109
004d2dd8  e8c33d2000                CALL 0x006d6ba0
004d2ddd  e87ec12100                CALL 0x006eef60
004d2de2  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d2dea  f30f5c85e4feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffee4]
004d2df2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d2df8  50                        PUSH EAX
004d2df9  6a00                      PUSH 0x0
004d2dfb  57                        PUSH EDI
004d2dfc  6840b6c700                PUSH 0xc7b640
004d2e01  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d2e06  8d45e4                    LEA EAX,[EBP + -0x1c]
004d2e09  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004d2e11  f30f5c85d8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffed8]
004d2e19  50                        PUSH EAX
004d2e1a  8bc6                      MOV EAX,ESI
004d2e1c  81e6ffffff00              AND ESI,0xffffff
004d2e22  c1e818                    SHR EAX,0x18
004d2e25  50                        PUSH EAX
004d2e26  56                        PUSH ESI
004d2e27  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004d2e2c  e8ef5cf5ff                CALL 0x00428b20
004d2e31  c787a00b000064000000      MOV dword ptr [EDI + 0xba0],0x64
004d2e3b  e90bfdffff                JMP 0x004d2b4b
004d2e40  83f808                    CMP EAX,0x8
004d2e43  0f85d8faffff              JNZ 0x004d2921
004d2e49  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004d2e4d  0f85cefaffff              JNZ 0x004d2921
004d2e53  a17816c700                MOV EAX,[0x00c71678]
004d2e58  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004d2e5e  803900                    CMP byte ptr [ECX],0x0
004d2e61  0f84bafaffff              JZ 0x004d2921
004d2e67  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004d2e6d  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004d2e73  83f878                    CMP EAX,0x78
004d2e76  0f8ea5faffff              JLE 0x004d2921
004d2e7c  68dcd2b100                PUSH 0xb1d2dc
004d2e81  8d4f48                    LEA ECX,[EDI + 0x48]
004d2e84  e8a781f3ff                CALL 0x0040b030
004d2e89  84c0                      TEST AL,AL
004d2e8b  0f8490faffff              JZ 0x004d2921
004d2e91  8bcf                      MOV ECX,EDI
004d2e93  e8a8b91e00                CALL 0x006be840
004d2e98  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
004d2e9d  f30f1016                  MOVSS XMM2,dword ptr [ESI]
004d2ea1  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004d2ea9  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
004d2eb1  0f28c1                    MOVAPS XMM0,XMM1
004d2eb4  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004d2ebc  f30f59c1                  MULSS XMM0,XMM1
004d2ec0  0f28ca                    MOVAPS XMM1,XMM2
004d2ec3  f30f59ca                  MULSS XMM1,XMM2
004d2ec7  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004d2ecc  f30f58c1                  ADDSS XMM0,XMM1
004d2ed0  e87b2bf6ff                CALL 0x00435a50
004d2ed5  f30f100dc0adba00          MOVSS XMM1,dword ptr [0x00baadc0]
004d2edd  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
004d2ee3  f30f5ec8                  DIVSS XMM1,XMM0
004d2ee7  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004d2eec  f30f59c1                  MULSS XMM0,XMM1
004d2ef0  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
004d2ef8  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004d2f00  f30f59c1                  MULSS XMM0,XMM1
004d2f04  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004d2f0c  e81fc0f6ff                CALL 0x0043ef30
004d2f11  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
004d2f19  8bcf                      MOV ECX,EDI
004d2f1b  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004d2f1f  50                        PUSH EAX
004d2f20  6a02                      PUSH 0x2
004d2f22  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004d2f28  50                        PUSH EAX
004d2f29  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004d2f2e  8d45e4                    LEA EAX,[EBP + -0x1c]
004d2f31  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
004d2f39  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004d2f3e  50                        PUSH EAX
004d2f3f  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004d2f44  e897831f00                CALL 0x006cb2e0
004d2f49  e9fdfbffff                JMP 0x004d2b4b
