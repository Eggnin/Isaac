; J460 NPC AI 0x009a0de0 HELPER_HomingLaser_CalculateSamples
; types=7
; identities=7.*
; entry=009a0de0
009a0de0  55                        PUSH EBP
009a0de1  8bec                      MOV EBP,ESP
009a0de3  83e4f8                    AND ESP,0xfffffff8
009a0de6  83ec20                    SUB ESP,0x20
009a0de9  56                        PUSH ESI
009a0dea  8d711c                    LEA ESI,[ECX + 0x1c]
009a0ded  894c2420                  MOV dword ptr [ESP + 0x20],ECX
009a0df1  83c128                    ADD ECX,0x28
009a0df4  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
009a0dfa  89742418                  MOV dword ptr [ESP + 0x18],ESI
009a0dfe  57                        PUSH EDI
009a0dff  3bce                      CMP ECX,ESI
009a0e01  740e                      JZ 0x009a0e11
009a0e03  ff742424                  PUSH dword ptr [ESP + 0x24]
009a0e07  ff7604                    PUSH dword ptr [ESI + 0x4]
009a0e0a  ff36                      PUSH dword ptr [ESI]
009a0e0c  e85f1cf2ff                CALL 0x008c2a70
009a0e11  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
009a0e14  2b06                      SUB EAX,dword ptr [ESI]
009a0e16  c1f803                    SAR EAX,0x3
009a0e19  85c0                      TEST EAX,EAX
009a0e1b  0f846b010000              JZ 0x009a0f8c
009a0e21  48                        DEC EAX
009a0e22  bf01000000                MOV EDI,0x1
009a0e27  89442410                  MOV dword ptr [ESP + 0x10],EAX
009a0e2b  3bc7                      CMP EAX,EDI
009a0e2d  0f8659010000              JBE 0x009a0f8c
009a0e33  8b36                      MOV ESI,dword ptr [ESI]
009a0e35  f30f100cfe                MOVSS XMM1,dword ptr [ESI + EDI*0x8]
009a0e3a  f30f5c4cfef8              SUBSS XMM1,dword ptr [ESI + EDI*0x8 + -0x8]
009a0e40  f30f1054fe04              MOVSS XMM2,dword ptr [ESI + EDI*0x8 + 0x4]
009a0e46  f30f5c54fefc              SUBSS XMM2,dword ptr [ESI + EDI*0x8 + -0x4]
009a0e4c  0f28c1                    MOVAPS XMM0,XMM1
009a0e4f  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
009a0e55  f30f59c1                  MULSS XMM0,XMM1
009a0e59  0f28ca                    MOVAPS XMM1,XMM2
009a0e5c  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
009a0e62  f30f59ca                  MULSS XMM1,XMM2
009a0e66  f30f58c1                  ADDSS XMM0,XMM1
009a0e6a  e8e14ba9ff                CALL 0x00435a50
009a0e6f  0f57c9                    XORPS XMM1,XMM1
009a0e72  0f2fc1                    COMISS XMM0,XMM1
009a0e75  762c                      JBE 0x009a0ea3
009a0e77  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
009a0e7f  f30f5ec8                  DIVSS XMM1,XMM0
009a0e83  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
009a0e89  f30f59c1                  MULSS XMM0,XMM1
009a0e8d  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
009a0e93  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
009a0e99  f30f59c1                  MULSS XMM0,XMM1
009a0e9d  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
009a0ea3  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
009a0ea7  8d34fe                    LEA ESI,[ESI + EDI*0x8]
009a0eaa  83c608                    ADD ESI,0x8
009a0ead  8b01                      MOV EAX,dword ptr [ECX]
009a0eaf  f30f100e                  MOVSS XMM1,dword ptr [ESI]
009a0eb3  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
009a0eb8  f30f5c0cf8                SUBSS XMM1,dword ptr [EAX + EDI*0x8]
009a0ebd  f30f5c54f804              SUBSS XMM2,dword ptr [EAX + EDI*0x8 + 0x4]
009a0ec3  0f28c1                    MOVAPS XMM0,XMM1
009a0ec6  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
009a0ecc  f30f59c1                  MULSS XMM0,XMM1
009a0ed0  0f28ca                    MOVAPS XMM1,XMM2
009a0ed3  f30f59ca                  MULSS XMM1,XMM2
009a0ed7  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
009a0edd  f30f58c1                  ADDSS XMM0,XMM1
009a0ee1  e86a4ba9ff                CALL 0x00435a50
009a0ee6  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
009a0eec  0f57c9                    XORPS XMM1,XMM1
009a0eef  0f2fc1                    COMISS XMM0,XMM1
009a0ef2  761c                      JBE 0x009a0f10
009a0ef4  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
009a0efc  f30f5ec8                  DIVSS XMM1,XMM0
009a0f00  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
009a0f06  f30f59c1                  MULSS XMM0,XMM1
009a0f0a  f30f59d1                  MULSS XMM2,XMM1
009a0f0e  eb06                      JMP 0x009a0f16
009a0f10  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
009a0f16  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
009a0f1c  f30f59c8                  MULSS XMM1,XMM0
009a0f20  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
009a0f26  f30f59c2                  MULSS XMM0,XMM2
009a0f2a  f30f58c8                  ADDSS XMM1,XMM0
009a0f2e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
009a0f36  f30f5cc1                  SUBSS XMM0,XMM1
009a0f3a  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
009a0f40  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
009a0f47  0f2fc8                    COMISS XMM1,XMM0
009a0f4a  762f                      JBE 0x009a0f7b
009a0f4c  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
009a0f50  8b4a20                    MOV ECX,dword ptr [EDX + 0x20]
009a0f53  3bf1                      CMP ESI,ECX
009a0f55  7412                      JZ 0x009a0f69
009a0f57  8b06                      MOV EAX,dword ptr [ESI]
009a0f59  8946f8                    MOV dword ptr [ESI + -0x8],EAX
009a0f5c  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
009a0f5f  8946fc                    MOV dword ptr [ESI + -0x4],EAX
009a0f62  83c608                    ADD ESI,0x8
009a0f65  3bf1                      CMP ESI,ECX
009a0f67  75ee                      JNZ 0x009a0f57
009a0f69  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
009a0f6d  8d41f8                    LEA EAX,[ECX + -0x8]
009a0f70  4f                        DEC EDI
009a0f71  894220                    MOV dword ptr [EDX + 0x20],EAX
009a0f74  4e                        DEC ESI
009a0f75  89742410                  MOV dword ptr [ESP + 0x10],ESI
009a0f79  eb04                      JMP 0x009a0f7f
009a0f7b  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
009a0f7f  47                        INC EDI
009a0f80  3bfe                      CMP EDI,ESI
009a0f82  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
009a0f86  0f82a7feffff              JC 0x009a0e33
009a0f8c  5f                        POP EDI
009a0f8d  5e                        POP ESI
009a0f8e  8be5                      MOV ESP,EBP
009a0f90  5d                        POP EBP
009a0f91  c3                        RET
