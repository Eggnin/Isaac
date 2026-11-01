; J460 NPC AI 0x004f8df0 AI_004f8df0
; types=809
; identities=809.0.0
; entry=004f8df0
004f8df0  55                        PUSH EBP
004f8df1  8bec                      MOV EBP,ESP
004f8df3  83e4f8                    AND ESP,0xfffffff8
004f8df6  81ecc4000000              SUB ESP,0xc4
004f8dfc  a1b493bf00                MOV EAX,[0x00bf93b4]
004f8e01  33c4                      XOR EAX,ESP
004f8e03  898424c0000000            MOV dword ptr [ESP + 0xc0],EAX
004f8e0a  53                        PUSH EBX
004f8e0b  8bd9                      MOV EBX,ECX
004f8e0d  56                        PUSH ESI
004f8e0e  57                        PUSH EDI
004f8e0f  895c2424                  MOV dword ptr [ESP + 0x24],EBX
004f8e13  83bb740b000001            CMP dword ptr [EBX + 0xb74],0x1
004f8e1a  8bbbd4030000              MOV EDI,dword ptr [EBX + 0x3d4]
004f8e20  897c2440                  MOV dword ptr [ESP + 0x40],EDI
004f8e24  754f                      JNZ 0x004f8e75
004f8e26  85ff                      TEST EDI,EDI
004f8e28  0f85db0a0000              JNZ 0x004f9909
004f8e2e  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
004f8e35  0f85ce0a0000              JNZ 0x004f9909
004f8e3b  8b8334040000              MOV EAX,dword ptr [EBX + 0x434]
004f8e41  85c0                      TEST EAX,EAX
004f8e43  0f88c00a0000              JS 0x004f9909
004f8e49  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f8e4f  689f0f0000                PUSH 0xf9f
004f8e54  50                        PUSH EAX
004f8e55  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004f8e5b  e880d7f5ff                CALL 0x004565e0
004f8e60  5f                        POP EDI
004f8e61  5e                        POP ESI
004f8e62  5b                        POP EBX
004f8e63  8b8c24c0000000            MOV ECX,dword ptr [ESP + 0xc0]
004f8e6a  33cc                      XOR ECX,ESP
004f8e6c  e8ba625f00                CALL 0x00aef12b
004f8e71  8be5                      MOV ESP,EBP
004f8e73  5d                        POP EBP
004f8e74  c3                        RET
004f8e75  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f8e7b  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
004f8e81  89742450                  MOV dword ptr [ESP + 0x50],ESI
004f8e85  e846612500                CALL 0x0074efd0
004f8e8a  84c0                      TEST AL,AL
004f8e8c  741f                      JZ 0x004f8ead
004f8e8e  a17816c700                MOV EAX,[0x00c71678]
004f8e93  83b80c83010001            CMP dword ptr [EAX + 0x1830c],0x1
004f8e9a  7511                      JNZ 0x004f8ead
004f8e9c  f7809c83010000004000      TEST dword ptr [EAX + 0x1839c],0x400000
004f8ea6  c644241301                MOV byte ptr [ESP + 0x13],0x1
004f8eab  7405                      JZ 0x004f8eb2
004f8ead  c644241300                MOV byte ptr [ESP + 0x13],0x0
004f8eb2  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
004f8eb8  85c0                      TEST EAX,EAX
004f8eba  0f8412080000              JZ 0x004f96d2
004f8ec0  83f803                    CMP EAX,0x3
004f8ec3  0f843d010000              JZ 0x004f9006
004f8ec9  83f808                    CMP EAX,0x8
004f8ecc  0f85a8010000              JNZ 0x004f907a
004f8ed2  6a00                      PUSH 0x0
004f8ed4  68dcd2b100                PUSH 0xb1d2dc
004f8ed9  8d4b48                    LEA ECX,[EBX + 0x48]
004f8edc  e89f14f1ff                CALL 0x0040a380
004f8ee1  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
004f8ee5  0f840f010000              JZ 0x004f8ffa
004f8eeb  68dcd2b100                PUSH 0xb1d2dc
004f8ef0  8d4b78                    LEA ECX,[EBX + 0x78]
004f8ef3  e8d81ef1ff                CALL 0x0040add0
004f8ef8  84c0                      TEST AL,AL
004f8efa  0f84e7000000              JZ 0x004f8fe7
004f8f00  51                        PUSH ECX
004f8f01  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f8f08  6a00                      PUSH 0x0
004f8f0a  6a02                      PUSH 0x2
004f8f0c  51                        PUSH ECX
004f8f0d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f8f14  8bcb                      MOV ECX,EBX
004f8f16  6806010000                PUSH 0x106
004f8f1b  e880dc1d00                CALL 0x006d6ba0
004f8f20  e83b601f00                CALL 0x006eef60
004f8f25  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
004f8f2d  0f57c9                    XORPS XMM1,XMM1
004f8f30  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f8f36  f30f58c1                  ADDSS XMM0,XMM1
004f8f3a  6a00                      PUSH 0x0
004f8f3c  50                        PUSH EAX
004f8f3d  6a00                      PUSH 0x0
004f8f3f  53                        PUSH EBX
004f8f40  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
004f8f46  8d44246c                  LEA EAX,[ESP + 0x6c]
004f8f4a  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
004f8f52  f30f5805a4a7ba00          ADDSS XMM0,dword ptr [0x00baa7a4]
004f8f5a  50                        PUSH EAX
004f8f5b  8d442478                  LEA EAX,[ESP + 0x78]
004f8f5f  c744247000000000          MOV dword ptr [ESP + 0x70],0x0
004f8f67  50                        PUSH EAX
004f8f68  6a29                      PUSH 0x29
004f8f6a  6a05                      PUSH 0x5
004f8f6c  c78424800000000000a03f    MOV dword ptr [ESP + 0x80],0x3fa00000
004f8f77  f30f11842488000000        MOVSS dword ptr [ESP + 0x88],XMM0
004f8f80  e88b542000                CALL 0x006fe410
004f8f85  8b8bc0030000              MOV ECX,dword ptr [EBX + 0x3c0]
004f8f8b  8dbbc0030000              LEA EDI,[EBX + 0x3c0]
004f8f91  8bf0                      MOV ESI,EAX
004f8f93  85c9                      TEST ECX,ECX
004f8f95  7414                      JZ 0x004f8fab
004f8f97  8d442458                  LEA EAX,[ESP + 0x58]
004f8f9b  897c2458                  MOV dword ptr [ESP + 0x58],EDI
004f8f9f  50                        PUSH EAX
004f8fa0  81c1cc030000              ADD ECX,0x3cc
004f8fa6  e86562fdff                CALL 0x004cf210
004f8fab  8937                      MOV dword ptr [EDI],ESI
004f8fad  85f6                      TEST ESI,ESI
004f8faf  7408                      JZ 0x004f8fb9
004f8fb1  57                        PUSH EDI
004f8fb2  8bce                      MOV ECX,ESI
004f8fb4  e8374dfdff                CALL 0x004cdcf0
004f8fb9  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004f8fbf  81c6bc030000              ADD ESI,0x3bc
004f8fc5  85c9                      TEST ECX,ECX
004f8fc7  7414                      JZ 0x004f8fdd
004f8fc9  8d44244c                  LEA EAX,[ESP + 0x4c]
004f8fcd  8974244c                  MOV dword ptr [ESP + 0x4c],ESI
004f8fd1  50                        PUSH EAX
004f8fd2  81c1cc030000              ADD ECX,0x3cc
004f8fd8  e83362fdff                CALL 0x004cf210
004f8fdd  56                        PUSH ESI
004f8fde  8bcb                      MOV ECX,EBX
004f8fe0  891e                      MOV dword ptr [ESI],EBX
004f8fe2  e8094dfdff                CALL 0x004cdcf0
004f8fe7  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
004f8feb  740d                      JZ 0x004f8ffa
004f8fed  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
004f8ff4  0f8580000000              JNZ 0x004f907a
004f8ffa  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
004f9004  eb74                      JMP 0x004f907a
004f9006  6a00                      PUSH 0x0
004f9008  6854bcb100                PUSH 0xb1bc54
004f900d  8d4b48                    LEA ECX,[EBX + 0x48]
004f9010  e86b13f1ff                CALL 0x0040a380
004f9015  8b8310040000              MOV EAX,dword ptr [EBX + 0x410]
004f901b  85c0                      TEST EAX,EAX
004f901d  7e1e                      JLE 0x004f903d
004f901f  807c241300                CMP byte ptr [ESP + 0x13],0x0
004f9024  7517                      JNZ 0x004f903d
004f9026  83c0ff                    ADD EAX,-0x1
004f9029  898310040000              MOV dword ptr [EBX + 0x410],EAX
004f902f  7549                      JNZ 0x004f907a
004f9031  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
004f903b  eb3d                      JMP 0x004f907a
004f903d  8b8bc0030000              MOV ECX,dword ptr [EBX + 0x3c0]
004f9043  8db3c0030000              LEA ESI,[EBX + 0x3c0]
004f9049  85c9                      TEST ECX,ECX
004f904b  741d                      JZ 0x004f906a
004f904d  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
004f9054  7424                      JZ 0x004f907a
004f9056  8d44244c                  LEA EAX,[ESP + 0x4c]
004f905a  8974244c                  MOV dword ptr [ESP + 0x4c],ESI
004f905e  50                        PUSH EAX
004f905f  81c1cc030000              ADD ECX,0x3cc
004f9065  e8a661fdff                CALL 0x004cf210
004f906a  c70600000000              MOV dword ptr [ESI],0x0
004f9070  c783100400001e000000      MOV dword ptr [EBX + 0x410],0x1e
004f907a  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
004f9081  0f84fb050000              JZ 0x004f9682
004f9087  e8d45e1f00                CALL 0x006eef60
004f908c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f9092  89442454                  MOV dword ptr [ESP + 0x54],EAX
004f9096  8d442454                  LEA EAX,[ESP + 0x54]
004f909a  50                        PUSH EAX
004f909b  8d442418                  LEA EAX,[ESP + 0x18]
004f909f  894c243c                  MOV dword ptr [ESP + 0x3c],ECX
004f90a3  50                        PUSH EAX
004f90a4  6a00                      PUSH 0x0
004f90a6  6840b6c700                PUSH 0xc7b640
004f90ab  6840b6c700                PUSH 0xc7b640
004f90b0  8d44245c                  LEA EAX,[ESP + 0x5c]
004f90b4  c744242800000000          MOV dword ptr [ESP + 0x28],0x0
004f90bc  50                        PUSH EAX
004f90bd  8d44245c                  LEA EAX,[ESP + 0x5c]
004f90c1  c744246077000000          MOV dword ptr [ESP + 0x60],0x77
004f90c9  50                        PUSH EAX
004f90ca  c7442460e8030000          MOV dword ptr [ESP + 0x60],0x3e8
004f90d2  e809b63600                CALL 0x008646e0
004f90d7  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004f90dd  83be1466020002            CMP dword ptr [ESI + 0x26614],0x2
004f90e4  0f8c6a020000              JL 0x004f9354
004f90ea  8bb620660200              MOV ESI,dword ptr [ESI + 0x26620]
004f90f0  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
004f90f4  e8675e1f00                CALL 0x006eef60
004f90f9  837c244405                CMP dword ptr [ESP + 0x44],0x5
004f90fe  8bf8                      MOV EDI,EAX
004f9100  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004f9108  a174f6b100                MOV EAX,[0x00b1f674]
004f910d  660fd6442478              MOVQ qword ptr [ESP + 0x78],XMM0
004f9113  89442434                  MOV dword ptr [ESP + 0x34],EAX
004f9117  89842480000000            MOV dword ptr [ESP + 0x80],EAX
004f911e  0f8530020000              JNZ 0x004f9354
004f9124  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
004f9128  81f92c010000              CMP ECX,0x12c
004f912e  0f87df010000              JA 0x004f9313
004f9134  0f8437010000              JZ 0x004f9271
004f913a  83f946                    CMP ECX,0x46
004f913d  0f8496000000              JZ 0x004f91d9
004f9143  83f964                    CMP ECX,0x64
004f9146  0f8508020000              JNZ 0x004f9354
004f914c  8b5c2414                  MOV EBX,dword ptr [ESP + 0x14]
004f9150  895c2418                  MOV dword ptr [ESP + 0x18],EBX
004f9154  83fb19                    CMP EBX,0x19
004f9157  7434                      JZ 0x004f918d
004f9159  8d44243c                  LEA EAX,[ESP + 0x3c]
004f915d  895c243c                  MOV dword ptr [ESP + 0x3c],EBX
004f9161  50                        PUSH EAX
004f9162  8d842488000000            LEA EAX,[ESP + 0x88]
004f9169  8d4e20                    LEA ECX,[ESI + 0x20]
004f916c  50                        PUSH EAX
004f916d  e82ef7f2ff                CALL 0x004288a0
004f9172  8b84248c000000            MOV EAX,dword ptr [ESP + 0x8c]
004f9179  80780d00                  CMP byte ptr [EAX + 0xd],0x0
004f917d  750a                      JNZ 0x004f9189
004f917f  3b5810                    CMP EBX,dword ptr [EAX + 0x10]
004f9182  7c05                      JL 0x004f9189
004f9184  3b4620                    CMP EAX,dword ptr [ESI + 0x20]
004f9187  7504                      JNZ 0x004f918d
004f9189  b001                      MOV AL,0x1
004f918b  eb02                      JMP 0x004f918f
004f918d  32c0                      XOR AL,AL
004f918f  85db                      TEST EBX,EBX
004f9191  7404                      JZ 0x004f9197
004f9193  84c0                      TEST AL,AL
004f9195  7416                      JZ 0x004f91ad
004f9197  8b06                      MOV EAX,dword ptr [ESI]
004f9199  8bce                      MOV ECX,ESI
004f919b  6a00                      PUSH 0x0
004f919d  ff9084000000              CALL dword ptr [EAX + 0x84]
004f91a3  8bd8                      MOV EBX,EAX
004f91a5  895c2418                  MOV dword ptr [ESP + 0x18],EBX
004f91a9  895c2414                  MOV dword ptr [ESP + 0x14],EBX
004f91ad  8b5c2424                  MOV EBX,dword ptr [ESP + 0x24]
004f91b1  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
004f91b5  6a00                      PUSH 0x0
004f91b7  ff742448                  PUSH dword ptr [ESP + 0x48]
004f91bb  8b8980650200              MOV ECX,dword ptr [ECX + 0x26580]
004f91c1  e8ca6e1f00                CALL 0x006f0090
004f91c6  8bc8                      MOV ECX,EAX
004f91c8  894c2434                  MOV dword ptr [ESP + 0x34],ECX
004f91cc  85c9                      TEST ECX,ECX
004f91ce  0f858d010000              JNZ 0x004f9361
004f91d4  e944040000                JMP 0x004f961d
004f91d9  8b5c2414                  MOV EBX,dword ptr [ESP + 0x14]
004f91dd  8bc3                      MOV EAX,EBX
004f91df  c1e80b                    SHR EAX,0xb
004f91e2  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
004f91e6  895c2418                  MOV dword ptr [ESP + 0x18],EBX
004f91ea  85db                      TEST EBX,EBX
004f91ec  7428                      JZ 0x004f9216
004f91ee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f91f4  8b06                      MOV EAX,dword ptr [ESI]
004f91f6  6a00                      PUSH 0x0
004f91f8  53                        PUSH EBX
004f91f9  8d8940a70100              LEA ECX,[ECX + 0x1a740]
004f91ff  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
004f9202  e879b82300                CALL 0x00734a80
004f9207  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
004f920b  50                        PUSH EAX
004f920c  ffd6                      CALL ESI
004f920e  84c0                      TEST AL,AL
004f9210  749b                      JZ 0x004f91ad
004f9212  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
004f9216  8b1d7816c700              MOV EBX,dword ptr [0x00c71678]
004f921c  85ff                      TEST EDI,EDI
004f921e  7510                      JNZ 0x004f9230
004f9220  6854bfb600                PUSH 0xb6bf54
004f9225  6a10                      PUSH 0x10
004f9227  e894805100                CALL 0x00a112c0
004f922c  83c408                    ADD ESP,0x8
004f922f  cc                        INT3
004f9230  8b4c2478                  MOV ECX,dword ptr [ESP + 0x78]
004f9234  8bd7                      MOV EDX,EDI
004f9236  d3ea                      SHR EDX,CL
004f9238  8b4c247c                  MOV ECX,dword ptr [ESP + 0x7c]
004f923c  33d7                      XOR EDX,EDI
004f923e  8bc2                      MOV EAX,EDX
004f9240  d3e0                      SHL EAX,CL
004f9242  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
004f9246  33c2                      XOR EAX,EDX
004f9248  8bf8                      MOV EDI,EAX
004f924a  d3ef                      SHR EDI,CL
004f924c  8d8b40a70100              LEA ECX,[EBX + 0x1a740]
004f9252  33f8                      XOR EDI,EAX
004f9254  57                        PUSH EDI
004f9255  e8a6b62300                CALL 0x00734900
004f925a  8bd8                      MOV EBX,EAX
004f925c  8b44243c                  MOV EAX,dword ptr [ESP + 0x3c]
004f9260  83e001                    AND EAX,0x1
004f9263  c1e00b                    SHL EAX,0xb
004f9266  0bd8                      OR EBX,EAX
004f9268  895c2414                  MOV dword ptr [ESP + 0x14],EBX
004f926c  e975ffffff                JMP 0x004f91e6
004f9271  8b5c2414                  MOV EBX,dword ptr [ESP + 0x14]
004f9275  895c2418                  MOV dword ptr [ESP + 0x18],EBX
004f9279  85db                      TEST EBX,EBX
004f927b  7412                      JZ 0x004f928f
004f927d  8b06                      MOV EAX,dword ptr [ESI]
004f927f  8bce                      MOV ECX,ESI
004f9281  53                        PUSH EBX
004f9282  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004f9285  ffd0                      CALL EAX
004f9287  84c0                      TEST AL,AL
004f9289  0f841effffff              JZ 0x004f91ad
004f928f  85ff                      TEST EDI,EDI
004f9291  7510                      JNZ 0x004f92a3
004f9293  6854bfb600                PUSH 0xb6bf54
004f9298  6a10                      PUSH 0x10
004f929a  e821805100                CALL 0x00a112c0
004f929f  83c408                    ADD ESP,0x8
004f92a2  cc                        INT3
004f92a3  8b4c2478                  MOV ECX,dword ptr [ESP + 0x78]
004f92a7  8bc7                      MOV EAX,EDI
004f92a9  d3e8                      SHR EAX,CL
004f92ab  8b4c247c                  MOV ECX,dword ptr [ESP + 0x7c]
004f92af  33c7                      XOR EAX,EDI
004f92b1  8bd0                      MOV EDX,EAX
004f92b3  d3e2                      SHL EDX,CL
004f92b5  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
004f92b9  33d0                      XOR EDX,EAX
004f92bb  6a01                      PUSH 0x1
004f92bd  6a0a                      PUSH 0xa
004f92bf  8bfa                      MOV EDI,EDX
004f92c1  6a0a                      PUSH 0xa
004f92c3  d3ef                      SHR EDI,CL
004f92c5  33fa                      XOR EDI,EDX
004f92c7  6a19                      PUSH 0x19
004f92c9  57                        PUSH EDI
004f92ca  e8b1ae2300                CALL 0x00734180
004f92cf  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004f92d7  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
004f92dd  6a00                      PUSH 0x0
004f92df  6a01                      PUSH 0x1
004f92e1  6a01                      PUSH 0x1
004f92e3  50                        PUSH EAX
004f92e4  8d8424cc000000            LEA EAX,[ESP + 0xcc]
004f92eb  89bc24cc000000            MOV dword ptr [ESP + 0xcc],EDI
004f92f2  50                        PUSH EAX
004f92f3  660fd68424d4000000        MOVQ qword ptr [ESP + 0xd4],XMM0
004f92fc  898c24dc000000            MOV dword ptr [ESP + 0xdc],ECX
004f9303  e838c03600                CALL 0x00865340
004f9308  8bd8                      MOV EBX,EAX
004f930a  895c2414                  MOV dword ptr [ESP + 0x14],EBX
004f930e  e962ffffff                JMP 0x004f9275
004f9313  81f95e010000              CMP ECX,0x15e
004f9319  7539                      JNZ 0x004f9354
004f931b  8b5c2414                  MOV EBX,dword ptr [ESP + 0x14]
004f931f  895c2418                  MOV dword ptr [ESP + 0x18],EBX
004f9323  85db                      TEST EBX,EBX
004f9325  7412                      JZ 0x004f9339
004f9327  8b06                      MOV EAX,dword ptr [ESI]
004f9329  8bce                      MOV ECX,ESI
004f932b  53                        PUSH EBX
004f932c  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
004f932f  ffd0                      CALL EAX
004f9331  84c0                      TEST AL,AL
004f9333  0f8474feffff              JZ 0x004f91ad
004f9339  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f933f  6a00                      PUSH 0x0
004f9341  8d8940a70100              LEA ECX,[ECX + 0x1a740]
004f9347  e854a92300                CALL 0x00733ca0
004f934c  8bd8                      MOV EBX,EAX
004f934e  895c2414                  MOV dword ptr [ESP + 0x14],EBX
004f9352  ebcb                      JMP 0x004f931f
004f9354  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
004f9358  89442418                  MOV dword ptr [ESP + 0x18],EAX
004f935c  e950feffff                JMP 0x004f91b1
004f9361  e82af15600                CALL 0x00a68490
004f9366  8bda                      MOV EBX,EDX
004f9368  8bc8                      MOV ECX,EAX
004f936a  badb34b6d7                MOV EDX,0xd7b634db
004f936f  895c241c                  MOV dword ptr [ESP + 0x1c],EBX
004f9373  f7e2                      MUL EDX
004f9375  bf82de1b43                MOV EDI,0x431bde82
004f937a  89442428                  MOV dword ptr [ESP + 0x28],EAX
004f937e  8bf2                      MOV ESI,EDX
004f9380  8bc1                      MOV EAX,ECX
004f9382  b9db34b6d7                MOV ECX,0xd7b634db
004f9387  f7e7                      MUL EDI
004f9389  8bf8                      MOV EDI,EAX
004f938b  89542420                  MOV dword ptr [ESP + 0x20],EDX
004f938f  8bc3                      MOV EAX,EBX
004f9391  f7e1                      MUL ECX
004f9393  8bda                      MOV EBX,EDX
004f9395  8bc8                      MOV ECX,EAX
004f9397  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
004f939b  ba82de1b43                MOV EDX,0x431bde82
004f93a0  f7e2                      MUL EDX
004f93a2  03ce                      ADD ECX,ESI
004f93a4  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
004f93a8  83d300                    ADC EBX,0x0
004f93ab  03f9                      ADD EDI,ECX
004f93ad  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
004f93b1  83d100                    ADC ECX,0x0
004f93b4  897c2428                  MOV dword ptr [ESP + 0x28],EDI
004f93b8  33c0                      XOR EAX,EAX
004f93ba  03d9                      ADD EBX,ECX
004f93bc  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
004f93c0  13c0                      ADC EAX,EAX
004f93c2  03cb                      ADD ECX,EBX
004f93c4  8b5c2434                  MOV EBX,dword ptr [ESP + 0x34]
004f93c8  13d0                      ADC EDX,EAX
004f93ca  8db3c8030000              LEA ESI,[EBX + 0x3c8]
004f93d0  0facd112                  SHRD ECX,EDX,0x12
004f93d4  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
004f93d8  8b0e                      MOV ECX,dword ptr [ESI]
004f93da  c1ea12                    SHR EDX,0x12
004f93dd  89542450                  MOV dword ptr [ESP + 0x50],EDX
004f93e1  c7433400000000            MOV dword ptr [EBX + 0x34],0x0
004f93e8  c7433800000000            MOV dword ptr [EBX + 0x38],0x0
004f93ef  85c9                      TEST ECX,ECX
004f93f1  7414                      JZ 0x004f9407
004f93f3  8d442420                  LEA EAX,[ESP + 0x20]
004f93f7  89742420                  MOV dword ptr [ESP + 0x20],ESI
004f93fb  50                        PUSH EAX
004f93fc  81c1cc030000              ADD ECX,0x3cc
004f9402  e8095efdff                CALL 0x004cf210
004f9407  ff742454                  PUSH dword ptr [ESP + 0x54]
004f940b  8b03                      MOV EAX,dword ptr [EBX]
004f940d  ff74241c                  PUSH dword ptr [ESP + 0x1c]
004f9411  8b4c244c                  MOV ECX,dword ptr [ESP + 0x4c]
004f9415  ff742450                  PUSH dword ptr [ESP + 0x50]
004f9419  c70600000000              MOV dword ptr [ESI],0x0
004f941f  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004f9427  f30f11833c030000          MOVSS dword ptr [EBX + 0x33c],XMM0
004f942f  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f9437  f30f118340030000          MOVSS dword ptr [EBX + 0x340],XMM0
004f943f  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004f9447  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
004f944f  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f9457  51                        PUSH ECX
004f9458  8bcb                      MOV ECX,EBX
004f945a  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
004f9462  ff5004                    CALL dword ptr [EAX + 0x4]
004f9465  8b742438                  MOV ESI,dword ptr [ESP + 0x38]
004f9469  53                        PUSH EBX
004f946a  8b9600830100              MOV EDX,dword ptr [ESI + 0x18300]
004f9470  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
004f9476  8d4101                    LEA EAX,[ECX + 0x1]
004f9479  898214120000              MOV dword ptr [EDX + 0x1214],EAX
004f947f  894b20                    MOV dword ptr [EBX + 0x20],ECX
004f9482  8d8a18120000              LEA ECX,[EDX + 0x1218]
004f9488  e873f0f1ff                CALL 0x00418500
004f948d  53                        PUSH EBX
004f948e  e85de42000                CALL 0x007078f0
004f9493  84c0                      TEST AL,AL
004f9495  7407                      JZ 0x004f949e
004f9497  51                        PUSH ECX
004f9498  53                        PUSH EBX
004f9499  e822e52000                CALL 0x007079c0
004f949e  80bb7201000000            CMP byte ptr [EBX + 0x172],0x0
004f94a5  0f84ea000000              JZ 0x004f9595
004f94ab  8b8658770600              MOV EAX,dword ptr [ESI + 0x67758]
004f94b1  3b865c770600              CMP EAX,dword ptr [ESI + 0x6775c]
004f94b7  0f84d8000000              JZ 0x004f9595
004f94bd  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
004f94c0  8b4b28                    MOV ECX,dword ptr [EBX + 0x28]
004f94c3  89442470                  MOV dword ptr [ESP + 0x70],EAX
004f94c7  8d44246c                  LEA EAX,[ESP + 0x6c]
004f94cb  50                        PUSH EAX
004f94cc  8d44243c                  LEA EAX,[ESP + 0x3c]
004f94d0  894c2470                  MOV dword ptr [ESP + 0x70],ECX
004f94d4  50                        PUSH EAX
004f94d5  8d8e80770600              LEA ECX,[ESI + 0x67780]
004f94db  e8c08f4e00                CALL 0x009e24a0
004f94e0  8bbe80770600              MOV EDI,dword ptr [ESI + 0x67780]
004f94e6  397c2438                  CMP dword ptr [ESP + 0x38],EDI
004f94ea  752e                      JNZ 0x004f951a
004f94ec  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
004f94ef  8d8e80770600              LEA ECX,[ESI + 0x67780]
004f94f5  89442428                  MOV dword ptr [ESP + 0x28],EAX
004f94f9  8d442428                  LEA EAX,[ESP + 0x28]
004f94fd  50                        PUSH EAX
004f94fe  8d44241c                  LEA EAX,[ESP + 0x1c]
004f9502  c7442430ffffffff          MOV dword ptr [ESP + 0x30],0xffffffff
004f950a  50                        PUSH EAX
004f950b  e8908f4e00                CALL 0x009e24a0
004f9510  8b00                      MOV EAX,dword ptr [EAX]
004f9512  89442438                  MOV dword ptr [ESP + 0x38],EAX
004f9516  3bc7                      CMP EAX,EDI
004f9518  747b                      JZ 0x004f9595
004f951a  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004f9520  33ff                      XOR EDI,EDI
004f9522  81c6a8ba0100              ADD ESI,0x1baa8
004f9528  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004f952b  2b06                      SUB EAX,dword ptr [ESI]
004f952d  c1f802                    SAR EAX,0x2
004f9530  85c0                      TEST EAX,EAX
004f9532  7461                      JZ 0x004f9595
004f9534  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004f9537  8bc1                      MOV EAX,ECX
004f9539  2b06                      SUB EAX,dword ptr [ESI]
004f953b  c1f802                    SAR EAX,0x2
004f953e  85c0                      TEST EAX,EAX
004f9540  7512                      JNZ 0x004f9554
004f9542  68bce6b700                PUSH 0xb7e6bc
004f9547  6a10                      PUSH 0x10
004f9549  e8727d5100                CALL 0x00a112c0
004f954e  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004f9551  83c408                    ADD ESP,0x8
004f9554  8b06                      MOV EAX,dword ptr [ESI]
004f9556  2bc8                      SUB ECX,EAX
004f9558  c1f902                    SAR ECX,0x2
004f955b  3bf9                      CMP EDI,ECX
004f955d  7303                      JNC 0x004f9562
004f955f  8d04b8                    LEA EAX,[EAX + EDI*0x4]
004f9562  8b08                      MOV ECX,dword ptr [EAX]
004f9564  6840b6c700                PUSH 0xc7b640
004f9569  6840b6c700                PUSH 0xc7b640
004f956e  53                        PUSH EBX
004f956f  6a06                      PUSH 0x6
004f9571  81c1c81f0000              ADD ECX,0x1fc8
004f9577  e804714e00                CALL 0x009e0680
004f957c  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004f9582  47                        INC EDI
004f9583  81c6a8ba0100              ADD ESI,0x1baa8
004f9589  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004f958c  2b06                      SUB EAX,dword ptr [ESI]
004f958e  c1f802                    SAR EAX,0x2
004f9591  3bf8                      CMP EDI,EAX
004f9593  729f                      JC 0x004f9534
004f9595  e8f6ee5600                CALL 0x00a68490
004f959a  8bda                      MOV EBX,EDX
004f959c  8bc8                      MOV ECX,EAX
004f959e  badb34b6d7                MOV EDX,0xd7b634db
004f95a3  895c2420                  MOV dword ptr [ESP + 0x20],EBX
004f95a7  f7e2                      MUL EDX
004f95a9  bf82de1b43                MOV EDI,0x431bde82
004f95ae  89442428                  MOV dword ptr [ESP + 0x28],EAX
004f95b2  8bf2                      MOV ESI,EDX
004f95b4  8bc1                      MOV EAX,ECX
004f95b6  b9db34b6d7                MOV ECX,0xd7b634db
004f95bb  f7e7                      MUL EDI
004f95bd  8bf8                      MOV EDI,EAX
004f95bf  8954243c                  MOV dword ptr [ESP + 0x3c],EDX
004f95c3  8bc3                      MOV EAX,EBX
004f95c5  f7e1                      MUL ECX
004f95c7  8bda                      MOV EBX,EDX
004f95c9  8bc8                      MOV ECX,EAX
004f95cb  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
004f95cf  ba82de1b43                MOV EDX,0x431bde82
004f95d4  f7e2                      MUL EDX
004f95d6  03ce                      ADD ECX,ESI
004f95d8  89442420                  MOV dword ptr [ESP + 0x20],EAX
004f95dc  83d300                    ADC EBX,0x0
004f95df  03f9                      ADD EDI,ECX
004f95e1  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
004f95e5  83d100                    ADC ECX,0x0
004f95e8  897c2428                  MOV dword ptr [ESP + 0x28],EDI
004f95ec  33c0                      XOR EAX,EAX
004f95ee  03d9                      ADD EBX,ECX
004f95f0  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
004f95f4  13c0                      ADC EAX,EAX
004f95f6  03cb                      ADD ECX,EBX
004f95f8  8b5c2424                  MOV EBX,dword ptr [ESP + 0x24]
004f95fc  13d0                      ADC EDX,EAX
004f95fe  0facd112                  SHRD ECX,EDX,0x12
004f9602  c1ea12                    SHR EDX,0x12
004f9605  2b4c241c                  SUB ECX,dword ptr [ESP + 0x1c]
004f9609  1b542450                  SBB EDX,dword ptr [ESP + 0x50]
004f960d  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
004f9613  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
004f9617  111534b6c700              ADC dword ptr [0x00c7b634],EDX
004f961d  c78120040000c08c4f00      MOV dword ptr [ECX + 0x420],0x4f8cc0
004f9627  c7812404000001000000      MOV dword ptr [ECX + 0x424],0x1
004f9631  c781280400000a000000      MOV dword ptr [ECX + 0x428],0xa
004f963b  8b833c030000              MOV EAX,dword ptr [EBX + 0x33c]
004f9641  89813c030000              MOV dword ptr [ECX + 0x33c],EAX
004f9647  8b8340030000              MOV EAX,dword ptr [EBX + 0x340]
004f964d  898140030000              MOV dword ptr [ECX + 0x340],EAX
004f9653  8b01                      MOV EAX,dword ptr [ECX]
004f9655  ff500c                    CALL dword ptr [EAX + 0xc]
004f9658  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f965e  6aff                      PUSH -0x1
004f9660  ffb104830100              PUSH dword ptr [ECX + 0x18304]
004f9666  e855752400                CALL 0x00740bc0
004f966b  8d8880000000              LEA ECX,[EAX + 0x80]
004f9671  8d832c030000              LEA EAX,[EBX + 0x32c]
004f9677  50                        PUSH EAX
004f9678  8d44242c                  LEA EAX,[ESP + 0x2c]
004f967c  50                        PUSH EAX
004f967d  e83eaffeff                CALL 0x004e45c0
004f9682  837c244000                CMP dword ptr [ESP + 0x40],0x0
004f9687  0f857c020000              JNZ 0x004f9909
004f968d  f30f108b34030000          MOVSS XMM1,dword ptr [EBX + 0x334]
004f9695  f30f108338030000          MOVSS XMM0,dword ptr [EBX + 0x338]
004f969d  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
004f96a5  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
004f96ad  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
004f96b5  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
004f96bd  5f                        POP EDI
004f96be  5e                        POP ESI
004f96bf  5b                        POP EBX
004f96c0  8b8c24c0000000            MOV ECX,dword ptr [ESP + 0xc0]
004f96c7  33cc                      XOR ECX,ESP
004f96c9  e85d5a5f00                CALL 0x00aef12b
004f96ce  8be5                      MOV ESP,EBP
004f96d0  5d                        POP EBP
004f96d1  c3                        RET
004f96d2  818b6801000001000040      OR dword ptr [EBX + 0x168],0x40000001
004f96dc  818b6c01000008200000      OR dword ptr [EBX + 0x16c],0x2008
004f96e6  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004f96ee  c683b003000001            MOV byte ptr [EBX + 0x3b0],0x1
004f96f5  c783180f000001000000      MOV dword ptr [EBX + 0xf18],0x1
004f96ff  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
004f9709  85ff                      TEST EDI,EDI
004f970b  755f                      JNZ 0x004f976c
004f970d  8d833c030000              LEA EAX,[EBX + 0x33c]
004f9713  8bce                      MOV ECX,ESI
004f9715  50                        PUSH EAX
004f9716  e875953100                CALL 0x00812c90
004f971b  8d8b14040000              LEA ECX,[EBX + 0x414]
004f9721  8bf0                      MOV ESI,EAX
004f9723  e8c8d82e00                CALL 0x007e6ff0
004f9728  8bc6                      MOV EAX,ESI
004f972a  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004f9732  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
004f9736  99                        CDQ
004f9737  f77e0c                    IDIV dword ptr [ESI + 0xc]
004f973a  660f6eca                  MOVD XMM1,EDX
004f973e  660f6ec0                  MOVD XMM0,EAX
004f9742  0f5bc9                    CVTDQ2PS XMM1,XMM1
004f9745  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f9748  f30f59ca                  MULSS XMM1,XMM2
004f974c  f30f59c2                  MULSS XMM0,XMM2
004f9750  f30f58ca                  ADDSS XMM1,XMM2
004f9754  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004f975c  f30f118b34030000          MOVSS dword ptr [EBX + 0x334],XMM1
004f9764  f30f118338030000          MOVSS dword ptr [EBX + 0x338],XMM0
004f976c  8a442413                  MOV AL,byte ptr [ESP + 0x13]
004f9770  84c0                      TEST AL,AL
004f9772  7417                      JZ 0x004f978b
004f9774  8b836c010000              MOV EAX,dword ptr [EBX + 0x16c]
004f977a  83a368010000fb            AND dword ptr [EBX + 0x168],0xfffffffb
004f9781  89836c010000              MOV dword ptr [EBX + 0x16c],EAX
004f9787  8a442413                  MOV AL,byte ptr [ESP + 0x13]
004f978b  83bbc003000000            CMP dword ptr [EBX + 0x3c0],0x0
004f9792  8dbbc0030000              LEA EDI,[EBX + 0x3c0]
004f9798  0f850f010000              JNZ 0x004f98ad
004f979e  84c0                      TEST AL,AL
004f97a0  0f8507010000              JNZ 0x004f98ad
004f97a6  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
004f97ae  8d442428                  LEA EAX,[ESP + 0x28]
004f97b2  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004f97ba  50                        PUSH EAX
004f97bb  8bce                      MOV ECX,ESI
004f97bd  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
004f97c3  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
004f97cb  f30f58c2                  ADDSS XMM0,XMM2
004f97cf  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
004f97d5  e8b6943100                CALL 0x00812c90
004f97da  99                        CDQ
004f97db  f77e0c                    IDIV dword ptr [ESI + 0xc]
004f97de  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004f97e6  660f6ec2                  MOVD XMM0,EDX
004f97ea  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f97ed  f30f59c1                  MULSS XMM0,XMM1
004f97f1  f30f58c1                  ADDSS XMM0,XMM1
004f97f5  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
004f97fb  660f6ec0                  MOVD XMM0,EAX
004f97ff  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f9802  f30f59c1                  MULSS XMM0,XMM1
004f9806  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004f980e  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
004f9814  e847571f00                CALL 0x006eef60
004f9819  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f981f  6a00                      PUSH 0x0
004f9821  50                        PUSH EAX
004f9822  6a00                      PUSH 0x0
004f9824  53                        PUSH EBX
004f9825  6840b6c700                PUSH 0xc7b640
004f982a  8d44243c                  LEA EAX,[ESP + 0x3c]
004f982e  50                        PUSH EAX
004f982f  6a29                      PUSH 0x29
004f9831  6a05                      PUSH 0x5
004f9833  e8d84b2000                CALL 0x006fe410
004f9838  8b0f                      MOV ECX,dword ptr [EDI]
004f983a  8bf0                      MOV ESI,EAX
004f983c  85c9                      TEST ECX,ECX
004f983e  7414                      JZ 0x004f9854
004f9840  8d442440                  LEA EAX,[ESP + 0x40]
004f9844  897c2440                  MOV dword ptr [ESP + 0x40],EDI
004f9848  50                        PUSH EAX
004f9849  81c1cc030000              ADD ECX,0x3cc
004f984f  e8bc59fdff                CALL 0x004cf210
004f9854  8937                      MOV dword ptr [EDI],ESI
004f9856  85f6                      TEST ESI,ESI
004f9858  7408                      JZ 0x004f9862
004f985a  57                        PUSH EDI
004f985b  8bce                      MOV ECX,ESI
004f985d  e88e44fdff                CALL 0x004cdcf0
004f9862  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004f9868  8dbebc030000              LEA EDI,[ESI + 0x3bc]
004f986e  85c9                      TEST ECX,ECX
004f9870  7414                      JZ 0x004f9886
004f9872  8d442440                  LEA EAX,[ESP + 0x40]
004f9876  897c2440                  MOV dword ptr [ESP + 0x40],EDI
004f987a  50                        PUSH EAX
004f987b  81c1cc030000              ADD ECX,0x3cc
004f9881  e88a59fdff                CALL 0x004cf210
004f9886  57                        PUSH EDI
004f9887  8bcb                      MOV ECX,EBX
004f9889  891f                      MOV dword ptr [EDI],EBX
004f988b  e86044fdff                CALL 0x004cdcf0
004f9890  8b06                      MOV EAX,dword ptr [ESI]
004f9892  8bce                      MOV ECX,ESI
004f9894  ff500c                    CALL dword ptr [EAX + 0xc]
004f9897  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
004f989b  7410                      JZ 0x004f98ad
004f989d  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
004f98a0  8d4e78                    LEA ECX,[ESI + 0x78]
004f98a3  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
004f98a6  48                        DEC EAX
004f98a7  50                        PUSH EAX
004f98a8  e853f4f0ff                CALL 0x00408d00
004f98ad  8d8c2490000000            LEA ECX,[ESP + 0x90]
004f98b4  e8b7d8f0ff                CALL 0x00407170
004f98b9  8d8be4010000              LEA ECX,[EBX + 0x1e4]
004f98bf  3bc8                      CMP ECX,EAX
004f98c1  741e                      JZ 0x004f98e1
004f98c3  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
004f98c6  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004f98c9  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
004f98cd  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004f98d1  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
004f98d6  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004f98db  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
004f98de  894128                    MOV dword ptr [ECX + 0x28],EAX
004f98e1  c783f40100000000803f      MOV dword ptr [EBX + 0x1f4],0x3f800000
004f98eb  c783f80100000000803f      MOV dword ptr [EBX + 0x1f8],0x3f800000
004f98f5  c783fc0100000000803f      MOV dword ptr [EBX + 0x1fc],0x3f800000
004f98ff  c783000200000000803f      MOV dword ptr [EBX + 0x200],0x3f800000
004f9909  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
004f9910  5f                        POP EDI
004f9911  5e                        POP ESI
004f9912  5b                        POP EBX
004f9913  33cc                      XOR ECX,ESP
004f9915  e811585f00                CALL 0x00aef12b
004f991a  8be5                      MOV ESP,EBP
004f991c  5d                        POP EBP
004f991d  c3                        RET
