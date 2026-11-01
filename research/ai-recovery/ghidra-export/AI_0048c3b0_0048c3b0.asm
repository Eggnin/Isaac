; J460 NPC AI 0x0048c3b0 AI_0048c3b0
; types=402
; identities=402.0.0
; entry=0048c3b0
0048c3b0  53                        PUSH EBX
0048c3b1  8bdc                      MOV EBX,ESP
0048c3b3  83ec08                    SUB ESP,0x8
0048c3b6  83e4f8                    AND ESP,0xfffffff8
0048c3b9  83c404                    ADD ESP,0x4
0048c3bc  55                        PUSH EBP
0048c3bd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0048c3c0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0048c3c4  8bec                      MOV EBP,ESP
0048c3c6  6aff                      PUSH -0x1
0048c3c8  68662daf00                PUSH 0xaf2d66
0048c3cd  64a100000000              MOV EAX,FS:[0x0]
0048c3d3  50                        PUSH EAX
0048c3d4  53                        PUSH EBX
0048c3d5  81ecb0010000              SUB ESP,0x1b0
0048c3db  a1b493bf00                MOV EAX,[0x00bf93b4]
0048c3e0  33c5                      XOR EAX,EBP
0048c3e2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0048c3e5  56                        PUSH ESI
0048c3e6  57                        PUSH EDI
0048c3e7  50                        PUSH EAX
0048c3e8  8d45f4                    LEA EAX,[EBP + -0xc]
0048c3eb  64a300000000              MOV FS:[0x0],EAX
0048c3f1  8bf9                      MOV EDI,ECX
0048c3f3  89bdc0feffff              MOV dword ptr [EBP + 0xfffffec0],EDI
0048c3f9  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0048c400  8b5730                    MOV EDX,dword ptr [EDI + 0x30]
0048c403  8995fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EDX
0048c409  0f8583000000              JNZ 0x0048c492
0048c40f  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0048c416  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0048c41c  8d9548feffff              LEA EDX,[EBP + 0xfffffe48]
0048c422  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048c42c  c78568feffff9a99193f      MOV dword ptr [EBP + 0xfffffe68],0x3f19999a
0048c436  0f57c0                    XORPS XMM0,XMM0
0048c439  c7856cfeffffcdcccc3e      MOV dword ptr [EBP + 0xfffffe6c],0x3ecccccd
0048c443  b003                      MOV AL,0x3
0048c445  c78570feffff00000000      MOV dword ptr [EBP + 0xfffffe70],0x0
0048c44f  3bca                      CMP ECX,EDX
0048c451  7423                      JZ 0x0048c476
0048c453  8b8570feffff              MOV EAX,dword ptr [EBP + 0xfffffe70]
0048c459  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0048c45d  f30f7e8568feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe68]
0048c465  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0048c46a  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0048c46d  894128                    MOV dword ptr [ECX + 0x28],EAX
0048c470  8a87640b0000              MOV AL,byte ptr [EDI + 0xb64]
0048c476  c687c40b0000ff            MOV byte ptr [EDI + 0xbc4],0xff
0048c47d  8887c60b0000              MOV byte ptr [EDI + 0xbc6],AL
0048c483  c78754030000d0070000      MOV dword ptr [EDI + 0x354],0x7d0
0048c48d  e97a290000                JMP 0x0048ee0c
0048c492  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
0048c498  83fa01                    CMP EDX,0x1
0048c49b  b95e000000                MOV ECX,0x5e
0048c4a0  b81a000000                MOV EAX,0x1a
0048c4a5  0f45c1                    CMOVNZ EAX,ECX
0048c4a8  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0048c4ae  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
0048c4b4  8bc1                      MOV EAX,ECX
0048c4b6  83e040                    AND EAX,0x40
0048c4b9  83c800                    OR EAX,0x0
0048c4bc  740a                      JZ 0x0048c4c8
0048c4be  c785b4feffff17000000      MOV dword ptr [EBP + 0xfffffeb4],0x17
0048c4c8  8bc1                      MOV EAX,ECX
0048c4ca  2580000000                AND EAX,0x80
0048c4cf  83c800                    OR EAX,0x0
0048c4d2  740a                      JZ 0x0048c4de
0048c4d4  c785b4feffff19000000      MOV dword ptr [EBP + 0xfffffeb4],0x19
0048c4de  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
0048c4e6  0fb687c00b0000            MOVZX EAX,byte ptr [EDI + 0xbc0]
0048c4ed  0f28ca                    MOVAPS XMM1,XMM2
0048c4f0  f30f5e0d24a9ba00          DIVSS XMM1,dword ptr [0x00baa924]
0048c4f8  40                        INC EAX
0048c4f9  0f28c2                    MOVAPS XMM0,XMM2
0048c4fc  0f28da                    MOVAPS XMM3,XMM2
0048c4ff  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0048c507  f30f5e1d1ca8ba00          DIVSS XMM3,dword ptr [0x00baa81c]
0048c50f  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048c517  0f28c2                    MOVAPS XMM0,XMM2
0048c51a  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0048c522  f30f119de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM3
0048c52a  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
0048c532  660f6ec0                  MOVD XMM0,EAX
0048c536  0fb687c10b0000            MOVZX EAX,byte ptr [EDI + 0xbc1]
0048c53d  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048c540  40                        INC EAX
0048c541  f30f59c1                  MULSS XMM0,XMM1
0048c545  0f28ca                    MOVAPS XMM1,XMM2
0048c548  f30f5cc8                  SUBSS XMM1,XMM0
0048c54c  660f6ec0                  MOVD XMM0,EAX
0048c550  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048c553  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
0048c55b  f30f59c3                  MULSS XMM0,XMM3
0048c55f  f30f5cd0                  SUBSS XMM2,XMM0
0048c563  0f28c2                    MOVAPS XMM0,XMM2
0048c566  f30f1195ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM2
0048c56e  f30f58c3                  ADDSS XMM0,XMM3
0048c572  f30f109f80030000          MOVSS XMM3,dword ptr [EDI + 0x380]
0048c57a  f30f119dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM3
0048c582  0f28cb                    MOVAPS XMM1,XMM3
0048c585  0f2ed0                    UCOMISS XMM2,XMM0
0048c588  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0048c590  9f                        LAHF
0048c591  f6c444                    TEST AH,0x44
0048c594  7a41                      JP 0x0048c5d7
0048c596  68d81bb800                PUSH 0xb81bd8
0048c59b  6a10                      PUSH 0x10
0048c59d  e81e4d5800                CALL 0x00a112c0
0048c5a2  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0048c5aa  83c408                    ADD ESP,0x8
0048c5ad  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0048c5b3  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
0048c5b9  f30f1095ccfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffecc]
0048c5c1  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0048c5c9  f30f109dd0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffed0]
0048c5d1  8b95fcfeffff              MOV EDX,dword ptr [EBP + 0xfffffefc]
0048c5d7  0f2f8d10ffffff            COMISS XMM1,dword ptr [EBP + 0xffffff10]
0048c5de  c785bcfeffff05000000      MOV dword ptr [EBP + 0xfffffebc],0x5
0048c5e8  b801000000                MOV EAX,0x1
0048c5ed  c78514ffffff01000000      MOV dword ptr [EBP + 0xffffff14],0x1
0048c5f7  f30f5cc2                  SUBSS XMM0,XMM2
0048c5fb  f30f5cda                  SUBSS XMM3,XMM2
0048c5ff  0f4785bcfeffff            CMOVA EAX,dword ptr [EBP + 0xfffffebc]
0048c606  83fa01                    CMP EDX,0x1
0048c609  0f448514ffffff            CMOVZ EAX,dword ptr [EBP + 0xffffff14]
0048c610  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0048c616  b803000000                MOV EAX,0x3
0048c61b  f30f5ed8                  DIVSS XMM3,XMM0
0048c61f  c78514ffffff0f000000      MOV dword ptr [EBP + 0xffffff14],0xf
0048c629  0f458514ffffff            CMOVNZ EAX,dword ptr [EBP + 0xffffff14]
0048c630  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0048c636  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
0048c63e  0f2fc1                    COMISS XMM0,XMM1
0048c641  f30f119dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM3
0048c649  7311                      JNC 0x0048c65c
0048c64b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0048c652  8bd6                      MOV EDX,ESI
0048c654  898df0feffff              MOV dword ptr [EBP + 0xfffffef0],ECX
0048c65a  745b                      JZ 0x0048c6b7
0048c65c  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
0048c663  8bd6                      MOV EDX,ESI
0048c665  898df0feffff              MOV dword ptr [EBP + 0xfffffef0],ECX
0048c66b  744a                      JZ 0x0048c6b7
0048c66d  83bfc80b000000            CMP dword ptr [EDI + 0xbc8],0x0
0048c674  898df0feffff              MOV dword ptr [EBP + 0xfffffef0],ECX
0048c67a  753b                      JNZ 0x0048c6b7
0048c67c  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0048c682  33c0                      XOR EAX,EAX
0048c684  8bb768010000              MOV ESI,dword ptr [EDI + 0x168]
0048c68a  8bca                      MOV ECX,EDX
0048c68c  81e100000020              AND ECX,0x20000000
0048c692  89b5f0feffff              MOV dword ptr [EBP + 0xfffffef0],ESI
0048c698  0bc1                      OR EAX,ECX
0048c69a  751b                      JNZ 0x0048c6b7
0048c69c  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0048c6a3  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0048c6ad  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0048c6b7  33c0                      XOR EAX,EAX
0048c6b9  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
0048c6bf  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
0048c6c5  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
0048c6cb  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0048c6d1  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
0048c6d7  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
0048c6dd  81e200000010              AND EDX,0x10000000
0048c6e3  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0048c6e6  0bc2                      OR EAX,EDX
0048c6e8  7453                      JZ 0x0048c73d
0048c6ea  8bb5fcfeffff              MOV ESI,dword ptr [EBP + 0xfffffefc]
0048c6f0  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0048c6f6  50                        PUSH EAX
0048c6f7  51                        PUSH ECX
0048c6f8  8bcf                      MOV ECX,EDI
0048c6fa  6aff                      PUSH -0x1
0048c6fc  83fe01                    CMP ESI,0x1
0048c6ff  7504                      JNZ 0x0048c705
0048c701  6a17                      PUSH 0x17
0048c703  eb05                      JMP 0x0048c70a
0048c705  68d9000000                PUSH 0xd9
0048c70a  e8d1002200                CALL 0x006ac7e0
0048c70f  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
0048c715  b906000000                MOV ECX,0x6
0048c71a  8b95a4feffff              MOV EDX,dword ptr [EBP + 0xfffffea4]
0048c720  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
0048c726  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0048c72c  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
0048c732  8995b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EDX
0048c738  e973010000                JMP 0x0048c8b0
0048c73d  c68594feffff00            MOV byte ptr [EBP + 0xfffffe94],0x0
0048c744  c78598feffff00000000      MOV dword ptr [EBP + 0xfffffe98],0x0
0048c74e  c7859cfeffff00000000      MOV dword ptr [EBP + 0xfffffe9c],0x0
0048c758  c785a0feffff00000000      MOV dword ptr [EBP + 0xfffffea0],0x0
0048c762  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0048c766  a17816c700                MOV EAX,[0x00c71678]
0048c76b  6a00                      PUSH 0x0
0048c76d  6a01                      PUSH 0x1
0048c76f  6aff                      PUSH -0x1
0048c771  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048c777  81c118120000              ADD ECX,0x1218
0048c77d  83bdfcfeffff01            CMP dword ptr [EBP + 0xfffffefc],0x1
0048c784  6aff                      PUSH -0x1
0048c786  754b                      JNZ 0x0048c7d3
0048c788  6a17                      PUSH 0x17
0048c78a  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
0048c790  50                        PUSH EAX
0048c791  e8cae7f8ff                CALL 0x0041af60
0048c796  80bd84feffff00            CMP byte ptr [EBP + 0xfffffe84],0x0
0048c79d  c68594feffff01            MOV byte ptr [EBP + 0xfffffe94],0x1
0048c7a4  8b7004                    MOV ESI,dword ptr [EAX + 0x4]
0048c7a7  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0048c7aa  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0048c7ad  89b598feffff              MOV dword ptr [EBP + 0xfffffe98],ESI
0048c7b3  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
0048c7b9  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
0048c7bf  8985a0feffff              MOV dword ptr [EBP + 0xfffffea0],EAX
0048c7c5  7570                      JNZ 0x0048c837
0048c7c7  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0048c7cb  8b9588feffff              MOV EDX,dword ptr [EBP + 0xfffffe88]
0048c7d1  eb4c                      JMP 0x0048c81f
0048c7d3  68d9000000                PUSH 0xd9
0048c7d8  8d8574feffff              LEA EAX,[EBP + 0xfffffe74]
0048c7de  50                        PUSH EAX
0048c7df  e87ce7f8ff                CALL 0x0041af60
0048c7e4  80bd74feffff00            CMP byte ptr [EBP + 0xfffffe74],0x0
0048c7eb  c68594feffff01            MOV byte ptr [EBP + 0xfffffe94],0x1
0048c7f2  8b7004                    MOV ESI,dword ptr [EAX + 0x4]
0048c7f5  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0048c7f8  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0048c7fb  89b598feffff              MOV dword ptr [EBP + 0xfffffe98],ESI
0048c801  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
0048c807  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
0048c80d  8985a0feffff              MOV dword ptr [EBP + 0xfffffea0],EAX
0048c813  7522                      JNZ 0x0048c837
0048c815  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0048c819  8b9578feffff              MOV EDX,dword ptr [EBP + 0xfffffe78]
0048c81f  6a00                      PUSH 0x0
0048c821  6a00                      PUSH 0x0
0048c823  b101                      MOV CL,0x1
0048c825  e886805d00                CALL 0x00a648b0
0048c82a  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0048c82e  83c408                    ADD ESP,0x8
0048c831  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
0048c837  85c0                      TEST EAX,EAX
0048c839  745d                      JZ 0x0048c898
0048c83b  33c9                      XOR ECX,ECX
0048c83d  33ff                      XOR EDI,EDI
0048c83f  90                        NOP
0048c840  3bcf                      CMP ECX,EDI
0048c842  740f                      JZ 0x0048c853
0048c844  8b06                      MOV EAX,dword ptr [ESI]
0048c846  8901                      MOV dword ptr [ECX],EAX
0048c848  83c104                    ADD ECX,0x4
0048c84b  898da8feffff              MOV dword ptr [EBP + 0xfffffea8],ECX
0048c851  eb19                      JMP 0x0048c86c
0048c853  56                        PUSH ESI
0048c854  51                        PUSH ECX
0048c855  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
0048c85b  e8c000faff                CALL 0x0042c920
0048c860  8bbdacfeffff              MOV EDI,dword ptr [EBP + 0xfffffeac]
0048c866  8b8da8feffff              MOV ECX,dword ptr [EBP + 0xfffffea8]
0048c86c  83c604                    ADD ESI,0x4
0048c86f  83ad00ffffff01            SUB dword ptr [EBP + 0xffffff00],0x1
0048c876  75c8                      JNZ 0x0048c840
0048c878  8b95a4feffff              MOV EDX,dword ptr [EBP + 0xfffffea4]
0048c87e  89bdb8feffff              MOV dword ptr [EBP + 0xfffffeb8],EDI
0048c884  8bbdc0feffff              MOV EDI,dword ptr [EBP + 0xfffffec0]
0048c88a  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
0048c890  8995b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EDX
0048c896  eb02                      JMP 0x0048c89a
0048c898  33d2                      XOR EDX,EDX
0048c89a  8bb5fcfeffff              MOV ESI,dword ptr [EBP + 0xfffffefc]
0048c8a0  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
0048c8a6  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0048c8aa  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
0048c8b0  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
0048c8b8  2bc2                      SUB EAX,EDX
0048c8ba  c1f802                    SAR EAX,0x2
0048c8bd  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0048c8c4  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
0048c8ca  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
0048c8d0  0f82c9040000              JC 0x0048cd9f
0048c8d6  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
0048c8dd  0f84bc040000              JZ 0x0048cd9f
0048c8e3  c78514ffffff00000000      MOV dword ptr [EBP + 0xffffff14],0x0
0048c8ed  0f1f00                    NOP dword ptr [EAX]
0048c8f0  3bc1                      CMP EAX,ECX
0048c8f2  0f8da1040000              JGE 0x0048cd99
0048c8f8  e863262600                CALL 0x006eef60
0048c8fd  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0048c905  83fe01                    CMP ESI,0x1
0048c908  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0048c910  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048c916  8bf0                      MOV ESI,EAX
0048c918  6a00                      PUSH 0x0
0048c91a  6a00                      PUSH 0x0
0048c91c  6a00                      PUSH 0x0
0048c91e  51                        PUSH ECX
0048c91f  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0048c925  8d873c030000              LEA EAX,[EDI + 0x33c]
0048c92b  f30f110424                MOVSS dword ptr [ESP],XMM0
0048c930  50                        PUSH EAX
0048c931  0f85eb010000              JNZ 0x0048cb22
0048c937  8d8540feffff              LEA EAX,[EBP + 0xfffffe40]
0048c93d  50                        PUSH EAX
0048c93e  e8dd6b3800                CALL 0x00813520
0048c943  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048c949  56                        PUSH ESI
0048c94a  6a00                      PUSH 0x0
0048c94c  57                        PUSH EDI
0048c94d  6840b6c700                PUSH 0xc7b640
0048c952  50                        PUSH EAX
0048c953  6a00                      PUSH 0x0
0048c955  6a17                      PUSH 0x17
0048c957  e8c4c1f9ff                CALL 0x00428b20
0048c95c  8bf0                      MOV ESI,EAX
0048c95e  85f6                      TEST ESI,ESI
0048c960  0f8408040000              JZ 0x0048cd6e
0048c966  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0048c96d  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0048c973  ff8500ffffff              INC dword ptr [EBP + 0xffffff00]
0048c979  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
0048c97f  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
0048c985  898660030000              MOV dword ptr [ESI + 0x360],EAX
0048c98b  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
0048c991  898664030000              MOV dword ptr [ESI + 0x364],EAX
0048c997  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0048c99f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0048c9a7  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0048c9af  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0048c9b7  0f28c1                    MOVAPS XMM0,XMM1
0048c9ba  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
0048c9c2  f30f59c1                  MULSS XMM0,XMM1
0048c9c6  0f28ca                    MOVAPS XMM1,XMM2
0048c9c9  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0048c9d1  f30f59ca                  MULSS XMM1,XMM2
0048c9d5  f30f58c1                  ADDSS XMM0,XMM1
0048c9d9  e87290faff                CALL 0x00435a50
0048c9de  0f28c8                    MOVAPS XMM1,XMM0
0048c9e1  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0048c9e8  7631                      JBE 0x0048ca1b
0048c9ea  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0048c9f2  f30f5ec1                  DIVSS XMM0,XMM1
0048c9f6  0f28c8                    MOVAPS XMM1,XMM0
0048c9f9  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
0048ca01  f30f598d08ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff08]
0048ca09  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048ca11  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
0048ca19  eb20                      JMP 0x0048ca3b
0048ca1b  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
0048ca23  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
0048ca2b  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
0048ca33  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0048ca3b  e820252600                CALL 0x006eef60
0048ca40  660f6ec0                  MOVD XMM0,EAX
0048ca44  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048ca48  c1e81f                    SHR EAX,0x1f
0048ca4b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048ca54  660f5ac0                  CVTPD2PS XMM0,XMM0
0048ca58  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048ca60  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048ca68  f30f58c0                  ADDSS XMM0,XMM0
0048ca6c  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0048ca74  e8c70af9ff                CALL 0x0041d540
0048ca79  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048ca81  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
0048ca89  e8920af9ff                CALL 0x0041d520
0048ca8e  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
0048ca96  0f28d0                    MOVAPS XMM2,XMM0
0048ca99  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0048caa0  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
0048caa8  f30f588d08ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff08]
0048cab0  f30f589510ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff10]
0048cab8  9f                        LAHF
0048cab9  f6c444                    TEST AH,0x44
0048cabc  7b38                      JNP 0x0048caf6
0048cabe  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
0048cac6  f30f59c8                  MULSS XMM1,XMM0
0048caca  f30f59d0                  MULSS XMM2,XMM0
0048cace  f30f5ecb                  DIVSS XMM1,XMM3
0048cad2  f30f5ed3                  DIVSS XMM2,XMM3
0048cad6  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
0048cade  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
0048cae6  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
0048caee  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
0048caf6  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0048cafe  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0048cb04  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0048cb0c  83f812                    CMP EAX,0x12
0048cb0f  0f85f4010000              JNZ 0x0048cd09
0048cb15  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0048cb1d  e9f4010000                JMP 0x0048cd16
0048cb22  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
0048cb28  50                        PUSH EAX
0048cb29  e8f2693800                CALL 0x00813520
0048cb2e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048cb34  56                        PUSH ESI
0048cb35  6a00                      PUSH 0x0
0048cb37  57                        PUSH EDI
0048cb38  6840b6c700                PUSH 0xc7b640
0048cb3d  50                        PUSH EAX
0048cb3e  6a02                      PUSH 0x2
0048cb40  68d9000000                PUSH 0xd9
0048cb45  e8d6bff9ff                CALL 0x00428b20
0048cb4a  8bf0                      MOV ESI,EAX
0048cb4c  85f6                      TEST ESI,ESI
0048cb4e  0f841a020000              JZ 0x0048cd6e
0048cb54  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0048cb5b  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0048cb61  ff8500ffffff              INC dword ptr [EBP + 0xffffff00]
0048cb67  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
0048cb6d  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
0048cb73  898660030000              MOV dword ptr [ESI + 0x360],EAX
0048cb79  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
0048cb7f  898664030000              MOV dword ptr [ESI + 0x364],EAX
0048cb85  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0048cb8d  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0048cb95  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0048cb9d  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0048cba5  0f28c1                    MOVAPS XMM0,XMM1
0048cba8  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0048cbb0  f30f59c1                  MULSS XMM0,XMM1
0048cbb4  0f28ca                    MOVAPS XMM1,XMM2
0048cbb7  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
0048cbbf  f30f59ca                  MULSS XMM1,XMM2
0048cbc3  f30f58c1                  ADDSS XMM0,XMM1
0048cbc7  e8848efaff                CALL 0x00435a50
0048cbcc  0f28c8                    MOVAPS XMM1,XMM0
0048cbcf  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0048cbd6  7631                      JBE 0x0048cc09
0048cbd8  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0048cbe0  f30f5ec1                  DIVSS XMM0,XMM1
0048cbe4  0f28c8                    MOVAPS XMM1,XMM0
0048cbe7  f30f598508ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff08]
0048cbef  f30f598d10ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff10]
0048cbf7  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0048cbff  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0048cc07  eb20                      JMP 0x0048cc29
0048cc09  f30f109510ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff10]
0048cc11  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
0048cc19  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0048cc21  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
0048cc29  e832232600                CALL 0x006eef60
0048cc2e  660f6ec0                  MOVD XMM0,EAX
0048cc32  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048cc36  c1e81f                    SHR EAX,0x1f
0048cc39  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048cc42  660f5ac0                  CVTPD2PS XMM0,XMM0
0048cc46  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048cc4e  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048cc56  f30f58c0                  ADDSS XMM0,XMM0
0048cc5a  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048cc62  e8d908f9ff                CALL 0x0041d540
0048cc67  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0048cc6f  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0048cc77  e8a408f9ff                CALL 0x0041d520
0048cc7c  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
0048cc84  0f28d0                    MOVAPS XMM2,XMM0
0048cc87  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0048cc8e  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
0048cc96  f30f588d10ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff10]
0048cc9e  f30f589508ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff08]
0048cca6  9f                        LAHF
0048cca7  f6c444                    TEST AH,0x44
0048ccaa  7b38                      JNP 0x0048cce4
0048ccac  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
0048ccb4  f30f59c8                  MULSS XMM1,XMM0
0048ccb8  f30f59d0                  MULSS XMM2,XMM0
0048ccbc  f30f5ecb                  DIVSS XMM1,XMM3
0048ccc0  f30f5ed3                  DIVSS XMM2,XMM3
0048ccc4  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
0048cccc  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
0048ccd4  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
0048ccdc  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
0048cce4  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0048ccec  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0048ccf2  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0048ccfa  83f812                    CMP EAX,0x12
0048ccfd  750a                      JNZ 0x0048cd09
0048ccff  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0048cd07  eb0d                      JMP 0x0048cd16
0048cd09  83f813                    CMP EAX,0x13
0048cd0c  7510                      JNZ 0x0048cd1e
0048cd0e  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0048cd16  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0048cd1e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048cd24  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
0048cd2a  c78510ffffffed000000      MOV dword ptr [EBP + 0xffffff10],0xed
0048cd34  e8479a4c00                CALL 0x00956780
0048cd39  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
0048cd41  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048cd47  83ec08                    SUB ESP,0x8
0048cd4a  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048cd52  f30f110424                MOVSS dword ptr [ESP],XMM0
0048cd57  6a00                      PUSH 0x0
0048cd59  6a0a                      PUSH 0xa
0048cd5b  51                        PUSH ECX
0048cd5c  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0048cd63  ffb510ffffff              PUSH dword ptr [EBP + 0xffffff10]
0048cd69  e8c20e4a00                CALL 0x0092dc30
0048cd6e  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0048cd74  8bb5fcfeffff              MOV ESI,dword ptr [EBP + 0xfffffefc]
0048cd7a  40                        INC EAX
0048cd7b  3b85ecfeffff              CMP EAX,dword ptr [EBP + 0xfffffeec]
0048cd81  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
0048cd87  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0048cd8d  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
0048cd93  0f8c57fbffff              JL 0x0048c8f0
0048cd99  fe87c00b0000              INC byte ptr [EDI + 0xbc0]
0048cd9f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048cda3  0f849f000000              JZ 0x0048ce48
0048cda9  6888d9b100                PUSH 0xb1d988
0048cdae  8d4f78                    LEA ECX,[EDI + 0x78]
0048cdb1  e81ae0f7ff                CALL 0x0040add0
0048cdb6  84c0                      TEST AL,AL
0048cdb8  0f848a000000              JZ 0x0048ce48
0048cdbe  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0048cdc6  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0048cdcc  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0048cdd4  83f812                    CMP EAX,0x12
0048cdd7  750a                      JNZ 0x0048cde3
0048cdd9  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0048cde1  eb0d                      JMP 0x0048cdf0
0048cde3  83f813                    CMP EAX,0x13
0048cde6  7510                      JNZ 0x0048cdf8
0048cde8  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0048cdf0  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0048cdf8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048cdfe  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0048ce04  c78514ffffff48000000      MOV dword ptr [EBP + 0xffffff14],0x48
0048ce0e  e86d994c00                CALL 0x00956780
0048ce13  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
0048ce1b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048ce21  83ec08                    SUB ESP,0x8
0048ce24  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048ce2c  f30f110424                MOVSS dword ptr [ESP],XMM0
0048ce31  6a00                      PUSH 0x0
0048ce33  6a02                      PUSH 0x2
0048ce35  51                        PUSH ECX
0048ce36  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048ce3d  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
0048ce43  e8e80d4a00                CALL 0x0092dc30
0048ce48  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0048ce4e  33c0                      XOR EAX,EAX
0048ce50  81e100000010              AND ECX,0x10000000
0048ce56  0bc1                      OR EAX,ECX
0048ce58  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0048ce5e  742f                      JZ 0x0048ce8f
0048ce60  83f903                    CMP ECX,0x3
0048ce63  7433                      JZ 0x0048ce98
0048ce65  a17816c700                MOV EAX,[0x00c71678]
0048ce6a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048ce70  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0048ce73  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0048ce77  7416                      JZ 0x0048ce8f
0048ce79  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048ce83  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048ce8d  eb09                      JMP 0x0048ce98
0048ce8f  83f903                    CMP ECX,0x3
0048ce92  0f856e030000              JNZ 0x0048d206
0048ce98  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048cea0  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0048cea8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048ceb0  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
0048ceb8  0f2f0534a3ba00            COMISS XMM0,dword ptr [0x00baa334]
0048cebf  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0048cec2  7262                      JC 0x0048cf26
0048cec4  85c9                      TEST ECX,ECX
0048cec6  7452                      JZ 0x0048cf1a
0048cec8  83791410                  CMP dword ptr [ECX + 0x14],0x10
0048cecc  8bc1                      MOV EAX,ECX
0048cece  7202                      JC 0x0048ced2
0048ced0  8b01                      MOV EAX,dword ptr [ECX]
0048ced2  b9b8d9b100                MOV ECX,0xb1d9b8
0048ced7  8a10                      MOV DL,byte ptr [EAX]
0048ced9  3a11                      CMP DL,byte ptr [ECX]
0048cedb  751a                      JNZ 0x0048cef7
0048cedd  84d2                      TEST DL,DL
0048cedf  7412                      JZ 0x0048cef3
0048cee1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048cee4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048cee7  750e                      JNZ 0x0048cef7
0048cee9  83c002                    ADD EAX,0x2
0048ceec  83c102                    ADD ECX,0x2
0048ceef  84d2                      TEST DL,DL
0048cef1  75e4                      JNZ 0x0048ced7
0048cef3  33c0                      XOR EAX,EAX
0048cef5  eb05                      JMP 0x0048cefc
0048cef7  1bc0                      SBB EAX,EAX
0048cef9  83c801                    OR EAX,0x1
0048cefc  85c0                      TEST EAX,EAX
0048cefe  751a                      JNZ 0x0048cf1a
0048cf00  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048cf03  80783400                  CMP byte ptr [EAX + 0x34],0x0
0048cf07  0f84f0000000              JZ 0x0048cffd
0048cf0d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048cf14  0f85e3000000              JNZ 0x0048cffd
0048cf1a  6a01                      PUSH 0x1
0048cf1c  68b8d9b100                PUSH 0xb1d9b8
0048cf21  e9bc000000                JMP 0x0048cfe2
0048cf26  0f2f0530a2ba00            COMISS XMM0,dword ptr [0x00baa230]
0048cf2d  725b                      JC 0x0048cf8a
0048cf2f  85c9                      TEST ECX,ECX
0048cf31  744e                      JZ 0x0048cf81
0048cf33  83791410                  CMP dword ptr [ECX + 0x14],0x10
0048cf37  8bc1                      MOV EAX,ECX
0048cf39  7202                      JC 0x0048cf3d
0048cf3b  8b01                      MOV EAX,dword ptr [ECX]
0048cf3d  b9c4d9b100                MOV ECX,0xb1d9c4
0048cf42  8a10                      MOV DL,byte ptr [EAX]
0048cf44  3a11                      CMP DL,byte ptr [ECX]
0048cf46  751a                      JNZ 0x0048cf62
0048cf48  84d2                      TEST DL,DL
0048cf4a  7412                      JZ 0x0048cf5e
0048cf4c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048cf4f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048cf52  750e                      JNZ 0x0048cf62
0048cf54  83c002                    ADD EAX,0x2
0048cf57  83c102                    ADD ECX,0x2
0048cf5a  84d2                      TEST DL,DL
0048cf5c  75e4                      JNZ 0x0048cf42
0048cf5e  33c0                      XOR EAX,EAX
0048cf60  eb05                      JMP 0x0048cf67
0048cf62  1bc0                      SBB EAX,EAX
0048cf64  83c801                    OR EAX,0x1
0048cf67  85c0                      TEST EAX,EAX
0048cf69  7516                      JNZ 0x0048cf81
0048cf6b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048cf6e  80783400                  CMP byte ptr [EAX + 0x34],0x0
0048cf72  0f8485000000              JZ 0x0048cffd
0048cf78  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048cf7f  757c                      JNZ 0x0048cffd
0048cf81  6a01                      PUSH 0x1
0048cf83  68c4d9b100                PUSH 0xb1d9c4
0048cf88  eb58                      JMP 0x0048cfe2
0048cf8a  85c9                      TEST ECX,ECX
0048cf8c  744d                      JZ 0x0048cfdb
0048cf8e  83791410                  CMP dword ptr [ECX + 0x14],0x10
0048cf92  8bc1                      MOV EAX,ECX
0048cf94  7202                      JC 0x0048cf98
0048cf96  8b01                      MOV EAX,dword ptr [ECX]
0048cf98  b9a0d9b100                MOV ECX,0xb1d9a0
0048cf9d  0f1f00                    NOP dword ptr [EAX]
0048cfa0  8a10                      MOV DL,byte ptr [EAX]
0048cfa2  3a11                      CMP DL,byte ptr [ECX]
0048cfa4  751a                      JNZ 0x0048cfc0
0048cfa6  84d2                      TEST DL,DL
0048cfa8  7412                      JZ 0x0048cfbc
0048cfaa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048cfad  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048cfb0  750e                      JNZ 0x0048cfc0
0048cfb2  83c002                    ADD EAX,0x2
0048cfb5  83c102                    ADD ECX,0x2
0048cfb8  84d2                      TEST DL,DL
0048cfba  75e4                      JNZ 0x0048cfa0
0048cfbc  33c0                      XOR EAX,EAX
0048cfbe  eb05                      JMP 0x0048cfc5
0048cfc0  1bc0                      SBB EAX,EAX
0048cfc2  83c801                    OR EAX,0x1
0048cfc5  85c0                      TEST EAX,EAX
0048cfc7  7512                      JNZ 0x0048cfdb
0048cfc9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048cfcc  80783400                  CMP byte ptr [EAX + 0x34],0x0
0048cfd0  742b                      JZ 0x0048cffd
0048cfd2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048cfd9  7522                      JNZ 0x0048cffd
0048cfdb  6a01                      PUSH 0x1
0048cfdd  68a0d9b100                PUSH 0xb1d9a0
0048cfe2  8d4f48                    LEA ECX,[EDI + 0x48]
0048cfe5  e8e6d5f7ff                CALL 0x0040a5d0
0048cfea  84c0                      TEST AL,AL
0048cfec  740f                      JZ 0x0048cffd
0048cfee  8d4f78                    LEA ECX,[EDI + 0x78]
0048cff1  e8bad1f7ff                CALL 0x0040a1b0
0048cff6  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0048cffd  83bf100400001e            CMP dword ptr [EDI + 0x410],0x1e
0048d004  c78754030000d0070000      MOV dword ptr [EDI + 0x354],0x7d0
0048d00e  0f8ee7010000              JLE 0x0048d1fb
0048d014  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0048d01c  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0048d024  0f2fc1                    COMISS XMM0,XMM1
0048d027  0f825c010000              JC 0x0048d189
0048d02d  e82e1f2600                CALL 0x006eef60
0048d032  33d2                      XOR EDX,EDX
0048d034  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0048d03c  b964000000                MOV ECX,0x64
0048d041  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0048d049  f7f1                      DIV ECX
0048d04b  0f57d2                    XORPS XMM2,XMM2
0048d04e  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0048d056  0f2ed0                    UCOMISS XMM2,XMM0
0048d059  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
0048d05f  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048d067  9f                        LAHF
0048d068  f6c444                    TEST AH,0x44
0048d06b  7a22                      JP 0x0048d08f
0048d06d  68d81bb800                PUSH 0xb81bd8
0048d072  6a10                      PUSH 0x10
0048d074  e847425800                CALL 0x00a112c0
0048d079  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
0048d081  83c408                    ADD ESP,0x8
0048d084  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0048d08c  0f57d2                    XORPS XMM2,XMM2
0048d08f  f30f5cca                  SUBSS XMM1,XMM2
0048d093  fe87c10b0000              INC byte ptr [EDI + 0xbc1]
0048d099  f30f5cc2                  SUBSS XMM0,XMM2
0048d09d  f30f5ec8                  DIVSS XMM1,XMM0
0048d0a1  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
0048d0a9  f30f5fca                  MAXSS XMM1,XMM2
0048d0ad  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0048d0b5  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0048d0bd  f30f5cc1                  SUBSS XMM0,XMM1
0048d0c1  f30f2cf0                  CVTTSS2SI ESI,XMM0
0048d0c5  8bc6                      MOV EAX,ESI
0048d0c7  99                        CDQ
0048d0c8  2bc2                      SUB EAX,EDX
0048d0ca  d1f8                      SAR EAX,0x1
0048d0cc  80bfc60b00000a            CMP byte ptr [EDI + 0xbc6],0xa
0048d0d3  0f45c6                    CMOVNZ EAX,ESI
0048d0d6  3985c8feffff              CMP dword ptr [EBP + 0xfffffec8],EAX
0048d0dc  0f8d84000000              JGE 0x0048d166
0048d0e2  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0048d0ec  c687c60b00000a            MOV byte ptr [EDI + 0xbc6],0xa
0048d0f3  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048d0fa  e8611e2600                CALL 0x006eef60
0048d0ff  33d2                      XOR EDX,EDX
0048d101  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048d107  b90a000000                MOV ECX,0xa
0048d10c  c78514ffffffa4010000      MOV dword ptr [EBP + 0xffffff14],0x1a4
0048d116  f7f1                      DIV ECX
0048d118  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0048d11e  80c203                    ADD DL,0x3
0048d121  8897c50b0000              MOV byte ptr [EDI + 0xbc5],DL
0048d127  e854964c00                CALL 0x00956780
0048d12c  83ec08                    SUB ESP,0x8
0048d12f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048d137  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048d13e  6a00                      PUSH 0x0
0048d140  6a02                      PUSH 0x2
0048d142  51                        PUSH ECX
0048d143  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048d14a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048d150  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
0048d156  e8d50a4a00                CALL 0x0092dc30
0048d15b  ff8710040000              INC dword ptr [EDI + 0x410]
0048d161  e9691b0000                JMP 0x0048eccf
0048d166  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0048d170  c687c60b000008            MOV byte ptr [EDI + 0xbc6],0x8
0048d177  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048d17e  ff8710040000              INC dword ptr [EDI + 0x410]
0048d184  e9461b0000                JMP 0x0048eccf
0048d189  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0048d18e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0048d195  762a                      JBE 0x0048d1c1
0048d197  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0048d19f  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0048d1a7  0f2fc8                    COMISS XMM1,XMM0
0048d1aa  7615                      JBE 0x0048d1c1
0048d1ac  ff8710040000              INC dword ptr [EDI + 0x410]
0048d1b2  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0048d1bc  e90e1b0000                JMP 0x0048eccf
0048d1c1  ff7720                    PUSH dword ptr [EDI + 0x20]
0048d1c4  8bcf                      MOV ECX,EDI
0048d1c6  6a1e                      PUSH 0x1e
0048d1c8  e843f52100                CALL 0x006ac710
0048d1cd  84c0                      TEST AL,AL
0048d1cf  742a                      JZ 0x0048d1fb
0048d1d1  e88a1d2600                CALL 0x006eef60
0048d1d6  a803                      TEST AL,0x3
0048d1d8  7521                      JNZ 0x0048d1fb
0048d1da  e8811d2600                CALL 0x006eef60
0048d1df  a801                      TEST AL,0x1
0048d1e1  b904000000                MOV ECX,0x4
0048d1e6  b80b000000                MOV EAX,0xb
0048d1eb  0f44c1                    CMOVZ EAX,ECX
0048d1ee  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0048d1f4  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048d1fb  ff8710040000              INC dword ptr [EDI + 0x410]
0048d201  e9c91a0000                JMP 0x0048eccf
0048d206  83f90a                    CMP ECX,0xa
0048d209  0f85c2060000              JNZ 0x0048d8d1
0048d20f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048d217  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0048d21f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048d227  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048d22a  85f6                      TEST ESI,ESI
0048d22c  744d                      JZ 0x0048d27b
0048d22e  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048d232  8bc6                      MOV EAX,ESI
0048d234  7202                      JC 0x0048d238
0048d236  8b06                      MOV EAX,dword ptr [ESI]
0048d238  b9acd9b100                MOV ECX,0xb1d9ac
0048d23d  0f1f00                    NOP dword ptr [EAX]
0048d240  8a10                      MOV DL,byte ptr [EAX]
0048d242  3a11                      CMP DL,byte ptr [ECX]
0048d244  751a                      JNZ 0x0048d260
0048d246  84d2                      TEST DL,DL
0048d248  7412                      JZ 0x0048d25c
0048d24a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048d24d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048d250  750e                      JNZ 0x0048d260
0048d252  83c002                    ADD EAX,0x2
0048d255  83c102                    ADD ECX,0x2
0048d258  84d2                      TEST DL,DL
0048d25a  75e4                      JNZ 0x0048d240
0048d25c  33c0                      XOR EAX,EAX
0048d25e  eb05                      JMP 0x0048d265
0048d260  1bc0                      SBB EAX,EAX
0048d262  83c801                    OR EAX,0x1
0048d265  85c0                      TEST EAX,EAX
0048d267  7512                      JNZ 0x0048d27b
0048d269  384634                    CMP byte ptr [ESI + 0x34],AL
0048d26c  742e                      JZ 0x0048d29c
0048d26e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048d274  8d7748                    LEA ESI,[EDI + 0x48]
0048d277  7523                      JNZ 0x0048d29c
0048d279  eb03                      JMP 0x0048d27e
0048d27b  8d7748                    LEA ESI,[EDI + 0x48]
0048d27e  6a01                      PUSH 0x1
0048d280  68acd9b100                PUSH 0xb1d9ac
0048d285  8bce                      MOV ECX,ESI
0048d287  e844d3f7ff                CALL 0x0040a5d0
0048d28c  84c0                      TEST AL,AL
0048d28e  740c                      JZ 0x0048d29c
0048d290  8d4e30                    LEA ECX,[ESI + 0x30]
0048d293  e818cff7ff                CALL 0x0040a1b0
0048d298  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048d29c  c78754030000d0070000      MOV dword ptr [EDI + 0x354],0x7d0
0048d2a6  80bfc20b000000            CMP byte ptr [EDI + 0xbc2],0x0
0048d2ad  755c                      JNZ 0x0048d30b
0048d2af  e8ac1c2600                CALL 0x006eef60
0048d2b4  33d2                      XOR EDX,EDX
0048d2b6  b90c000000                MOV ECX,0xc
0048d2bb  f7f1                      DIV ECX
0048d2bd  8897c40b0000              MOV byte ptr [EDI + 0xbc4],DL
0048d2c3  e8981c2600                CALL 0x006eef60
0048d2c8  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0048d2d0  33d2                      XOR EDX,EDX
0048d2d2  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0048d2da  be03000000                MOV ESI,0x3
0048d2df  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048d2e7  f7f6                      DIV ESI
0048d2e9  f30f5cc8                  SUBSS XMM1,XMM0
0048d2ed  f30f590da8adba00          MULSS XMM1,dword ptr [0x00baada8]
0048d2f5  f30f2cc1                  CVTTSS2SI EAX,XMM1
0048d2f9  2ad0                      SUB DL,AL
0048d2fb  80c203                    ADD DL,0x3
0048d2fe  8897c30b0000              MOV byte ptr [EDI + 0xbc3],DL
0048d304  c687c20b000001            MOV byte ptr [EDI + 0xbc2],0x1
0048d30b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048d30f  0f842e030000              JZ 0x0048d643
0048d315  68dcd2b100                PUSH 0xb1d2dc
0048d31a  8d4f78                    LEA ECX,[EDI + 0x78]
0048d31d  e8aedaf7ff                CALL 0x0040add0
0048d322  84c0                      TEST AL,AL
0048d324  0f8419030000              JZ 0x0048d643
0048d32a  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0048d331  0f84c6000000              JZ 0x0048d3fd
0048d337  f30f108f9c010000          MOVSS XMM1,dword ptr [EDI + 0x19c]
0048d33f  f30f1097a0010000          MOVSS XMM2,dword ptr [EDI + 0x1a0]
0048d347  0f28c1                    MOVAPS XMM0,XMM1
0048d34a  f30f59c1                  MULSS XMM0,XMM1
0048d34e  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0048d356  0f28ca                    MOVAPS XMM1,XMM2
0048d359  f30f59ca                  MULSS XMM1,XMM2
0048d35d  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
0048d365  f30f58c1                  ADDSS XMM0,XMM1
0048d369  e8e286faff                CALL 0x00435a50
0048d36e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0048d375  7629                      JBE 0x0048d3a0
0048d377  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048d37f  f30f5ec8                  DIVSS XMM1,XMM0
0048d383  f30f10a79c010000          MOVSS XMM4,dword ptr [EDI + 0x19c]
0048d38b  f30f10afa0010000          MOVSS XMM5,dword ptr [EDI + 0x1a0]
0048d393  0f28c1                    MOVAPS XMM0,XMM1
0048d396  f30f59e0                  MULSS XMM4,XMM0
0048d39a  f30f59e9                  MULSS XMM5,XMM1
0048d39e  eb10                      JMP 0x0048d3b0
0048d3a0  f30f10a5ecfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffeec]
0048d3a8  f30f10adf4feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffef4]
0048d3b0  f30f109f38030000          MOVSS XMM3,dword ptr [EDI + 0x338]
0048d3b8  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
0048d3c0  0f28c3                    MOVAPS XMM0,XMM3
0048d3c3  0f28ca                    MOVAPS XMM1,XMM2
0048d3c6  f30f59c5                  MULSS XMM0,XMM5
0048d3ca  f30f59cc                  MULSS XMM1,XMM4
0048d3ce  f30f58c8                  ADDSS XMM1,XMM0
0048d3d2  0f28c1                    MOVAPS XMM0,XMM1
0048d3d5  f30f59cd                  MULSS XMM1,XMM5
0048d3d9  f30f59c4                  MULSS XMM0,XMM4
0048d3dd  f30f58c9                  ADDSS XMM1,XMM1
0048d3e1  f30f58c0                  ADDSS XMM0,XMM0
0048d3e5  f30f5cd9                  SUBSS XMM3,XMM1
0048d3e9  f30f5cd0                  SUBSS XMM2,XMM0
0048d3ed  f30f119f38030000          MOVSS dword ptr [EDI + 0x338],XMM3
0048d3f5  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
0048d3fd  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0048d405  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0048d40c  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0048d414  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0048d41c  f30f590dbca6ba00          MULSS XMM1,dword ptr [0x00baa6bc]
0048d424  f30f5915bca6ba00          MULSS XMM2,dword ptr [0x00baa6bc]
0048d42c  9f                        LAHF
0048d42d  f6c444                    TEST AH,0x44
0048d430  7b38                      JNP 0x0048d46a
0048d432  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0048d43a  f30f59c8                  MULSS XMM1,XMM0
0048d43e  f30f59d0                  MULSS XMM2,XMM0
0048d442  f30f5ecb                  DIVSS XMM1,XMM3
0048d446  f30f5ed3                  DIVSS XMM2,XMM3
0048d44a  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0048d452  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0048d45a  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0048d462  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0048d46a  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
0048d470  0fb6f0                    MOVZX ESI,AL
0048d473  888507ffffff              MOV byte ptr [EBP + 0xffffff07],AL
0048d479  660f6ec6                  MOVD XMM0,ESI
0048d47d  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048d480  f30f5e0534a8ba00          DIVSS XMM0,dword ptr [0x00baa834]
0048d488  0f28c8                    MOVAPS XMM1,XMM0
0048d48b  f30f590590aeba00          MULSS XMM0,dword ptr [0x00baae90]
0048d493  f30f590d08a7ba00          MULSS XMM1,dword ptr [0x00baa708]
0048d49b  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0048d4a3  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
0048d4ab  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0048d4b3  e88800f9ff                CALL 0x0041d540
0048d4b8  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048d4c0  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0048d4c8  e85300f9ff                CALL 0x0041d520
0048d4cd  f30f109df4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffef4]
0048d4d5  0f28c8                    MOVAPS XMM1,XMM0
0048d4d8  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0048d4e0  0f57e4                    XORPS XMM4,XMM4
0048d4e3  0f28d3                    MOVAPS XMM2,XMM3
0048d4e6  f30f59c4                  MULSS XMM0,XMM4
0048d4ea  f30f591d1ca8ba00          MULSS XMM3,dword ptr [0x00baa81c]
0048d4f2  f30f59d4                  MULSS XMM2,XMM4
0048d4f6  f30f58c3                  ADDSS XMM0,XMM3
0048d4fa  f30f5cd1                  SUBSS XMM2,XMM1
0048d4fe  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0048d506  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
0048d50e  f30f58c0                  ADDSS XMM0,XMM0
0048d512  f30f1195e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM2
0048d51a  e80100f9ff                CALL 0x0041d520
0048d51f  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0048d527  f30f5815e49fba00          ADDSS XMM2,dword ptr [0x00ba9fe4]
0048d52f  0fb687c30b0000            MOVZX EAX,byte ptr [EDI + 0xbc3]
0048d536  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
0048d53e  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0048d546  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
0048d54e  660f6ed0                  MOVD XMM2,EAX
0048d552  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048d55a  0f5bd2                    CVTDQ2PS XMM2,XMM2
0048d55d  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0048d565  f30f5eca                  DIVSS XMM1,XMM2
0048d569  660f6ec6                  MOVD XMM0,ESI
0048d56d  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048d570  e8abc70000                CALL 0x00499d20
0048d575  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048d57d  0f2fc8                    COMISS XMM1,XMM0
0048d580  0f86a0000000              JBE 0x0048d626
0048d586  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0048d58c  e89f19fbff                CALL 0x0043ef30
0048d591  8bb7780c0000              MOV ESI,dword ptr [EDI + 0xc78]
0048d597  c745ac05000000            MOV dword ptr [EBP + -0x54],0x5
0048d59e  c7852cffffffcdcc8c3f      MOV dword ptr [EBP + 0xffffff2c],0x3f8ccccd
0048d5a8  c7851cffffff00000cc2      MOV dword ptr [EBP + 0xffffff1c],0xc20c0000
0048d5b2  c78520ffffff00008040      MOV dword ptr [EBP + 0xffffff20],0x40800000
0048d5bc  85f6                      TEST ESI,ESI
0048d5be  7840                      JS 0x0048d600
0048d5c0  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0048d5c6  8b5068                    MOV EDX,dword ptr [EAX + 0x68]
0048d5c9  8b486c                    MOV ECX,dword ptr [EAX + 0x6c]
0048d5cc  b843082184                MOV EAX,0x84210843
0048d5d1  2bca                      SUB ECX,EDX
0048d5d3  8995ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EDX
0048d5d9  f7e9                      IMUL ECX
0048d5db  03d1                      ADD EDX,ECX
0048d5dd  c1fa06                    SAR EDX,0x6
0048d5e0  8bc2                      MOV EAX,EDX
0048d5e2  c1e81f                    SHR EAX,0x1f
0048d5e5  03c2                      ADD EAX,EDX
0048d5e7  3bf0                      CMP ESI,EAX
0048d5e9  7715                      JA 0x0048d600
0048d5eb  6bc67c                    IMUL EAX,ESI,0x7c
0048d5ee  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
0048d5f4  0385ecfeffff              ADD EAX,dword ptr [EBP + 0xfffffeec]
0048d5fa  50                        PUSH EAX
0048d5fb  e8f09bf7ff                CALL 0x004071f0
0048d600  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0048d606  8bcf                      MOV ECX,EDI
0048d608  50                        PUSH EAX
0048d609  6a00                      PUSH 0x0
0048d60b  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0048d611  50                        PUSH EAX
0048d612  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0048d618  50                        PUSH EAX
0048d619  e8c2dc2300                CALL 0x006cb2e0
0048d61e  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
0048d624  eb06                      JMP 0x0048d62c
0048d626  8a8507ffffff              MOV AL,byte ptr [EBP + 0xffffff07]
0048d62c  fec0                      INC AL
0048d62e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0048d638  8887c40b0000              MOV byte ptr [EDI + 0xbc4],AL
0048d63e  e911020000                JMP 0x0048d854
0048d643  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
0048d64a  0f858f010000              JNZ 0x0048d7df
0048d650  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048d656  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0048d65c  c78514ffffff48000000      MOV dword ptr [EBP + 0xffffff14],0x48
0048d666  e815914c00                CALL 0x00956780
0048d66b  83ec08                    SUB ESP,0x8
0048d66e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048d674  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048d67c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048d683  6a00                      PUSH 0x0
0048d685  6a02                      PUSH 0x2
0048d687  51                        PUSH ECX
0048d688  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048d68f  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
0048d695  e896054a00                CALL 0x0092dc30
0048d69a  e8c1182600                CALL 0x006eef60
0048d69f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048d6a5  8db73c030000              LEA ESI,[EDI + 0x33c]
0048d6ab  6a00                      PUSH 0x0
0048d6ad  68acd5c500                PUSH 0xc5d5ac
0048d6b2  68dcd5c500                PUSH 0xc5d5dc
0048d6b7  6a00                      PUSH 0x0
0048d6b9  50                        PUSH EAX
0048d6ba  6a00                      PUSH 0x0
0048d6bc  57                        PUSH EDI
0048d6bd  6840b6c700                PUSH 0xc7b640
0048d6c2  56                        PUSH ESI
0048d6c3  ffb5b4feffff              PUSH dword ptr [EBP + 0xfffffeb4]
0048d6c9  68e8030000                PUSH 0x3e8
0048d6ce  e84db4f9ff                CALL 0x00428b20
0048d6d3  50                        PUSH EAX
0048d6d4  e8d8316600                CALL 0x00af08b1
0048d6d9  83c414                    ADD ESP,0x14
0048d6dc  85c0                      TEST EAX,EAX
0048d6de  741b                      JZ 0x0048d6fb
0048d6e0  8b10                      MOV EDX,dword ptr [EAX]
0048d6e2  8bc8                      MOV ECX,EAX
0048d6e4  c780e400000000004040      MOV dword ptr [EAX + 0xe4],0x40400000
0048d6ee  c780e800000000004040      MOV dword ptr [EAX + 0xe8],0x40400000
0048d6f8  ff520c                    CALL dword ptr [EDX + 0xc]
0048d6fb  a17816c700                MOV EAX,[0x00c71678]
0048d700  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
0048d708  f30f591d90a4ba00          MULSS XMM3,dword ptr [0x00baa490]
0048d710  6aff                      PUSH -0x1
0048d712  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048d718  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0048d71e  56                        PUSH ESI
0048d71f  81c118120000              ADD ECX,0x1218
0048d725  50                        PUSH EAX
0048d726  e865d0f8ff                CALL 0x0041a790
0048d72b  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
0048d72f  33c0                      XOR EAX,EAX
0048d731  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
0048d737  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0048d73d  85f6                      TEST ESI,ESI
0048d73f  7475                      JZ 0x0048d7b6
0048d741  0f1f4000                  NOP dword ptr [EAX]
0048d745  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0048d750  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
0048d756  8b1481                    MOV EDX,dword ptr [ECX + EAX*0x4]
0048d759  817a28d9000000            CMP dword ptr [EDX + 0x28],0xd9
0048d760  7549                      JNZ 0x0048d7ab
0048d762  f30f108280030000          MOVSS XMM0,dword ptr [EDX + 0x380]
0048d76a  f30f588780030000          ADDSS XMM0,dword ptr [EDI + 0x380]
0048d772  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
0048d77a  8b3c81                    MOV EDI,dword ptr [ECX + EAX*0x4]
0048d77d  8d4dc4                    LEA ECX,[EBP + -0x3c]
0048d780  8b07                      MOV EAX,dword ptr [EDI]
0048d782  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
0048d785  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
0048d78b  50                        PUSH EAX
0048d78c  e87f3bfaff                CALL 0x00431310
0048d791  8d45c4                    LEA EAX,[EBP + -0x3c]
0048d794  8bcf                      MOV ECX,EDI
0048d796  50                        PUSH EAX
0048d797  ffd6                      CALL ESI
0048d799  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
0048d79f  8bbdc0feffff              MOV EDI,dword ptr [EBP + 0xfffffec0]
0048d7a5  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0048d7ab  40                        INC EAX
0048d7ac  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0048d7b2  3bc6                      CMP EAX,ESI
0048d7b4  729a                      JC 0x0048d750
0048d7b6  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0048d7ba  80bdd8feffff00            CMP byte ptr [EBP + 0xfffffed8],0x0
0048d7c1  751c                      JNZ 0x0048d7df
0048d7c3  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
0048d7c7  b101                      MOV CL,0x1
0048d7c9  8b95dcfeffff              MOV EDX,dword ptr [EBP + 0xfffffedc]
0048d7cf  6a00                      PUSH 0x0
0048d7d1  6a00                      PUSH 0x0
0048d7d3  e8d8705d00                CALL 0x00a648b0
0048d7d8  83c408                    ADD ESP,0x8
0048d7db  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0048d7df  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0048d7e9  e872172600                CALL 0x006eef60
0048d7ee  660f6ec0                  MOVD XMM0,EAX
0048d7f2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048d7f6  c1e81f                    SHR EAX,0x1f
0048d7f9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048d802  660f5ac0                  CVTPD2PS XMM0,XMM0
0048d806  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048d80e  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048d816  f30f58c0                  ADDSS XMM0,XMM0
0048d81a  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0048d822  e819fdf8ff                CALL 0x0041d540
0048d827  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048d82f  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0048d837  e8e4fcf8ff                CALL 0x0041d520
0048d83c  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
0048d844  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0048d84c  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0048d854  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048d858  740d                      JZ 0x0048d867
0048d85a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048d861  0f8568140000              JNZ 0x0048eccf
0048d867  8a87c50b0000              MOV AL,byte ptr [EDI + 0xbc5]
0048d86d  84c0                      TEST AL,AL
0048d86f  7440                      JZ 0x0048d8b1
0048d871  6a01                      PUSH 0x1
0048d873  fec8                      DEC AL
0048d875  8d4f48                    LEA ECX,[EDI + 0x48]
0048d878  68acd9b100                PUSH 0xb1d9ac
0048d87d  8887c50b0000              MOV byte ptr [EDI + 0xbc5],AL
0048d883  e848cdf7ff                CALL 0x0040a5d0
0048d888  84c0                      TEST AL,AL
0048d88a  740f                      JZ 0x0048d89b
0048d88c  8d4f78                    LEA ECX,[EDI + 0x78]
0048d88f  e81cc9f7ff                CALL 0x0040a1b0
0048d894  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0048d89b  c78754030000d0070000      MOV dword ptr [EDI + 0x354],0x7d0
0048d8a5  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048d8ac  e91e140000                JMP 0x0048eccf
0048d8b1  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048d8bb  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048d8c2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048d8cc  e9fe130000                JMP 0x0048eccf
0048d8d1  83f908                    CMP ECX,0x8
0048d8d4  0f84ba020000              JZ 0x0048db94
0048d8da  83f904                    CMP ECX,0x4
0048d8dd  0f84b1020000              JZ 0x0048db94
0048d8e3  83f90b                    CMP ECX,0xb
0048d8e6  0f84a8020000              JZ 0x0048db94
0048d8ec  83f910                    CMP ECX,0x10
0048d8ef  0f859a010000              JNZ 0x0048da8f
0048d8f5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048d8fd  8d4f48                    LEA ECX,[EDI + 0x48]
0048d900  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0048d908  6a00                      PUSH 0x0
0048d90a  683ce1b100                PUSH 0xb1e13c
0048d90f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048d917  e864caf7ff                CALL 0x0040a380
0048d91c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048d920  740d                      JZ 0x0048d92f
0048d922  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048d929  0f85a0130000              JNZ 0x0048eccf
0048d92f  8bcf                      MOV ECX,EDI
0048d931  e88a6c2200                CALL 0x006b45c0
0048d936  83bdfcfeffff01            CMP dword ptr [EBP + 0xfffffefc],0x1
0048d93d  0f85ac000000              JNZ 0x0048d9ef
0048d943  33f6                      XOR ESI,ESI
0048d945  e816162600                CALL 0x006eef60
0048d94a  8bce                      MOV ECX,ESI
0048d94c  d1e9                      SHR ECX,0x1
0048d94e  50                        PUSH EAX
0048d94f  8bc6                      MOV EAX,ESI
0048d951  83e001                    AND EAX,0x1
0048d954  660f6ec1                  MOVD XMM0,ECX
0048d958  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048d95c  c1e91f                    SHR ECX,0x1f
0048d95f  6a00                      PUSH 0x0
0048d961  57                        PUSH EDI
0048d962  6840b6c700                PUSH 0xc7b640
0048d967  f20f5804cd00cbba00        ADDSD XMM0,qword ptr [ECX*0x8 + 0xbacb00]
0048d970  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048d976  660f5ac0                  CVTPD2PS XMM0,XMM0
0048d97a  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0048d982  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048d98a  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0048d992  660f6ec0                  MOVD XMM0,EAX
0048d996  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048d99a  c1e81f                    SHR EAX,0x1f
0048d99d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048d9a6  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0048d9ac  50                        PUSH EAX
0048d9ad  6a01                      PUSH 0x1
0048d9af  68dc000000                PUSH 0xdc
0048d9b4  660f5ac0                  CVTPD2PS XMM0,XMM0
0048d9b8  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0048d9c0  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0048d9c8  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0048d9d0  e84bb1f9ff                CALL 0x00428b20
0048d9d5  46                        INC ESI
0048d9d6  83fe02                    CMP ESI,0x2
0048d9d9  0f8266ffffff              JC 0x0048d945
0048d9df  b812000000                MOV EAX,0x12
0048d9e4  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0048d9ea  e901140000                JMP 0x0048edf0
0048d9ef  6aff                      PUSH -0x1
0048d9f1  6a00                      PUSH 0x0
0048d9f3  6a01                      PUSH 0x1
0048d9f5  6805010000                PUSH 0x105
0048d9fa  8bcf                      MOV ECX,EDI
0048d9fc  e82f352300                CALL 0x006c0f30
0048da01  6800000010                PUSH 0x10000000
0048da06  6a00                      PUSH 0x0
0048da08  8bcf                      MOV ECX,EDI
0048da0a  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0048da11  e81a9af8ff                CALL 0x00417430
0048da16  84c0                      TEST AL,AL
0048da18  7429                      JZ 0x0048da43
0048da1a  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0048da1d  8d4f48                    LEA ECX,[EDI + 0x48]
0048da20  6a01                      PUSH 0x1
0048da22  ff772c                    PUSH dword ptr [EDI + 0x2c]
0048da25  c7878403000000007041      MOV dword ptr [EDI + 0x384],0x41700000
0048da2f  c7878003000000007041      MOV dword ptr [EDI + 0x380],0x41700000
0048da39  e8d2820100                CALL 0x004a5d10
0048da3e  83c408                    ADD ESP,0x8
0048da41  eb20                      JMP 0x0048da63
0048da43  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0048da4b  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0048da53  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
0048da5b  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
0048da63  a17816c700                MOV EAX,[0x00c71678]
0048da68  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048da6e  c780d012000000000000      MOV dword ptr [EAX + 0x12d0],0x0
0048da78  33c0                      XOR EAX,EAX
0048da7a  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0048da84  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0048da8a  e961130000                JMP 0x0048edf0
0048da8f  83f909                    CMP ECX,0x9
0048da92  0f8537120000              JNZ 0x0048eccf
0048da98  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048daa0  8d4f48                    LEA ECX,[EDI + 0x48]
0048daa3  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0048daab  6a00                      PUSH 0x0
0048daad  68b4deb100                PUSH 0xb1deb4
0048dab2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048daba  e8c1c8f7ff                CALL 0x0040a380
0048dabf  68b4deb100                PUSH 0xb1deb4
0048dac4  8d4f48                    LEA ECX,[EDI + 0x48]
0048dac7  c78754030000a4060000      MOV dword ptr [EDI + 0x354],0x6a4
0048dad1  e85ad5f7ff                CALL 0x0040b030
0048dad6  84c0                      TEST AL,AL
0048dad8  7456                      JZ 0x0048db30
0048dada  6a00                      PUSH 0x0
0048dadc  6a01                      PUSH 0x1
0048dade  57                        PUSH EDI
0048dadf  51                        PUSH ECX
0048dae0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048dae6  8db73c030000              LEA ESI,[EDI + 0x33c]
0048daec  c7042400002043            MOV dword ptr [ESP],0x43200000
0048daf3  56                        PUSH ESI
0048daf4  e867682700                CALL 0x00704360
0048daf9  0f1005d04bc300            MOVUPS XMM0,xmmword ptr [0x00c34bd0]
0048db00  83ec10                    SUB ESP,0x10
0048db03  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
0048db0b  8bc4                      MOV EAX,ESP
0048db0d  f30f101554a8ba00          MOVSS XMM2,dword ptr [0x00baa854]
0048db15  83ec08                    SUB ESP,0x8
0048db18  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0048db1b  c744240400004842          MOV dword ptr [ESP + 0x4],0x42480000
0048db23  6a00                      PUSH 0x0
0048db25  6a00                      PUSH 0x0
0048db27  6a00                      PUSH 0x0
0048db29  57                        PUSH EDI
0048db2a  56                        PUSH ESI
0048db2b  e830122700                CALL 0x006fed60
0048db30  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048db34  740d                      JZ 0x0048db43
0048db36  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048db3d  0f858c110000              JNZ 0x0048eccf
0048db43  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0048db4b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048db55  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048db5f  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048db66  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0048db6e  0f2fc1                    COMISS XMM0,XMM1
0048db71  0f8258110000              JC 0x0048eccf
0048db77  f30f1095e4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee4]
0048db7f  90                        NOP
0048db80  fe87c10b0000              INC byte ptr [EDI + 0xbc1]
0048db86  f30f5cc2                  SUBSS XMM0,XMM2
0048db8a  0f2fc1                    COMISS XMM0,XMM1
0048db8d  73f1                      JNC 0x0048db80
0048db8f  e93b110000                JMP 0x0048eccf
0048db94  c6850fffffff00            MOV byte ptr [EBP + 0xffffff0f],0x0
0048db9b  83f904                    CMP ECX,0x4
0048db9e  7409                      JZ 0x0048dba9
0048dba0  83f90b                    CMP ECX,0xb
0048dba3  0f859f000000              JNZ 0x0048dc48
0048dba9  8a87c20b0000              MOV AL,byte ptr [EDI + 0xbc2]
0048dbaf  84c0                      TEST AL,AL
0048dbb1  0f851e030000              JNZ 0x0048ded5
0048dbb7  a17816c700                MOV EAX,[0x00c71678]
0048dbbc  51                        PUSH ECX
0048dbbd  c687c20b000001            MOV byte ptr [EDI + 0xbc2],0x1
0048dbc4  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
0048dbca  c7042400000000            MOV dword ptr [ESP],0x0
0048dbd1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048dbdb  51                        PUSH ECX
0048dbdc  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048dbe2  e8e90d3900                CALL 0x0081e9d0
0048dbe7  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048dbed  c78514ffffffa4010000      MOV dword ptr [EBP + 0xffffff14],0x1a4
0048dbf7  8b08                      MOV ECX,dword ptr [EAX]
0048dbf9  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0048dbff  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0048dc05  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0048dc08  898738030000              MOV dword ptr [EDI + 0x338],EAX
0048dc0e  e86d8b4c00                CALL 0x00956780
0048dc13  83ec08                    SUB ESP,0x8
0048dc16  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048dc1e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048dc25  6a00                      PUSH 0x0
0048dc27  6a02                      PUSH 0x2
0048dc29  51                        PUSH ECX
0048dc2a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048dc31  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048dc37  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
0048dc3d  e8eeff4900                CALL 0x0092dc30
0048dc42  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0048dc48  8a87c20b0000              MOV AL,byte ptr [EDI + 0xbc2]
0048dc4e  84c0                      TEST AL,AL
0048dc50  0f857f020000              JNZ 0x0048ded5
0048dc56  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048dc59  85f6                      TEST ESI,ESI
0048dc5b  744e                      JZ 0x0048dcab
0048dc5d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048dc61  8bc6                      MOV EAX,ESI
0048dc63  7202                      JC 0x0048dc67
0048dc65  8b06                      MOV EAX,dword ptr [ESI]
0048dc67  b9f0d3b100                MOV ECX,0xb1d3f0
0048dc6c  0f1f4000                  NOP dword ptr [EAX]
0048dc70  8a10                      MOV DL,byte ptr [EAX]
0048dc72  3a11                      CMP DL,byte ptr [ECX]
0048dc74  751a                      JNZ 0x0048dc90
0048dc76  84d2                      TEST DL,DL
0048dc78  7412                      JZ 0x0048dc8c
0048dc7a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048dc7d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048dc80  750e                      JNZ 0x0048dc90
0048dc82  83c002                    ADD EAX,0x2
0048dc85  83c102                    ADD ECX,0x2
0048dc88  84d2                      TEST DL,DL
0048dc8a  75e4                      JNZ 0x0048dc70
0048dc8c  33c0                      XOR EAX,EAX
0048dc8e  eb05                      JMP 0x0048dc95
0048dc90  1bc0                      SBB EAX,EAX
0048dc92  83c801                    OR EAX,0x1
0048dc95  85c0                      TEST EAX,EAX
0048dc97  7512                      JNZ 0x0048dcab
0048dc99  384634                    CMP byte ptr [ESI + 0x34],AL
0048dc9c  742e                      JZ 0x0048dccc
0048dc9e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048dca4  8d7748                    LEA ESI,[EDI + 0x48]
0048dca7  7523                      JNZ 0x0048dccc
0048dca9  eb03                      JMP 0x0048dcae
0048dcab  8d7748                    LEA ESI,[EDI + 0x48]
0048dcae  6a01                      PUSH 0x1
0048dcb0  68f0d3b100                PUSH 0xb1d3f0
0048dcb5  8bce                      MOV ECX,ESI
0048dcb7  e814c9f7ff                CALL 0x0040a5d0
0048dcbc  84c0                      TEST AL,AL
0048dcbe  740c                      JZ 0x0048dccc
0048dcc0  8d4e30                    LEA ECX,[ESI + 0x30]
0048dcc3  e8e8c4f7ff                CALL 0x0040a1b0
0048dcc8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048dccc  c78754030000a4060000      MOV dword ptr [EDI + 0x354],0x6a4
0048dcd6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048dcda  750c                      JNZ 0x0048dce8
0048dcdc  c6850fffffff00            MOV byte ptr [EBP + 0xffffff0f],0x0
0048dce3  e943010000                JMP 0x0048de2b
0048dce8  6828ddb100                PUSH 0xb1dd28
0048dced  8d4f78                    LEA ECX,[EDI + 0x78]
0048dcf0  e87bd1f7ff                CALL 0x0040ae70
0048dcf5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048dcf9  888507ffffff              MOV byte ptr [EBP + 0xffffff07],AL
0048dcff  88850fffffff              MOV byte ptr [EBP + 0xffffff0f],AL
0048dd05  0f8433010000              JZ 0x0048de3e
0048dd0b  6828ddb100                PUSH 0xb1dd28
0048dd10  8d4f78                    LEA ECX,[EDI + 0x78]
0048dd13  e8b8d0f7ff                CALL 0x0040add0
0048dd18  8a8d07ffffff              MOV CL,byte ptr [EBP + 0xffffff07]
0048dd1e  888d0fffffff              MOV byte ptr [EBP + 0xffffff0f],CL
0048dd24  84c0                      TEST AL,AL
0048dd26  0f84ff000000              JZ 0x0048de2b
0048dd2c  8bcf                      MOV ECX,EDI
0048dd2e  e80d0b2300                CALL 0x006be840
0048dd33  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0048dd3b  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0048dd43  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0048dd4b  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0048dd53  0f28c1                    MOVAPS XMM0,XMM1
0048dd56  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0048dd5e  f30f59c1                  MULSS XMM0,XMM1
0048dd62  0f28ca                    MOVAPS XMM1,XMM2
0048dd65  f30f119514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM2
0048dd6d  f30f59ca                  MULSS XMM1,XMM2
0048dd71  f30f58c1                  ADDSS XMM0,XMM1
0048dd75  e8d67cfaff                CALL 0x00435a50
0048dd7a  0f57c9                    XORPS XMM1,XMM1
0048dd7d  0f2fc1                    COMISS XMM0,XMM1
0048dd80  7621                      JBE 0x0048dda3
0048dd82  f30f1015bca6ba00          MOVSS XMM2,dword ptr [0x00baa6bc]
0048dd8a  f30f5ed0                  DIVSS XMM2,XMM0
0048dd8e  0f28da                    MOVAPS XMM3,XMM2
0048dd91  f30f599510ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff10]
0048dd99  f30f599d14ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff14]
0048dda1  eb10                      JMP 0x0048ddb3
0048dda3  f30f109d14ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff14]
0048ddab  f30f109510ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff10]
0048ddb3  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0048ddbb  0f2ee1                    UCOMISS XMM4,XMM1
0048ddbe  9f                        LAHF
0048ddbf  f6c444                    TEST AH,0x44
0048ddc2  7b3b                      JNP 0x0048ddff
0048ddc4  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0048ddcc  0f28c1                    MOVAPS XMM0,XMM1
0048ddcf  f30f59ca                  MULSS XMM1,XMM2
0048ddd3  f30f59c3                  MULSS XMM0,XMM3
0048ddd7  f30f5ecc                  DIVSS XMM1,XMM4
0048dddb  f30f5ec4                  DIVSS XMM0,XMM4
0048dddf  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0048dde7  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0048ddef  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0048ddf7  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0048ddff  51                        PUSH ECX
0048de00  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048de07  6a00                      PUSH 0x0
0048de09  6a1e                      PUSH 0x1e
0048de0b  51                        PUSH ECX
0048de0c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048de13  8bcf                      MOV ECX,EDI
0048de15  682d010000                PUSH 0x12d
0048de1a  e8818d2400                CALL 0x006d6ba0
0048de1f  8a8507ffffff              MOV AL,byte ptr [EBP + 0xffffff07]
0048de25  88850fffffff              MOV byte ptr [EBP + 0xffffff0f],AL
0048de2b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048de2f  740d                      JZ 0x0048de3e
0048de31  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048de38  0f8587030000              JNZ 0x0048e1c5
0048de3e  a17816c700                MOV EAX,[0x00c71678]
0048de43  51                        PUSH ECX
0048de44  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048de4e  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
0048de54  c7042400000000            MOV dword ptr [ESP],0x0
0048de5b  c687c20b000001            MOV byte ptr [EDI + 0xbc2],0x1
0048de62  51                        PUSH ECX
0048de63  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048de69  e8620b3900                CALL 0x0081e9d0
0048de6e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048de74  c78514ffffffa4010000      MOV dword ptr [EBP + 0xffffff14],0x1a4
0048de7e  8b08                      MOV ECX,dword ptr [EAX]
0048de80  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0048de86  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0048de8c  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0048de8f  898738030000              MOV dword ptr [EDI + 0x338],EAX
0048de95  e8e6884c00                CALL 0x00956780
0048de9a  83ec08                    SUB ESP,0x8
0048de9d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048dea5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048deac  6a00                      PUSH 0x0
0048deae  6a02                      PUSH 0x2
0048deb0  51                        PUSH ECX
0048deb1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048deb8  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048debe  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
0048dec4  e867fd4900                CALL 0x0092dc30
0048dec9  c687c40b0000ff            MOV byte ptr [EDI + 0xbc4],0xff
0048ded0  e9f0020000                JMP 0x0048e1c5
0048ded5  3c01                      CMP AL,0x1
0048ded7  0f85e8020000              JNZ 0x0048e1c5
0048dedd  88850fffffff              MOV byte ptr [EBP + 0xffffff0f],AL
0048dee3  83f904                    CMP ECX,0x4
0048dee6  0f849e000000              JZ 0x0048df8a
0048deec  83f90b                    CMP ECX,0xb
0048deef  0f8495000000              JZ 0x0048df8a
0048def5  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048def8  85f6                      TEST ESI,ESI
0048defa  744f                      JZ 0x0048df4b
0048defc  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048df00  8bc6                      MOV EAX,ESI
0048df02  7202                      JC 0x0048df06
0048df04  8b06                      MOV EAX,dword ptr [ESI]
0048df06  b9ecd9b100                MOV ECX,0xb1d9ec
0048df0b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0048df10  8a10                      MOV DL,byte ptr [EAX]
0048df12  3a11                      CMP DL,byte ptr [ECX]
0048df14  751a                      JNZ 0x0048df30
0048df16  84d2                      TEST DL,DL
0048df18  7412                      JZ 0x0048df2c
0048df1a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048df1d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048df20  750e                      JNZ 0x0048df30
0048df22  83c002                    ADD EAX,0x2
0048df25  83c102                    ADD ECX,0x2
0048df28  84d2                      TEST DL,DL
0048df2a  75e4                      JNZ 0x0048df10
0048df2c  33c0                      XOR EAX,EAX
0048df2e  eb05                      JMP 0x0048df35
0048df30  1bc0                      SBB EAX,EAX
0048df32  83c801                    OR EAX,0x1
0048df35  85c0                      TEST EAX,EAX
0048df37  7512                      JNZ 0x0048df4b
0048df39  384634                    CMP byte ptr [ESI + 0x34],AL
0048df3c  742e                      JZ 0x0048df6c
0048df3e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048df44  8d7748                    LEA ESI,[EDI + 0x48]
0048df47  7523                      JNZ 0x0048df6c
0048df49  eb03                      JMP 0x0048df4e
0048df4b  8d7748                    LEA ESI,[EDI + 0x48]
0048df4e  6a01                      PUSH 0x1
0048df50  68ecd9b100                PUSH 0xb1d9ec
0048df55  8bce                      MOV ECX,ESI
0048df57  e874c6f7ff                CALL 0x0040a5d0
0048df5c  84c0                      TEST AL,AL
0048df5e  740c                      JZ 0x0048df6c
0048df60  8d4e30                    LEA ECX,[ESI + 0x30]
0048df63  e848c2f7ff                CALL 0x0040a1b0
0048df68  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048df6c  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0048df72  c78754030000a4060000      MOV dword ptr [EDI + 0x354],0x6a4
0048df7c  83fe5a                    CMP ESI,0x5a
0048df7f  0f8e37020000              JLE 0x0048e1bc
0048df85  e9c1000000                JMP 0x0048e04b
0048df8a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048df8d  8d4748                    LEA EAX,[EDI + 0x48]
0048df90  85f6                      TEST ESI,ESI
0048df92  7447                      JZ 0x0048dfdb
0048df94  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048df98  8bc6                      MOV EAX,ESI
0048df9a  7202                      JC 0x0048df9e
0048df9c  8b06                      MOV EAX,dword ptr [ESI]
0048df9e  b9e0d9b100                MOV ECX,0xb1d9e0
0048dfa3  8a10                      MOV DL,byte ptr [EAX]
0048dfa5  3a11                      CMP DL,byte ptr [ECX]
0048dfa7  751a                      JNZ 0x0048dfc3
0048dfa9  84d2                      TEST DL,DL
0048dfab  7412                      JZ 0x0048dfbf
0048dfad  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048dfb0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048dfb3  750e                      JNZ 0x0048dfc3
0048dfb5  83c002                    ADD EAX,0x2
0048dfb8  83c102                    ADD ECX,0x2
0048dfbb  84d2                      TEST DL,DL
0048dfbd  75e4                      JNZ 0x0048dfa3
0048dfbf  33c0                      XOR EAX,EAX
0048dfc1  eb05                      JMP 0x0048dfc8
0048dfc3  1bc0                      SBB EAX,EAX
0048dfc5  83c801                    OR EAX,0x1
0048dfc8  85c0                      TEST EAX,EAX
0048dfca  8d4748                    LEA EAX,[EDI + 0x48]
0048dfcd  750c                      JNZ 0x0048dfdb
0048dfcf  807e3400                  CMP byte ptr [ESI + 0x34],0x0
0048dfd3  742a                      JZ 0x0048dfff
0048dfd5  80784400                  CMP byte ptr [EAX + 0x44],0x0
0048dfd9  7524                      JNZ 0x0048dfff
0048dfdb  6a01                      PUSH 0x1
0048dfdd  68e0d9b100                PUSH 0xb1d9e0
0048dfe2  8bc8                      MOV ECX,EAX
0048dfe4  e8e7c5f7ff                CALL 0x0040a5d0
0048dfe9  84c0                      TEST AL,AL
0048dfeb  740f                      JZ 0x0048dffc
0048dfed  8d4f78                    LEA ECX,[EDI + 0x78]
0048dff0  e8bbc1f7ff                CALL 0x0040a1b0
0048dff5  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0048dffc  8d4748                    LEA EAX,[EDI + 0x48]
0048dfff  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0048e005  c78754030000d0070000      MOV dword ptr [EDI + 0x354],0x7d0
0048e00f  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
0048e015  83f90b                    CMP ECX,0xb
0048e018  750a                      JNZ 0x0048e024
0048e01a  c7874c01000000000040      MOV dword ptr [EDI + 0x14c],0x40000000
0048e024  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0048e02a  83fe2d                    CMP ESI,0x2d
0048e02d  0f8e89010000              JLE 0x0048e1bc
0048e033  8bc8                      MOV ECX,EAX
0048e035  e846c7f7ff                CALL 0x0040a780
0048e03a  85c0                      TEST EAX,EAX
0048e03c  740d                      JZ 0x0048e04b
0048e03e  83bde4feffff0b            CMP dword ptr [EBP + 0xfffffee4],0xb
0048e045  0f8571010000              JNZ 0x0048e1bc
0048e04b  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
0048e055  e8060f2600                CALL 0x006eef60
0048e05a  33d2                      XOR EDX,EDX
0048e05c  be64000000                MOV ESI,0x64
0048e061  f7f6                      DIV ESI
0048e063  83fa46                    CMP EDX,0x46
0048e066  0f8339010000              JNC 0x0048e1a5
0048e06c  e8ef0e2600                CALL 0x006eef60
0048e071  33d2                      XOR EDX,EDX
0048e073  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0048e07b  f7f6                      DIV ESI
0048e07d  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0048e085  0f57d2                    XORPS XMM2,XMM2
0048e088  0f2ed0                    UCOMISS XMM2,XMM0
0048e08b  8995f4feffff              MOV dword ptr [EBP + 0xfffffef4],EDX
0048e091  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0048e099  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0048e0a1  9f                        LAHF
0048e0a2  f6c444                    TEST AH,0x44
0048e0a5  7a22                      JP 0x0048e0c9
0048e0a7  68d81bb800                PUSH 0xb81bd8
0048e0ac  6a10                      PUSH 0x10
0048e0ae  e80d325800                CALL 0x00a112c0
0048e0b3  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0048e0bb  83c408                    ADD ESP,0x8
0048e0be  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0048e0c6  0f57d2                    XORPS XMM2,XMM2
0048e0c9  f30f5cca                  SUBSS XMM1,XMM2
0048e0cd  fe87c10b0000              INC byte ptr [EDI + 0xbc1]
0048e0d3  f30f5cc2                  SUBSS XMM0,XMM2
0048e0d7  f30f5ec8                  DIVSS XMM1,XMM0
0048e0db  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
0048e0e3  f30f5fca                  MAXSS XMM1,XMM2
0048e0e7  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0048e0ef  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0048e0f7  f30f5cc1                  SUBSS XMM0,XMM1
0048e0fb  f30f2cf0                  CVTTSS2SI ESI,XMM0
0048e0ff  8bc6                      MOV EAX,ESI
0048e101  99                        CDQ
0048e102  2bc2                      SUB EAX,EDX
0048e104  d1f8                      SAR EAX,0x1
0048e106  80bfc60b00000a            CMP byte ptr [EDI + 0xbc6],0xa
0048e10d  0f45c6                    CMOVNZ EAX,ESI
0048e110  3985f4feffff              CMP dword ptr [EBP + 0xfffffef4],EAX
0048e116  7d7a                      JGE 0x0048e192
0048e118  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0048e122  c687c60b00000a            MOV byte ptr [EDI + 0xbc6],0xa
0048e129  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048e130  e82b0e2600                CALL 0x006eef60
0048e135  33d2                      XOR EDX,EDX
0048e137  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048e13d  f7b5bcfeffff              DIV dword ptr [EBP + 0xfffffebc]
0048e143  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0048e149  c78514ffffffa4010000      MOV dword ptr [EBP + 0xffffff14],0x1a4
0048e153  80c202                    ADD DL,0x2
0048e156  8897c50b0000              MOV byte ptr [EDI + 0xbc5],DL
0048e15c  e81f864c00                CALL 0x00956780
0048e161  83ec08                    SUB ESP,0x8
0048e164  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048e16c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048e173  6a00                      PUSH 0x0
0048e175  6a02                      PUSH 0x2
0048e177  51                        PUSH ECX
0048e178  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048e17f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048e185  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
0048e18b  e8a0fa4900                CALL 0x0092dc30
0048e190  eb24                      JMP 0x0048e1b6
0048e192  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0048e19c  c687c60b000008            MOV byte ptr [EDI + 0xbc6],0x8
0048e1a3  eb0a                      JMP 0x0048e1af
0048e1a5  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0048e1af  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
0048e1b6  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0048e1bc  8d4601                    LEA EAX,[ESI + 0x1]
0048e1bf  898710040000              MOV dword ptr [EDI + 0x410],EAX
0048e1c5  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
0048e1cc  0f8565020000              JNZ 0x0048e437
0048e1d2  8a8fc40b0000              MOV CL,byte ptr [EDI + 0xbc4]
0048e1d8  80f9ff                    CMP CL,0xff
0048e1db  0f8456020000              JZ 0x0048e437
0048e1e1  33d2                      XOR EDX,EDX
0048e1e3  0fb6c1                    MOVZX EAX,CL
0048e1e6  be03000000                MOV ESI,0x3
0048e1eb  f7f6                      DIV ESI
0048e1ed  85d2                      TEST EDX,EDX
0048e1ef  0f851a020000              JNZ 0x0048e40f
0048e1f5  8bcf                      MOV ECX,EDI
0048e1f7  e844062300                CALL 0x006be840
0048e1fc  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0048e204  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0048e20c  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0048e214  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0048e21c  0f28c1                    MOVAPS XMM0,XMM1
0048e21f  f30f118dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM1
0048e227  f30f59c1                  MULSS XMM0,XMM1
0048e22b  0f28ca                    MOVAPS XMM1,XMM2
0048e22e  f30f1195ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM2
0048e236  f30f59ca                  MULSS XMM1,XMM2
0048e23a  f30f58c1                  ADDSS XMM0,XMM1
0048e23e  e80d78faff                CALL 0x00435a50
0048e243  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0048e24a  7633                      JBE 0x0048e27f
0048e24c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048e254  f30f5ec8                  DIVSS XMM1,XMM0
0048e258  0f28c1                    MOVAPS XMM0,XMM1
0048e25b  f30f5985ccfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffecc]
0048e263  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
0048e26b  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
0048e273  f30f59c1                  MULSS XMM0,XMM1
0048e277  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0048e27f  e8dc0c2600                CALL 0x006eef60
0048e284  0f57c0                    XORPS XMM0,XMM0
0048e287  f20f2ac0                  CVTSI2SD XMM0,EAX
0048e28b  c1e81f                    SHR EAX,0x1f
0048e28e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048e297  660f5ac0                  CVTPD2PS XMM0,XMM0
0048e29b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048e2a3  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048e2ab  f30f58c0                  ADDSS XMM0,XMM0
0048e2af  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0048e2b7  e8a40c2600                CALL 0x006eef60
0048e2bc  0f57c0                    XORPS XMM0,XMM0
0048e2bf  f20f2ac0                  CVTSI2SD XMM0,EAX
0048e2c3  c1e81f                    SHR EAX,0x1f
0048e2c6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048e2cf  660f5ac0                  CVTPD2PS XMM0,XMM0
0048e2d3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048e2db  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048e2e3  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0048e2eb  e850f2f8ff                CALL 0x0041d540
0048e2f0  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
0048e2f8  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0048e300  f30f5885ccfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffecc]
0048e308  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0048e310  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0048e318  e803f2f8ff                CALL 0x0041d520
0048e31d  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
0048e325  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0048e32b  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0048e333  f30f5885d0feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffed0]
0048e33b  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048e343  e8e80bfbff                CALL 0x0043ef30
0048e348  8bb7780c0000              MOV ESI,dword ptr [EDI + 0xc78]
0048e34e  c745ac05000000            MOV dword ptr [EBP + -0x54],0x5
0048e355  c7852cffffffcdcc8c3f      MOV dword ptr [EBP + 0xffffff2c],0x3f8ccccd
0048e35f  85f6                      TEST ESI,ESI
0048e361  7840                      JS 0x0048e3a3
0048e363  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0048e369  8b5068                    MOV EDX,dword ptr [EAX + 0x68]
0048e36c  8b486c                    MOV ECX,dword ptr [EAX + 0x6c]
0048e36f  b843082184                MOV EAX,0x84210843
0048e374  2bca                      SUB ECX,EDX
0048e376  8995e4feffff              MOV dword ptr [EBP + 0xfffffee4],EDX
0048e37c  f7e9                      IMUL ECX
0048e37e  03d1                      ADD EDX,ECX
0048e380  c1fa06                    SAR EDX,0x6
0048e383  8bc2                      MOV EAX,EDX
0048e385  c1e81f                    SHR EAX,0x1f
0048e388  03c2                      ADD EAX,EDX
0048e38a  3bf0                      CMP ESI,EAX
0048e38c  7715                      JA 0x0048e3a3
0048e38e  6bc67c                    IMUL EAX,ESI,0x7c
0048e391  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
0048e397  0385e4feffff              ADD EAX,dword ptr [EBP + 0xfffffee4]
0048e39d  50                        PUSH EAX
0048e39e  e84d8ef7ff                CALL 0x004071f0
0048e3a3  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0048e3ab  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0048e3b1  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0048e3b9  8bcf                      MOV ECX,EDI
0048e3bb  50                        PUSH EAX
0048e3bc  6a00                      PUSH 0x0
0048e3be  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0048e3c4  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0048e3cc  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0048e3d4  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0048e3dc  50                        PUSH EAX
0048e3dd  8d873c030000              LEA EAX,[EDI + 0x33c]
0048e3e3  50                        PUSH EAX
0048e3e4  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0048e3ec  e8efce2300                CALL 0x006cb2e0
0048e3f1  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0048e3f9  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0048e401  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0048e409  8a8fc40b0000              MOV CL,byte ptr [EDI + 0xbc4]
0048e40f  fec1                      INC CL
0048e411  b8abaaaaaa                MOV EAX,0xaaaaaaab
0048e416  888fc40b0000              MOV byte ptr [EDI + 0xbc4],CL
0048e41c  0fb6c9                    MOVZX ECX,CL
0048e41f  f7e1                      MUL ECX
0048e421  0fb687c30b0000            MOVZX EAX,byte ptr [EDI + 0xbc3]
0048e428  d1ea                      SHR EDX,0x1
0048e42a  3bd0                      CMP EDX,EAX
0048e42c  7c44                      JL 0x0048e472
0048e42e  c687c40b0000ff            MOV byte ptr [EDI + 0xbc4],0xff
0048e435  eb3b                      JMP 0x0048e472
0048e437  6a00                      PUSH 0x0
0048e439  6a1e                      PUSH 0x1e
0048e43b  8bcf                      MOV ECX,EDI
0048e43d  e8cee22100                CALL 0x006ac710
0048e442  84c0                      TEST AL,AL
0048e444  742c                      JZ 0x0048e472
0048e446  e8150b2600                CALL 0x006eef60
0048e44b  8bb5bcfeffff              MOV ESI,dword ptr [EBP + 0xfffffebc]
0048e451  33d2                      XOR EDX,EDX
0048e453  f7f6                      DIV ESI
0048e455  85d2                      TEST EDX,EDX
0048e457  7519                      JNZ 0x0048e472
0048e459  e8020b2600                CALL 0x006eef60
0048e45e  33d2                      XOR EDX,EDX
0048e460  f7f6                      DIV ESI
0048e462  80c203                    ADD DL,0x3
0048e465  8897c30b0000              MOV byte ptr [EDI + 0xbc3],DL
0048e46b  c687c40b000000            MOV byte ptr [EDI + 0xbc4],0x0
0048e472  80bd0fffffff00            CMP byte ptr [EBP + 0xffffff0f],0x0
0048e479  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048e481  0f8438080000              JZ 0x0048ecbf
0048e487  f30f5905d0a3ba00          MULSS XMM0,dword ptr [0x00baa3d0]
0048e48f  8db73c030000              LEA ESI,[EDI + 0x33c]
0048e495  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048e49d  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0048e4a5  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0048e4ad  0f28c8                    MOVAPS XMM1,XMM0
0048e4b0  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
0048e4b5  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0048e4b9  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0048e4c1  0f28c2                    MOVAPS XMM0,XMM2
0048e4c4  f30f5cc3                  SUBSS XMM0,XMM3
0048e4c8  f30f119500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM2
0048e4d0  f30f119de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM3
0048e4d8  f30f59c9                  MULSS XMM1,XMM1
0048e4dc  f30f59c0                  MULSS XMM0,XMM0
0048e4e0  f30f58c1                  ADDSS XMM0,XMM1
0048e4e4  e86775faff                CALL 0x00435a50
0048e4e9  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
0048e4f1  0f2fc8                    COMISS XMM1,XMM0
0048e4f4  7643                      JBE 0x0048e539
0048e4f6  a17816c700                MOV EAX,[0x00c71678]
0048e4fb  51                        PUSH ECX
0048e4fc  8d8d9cfeffff              LEA ECX,[EBP + 0xfffffe9c]
0048e502  c7042400000000            MOV dword ptr [ESP],0x0
0048e509  51                        PUSH ECX
0048e50a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048e510  e8bb043900                CALL 0x0081e9d0
0048e515  8b08                      MOV ECX,dword ptr [EAX]
0048e517  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0048e51d  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0048e522  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0048e52a  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
0048e532  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
0048e537  eb18                      JMP 0x0048e551
0048e539  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
0048e541  f30f1095fcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffefc]
0048e549  f30f109de4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee4]
0048e551  f30f1026                  MOVSS XMM4,dword ptr [ESI]
0048e555  f30f5ccb                  SUBSS XMM1,XMM3
0048e559  f30f5cd4                  SUBSS XMM2,XMM4
0048e55d  33c0                      XOR EAX,EAX
0048e55f  33d2                      XOR EDX,EDX
0048e561  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
0048e569  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
0048e571  3985c4feffff              CMP dword ptr [EBP + 0xfffffec4],EAX
0048e577  7677                      JBE 0x0048e5f0
0048e579  8bbdc4feffff              MOV EDI,dword ptr [EBP + 0xfffffec4]
0048e57f  90                        NOP
0048e580  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
0048e586  0f28cc                    MOVAPS XMM1,XMM4
0048e589  0f28c3                    MOVAPS XMM0,XMM3
0048e58c  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
0048e58f  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
0048e597  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
0048e59f  85d2                      TEST EDX,EDX
0048e5a1  7414                      JZ 0x0048e5b7
0048e5a3  f30f59c9                  MULSS XMM1,XMM1
0048e5a7  f30f59c0                  MULSS XMM0,XMM0
0048e5ab  f30f58c1                  ADDSS XMM0,XMM1
0048e5af  0f57c9                    XORPS XMM1,XMM1
0048e5b2  0f2fc8                    COMISS XMM1,XMM0
0048e5b5  7602                      JBE 0x0048e5b9
0048e5b7  8bd1                      MOV EDX,ECX
0048e5b9  40                        INC EAX
0048e5ba  3bc7                      CMP EAX,EDI
0048e5bc  72c2                      JC 0x0048e580
0048e5be  8bbdc0feffff              MOV EDI,dword ptr [EBP + 0xfffffec0]
0048e5c4  85d2                      TEST EDX,EDX
0048e5c6  7428                      JZ 0x0048e5f0
0048e5c8  f30f10923c030000          MOVSS XMM2,dword ptr [EDX + 0x33c]
0048e5d0  f30f108a40030000          MOVSS XMM1,dword ptr [EDX + 0x340]
0048e5d8  f30f5cd4                  SUBSS XMM2,XMM4
0048e5dc  f30f5ccb                  SUBSS XMM1,XMM3
0048e5e0  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
0048e5e8  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
0048e5f0  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0048e5f8  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
0048e5ff  9f                        LAHF
0048e600  f6c444                    TEST AH,0x44
0048e603  7b10                      JNP 0x0048e615
0048e605  ff7720                    PUSH dword ptr [EDI + 0x20]
0048e608  8bcf                      MOV ECX,EDI
0048e60a  6a3c                      PUSH 0x3c
0048e60c  e8ffe02100                CALL 0x006ac710
0048e611  84c0                      TEST AL,AL
0048e613  7456                      JZ 0x0048e66b
0048e615  e846092600                CALL 0x006eef60
0048e61a  660f6ec0                  MOVD XMM0,EAX
0048e61e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048e622  c1e81f                    SHR EAX,0x1f
0048e625  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048e62e  660f5ac0                  CVTPD2PS XMM0,XMM0
0048e632  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048e63a  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0048e642  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0048e64a  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0048e652  83bf640b00000b            CMP dword ptr [EDI + 0xb64],0xb
0048e659  7510                      JNZ 0x0048e66b
0048e65b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0048e663  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0048e66b  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
0048e673  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0048e67b  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0048e683  f30f59c0                  MULSS XMM0,XMM0
0048e687  f30f59c9                  MULSS XMM1,XMM1
0048e68b  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
0048e693  f30f58c1                  ADDSS XMM0,XMM1
0048e697  e8b473faff                CALL 0x00435a50
0048e69c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0048e6a3  762e                      JBE 0x0048e6d3
0048e6a5  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048e6ad  f30f5ec8                  DIVSS XMM1,XMM0
0048e6b1  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0048e6b9  f30f59c1                  MULSS XMM0,XMM1
0048e6bd  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0048e6c5  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
0048e6cd  f30f59c1                  MULSS XMM0,XMM1
0048e6d1  eb08                      JMP 0x0048e6db
0048e6d3  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
0048e6db  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
0048e6e3  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0048e6eb  0f28d1                    MOVAPS XMM2,XMM1
0048e6ee  f30f5995fcfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffefc]
0048e6f6  f30f59c8                  MULSS XMM1,XMM0
0048e6fa  f30f591554a1ba00          MULSS XMM2,dword ptr [0x00baa154]
0048e702  f30f590d54a1ba00          MULSS XMM1,dword ptr [0x00baa154]
0048e70a  f30f58d3                  ADDSS XMM2,XMM3
0048e70e  f30f588dbcfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffebc]
0048e716  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
0048e71e  f30f1095bcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffebc]
0048e726  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0048e72e  0f28cb                    MOVAPS XMM1,XMM3
0048e731  0f28c1                    MOVAPS XMM0,XMM1
0048e734  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0048e73c  f30f59c1                  MULSS XMM0,XMM1
0048e740  0f28ca                    MOVAPS XMM1,XMM2
0048e743  f30f59ca                  MULSS XMM1,XMM2
0048e747  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0048e74f  f30f58c1                  ADDSS XMM0,XMM1
0048e753  e8f872faff                CALL 0x00435a50
0048e758  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0048e75f  f30f109d14ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff14]
0048e767  7621                      JBE 0x0048e78a
0048e769  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048e771  f30f5ec8                  DIVSS XMM1,XMM0
0048e775  0f28c1                    MOVAPS XMM0,XMM1
0048e778  f30f59d8                  MULSS XMM3,XMM0
0048e77c  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
0048e784  f30f59c1                  MULSS XMM0,XMM1
0048e788  eb08                      JMP 0x0048e792
0048e78a  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
0048e792  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
0048e79a  0f28d1                    MOVAPS XMM2,XMM1
0048e79d  f30f59c8                  MULSS XMM1,XMM0
0048e7a1  f30f59d3                  MULSS XMM2,XMM3
0048e7a5  f30f590d54a1ba00          MULSS XMM1,dword ptr [0x00baa154]
0048e7ad  f30f591554a1ba00          MULSS XMM2,dword ptr [0x00baa154]
0048e7b5  f30f588decfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffeec]
0048e7bd  f30f5895e4feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffee4]
0048e7c5  0f28c1                    MOVAPS XMM0,XMM1
0048e7c8  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0048e7d0  f30f59c1                  MULSS XMM0,XMM1
0048e7d4  0f28ca                    MOVAPS XMM1,XMM2
0048e7d7  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0048e7df  f30f59ca                  MULSS XMM1,XMM2
0048e7e3  f30f58c1                  ADDSS XMM0,XMM1
0048e7e7  e86472faff                CALL 0x00435a50
0048e7ec  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0048e7f3  f30f109510ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff10]
0048e7fb  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
0048e803  7617                      JBE 0x0048e81c
0048e805  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
0048e80d  f30f5ed8                  DIVSS XMM3,XMM0
0048e811  0f28c3                    MOVAPS XMM0,XMM3
0048e814  f30f59cb                  MULSS XMM1,XMM3
0048e818  f30f59d0                  MULSS XMM2,XMM0
0048e81c  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
0048e824  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
0048e82c  f30f1025a4a3ba00          MOVSS XMM4,dword ptr [0x00baa3a4]
0048e834  0f2edd                    UCOMISS XMM3,XMM5
0048e837  9f                        LAHF
0048e838  f6c444                    TEST AH,0x44
0048e83b  7b13                      JNP 0x0048e850
0048e83d  0f28c3                    MOVAPS XMM0,XMM3
0048e840  f30f59dc                  MULSS XMM3,XMM4
0048e844  f30f58c4                  ADDSS XMM0,XMM4
0048e848  f30f5cc3                  SUBSS XMM0,XMM3
0048e84c  f30f5ee0                  DIVSS XMM4,XMM0
0048e850  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0048e858  0f28c5                    MOVAPS XMM0,XMM5
0048e85b  f30f5c8dbcfeffff          SUBSS XMM1,dword ptr [EBP + 0xfffffebc]
0048e863  f30f5cc4                  SUBSS XMM0,XMM4
0048e867  f30f5cd3                  SUBSS XMM2,XMM3
0048e86b  f30f59c8                  MULSS XMM1,XMM0
0048e86f  f30f59d0                  MULSS XMM2,XMM0
0048e873  f30f588dbcfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffebc]
0048e87b  f30f58d3                  ADDSS XMM2,XMM3
0048e87f  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0048e887  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0048e88f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0048e895  83f808                    CMP EAX,0x8
0048e898  7409                      JZ 0x0048e8a3
0048e89a  83f80b                    CMP EAX,0xb
0048e89d  0f858d010000              JNZ 0x0048ea30
0048e8a3  ff7720                    PUSH dword ptr [EDI + 0x20]
0048e8a6  8bcf                      MOV ECX,EDI
0048e8a8  6a08                      PUSH 0x8
0048e8aa  e861de2100                CALL 0x006ac710
0048e8af  84c0                      TEST AL,AL
0048e8b1  745b                      JZ 0x0048e90e
0048e8b3  e8a8062600                CALL 0x006eef60
0048e8b8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048e8be  6a00                      PUSH 0x0
0048e8c0  68acd5c500                PUSH 0xc5d5ac
0048e8c5  68dcd5c500                PUSH 0xc5d5dc
0048e8ca  6a00                      PUSH 0x0
0048e8cc  50                        PUSH EAX
0048e8cd  6a00                      PUSH 0x0
0048e8cf  57                        PUSH EDI
0048e8d0  6840b6c700                PUSH 0xc7b640
0048e8d5  56                        PUSH ESI
0048e8d6  ffb5b4feffff              PUSH dword ptr [EBP + 0xfffffeb4]
0048e8dc  68e8030000                PUSH 0x3e8
0048e8e1  e83aa2f9ff                CALL 0x00428b20
0048e8e6  50                        PUSH EAX
0048e8e7  e8c51f6600                CALL 0x00af08b1
0048e8ec  83c414                    ADD ESP,0x14
0048e8ef  85c0                      TEST EAX,EAX
0048e8f1  741b                      JZ 0x0048e90e
0048e8f3  8b10                      MOV EDX,dword ptr [EAX]
0048e8f5  8bc8                      MOV ECX,EAX
0048e8f7  c780e400000000004040      MOV dword ptr [EAX + 0xe4],0x40400000
0048e901  c780e800000000004040      MOV dword ptr [EAX + 0xe8],0x40400000
0048e90b  ff520c                    CALL dword ptr [EDX + 0xc]
0048e90e  ff7720                    PUSH dword ptr [EDI + 0x20]
0048e911  8bcf                      MOV ECX,EDI
0048e913  6a14                      PUSH 0x14
0048e915  e8f6dd2100                CALL 0x006ac710
0048e91a  84c0                      TEST AL,AL
0048e91c  0f840e010000              JZ 0x0048ea30
0048e922  e839062600                CALL 0x006eef60
0048e927  33d2                      XOR EDX,EDX
0048e929  b964000000                MOV ECX,0x64
0048e92e  f7f1                      DIV ECX
0048e930  83fa3c                    CMP EDX,0x3c
0048e933  0f83f7000000              JNC 0x0048ea30
0048e939  e822062600                CALL 0x006eef60
0048e93e  8bf0                      MOV ESI,EAX
0048e940  e81b062600                CALL 0x006eef60
0048e945  660f6ec0                  MOVD XMM0,EAX
0048e949  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048e94d  c1e81f                    SHR EAX,0x1f
0048e950  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048e959  660f5ac0                  CVTPD2PS XMM0,XMM0
0048e95d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048e965  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048e96d  f30f58c0                  ADDSS XMM0,XMM0
0048e971  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0048e979  e8e2052600                CALL 0x006eef60
0048e97e  660f6ec0                  MOVD XMM0,EAX
0048e982  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048e986  c1e81f                    SHR EAX,0x1f
0048e989  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048e992  660f5ac0                  CVTPD2PS XMM0,XMM0
0048e996  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048e99e  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048e9a6  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0048e9ae  e88debf8ff                CALL 0x0041d540
0048e9b3  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
0048e9bb  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0048e9c3  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048e9cb  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0048e9d3  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0048e9db  e840ebf8ff                CALL 0x0041d520
0048e9e0  f30f598510ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff10]
0048e9e8  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0048e9ee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048e9f4  56                        PUSH ESI
0048e9f5  6a00                      PUSH 0x0
0048e9f7  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0048e9ff  57                        PUSH EDI
0048ea00  6840b6c700                PUSH 0xc7b640
0048ea05  50                        PUSH EAX
0048ea06  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0048ea0e  6a00                      PUSH 0x0
0048ea10  6827010000                PUSH 0x127
0048ea15  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0048ea1d  e8fea0f9ff                CALL 0x00428b20
0048ea22  51                        PUSH ECX
0048ea23  ffb7780c0000              PUSH dword ptr [EDI + 0xc78]
0048ea29  8bc8                      MOV ECX,EAX
0048ea2b  e8d0182400                CALL 0x006d0300
0048ea30  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0048ea37  0f8492020000              JZ 0x0048eccf
0048ea3d  a17816c700                MOV EAX,[0x00c71678]
0048ea42  51                        PUSH ECX
0048ea43  8d8d9cfeffff              LEA ECX,[EBP + 0xfffffe9c]
0048ea49  c7042400000000            MOV dword ptr [ESP],0x0
0048ea50  51                        PUSH ECX
0048ea51  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048ea57  e874ff3800                CALL 0x0081e9d0
0048ea5c  8b08                      MOV ECX,dword ptr [EAX]
0048ea5e  51                        PUSH ECX
0048ea5f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048ea66  6a00                      PUSH 0x0
0048ea68  6a02                      PUSH 0x2
0048ea6a  51                        PUSH ECX
0048ea6b  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0048ea71  8bcf                      MOV ECX,EDI
0048ea73  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0048ea76  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048ea7d  6a48                      PUSH 0x48
0048ea7f  898738030000              MOV dword ptr [EDI + 0x338],EAX
0048ea85  e816812400                CALL 0x006d6ba0
0048ea8a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048ea90  6a04                      PUSH 0x4
0048ea92  e8d94b2700                CALL 0x00703670
0048ea97  a17816c700                MOV EAX,[0x00c71678]
0048ea9c  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0048eaa2  e8b9042600                CALL 0x006eef60
0048eaa7  83ec0c                    SUB ESP,0xc
0048eaaa  8bce                      MOV ECX,ESI
0048eaac  660f6ec0                  MOVD XMM0,EAX
0048eab0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048eab4  c1e81f                    SHR EAX,0x1f
0048eab7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048eac0  8d879c010000              LEA EAX,[EDI + 0x19c]
0048eac6  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0048eacc  660f5ad8                  CVTPD2PS XMM3,XMM0
0048ead0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048ead4  f30f590594aaba00          MULSS XMM0,dword ptr [0x00baaa94]
0048eadc  f30f591df49fba00          MULSS XMM3,dword ptr [0x00ba9ff4]
0048eae4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048eaec  f30f591d04a9ba00          MULSS XMM3,dword ptr [0x00baa904]
0048eaf4  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0048eafc  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0048eb01  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0048eb07  f30f591d34adba00          MULSS XMM3,dword ptr [0x00baad34]
0048eb0f  f30f590594aaba00          MULSS XMM0,dword ptr [0x00baaa94]
0048eb17  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0048eb1d  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
0048eb23  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0048eb2b  f30f111c24                MOVSS dword ptr [ESP],XMM3
0048eb30  50                        PUSH EAX
0048eb31  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0048eb37  50                        PUSH EAX
0048eb38  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048eb40  e80b443800                CALL 0x00812f50
0048eb45  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0048eb4d  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0048eb55  f30f5cc1                  SUBSS XMM0,XMM1
0048eb59  a17816c700                MOV EAX,[0x00c71678]
0048eb5e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048eb64  f30f5ec1                  DIVSS XMM0,XMM1
0048eb68  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0048eb70  f30f2cf0                  CVTTSS2SI ESI,XMM0
0048eb74  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0048eb7c  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0048eb84  f30f5ec1                  DIVSS XMM0,XMM1
0048eb88  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0048eb90  f30f2cc0                  CVTTSS2SI EAX,XMM0
0048eb94  85f6                      TEST ESI,ESI
0048eb96  0f8833010000              JS 0x0048eccf
0048eb9c  8b510c                    MOV EDX,dword ptr [ECX + 0xc]
0048eb9f  3bf2                      CMP ESI,EDX
0048eba1  0f8d28010000              JGE 0x0048eccf
0048eba7  85c0                      TEST EAX,EAX
0048eba9  0f8820010000              JS 0x0048eccf
0048ebaf  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0048ebb2  0f8d17010000              JGE 0x0048eccf
0048ebb8  0fafc2                    IMUL EAX,EDX
0048ebbb  03c6                      ADD EAX,ESI
0048ebbd  3dbf010000                CMP EAX,0x1bf
0048ebc2  0f8707010000              JA 0x0048eccf
0048ebc8  8b448124                  MOV EAX,dword ptr [ECX + EAX*0x4 + 0x24]
0048ebcc  85c0                      TEST EAX,EAX
0048ebce  0f84fb000000              JZ 0x0048eccf
0048ebd4  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0048ebd7  83f80f                    CMP EAX,0xf
0048ebda  7409                      JZ 0x0048ebe5
0048ebdc  83f810                    CMP EAX,0x10
0048ebdf  0f85ea000000              JNZ 0x0048eccf
0048ebe5  e876032600                CALL 0x006eef60
0048ebea  51                        PUSH ECX
0048ebeb  8bcf                      MOV ECX,EDI
0048ebed  660f6ec0                  MOVD XMM0,EAX
0048ebf1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048ebf5  c1e81f                    SHR EAX,0x1f
0048ebf8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048ec01  660f5ac0                  CVTPD2PS XMM0,XMM0
0048ec05  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048ec0d  f30f58c0                  ADDSS XMM0,XMM0
0048ec11  f30f580554a5ba00          ADDSS XMM0,dword ptr [0x00baa554]
0048ec19  f30f110424                MOVSS dword ptr [ESP],XMM0
0048ec1e  e8ad782200                CALL 0x006b64d0
0048ec23  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0048ec2b  8bf8                      MOV EDI,EAX
0048ec2d  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
0048ec33  8bcf                      MOV ECX,EDI
0048ec35  6a01                      PUSH 0x1
0048ec37  6a00                      PUSH 0x0
0048ec39  8b37                      MOV ESI,dword ptr [EDI]
0048ec3b  05e4010000                ADD EAX,0x1e4
0048ec40  68ff000000                PUSH 0xff
0048ec45  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0048ec4d  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0048ec55  6aff                      PUSH -0x1
0048ec57  50                        PUSH EAX
0048ec58  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0048ec60  ff563c                    CALL dword ptr [ESI + 0x3c]
0048ec63  8b95e4feffff              MOV EDX,dword ptr [EBP + 0xfffffee4]
0048ec69  8d8d9cfeffff              LEA ECX,[EBP + 0xfffffe9c]
0048ec6f  e8fc041f00                CALL 0x0067f170
0048ec74  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0048ec78  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0048ec7d  e8deb00000                CALL 0x00499d60
0048ec82  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0048ec8a  8bcf                      MOV ECX,EDI
0048ec8c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0048ec92  818f6801000000200000      OR dword ptr [EDI + 0x168],0x2000
0048ec9c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0048eca2  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
0048ecaa  8b07                      MOV EAX,dword ptr [EDI]
0048ecac  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
0048ecb4  ff500c                    CALL dword ptr [EAX + 0xc]
0048ecb7  8bbdc0feffff              MOV EDI,dword ptr [EBP + 0xfffffec0]
0048ecbd  eb10                      JMP 0x0048eccf
0048ecbf  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0048ecc7  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048eccf  ff7720                    PUSH dword ptr [EDI + 0x20]
0048ecd2  8bcf                      MOV ECX,EDI
0048ecd4  6a03                      PUSH 0x3
0048ecd6  e835da2100                CALL 0x006ac710
0048ecdb  84c0                      TEST AL,AL
0048ecdd  0f84b1000000              JZ 0x0048ed94
0048ece3  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0048eceb  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0048ecf3  f30f59c0                  MULSS XMM0,XMM0
0048ecf7  f30f59c9                  MULSS XMM1,XMM1
0048ecfb  f30f58c1                  ADDSS XMM0,XMM1
0048ecff  e84c6dfaff                CALL 0x00435a50
0048ed04  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0048ed0b  0f8683000000              JBE 0x0048ed94
0048ed11  e84a022600                CALL 0x006eef60
0048ed16  51                        PUSH ECX
0048ed17  8bcf                      MOV ECX,EDI
0048ed19  660f6ec0                  MOVD XMM0,EAX
0048ed1d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048ed21  c1e81f                    SHR EAX,0x1f
0048ed24  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048ed2d  660f5ac0                  CVTPD2PS XMM0,XMM0
0048ed31  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048ed39  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
0048ed41  f30f110424                MOVSS dword ptr [ESP],XMM0
0048ed46  e885772200                CALL 0x006b64d0
0048ed4b  0f1087e4010000            MOVUPS XMM0,xmmword ptr [EDI + 0x1e4]
0048ed52  6a01                      PUSH 0x1
0048ed54  8bc8                      MOV ECX,EAX
0048ed56  8d55c0                    LEA EDX,[EBP + -0x40]
0048ed59  8b870c020000              MOV EAX,dword ptr [EDI + 0x20c]
0048ed5f  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0048ed63  6a00                      PUSH 0x0
0048ed65  0f1087f4010000            MOVUPS XMM0,xmmword ptr [EDI + 0x1f4]
0048ed6c  68ff000000                PUSH 0xff
0048ed71  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0048ed74  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0048ed78  c745cc0000003f            MOV dword ptr [EBP + -0x34],0x3f000000
0048ed7f  f30f7e8704020000          MOVQ XMM0,qword ptr [EDI + 0x204]
0048ed87  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
0048ed8c  8b01                      MOV EAX,dword ptr [ECX]
0048ed8e  6aff                      PUSH -0x1
0048ed90  52                        PUSH EDX
0048ed91  ff503c                    CALL dword ptr [EAX + 0x3c]
0048ed94  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0048ed99  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0048eda0  7636                      JBE 0x0048edd8
0048eda2  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0048eda5  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0048eda8  742e                      JZ 0x0048edd8
0048edaa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0048edb0  83781001                  CMP dword ptr [EAX + 0x10],0x1
0048edb4  741a                      JZ 0x0048edd0
0048edb6  83781801                  CMP dword ptr [EAX + 0x18],0x1
0048edba  7414                      JZ 0x0048edd0
0048edbc  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0048edbf  81e100800000              AND ECX,0x8000
0048edc5  83c900                    OR ECX,0x0
0048edc8  7406                      JZ 0x0048edd0
0048edca  c70000000000              MOV dword ptr [EAX],0x0
0048edd0  83c038                    ADD EAX,0x38
0048edd3  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0048edd6  75d8                      JNZ 0x0048edb0
0048edd8  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
0048edde  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
0048ede4  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
0048edea  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
0048edf0  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
0048edf6  85c9                      TEST ECX,ECX
0048edf8  7412                      JZ 0x0048ee0c
0048edfa  8b85b8feffff              MOV EAX,dword ptr [EBP + 0xfffffeb8]
0048ee00  2bc1                      SUB EAX,ECX
0048ee02  c1f802                    SAR EAX,0x2
0048ee05  50                        PUSH EAX
0048ee06  51                        PUSH ECX
0048ee07  e834d9f7ff                CALL 0x0040c740
0048ee0c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0048ee0f  64890d00000000            MOV dword ptr FS:[0x0],ECX
0048ee16  59                        POP ECX
0048ee17  5f                        POP EDI
0048ee18  5e                        POP ESI
0048ee19  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0048ee1c  33cd                      XOR ECX,EBP
0048ee1e  e808036600                CALL 0x00aef12b
0048ee23  8be5                      MOV ESP,EBP
0048ee25  5d                        POP EBP
0048ee26  8be3                      MOV ESP,EBX
0048ee28  5b                        POP EBX
0048ee29  c3                        RET
