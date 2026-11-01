; J460 NPC AI 0x004e8380 AI_004e8380
; types=883
; identities=883.0.0
; entry=004e8380
004e8380  53                        PUSH EBX
004e8381  8bdc                      MOV EBX,ESP
004e8383  83ec08                    SUB ESP,0x8
004e8386  83e4f8                    AND ESP,0xfffffff8
004e8389  83c404                    ADD ESP,0x4
004e838c  55                        PUSH EBP
004e838d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004e8390  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004e8394  8bec                      MOV EBP,ESP
004e8396  6aff                      PUSH -0x1
004e8398  683d3aaf00                PUSH 0xaf3a3d
004e839d  64a100000000              MOV EAX,FS:[0x0]
004e83a3  50                        PUSH EAX
004e83a4  53                        PUSH EBX
004e83a5  83ec50                    SUB ESP,0x50
004e83a8  56                        PUSH ESI
004e83a9  57                        PUSH EDI
004e83aa  a1b493bf00                MOV EAX,[0x00bf93b4]
004e83af  33c5                      XOR EAX,EBP
004e83b1  50                        PUSH EAX
004e83b2  8d45f4                    LEA EAX,[EBP + -0xc]
004e83b5  64a300000000              MOV FS:[0x0],EAX
004e83bb  8bf9                      MOV EDI,ECX
004e83bd  897dc0                    MOV dword ptr [EBP + -0x40],EDI
004e83c0  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004e83c8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004e83d0  f30f5cc1                  SUBSS XMM0,XMM1
004e83d4  a17816c700                MOV EAX,[0x00c71678]
004e83d9  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004e83df  f30f5ec1                  DIVSS XMM0,XMM1
004e83e3  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e83eb  f30f2cd0                  CVTTSS2SI EDX,XMM0
004e83ef  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e83f7  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004e83ff  f30f5ec1                  DIVSS XMM0,XMM1
004e8403  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e840b  f30f2cc8                  CVTTSS2SI ECX,XMM0
004e840f  85d2                      TEST EDX,EDX
004e8411  784d                      JS 0x004e8460
004e8413  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
004e8416  3bd0                      CMP EDX,EAX
004e8418  7d46                      JGE 0x004e8460
004e841a  85c9                      TEST ECX,ECX
004e841c  7842                      JS 0x004e8460
004e841e  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
004e8421  7d3d                      JGE 0x004e8460
004e8423  0fafc1                    IMUL EAX,ECX
004e8426  03c2                      ADD EAX,EDX
004e8428  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004e842b  3dbf010000                CMP EAX,0x1bf
004e8430  772e                      JA 0x004e8460
004e8432  8b8c866c070000            MOV ECX,dword ptr [ESI + EAX*0x4 + 0x76c]
004e8439  8bc1                      MOV EAX,ECX
004e843b  99                        CDQ
004e843c  c745d8e8030000            MOV dword ptr [EBP + -0x28],0x3e8
004e8443  f77dd8                    IDIV dword ptr [EBP + -0x28]
004e8446  81fa84030000              CMP EDX,0x384
004e844c  7d12                      JGE 0x004e8460
004e844e  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
004e8451  2bca                      SUB ECX,EDX
004e8453  81c184030000              ADD ECX,0x384
004e8459  898c866c070000            MOV dword ptr [ESI + EAX*0x4 + 0x76c],ECX
004e8460  8bcf                      MOV ECX,EDI
004e8462  e8d9631d00                CALL 0x006be840
004e8467  51                        PUSH ECX
004e8468  8bf0                      MOV ESI,EAX
004e846a  c7042400000000            MOV dword ptr [ESP],0x0
004e8471  8d45b4                    LEA EAX,[EBP + -0x4c]
004e8474  8975d8                    MOV dword ptr [EBP + -0x28],ESI
004e8477  50                        PUSH EAX
004e8478  8bcf                      MOV ECX,EDI
004e847a  e8c1671d00                CALL 0x006bec40
004e847f  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004e8484  0f28c8                    MOVAPS XMM1,XMM0
004e8487  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004e848c  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e8494  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004e8499  0f28d0                    MOVAPS XMM2,XMM0
004e849c  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004e84a1  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004e84a9  0f28c1                    MOVAPS XMM0,XMM1
004e84ac  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004e84b1  f30f59c1                  MULSS XMM0,XMM1
004e84b5  0f28ca                    MOVAPS XMM1,XMM2
004e84b8  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
004e84bd  f30f59ca                  MULSS XMM1,XMM2
004e84c1  f30f58c1                  ADDSS XMM0,XMM1
004e84c5  e886d5f4ff                CALL 0x00435a50
004e84ca  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e84d0  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004e84d5  85c0                      TEST EAX,EAX
004e84d7  0f848a0a0000              JZ 0x004e8f67
004e84dd  83f804                    CMP EAX,0x4
004e84e0  0f8480040000              JZ 0x004e8966
004e84e6  83f808                    CMP EAX,0x8
004e84e9  0f85990a0000              JNZ 0x004e8f88
004e84ef  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e84f3  8d4748                    LEA EAX,[EDI + 0x48]
004e84f6  750d                      JNZ 0x004e8505
004e84f8  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004e8500  e997000000                JMP 0x004e859c
004e8505  68dcd2b100                PUSH 0xb1d2dc
004e850a  8d4f78                    LEA ECX,[EDI + 0x78]
004e850d  e85e29f2ff                CALL 0x0040ae70
004e8512  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004e851a  84c0                      TEST AL,AL
004e851c  747b                      JZ 0x004e8599
004e851e  f30f590de0a3ba00          MULSS XMM1,dword ptr [0x00baa3e0]
004e8526  0f57db                    XORPS XMM3,XMM3
004e8529  0f2ecb                    UCOMISS XMM1,XMM3
004e852c  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
004e8534  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004e853c  f30f10a738030000          MOVSS XMM4,dword ptr [EDI + 0x338]
004e8544  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
004e854b  0f572570cbba00            XORPS XMM4,xmmword ptr [0x00bacb70]
004e8552  9f                        LAHF
004e8553  f6c444                    TEST AH,0x44
004e8556  0f8bcf010000              JNP 0x004e872b
004e855c  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004e8564  f30f59d0                  MULSS XMM2,XMM0
004e8568  f30f59e0                  MULSS XMM4,XMM0
004e856c  f30f5ed1                  DIVSS XMM2,XMM1
004e8570  f30f5ee1                  DIVSS XMM4,XMM1
004e8574  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004e857c  f30f58a764030000          ADDSS XMM4,dword ptr [EDI + 0x364]
004e8584  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004e858c  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
004e8594  e992010000                JMP 0x004e872b
004e8599  8d4748                    LEA EAX,[EDI + 0x48]
004e859c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004e85a3  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
004e85ab  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
004e85b3  7f14                      JG 0x004e85c9
004e85b5  68f4d6b100                PUSH 0xb1d6f4
004e85ba  8bc8                      MOV ECX,EAX
004e85bc  e8cf2af2ff                CALL 0x0040b090
004e85c1  84c0                      TEST AL,AL
004e85c3  0f855f010000              JNZ 0x004e8728
004e85c9  85f6                      TEST ESI,ESI
004e85cb  0f8457010000              JZ 0x004e8728
004e85d1  f30f109e60030000          MOVSS XMM3,dword ptr [ESI + 0x360]
004e85d9  8d45b4                    LEA EAX,[EBP + -0x4c]
004e85dc  f30f591d1ca8ba00          MULSS XMM3,dword ptr [0x00baa81c]
004e85e4  83ec0c                    SUB ESP,0xc
004e85e7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e85ed  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e85f5  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
004e85fd  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
004e8605  f30f589e3c030000          ADDSS XMM3,dword ptr [ESI + 0x33c]
004e860d  f30f10a664030000          MOVSS XMM4,dword ptr [ESI + 0x364]
004e8615  f30f59251ca8ba00          MULSS XMM4,dword ptr [0x00baa81c]
004e861d  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004e8623  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e862b  f30f5cd8                  SUBSS XMM3,XMM0
004e862f  c7042400000000            MOV dword ptr [ESP],0x0
004e8636  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e863e  f30f58a640030000          ADDSS XMM4,dword ptr [ESI + 0x340]
004e8646  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
004e864e  50                        PUSH EAX
004e864f  8d45bc                    LEA EAX,[EBP + -0x44]
004e8652  f30f115db4                MOVSS dword ptr [EBP + -0x4c],XMM3
004e8657  50                        PUSH EAX
004e8658  f30f5ce0                  SUBSS XMM4,XMM0
004e865c  0f57db                    XORPS XMM3,XMM3
004e865f  f30f1165b8                MOVSS dword ptr [EBP + -0x48],XMM4
004e8664  e8e7a83200                CALL 0x00812f50
004e8669  f30f104dc0                MOVSS XMM1,dword ptr [EBP + -0x40]
004e866e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004e8676  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
004e867b  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004e8683  f30f590da0a0ba00          MULSS XMM1,dword ptr [0x00baa0a0]
004e868b  f30f5915a0a0ba00          MULSS XMM2,dword ptr [0x00baa0a0]
004e8693  0f28c1                    MOVAPS XMM0,XMM1
004e8696  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004e869b  f30f59c1                  MULSS XMM0,XMM1
004e869f  0f28ca                    MOVAPS XMM1,XMM2
004e86a2  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
004e86a7  f30f59ca                  MULSS XMM1,XMM2
004e86ab  f30f58c1                  ADDSS XMM0,XMM1
004e86af  e89cd3f4ff                CALL 0x00435a50
004e86b4  f30f100d5ca8ba00          MOVSS XMM1,dword ptr [0x00baa85c]
004e86bc  0f2fc1                    COMISS XMM0,XMM1
004e86bf  f30f1055dc                MOVSS XMM2,dword ptr [EBP + -0x24]
004e86c4  f30f1065e0                MOVSS XMM4,dword ptr [EBP + -0x20]
004e86c9  760c                      JBE 0x004e86d7
004e86cb  f30f5ec8                  DIVSS XMM1,XMM0
004e86cf  f30f59d1                  MULSS XMM2,XMM1
004e86d3  f30f59e1                  MULSS XMM4,XMM1
004e86d7  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
004e86df  0f57db                    XORPS XMM3,XMM3
004e86e2  0f2eeb                    UCOMISS XMM5,XMM3
004e86e5  9f                        LAHF
004e86e6  f6c444                    TEST AH,0x44
004e86e9  7b40                      JNP 0x004e872b
004e86eb  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004e86f3  0f28c1                    MOVAPS XMM0,XMM1
004e86f6  f30f59cc                  MULSS XMM1,XMM4
004e86fa  f30f59c2                  MULSS XMM0,XMM2
004e86fe  f30f5ecd                  DIVSS XMM1,XMM5
004e8702  f30f5ec5                  DIVSS XMM0,XMM5
004e8706  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004e870e  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004e8716  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004e871e  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e8726  eb03                      JMP 0x004e872b
004e8728  0f57db                    XORPS XMM3,XMM3
004e872b  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004e8731  85d2                      TEST EDX,EDX
004e8733  0f8ebc000000              JLE 0x004e87f5
004e8739  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004e8741  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004e8749  2bc8                      SUB ECX,EAX
004e874b  8d0411                    LEA EAX,[ECX + EDX*0x1]
004e874e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004e8754  85c0                      TEST EAX,EAX
004e8756  0f8f2c080000              JG 0x004e8f88
004e875c  f30f10a738030000          MOVSS XMM4,dword ptr [EDI + 0x338]
004e8764  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e876c  0f28d4                    MOVAPS XMM2,XMM4
004e876f  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004e8776  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e877d  0f2fd0                    COMISS XMM2,XMM0
004e8780  6a00                      PUSH 0x0
004e8782  761d                      JBE 0x004e87a1
004e8784  0f2fdc                    COMISS XMM3,XMM4
004e8787  b96807b600                MOV ECX,0xb60768
004e878c  b85c07b600                MOV EAX,0xb6075c
004e8791  0f46c1                    CMOVBE EAX,ECX
004e8794  8d4f48                    LEA ECX,[EDI + 0x48]
004e8797  50                        PUSH EAX
004e8798  e8e31bf2ff                CALL 0x0040a380
004e879d  32c0                      XOR AL,AL
004e879f  eb1a                      JMP 0x004e87bb
004e87a1  682008b600                PUSH 0xb60820
004e87a6  8d4f48                    LEA ECX,[EDI + 0x48]
004e87a9  e8d21bf2ff                CALL 0x0040a380
004e87ae  0f57c0                    XORPS XMM0,XMM0
004e87b1  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
004e87b8  0f97c0                    SETA AL
004e87bb  51                        PUSH ECX
004e87bc  888748010000              MOV byte ptr [EDI + 0x148],AL
004e87c2  c704243333933f            MOV dword ptr [ESP],0x3f933333
004e87c9  6a00                      PUSH 0x0
004e87cb  6a02                      PUSH 0x2
004e87cd  51                        PUSH ECX
004e87ce  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004e87d5  8bcf                      MOV ECX,EDI
004e87d7  68a7000000                PUSH 0xa7
004e87dc  e8bfe31e00                CALL 0x006d6ba0
004e87e1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e87e4  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e87eb  59                        POP ECX
004e87ec  5f                        POP EDI
004e87ed  5e                        POP ESI
004e87ee  8be5                      MOV ESP,EBP
004e87f0  5d                        POP EBP
004e87f1  8be3                      MOV ESP,EBX
004e87f3  5b                        POP EBX
004e87f4  c3                        RET
004e87f5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e87f9  0f84f3000000              JZ 0x004e88f2
004e87ff  68dcd2b100                PUSH 0xb1d2dc
004e8804  8d4f78                    LEA ECX,[EDI + 0x78]
004e8807  e8c425f2ff                CALL 0x0040add0
004e880c  84c0                      TEST AL,AL
004e880e  0f84cb000000              JZ 0x004e88df
004e8814  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004e881c  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e8824  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004e882b  c745b800000cc2            MOV dword ptr [EBP + -0x48],0xc20c0000
004e8832  e82915fbff                CALL 0x00499d60
004e8837  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004e883f  8d45b4                    LEA EAX,[EBP + -0x4c]
004e8842  0f28d0                    MOVAPS XMM2,XMM0
004e8845  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e884d  f30f590568a8ba00          MULSS XMM0,dword ptr [0x00baa868]
004e8855  6a00                      PUSH 0x0
004e8857  f30f591548a9ba00          MULSS XMM2,dword ptr [0x00baa948]
004e885f  57                        PUSH EDI
004e8860  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004e8868  50                        PUSH EAX
004e8869  6a0e                      PUSH 0xe
004e886b  51                        PUSH ECX
004e886c  f30f111424                MOVSS dword ptr [ESP],XMM2
004e8871  8d45c4                    LEA EAX,[EBP + -0x3c]
004e8874  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004e8879  0f57c0                    XORPS XMM0,XMM0
004e887c  f30f58c8                  ADDSS XMM1,XMM0
004e8880  50                        PUSH EAX
004e8881  6a01                      PUSH 0x1
004e8883  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
004e8888  e8836a4800                CALL 0x0096f310
004e888d  8bf0                      MOV ESI,EAX
004e888f  83c41c                    ADD ESP,0x1c
004e8892  8bce                      MOV ECX,ESI
004e8894  c786e00400009a99193f      MOV dword ptr [ESI + 0x4e0],0x3f19999a
004e889e  e86d734900                CALL 0x0097fc10
004e88a3  f30f10052cadba00          MOVSS XMM0,dword ptr [0x00baad2c]
004e88ab  c786d004000000002043      MOV dword ptr [ESI + 0x4d0],0x43200000
004e88b5  0f2f8738030000            COMISS XMM0,dword ptr [EDI + 0x338]
004e88bc  760a                      JBE 0x004e88c8
004e88be  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
004e88c6  eb08                      JMP 0x004e88d0
004e88c8  f30f1005c4abba00          MOVSS XMM0,dword ptr [0x00baabc4]
004e88d0  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
004e88d8  8bce                      MOV ECX,ESI
004e88da  8b06                      MOV EAX,dword ptr [ESI]
004e88dc  ff500c                    CALL dword ptr [EAX + 0xc]
004e88df  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e88e3  740d                      JZ 0x004e88f2
004e88e5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e88ec  0f8596060000              JNZ 0x004e8f88
004e88f2  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e88fc  e85f662000                CALL 0x006eef60
004e8901  33d2                      XOR EDX,EDX
004e8903  b932000000                MOV ECX,0x32
004e8908  f7f1                      DIV ECX
004e890a  83c21e                    ADD EDX,0x1e
004e890d  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
004e8913  e848662000                CALL 0x006eef60
004e8918  33d2                      XOR EDX,EDX
004e891a  b93c000000                MOV ECX,0x3c
004e891f  f7f1                      DIV ECX
004e8921  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
004e8927  83c21e                    ADD EDX,0x1e
004e892a  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
004e8930  81c7c4030000              ADD EDI,0x3c4
004e8936  85c9                      TEST ECX,ECX
004e8938  7412                      JZ 0x004e894c
004e893a  8d45d8                    LEA EAX,[EBP + -0x28]
004e893d  897dd8                    MOV dword ptr [EBP + -0x28],EDI
004e8940  50                        PUSH EAX
004e8941  81c1cc030000              ADD ECX,0x3cc
004e8947  e8c468feff                CALL 0x004cf210
004e894c  c70700000000              MOV dword ptr [EDI],0x0
004e8952  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e8955  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e895c  59                        POP ECX
004e895d  5f                        POP EDI
004e895e  5e                        POP ESI
004e895f  8be5                      MOV ESP,EBP
004e8961  5d                        POP EBP
004e8962  8be3                      MOV ESP,EBX
004e8964  5b                        POP EBX
004e8965  c3                        RET
004e8966  f30f1065dc                MOVSS XMM4,dword ptr [EBP + -0x24]
004e896b  8d4f48                    LEA ECX,[EDI + 0x48]
004e896e  f30f105de0                MOVSS XMM3,dword ptr [EBP + -0x20]
004e8973  0f28cc                    MOVAPS XMM1,XMM4
004e8976  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004e897d  0f28c3                    MOVAPS XMM0,XMM3
004e8980  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e8987  0f2fc8                    COMISS XMM1,XMM0
004e898a  0f57c0                    XORPS XMM0,XMM0
004e898d  7616                      JBE 0x004e89a5
004e898f  0f2fc4                    COMISS XMM0,XMM4
004e8992  b8e4fcb500                MOV EAX,0xb5fce4
004e8997  c645ef00                  MOV byte ptr [EBP + -0x11],0x0
004e899b  baecfcb500                MOV EDX,0xb5fcec
004e89a0  0f46c2                    CMOVBE EAX,EDX
004e89a3  eb0c                      JMP 0x004e89b1
004e89a5  0f2fc3                    COMISS XMM0,XMM3
004e89a8  b804fdb500                MOV EAX,0xb5fd04
004e89ad  0f9745ef                  SETA byte ptr [EBP + -0x11]
004e89b1  6a00                      PUSH 0x0
004e89b3  50                        PUSH EAX
004e89b4  e8c719f2ff                CALL 0x0040a380
004e89b9  8a45ef                    MOV AL,byte ptr [EBP + -0x11]
004e89bc  888748010000              MOV byte ptr [EDI + 0x148],AL
004e89c2  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004e89ca  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004e89d2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e89da  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e89e2  2bc8                      SUB ECX,EAX
004e89e4  298fc00b0000              SUB dword ptr [EDI + 0xbc0],ECX
004e89ea  298fa40b0000              SUB dword ptr [EDI + 0xba4],ECX
004e89f0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e89f8  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004e89fc  0f8595010000              JNZ 0x004e8b97
004e8a02  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e8a08  25000a0001                AND EAX,0x1000a00
004e8a0d  83c800                    OR EAX,0x0
004e8a10  0f8581010000              JNZ 0x004e8b97
004e8a16  f30f108630160000          MOVSS XMM0,dword ptr [ESI + 0x1630]
004e8a1e  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004e8a25  f30f108e34160000          MOVSS XMM1,dword ptr [ESI + 0x1634]
004e8a2d  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004e8a32  9f                        LAHF
004e8a33  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
004e8a38  f6c444                    TEST AH,0x44
004e8a3b  7a11                      JP 0x004e8a4e
004e8a3d  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
004e8a44  9f                        LAHF
004e8a45  f6c444                    TEST AH,0x44
004e8a48  0f8b49010000              JNP 0x004e8b97
004e8a4e  f30f5945e0                MULSS XMM0,dword ptr [EBP + -0x20]
004e8a53  8d75d4                    LEA ESI,[EBP + -0x2c]
004e8a56  8d45d0                    LEA EAX,[EBP + -0x30]
004e8a59  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
004e8a60  f30f594ddc                MULSS XMM1,dword ptr [EBP + -0x24]
004e8a65  0f57d2                    XORPS XMM2,XMM2
004e8a68  f30f58c1                  ADDSS XMM0,XMM1
004e8a6c  f30f59052cadba00          MULSS XMM0,dword ptr [0x00baad2c]
004e8a74  0f2fc2                    COMISS XMM0,XMM2
004e8a77  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004e8a7c  0f46f0                    CMOVBE ESI,EAX
004e8a7f  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004e8a83  0f2fc2                    COMISS XMM0,XMM2
004e8a86  0f8617010000              JBE 0x004e8ba3
004e8a8c  8d45ac                    LEA EAX,[EBP + -0x54]
004e8a8f  50                        PUSH EAX
004e8a90  8d4dc4                    LEA ECX,[EBP + -0x3c]
004e8a93  e898755200                CALL 0x00a10030
004e8a98  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004e8aa0  8bf8                      MOV EDI,EAX
004e8aa2  e8994af3ff                CALL 0x0041d540
004e8aa7  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004e8aac  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004e8ab4  e8674af3ff                CALL 0x0041d520
004e8ab9  f30f1065c8                MOVSS XMM4,dword ptr [EBP + -0x38]
004e8abe  0f28c8                    MOVAPS XMM1,XMM0
004e8ac1  f30f594f04                MULSS XMM1,dword ptr [EDI + 0x4]
004e8ac6  0f28ec                    MOVAPS XMM5,XMM4
004e8ac9  f30f5907                  MULSS XMM0,dword ptr [EDI]
004e8acd  f30f592f                  MULSS XMM5,dword ptr [EDI]
004e8ad1  f30f596704                MULSS XMM4,dword ptr [EDI + 0x4]
004e8ad6  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004e8adb  f30f5ce9                  SUBSS XMM5,XMM1
004e8adf  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
004e8ae4  f30f58e0                  ADDSS XMM4,XMM0
004e8ae8  0f28cd                    MOVAPS XMM1,XMM5
004e8aeb  f30f59ca                  MULSS XMM1,XMM2
004e8aef  0f28c4                    MOVAPS XMM0,XMM4
004e8af2  f30f59c3                  MULSS XMM0,XMM3
004e8af6  f30f58c8                  ADDSS XMM1,XMM0
004e8afa  0f57c0                    XORPS XMM0,XMM0
004e8afd  0f2fc8                    COMISS XMM1,XMM0
004e8b00  7610                      JBE 0x004e8b12
004e8b02  f30f592d50adba00          MULSS XMM5,dword ptr [0x00baad50]
004e8b0a  f30f592550adba00          MULSS XMM4,dword ptr [0x00baad50]
004e8b12  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
004e8b1a  8d4dc4                    LEA ECX,[EBP + -0x3c]
004e8b1d  83ec0c                    SUB ESP,0xc
004e8b20  a17816c700                MOV EAX,[0x00c71678]
004e8b25  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
004e8b2d  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004e8b32  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
004e8b37  f30f592e                  MULSS XMM5,dword ptr [ESI]
004e8b3b  f30f5ccb                  SUBSS XMM1,XMM3
004e8b3f  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
004e8b47  f30f5926                  MULSS XMM4,dword ptr [ESI]
004e8b4b  f30f5cc2                  SUBSS XMM0,XMM2
004e8b4f  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
004e8b57  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
004e8b5f  c704240000a041            MOV dword ptr [ESP],0x41a00000
004e8b66  51                        PUSH ECX
004e8b67  f30f58e8                  ADDSS XMM5,XMM0
004e8b6b  f30f58e1                  ADDSS XMM4,XMM1
004e8b6f  8d4dcc                    LEA ECX,[EBP + -0x34]
004e8b72  51                        PUSH ECX
004e8b73  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004e8b79  f30f116dc4                MOVSS dword ptr [EBP + -0x3c],XMM5
004e8b7e  f30f1165c8                MOVSS dword ptr [EBP + -0x38],XMM4
004e8b83  e8c8a33200                CALL 0x00812f50
004e8b88  f30f1055cc                MOVSS XMM2,dword ptr [EBP + -0x34]
004e8b8d  f30f105dd0                MOVSS XMM3,dword ptr [EBP + -0x30]
004e8b92  8b7dc0                    MOV EDI,dword ptr [EBP + -0x40]
004e8b95  eb16                      JMP 0x004e8bad
004e8b97  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004e8b9c  f30f105de4                MOVSS XMM3,dword ptr [EBP + -0x1c]
004e8ba1  eb0d                      JMP 0x004e8bb0
004e8ba3  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004e8ba8  f30f105de4                MOVSS XMM3,dword ptr [EBP + -0x1c]
004e8bad  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
004e8bb0  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
004e8bb8  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004e8bc0  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
004e8bc8  f30f10af40030000          MOVSS XMM5,dword ptr [EDI + 0x340]
004e8bd0  f30f5ccc                  SUBSS XMM1,XMM4
004e8bd4  f30f5cc5                  SUBSS XMM0,XMM5
004e8bd8  f30f59c9                  MULSS XMM1,XMM1
004e8bdc  f30f59c0                  MULSS XMM0,XMM0
004e8be0  f30f58c1                  ADDSS XMM0,XMM1
004e8be4  0f2f05e0abba00            COMISS XMM0,dword ptr [0x00baabe0]
004e8beb  0f86ab000000              JBE 0x004e8c9c
004e8bf1  f30f5cd4                  SUBSS XMM2,XMM4
004e8bf5  f30f5cdd                  SUBSS XMM3,XMM5
004e8bf9  f30f59156ca0ba00          MULSS XMM2,dword ptr [0x00baa06c]
004e8c01  f30f591d6ca0ba00          MULSS XMM3,dword ptr [0x00baa06c]
004e8c09  0f28c2                    MOVAPS XMM0,XMM2
004e8c0c  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004e8c11  f30f59c2                  MULSS XMM0,XMM2
004e8c15  0f28cb                    MOVAPS XMM1,XMM3
004e8c18  f30f115de4                MOVSS dword ptr [EBP + -0x1c],XMM3
004e8c1d  f30f59cb                  MULSS XMM1,XMM3
004e8c21  f30f58c1                  ADDSS XMM0,XMM1
004e8c25  e826cef4ff                CALL 0x00435a50
004e8c2a  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
004e8c2f  0f57d2                    XORPS XMM2,XMM2
004e8c32  0f2fc2                    COMISS XMM0,XMM2
004e8c35  f30f1065e4                MOVSS XMM4,dword ptr [EBP + -0x1c]
004e8c3a  7614                      JBE 0x004e8c50
004e8c3c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004e8c44  f30f5ec8                  DIVSS XMM1,XMM0
004e8c48  f30f59d9                  MULSS XMM3,XMM1
004e8c4c  f30f59e1                  MULSS XMM4,XMM1
004e8c50  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
004e8c58  0f2eea                    UCOMISS XMM5,XMM2
004e8c5b  9f                        LAHF
004e8c5c  f6c444                    TEST AH,0x44
004e8c5f  7b3b                      JNP 0x004e8c9c
004e8c61  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004e8c69  0f28c1                    MOVAPS XMM0,XMM1
004e8c6c  f30f59cc                  MULSS XMM1,XMM4
004e8c70  f30f59c3                  MULSS XMM0,XMM3
004e8c74  f30f5ecd                  DIVSS XMM1,XMM5
004e8c78  f30f5ec5                  DIVSS XMM0,XMM5
004e8c7c  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004e8c84  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004e8c8c  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004e8c94  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e8c9c  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e8ca2  25000a0001                AND EAX,0x1000a00
004e8ca7  83c800                    OR EAX,0x0
004e8caa  0f85d8020000              JNZ 0x004e8f88
004e8cb0  56                        PUSH ESI
004e8cb1  8bcf                      MOV ECX,EDI
004e8cb3  e8285b1d00                CALL 0x006be7e0
004e8cb8  84c0                      TEST AL,AL
004e8cba  0f84c8020000              JZ 0x004e8f88
004e8cc0  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
004e8cc8  0f2f45b8                  COMISS XMM0,dword ptr [EBP + -0x48]
004e8ccc  0f86b6020000              JBE 0x004e8f88
004e8cd2  e889622000                CALL 0x006eef60
004e8cd7  83e007                    AND EAX,0x7
004e8cda  0f85a8020000              JNZ 0x004e8f88
004e8ce0  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004e8ce8  8d55b4                    LEA EDX,[EBP + -0x4c]
004e8ceb  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
004e8cf3  8d4dbc                    LEA ECX,[EBP + -0x44]
004e8cf6  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004e8cfe  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004e8d06  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004e8d0b  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
004e8d10  e85b641900                CALL 0x0067f170
004e8d15  6aff                      PUSH -0x1
004e8d17  6873030000                PUSH 0x373
004e8d1c  8d45a4                    LEA EAX,[EBP + -0x5c]
004e8d1f  8bcf                      MOV ECX,EDI
004e8d21  50                        PUSH EAX
004e8d22  e8397f1e00                CALL 0x006d0c60
004e8d27  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004e8d2e  33d2                      XOR EDX,EDX
004e8d30  f30f1075c0                MOVSS XMM6,dword ptr [EBP + -0x40]
004e8d35  f30f107dbc                MOVSS XMM7,dword ptr [EBP + -0x44]
004e8d3a  3955b0                    CMP dword ptr [EBP + -0x50],EDX
004e8d3d  0f862c010000              JBE 0x004e8e6f
004e8d43  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004e8d46  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004e8d49  85c9                      TEST ECX,ECX
004e8d4b  0f8414010000              JZ 0x004e8e65
004e8d51  a17816c700                MOV EAX,[0x00c71678]
004e8d56  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004e8d5d  7c06                      JL 0x004e8d65
004e8d5f  83792801                  CMP dword ptr [ECX + 0x28],0x1
004e8d63  7411                      JZ 0x004e8d76
004e8d65  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004e8d68  83e80a                    SUB EAX,0xa
004e8d6b  3ddd030000                CMP EAX,0x3dd
004e8d70  0f87ef000000              JA 0x004e8e65
004e8d76  3bcf                      CMP ECX,EDI
004e8d78  0f84e7000000              JZ 0x004e8e65
004e8d7e  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
004e8d84  2500000020                AND EAX,0x20000000
004e8d89  c645ef01                  MOV byte ptr [EBP + -0x11],0x1
004e8d8d  83c800                    OR EAX,0x0
004e8d90  7504                      JNZ 0x004e8d96
004e8d92  c645ef00                  MOV byte ptr [EBP + -0x11],0x0
004e8d96  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e8d9c  2500000020                AND EAX,0x20000000
004e8da1  83c800                    OR EAX,0x0
004e8da4  7404                      JZ 0x004e8daa
004e8da6  b001                      MOV AL,0x1
004e8da8  eb02                      JMP 0x004e8dac
004e8daa  32c0                      XOR AL,AL
004e8dac  3845ef                    CMP byte ptr [EBP + -0x11],AL
004e8daf  0f85b0000000              JNZ 0x004e8e65
004e8db5  83b9640b000008            CMP dword ptr [ECX + 0xb64],0x8
004e8dbc  0f85a3000000              JNZ 0x004e8e65
004e8dc2  39b1c4030000              CMP dword ptr [ECX + 0x3c4],ESI
004e8dc8  0f8597000000              JNZ 0x004e8e65
004e8dce  f30f10a63c030000          MOVSS XMM4,dword ptr [ESI + 0x33c]
004e8dd6  0f57d2                    XORPS XMM2,XMM2
004e8dd9  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
004e8de1  f30f5ca13c030000          SUBSS XMM4,dword ptr [ECX + 0x33c]
004e8de9  f30f5c9940030000          SUBSS XMM3,dword ptr [ECX + 0x340]
004e8df1  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
004e8df9  0f28cc                    MOVAPS XMM1,XMM4
004e8dfc  0f28c3                    MOVAPS XMM0,XMM3
004e8dff  0f54cd                    ANDPS XMM1,XMM5
004e8e02  0f54c5                    ANDPS XMM0,XMM5
004e8e05  0f2fc8                    COMISS XMM1,XMM0
004e8e08  760f                      JBE 0x004e8e19
004e8e0a  33c0                      XOR EAX,EAX
004e8e0c  b902000000                MOV ECX,0x2
004e8e11  0f2fd4                    COMISS XMM2,XMM4
004e8e14  0f47c8                    CMOVA ECX,EAX
004e8e17  eb0f                      JMP 0x004e8e28
004e8e19  33c9                      XOR ECX,ECX
004e8e1b  0f2fd3                    COMISS XMM2,XMM3
004e8e1e  0f96c1                    SETBE CL
004e8e21  8d0c4d01000000            LEA ECX,[ECX*0x2 + 0x1]
004e8e28  0f28cf                    MOVAPS XMM1,XMM7
004e8e2b  0f28c6                    MOVAPS XMM0,XMM6
004e8e2e  0f54cd                    ANDPS XMM1,XMM5
004e8e31  0f54c5                    ANDPS XMM0,XMM5
004e8e34  0f2fc8                    COMISS XMM1,XMM0
004e8e37  7615                      JBE 0x004e8e4e
004e8e39  0f2fd7                    COMISS XMM2,XMM7
004e8e3c  b802000000                MOV EAX,0x2
004e8e41  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004e8e48  0f4745b8                  CMOVA EAX,dword ptr [EBP + -0x48]
004e8e4c  eb0f                      JMP 0x004e8e5d
004e8e4e  33c0                      XOR EAX,EAX
004e8e50  0f2fd6                    COMISS XMM2,XMM6
004e8e53  0f96c0                    SETBE AL
004e8e56  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
004e8e5d  3bc8                      CMP ECX,EAX
004e8e5f  0f84c9000000              JZ 0x004e8f2e
004e8e65  42                        INC EDX
004e8e66  3b55b0                    CMP EDX,dword ptr [EBP + -0x50]
004e8e69  0f82d4feffff              JC 0x004e8d43
004e8e6f  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e8e79  8d87c4030000              LEA EAX,[EDI + 0x3c4]
004e8e7f  f30f11bf34030000          MOVSS dword ptr [EDI + 0x334],XMM7
004e8e87  f30f11b738030000          MOVSS dword ptr [EDI + 0x338],XMM6
004e8e8f  8b08                      MOV ECX,dword ptr [EAX]
004e8e91  c787c00b000014000000      MOV dword ptr [EDI + 0xbc0],0x14
004e8e9b  85c9                      TEST ECX,ECX
004e8e9d  7418                      JZ 0x004e8eb7
004e8e9f  8945b8                    MOV dword ptr [EBP + -0x48],EAX
004e8ea2  81c1cc030000              ADD ECX,0x3cc
004e8ea8  8d45b8                    LEA EAX,[EBP + -0x48]
004e8eab  50                        PUSH EAX
004e8eac  e85f63feff                CALL 0x004cf210
004e8eb1  8d87c4030000              LEA EAX,[EDI + 0x3c4]
004e8eb7  50                        PUSH EAX
004e8eb8  8bce                      MOV ECX,ESI
004e8eba  8930                      MOV dword ptr [EAX],ESI
004e8ebc  e82f4efeff                CALL 0x004cdcf0
004e8ec1  f30f109f38030000          MOVSS XMM3,dword ptr [EDI + 0x338]
004e8ec9  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e8ed1  0f28cb                    MOVAPS XMM1,XMM3
004e8ed4  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004e8edb  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e8ee2  0f2fc8                    COMISS XMM1,XMM0
004e8ee5  6a00                      PUSH 0x0
004e8ee7  7625                      JBE 0x004e8f0e
004e8ee9  0f57c0                    XORPS XMM0,XMM0
004e8eec  b9c407b600                MOV ECX,0xb607c4
004e8ef1  0f2fc3                    COMISS XMM0,XMM3
004e8ef4  b8bc07b600                MOV EAX,0xb607bc
004e8ef9  0f46c1                    CMOVBE EAX,ECX
004e8efc  8d4f48                    LEA ECX,[EDI + 0x48]
004e8eff  50                        PUSH EAX
004e8f00  e87b14f2ff                CALL 0x0040a380
004e8f05  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004e8f0c  eb20                      JMP 0x004e8f2e
004e8f0e  681408b600                PUSH 0xb60814
004e8f13  8d4f48                    LEA ECX,[EDI + 0x48]
004e8f16  e86514f2ff                CALL 0x0040a380
004e8f1b  0f57c0                    XORPS XMM0,XMM0
004e8f1e  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
004e8f25  0f97c0                    SETA AL
004e8f28  888748010000              MOV byte ptr [EDI + 0x148],AL
004e8f2e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e8f35  807da400                  CMP byte ptr [EBP + -0x5c],0x0
004e8f39  754d                      JNZ 0x004e8f88
004e8f3b  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004e8f42  b101                      MOV CL,0x1
004e8f44  8b55a8                    MOV EDX,dword ptr [EBP + -0x58]
004e8f47  6a00                      PUSH 0x0
004e8f49  6a00                      PUSH 0x0
004e8f4b  e860b95700                CALL 0x00a648b0
004e8f50  83c408                    ADD ESP,0x8
004e8f53  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e8f56  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e8f5d  59                        POP ECX
004e8f5e  5f                        POP EDI
004e8f5f  5e                        POP ESI
004e8f60  8be5                      MOV ESP,EBP
004e8f62  5d                        POP EBP
004e8f63  8be3                      MOV ESP,EBX
004e8f65  5b                        POP EBX
004e8f66  c3                        RET
004e8f67  e8f45f2000                CALL 0x006eef60
004e8f6c  33d2                      XOR EDX,EDX
004e8f6e  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e8f78  b932000000                MOV ECX,0x32
004e8f7d  f7f1                      DIV ECX
004e8f7f  83c20a                    ADD EDX,0xa
004e8f82  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
004e8f88  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e8f8b  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e8f92  59                        POP ECX
004e8f93  5f                        POP EDI
004e8f94  5e                        POP ESI
004e8f95  8be5                      MOV ESP,EBP
004e8f97  5d                        POP EBP
004e8f98  8be3                      MOV ESP,EBX
004e8f9a  5b                        POP EBX
004e8f9b  c3                        RET
