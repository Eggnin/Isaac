; J460 NPC AI 0x007706e0 HELPER_Player_HasCollectible
; types=1,1000
; identities=1.*,1000.*
; entry=007706e0
007706e0  55                        PUSH EBP
007706e1  8bec                      MOV EBP,ESP
007706e3  83ec24                    SUB ESP,0x24
007706e6  a1b493bf00                MOV EAX,[0x00bf93b4]
007706eb  33c5                      XOR EAX,EBP
007706ed  8945fc                    MOV dword ptr [EBP + -0x4],EAX
007706f0  53                        PUSH EBX
007706f1  8b5d08                    MOV EBX,dword ptr [EBP + 0x8]
007706f4  56                        PUSH ESI
007706f5  57                        PUSH EDI
007706f6  8bf9                      MOV EDI,ECX
007706f8  895ddc                    MOV dword ptr [EBP + -0x24],EBX
007706fb  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00770701  53                        PUSH EBX
00770702  8d8904a40200              LEA ECX,[ECX + 0x2a404]
00770708  e803f6fbff                CALL 0x0072fd10
0077070d  8bf0                      MOV ESI,EAX
0077070f  8975e4                    MOV dword ptr [EBP + -0x1c],ESI
00770712  85f6                      TEST ESI,ESI
00770714  7444                      JZ 0x0077075a
00770716  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0077071a  7553                      JNZ 0x0077076f
0077071c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00770722  85c0                      TEST EAX,EAX
00770724  7406                      JZ 0x0077072c
00770726  83782801                  CMP dword ptr [EAX + 0x28],0x1
0077072a  7411                      JZ 0x0077073d
0077072c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00770732  6a00                      PUSH 0x0
00770734  e83771caff                CALL 0x00417870
00770739  85c0                      TEST EAX,EAX
0077073b  7432                      JZ 0x0077076f
0077073d  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00770743  8bf8                      MOV EDI,EAX
00770745  53                        PUSH EBX
00770746  8d8904a40200              LEA ECX,[ECX + 0x2a404]
0077074c  e8bff5fbff                CALL 0x0072fd10
00770751  8bf0                      MOV ESI,EAX
00770753  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
00770756  85f6                      TEST ESI,ESI
00770758  75bc                      JNZ 0x00770716
0077075a  5f                        POP EDI
0077075b  5e                        POP ESI
0077075c  32c0                      XOR AL,AL
0077075e  5b                        POP EBX
0077075f  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00770762  33cd                      XOR ECX,EBP
00770764  e8c2e93700                CALL 0x00aef12b
00770769  8be5                      MOV ESP,EBP
0077076b  5d                        POP EBP
0077076c  c20800                    RET 0x8
0077076f  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
00770776  741e                      JZ 0x00770796
00770778  a17816c700                MOV EAX,[0x00c71678]
0077077d  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00770784  7d10                      JGE 0x00770796
00770786  8b86b8000000              MOV EAX,dword ptr [ESI + 0xb8]
0077078c  2500800000                AND EAX,0x8000
00770791  83c800                    OR EAX,0x0
00770794  74c4                      JZ 0x0077075a
00770796  8b87f42e0000              MOV EAX,dword ptr [EDI + 0x2ef4]
0077079c  85c0                      TEST EAX,EAX
0077079e  7411                      JZ 0x007707b1
007707a0  3bd8                      CMP EBX,EAX
007707a2  750d                      JNZ 0x007707b1
007707a4  80bff02e000000            CMP byte ptr [EDI + 0x2ef0],0x0
007707ab  0f8578040000              JNZ 0x00770c29
007707b1  85db                      TEST EBX,EBX
007707b3  791f                      JNS 0x007707d4
007707b5  53                        PUSH EBX
007707b6  8d8fc81f0000              LEA ECX,[EDI + 0x1fc8]
007707bc  e8effc2600                CALL 0x009e04b0
007707c1  5f                        POP EDI
007707c2  5e                        POP ESI
007707c3  5b                        POP EBX
007707c4  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
007707c7  33cd                      XOR ECX,EBP
007707c9  e85de93700                CALL 0x00aef12b
007707ce  8be5                      MOV ESP,EBP
007707d0  5d                        POP EBP
007707d1  c20800                    RET 0x8
007707d4  807d0c00                  CMP byte ptr [EBP + 0xc],0x0
007707d8  0f8560040000              JNZ 0x00770c3e
007707de  81fb47010000              CMP EBX,0x147
007707e4  7408                      JZ 0x007707ee
007707e6  81fb48010000              CMP EBX,0x148
007707ec  756e                      JNZ 0x0077085c
007707ee  6a00                      PUSH 0x0
007707f0  6a15                      PUSH 0x15
007707f2  8bcf                      MOV ECX,EDI
007707f4  e8570d0000                CALL 0x00771550
007707f9  84c0                      TEST AL,AL
007707fb  745f                      JZ 0x0077085c
007707fd  a17816c700                MOV EAX,[0x00c71678]
00770802  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00770808  2503000080                AND EAX,0x80000003
0077080d  7905                      JNS 0x00770814
0077080f  48                        DEC EAX
00770810  83c8fc                    OR EAX,0xfffffffc
00770813  40                        INC EAX
00770814  6a15                      PUSH 0x15
00770816  8bcf                      MOV ECX,EDI
00770818  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0077081b  e8c0ae0500                CALL 0x007cb6e0
00770820  83f801                    CMP EAX,0x1
00770823  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
00770826  7e17                      JLE 0x0077083f
00770828  85c0                      TEST EAX,EAX
0077082a  7405                      JZ 0x00770831
0077082c  83f801                    CMP EAX,0x1
0077082f  752b                      JNZ 0x0077085c
00770831  81fb47010000              CMP EBX,0x147
00770837  0f84ec030000              JZ 0x00770c29
0077083d  eb11                      JMP 0x00770850
0077083f  85c0                      TEST EAX,EAX
00770841  7508                      JNZ 0x0077084b
00770843  81fb47010000              CMP EBX,0x147
00770849  eb0b                      JMP 0x00770856
0077084b  83f801                    CMP EAX,0x1
0077084e  750c                      JNZ 0x0077085c
00770850  81fb48010000              CMP EBX,0x148
00770856  0f84cd030000              JZ 0x00770c29
0077085c  81fb39010000              CMP EBX,0x139
00770862  0f85ad000000              JNZ 0x00770915
00770868  83bfc01300000a            CMP dword ptr [EDI + 0x13c0],0xa
0077086f  7422                      JZ 0x00770893
00770871  6a70                      PUSH 0x70
00770873  8d8f08150000              LEA ECX,[EDI + 0x1508]
00770879  e802fe1b00                CALL 0x00930680
0077087e  84c0                      TEST AL,AL
00770880  0f84be010000              JZ 0x00770a44
00770886  83bfc01300001f            CMP dword ptr [EDI + 0x13c0],0x1f
0077088d  0f84b1010000              JZ 0x00770a44
00770893  a19c16c700                MOV EAX,[0x00c7169c]
00770898  8d90d8b30400              LEA EDX,[EAX + 0x4b3d8]
0077089e  8955e8                    MOV dword ptr [EBP + -0x18],EDX
007708a1  8d4814                    LEA ECX,[EAX + 0x14]
007708a4  8b02                      MOV EAX,dword ptr [EDX]
007708a6  894de0                    MOV dword ptr [EBP + -0x20],ECX
007708a9  3b4204                    CMP EAX,dword ptr [EDX + 0x4]
007708ac  7425                      JZ 0x007708d3
007708ae  8d8f4c1e0000              LEA ECX,[EDI + 0x1e4c]
007708b4  e867302b00                CALL 0x00a23920
007708b9  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
007708bc  8945f4                    MOV dword ptr [EBP + -0xc],EAX
007708bf  8d45f4                    LEA EAX,[EBP + -0xc]
007708c2  50                        PUSH EAX
007708c3  8955f8                    MOV dword ptr [EBP + -0x8],EDX
007708c6  e835ba1900                CALL 0x0090c300
007708cb  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
007708ce  85c0                      TEST EAX,EAX
007708d0  0f45c8                    CMOVNZ ECX,EAX
007708d3  80b93201000000            CMP byte ptr [ECX + 0x132],0x0
007708da  0f8549030000              JNZ 0x00770c29
007708e0  a19c16c700                MOV EAX,[0x00c7169c]
007708e5  83780802                  CMP dword ptr [EAX + 0x8],0x2
007708e9  0f8555010000              JNZ 0x00770a44
007708ef  a17816c700                MOV EAX,[0x00c71678]
007708f4  85c0                      TEST EAX,EAX
007708f6  0f8448010000              JZ 0x00770a44
007708fc  83b83066020000            CMP dword ptr [EAX + 0x26630],0x0
00770903  0f8720030000              JA 0x00770c29
00770909  80b88965020000            CMP byte ptr [EAX + 0x26589],0x0
00770910  e929010000                JMP 0x00770a3e
00770915  83fb09                    CMP EBX,0x9
00770918  757a                      JNZ 0x00770994
0077091a  6a00                      PUSH 0x0
0077091c  6a5d                      PUSH 0x5d
0077091e  8bcf                      MOV ECX,EDI
00770920  e82b0c0000                CALL 0x00771550
00770925  84c0                      TEST AL,AL
00770927  0f8417010000              JZ 0x00770a44
0077092d  a17816c700                MOV EAX,[0x00c71678]
00770932  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00770938  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0077093b  85c0                      TEST EAX,EAX
0077093d  7403                      JZ 0x00770942
0077093f  8b4058                    MOV EAX,dword ptr [EAX + 0x58]
00770942  f30f7e05f8f4b100          MOVQ XMM0,qword ptr [0x00b1f4f8]
0077094a  8d4dec                    LEA ECX,[EBP + -0x14]
0077094d  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00770950  a100f5b100                MOV EAX,[0x00b1f500]
00770955  6a64                      PUSH 0x64
00770957  660fd645f0                MOVQ qword ptr [EBP + -0x10],XMM0
0077095c  8945f8                    MOV dword ptr [EBP + -0x8],EAX
0077095f  e8bc860700                CALL 0x007e9020
00770964  83f821                    CMP EAX,0x21
00770967  0f82bc020000              JC 0x00770c29
0077096d  a17816c700                MOV EAX,[0x00c71678]
00770972  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00770979  0f8cc5000000              JL 0x00770a44
0077097f  5f                        POP EDI
00770980  5e                        POP ESI
00770981  b001                      MOV AL,0x1
00770983  5b                        POP EBX
00770984  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00770987  33cd                      XOR ECX,EBP
00770989  e89de73700                CALL 0x00aef12b
0077098e  8be5                      MOV ESP,EBP
00770990  5d                        POP EBP
00770991  c20800                    RET 0x8
00770994  83fb3b                    CMP EBX,0x3b
00770997  7524                      JNZ 0x007709bd
00770999  8bcf                      MOV ECX,EDI
0077099b  e8d09d0600                CALL 0x007da770
007709a0  84c0                      TEST AL,AL
007709a2  0f849c000000              JZ 0x00770a44
007709a8  5f                        POP EDI
007709a9  5e                        POP ESI
007709aa  b001                      MOV AL,0x1
007709ac  5b                        POP EBX
007709ad  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
007709b0  33cd                      XOR ECX,EBP
007709b2  e874e73700                CALL 0x00aef12b
007709b7  8be5                      MOV ESP,EBP
007709b9  5d                        POP EBP
007709ba  c20800                    RET 0x8
007709bd  81fb31010000              CMP EBX,0x131
007709c3  751e                      JNZ 0x007709e3
007709c5  f6872820000010            TEST byte ptr [EDI + 0x2028],0x10
007709cc  7476                      JZ 0x00770a44
007709ce  5f                        POP EDI
007709cf  5e                        POP ESI
007709d0  b001                      MOV AL,0x1
007709d2  5b                        POP EBX
007709d3  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
007709d6  33cd                      XOR ECX,EBP
007709d8  e84ee73700                CALL 0x00aef12b
007709dd  8be5                      MOV ESP,EBP
007709df  5d                        POP EBP
007709e0  c20800                    RET 0x8
007709e3  81fb01010000              CMP EBX,0x101
007709e9  751e                      JNZ 0x00770a09
007709eb  f6872820000008            TEST byte ptr [EDI + 0x2028],0x8
007709f2  7450                      JZ 0x00770a44
007709f4  5f                        POP EDI
007709f5  5e                        POP ESI
007709f6  b001                      MOV AL,0x1
007709f8  5b                        POP EBX
007709f9  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
007709fc  33cd                      XOR ECX,EBP
007709fe  e828e73700                CALL 0x00aef12b
00770a03  8be5                      MOV ESP,EBP
00770a05  5d                        POP EBP
00770a06  c20800                    RET 0x8
00770a09  81fbe7000000              CMP EBX,0xe7
00770a0f  751e                      JNZ 0x00770a2f
00770a11  f6872820000020            TEST byte ptr [EDI + 0x2028],0x20
00770a18  742a                      JZ 0x00770a44
00770a1a  5f                        POP EDI
00770a1b  5e                        POP ESI
00770a1c  b001                      MOV AL,0x1
00770a1e  5b                        POP EBX
00770a1f  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00770a22  33cd                      XOR ECX,EBP
00770a24  e802e73700                CALL 0x00aef12b
00770a29  8be5                      MOV ESP,EBP
00770a2b  5d                        POP EBP
00770a2c  c20800                    RET 0x8
00770a2f  81fbb6000000              CMP EBX,0xb6
00770a35  750d                      JNZ 0x00770a44
00770a37  f6872820000040            TEST byte ptr [EDI + 0x2028],0x40
00770a3e  0f85e5010000              JNZ 0x00770c29
00770a44  8bcf                      MOV ECX,EDI
00770a46  e885ae0600                CALL 0x007db8d0
00770a4b  81fb4a010000              CMP EBX,0x14a
00770a51  751a                      JNZ 0x00770a6d
00770a53  83f801                    CMP EAX,0x1
00770a56  7526                      JNZ 0x00770a7e
00770a58  5f                        POP EDI
00770a59  5e                        POP ESI
00770a5a  8ac0                      MOV AL,AL
00770a5c  5b                        POP EBX
00770a5d  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00770a60  33cd                      XOR ECX,EBP
00770a62  e8c4e63700                CALL 0x00aef12b
00770a67  8be5                      MOV ESP,EBP
00770a69  5d                        POP EBP
00770a6a  c20800                    RET 0x8
00770a6d  81fb99000000              CMP EBX,0x99
00770a73  7509                      JNZ 0x00770a7e
00770a75  83f802                    CMP EAX,0x2
00770a78  0f84ab010000              JZ 0x00770c29
00770a7e  8bcf                      MOV ECX,EDI
00770a80  e8dbad0600                CALL 0x007db860
00770a85  83f808                    CMP EAX,0x8
00770a88  7e58                      JLE 0x00770ae2
00770a8a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00770a90  8d8984bb0100              LEA ECX,[ECX + 0x1bb84]
00770a96  e8a556ccff                CALL 0x00436140
00770a9b  8bcf                      MOV ECX,EDI
00770a9d  8bf0                      MOV ESI,EAX
00770a9f  e8bcad0600                CALL 0x007db860
00770aa4  f30f7e0528f5b100          MOVQ XMM0,qword ptr [0x00b1f528]
00770aac  03c6                      ADD EAX,ESI
00770aae  b901000000                MOV ECX,0x1
00770ab3  660fd645f0                MOVQ qword ptr [EBP + -0x10],XMM0
00770ab8  3bc1                      CMP EAX,ECX
00770aba  6a06                      PUSH 0x6
00770abc  0f47c8                    CMOVA ECX,EAX
00770abf  a130f5b100                MOV EAX,[0x00b1f530]
00770ac4  894dec                    MOV dword ptr [EBP + -0x14],ECX
00770ac7  8d4dec                    LEA ECX,[EBP + -0x14]
00770aca  8945f8                    MOV dword ptr [EBP + -0x8],EAX
00770acd  e84e850700                CALL 0x007e9020
00770ad2  3b1c85d0bcb600            CMP EBX,dword ptr [EAX*0x4 + 0xb6bcd0]
00770ad9  0f844a010000              JZ 0x00770c29
00770adf  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
00770ae2  51                        PUSH ECX
00770ae3  53                        PUSH EBX
00770ae4  8bcf                      MOV ECX,EDI
00770ae6  e815070000                CALL 0x00771200
00770aeb  84c0                      TEST AL,AL
00770aed  0f8536010000              JNZ 0x00770c29
00770af3  83fb76                    CMP EBX,0x76
00770af6  7514                      JNZ 0x00770b0c
00770af8  53                        PUSH EBX
00770af9  8d8f08150000              LEA ECX,[EDI + 0x1508]
00770aff  e8ecfa1b00                CALL 0x009305f0
00770b04  84c0                      TEST AL,AL
00770b06  0f851d010000              JNZ 0x00770c29
00770b0c  80bf7001000000            CMP byte ptr [EDI + 0x170],0x0
00770b13  7430                      JZ 0x00770b45
00770b15  85f6                      TEST ESI,ESI
00770b17  742c                      JZ 0x00770b45
00770b19  6a00                      PUSH 0x0
00770b1b  6800000040                PUSH 0x40000000
00770b20  8bce                      MOV ECX,ESI
00770b22  e8d909e4ff                CALL 0x005b1500
00770b27  84c0                      TEST AL,AL
00770b29  741a                      JZ 0x00770b45
00770b2b  8b8f6c1e0000              MOV ECX,dword ptr [EDI + 0x1e6c]
00770b31  85c9                      TEST ECX,ECX
00770b33  7410                      JZ 0x00770b45
00770b35  6a00                      PUSH 0x0
00770b37  53                        PUSH EBX
00770b38  e8a3fbffff                CALL 0x007706e0
00770b3d  84c0                      TEST AL,AL
00770b3f  0f85e4000000              JNZ 0x00770c29
00770b45  80bf2c20000000            CMP byte ptr [EDI + 0x202c],0x0
00770b4c  7422                      JZ 0x00770b70
00770b4e  85f6                      TEST ESI,ESI
00770b50  741e                      JZ 0x00770b70
00770b52  6a00                      PUSH 0x0
00770b54  6800800000                PUSH 0x8000
00770b59  8bce                      MOV ECX,ESI
00770b5b  e8a009e4ff                CALL 0x005b1500
00770b60  84c0                      TEST AL,AL
00770b62  750c                      JNZ 0x00770b70
00770b64  81fb16020000              CMP EBX,0x216
00770b6a  0f85eafbffff              JNZ 0x0077075a
00770b70  83bf841f000000            CMP dword ptr [EDI + 0x1f84],0x0
00770b77  7428                      JZ 0x00770ba1
00770b79  8d45dc                    LEA EAX,[EBP + -0x24]
00770b7c  50                        PUSH EAX
00770b7d  8d45e0                    LEA EAX,[EBP + -0x20]
00770b80  50                        PUSH EAX
00770b81  8d8f801f0000              LEA ECX,[EDI + 0x1f80]
00770b87  e8746fdeff                CALL 0x00557b00
00770b8c  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00770b8f  3b87801f0000              CMP EAX,dword ptr [EDI + 0x1f80]
00770b95  740a                      JZ 0x00770ba1
00770b97  83781400                  CMP dword ptr [EAX + 0x14],0x0
00770b9b  0f8f88000000              JG 0x00770c29
00770ba1  8b87b81f0000              MOV EAX,dword ptr [EDI + 0x1fb8]
00770ba7  85c0                      TEST EAX,EAX
00770ba9  7404                      JZ 0x00770baf
00770bab  3bc3                      CMP EAX,EBX
00770bad  747a                      JZ 0x00770c29
00770baf  53                        PUSH EBX
00770bb0  8d8fc81f0000              LEA ECX,[EDI + 0x1fc8]
00770bb6  e895fa2600                CALL 0x009e0650
00770bbb  85c0                      TEST EAX,EAX
00770bbd  7f6a                      JG 0x00770c29
00770bbf  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
00770bc2  85c9                      TEST ECX,ECX
00770bc4  7419                      JZ 0x00770bdf
00770bc6  e8e5fbfbff                CALL 0x007307b0
00770bcb  84c0                      TEST AL,AL
00770bcd  7410                      JZ 0x00770bdf
00770bcf  53                        PUSH EBX
00770bd0  8d8f08150000              LEA ECX,[EDI + 0x1508]
00770bd6  e815fa1b00                CALL 0x009305f0
00770bdb  84c0                      TEST AL,AL
00770bdd  754a                      JNZ 0x00770c29
00770bdf  53                        PUSH EBX
00770be0  8bcf                      MOV ECX,EDI
00770be2  e8d9050200                CALL 0x007911c0
00770be7  85c0                      TEST EAX,EAX
00770be9  793e                      JNS 0x00770c29
00770beb  81fbbf000000              CMP EBX,0xbf
00770bf1  741a                      JZ 0x00770c0d
00770bf3  6a00                      PUSH 0x0
00770bf5  68bf000000                PUSH 0xbf
00770bfa  8bcf                      MOV ECX,EDI
00770bfc  e8dffaffff                CALL 0x007706e0
00770c01  84c0                      TEST AL,AL
00770c03  7408                      JZ 0x00770c0d
00770c05  3b9f90130000              CMP EBX,dword ptr [EDI + 0x1390]
00770c0b  741c                      JZ 0x00770c29
00770c0d  68e8010000                PUSH 0x1e8
00770c12  8d8f08150000              LEA ECX,[EDI + 0x1508]
00770c18  e8d3f91b00                CALL 0x009305f0
00770c1d  84c0                      TEST AL,AL
00770c1f  741d                      JZ 0x00770c3e
00770c21  3b9f88130000              CMP EBX,dword ptr [EDI + 0x1388]
00770c27  7515                      JNZ 0x00770c3e
00770c29  5f                        POP EDI
00770c2a  5e                        POP ESI
00770c2b  b001                      MOV AL,0x1
00770c2d  5b                        POP EBX
00770c2e  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00770c31  33cd                      XOR ECX,EBP
00770c33  e8f3e43700                CALL 0x00aef12b
00770c38  8be5                      MOV ESP,EBP
00770c3a  5d                        POP EBP
00770c3b  c20800                    RET 0x8
00770c3e  8b87f42e0000              MOV EAX,dword ptr [EDI + 0x2ef4]
00770c44  85c0                      TEST EAX,EAX
00770c46  742d                      JZ 0x00770c75
00770c48  3bd8                      CMP EBX,EAX
00770c4a  7529                      JNZ 0x00770c75
00770c4c  80bff02e000000            CMP byte ptr [EDI + 0x2ef0],0x0
00770c53  7520                      JNZ 0x00770c75
00770c55  8b87c8160000              MOV EAX,dword ptr [EDI + 0x16c8]
00770c5b  5f                        POP EDI
00770c5c  5e                        POP ESI
00770c5d  833c9801                  CMP dword ptr [EAX + EBX*0x4],0x1
00770c61  5b                        POP EBX
00770c62  0f9fc0                    SETG AL
00770c65  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00770c68  33cd                      XOR ECX,EBP
00770c6a  e8bce43700                CALL 0x00aef12b
00770c6f  8be5                      MOV ESP,EBP
00770c71  5d                        POP EBP
00770c72  c20800                    RET 0x8
00770c75  8b87c8160000              MOV EAX,dword ptr [EDI + 0x16c8]
00770c7b  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00770c7e  5f                        POP EDI
00770c7f  5e                        POP ESI
00770c80  833c9800                  CMP dword ptr [EAX + EBX*0x4],0x0
00770c84  5b                        POP EBX
00770c85  0f9fc0                    SETG AL
00770c88  33cd                      XOR ECX,EBP
00770c8a  e89ce43700                CALL 0x00aef12b
00770c8f  8be5                      MOV ESP,EBP
00770c91  5d                        POP EBP
00770c92  c20800                    RET 0x8
