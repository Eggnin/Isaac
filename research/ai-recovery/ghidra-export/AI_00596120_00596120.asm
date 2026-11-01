; J460 NPC AI 0x00596120 AI_00596120
; types=951
; identities=951.0.0,951.1.0,951.10.0,951.100.0,951.101.0,951.102.0,951.103.0,951.104.0,951.11.0,951.2.0,951.20.0,951.21.0,951.22.0,951.23.0,951.3.0,951.30.0,951.31.0,951.40.0,951.41.0,951.42.0
; entry=00596120
00596120  55                        PUSH EBP
00596121  8bec                      MOV EBP,ESP
00596123  83e4f8                    AND ESP,0xfffffff8
00596126  83ec68                    SUB ESP,0x68
00596129  56                        PUSH ESI
0059612a  57                        PUSH EDI
0059612b  8bf9                      MOV EDI,ECX
0059612d  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
00596134  0f85ab000000              JNZ 0x005961e5
0059613a  a17816c700                MOV EAX,[0x00c71678]
0059613f  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00596147  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
0059614f  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00596155  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
0059615a  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
00596162  0f2fc8                    COMISS XMM1,XMM0
00596165  7618                      JBE 0x0059617f
00596167  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0059616f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00596177  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0059617f  837f3004                  CMP dword ptr [EDI + 0x30],0x4
00596183  0f84c50a0000              JZ 0x00596c4e
00596189  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00596191  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00596198  9f                        LAHF
00596199  f6c444                    TEST AH,0x44
0059619c  7a19                      JP 0x005961b7
0059619e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005961a6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005961ad  9f                        LAHF
005961ae  f6c444                    TEST AH,0x44
005961b1  0f8b970a0000              JNP 0x00596c4e
005961b7  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005961bf  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005961c7  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005961cf  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005961d7  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005961df  5f                        POP EDI
005961e0  5e                        POP ESI
005961e1  8be5                      MOV ESP,EBP
005961e3  5d                        POP EBP
005961e4  c3                        RET
005961e5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005961eb  f30f101d94aaba00          MOVSS XMM3,dword ptr [0x00baaa94]
005961f3  83e800                    SUB EAX,0x0
005961f6  0f842e040000              JZ 0x0059662a
005961fc  83e803                    SUB EAX,0x3
005961ff  7409                      JZ 0x0059620a
00596201  83e802                    SUB EAX,0x2
00596204  0f85ae040000              JNZ 0x005966b8
0059620a  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
00596212  0f57d2                    XORPS XMM2,XMM2
00596215  0f2ec2                    UCOMISS XMM0,XMM2
00596218  9f                        LAHF
00596219  f6c444                    TEST AH,0x44
0059621c  7b2e                      JNP 0x0059624c
0059621e  f30f59054cadba00          MULSS XMM0,dword ptr [0x00baad4c]
00596226  f30f100df8a1ba00          MOVSS XMM1,dword ptr [0x00baa1f8]
0059622e  f30f11874c030000          MOVSS dword ptr [EDI + 0x34c],XMM0
00596236  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0059623d  0f2fc8                    COMISS XMM1,XMM0
00596240  760a                      JBE 0x0059624c
00596242  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0059624c  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0059624f  83f802                    CMP EAX,0x2
00596252  0f856c010000              JNZ 0x005963c4
00596258  a17816c700                MOV EAX,[0x00c71678]
0059625d  8db73c030000              LEA ESI,[EDI + 0x33c]
00596263  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00596269  f30f10a18c780000          MOVSS XMM4,dword ptr [ECX + 0x788c]
00596271  0f2fe2                    COMISS XMM4,XMM2
00596274  7612                      JBE 0x00596288
00596276  f30f104914                MOVSS XMM1,dword ptr [ECX + 0x14]
0059627b  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0059627f  f30f58cb                  ADDSS XMM1,XMM3
00596283  0f2fc1                    COMISS XMM0,XMM1
00596286  7720                      JA 0x005962a8
00596288  0f2fd4                    COMISS XMM2,XMM4
0059628b  b802000000                MOV EAX,0x2
00596290  0f8653010000              JBE 0x005963e9
00596296  f30f10411c                MOVSS XMM0,dword ptr [ECX + 0x1c]
0059629b  f30f5cc3                  SUBSS XMM0,XMM3
0059629f  0f2f06                    COMISS XMM0,dword ptr [ESI]
005962a2  0f8641010000              JBE 0x005963e9
005962a8  51                        PUSH ECX
005962a9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005962b0  6a00                      PUSH 0x0
005962b2  6a02                      PUSH 0x2
005962b4  51                        PUSH ECX
005962b5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005962bc  8bcf                      MOV ECX,EDI
005962be  6889000000                PUSH 0x89
005962c3  e8d8081400                CALL 0x006d6ba0
005962c8  6a00                      PUSH 0x0
005962ca  ff359022b600              PUSH dword ptr [0x00b62290]
005962d0  8d4f48                    LEA ECX,[EDI + 0x48]
005962d3  c7473003000000            MOV dword ptr [EDI + 0x30],0x3
005962da  e8a140e7ff                CALL 0x0040a380
005962df  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
005962e5  6aff                      PUSH -0x1
005962e7  f30f104840                MOVSS XMM1,dword ptr [EAX + 0x40]
005962ec  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
005962f4  f30f10403c                MOVSS XMM0,dword ptr [EAX + 0x3c]
005962f9  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
005962ff  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
00596304  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
0059630a  ff742438                  PUSH dword ptr [ESP + 0x38]
0059630e  ff742438                  PUSH dword ptr [ESP + 0x38]
00596312  51                        PUSH ECX
00596313  8bcf                      MOV ECX,EDI
00596315  f30f110424                MOVSS dword ptr [ESP],XMM0
0059631a  e8815f1100                CALL 0x006ac2a0
0059631f  e83c8c1500                CALL 0x006eef60
00596324  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00596328  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00596330  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00596336  6a00                      PUSH 0x0
00596338  50                        PUSH EAX
00596339  6a04                      PUSH 0x4
0059633b  6a00                      PUSH 0x0
0059633d  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00596343  8d442438                  LEA EAX,[ESP + 0x38]
00596347  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0059634c  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
00596354  6840b6c700                PUSH 0xc7b640
00596359  50                        PUSH EAX
0059635a  6a01                      PUSH 0x1
0059635c  68b7030000                PUSH 0x3b7
00596361  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00596367  e8a4801600                CALL 0x006fe410
0059636c  8b8f30030000              MOV ECX,dword ptr [EDI + 0x330]
00596372  8bf0                      MOV ESI,EAX
00596374  6aff                      PUSH -0x1
00596376  f30f104940                MOVSS XMM1,dword ptr [ECX + 0x40]
0059637b  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00596383  f30f10413c                MOVSS XMM0,dword ptr [ECX + 0x3c]
00596388  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0059638e  f30f104138                MOVSS XMM0,dword ptr [ECX + 0x38]
00596393  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
00596399  ff742438                  PUSH dword ptr [ESP + 0x38]
0059639d  ff742438                  PUSH dword ptr [ESP + 0x38]
005963a1  51                        PUSH ECX
005963a2  8bce                      MOV ECX,ESI
005963a4  f30f110424                MOVSS dword ptr [ESP],XMM0
005963a9  e8f25e1100                CALL 0x006ac2a0
005963ae  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
005963b4  8bce                      MOV ECX,ESI
005963b6  888648010000              MOV byte ptr [ESI + 0x148],AL
005963bc  8b06                      MOV EAX,dword ptr [ESI]
005963be  ff500c                    CALL dword ptr [EAX + 0xc]
005963c1  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
005963c4  83f804                    CMP EAX,0x4
005963c7  7520                      JNZ 0x005963e9
005963c9  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005963d1  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
005963d9  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
005963e1  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005963e9  83bf640b000005            CMP dword ptr [EDI + 0xb64],0x5
005963f0  0f85c2020000              JNZ 0x005966b8
005963f6  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00596400  85c0                      TEST EAX,EAX
00596402  741b                      JZ 0x0059641f
00596404  83f802                    CMP EAX,0x2
00596407  7416                      JZ 0x0059641f
00596409  8d4c2448                  LEA ECX,[ESP + 0x48]
0059640d  e85ef8e9ff                CALL 0x00435c70
00596412  8b17                      MOV EDX,dword ptr [EDI]
00596414  8bcf                      MOV ECX,EDI
00596416  50                        PUSH EAX
00596417  ff5224                    CALL dword ptr [EDX + 0x24]
0059641a  e999020000                JMP 0x005966b8
0059641f  51                        PUSH ECX
00596420  c704240000803f            MOV dword ptr [ESP],0x3f800000
00596427  6a00                      PUSH 0x0
00596429  6a02                      PUSH 0x2
0059642b  51                        PUSH ECX
0059642c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00596433  8bcf                      MOV ECX,EDI
00596435  6889000000                PUSH 0x89
0059643a  e861071400                CALL 0x006d6ba0
0059643f  6a00                      PUSH 0x0
00596441  ff359022b600              PUSH dword ptr [0x00b62290]
00596447  8d4f48                    LEA ECX,[EDI + 0x48]
0059644a  c7473003000000            MOV dword ptr [EDI + 0x30],0x3
00596451  e82a3fe7ff                CALL 0x0040a380
00596456  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0059645c  6aff                      PUSH -0x1
0059645e  f30f104840                MOVSS XMM1,dword ptr [EAX + 0x40]
00596463  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
0059646b  f30f10403c                MOVSS XMM0,dword ptr [EAX + 0x3c]
00596470  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00596476  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
0059647b  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
00596481  ff742438                  PUSH dword ptr [ESP + 0x38]
00596485  ff742438                  PUSH dword ptr [ESP + 0x38]
00596489  51                        PUSH ECX
0059648a  8bcf                      MOV ECX,EDI
0059648c  f30f110424                MOVSS dword ptr [ESP],XMM0
00596491  e80a5e1100                CALL 0x006ac2a0
00596496  e8c58a1500                CALL 0x006eef60
0059649b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005964a3  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
005964ab  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005964b1  6a00                      PUSH 0x0
005964b3  50                        PUSH EAX
005964b4  6a04                      PUSH 0x4
005964b6  6a00                      PUSH 0x0
005964b8  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
005964be  8d442438                  LEA EAX,[ESP + 0x38]
005964c2  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005964ca  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
005964d2  6840b6c700                PUSH 0xc7b640
005964d7  50                        PUSH EAX
005964d8  6a01                      PUSH 0x1
005964da  68b7030000                PUSH 0x3b7
005964df  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
005964e5  e8267f1600                CALL 0x006fe410
005964ea  8b8f30030000              MOV ECX,dword ptr [EDI + 0x330]
005964f0  8bf0                      MOV ESI,EAX
005964f2  6aff                      PUSH -0x1
005964f4  f30f104940                MOVSS XMM1,dword ptr [ECX + 0x40]
005964f9  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00596501  f30f10413c                MOVSS XMM0,dword ptr [ECX + 0x3c]
00596506  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0059650c  f30f104138                MOVSS XMM0,dword ptr [ECX + 0x38]
00596511  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
00596517  ff742438                  PUSH dword ptr [ESP + 0x38]
0059651b  ff742438                  PUSH dword ptr [ESP + 0x38]
0059651f  51                        PUSH ECX
00596520  8bce                      MOV ECX,ESI
00596522  f30f110424                MOVSS dword ptr [ESP],XMM0
00596527  e8745d1100                CALL 0x006ac2a0
0059652c  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
00596532  888648010000              MOV byte ptr [ESI + 0x148],AL
00596538  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
0059653f  8b87b80b0000              MOV EAX,dword ptr [EDI + 0xbb8]
00596545  8986b80b0000              MOV dword ptr [ESI + 0xbb8],EAX
0059654b  8b87bc0b0000              MOV EAX,dword ptr [EDI + 0xbbc]
00596551  8986bc0b0000              MOV dword ptr [ESI + 0xbbc],EAX
00596557  8b06                      MOV EAX,dword ptr [ESI]
00596559  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00596561  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00596569  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0059656c  89442430                  MOV dword ptr [ESP + 0x30],EAX
00596570  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00596573  89442448                  MOV dword ptr [ESP + 0x48],EAX
00596577  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0059657a  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
0059657e  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00596581  89442450                  MOV dword ptr [ESP + 0x50],EAX
00596585  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00596588  89442454                  MOV dword ptr [ESP + 0x54],EAX
0059658c  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00596592  8bc1                      MOV EAX,ECX
00596594  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0059659a  2500010000                AND EAX,0x100
0059659f  83c800                    OR EAX,0x0
005965a2  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
005965a8  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005965b0  f30f114c245c              MOVSS dword ptr [ESP + 0x5c],XMM1
005965b6  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
005965be  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
005965c4  f30f114c2464              MOVSS dword ptr [ESP + 0x64],XMM1
005965ca  c744240801000000          MOV dword ptr [ESP + 0x8],0x1
005965d2  7508                      JNZ 0x005965dc
005965d4  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
005965dc  81e100000020              AND ECX,0x20000000
005965e2  83c900                    OR ECX,0x0
005965e5  7407                      JZ 0x005965ee
005965e7  b902000000                MOV ECX,0x2
005965ec  eb02                      JMP 0x005965f0
005965ee  33c9                      XOR ECX,ECX
005965f0  81e200004000              AND EDX,0x400000
005965f6  33c0                      XOR EAX,EAX
005965f8  0bc2                      OR EAX,EDX
005965fa  7407                      JZ 0x00596603
005965fc  b804000000                MOV EAX,0x4
00596601  eb02                      JMP 0x00596605
00596603  33c0                      XOR EAX,EAX
00596605  0bc1                      OR EAX,ECX
00596607  897c246c                  MOV dword ptr [ESP + 0x6c],EDI
0059660b  0b442408                  OR EAX,dword ptr [ESP + 0x8]
0059660f  8bce                      MOV ECX,ESI
00596611  89442468                  MOV dword ptr [ESP + 0x68],EAX
00596615  8d442448                  LEA EAX,[ESP + 0x48]
00596619  50                        PUSH EAX
0059661a  ff542434                  CALL dword ptr [ESP + 0x34]
0059661e  8b06                      MOV EAX,dword ptr [ESI]
00596620  8bce                      MOV ECX,ESI
00596622  ff500c                    CALL dword ptr [EAX + 0xc]
00596625  e98e000000                JMP 0x005966b8
0059662a  33d2                      XOR EDX,EDX
0059662c  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00596636  3b5730                    CMP EDX,dword ptr [EDI + 0x30]
00596639  8d4f48                    LEA ECX,[EDI + 0x48]
0059663c  be04000000                MOV ESI,0x4
00596641  1bd2                      SBB EDX,EDX
00596643  8bc6                      MOV EAX,ESI
00596645  235730                    AND EDX,dword ptr [EDI + 0x30]
00596648  3bd0                      CMP EDX,EAX
0059664a  6a00                      PUSH 0x0
0059664c  0f42c2                    CMOVC EAX,EDX
0059664f  ff34858422b600            PUSH dword ptr [EAX*0x4 + 0xb62284]
00596656  e8253de7ff                CALL 0x0040a380
0059665b  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00596661  818f6c01000008240000      OR dword ptr [EDI + 0x16c],0x2408
0059666b  83e1fb                    AND ECX,0xfffffffb
0059666e  81c911000544              OR ECX,0x44050011
00596674  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
0059667e  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00596684  33c9                      XOR ECX,ECX
00596686  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
00596689  1bc9                      SBB ECX,ECX
0059668b  234f30                    AND ECX,dword ptr [EDI + 0x30]
0059668e  3bce                      CMP ECX,ESI
00596690  0f42f1                    CMOVC ESI,ECX
00596693  8b04b59822b600            MOV EAX,dword ptr [ESI*0x4 + 0xb62298]
0059669a  898750030000              MOV dword ptr [EDI + 0x350],EAX
005966a0  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
005966a6  898734030000              MOV dword ptr [EDI + 0x334],EAX
005966ac  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
005966b2  898738030000              MOV dword ptr [EDI + 0x338],EAX
005966b8  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005966bd  0f57d2                    XORPS XMM2,XMM2
005966c0  0f2fc2                    COMISS XMM0,XMM2
005966c3  7623                      JBE 0x005966e8
005966c5  0f2f974c030000            COMISS XMM2,dword ptr [EDI + 0x34c]
005966cc  760a                      JBE 0x005966d8
005966ce  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
005966d6  eb08                      JMP 0x005966e0
005966d8  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
005966e0  f30f11874c030000          MOVSS dword ptr [EDI + 0x34c],XMM0
005966e8  a17816c700                MOV EAX,[0x00c71678]
005966ed  f30f101d94aaba00          MOVSS XMM3,dword ptr [0x00baaa94]
005966f5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005966fb  f30f10a08c780000          MOVSS XMM4,dword ptr [EAX + 0x788c]
00596703  0f2fe2                    COMISS XMM4,XMM2
00596706  7616                      JBE 0x0059671e
00596708  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
0059670d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00596715  f30f58cb                  ADDSS XMM1,XMM3
00596719  0f2fc1                    COMISS XMM0,XMM1
0059671c  7717                      JA 0x00596735
0059671e  0f2fd4                    COMISS XMM2,XMM4
00596721  761f                      JBE 0x00596742
00596723  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00596728  f30f5cc3                  SUBSS XMM0,XMM3
0059672c  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
00596733  760d                      JBE 0x00596742
00596735  8b07                      MOV EAX,dword ptr [EDI]
00596737  8bcf                      MOV ECX,EDI
00596739  ff5028                    CALL dword ptr [EAX + 0x28]
0059673c  5f                        POP EDI
0059673d  5e                        POP ESI
0059673e  8be5                      MOV ESP,EBP
00596740  5d                        POP EBP
00596741  c3                        RET
00596742  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00596749  0f84ff040000              JZ 0x00596c4e
0059674f  51                        PUSH ECX
00596750  c704240000803f            MOV dword ptr [ESP],0x3f800000
00596757  6a00                      PUSH 0x0
00596759  6a02                      PUSH 0x2
0059675b  51                        PUSH ECX
0059675c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00596763  8bcf                      MOV ECX,EDI
00596765  6889000000                PUSH 0x89
0059676a  e831041400                CALL 0x006d6ba0
0059676f  51                        PUSH ECX
00596770  c704240000803f            MOV dword ptr [ESP],0x3f800000
00596777  6a00                      PUSH 0x0
00596779  6a02                      PUSH 0x2
0059677b  51                        PUSH ECX
0059677c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00596783  8bcf                      MOV ECX,EDI
00596785  68e7010000                PUSH 0x1e7
0059678a  e811041400                CALL 0x006d6ba0
0059678f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00596795  6a04                      PUSH 0x4
00596797  e8d4ce1600                CALL 0x00703670
0059679c  33c0                      XOR EAX,EAX
0059679e  89442430                  MOV dword ptr [ESP + 0x30],EAX
005967a2  3987d0000000              CMP dword ptr [EDI + 0xd0],EAX
005967a8  0f86a0040000              JBE 0x00596c4e
005967ae  33c9                      XOR ECX,ECX
005967b0  8d7748                    LEA ESI,[EDI + 0x48]
005967b3  894c2408                  MOV dword ptr [ESP + 0x8],ECX
005967b7  85c0                      TEST EAX,EAX
005967b9  7808                      JS 0x005967c3
005967bb  3b8688000000              CMP EAX,dword ptr [ESI + 0x88]
005967c1  7c1f                      JL 0x005967e2
005967c3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
005967c7  8bce                      MOV ECX,ESI
005967c9  7202                      JC 0x005967cd
005967cb  8b0e                      MOV ECX,dword ptr [ESI]
005967cd  50                        PUSH EAX
005967ce  51                        PUSH ECX
005967cf  68a8a6b100                PUSH 0xb1a6a8
005967d4  6a10                      PUSH 0x10
005967d6  e8e5aa4700                CALL 0x00a112c0
005967db  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
005967df  83c410                    ADD ESP,0x10
005967e2  8b8684000000              MOV EAX,dword ptr [ESI + 0x84]
005967e8  03c1                      ADD EAX,ECX
005967ea  83781410                  CMP dword ptr [EAX + 0x14],0x10
005967ee  7202                      JC 0x005967f2
005967f0  8b00                      MOV EAX,dword ptr [EAX]
005967f2  50                        PUSH EAX
005967f3  8d44244c                  LEA EAX,[ESP + 0x4c]
005967f7  8bcf                      MOV ECX,EDI
005967f9  50                        PUSH EAX
005967fa  e821041200                CALL 0x006b6c20
005967ff  f30f104c2468              MOVSS XMM1,dword ptr [ESP + 0x68]
00596805  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0059680c  0f861c040000              JBE 0x00596c2e
00596812  f30f1044246c              MOVSS XMM0,dword ptr [ESP + 0x6c]
00596818  83ec08                    SUB ESP,0x8
0059681b  f30f58c1                  ADDSS XMM0,XMM1
0059681f  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
00596827  f30f59c1                  MULSS XMM0,XMM1
0059682b  f30f5e050cacba00          DIVSS XMM0,dword ptr [0x00baac0c]
00596833  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00596839  d9442430                  FLD dword ptr [ESP + 0x30]
0059683d  dd1c24                    FSTP qword ptr [ESP]
00596840  e8cca05500                CALL 0x00af0911
00596845  d95c2430                  FSTP dword ptr [ESP + 0x30]
00596849  d9442430                  FLD dword ptr [ESP + 0x30]
0059684d  83c408                    ADD ESP,0x8
00596850  d95c2428                  FSTP dword ptr [ESP + 0x28]
00596854  f30f2c442428              CVTTSS2SI EAX,dword ptr [ESP + 0x28]
0059685a  89442428                  MOV dword ptr [ESP + 0x28],EAX
0059685e  85c0                      TEST EAX,EAX
00596860  0f8ec8030000              JLE 0x00596c2e
00596866  e8f5861500                CALL 0x006eef60
0059686b  e8f0861500                CALL 0x006eef60
00596870  e8eb861500                CALL 0x006eef60
00596875  e8e6861500                CALL 0x006eef60
0059687a  8bf0                      MOV ESI,EAX
0059687c  e8df861500                CALL 0x006eef60
00596881  660f6ec0                  MOVD XMM0,EAX
00596885  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00596889  c1e81f                    SHR EAX,0x1f
0059688c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00596895  660f5ac0                  CVTPD2PS XMM0,XMM0
00596899  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005968a1  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005968a9  f30f58c0                  ADDSS XMM0,XMM0
005968ad  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
005968b3  e8a8861500                CALL 0x006eef60
005968b8  660f6ec0                  MOVD XMM0,EAX
005968bc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005968c0  c1e81f                    SHR EAX,0x1f
005968c3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005968cc  660f5ac0                  CVTPD2PS XMM0,XMM0
005968d0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005968d8  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
005968de  e87d861500                CALL 0x006eef60
005968e3  660f6ec0                  MOVD XMM0,EAX
005968e7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005968eb  c1e81f                    SHR EAX,0x1f
005968ee  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005968f7  660f5ac0                  CVTPD2PS XMM0,XMM0
005968fb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00596903  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0059690b  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00596913  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0059691b  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00596921  e81a6ce8ff                CALL 0x0041d540
00596926  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0059692c  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00596932  e8e96be8ff                CALL 0x0041d520
00596937  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0059693d  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00596945  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0059694b  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00596953  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00596959  e802861500                CALL 0x006eef60
0059695e  660f6ec0                  MOVD XMM0,EAX
00596962  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00596966  c1e81f                    SHR EAX,0x1f
00596969  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00596972  660f5ac0                  CVTPD2PS XMM0,XMM0
00596976  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059697e  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00596986  f30f580554a3ba00          ADDSS XMM0,dword ptr [0x00baa354]
0059698e  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00596994  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0059699a  e8a16be8ff                CALL 0x0041d540
0059699f  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
005969a5  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
005969ab  f30f59542420              MULSS XMM2,dword ptr [ESP + 0x20]
005969b1  f30f594c2418              MULSS XMM1,dword ptr [ESP + 0x18]
005969b7  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
005969bd  f30f5cd1                  SUBSS XMM2,XMM1
005969c1  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
005969c9  f30f59542424              MULSS XMM2,dword ptr [ESP + 0x24]
005969cf  f30f58c2                  ADDSS XMM0,XMM2
005969d3  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
005969d9  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
005969df  e83c6be8ff                CALL 0x0041d520
005969e4  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
005969ea  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
005969f0  f30f59542418              MULSS XMM2,dword ptr [ESP + 0x18]
005969f6  6a00                      PUSH 0x0
005969f8  f30f594c2424              MULSS XMM1,dword ptr [ESP + 0x24]
005969fe  56                        PUSH ESI
005969ff  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
00596a05  6a00                      PUSH 0x0
00596a07  f30f58d1                  ADDSS XMM2,XMM1
00596a0b  57                        PUSH EDI
00596a0c  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00596a14  f30f59542434              MULSS XMM2,dword ptr [ESP + 0x34]
00596a1a  f30f58c2                  ADDSS XMM0,XMM2
00596a1e  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00596a24  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00596a2a  8d442448                  LEA EAX,[ESP + 0x48]
00596a2e  50                        PUSH EAX
00596a2f  8d44245c                  LEA EAX,[ESP + 0x5c]
00596a33  50                        PUSH EAX
00596a34  6a02                      PUSH 0x2
00596a36  68b7030000                PUSH 0x3b7
00596a3b  e8d0791600                CALL 0x006fe410
00596a40  8bf0                      MOV ESI,EAX
00596a42  e819851500                CALL 0x006eef60
00596a47  8bce                      MOV ECX,ESI
00596a49  660f6ec0                  MOVD XMM0,EAX
00596a4d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00596a51  c1e81f                    SHR EAX,0x1f
00596a54  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00596a5d  660f5ac8                  CVTPD2PS XMM1,XMM0
00596a61  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00596a69  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
00596a71  f30f118e380c0000          MOVSS dword ptr [ESI + 0xc38],XMM1
00596a79  f30f598eb4030000          MULSS XMM1,dword ptr [ESI + 0x3b4]
00596a81  0f28c1                    MOVAPS XMM0,XMM1
00596a84  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00596a8c  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00596a94  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00596a9c  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00596aa4  8b06                      MOV EAX,dword ptr [ESI]
00596aa6  c786340300000000803e      MOV dword ptr [ESI + 0x334],0x3e800000
00596ab0  c7863803000000000000      MOV dword ptr [ESI + 0x338],0x0
00596aba  ff500c                    CALL dword ptr [EAX + 0xc]
00596abd  e89e841500                CALL 0x006eef60
00596ac2  8bf0                      MOV ESI,EAX
00596ac4  e897841500                CALL 0x006eef60
00596ac9  660f6ec0                  MOVD XMM0,EAX
00596acd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00596ad1  c1e81f                    SHR EAX,0x1f
00596ad4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00596add  660f5ac0                  CVTPD2PS XMM0,XMM0
00596ae1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00596ae9  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00596af1  f30f58c0                  ADDSS XMM0,XMM0
00596af5  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00596afb  e860841500                CALL 0x006eef60
00596b00  660f6ec0                  MOVD XMM0,EAX
00596b04  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00596b08  c1e81f                    SHR EAX,0x1f
00596b0b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00596b14  660f5ac0                  CVTPD2PS XMM0,XMM0
00596b18  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00596b20  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00596b26  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00596b2c  e80f6ae8ff                CALL 0x0041d540
00596b31  f30f59442420              MULSS XMM0,dword ptr [ESP + 0x20]
00596b37  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00596b3f  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00596b45  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00596b4b  e8d069e8ff                CALL 0x0041d520
00596b50  f30f59442420              MULSS XMM0,dword ptr [ESP + 0x20]
00596b56  8d442440                  LEA EAX,[ESP + 0x40]
00596b5a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00596b60  6a00                      PUSH 0x0
00596b62  56                        PUSH ESI
00596b63  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00596b6b  6a00                      PUSH 0x0
00596b6d  57                        PUSH EDI
00596b6e  50                        PUSH EAX
00596b6f  8d44245c                  LEA EAX,[ESP + 0x5c]
00596b73  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
00596b79  50                        PUSH EAX
00596b7a  6a3b                      PUSH 0x3b
00596b7c  68e8030000                PUSH 0x3e8
00596b81  e88a781600                CALL 0x006fe410
00596b86  8b8f4c030000              MOV ECX,dword ptr [EDI + 0x34c]
00596b8c  8bf0                      MOV ESI,EAX
00596b8e  898e4c030000              MOV dword ptr [ESI + 0x34c],ECX
00596b94  8b8f50030000              MOV ECX,dword ptr [EDI + 0x350]
00596b9a  898e50030000              MOV dword ptr [ESI + 0x350],ECX
00596ba0  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00596ba8  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00596bb0  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00596bb8  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
00596bc0  e89b831500                CALL 0x006eef60
00596bc5  660f6ec0                  MOVD XMM0,EAX
00596bc9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00596bcd  c1e81f                    SHR EAX,0x1f
00596bd0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00596bd9  660f5ac0                  CVTPD2PS XMM0,XMM0
00596bdd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00596be5  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00596bed  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00596bf5  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00596bfd  e85e831500                CALL 0x006eef60
00596c02  33d2                      XOR EDX,EDX
00596c04  b90f000000                MOV ECX,0xf
00596c09  f7f1                      DIV ECX
00596c0b  8b06                      MOV EAX,dword ptr [ESI]
00596c0d  03d1                      ADD EDX,ECX
00596c0f  8bce                      MOV ECX,ESI
00596c11  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
00596c17  899660040000              MOV dword ptr [ESI + 0x460],EDX
00596c1d  ff500c                    CALL dword ptr [EAX + 0xc]
00596c20  836c242801                SUB dword ptr [ESP + 0x28],0x1
00596c25  0f853bfcffff              JNZ 0x00596866
00596c2b  8d7748                    LEA ESI,[EDI + 0x48]
00596c2e  8b442430                  MOV EAX,dword ptr [ESP + 0x30]
00596c32  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00596c36  40                        INC EAX
00596c37  83c118                    ADD ECX,0x18
00596c3a  89442430                  MOV dword ptr [ESP + 0x30],EAX
00596c3e  894c2408                  MOV dword ptr [ESP + 0x8],ECX
00596c42  3b87d0000000              CMP EAX,dword ptr [EDI + 0xd0]
00596c48  0f8269fbffff              JC 0x005967b7
00596c4e  5f                        POP EDI
00596c4f  5e                        POP ESI
00596c50  8be5                      MOV ESP,EBP
00596c52  5d                        POP EBP
00596c53  c3                        RET
