; J460 NPC AI 0x004ea3d0 REFERENCE_VisFatty_AI
; types=886
; identities=reference_duplicate
; entry=004ea3d0
004ea3d0  53                        PUSH EBX
004ea3d1  8bdc                      MOV EBX,ESP
004ea3d3  83ec08                    SUB ESP,0x8
004ea3d6  83e4f8                    AND ESP,0xfffffff8
004ea3d9  83c404                    ADD ESP,0x4
004ea3dc  55                        PUSH EBP
004ea3dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004ea3e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004ea3e4  8bec                      MOV EBP,ESP
004ea3e6  6aff                      PUSH -0x1
004ea3e8  68553daf00                PUSH 0xaf3d55
004ea3ed  64a100000000              MOV EAX,FS:[0x0]
004ea3f3  50                        PUSH EAX
004ea3f4  53                        PUSH EBX
004ea3f5  81ecb0000000              SUB ESP,0xb0
004ea3fb  a1b493bf00                MOV EAX,[0x00bf93b4]
004ea400  33c5                      XOR EAX,EBP
004ea402  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004ea405  56                        PUSH ESI
004ea406  57                        PUSH EDI
004ea407  50                        PUSH EAX
004ea408  8d45f4                    LEA EAX,[EBP + -0xc]
004ea40b  64a300000000              MOV FS:[0x0],EAX
004ea411  8bf9                      MOV EDI,ECX
004ea413  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ea417  0f85ea060000              JNZ 0x004eab07
004ea41d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ea425  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ea42d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004ea433  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ea43b  83f808                    CMP EAX,0x8
004ea43e  0f8796060000              JA 0x004eaada
004ea444  ff2485f0c14e00            JMP dword ptr [EAX*0x4 + 0x4ec1f0]
004ea44b  6a00                      PUSH 0x0
004ea44d  6804e1b100                PUSH 0xb1e104
004ea452  8d4f48                    LEA ECX,[EDI + 0x48]
004ea455  e826fff1ff                CALL 0x0040a380
004ea45a  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004ea464  c787a00b00000f000000      MOV dword ptr [EDI + 0xba0],0xf
004ea46e  e967060000                JMP 0x004eaada
004ea473  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ea477  8d4748                    LEA EAX,[EDI + 0x48]
004ea47a  7409                      JZ 0x004ea485
004ea47c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ea483  7511                      JNZ 0x004ea496
004ea485  6a00                      PUSH 0x0
004ea487  6804e1b100                PUSH 0xb1e104
004ea48c  8bc8                      MOV ECX,EAX
004ea48e  e8edfef1ff                CALL 0x0040a380
004ea493  8d4748                    LEA EAX,[EDI + 0x48]
004ea496  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004ea49d  0f8497020000              JZ 0x004ea73a
004ea4a3  51                        PUSH ECX
004ea4a4  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ea4aa  c7042400000000            MOV dword ptr [ESP],0x0
004ea4b1  50                        PUSH EAX
004ea4b2  8bcf                      MOV ECX,EDI
004ea4b4  e887471d00                CALL 0x006bec40
004ea4b9  8bcf                      MOV ECX,EDI
004ea4bb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ea4bf  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004ea4c7  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004ea4cf  f30f118568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM0
004ea4d7  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ea4dc  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ea4e4  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004ea4ec  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
004ea4f4  e847431d00                CALL 0x006be840
004ea4f9  51                        PUSH ECX
004ea4fa  8bf0                      MOV ESI,EAX
004ea4fc  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004ea503  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ea509  50                        PUSH EAX
004ea50a  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
004ea510  e8eb5b5200                CALL 0x00a10100
004ea515  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ea51d  0f28c1                    MOVAPS XMM0,XMM1
004ea520  f30f5900                  MULSS XMM0,dword ptr [EAX]
004ea524  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004ea529  f30f59d1                  MULSS XMM2,XMM1
004ea52d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ea535  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004ea53d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ea545  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004ea54d  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004ea553  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004ea55b  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004ea563  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004ea56b  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004ea573  f30f59c0                  MULSS XMM0,XMM0
004ea577  f30f59c9                  MULSS XMM1,XMM1
004ea57b  f30f58c1                  ADDSS XMM0,XMM1
004ea57f  e8ccb4f4ff                CALL 0x00435a50
004ea584  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004ea58b  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004ea593  0f8f41050000              JG 0x004eaada
004ea599  6a00                      PUSH 0x0
004ea59b  68000a0001                PUSH 0x1000a00
004ea5a0  8bcf                      MOV ECX,EDI
004ea5a2  e889cef2ff                CALL 0x00417430
004ea5a7  84c0                      TEST AL,AL
004ea5a9  0f852b050000              JNZ 0x004eaada
004ea5af  f30f100564acba00          MOVSS XMM0,dword ptr [0x00baac64]
004ea5b7  0f2f8578ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff78]
004ea5be  7612                      JBE 0x004ea5d2
004ea5c0  e89b492000                CALL 0x006eef60
004ea5c5  33d2                      XOR EDX,EDX
004ea5c7  b905000000                MOV ECX,0x5
004ea5cc  f7f1                      DIV ECX
004ea5ce  85d2                      TEST EDX,EDX
004ea5d0  7447                      JZ 0x004ea619
004ea5d2  8bcf                      MOV ECX,EDI
004ea5d4  e897d1f5ff                CALL 0x00447770
004ea5d9  f30f1080b40b0000          MOVSS XMM0,dword ptr [EAX + 0xbb4]
004ea5e1  0f2f05b8a7ba00            COMISS XMM0,dword ptr [0x00baa7b8]
004ea5e8  0f86ec040000              JBE 0x004eaada
004ea5ee  f30f10058cacba00          MOVSS XMM0,dword ptr [0x00baac8c]
004ea5f6  0f2f8578ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff78]
004ea5fd  0f86d7040000              JBE 0x004eaada
004ea603  e858492000                CALL 0x006eef60
004ea608  33d2                      XOR EDX,EDX
004ea60a  b903000000                MOV ECX,0x3
004ea60f  f7f1                      DIV ECX
004ea611  85d2                      TEST EDX,EDX
004ea613  0f85c1040000              JNZ 0x004eaada
004ea619  6a00                      PUSH 0x0
004ea61b  681ce1b100                PUSH 0xb1e11c
004ea620  8d4f48                    LEA ECX,[EDI + 0x48]
004ea623  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004ea62d  e84efdf1ff                CALL 0x0040a380
004ea632  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004ea63a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004ea642  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
004ea64a  f30f5cc8                  SUBSS XMM1,XMM0
004ea64e  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
004ea656  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ea65e  f30f5cc2                  SUBSS XMM0,XMM2
004ea662  f30f119548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM2
004ea66a  f30f59c9                  MULSS XMM1,XMM1
004ea66e  f30f59c0                  MULSS XMM0,XMM0
004ea672  f30f58c1                  ADDSS XMM0,XMM1
004ea676  e8d5b3f4ff                CALL 0x00435a50
004ea67b  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004ea683  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ea689  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
004ea68f  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
004ea697  50                        PUSH EAX
004ea698  f30f59c8                  MULSS XMM1,XMM0
004ea69c  f30f588d6cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff6c]
004ea6a4  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ea6ac  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004ea6b4  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
004ea6bc  f30f59c8                  MULSS XMM1,XMM0
004ea6c0  f30f588d48ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff48]
004ea6c8  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004ea6d0  f30f118d6cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM1
004ea6d8  e853595200                CALL 0x00a10030
004ea6dd  8b08                      MOV ECX,dword ptr [EAX]
004ea6df  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004ea6e5  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004ea6e8  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ea6ee  e86d482000                CALL 0x006eef60
004ea6f3  33d2                      XOR EDX,EDX
004ea6f5  f30f109d64ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff64]
004ea6fd  b90f000000                MOV ECX,0xf
004ea702  f30f109574ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff74]
004ea70a  f7f1                      DIV ECX
004ea70c  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004ea713  0f28cb                    MOVAPS XMM1,XMM3
004ea716  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004ea71d  83c21e                    ADD EDX,0x1e
004ea720  0f2fca                    COMISS XMM1,XMM2
004ea723  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004ea729  0f86ab030000              JBE 0x004eaada
004ea72f  0f57c0                    XORPS XMM0,XMM0
004ea732  0f2fc3                    COMISS XMM0,XMM3
004ea735  e997030000                JMP 0x004eaad1
004ea73a  6a00                      PUSH 0x0
004ea73c  681ce1b100                PUSH 0xb1e11c
004ea741  8bc8                      MOV ECX,EAX
004ea743  e838fcf1ff                CALL 0x0040a380
004ea748  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004ea750  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004ea758  0f2fca                    COMISS XMM1,XMM2
004ea75b  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004ea765  0f866f030000              JBE 0x004eaada
004ea76b  0f28c1                    MOVAPS XMM0,XMM1
004ea76e  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
004ea776  f30f58c2                  ADDSS XMM0,XMM2
004ea77a  0f2fc1                    COMISS XMM0,XMM1
004ea77d  7706                      JA 0x004ea785
004ea77f  f30f10c0                  MOVSS XMM0,XMM0
004ea783  eb04                      JMP 0x004ea789
004ea785  f30f10c1                  MOVSS XMM0,XMM1
004ea789  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004ea791  e944030000                JMP 0x004eaada
004ea796  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004ea79d  750f                      JNZ 0x004ea7ae
004ea79f  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004ea7a9  e92c030000                JMP 0x004eaada
004ea7ae  68dcd2b100                PUSH 0xb1d2dc
004ea7b3  8d4f48                    LEA ECX,[EDI + 0x48]
004ea7b6  e87508f2ff                CALL 0x0040b030
004ea7bb  84c0                      TEST AL,AL
004ea7bd  7420                      JZ 0x004ea7df
004ea7bf  51                        PUSH ECX
004ea7c0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ea7c7  6a00                      PUSH 0x0
004ea7c9  6a02                      PUSH 0x2
004ea7cb  51                        PUSH ECX
004ea7cc  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ea7d3  8bcf                      MOV ECX,EDI
004ea7d5  6892000000                PUSH 0x92
004ea7da  e8c1c31e00                CALL 0x006d6ba0
004ea7df  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004ea7e5  8d4f48                    LEA ECX,[EDI + 0x48]
004ea7e8  85c0                      TEST EAX,EAX
004ea7ea  0f8e42010000              JLE 0x004ea932
004ea7f0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ea7f4  7409                      JZ 0x004ea7ff
004ea7f6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ea7fd  7512                      JNZ 0x004ea811
004ea7ff  6a00                      PUSH 0x0
004ea801  6814e1b100                PUSH 0xb1e114
004ea806  e875fbf1ff                CALL 0x0040a380
004ea80b  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004ea811  83f814                    CMP EAX,0x14
004ea814  0f8dc3000000              JGE 0x004ea8dd
004ea81a  51                        PUSH ECX
004ea81b  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ea821  c7042400000000            MOV dword ptr [ESP],0x0
004ea828  50                        PUSH EAX
004ea829  8bcf                      MOV ECX,EDI
004ea82b  e810441d00                CALL 0x006bec40
004ea830  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004ea836  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ea83a  f30f5c813c030000          SUBSS XMM0,dword ptr [ECX + 0x33c]
004ea842  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004ea84a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ea84f  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ea855  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
004ea85d  50                        PUSH EAX
004ea85e  8d8d4cffffff              LEA ECX,[EBP + 0xffffff4c]
004ea864  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004ea86c  e8bf575200                CALL 0x00a10030
004ea871  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004ea879  8d8d4cffffff              LEA ECX,[EBP + 0xffffff4c]
004ea87f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ea883  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004ea88b  f30f59c2                  MULSS XMM0,XMM2
004ea88f  f30f588734030000          ADDSS XMM0,dword ptr [EDI + 0x334]
004ea897  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004ea89f  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ea8a4  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004ea8aa  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004ea8b2  50                        PUSH EAX
004ea8b3  f30f59c2                  MULSS XMM0,XMM2
004ea8b7  f30f588738030000          ADDSS XMM0,dword ptr [EDI + 0x338]
004ea8bf  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004ea8c7  e864575200                CALL 0x00a10030
004ea8cc  8b08                      MOV ECX,dword ptr [EAX]
004ea8ce  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004ea8d4  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004ea8d7  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ea8dd  f30f109f38030000          MOVSS XMM3,dword ptr [EDI + 0x338]
004ea8e5  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004ea8ed  f30f5905c8a6ba00          MULSS XMM0,dword ptr [0x00baa6c8]
004ea8f5  f30f591dc8a6ba00          MULSS XMM3,dword ptr [0x00baa6c8]
004ea8fd  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004ea905  f30f59c2                  MULSS XMM0,XMM2
004ea909  f30f59da                  MULSS XMM3,XMM2
004ea90d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ea915  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004ea91d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ea925  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004ea92d  e9a8010000                JMP 0x004eaada
004ea932  6a00                      PUSH 0x0
004ea934  68b401b600                PUSH 0xb601b4
004ea939  e842faf1ff                CALL 0x0040a380
004ea93e  e81d462000                CALL 0x006eef60
004ea943  33d2                      XOR EDX,EDX
004ea945  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004ea94f  b91e000000                MOV ECX,0x1e
004ea954  f7f1                      DIV ECX
004ea956  83c23c                    ADD EDX,0x3c
004ea959  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004ea95f  e976010000                JMP 0x004eaada
004ea964  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ea968  8d4f48                    LEA ECX,[EDI + 0x48]
004ea96b  7409                      JZ 0x004ea976
004ea96d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ea974  750c                      JNZ 0x004ea982
004ea976  6a00                      PUSH 0x0
004ea978  6814e1b100                PUSH 0xb1e114
004ea97d  e8fef9f1ff                CALL 0x0040a380
004ea982  51                        PUSH ECX
004ea983  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ea989  c7042400000000            MOV dword ptr [ESP],0x0
004ea990  50                        PUSH EAX
004ea991  8bcf                      MOV ECX,EDI
004ea993  e8a8421d00                CALL 0x006bec40
004ea998  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
004ea9a0  0f2e2554a4ba00            UCOMISS XMM4,dword ptr [0x00baa454]
004ea9a7  f30f1018                  MOVSS XMM3,dword ptr [EAX]
004ea9ab  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004ea9b0  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
004ea9b8  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004ea9c0  f30f100da4a4ba00          MOVSS XMM1,dword ptr [0x00baa4a4]
004ea9c8  9f                        LAHF
004ea9c9  f30f119d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM3
004ea9d1  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
004ea9d9  f6c444                    TEST AH,0x44
004ea9dc  7b13                      JNP 0x004ea9f1
004ea9de  0f28c4                    MOVAPS XMM0,XMM4
004ea9e1  f30f59e1                  MULSS XMM4,XMM1
004ea9e5  f30f58c1                  ADDSS XMM0,XMM1
004ea9e9  f30f5cc4                  SUBSS XMM0,XMM4
004ea9ed  f30f5ec8                  DIVSS XMM1,XMM0
004ea9f1  0f28c1                    MOVAPS XMM0,XMM1
004ea9f4  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
004ea9fc  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
004eaa04  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004eaa0c  0f28ca                    MOVAPS XMM1,XMM2
004eaa0f  f30f59ca                  MULSS XMM1,XMM2
004eaa13  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004eaa1b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004eaa23  0f28c3                    MOVAPS XMM0,XMM3
004eaa26  f30f59c3                  MULSS XMM0,XMM3
004eaa2a  f30f58c1                  ADDSS XMM0,XMM1
004eaa2e  e81db0f4ff                CALL 0x00435a50
004eaa33  f30f10ad78ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff78]
004eaa3b  0f57f6                    XORPS XMM6,XMM6
004eaa3e  0f2fc6                    COMISS XMM0,XMM6
004eaa41  f30f10a564ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff64]
004eaa49  0f28d5                    MOVAPS XMM2,XMM5
004eaa4c  0f28dc                    MOVAPS XMM3,XMM4
004eaa4f  7614                      JBE 0x004eaa65
004eaa51  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
004eaa59  f30f5ec8                  DIVSS XMM1,XMM0
004eaa5d  f30f59d1                  MULSS XMM2,XMM1
004eaa61  f30f59d9                  MULSS XMM3,XMM1
004eaa65  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004eaa6d  0f2ece                    UCOMISS XMM1,XMM6
004eaa70  9f                        LAHF
004eaa71  f6c444                    TEST AH,0x44
004eaa74  7b38                      JNP 0x004eaaae
004eaa76  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004eaa7e  f30f59d0                  MULSS XMM2,XMM0
004eaa82  f30f59d8                  MULSS XMM3,XMM0
004eaa86  f30f5ed1                  DIVSS XMM2,XMM1
004eaa8a  f30f5ed9                  DIVSS XMM3,XMM1
004eaa8e  f30f589574ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff74]
004eaa96  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004eaa9e  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004eaaa6  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004eaaae  0f542540cbba00            ANDPS XMM4,xmmword ptr [0x00bacb40]
004eaab5  0f28cd                    MOVAPS XMM1,XMM5
004eaab8  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004eaabf  0f2fcc                    COMISS XMM1,XMM4
004eaac2  c7877c03000000000041      MOV dword ptr [EDI + 0x37c],0x41000000
004eaacc  760c                      JBE 0x004eaada
004eaace  0f2ff5                    COMISS XMM6,XMM5
004eaad1  0f97c0                    SETA AL
004eaad4  888748010000              MOV byte ptr [EDI + 0x148],AL
004eaada  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
004eaae0  85d2                      TEST EDX,EDX
004eaae2  0f8ee9160000              JLE 0x004ec1d1
004eaae8  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004eaaf0  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004eaaf8  2bc8                      SUB ECX,EAX
004eaafa  03ca                      ADD ECX,EDX
004eaafc  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
004eab02  e9ca160000                JMP 0x004ec1d1
004eab07  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
004eab0e  0f85b3010000              JNZ 0x004eacc7
004eab14  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004eab1b  750d                      JNZ 0x004eab2a
004eab1d  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004eab24  0f859d010000              JNZ 0x004eacc7
004eab2a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004eab31  0f8590010000              JNZ 0x004eacc7
004eab37  33c0                      XOR EAX,EAX
004eab39  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004eab43  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
004eab49  3987140c0000              CMP dword ptr [EDI + 0xc14],EAX
004eab4f  0f8667010000              JBE 0x004eacbc
004eab55  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004eab60  8bb7100c0000              MOV ESI,dword ptr [EDI + 0xc10]
004eab66  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004eab6c  49                        DEC ECX
004eab6d  89b55cffffff              MOV dword ptr [EBP + 0xffffff5c],ESI
004eab73  89b55cffffff              MOV dword ptr [EBP + 0xffffff5c],ESI
004eab79  8d1406                    LEA EDX,[ESI + EAX*0x1]
004eab7c  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004eab83  8bc2                      MOV EAX,EDX
004eab85  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004eab8c  d1e8                      SHR EAX,0x1
004eab8e  83e201                    AND EDX,0x1
004eab91  23c8                      AND ECX,EAX
004eab93  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004eab9a  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004eaba0  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004eaba3  8b04d1                    MOV EAX,dword ptr [ECX + EDX*0x8]
004eaba6  8b4cd104                  MOV ECX,dword ptr [ECX + EDX*0x8 + 0x4]
004eabaa  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
004eabb0  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
004eabb6  83c202                    ADD EDX,0x2
004eabb9  898d6cffffff              MOV dword ptr [EBP + 0xffffff6c],ECX
004eabbf  03d6                      ADD EDX,ESI
004eabc1  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004eabc7  8bc2                      MOV EAX,EDX
004eabc9  d1e8                      SHR EAX,0x1
004eabcb  49                        DEC ECX
004eabcc  23c8                      AND ECX,EAX
004eabce  83e201                    AND EDX,0x1
004eabd1  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004eabd7  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004eabda  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004eabdf  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004eabe7  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004eabee  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004eabf2  0f57c0                    XORPS XMM0,XMM0
004eabf5  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004eabf9  e862432000                CALL 0x006eef60
004eabfe  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eac04  50                        PUSH EAX
004eac05  6a01                      PUSH 0x1
004eac07  6a00                      PUSH 0x0
004eac09  6840b6c700                PUSH 0xc7b640
004eac0e  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004eac14  50                        PUSH EAX
004eac15  6a02                      PUSH 0x2
004eac17  68e8030000                PUSH 0x3e8
004eac1c  e8ffdef3ff                CALL 0x00428b20
004eac21  8bf0                      MOV ESI,EAX
004eac23  8d45c0                    LEA EAX,[EBP + -0x40]
004eac26  6a01                      PUSH 0x1
004eac28  6a00                      PUSH 0x0
004eac2a  68ff000000                PUSH 0xff
004eac2f  8b0e                      MOV ECX,dword ptr [ESI]
004eac31  6aff                      PUSH -0x1
004eac33  50                        PUSH EAX
004eac34  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
004eac37  8bce                      MOV ECX,ESI
004eac39  ffd2                      CALL EDX
004eac3b  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
004eac43  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004eac4d  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
004eac55  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
004eac5f  e8fc422000                CALL 0x006eef60
004eac64  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eac6a  50                        PUSH EAX
004eac6b  6a00                      PUSH 0x0
004eac6d  57                        PUSH EDI
004eac6e  6840b6c700                PUSH 0xc7b640
004eac73  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004eac79  50                        PUSH EAX
004eac7a  6a07                      PUSH 0x7
004eac7c  68e8030000                PUSH 0x3e8
004eac81  e89adef3ff                CALL 0x00428b20
004eac86  8bc8                      MOV ECX,EAX
004eac88  8b10                      MOV EDX,dword ptr [EAX]
004eac8a  c780e4000000cdcccc3e      MOV dword ptr [EAX + 0xe4],0x3ecccccd
004eac94  c780e8000000cdcccc3e      MOV dword ptr [EAX + 0xe8],0x3ecccccd
004eac9e  ff520c                    CALL dword ptr [EDX + 0xc]
004eaca1  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
004eaca7  83c003                    ADD EAX,0x3
004eacaa  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
004eacb0  3b87140c0000              CMP EAX,dword ptr [EDI + 0xc14]
004eacb6  0f82a4feffff              JC 0x004eab60
004eacbc  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004eacc2  e8b9e6faff                CALL 0x00499380
004eacc7  8b87740b0000              MOV EAX,dword ptr [EDI + 0xb74]
004eaccd  83f801                    CMP EAX,0x1
004eacd0  0f84bc0f0000              JZ 0x004ebc92
004eacd6  83f802                    CMP EAX,0x2
004eacd9  0f841f100000              JZ 0x004ebcfe
004eacdf  83f803                    CMP EAX,0x3
004eace2  752c                      JNZ 0x004ead10
004eace4  8b877c0b0000              MOV EAX,dword ptr [EDI + 0xb7c]
004eacea  81782876030000            CMP dword ptr [EAX + 0x28],0x376
004eacf1  0f85da140000              JNZ 0x004ec1d1
004eacf7  83782c01                  CMP dword ptr [EAX + 0x2c],0x1
004eacfb  0f85d0140000              JNZ 0x004ec1d1
004ead01  c787800b000000000000      MOV dword ptr [EDI + 0xb80],0x0
004ead0b  e9c1140000                JMP 0x004ec1d1
004ead10  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004ead17  0f85ad010000              JNZ 0x004eaeca
004ead1d  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004ead24  0f85a0010000              JNZ 0x004eaeca
004ead2a  51                        PUSH ECX
004ead2b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ead32  6a00                      PUSH 0x0
004ead34  6a02                      PUSH 0x2
004ead36  51                        PUSH ECX
004ead37  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004ead3e  8bcf                      MOV ECX,EDI
004ead40  6838010000                PUSH 0x138
004ead45  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004ead4f  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004ead59  e842be1e00                CALL 0x006d6ba0
004ead5e  6a00                      PUSH 0x0
004ead60  8d4f48                    LEA ECX,[EDI + 0x48]
004ead63  68fc07b600                PUSH 0xb607fc
004ead68  e813f6f1ff                CALL 0x0040a380
004ead6d  8bcf                      MOV ECX,EDI
004ead6f  e8cc3a1d00                CALL 0x006be840
004ead74  f30f101d6ca3ba00          MOVSS XMM3,dword ptr [0x00baa36c]
004ead7c  0f57c9                    XORPS XMM1,XMM1
004ead7f  f30f10153cadba00          MOVSS XMM2,dword ptr [0x00baad3c]
004ead87  0f28eb                    MOVAPS XMM5,XMM3
004ead8a  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004ead92  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004ead9a  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
004eada2  f30f5ca740030000          SUBSS XMM4,dword ptr [EDI + 0x340]
004eadaa  0f2fc1                    COMISS XMM0,XMM1
004eadad  7603                      JBE 0x004eadb2
004eadaf  0f28da                    MOVAPS XMM3,XMM2
004eadb2  0f2fe1                    COMISS XMM4,XMM1
004eadb5  7603                      JBE 0x004eadba
004eadb7  0f28ea                    MOVAPS XMM5,XMM2
004eadba  0f28cb                    MOVAPS XMM1,XMM3
004eadbd  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
004eadc5  0f28c5                    MOVAPS XMM0,XMM5
004eadc8  f30f11af38030000          MOVSS dword ptr [EDI + 0x338],XMM5
004eadd0  e88beffaff                CALL 0x00499d60
004eadd5  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
004eaddd  0f28e0                    MOVAPS XMM4,XMM0
004eade0  f30f592548a9ba00          MULSS XMM4,dword ptr [0x00baa948]
004eade8  0f57db                    XORPS XMM3,XMM3
004eadeb  51                        PUSH ECX
004eadec  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
004eadf4  8d4dc0                    LEA ECX,[EBP + -0x40]
004eadf7  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004eadfe  f30f582578aaba00          ADDSS XMM4,dword ptr [0x00baaa78]
004eae06  e8e58af3ff                CALL 0x004238f0
004eae0b  f30f592588a0ba00          MULSS XMM4,dword ptr [0x00baa088]
004eae13  8bf0                      MOV ESI,EAX
004eae15  0f28c4                    MOVAPS XMM0,XMM4
004eae18  f30f11a574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM4
004eae20  e8fb26f3ff                CALL 0x0041d520
004eae25  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
004eae2d  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
004eae35  e80627f3ff                CALL 0x0041d540
004eae3a  51                        PUSH ECX
004eae3b  c7042400008040            MOV dword ptr [ESP],0x40800000
004eae42  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004eae48  56                        PUSH ESI
004eae49  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004eae51  8d9568ffffff              LEA EDX,[EBP + 0xffffff68]
004eae57  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
004eae5f  8bcf                      MOV ECX,EDI
004eae61  6a1e                      PUSH 0x1e
004eae63  50                        PUSH EAX
004eae64  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004eae6c  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004eae76  c7856cffffff0000a0c1      MOV dword ptr [EBP + 0xffffff6c],0xc1a00000
004eae80  e80b0a1200                CALL 0x0060b890
004eae85  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004eae8d  8d8f84030000              LEA ECX,[EDI + 0x384]
004eae93  f30f1009                  MOVSS XMM1,dword ptr [ECX]
004eae97  83c410                    ADD ESP,0x10
004eae9a  0f2fca                    COMISS XMM1,XMM2
004eae9d  762b                      JBE 0x004eaeca
004eae9f  0f28c1                    MOVAPS XMM0,XMM1
004eaea2  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004eaea8  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
004eaeb0  f30f58c2                  ADDSS XMM0,XMM2
004eaeb4  0f2fc1                    COMISS XMM0,XMM1
004eaeb7  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004eaebf  0f47c1                    CMOVA EAX,ECX
004eaec2  8b00                      MOV EAX,dword ptr [EAX]
004eaec4  898780030000              MOV dword ptr [EDI + 0x380],EAX
004eaeca  e891402000                CALL 0x006eef60
004eaecf  33d2                      XOR EDX,EDX
004eaed1  b90a000000                MOV ECX,0xa
004eaed6  f7f1                      DIV ECX
004eaed8  85d2                      TEST EDX,EDX
004eaeda  7542                      JNZ 0x004eaf1e
004eaedc  e87f402000                CALL 0x006eef60
004eaee1  51                        PUSH ECX
004eaee2  8bcf                      MOV ECX,EDI
004eaee4  660f6ec0                  MOVD XMM0,EAX
004eaee8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eaeec  c1e81f                    SHR EAX,0x1f
004eaeef  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eaef8  660f5ac0                  CVTPD2PS XMM0,XMM0
004eaefc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004eaf04  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004eaf0c  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
004eaf14  f30f110424                MOVSS dword ptr [ESP],XMM0
004eaf19  e8b2b51c00                CALL 0x006b64d0
004eaf1e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004eaf24  83f810                    CMP EAX,0x10
004eaf27  0f87340a0000              JA 0x004eb961
004eaf2d  0fb68028c24e00            MOVZX EAX,byte ptr [EAX + 0x4ec228]
004eaf34  ff248514c24e00            JMP dword ptr [EAX*0x4 + 0x4ec214]
004eaf3b  837f3000                  CMP dword ptr [EDI + 0x30],0x0
004eaf3f  0f85a5000000              JNZ 0x004eafea
004eaf45  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
004eaf4b  e8a0e12f00                CALL 0x007e90f0
004eaf50  8bf0                      MOV ESI,EAX
004eaf52  e809402000                CALL 0x006eef60
004eaf57  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eaf5d  56                        PUSH ESI
004eaf5e  6a00                      PUSH 0x0
004eaf60  660f6ec0                  MOVD XMM0,EAX
004eaf64  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eaf68  c1e81f                    SHR EAX,0x1f
004eaf6b  57                        PUSH EDI
004eaf6c  6840b6c700                PUSH 0xc7b640
004eaf71  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eaf7a  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004eaf80  50                        PUSH EAX
004eaf81  6a01                      PUSH 0x1
004eaf83  6876030000                PUSH 0x376
004eaf88  660f5ac0                  CVTPD2PS XMM0,XMM0
004eaf8c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004eaf94  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004eaf9c  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
004eafa4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004eafac  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004eafb4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004eafbc  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
004eafc4  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004eafcc  e84fdbf3ff                CALL 0x00428b20
004eafd1  8bf0                      MOV ESI,EAX
004eafd3  8bcf                      MOV ECX,EDI
004eafd5  56                        PUSH ESI
004eafd6  e805e31b00                CALL 0x006a92e0
004eafdb  57                        PUSH EDI
004eafdc  8bce                      MOV ECX,ESI
004eafde  e8bde21b00                CALL 0x006a92a0
004eafe3  c7473001000000            MOV dword ptr [EDI + 0x30],0x1
004eafea  6a00                      PUSH 0x0
004eafec  6818ddb100                PUSH 0xb1dd18
004eaff1  8d4f48                    LEA ECX,[EDI + 0x48]
004eaff4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004eaffe  e87df3f1ff                CALL 0x0040a380
004eb003  6a00                      PUSH 0x0
004eb005  680cd2b100                PUSH 0xb1d20c
004eb00a  8d4f48                    LEA ECX,[EDI + 0x48]
004eb00d  e82ef9f1ff                CALL 0x0040a940
004eb012  6a02                      PUSH 0x2
004eb014  8d4f48                    LEA ECX,[EDI + 0x48]
004eb017  e80402f2ff                CALL 0x0040b220
004eb01c  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004eb020  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004eb027  0f8401010000              JZ 0x004eb12e
004eb02d  33f6                      XOR ESI,ESI
004eb02f  90                        NOP
004eb030  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004eb036  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004eb03c  660f6ec6                  MOVD XMM0,ESI
004eb040  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eb044  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
004eb04c  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
004eb054  8bc6                      MOV EAX,ESI
004eb056  c1e81f                    SHR EAX,0x1f
004eb059  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004eb061  f30f5ce1                  SUBSS XMM4,XMM1
004eb065  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eb06e  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004eb074  50                        PUSH EAX
004eb075  660f5ad0                  CVTPD2PS XMM2,XMM0
004eb079  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004eb081  f30f5e1584a7ba00          DIVSS XMM2,dword ptr [0x00baa784]
004eb089  f30f5cd8                  SUBSS XMM3,XMM0
004eb08d  f30f59e2                  MULSS XMM4,XMM2
004eb091  f30f59da                  MULSS XMM3,XMM2
004eb095  f30f58e1                  ADDSS XMM4,XMM1
004eb099  f30f58d8                  ADDSS XMM3,XMM0
004eb09d  f30f11a574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM4
004eb0a5  f30f119d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM3
004eb0ad  e89e5efcff                CALL 0x004b0f50
004eb0b2  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004eb0b8  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004eb0c2  50                        PUSH EAX
004eb0c3  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004eb0c9  c7856cffffff00000000      MOV dword ptr [EBP + 0xffffff6c],0x0
004eb0d3  e8785efcff                CALL 0x004b0f50
004eb0d8  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
004eb0de  c78544ffffff0000a0c1      MOV dword ptr [EBP + 0xffffff44],0xc1a00000
004eb0e8  50                        PUSH EAX
004eb0e9  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004eb0ef  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
004eb0f9  e8525efcff                CALL 0x004b0f50
004eb0fe  46                        INC ESI
004eb0ff  83fe06                    CMP ESI,0x6
004eb102  0f8228ffffff              JC 0x004eb030
004eb108  8d87040c0000              LEA EAX,[EDI + 0xc04]
004eb10e  50                        PUSH EAX
004eb10f  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004eb115  e8265dfcff                CALL 0x004b0e40
004eb11a  be0a000000                MOV ESI,0xa
004eb11f  90                        NOP
004eb120  6a00                      PUSH 0x0
004eb122  8bcf                      MOV ECX,EDI
004eb124  e877deffff                CALL 0x004e8fa0
004eb129  83ee01                    SUB ESI,0x1
004eb12c  75f2                      JNZ 0x004eb120
004eb12e  838f180f000007            OR dword ptr [EDI + 0xf18],0x7
004eb135  e927080000                JMP 0x004eb961
004eb13a  6818ddb100                PUSH 0xb1dd18
004eb13f  8d4dd4                    LEA ECX,[EBP + -0x2c]
004eb142  e8f911f2ff                CALL 0x0040c340
004eb147  6830ddb100                PUSH 0xb1dd30
004eb14c  8d4da8                    LEA ECX,[EBP + -0x58]
004eb14f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004eb156  e8e511f2ff                CALL 0x0040c340
004eb15b  51                        PUSH ECX
004eb15c  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004eb160  8d45d4                    LEA EAX,[EBP + -0x2c]
004eb163  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004eb16a  8bcf                      MOV ECX,EDI
004eb16c  50                        PUSH EAX
004eb16d  8d45a8                    LEA EAX,[EBP + -0x58]
004eb170  50                        PUSH EAX
004eb171  e8ba611d00                CALL 0x006c1330
004eb176  8d4da8                    LEA ECX,[EBP + -0x58]
004eb179  e8c21ef2ff                CALL 0x0040d040
004eb17e  8d4dd4                    LEA ECX,[EBP + -0x2c]
004eb181  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004eb188  e8b31ef2ff                CALL 0x0040d040
004eb18d  6a00                      PUSH 0x0
004eb18f  6800080001                PUSH 0x1000800
004eb194  8bcf                      MOV ECX,EDI
004eb196  e895c2f2ff                CALL 0x00417430
004eb19b  8bcf                      MOV ECX,EDI
004eb19d  84c0                      TEST AL,AL
004eb19f  746b                      JZ 0x004eb20c
004eb1a1  e89a361d00                CALL 0x006be840
004eb1a6  6a00                      PUSH 0x0
004eb1a8  8d8f14040000              LEA ECX,[EDI + 0x414]
004eb1ae  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
004eb1b4  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004eb1ba  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
004eb1c0  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004eb1c6  50                        PUSH EAX
004eb1c7  899570ffffff              MOV dword ptr [EBP + 0xffffff70],EDX
004eb1cd  e86e972f00                CALL 0x007e4940
004eb1d2  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
004eb1d9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004eb1e1  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
004eb1e9  f30f59c1                  MULSS XMM0,XMM1
004eb1ed  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004eb1f5  0f8e27010000              JLE 0x004eb322
004eb1fb  f30f59c1                  MULSS XMM0,XMM1
004eb1ff  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004eb207  e916010000                JMP 0x004eb322
004eb20c  6a01                      PUSH 0x1
004eb20e  6884030000                PUSH 0x384
004eb213  83ec08                    SUB ESP,0x8
004eb216  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004eb21c  c74424049a99993e          MOV dword ptr [ESP + 0x4],0x3e99999a
004eb224  c7042400000000            MOV dword ptr [ESP],0x0
004eb22b  50                        PUSH EAX
004eb22c  e80f3a1d00                CALL 0x006bec40
004eb231  50                        PUSH EAX
004eb232  8d8f14040000              LEA ECX,[EDI + 0x414]
004eb238  e883812f00                CALL 0x007e33c0
004eb23d  8bcf                      MOV ECX,EDI
004eb23f  e89cb5f6ff                CALL 0x004567e0
004eb244  85c0                      TEST EAX,EAX
004eb246  0f84d6000000              JZ 0x004eb322
004eb24c  8bcf                      MOV ECX,EDI
004eb24e  e88db5f6ff                CALL 0x004567e0
004eb253  83b8640b000008            CMP dword ptr [EAX + 0xb64],0x8
004eb25a  0f85c2000000              JNZ 0x004eb322
004eb260  8bcf                      MOV ECX,EDI
004eb262  e879b5f6ff                CALL 0x004567e0
004eb267  83b8a00b00001a            CMP dword ptr [EAX + 0xba0],0x1a
004eb26e  0f8eae000000              JLE 0x004eb322
004eb274  e8e73c2000                CALL 0x006eef60
004eb279  33d2                      XOR EDX,EDX
004eb27b  b907000000                MOV ECX,0x7
004eb280  f7f1                      DIV ECX
004eb282  85d2                      TEST EDX,EDX
004eb284  7415                      JZ 0x004eb29b
004eb286  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004eb28e  0f2f05b8a7ba00            COMISS XMM0,dword ptr [0x00baa7b8]
004eb295  0f8687000000              JBE 0x004eb322
004eb29b  51                        PUSH ECX
004eb29c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eb2a3  6a00                      PUSH 0x0
004eb2a5  6a02                      PUSH 0x2
004eb2a7  51                        PUSH ECX
004eb2a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eb2af  8bcf                      MOV ECX,EDI
004eb2b1  68a7000000                PUSH 0xa7
004eb2b6  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004eb2c0  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004eb2ca  e8d1b81e00                CALL 0x006d6ba0
004eb2cf  680808b600                PUSH 0xb60808
004eb2d4  8d4da8                    LEA ECX,[EBP + -0x58]
004eb2d7  e86410f2ff                CALL 0x0040c340
004eb2dc  684407b600                PUSH 0xb60744
004eb2e1  8d4dd4                    LEA ECX,[EBP + -0x2c]
004eb2e4  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004eb2eb  e85010f2ff                CALL 0x0040c340
004eb2f0  51                        PUSH ECX
004eb2f1  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004eb2f5  8d45a8                    LEA EAX,[EBP + -0x58]
004eb2f8  c7042400000000            MOV dword ptr [ESP],0x0
004eb2ff  8bcf                      MOV ECX,EDI
004eb301  50                        PUSH EAX
004eb302  8d45d4                    LEA EAX,[EBP + -0x2c]
004eb305  50                        PUSH EAX
004eb306  e825601d00                CALL 0x006c1330
004eb30b  8d4dd4                    LEA ECX,[EBP + -0x2c]
004eb30e  e82d1df2ff                CALL 0x0040d040
004eb313  8d4da8                    LEA ECX,[EBP + -0x58]
004eb316  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004eb31d  e81e1df2ff                CALL 0x0040d040
004eb322  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
004eb329  0f8432060000              JZ 0x004eb961
004eb32f  e82c3c2000                CALL 0x006eef60
004eb334  33d2                      XOR EDX,EDX
004eb336  b903000000                MOV ECX,0x3
004eb33b  f7f1                      DIV ECX
004eb33d  85d2                      TEST EDX,EDX
004eb33f  0f851c060000              JNZ 0x004eb961
004eb345  51                        PUSH ECX
004eb346  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eb34d  52                        PUSH EDX
004eb34e  6a3c                      PUSH 0x3c
004eb350  51                        PUSH ECX
004eb351  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eb358  8bcf                      MOV ECX,EDI
004eb35a  6a74                      PUSH 0x74
004eb35c  e83fb81e00                CALL 0x006d6ba0
004eb361  e9fb050000                JMP 0x004eb961
004eb366  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004eb36e  8d4f48                    LEA ECX,[EDI + 0x48]
004eb371  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004eb379  68dcd2b100                PUSH 0xb1d2dc
004eb37e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004eb386  e8a5fcf1ff                CALL 0x0040b030
004eb38b  84c0                      TEST AL,AL
004eb38d  0f842b010000              JZ 0x004eb4be
004eb393  6a00                      PUSH 0x0
004eb395  6a00                      PUSH 0x0
004eb397  57                        PUSH EDI
004eb398  51                        PUSH ECX
004eb399  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eb39f  8db73c030000              LEA ESI,[EDI + 0x33c]
004eb3a5  c704240000f042            MOV dword ptr [ESP],0x42f00000
004eb3ac  56                        PUSH ESI
004eb3ad  e8ae8f2100                CALL 0x00704360
004eb3b2  e8a93b2000                CALL 0x006eef60
004eb3b7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eb3bd  50                        PUSH EAX
004eb3be  6a00                      PUSH 0x0
004eb3c0  6a00                      PUSH 0x0
004eb3c2  6840b6c700                PUSH 0xc7b640
004eb3c7  56                        PUSH ESI
004eb3c8  6a22                      PUSH 0x22
004eb3ca  68e8030000                PUSH 0x3e8
004eb3cf  e84cd7f3ff                CALL 0x00428b20
004eb3d4  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004eb3db  8d55c0                    LEA EDX,[EBP + -0x40]
004eb3de  6a01                      PUSH 0x1
004eb3e0  8bc8                      MOV ECX,EAX
004eb3e2  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004eb3e9  6a00                      PUSH 0x0
004eb3eb  68ff000000                PUSH 0xff
004eb3f0  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004eb3f4  8b01                      MOV EAX,dword ptr [ECX]
004eb3f6  0f280590bfba00            MOVAPS XMM0,xmmword ptr [0x00babf90]
004eb3fd  6aff                      PUSH -0x1
004eb3ff  52                        PUSH EDX
004eb400  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004eb404  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004eb40b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004eb412  ff503c                    CALL dword ptr [EAX + 0x3c]
004eb415  e8463b2000                CALL 0x006eef60
004eb41a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eb420  50                        PUSH EAX
004eb421  6a00                      PUSH 0x0
004eb423  57                        PUSH EDI
004eb424  6840b6c700                PUSH 0xc7b640
004eb429  56                        PUSH ESI
004eb42a  6a16                      PUSH 0x16
004eb42c  68e8030000                PUSH 0x3e8
004eb431  e8ead6f3ff                CALL 0x00428b20
004eb436  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
004eb43e  8bc8                      MOV ECX,EAX
004eb440  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
004eb448  f30f591530a6ba00          MULSS XMM2,dword ptr [0x00baa630]
004eb450  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
004eb458  8b01                      MOV EAX,dword ptr [ECX]
004eb45a  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
004eb462  c7815c04000096000000      MOV dword ptr [ECX + 0x45c],0x96
004eb46c  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
004eb474  c7816004000096000000      MOV dword ptr [ECX + 0x460],0x96
004eb47e  ff500c                    CALL dword ptr [EAX + 0xc]
004eb481  8bcf                      MOV ECX,EDI
004eb483  c787b00b00000000c03f      MOV dword ptr [EDI + 0xbb0],0x3fc00000
004eb48d  e84eb3f6ff                CALL 0x004567e0
004eb492  8bd0                      MOV EDX,EAX
004eb494  85d2                      TEST EDX,EDX
004eb496  741c                      JZ 0x004eb4b4
004eb498  83ba640b000008            CMP dword ptr [EDX + 0xb64],0x8
004eb49f  7513                      JNZ 0x004eb4b4
004eb4a1  8b82a00b0000              MOV EAX,dword ptr [EDX + 0xba0]
004eb4a7  85c0                      TEST EAX,EAX
004eb4a9  7e09                      JLE 0x004eb4b4
004eb4ab  83c00f                    ADD EAX,0xf
004eb4ae  8982a00b0000              MOV dword ptr [EDX + 0xba0],EAX
004eb4b4  c787a40b000001000000      MOV dword ptr [EDI + 0xba4],0x1
004eb4be  68eca4b100                PUSH 0xb1a4ec
004eb4c3  8d4f48                    LEA ECX,[EDI + 0x48]
004eb4c6  e885f0f1ff                CALL 0x0040a550
004eb4cb  84c0                      TEST AL,AL
004eb4cd  0f848e040000              JZ 0x004eb961
004eb4d3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004eb4dd  e97f040000                JMP 0x004eb961
004eb4e2  68eca4b100                PUSH 0xb1a4ec
004eb4e7  8d4f48                    LEA ECX,[EDI + 0x48]
004eb4ea  e861f0f1ff                CALL 0x0040a550
004eb4ef  84c0                      TEST AL,AL
004eb4f1  740f                      JZ 0x004eb502
004eb4f3  6a00                      PUSH 0x0
004eb4f5  684808b600                PUSH 0xb60848
004eb4fa  8d4f48                    LEA ECX,[EDI + 0x48]
004eb4fd  e87eeef1ff                CALL 0x0040a380
004eb502  8d4f78                    LEA ECX,[EDI + 0x78]
004eb505  e8a6bef1ff                CALL 0x004073b0
004eb50a  84c0                      TEST AL,AL
004eb50c  0f8477030000              JZ 0x004eb889
004eb512  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004eb518  8bcf                      MOV ECX,EDI
004eb51a  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004eb524  6a00                      PUSH 0x0
004eb526  f30f104044                MOVSS XMM0,dword ptr [EAX + 0x44]
004eb52b  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004eb531  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004eb539  c7876c0300003333733f      MOV dword ptr [EDI + 0x36c],0x3f733333
004eb543  50                        PUSH EAX
004eb544  f30f11877c030000          MOVSS dword ptr [EDI + 0x37c],XMM0
004eb54c  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004eb554  f30f5905e4a2ba00          MULSS XMM0,dword ptr [0x00baa2e4]
004eb55c  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004eb564  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004eb56c  f30f5905e4a2ba00          MULSS XMM0,dword ptr [0x00baa2e4]
004eb574  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004eb57c  e8cf5ef4ff                CALL 0x00431450
004eb581  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004eb589  b94808b600                MOV ECX,0xb60848
004eb58e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004eb595  b85408b600                MOV EAX,0xb60854
004eb59a  6a00                      PUSH 0x0
004eb59c  0f46c1                    CMOVBE EAX,ECX
004eb59f  8d4f48                    LEA ECX,[EDI + 0x48]
004eb5a2  50                        PUSH EAX
004eb5a3  e8d8edf1ff                CALL 0x0040a380
004eb5a8  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004eb5b0  0f57c0                    XORPS XMM0,XMM0
004eb5b3  0f2fc1                    COMISS XMM0,XMM1
004eb5b6  0f97c0                    SETA AL
004eb5b9  888748010000              MOV byte ptr [EDI + 0x148],AL
004eb5bf  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004eb5c7  e894e7faff                CALL 0x00499d60
004eb5cc  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004eb5d4  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
004eb5da  89b548ffffff              MOV dword ptr [EBP + 0xffffff48],ESI
004eb5e0  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
004eb5e8  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
004eb5f0  85f6                      TEST ESI,ESI
004eb5f2  7406                      JZ 0x004eb5fa
004eb5f4  837e2807                  CMP dword ptr [ESI + 0x28],0x7
004eb5f8  7455                      JZ 0x004eb64f
004eb5fa  6a00                      PUSH 0x0
004eb5fc  57                        PUSH EDI
004eb5fd  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004eb603  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
004eb60d  50                        PUSH EAX
004eb60e  6a0a                      PUSH 0xa
004eb610  51                        PUSH ECX
004eb611  f30f110424                MOVSS dword ptr [ESP],XMM0
004eb616  8d873c030000              LEA EAX,[EDI + 0x33c]
004eb61c  50                        PUSH EAX
004eb61d  6a01                      PUSH 0x1
004eb61f  c78574ffffff0000f8c1      MOV dword ptr [EBP + 0xffffff74],0xc1f80000
004eb629  e8e23c4800                CALL 0x0096f310
004eb62e  83c41c                    ADD ESP,0x1c
004eb631  8bf0                      MOV ESI,EAX
004eb633  8bcf                      MOV ECX,EDI
004eb635  89b548ffffff              MOV dword ptr [EBP + 0xffffff48],ESI
004eb63b  56                        PUSH ESI
004eb63c  e8df551e00                CALL 0x006d0c20
004eb641  8b16                      MOV EDX,dword ptr [ESI]
004eb643  8bce                      MOV ECX,ESI
004eb645  c6865d04000001            MOV byte ptr [ESI + 0x45d],0x1
004eb64c  ff520c                    CALL dword ptr [EDX + 0xc]
004eb64f  6a00                      PUSH 0x0
004eb651  6a02                      PUSH 0x2
004eb653  8bcf                      MOV ECX,EDI
004eb655  e8b6101c00                CALL 0x006ac710
004eb65a  84c0                      TEST AL,AL
004eb65c  0f84b0010000              JZ 0x004eb812
004eb662  e8f9382000                CALL 0x006eef60
004eb667  660f6ec0                  MOVD XMM0,EAX
004eb66b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eb66f  c1e81f                    SHR EAX,0x1f
004eb672  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eb67b  660f5ac8                  CVTPD2PS XMM1,XMM0
004eb67f  f30f10856cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff6c]
004eb687  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004eb68f  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
004eb697  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004eb69f  f30f58c8                  ADDSS XMM1,XMM0
004eb6a3  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
004eb6ab  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004eb6b3  e8a8382000                CALL 0x006eef60
004eb6b8  660f6ec0                  MOVD XMM0,EAX
004eb6bc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eb6c0  c1e81f                    SHR EAX,0x1f
004eb6c3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eb6cc  660f5ac8                  CVTPD2PS XMM1,XMM0
004eb6d0  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004eb6d8  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004eb6e0  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
004eb6e8  f30f580d84a7ba00          ADDSS XMM1,dword ptr [0x00baa784]
004eb6f0  f30f118d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM1
004eb6f8  e8431ef3ff                CALL 0x0041d540
004eb6fd  f30f598564ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff64]
004eb705  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004eb70d  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004eb715  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004eb71d  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004eb725  e8f61df3ff                CALL 0x0041d520
004eb72a  f30f598564ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff64]
004eb732  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004eb73a  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004eb742  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004eb74a  e811382000                CALL 0x006eef60
004eb74f  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
004eb757  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004eb75f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eb765  50                        PUSH EAX
004eb766  6a00                      PUSH 0x0
004eb768  6a00                      PUSH 0x0
004eb76a  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004eb772  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004eb778  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004eb780  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004eb788  50                        PUSH EAX
004eb789  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
004eb78f  50                        PUSH EAX
004eb790  6a6f                      PUSH 0x6f
004eb792  68e8030000                PUSH 0x3e8
004eb797  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004eb79f  e87cd3f3ff                CALL 0x00428b20
004eb7a4  8bf0                      MOV ESI,EAX
004eb7a6  e8b5372000                CALL 0x006eef60
004eb7ab  660f6ec0                  MOVD XMM0,EAX
004eb7af  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eb7b3  c1e81f                    SHR EAX,0x1f
004eb7b6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eb7bf  660f5ac8                  CVTPD2PS XMM1,XMM0
004eb7c3  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004eb7cb  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004eb7d3  f30f580d04a3ba00          ADDSS XMM1,dword ptr [0x00baa304]
004eb7db  0f28c1                    MOVAPS XMM0,XMM1
004eb7de  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004eb7e6  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004eb7ee  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
004eb7f8  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004eb800  c786500300000000f8c1      MOV dword ptr [ESI + 0x350],0xc1f80000
004eb80a  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004eb812  8bb548ffffff              MOV ESI,dword ptr [EBP + 0xffffff48]
004eb818  f30f108d6cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff6c]
004eb820  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
004eb828  0f2ec1                    UCOMISS XMM0,XMM1
004eb82b  9f                        LAHF
004eb82c  f6c444                    TEST AH,0x44
004eb82f  7b19                      JNP 0x004eb84a
004eb831  8bce                      MOV ECX,ESI
004eb833  e8a83c4800                CALL 0x0096f4e0
004eb838  51                        PUSH ECX
004eb839  f30f110c24                MOVSS dword ptr [ESP],XMM1
004eb83e  e84d164800                CALL 0x0096ce90
004eb843  8b06                      MOV EAX,dword ptr [ESI]
004eb845  8bce                      MOV ECX,ESI
004eb847  ff500c                    CALL dword ptr [EAX + 0xc]
004eb84a  c786580400000a000000      MOV dword ptr [ESI + 0x458],0xa
004eb854  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004eb85c  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
004eb863  7612                      JBE 0x004eb877
004eb865  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
004eb86d  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
004eb875  eb2a                      JMP 0x004eb8a1
004eb877  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
004eb87f  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
004eb887  eb18                      JMP 0x004eb8a1
004eb889  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004eb891  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004eb899  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004eb8a1  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004eb8a8  0f84b3000000              JZ 0x004eb961
004eb8ae  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004eb8b6  0f57c9                    XORPS XMM1,XMM1
004eb8b9  0f2fd1                    COMISS XMM2,XMM1
004eb8bc  f30f102d70cbba00          MOVSS XMM5,dword ptr [0x00bacb70]
004eb8c4  f30f10250cadba00          MOVSS XMM4,dword ptr [0x00baad0c]
004eb8cc  f30f101d98a1ba00          MOVSS XMM3,dword ptr [0x00baa198]
004eb8d4  760d                      JBE 0x004eb8e3
004eb8d6  f30f10879c010000          MOVSS XMM0,dword ptr [EDI + 0x19c]
004eb8de  0f2fc3                    COMISS XMM0,XMM3
004eb8e1  770e                      JA 0x004eb8f1
004eb8e3  0f2fca                    COMISS XMM1,XMM2
004eb8e6  7614                      JBE 0x004eb8fc
004eb8e8  0f2fa79c010000            COMISS XMM4,dword ptr [EDI + 0x19c]
004eb8ef  760b                      JBE 0x004eb8fc
004eb8f1  0f57d5                    XORPS XMM2,XMM5
004eb8f4  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
004eb8fc  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004eb904  0f2fd1                    COMISS XMM2,XMM1
004eb907  760d                      JBE 0x004eb916
004eb909  f30f1087a0010000          MOVSS XMM0,dword ptr [EDI + 0x1a0]
004eb911  0f2fc3                    COMISS XMM0,XMM3
004eb914  770e                      JA 0x004eb924
004eb916  0f2fca                    COMISS XMM1,XMM2
004eb919  7614                      JBE 0x004eb92f
004eb91b  0f2fa7a0010000            COMISS XMM4,dword ptr [EDI + 0x1a0]
004eb922  760b                      JBE 0x004eb92f
004eb924  0f57d5                    XORPS XMM2,XMM5
004eb927  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
004eb92f  f30f108f98010000          MOVSS XMM1,dword ptr [EDI + 0x198]
004eb937  f30f108794010000          MOVSS XMM0,dword ptr [EDI + 0x194]
004eb93f  f30f59c0                  MULSS XMM0,XMM0
004eb943  f30f59c9                  MULSS XMM1,XMM1
004eb947  f30f58c1                  ADDSS XMM0,XMM1
004eb94b  e800a1f4ff                CALL 0x00435a50
004eb950  51                        PUSH ECX
004eb951  8d8f60030000              LEA ECX,[EDI + 0x360]
004eb957  f30f110424                MOVSS dword ptr [ESP],XMM0
004eb95c  e84f475200                CALL 0x00a100b0
004eb961  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
004eb969  0f57c9                    XORPS XMM1,XMM1
004eb96c  0f2fd1                    COMISS XMM2,XMM1
004eb96f  7629                      JBE 0x004eb99a
004eb971  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
004eb978  7f20                      JG 0x004eb99a
004eb97a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004eb982  f30f5905a0a0ba00          MULSS XMM0,dword ptr [0x00baa0a0]
004eb98a  f30f5cd0                  SUBSS XMM2,XMM0
004eb98e  f30f5fd1                  MAXSS XMM2,XMM1
004eb992  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
004eb99a  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004eb9a1  0f842a080000              JZ 0x004ec1d1
004eb9a7  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
004eb9ae  0f8e1d080000              JLE 0x004ec1d1
004eb9b4  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004eb9bc  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
004eb9c2  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004eb9ca  8b8d64ffffff              MOV ECX,dword ptr [EBP + 0xffffff64]
004eb9d0  2bc8                      SUB ECX,EAX
004eb9d2  33c0                      XOR EAX,EAX
004eb9d4  898d64ffffff              MOV dword ptr [EBP + 0xffffff64],ECX
004eb9da  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
004eb9e0  85c9                      TEST ECX,ECX
004eb9e2  0f8ee9070000              JLE 0x004ec1d1
004eb9e8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004eb9f0  ff87a40b0000              INC dword ptr [EDI + 0xba4]
004eb9f6  f687a40b000001            TEST byte ptr [EDI + 0xba4],0x1
004eb9fd  0f856c020000              JNZ 0x004ebc6f
004eba03  51                        PUSH ECX
004eba04  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eba0b  6a00                      PUSH 0x0
004eba0d  6a02                      PUSH 0x2
004eba0f  51                        PUSH ECX
004eba10  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004eba17  8bcf                      MOV ECX,EDI
004eba19  68b9000000                PUSH 0xb9
004eba1e  e87db11e00                CALL 0x006d6ba0
004eba23  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004eba29  99                        CDQ
004eba2a  2bc2                      SUB EAX,EDX
004eba2c  8bf0                      MOV ESI,EAX
004eba2e  b8abaaaaaa                MOV EAX,0xaaaaaaab
004eba33  f7a7140c0000              MUL dword ptr [EDI + 0xc14]
004eba39  d1fe                      SAR ESI,0x1
004eba3b  8bc2                      MOV EAX,EDX
004eba3d  d1e8                      SHR EAX,0x1
004eba3f  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
004eba45  3bf0                      CMP ESI,EAX
004eba47  0f8336020000              JNC 0x004ebc83
004eba4d  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004eba53  8d0c76                    LEA ECX,[ESI + ESI*0x2]
004eba56  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
004eba5c  898d6cffffff              MOV dword ptr [EBP + 0xffffff6c],ECX
004eba62  8d1408                    LEA EDX,[EAX + ECX*0x1]
004eba65  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004eba6b  49                        DEC ECX
004eba6c  8bc2                      MOV EAX,EDX
004eba6e  d1e8                      SHR EAX,0x1
004eba70  83e201                    AND EDX,0x1
004eba73  23c8                      AND ECX,EAX
004eba75  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004eba7b  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004eba7e  8b04d1                    MOV EAX,dword ptr [ECX + EDX*0x8]
004eba81  8b4cd104                  MOV ECX,dword ptr [ECX + EDX*0x8 + 0x4]
004eba85  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
004eba8b  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
004eba91  48                        DEC EAX
004eba92  898d50ffffff              MOV dword ptr [EBP + 0xffffff50],ECX
004eba98  3bf0                      CMP ESI,EAX
004eba9a  0f85d3000000              JNZ 0x004ebb73
004ebaa0  e8bb342000                CALL 0x006eef60
004ebaa5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ebaab  50                        PUSH EAX
004ebaac  6a00                      PUSH 0x0
004ebaae  57                        PUSH EDI
004ebaaf  6840b6c700                PUSH 0xc7b640
004ebab4  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004ebaba  50                        PUSH EAX
004ebabb  6a16                      PUSH 0x16
004ebabd  68e8030000                PUSH 0x3e8
004ebac2  e859d0f3ff                CALL 0x00428b20
004ebac7  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
004ebacf  8bc8                      MOV ECX,EAX
004ebad1  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004ebad9  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
004ebae1  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
004ebae9  8b01                      MOV EAX,dword ptr [ECX]
004ebaeb  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
004ebaf3  c7815c0400005a000000      MOV dword ptr [ECX + 0x45c],0x5a
004ebafd  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
004ebb05  c781600400005a000000      MOV dword ptr [ECX + 0x460],0x5a
004ebb0f  ff500c                    CALL dword ptr [EAX + 0xc]
004ebb12  8d4dc0                    LEA ECX,[EBP + -0x40]
004ebb15  e856b6f1ff                CALL 0x00407170
004ebb1a  8b956cffffff              MOV EDX,dword ptr [EBP + 0xffffff6c]
004ebb20  8bf0                      MOV ESI,EAX
004ebb22  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004ebb28  83c202                    ADD EDX,0x2
004ebb2b  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ebb31  03d1                      ADD EDX,ECX
004ebb33  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
004ebb39  48                        DEC EAX
004ebb3a  8bca                      MOV ECX,EDX
004ebb3c  c78558ffffff00000000      MOV dword ptr [EBP + 0xffffff58],0x0
004ebb46  d1e9                      SHR ECX,0x1
004ebb48  23c8                      AND ECX,EAX
004ebb4a  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ebb50  83e201                    AND EDX,0x1
004ebb53  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebb56  b903000000                MOV ECX,0x3
004ebb5b  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004ebb60  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ebb66  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004ebb6e  e9d1000000                JMP 0x004ebc44
004ebb73  e8e8332000                CALL 0x006eef60
004ebb78  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ebb7e  50                        PUSH EAX
004ebb7f  6a00                      PUSH 0x0
004ebb81  57                        PUSH EDI
004ebb82  6840b6c700                PUSH 0xc7b640
004ebb87  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004ebb8d  50                        PUSH EAX
004ebb8e  6a16                      PUSH 0x16
004ebb90  68e8030000                PUSH 0x3e8
004ebb95  e886cff3ff                CALL 0x00428b20
004ebb9a  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
004ebba2  8bc8                      MOV ECX,EAX
004ebba4  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004ebbac  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004ebbb4  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004ebbbc  8b01                      MOV EAX,dword ptr [ECX]
004ebbbe  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
004ebbc6  c7815c0400003c000000      MOV dword ptr [ECX + 0x45c],0x3c
004ebbd0  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
004ebbd8  c781600400003c000000      MOV dword ptr [ECX + 0x460],0x3c
004ebbe2  ff500c                    CALL dword ptr [EAX + 0xc]
004ebbe5  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
004ebbeb  e880b5f1ff                CALL 0x00407170
004ebbf0  8b956cffffff              MOV EDX,dword ptr [EBP + 0xffffff6c]
004ebbf6  8bf0                      MOV ESI,EAX
004ebbf8  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004ebbfe  83c202                    ADD EDX,0x2
004ebc01  03d1                      ADD EDX,ECX
004ebc03  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
004ebc09  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004ebc0f  8bc2                      MOV EAX,EDX
004ebc11  d1e8                      SHR EAX,0x1
004ebc13  49                        DEC ECX
004ebc14  23c8                      AND ECX,EAX
004ebc16  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
004ebc20  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ebc26  83e201                    AND EDX,0x1
004ebc29  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebc2c  b902000000                MOV ECX,0x2
004ebc31  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004ebc36  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
004ebc3c  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
004ebc44  6840b6c700                PUSH 0xc7b640
004ebc49  56                        PUSH ESI
004ebc4a  50                        PUSH EAX
004ebc4b  8d954cffffff              LEA EDX,[EBP + 0xffffff4c]
004ebc51  e89ac01e00                CALL 0x006d7cf0
004ebc56  8b8d64ffffff              MOV ECX,dword ptr [EBP + 0xffffff64]
004ebc5c  83c40c                    ADD ESP,0xc
004ebc5f  c7805803000000007042      MOV dword ptr [EAX + 0x358],0x42700000
004ebc69  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
004ebc6f  40                        INC EAX
004ebc70  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
004ebc76  3bc1                      CMP EAX,ECX
004ebc78  0f8c72fdffff              JL 0x004eb9f0
004ebc7e  e94e050000                JMP 0x004ec1d1
004ebc83  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
004ebc8d  e93f050000                JMP 0x004ec1d1
004ebc92  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
004ebc97  f30f588fb40b0000          ADDSS XMM1,dword ptr [EDI + 0xbb4]
004ebc9f  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004ebca7  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
004ebcaf  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004ebcb5  f30f5cc8                  SUBSS XMM1,XMM0
004ebcb9  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
004ebcc1  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004ebcc9  85c0                      TEST EAX,EAX
004ebccb  7431                      JZ 0x004ebcfe
004ebccd  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ebcd5  8d4f48                    LEA ECX,[EDI + 0x48]
004ebcd8  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
004ebcdf  6a02                      PUSH 0x2
004ebce1  0f97c0                    SETA AL
004ebce4  328748010000              XOR AL,byte ptr [EDI + 0x148]
004ebcea  888557ffffff              MOV byte ptr [EBP + 0xffffff57],AL
004ebcf0  e82bf5f1ff                CALL 0x0040b220
004ebcf5  8a8d57ffffff              MOV CL,byte ptr [EBP + 0xffffff57]
004ebcfb  884832                    MOV byte ptr [EAX + 0x32],CL
004ebcfe  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004ebd05  0f84c6040000              JZ 0x004ec1d1
004ebd0b  6814ecb100                PUSH 0xb1ec14
004ebd10  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004ebd16  8bcf                      MOV ECX,EDI
004ebd18  50                        PUSH EAX
004ebd19  e8d2ad1c00                CALL 0x006b6af0
004ebd1e  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
004ebd24  8db7040c0000              LEA ESI,[EDI + 0xc04]
004ebd2a  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004ebd2d  8bca                      MOV ECX,EDX
004ebd2f  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004ebd37  48                        DEC EAX
004ebd38  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
004ebd40  83e201                    AND EDX,0x1
004ebd43  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004ebd4b  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
004ebd53  d1e9                      SHR ECX,0x1
004ebd55  23c8                      AND ECX,EAX
004ebd57  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ebd5a  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebd5d  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ebd62  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
004ebd68  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
004ebd6b  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
004ebd71  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
004ebd79  8d5001                    LEA EDX,[EAX + 0x1]
004ebd7c  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004ebd7f  48                        DEC EAX
004ebd80  8bca                      MOV ECX,EDX
004ebd82  d1e9                      SHR ECX,0x1
004ebd84  83e201                    AND EDX,0x1
004ebd87  23c8                      AND ECX,EAX
004ebd89  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ebd8c  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004ebd8f  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
004ebd95  8904d1                    MOV dword ptr [ECX + EDX*0x8],EAX
004ebd98  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
004ebd9e  8944d104                  MOV dword ptr [ECX + EDX*0x8 + 0x4],EAX
004ebda2  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
004ebda5  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
004ebdab  8d5002                    LEA EDX,[EAX + 0x2]
004ebdae  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004ebdb1  48                        DEC EAX
004ebdb2  8bca                      MOV ECX,EDX
004ebdb4  d1e9                      SHR ECX,0x1
004ebdb6  83e201                    AND EDX,0x1
004ebdb9  23c8                      AND ECX,EAX
004ebdbb  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ebdbe  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebdc1  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ebdc6  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004ebdce  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004ebdd4  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004ebdda  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
004ebddd  83c2fd                    ADD EDX,-0x3
004ebde0  03d1                      ADD EDX,ECX
004ebde2  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004ebdea  8bca                      MOV ECX,EDX
004ebdec  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004ebdf4  83e201                    AND EDX,0x1
004ebdf7  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
004ebdfa  48                        DEC EAX
004ebdfb  d1e9                      SHR ECX,0x1
004ebdfd  23c8                      AND ECX,EAX
004ebdff  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ebe02  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebe05  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004ebe0a  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
004ebe10  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004ebe16  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004ebe1c  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
004ebe1f  83c2fe                    ADD EDX,-0x2
004ebe22  03d1                      ADD EDX,ECX
004ebe24  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004ebe27  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004ebe2f  49                        DEC ECX
004ebe30  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004ebe38  8bc2                      MOV EAX,EDX
004ebe3a  d1e8                      SHR EAX,0x1
004ebe3c  23c8                      AND ECX,EAX
004ebe3e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ebe41  83e201                    AND EDX,0x1
004ebe44  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebe47  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004ebe4f  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
004ebe57  f30f110cd0                MOVSS dword ptr [EAX + EDX*0x8],XMM1
004ebe5c  f30f1035ecadba00          MOVSS XMM6,dword ptr [0x00baadec]
004ebe64  f30f1154d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM2
004ebe6a  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004ebe70  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
004ebe73  4a                        DEC EDX
004ebe74  03d1                      ADD EDX,ECX
004ebe76  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
004ebe79  8bc2                      MOV EAX,EDX
004ebe7b  49                        DEC ECX
004ebe7c  d1e8                      SHR EAX,0x1
004ebe7e  83e201                    AND EDX,0x1
004ebe81  23c8                      AND ECX,EAX
004ebe83  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ebe86  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebe89  c704d00000a0c1            MOV dword ptr [EAX + EDX*0x8],0xc1a00000
004ebe90  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004ebe98  a17816c700                MOV EAX,[0x00c71678]
004ebe9d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004ebea3  803900                    CMP byte ptr [ECX],0x0
004ebea6  742b                      JZ 0x004ebed3
004ebea8  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004ebeae  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004ebeb4  83f801                    CMP EAX,0x1
004ebeb7  7e1a                      JLE 0x004ebed3
004ebeb9  83bf740b000002            CMP dword ptr [EDI + 0xb74],0x2
004ebec0  8bcf                      MOV ECX,EDI
004ebec2  0f94c0                    SETZ AL
004ebec5  0fb6c0                    MOVZX EAX,AL
004ebec8  50                        PUSH EAX
004ebec9  e8d2d0ffff                CALL 0x004e8fa0
004ebece  e988010000                JMP 0x004ec05b
004ebed3  f30f102d84a7ba00          MOVSS XMM5,dword ptr [0x00baa784]
004ebedb  c78578ffffff01000000      MOV dword ptr [EBP + 0xffffff78],0x1
004ebee5  c78564ffffff03000000      MOV dword ptr [EBP + 0xffffff64],0x3
004ebeef  90                        NOP
004ebef0  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004ebef6  0f28ce                    MOVAPS XMM1,XMM6
004ebef9  8bb7100c0000              MOV ESI,dword ptr [EDI + 0xc10]
004ebeff  8bce                      MOV ECX,ESI
004ebf01  d1e9                      SHR ECX,0x1
004ebf03  8bd6                      MOV EDX,ESI
004ebf05  83e201                    AND EDX,0x1
004ebf08  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004ebf10  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004ebf18  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ebf1e  48                        DEC EAX
004ebf1f  23c8                      AND ECX,EAX
004ebf21  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ebf27  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004ebf2a  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
004ebf30  f30f5c14d1                SUBSS XMM2,dword ptr [ECX + EDX*0x8]
004ebf35  660f6ec0                  MOVD XMM0,EAX
004ebf39  c1e81f                    SHR EAX,0x1f
004ebf3c  f30f5c5cd104              SUBSS XMM3,dword ptr [ECX + EDX*0x8 + 0x4]
004ebf42  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ebf46  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ebf4f  660f5ae0                  CVTPD2PS XMM4,XMM0
004ebf53  f30f5ee5                  DIVSS XMM4,XMM5
004ebf57  f30f59d4                  MULSS XMM2,XMM4
004ebf5b  f30f59dc                  MULSS XMM3,XMM4
004ebf5f  f30f5814d1                ADDSS XMM2,dword ptr [ECX + EDX*0x8]
004ebf64  f30f585cd104              ADDSS XMM3,dword ptr [ECX + EDX*0x8 + 0x4]
004ebf6a  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004ebf70  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
004ebf76  49                        DEC ECX
004ebf77  03d6                      ADD EDX,ESI
004ebf79  8bc2                      MOV EAX,EDX
004ebf7b  83e201                    AND EDX,0x1
004ebf7e  d1e8                      SHR EAX,0x1
004ebf80  23c8                      AND ECX,EAX
004ebf82  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ebf88  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebf8b  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
004ebf90  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
004ebf96  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004ebf9c  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
004ebfa2  42                        INC EDX
004ebfa3  03d0                      ADD EDX,EAX
004ebfa5  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ebfab  48                        DEC EAX
004ebfac  8bca                      MOV ECX,EDX
004ebfae  d1e9                      SHR ECX,0x1
004ebfb0  83e201                    AND EDX,0x1
004ebfb3  23c8                      AND ECX,EAX
004ebfb5  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ebfbb  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebfbe  c704d000000000            MOV dword ptr [EAX + EDX*0x8],0x0
004ebfc5  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004ebfcd  8bb7100c0000              MOV ESI,dword ptr [EDI + 0xc10]
004ebfd3  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ebfd9  48                        DEC EAX
004ebfda  8d5602                    LEA EDX,[ESI + 0x2]
004ebfdd  8bca                      MOV ECX,EDX
004ebfdf  83e201                    AND EDX,0x1
004ebfe2  d1e9                      SHR ECX,0x1
004ebfe4  23c8                      AND ECX,EAX
004ebfe6  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004ebfec  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ebfef  f30f5c0cd0                SUBSS XMM1,dword ptr [EAX + EDX*0x8]
004ebff4  f30f59cc                  MULSS XMM1,XMM4
004ebff8  f30f580cd0                ADDSS XMM1,dword ptr [EAX + EDX*0x8]
004ebffd  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
004ec003  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004ec009  83c202                    ADD EDX,0x2
004ec00c  03d6                      ADD EDX,ESI
004ec00e  48                        DEC EAX
004ec00f  8db7040c0000              LEA ESI,[EDI + 0xc04]
004ec015  8bca                      MOV ECX,EDX
004ec017  d1e9                      SHR ECX,0x1
004ec019  83e201                    AND EDX,0x1
004ec01c  23c8                      AND ECX,EAX
004ec01e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ec021  ff8578ffffff              INC dword ptr [EBP + 0xffffff78]
004ec027  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ec02a  f30f110cd0                MOVSS dword ptr [EAX + EDX*0x8],XMM1
004ec02f  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004ec037  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
004ec03d  83c003                    ADD EAX,0x3
004ec040  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
004ec046  83f812                    CMP EAX,0x12
004ec049  0f82a1feffff              JC 0x004ebef0
004ec04f  56                        PUSH ESI
004ec050  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004ec056  e8e54dfcff                CALL 0x004b0e40
004ec05b  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
004ec061  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
004ec069  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004ec071  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
004ec079  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004ec081  0f28c1                    MOVAPS XMM0,XMM1
004ec084  f30f118d6cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM1
004ec08c  f30f59c1                  MULSS XMM0,XMM1
004ec090  0f28ca                    MOVAPS XMM1,XMM2
004ec093  f30f119574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM2
004ec09b  f30f59ca                  MULSS XMM1,XMM2
004ec09f  f30f58c1                  ADDSS XMM0,XMM1
004ec0a3  e8a899f4ff                CALL 0x00435a50
004ec0a8  a17816c700                MOV EAX,[0x00c71678]
004ec0ad  0f28d0                    MOVAPS XMM2,XMM0
004ec0b0  f30f1035f8a1ba00          MOVSS XMM6,dword ptr [0x00baa1f8]
004ec0b8  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004ec0bf  7c06                      JL 0x004ec0c7
004ec0c1  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004ec0c5  740d                      JZ 0x004ec0d4
004ec0c7  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004ec0ca  83e80a                    SUB EAX,0xa
004ec0cd  3ddd030000                CMP EAX,0x3dd
004ec0d2  7726                      JA 0x004ec0fa
004ec0d4  83be640b000008            CMP dword ptr [ESI + 0xb64],0x8
004ec0db  751d                      JNZ 0x004ec0fa
004ec0dd  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004ec0e5  0f28ee                    MOVAPS XMM5,XMM6
004ec0e8  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
004ec0f0  f30f590de4a9ba00          MULSS XMM1,dword ptr [0x00baa9e4]
004ec0f8  eb20                      JMP 0x004ec11a
004ec0fa  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004ec102  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
004ec10a  f30f102d20a1ba00          MOVSS XMM5,dword ptr [0x00baa120]
004ec112  f30f590d8ca9ba00          MULSS XMM1,dword ptr [0x00baa98c]
004ec11a  0f2fd1                    COMISS XMM2,XMM1
004ec11d  0f86ae000000              JBE 0x004ec1d1
004ec123  f30f109d74ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff74]
004ec12b  0f28c2                    MOVAPS XMM0,XMM2
004ec12e  f30f10a56cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff6c]
004ec136  f30f5cc1                  SUBSS XMM0,XMM1
004ec13a  f30f5eda                  DIVSS XMM3,XMM2
004ec13e  f30f5ee2                  DIVSS XMM4,XMM2
004ec142  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ec14a  f30f59d8                  MULSS XMM3,XMM0
004ec14e  f30f59e0                  MULSS XMM4,XMM0
004ec152  f30f59dd                  MULSS XMM3,XMM5
004ec156  f30f59e5                  MULSS XMM4,XMM5
004ec15a  0f28c3                    MOVAPS XMM0,XMM3
004ec15d  f30f59c6                  MULSS XMM0,XMM6
004ec161  f30f59c1                  MULSS XMM0,XMM1
004ec165  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ec16d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ec175  0f28c4                    MOVAPS XMM0,XMM4
004ec178  f30f59c6                  MULSS XMM0,XMM6
004ec17c  f30f59c1                  MULSS XMM0,XMM1
004ec180  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004ec188  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ec190  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004ec196  f30f10909c030000          MOVSS XMM2,dword ptr [EAX + 0x39c]
004ec19e  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
004ec1a6  0f28ca                    MOVAPS XMM1,XMM2
004ec1a9  f30f59cb                  MULSS XMM1,XMM3
004ec1ad  f30f59d4                  MULSS XMM2,XMM4
004ec1b1  f30f5cc1                  SUBSS XMM0,XMM1
004ec1b5  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
004ec1bd  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
004ec1c5  f30f5cc2                  SUBSS XMM0,XMM2
004ec1c9  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
004ec1d1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004ec1d4  64890d00000000            MOV dword ptr FS:[0x0],ECX
004ec1db  59                        POP ECX
004ec1dc  5f                        POP EDI
004ec1dd  5e                        POP ESI
004ec1de  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004ec1e1  33cd                      XOR ECX,EBP
004ec1e3  e8432f6000                CALL 0x00aef12b
004ec1e8  8be5                      MOV ESP,EBP
004ec1ea  5d                        POP EBP
004ec1eb  8be3                      MOV ESP,EBX
004ec1ed  5b                        POP EBX
004ec1ee  c3                        RET
