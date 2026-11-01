; J460 NPC AI 0x006d6690 AI_006d6690
; types=292
; identities=292.0.0,292.1.0
; entry=006d6690
006d6690  55                        PUSH EBP
006d6691  8bec                      MOV EBP,ESP
006d6693  83e4f8                    AND ESP,0xfffffff8
006d6696  83ec40                    SUB ESP,0x40
006d6699  a1b493bf00                MOV EAX,[0x00bf93b4]
006d669e  33c4                      XOR EAX,ESP
006d66a0  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006d66a4  56                        PUSH ESI
006d66a5  57                        PUSH EDI
006d66a6  8bf9                      MOV EDI,ECX
006d66a8  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
006d66af  756b                      JNZ 0x006d671c
006d66b1  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
006d66b7  b903000000                MOV ECX,0x3
006d66bc  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d66c4  83e2fb                    AND EDX,0xfffffffb
006d66c7  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006d66cd  81ca11000d02              OR EDX,0x20d0011
006d66d3  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
006d66da  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006d66e0  b810000000                MOV EAX,0x10
006d66e5  899768010000              MOV dword ptr [EDI + 0x168],EDX
006d66eb  0f47c1                    CMOVA EAX,ECX
006d66ee  83bfd403000000            CMP dword ptr [EDI + 0x3d4],0x0
006d66f5  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
006d66fb  0f8584040000              JNZ 0x006d6b85
006d6701  c7875403000064000000      MOV dword ptr [EDI + 0x354],0x64
006d670b  5f                        POP EDI
006d670c  5e                        POP ESI
006d670d  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
006d6711  33cc                      XOR ECX,ESP
006d6713  e8138a4100                CALL 0x00aef12b
006d6718  8be5                      MOV ESP,EBP
006d671a  5d                        POP EBP
006d671b  c3                        RET
006d671c  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
006d6721  0f57c9                    XORPS XMM1,XMM1
006d6724  0f2fc1                    COMISS XMM0,XMM1
006d6727  be03000000                MOV ESI,0x3
006d672c  0f8697000000              JBE 0x006d67c9
006d6732  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006d673a  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
006d6740  e81b880100                CALL 0x006eef60
006d6745  33d2                      XOR EDX,EDX
006d6747  f7f6                      DIV ESI
006d6749  85d2                      TEST EDX,EDX
006d674b  750a                      JNZ 0x006d6757
006d674d  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006d6755  eb06                      JMP 0x006d675d
006d6757  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
006d675d  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
006d6760  83e004                    AND EAX,0x4
006d6763  83c800                    OR EAX,0x0
006d6766  740a                      JZ 0x006d6772
006d6768  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
006d6770  eb08                      JMP 0x006d677a
006d6772  0f57c0                    XORPS XMM0,XMM0
006d6775  0f2fc8                    COMISS XMM1,XMM0
006d6778  7634                      JBE 0x006d67ae
006d677a  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
006d6782  8d442410                  LEA EAX,[ESP + 0x10]
006d6786  f30f5cc1                  SUBSS XMM0,XMM1
006d678a  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
006d6792  8d4c2408                  LEA ECX,[ESP + 0x8]
006d6796  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
006d679d  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
006d67a3  0f46c1                    CMOVBE EAX,ECX
006d67a6  8b00                      MOV EAX,dword ptr [EAX]
006d67a8  898780030000              MOV dword ptr [EDI + 0x380],EAX
006d67ae  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
006d67b1  89470c                    MOV dword ptr [EDI + 0xc],EAX
006d67b4  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
006d67bb  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
006d67c2  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
006d67c9  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006d67d0  7515                      JNZ 0x006d67e7
006d67d2  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006d67da  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
006d67e1  0f82e2020000              JC 0x006d6ac9
006d67e7  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
006d67ee  0f84a0020000              JZ 0x006d6a94
006d67f4  e867870100                CALL 0x006eef60
006d67f9  8b8f3c030000              MOV ECX,dword ptr [EDI + 0x33c]
006d67ff  8db73c030000              LEA ESI,[EDI + 0x33c]
006d6805  8b5604                    MOV EDX,dword ptr [ESI + 0x4]
006d6808  6a00                      PUSH 0x0
006d680a  50                        PUSH EAX
006d680b  6a00                      PUSH 0x0
006d680d  57                        PUSH EDI
006d680e  6840b6c700                PUSH 0xc7b640
006d6813  8d44241c                  LEA EAX,[ESP + 0x1c]
006d6817  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
006d681b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d6821  50                        PUSH EAX
006d6822  6a01                      PUSH 0x1
006d6824  68e8030000                PUSH 0x3e8
006d6829  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
006d682d  e8de7b0200                CALL 0x006fe410
006d6832  8b06                      MOV EAX,dword ptr [ESI]
006d6834  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
006d6837  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006d683f  89442410                  MOV dword ptr [ESP + 0x10],EAX
006d6843  8d442410                  LEA EAX,[ESP + 0x10]
006d6847  57                        PUSH EDI
006d6848  894c2418                  MOV dword ptr [ESP + 0x18],ECX
006d684c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d6852  50                        PUSH EAX
006d6853  e838c90200                CALL 0x00703190
006d6858  8b06                      MOV EAX,dword ptr [ESI]
006d685a  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
006d6861  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
006d6864  6a00                      PUSH 0x0
006d6866  6a00                      PUSH 0x0
006d6868  6804100000                PUSH 0x1004
006d686d  83ec10                    SUB ESP,0x10
006d6870  89442424                  MOV dword ptr [ESP + 0x24],EAX
006d6874  8bc4                      MOV EAX,ESP
006d6876  894c2428                  MOV dword ptr [ESP + 0x28],ECX
006d687a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d6880  57                        PUSH EDI
006d6881  6a00                      PUSH 0x0
006d6883  83ec08                    SUB ESP,0x8
006d6886  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
006d6889  8d442434                  LEA EAX,[ESP + 0x34]
006d688d  c744240400009642          MOV dword ptr [ESP + 0x4],0x42960000
006d6895  c704240000c842            MOV dword ptr [ESP],0x42c80000
006d689c  50                        PUSH EAX
006d689d  e8fe890200                CALL 0x006ff2a0
006d68a2  8d4c2418                  LEA ECX,[ESP + 0x18]
006d68a6  e8c508d3ff                CALL 0x00407170
006d68ab  8bf0                      MOV ESI,EAX
006d68ad  e8ae860100                CALL 0x006eef60
006d68b2  660f6ec0                  MOVD XMM0,EAX
006d68b6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006d68ba  c1e81f                    SHR EAX,0x1f
006d68bd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006d68c6  660f5ac0                  CVTPD2PS XMM0,XMM0
006d68ca  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006d68d2  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
006d68da  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
006d68e2  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
006d68e8  e873860100                CALL 0x006eef60
006d68ed  b903000000                MOV ECX,0x3
006d68f2  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
006d68f8  33d2                      XOR EDX,EDX
006d68fa  f7f1                      DIV ECX
006d68fc  8b8f40030000              MOV ECX,dword ptr [EDI + 0x340]
006d6902  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
006d6908  6a00                      PUSH 0x0
006d690a  51                        PUSH ECX
006d690b  c704240050c347            MOV dword ptr [ESP],0x47c35000
006d6912  56                        PUSH ESI
006d6913  51                        PUSH ECX
006d6914  89442420                  MOV dword ptr [ESP + 0x20],EAX
006d6918  8d4202                    LEA EAX,[EDX + 0x2]
006d691b  f30f110424                MOVSS dword ptr [ESP],XMM0
006d6920  50                        PUSH EAX
006d6921  6a1b                      PUSH 0x1b
006d6923  8d442428                  LEA EAX,[ESP + 0x28]
006d6927  894c242c                  MOV dword ptr [ESP + 0x2c],ECX
006d692b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d6931  50                        PUSH EAX
006d6932  e8f9c90200                CALL 0x00703330
006d6937  6a00                      PUSH 0x0
006d6939  6a01                      PUSH 0x1
006d693b  8d973c030000              LEA EDX,[EDI + 0x33c]
006d6941  8d4c2410                  LEA ECX,[ESP + 0x10]
006d6945  e8f67a0100                CALL 0x006ee440
006d694a  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
006d6950  83c408                    ADD ESP,0x8
006d6953  85d2                      TEST EDX,EDX
006d6955  751a                      JNZ 0x006d6971
006d6957  6854bfb600                PUSH 0xb6bf54
006d695c  6a10                      PUSH 0x10
006d695e  e85da93300                CALL 0x00a112c0
006d6963  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
006d6969  83c408                    ADD ESP,0x8
006d696c  85d2                      TEST EDX,EDX
006d696e  7501                      JNZ 0x006d6971
006d6970  cc                        INT3
006d6971  8b8fe0030000              MOV ECX,dword ptr [EDI + 0x3e0]
006d6977  8bc2                      MOV EAX,EDX
006d6979  d3e8                      SHR EAX,CL
006d697b  8b8fe4030000              MOV ECX,dword ptr [EDI + 0x3e4]
006d6981  33c2                      XOR EAX,EDX
006d6983  8bd0                      MOV EDX,EAX
006d6985  d3e2                      SHL EDX,CL
006d6987  8b8fe8030000              MOV ECX,dword ptr [EDI + 0x3e8]
006d698d  33d0                      XOR EDX,EAX
006d698f  8bf2                      MOV ESI,EDX
006d6991  b81f85eb51                MOV EAX,0x51eb851f
006d6996  d3ee                      SHR ESI,CL
006d6998  33f2                      XOR ESI,EDX
006d699a  f7e6                      MUL ESI
006d699c  89b7dc030000              MOV dword ptr [EDI + 0x3dc],ESI
006d69a2  c1ea05                    SHR EDX,0x5
006d69a5  6bc264                    IMUL EAX,EDX,0x64
006d69a8  2bf0                      SUB ESI,EAX
006d69aa  0f85e4000000              JNZ 0x006d6a94
006d69b0  6a02                      PUSH 0x2
006d69b2  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
006d69b8  e863261100                CALL 0x007e9020
006d69bd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d69c3  85c0                      TEST EAX,EAX
006d69c5  755a                      JNZ 0x006d6a21
006d69c7  8b81d8ae0100              MOV EAX,dword ptr [ECX + 0x1aed8]
006d69cd  8b91d4ae0100              MOV EDX,dword ptr [ECX + 0x1aed4]
006d69d3  2bc2                      SUB EAX,EDX
006d69d5  83e0f8                    AND EAX,0xfffffff8
006d69d8  3d90010000                CMP EAX,0x190
006d69dd  7e42                      JLE 0x006d6a21
006d69df  80ba9401000000            CMP byte ptr [EDX + 0x194],0x0
006d69e6  7439                      JZ 0x006d6a21
006d69e8  80ba9501000000            CMP byte ptr [EDX + 0x195],0x0
006d69ef  7430                      JZ 0x006d6a21
006d69f1  c6829401000000            MOV byte ptr [EDX + 0x194],0x0
006d69f8  ff89e0ae0100              DEC dword ptr [ECX + 0x1aee0]
006d69fe  8d4c2408                  LEA ECX,[ESP + 0x8]
006d6a02  56                        PUSH ESI
006d6a03  8db73c030000              LEA ESI,[EDI + 0x33c]
006d6a09  6a01                      PUSH 0x1
006d6a0b  8bd6                      MOV EDX,ESI
006d6a0d  e82e7a0100                CALL 0x006ee440
006d6a12  83c408                    ADD ESP,0x8
006d6a15  e846850100                CALL 0x006eef60
006d6a1a  6a00                      PUSH 0x0
006d6a1c  50                        PUSH EAX
006d6a1d  6a32                      PUSH 0x32
006d6a1f  eb59                      JMP 0x006d6a7a
006d6a21  8b81d8ae0100              MOV EAX,dword ptr [ECX + 0x1aed8]
006d6a27  8b91d4ae0100              MOV EDX,dword ptr [ECX + 0x1aed4]
006d6a2d  2bc2                      SUB EAX,EDX
006d6a2f  83e0f8                    AND EAX,0xfffffff8
006d6a32  3d48010000                CMP EAX,0x148
006d6a37  7e5b                      JLE 0x006d6a94
006d6a39  80ba4c01000000            CMP byte ptr [EDX + 0x14c],0x0
006d6a40  7452                      JZ 0x006d6a94
006d6a42  80ba4d01000000            CMP byte ptr [EDX + 0x14d],0x0
006d6a49  7449                      JZ 0x006d6a94
006d6a4b  c6824c01000000            MOV byte ptr [EDX + 0x14c],0x0
006d6a52  8db73c030000              LEA ESI,[EDI + 0x33c]
006d6a58  ff89e0ae0100              DEC dword ptr [ECX + 0x1aee0]
006d6a5e  8bd6                      MOV EDX,ESI
006d6a60  6a00                      PUSH 0x0
006d6a62  6a01                      PUSH 0x1
006d6a64  8d4c2410                  LEA ECX,[ESP + 0x10]
006d6a68  e8d3790100                CALL 0x006ee440
006d6a6d  83c408                    ADD ESP,0x8
006d6a70  e8eb840100                CALL 0x006eef60
006d6a75  6a00                      PUSH 0x0
006d6a77  50                        PUSH EAX
006d6a78  6a29                      PUSH 0x29
006d6a7a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006d6a80  8d442414                  LEA EAX,[ESP + 0x14]
006d6a84  6a00                      PUSH 0x0
006d6a86  50                        PUSH EAX
006d6a87  56                        PUSH ESI
006d6a88  685e010000                PUSH 0x15e
006d6a8d  6a05                      PUSH 0x5
006d6a8f  e87c790200                CALL 0x006fe410
006d6a94  83bfd403000000            CMP dword ptr [EDI + 0x3d4],0x0
006d6a9b  7409                      JZ 0x006d6aa6
006d6a9d  8b07                      MOV EAX,dword ptr [EDI]
006d6a9f  8bcf                      MOV ECX,EDI
006d6aa1  ff5028                    CALL dword ptr [EAX + 0x28]
006d6aa4  eb1b                      JMP 0x006d6ac1
006d6aa6  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
006d6aad  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
006d6ab7  c787800300000000003f      MOV dword ptr [EDI + 0x380],0x3f000000
006d6ac1  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006d6ac9  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006d6acf  83f803                    CMP EAX,0x3
006d6ad2  757b                      JNZ 0x006d6b4f
006d6ad4  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
006d6adc  0f2f0dfca6ba00            COMISS XMM1,dword ptr [0x00baa6fc]
006d6ae3  7609                      JBE 0x006d6aee
006d6ae5  6a00                      PUSH 0x0
006d6ae7  6854bcb100                PUSH 0xb1bc54
006d6aec  eb1e                      JMP 0x006d6b0c
006d6aee  0f2f0d30a6ba00            COMISS XMM1,dword ptr [0x00baa630]
006d6af5  7609                      JBE 0x006d6b00
006d6af7  6a00                      PUSH 0x0
006d6af9  681478b600                PUSH 0xb67814
006d6afe  eb0c                      JMP 0x006d6b0c
006d6b00  0f2fc8                    COMISS XMM1,XMM0
006d6b03  760f                      JBE 0x006d6b14
006d6b05  6a00                      PUSH 0x0
006d6b07  682078b600                PUSH 0xb67820
006d6b0c  8d4f48                    LEA ECX,[EDI + 0x48]
006d6b0f  e86c38d3ff                CALL 0x0040a380
006d6b14  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006d6b1c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006d6b24  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
006d6b2a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006d6b32  83f8fc                    CMP EAX,-0x4
006d6b35  7e4e                      JLE 0x006d6b85
006d6b37  48                        DEC EAX
006d6b38  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
006d6b3e  5f                        POP EDI
006d6b3f  5e                        POP ESI
006d6b40  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
006d6b44  33cc                      XOR ECX,ESP
006d6b46  e8e0854100                CALL 0x00aef12b
006d6b4b  8be5                      MOV ESP,EBP
006d6b4d  5d                        POP EBP
006d6b4e  c3                        RET
006d6b4f  83f810                    CMP EAX,0x10
006d6b52  7531                      JNZ 0x006d6b85
006d6b54  6a00                      PUSH 0x0
006d6b56  683078b600                PUSH 0xb67830
006d6b5b  8d4f48                    LEA ECX,[EDI + 0x48]
006d6b5e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
006d6b68  e81338d3ff                CALL 0x0040a380
006d6b6d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006d6b75  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
006d6b7d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006d6b85  8b4c2444                  MOV ECX,dword ptr [ESP + 0x44]
006d6b89  5f                        POP EDI
006d6b8a  5e                        POP ESI
006d6b8b  33cc                      XOR ECX,ESP
006d6b8d  e899854100                CALL 0x00aef12b
006d6b92  8be5                      MOV ESP,EBP
006d6b94  5d                        POP EBP
006d6b95  c3                        RET
