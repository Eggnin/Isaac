; J460 NPC AI 0x006cb010 HELPER_ProjectileStatusFlags
; types=9
; identities=9.*
; entry=006cb010
006cb010  55                        PUSH EBP
006cb011  8bec                      MOV EBP,ESP
006cb013  81eca0000000              SUB ESP,0xa0
006cb019  a1b493bf00                MOV EAX,[0x00bf93b4]
006cb01e  33c5                      XOR EAX,EBP
006cb020  8945f8                    MOV dword ptr [EBP + -0x8],EAX
006cb023  53                        PUSH EBX
006cb024  56                        PUSH ESI
006cb025  8bf1                      MOV ESI,ECX
006cb027  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
006cb02c  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
006cb02f  8bda                      MOV EBX,EDX
006cb031  8bc1                      MOV EAX,ECX
006cb033  895d98                    MOV dword ptr [EBP + -0x68],EBX
006cb036  2580000000                AND EAX,0x80
006cb03b  83c800                    OR EAX,0x0
006cb03e  57                        PUSH EDI
006cb03f  8b7d10                    MOV EDI,dword ptr [EBP + 0x10]
006cb042  7416                      JZ 0x006cb05a
006cb044  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
006cb04a  818e3804000000000001      OR dword ptr [ESI + 0x438],0x1000000
006cb054  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
006cb05a  8bc1                      MOV EAX,ECX
006cb05c  2500010000                AND EAX,0x100
006cb061  83c800                    OR EAX,0x0
006cb064  7416                      JZ 0x006cb07c
006cb066  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
006cb06c  818e3804000080000000      OR dword ptr [ESI + 0x438],0x80
006cb076  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
006cb07c  81e100000020              AND ECX,0x20000000
006cb082  83c900                    OR ECX,0x0
006cb085  7416                      JZ 0x006cb09d
006cb087  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
006cb08d  818e3804000000000080      OR dword ptr [ESI + 0x438],0x80000000
006cb097  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
006cb09d  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
006cb0a0  85ff                      TEST EDI,EDI
006cb0a2  0f849b000000              JZ 0x006cb143
006cb0a8  8b157816c700              MOV EDX,dword ptr [0x00c71678]
006cb0ae  83ba1466020002            CMP dword ptr [EDX + 0x26614],0x2
006cb0b5  7c06                      JL 0x006cb0bd
006cb0b7  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006cb0bb  740d                      JZ 0x006cb0ca
006cb0bd  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006cb0c0  83e80a                    SUB EAX,0xa
006cb0c3  3ddd030000                CMP EAX,0x3dd
006cb0c8  7730                      JA 0x006cb0fa
006cb0ca  6a01                      PUSH 0x1
006cb0cc  8d8aa8ba0100              LEA ECX,[EDX + 0x1baa8]
006cb0d2  51                        PUSH ECX
006cb0d3  6887010000                PUSH 0x187
006cb0d8  e8a32f2f00                CALL 0x009be080
006cb0dd  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
006cb0e0  85c0                      TEST EAX,EAX
006cb0e2  7416                      JZ 0x006cb0fa
006cb0e4  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
006cb0ea  818e3804000080000000      OR dword ptr [ESI + 0x438],0x80
006cb0f4  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
006cb0fa  8b8638040000              MOV EAX,dword ptr [ESI + 0x438]
006cb100  2580000000                AND EAX,0x80
006cb105  83c800                    OR EAX,0x0
006cb108  750a                      JNZ 0x006cb114
006cb10a  81e100001000              AND ECX,0x100000
006cb110  0bc1                      OR EAX,ECX
006cb112  742f                      JZ 0x006cb143
006cb114  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
006cb11a  8d9ebc030000              LEA EBX,[ESI + 0x3bc]
006cb120  85c9                      TEST ECX,ECX
006cb122  7412                      JZ 0x006cb136
006cb124  8d459c                    LEA EAX,[EBP + -0x64]
006cb127  895d9c                    MOV dword ptr [EBP + -0x64],EBX
006cb12a  50                        PUSH EAX
006cb12b  81c1cc030000              ADD ECX,0x3cc
006cb131  e8da40e0ff                CALL 0x004cf210
006cb136  53                        PUSH EBX
006cb137  8bcf                      MOV ECX,EDI
006cb139  893b                      MOV dword ptr [EBX],EDI
006cb13b  e8b02be0ff                CALL 0x004cdcf0
006cb140  8b5d98                    MOV EBX,dword ptr [EBP + -0x68]
006cb143  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006cb14b  85db                      TEST EBX,EBX
006cb14d  0f88f7000000              JS 0x006cb24a
006cb153  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
006cb157  0f8596000000              JNZ 0x006cb1f3
006cb15d  8bcb                      MOV ECX,EBX
006cb15f  8d45a0                    LEA EAX,[EBP + -0x60]
006cb162  c1e106                    SHL ECX,0x6
006cb165  50                        PUSH EAX
006cb166  81c1c054c300              ADD ECX,0xc354c0
006cb16c  e80faae3ff                CALL 0x00505b80
006cb171  0f1086b8010000            MOVUPS XMM0,xmmword ptr [ESI + 0x1b8]
006cb178  50                        PUSH EAX
006cb179  8b86e0010000              MOV EAX,dword ptr [ESI + 0x1e0]
006cb17f  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
006cb185  0f118564ffffff            MOVUPS xmmword ptr [EBP + 0xffffff64],XMM0
006cb18c  89458c                    MOV dword ptr [EBP + -0x74],EAX
006cb18f  0f1086c8010000            MOVUPS XMM0,xmmword ptr [ESI + 0x1c8]
006cb196  0f118574ffffff            MOVUPS xmmword ptr [EBP + 0xffffff74],XMM0
006cb19d  f30f7e86d8010000          MOVQ XMM0,qword ptr [ESI + 0x1d8]
006cb1a5  660fd64584                MOVQ qword ptr [EBP + -0x7c],XMM0
006cb1aa  e81180fbff                CALL 0x006831c0
006cb1af  0f108564ffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff64]
006cb1b6  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
006cb1b9  8d4dcc                    LEA ECX,[EBP + -0x34]
006cb1bc  6a01                      PUSH 0x1
006cb1be  6a00                      PUSH 0x0
006cb1c0  0f1145cc                  MOVUPS xmmword ptr [EBP + -0x34],XMM0
006cb1c4  68ff000000                PUSH 0xff
006cb1c9  0f108574ffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff74]
006cb1d0  8945f4                    MOV dword ptr [EBP + -0xc],EAX
006cb1d3  8b06                      MOV EAX,dword ptr [ESI]
006cb1d5  6aff                      PUSH -0x1
006cb1d7  0f1145dc                  MOVUPS xmmword ptr [EBP + -0x24],XMM0
006cb1db  51                        PUSH ECX
006cb1dc  f30f7e4584                MOVQ XMM0,qword ptr [EBP + -0x7c]
006cb1e1  8bce                      MOV ECX,ESI
006cb1e3  660fd645ec                MOVQ qword ptr [EBP + -0x14],XMM0
006cb1e8  ff503c                    CALL dword ptr [EAX + 0x3c]
006cb1eb  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006cb1f3  83fb12                    CMP EBX,0x12
006cb1f6  7452                      JZ 0x006cb24a
006cb1f8  f30f108688030000          MOVSS XMM0,dword ptr [ESI + 0x388]
006cb200  8b06                      MOV EAX,dword ptr [ESI]
006cb202  f30f58c0                  ADDSS XMM0,XMM0
006cb206  51                        PUSH ECX
006cb207  8bce                      MOV ECX,ESI
006cb209  f30f5d0530a6ba00          MINSS XMM0,dword ptr [0x00baa630]
006cb211  f30f110424                MOVSS dword ptr [ESP],XMM0
006cb216  ff5040                    CALL dword ptr [EAX + 0x40]
006cb219  f30f1005b4a4ba00          MOVSS XMM0,dword ptr [0x00baa4b4]
006cb221  83fb03                    CMP EBX,0x3
006cb224  750c                      JNZ 0x006cb232
006cb226  818e3804000000020000      OR dword ptr [ESI + 0x438],0x200
006cb230  eb0c                      JMP 0x006cb23e
006cb232  83fb08                    CMP EBX,0x8
006cb235  7513                      JNZ 0x006cb24a
006cb237  838e3804000010            OR dword ptr [ESI + 0x438],0x10
006cb23e  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
006cb244  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
006cb24a  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
006cb24d  33c0                      XOR EAX,EAX
006cb24f  f30f594594                MULSS XMM0,dword ptr [EBP + -0x6c]
006cb254  81e100004000              AND ECX,0x400000
006cb25a  0bc1                      OR EAX,ECX
006cb25c  7408                      JZ 0x006cb266
006cb25e  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006cb266  0f2e0554a4ba00            UCOMISS XMM0,dword ptr [0x00baa454]
006cb26d  9f                        LAHF
006cb26e  f6c444                    TEST AH,0x44
006cb271  7b10                      JNP 0x006cb283
006cb273  f30f598620040000          MULSS XMM0,dword ptr [ESI + 0x420]
006cb27b  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
006cb283  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
006cb286  5f                        POP EDI
006cb287  5e                        POP ESI
006cb288  33cd                      XOR ECX,EBP
006cb28a  5b                        POP EBX
006cb28b  e89b3e4200                CALL 0x00aef12b
006cb290  8be5                      MOV ESP,EBP
006cb292  5d                        POP EBP
006cb293  c3                        RET
