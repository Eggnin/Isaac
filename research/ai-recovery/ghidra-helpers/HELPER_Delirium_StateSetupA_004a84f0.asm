; J460 NPC AI 0x004a84f0 HELPER_Delirium_StateSetupA
; types=412
; identities=delirium.state_setup
; entry=004a84f0
004a84f0  55                        PUSH EBP
004a84f1  8bec                      MOV EBP,ESP
004a84f3  83ec14                    SUB ESP,0x14
004a84f6  8bc1                      MOV EAX,ECX
004a84f8  53                        PUSH EBX
004a84f9  56                        PUSH ESI
004a84fa  57                        PUSH EDI
004a84fb  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
004a84fe  8b582c                    MOV EBX,dword ptr [EAX + 0x2c]
004a8501  8945fc                    MOV dword ptr [EBP + -0x4],EAX
004a8504  e8576a2400                CALL 0x006eef60
004a8509  a801                      TEST AL,0x1
004a850b  7534                      JNZ 0x004a8541
004a850d  33c9                      XOR ECX,ECX
004a850f  b880e9b100                MOV EAX,0xb1e980
004a8514  894df8                    MOV dword ptr [EBP + -0x8],ECX
004a8517  8b78f8                    MOV EDI,dword ptr [EAX + -0x8]
004a851a  3bf7                      CMP ESI,EDI
004a851c  7505                      JNZ 0x004a8523
004a851e  3b58fc                    CMP EBX,dword ptr [EAX + -0x4]
004a8521  7457                      JZ 0x004a857a
004a8523  3b30                      CMP ESI,dword ptr [EAX]
004a8525  7505                      JNZ 0x004a852c
004a8527  3b5804                    CMP EBX,dword ptr [EAX + 0x4]
004a852a  7450                      JZ 0x004a857c
004a852c  41                        INC ECX
004a852d  83c014                    ADD EAX,0x14
004a8530  894df8                    MOV dword ptr [EBP + -0x8],ECX
004a8533  3d00ecb100                CMP EAX,0xb1ec00
004a8538  7cdd                      JL 0x004a8517
004a853a  5f                        POP EDI
004a853b  5e                        POP ESI
004a853c  5b                        POP EBX
004a853d  8be5                      MOV ESP,EBP
004a853f  5d                        POP EBP
004a8540  c3                        RET
004a8541  b91f000000                MOV ECX,0x1f
004a8546  b8ecebb100                MOV EAX,0xb1ebec
004a854b  894df8                    MOV dword ptr [EBP + -0x8],ECX
004a854e  6690                      NOP
004a8550  8b78f8                    MOV EDI,dword ptr [EAX + -0x8]
004a8553  3bf7                      CMP ESI,EDI
004a8555  7505                      JNZ 0x004a855c
004a8557  3b58fc                    CMP EBX,dword ptr [EAX + -0x4]
004a855a  741e                      JZ 0x004a857a
004a855c  3b30                      CMP ESI,dword ptr [EAX]
004a855e  7505                      JNZ 0x004a8565
004a8560  3b5804                    CMP EBX,dword ptr [EAX + 0x4]
004a8563  7417                      JZ 0x004a857c
004a8565  49                        DEC ECX
004a8566  83e814                    SUB EAX,0x14
004a8569  894df8                    MOV dword ptr [EBP + -0x8],ECX
004a856c  3d80e9b100                CMP EAX,0xb1e980
004a8571  7ddd                      JGE 0x004a8550
004a8573  5f                        POP EDI
004a8574  5e                        POP ESI
004a8575  5b                        POP EBX
004a8576  8be5                      MOV ESP,EBP
004a8578  5d                        POP EBP
004a8579  c3                        RET
004a857a  8b38                      MOV EDI,dword ptr [EAX]
004a857c  e8df692400                CALL 0x006eef60
004a8581  33d2                      XOR EDX,EDX
004a8583  b964000000                MOV ECX,0x64
004a8588  f7f1                      DIV ECX
004a858a  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004a858d  8d0480                    LEA EAX,[EAX + EAX*0x4]
004a8590  3b148588e9b100            CMP EDX,dword ptr [EAX*0x4 + 0xb1e988]
004a8597  0f8ddb000000              JGE 0x004a8678
004a859d  e8be692400                CALL 0x006eef60
004a85a2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a85a8  8bf0                      MOV ESI,EAX
004a85aa  51                        PUSH ECX
004a85ab  8d45f0                    LEA EAX,[EBP + -0x10]
004a85ae  c7042400000000            MOV dword ptr [ESP],0x0
004a85b5  50                        PUSH EAX
004a85b6  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004a85bc  e80f643700                CALL 0x0081e9d0
004a85c1  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004a85c4  56                        PUSH ESI
004a85c5  6a00                      PUSH 0x0
004a85c7  51                        PUSH ECX
004a85c8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a85ce  6840b6c700                PUSH 0xc7b640
004a85d3  50                        PUSH EAX
004a85d4  53                        PUSH EBX
004a85d5  57                        PUSH EDI
004a85d6  e84505f8ff                CALL 0x00428b20
004a85db  8bf0                      MOV ESI,EAX
004a85dd  8bd7                      MOV EDX,EDI
004a85df  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004a85e2  6a01                      PUSH 0x1
004a85e4  53                        PUSH EBX
004a85e5  8b8884030000              MOV ECX,dword ptr [EAX + 0x384]
004a85eb  898e80030000              MOV dword ptr [ESI + 0x380],ECX
004a85f1  8b8884030000              MOV ECX,dword ptr [EAX + 0x384]
004a85f7  818e6801000000000480      OR dword ptr [ESI + 0x168],0x80040000
004a8601  898e84030000              MOV dword ptr [ESI + 0x384],ECX
004a8607  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004a860d  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
004a8613  8d4e48                    LEA ECX,[ESI + 0x48]
004a8616  e8f5d6ffff                CALL 0x004a5d10
004a861b  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004a861e  83c408                    ADD ESP,0x8
004a8621  8bce                      MOV ECX,ESI
004a8623  f30f108884030000          MOVSS XMM1,dword ptr [EAX + 0x384]
004a862b  e850000000                CALL 0x004a8680
004a8630  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004a8633  05e80b0000                ADD EAX,0xbe8
004a8638  8945fc                    MOV dword ptr [EBP + -0x4],EAX
004a863b  8b08                      MOV ECX,dword ptr [EAX]
004a863d  85c9                      TEST ECX,ECX
004a863f  7415                      JZ 0x004a8656
004a8641  8945f8                    MOV dword ptr [EBP + -0x8],EAX
004a8644  81c1cc030000              ADD ECX,0x3cc
004a864a  8d45f8                    LEA EAX,[EBP + -0x8]
004a864d  50                        PUSH EAX
004a864e  e8bd6b0200                CALL 0x004cf210
004a8653  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004a8656  50                        PUSH EAX
004a8657  8bce                      MOV ECX,ESI
004a8659  8930                      MOV dword ptr [EAX],ESI
004a865b  e890560200                CALL 0x004cdcf0
004a8660  8b06                      MOV EAX,dword ptr [ESI]
004a8662  8bce                      MOV ECX,ESI
004a8664  ff500c                    CALL dword ptr [EAX + 0xc]
004a8667  53                        PUSH EBX
004a8668  57                        PUSH EDI
004a8669  6850e9b100                PUSH 0xb1e950
004a866e  6a01                      PUSH 0x1
004a8670  e84b8c5600                CALL 0x00a112c0
004a8675  83c410                    ADD ESP,0x10
004a8678  5f                        POP EDI
004a8679  5e                        POP ESI
004a867a  5b                        POP EBX
004a867b  8be5                      MOV ESP,EBP
004a867d  5d                        POP EBP
004a867e  c3                        RET
