; J460 NPC AI 0x004e38c0 AI_004e38c0
; types=855
; identities=855.0.0,855.1.0
; entry=004e38c0
004e38c0  53                        PUSH EBX
004e38c1  8bdc                      MOV EBX,ESP
004e38c3  83ec08                    SUB ESP,0x8
004e38c6  83e4f8                    AND ESP,0xfffffff8
004e38c9  83c404                    ADD ESP,0x4
004e38cc  55                        PUSH EBP
004e38cd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004e38d0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004e38d4  8bec                      MOV EBP,ESP
004e38d6  6aff                      PUSH -0x1
004e38d8  68dd3baf00                PUSH 0xaf3bdd
004e38dd  64a100000000              MOV EAX,FS:[0x0]
004e38e3  50                        PUSH EAX
004e38e4  53                        PUSH EBX
004e38e5  81ec90000000              SUB ESP,0x90
004e38eb  a1b493bf00                MOV EAX,[0x00bf93b4]
004e38f0  33c5                      XOR EAX,EBP
004e38f2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004e38f5  56                        PUSH ESI
004e38f6  57                        PUSH EDI
004e38f7  50                        PUSH EAX
004e38f8  8d45f4                    LEA EAX,[EBP + -0xc]
004e38fb  64a300000000              MOV FS:[0x0],EAX
004e3901  8bf1                      MOV ESI,ECX
004e3903  8975a0                    MOV dword ptr [EBP + -0x60],ESI
004e3906  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
004e390c  85c0                      TEST EAX,EAX
004e390e  0f84b3040000              JZ 0x004e3dc7
004e3914  83f804                    CMP EAX,0x4
004e3917  0f84d2040000              JZ 0x004e3def
004e391d  83f808                    CMP EAX,0x8
004e3920  0f85ab040000              JNZ 0x004e3dd1
004e3926  f30f108e440b0000          MOVSS XMM1,dword ptr [ESI + 0xb44]
004e392e  f30f1096480b0000          MOVSS XMM2,dword ptr [ESI + 0xb48]
004e3936  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
004e393e  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004e3946  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
004e394e  f30f59c0                  MULSS XMM0,XMM0
004e3952  f30f59d2                  MULSS XMM2,XMM2
004e3956  f30f59c9                  MULSS XMM1,XMM1
004e395a  f30f58d1                  ADDSS XMM2,XMM1
004e395e  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004e3966  f30f5ed0                  DIVSS XMM2,XMM0
004e396a  0f2fca                    COMISS XMM1,XMM2
004e396d  7717                      JA 0x004e3986
004e396f  80be9001000000            CMP byte ptr [ESI + 0x190],0x0
004e3976  750e                      JNZ 0x004e3986
004e3978  c7863c04000000000000      MOV dword ptr [ESI + 0x43c],0x0
004e3982  33c0                      XOR EAX,EAX
004e3984  eb1e                      JMP 0x004e39a4
004e3986  f30f2c86a0030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a0]
004e398e  f30f2c8ea4030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a4]
004e3996  2bc8                      SUB ECX,EAX
004e3998  018e3c040000              ADD dword ptr [ESI + 0x43c],ECX
004e399e  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
004e39a4  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
004e39a8  894594                    MOV dword ptr [EBP + -0x6c],EAX
004e39ab  0f85c4000000              JNZ 0x004e3a75
004e39b1  0f57d2                    XORPS XMM2,XMM2
004e39b4  8bce                      MOV ECX,ESI
004e39b6  e8a58d1c00                CALL 0x006ac760
004e39bb  85c0                      TEST EAX,EAX
004e39bd  0f84b2000000              JZ 0x004e3a75
004e39c3  8d8e14040000              LEA ECX,[ESI + 0x414]
004e39c9  e892f82f00                CALL 0x007e3260
004e39ce  8bce                      MOV ECX,ESI
004e39d0  8d4598                    LEA EAX,[EBP + -0x68]
004e39d3  f30f108160030000          MOVSS XMM0,dword ptr [ECX + 0x360]
004e39db  8db960030000              LEA EDI,[ECX + 0x360]
004e39e1  6a00                      PUSH 0x0
004e39e3  6884030000                PUSH 0x384
004e39e8  83ec08                    SUB ESP,0x8
004e39eb  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004e39f0  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
004e39f5  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004e39fa  f30f10816c030000          MOVSS XMM0,dword ptr [ECX + 0x36c]
004e3a02  c744240400002041          MOV dword ptr [ESP + 0x4],0x41200000
004e3a0a  c7042400000000            MOV dword ptr [ESP],0x0
004e3a11  50                        PUSH EAX
004e3a12  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e3a1a  e821b21d00                CALL 0x006bec40
004e3a1f  50                        PUSH EAX
004e3a20  8d8e14040000              LEA ECX,[ESI + 0x414]
004e3a26  e895f92f00                CALL 0x007e33c0
004e3a2b  8d8eb00b0000              LEA ECX,[ESI + 0xbb0]
004e3a31  e82ab81900                CALL 0x0067f260
004e3a36  8bcf                      MOV ECX,EDI
004e3a38  8bd0                      MOV EDX,EAX
004e3a3a  e821b81900                CALL 0x0067f260
004e3a3f  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004e3a44  3bc2                      CMP EAX,EDX
004e3a46  8b4594                    MOV EAX,dword ptr [EBP + -0x6c]
004e3a49  b90a000000                MOV ECX,0xa
004e3a4e  f30f1107                  MOVSS dword ptr [EDI],XMM0
004e3a52  0f45c1                    CMOVNZ EAX,ECX
004e3a55  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
004e3a5a  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
004e3a5f  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
004e3a67  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
004e3a6f  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
004e3a75  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
004e3a7b  8986440b0000              MOV dword ptr [ESI + 0xb44],EAX
004e3a81  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
004e3a87  8986480b0000              MOV dword ptr [ESI + 0xb48],EAX
004e3a8d  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004e3a93  25000a0001                AND EAX,0x1000a00
004e3a98  83c800                    OR EAX,0x0
004e3a9b  0f85e6020000              JNZ 0x004e3d87
004e3aa1  50                        PUSH EAX
004e3aa2  6880000000                PUSH 0x80
004e3aa7  8bce                      MOV ECX,ESI
004e3aa9  e88239f3ff                CALL 0x00417430
004e3aae  84c0                      TEST AL,AL
004e3ab0  7432                      JZ 0x004e3ae4
004e3ab2  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
004e3aba  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
004e3ac2  f30f59c0                  MULSS XMM0,XMM0
004e3ac6  f30f59c9                  MULSS XMM1,XMM1
004e3aca  f30f58c1                  ADDSS XMM0,XMM1
004e3ace  e87d1ff5ff                CALL 0x00435a50
004e3ad3  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004e3adb  0f2fc8                    COMISS XMM1,XMM0
004e3ade  0f87a3020000              JA 0x004e3d87
004e3ae4  83be3c04000005            CMP dword ptr [ESI + 0x43c],0x5
004e3aeb  0f8f96020000              JG 0x004e3d87
004e3af1  f30f108eb00b0000          MOVSS XMM1,dword ptr [ESI + 0xbb0]
004e3af9  f30f1086b40b0000          MOVSS XMM0,dword ptr [ESI + 0xbb4]
004e3b01  6a00                      PUSH 0x0
004e3b03  51                        PUSH ECX
004e3b04  e85762fbff                CALL 0x00499d60
004e3b09  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e3b11  83c404                    ADD ESP,0x4
004e3b14  f30f580530abba00          ADDSS XMM0,dword ptr [0x00baab30]
004e3b1c  f30f580588a8ba00          ADDSS XMM0,dword ptr [0x00baa888]
004e3b24  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
004e3b2c  f30f2cc0                  CVTTSS2SI EAX,XMM0
004e3b30  2507000080                AND EAX,0x80000007
004e3b35  7905                      JNS 0x004e3b3c
004e3b37  48                        DEC EAX
004e3b38  83c8f8                    OR EAX,0xfffffff8
004e3b3b  40                        INC EAX
004e3b3c  ff34852006b600            PUSH dword ptr [EAX*0x4 + 0xb60620]
004e3b43  8d4e48                    LEA ECX,[ESI + 0x48]
004e3b46  e83568f2ff                CALL 0x0040a380
004e3b4b  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
004e3b53  0f57e4                    XORPS XMM4,XMM4
004e3b56  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
004e3b5e  0f2edc                    UCOMISS XMM3,XMM4
004e3b61  f30f119e6c030000          MOVSS dword ptr [ESI + 0x36c],XMM3
004e3b69  9f                        LAHF
004e3b6a  f6c444                    TEST AH,0x44
004e3b6d  7b43                      JNP 0x004e3bb2
004e3b6f  f30f10969c030000          MOVSS XMM2,dword ptr [ESI + 0x39c]
004e3b77  0f28c2                    MOVAPS XMM0,XMM2
004e3b7a  f30f5986b00b0000          MULSS XMM0,dword ptr [ESI + 0xbb0]
004e3b82  f30f5ec3                  DIVSS XMM0,XMM3
004e3b86  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
004e3b8e  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004e3b96  f30f5996b40b0000          MULSS XMM2,dword ptr [ESI + 0xbb4]
004e3b9e  f30f5ed3                  DIVSS XMM2,XMM3
004e3ba2  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
004e3baa  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
004e3bb2  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
004e3bb6  0f8415020000              JZ 0x004e3dd1
004e3bbc  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
004e3bc4  8d4d90                    LEA ECX,[EBP + -0x70]
004e3bc7  f30f5905aca0ba00          MULSS XMM0,dword ptr [0x00baa0ac]
004e3bcf  8d4588                    LEA EAX,[EBP + -0x78]
004e3bd2  c7459000000000            MOV dword ptr [EBP + -0x70],0x0
004e3bd9  f30f108eb80b0000          MOVSS XMM1,dword ptr [ESI + 0xbb8]
004e3be1  51                        PUSH ECX
004e3be2  f30f5cc8                  SUBSS XMM1,XMM0
004e3be6  c7042400000000            MOV dword ptr [ESP],0x0
004e3bed  0f2fcc                    COMISS XMM1,XMM4
004e3bf0  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
004e3bf5  0f46c1                    CMOVBE EAX,ECX
004e3bf8  8bce                      MOV ECX,ESI
004e3bfa  8b00                      MOV EAX,dword ptr [EAX]
004e3bfc  8986b80b0000              MOV dword ptr [ESI + 0xbb8],EAX
004e3c02  a17816c700                MOV EAX,[0x00c71678]
004e3c07  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
004e3c0d  8d458c                    LEA EAX,[EBP + -0x74]
004e3c10  50                        PUSH EAX
004e3c11  e82ab01d00                CALL 0x006bec40
004e3c16  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
004e3c19  8bf0                      MOV ESI,EAX
004e3c1b  e820ac1d00                CALL 0x006be840
004e3c20  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
004e3c28  83ec0c                    SUB ESP,0xc
004e3c2b  8bcf                      MOV ECX,EDI
004e3c2d  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004e3c35  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004e3c3d  8d4598                    LEA EAX,[EBP + -0x68]
004e3c40  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
004e3c48  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
004e3c50  f30f59155ca8ba00          MULSS XMM2,dword ptr [0x00baa85c]
004e3c58  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
004e3c60  f30f580e                  ADDSS XMM1,dword ptr [ESI]
004e3c64  c704240000a041            MOV dword ptr [ESP],0x41a00000
004e3c6b  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
004e3c70  50                        PUSH EAX
004e3c71  8d4584                    LEA EAX,[EBP + -0x7c]
004e3c74  50                        PUSH EAX
004e3c75  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
004e3c7a  f30f11559c                MOVSS dword ptr [EBP + -0x64],XMM2
004e3c7f  e8ccf23200                CALL 0x00812f50
004e3c84  8b75a0                    MOV ESI,dword ptr [EBP + -0x60]
004e3c87  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004e3c8c  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
004e3c91  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004e3c99  f30f5c963c030000          SUBSS XMM2,dword ptr [ESI + 0x33c]
004e3ca1  f30f108eb40b0000          MOVSS XMM1,dword ptr [ESI + 0xbb4]
004e3ca9  f30f59c8                  MULSS XMM1,XMM0
004e3cad  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004e3cb2  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
004e3cba  f30f59c2                  MULSS XMM0,XMM2
004e3cbe  f30f115598                MOVSS dword ptr [EBP + -0x68],XMM2
004e3cc3  f30f58c8                  ADDSS XMM1,XMM0
004e3cc7  0f57c0                    XORPS XMM0,XMM0
004e3cca  0f2fc8                    COMISS XMM1,XMM0
004e3ccd  0f86fe000000              JBE 0x004e3dd1
004e3cd3  f30f108eb80b0000          MOVSS XMM1,dword ptr [ESI + 0xbb8]
004e3cdb  0f2fc8                    COMISS XMM1,XMM0
004e3cde  0f86ed000000              JBE 0x004e3dd1
004e3ce4  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e3cec  0f2fc1                    COMISS XMM0,XMM1
004e3cef  7706                      JA 0x004e3cf7
004e3cf1  f30f10c0                  MOVSS XMM0,XMM0
004e3cf5  eb04                      JMP 0x004e3cfb
004e3cf7  f30f10c1                  MOVSS XMM0,XMM1
004e3cfb  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
004e3d01  51                        PUSH ECX
004e3d02  8d4d98                    LEA ECX,[EBP + -0x68]
004e3d05  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004e3d0d  f30f110424                MOVSS dword ptr [ESP],XMM0
004e3d12  50                        PUSH EAX
004e3d13  e8e8c35200                CALL 0x00a10100
004e3d18  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
004e3d20  f30f1096b00b0000          MOVSS XMM2,dword ptr [ESI + 0xbb0]
004e3d28  0f28c1                    MOVAPS XMM0,XMM1
004e3d2b  f30f5900                  MULSS XMM0,dword ptr [EAX]
004e3d2f  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
004e3d34  f30f58c2                  ADDSS XMM0,XMM2
004e3d38  f30f59d2                  MULSS XMM2,XMM2
004e3d3c  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
004e3d41  f30f1086b40b0000          MOVSS XMM0,dword ptr [ESI + 0xbb4]
004e3d49  f30f58c8                  ADDSS XMM1,XMM0
004e3d4d  f30f59c0                  MULSS XMM0,XMM0
004e3d51  f30f58c2                  ADDSS XMM0,XMM2
004e3d55  f30f114d9c                MOVSS dword ptr [EBP + -0x64],XMM1
004e3d5a  e8f11cf5ff                CALL 0x00435a50
004e3d5f  51                        PUSH ECX
004e3d60  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004e3d66  f30f110424                MOVSS dword ptr [ESP],XMM0
004e3d6b  50                        PUSH EAX
004e3d6c  8d4d98                    LEA ECX,[EBP + -0x68]
004e3d6f  e88cc35200                CALL 0x00a10100
004e3d74  8b08                      MOV ECX,dword ptr [EAX]
004e3d76  898eb00b0000              MOV dword ptr [ESI + 0xbb0],ECX
004e3d7c  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e3d7f  8986b40b0000              MOV dword ptr [ESI + 0xbb4],EAX
004e3d85  eb4a                      JMP 0x004e3dd1
004e3d87  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e3d8f  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
004e3d97  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e3d9f  f30f11861c040000          MOVSS dword ptr [ESI + 0x41c],XMM0
004e3da7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004e3daf  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
004e3db7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004e3dbf  f30f118624040000          MOVSS dword ptr [ESI + 0x424],XMM0
004e3dc7  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
004e3dd1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e3dd4  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e3ddb  59                        POP ECX
004e3ddc  5f                        POP EDI
004e3ddd  5e                        POP ESI
004e3dde  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004e3de1  33cd                      XOR ECX,EBP
004e3de3  e843b36000                CALL 0x00aef12b
004e3de8  8be5                      MOV ESP,EBP
004e3dea  5d                        POP EBP
004e3deb  8be3                      MOV ESP,EBX
004e3ded  5b                        POP EBX
004e3dee  c3                        RET
004e3def  f30f7e05fc05b600          MOVQ XMM0,qword ptr [0x00b605fc]
004e3df7  a00406b600                MOV AL,[0x00b60604]
004e3dfc  c745b80f000000            MOV dword ptr [EBP + -0x48],0xf
004e3e03  c745b409000000            MOV dword ptr [EBP + -0x4c],0x9
004e3e0a  660fd645a4                MOVQ qword ptr [EBP + -0x5c],XMM0
004e3e0f  8845ac                    MOV byte ptr [EBP + -0x54],AL
004e3e12  c645ad00                  MOV byte ptr [EBP + -0x53],0x0
004e3e16  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004e3e1d  a10806b600                MOV EAX,[0x00b60608]
004e3e22  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004e3e25  66a10c06b600              MOV AX,[0x00b6060c]
004e3e2b  668945d8                  MOV word ptr [EBP + -0x28],AX
004e3e2f  a00e06b600                MOV AL,[0x00b6060e]
004e3e34  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e3e3b  c745e407000000            MOV dword ptr [EBP + -0x1c],0x7
004e3e42  8845da                    MOV byte ptr [EBP + -0x26],AL
004e3e45  c645db00                  MOV byte ptr [EBP + -0x25],0x0
004e3e49  f30f7e05f005b600          MOVQ XMM0,qword ptr [0x00b605f0]
004e3e51  a0f805b600                MOV AL,[0x00b605f8]
004e3e56  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004e3e5d  c745cc09000000            MOV dword ptr [EBP + -0x34],0x9
004e3e64  660fd645bc                MOVQ qword ptr [EBP + -0x44],XMM0
004e3e69  8845c4                    MOV byte ptr [EBP + -0x3c],AL
004e3e6c  c645c500                  MOV byte ptr [EBP + -0x3b],0x0
004e3e70  51                        PUSH ECX
004e3e71  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004e3e75  8d45a4                    LEA EAX,[EBP + -0x5c]
004e3e78  c7042400000000            MOV dword ptr [ESP],0x0
004e3e7f  8bce                      MOV ECX,ESI
004e3e81  50                        PUSH EAX
004e3e82  8d45d4                    LEA EAX,[EBP + -0x2c]
004e3e85  50                        PUSH EAX
004e3e86  8d45bc                    LEA EAX,[EBP + -0x44]
004e3e89  50                        PUSH EAX
004e3e8a  e831d71d00                CALL 0x006c15c0
004e3e8f  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004e3e93  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004e3e96  83fa10                    CMP EDX,0x10
004e3e99  722c                      JC 0x004e3ec7
004e3e9b  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004e3e9e  42                        INC EDX
004e3e9f  8bc1                      MOV EAX,ECX
004e3ea1  81fa00100000              CMP EDX,0x1000
004e3ea7  7214                      JC 0x004e3ebd
004e3ea9  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e3eac  83c223                    ADD EDX,0x23
004e3eaf  2bc1                      SUB EAX,ECX
004e3eb1  83c0fc                    ADD EAX,-0x4
004e3eb4  83f81f                    CMP EAX,0x1f
004e3eb7  0f878f000000              JA 0x004e3f4c
004e3ebd  52                        PUSH EDX
004e3ebe  51                        PUSH ECX
004e3ebf  e898b26000                CALL 0x00aef15c
004e3ec4  83c408                    ADD ESP,0x8
004e3ec7  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004e3ecb  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004e3ece  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004e3ed5  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004e3edc  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
004e3ee0  83fa10                    CMP EDX,0x10
004e3ee3  7228                      JC 0x004e3f0d
004e3ee5  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004e3ee8  42                        INC EDX
004e3ee9  8bc1                      MOV EAX,ECX
004e3eeb  81fa00100000              CMP EDX,0x1000
004e3ef1  7210                      JC 0x004e3f03
004e3ef3  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e3ef6  83c223                    ADD EDX,0x23
004e3ef9  2bc1                      SUB EAX,ECX
004e3efb  83c0fc                    ADD EAX,-0x4
004e3efe  83f81f                    CMP EAX,0x1f
004e3f01  7749                      JA 0x004e3f4c
004e3f03  52                        PUSH EDX
004e3f04  51                        PUSH ECX
004e3f05  e852b26000                CALL 0x00aef15c
004e3f0a  83c408                    ADD ESP,0x8
004e3f0d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e3f14  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004e3f17  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004e3f1e  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e3f25  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004e3f29  83fa10                    CMP EDX,0x10
004e3f2c  722e                      JC 0x004e3f5c
004e3f2e  8b4da4                    MOV ECX,dword ptr [EBP + -0x5c]
004e3f31  42                        INC EDX
004e3f32  8bc1                      MOV EAX,ECX
004e3f34  81fa00100000              CMP EDX,0x1000
004e3f3a  7216                      JC 0x004e3f52
004e3f3c  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e3f3f  83c223                    ADD EDX,0x23
004e3f42  2bc1                      SUB EAX,ECX
004e3f44  83c0fc                    ADD EAX,-0x4
004e3f47  83f81f                    CMP EAX,0x1f
004e3f4a  7606                      JBE 0x004e3f52
004e3f4c  ff159488b100              CALL dword ptr [0x00b18894]
004e3f52  52                        PUSH EDX
004e3f53  51                        PUSH ECX
004e3f54  e803b26000                CALL 0x00aef15c
004e3f59  83c408                    ADD ESP,0x8
004e3f5c  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
004e3f60  0f856a010000              JNZ 0x004e40d0
004e3f66  8b9610040000              MOV EDX,dword ptr [ESI + 0x410]
004e3f6c  85d2                      TEST EDX,EDX
004e3f6e  0f8e5c010000              JLE 0x004e40d0
004e3f74  f30f2c86a4030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a4]
004e3f7c  f30f2c8ea0030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a0]
004e3f84  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
004e3f8c  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
004e3f94  2bc8                      SUB ECX,EAX
004e3f96  8d0411                    LEA EAX,[ECX + EDX*0x1]
004e3f99  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
004e3fa1  898610040000              MOV dword ptr [ESI + 0x410],EAX
004e3fa7  85c0                      TEST EAX,EAX
004e3fa9  0f8f22feffff              JG 0x004e3dd1
004e3faf  6a00                      PUSH 0x0
004e3fb1  6884030000                PUSH 0x384
004e3fb6  83ec08                    SUB ESP,0x8
004e3fb9  c7861004000004000000      MOV dword ptr [ESI + 0x410],0x4
004e3fc3  8d4598                    LEA EAX,[EBP + -0x68]
004e3fc6  8bce                      MOV ECX,ESI
004e3fc8  c744240400000040          MOV dword ptr [ESP + 0x4],0x40000000
004e3fd0  c7042400000000            MOV dword ptr [ESP],0x0
004e3fd7  50                        PUSH EAX
004e3fd8  e863ac1d00                CALL 0x006bec40
004e3fdd  50                        PUSH EAX
004e3fde  8d8e14040000              LEA ECX,[ESI + 0x414]
004e3fe4  e8d7f32f00                CALL 0x007e33c0
004e3fe9  8d8e60030000              LEA ECX,[ESI + 0x360]
004e3fef  e86cb21900                CALL 0x0067f260
004e3ff4  8bf8                      MOV EDI,EAX
004e3ff6  8d4d98                    LEA ECX,[EBP + -0x68]
004e3ff9  8bd7                      MOV EDX,EDI
004e3ffb  e8d0b11900                CALL 0x0067f1d0
004e4000  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e4006  8d4d94                    LEA ECX,[EBP + -0x6c]
004e4009  c74594dd000000            MOV dword ptr [EBP + -0x6c],0xdd
004e4010  e86b274700                CALL 0x00956780
004e4015  83ec08                    SUB ESP,0x8
004e4018  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e4020  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e4027  6a00                      PUSH 0x0
004e4029  6a14                      PUSH 0x14
004e402b  51                        PUSH ECX
004e402c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e4033  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e4039  ff7594                    PUSH dword ptr [EBP + -0x6c]
004e403c  e8ef9b4400                CALL 0x0092dc30
004e4041  8d4702                    LEA EAX,[EDI + 0x2]
004e4044  6a00                      PUSH 0x0
004e4046  2503000080                AND EAX,0x80000003
004e404b  7905                      JNS 0x004e4052
004e404d  48                        DEC EAX
004e404e  83c8fc                    OR EAX,0xfffffffc
004e4051  40                        INC EAX
004e4052  8b75a0                    MOV ESI,dword ptr [EBP + -0x60]
004e4055  ff34851006b600            PUSH dword ptr [EAX*0x4 + 0xb60610]
004e405c  8d4e48                    LEA ECX,[ESI + 0x48]
004e405f  e81c63f2ff                CALL 0x0040a380
004e4064  f30f104d98                MOVSS XMM1,dword ptr [EBP + -0x68]
004e4069  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
004e406e  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
004e4076  c6864801000000            MOV byte ptr [ESI + 0x148],0x0
004e407d  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
004e4085  f30f118eb00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM1
004e408d  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
004e4095  c786b80b000000000040      MOV dword ptr [ESI + 0xbb8],0x40000000
004e409f  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
004e40a9  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
004e40af  8986440b0000              MOV dword ptr [ESI + 0xb44],EAX
004e40b5  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
004e40bb  8986480b0000              MOV dword ptr [ESI + 0xb48],EAX
004e40c1  c7863c04000000000000      MOV dword ptr [ESI + 0x43c],0x0
004e40cb  e901fdffff                JMP 0x004e3dd1
004e40d0  6a00                      PUSH 0x0
004e40d2  51                        PUSH ECX
004e40d3  8d8e14040000              LEA ECX,[ESI + 0x414]
004e40d9  c704246666263f            MOV dword ptr [ESP],0x3f266666
004e40e0  e85b123000                CALL 0x007e5340
004e40e5  f30f10969c030000          MOVSS XMM2,dword ptr [ESI + 0x39c]
004e40ed  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
004e40f4  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
004e40fc  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
004e4104  f30f100d30a4ba00          MOVSS XMM1,dword ptr [0x00baa430]
004e410c  9f                        LAHF
004e410d  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
004e4115  f6c444                    TEST AH,0x44
004e4118  7b13                      JNP 0x004e412d
004e411a  0f28c2                    MOVAPS XMM0,XMM2
004e411d  f30f59d1                  MULSS XMM2,XMM1
004e4121  f30f58c1                  ADDSS XMM0,XMM1
004e4125  f30f5cc2                  SUBSS XMM0,XMM2
004e4129  f30f5ec8                  DIVSS XMM1,XMM0
004e412d  f30f598e64030000          MULSS XMM1,dword ptr [ESI + 0x364]
004e4135  a17816c700                MOV EAX,[0x00c71678]
004e413a  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004e4142  51                        PUSH ECX
004e4143  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004e414b  8bce                      MOV ECX,ESI
004e414d  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
004e4153  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004e4159  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
004e4161  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004e4169  c7042400000000            MOV dword ptr [ESP],0x0
004e4170  50                        PUSH EAX
004e4171  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
004e4176  e8c5aa1d00                CALL 0x006bec40
004e417b  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
004e417e  8bf0                      MOV ESI,EAX
004e4180  e8bba61d00                CALL 0x006be840
004e4185  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
004e418d  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004e4192  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
004e419a  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004e419f  e8bcad2000                CALL 0x006eef60
004e41a4  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
004e41ac  83ec0c                    SUB ESP,0xc
004e41af  8bcf                      MOV ECX,EDI
004e41b1  660f6ec0                  MOVD XMM0,EAX
004e41b5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e41b9  c1e81f                    SHR EAX,0x1f
004e41bc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e41c5  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
004e41cd  8d4598                    LEA EAX,[EBP + -0x68]
004e41d0  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
004e41d8  c704240000a041            MOV dword ptr [ESP],0x41a00000
004e41df  50                        PUSH EAX
004e41e0  660f5ad0                  CVTPD2PS XMM2,XMM0
004e41e4  8d4584                    LEA EAX,[EBP + -0x7c]
004e41e7  50                        PUSH EAX
004e41e8  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004e41f0  0f28c2                    MOVAPS XMM0,XMM2
004e41f3  f30f595590                MULSS XMM2,dword ptr [EBP + -0x70]
004e41f8  f30f594588                MULSS XMM0,dword ptr [EBP + -0x78]
004e41fd  f30f59155ca8ba00          MULSS XMM2,dword ptr [0x00baa85c]
004e4205  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
004e420d  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
004e4212  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004e4216  f30f11559c                MOVSS dword ptr [EBP + -0x64],XMM2
004e421b  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
004e4220  e82bed3200                CALL 0x00812f50
004e4225  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
004e422a  8b7da0                    MOV EDI,dword ptr [EBP + -0x60]
004e422d  0f28c8                    MOVAPS XMM1,XMM0
004e4230  f30f5c8d7cffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff7c]
004e4238  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e4240  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004e4245  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
004e424b  0f28d0                    MOVAPS XMM2,XMM0
004e424e  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004e4253  f30f118d6cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM1
004e425b  f30f5c5580                SUBSS XMM2,dword ptr [EBP + -0x80]
004e4260  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
004e4268  83feff                    CMP ESI,-0x1
004e426b  745f                      JZ 0x004e42cc
004e426d  8d4598                    LEA EAX,[EBP + -0x68]
004e4270  0f57d2                    XORPS XMM2,XMM2
004e4273  50                        PUSH EAX
004e4274  8bcf                      MOV ECX,EDI
004e4276  e855401f00                CALL 0x006d82d0
004e427b  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
004e4283  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
004e4289  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004e428d  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
004e4295  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004e429a  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
004e42a2  f30f58c1                  ADDSS XMM0,XMM1
004e42a6  f30f118d6cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM1
004e42ae  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
004e42b6  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e42be  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
004e42c3  f30f58c2                  ADDSS XMM0,XMM2
004e42c7  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004e42cc  0f28c2                    MOVAPS XMM0,XMM2
004e42cf  e88c5afbff                CALL 0x00499d60
004e42d4  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e42dc  f30f100d10a9ba00          MOVSS XMM1,dword ptr [0x00baa910]
004e42e4  f30f580530abba00          ADDSS XMM0,dword ptr [0x00baab30]
004e42ec  f30f58c1                  ADDSS XMM0,XMM1
004e42f0  f30f5e05b4a9ba00          DIVSS XMM0,dword ptr [0x00baa9b4]
004e42f8  f30f2cc0                  CVTTSS2SI EAX,XMM0
004e42fc  2503000080                AND EAX,0x80000003
004e4301  7905                      JNS 0x004e4308
004e4303  48                        DEC EAX
004e4304  83c8fc                    OR EAX,0xfffffffc
004e4307  40                        INC EAX
004e4308  03c0                      ADD EAX,EAX
004e430a  894588                    MOV dword ptr [EBP + -0x78],EAX
004e430d  660f6ec0                  MOVD XMM0,EAX
004e4311  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e4314  f30f59c1                  MULSS XMM0,XMM1
004e4318  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e4320  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004e4325  e81692f3ff                CALL 0x0041d540
004e432a  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004e432f  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
004e4334  e8e791f3ff                CALL 0x0041d520
004e4339  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004e433e  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004e4346  e8f591f3ff                CALL 0x0041d540
004e434b  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004e4350  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004e4358  e8c391f3ff                CALL 0x0041d520
004e435d  f30f106d94                MOVSS XMM5,dword ptr [EBP + -0x6c]
004e4362  f30f1065a0                MOVSS XMM4,dword ptr [EBP + -0x60]
004e4367  0f28dd                    MOVAPS XMM3,XMM5
004e436a  f30f10956cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff6c]
004e4372  0f28cc                    MOVAPS XMM1,XMM4
004e4375  f30f59c8                  MULSS XMM1,XMM0
004e4379  0f28f5                    MOVAPS XMM6,XMM5
004e437c  f30f59759c                MULSS XMM6,dword ptr [EBP + -0x64]
004e4381  f30f59d8                  MULSS XMM3,XMM0
004e4385  0f28c4                    MOVAPS XMM0,XMM4
004e4388  f30f59459c                MULSS XMM0,dword ptr [EBP + -0x64]
004e438d  f30f5cf1                  SUBSS XMM6,XMM1
004e4391  f30f58d8                  ADDSS XMM3,XMM0
004e4395  83feff                    CMP ESI,-0x1
004e4398  7437                      JZ 0x004e43d1
004e439a  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004e43a1  9f                        LAHF
004e43a2  f6c444                    TEST AH,0x44
004e43a5  7a1e                      JP 0x004e43c5
004e43a7  f30f10a564ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff64]
004e43af  0f2e2544b6c700            UCOMISS XMM4,dword ptr [0x00c7b644]
004e43b6  9f                        LAHF
004e43b7  f6c444                    TEST AH,0x44
004e43ba  7a09                      JP 0x004e43c5
004e43bc  33c0                      XOR EAX,EAX
004e43be  85c0                      TEST EAX,EAX
004e43c0  e9b1000000                JMP 0x004e4476
004e43c5  b801000000                MOV EAX,0x1
004e43ca  85c0                      TEST EAX,EAX
004e43cc  e9a5000000                JMP 0x004e4476
004e43d1  0f28c4                    MOVAPS XMM0,XMM4
004e43d4  0f28cd                    MOVAPS XMM1,XMM5
004e43d7  f30f10a564ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff64]
004e43df  f30f59c4                  MULSS XMM0,XMM4
004e43e3  f30f59ca                  MULSS XMM1,XMM2
004e43e7  f30f58c8                  ADDSS XMM1,XMM0
004e43eb  0f57c0                    XORPS XMM0,XMM0
004e43ee  0f2fc8                    COMISS XMM1,XMM0
004e43f1  0f86daf9ffff              JBE 0x004e3dd1
004e43f7  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
004e43ff  f30f59dc                  MULSS XMM3,XMM4
004e4403  f30f59f2                  MULSS XMM6,XMM2
004e4407  f30f58de                  ADDSS XMM3,XMM6
004e440b  0f541d40cbba00            ANDPS XMM3,xmmword ptr [0x00bacb40]
004e4412  0f2fc3                    COMISS XMM0,XMM3
004e4415  0f86b6f9ffff              JBE 0x004e3dd1
004e441b  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
004e4423  8d4d98                    LEA ECX,[EBP + -0x68]
004e4426  a17816c700                MOV EAX,[0x00c71678]
004e442b  6a00                      PUSH 0x0
004e442d  6a00                      PUSH 0x0
004e442f  6a00                      PUSH 0x0
004e4431  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004e4439  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
004e443e  6a00                      PUSH 0x0
004e4440  6a01                      PUSH 0x1
004e4442  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
004e444a  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
004e4452  51                        PUSH ECX
004e4453  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004e4459  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
004e445e  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
004e4463  51                        PUSH ECX
004e4464  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004e446a  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004e446f  e87cc93000                CALL 0x007f0df0
004e4474  84c0                      TEST AL,AL
004e4476  0f8455f9ffff              JZ 0x004e3dd1
004e447c  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004e4480  8d4d90                    LEA ECX,[EBP + -0x70]
004e4483  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e4489  7565                      JNZ 0x004e44f0
004e448b  c74590dd000000            MOV dword ptr [EBP + -0x70],0xdd
004e4492  e8e9224700                CALL 0x00956780
004e4497  83ec08                    SUB ESP,0x8
004e449a  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e44a2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e44a9  6a00                      PUSH 0x0
004e44ab  6a14                      PUSH 0x14
004e44ad  51                        PUSH ECX
004e44ae  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e44b5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e44bb  ff7590                    PUSH dword ptr [EBP + -0x70]
004e44be  e86d974400                CALL 0x0092dc30
004e44c3  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
004e44c6  8d4f48                    LEA ECX,[EDI + 0x48]
004e44c9  99                        CDQ
004e44ca  2bc2                      SUB EAX,EDX
004e44cc  d1f8                      SAR EAX,0x1
004e44ce  6a00                      PUSH 0x0
004e44d0  ff34851006b600            PUSH dword ptr [EAX*0x4 + 0xb60610]
004e44d7  e8a45ef2ff                CALL 0x0040a380
004e44dc  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
004e44e1  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
004e44e6  f30f58c9                  ADDSS XMM1,XMM1
004e44ea  f30f58d2                  ADDSS XMM2,XMM2
004e44ee  eb66                      JMP 0x004e4556
004e44f0  c74590e0000000            MOV dword ptr [EBP + -0x70],0xe0
004e44f7  e884224700                CALL 0x00956780
004e44fc  83ec08                    SUB ESP,0x8
004e44ff  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e4507  c704246666663f            MOV dword ptr [ESP],0x3f666666
004e450e  6a00                      PUSH 0x0
004e4510  6a14                      PUSH 0x14
004e4512  51                        PUSH ECX
004e4513  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e451a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e4520  ff7590                    PUSH dword ptr [EBP + -0x70]
004e4523  e808974400                CALL 0x0092dc30
004e4528  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
004e452b  8d4f48                    LEA ECX,[EDI + 0x48]
004e452e  6a00                      PUSH 0x0
004e4530  ff34852006b600            PUSH dword ptr [EAX*0x4 + 0xb60620]
004e4537  e8445ef2ff                CALL 0x0040a380
004e453c  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
004e4541  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
004e4546  f30f590dcca4ba00          MULSS XMM1,dword ptr [0x00baa4cc]
004e454e  f30f5915cca4ba00          MULSS XMM2,dword ptr [0x00baa4cc]
004e4556  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
004e455e  8d87b00b0000              LEA EAX,[EDI + 0xbb0]
004e4564  8bc8                      MOV ECX,EAX
004e4566  f30f114904                MOVSS dword ptr [ECX + 0x4],XMM1
004e456b  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004e4572  c787b80b000000000040      MOV dword ptr [EDI + 0xbb8],0x40000000
004e457c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e4586  c7871004000004000000      MOV dword ptr [EDI + 0x410],0x4
004e4590  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004e4596  8987440b0000              MOV dword ptr [EDI + 0xb44],EAX
004e459c  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004e45a2  8987480b0000              MOV dword ptr [EDI + 0xb48],EAX
004e45a8  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
004e45b2  e91af8ffff                JMP 0x004e3dd1
