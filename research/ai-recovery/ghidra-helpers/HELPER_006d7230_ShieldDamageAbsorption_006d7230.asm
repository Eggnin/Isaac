; J460 NPC AI 0x006d7230 HELPER_006d7230_ShieldDamageAbsorption
; types=
; identities=common_damage_filter
; entry=006d7230
006d7230  55                        PUSH EBP
006d7231  8bec                      MOV EBP,ESP
006d7233  83e4f8                    AND ESP,0xfffffff8
006d7236  83ec1c                    SUB ESP,0x1c
006d7239  53                        PUSH EBX
006d723a  56                        PUSH ESI
006d723b  8bf1                      MOV ESI,ECX
006d723d  8bde                      MOV EBX,ESI
006d723f  89742414                  MOV dword ptr [ESP + 0x14],ESI
006d7243  57                        PUSH EDI
006d7244  895c240c                  MOV dword ptr [ESP + 0xc],EBX
006d7248  e8631bfdff                CALL 0x006a8db0
006d724d  84c0                      TEST AL,AL
006d724f  741f                      JZ 0x006d7270
006d7251  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
006d7257  895c240c                  MOV dword ptr [ESP + 0xc],EBX
006d725b  85c0                      TEST EAX,EAX
006d725d  7411                      JZ 0x006d7270
006d725f  90                        NOP
006d7260  8bd8                      MOV EBX,EAX
006d7262  8944240c                  MOV dword ptr [ESP + 0xc],EAX
006d7266  8b83bc030000              MOV EAX,dword ptr [EBX + 0x3bc]
006d726c  85c0                      TEST EAX,EAX
006d726e  75f0                      JNZ 0x006d7260
006d7270  85db                      TEST EBX,EBX
006d7272  7421                      JZ 0x006d7295
006d7274  a17816c700                MOV EAX,[0x00c71678]
006d7279  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006d7280  7c06                      JL 0x006d7288
006d7282  837b2801                  CMP dword ptr [EBX + 0x28],0x1
006d7286  7413                      JZ 0x006d729b
006d7288  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
006d728b  83e80a                    SUB EAX,0xa
006d728e  3ddd030000                CMP EAX,0x3dd
006d7293  7606                      JBE 0x006d729b
006d7295  8bde                      MOV EBX,ESI
006d7297  895c240c                  MOV dword ptr [ESP + 0xc],EBX
006d729b  f30f1083400c0000          MOVSS XMM0,dword ptr [EBX + 0xc40]
006d72a3  0f57c9                    XORPS XMM1,XMM1
006d72a6  0f2fc1                    COMISS XMM0,XMM1
006d72a9  0f865f020000              JBE 0x006d750e
006d72af  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
006d72b2  b893244992                MOV EAX,0x92492493
006d72b7  8b7e08                    MOV EDI,dword ptr [ESI + 0x8]
006d72ba  2bcf                      SUB ECX,EDI
006d72bc  f7e9                      IMUL ECX
006d72be  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
006d72c4  03d1                      ADD EDX,ECX
006d72c6  c1fa05                    SAR EDX,0x5
006d72c9  8bca                      MOV ECX,EDX
006d72cb  c1e91f                    SHR ECX,0x1f
006d72ce  03ca                      ADD ECX,EDX
006d72d0  741f                      JZ 0x006d72f1
006d72d2  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
006d72d5  2500200000                AND EAX,0x2000
006d72da  83c800                    OR EAX,0x0
006d72dd  7504                      JNZ 0x006d72e3
006d72df  f30f580f                  ADDSS XMM1,dword ptr [EDI]
006d72e3  83c738                    ADD EDI,0x38
006d72e6  83e901                    SUB ECX,0x1
006d72e9  75e7                      JNZ 0x006d72d2
006d72eb  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
006d72f1  8b83580c0000              MOV EAX,dword ptr [EBX + 0xc58]
006d72f7  3b83440c0000              CMP EAX,dword ptr [EBX + 0xc44]
006d72fd  7241                      JC 0x006d7340
006d72ff  8bbb540c0000              MOV EDI,dword ptr [EBX + 0xc54]
006d7305  8d8b480c0000              LEA ECX,[EBX + 0xc48]
006d730b  8b31                      MOV ESI,dword ptr [ECX]
006d730d  83ec0c                    SUB ESP,0xc
006d7310  8bd4                      MOV EDX,ESP
006d7312  83ec0c                    SUB ESP,0xc
006d7315  8d4701                    LEA EAX,[EDI + 0x1]
006d7318  894208                    MOV dword ptr [EDX + 0x8],EAX
006d731b  8bc4                      MOV EAX,ESP
006d731d  c7420400000000            MOV dword ptr [EDX + 0x4],0x0
006d7324  8932                      MOV dword ptr [EDX],ESI
006d7326  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
006d732d  8930                      MOV dword ptr [EAX],ESI
006d732f  897808                    MOV dword ptr [EAX + 0x8],EDI
006d7332  8d442434                  LEA EAX,[ESP + 0x34]
006d7336  50                        PUSH EAX
006d7337  e8a4350000                CALL 0x006da8e0
006d733c  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
006d7340  8b8b580c0000              MOV ECX,dword ptr [EBX + 0xc58]
006d7346  8dbb480c0000              LEA EDI,[EBX + 0xc48]
006d734c  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
006d734f  894c2410                  MOV dword ptr [ESP + 0x10],ECX
006d7353  8d0411                    LEA EAX,[ECX + EDX*0x1]
006d7356  a803                      TEST AL,0x3
006d7358  7521                      JNZ 0x006d737b
006d735a  8d4104                    LEA EAX,[ECX + 0x4]
006d735d  894c2410                  MOV dword ptr [ESP + 0x10],ECX
006d7361  c1e802                    SHR EAX,0x2
006d7364  394708                    CMP dword ptr [EDI + 0x8],EAX
006d7367  7712                      JA 0x006d737b
006d7369  51                        PUSH ECX
006d736a  8bcf                      MOV ECX,EDI
006d736c  e8df4ad7ff                CALL 0x0044be50
006d7371  8b4710                    MOV EAX,dword ptr [EDI + 0x10]
006d7374  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
006d7377  89442410                  MOV dword ptr [ESP + 0x10],EAX
006d737b  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
006d737e  8d048dffffffff            LEA EAX,[ECX*0x4 + 0xffffffff]
006d7385  49                        DEC ECX
006d7386  23c2                      AND EAX,EDX
006d7388  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
006d738c  03d0                      ADD EDX,EAX
006d738e  89470c                    MOV dword ptr [EDI + 0xc],EAX
006d7391  8bc2                      MOV EAX,EDX
006d7393  8954241c                  MOV dword ptr [ESP + 0x1c],EDX
006d7397  c1e802                    SHR EAX,0x2
006d739a  23c8                      AND ECX,EAX
006d739c  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
006d739f  894c2410                  MOV dword ptr [ESP + 0x10],ECX
006d73a3  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
006d73a7  751d                      JNZ 0x006d73c6
006d73a9  6a10                      PUSH 0x10
006d73ab  e810813300                CALL 0x00a0f4c0
006d73b0  8b542414                  MOV EDX,dword ptr [ESP + 0x14]
006d73b4  83c404                    ADD ESP,0x4
006d73b7  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
006d73ba  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
006d73bd  8bca                      MOV ECX,EDX
006d73bf  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
006d73c2  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
006d73c6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
006d73c9  83e203                    AND EDX,0x3
006d73cc  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
006d73d2  0f57e4                    XORPS XMM4,XMM4
006d73d5  0f57c9                    XORPS XMM1,XMM1
006d73d8  f30f110490                MOVSS dword ptr [EAX + EDX*0x4],XMM0
006d73dd  ff4710                    INC dword ptr [EDI + 0x10]
006d73e0  8b83580c0000              MOV EAX,dword ptr [EBX + 0xc58]
006d73e6  89442414                  MOV dword ptr [ESP + 0x14],EAX
006d73ea  85c0                      TEST EAX,EAX
006d73ec  7439                      JZ 0x006d7427
006d73ee  8b470c                    MOV EAX,dword ptr [EDI + 0xc]
006d73f1  33f6                      XOR ESI,ESI
006d73f3  8b5c2414                  MOV EBX,dword ptr [ESP + 0x14]
006d73f7  8d1430                    LEA EDX,[EAX + ESI*0x1]
006d73fa  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
006d73fd  48                        DEC EAX
006d73fe  8bca                      MOV ECX,EDX
006d7400  c1e902                    SHR ECX,0x2
006d7403  83e203                    AND EDX,0x3
006d7406  23c8                      AND ECX,EAX
006d7408  46                        INC ESI
006d7409  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
006d740c  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
006d740f  f30f580c90                ADDSS XMM1,dword ptr [EAX + EDX*0x4]
006d7414  8b470c                    MOV EAX,dword ptr [EDI + 0xc]
006d7417  3bf3                      CMP ESI,EBX
006d7419  72dc                      JC 0x006d73f7
006d741b  8b5c240c                  MOV EBX,dword ptr [ESP + 0xc]
006d741f  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
006d7423  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
006d7427  f30f109e84030000          MOVSS XMM3,dword ptr [ESI + 0x384]
006d742f  f30f5e9b400c0000          DIVSS XMM3,dword ptr [EBX + 0xc40]
006d7437  660f6ec0                  MOVD XMM0,EAX
006d743b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006d743f  c1e81f                    SHR EAX,0x1f
006d7442  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006d744a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006d7453  660f5ac0                  CVTPD2PS XMM0,XMM0
006d7457  f30f5ec8                  DIVSS XMM1,XMM0
006d745b  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
006d7463  0f2fcb                    COMISS XMM1,XMM3
006d7466  7623                      JBE 0x006d748b
006d7468  f30f5ed9                  DIVSS XMM3,XMM1
006d746c  f30f10150ca1ba00          MOVSS XMM2,dword ptr [0x00baa10c]
006d7474  0f28c3                    MOVAPS XMM0,XMM3
006d7477  f30f59057ca1ba00          MULSS XMM0,dword ptr [0x00baa17c]
006d747f  f30f5cd0                  SUBSS XMM2,XMM0
006d7483  f30f5fd4                  MAXSS XMM2,XMM4
006d7487  f30f58d3                  ADDSS XMM2,XMM3
006d748b  33c9                      XOR ECX,ECX
006d748d  c7461400000000            MOV dword ptr [ESI + 0x14],0x0
006d7494  8b7e08                    MOV EDI,dword ptr [ESI + 0x8]
006d7497  b893244992                MOV EAX,0x92492493
006d749c  894c2410                  MOV dword ptr [ESP + 0x10],ECX
006d74a0  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
006d74a3  2bcf                      SUB ECX,EDI
006d74a5  f7e9                      IMUL ECX
006d74a7  03d1                      ADD EDX,ECX
006d74a9  c1fa05                    SAR EDX,0x5
006d74ac  8bc2                      MOV EAX,EDX
006d74ae  c1e81f                    SHR EAX,0x1f
006d74b1  03c2                      ADD EAX,EDX
006d74b3  7459                      JZ 0x006d750e
006d74b5  33db                      XOR EBX,EBX
006d74b7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
006d74c0  8b443b08                  MOV EAX,dword ptr [EBX + EDI*0x1 + 0x8]
006d74c4  f30f10043b                MOVSS XMM0,dword ptr [EBX + EDI*0x1]
006d74c9  2500200040                AND EAX,0x40002000
006d74ce  83c800                    OR EAX,0x0
006d74d1  7509                      JNZ 0x006d74dc
006d74d3  f30f59c2                  MULSS XMM0,XMM2
006d74d7  f30f11043b                MOVSS dword ptr [EBX + EDI*0x1],XMM0
006d74dc  f30f584614                ADDSS XMM0,dword ptr [ESI + 0x14]
006d74e1  ff442410                  INC dword ptr [ESP + 0x10]
006d74e5  b893244992                MOV EAX,0x92492493
006d74ea  83c338                    ADD EBX,0x38
006d74ed  f30f114614                MOVSS dword ptr [ESI + 0x14],XMM0
006d74f2  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
006d74f5  8b7e08                    MOV EDI,dword ptr [ESI + 0x8]
006d74f8  2bcf                      SUB ECX,EDI
006d74fa  f7e9                      IMUL ECX
006d74fc  03d1                      ADD EDX,ECX
006d74fe  c1fa05                    SAR EDX,0x5
006d7501  8bc2                      MOV EAX,EDX
006d7503  c1e81f                    SHR EAX,0x1f
006d7506  03c2                      ADD EAX,EDX
006d7508  39442410                  CMP dword ptr [ESP + 0x10],EAX
006d750c  72b2                      JC 0x006d74c0
006d750e  5f                        POP EDI
006d750f  5e                        POP ESI
006d7510  5b                        POP EBX
006d7511  8be5                      MOV ESP,EBP
006d7513  5d                        POP EBP
006d7514  c3                        RET
