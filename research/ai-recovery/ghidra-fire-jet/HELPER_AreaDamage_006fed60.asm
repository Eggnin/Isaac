; J460 NPC AI 0x006fed60 HELPER_AreaDamage
; types=1000
; identities=1000.147.*
; entry=006fed60
006fed60  53                        PUSH EBX
006fed61  8bdc                      MOV EBX,ESP
006fed63  83ec08                    SUB ESP,0x8
006fed66  83e4f8                    AND ESP,0xfffffff8
006fed69  83c404                    ADD ESP,0x4
006fed6c  55                        PUSH EBP
006fed6d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006fed70  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006fed74  8bec                      MOV EBP,ESP
006fed76  6aff                      PUSH -0x1
006fed78  682dc2af00                PUSH 0xafc22d
006fed7d  64a100000000              MOV EAX,FS:[0x0]
006fed83  50                        PUSH EAX
006fed84  53                        PUSH EBX
006fed85  83ec58                    SUB ESP,0x58
006fed88  56                        PUSH ESI
006fed89  57                        PUSH EDI
006fed8a  a1b493bf00                MOV EAX,[0x00bf93b4]
006fed8f  33c5                      XOR EAX,EBP
006fed91  50                        PUSH EAX
006fed92  8d45f4                    LEA EAX,[EBP + -0xc]
006fed95  64a300000000              MOV FS:[0x0],EAX
006fed9b  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
006feda0  8b730c                    MOV ESI,dword ptr [EBX + 0xc]
006feda3  8d4d98                    LEA ECX,[EBP + -0x68]
006feda6  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
006fedac  56                        PUSH ESI
006fedad  e85e25d3ff                CALL 0x00431310
006fedb2  8a5318                    MOV DL,byte ptr [EBX + 0x18]
006fedb5  85f6                      TEST ESI,ESI
006fedb7  7428                      JZ 0x006fede1
006fedb9  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
006fedbc  83f801                    CMP EAX,0x1
006fedbf  7415                      JZ 0x006fedd6
006fedc1  83f803                    CMP EAX,0x3
006fedc4  751b                      JNZ 0x006fede1
006fedc6  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
006fedcc  2500010000                AND EAX,0x100
006fedd1  83c800                    OR EAX,0x0
006fedd4  750b                      JNZ 0x006fede1
006fedd6  b001                      MOV AL,0x1
006fedd8  84d2                      TEST DL,DL
006fedda  7524                      JNZ 0x006fee00
006feddc  8855ef                    MOV byte ptr [EBP + -0x11],DL
006feddf  eb27                      JMP 0x006fee08
006fede1  32c0                      XOR AL,AL
006fede3  85f6                      TEST ESI,ESI
006fede5  7419                      JZ 0x006fee00
006fede7  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
006feded  2500000020                AND EAX,0x20000000
006fedf2  83c800                    OR EAX,0x0
006fedf5  7407                      JZ 0x006fedfe
006fedf7  32c0                      XOR AL,AL
006fedf9  8845ef                    MOV byte ptr [EBP + -0x11],AL
006fedfc  eb0a                      JMP 0x006fee08
006fedfe  32c0                      XOR AL,AL
006fee00  c645ef01                  MOV byte ptr [EBP + -0x11],0x1
006fee04  85f6                      TEST ESI,ESI
006fee06  7429                      JZ 0x006fee31
006fee08  84c0                      TEST AL,AL
006fee0a  752d                      JNZ 0x006fee39
006fee0c  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
006fee12  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
006fee18  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
006fee1b  8bc1                      MOV EAX,ECX
006fee1d  2500010000                AND EAX,0x100
006fee22  83c800                    OR EAX,0x0
006fee25  7512                      JNZ 0x006fee39
006fee27  81e100000020              AND ECX,0x20000000
006fee2d  0bc8                      OR ECX,EAX
006fee2f  7508                      JNZ 0x006fee39
006fee31  c645ee00                  MOV byte ptr [EBP + -0x12],0x0
006fee35  84d2                      TEST DL,DL
006fee37  7404                      JZ 0x006fee3d
006fee39  c645ee01                  MOV byte ptr [EBP + -0x12],0x1
006fee3d  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
006fee43  8d45d0                    LEA EAX,[EBP + -0x30]
006fee46  6aff                      PUSH -0x1
006fee48  ff7308                    PUSH dword ptr [EBX + 0x8]
006fee4b  81c118120000              ADD ECX,0x1218
006fee51  50                        PUSH EAX
006fee52  e839b9d1ff                CALL 0x0041a790
006fee57  33ff                      XOR EDI,EDI
006fee59  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006fee60  897de4                    MOV dword ptr [EBP + -0x1c],EDI
006fee63  397ddc                    CMP dword ptr [EBP + -0x24],EDI
006fee66  0f8612010000              JBE 0x006fef7e
006fee6c  0f1f4000                  NOP dword ptr [EAX]
006fee70  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
006fee73  8b3cb8                    MOV EDI,dword ptr [EAX + EDI*0x4]
006fee76  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
006fee7d  0f84eb000000              JZ 0x006fef6e
006fee83  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
006fee86  83fe01                    CMP ESI,0x1
006fee89  7405                      JZ 0x006fee90
006fee8b  83fe03                    CMP ESI,0x3
006fee8e  7574                      JNZ 0x006fef04
006fee90  807def00                  CMP byte ptr [EBP + -0x11],0x0
006fee94  746e                      JZ 0x006fef04
006fee96  68d04bc300                PUSH 0xc34bd0
006fee9b  8d5324                    LEA EDX,[EBX + 0x24]
006fee9e  8d4dc0                    LEA ECX,[EBP + -0x40]
006feea1  e8ca82d1ff                CALL 0x00417170
006feea6  83c404                    ADD ESP,0x4
006feea9  8b08                      MOV ECX,dword ptr [EAX]
006feeab  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006feeae  7508                      JNZ 0x006feeb8
006feeb0  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006feeb3  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006feeb6  7414                      JZ 0x006feecc
006feeb8  83fe01                    CMP ESI,0x1
006feebb  750f                      JNZ 0x006feecc
006feebd  8bcf                      MOV ECX,EDI
006feebf  e85c440c00                CALL 0x007c3320
006feec4  84c0                      TEST AL,AL
006feec6  0f85a2000000              JNZ 0x006fef6e
006feecc  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006feed1  0f2f4320                  COMISS XMM0,dword ptr [EBX + 0x20]
006feed5  8b07                      MOV EAX,dword ptr [EDI]
006feed7  720a                      JC 0x006feee3
006feed9  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
006feee1  eb08                      JMP 0x006feeeb
006feee3  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006feeeb  6a1e                      PUSH 0x1e
006feeed  8d4d98                    LEA ECX,[EBP + -0x68]
006feef0  51                        PUSH ECX
006feef1  ff7314                    PUSH dword ptr [EBX + 0x14]
006feef4  ff7310                    PUSH dword ptr [EBX + 0x10]
006feef7  51                        PUSH ECX
006feef8  8bcf                      MOV ECX,EDI
006feefa  f30f110424                MOVSS dword ptr [ESP],XMM0
006feeff  ff5020                    CALL dword ptr [EAX + 0x20]
006fef02  eb6a                      JMP 0x006fef6e
006fef04  a17816c700                MOV EAX,[0x00c71678]
006fef09  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006fef10  7c05                      JL 0x006fef17
006fef12  83fe01                    CMP ESI,0x1
006fef15  740a                      JZ 0x006fef21
006fef17  8d46f6                    LEA EAX,[ESI + -0xa]
006fef1a  3ddd030000                CMP EAX,0x3dd
006fef1f  774d                      JA 0x006fef6e
006fef21  807dee00                  CMP byte ptr [EBP + -0x12],0x0
006fef25  7447                      JZ 0x006fef6e
006fef27  83fe01                    CMP ESI,0x1
006fef2a  7442                      JZ 0x006fef6e
006fef2c  8b07                      MOV EAX,dword ptr [EDI]
006fef2e  8d4d98                    LEA ECX,[EBP + -0x68]
006fef31  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006fef36  6a1e                      PUSH 0x1e
006fef38  51                        PUSH ECX
006fef39  ff7314                    PUSH dword ptr [EBX + 0x14]
006fef3c  ff7310                    PUSH dword ptr [EBX + 0x10]
006fef3f  51                        PUSH ECX
006fef40  8bcf                      MOV ECX,EDI
006fef42  f30f110424                MOVSS dword ptr [ESP],XMM0
006fef47  ff5020                    CALL dword ptr [EAX + 0x20]
006fef4a  0f104324                  MOVUPS XMM0,xmmword ptr [EBX + 0x24]
006fef4e  8b5308                    MOV EDX,dword ptr [EBX + 0x8]
006fef51  51                        PUSH ECX
006fef52  c7042400006040            MOV dword ptr [ESP],0x40600000
006fef59  8bcf                      MOV ECX,EDI
006fef5b  ff730c                    PUSH dword ptr [EBX + 0xc]
006fef5e  83ec10                    SUB ESP,0x10
006fef61  8bc4                      MOV EAX,ESP
006fef63  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
006fef66  e8f5bff7ff                CALL 0x0067af60
006fef6b  83c418                    ADD ESP,0x18
006fef6e  8b7de4                    MOV EDI,dword ptr [EBP + -0x1c]
006fef71  47                        INC EDI
006fef72  897de4                    MOV dword ptr [EBP + -0x1c],EDI
006fef75  3b7ddc                    CMP EDI,dword ptr [EBP + -0x24]
006fef78  0f82f2feffff              JC 0x006fee70
006fef7e  807dd000                  CMP byte ptr [EBP + -0x30],0x0
006fef82  7531                      JNZ 0x006fefb5
006fef84  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
006fef8a  85d2                      TEST EDX,EDX
006fef8c  7405                      JZ 0x006fef93
006fef8e  83c230                    ADD EDX,0x30
006fef91  eb05                      JMP 0x006fef98
006fef93  ba18f6c700                MOV EDX,0xc7f618
006fef98  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
006fef9b  85c9                      TEST ECX,ECX
006fef9d  7416                      JZ 0x006fefb5
006fef9f  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
006fefa2  83c1fc                    ADD ECX,-0x4
006fefa5  2902                      SUB dword ptr [EDX],EAX
006fefa7  51                        PUSH ECX
006fefa8  835a0400                  SBB dword ptr [EDX + 0x4],0x0
006fefac  ff15dc87b100              CALL dword ptr [0x00b187dc]
006fefb2  83c404                    ADD ESP,0x4
006fefb5  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006fefb8  64890d00000000            MOV dword ptr FS:[0x0],ECX
006fefbf  59                        POP ECX
006fefc0  5f                        POP EDI
006fefc1  5e                        POP ESI
006fefc2  8be5                      MOV ESP,EBP
006fefc4  5d                        POP EBP
006fefc5  8be3                      MOV ESP,EBX
006fefc7  5b                        POP EBX
006fefc8  c22c00                    RET 0x2c
