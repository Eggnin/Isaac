; J460 NPC AI 0x006ae820 HELPER_Entity_BaseUpdate
; types=0
; identities=*
; entry=006ae820
006ae820  55                        PUSH EBP
006ae821  8bec                      MOV EBP,ESP
006ae823  83e4f0                    AND ESP,0xfffffff0
006ae826  81ec18030000              SUB ESP,0x318
006ae82c  a1b493bf00                MOV EAX,[0x00bf93b4]
006ae831  33c4                      XOR EAX,ESP
006ae833  89842414030000            MOV dword ptr [ESP + 0x314],EAX
006ae83a  56                        PUSH ESI
006ae83b  57                        PUSH EDI
006ae83c  8bf9                      MOV EDI,ECX
006ae83e  897c2448                  MOV dword ptr [ESP + 0x48],EDI
006ae842  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
006ae848  8bc2                      MOV EAX,EDX
006ae84a  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006ae850  2500400000                AND EAX,0x4000
006ae855  83c800                    OR EAX,0x0
006ae858  89542410                  MOV dword ptr [ESP + 0x10],EDX
006ae85c  7409                      JZ 0x006ae867
006ae85e  89542410                  MOV dword ptr [ESP + 0x10],EDX
006ae862  e9a5000000                JMP 0x006ae90c
006ae867  f30f108fa4030000          MOVSS XMM1,dword ptr [EDI + 0x3a4]
006ae86f  8bc2                      MOV EAX,EDX
006ae871  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
006ae879  83e020                    AND EAX,0x20
006ae87c  83c800                    OR EAX,0x0
006ae87f  f30f118fa0030000          MOVSS dword ptr [EDI + 0x3a0],XMM1
006ae887  0f28c2                    MOVAPS XMM0,XMM2
006ae88a  f30f58c1                  ADDSS XMM0,XMM1
006ae88e  f30f1187a4030000          MOVSS dword ptr [EDI + 0x3a4],XMM0
006ae896  7508                      JNZ 0x006ae8a0
006ae898  3987f0030000              CMP dword ptr [EDI + 0x3f0],EAX
006ae89e  7e09                      JLE 0x006ae8a9
006ae8a0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006ae8a7  7463                      JZ 0x006ae90c
006ae8a9  8bce                      MOV ECX,ESI
006ae8ab  89542410                  MOV dword ptr [ESP + 0x10],EDX
006ae8af  83e101                    AND ECX,0x1
006ae8b2  33c0                      XOR EAX,EAX
006ae8b4  0bc1                      OR EAX,ECX
006ae8b6  7554                      JNZ 0x006ae90c
006ae8b8  f30f10874c010000          MOVSS XMM0,dword ptr [EDI + 0x14c]
006ae8c0  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006ae8c6  f30f59c2                  MULSS XMM0,XMM2
006ae8ca  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
006ae8d2  80bf5101000000            CMP byte ptr [EDI + 0x151],0x0
006ae8d9  7423                      JZ 0x006ae8fe
006ae8db  8d4f78                    LEA ECX,[EDI + 0x78]
006ae8de  e84da7d5ff                CALL 0x00409030
006ae8e3  8d8f98000000              LEA ECX,[EDI + 0x98]
006ae8e9  e842a7d5ff                CALL 0x00409030
006ae8ee  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006ae8f4  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006ae8fa  89442410                  MOV dword ptr [ESP + 0x10],EAX
006ae8fe  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
006ae904  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
006ae90c  8bce                      MOV ECX,ESI
006ae90e  33c0                      XOR EAX,EAX
006ae910  81e100800000              AND ECX,0x8000
006ae916  0bc1                      OR EAX,ECX
006ae918  0f8477020000              JZ 0x006aeb95
006ae91e  8a8790010000              MOV AL,byte ptr [EDI + 0x190]
006ae924  88442417                  MOV byte ptr [ESP + 0x17],AL
006ae928  84c0                      TEST AL,AL
006ae92a  0f8593000000              JNZ 0x006ae9c3
006ae930  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
006ae938  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
006ae940  0f28c1                    MOVAPS XMM0,XMM1
006ae943  f30f59c1                  MULSS XMM0,XMM1
006ae947  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
006ae94d  0f28ca                    MOVAPS XMM1,XMM2
006ae950  f30f59ca                  MULSS XMM1,XMM2
006ae954  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
006ae95a  f30f58c1                  ADDSS XMM0,XMM1
006ae95e  e8ed70d8ff                CALL 0x00435a50
006ae963  f30f108f08030000          MOVSS XMM1,dword ptr [EDI + 0x308]
006ae96b  f30f10970c030000          MOVSS XMM2,dword ptr [EDI + 0x30c]
006ae973  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006ae979  0f28c1                    MOVAPS XMM0,XMM1
006ae97c  f30f59c1                  MULSS XMM0,XMM1
006ae980  0f28ca                    MOVAPS XMM1,XMM2
006ae983  f30f59ca                  MULSS XMM1,XMM2
006ae987  f30f58c1                  ADDSS XMM0,XMM1
006ae98b  e8c070d8ff                CALL 0x00435a50
006ae990  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
006ae996  0f2fc8                    COMISS XMM1,XMM0
006ae999  7228                      JC 0x006ae9c3
006ae99b  f30f108f0c030000          MOVSS XMM1,dword ptr [EDI + 0x30c]
006ae9a3  f30f108708030000          MOVSS XMM0,dword ptr [EDI + 0x308]
006ae9ab  f30f594c242c              MULSS XMM1,dword ptr [ESP + 0x2c]
006ae9b1  f30f5944244c              MULSS XMM0,dword ptr [ESP + 0x4c]
006ae9b7  f30f58c1                  ADDSS XMM0,XMM1
006ae9bb  0f57c9                    XORPS XMM1,XMM1
006ae9be  0f2fc8                    COMISS XMM1,XMM0
006ae9c1  7737                      JA 0x006ae9fa
006ae9c3  f30f109708030000          MOVSS XMM2,dword ptr [EDI + 0x308]
006ae9cb  f30f108f0c030000          MOVSS XMM1,dword ptr [EDI + 0x30c]
006ae9d3  0f28c2                    MOVAPS XMM0,XMM2
006ae9d6  f30f59c2                  MULSS XMM0,XMM2
006ae9da  f30f59c9                  MULSS XMM1,XMM1
006ae9de  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
006ae9e4  f30f58c1                  ADDSS XMM0,XMM1
006ae9e8  e86370d8ff                CALL 0x00435a50
006ae9ed  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006ae9f5  0f2fc8                    COMISS XMM1,XMM0
006ae9f8  7625                      JBE 0x006aea1f
006ae9fa  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
006ae9fe  81e6ff7ffeff              AND ESI,0xfffe7fff
006aea04  898768010000              MOV dword ptr [EDI + 0x168],EAX
006aea0a  89b76c010000              MOV dword ptr [EDI + 0x16c],ESI
006aea10  c787f802000000000000      MOV dword ptr [EDI + 0x2f8],0x0
006aea1a  e976010000                JMP 0x006aeb95
006aea1f  f30f108768030000          MOVSS XMM0,dword ptr [EDI + 0x368]
006aea27  8bce                      MOV ECX,ESI
006aea29  f30f100d18a4ba00          MOVSS XMM1,dword ptr [0x00baa418]
006aea31  81e100000200              AND ECX,0x20000
006aea37  f30f59c1                  MULSS XMM0,XMM1
006aea3b  33c0                      XOR EAX,EAX
006aea3d  0bc1                      OR EAX,ECX
006aea3f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006aea47  7412                      JZ 0x006aea5b
006aea49  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
006aea4d  f30f10870c030000          MOVSS XMM0,dword ptr [EDI + 0x30c]
006aea55  8a4c2417                  MOV CL,byte ptr [ESP + 0x17]
006aea59  eb38                      JMP 0x006aea93
006aea5b  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
006aea61  f30f59c1                  MULSS XMM0,XMM1
006aea65  f30f118708030000          MOVSS dword ptr [EDI + 0x308],XMM0
006aea6d  f30f10870c030000          MOVSS XMM0,dword ptr [EDI + 0x30c]
006aea75  f30f59c1                  MULSS XMM0,XMM1
006aea79  f30f11870c030000          MOVSS dword ptr [EDI + 0x30c],XMM0
006aea81  8a8f90010000              MOV CL,byte ptr [EDI + 0x190]
006aea87  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006aea8d  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006aea93  89442468                  MOV dword ptr [ESP + 0x68],EAX
006aea97  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
006aea9d  84c9                      TEST CL,CL
006aea9f  0f84d8000000              JZ 0x006aeb7d
006aeaa5  81e600000100              AND ESI,0x10000
006aeaab  33c0                      XOR EAX,EAX
006aeaad  0bc6                      OR EAX,ESI
006aeaaf  0f84b7000000              JZ 0x006aeb6c
006aeab5  8d84241c010000            LEA EAX,[ESP + 0x11c]
006aeabc  8d8f60030000              LEA ECX,[EDI + 0x360]
006aeac2  50                        PUSH EAX
006aeac3  e868153600                CALL 0x00a10030
006aeac8  f30f108f08030000          MOVSS XMM1,dword ptr [EDI + 0x308]
006aead0  8bf0                      MOV ESI,EAX
006aead2  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
006aead8  f30f59c0                  MULSS XMM0,XMM0
006aeadc  f30f59c9                  MULSS XMM1,XMM1
006aeae0  f30f58c1                  ADDSS XMM0,XMM1
006aeae4  e8676fd8ff                CALL 0x00435a50
006aeae9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aeaef  0f28c8                    MOVAPS XMM1,XMM0
006aeaf2  f30f590e                  MULSS XMM1,dword ptr [ESI]
006aeaf6  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
006aeafb  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
006aeb03  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006aeb0b  f30f118f08030000          MOVSS dword ptr [EDI + 0x308],XMM1
006aeb13  f30f11870c030000          MOVSS dword ptr [EDI + 0x30c],XMM0
006aeb1b  e8d075d8ff                CALL 0x004360f0
006aeb20  48                        DEC EAX
006aeb21  8d8c2438010000            LEA ECX,[ESP + 0x138]
006aeb28  660f6ec8                  MOVD XMM1,EAX
006aeb2c  8b07                      MOV EAX,dword ptr [EDI]
006aeb2e  0f5bc9                    CVTDQ2PS XMM1,XMM1
006aeb31  8b5020                    MOV EDX,dword ptr [EAX + 0x20]
006aeb34  f30f58c9                  ADDSS XMM1,XMM1
006aeb38  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
006aeb40  e82b71d8ff                CALL 0x00435c70
006aeb45  6a1e                      PUSH 0x1e
006aeb47  50                        PUSH EAX
006aeb48  6a00                      PUSH 0x0
006aeb4a  6a00                      PUSH 0x0
006aeb4c  51                        PUSH ECX
006aeb4d  8bcf                      MOV ECX,EDI
006aeb4f  f30f110c24                MOVSS dword ptr [ESP],XMM1
006aeb54  ffd2                      CALL EDX
006aeb56  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006aeb5c  81a76c010000fffffeff      AND dword ptr [EDI + 0x16c],0xfffeffff
006aeb66  898768010000              MOV dword ptr [EDI + 0x168],EAX
006aeb6c  8b87f8020000              MOV EAX,dword ptr [EDI + 0x2f8]
006aeb72  99                        CDQ
006aeb73  2bc2                      SUB EAX,EDX
006aeb75  d1f8                      SAR EAX,0x1
006aeb77  8987f8020000              MOV dword ptr [EDI + 0x2f8],EAX
006aeb7d  8b8708030000              MOV EAX,dword ptr [EDI + 0x308]
006aeb83  898760030000              MOV dword ptr [EDI + 0x360],EAX
006aeb89  8b870c030000              MOV EAX,dword ptr [EDI + 0x30c]
006aeb8f  898764030000              MOV dword ptr [EDI + 0x364],EAX
006aeb95  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
006aeb9d  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
006aeba5  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
006aebad  0f2ed4                    UCOMISS XMM2,XMM4
006aebb0  9f                        LAHF
006aebb1  f6c444                    TEST AH,0x44
006aebb4  7b16                      JNP 0x006aebcc
006aebb6  0f28cb                    MOVAPS XMM1,XMM3
006aebb9  0f28c3                    MOVAPS XMM0,XMM3
006aebbc  f30f58ca                  ADDSS XMM1,XMM2
006aebc0  f30f59c2                  MULSS XMM0,XMM2
006aebc4  f30f5cc8                  SUBSS XMM1,XMM0
006aebc8  f30f5ed9                  DIVSS XMM3,XMM1
006aebcc  0f28cb                    MOVAPS XMM1,XMM3
006aebcf  8d873c030000              LEA EAX,[EDI + 0x33c]
006aebd5  f30f598f60030000          MULSS XMM1,dword ptr [EDI + 0x360]
006aebdd  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
006aebe1  f30f599f64030000          MULSS XMM3,dword ptr [EDI + 0x364]
006aebe9  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
006aebf1  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
006aebf9  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
006aec01  0f28c2                    MOVAPS XMM0,XMM2
006aec04  f30f59d3                  MULSS XMM2,XMM3
006aec08  f30f59c1                  MULSS XMM0,XMM1
006aec0c  f30f585004                ADDSS XMM2,dword ptr [EAX + 0x4]
006aec11  f30f5800                  ADDSS XMM0,dword ptr [EAX]
006aec15  f30f115004                MOVSS dword ptr [EAX + 0x4],XMM2
006aec1a  f30f1100                  MOVSS dword ptr [EAX],XMM0
006aec1e  8b8768030000              MOV EAX,dword ptr [EDI + 0x368]
006aec24  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006aec2a  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006aec30  89876c030000              MOV dword ptr [EDI + 0x36c],EAX
006aec36  8bc1                      MOV EAX,ECX
006aec38  2500400000                AND EAX,0x4000
006aec3d  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006aec41  83c800                    OR EAX,0x0
006aec44  0f85f8080000              JNZ 0x006af542
006aec4a  8bb7ac010000              MOV ESI,dword ptr [EDI + 0x1ac]
006aec50  32d2                      XOR DL,DL
006aec52  3bb7b0010000              CMP ESI,dword ptr [EDI + 0x1b0]
006aec58  0f840d010000              JZ 0x006aed6b
006aec5e  6690                      NOP
006aec60  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
006aec63  b901000000                MOV ECX,0x1
006aec68  48                        DEC EAX
006aec69  0fb6d2                    MOVZX EDX,DL
006aec6c  894634                    MOV dword ptr [ESI + 0x34],EAX
006aec6f  807e3800                  CMP byte ptr [ESI + 0x38],0x0
006aec73  0f45d1                    CMOVNZ EDX,ECX
006aec76  8d4e3c                    LEA ECX,[ESI + 0x3c]
006aec79  85c0                      TEST EAX,EAX
006aec7b  751a                      JNZ 0x006aec97
006aec7d  8b97b0010000              MOV EDX,dword ptr [EDI + 0x1b0]
006aec83  56                        PUSH ESI
006aec84  e83782e0ff                CALL 0x004b6ec0
006aec89  83c404                    ADD ESP,0x4
006aec8c  b201                      MOV DL,0x1
006aec8e  8387b0010000c4            ADD dword ptr [EDI + 0x1b0],-0x3c
006aec95  eb02                      JMP 0x006aec99
006aec97  8bf1                      MOV ESI,ECX
006aec99  8b8fb0010000              MOV ECX,dword ptr [EDI + 0x1b0]
006aec9f  3bf1                      CMP ESI,ECX
006aeca1  75bd                      JNZ 0x006aec60
006aeca3  84d2                      TEST DL,DL
006aeca5  0f84c0000000              JZ 0x006aed6b
006aecab  8bb7ac010000              MOV ESI,dword ptr [EDI + 0x1ac]
006aecb1  b889888888                MOV EAX,0x88888889
006aecb6  2bce                      SUB ECX,ESI
006aecb8  f7e9                      IMUL ECX
006aecba  03d1                      ADD EDX,ECX
006aecbc  c1fa05                    SAR EDX,0x5
006aecbf  8bc2                      MOV EAX,EDX
006aecc1  c1e81f                    SHR EAX,0x1f
006aecc4  03c2                      ADD EAX,EDX
006aecc6  0f8498000000              JZ 0x006aed64
006aeccc  8d4e04                    LEA ECX,[ESI + 0x4]
006aeccf  8d5640                    LEA EDX,[ESI + 0x40]
006aecd2  83f801                    CMP EAX,0x1
006aecd5  7706                      JA 0x006aecdd
006aecd7  8d97b8010000              LEA EDX,[EDI + 0x1b8]
006aecdd  807e3800                  CMP byte ptr [ESI + 0x38],0x0
006aece1  0f1001                    MOVUPS XMM0,xmmword ptr [ECX]
006aece4  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
006aece7  89842418010000            MOV dword ptr [ESP + 0x118],EAX
006aecee  0f118424f0000000          MOVUPS xmmword ptr [ESP + 0xf0],XMM0
006aecf6  0f104110                  MOVUPS XMM0,xmmword ptr [ECX + 0x10]
006aecfa  0f11842400010000          MOVUPS xmmword ptr [ESP + 0x100],XMM0
006aed02  f30f7e4120                MOVQ XMM0,qword ptr [ECX + 0x20]
006aed07  660fd6842410010000        MOVQ qword ptr [ESP + 0x110],XMM0
006aed10  7440                      JZ 0x006aed52
006aed12  660f6e4e34                MOVD XMM1,dword ptr [ESI + 0x34]
006aed17  8d8424d8010000            LEA EAX,[ESP + 0x1d8]
006aed1e  660f6e4630                MOVD XMM0,dword ptr [ESI + 0x30]
006aed23  0f5bc0                    CVTDQ2PS XMM0,XMM0
006aed26  51                        PUSH ECX
006aed27  0f5bc9                    CVTDQ2PS XMM1,XMM1
006aed2a  f30f5ec8                  DIVSS XMM1,XMM0
006aed2e  0f28c4                    MOVAPS XMM0,XMM4
006aed31  f30f5cc1                  SUBSS XMM0,XMM1
006aed35  f30f110424                MOVSS dword ptr [ESP],XMM0
006aed3a  52                        PUSH EDX
006aed3b  51                        PUSH ECX
006aed3c  50                        PUSH EAX
006aed3d  e89e45fdff                CALL 0x006832e0
006aed42  83c410                    ADD ESP,0x10
006aed45  8d8c24f0000000            LEA ECX,[ESP + 0xf0]
006aed4c  50                        PUSH EAX
006aed4d  e89e84d5ff                CALL 0x004071f0
006aed52  8d8424f0000000            LEA EAX,[ESP + 0xf0]
006aed59  8d4f48                    LEA ECX,[EDI + 0x48]
006aed5c  50                        PUSH EAX
006aed5d  e86e86d5ff                CALL 0x004073d0
006aed62  eb07                      JMP 0x006aed6b
006aed64  8b07                      MOV EAX,dword ptr [EDI]
006aed66  8bcf                      MOV ECX,EDI
006aed68  ff5060                    CALL dword ptr [EAX + 0x60]
006aed6b  8bb768010000              MOV ESI,dword ptr [EDI + 0x168]
006aed71  8bc6                      MOV EAX,ESI
006aed73  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006aed79  83e001                    AND EAX,0x1
006aed7c  83c800                    OR EAX,0x0
006aed7f  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006aed83  0f8549010000              JNZ 0x006aeed2
006aed89  a17816c700                MOV EAX,[0x00c71678]
006aed8e  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006aed95  7c06                      JL 0x006aed9d
006aed97  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006aed9b  7411                      JZ 0x006aedae
006aed9d  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006aeda0  83e80a                    SUB EAX,0xa
006aeda3  3ddd030000                CMP EAX,0x3dd
006aeda8  0f8724010000              JA 0x006aeed2
006aedae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aedb4  6a11                      PUSH 0x11
006aedb6  e8a56efbff                CALL 0x00665c60
006aedbb  84c0                      TEST AL,AL
006aedbd  7511                      JNZ 0x006aedd0
006aedbf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aedc5  6a15                      PUSH 0x15
006aedc7  e8946efbff                CALL 0x00665c60
006aedcc  84c0                      TEST AL,AL
006aedce  7422                      JZ 0x006aedf2
006aedd0  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
006aedd4  81ce00010000              OR ESI,0x100
006aedda  c7872402000002000000      MOV dword ptr [EDI + 0x224],0x2
006aede4  89b768010000              MOV dword ptr [EDI + 0x168],ESI
006aedea  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006aedf0  eb04                      JMP 0x006aedf6
006aedf2  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
006aedf6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aedfc  6a12                      PUSH 0x12
006aedfe  89742424                  MOV dword ptr [ESP + 0x24],ESI
006aee02  89442430                  MOV dword ptr [ESP + 0x30],EAX
006aee06  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006aee0a  e8516efbff                CALL 0x00665c60
006aee0f  84c0                      TEST AL,AL
006aee11  7426                      JZ 0x006aee39
006aee13  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
006aee17  81ce00020000              OR ESI,0x200
006aee1d  c7872802000002000000      MOV dword ptr [EDI + 0x228],0x2
006aee27  89442418                  MOV dword ptr [ESP + 0x18],EAX
006aee2b  89b768010000              MOV dword ptr [EDI + 0x168],ESI
006aee31  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006aee37  eb04                      JMP 0x006aee3d
006aee39  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
006aee3d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aee43  6a13                      PUSH 0x13
006aee45  89742424                  MOV dword ptr [ESP + 0x24],ESI
006aee49  89442430                  MOV dword ptr [ESP + 0x30],EAX
006aee4d  e80e6efbff                CALL 0x00665c60
006aee52  84c0                      TEST AL,AL
006aee54  7552                      JNZ 0x006aeea8
006aee56  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aee5c  6a15                      PUSH 0x15
006aee5e  e8fd6dfbff                CALL 0x00665c60
006aee63  84c0                      TEST AL,AL
006aee65  7541                      JNZ 0x006aeea8
006aee67  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006aee6d  6a14                      PUSH 0x14
006aee6f  e8ec6dfbff                CALL 0x00665c60
006aee74  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
006aee78  84c0                      TEST AL,AL
006aee7a  7456                      JZ 0x006aeed2
006aee7c  a17816c700                MOV EAX,[0x00c71678]
006aee81  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006aee85  8b88f8640200              MOV ECX,dword ptr [EAX + 0x264f8]
006aee8b  b889888888                MOV EAX,0x88888889
006aee90  2b8f28030000              SUB ECX,dword ptr [EDI + 0x328]
006aee96  f7e9                      IMUL ECX
006aee98  03d1                      ADD EDX,ECX
006aee9a  c1fa05                    SAR EDX,0x5
006aee9d  8bc2                      MOV EAX,EDX
006aee9f  c1e81f                    SHR EAX,0x1f
006aeea2  03c2                      ADD EAX,EDX
006aeea4  a801                      TEST AL,0x1
006aeea6  7526                      JNZ 0x006aeece
006aeea8  8b742420                  MOV ESI,dword ptr [ESP + 0x20]
006aeeac  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
006aeeb0  81ce00080000              OR ESI,0x800
006aeeb6  c7873002000002000000      MOV dword ptr [EDI + 0x230],0x2
006aeec0  89b768010000              MOV dword ptr [EDI + 0x168],ESI
006aeec6  898f6c010000              MOV dword ptr [EDI + 0x16c],ECX
006aeecc  eb04                      JMP 0x006aeed2
006aeece  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
006aeed2  8b8710020000              MOV EAX,dword ptr [EDI + 0x210]
006aeed8  85c0                      TEST EAX,EAX
006aeeda  7e07                      JLE 0x006aeee3
006aeedc  48                        DEC EAX
006aeedd  898710020000              MOV dword ptr [EDI + 0x210],EAX
006aeee3  8b8714020000              MOV EAX,dword ptr [EDI + 0x214]
006aeee9  85c0                      TEST EAX,EAX
006aeeeb  7e07                      JLE 0x006aeef4
006aeeed  48                        DEC EAX
006aeeee  898714020000              MOV dword ptr [EDI + 0x214],EAX
006aeef4  8b8718020000              MOV EAX,dword ptr [EDI + 0x218]
006aeefa  8bd6                      MOV EDX,ESI
006aeefc  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
006aef00  85c0                      TEST EAX,EAX
006aef02  7e22                      JLE 0x006aef26
006aef04  48                        DEC EAX
006aef05  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
006aef09  898718020000              MOV dword ptr [EDI + 0x218],EAX
006aef0f  85c0                      TEST EAX,EAX
006aef11  7f13                      JG 0x006aef26
006aef13  83e2df                    AND EDX,0xffffffdf
006aef16  8bf1                      MOV ESI,ECX
006aef18  899768010000              MOV dword ptr [EDI + 0x168],EDX
006aef1e  89b76c010000              MOV dword ptr [EDI + 0x16c],ESI
006aef24  eb04                      JMP 0x006aef2a
006aef26  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
006aef2a  8b871c020000              MOV EAX,dword ptr [EDI + 0x21c]
006aef30  8bca                      MOV ECX,EDX
006aef32  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
006aef36  85c0                      TEST EAX,EAX
006aef38  7e2a                      JLE 0x006aef64
006aef3a  48                        DEC EAX
006aef3b  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
006aef3f  89871c020000              MOV dword ptr [EDI + 0x21c],EAX
006aef45  85c0                      TEST EAX,EAX
006aef47  7f1b                      JG 0x006aef64
006aef49  83e1bf                    AND ECX,0xffffffbf
006aef4c  89b76c010000              MOV dword ptr [EDI + 0x16c],ESI
006aef52  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006aef58  c7872003000000000040      MOV dword ptr [EDI + 0x320],0x40000000
006aef62  eb04                      JMP 0x006aef68
006aef64  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
006aef68  83bf2002000000            CMP dword ptr [EDI + 0x220],0x0
006aef6f  8bc6                      MOV EAX,ESI
006aef71  8bd1                      MOV EDX,ECX
006aef73  89442410                  MOV dword ptr [ESP + 0x10],EAX
006aef77  7e33                      JLE 0x006aefac
006aef79  8b8720020000              MOV EAX,dword ptr [EDI + 0x220]
006aef7f  48                        DEC EAX
006aef80  89742410                  MOV dword ptr [ESP + 0x10],ESI
006aef84  898720020000              MOV dword ptr [EDI + 0x220],EAX
006aef8a  85c0                      TEST EAX,EAX
006aef8c  7f1a                      JG 0x006aefa8
006aef8e  8bc6                      MOV EAX,ESI
006aef90  81e27fffffff              AND EDX,0xffffff7f
006aef96  89442410                  MOV dword ptr [ESP + 0x10],EAX
006aef9a  899768010000              MOV dword ptr [EDI + 0x168],EDX
006aefa0  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006aefa6  eb04                      JMP 0x006aefac
006aefa8  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
006aefac  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006aefb0  8bca                      MOV ECX,EDX
006aefb2  8b8724020000              MOV EAX,dword ptr [EDI + 0x224]
006aefb8  85c0                      TEST EAX,EAX
006aefba  7e65                      JLE 0x006af021
006aefbc  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
006aefc0  48                        DEC EAX
006aefc1  898724020000              MOV dword ptr [EDI + 0x224],EAX
006aefc7  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
006aefcb  85c0                      TEST EAX,EAX
006aefcd  7f52                      JG 0x006af021
006aefcf  8b87c4030000              MOV EAX,dword ptr [EDI + 0x3c4]
006aefd5  8bd6                      MOV EDX,ESI
006aefd7  8db7c4030000              LEA ESI,[EDI + 0x3c4]
006aefdd  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
006aefe3  81e1fffeffff              AND ECX,0xfffffeff
006aefe9  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006aefef  85c0                      TEST EAX,EAX
006aeff1  7432                      JZ 0x006af025
006aeff3  8d88cc030000              LEA ECX,[EAX + 0x3cc]
006aeff9  89b424c4000000            MOV dword ptr [ESP + 0xc4],ESI
006af000  8d8424c4000000            LEA EAX,[ESP + 0xc4]
006af007  50                        PUSH EAX
006af008  e80302e2ff                CALL 0x004cf210
006af00d  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006af013  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006af019  c70600000000              MOV dword ptr [ESI],0x0
006af01f  eb04                      JMP 0x006af025
006af021  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
006af025  83bf2802000000            CMP dword ptr [EDI + 0x228],0x0
006af02c  8bc2                      MOV EAX,EDX
006af02e  8bf1                      MOV ESI,ECX
006af030  89442410                  MOV dword ptr [ESP + 0x10],EAX
006af034  7e33                      JLE 0x006af069
006af036  8b8728020000              MOV EAX,dword ptr [EDI + 0x228]
006af03c  48                        DEC EAX
006af03d  89542410                  MOV dword ptr [ESP + 0x10],EDX
006af041  898728020000              MOV dword ptr [EDI + 0x228],EAX
006af047  85c0                      TEST EAX,EAX
006af049  7f1a                      JG 0x006af065
006af04b  8bc2                      MOV EAX,EDX
006af04d  81e6fffdffff              AND ESI,0xfffffdff
006af053  89442410                  MOV dword ptr [ESP + 0x10],EAX
006af057  89b768010000              MOV dword ptr [EDI + 0x168],ESI
006af05d  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006af063  eb04                      JMP 0x006af069
006af065  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
006af069  8bd0                      MOV EDX,EAX
006af06b  8bce                      MOV ECX,ESI
006af06d  8b8730020000              MOV EAX,dword ptr [EDI + 0x230]
006af073  85c0                      TEST EAX,EAX
006af075  7e21                      JLE 0x006af098
006af077  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
006af07b  48                        DEC EAX
006af07c  898730020000              MOV dword ptr [EDI + 0x230],EAX
006af082  85c0                      TEST EAX,EAX
006af084  7f12                      JG 0x006af098
006af086  81e1fff7ffff              AND ECX,0xfffff7ff
006af08c  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
006af092  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006af098  f30f1087b8030000          MOVSS XMM0,dword ptr [EDI + 0x3b8]
006af0a0  f30f108fb4030000          MOVSS XMM1,dword ptr [EDI + 0x3b4]
006af0a8  0f2ec1                    UCOMISS XMM0,XMM1
006af0ab  9f                        LAHF
006af0ac  f6c444                    TEST AH,0x44
006af0af  7b20                      JNP 0x006af0d1
006af0b1  f30f5cc1                  SUBSS XMM0,XMM1
006af0b5  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006af0bd  f30f5905b4a0ba00          MULSS XMM0,dword ptr [0x00baa0b4]
006af0c5  f30f58c1                  ADDSS XMM0,XMM1
006af0c9  f30f1187b4030000          MOVSS dword ptr [EDI + 0x3b4],XMM0
006af0d1  8b873c020000              MOV EAX,dword ptr [EDI + 0x23c]
006af0d7  85c0                      TEST EAX,EAX
006af0d9  7e1e                      JLE 0x006af0f9
006af0db  48                        DEC EAX
006af0dc  89873c020000              MOV dword ptr [EDI + 0x23c],EAX
006af0e2  85c0                      TEST EAX,EAX
006af0e4  7f13                      JG 0x006af0f9
006af0e6  8bcf                      MOV ECX,EDI
006af0e8  e8536e0000                CALL 0x006b5f40
006af0ed  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006af0f3  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006af0f9  8b8734020000              MOV EAX,dword ptr [EDI + 0x234]
006af0ff  85c0                      TEST EAX,EAX
006af101  0f8e83000000              JLE 0x006af18a
006af107  48                        DEC EAX
006af108  898734020000              MOV dword ptr [EDI + 0x234],EAX
006af10e  85c0                      TEST EAX,EAX
006af110  7f1c                      JG 0x006af12e
006af112  81e1ffefffff              AND ECX,0xffffefff
006af118  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
006af11e  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006af124  c7872403000000000040      MOV dword ptr [EDI + 0x324],0x40000000
006af12e  648b0d2c000000            MOV ECX,dword ptr FS:[0x2c]
006af135  a1980ac800                MOV EAX,[0x00c80a98]
006af13a  8b09                      MOV ECX,dword ptr [ECX]
006af13c  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
006af142  0f8f801a0000              JG 0x006b0bc8
006af148  a17816c700                MOV EAX,[0x00c71678]
006af14d  b906000000                MOV ECX,0x6
006af152  6a01                      PUSH 0x1
006af154  6a00                      PUSH 0x0
006af156  68ff000000                PUSH 0xff
006af15b  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006af161  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
006af167  99                        CDQ
006af168  f7f9                      IDIV ECX
006af16a  8b07                      MOV EAX,dword ptr [EDI]
006af16c  8bcf                      MOV ECX,EDI
006af16e  6a01                      PUSH 0x1
006af170  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
006af173  6bc22c                    IMUL EAX,EDX,0x2c
006af176  05a00ac800                ADD EAX,0xc80aa0
006af17b  50                        PUSH EAX
006af17c  ffd6                      CALL ESI
006af17e  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006af184  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006af18a  8b872c020000              MOV EAX,dword ptr [EDI + 0x22c]
006af190  8bf2                      MOV ESI,EDX
006af192  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
006af196  85c0                      TEST EAX,EAX
006af198  7e23                      JLE 0x006af1bd
006af19a  48                        DEC EAX
006af19b  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
006af19f  89872c020000              MOV dword ptr [EDI + 0x22c],EAX
006af1a5  85c0                      TEST EAX,EAX
006af1a7  7f14                      JG 0x006af1bd
006af1a9  81e1fffbffff              AND ECX,0xfffffbff
006af1af  89b76c010000              MOV dword ptr [EDI + 0x16c],ESI
006af1b5  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006af1bb  eb04                      JMP 0x006af1c1
006af1bd  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
006af1c1  8b87e8020000              MOV EAX,dword ptr [EDI + 0x2e8]
006af1c7  85c0                      TEST EAX,EAX
006af1c9  0f8ef3000000              JLE 0x006af2c2
006af1cf  48                        DEC EAX
006af1d0  8987e8020000              MOV dword ptr [EDI + 0x2e8],EAX
006af1d6  85c0                      TEST EAX,EAX
006af1d8  7f19                      JG 0x006af1f3
006af1da  83e6fb                    AND ESI,0xfffffffb
006af1dd  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006af1e3  89b76c010000              MOV dword ptr [EDI + 0x16c],ESI
006af1e9  c787ec02000000000000      MOV dword ptr [EDI + 0x2ec],0x0
006af1f3  64a12c000000              MOV EAX,FS:[0x2c]
006af1f9  8b08                      MOV ECX,dword ptr [EAX]
006af1fb  a1a80bc800                MOV EAX,[0x00c80ba8]
006af200  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
006af206  0f8f2c1b0000              JG 0x006b0d38
006af20c  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006af214  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006af21c  f30f5c8790030000          SUBSS XMM0,dword ptr [EDI + 0x390]
006af224  f30f5c8f8c030000          SUBSS XMM1,dword ptr [EDI + 0x38c]
006af22c  f30f59c0                  MULSS XMM0,XMM0
006af230  f30f59c9                  MULSS XMM1,XMM1
006af234  f30f58c1                  ADDSS XMM0,XMM1
006af238  e81368d8ff                CALL 0x00435a50
006af23d  a17816c700                MOV EAX,[0x00c71678]
006af242  33d2                      XOR EDX,EDX
006af244  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
006af24c  51                        PUSH ECX
006af24d  b906000000                MOV ECX,0x6
006af252  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006af258  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
006af25e  f30f5e879c030000          DIVSS XMM0,dword ptr [EDI + 0x39c]
006af266  f7f1                      DIV ECX
006af268  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
006af270  6bc22c                    IMUL EAX,EDX,0x2c
006af273  8d8c2408020000            LEA ECX,[ESP + 0x208]
006af27a  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
006af282  05b00bc800                ADD EAX,0xc80bb0
006af287  f30f110424                MOVSS dword ptr [ESP],XMM0
006af28c  50                        PUSH EAX
006af28d  e8de7ed5ff                CALL 0x00407170
006af292  50                        PUSH EAX
006af293  8d8424fc020000            LEA EAX,[ESP + 0x2fc]
006af29a  50                        PUSH EAX
006af29b  e84040fdff                CALL 0x006832e0
006af2a0  8b17                      MOV EDX,dword ptr [EDI]
006af2a2  83c410                    ADD ESP,0x10
006af2a5  8bcf                      MOV ECX,EDI
006af2a7  6a01                      PUSH 0x1
006af2a9  6a00                      PUSH 0x0
006af2ab  68ff000000                PUSH 0xff
006af2b0  6a01                      PUSH 0x1
006af2b2  50                        PUSH EAX
006af2b3  ff523c                    CALL dword ptr [EDX + 0x3c]
006af2b6  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006af2bc  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006af2c2  83bff002000000            CMP dword ptr [EDI + 0x2f0],0x0
006af2c9  8bc1                      MOV EAX,ECX
006af2cb  89442424                  MOV dword ptr [ESP + 0x24],EAX
006af2cf  8bd6                      MOV EDX,ESI
006af2d1  7e33                      JLE 0x006af306
006af2d3  8b87f0020000              MOV EAX,dword ptr [EDI + 0x2f0]
006af2d9  48                        DEC EAX
006af2da  894c2424                  MOV dword ptr [ESP + 0x24],ECX
006af2de  8987f0020000              MOV dword ptr [EDI + 0x2f0],EAX
006af2e4  85c0                      TEST EAX,EAX
006af2e6  7f1a                      JG 0x006af302
006af2e8  8bc1                      MOV EAX,ECX
006af2ea  81e2fffff7ff              AND EDX,0xfff7ffff
006af2f0  89442424                  MOV dword ptr [ESP + 0x24],EAX
006af2f4  898768010000              MOV dword ptr [EDI + 0x168],EAX
006af2fa  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
006af300  eb04                      JMP 0x006af306
006af302  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
006af306  8bb7f4020000              MOV ESI,dword ptr [EDI + 0x2f4]
006af30c  8bca                      MOV ECX,EDX
006af30e  89442410                  MOV dword ptr [ESP + 0x10],EAX
006af312  85f6                      TEST ESI,ESI
006af314  0f8eed000000              JLE 0x006af407
006af31a  8d46ff                    LEA EAX,[ESI + -0x1]
006af31d  8b742424                  MOV ESI,dword ptr [ESP + 0x24]
006af321  8987f4020000              MOV dword ptr [EDI + 0x2f4],EAX
006af327  89742410                  MOV dword ptr [ESP + 0x10],ESI
006af32b  85c0                      TEST EAX,EAX
006af32d  0f8fd4000000              JG 0x006af407
006af333  8bc6                      MOV EAX,ESI
006af335  81e1ffffefff              AND ECX,0xffefffff
006af33b  898768010000              MOV dword ptr [EDI + 0x168],EAX
006af341  33f6                      XOR ESI,ESI
006af343  89442410                  MOV dword ptr [ESP + 0x10],EAX
006af347  a17816c700                MOV EAX,[0x00c71678]
006af34c  898f6c010000              MOV dword ptr [EDI + 0x16c],ECX
006af352  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006af358  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
006af35c  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
006af362  0f869f000000              JBE 0x006af407
006af368  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
006af370  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
006af376  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
006af379  a17816c700                MOV EAX,[0x00c71678]
006af37e  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006af385  7c06                      JL 0x006af38d
006af387  83792801                  CMP dword ptr [ECX + 0x28],0x1
006af38b  740d                      JZ 0x006af39a
006af38d  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
006af390  83e80a                    SUB EAX,0xa
006af393  3ddd030000                CMP EAX,0x3dd
006af398  774c                      JA 0x006af3e6
006af39a  8b91c4030000              MOV EDX,dword ptr [ECX + 0x3c4]
006af3a0  8d81c4030000              LEA EAX,[ECX + 0x3c4]
006af3a6  89442420                  MOV dword ptr [ESP + 0x20],EAX
006af3aa  3bd7                      CMP EDX,EDI
006af3ac  7538                      JNZ 0x006af3e6
006af3ae  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
006af3b4  2500010020                AND EAX,0x20000100
006af3b9  83c800                    OR EAX,0x0
006af3bc  7528                      JNZ 0x006af3e6
006af3be  85d2                      TEST EDX,EDX
006af3c0  741a                      JZ 0x006af3dc
006af3c2  8d81c4030000              LEA EAX,[ECX + 0x3c4]
006af3c8  89442474                  MOV dword ptr [ESP + 0x74],EAX
006af3cc  8d8acc030000              LEA ECX,[EDX + 0x3cc]
006af3d2  8d442474                  LEA EAX,[ESP + 0x74]
006af3d6  50                        PUSH EAX
006af3d7  e834fee1ff                CALL 0x004cf210
006af3dc  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
006af3e0  c70000000000              MOV dword ptr [EAX],0x0
006af3e6  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
006af3ea  46                        INC ESI
006af3eb  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
006af3f1  0f8279ffffff              JC 0x006af370
006af3f7  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006af3fd  894c2410                  MOV dword ptr [ESP + 0x10],ECX
006af401  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006af407  8b87fc020000              MOV EAX,dword ptr [EDI + 0x2fc]
006af40d  8bd1                      MOV EDX,ECX
006af40f  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
006af413  85c0                      TEST EAX,EAX
006af415  7e1d                      JLE 0x006af434
006af417  48                        DEC EAX
006af418  8987fc020000              MOV dword ptr [EDI + 0x2fc],EAX
006af41e  85c0                      TEST EAX,EAX
006af420  7f12                      JG 0x006af434
006af422  81e2ffffbfff              AND EDX,0xffbfffff
006af428  89b768010000              MOV dword ptr [EDI + 0x168],ESI
006af42e  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
006af434  83bf1003000000            CMP dword ptr [EDI + 0x310],0x0
006af43b  89742468                  MOV dword ptr [ESP + 0x68],ESI
006af43f  7425                      JZ 0x006af466
006af441  8bca                      MOV ECX,EDX
006af443  33c0                      XOR EAX,EAX
006af445  81e100000800              AND ECX,0x80000
006af44b  0bc1                      OR EAX,ECX
006af44d  7517                      JNZ 0x006af466
006af44f  8b8f10030000              MOV ECX,dword ptr [EDI + 0x310]
006af455  8b01                      MOV EAX,dword ptr [ECX]
006af457  ff5028                    CALL dword ptr [EAX + 0x28]
006af45a  8bb768010000              MOV ESI,dword ptr [EDI + 0x168]
006af460  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006af466  8b87f8020000              MOV EAX,dword ptr [EDI + 0x2f8]
006af46c  8bca                      MOV ECX,EDX
006af46e  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
006af472  85c0                      TEST EAX,EAX
006af474  7e23                      JLE 0x006af499
006af476  48                        DEC EAX
006af477  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
006af47b  8987f8020000              MOV dword ptr [EDI + 0x2f8],EAX
006af481  85c0                      TEST EAX,EAX
006af483  7f14                      JG 0x006af499
006af485  81e1ff7ffeff              AND ECX,0xfffe7fff
006af48b  89b768010000              MOV dword ptr [EDI + 0x168],ESI
006af491  898f6c010000              MOV dword ptr [EDI + 0x16c],ECX
006af497  eb04                      JMP 0x006af49d
006af499  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
006af49d  83bf0003000000            CMP dword ptr [EDI + 0x300],0x0
006af4a4  8bc6                      MOV EAX,ESI
006af4a6  89442410                  MOV dword ptr [ESP + 0x10],EAX
006af4aa  8bd1                      MOV EDX,ECX
006af4ac  7e33                      JLE 0x006af4e1
006af4ae  8b8700030000              MOV EAX,dword ptr [EDI + 0x300]
006af4b4  48                        DEC EAX
006af4b5  89742410                  MOV dword ptr [ESP + 0x10],ESI
006af4b9  898700030000              MOV dword ptr [EDI + 0x300],EAX
006af4bf  85c0                      TEST EAX,EAX
006af4c1  7f1a                      JG 0x006af4dd
006af4c3  8bc6                      MOV EAX,ESI
006af4c5  81e2fffffbff              AND EDX,0xfffbffff
006af4cb  89442410                  MOV dword ptr [ESP + 0x10],EAX
006af4cf  898768010000              MOV dword ptr [EDI + 0x168],EAX
006af4d5  89976c010000              MOV dword ptr [EDI + 0x16c],EDX
006af4db  eb04                      JMP 0x006af4e1
006af4dd  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
006af4e1  8bc8                      MOV ECX,EAX
006af4e3  89442418                  MOV dword ptr [ESP + 0x18],EAX
006af4e7  8b8704030000              MOV EAX,dword ptr [EDI + 0x304]
006af4ed  8bf2                      MOV ESI,EDX
006af4ef  85c0                      TEST EAX,EAX
006af4f1  7e29                      JLE 0x006af51c
006af4f3  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
006af4f7  48                        DEC EAX
006af4f8  898704030000              MOV dword ptr [EDI + 0x304],EAX
006af4fe  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006af502  85c0                      TEST EAX,EAX
006af504  7f16                      JG 0x006af51c
006af506  81e6fffffffe              AND ESI,0xfeffffff
006af50c  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006af510  898f68010000              MOV dword ptr [EDI + 0x168],ECX
006af516  89b76c010000              MOV dword ptr [EDI + 0x16c],ESI
006af51c  8b8738020000              MOV EAX,dword ptr [EDI + 0x238]
006af522  85c0                      TEST EAX,EAX
006af524  7e07                      JLE 0x006af52d
006af526  48                        DEC EAX
006af527  898738020000              MOV dword ptr [EDI + 0x238],EAX
006af52d  8b87f0030000              MOV EAX,dword ptr [EDI + 0x3f0]
006af533  85c0                      TEST EAX,EAX
006af535  7e0b                      JLE 0x006af542
006af537  48                        DEC EAX
006af538  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006af53c  8987f0030000              MOV dword ptr [EDI + 0x3f0],EAX
006af542  8bc1                      MOV EAX,ECX
006af544  2500400000                AND EAX,0x4000
006af549  83c800                    OR EAX,0x0
006af54c  0f859f030000              JNZ 0x006af8f1
006af552  3887b0030000              CMP byte ptr [EDI + 0x3b0],AL
006af558  0f8568030000              JNZ 0x006af8c6
006af55e  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
006af566  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006af56e  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
006af571  88442417                  MOV byte ptr [ESP + 0x17],AL
006af575  8984249c000000            MOV dword ptr [ESP + 0x9c],EAX
006af57c  898424a0000000            MOV dword ptr [ESP + 0xa0],EAX
006af583  898424a4000000            MOV dword ptr [ESP + 0xa4],EAX
006af58a  898424a8000000            MOV dword ptr [ESP + 0xa8],EAX
006af591  f30f118c24ac000000        MOVSS dword ptr [ESP + 0xac],XMM1
006af59a  f30f118424b0000000        MOVSS dword ptr [ESP + 0xb0],XMM0
006af5a3  f30f118c24b4000000        MOVSS dword ptr [ESP + 0xb4],XMM1
006af5ac  f30f118424b8000000        MOVSS dword ptr [ESP + 0xb8],XMM0
006af5b5  898424bc000000            MOV dword ptr [ESP + 0xbc],EAX
006af5bc  898424c0000000            MOV dword ptr [ESP + 0xc0],EAX
006af5c3  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
006af5c6  0f84fa020000              JZ 0x006af8c6
006af5cc  8d4e2c                    LEA ECX,[ESI + 0x2c]
006af5cf  0f57c9                    XORPS XMM1,XMM1
006af5d2  894c2410                  MOV dword ptr [ESP + 0x10],ECX
006af5d6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
006af5e0  f30f1016                  MOVSS XMM2,dword ptr [ESI]
006af5e4  0f2fd1                    COMISS XMM2,XMM1
006af5e7  0f86af020000              JBE 0x006af89c
006af5ed  a17816c700                MOV EAX,[0x00c71678]
006af5f2  8b8044650200              MOV EAX,dword ptr [EAX + 0x26544]
006af5f8  c1e806                    SHR EAX,0x6
006af5fb  a801                      TEST AL,0x1
006af5fd  7440                      JZ 0x006af63f
006af5ff  6890ee90ff                PUSH 0xff90ee90
006af604  8d8c2428010000            LEA ECX,[ESP + 0x128]
006af60b  e840ff3500                CALL 0x00a0f550
006af610  0f5ac2                    CVTPS2PD XMM0,XMM2
006af613  83ec08                    SUB ESP,0x8
006af616  8bc1                      MOV EAX,ECX
006af618  f20f110424                MOVSD qword ptr [ESP],XMM0
006af61d  685472b600                PUSH 0xb67254
006af622  50                        PUSH EAX
006af623  8d873c030000              LEA EAX,[EDI + 0x33c]
006af629  50                        PUSH EAX
006af62a  ff357816c700              PUSH dword ptr [0x00c71678]
006af630  e84b3f0500                CALL 0x00703580
006af635  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
006af639  83c418                    ADD ESP,0x18
006af63c  0f57c9                    XORPS XMM1,XMM1
006af63f  8b41e0                    MOV EAX,dword ptr [ECX + -0x20]
006af642  8b51dc                    MOV EDX,dword ptr [ECX + -0x24]
006af645  8944246c                  MOV dword ptr [ESP + 0x6c],EAX
006af649  8bc2                      MOV EAX,EDX
006af64b  2502020000                AND EAX,0x202
006af650  83c800                    OR EAX,0x0
006af653  745a                      JZ 0x006af6af
006af655  83e204                    AND EDX,0x4
006af658  83ca00                    OR EDX,0x0
006af65b  7552                      JNZ 0x006af6af
006af65d  8b3d9c16c700              MOV EDI,dword ptr [0x00c7169c]
006af663  8d4c247c                  LEA ECX,[ESP + 0x7c]
006af667  c744247c2b000000          MOV dword ptr [ESP + 0x7c],0x2b
006af66f  e80c712a00                CALL 0x00956780
006af674  83ec08                    SUB ESP,0x8
006af677  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006af67f  c704240000803f            MOV dword ptr [ESP],0x3f800000
006af686  6a00                      PUSH 0x0
006af688  6a02                      PUSH 0x2
006af68a  51                        PUSH ECX
006af68b  c704240000803f            MOV dword ptr [ESP],0x3f800000
006af692  8d8f24a30200              LEA ECX,[EDI + 0x2a324]
006af698  ffb42490000000            PUSH dword ptr [ESP + 0x90]
006af69f  e88ce52700                CALL 0x0092dc30
006af6a4  8b7c2448                  MOV EDI,dword ptr [ESP + 0x48]
006af6a8  0f57c9                    XORPS XMM1,XMM1
006af6ab  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
006af6af  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006af6b7  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
006af6bb  0f2fc8                    COMISS XMM1,XMM0
006af6be  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
006af6c6  0f8289000000              JC 0x006af755
006af6cc  8b41dc                    MOV EAX,dword ptr [ECX + -0x24]
006af6cf  83e001                    AND EAX,0x1
006af6d2  83c800                    OR EAX,0x0
006af6d5  757e                      JNZ 0x006af755
006af6d7  8b41e4                    MOV EAX,dword ptr [ECX + -0x1c]
006af6da  b201                      MOV DL,0x1
006af6dc  8984249c000000            MOV dword ptr [ESP + 0x9c],EAX
006af6e3  8b41e8                    MOV EAX,dword ptr [ECX + -0x18]
006af6e6  898424a0000000            MOV dword ptr [ESP + 0xa0],EAX
006af6ed  8b41ec                    MOV EAX,dword ptr [ECX + -0x14]
006af6f0  898424a4000000            MOV dword ptr [ESP + 0xa4],EAX
006af6f7  8b41f0                    MOV EAX,dword ptr [ECX + -0x10]
006af6fa  898424a8000000            MOV dword ptr [ESP + 0xa8],EAX
006af701  f30f1041f4                MOVSS XMM0,dword ptr [ECX + -0xc]
006af706  f30f118424ac000000        MOVSS dword ptr [ESP + 0xac],XMM0
006af70f  f30f1041f8                MOVSS XMM0,dword ptr [ECX + -0x8]
006af714  f30f118424b0000000        MOVSS dword ptr [ESP + 0xb0],XMM0
006af71d  f30f1041fc                MOVSS XMM0,dword ptr [ECX + -0x4]
006af722  f30f118424b4000000        MOVSS dword ptr [ESP + 0xb4],XMM0
006af72b  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006af72f  f30f118424b8000000        MOVSS dword ptr [ESP + 0xb8],XMM0
006af738  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
006af73b  898424bc000000            MOV dword ptr [ESP + 0xbc],EAX
006af742  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
006af745  88542417                  MOV byte ptr [ESP + 0x17],DL
006af749  898424c0000000            MOV dword ptr [ESP + 0xc0],EAX
006af750  e94b010000                JMP 0x006af8a0
006af755  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006af75b  2500000002                AND EAX,0x2000000
006af760  83c800                    OR EAX,0x0
006af763  0f8533010000              JNZ 0x006af89c
006af769  0f2fc8                    COMISS XMM1,XMM0
006af76c  7606                      JBE 0x006af774
006af76e  898780030000              MOV dword ptr [EDI + 0x380],EAX
006af774  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006af777  3d97010000                CMP EAX,0x197
006af77c  0f848c000000              JZ 0x006af80e
006af782  3db7030000                CMP EAX,0x3b7
006af787  0f8481000000              JZ 0x006af80e
006af78d  0f57c0                    XORPS XMM0,XMM0
006af790  c7842460020000cac8483f    MOV dword ptr [ESP + 0x260],0x3f48c8ca
006af79b  0f11842450020000          MOVUPS xmmword ptr [ESP + 0x250],XMM0
006af7a3  b856555555                MOV EAX,0x55555556
006af7a8  c784246402000000000000    MOV dword ptr [ESP + 0x264],0x0
006af7b3  0f2805b0c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac4b0]
006af7ba  0f11842440020000          MOVUPS xmmword ptr [ESP + 0x240],XMM0
006af7c2  6a00                      PUSH 0x0
006af7c4  f30f1006                  MOVSS XMM0,dword ptr [ESI]
006af7c8  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006af7d0  6a00                      PUSH 0x0
006af7d2  6a00                      PUSH 0x0
006af7d4  c784247402000000000000    MOV dword ptr [ESP + 0x274],0x0
006af7df  f30f2cc8                  CVTTSS2SI ECX,XMM0
006af7e3  83c102                    ADD ECX,0x2
006af7e6  f7e9                      IMUL ECX
006af7e8  b906000000                MOV ECX,0x6
006af7ed  8bc2                      MOV EAX,EDX
006af7ef  c1e81f                    SHR EAX,0x1f
006af7f2  03c2                      ADD EAX,EDX
006af7f4  ba01000000                MOV EDX,0x1
006af7f9  3bc1                      CMP EAX,ECX
006af7fb  0f4cc8                    CMOVL ECX,EAX
006af7fe  83f901                    CMP ECX,0x1
006af801  0f4cca                    CMOVL ECX,EDX
006af804  51                        PUSH ECX
006af805  8d8c2450020000            LEA ECX,[ESP + 0x250]
006af80c  eb7f                      JMP 0x006af88d
006af80e  0f57c0                    XORPS XMM0,XMM0
006af811  c784248c020000cac8c83e    MOV dword ptr [ESP + 0x28c],0x3ec8c8ca
006af81c  0f1184247c020000          MOVUPS xmmword ptr [ESP + 0x27c],XMM0
006af824  b856555555                MOV EAX,0x55555556
006af829  c784249002000000000000    MOV dword ptr [ESP + 0x290],0x0
006af834  0f2805a0c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac3a0]
006af83b  0f1184246c020000          MOVUPS xmmword ptr [ESP + 0x26c],XMM0
006af843  6a00                      PUSH 0x0
006af845  f30f1006                  MOVSS XMM0,dword ptr [ESI]
006af849  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006af851  6a00                      PUSH 0x0
006af853  6a00                      PUSH 0x0
006af855  c78424a002000000000000    MOV dword ptr [ESP + 0x2a0],0x0
006af860  f30f2cc8                  CVTTSS2SI ECX,XMM0
006af864  83c102                    ADD ECX,0x2
006af867  f7e9                      IMUL ECX
006af869  b906000000                MOV ECX,0x6
006af86e  8bc2                      MOV EAX,EDX
006af870  c1e81f                    SHR EAX,0x1f
006af873  03c2                      ADD EAX,EDX
006af875  ba01000000                MOV EDX,0x1
006af87a  3bc1                      CMP EAX,ECX
006af87c  0f4cc8                    CMOVL ECX,EAX
006af87f  83f901                    CMP ECX,0x1
006af882  0f4cca                    CMOVL ECX,EDX
006af885  51                        PUSH ECX
006af886  8d8c247c020000            LEA ECX,[ESP + 0x27c]
006af88d  8b07                      MOV EAX,dword ptr [EDI]
006af88f  51                        PUSH ECX
006af890  8bcf                      MOV ECX,EDI
006af892  ff503c                    CALL dword ptr [EAX + 0x3c]
006af895  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
006af899  0f57c9                    XORPS XMM1,XMM1
006af89c  8a542417                  MOV DL,byte ptr [ESP + 0x17]
006af8a0  83c638                    ADD ESI,0x38
006af8a3  83c138                    ADD ECX,0x38
006af8a6  894c2410                  MOV dword ptr [ESP + 0x10],ECX
006af8aa  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
006af8ad  0f852dfdffff              JNZ 0x006af5e0
006af8b3  84d2                      TEST DL,DL
006af8b5  740f                      JZ 0x006af8c6
006af8b7  8b07                      MOV EAX,dword ptr [EDI]
006af8b9  8d8c249c000000            LEA ECX,[ESP + 0x9c]
006af8c0  51                        PUSH ECX
006af8c1  8bcf                      MOV ECX,EDI
006af8c3  ff5024                    CALL dword ptr [EAX + 0x24]
006af8c6  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
006af8c9  89470c                    MOV dword ptr [EDI + 0xc],EAX
006af8cc  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
006af8d3  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
006af8da  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
006af8e1  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006af8e7  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006af8ed  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006af8f1  8bc1                      MOV EAX,ECX
006af8f3  2500400000                AND EAX,0x4000
006af8f8  83c800                    OR EAX,0x0
006af8fb  0f855c110000              JNZ 0x006b0a5d
006af901  a17816c700                MOV EAX,[0x00c71678]
006af906  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006af90d  7c06                      JL 0x006af915
006af90f  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006af913  7411                      JZ 0x006af926
006af915  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006af918  83e80a                    SUB EAX,0xa
006af91b  3ddd030000                CMP EAX,0x3dd
006af920  0f87ef020000              JA 0x006afc15
006af926  8bc1                      MOV EAX,ECX
006af928  c744242814000000          MOV dword ptr [ESP + 0x28],0x14
006af930  83e040                    AND EAX,0x40
006af933  83c800                    OR EAX,0x0
006af936  0f84b6000000              JZ 0x006af9f2
006af93c  8b8fe0020000              MOV ECX,dword ptr [EDI + 0x2e0]
006af942  8bc1                      MOV EAX,ECX
006af944  99                        CDQ
006af945  f77c2428                  IDIV dword ptr [ESP + 0x28]
006af949  8d4101                    LEA EAX,[ECX + 0x1]
006af94c  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
006af950  8987e0020000              MOV dword ptr [EDI + 0x2e0],EAX
006af956  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006af95a  83fa01                    CMP EDX,0x1
006af95d  0f858f000000              JNZ 0x006af9f2
006af963  8b07                      MOV EAX,dword ptr [EDI]
006af965  8d8c2498020000            LEA ECX,[ESP + 0x298]
006af96c  52                        PUSH EDX
006af96d  6a00                      PUSH 0x0
006af96f  68ff000000                PUSH 0xff
006af974  0f57c0                    XORPS XMM0,XMM0
006af977  c78424c402000000000000    MOV dword ptr [ESP + 0x2c4],0x0
006af982  6a02                      PUSH 0x2
006af984  0f118424b8020000          MOVUPS xmmword ptr [ESP + 0x2b8],XMM0
006af98c  51                        PUSH ECX
006af98d  0f2805d0c1ba00            MOVAPS XMM0,xmmword ptr [0x00bac1d0]
006af994  8bcf                      MOV ECX,EDI
006af996  0f118424ac020000          MOVUPS xmmword ptr [ESP + 0x2ac],XMM0
006af99e  c78424d00200000000003f    MOV dword ptr [ESP + 0x2d0],0x3f000000
006af9a9  c78424d402000000000000    MOV dword ptr [ESP + 0x2d4],0x0
006af9b4  ff503c                    CALL dword ptr [EAX + 0x3c]
006af9b7  8d8c2460010000            LEA ECX,[ESP + 0x160]
006af9be  e8ad62d8ff                CALL 0x00435c70
006af9c3  8b17                      MOV EDX,dword ptr [EDI]
006af9c5  f30f108720030000          MOVSS XMM0,dword ptr [EDI + 0x320]
006af9cd  6a1e                      PUSH 0x1e
006af9cf  50                        PUSH EAX
006af9d0  6a00                      PUSH 0x0
006af9d2  6800800000                PUSH 0x8000
006af9d7  51                        PUSH ECX
006af9d8  8bcf                      MOV ECX,EDI
006af9da  f30f110424                MOVSS dword ptr [ESP],XMM0
006af9df  ff5220                    CALL dword ptr [EDX + 0x20]
006af9e2  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006af9e8  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006af9ee  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006af9f2  8bc1                      MOV EAX,ECX
006af9f4  894c2458                  MOV dword ptr [ESP + 0x58],ECX
006af9f8  2500100000                AND EAX,0x1000
006af9fd  83c800                    OR EAX,0x0
006afa00  0f84b6000000              JZ 0x006afabc
006afa06  8b8fe4020000              MOV ECX,dword ptr [EDI + 0x2e4]
006afa0c  8bc1                      MOV EAX,ECX
006afa0e  99                        CDQ
006afa0f  f77c2428                  IDIV dword ptr [ESP + 0x28]
006afa13  8d4101                    LEA EAX,[ECX + 0x1]
006afa16  8987e4020000              MOV dword ptr [EDI + 0x2e4],EAX
006afa1c  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
006afa20  89442458                  MOV dword ptr [ESP + 0x58],EAX
006afa24  83fa01                    CMP EDX,0x1
006afa27  0f858f000000              JNZ 0x006afabc
006afa2d  8b07                      MOV EAX,dword ptr [EDI]
006afa2f  8d8c24c4020000            LEA ECX,[ESP + 0x2c4]
006afa36  52                        PUSH EDX
006afa37  6a00                      PUSH 0x0
006afa39  68ff000000                PUSH 0xff
006afa3e  0f57c0                    XORPS XMM0,XMM0
006afa41  c78424f00200000000003f    MOV dword ptr [ESP + 0x2f0],0x3f000000
006afa4c  6a02                      PUSH 0x2
006afa4e  0f118424e4020000          MOVUPS xmmword ptr [ESP + 0x2e4],XMM0
006afa56  51                        PUSH ECX
006afa57  0f2805c0c1ba00            MOVAPS XMM0,xmmword ptr [0x00bac1c0]
006afa5e  8bcf                      MOV ECX,EDI
006afa60  0f118424d8020000          MOVUPS xmmword ptr [ESP + 0x2d8],XMM0
006afa68  c78424fc0200009a99993e    MOV dword ptr [ESP + 0x2fc],0x3e99999a
006afa73  c784240003000000000000    MOV dword ptr [ESP + 0x300],0x0
006afa7e  ff503c                    CALL dword ptr [EAX + 0x3c]
006afa81  8d8c2488010000            LEA ECX,[ESP + 0x188]
006afa88  e8e361d8ff                CALL 0x00435c70
006afa8d  8b17                      MOV EDX,dword ptr [EDI]
006afa8f  f30f108724030000          MOVSS XMM0,dword ptr [EDI + 0x324]
006afa97  6a1e                      PUSH 0x1e
006afa99  50                        PUSH EAX
006afa9a  6a00                      PUSH 0x0
006afa9c  6800800000                PUSH 0x8000
006afaa1  51                        PUSH ECX
006afaa2  8bcf                      MOV ECX,EDI
006afaa4  f30f110424                MOVSS dword ptr [ESP],XMM0
006afaa9  ff5220                    CALL dword ptr [EDX + 0x20]
006afaac  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006afab2  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
006afab8  89442458                  MOV dword ptr [ESP + 0x58],EAX
006afabc  83e604                    AND ESI,0x4
006afabf  33c0                      XOR EAX,EAX
006afac1  0bc6                      OR EAX,ESI
006afac3  0f844c010000              JZ 0x006afc15
006afac9  ffb78c020000              PUSH dword ptr [EDI + 0x28c]
006afacf  8bcf                      MOV ECX,EDI
006afad1  e8ca94ffff                CALL 0x006a8fa0
006afad6  84c0                      TEST AL,AL
006afad8  0f8537010000              JNZ 0x006afc15
006afade  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006afae6  8db73c030000              LEA ESI,[EDI + 0x33c]
006afaec  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
006afaf1  f30f5c8790030000          SUBSS XMM0,dword ptr [EDI + 0x390]
006afaf9  f30f5c8f8c030000          SUBSS XMM1,dword ptr [EDI + 0x38c]
006afb01  f30f59c0                  MULSS XMM0,XMM0
006afb05  f30f59c9                  MULSS XMM1,XMM1
006afb09  f30f58c1                  ADDSS XMM0,XMM1
006afb0d  e83e5fd8ff                CALL 0x00435a50
006afb12  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
006afb1a  a17816c700                MOV EAX,[0x00c71678]
006afb1f  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
006afb27  f30f5887ec020000          ADDSS XMM0,dword ptr [EDI + 0x2ec]
006afb2f  f30f1187ec020000          MOVSS dword ptr [EDI + 0x2ec],XMM0
006afb37  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
006afb3a  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
006afb40  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006afb46  83f904                    CMP ECX,0x4
006afb49  7409                      JZ 0x006afb54
006afb4b  83f905                    CMP ECX,0x5
006afb4e  7404                      JZ 0x006afb54
006afb50  8b00                      MOV EAX,dword ptr [EAX]
006afb52  eb08                      JMP 0x006afb5c
006afb54  a17816c700                MOV EAX,[0x00c71678]
006afb59  8b00                      MOV EAX,dword ptr [EAX]
006afb5b  40                        INC EAX
006afb5c  d9442420                  FLD dword ptr [ESP + 0x20]
006afb60  83ec08                    SUB ESP,0x8
006afb63  660f6ec0                  MOVD XMM0,EAX
006afb67  0f5bc0                    CVTDQ2PS XMM0,XMM0
006afb6a  dd1c24                    FSTP qword ptr [ESP]
006afb6d  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
006afb75  f30f5805eca6ba00          ADDSS XMM0,dword ptr [0x00baa6ec]
006afb7d  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
006afb83  e88f0d4400                CALL 0x00af0917
006afb88  a17816c700                MOV EAX,[0x00c71678]
006afb8d  83c408                    ADD ESP,0x8
006afb90  d95c2428                  FSTP dword ptr [ESP + 0x28]
006afb94  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006afb9b  7c0a                      JL 0x006afba7
006afb9d  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006afba5  eb06                      JMP 0x006afbad
006afba7  f30f1054242c              MOVSS XMM2,dword ptr [ESP + 0x2c]
006afbad  f30f104c2428              MOVSS XMM1,dword ptr [ESP + 0x28]
006afbb3  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
006afbb9  f30f5cc1                  SUBSS XMM0,XMM1
006afbbd  f30f5d0d1ca8ba00          MINSS XMM1,dword ptr [0x00baa81c]
006afbc5  f30f1187ec020000          MOVSS dword ptr [EDI + 0x2ec],XMM0
006afbcd  f30f59ca                  MULSS XMM1,XMM2
006afbd1  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
006afbd8  763b                      JBE 0x006afc15
006afbda  8d8c24b0010000            LEA ECX,[ESP + 0x1b0]
006afbe1  e88a60d8ff                CALL 0x00435c70
006afbe6  8b17                      MOV EDX,dword ptr [EDI]
006afbe8  6a1e                      PUSH 0x1e
006afbea  50                        PUSH EAX
006afbeb  6a00                      PUSH 0x0
006afbed  6a00                      PUSH 0x0
006afbef  51                        PUSH ECX
006afbf0  8bcf                      MOV ECX,EDI
006afbf2  f30f110c24                MOVSS dword ptr [ESP],XMM1
006afbf7  ff5220                    CALL dword ptr [EDX + 0x20]
006afbfa  f30f105c2428              MOVSS XMM3,dword ptr [ESP + 0x28]
006afc00  0f57ed                    XORPS XMM5,XMM5
006afc03  0f2fdd                    COMISS XMM3,XMM5
006afc06  0f57e4                    XORPS XMM4,XMM4
006afc09  f30f11642420              MOVSS dword ptr [ESP + 0x20],XMM4
006afc0f  0f8761020000              JA 0x006afe76
006afc15  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006afc1d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006afc24  0f85330e0000              JNZ 0x006b0a5d
006afc2a  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006afc30  33c0                      XOR EAX,EAX
006afc32  81e100000800              AND ECX,0x80000
006afc38  0bc1                      OR EAX,ECX
006afc3a  0f841d0e0000              JZ 0x006b0a5d
006afc40  8bcf                      MOV ECX,EDI
006afc42  e86991ffff                CALL 0x006a8db0
006afc47  84c0                      TEST AL,AL
006afc49  741e                      JZ 0x006afc69
006afc4b  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006afc51  85c0                      TEST EAX,EAX
006afc53  7414                      JZ 0x006afc69
006afc55  8bc8                      MOV ECX,EAX
006afc57  8b81bc030000              MOV EAX,dword ptr [ECX + 0x3bc]
006afc5d  85c0                      TEST EAX,EAX
006afc5f  75f4                      JNZ 0x006afc55
006afc61  3bcf                      CMP ECX,EDI
006afc63  0f85f40d0000              JNZ 0x006b0a5d
006afc69  a17816c700                MOV EAX,[0x00c71678]
006afc6e  33c9                      XOR ECX,ECX
006afc70  0f28c8                    MOVAPS XMM1,XMM0
006afc73  894c242c                  MOV dword ptr [ESP + 0x2c],ECX
006afc77  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
006afc7d  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006afc83  89442474                  MOV dword ptr [ESP + 0x74],EAX
006afc87  398864120000              CMP dword ptr [EAX + 0x1264],ECX
006afc8d  0f86a70d0000              JBE 0x006b0a3a
006afc93  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
006afc99  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
006afc9c  8bce                      MOV ECX,ESI
006afc9e  89742428                  MOV dword ptr [ESP + 0x28],ESI
006afca2  e80991ffff                CALL 0x006a8db0
006afca7  84c0                      TEST AL,AL
006afca9  7429                      JZ 0x006afcd4
006afcab  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
006afcb1  89742428                  MOV dword ptr [ESP + 0x28],ESI
006afcb5  85c0                      TEST EAX,EAX
006afcb7  741b                      JZ 0x006afcd4
006afcb9  0f1f8000000000            NOP dword ptr [EAX]
006afcc0  8bf8                      MOV EDI,EAX
006afcc2  897c2428                  MOV dword ptr [ESP + 0x28],EDI
006afcc6  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006afccc  85c0                      TEST EAX,EAX
006afcce  75f0                      JNZ 0x006afcc0
006afcd0  8b7c2448                  MOV EDI,dword ptr [ESP + 0x48]
006afcd4  8bcf                      MOV ECX,EDI
006afcd6  e8158dffff                CALL 0x006a89f0
006afcdb  3b442428                  CMP EAX,dword ptr [ESP + 0x28]
006afcdf  0f84360d0000              JZ 0x006b0a1b
006afce5  a17816c700                MOV EAX,[0x00c71678]
006afcea  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006afcf1  7c15                      JL 0x006afd08
006afcf3  ffb7b4020000              PUSH dword ptr [EDI + 0x2b4]
006afcf9  8bce                      MOV ECX,ESI
006afcfb  e8a092ffff                CALL 0x006a8fa0
006afd00  84c0                      TEST AL,AL
006afd02  0f85130d0000              JNZ 0x006b0a1b
006afd08  6a00                      PUSH 0x0
006afd0a  8bce                      MOV ECX,ESI
006afd0c  e84fc8ffff                CALL 0x006ac560
006afd11  84c0                      TEST AL,AL
006afd13  753e                      JNZ 0x006afd53
006afd15  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
006afd18  83f809                    CMP EAX,0x9
006afd1b  7436                      JZ 0x006afd53
006afd1d  83f802                    CMP EAX,0x2
006afd20  7431                      JZ 0x006afd53
006afd22  83f804                    CMP EAX,0x4
006afd25  742c                      JZ 0x006afd53
006afd27  83f805                    CMP EAX,0x5
006afd2a  0f85eb0c0000              JNZ 0x006b0a1b
006afd30  83be3405000000            CMP dword ptr [ESI + 0x534],0x0
006afd37  0f85de0c0000              JNZ 0x006b0a1b
006afd3d  8b4e2c                    MOV ECX,dword ptr [ESI + 0x2c]
006afd40  e8fbe50300                CALL 0x006ee340
006afd45  84c0                      TEST AL,AL
006afd47  740a                      JZ 0x006afd53
006afd49  837e3000                  CMP dword ptr [ESI + 0x30],0x0
006afd4d  0f86c80c0000              JBE 0x006b0a1b
006afd53  3bf7                      CMP ESI,EDI
006afd55  0f84c00c0000              JZ 0x006b0a1b
006afd5b  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
006afd63  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006afd6b  0f2ed1                    UCOMISS XMM2,XMM1
006afd6e  9f                        LAHF
006afd6f  f6c444                    TEST AH,0x44
006afd72  7a19                      JP 0x006afd8d
006afd74  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
006afd7c  0f2e8740030000            UCOMISS XMM0,dword ptr [EDI + 0x340]
006afd83  9f                        LAHF
006afd84  f6c444                    TEST AH,0x44
006afd87  0f8b8e0c0000              JNP 0x006b0a1b
006afd8d  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
006afd95  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
006afd9c  9f                        LAHF
006afd9d  f6c444                    TEST AH,0x44
006afda0  0f8b750c0000              JNP 0x006b0a1b
006afda6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006afdae  f30f5cca                  SUBSS XMM1,XMM2
006afdb2  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
006afdba  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
006afdc0  0f28d0                    MOVAPS XMM2,XMM0
006afdc3  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
006afdc9  f30f59d0                  MULSS XMM2,XMM0
006afdcd  0f28c1                    MOVAPS XMM0,XMM1
006afdd0  f30f59c1                  MULSS XMM0,XMM1
006afdd4  f30f58d0                  ADDSS XMM2,XMM0
006afdd8  f30f100570acba00          MOVSS XMM0,dword ptr [0x00baac70]
006afde0  0f2fc2                    COMISS XMM0,XMM2
006afde3  f30f1154244c              MOVSS dword ptr [ESP + 0x4c],XMM2
006afde9  0f862c0c0000              JBE 0x006b0a1b
006afdef  0f28c2                    MOVAPS XMM0,XMM2
006afdf2  e8595cd8ff                CALL 0x00435a50
006afdf7  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006afdfd  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
006afe03  e8485cd8ff                CALL 0x00435a50
006afe08  f30f103554a4ba00          MOVSS XMM6,dword ptr [0x00baa454]
006afe10  0f57ed                    XORPS XMM5,XMM5
006afe13  0f2fc5                    COMISS XMM0,XMM5
006afe16  7627                      JBE 0x006afe3f
006afe18  0f28ce                    MOVAPS XMM1,XMM6
006afe1b  f30f5ec8                  DIVSS XMM1,XMM0
006afe1f  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
006afe25  f30f59c1                  MULSS XMM0,XMM1
006afe29  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
006afe2f  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
006afe35  f30f59c1                  MULSS XMM0,XMM1
006afe39  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
006afe3f  a17816c700                MOV EAX,[0x00c71678]
006afe44  f30f101de0a8ba00          MOVSS XMM3,dword ptr [0x00baa8e0]
006afe4c  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
006afe4f  8b9014660200              MOV EDX,dword ptr [EAX + 0x26614]
006afe55  83fa02                    CMP EDX,0x2
006afe58  0f8c63080000              JL 0x006b06c1
006afe5e  83f901                    CMP ECX,0x1
006afe61  0f855a080000              JNZ 0x006b06c1
006afe67  e969080000                JMP 0x006b06d5
006afe70  8db73c030000              LEA ESI,[EDI + 0x33c]
006afe76  f30f10878c030000          MOVSS XMM0,dword ptr [EDI + 0x38c]
006afe7e  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
006afe82  f30f59c4                  MULSS XMM0,XMM4
006afe86  f30f5ec3                  DIVSS XMM0,XMM3
006afe8a  f30f5806                  ADDSS XMM0,dword ptr [ESI]
006afe8e  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
006afe94  f30f108790030000          MOVSS XMM0,dword ptr [EDI + 0x390]
006afe9c  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
006afea1  f30f59c4                  MULSS XMM0,XMM4
006afea5  f30f5ec3                  DIVSS XMM0,XMM3
006afea9  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
006afeae  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
006afeb4  e8a7f00300                CALL 0x006eef60
006afeb9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006afebf  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006afec3  8d44243c                  LEA EAX,[ESP + 0x3c]
006afec7  50                        PUSH EAX
006afec8  8d44241c                  LEA EAX,[ESP + 0x1c]
006afecc  894c243c                  MOV dword ptr [ESP + 0x3c],ECX
006afed0  50                        PUSH EAX
006afed1  6a00                      PUSH 0x0
006afed3  6840b6c700                PUSH 0xc7b640
006afed8  8d442468                  LEA EAX,[ESP + 0x68]
006afedc  c744242800000000          MOV dword ptr [ESP + 0x28],0x0
006afee4  50                        PUSH EAX
006afee5  8d842484000000            LEA EAX,[ESP + 0x84]
006afeec  c78424840000002e000000    MOV dword ptr [ESP + 0x84],0x2e
006afef7  50                        PUSH EAX
006afef8  8d442434                  LEA EAX,[ESP + 0x34]
006afefc  c7442434e8030000          MOV dword ptr [ESP + 0x34],0x3e8
006aff04  50                        PUSH EAX
006aff05  e8d6471b00                CALL 0x008646e0
006aff0a  a17816c700                MOV EAX,[0x00c71678]
006aff0f  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006aff16  0f8c78020000              JL 0x006b0194
006aff1c  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
006aff22  89442424                  MOV dword ptr [ESP + 0x24],EAX
006aff26  e835f00300                CALL 0x006eef60
006aff2b  837c241c05                CMP dword ptr [ESP + 0x1c],0x5
006aff30  8bf0                      MOV ESI,EAX
006aff32  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
006aff3a  a174f6b100                MOV EAX,[0x00b1f674]
006aff3f  89742430                  MOV dword ptr [ESP + 0x30],ESI
006aff43  660fd6842484000000        MOVQ qword ptr [ESP + 0x84],XMM0
006aff4c  89442434                  MOV dword ptr [ESP + 0x34],EAX
006aff50  8984248c000000            MOV dword ptr [ESP + 0x8c],EAX
006aff57  0f8537020000              JNZ 0x006b0194
006aff5d  8b4c2470                  MOV ECX,dword ptr [ESP + 0x70]
006aff61  81f92c010000              CMP ECX,0x12c
006aff67  0f87e8010000              JA 0x006b0155
006aff6d  0f8430010000              JZ 0x006b00a3
006aff73  83f946                    CMP ECX,0x46
006aff76  747b                      JZ 0x006afff3
006aff78  83f964                    CMP ECX,0x64
006aff7b  0f8513020000              JNZ 0x006b0194
006aff81  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
006aff85  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
006aff89  89742410                  MOV dword ptr [ESP + 0x10],ESI
006aff8d  83fe19                    CMP ESI,0x19
006aff90  7438                      JZ 0x006affca
006aff92  8d442478                  LEA EAX,[ESP + 0x78]
006aff96  89742478                  MOV dword ptr [ESP + 0x78],ESI
006aff9a  50                        PUSH EAX
006aff9b  8d8424e8000000            LEA EAX,[ESP + 0xe8]
006affa2  8d4920                    LEA ECX,[ECX + 0x20]
006affa5  50                        PUSH EAX
006affa6  e8f588d7ff                CALL 0x004288a0
006affab  8b8424ec000000            MOV EAX,dword ptr [ESP + 0xec]
006affb2  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
006affb6  80780d00                  CMP byte ptr [EAX + 0xd],0x0
006affba  750a                      JNZ 0x006affc6
006affbc  3b7010                    CMP ESI,dword ptr [EAX + 0x10]
006affbf  7c05                      JL 0x006affc6
006affc1  3b4120                    CMP EAX,dword ptr [ECX + 0x20]
006affc4  7504                      JNZ 0x006affca
006affc6  b001                      MOV AL,0x1
006affc8  eb02                      JMP 0x006affcc
006affca  32c0                      XOR AL,AL
006affcc  85f6                      TEST ESI,ESI
006affce  7408                      JZ 0x006affd8
006affd0  84c0                      TEST AL,AL
006affd2  0f84c4010000              JZ 0x006b019c
006affd8  8b01                      MOV EAX,dword ptr [ECX]
006affda  6a00                      PUSH 0x0
006affdc  8b8084000000              MOV EAX,dword ptr [EAX + 0x84]
006affe2  ffd0                      CALL EAX
006affe4  8bf0                      MOV ESI,EAX
006affe6  89742410                  MOV dword ptr [ESP + 0x10],ESI
006affea  89742418                  MOV dword ptr [ESP + 0x18],ESI
006affee  e9a9010000                JMP 0x006b019c
006afff3  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
006afff7  8bc2                      MOV EAX,EDX
006afff9  c1e80b                    SHR EAX,0xb
006afffc  89442460                  MOV dword ptr [ESP + 0x60],EAX
006b0000  89542410                  MOV dword ptr [ESP + 0x10],EDX
006b0004  85d2                      TEST EDX,EDX
006b0006  7430                      JZ 0x006b0038
006b0008  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
006b000c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006b0012  6a00                      PUSH 0x0
006b0014  52                        PUSH EDX
006b0015  8b00                      MOV EAX,dword ptr [EAX]
006b0017  8d8940a70100              LEA ECX,[ECX + 0x1a740]
006b001d  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
006b0020  e85b4a0800                CALL 0x00734a80
006b0025  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
006b0029  50                        PUSH EAX
006b002a  ffd6                      CALL ESI
006b002c  84c0                      TEST AL,AL
006b002e  0f8468010000              JZ 0x006b019c
006b0034  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
006b0038  a17816c700                MOV EAX,[0x00c71678]
006b003d  0540a70100                ADD EAX,0x1a740
006b0042  89442410                  MOV dword ptr [ESP + 0x10],EAX
006b0046  85f6                      TEST ESI,ESI
006b0048  7510                      JNZ 0x006b005a
006b004a  6854bfb600                PUSH 0xb6bf54
006b004f  6a10                      PUSH 0x10
006b0051  e86a123600                CALL 0x00a112c0
006b0056  83c408                    ADD ESP,0x8
006b0059  cc                        INT3
006b005a  8b8c2484000000            MOV ECX,dword ptr [ESP + 0x84]
006b0061  8bd6                      MOV EDX,ESI
006b0063  d3ea                      SHR EDX,CL
006b0065  8b8c2488000000            MOV ECX,dword ptr [ESP + 0x88]
006b006c  33d6                      XOR EDX,ESI
006b006e  8bc2                      MOV EAX,EDX
006b0070  d3e0                      SHL EAX,CL
006b0072  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
006b0076  33c2                      XOR EAX,EDX
006b0078  8bf0                      MOV ESI,EAX
006b007a  d3ee                      SHR ESI,CL
006b007c  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
006b0080  33f0                      XOR ESI,EAX
006b0082  56                        PUSH ESI
006b0083  89742434                  MOV dword ptr [ESP + 0x34],ESI
006b0087  e874480800                CALL 0x00734900
006b008c  8bd0                      MOV EDX,EAX
006b008e  8b442460                  MOV EAX,dword ptr [ESP + 0x60]
006b0092  83e001                    AND EAX,0x1
006b0095  c1e00b                    SHL EAX,0xb
006b0098  0bd0                      OR EDX,EAX
006b009a  89542418                  MOV dword ptr [ESP + 0x18],EDX
006b009e  e95dffffff                JMP 0x006b0000
006b00a3  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
006b00a7  89742410                  MOV dword ptr [ESP + 0x10],ESI
006b00ab  85f6                      TEST ESI,ESI
006b00ad  7414                      JZ 0x006b00c3
006b00af  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
006b00b3  56                        PUSH ESI
006b00b4  8b01                      MOV EAX,dword ptr [ECX]
006b00b6  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
006b00b9  ffd0                      CALL EAX
006b00bb  84c0                      TEST AL,AL
006b00bd  0f84d9000000              JZ 0x006b019c
006b00c3  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
006b00c7  85f6                      TEST ESI,ESI
006b00c9  7510                      JNZ 0x006b00db
006b00cb  6854bfb600                PUSH 0xb6bf54
006b00d0  6a10                      PUSH 0x10
006b00d2  e8e9113600                CALL 0x00a112c0
006b00d7  83c408                    ADD ESP,0x8
006b00da  cc                        INT3
006b00db  8b8c2484000000            MOV ECX,dword ptr [ESP + 0x84]
006b00e2  8bc6                      MOV EAX,ESI
006b00e4  d3e8                      SHR EAX,CL
006b00e6  8b8c2488000000            MOV ECX,dword ptr [ESP + 0x88]
006b00ed  33c6                      XOR EAX,ESI
006b00ef  8bd0                      MOV EDX,EAX
006b00f1  d3e2                      SHL EDX,CL
006b00f3  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
006b00f7  33d0                      XOR EDX,EAX
006b00f9  6a01                      PUSH 0x1
006b00fb  6a0a                      PUSH 0xa
006b00fd  8bf2                      MOV ESI,EDX
006b00ff  6a0a                      PUSH 0xa
006b0101  d3ee                      SHR ESI,CL
006b0103  33f2                      XOR ESI,EDX
006b0105  6a19                      PUSH 0x19
006b0107  56                        PUSH ESI
006b0108  89742444                  MOV dword ptr [ESP + 0x44],ESI
006b010c  e86f400800                CALL 0x00734180
006b0111  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
006b0119  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
006b011f  6a00                      PUSH 0x0
006b0121  6a01                      PUSH 0x1
006b0123  6a01                      PUSH 0x1
006b0125  50                        PUSH EAX
006b0126  8d842440020000            LEA EAX,[ESP + 0x240]
006b012d  89b42440020000            MOV dword ptr [ESP + 0x240],ESI
006b0134  50                        PUSH EAX
006b0135  660fd6842448020000        MOVQ qword ptr [ESP + 0x248],XMM0
006b013e  898c2450020000            MOV dword ptr [ESP + 0x250],ECX
006b0145  e8f6511b00                CALL 0x00865340
006b014a  8bf0                      MOV ESI,EAX
006b014c  89742418                  MOV dword ptr [ESP + 0x18],ESI
006b0150  e952ffffff                JMP 0x006b00a7
006b0155  81f95e010000              CMP ECX,0x15e
006b015b  7537                      JNZ 0x006b0194
006b015d  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
006b0161  89742410                  MOV dword ptr [ESP + 0x10],ESI
006b0165  85f6                      TEST ESI,ESI
006b0167  7410                      JZ 0x006b0179
006b0169  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
006b016d  56                        PUSH ESI
006b016e  8b01                      MOV EAX,dword ptr [ECX]
006b0170  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
006b0173  ffd0                      CALL EAX
006b0175  84c0                      TEST AL,AL
006b0177  7423                      JZ 0x006b019c
006b0179  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006b017f  6a00                      PUSH 0x0
006b0181  8d8940a70100              LEA ECX,[ECX + 0x1a740]
006b0187  e8143b0800                CALL 0x00733ca0
006b018c  8bf0                      MOV ESI,EAX
006b018e  89742418                  MOV dword ptr [ESP + 0x18],ESI
006b0192  ebcd                      JMP 0x006b0161
006b0194  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
006b0198  89442410                  MOV dword ptr [ESP + 0x10],EAX
006b019c  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
006b01a0  6a00                      PUSH 0x0
006b01a2  ff742420                  PUSH dword ptr [ESP + 0x20]
006b01a6  8b8980650200              MOV ECX,dword ptr [ECX + 0x26580]
006b01ac  e8dffe0300                CALL 0x006f0090
006b01b1  89442434                  MOV dword ptr [ESP + 0x34],EAX
006b01b5  85c0                      TEST EAX,EAX
006b01b7  7507                      JNZ 0x006b01c0
006b01b9  33f6                      XOR ESI,ESI
006b01bb  e9eb020000                JMP 0x006b04ab
006b01c0  e8cb823b00                CALL 0x00a68490
006b01c5  89542430                  MOV dword ptr [ESP + 0x30],EDX
006b01c9  8bc8                      MOV ECX,EAX
006b01cb  badb34b6d7                MOV EDX,0xd7b634db
006b01d0  bf82de1b43                MOV EDI,0x431bde82
006b01d5  f7e2                      MUL EDX
006b01d7  89442440                  MOV dword ptr [ESP + 0x40],EAX
006b01db  8bf2                      MOV ESI,EDX
006b01dd  8bc1                      MOV EAX,ECX
006b01df  b9db34b6d7                MOV ECX,0xd7b634db
006b01e4  f7e7                      MUL EDI
006b01e6  8bf8                      MOV EDI,EAX
006b01e8  89542440                  MOV dword ptr [ESP + 0x40],EDX
006b01ec  8b442430                  MOV EAX,dword ptr [ESP + 0x30]
006b01f0  f7e1                      MUL ECX
006b01f2  89542460                  MOV dword ptr [ESP + 0x60],EDX
006b01f6  8bc8                      MOV ECX,EAX
006b01f8  8b442430                  MOV EAX,dword ptr [ESP + 0x30]
006b01fc  ba82de1b43                MOV EDX,0x431bde82
006b0201  f7e2                      MUL EDX
006b0203  03ce                      ADD ECX,ESI
006b0205  89542424                  MOV dword ptr [ESP + 0x24],EDX
006b0209  8b542460                  MOV EDX,dword ptr [ESP + 0x60]
006b020d  83d200                    ADC EDX,0x0
006b0210  89442430                  MOV dword ptr [ESP + 0x30],EAX
006b0214  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
006b0218  03f9                      ADD EDI,ECX
006b021a  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
006b021e  83d100                    ADC ECX,0x0
006b0221  897c2460                  MOV dword ptr [ESP + 0x60],EDI
006b0225  33c0                      XOR EAX,EAX
006b0227  03d1                      ADD EDX,ECX
006b0229  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
006b022d  13c0                      ADC EAX,EAX
006b022f  03f2                      ADD ESI,EDX
006b0231  13c8                      ADC ECX,EAX
006b0233  0facce12                  SHRD ESI,ECX,0x12
006b0237  89742430                  MOV dword ptr [ESP + 0x30],ESI
006b023b  8b742434                  MOV ESI,dword ptr [ESP + 0x34]
006b023f  c1e912                    SHR ECX,0x12
006b0242  8dbec8030000              LEA EDI,[ESI + 0x3c8]
006b0248  894c2424                  MOV dword ptr [ESP + 0x24],ECX
006b024c  8b0f                      MOV ECX,dword ptr [EDI]
006b024e  c7463400000000            MOV dword ptr [ESI + 0x34],0x0
006b0255  c7463800000000            MOV dword ptr [ESI + 0x38],0x0
006b025c  85c9                      TEST ECX,ECX
006b025e  7414                      JZ 0x006b0274
006b0260  8d442450                  LEA EAX,[ESP + 0x50]
006b0264  897c2450                  MOV dword ptr [ESP + 0x50],EDI
006b0268  50                        PUSH EAX
006b0269  81c1cc030000              ADD ECX,0x3cc
006b026f  e89cefe1ff                CALL 0x004cf210
006b0274  ff74243c                  PUSH dword ptr [ESP + 0x3c]
006b0278  8b06                      MOV EAX,dword ptr [ESI]
006b027a  ff742414                  PUSH dword ptr [ESP + 0x14]
006b027e  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
006b0282  ff742478                  PUSH dword ptr [ESP + 0x78]
006b0286  c70700000000              MOV dword ptr [EDI],0x0
006b028c  f30f10442464              MOVSS XMM0,dword ptr [ESP + 0x64]
006b0292  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
006b029a  f30f10442468              MOVSS XMM0,dword ptr [ESP + 0x68]
006b02a0  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
006b02a8  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b02b0  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
006b02b8  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b02c0  51                        PUSH ECX
006b02c1  8bce                      MOV ECX,ESI
006b02c3  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
006b02cb  ff5004                    CALL dword ptr [EAX + 0x4]
006b02ce  8b442438                  MOV EAX,dword ptr [ESP + 0x38]
006b02d2  56                        PUSH ESI
006b02d3  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
006b02d9  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
006b02df  8d4101                    LEA EAX,[ECX + 0x1]
006b02e2  898214120000              MOV dword ptr [EDX + 0x1214],EAX
006b02e8  894e20                    MOV dword ptr [ESI + 0x20],ECX
006b02eb  8d8a18120000              LEA ECX,[EDX + 0x1218]
006b02f1  e80a82d6ff                CALL 0x00418500
006b02f6  56                        PUSH ESI
006b02f7  e8f4750500                CALL 0x007078f0
006b02fc  84c0                      TEST AL,AL
006b02fe  7407                      JZ 0x006b0307
006b0300  51                        PUSH ECX
006b0301  56                        PUSH ESI
006b0302  e8b9760500                CALL 0x007079c0
006b0307  80be7201000000            CMP byte ptr [ESI + 0x172],0x0
006b030e  0f8401010000              JZ 0x006b0415
006b0314  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
006b0318  8b8158770600              MOV EAX,dword ptr [ECX + 0x67758]
006b031e  3b815c770600              CMP EAX,dword ptr [ECX + 0x6775c]
006b0324  0f84eb000000              JZ 0x006b0415
006b032a  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
006b032d  8b7e28                    MOV EDI,dword ptr [ESI + 0x28]
006b0330  8db180770600              LEA ESI,[ECX + 0x67780]
006b0336  898424cc000000            MOV dword ptr [ESP + 0xcc],EAX
006b033d  8bce                      MOV ECX,ESI
006b033f  8d8424c8000000            LEA EAX,[ESP + 0xc8]
006b0346  89bc24c8000000            MOV dword ptr [ESP + 0xc8],EDI
006b034d  50                        PUSH EAX
006b034e  8d442430                  LEA EAX,[ESP + 0x30]
006b0352  50                        PUSH EAX
006b0353  e848213300                CALL 0x009e24a0
006b0358  8b06                      MOV EAX,dword ptr [ESI]
006b035a  3944242c                  CMP dword ptr [ESP + 0x2c],EAX
006b035e  7537                      JNZ 0x006b0397
006b0360  8d8424d0000000            LEA EAX,[ESP + 0xd0]
006b0367  89bc24d0000000            MOV dword ptr [ESP + 0xd0],EDI
006b036e  50                        PUSH EAX
006b036f  8d8424e4000000            LEA EAX,[ESP + 0xe4]
006b0376  c78424d8000000ffffffff    MOV dword ptr [ESP + 0xd8],0xffffffff
006b0381  50                        PUSH EAX
006b0382  8bce                      MOV ECX,ESI
006b0384  e817213300                CALL 0x009e24a0
006b0389  8b00                      MOV EAX,dword ptr [EAX]
006b038b  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
006b038f  3b06                      CMP EAX,dword ptr [ESI]
006b0391  0f847e000000              JZ 0x006b0415
006b0397  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006b039d  33ff                      XOR EDI,EDI
006b039f  81c6a8ba0100              ADD ESI,0x1baa8
006b03a5  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
006b03a8  2b06                      SUB EAX,dword ptr [ESI]
006b03aa  c1f802                    SAR EAX,0x2
006b03ad  85c0                      TEST EAX,EAX
006b03af  7464                      JZ 0x006b0415
006b03b1  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
006b03b4  8bc1                      MOV EAX,ECX
006b03b6  2b06                      SUB EAX,dword ptr [ESI]
006b03b8  c1f802                    SAR EAX,0x2
006b03bb  85c0                      TEST EAX,EAX
006b03bd  7512                      JNZ 0x006b03d1
006b03bf  68bce6b700                PUSH 0xb7e6bc
006b03c4  6a10                      PUSH 0x10
006b03c6  e8f50e3600                CALL 0x00a112c0
006b03cb  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
006b03ce  83c408                    ADD ESP,0x8
006b03d1  8b06                      MOV EAX,dword ptr [ESI]
006b03d3  2bc8                      SUB ECX,EAX
006b03d5  c1f902                    SAR ECX,0x2
006b03d8  3bf9                      CMP EDI,ECX
006b03da  7303                      JNC 0x006b03df
006b03dc  8d04b8                    LEA EAX,[EAX + EDI*0x4]
006b03df  6840b6c700                PUSH 0xc7b640
006b03e4  8d4c245c                  LEA ECX,[ESP + 0x5c]
006b03e8  51                        PUSH ECX
006b03e9  ff74243c                  PUSH dword ptr [ESP + 0x3c]
006b03ed  8b08                      MOV ECX,dword ptr [EAX]
006b03ef  6a06                      PUSH 0x6
006b03f1  81c1c81f0000              ADD ECX,0x1fc8
006b03f7  e884023300                CALL 0x009e0680
006b03fc  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006b0402  47                        INC EDI
006b0403  81c6a8ba0100              ADD ESI,0x1baa8
006b0409  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
006b040c  2b06                      SUB EAX,dword ptr [ESI]
006b040e  c1f802                    SAR EAX,0x2
006b0411  3bf8                      CMP EDI,EAX
006b0413  729c                      JC 0x006b03b1
006b0415  e876803b00                CALL 0x00a68490
006b041a  8954243c                  MOV dword ptr [ESP + 0x3c],EDX
006b041e  8bc8                      MOV ECX,EAX
006b0420  badb34b6d7                MOV EDX,0xd7b634db
006b0425  bf82de1b43                MOV EDI,0x431bde82
006b042a  f7e2                      MUL EDX
006b042c  8bf2                      MOV ESI,EDX
006b042e  89442440                  MOV dword ptr [ESP + 0x40],EAX
006b0432  8bc1                      MOV EAX,ECX
006b0434  b9db34b6d7                MOV ECX,0xd7b634db
006b0439  f7e7                      MUL EDI
006b043b  89542460                  MOV dword ptr [ESP + 0x60],EDX
006b043f  8bf8                      MOV EDI,EAX
006b0441  8b44243c                  MOV EAX,dword ptr [ESP + 0x3c]
006b0445  f7e1                      MUL ECX
006b0447  89542440                  MOV dword ptr [ESP + 0x40],EDX
006b044b  8bc8                      MOV ECX,EAX
006b044d  8b44243c                  MOV EAX,dword ptr [ESP + 0x3c]
006b0451  ba82de1b43                MOV EDX,0x431bde82
006b0456  f7e2                      MUL EDX
006b0458  03ce                      ADD ECX,ESI
006b045a  8b742434                  MOV ESI,dword ptr [ESP + 0x34]
006b045e  89542438                  MOV dword ptr [ESP + 0x38],EDX
006b0462  8b542440                  MOV EDX,dword ptr [ESP + 0x40]
006b0466  83d200                    ADC EDX,0x0
006b0469  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006b046d  03f9                      ADD EDI,ECX
006b046f  8b4c2460                  MOV ECX,dword ptr [ESP + 0x60]
006b0473  897c2440                  MOV dword ptr [ESP + 0x40],EDI
006b0477  83d100                    ADC ECX,0x0
006b047a  8b7c2448                  MOV EDI,dword ptr [ESP + 0x48]
006b047e  33c0                      XOR EAX,EAX
006b0480  03d1                      ADD EDX,ECX
006b0482  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
006b0486  13c0                      ADC EAX,EAX
006b0488  03ca                      ADD ECX,EDX
006b048a  8b542438                  MOV EDX,dword ptr [ESP + 0x38]
006b048e  13d0                      ADC EDX,EAX
006b0490  0facd112                  SHRD ECX,EDX,0x12
006b0494  c1ea12                    SHR EDX,0x12
006b0497  2b4c2430                  SUB ECX,dword ptr [ESP + 0x30]
006b049b  1b542424                  SBB EDX,dword ptr [ESP + 0x24]
006b049f  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
006b04a5  111534b6c700              ADC dword ptr [0x00c7b634],EDX
006b04ab  8bcf                      MOV ECX,EDI
006b04ad  e8fe5d0000                CALL 0x006b62b0
006b04b2  50                        PUSH EAX
006b04b3  8d8ea8040000              LEA ECX,[ESI + 0x4a8]
006b04b9  e8b210d8ff                CALL 0x00431570
006b04be  e89dea0300                CALL 0x006eef60
006b04c3  8bce                      MOV ECX,ESI
006b04c5  660f6ec0                  MOVD XMM0,EAX
006b04c9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006b04cd  c1e81f                    SHR EAX,0x1f
006b04d0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006b04d9  8b06                      MOV EAX,dword ptr [ESI]
006b04db  660f5ac8                  CVTPD2PS XMM1,XMM0
006b04df  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006b04e7  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
006b04ef  f30f580d98a1ba00          ADDSS XMM1,dword ptr [0x00baa198]
006b04f7  0f28c1                    MOVAPS XMM0,XMM1
006b04fa  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
006b0502  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
006b050a  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
006b0512  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
006b051a  ff500c                    CALL dword ptr [EAX + 0xc]
006b051d  e83eea0300                CALL 0x006eef60
006b0522  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006b0528  6a00                      PUSH 0x0
006b052a  50                        PUSH EAX
006b052b  6a00                      PUSH 0x0
006b052d  6a00                      PUSH 0x0
006b052f  6840b6c700                PUSH 0xc7b640
006b0534  8d44246c                  LEA EAX,[ESP + 0x6c]
006b0538  50                        PUSH EAX
006b0539  6a07                      PUSH 0x7
006b053b  68e8030000                PUSH 0x3e8
006b0540  e8cbde0400                CALL 0x006fe410
006b0545  8bc8                      MOV ECX,EAX
006b0547  8b10                      MOV EDX,dword ptr [EAX]
006b0549  ff520c                    CALL dword ptr [EDX + 0xc]
006b054c  e80fea0300                CALL 0x006eef60
006b0551  8bf8                      MOV EDI,EAX
006b0553  e808ea0300                CALL 0x006eef60
006b0558  33d2                      XOR EDX,EDX
006b055a  b903000000                MOV ECX,0x3
006b055f  f7f1                      DIV ECX
006b0561  8bf2                      MOV ESI,EDX
006b0563  e8f8e90300                CALL 0x006eef60
006b0568  660f6ec0                  MOVD XMM0,EAX
006b056c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006b0570  c1e81f                    SHR EAX,0x1f
006b0573  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006b057c  660f5ac0                  CVTPD2PS XMM0,XMM0
006b0580  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006b0588  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
006b0590  f30f58c0                  ADDSS XMM0,XMM0
006b0594  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
006b059a  e8a1cfd6ff                CALL 0x0041d540
006b059f  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006b05a7  f30f118424d8000000        MOVSS dword ptr [ESP + 0xd8],XMM0
006b05b0  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
006b05b6  e865cfd6ff                CALL 0x0041d520
006b05bb  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006b05c3  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
006b05cb  f30f118424dc000000        MOVSS dword ptr [ESP + 0xdc],XMM0
006b05d4  e887e90300                CALL 0x006eef60
006b05d9  660f6ec0                  MOVD XMM0,EAX
006b05dd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006b05e1  c1e81f                    SHR EAX,0x1f
006b05e4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006b05ed  660f5ac8                  CVTPD2PS XMM1,XMM0
006b05f1  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006b05f9  f30f590d04a7ba00          MULSS XMM1,dword ptr [0x00baa704]
006b0601  f30f58c9                  ADDSS XMM1,XMM1
006b0605  0f28c1                    MOVAPS XMM0,XMM1
006b0608  f30f114c2440              MOVSS dword ptr [ESP + 0x40],XMM1
006b060e  e82dcfd6ff                CALL 0x0041d540
006b0613  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006b061b  8b442448                  MOV EAX,dword ptr [ESP + 0x48]
006b061f  f30f598070030000          MULSS XMM0,dword ptr [EAX + 0x370]
006b0627  8b44244c                  MOV EAX,dword ptr [ESP + 0x4c]
006b062b  f30f5800                  ADDSS XMM0,dword ptr [EAX]
006b062f  f30f11442468              MOVSS dword ptr [ESP + 0x68],XMM0
006b0635  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
006b063b  e8e0ced6ff                CALL 0x0041d520
006b0640  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006b0648  8b442448                  MOV EAX,dword ptr [ESP + 0x48]
006b064c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006b0652  6a00                      PUSH 0x0
006b0654  57                        PUSH EDI
006b0655  f30f598070030000          MULSS XMM0,dword ptr [EAX + 0x370]
006b065d  8b442454                  MOV EAX,dword ptr [ESP + 0x54]
006b0661  8b7c2450                  MOV EDI,dword ptr [ESP + 0x50]
006b0665  56                        PUSH ESI
006b0666  57                        PUSH EDI
006b0667  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
006b066c  8d8424e8000000            LEA EAX,[ESP + 0xe8]
006b0673  50                        PUSH EAX
006b0674  8d44247c                  LEA EAX,[ESP + 0x7c]
006b0678  50                        PUSH EAX
006b0679  6a05                      PUSH 0x5
006b067b  68e8030000                PUSH 0x3e8
006b0680  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
006b0689  e882dd0400                CALL 0x006fe410
006b068e  8bc8                      MOV ECX,EAX
006b0690  8b10                      MOV EDX,dword ptr [EAX]
006b0692  ff520c                    CALL dword ptr [EDX + 0xc]
006b0695  f30f10642420              MOVSS XMM4,dword ptr [ESP + 0x20]
006b069b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006b06a3  f30f105c2428              MOVSS XMM3,dword ptr [ESP + 0x28]
006b06a9  f30f58e0                  ADDSS XMM4,XMM0
006b06ad  0f2fdc                    COMISS XMM3,XMM4
006b06b0  f30f11642420              MOVSS dword ptr [ESP + 0x20],XMM4
006b06b6  0f87b4f7ffff              JA 0x006afe70
006b06bc  e95cf5ffff                JMP 0x006afc1d
006b06c1  8d41f6                    LEA EAX,[ECX + -0xa]
006b06c4  3ddd030000                CMP EAX,0x3dd
006b06c9  760a                      JBE 0x006b06d5
006b06cb  83f902                    CMP ECX,0x2
006b06ce  7405                      JZ 0x006b06d5
006b06d0  83f904                    CMP ECX,0x4
006b06d3  7508                      JNZ 0x006b06dd
006b06d5  f30f101da0a9ba00          MOVSS XMM3,dword ptr [0x00baa9a0]
006b06dd  83fa02                    CMP EDX,0x2
006b06e0  7c05                      JL 0x006b06e7
006b06e2  83f901                    CMP ECX,0x1
006b06e5  740f                      JZ 0x006b06f6
006b06e7  8d41f6                    LEA EAX,[ECX + -0xa]
006b06ea  3ddd030000                CMP EAX,0x3dd
006b06ef  7605                      JBE 0x006b06f6
006b06f1  83f904                    CMP ECX,0x4
006b06f4  7539                      JNZ 0x006b072f
006b06f6  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
006b06fe  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
006b0706  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
006b070c  f30f58055ca8ba00          ADDSS XMM0,dword ptr [0x00baa85c]
006b0714  0f2fc1                    COMISS XMM0,XMM1
006b0717  761c                      JBE 0x006b0735
006b0719  f30f10442438              MOVSS XMM0,dword ptr [ESP + 0x38]
006b071f  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006b0727  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
006b072d  eb06                      JMP 0x006b0735
006b072f  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
006b0735  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
006b073d  0f2fc1                    COMISS XMM0,XMM1
006b0740  760a                      JBE 0x006b074c
006b0742  f30f590d7ca0ba00          MULSS XMM1,dword ptr [0x00baa07c]
006b074a  eb0a                      JMP 0x006b0756
006b074c  0f28c6                    MOVAPS XMM0,XMM6
006b074f  f30f5ec1                  DIVSS XMM0,XMM1
006b0753  0f28c8                    MOVAPS XMM1,XMM0
006b0756  83f909                    CMP ECX,0x9
006b0759  0f8507010000              JNZ 0x006b0866
006b075f  a17816c700                MOV EAX,[0x00c71678]
006b0764  8d4c2440                  LEA ECX,[ESP + 0x40]
006b0768  c74424400000003f          MOV dword ptr [ESP + 0x40],0x3f000000
006b0770  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006b0776  2b8628030000              SUB EAX,dword ptr [ESI + 0x328]
006b077c  660f6ed0                  MOVD XMM2,EAX
006b0780  8d442450                  LEA EAX,[ESP + 0x50]
006b0784  0f5bd2                    CVTDQ2PS XMM2,XMM2
006b0787  f30f5e15d0a8ba00          DIVSS XMM2,dword ptr [0x00baa8d0]
006b078f  f30f5dd6                  MINSS XMM2,XMM6
006b0793  f30f59d1                  MULSS XMM2,XMM1
006b0797  0f28ce                    MOVAPS XMM1,XMM6
006b079a  0f28c2                    MOVAPS XMM0,XMM2
006b079d  f30f59da                  MULSS XMM3,XMM2
006b07a1  f30f58c2                  ADDSS XMM0,XMM2
006b07a5  f30f5e9e6c030000          DIVSS XMM3,dword ptr [ESI + 0x36c]
006b07ad  f30f5cc8                  SUBSS XMM1,XMM0
006b07b1  0f2f0dd0a2ba00            COMISS XMM1,dword ptr [0x00baa2d0]
006b07b8  f30f114c2450              MOVSS dword ptr [ESP + 0x50],XMM1
006b07be  0f46c1                    CMOVBE EAX,ECX
006b07c1  0f2f15f8a1ba00            COMISS XMM2,dword ptr [0x00baa1f8]
006b07c8  f30f1008                  MOVSS XMM1,dword ptr [EAX]
006b07cc  0f28c1                    MOVAPS XMM0,XMM1
006b07cf  f30f598e64030000          MULSS XMM1,dword ptr [ESI + 0x364]
006b07d7  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
006b07df  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
006b07e7  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
006b07ef  7613                      JBE 0x006b0804
006b07f1  0f2fae18040000            COMISS XMM5,dword ptr [ESI + 0x418]
006b07f8  760a                      JBE 0x006b0804
006b07fa  c7861804000000000000      MOV dword ptr [ESI + 0x418],0x0
006b0804  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006b080b  0f28cb                    MOVAPS XMM1,XMM3
006b080e  0f85d3010000              JNZ 0x006b09e7
006b0814  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
006b081c  f30f59c0                  MULSS XMM0,XMM0
006b0820  0f2f44244c                COMISS XMM0,dword ptr [ESP + 0x4c]
006b0825  0f86bc010000              JBE 0x006b09e7
006b082b  a17816c700                MOV EAX,[0x00c71678]
006b0830  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006b0836  2b8628030000              SUB EAX,dword ptr [ESI + 0x328]
006b083c  83f80f                    CMP EAX,0xf
006b083f  0f8ea2010000              JLE 0x006b09e7
006b0845  f30f108610040000          MOVSS XMM0,dword ptr [ESI + 0x410]
006b084d  0f2f0530aeba00            COMISS XMM0,dword ptr [0x00baae30]
006b0854  0f868d010000              JBE 0x006b09e7
006b085a  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
006b0861  e981010000                JMP 0x006b09e7
006b0866  0f28c3                    MOVAPS XMM0,XMM3
006b0869  f30f59c1                  MULSS XMM0,XMM1
006b086d  f30f5e866c030000          DIVSS XMM0,dword ptr [ESI + 0x36c]
006b0875  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
006b087b  83f902                    CMP ECX,0x2
006b087e  0f855d010000              JNZ 0x006b09e1
006b0884  f30f58c9                  ADDSS XMM1,XMM1
006b0888  c74424400000003f          MOV dword ptr [ESP + 0x40],0x3f000000
006b0890  0f28c6                    MOVAPS XMM0,XMM6
006b0893  8d4c2440                  LEA ECX,[ESP + 0x40]
006b0897  8d442450                  LEA EAX,[ESP + 0x50]
006b089b  f30f5cc1                  SUBSS XMM0,XMM1
006b089f  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
006b08a6  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
006b08ac  0f46c1                    CMOVBE EAX,ECX
006b08af  f30f1010                  MOVSS XMM2,dword ptr [EAX]
006b08b3  0f28da                    MOVAPS XMM3,XMM2
006b08b6  f30f599664030000          MULSS XMM2,dword ptr [ESI + 0x364]
006b08be  f30f599e60030000          MULSS XMM3,dword ptr [ESI + 0x360]
006b08c6  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
006b08ce  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
006b08d6  0f108e28040000            MOVUPS XMM1,xmmword ptr [ESI + 0x428]
006b08dd  8b15684bc300              MOV EDX,dword ptr [0x00c34b68]
006b08e3  8b3d644bc300              MOV EDI,dword ptr [0x00c34b64]
006b08e9  0f28c1                    MOVAPS XMM0,XMM1
006b08ec  897c2410                  MOV dword ptr [ESP + 0x10],EDI
006b08f0  660f73d808                PSRLDQ XMM0,0x8
006b08f5  660f7ec0                  MOVD EAX,XMM0
006b08f9  0f28c1                    MOVAPS XMM0,XMM1
006b08fc  660f73d80c                PSRLDQ XMM0,0xc
006b0901  660f7ec1                  MOVD ECX,XMM0
006b0905  23c2                      AND EAX,EDX
006b0907  89442450                  MOV dword ptr [ESP + 0x50],EAX
006b090b  a16c4bc300                MOV EAX,[0x00c34b6c]
006b0910  23c8                      AND ECX,EAX
006b0912  894c2440                  MOV dword ptr [ESP + 0x40],ECX
006b0916  660f7ec9                  MOVD ECX,XMM1
006b091a  89442478                  MOV dword ptr [ESP + 0x78],EAX
006b091e  a1604bc300                MOV EAX,[0x00c34b60]
006b0923  23c8                      AND ECX,EAX
006b0925  89442460                  MOV dword ptr [ESP + 0x60],EAX
006b0929  660f73d904                PSRLDQ XMM1,0x4
006b092e  660f7ec8                  MOVD EAX,XMM1
006b0932  23c7                      AND EAX,EDI
006b0934  8b7c2448                  MOV EDI,dword ptr [ESP + 0x48]
006b0938  0bc8                      OR ECX,EAX
006b093a  750e                      JNZ 0x006b094a
006b093c  8b442450                  MOV EAX,dword ptr [ESP + 0x50]
006b0940  0b442440                  OR EAX,dword ptr [ESP + 0x40]
006b0944  0f8497000000              JZ 0x006b09e1
006b094a  f30f59d2                  MULSS XMM2,XMM2
006b094e  f30f59db                  MULSS XMM3,XMM3
006b0952  f30f58d3                  ADDSS XMM2,XMM3
006b0956  0f2ff2                    COMISS XMM6,XMM2
006b0959  0f8682000000              JBE 0x006b09e1
006b095f  0f108e28040000            MOVUPS XMM1,xmmword ptr [ESI + 0x428]
006b0966  8b4c2460                  MOV ECX,dword ptr [ESP + 0x60]
006b096a  f7d2                      NOT EDX
006b096c  f7542410                  NOT dword ptr [ESP + 0x10]
006b0970  f7d1                      NOT ECX
006b0972  660f7ec8                  MOVD EAX,XMM1
006b0976  0f28c1                    MOVAPS XMM0,XMM1
006b0979  660f73d804                PSRLDQ XMM0,0x4
006b097e  83ec10                    SUB ESP,0x10
006b0981  23c8                      AND ECX,EAX
006b0983  660f7ec0                  MOVD EAX,XMM0
006b0987  0f28c1                    MOVAPS XMM0,XMM1
006b098a  898c2490000000            MOV dword ptr [ESP + 0x90],ECX
006b0991  8b8c2488000000            MOV ECX,dword ptr [ESP + 0x88]
006b0998  21442420                  AND dword ptr [ESP + 0x20],EAX
006b099c  f7d1                      NOT ECX
006b099e  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
006b09a2  89842494000000            MOV dword ptr [ESP + 0x94],EAX
006b09a9  660f73d808                PSRLDQ XMM0,0x8
006b09ae  660f7ec0                  MOVD EAX,XMM0
006b09b2  660f73d90c                PSRLDQ XMM1,0xc
006b09b7  23d0                      AND EDX,EAX
006b09b9  660f7ec8                  MOVD EAX,XMM1
006b09bd  89942498000000            MOV dword ptr [ESP + 0x98],EDX
006b09c4  23c8                      AND ECX,EAX
006b09c6  8bc4                      MOV EAX,ESP
006b09c8  898c249c000000            MOV dword ptr [ESP + 0x9c],ECX
006b09cf  8bce                      MOV ECX,ESI
006b09d1  0f10842490000000          MOVUPS XMM0,xmmword ptr [ESP + 0x90]
006b09d9  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
006b09dc  e86f57fcff                CALL 0x00676150
006b09e1  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
006b09e7  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
006b09ed  f30f59c1                  MULSS XMM0,XMM1
006b09f1  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
006b09f9  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
006b0a01  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
006b0a07  f30f59c1                  MULSS XMM0,XMM1
006b0a0b  f30f588664030000          ADDSS XMM0,dword ptr [ESI + 0x364]
006b0a13  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
006b0a1b  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
006b0a1f  8b442474                  MOV EAX,dword ptr [ESP + 0x74]
006b0a23  41                        INC ECX
006b0a24  894c242c                  MOV dword ptr [ESP + 0x2c],ECX
006b0a28  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
006b0a2e  0f825ff2ffff              JC 0x006afc93
006b0a34  f30f104c2438              MOVSS XMM1,dword ptr [ESP + 0x38]
006b0a3a  0f28c1                    MOVAPS XMM0,XMM1
006b0a3d  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
006b0a45  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
006b0a4d  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
006b0a55  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006b0a5d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006b0a63  2500400000                AND EAX,0x4000
006b0a68  83c800                    OR EAX,0x0
006b0a6b  0f85e2000000              JNZ 0x006b0b53
006b0a71  a17816c700                MOV EAX,[0x00c71678]
006b0a76  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006b0a7c  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
006b0a84  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006b0a8b  0f86c2000000              JBE 0x006b0b53
006b0a91  a19c16c700                MOV EAX,[0x00c7169c]
006b0a96  80b8c9a3020000            CMP byte ptr [EAX + 0x2a3c9],0x0
006b0a9d  0f84b0000000              JZ 0x006b0b53
006b0aa3  8d442468                  LEA EAX,[ESP + 0x68]
006b0aa7  8bcf                      MOV ECX,EDI
006b0aa9  50                        PUSH EAX
006b0aaa  e821640000                CALL 0x006b6ed0
006b0aaf  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
006b0ab6  7409                      JZ 0x006b0ac1
006b0ab8  83bf8401000005            CMP dword ptr [EDI + 0x184],0x5
006b0abf  740b                      JZ 0x006b0acc
006b0ac1  f644246880                TEST byte ptr [ESP + 0x68],0x80
006b0ac6  0f8487000000              JZ 0x006b0b53
006b0acc  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006b0ad4  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006b0adc  f30f59c0                  MULSS XMM0,XMM0
006b0ae0  f30f59c9                  MULSS XMM1,XMM1
006b0ae4  f30f58c1                  ADDSS XMM0,XMM1
006b0ae8  e8634fd8ff                CALL 0x00435a50
006b0aed  0f2f056ca0ba00            COMISS XMM0,dword ptr [0x00baa06c]
006b0af4  765d                      JBE 0x006b0b53
006b0af6  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
006b0afe  b901000000                MOV ECX,0x1
006b0b03  f30f5ec8                  DIVSS XMM1,XMM0
006b0b07  0f57d2                    XORPS XMM2,XMM2
006b0b0a  f30f2cc1                  CVTTSS2SI EAX,XMM1
006b0b0e  83f801                    CMP EAX,0x1
006b0b11  0f4fc8                    CMOVG ECX,EAX
006b0b14  660f6ec9                  MOVD XMM1,ECX
006b0b18  8bcf                      MOV ECX,EDI
006b0b1a  0f5bc9                    CVTDQ2PS XMM1,XMM1
006b0b1d  e83ebcffff                CALL 0x006ac760
006b0b22  85c0                      TEST EAX,EAX
006b0b24  742d                      JZ 0x006b0b53
006b0b26  e835e40300                CALL 0x006eef60
006b0b2b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006b0b31  6a00                      PUSH 0x0
006b0b33  50                        PUSH EAX
006b0b34  6a00                      PUSH 0x0
006b0b36  6a00                      PUSH 0x0
006b0b38  6840b6c700                PUSH 0xc7b640
006b0b3d  8d873c030000              LEA EAX,[EDI + 0x33c]
006b0b43  50                        PUSH EAX
006b0b44  6885000000                PUSH 0x85
006b0b49  68e8030000                PUSH 0x3e8
006b0b4e  e8bdd80400                CALL 0x006fe410
006b0b53  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
006b0b5b  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
006b0b63  0f28c3                    MOVAPS XMM0,XMM3
006b0b66  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
006b0b6d  0f28d4                    MOVAPS XMM2,XMM4
006b0b70  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
006b0b77  f30f58d0                  ADDSS XMM2,XMM0
006b0b7b  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
006b0b83  0f2fc2                    COMISS XMM0,XMM2
006b0b86  772c                      JA 0x006b0bb4
006b0b88  ff7730                    PUSH dword ptr [EDI + 0x30]
006b0b8b  0f5ac3                    CVTPS2PD XMM0,XMM3
006b0b8e  ff772c                    PUSH dword ptr [EDI + 0x2c]
006b0b91  ff7728                    PUSH dword ptr [EDI + 0x28]
006b0b94  83ec10                    SUB ESP,0x10
006b0b97  f20f11442408              MOVSD qword ptr [ESP + 0x8],XMM0
006b0b9d  0f5ac4                    CVTPS2PD XMM0,XMM4
006b0ba0  f20f110424                MOVSD qword ptr [ESP],XMM0
006b0ba5  686072b600                PUSH 0xb67260
006b0baa  6a10                      PUSH 0x10
006b0bac  e80f073600                CALL 0x00a112c0
006b0bb1  83c424                    ADD ESP,0x24
006b0bb4  8b8c241c030000            MOV ECX,dword ptr [ESP + 0x31c]
006b0bbb  5f                        POP EDI
006b0bbc  5e                        POP ESI
006b0bbd  33cc                      XOR ECX,ESP
006b0bbf  e867e54300                CALL 0x00aef12b
006b0bc4  8be5                      MOV ESP,EBP
006b0bc6  5d                        POP EBP
006b0bc7  c3                        RET
006b0bc8  68980ac800                PUSH 0xc80a98
006b0bcd  e8cbe64300                CALL 0x00aef29d
006b0bd2  83c404                    ADD ESP,0x4
006b0bd5  833d980ac800ff            CMP dword ptr [0x00c80a98],-0x1
006b0bdc  0f8566e5ffff              JNZ 0x006af148
006b0be2  0f57c0                    XORPS XMM0,XMM0
006b0be5  c705c00ac80000000000      MOV dword ptr [0x00c80ac0],0x0
006b0bef  0f1105b00ac800            MOVUPS xmmword ptr [0x00c80ab0],XMM0
006b0bf6  68980ac800                PUSH 0xc80a98
006b0bfb  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
006b0c02  0f1105a00ac800            MOVUPS xmmword ptr [0x00c80aa0],XMM0
006b0c09  c705c40ac80000000000      MOV dword ptr [0x00c80ac4],0x0
006b0c13  0f57c0                    XORPS XMM0,XMM0
006b0c16  c705c80ac80000000000      MOV dword ptr [0x00c80ac8],0x0
006b0c20  0f1105dc0ac800            MOVUPS xmmword ptr [0x00c80adc],XMM0
006b0c27  c705ec0ac800b5b4343e      MOV dword ptr [0x00c80aec],0x3e34b4b5
006b0c31  0f280580c6ba00            MOVAPS XMM0,xmmword ptr [0x00bac680]
006b0c38  0f1105cc0ac800            MOVUPS xmmword ptr [0x00c80acc],XMM0
006b0c3f  c705f00ac80000000000      MOV dword ptr [0x00c80af0],0x0
006b0c49  0f57c0                    XORPS XMM0,XMM0
006b0c4c  c705f40ac80000000000      MOV dword ptr [0x00c80af4],0x0
006b0c56  0f1105080bc800            MOVUPS xmmword ptr [0x00c80b08],XMM0
006b0c5d  c705180bc800b5b4b43e      MOV dword ptr [0x00c80b18],0x3eb4b4b5
006b0c67  0f280590c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac590]
006b0c6e  0f1105f80ac800            MOVUPS xmmword ptr [0x00c80af8],XMM0
006b0c75  c7051c0bc80000000000      MOV dword ptr [0x00c80b1c],0x0
006b0c7f  0f57c0                    XORPS XMM0,XMM0
006b0c82  c705200bc80000000000      MOV dword ptr [0x00c80b20],0x0
006b0c8c  0f1105340bc800            MOVUPS xmmword ptr [0x00c80b34],XMM0
006b0c93  c705440bc8008d8c8c3e      MOV dword ptr [0x00c80b44],0x3e8c8c8d
006b0c9d  0f280580c6ba00            MOVAPS XMM0,xmmword ptr [0x00bac680]
006b0ca4  0f1105240bc800            MOVUPS xmmword ptr [0x00c80b24],XMM0
006b0cab  c705480bc800cac8c83d      MOV dword ptr [0x00c80b48],0x3dc8c8ca
006b0cb5  0f57c0                    XORPS XMM0,XMM0
006b0cb8  c7054c0bc80000000000      MOV dword ptr [0x00c80b4c],0x0
006b0cc2  0f1105600bc800            MOVUPS xmmword ptr [0x00c80b60],XMM0
006b0cc9  c705700bc800cac8483e      MOV dword ptr [0x00c80b70],0x3e48c8ca
006b0cd3  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
006b0cda  0f1105500bc800            MOVUPS xmmword ptr [0x00c80b50],XMM0
006b0ce1  c705740bc800cac8483e      MOV dword ptr [0x00c80b74],0x3e48c8ca
006b0ceb  0f57c0                    XORPS XMM0,XMM0
006b0cee  c705780bc80000000000      MOV dword ptr [0x00c80b78],0x0
006b0cf8  0f11058c0bc800            MOVUPS xmmword ptr [0x00c80b8c],XMM0
006b0cff  c7059c0bc800cac8c83d      MOV dword ptr [0x00c80b9c],0x3dc8c8ca
006b0d09  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
006b0d10  0f11057c0bc800            MOVUPS xmmword ptr [0x00c80b7c],XMM0
006b0d17  c705a00bc800cac8c83d      MOV dword ptr [0x00c80ba0],0x3dc8c8ca
006b0d21  c705a40bc80000000000      MOV dword ptr [0x00c80ba4],0x0
006b0d2b  e823e54300                CALL 0x00aef253
006b0d30  83c404                    ADD ESP,0x4
006b0d33  e910e4ffff                JMP 0x006af148
006b0d38  68a80bc800                PUSH 0xc80ba8
006b0d3d  e85be54300                CALL 0x00aef29d
006b0d42  83c404                    ADD ESP,0x4
006b0d45  833da80bc800ff            CMP dword ptr [0x00c80ba8],-0x1
006b0d4c  0f85bae4ffff              JNZ 0x006af20c
006b0d52  0f57c0                    XORPS XMM0,XMM0
006b0d55  c705d00bc80000000000      MOV dword ptr [0x00c80bd0],0x0
006b0d5f  0f1105c00bc800            MOVUPS xmmword ptr [0x00c80bc0],XMM0
006b0d66  68a80bc800                PUSH 0xc80ba8
006b0d6b  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
006b0d72  0f1105b00bc800            MOVUPS xmmword ptr [0x00c80bb0],XMM0
006b0d79  c705d40bc80000000000      MOV dword ptr [0x00c80bd4],0x0
006b0d83  0f57c0                    XORPS XMM0,XMM0
006b0d86  c705d80bc80000000000      MOV dword ptr [0x00c80bd8],0x0
006b0d90  0f1105ec0bc800            MOVUPS xmmword ptr [0x00c80bec],XMM0
006b0d97  c705fc0bc800b5b4343e      MOV dword ptr [0x00c80bfc],0x3e34b4b5
006b0da1  0f280500c6ba00            MOVAPS XMM0,xmmword ptr [0x00bac600]
006b0da8  0f1105dc0bc800            MOVUPS xmmword ptr [0x00c80bdc],XMM0
006b0daf  c705000cc80000000000      MOV dword ptr [0x00c80c00],0x0
006b0db9  0f57c0                    XORPS XMM0,XMM0
006b0dbc  c705040cc80000000000      MOV dword ptr [0x00c80c04],0x0
006b0dc6  0f1105180cc800            MOVUPS xmmword ptr [0x00c80c18],XMM0
006b0dcd  c705280cc800b5b4b43e      MOV dword ptr [0x00c80c28],0x3eb4b4b5
006b0dd7  0f280560c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac460]
006b0dde  0f1105080cc800            MOVUPS xmmword ptr [0x00c80c08],XMM0
006b0de5  c7052c0cc80000000000      MOV dword ptr [0x00c80c2c],0x0
006b0def  0f57c0                    XORPS XMM0,XMM0
006b0df2  c705300cc80000000000      MOV dword ptr [0x00c80c30],0x0
006b0dfc  0f1105440cc800            MOVUPS xmmword ptr [0x00c80c44],XMM0
006b0e03  c705540cc800a1a0203e      MOV dword ptr [0x00c80c54],0x3e20a0a1
006b0e0d  0f280520c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac320]
006b0e14  0f1105340cc800            MOVUPS xmmword ptr [0x00c80c34],XMM0
006b0e1b  c705580cc80000000000      MOV dword ptr [0x00c80c58],0x0
006b0e25  0f57c0                    XORPS XMM0,XMM0
006b0e28  c7055c0cc80000000000      MOV dword ptr [0x00c80c5c],0x0
006b0e32  0f1105700cc800            MOVUPS xmmword ptr [0x00c80c70],XMM0
006b0e39  c705800cc80000000000      MOV dword ptr [0x00c80c80],0x0
006b0e43  0f280510c6ba00            MOVAPS XMM0,xmmword ptr [0x00bac610]
006b0e4a  0f1105600cc800            MOVUPS xmmword ptr [0x00c80c60],XMM0
006b0e51  c705840cc80000000000      MOV dword ptr [0x00c80c84],0x0
006b0e5b  0f57c0                    XORPS XMM0,XMM0
006b0e5e  c705880cc80000000000      MOV dword ptr [0x00c80c88],0x0
006b0e68  0f11059c0cc800            MOVUPS xmmword ptr [0x00c80c9c],XMM0
006b0e6f  c705ac0cc8008d8c8c3e      MOV dword ptr [0x00c80cac],0x3e8c8c8d
006b0e79  0f280570c6ba00            MOVAPS XMM0,xmmword ptr [0x00bac670]
006b0e80  0f11058c0cc800            MOVUPS xmmword ptr [0x00c80c8c],XMM0
006b0e87  c705b00cc80000000000      MOV dword ptr [0x00c80cb0],0x0
006b0e91  c705b40cc80000000000      MOV dword ptr [0x00c80cb4],0x0
006b0e9b  e8b3e34300                CALL 0x00aef253
006b0ea0  83c404                    ADD ESP,0x4
006b0ea3  e964e3ffff                JMP 0x006af20c
