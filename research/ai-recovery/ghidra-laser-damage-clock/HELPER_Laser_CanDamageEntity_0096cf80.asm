; J460 NPC AI 0x0096cf80 HELPER_Laser_CanDamageEntity
; types=7
; identities=7.*
; entry=0096cf80
0096cf80  55                        PUSH EBP
0096cf81  8bec                      MOV EBP,ESP
0096cf83  83ec08                    SUB ESP,0x8
0096cf86  53                        PUSH EBX
0096cf87  56                        PUSH ESI
0096cf88  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
0096cf8b  8bd9                      MOV EBX,ECX
0096cf8d  57                        PUSH EDI
0096cf8e  8b7e28                    MOV EDI,dword ptr [ESI + 0x28]
0096cf91  83ff11                    CMP EDI,0x11
0096cf94  0f845f010000              JZ 0x0096d0f9
0096cf9a  8b93bc030000              MOV EDX,dword ptr [EBX + 0x3bc]
0096cfa0  85d2                      TEST EDX,EDX
0096cfa2  741c                      JZ 0x0096cfc0
0096cfa4  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
0096cfaa  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
0096cfad  2500010000                AND EAX,0x100
0096cfb2  83c800                    OR EAX,0x0
0096cfb5  894df8                    MOV dword ptr [EBP + -0x8],ECX
0096cfb8  740b                      JZ 0x0096cfc5
0096cfba  c6450b01                  MOV byte ptr [EBP + 0xb],0x1
0096cfbe  eb09                      JMP 0x0096cfc9
0096cfc0  33c9                      XOR ECX,ECX
0096cfc2  894df8                    MOV dword ptr [EBP + -0x8],ECX
0096cfc5  c6450b00                  MOV byte ptr [EBP + 0xb],0x0
0096cfc9  83ff03                    CMP EDI,0x3
0096cfcc  752d                      JNZ 0x0096cffb
0096cfce  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
0096cfd1  83f83e                    CMP EAX,0x3e
0096cfd4  7421                      JZ 0x0096cff7
0096cfd6  83f843                    CMP EAX,0x43
0096cfd9  741c                      JZ 0x0096cff7
0096cfdb  3dd3000000                CMP EAX,0xd3
0096cfe0  7415                      JZ 0x0096cff7
0096cfe2  83f864                    CMP EAX,0x64
0096cfe5  7410                      JZ 0x0096cff7
0096cfe7  3dce000000                CMP EAX,0xce
0096cfec  750d                      JNZ 0x0096cffb
0096cfee  817e30ab010000            CMP dword ptr [ESI + 0x30],0x1ab
0096cff5  7504                      JNZ 0x0096cffb
0096cff7  b001                      MOV AL,0x1
0096cff9  eb02                      JMP 0x0096cffd
0096cffb  32c0                      XOR AL,AL
0096cffd  8845ff                    MOV byte ptr [EBP + -0x1],AL
0096d000  3bf2                      CMP ESI,EDX
0096d002  741e                      JZ 0x0096d022
0096d004  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0096d00b  7515                      JNZ 0x0096d022
0096d00d  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
0096d014  740c                      JZ 0x0096d022
0096d016  0f57c0                    XORPS XMM0,XMM0
0096d019  0f2f8684030000            COMISS XMM0,dword ptr [ESI + 0x384]
0096d020  7208                      JC 0x0096d02a
0096d022  84c0                      TEST AL,AL
0096d024  0f84cf000000              JZ 0x0096d0f9
0096d02a  83f901                    CMP ECX,0x1
0096d02d  750e                      JNZ 0x0096d03d
0096d02f  a17816c700                MOV EAX,[0x00c71678]
0096d034  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0096d03b  7d0e                      JGE 0x0096d04b
0096d03d  3bcf                      CMP ECX,EDI
0096d03f  750a                      JNZ 0x0096d04b
0096d041  807d0b00                  CMP byte ptr [EBP + 0xb],0x0
0096d045  0f84ae000000              JZ 0x0096d0f9
0096d04b  8b832c050000              MOV EAX,dword ptr [EBX + 0x52c]
0096d051  85c0                      TEST EAX,EAX
0096d053  7418                      JZ 0x0096d06d
0096d055  8b882c050000              MOV ECX,dword ptr [EAX + 0x52c]
0096d05b  85c9                      TEST ECX,ECX
0096d05d  7407                      JZ 0x0096d066
0096d05f  e80cfeffff                CALL 0x0096ce70
0096d064  eb0d                      JMP 0x0096d073
0096d066  0520050000                ADD EAX,0x520
0096d06b  eb06                      JMP 0x0096d073
0096d06d  8d8320050000              LEA EAX,[EBX + 0x520]
0096d073  56                        PUSH ESI
0096d074  8bc8                      MOV ECX,EAX
0096d076  e8c545acff                CALL 0x00431640
0096d07b  84c0                      TEST AL,AL
0096d07d  757a                      JNZ 0x0096d0f9
0096d07f  8bcb                      MOV ECX,EBX
0096d081  e8bafeffff                CALL 0x0096cf40
0096d086  84c0                      TEST AL,AL
0096d088  7410                      JZ 0x0096d09a
0096d08a  837df803                  CMP dword ptr [EBP + -0x8],0x3
0096d08e  7506                      JNZ 0x0096d096
0096d090  807d0b00                  CMP byte ptr [EBP + 0xb],0x0
0096d094  7504                      JNZ 0x0096d09a
0096d096  b301                      MOV BL,0x1
0096d098  eb02                      JMP 0x0096d09c
0096d09a  32db                      XOR BL,BL
0096d09c  8bce                      MOV ECX,ESI
0096d09e  e88df4d3ff                CALL 0x006ac530
0096d0a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096d0a9  8ad0                      MOV DL,AL
0096d0ab  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
0096d0b2  7c0c                      JL 0x0096d0c0
0096d0b4  84d2                      TEST DL,DL
0096d0b6  7506                      JNZ 0x0096d0be
0096d0b8  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0096d0bc  7502                      JNZ 0x0096d0c0
0096d0be  b201                      MOV DL,0x1
0096d0c0  84db                      TEST BL,BL
0096d0c2  7440                      JZ 0x0096d104
0096d0c4  84d2                      TEST DL,DL
0096d0c6  7412                      JZ 0x0096d0da
0096d0c8  6a00                      PUSH 0x0
0096d0ca  6800000020                PUSH 0x20000000
0096d0cf  8bce                      MOV ECX,ESI
0096d0d1  e85aa3aaff                CALL 0x00417430
0096d0d6  84c0                      TEST AL,AL
0096d0d8  7439                      JZ 0x0096d113
0096d0da  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
0096d0e1  7416                      JZ 0x0096d0f9
0096d0e3  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0096d0e6  83f821                    CMP EAX,0x21
0096d0e9  7428                      JZ 0x0096d113
0096d0eb  3d24010000                CMP EAX,0x124
0096d0f0  7421                      JZ 0x0096d113
0096d0f2  3df5000000                CMP EAX,0xf5
0096d0f7  741a                      JZ 0x0096d113
0096d0f9  32c0                      XOR AL,AL
0096d0fb  5f                        POP EDI
0096d0fc  5e                        POP ESI
0096d0fd  5b                        POP EBX
0096d0fe  8be5                      MOV ESP,EBP
0096d100  5d                        POP EBP
0096d101  c20400                    RET 0x4
0096d104  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0096d108  7409                      JZ 0x0096d113
0096d10a  84c0                      TEST AL,AL
0096d10c  7505                      JNZ 0x0096d113
0096d10e  3845ff                    CMP byte ptr [EBP + -0x1],AL
0096d111  74e6                      JZ 0x0096d0f9
0096d113  5f                        POP EDI
0096d114  5e                        POP ESI
0096d115  b001                      MOV AL,0x1
0096d117  5b                        POP EBX
0096d118  8be5                      MOV ESP,EBP
0096d11a  5d                        POP EBP
0096d11b  c20400                    RET 0x4
