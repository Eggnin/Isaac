; J460 NPC AI 0x004a12f0 AI_004a12f0
; types=914
; identities=914.0.0
; entry=004a12f0
004a12f0  53                        PUSH EBX
004a12f1  8bdc                      MOV EBX,ESP
004a12f3  83ec08                    SUB ESP,0x8
004a12f6  83e4f8                    AND ESP,0xfffffff8
004a12f9  83c404                    ADD ESP,0x4
004a12fc  55                        PUSH EBP
004a12fd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004a1300  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004a1304  8bec                      MOV EBP,ESP
004a1306  6aff                      PUSH -0x1
004a1308  688b2faf00                PUSH 0xaf2f8b
004a130d  64a100000000              MOV EAX,FS:[0x0]
004a1313  50                        PUSH EAX
004a1314  53                        PUSH EBX
004a1315  81ec50010000              SUB ESP,0x150
004a131b  a1b493bf00                MOV EAX,[0x00bf93b4]
004a1320  33c5                      XOR EAX,EBP
004a1322  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004a1325  56                        PUSH ESI
004a1326  57                        PUSH EDI
004a1327  50                        PUSH EAX
004a1328  8d45f4                    LEA EAX,[EBP + -0xc]
004a132b  64a300000000              MOV FS:[0x0],EAX
004a1331  8bf9                      MOV EDI,ECX
004a1333  89bd34ffffff              MOV dword ptr [EBP + 0xffffff34],EDI
004a1339  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004a133f  83f80b                    CMP EAX,0xb
004a1342  0f879d130000              JA 0x004a26e5
004a1348  ff2485e0284a00            JMP dword ptr [EAX*0x4 + 0x4a28e0]
004a134f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a1359  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
004a135f  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a1367  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004a136d  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004a1375  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a137d  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a1385  0f57c0                    XORPS XMM0,XMM0
004a1388  0f1185b4feffff            MOVUPS xmmword ptr [EBP + 0xfffffeb4],XMM0
004a138f  50                        PUSH EAX
004a1390  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
004a1397  0f1185a4feffff            MOVUPS xmmword ptr [EBP + 0xfffffea4],XMM0
004a139e  c785c4feffff8382823e      MOV dword ptr [EBP + 0xfffffec4],0x3e828283
004a13a8  c785c8feffffa5a4243e      MOV dword ptr [EBP + 0xfffffec8],0x3e24a4a5
004a13b2  c785ccfeffff8d8c0c3e      MOV dword ptr [EBP + 0xfffffecc],0x3e0c8c8d
004a13bc  e82f5ef6ff                CALL 0x004071f0
004a13c1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004a13cb  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004a13d5  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004a13db  898734030000              MOV dword ptr [EDI + 0x334],EAX
004a13e1  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004a13e7  898738030000              MOV dword ptr [EDI + 0x338],EAX
004a13ed  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004a13f7  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004a1401  e9df120000                JMP 0x004a26e5
004a1406  6a00                      PUSH 0x0
004a1408  8d4f48                    LEA ECX,[EDI + 0x48]
004a140b  6854bcb100                PUSH 0xb1bc54
004a1410  e86b8ff6ff                CALL 0x0040a380
004a1415  e846db2400                CALL 0x006eef60
004a141a  33d2                      XOR EDX,EDX
004a141c  b90a000000                MOV ECX,0xa
004a1421  f7f1                      DIV ECX
004a1423  85d2                      TEST EDX,EDX
004a1425  0f85ba120000              JNZ 0x004a26e5
004a142b  33f6                      XOR ESI,ESI
004a142d  89951cffffff              MOV dword ptr [EBP + 0xffffff1c],EDX
004a1433  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
004a1439  899524ffffff              MOV dword ptr [EBP + 0xffffff24],EDX
004a143f  8975fc                    MOV dword ptr [EBP + -0x4],ESI
004a1442  a17816c700                MOV EAX,[0x00c71678]
004a1447  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004a144d  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004a1453  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004a1459  03c1                      ADD EAX,ECX
004a145b  33c9                      XOR ECX,ECX
004a145d  85c0                      TEST EAX,EAX
004a145f  0f4fc8                    CMOVG ECX,EAX
004a1462  b805000000                MOV EAX,0x5
004a1467  2bc1                      SUB EAX,ECX
004a1469  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
004a146f  8d0480                    LEA EAX,[EAX + EAX*0x4]
004a1472  c1e003                    SHL EAX,0x3
004a1475  85c0                      TEST EAX,EAX
004a1477  7e35                      JLE 0x004a14ae
004a1479  898530ffffff              MOV dword ptr [EBP + 0xffffff30],EAX
004a147f  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
004a1485  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
004a148b  c7852cffffff08000000      MOV dword ptr [EBP + 0xffffff2c],0x8
004a1495  50                        PUSH EAX
004a1496  56                        PUSH ESI
004a1497  e824fdffff                CALL 0x004a11c0
004a149c  8bb520ffffff              MOV ESI,dword ptr [EBP + 0xffffff20]
004a14a2  8b951cffffff              MOV EDX,dword ptr [EBP + 0xffffff1c]
004a14a8  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
004a14ae  8d0489                    LEA EAX,[ECX + ECX*0x4]
004a14b1  c1e002                    SHL EAX,0x2
004a14b4  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
004a14ba  83f83c                    CMP EAX,0x3c
004a14bd  7c09                      JL 0x004a14c8
004a14bf  80bfc50b000000            CMP byte ptr [EDI + 0xbc5],0x0
004a14c6  760a                      JBE 0x004a14d2
004a14c8  c78534ffffff01000000      MOV dword ptr [EBP + 0xffffff34],0x1
004a14d2  8bce                      MOV ECX,ESI
004a14d4  33c0                      XOR EAX,EAX
004a14d6  2bca                      SUB ECX,EDX
004a14d8  c1f903                    SAR ECX,0x3
004a14db  85c9                      TEST ECX,ECX
004a14dd  740c                      JZ 0x004a14eb
004a14df  90                        NOP
004a14e0  833cc209                  CMP dword ptr [EDX + EAX*0x8],0x9
004a14e4  743b                      JZ 0x004a1521
004a14e6  40                        INC EAX
004a14e7  3bc1                      CMP EAX,ECX
004a14e9  72f5                      JC 0x004a14e0
004a14eb  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
004a14f1  85c0                      TEST EAX,EAX
004a14f3  7e61                      JLE 0x004a1556
004a14f5  c7852cffffff09000000      MOV dword ptr [EBP + 0xffffff2c],0x9
004a14ff  898530ffffff              MOV dword ptr [EBP + 0xffffff30],EAX
004a1505  3bb524ffffff              CMP ESI,dword ptr [EBP + 0xffffff24]
004a150b  742a                      JZ 0x004a1537
004a150d  c70609000000              MOV dword ptr [ESI],0x9
004a1513  894604                    MOV dword ptr [ESI + 0x4],EAX
004a1516  83c608                    ADD ESI,0x8
004a1519  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
004a151f  eb35                      JMP 0x004a1556
004a1521  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
004a1527  014cc204                  ADD dword ptr [EDX + EAX*0x8 + 0x4],ECX
004a152b  7929                      JNS 0x004a1556
004a152d  c744c20400000000          MOV dword ptr [EDX + EAX*0x8 + 0x4],0x0
004a1535  eb1f                      JMP 0x004a1556
004a1537  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
004a153d  50                        PUSH EAX
004a153e  56                        PUSH ESI
004a153f  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
004a1545  e876fcffff                CALL 0x004a11c0
004a154a  8bb520ffffff              MOV ESI,dword ptr [EBP + 0xffffff20]
004a1550  8b951cffffff              MOV EDX,dword ptr [EBP + 0xffffff1c]
004a1556  32c0                      XOR AL,AL
004a1558  8bce                      MOV ECX,ESI
004a155a  3a87c60b0000              CMP AL,byte ptr [EDI + 0xbc6]
004a1560  1bc0                      SBB EAX,EAX
004a1562  2bca                      SUB ECX,EDX
004a1564  83e0e3                    AND EAX,0xffffffe3
004a1567  c1f903                    SAR ECX,0x3
004a156a  83c01e                    ADD EAX,0x1e
004a156d  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
004a1573  33c0                      XOR EAX,EAX
004a1575  85c9                      TEST ECX,ECX
004a1577  7412                      JZ 0x004a158b
004a1579  0f1f8000000000            NOP dword ptr [EAX]
004a1580  833cc20a                  CMP dword ptr [EDX + EAX*0x8],0xa
004a1584  7437                      JZ 0x004a15bd
004a1586  40                        INC EAX
004a1587  3bc1                      CMP EAX,ECX
004a1589  72f5                      JC 0x004a1580
004a158b  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
004a1591  c7852cffffff0a000000      MOV dword ptr [EBP + 0xffffff2c],0xa
004a159b  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
004a15a1  3bb524ffffff              CMP ESI,dword ptr [EBP + 0xffffff24]
004a15a7  742a                      JZ 0x004a15d3
004a15a9  c7060a000000              MOV dword ptr [ESI],0xa
004a15af  894e04                    MOV dword ptr [ESI + 0x4],ECX
004a15b2  83c608                    ADD ESI,0x8
004a15b5  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
004a15bb  eb35                      JMP 0x004a15f2
004a15bd  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
004a15c3  014cc204                  ADD dword ptr [EDX + EAX*0x8 + 0x4],ECX
004a15c7  7929                      JNS 0x004a15f2
004a15c9  c744c20400000000          MOV dword ptr [EDX + EAX*0x8 + 0x4],0x0
004a15d1  eb1f                      JMP 0x004a15f2
004a15d3  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
004a15d9  50                        PUSH EAX
004a15da  56                        PUSH ESI
004a15db  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
004a15e1  e8dafbffff                CALL 0x004a11c0
004a15e6  8bb520ffffff              MOV ESI,dword ptr [EBP + 0xffffff20]
004a15ec  8b951cffffff              MOV EDX,dword ptr [EBP + 0xffffff1c]
004a15f2  32c0                      XOR AL,AL
004a15f4  8bce                      MOV ECX,ESI
004a15f6  3a87c70b0000              CMP AL,byte ptr [EDI + 0xbc7]
004a15fc  1bc0                      SBB EAX,EAX
004a15fe  2bca                      SUB ECX,EDX
004a1600  83e0e3                    AND EAX,0xffffffe3
004a1603  c1f903                    SAR ECX,0x3
004a1606  83c01e                    ADD EAX,0x1e
004a1609  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
004a160f  33c0                      XOR EAX,EAX
004a1611  85c9                      TEST ECX,ECX
004a1613  740b                      JZ 0x004a1620
004a1615  833cc20b                  CMP dword ptr [EDX + EAX*0x8],0xb
004a1619  7437                      JZ 0x004a1652
004a161b  40                        INC EAX
004a161c  3bc1                      CMP EAX,ECX
004a161e  72f5                      JC 0x004a1615
004a1620  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
004a1626  c7852cffffff0b000000      MOV dword ptr [EBP + 0xffffff2c],0xb
004a1630  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
004a1636  3bb524ffffff              CMP ESI,dword ptr [EBP + 0xffffff24]
004a163c  742a                      JZ 0x004a1668
004a163e  c7060b000000              MOV dword ptr [ESI],0xb
004a1644  894e04                    MOV dword ptr [ESI + 0x4],ECX
004a1647  83c608                    ADD ESI,0x8
004a164a  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
004a1650  eb29                      JMP 0x004a167b
004a1652  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
004a1658  014cc204                  ADD dword ptr [EDX + EAX*0x8 + 0x4],ECX
004a165c  791d                      JNS 0x004a167b
004a165e  c744c20400000000          MOV dword ptr [EDX + EAX*0x8 + 0x4],0x0
004a1666  eb13                      JMP 0x004a167b
004a1668  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
004a166e  50                        PUSH EAX
004a166f  56                        PUSH ESI
004a1670  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
004a1676  e845fbffff                CALL 0x004a11c0
004a167b  e8e0d82400                CALL 0x006eef60
004a1680  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004a1688  8d8d1cffffff              LEA ECX,[EBP + 0xffffff1c]
004a168e  83c801                    OR EAX,0x1
004a1691  660fd685d4feffff          MOVQ qword ptr [EBP + 0xfffffed4],XMM0
004a1699  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
004a169f  83ec10                    SUB ESP,0x10
004a16a2  a174f6b100                MOV EAX,[0x00b1f674]
004a16a7  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
004a16ad  8bc4                      MOV EAX,ESP
004a16af  0f1085d0feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffed0]
004a16b6  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004a16b9  e832b5ffff                CALL 0x0049cbf0
004a16be  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004a16c4  83f809                    CMP EAX,0x9
004a16c7  7513                      JNZ 0x004a16dc
004a16c9  e892d82400                CALL 0x006eef60
004a16ce  83e001                    AND EAX,0x1
004a16d1  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004a16d7  e98a000000                JMP 0x004a1766
004a16dc  83f80a                    CMP EAX,0xa
004a16df  0f8581000000              JNZ 0x004a1766
004a16e5  e876d82400                CALL 0x006eef60
004a16ea  660f6ec0                  MOVD XMM0,EAX
004a16ee  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a16f2  c1e81f                    SHR EAX,0x1f
004a16f5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a16fe  660f5ac0                  CVTPD2PS XMM0,XMM0
004a1702  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a170a  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004a1712  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004a171a  e841d82400                CALL 0x006eef60
004a171f  83e001                    AND EAX,0x1
004a1722  741e                      JZ 0x004a1742
004a1724  e837d82400                CALL 0x006eef60
004a1729  83e001                    AND EAX,0x1
004a172c  740a                      JZ 0x004a1738
004a172e  f30f1005a0a8ba00          MOVSS XMM0,dword ptr [0x00baa8a0]
004a1736  eb26                      JMP 0x004a175e
004a1738  f30f100500aeba00          MOVSS XMM0,dword ptr [0x00baae00]
004a1740  eb1c                      JMP 0x004a175e
004a1742  e819d82400                CALL 0x006eef60
004a1747  83e001                    AND EAX,0x1
004a174a  740a                      JZ 0x004a1756
004a174c  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
004a1754  eb08                      JMP 0x004a175e
004a1756  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
004a175e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004a1766  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a176d  8b8d1cffffff              MOV ECX,dword ptr [EBP + 0xffffff1c]
004a1773  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004a177d  85c9                      TEST ECX,ECX
004a177f  0f84600f0000              JZ 0x004a26e5
004a1785  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
004a178b  2bc1                      SUB EAX,ECX
004a178d  c1f803                    SAR EAX,0x3
004a1790  8d14c500000000            LEA EDX,[EAX*0x8 + 0x0]
004a1797  8bc1                      MOV EAX,ECX
004a1799  81fa00100000              CMP EDX,0x1000
004a179f  7216                      JC 0x004a17b7
004a17a1  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004a17a4  83c223                    ADD EDX,0x23
004a17a7  2bc1                      SUB EAX,ECX
004a17a9  83c0fc                    ADD EAX,-0x4
004a17ac  83f81f                    CMP EAX,0x1f
004a17af  7606                      JBE 0x004a17b7
004a17b1  ff159488b100              CALL dword ptr [0x00b18894]
004a17b7  52                        PUSH EDX
004a17b8  51                        PUSH ECX
004a17b9  e89ed96400                CALL 0x00aef15c
004a17be  83c408                    ADD ESP,0x8
004a17c1  e91f0f0000                JMP 0x004a26e5
004a17c6  6a00                      PUSH 0x0
004a17c8  8d4f48                    LEA ECX,[EDI + 0x48]
004a17cb  687cd4b100                PUSH 0xb1d47c
004a17d0  e8ab8bf6ff                CALL 0x0040a380
004a17d5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a17d9  0f84ce020000              JZ 0x004a1aad
004a17df  68dcd2b100                PUSH 0xb1d2dc
004a17e4  8d4f78                    LEA ECX,[EDI + 0x78]
004a17e7  e8e495f6ff                CALL 0x0040add0
004a17ec  84c0                      TEST AL,AL
004a17ee  0f84a6020000              JZ 0x004a1a9a
004a17f4  e867d72400                CALL 0x006eef60
004a17f9  660f6ec0                  MOVD XMM0,EAX
004a17fd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a1801  c1e81f                    SHR EAX,0x1f
004a1804  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a180d  660f5ac0                  CVTPD2PS XMM0,XMM0
004a1811  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a1819  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004a1821  f30f5c0510a9ba00          SUBSS XMM0,dword ptr [0x00baa910]
004a1829  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004a1831  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004a1839  e802bdf7ff                CALL 0x0041d540
004a183e  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004a1846  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
004a184e  e8cdbcf7ff                CALL 0x0041d520
004a1853  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
004a185b  0f57db                    XORPS XMM3,XMM3
004a185e  f30f59cb                  MULSS XMM1,XMM3
004a1862  0f28d0                    MOVAPS XMM2,XMM0
004a1865  f30f5cca                  SUBSS XMM1,XMM2
004a1869  f30f59d3                  MULSS XMM2,XMM3
004a186d  f30f58950cffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff0c]
004a1875  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
004a187d  f30f119528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM2
004a1885  e8d6d62400                CALL 0x006eef60
004a188a  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
004a1892  f30f108d28ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff28]
004a189a  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
004a18a2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a18a8  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004a18b0  50                        PUSH EAX
004a18b1  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
004a18b9  6a00                      PUSH 0x0
004a18bb  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004a18c3  57                        PUSH EDI
004a18c4  6840b6c700                PUSH 0xc7b640
004a18c9  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
004a18cf  f30f11952cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM2
004a18d7  50                        PUSH EAX
004a18d8  6a00                      PUSH 0x0
004a18da  6866030000                PUSH 0x366
004a18df  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
004a18e7  e83472f8ff                CALL 0x00428b20
004a18ec  8bf0                      MOV ESI,EAX
004a18ee  e86dd62400                CALL 0x006eef60
004a18f3  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
004a18fb  660f6ec0                  MOVD XMM0,EAX
004a18ff  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a1903  c1e81f                    SHR EAX,0x1f
004a1906  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a190f  660f5ad0                  CVTPD2PS XMM2,XMM0
004a1913  0f57c0                    XORPS XMM0,XMM0
004a1916  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004a191e  0f2ed8                    UCOMISS XMM3,XMM0
004a1921  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
004a1929  9f                        LAHF
004a192a  f30f581584a7ba00          ADDSS XMM2,dword ptr [0x00baa784]
004a1932  0f28e2                    MOVAPS XMM4,XMM2
004a1935  f30f599528ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff28]
004a193d  f30f59a538ffffff          MULSS XMM4,dword ptr [EBP + 0xffffff38]
004a1945  f6c444                    TEST AH,0x44
004a1948  7b3b                      JNP 0x004a1985
004a194a  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
004a1952  0f28c1                    MOVAPS XMM0,XMM1
004a1955  f30f59ca                  MULSS XMM1,XMM2
004a1959  f30f59c4                  MULSS XMM0,XMM4
004a195d  f30f5ecb                  DIVSS XMM1,XMM3
004a1961  f30f5ec3                  DIVSS XMM0,XMM3
004a1965  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
004a196d  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
004a1975  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004a197d  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004a1985  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004a198b  8bce                      MOV ECX,ESI
004a198d  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004a1994  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004a199a  8b06                      MOV EAX,dword ptr [ESI]
004a199c  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
004a19a6  ff500c                    CALL dword ptr [EAX + 0xc]
004a19a9  e8b2d52400                CALL 0x006eef60
004a19ae  8b8e60030000              MOV ECX,dword ptr [ESI + 0x360]
004a19b4  8b9664030000              MOV EDX,dword ptr [ESI + 0x364]
004a19ba  50                        PUSH EAX
004a19bb  6a01                      PUSH 0x1
004a19bd  6a00                      PUSH 0x0
004a19bf  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
004a19c5  898df8feffff              MOV dword ptr [EBP + 0xfffffef8],ECX
004a19cb  8b8e3c030000              MOV ECX,dword ptr [ESI + 0x33c]
004a19d1  50                        PUSH EAX
004a19d2  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004a19d8  8995fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EDX
004a19de  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
004a19e4  50                        PUSH EAX
004a19e5  6a02                      PUSH 0x2
004a19e7  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
004a19ed  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a19f3  68e8030000                PUSH 0x3e8
004a19f8  8995f0feffff              MOV dword ptr [EBP + 0xfffffef0],EDX
004a19fe  e81d71f8ff                CALL 0x00428b20
004a1a03  8bf8                      MOV EDI,EAX
004a1a05  e856d52400                CALL 0x006eef60
004a1a0a  6a00                      PUSH 0x0
004a1a0c  6834d5b100                PUSH 0xb1d534
004a1a11  8d4f48                    LEA ECX,[EDI + 0x48]
004a1a14  660f6ec0                  MOVD XMM0,EAX
004a1a18  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a1a1c  c1e81f                    SHR EAX,0x1f
004a1a1f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a1a28  660f5ac0                  CVTPD2PS XMM0,XMM0
004a1a2c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a1a34  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004a1a3c  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
004a1a44  e83789f6ff                CALL 0x0040a380
004a1a49  68443cc300                PUSH 0xc33c44
004a1a4e  8d4f48                    LEA ECX,[EDI + 0x48]
004a1a51  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
004a1a5b  c78750030000000020c2      MOV dword ptr [EDI + 0x350],0xc2200000
004a1a65  c78754030000f4010000      MOV dword ptr [EDI + 0x354],0x1f4
004a1a6f  e85c59f6ff                CALL 0x004073d0
004a1a74  8bbd34ffffff              MOV EDI,dword ptr [EBP + 0xffffff34]
004a1a7a  51                        PUSH ECX
004a1a7b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a1a82  6a00                      PUSH 0x0
004a1a84  6a02                      PUSH 0x2
004a1a86  51                        PUSH ECX
004a1a87  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a1a8e  8bcf                      MOV ECX,EDI
004a1a90  682f010000                PUSH 0x12f
004a1a95  e806512300                CALL 0x006d6ba0
004a1a9a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a1a9e  740d                      JZ 0x004a1aad
004a1aa0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a1aa7  0f85380c0000              JNZ 0x004a26e5
004a1aad  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a1ab7  e9290c0000                JMP 0x004a26e5
004a1abc  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004a1ac2  8d4f48                    LEA ECX,[EDI + 0x48]
004a1ac5  85c0                      TEST EAX,EAX
004a1ac7  753d                      JNZ 0x004a1b06
004a1ac9  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004a1ad0  baf8e7b100                MOV EDX,0xb1e7f8
004a1ad5  50                        PUSH EAX
004a1ad6  b8ece7b100                MOV EAX,0xb1e7ec
004a1adb  0f44c2                    CMOVZ EAX,EDX
004a1ade  50                        PUSH EAX
004a1adf  e89c88f6ff                CALL 0x0040a380
004a1ae4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a1ae8  740d                      JZ 0x004a1af7
004a1aea  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a1af1  0f85ee0b0000              JNZ 0x004a26e5
004a1af7  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004a1b01  e9df0b0000                JMP 0x004a26e5
004a1b06  0f8e8c070000              JLE 0x004a2298
004a1b0c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004a1b13  bae0e7b100                MOV EDX,0xb1e7e0
004a1b18  b8d4e7b100                MOV EAX,0xb1e7d4
004a1b1d  6a00                      PUSH 0x0
004a1b1f  0f44c2                    CMOVZ EAX,EDX
004a1b22  50                        PUSH EAX
004a1b23  e85888f6ff                CALL 0x0040a380
004a1b28  ff8710040000              INC dword ptr [EDI + 0x410]
004a1b2e  83bf1004000005            CMP dword ptr [EDI + 0x410],0x5
004a1b35  754a                      JNZ 0x004a1b81
004a1b37  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004a1b3d  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
004a1b43  c78538ffffffe8010000      MOV dword ptr [EBP + 0xffffff38],0x1e8
004a1b4d  e82e4c4b00                CALL 0x00956780
004a1b52  83ec08                    SUB ESP,0x8
004a1b55  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004a1b5b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004a1b63  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a1b6a  6a00                      PUSH 0x0
004a1b6c  6a1e                      PUSH 0x1e
004a1b6e  51                        PUSH ECX
004a1b6f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a1b76  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
004a1b7c  e8afc04800                CALL 0x0092dc30
004a1b81  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a1b87  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
004a1b8d  8db73c030000              LEA ESI,[EDI + 0x33c]
004a1b93  50                        PUSH EAX
004a1b94  89b5e0feffff              MOV dword ptr [EBP + 0xfffffee0],ESI
004a1b9a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004a1ba0  e85b113700                CALL 0x00812d00
004a1ba5  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
004a1baa  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004a1bae  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
004a1bb2  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
004a1bb7  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
004a1bbf  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
004a1bc7  f30f59c0                  MULSS XMM0,XMM0
004a1bcb  f30f59c9                  MULSS XMM1,XMM1
004a1bcf  f30f58c1                  ADDSS XMM0,XMM1
004a1bd3  e8783ef9ff                CALL 0x00435a50
004a1bd8  0f2f05a0a9ba00            COMISS XMM0,dword ptr [0x00baa9a0]
004a1bdf  766f                      JBE 0x004a1c50
004a1be1  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
004a1be7  50                        PUSH EAX
004a1be8  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
004a1bee  e83de45600                CALL 0x00a10030
004a1bf3  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
004a1bfb  0f57c0                    XORPS XMM0,XMM0
004a1bfe  0f2ed8                    UCOMISS XMM3,XMM0
004a1c01  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004a1c05  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004a1c0a  f30f58c9                  ADDSS XMM1,XMM1
004a1c0e  9f                        LAHF
004a1c0f  f30f58d2                  ADDSS XMM2,XMM2
004a1c13  f6c444                    TEST AH,0x44
004a1c16  7b38                      JNP 0x004a1c50
004a1c18  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004a1c20  f30f59c8                  MULSS XMM1,XMM0
004a1c24  f30f59d0                  MULSS XMM2,XMM0
004a1c28  f30f5ecb                  DIVSS XMM1,XMM3
004a1c2c  f30f5ed3                  DIVSS XMM2,XMM3
004a1c30  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004a1c38  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004a1c40  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004a1c48  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004a1c50  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004a1c56  8db5e8feffff              LEA ESI,[EBP + 0xfffffee8]
004a1c5c  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004a1c64  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
004a1c6a  c785e4feffff0000c03f      MOV dword ptr [EBP + 0xfffffee4],0x3fc00000
004a1c74  660f6ec8                  MOVD XMM1,EAX
004a1c78  0f5bc9                    CVTDQ2PS XMM1,XMM1
004a1c7b  f30f5e0d54a8ba00          DIVSS XMM1,dword ptr [0x00baa854]
004a1c83  0f2fc1                    COMISS XMM0,XMM1
004a1c86  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
004a1c8e  0f46f1                    CMOVBE ESI,ECX
004a1c91  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004a1c98  89b5fcfeffff              MOV dword ptr [EBP + 0xfffffefc],ESI
004a1c9e  7412                      JZ 0x004a1cb2
004a1ca0  f30f100d50aeba00          MOVSS XMM1,dword ptr [0x00baae50]
004a1ca8  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
004a1cb0  eb10                      JMP 0x004a1cc2
004a1cb2  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
004a1cba  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004a1cc2  83f804                    CMP EAX,0x4
004a1cc5  0f8eef000000              JLE 0x004a1dba
004a1ccb  6a00                      PUSH 0x0
004a1ccd  6a08                      PUSH 0x8
004a1ccf  8bcf                      MOV ECX,EDI
004a1cd1  e83aaa2000                CALL 0x006ac710
004a1cd6  84c0                      TEST AL,AL
004a1cd8  0f84dc000000              JZ 0x004a1dba
004a1cde  e87dd22400                CALL 0x006eef60
004a1ce3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a1ce9  50                        PUSH EAX
004a1cea  6a01                      PUSH 0x1
004a1cec  57                        PUSH EDI
004a1ced  6840b6c700                PUSH 0xc7b640
004a1cf2  8d873c030000              LEA EAX,[EDI + 0x33c]
004a1cf8  50                        PUSH EAX
004a1cf9  688e000000                PUSH 0x8e
004a1cfe  68e8030000                PUSH 0x3e8
004a1d03  e8186ef8ff                CALL 0x00428b20
004a1d08  8bf8                      MOV EDI,EAX
004a1d0a  e851d22400                CALL 0x006eef60
004a1d0f  660f6ec0                  MOVD XMM0,EAX
004a1d13  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a1d17  c1e81f                    SHR EAX,0x1f
004a1d1a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a1d23  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
004a1d29  660f5ac0                  CVTPD2PS XMM0,XMM0
004a1d2d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a1d35  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004a1d3d  f30f118774040000          MOVSS dword ptr [EDI + 0x474],XMM0
004a1d45  83b8c00b000000            CMP dword ptr [EAX + 0xbc0],0x0
004a1d4c  0f94c0                    SETZ AL
004a1d4f  888748010000              MOV byte ptr [EDI + 0x148],AL
004a1d55  e806d22400                CALL 0x006eef60
004a1d5a  8bcf                      MOV ECX,EDI
004a1d5c  660f6ec0                  MOVD XMM0,EAX
004a1d60  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a1d64  c1e81f                    SHR EAX,0x1f
004a1d67  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a1d70  8b07                      MOV EAX,dword ptr [EDI]
004a1d72  660f5ac8                  CVTPD2PS XMM1,XMM0
004a1d76  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a1d7e  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004a1d86  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
004a1d8e  0f28c1                    MOVAPS XMM0,XMM1
004a1d91  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004a1d99  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004a1da1  f30f118fe8000000          MOVSS dword ptr [EDI + 0xe8],XMM1
004a1da9  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
004a1db1  ff500c                    CALL dword ptr [EAX + 0xc]
004a1db4  8bbd34ffffff              MOV EDI,dword ptr [EBP + 0xffffff34]
004a1dba  a17816c700                MOV EAX,[0x00c71678]
004a1dbf  33c9                      XOR ECX,ECX
004a1dc1  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
004a1dc7  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004a1dcd  898530ffffff              MOV dword ptr [EBP + 0xffffff30],EAX
004a1dd3  398864120000              CMP dword ptr [EAX + 0x1264],ECX
004a1dd9  0f865d040000              JBE 0x004a223c
004a1ddf  90                        NOP
004a1de0  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004a1de6  8b3c88                    MOV EDI,dword ptr [EAX + ECX*0x4]
004a1de9  89bd14ffffff              MOV dword ptr [EBP + 0xffffff14],EDI
004a1def  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004a1df2  83f901                    CMP ECX,0x1
004a1df5  7418                      JZ 0x004a1e0f
004a1df7  8d41f6                    LEA EAX,[ECX + -0xa]
004a1dfa  3ddd030000                CMP EAX,0x3dd
004a1dff  760e                      JBE 0x004a1e0f
004a1e01  83f905                    CMP ECX,0x5
004a1e04  7409                      JZ 0x004a1e0f
004a1e06  83f904                    CMP ECX,0x4
004a1e09  0f8508040000              JNZ 0x004a2217
004a1e0f  8b07                      MOV EAX,dword ptr [EDI]
004a1e11  8bcf                      MOV ECX,EDI
004a1e13  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
004a1e16  ffd0                      CALL EAX
004a1e18  84c0                      TEST AL,AL
004a1e1a  0f85f7030000              JNZ 0x004a2217
004a1e20  8b8784010000              MOV EAX,dword ptr [EDI + 0x184]
004a1e26  83f805                    CMP EAX,0x5
004a1e29  7409                      JZ 0x004a1e34
004a1e2b  83f806                    CMP EAX,0x6
004a1e2e  0f85e3030000              JNZ 0x004a2217
004a1e34  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
004a1e3a  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004a1e3e  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004a1e46  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004a1e4b  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004a1e53  0f28c1                    MOVAPS XMM0,XMM1
004a1e56  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
004a1e5e  f30f59c1                  MULSS XMM0,XMM1
004a1e62  0f28ca                    MOVAPS XMM1,XMM2
004a1e65  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
004a1e6d  f30f59ca                  MULSS XMM1,XMM2
004a1e71  f30f58c1                  ADDSS XMM0,XMM1
004a1e75  e8d63bf9ff                CALL 0x00435a50
004a1e7a  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
004a1e82  0f57c9                    XORPS XMM1,XMM1
004a1e85  0f2fc1                    COMISS XMM0,XMM1
004a1e88  f30f109d38ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff38]
004a1e90  7627                      JBE 0x004a1eb9
004a1e92  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a1e9a  f30f5ec8                  DIVSS XMM1,XMM0
004a1e9e  0f28c1                    MOVAPS XMM0,XMM1
004a1ea1  f30f59d9                  MULSS XMM3,XMM1
004a1ea5  f30f59d0                  MULSS XMM2,XMM0
004a1ea9  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
004a1eb1  f30f119528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM2
004a1eb9  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
004a1ec1  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
004a1ec9  f30f591d80a2ba00          MULSS XMM3,dword ptr [0x00baa280]
004a1ed1  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004a1ed9  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
004a1ee1  f30f119d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM3
004a1ee9  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004a1ef1  e84ab6f7ff                CALL 0x0041d540
004a1ef6  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004a1efe  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004a1f06  e815b6f7ff                CALL 0x0041d520
004a1f0b  f30f10a528ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff28]
004a1f13  8bcf                      MOV ECX,EDI
004a1f15  f30f10ad38ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff38]
004a1f1d  0f28dc                    MOVAPS XMM3,XMM4
004a1f20  f30f599d08ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff08]
004a1f28  0f28cd                    MOVAPS XMM1,XMM5
004a1f2b  6a00                      PUSH 0x0
004a1f2d  f30f59ad08ffffff          MULSS XMM5,dword ptr [EBP + 0xffffff08]
004a1f35  6a03                      PUSH 0x3
004a1f37  f30f1016                  MOVSS XMM2,dword ptr [ESI]
004a1f3b  f30f59c8                  MULSS XMM1,XMM0
004a1f3f  f30f59e0                  MULSS XMM4,XMM0
004a1f43  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004a1f47  f30f5cd9                  SUBSS XMM3,XMM1
004a1f4b  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004a1f53  f30f58e5                  ADDSS XMM4,XMM5
004a1f57  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
004a1f5f  f30f5925a4a3ba00          MULSS XMM4,dword ptr [0x00baa3a4]
004a1f67  f30f589d04ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff04]
004a1f6f  f30f58a500ffffff          ADDSS XMM4,dword ptr [EBP + 0xffffff00]
004a1f77  f30f59c3                  MULSS XMM0,XMM3
004a1f7b  f30f59d4                  MULSS XMM2,XMM4
004a1f7f  f30f58c8                  ADDSS XMM1,XMM0
004a1f83  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004a1f8b  0f28c2                    MOVAPS XMM0,XMM2
004a1f8e  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
004a1f96  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004a1f9e  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004a1fa6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004a1fae  e85da72000                CALL 0x006ac710
004a1fb3  84c0                      TEST AL,AL
004a1fb5  0f845c020000              JZ 0x004a2217
004a1fbb  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004a1fbe  83f801                    CMP EAX,0x1
004a1fc1  740e                      JZ 0x004a1fd1
004a1fc3  83c0f6                    ADD EAX,-0xa
004a1fc6  3ddd030000                CMP EAX,0x3dd
004a1fcb  0f8746020000              JA 0x004a2217
004a1fd1  e88acf2400                CALL 0x006eef60
004a1fd6  33d2                      XOR EDX,EDX
004a1fd8  b903000000                MOV ECX,0x3
004a1fdd  f7f1                      DIV ECX
004a1fdf  83c202                    ADD EDX,0x2
004a1fe2  899528ffffff              MOV dword ptr [EBP + 0xffffff28],EDX
004a1fe8  85d2                      TEST EDX,EDX
004a1fea  0f8e27020000              JLE 0x004a2217
004a1ff0  8bb514ffffff              MOV ESI,dword ptr [EBP + 0xffffff14]
004a1ff6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
004a2000  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004a2008  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004a2010  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004a2018  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004a2020  e83bcf2400                CALL 0x006eef60
004a2025  660f6ec0                  MOVD XMM0,EAX
004a2029  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a202d  c1e81f                    SHR EAX,0x1f
004a2030  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a2039  660f5ac0                  CVTPD2PS XMM0,XMM0
004a203d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a2045  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004a204d  f30f58c0                  ADDSS XMM0,XMM0
004a2051  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004a2059  e8c2b4f7ff                CALL 0x0041d520
004a205e  f30f109670030000          MOVSS XMM2,dword ptr [ESI + 0x370]
004a2066  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004a206e  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004a2076  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
004a207e  e8bdb4f7ff                CALL 0x0041d540
004a2083  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
004a208b  f30f59c1                  MULSS XMM0,XMM1
004a208f  f30f598d00ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff00]
004a2097  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004a209f  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
004a20a7  e8b4ce2400                CALL 0x006eef60
004a20ac  660f6ec8                  MOVD XMM1,EAX
004a20b0  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004a20b4  c1e81f                    SHR EAX,0x1f
004a20b7  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004a20c0  660f5ac9                  CVTPD2PS XMM1,XMM1
004a20c4  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a20cc  0f28c1                    MOVAPS XMM0,XMM1
004a20cf  f30f598d38ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff38]
004a20d7  f30f598514ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff14]
004a20df  f30f588d08ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff08]
004a20e7  f30f588504ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff04]
004a20ef  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
004a20f7  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
004a20ff  e85cce2400                CALL 0x006eef60
004a2104  8bf8                      MOV EDI,EAX
004a2106  e855ce2400                CALL 0x006eef60
004a210b  660f6ec0                  MOVD XMM0,EAX
004a210f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a2113  c1e81f                    SHR EAX,0x1f
004a2116  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a211f  660f5ac8                  CVTPD2PS XMM1,XMM0
004a2123  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a212b  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
004a2133  f30f580d5ca7ba00          ADDSS XMM1,dword ptr [0x00baa75c]
004a213b  0f28c1                    MOVAPS XMM0,XMM1
004a213e  f30f598df0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffef0]
004a2146  f30f5985f4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef4]
004a214e  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
004a2156  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004a215e  e8fdcd2400                CALL 0x006eef60
004a2163  660f6ec0                  MOVD XMM0,EAX
004a2167  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a216b  c1e81f                    SHR EAX,0x1f
004a216e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a2177  660f5ac0                  CVTPD2PS XMM0,XMM0
004a217b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a2183  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004a218b  f30f58c0                  ADDSS XMM0,XMM0
004a218f  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004a2197  e884b3f7ff                CALL 0x0041d520
004a219c  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004a21a4  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004a21ac  e88fb3f7ff                CALL 0x0041d540
004a21b1  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
004a21b9  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004a21bf  f30f588500ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff00]
004a21c7  f30f588d08ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff08]
004a21cf  57                        PUSH EDI
004a21d0  6a01                      PUSH 0x1
004a21d2  56                        PUSH ESI
004a21d3  50                        PUSH EAX
004a21d4  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
004a21da  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004a21e2  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
004a21ea  50                        PUSH EAX
004a21eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a21f1  6a63                      PUSH 0x63
004a21f3  68e8030000                PUSH 0x3e8
004a21f8  e82369f8ff                CALL 0x00428b20
004a21fd  8bc8                      MOV ECX,EAX
004a21ff  8b10                      MOV EDX,dword ptr [EAX]
004a2201  ff520c                    CALL dword ptr [EDX + 0xc]
004a2204  83ad28ffffff01            SUB dword ptr [EBP + 0xffffff28],0x1
004a220b  0f85effdffff              JNZ 0x004a2000
004a2211  8bb5fcfeffff              MOV ESI,dword ptr [EBP + 0xfffffefc]
004a2217  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
004a221d  8b8530ffffff              MOV EAX,dword ptr [EBP + 0xffffff30]
004a2223  41                        INC ECX
004a2224  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
004a222a  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
004a2230  0f82aafbffff              JC 0x004a1de0
004a2236  8bbd34ffffff              MOV EDI,dword ptr [EBP + 0xffffff34]
004a223c  83bf100400005a            CMP dword ptr [EDI + 0x410],0x5a
004a2243  0f8e9c040000              JLE 0x004a26e5
004a2249  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004a224c  85c0                      TEST EAX,EAX
004a224e  7405                      JZ 0x004a2255
004a2250  8b7030                    MOV ESI,dword ptr [EAX + 0x30]
004a2253  eb02                      JMP 0x004a2257
004a2255  33f6                      XOR ESI,ESI
004a2257  8d4f48                    LEA ECX,[EDI + 0x48]
004a225a  e82185f6ff                CALL 0x0040a780
004a225f  8d56ff                    LEA EDX,[ESI + -0x1]
004a2262  3bc2                      CMP EAX,EDX
004a2264  0f857b040000              JNZ 0x004a26e5
004a226a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004a2271  b824e8b100                MOV EAX,0xb1e824
004a2276  b930e8b100                MOV ECX,0xb1e830
004a227b  6a00                      PUSH 0x0
004a227d  0f44c1                    CMOVZ EAX,ECX
004a2280  50                        PUSH EAX
004a2281  8d4f48                    LEA ECX,[EDI + 0x48]
004a2284  e8f780f6ff                CALL 0x0040a380
004a2289  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
004a2293  e94d040000                JMP 0x004a26e5
004a2298  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a229c  740d                      JZ 0x004a22ab
004a229e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a22a5  0f853a040000              JNZ 0x004a26e5
004a22ab  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a22b5  c687c50b00005a            MOV byte ptr [EDI + 0xbc5],0x5a
004a22bc  e924040000                JMP 0x004a26e5
004a22c1  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004a22c7  85c0                      TEST EAX,EAX
004a22c9  750e                      JNZ 0x004a22d9
004a22cb  50                        PUSH EAX
004a22cc  6804e8b100                PUSH 0xb1e804
004a22d1  8d4f48                    LEA ECX,[EDI + 0x48]
004a22d4  e906f8ffff                JMP 0x004a1adf
004a22d9  0f8e8f010000              JLE 0x004a246e
004a22df  6a00                      PUSH 0x0
004a22e1  6814e8b100                PUSH 0xb1e814
004a22e6  8d4f48                    LEA ECX,[EDI + 0x48]
004a22e9  e89280f6ff                CALL 0x0040a380
004a22ee  51                        PUSH ECX
004a22ef  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004a22f6  6a00                      PUSH 0x0
004a22f8  6a2d                      PUSH 0x2d
004a22fa  51                        PUSH ECX
004a22fb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a2302  8bcf                      MOV ECX,EDI
004a2304  682d010000                PUSH 0x12d
004a2309  e892482300                CALL 0x006d6ba0
004a230e  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004a2316  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
004a231e  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004a2325  0f2fc1                    COMISS XMM0,XMM1
004a2328  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
004a2330  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004a2338  0f97c0                    SETA AL
004a233b  888513ffffff              MOV byte ptr [EBP + 0xffffff13],AL
004a2341  84c0                      TEST AL,AL
004a2343  7510                      JNZ 0x004a2355
004a2345  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
004a234d  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004a2355  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004a235b  8bc1                      MOV EAX,ECX
004a235d  99                        CDQ
004a235e  c78530ffffff06000000      MOV dword ptr [EBP + 0xffffff30],0x6
004a2368  f7bd30ffffff              IDIV dword ptr [EBP + 0xffffff30]
004a236e  85d2                      TEST EDX,EDX
004a2370  0f85da000000              JNZ 0x004a2450
004a2376  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
004a237c  e8afcbf9ff                CALL 0x0043ef30
004a2381  80bd13ffffff00            CMP byte ptr [EBP + 0xffffff13],0x0
004a2388  8d873c030000              LEA EAX,[EDI + 0x33c]
004a238e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004a2392  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004a2397  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004a239c  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004a23a1  c7854cffffffcdccccbd      MOV dword ptr [EBP + 0xffffff4c],0xbdcccccd
004a23ab  750a                      JNZ 0x004a23b7
004a23ad  c7854cffffffcdcc4cbd      MOV dword ptr [EBP + 0xffffff4c],0xbd4ccccd
004a23b7  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004a23bf  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
004a23c5  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
004a23cd  51                        PUSH ECX
004a23ce  6a09                      PUSH 0x9
004a23d0  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
004a23d6  c745d403000000            MOV dword ptr [EBP + -0x2c],0x3
004a23dd  f30f5e0578aaba00          DIVSS XMM0,dword ptr [0x00baaa78]
004a23e5  51                        PUSH ECX
004a23e6  50                        PUSH EAX
004a23e7  8bcf                      MOV ECX,EDI
004a23e9  c7459800200000            MOV dword ptr [EBP + -0x68],0x2000
004a23f0  c7459c01000000            MOV dword ptr [EBP + -0x64],0x1
004a23f7  c745cc1e000000            MOV dword ptr [EBP + -0x34],0x1e
004a23fe  c78524ffffff00008040      MOV dword ptr [EBP + 0xffffff24],0x40800000
004a2408  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004a2410  0f57c0                    XORPS XMM0,XMM0
004a2413  660f1345c0                MOVLPD qword ptr [EBP + -0x40],XMM0
004a2418  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
004a2420  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
004a2428  e8b38e2200                CALL 0x006cb2e0
004a242d  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004a2435  f30f5887b40b0000          ADDSS XMM0,dword ptr [EDI + 0xbb4]
004a243d  e8fe021e00                CALL 0x00682740
004a2442  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004a2448  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004a2450  8d4101                    LEA EAX,[ECX + 0x1]
004a2453  898710040000              MOV dword ptr [EDI + 0x410],EAX
004a2459  83f85a                    CMP EAX,0x5a
004a245c  0f8e83020000              JLE 0x004a26e5
004a2462  6a00                      PUSH 0x0
004a2464  6838e8b100                PUSH 0xb1e838
004a2469  e913feffff                JMP 0x004a2281
004a246e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a2472  740d                      JZ 0x004a2481
004a2474  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a247b  0f8564020000              JNZ 0x004a26e5
004a2481  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a248b  c687c60b00005a            MOV byte ptr [EDI + 0xbc6],0x5a
004a2492  e94e020000                JMP 0x004a26e5
004a2497  6a00                      PUSH 0x0
004a2499  8d4f48                    LEA ECX,[EDI + 0x48]
004a249c  68b4deb100                PUSH 0xb1deb4
004a24a1  e8da7ef6ff                CALL 0x0040a380
004a24a6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a24aa  0f8424020000              JZ 0x004a26d4
004a24b0  68dcd2b100                PUSH 0xb1d2dc
004a24b5  8d4f78                    LEA ECX,[EDI + 0x78]
004a24b8  e81389f6ff                CALL 0x0040add0
004a24bd  84c0                      TEST AL,AL
004a24bf  0f84c9010000              JZ 0x004a268e
004a24c5  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004a24cb  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
004a24d1  c7853cfffffffa030000      MOV dword ptr [EBP + 0xffffff3c],0x3fa
004a24db  e8a0424b00                CALL 0x00956780
004a24e0  83ec08                    SUB ESP,0x8
004a24e3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004a24e9  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004a24f1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a24f8  6a00                      PUSH 0x0
004a24fa  6a02                      PUSH 0x2
004a24fc  51                        PUSH ECX
004a24fd  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a2504  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
004a250a  e821b74800                CALL 0x0092dc30
004a250f  e84cca2400                CALL 0x006eef60
004a2514  6aff                      PUSH -0x1
004a2516  6a60                      PUSH 0x60
004a2518  8bcf                      MOV ECX,EDI
004a251a  660f6ec0                  MOVD XMM0,EAX
004a251e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a2522  c1e81f                    SHR EAX,0x1f
004a2525  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a252e  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004a2534  50                        PUSH EAX
004a2535  660f5ac0                  CVTPD2PS XMM0,XMM0
004a2539  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a2541  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004a2549  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
004a2551  e80ae72200                CALL 0x006d0c60
004a2556  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004a255c  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004a255f  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
004a2565  e84650f7ff                CALL 0x004175b0
004a256a  33f6                      XOR ESI,ESI
004a256c  0f1f4000                  NOP dword ptr [EAX]
004a2570  660f6ec6                  MOVD XMM0,ESI
004a2574  8bc6                      MOV EAX,ESI
004a2576  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a257a  c1e81f                    SHR EAX,0x1f
004a257d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a2586  660f5ac0                  CVTPD2PS XMM0,XMM0
004a258a  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
004a2592  f30f588530ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff30]
004a259a  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004a25a2  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004a25aa  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004a25b2  e869aff7ff                CALL 0x0041d520
004a25b7  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004a25bf  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004a25c7  e874aff7ff                CALL 0x0041d540
004a25cc  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004a25d4  c7850cffffff00000000      MOV dword ptr [EBP + 0xffffff0c],0x0
004a25de  83fe01                    CMP ESI,0x1
004a25e1  771c                      JA 0x004a25ff
004a25e3  8b853cffffff              MOV EAX,dword ptr [EBP + 0xffffff3c]
004a25e9  83f803                    CMP EAX,0x3
004a25ec  7d11                      JGE 0x004a25ff
004a25ee  40                        INC EAX
004a25ef  c7850cffffff01000000      MOV dword ptr [EBP + 0xffffff0c],0x1
004a25f9  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
004a25ff  e85cc92400                CALL 0x006eef60
004a2604  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004a260c  f30f108df0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef0]
004a2614  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004a261c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a2622  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
004a262a  50                        PUSH EAX
004a262b  ffb50cffffff              PUSH dword ptr [EBP + 0xffffff0c]
004a2631  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004a2639  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004a2641  57                        PUSH EDI
004a2642  6840b6c700                PUSH 0xc7b640
004a2647  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
004a264d  50                        PUSH EAX
004a264e  688f000000                PUSH 0x8f
004a2653  68e8030000                PUSH 0x3e8
004a2658  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
004a2660  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
004a2668  e8b364f8ff                CALL 0x00428b20
004a266d  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004a2675  8bc8                      MOV ECX,EAX
004a2677  8b10                      MOV EDX,dword ptr [EAX]
004a2679  f30f118074040000          MOVSS dword ptr [EAX + 0x474],XMM0
004a2681  ff520c                    CALL dword ptr [EDX + 0xc]
004a2684  46                        INC ESI
004a2685  83fe03                    CMP ESI,0x3
004a2688  0f82e2feffff              JC 0x004a2570
004a268e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a2692  7440                      JZ 0x004a26d4
004a2694  68d4d2b100                PUSH 0xb1d2d4
004a2699  8d4f78                    LEA ECX,[EDI + 0x78]
004a269c  e82f87f6ff                CALL 0x0040add0
004a26a1  84c0                      TEST AL,AL
004a26a3  7420                      JZ 0x004a26c5
004a26a5  51                        PUSH ECX
004a26a6  c704246666663f            MOV dword ptr [ESP],0x3f666666
004a26ad  6a00                      PUSH 0x0
004a26af  6a14                      PUSH 0x14
004a26b1  51                        PUSH ECX
004a26b2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a26b9  8bcf                      MOV ECX,EDI
004a26bb  68a4010000                PUSH 0x1a4
004a26c0  e8db442300                CALL 0x006d6ba0
004a26c5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a26c9  7409                      JZ 0x004a26d4
004a26cb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a26d2  7511                      JNZ 0x004a26e5
004a26d4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a26de  c687c70b00005a            MOV byte ptr [EDI + 0xbc7],0x5a
004a26e5  6a00                      PUSH 0x0
004a26e7  6a02                      PUSH 0x2
004a26e9  8bcf                      MOV ECX,EDI
004a26eb  e820a02000                CALL 0x006ac710
004a26f0  84c0                      TEST AL,AL
004a26f2  7448                      JZ 0x004a273c
004a26f4  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
004a26fa  84c0                      TEST AL,AL
004a26fc  7408                      JZ 0x004a2706
004a26fe  fec8                      DEC AL
004a2700  8887c40b0000              MOV byte ptr [EDI + 0xbc4],AL
004a2706  8a87c50b0000              MOV AL,byte ptr [EDI + 0xbc5]
004a270c  84c0                      TEST AL,AL
004a270e  7408                      JZ 0x004a2718
004a2710  fec8                      DEC AL
004a2712  8887c50b0000              MOV byte ptr [EDI + 0xbc5],AL
004a2718  8a87c60b0000              MOV AL,byte ptr [EDI + 0xbc6]
004a271e  84c0                      TEST AL,AL
004a2720  7408                      JZ 0x004a272a
004a2722  fec8                      DEC AL
004a2724  8887c60b0000              MOV byte ptr [EDI + 0xbc6],AL
004a272a  8a87c70b0000              MOV AL,byte ptr [EDI + 0xbc7]
004a2730  84c0                      TEST AL,AL
004a2732  7408                      JZ 0x004a273c
004a2734  fec8                      DEC AL
004a2736  8887c70b0000              MOV byte ptr [EDI + 0xbc7],AL
004a273c  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004a2743  8db73c030000              LEA ESI,[EDI + 0x33c]
004a2749  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004a2751  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
004a2756  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004a275e  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004a2762  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004a276a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004a2772  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004a277a  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004a2782  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004a278a  0f8431010000              JZ 0x004a28c1
004a2790  e8cbc72400                CALL 0x006eef60
004a2795  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a279b  50                        PUSH EAX
004a279c  6a00                      PUSH 0x0
004a279e  6a00                      PUSH 0x0
004a27a0  6840b6c700                PUSH 0xc7b640
004a27a5  56                        PUSH ESI
004a27a6  688e000000                PUSH 0x8e
004a27ab  68e8030000                PUSH 0x3e8
004a27b0  e86b63f8ff                CALL 0x00428b20
004a27b5  8bc8                      MOV ECX,EAX
004a27b7  8b10                      MOV EDX,dword ptr [EAX]
004a27b9  ff520c                    CALL dword ptr [EDX + 0xc]
004a27bc  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004a27c2  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
004a27c8  c7853cffffff8c010000      MOV dword ptr [EBP + 0xffffff3c],0x18c
004a27d2  e8a93f4b00                CALL 0x00956780
004a27d7  83ec08                    SUB ESP,0x8
004a27da  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004a27e0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004a27e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a27ef  6a00                      PUSH 0x0
004a27f1  6a02                      PUSH 0x2
004a27f3  51                        PUSH ECX
004a27f4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a27fb  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
004a2801  e82ab44800                CALL 0x0092dc30
004a2806  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004a280c  68e8010000                PUSH 0x1e8
004a2811  8d8924a30200              LEA ECX,[ECX + 0x2a324]
004a2817  e814ba4800                CALL 0x0092e230
004a281c  a17816c700                MOV EAX,[0x00c71678]
004a2821  6a00                      PUSH 0x0
004a2823  6a00                      PUSH 0x0
004a2825  6aff                      PUSH -0x1
004a2827  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a282d  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004a2833  6aff                      PUSH -0x1
004a2835  6866030000                PUSH 0x366
004a283a  81c118120000              ADD ECX,0x1218
004a2840  50                        PUSH EAX
004a2841  e81a87f7ff                CALL 0x0041af60
004a2846  33f6                      XOR ESI,ESI
004a2848  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004a284f  39b524ffffff              CMP dword ptr [EBP + 0xffffff24],ESI
004a2855  763f                      JBE 0x004a2896
004a2857  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004a2860  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
004a2866  6a00                      PUSH 0x0
004a2868  8b3cb0                    MOV EDI,dword ptr [EAX + ESI*0x4]
004a286b  8bcf                      MOV ECX,EDI
004a286d  e8ee9c2000                CALL 0x006ac560
004a2872  84c0                      TEST AL,AL
004a2874  7417                      JZ 0x004a288d
004a2876  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004a287c  2500000020                AND EAX,0x20000000
004a2881  83c800                    OR EAX,0x0
004a2884  7507                      JNZ 0x004a288d
004a2886  8bcf                      MOV ECX,EDI
004a2888  e8d3be2100                CALL 0x006be760
004a288d  46                        INC ESI
004a288e  3bb524ffffff              CMP ESI,dword ptr [EBP + 0xffffff24]
004a2894  72ca                      JC 0x004a2860
004a2896  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a289d  80bd18ffffff00            CMP byte ptr [EBP + 0xffffff18],0x0
004a28a4  751b                      JNZ 0x004a28c1
004a28a6  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004a28ad  b101                      MOV CL,0x1
004a28af  8b951cffffff              MOV EDX,dword ptr [EBP + 0xffffff1c]
004a28b5  6a00                      PUSH 0x0
004a28b7  6a00                      PUSH 0x0
004a28b9  e8f21f5c00                CALL 0x00a648b0
004a28be  83c408                    ADD ESP,0x8
004a28c1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004a28c4  64890d00000000            MOV dword ptr FS:[0x0],ECX
004a28cb  59                        POP ECX
004a28cc  5f                        POP EDI
004a28cd  5e                        POP ESI
004a28ce  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004a28d1  33cd                      XOR ECX,EBP
004a28d3  e853c86400                CALL 0x00aef12b
004a28d8  8be5                      MOV ESP,EBP
004a28da  5d                        POP EBP
004a28db  8be3                      MOV ESP,EBX
004a28dd  5b                        POP EBX
004a28de  c3                        RET
