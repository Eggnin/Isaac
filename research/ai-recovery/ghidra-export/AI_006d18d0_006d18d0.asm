; J460 NPC AI 0x006d18d0 AI_006d18d0
; types=33
; identities=33.0.0,33.1.0,33.10.0,33.11.0,33.11.1,33.11.2,33.11.3,33.12.0,33.13.0,33.2.0,33.3.0,33.4.0
; entry=006d18d0
006d18d0  53                        PUSH EBX
006d18d1  8bdc                      MOV EBX,ESP
006d18d3  83ec08                    SUB ESP,0x8
006d18d6  83e4f8                    AND ESP,0xfffffff8
006d18d9  83c404                    ADD ESP,0x4
006d18dc  55                        PUSH EBP
006d18dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006d18e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006d18e4  8bec                      MOV EBP,ESP
006d18e6  6aff                      PUSH -0x1
006d18e8  68b0abaf00                PUSH 0xafabb0
006d18ed  64a100000000              MOV EAX,FS:[0x0]
006d18f3  50                        PUSH EAX
006d18f4  53                        PUSH EBX
006d18f5  81ec08010000              SUB ESP,0x108
006d18fb  a1b493bf00                MOV EAX,[0x00bf93b4]
006d1900  33c5                      XOR EAX,EBP
006d1902  8945ec                    MOV dword ptr [EBP + -0x14],EAX
006d1905  56                        PUSH ESI
006d1906  57                        PUSH EDI
006d1907  50                        PUSH EAX
006d1908  8d45f4                    LEA EAX,[EBP + -0xc]
006d190b  64a300000000              MOV FS:[0x0],EAX
006d1911  8bf9                      MOV EDI,ECX
006d1913  89bd54ffffff              MOV dword ptr [EBP + 0xffffff54],EDI
006d1919  8b772c                    MOV ESI,dword ptr [EDI + 0x2c]
006d191c  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
006d1924  83fe02                    CMP ESI,0x2
006d1927  745f                      JZ 0x006d1988
006d1929  83fe03                    CMP ESI,0x3
006d192c  745a                      JZ 0x006d1988
006d192e  83fe04                    CMP ESI,0x4
006d1931  7455                      JZ 0x006d1988
006d1933  a17816c700                MOV EAX,[0x00c71678]
006d1938  c68567ffffff00            MOV byte ptr [EBP + 0xffffff67],0x0
006d193f  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006d1945  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
006d194d  0f2fc1                    COMISS XMM0,XMM1
006d1950  763d                      JBE 0x006d198f
006d1952  ff7720                    PUSH dword ptr [EDI + 0x20]
006d1955  6a05                      PUSH 0x5
006d1957  e8b4adfdff                CALL 0x006ac710
006d195c  84c0                      TEST AL,AL
006d195e  742f                      JZ 0x006d198f
006d1960  8b07                      MOV EAX,dword ptr [EDI]
006d1962  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
006d1968  8b5020                    MOV EDX,dword ptr [EAX + 0x20]
006d196b  e80043d6ff                CALL 0x00435c70
006d1970  6a1e                      PUSH 0x1e
006d1972  50                        PUSH EAX
006d1973  6a00                      PUSH 0x0
006d1975  6a00                      PUSH 0x0
006d1977  51                        PUSH ECX
006d1978  8bcf                      MOV ECX,EDI
006d197a  c704240000803f            MOV dword ptr [ESP],0x3f800000
006d1981  ffd2                      CALL EDX
006d1983  8b772c                    MOV ESI,dword ptr [EDI + 0x2c]
006d1986  eb07                      JMP 0x006d198f
006d1988  c68567ffffff01            MOV byte ptr [EBP + 0xffffff67],0x1
006d198f  83fe0b                    CMP ESI,0xb
006d1992  750c                      JNZ 0x006d19a0
006d1994  8bcf                      MOV ECX,EDI
006d1996  e83581e2ff                CALL 0x004f9ad0
006d199b  e986110000                JMP 0x006d2b26
006d19a0  83fe0a                    CMP ESI,0xa
006d19a3  0f8476110000              JZ 0x006d2b1f
006d19a9  83fe0c                    CMP ESI,0xc
006d19ac  0f846d110000              JZ 0x006d2b1f
006d19b2  83fe0d                    CMP ESI,0xd
006d19b5  0f8464110000              JZ 0x006d2b1f
006d19bb  8b87d4030000              MOV EAX,dword ptr [EDI + 0x3d4]
006d19c1  898548ffffff              MOV dword ptr [EBP + 0xffffff48],EAX
006d19c7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006d19cd  85c0                      TEST EAX,EAX
006d19cf  0f85c8020000              JNZ 0x006d1c9d
006d19d5  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006d19db  818f6801000000000400      OR dword ptr [EDI + 0x168],0x40000
006d19e5  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
006d19ed  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006d19f3  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006d19f9  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
006d19ff  a174f6b100                MOV EAX,[0x00b1f674]
006d1a04  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
006d1a0a  a17816c700                MOV EAX,[0x00c71678]
006d1a0f  660fd6853cffffff          MOVQ qword ptr [EBP + 0xffffff3c],XMM0
006d1a17  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006d1a1d  803900                    CMP byte ptr [ECX],0x0
006d1a20  7445                      JZ 0x006d1a67
006d1a22  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006d1a28  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
006d1a2e  7537                      JNZ 0x006d1a67
006d1a30  83fe02                    CMP ESI,0x2
006d1a33  7522                      JNZ 0x006d1a57
006d1a35  6a64                      PUSH 0x64
006d1a37  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
006d1a3d  e8de751100                CALL 0x007e9020
006d1a42  85c0                      TEST EAX,EAX
006d1a44  7511                      JNZ 0x006d1a57
006d1a46  6aff                      PUSH -0x1
006d1a48  ff7730                    PUSH dword ptr [EDI + 0x30]
006d1a4b  8bcf                      MOV ECX,EDI
006d1a4d  6a03                      PUSH 0x3
006d1a4f  ff7728                    PUSH dword ptr [EDI + 0x28]
006d1a52  e8d9f4feff                CALL 0x006c0f30
006d1a57  6a03                      PUSH 0x3
006d1a59  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
006d1a5f  e8bc751100                CALL 0x007e9020
006d1a64  894730                    MOV dword ptr [EDI + 0x30],EAX
006d1a67  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
006d1a6d  898734030000              MOV dword ptr [EDI + 0x334],EAX
006d1a73  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
006d1a79  898738030000              MOV dword ptr [EDI + 0x338],EAX
006d1a7f  e8dcd40100                CALL 0x006eef60
006d1a84  33d2                      XOR EDX,EDX
006d1a86  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d1a8e  b91e000000                MOV ECX,0x1e
006d1a93  f30f100d28a5ba00          MOVSS XMM1,dword ptr [0x00baa528]
006d1a9b  f7f1                      DIV ECX
006d1a9d  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006d1aa3  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006d1aa9  83e1fb                    AND ECX,0xfffffffb
006d1aac  83c23c                    ADD EDX,0x3c
006d1aaf  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006d1ab5  81c911000542              OR ECX,0x42050011
006d1abb  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
006d1ac1  0f2fc1                    COMISS XMM0,XMM1
006d1ac4  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006d1aca  7654                      JBE 0x006d1b20
006d1acc  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006d1ad2  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
006d1ad8  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
006d1ae0  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006d1ae7  7612                      JBE 0x006d1afb
006d1ae9  80bd67ffffff00            CMP byte ptr [EBP + 0xffffff67],0x0
006d1af0  7509                      JNZ 0x006d1afb
006d1af2  83bd48ffffff00            CMP dword ptr [EBP + 0xffffff48],0x0
006d1af9  7419                      JZ 0x006d1b14
006d1afb  8bce                      MOV ECX,ESI
006d1afd  e8aece0700                CALL 0x0074e9b0
006d1b02  f30f100d28a5ba00          MOVSS XMM1,dword ptr [0x00baa528]
006d1b0a  84c0                      TEST AL,AL
006d1b0c  7412                      JZ 0x006d1b20
006d1b0e  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006d1b14  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
006d1b1e  eb06                      JMP 0x006d1b26
006d1b20  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006d1b26  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d1b2e  0f2fc1                    COMISS XMM0,XMM1
006d1b31  0f86e3000000              JBE 0x006d1c1a
006d1b37  83bd48ffffff00            CMP dword ptr [EBP + 0xffffff48],0x0
006d1b3e  7521                      JNZ 0x006d1b61
006d1b40  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
006d1b46  8d873c030000              LEA EAX,[EDI + 0x33c]
006d1b4c  50                        PUSH EAX
006d1b4d  8bce                      MOV ECX,ESI
006d1b4f  e83c111400                CALL 0x00812c90
006d1b54  68b6030000                PUSH 0x3b6
006d1b59  50                        PUSH EAX
006d1b5a  8bce                      MOV ECX,ESI
006d1b5c  e87f4ad8ff                CALL 0x004565e0
006d1b61  33c9                      XOR ECX,ECX
006d1b63  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
006d1b6d  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
006d1b70  b802000000                MOV EAX,0x2
006d1b75  6a00                      PUSH 0x0
006d1b77  1bc9                      SBB ECX,ECX
006d1b79  234f30                    AND ECX,dword ptr [EDI + 0x30]
006d1b7c  3bc8                      CMP ECX,EAX
006d1b7e  0f42c1                    CMOVC EAX,ECX
006d1b81  8d4f48                    LEA ECX,[EDI + 0x48]
006d1b84  ff3485d04fb600            PUSH dword ptr [EAX*0x4 + 0xb64fd0]
006d1b8b  e8f087d3ff                CALL 0x0040a380
006d1b90  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
006d1b93  85c9                      TEST ECX,ECX
006d1b95  7420                      JZ 0x006d1bb7
006d1b97  8b4930                    MOV ECX,dword ptr [ECX + 0x30]
006d1b9a  85c9                      TEST ECX,ECX
006d1b9c  7e19                      JLE 0x006d1bb7
006d1b9e  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006d1ba4  33d2                      XOR EDX,EDX
006d1ba6  f7f1                      DIV ECX
006d1ba8  8d4f78                    LEA ECX,[EDI + 0x78]
006d1bab  660f6eca                  MOVD XMM1,EDX
006d1baf  0f5bc9                    CVTDQ2PS XMM1,XMM1
006d1bb2  e84972d3ff                CALL 0x00408e00
006d1bb7  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
006d1bbf  8d4f48                    LEA ECX,[EDI + 0x48]
006d1bc2  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
006d1bca  6a01                      PUSH 0x1
006d1bcc  0f28c1                    MOVAPS XMM0,XMM1
006d1bcf  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006d1bd7  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006d1bdf  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
006d1be7  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
006d1bef  e82c96d3ff                CALL 0x0040b220
006d1bf4  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
006d1bfc  8bcf                      MOV ECX,EDI
006d1bfe  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
006d1c03  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
006d1c0b  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
006d1c10  e81b890000                CALL 0x006da530
006d1c15  e90c0f0000                JMP 0x006d2b26
006d1c1a  83bd48ffffff00            CMP dword ptr [EBP + 0xffffff48],0x0
006d1c21  7521                      JNZ 0x006d1c44
006d1c23  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
006d1c29  8d873c030000              LEA EAX,[EDI + 0x33c]
006d1c2f  50                        PUSH EAX
006d1c30  8bce                      MOV ECX,ESI
006d1c32  e859101400                CALL 0x00812c90
006d1c37  6884030000                PUSH 0x384
006d1c3c  50                        PUSH EAX
006d1c3d  8bce                      MOV ECX,ESI
006d1c3f  e89c49d8ff                CALL 0x004565e0
006d1c44  33d2                      XOR EDX,EDX
006d1c46  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
006d1c50  3b5730                    CMP EDX,dword ptr [EDI + 0x30]
006d1c53  8d4f48                    LEA ECX,[EDI + 0x48]
006d1c56  b802000000                MOV EAX,0x2
006d1c5b  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
006d1c65  1bd2                      SBB EDX,EDX
006d1c67  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
006d1c71  235730                    AND EDX,dword ptr [EDI + 0x30]
006d1c74  3bd0                      CMP EDX,EAX
006d1c76  6a00                      PUSH 0x0
006d1c78  0f42c2                    CMOVC EAX,EDX
006d1c7b  ff3485dc4fb600            PUSH dword ptr [EAX*0x4 + 0xb64fdc]
006d1c82  e8f986d3ff                CALL 0x0040a380
006d1c87  8bcf                      MOV ECX,EDI
006d1c89  c7875403000018fcffff      MOV dword ptr [EDI + 0x354],0xfffffc18
006d1c93  e898880000                CALL 0x006da530
006d1c98  e9890e0000                JMP 0x006d2b26
006d1c9d  83f809                    CMP EAX,0x9
006d1ca0  0f85b2010000              JNZ 0x006d1e58
006d1ca6  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
006d1cac  33c9                      XOR ECX,ECX
006d1cae  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
006d1cb1  898780030000              MOV dword ptr [EDI + 0x380],EAX
006d1cb7  b802000000                MOV EAX,0x2
006d1cbc  1bc9                      SBB ECX,ECX
006d1cbe  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
006d1cc8  234f30                    AND ECX,dword ptr [EDI + 0x30]
006d1ccb  3bc8                      CMP ECX,EAX
006d1ccd  6a00                      PUSH 0x0
006d1ccf  0f42c1                    CMOVC EAX,ECX
006d1cd2  8d4f48                    LEA ECX,[EDI + 0x48]
006d1cd5  ff3485d04fb600            PUSH dword ptr [EAX*0x4 + 0xb64fd0]
006d1cdc  e89f86d3ff                CALL 0x0040a380
006d1ce1  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
006d1ce4  85c9                      TEST ECX,ECX
006d1ce6  7420                      JZ 0x006d1d08
006d1ce8  8b4930                    MOV ECX,dword ptr [ECX + 0x30]
006d1ceb  85c9                      TEST ECX,ECX
006d1ced  7e19                      JLE 0x006d1d08
006d1cef  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006d1cf5  33d2                      XOR EDX,EDX
006d1cf7  f7f1                      DIV ECX
006d1cf9  8d4f78                    LEA ECX,[EDI + 0x78]
006d1cfc  660f6eca                  MOVD XMM1,EDX
006d1d00  0f5bc9                    CVTDQ2PS XMM1,XMM1
006d1d03  e8f870d3ff                CALL 0x00408e00
006d1d08  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
006d1d10  8d4f48                    LEA ECX,[EDI + 0x48]
006d1d13  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
006d1d1b  6a01                      PUSH 0x1
006d1d1d  0f28c1                    MOVAPS XMM0,XMM1
006d1d20  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006d1d28  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006d1d30  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
006d1d38  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
006d1d40  e8db94d3ff                CALL 0x0040b220
006d1d45  83bd48ffffff00            CMP dword ptr [EBP + 0xffffff48],0x0
006d1d4c  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
006d1d54  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
006d1d59  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
006d1d61  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
006d1d66  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
006d1d70  c7875403000000000000      MOV dword ptr [EDI + 0x354],0x0
006d1d7a  7526                      JNZ 0x006d1da2
006d1d7c  a17816c700                MOV EAX,[0x00c71678]
006d1d81  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
006d1d87  8d873c030000              LEA EAX,[EDI + 0x33c]
006d1d8d  50                        PUSH EAX
006d1d8e  8bce                      MOV ECX,ESI
006d1d90  e8fb0e1400                CALL 0x00812c90
006d1d95  68b6030000                PUSH 0x3b6
006d1d9a  50                        PUSH EAX
006d1d9b  8bce                      MOV ECX,ESI
006d1d9d  e83e48d8ff                CALL 0x004565e0
006d1da2  e8b9d10100                CALL 0x006eef60
006d1da7  50                        PUSH EAX
006d1da8  6a00                      PUSH 0x0
006d1daa  6a00                      PUSH 0x0
006d1dac  6840b6c700                PUSH 0xc7b640
006d1db1  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006d1db7  51                        PUSH ECX
006d1db8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d1dbe  6a0f                      PUSH 0xf
006d1dc0  68e8030000                PUSH 0x3e8
006d1dc5  e8566dd5ff                CALL 0x00428b20
006d1dca  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
006d1dd4  c780500300000000c0c0      MOV dword ptr [EAX + 0x350],0xc0c00000
006d1dde  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
006d1de2  750d                      JNZ 0x006d1df1
006d1de4  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
006d1dec  0f57c0                    XORPS XMM0,XMM0
006d1def  eb10                      JMP 0x006d1e01
006d1df1  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
006d1df9  f30f100d44a2ba00          MOVSS XMM1,dword ptr [0x00baa244]
006d1e01  51                        PUSH ECX
006d1e02  f30f118810010000          MOVSS dword ptr [EAX + 0x110],XMM1
006d1e0a  c7801401000000000000      MOV dword ptr [EAX + 0x114],0x0
006d1e14  f30f118018010000          MOVSS dword ptr [EAX + 0x118],XMM0
006d1e1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
006d1e23  6a00                      PUSH 0x0
006d1e25  6a02                      PUSH 0x2
006d1e27  51                        PUSH ECX
006d1e28  c704240000803f            MOV dword ptr [ESP],0x3f800000
006d1e2f  8bcf                      MOV ECX,EDI
006d1e31  68d7010000                PUSH 0x1d7
006d1e36  e8654d0000                CALL 0x006d6ba0
006d1e3b  e820d10100                CALL 0x006eef60
006d1e40  33d2                      XOR EDX,EDX
006d1e42  b93c000000                MOV ECX,0x3c
006d1e47  f7f1                      DIV ECX
006d1e49  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006d1e4f  83c25a                    ADD EDX,0x5a
006d1e52  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
006d1e58  83f808                    CMP EAX,0x8
006d1e5b  7534                      JNZ 0x006d1e91
006d1e5d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006d1e61  8d4f48                    LEA ECX,[EDI + 0x48]
006d1e64  7409                      JZ 0x006d1e6f
006d1e66  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
006d1e6d  7522                      JNZ 0x006d1e91
006d1e6f  33d2                      XOR EDX,EDX
006d1e71  b802000000                MOV EAX,0x2
006d1e76  3b5730                    CMP EDX,dword ptr [EDI + 0x30]
006d1e79  6a00                      PUSH 0x0
006d1e7b  1bd2                      SBB EDX,EDX
006d1e7d  235730                    AND EDX,dword ptr [EDI + 0x30]
006d1e80  3bd0                      CMP EDX,EAX
006d1e82  0f42c2                    CMOVC EAX,EDX
006d1e85  ff3485d04fb600            PUSH dword ptr [EAX*0x4 + 0xb64fd0]
006d1e8c  e8ef84d3ff                CALL 0x0040a380
006d1e91  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
006d1e99  8db73c030000              LEA ESI,[EDI + 0x33c]
006d1e9f  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
006d1ea7  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
006d1eab  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
006d1eb0  89b54cffffff              MOV dword ptr [EBP + 0xffffff4c],ESI
006d1eb6  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
006d1ebe  0f57c9                    XORPS XMM1,XMM1
006d1ec1  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006d1ec9  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
006d1ece  0f2fc1                    COMISS XMM0,XMM1
006d1ed1  770d                      JA 0x006d1ee0
006d1ed3  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006d1eda  0f8464050000              JZ 0x006d2444
006d1ee0  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006d1ee3  85c0                      TEST EAX,EAX
006d1ee5  0f8437010000              JZ 0x006d2022
006d1eeb  83f801                    CMP EAX,0x1
006d1eee  0f842e010000              JZ 0x006d2022
006d1ef4  80bd67ffffff00            CMP byte ptr [EBP + 0xffffff67],0x0
006d1efb  0f8429050000              JZ 0x006d242a
006d1f01  83f804                    CMP EAX,0x4
006d1f04  0f8420050000              JZ 0x006d242a
006d1f0a  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
006d1f11  0f8513050000              JNZ 0x006d242a
006d1f17  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
006d1f1a  83e004                    AND EAX,0x4
006d1f1d  83c800                    OR EAX,0x0
006d1f20  750c                      JNZ 0x006d1f2e
006d1f22  388773010000              CMP byte ptr [EDI + 0x173],AL
006d1f28  0f8416050000              JZ 0x006d2444
006d1f2e  33d2                      XOR EDX,EDX
006d1f30  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
006d1f3a  3b5730                    CMP EDX,dword ptr [EDI + 0x30]
006d1f3d  8d4f48                    LEA ECX,[EDI + 0x48]
006d1f40  b802000000                MOV EAX,0x2
006d1f45  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
006d1f4f  1bd2                      SBB EDX,EDX
006d1f51  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
006d1f5b  235730                    AND EDX,dword ptr [EDI + 0x30]
006d1f5e  83fa02                    CMP EDX,0x2
006d1f61  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
006d1f6b  6a00                      PUSH 0x0
006d1f6d  0f42c2                    CMOVC EAX,EDX
006d1f70  ff3485dc4fb600            PUSH dword ptr [EAX*0x4 + 0xb64fdc]
006d1f77  e80484d3ff                CALL 0x0040a380
006d1f7c  51                        PUSH ECX
006d1f7d  c704240000803f            MOV dword ptr [ESP],0x3f800000
006d1f84  6a00                      PUSH 0x0
006d1f86  6a02                      PUSH 0x2
006d1f88  51                        PUSH ECX
006d1f89  c704249a99593f            MOV dword ptr [ESP],0x3f59999a
006d1f90  8bcf                      MOV ECX,EDI
006d1f92  6805010000                PUSH 0x105
006d1f97  c7875403000018fcffff      MOV dword ptr [EDI + 0x354],0xfffffc18
006d1fa1  e8fa4b0000                CALL 0x006d6ba0
006d1fa6  e8b5cf0100                CALL 0x006eef60
006d1fab  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d1fb1  50                        PUSH EAX
006d1fb2  6a00                      PUSH 0x0
006d1fb4  6a00                      PUSH 0x0
006d1fb6  6840b6c700                PUSH 0xc7b640
006d1fbb  56                        PUSH ESI
006d1fbc  6a0f                      PUSH 0xf
006d1fbe  68e8030000                PUSH 0x3e8
006d1fc3  e8586bd5ff                CALL 0x00428b20
006d1fc8  8b770c                    MOV ESI,dword ptr [EDI + 0xc]
006d1fcb  b893244992                MOV EAX,0x92492493
006d1fd0  8bce                      MOV ECX,ESI
006d1fd2  2b4f08                    SUB ECX,dword ptr [EDI + 0x8]
006d1fd5  f7e9                      IMUL ECX
006d1fd7  03d1                      ADD EDX,ECX
006d1fd9  c1fa05                    SAR EDX,0x5
006d1fdc  8bc2                      MOV EAX,EDX
006d1fde  c1e81f                    SHR EAX,0x1f
006d1fe1  03c2                      ADD EAX,EDX
006d1fe3  0f8482030000              JZ 0x006d236b
006d1fe9  8b4efc                    MOV ECX,dword ptr [ESI + -0x4]
006d1fec  85c9                      TEST ECX,ECX
006d1fee  0f8477030000              JZ 0x006d236b
006d1ff4  e84771fdff                CALL 0x006a9140
006d1ff9  85c0                      TEST EAX,EAX
006d1ffb  0f846a030000              JZ 0x006d236b
006d2001  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d2007  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006d200f  81c1e0bb0100              ADD ECX,0x1bbe0
006d2015  50                        PUSH EAX
006d2016  6a0e                      PUSH 0xe
006d2018  e8a33ad5ff                CALL 0x00425ac0
006d201d  e949030000                JMP 0x006d236b
006d2022  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006d2029  c68567ffffff00            MOV byte ptr [EBP + 0xffffff67],0x0
006d2030  7514                      JNZ 0x006d2046
006d2032  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
006d2035  83e004                    AND EAX,0x4
006d2038  83c800                    OR EAX,0x0
006d203b  7509                      JNZ 0x006d2046
006d203d  0f2f05c4abba00            COMISS XMM0,dword ptr [0x00baabc4]
006d2044  7207                      JC 0x006d204d
006d2046  c68567ffffff01            MOV byte ptr [EBP + 0xffffff67],0x1
006d204d  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
006d2054  0f85d0030000              JNZ 0x006d242a
006d205a  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
006d205d  b893244992                MOV EAX,0x92492493
006d2062  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
006d2065  2bce                      SUB ECX,ESI
006d2067  f7e9                      IMUL ECX
006d2069  c78558ffffff00000000      MOV dword ptr [EBP + 0xffffff58],0x0
006d2073  03d1                      ADD EDX,ECX
006d2075  c1fa05                    SAR EDX,0x5
006d2078  8bc2                      MOV EAX,EDX
006d207a  c1e81f                    SHR EAX,0x1f
006d207d  03c2                      ADD EAX,EDX
006d207f  0f84c0000000              JZ 0x006d2145
006d2085  33c0                      XOR EAX,EAX
006d2087  33c9                      XOR ECX,ECX
006d2089  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
006d208f  90                        NOP
006d2090  f30f100406                MOVSS XMM0,dword ptr [ESI + EAX*0x1]
006d2095  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
006d209c  761c                      JBE 0x006d20ba
006d209e  e8bdce0100                CALL 0x006eef60
006d20a3  33d2                      XOR EDX,EDX
006d20a5  b903000000                MOV ECX,0x3
006d20aa  f7f1                      DIV ECX
006d20ac  85d2                      TEST EDX,EDX
006d20ae  7521                      JNZ 0x006d20d1
006d20b0  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
006d20b8  eb29                      JMP 0x006d20e3
006d20ba  0f2fc1                    COMISS XMM0,XMM1
006d20bd  7647                      JBE 0x006d2106
006d20bf  e89cce0100                CALL 0x006eef60
006d20c4  33d2                      XOR EDX,EDX
006d20c6  b903000000                MOV ECX,0x3
006d20cb  f7f1                      DIV ECX
006d20cd  85d2                      TEST EDX,EDX
006d20cf  750a                      JNZ 0x006d20db
006d20d1  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006d20d9  eb08                      JMP 0x006d20e3
006d20db  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006d20e3  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d20eb  8b8d58ffffff              MOV ECX,dword ptr [EBP + 0xffffff58]
006d20f1  f30f5cc1                  SUBSS XMM0,XMM1
006d20f5  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
006d20fb  0f57c9                    XORPS XMM1,XMM1
006d20fe  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
006d2106  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
006d2109  83c038                    ADD EAX,0x38
006d210c  41                        INC ECX
006d210d  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
006d2113  898d58ffffff              MOV dword ptr [EBP + 0xffffff58],ECX
006d2119  b893244992                MOV EAX,0x92492493
006d211e  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
006d2121  2bce                      SUB ECX,ESI
006d2123  f7e9                      IMUL ECX
006d2125  03d1                      ADD EDX,ECX
006d2127  8b8d58ffffff              MOV ECX,dword ptr [EBP + 0xffffff58]
006d212d  c1fa05                    SAR EDX,0x5
006d2130  8bc2                      MOV EAX,EDX
006d2132  c1e81f                    SHR EAX,0x1f
006d2135  03c2                      ADD EAX,EDX
006d2137  3bc8                      CMP ECX,EAX
006d2139  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
006d213f  0f824bffffff              JC 0x006d2090
006d2145  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d214d  8db780030000              LEA ESI,[EDI + 0x380]
006d2153  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
006d215a  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
006d2160  c78560ffffff0000803f      MOV dword ptr [EBP + 0xffffff60],0x3f800000
006d216a  8d4f48                    LEA ECX,[EDI + 0x48]
006d216d  6a01                      PUSH 0x1
006d216f  0f47c6                    CMOVA EAX,ESI
006d2172  f30f1008                  MOVSS XMM1,dword ptr [EAX]
006d2176  f30f110e                  MOVSS dword ptr [ESI],XMM1
006d217a  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
006d2182  0f28c1                    MOVAPS XMM0,XMM1
006d2185  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006d218d  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006d2195  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
006d219d  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
006d21a5  e87690d3ff                CALL 0x0040b220
006d21aa  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
006d21b2  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
006d21b7  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
006d21bf  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
006d21c4  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
006d21cc  0f2f06                    COMISS XMM0,dword ptr [ESI]
006d21cf  770d                      JA 0x006d21de
006d21d1  80bd67ffffff00            CMP byte ptr [EBP + 0xffffff67],0x0
006d21d8  0f8446020000              JZ 0x006d2424
006d21de  83bd48ffffff00            CMP dword ptr [EBP + 0xffffff48],0x0
006d21e5  752c                      JNZ 0x006d2213
006d21e7  a17816c700                MOV EAX,[0x00c71678]
006d21ec  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
006d21f2  8d873c030000              LEA EAX,[EDI + 0x33c]
006d21f8  50                        PUSH EAX
006d21f9  8bce                      MOV ECX,ESI
006d21fb  e8900a1400                CALL 0x00812c90
006d2200  6884030000                PUSH 0x384
006d2205  50                        PUSH EAX
006d2206  8bce                      MOV ECX,ESI
006d2208  e8d343d8ff                CALL 0x004565e0
006d220d  8db780030000              LEA ESI,[EDI + 0x380]
006d2213  33c9                      XOR ECX,ECX
006d2215  c7060000803f              MOV dword ptr [ESI],0x3f800000
006d221b  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
006d221e  b802000000                MOV EAX,0x2
006d2223  6a00                      PUSH 0x0
006d2225  1bc9                      SBB ECX,ECX
006d2227  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
006d2231  234f30                    AND ECX,dword ptr [EDI + 0x30]
006d2234  3bc8                      CMP ECX,EAX
006d2236  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
006d2240  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
006d224a  0f42c1                    CMOVC EAX,ECX
006d224d  8d4f48                    LEA ECX,[EDI + 0x48]
006d2250  ff3485dc4fb600            PUSH dword ptr [EAX*0x4 + 0xb64fdc]
006d2257  e82481d3ff                CALL 0x0040a380
006d225c  51                        PUSH ECX
006d225d  c704240000803f            MOV dword ptr [ESP],0x3f800000
006d2264  6a00                      PUSH 0x0
006d2266  6a02                      PUSH 0x2
006d2268  51                        PUSH ECX
006d2269  c704249a99593f            MOV dword ptr [ESP],0x3f59999a
006d2270  8bcf                      MOV ECX,EDI
006d2272  6805010000                PUSH 0x105
006d2277  c7875403000018fcffff      MOV dword ptr [EDI + 0x354],0xfffffc18
006d2281  e81a490000                CALL 0x006d6ba0
006d2286  33c9                      XOR ECX,ECX
006d2288  b802000000                MOV EAX,0x2
006d228d  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
006d2290  51                        PUSH ECX
006d2291  1bd2                      SBB EDX,EDX
006d2293  8d4f48                    LEA ECX,[EDI + 0x48]
006d2296  235730                    AND EDX,dword ptr [EDI + 0x30]
006d2299  83fa02                    CMP EDX,0x2
006d229c  0f42c2                    CMOVC EAX,EDX
006d229f  ff34857473b600            PUSH dword ptr [EAX*0x4 + 0xb67374]
006d22a6  e8d580d3ff                CALL 0x0040a380
006d22ab  8b770c                    MOV ESI,dword ptr [EDI + 0xc]
006d22ae  b893244992                MOV EAX,0x92492493
006d22b3  8bce                      MOV ECX,ESI
006d22b5  2b4f08                    SUB ECX,dword ptr [EDI + 0x8]
006d22b8  f7e9                      IMUL ECX
006d22ba  03d1                      ADD EDX,ECX
006d22bc  c1fa05                    SAR EDX,0x5
006d22bf  8bc2                      MOV EAX,EDX
006d22c1  c1e81f                    SHR EAX,0x1f
006d22c4  03c2                      ADD EAX,EDX
006d22c6  0f849f000000              JZ 0x006d236b
006d22cc  8b4efc                    MOV ECX,dword ptr [ESI + -0x4]
006d22cf  85c9                      TEST ECX,ECX
006d22d1  0f8494000000              JZ 0x006d236b
006d22d7  e8646efdff                CALL 0x006a9140
006d22dc  8bf0                      MOV ESI,EAX
006d22de  85f6                      TEST ESI,ESI
006d22e0  0f8485000000              JZ 0x006d236b
006d22e6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d22ec  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006d22f4  81c1e0bb0100              ADD ECX,0x1bbe0
006d22fa  56                        PUSH ESI
006d22fb  6a0e                      PUSH 0xe
006d22fd  e8be37d5ff                CALL 0x00425ac0
006d2302  6a00                      PUSH 0x0
006d2304  68a4010000                PUSH 0x1a4
006d2309  8bce                      MOV ECX,ESI
006d230b  e8d0e30900                CALL 0x007706e0
006d2310  84c0                      TEST AL,AL
006d2312  7457                      JZ 0x006d236b
006d2314  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
006d231a  e8514ed3ff                CALL 0x00407170
006d231f  6a00                      PUSH 0x0
006d2321  6a00                      PUSH 0x0
006d2323  6a04                      PUSH 0x4
006d2325  6a01                      PUSH 0x1
006d2327  51                        PUSH ECX
006d2328  c704240000803f            MOV dword ptr [ESP],0x3f800000
006d232f  56                        PUSH ESI
006d2330  50                        PUSH EAX
006d2331  83ec10                    SUB ESP,0x10
006d2334  8bc4                      MOV EAX,ESP
006d2336  51                        PUSH ECX
006d2337  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d233d  c70000000000              MOV dword ptr [EAX],0x0
006d2343  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
006d234a  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
006d2351  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
006d2358  8d873c030000              LEA EAX,[EDI + 0x33c]
006d235e  c704240000a041            MOV dword ptr [ESP],0x41a00000
006d2365  50                        PUSH EAX
006d2366  e8f5dc0200                CALL 0x00700060
006d236b  6a01                      PUSH 0x1
006d236d  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
006d2373  8bcf                      MOV ECX,EDI
006d2375  50                        PUSH EAX
006d2376  e805f2ffff                CALL 0x006d1580
006d237b  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006d2382  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
006d2388  8bf0                      MOV ESI,EAX
006d238a  8bbd14ffffff              MOV EDI,dword ptr [EBP + 0xffffff14]
006d2390  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
006d2396  03c1                      ADD EAX,ECX
006d2398  3bf0                      CMP ESI,EAX
006d239a  7438                      JZ 0x006d23d4
006d239c  85ff                      TEST EDI,EDI
006d239e  7404                      JZ 0x006d23a4
006d23a0  8b07                      MOV EAX,dword ptr [EDI]
006d23a2  eb02                      JMP 0x006d23a6
006d23a4  33c0                      XOR EAX,EAX
006d23a6  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006d23a9  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
006d23ac  49                        DEC ECX
006d23ad  6a00                      PUSH 0x0
006d23af  23ce                      AND ECX,ESI
006d23b1  6840b6c700                PUSH 0xc7b640
006d23b6  ffb54cffffff              PUSH dword ptr [EBP + 0xffffff4c]
006d23bc  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
006d23bf  e80c9b1800                CALL 0x0085bed0
006d23c4  8bc8                      MOV ECX,EAX
006d23c6  8b10                      MOV EDX,dword ptr [EAX]
006d23c8  ff520c                    CALL dword ptr [EDX + 0xc]
006d23cb  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
006d23d1  46                        INC ESI
006d23d2  ebbc                      JMP 0x006d2390
006d23d4  8bbd54ffffff              MOV EDI,dword ptr [EBP + 0xffffff54]
006d23da  85c9                      TEST ECX,ECX
006d23dc  7412                      JZ 0x006d23f0
006d23de  a17816c700                MOV EAX,[0x00c71678]
006d23e3  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006d23e9  c6809478000001            MOV byte ptr [EAX + 0x7894],0x1
006d23f0  8bcf                      MOV ECX,EDI
006d23f2  e839810000                CALL 0x006da530
006d23f7  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
006d23fd  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006d2404  e847840000                CALL 0x006da850
006d2409  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
006d240f  6a08                      PUSH 0x8
006d2411  50                        PUSH EAX
006d2412  c78514ffffff00000000      MOV dword ptr [EBP + 0xffffff14],0x0
006d241c  e83bcd4100                CALL 0x00aef15c
006d2421  83c408                    ADD ESP,0x8
006d2424  8db73c030000              LEA ESI,[EDI + 0x33c]
006d242a  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006d2431  7411                      JZ 0x006d2444
006d2433  c787800300000000803f      MOV dword ptr [EDI + 0x380],0x3f800000
006d243d  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
006d2444  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
006d2447  89470c                    MOV dword ptr [EDI + 0xc],EAX
006d244a  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
006d2451  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
006d2458  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
006d245f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006d2462  83f801                    CMP EAX,0x1
006d2465  7409                      JZ 0x006d2470
006d2467  83f803                    CMP EAX,0x3
006d246a  0f859f010000              JNZ 0x006d260f
006d2470  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
006d2473  3d89030000                CMP EAX,0x389
006d2478  0f8491010000              JZ 0x006d260f
006d247e  3d97030000                CMP EAX,0x397
006d2483  0f8486010000              JZ 0x006d260f
006d2489  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
006d2490  0f8f79010000              JG 0x006d260f
006d2496  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
006d249d  0f856c010000              JNZ 0x006d260f
006d24a3  e8b8ca0100                CALL 0x006eef60
006d24a8  33d2                      XOR EDX,EDX
006d24aa  b905000000                MOV ECX,0x5
006d24af  f7f1                      DIV ECX
006d24b1  85d2                      TEST EDX,EDX
006d24b3  0f8556010000              JNZ 0x006d260f
006d24b9  f30f1006                  MOVSS XMM0,dword ptr [ESI]
006d24bd  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
006d24c5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d24cb  56                        PUSH ESI
006d24cc  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
006d24d4  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
006d24d9  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
006d24e1  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
006d24e9  e862140300                CALL 0x00703950
006d24ee  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
006d24f4  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
006d24fc  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
006d2504  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
006d250a  f30f118d40ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM1
006d2512  f30f5c8d60ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff60]
006d251a  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
006d2522  f30f5c8558ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff58]
006d252a  50                        PUSH EAX
006d252b  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
006d2533  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
006d253b  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
006d2543  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
006d254b  e8e0da3300                CALL 0x00a10030
006d2550  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006d2554  f30f5905a0a8ba00          MULSS XMM0,dword ptr [0x00baa8a0]
006d255c  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
006d2561  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
006d2569  f30f588560ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff60]
006d2571  f30f588d58ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff58]
006d2579  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
006d2581  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
006d2589  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
006d2591  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
006d2599  f30f59c0                  MULSS XMM0,XMM0
006d259d  f30f59c9                  MULSS XMM1,XMM1
006d25a1  f30f58c1                  ADDSS XMM0,XMM1
006d25a5  e8a634d6ff                CALL 0x00435a50
006d25aa  f30f100d5caaba00          MOVSS XMM1,dword ptr [0x00baaa5c]
006d25b2  0f2fc8                    COMISS XMM1,XMM0
006d25b5  7669                      JBE 0x006d2620
006d25b7  a17816c700                MOV EAX,[0x00c71678]
006d25bc  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
006d25c2  6a00                      PUSH 0x0
006d25c4  6a00                      PUSH 0x0
006d25c6  6a00                      PUSH 0x0
006d25c8  6a00                      PUSH 0x0
006d25ca  6a03                      PUSH 0x3
006d25cc  51                        PUSH ECX
006d25cd  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
006d25d3  51                        PUSH ECX
006d25d4  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006d25da  e811e81100                CALL 0x007f0df0
006d25df  84c0                      TEST AL,AL
006d25e1  743d                      JZ 0x006d2620
006d25e3  e878c90100                CALL 0x006eef60
006d25e8  33d2                      XOR EDX,EDX
006d25ea  b90f000000                MOV ECX,0xf
006d25ef  f7f1                      DIV ECX
006d25f1  85d2                      TEST EDX,EDX
006d25f3  752b                      JNZ 0x006d2620
006d25f5  52                        PUSH EDX
006d25f6  8d4f48                    LEA ECX,[EDI + 0x48]
006d25f9  68dcd2b100                PUSH 0xb1d2dc
006d25fe  e83d83d3ff                CALL 0x0040a940
006d2603  c787a00b000054000000      MOV dword ptr [EDI + 0xba0],0x54
006d260d  eb11                      JMP 0x006d2620
006d260f  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
006d2615  85c0                      TEST EAX,EAX
006d2617  7e07                      JLE 0x006d2620
006d2619  48                        DEC EAX
006d261a  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
006d2620  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
006d2627  0f8420020000              JZ 0x006d284d
006d262d  8d8f98000000              LEA ECX,[EDI + 0x98]
006d2633  6a00                      PUSH 0x0
006d2635  e83686d3ff                CALL 0x0040ac70
006d263a  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
006d2640  85c0                      TEST EAX,EAX
006d2642  0f847d000000              JZ 0x006d26c5
006d2648  6a01                      PUSH 0x1
006d264a  8d4f48                    LEA ECX,[EDI + 0x48]
006d264d  e8ce8bd3ff                CALL 0x0040b220
006d2652  8b9554ffffff              MOV EDX,dword ptr [EBP + 0xffffff54]
006d2658  6a01                      PUSH 0x1
006d265a  8b0a                      MOV ECX,dword ptr [EDX]
006d265c  894840                    MOV dword ptr [EAX + 0x40],ECX
006d265f  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
006d2662  894844                    MOV dword ptr [EAX + 0x44],ECX
006d2665  8d4f48                    LEA ECX,[EDI + 0x48]
006d2668  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d2670  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
006d2678  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
006d2680  f30f104210                MOVSS XMM0,dword ptr [EDX + 0x10]
006d2685  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
006d268d  f30f104214                MOVSS XMM0,dword ptr [EDX + 0x14]
006d2692  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
006d269a  e8818bd3ff                CALL 0x0040b220
006d269f  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
006d26a7  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
006d26af  f30f59c1                  MULSS XMM0,XMM1
006d26b3  f30f598d60ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff60]
006d26bb  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
006d26c0  f30f114838                MOVSS dword ptr [EAX + 0x38],XMM1
006d26c5  68dcd2b100                PUSH 0xb1d2dc
006d26ca  8d8f98000000              LEA ECX,[EDI + 0x98]
006d26d0  e8fb86d3ff                CALL 0x0040add0
006d26d5  84c0                      TEST AL,AL
006d26d7  0f8470010000              JZ 0x006d284d
006d26dd  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
006d26e0  3d89030000                CMP EAX,0x389
006d26e5  0f8462010000              JZ 0x006d284d
006d26eb  3d97030000                CMP EAX,0x397
006d26f0  0f8457010000              JZ 0x006d284d
006d26f6  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006d26fe  8d873c030000              LEA EAX,[EDI + 0x33c]
006d2704  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
006d270c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d2712  50                        PUSH EAX
006d2713  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
006d271b  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
006d2720  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
006d2728  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
006d2730  e81b120300                CALL 0x00703950
006d2735  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006d273b  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
006d2743  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
006d274b  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
006d2751  f30f5c855cffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff5c]
006d2759  f30f5c8d60ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff60]
006d2761  50                        PUSH EAX
006d2762  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
006d276a  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
006d2772  e8b9d83300                CALL 0x00a10030
006d2777  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
006d277c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006d2780  f30f5905a0a8ba00          MULSS XMM0,dword ptr [0x00baa8a0]
006d2788  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
006d2790  f30f58855cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff5c]
006d2798  f30f588d60ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff60]
006d27a0  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
006d27a8  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
006d27b0  e8abc70100                CALL 0x006eef60
006d27b5  8bf0                      MOV ESI,EAX
006d27b7  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
006d27bd  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
006d27c3  50                        PUSH EAX
006d27c4  e867d83300                CALL 0x00a10030
006d27c9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d27cf  6a00                      PUSH 0x0
006d27d1  680cd7c500                PUSH 0xc5d70c
006d27d6  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006d27da  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006d27e2  68dcd5c500                PUSH 0xc5d5dc
006d27e7  6a00                      PUSH 0x0
006d27e9  56                        PUSH ESI
006d27ea  6a00                      PUSH 0x0
006d27ec  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
006d27f4  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
006d27f9  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
006d27ff  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006d2807  57                        PUSH EDI
006d2808  50                        PUSH EAX
006d2809  8d855cffffff              LEA EAX,[EBP + 0xffffff5c]
006d280f  50                        PUSH EAX
006d2810  6a00                      PUSH 0x0
006d2812  6a09                      PUSH 0x9
006d2814  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
006d281c  e8ff62d5ff                CALL 0x00428b20
006d2821  50                        PUSH EAX
006d2822  e88ae04100                CALL 0x00af08b1
006d2827  83c414                    ADD ESP,0x14
006d282a  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
006d282e  751d                      JNZ 0x006d284d
006d2830  8b883c040000              MOV ECX,dword ptr [EAX + 0x43c]
006d2836  83883804000001            OR dword ptr [EAX + 0x438],0x1
006d283d  89883c040000              MOV dword ptr [EAX + 0x43c],ECX
006d2843  c780200400000000c03f      MOV dword ptr [EAX + 0x420],0x3fc00000
006d284d  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
006d2854  0f8569020000              JNZ 0x006d2ac3
006d285a  e801c70100                CALL 0x006eef60
006d285f  33d2                      XOR EDX,EDX
006d2861  b907000000                MOV ECX,0x7
006d2866  f7f1                      DIV ECX
006d2868  85d2                      TEST EDX,EDX
006d286a  0f8553020000              JNZ 0x006d2ac3
006d2870  e8ebc60100                CALL 0x006eef60
006d2875  660f6ec0                  MOVD XMM0,EAX
006d2879  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006d287d  c1e81f                    SHR EAX,0x1f
006d2880  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006d2889  660f5ac0                  CVTPD2PS XMM0,XMM0
006d288d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006d2895  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
006d289d  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d28a5  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
006d28ad  e8aec60100                CALL 0x006eef60
006d28b2  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
006d28ba  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
006d28c2  660f6ec0                  MOVD XMM0,EAX
006d28c6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006d28ca  c1e81f                    SHR EAX,0x1f
006d28cd  f30f5e0da4a7ba00          DIVSS XMM1,dword ptr [0x00baa7a4]
006d28d5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006d28de  660f5ac0                  CVTPD2PS XMM0,XMM0
006d28e2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006d28ea  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
006d28f2  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
006d28fa  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
006d2902  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
006d290a  f30f1005d8adba00          MOVSS XMM0,dword ptr [0x00baadd8]
006d2912  f30f5cc1                  SUBSS XMM0,XMM1
006d2916  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
006d291e  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
006d2926  f30f5cc1                  SUBSS XMM0,XMM1
006d292a  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
006d2932  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
006d293a  e821c60100                CALL 0x006eef60
006d293f  660f6ec0                  MOVD XMM0,EAX
006d2943  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006d2947  c1e81f                    SHR EAX,0x1f
006d294a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006d2953  660f5ac0                  CVTPD2PS XMM0,XMM0
006d2957  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006d295f  f30f590564adba00          MULSS XMM0,dword ptr [0x00baad64]
006d2967  f30f5c05a4a3ba00          SUBSS XMM0,dword ptr [0x00baa3a4]
006d296f  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
006d2977  e8e4c50100                CALL 0x006eef60
006d297c  660f6ec0                  MOVD XMM0,EAX
006d2980  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006d2984  c1e81f                    SHR EAX,0x1f
006d2987  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006d2990  660f5ac0                  CVTPD2PS XMM0,XMM0
006d2994  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006d299c  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
006d29a4  f30f5c0598a1ba00          SUBSS XMM0,dword ptr [0x00baa198]
006d29ac  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
006d29b4  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
006d29bc  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
006d29c4  e897c50100                CALL 0x006eef60
006d29c9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d29cf  50                        PUSH EAX
006d29d0  6a00                      PUSH 0x0
006d29d2  57                        PUSH EDI
006d29d3  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
006d29d9  50                        PUSH EAX
006d29da  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
006d29e0  50                        PUSH EAX
006d29e1  6a42                      PUSH 0x42
006d29e3  68e8030000                PUSH 0x3e8
006d29e8  e83361d5ff                CALL 0x00428b20
006d29ed  8bf0                      MOV ESI,EAX
006d29ef  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006d29f2  83f801                    CMP EAX,0x1
006d29f5  7538                      JNZ 0x006d2a2f
006d29f7  f30f101df8a1ba00          MOVSS XMM3,dword ptr [0x00baa1f8]
006d29ff  8d4dc0                    LEA ECX,[EBP + -0x40]
006d2a02  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
006d2a0a  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006d2a12  e86930d6ff                CALL 0x00435a80
006d2a17  8b16                      MOV EDX,dword ptr [ESI]
006d2a19  8bce                      MOV ECX,ESI
006d2a1b  6a01                      PUSH 0x1
006d2a1d  6a00                      PUSH 0x0
006d2a1f  68ff000000                PUSH 0xff
006d2a24  6aff                      PUSH -0x1
006d2a26  50                        PUSH EAX
006d2a27  ff523c                    CALL dword ptr [EDX + 0x3c]
006d2a2a  e994000000                JMP 0x006d2ac3
006d2a2f  83f802                    CMP EAX,0x2
006d2a32  7530                      JNZ 0x006d2a64
006d2a34  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
006d2a3b  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
006d2a3f  0f2805a0c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac8a0]
006d2a46  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
006d2a4a  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
006d2a51  8d4dc0                    LEA ECX,[EBP + -0x40]
006d2a54  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
006d2a5b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
006d2a62  eb4c                      JMP 0x006d2ab0
006d2a64  83f803                    CMP EAX,0x3
006d2a67  7514                      JNZ 0x006d2a7d
006d2a69  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
006d2a70  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
006d2a74  0f280520c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac720]
006d2a7b  ebc9                      JMP 0x006d2a46
006d2a7d  83f804                    CMP EAX,0x4
006d2a80  7541                      JNZ 0x006d2ac3
006d2a82  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
006d2a89  8d4d94                    LEA ECX,[EBP + -0x6c]
006d2a8c  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
006d2a90  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
006d2a97  0f2805b0c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac8b0]
006d2a9e  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
006d2aa2  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
006d2aa9  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
006d2ab0  8b06                      MOV EAX,dword ptr [ESI]
006d2ab2  6a01                      PUSH 0x1
006d2ab4  6a00                      PUSH 0x0
006d2ab6  68ff000000                PUSH 0xff
006d2abb  6aff                      PUSH -0x1
006d2abd  51                        PUSH ECX
006d2abe  8bce                      MOV ECX,ESI
006d2ac0  ff503c                    CALL dword ptr [EAX + 0x3c]
006d2ac3  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
006d2aca  755a                      JNZ 0x006d2b26
006d2acc  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006d2ad4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d2ada  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
006d2ae2  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006d2aea  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
006d2af2  ffb554ffffff              PUSH dword ptr [EBP + 0xffffff54]
006d2af8  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006d2afe  ffb550ffffff              PUSH dword ptr [EBP + 0xffffff50]
006d2b04  e877dc1100                CALL 0x007f0780
006d2b09  85c0                      TEST EAX,EAX
006d2b0b  7419                      JZ 0x006d2b26
006d2b0d  83bd48ffffff00            CMP dword ptr [EBP + 0xffffff48],0x0
006d2b14  7510                      JNZ 0x006d2b26
006d2b16  8b07                      MOV EAX,dword ptr [EDI]
006d2b18  8bcf                      MOV ECX,EDI
006d2b1a  ff5028                    CALL dword ptr [EAX + 0x28]
006d2b1d  eb07                      JMP 0x006d2b26
006d2b1f  8bcf                      MOV ECX,EDI
006d2b21  e89ae3ffff                CALL 0x006d0ec0
006d2b26  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006d2b29  64890d00000000            MOV dword ptr FS:[0x0],ECX
006d2b30  59                        POP ECX
006d2b31  5f                        POP EDI
006d2b32  5e                        POP ESI
006d2b33  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
006d2b36  33cd                      XOR ECX,EBP
006d2b38  e8eec54100                CALL 0x00aef12b
006d2b3d  8be5                      MOV ESP,EBP
006d2b3f  5d                        POP EBP
006d2b40  8be3                      MOV ESP,EBX
006d2b42  5b                        POP EBX
006d2b43  c3                        RET
