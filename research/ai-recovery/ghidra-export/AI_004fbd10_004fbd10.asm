; J460 NPC AI 0x004fbd10 AI_004fbd10
; types=820
; identities=820.0.0,820.1.0
; entry=004fbd10
004fbd10  53                        PUSH EBX
004fbd11  8bdc                      MOV EBX,ESP
004fbd13  83ec08                    SUB ESP,0x8
004fbd16  83e4f8                    AND ESP,0xfffffff8
004fbd19  83c404                    ADD ESP,0x4
004fbd1c  55                        PUSH EBP
004fbd1d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004fbd20  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004fbd24  8bec                      MOV EBP,ESP
004fbd26  6aff                      PUSH -0x1
004fbd28  685540af00                PUSH 0xaf4055
004fbd2d  64a100000000              MOV EAX,FS:[0x0]
004fbd33  50                        PUSH EAX
004fbd34  53                        PUSH EBX
004fbd35  81ec48010000              SUB ESP,0x148
004fbd3b  a1b493bf00                MOV EAX,[0x00bf93b4]
004fbd40  33c5                      XOR EAX,EBP
004fbd42  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004fbd45  56                        PUSH ESI
004fbd46  57                        PUSH EDI
004fbd47  50                        PUSH EAX
004fbd48  8d45f4                    LEA EAX,[EBP + -0xc]
004fbd4b  64a300000000              MOV FS:[0x0],EAX
004fbd51  8bf9                      MOV EDI,ECX
004fbd53  a17816c700                MOV EAX,[0x00c71678]
004fbd58  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004fbd5e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004fbd64  85c0                      TEST EAX,EAX
004fbd66  0f840c0d0000              JZ 0x004fca78
004fbd6c  83f804                    CMP EAX,0x4
004fbd6f  0f8402090000              JZ 0x004fc677
004fbd75  83f808                    CMP EAX,0x8
004fbd78  0f852c0e0000              JNZ 0x004fcbaa
004fbd7e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fbd86  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004fbd8e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fbd96  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fbd9a  0f84c8080000              JZ 0x004fc668
004fbda0  68dcd2b100                PUSH 0xb1d2dc
004fbda5  8d4f78                    LEA ECX,[EDI + 0x78]
004fbda8  e823f0f0ff                CALL 0x0040add0
004fbdad  84c0                      TEST AL,AL
004fbdaf  0f84a0080000              JZ 0x004fc655
004fbdb5  51                        PUSH ECX
004fbdb6  c70424cdcc8c3f            MOV dword ptr [ESP],0x3f8ccccd
004fbdbd  0f57c0                    XORPS XMM0,XMM0
004fbdc0  6a00                      PUSH 0x0
004fbdc2  6a0a                      PUSH 0xa
004fbdc4  51                        PUSH ECX
004fbdc5  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
004fbdc9  8bcf                      MOV ECX,EDI
004fbdcb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fbdd2  0f280580c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac480]
004fbdd9  6a6c                      PUSH 0x6c
004fbddb  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
004fbde2  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004fbde9  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
004fbdf0  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
004fbdf4  e8a7ad1d00                CALL 0x006d6ba0
004fbdf9  8bcf                      MOV ECX,EDI
004fbdfb  e8402a1c00                CALL 0x006be840
004fbe00  6a00                      PUSH 0x0
004fbe02  8bcf                      MOV ECX,EDI
004fbe04  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004fbe0c  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fbe14  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fbe1c  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004fbe24  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004fbe2c  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fbe34  e817d21d00                CALL 0x006d9050
004fbe39  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fbe40  7442                      JZ 0x004fbe84
004fbe42  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
004fbe4a  f30f1097240f0000          MOVSS XMM2,dword ptr [EDI + 0xf24]
004fbe52  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
004fbe5a  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
004fbe62  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004fbe6a  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
004fbe72  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
004fbe7a  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
004fbe82  eb10                      JMP 0x004fbe94
004fbe84  f30f108dfcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffefc]
004fbe8c  f30f1095f8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef8]
004fbe94  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004fbe9c  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004fbea4  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004fbeaa  50                        PUSH EAX
004fbeab  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004fbeb1  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
004fbeb9  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
004fbec1  e86a415100                CALL 0x00a10030
004fbec6  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004fbeca  0f85a6030000              JNZ 0x004fc276
004fbed0  ff7720                    PUSH dword ptr [EDI + 0x20]
004fbed3  8d45dc                    LEA EAX,[EBP + -0x24]
004fbed6  8bcf                      MOV ECX,EDI
004fbed8  50                        PUSH EAX
004fbed9  e8f24e1d00                CALL 0x006d0dd0
004fbede  b901000000                MOV ECX,0x1
004fbee3  2b480c                    SUB ECX,dword ptr [EAX + 0xc]
004fbee6  33c0                      XOR EAX,EAX
004fbee8  3bc1                      CMP EAX,ECX
004fbeea  1bc0                      SBB EAX,EAX
004fbeec  23c1                      AND EAX,ECX
004fbeee  8d4ddc                    LEA ECX,[EBP + -0x24]
004fbef1  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
004fbef7  e8b4b6f1ff                CALL 0x004175b0
004fbefc  33f6                      XOR ESI,ESI
004fbefe  6690                      NOP
004fbf00  e85b301f00                CALL 0x006eef60
004fbf05  0f57c0                    XORPS XMM0,XMM0
004fbf08  f20f2ac0                  CVTSI2SD XMM0,EAX
004fbf0c  c1e81f                    SHR EAX,0x1f
004fbf0f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fbf18  660f5ac0                  CVTPD2PS XMM0,XMM0
004fbf1c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fbf24  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004fbf2c  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004fbf34  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fbf3c  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fbf44  e8f715f2ff                CALL 0x0041d540
004fbf49  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004fbf51  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fbf59  e8c215f2ff                CALL 0x0041d520
004fbf5e  0f28d8                    MOVAPS XMM3,XMM0
004fbf61  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
004fbf69  0f28d0                    MOVAPS XMM2,XMM0
004fbf6c  0f28cb                    MOVAPS XMM1,XMM3
004fbf6f  f30f5995dcfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffedc]
004fbf77  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004fbf7f  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004fbf87  f30f599ddcfeffff          MULSS XMM3,dword ptr [EBP + 0xfffffedc]
004fbf8f  f30f5cd1                  SUBSS XMM2,XMM1
004fbf93  f30f58d8                  ADDSS XMM3,XMM0
004fbf97  0f28c2                    MOVAPS XMM0,XMM2
004fbf9a  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
004fbfa2  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fbfaa  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
004fbfb2  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004fbfba  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fbfc2  0f28c3                    MOVAPS XMM0,XMM3
004fbfc5  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fbfcd  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004fbfd5  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fbfdd  e87e2f1f00                CALL 0x006eef60
004fbfe2  0f57c0                    XORPS XMM0,XMM0
004fbfe5  f30f101dd8adba00          MOVSS XMM3,dword ptr [0x00baadd8]
004fbfed  8d95f0feffff              LEA EDX,[EBP + 0xfffffef0]
004fbff3  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004fbff9  f20f2ac0                  CVTSI2SD XMM0,EAX
004fbffd  c1e81f                    SHR EAX,0x1f
004fc000  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc009  660f5ac8                  CVTPD2PS XMM1,XMM0
004fc00d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004fc015  f30f590d04a8ba00          MULSS XMM1,dword ptr [0x00baa804]
004fc01d  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
004fc025  0f28c1                    MOVAPS XMM0,XMM1
004fc028  f30f598df8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffef8]
004fc030  f30f5985fcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffefc]
004fc038  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004fc040  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fc048  3bb5e4feffff              CMP ESI,dword ptr [EBP + 0xfffffee4]
004fc04e  7d13                      JGE 0x004fc063
004fc050  6a02                      PUSH 0x2
004fc052  57                        PUSH EDI
004fc053  e8c8d8ffff                CALL 0x004f9920
004fc058  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
004fc05b  89887c0c0000              MOV dword ptr [EAX + 0xc7c],ECX
004fc061  eb08                      JMP 0x004fc06b
004fc063  6a03                      PUSH 0x3
004fc065  57                        PUSH EDI
004fc066  e8b5d8ffff                CALL 0x004f9920
004fc06b  46                        INC ESI
004fc06c  83c408                    ADD ESP,0x8
004fc06f  83fe04                    CMP ESI,0x4
004fc072  0f8c88feffff              JL 0x004fbf00
004fc078  be06000000                MOV ESI,0x6
004fc07d  0f1f00                    NOP dword ptr [EAX]
004fc080  e8db2e1f00                CALL 0x006eef60
004fc085  660f6ec0                  MOVD XMM0,EAX
004fc089  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc08d  c1e81f                    SHR EAX,0x1f
004fc090  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc099  660f5ac0                  CVTPD2PS XMM0,XMM0
004fc09d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fc0a5  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004fc0ad  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004fc0b5  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fc0bd  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fc0c5  e87614f2ff                CALL 0x0041d540
004fc0ca  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004fc0d2  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fc0da  e84114f2ff                CALL 0x0041d520
004fc0df  0f28d8                    MOVAPS XMM3,XMM0
004fc0e2  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
004fc0ea  0f28cb                    MOVAPS XMM1,XMM3
004fc0ed  0f28d0                    MOVAPS XMM2,XMM0
004fc0f0  f30f5995dcfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffedc]
004fc0f8  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004fc100  f30f599ddcfeffff          MULSS XMM3,dword ptr [EBP + 0xfffffedc]
004fc108  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004fc110  f30f5cd1                  SUBSS XMM2,XMM1
004fc114  f30f58d8                  ADDSS XMM3,XMM0
004fc118  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
004fc120  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
004fc128  e8332e1f00                CALL 0x006eef60
004fc12d  660f6ec0                  MOVD XMM0,EAX
004fc131  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc135  c1e81f                    SHR EAX,0x1f
004fc138  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc141  660f5ac0                  CVTPD2PS XMM0,XMM0
004fc145  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fc14d  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fc155  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004fc15d  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fc165  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004fc16d  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fc175  e8e62d1f00                CALL 0x006eef60
004fc17a  f30f1095fcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffefc]
004fc182  660f6ec0                  MOVD XMM0,EAX
004fc186  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc18a  c1e81f                    SHR EAX,0x1f
004fc18d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc196  660f5ac8                  CVTPD2PS XMM1,XMM0
004fc19a  0f28c2                    MOVAPS XMM0,XMM2
004fc19d  f30f5995f8feffff          MULSS XMM2,dword ptr [EBP + 0xfffffef8]
004fc1a5  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004fc1ad  f30f5985e4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee4]
004fc1b5  f30f59d1                  MULSS XMM2,XMM1
004fc1b9  f30f59c1                  MULSS XMM0,XMM1
004fc1bd  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
004fc1c5  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004fc1cd  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
004fc1d5  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004fc1dd  e87e2d1f00                CALL 0x006eef60
004fc1e2  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
004fc1ea  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fc1f0  0f28c1                    MOVAPS XMM0,XMM1
004fc1f3  f30f5985e4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee4]
004fc1fb  50                        PUSH EAX
004fc1fc  f30f598df8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffef8]
004fc204  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
004fc20a  6a00                      PUSH 0x0
004fc20c  6a00                      PUSH 0x0
004fc20e  50                        PUSH EAX
004fc20f  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004fc215  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fc21d  50                        PUSH EAX
004fc21e  6a42                      PUSH 0x42
004fc220  68e8030000                PUSH 0x3e8
004fc225  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004fc22d  e8eec8f2ff                CALL 0x00428b20
004fc232  8bc8                      MOV ECX,EAX
004fc234  0f57c0                    XORPS XMM0,XMM0
004fc237  f30f10894c030000          MOVSS XMM1,dword ptr [ECX + 0x34c]
004fc23f  f30f58c8                  ADDSS XMM1,XMM0
004fc243  f30f108150030000          MOVSS XMM0,dword ptr [ECX + 0x350]
004fc24b  f30f5c0548a8ba00          SUBSS XMM0,dword ptr [0x00baa848]
004fc253  f30f11894c030000          MOVSS dword ptr [ECX + 0x34c],XMM1
004fc25b  8b01                      MOV EAX,dword ptr [ECX]
004fc25d  f30f118150030000          MOVSS dword ptr [ECX + 0x350],XMM0
004fc265  ff500c                    CALL dword ptr [EAX + 0xc]
004fc268  83ee01                    SUB ESI,0x1
004fc26b  0f850ffeffff              JNZ 0x004fc080
004fc271  e9df030000                JMP 0x004fc655
004fc276  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004fc27c  e8af2cf4ff                CALL 0x0043ef30
004fc281  ff7720                    PUSH dword ptr [EDI + 0x20]
004fc284  8d45dc                    LEA EAX,[EBP + -0x24]
004fc287  c7459409000000            MOV dword ptr [EBP + -0x6c],0x9
004fc28e  50                        PUSH EAX
004fc28f  8bcf                      MOV ECX,EDI
004fc291  e83a4b1d00                CALL 0x006d0dd0
004fc296  b902000000                MOV ECX,0x2
004fc29b  2b480c                    SUB ECX,dword ptr [EAX + 0xc]
004fc29e  33c0                      XOR EAX,EAX
004fc2a0  3bc1                      CMP EAX,ECX
004fc2a2  1bf6                      SBB ESI,ESI
004fc2a4  23f1                      AND ESI,ECX
004fc2a6  8d4ddc                    LEA ECX,[EBP + -0x24]
004fc2a9  e802b3f1ff                CALL 0x004175b0
004fc2ae  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004fc2b4  50                        PUSH EAX
004fc2b5  51                        PUSH ECX
004fc2b6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fc2bd  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
004fc2c3  50                        PUSH EAX
004fc2c4  b806000000                MOV EAX,0x6
004fc2c9  8bcf                      MOV ECX,EDI
004fc2cb  2bc6                      SUB EAX,ESI
004fc2cd  50                        PUSH EAX
004fc2ce  e8fd0a1d00                CALL 0x006ccdd0
004fc2d3  85f6                      TEST ESI,ESI
004fc2d5  0f8e6c010000              JLE 0x004fc447
004fc2db  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004fc2e0  e87b2c1f00                CALL 0x006eef60
004fc2e5  660f6ec0                  MOVD XMM0,EAX
004fc2e9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc2ed  c1e81f                    SHR EAX,0x1f
004fc2f0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc2f9  660f5ac0                  CVTPD2PS XMM0,XMM0
004fc2fd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fc305  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004fc30d  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004fc315  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fc31d  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fc325  e81612f2ff                CALL 0x0041d540
004fc32a  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fc332  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004fc33a  e8e111f2ff                CALL 0x0041d520
004fc33f  0f28d8                    MOVAPS XMM3,XMM0
004fc342  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fc34a  0f28d0                    MOVAPS XMM2,XMM0
004fc34d  0f28cb                    MOVAPS XMM1,XMM3
004fc350  f30f5995dcfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffedc]
004fc358  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004fc360  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004fc368  f30f599ddcfeffff          MULSS XMM3,dword ptr [EBP + 0xfffffedc]
004fc370  f30f5cd1                  SUBSS XMM2,XMM1
004fc374  f30f58d8                  ADDSS XMM3,XMM0
004fc378  0f28c2                    MOVAPS XMM0,XMM2
004fc37b  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
004fc383  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fc38b  f30f119dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM3
004fc393  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004fc39b  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fc3a3  0f28c3                    MOVAPS XMM0,XMM3
004fc3a6  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fc3ae  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004fc3b6  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fc3be  e89d2b1f00                CALL 0x006eef60
004fc3c3  f30f101dd8adba00          MOVSS XMM3,dword ptr [0x00baadd8]
004fc3cb  8d95d4feffff              LEA EDX,[EBP + 0xfffffed4]
004fc3d1  6a00                      PUSH 0x0
004fc3d3  57                        PUSH EDI
004fc3d4  660f6ec0                  MOVD XMM0,EAX
004fc3d8  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
004fc3de  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc3e2  c1e81f                    SHR EAX,0x1f
004fc3e5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc3ee  660f5ac8                  CVTPD2PS XMM1,XMM0
004fc3f2  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004fc3fa  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
004fc402  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
004fc40a  0f28c1                    MOVAPS XMM0,XMM1
004fc40d  f30f598dfcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffefc]
004fc415  f30f5985ecfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffeec]
004fc41d  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004fc425  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004fc42d  e8eed4ffff                CALL 0x004f9920
004fc432  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
004fc435  83c408                    ADD ESP,0x8
004fc438  89887c0c0000              MOV dword ptr [EAX + 0xc7c],ECX
004fc43e  83ee01                    SUB ESI,0x1
004fc441  0f8599feffff              JNZ 0x004fc2e0
004fc447  c785fcfeffff05000000      MOV dword ptr [EBP + 0xfffffefc],0x5
004fc451  e80a2b1f00                CALL 0x006eef60
004fc456  660f6ec0                  MOVD XMM0,EAX
004fc45a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc45e  c1e81f                    SHR EAX,0x1f
004fc461  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc46a  660f5ac0                  CVTPD2PS XMM0,XMM0
004fc46e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fc476  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004fc47e  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004fc486  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fc48e  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fc496  e8a510f2ff                CALL 0x0041d540
004fc49b  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004fc4a3  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004fc4ab  e87010f2ff                CALL 0x0041d520
004fc4b0  0f28d8                    MOVAPS XMM3,XMM0
004fc4b3  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
004fc4bb  0f28cb                    MOVAPS XMM1,XMM3
004fc4be  0f28d0                    MOVAPS XMM2,XMM0
004fc4c1  f30f5995dcfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffedc]
004fc4c9  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004fc4d1  f30f599ddcfeffff          MULSS XMM3,dword ptr [EBP + 0xfffffedc]
004fc4d9  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004fc4e1  f30f5cd1                  SUBSS XMM2,XMM1
004fc4e5  f30f58d8                  ADDSS XMM3,XMM0
004fc4e9  f30f1195f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM2
004fc4f1  f30f119de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM3
004fc4f9  e8622a1f00                CALL 0x006eef60
004fc4fe  660f6ec0                  MOVD XMM0,EAX
004fc502  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc506  c1e81f                    SHR EAX,0x1f
004fc509  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc512  660f5ac0                  CVTPD2PS XMM0,XMM0
004fc516  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fc51e  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fc526  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004fc52e  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fc536  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
004fc53e  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fc546  e8152a1f00                CALL 0x006eef60
004fc54b  f30f1095ecfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeec]
004fc553  660f6ec0                  MOVD XMM0,EAX
004fc557  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fc55b  c1e81f                    SHR EAX,0x1f
004fc55e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fc567  660f5ac8                  CVTPD2PS XMM1,XMM0
004fc56b  0f28c2                    MOVAPS XMM0,XMM2
004fc56e  f30f5995e4feffff          MULSS XMM2,dword ptr [EBP + 0xfffffee4]
004fc576  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004fc57e  f30f5985f8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef8]
004fc586  f30f59d1                  MULSS XMM2,XMM1
004fc58a  f30f59c1                  MULSS XMM0,XMM1
004fc58e  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
004fc596  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004fc59e  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004fc5a3  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004fc5a8  e8b3291f00                CALL 0x006eef60
004fc5ad  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004fc5b5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fc5bb  0f28c1                    MOVAPS XMM0,XMM1
004fc5be  f30f5985f8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef8]
004fc5c6  50                        PUSH EAX
004fc5c7  f30f598de4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee4]
004fc5cf  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004fc5d5  6a63                      PUSH 0x63
004fc5d7  6a00                      PUSH 0x0
004fc5d9  50                        PUSH EAX
004fc5da  8d45e4                    LEA EAX,[EBP + -0x1c]
004fc5dd  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004fc5e5  50                        PUSH EAX
004fc5e6  6a23                      PUSH 0x23
004fc5e8  68e8030000                PUSH 0x3e8
004fc5ed  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004fc5f5  e826c5f2ff                CALL 0x00428b20
004fc5fa  8bf0                      MOV ESI,EAX
004fc5fc  0f57c0                    XORPS XMM0,XMM0
004fc5ff  f30f108e4c030000          MOVSS XMM1,dword ptr [ESI + 0x34c]
004fc607  f30f58c8                  ADDSS XMM1,XMM0
004fc60b  f30f108650030000          MOVSS XMM0,dword ptr [ESI + 0x350]
004fc613  f30f5c0548a8ba00          SUBSS XMM0,dword ptr [0x00baa848]
004fc61b  f30f118e4c030000          MOVSS dword ptr [ESI + 0x34c],XMM1
004fc623  8b06                      MOV EAX,dword ptr [ESI]
004fc625  8d4da8                    LEA ECX,[EBP + -0x58]
004fc628  6a01                      PUSH 0x1
004fc62a  6a00                      PUSH 0x0
004fc62c  68ff000000                PUSH 0xff
004fc631  6aff                      PUSH -0x1
004fc633  51                        PUSH ECX
004fc634  8bce                      MOV ECX,ESI
004fc636  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
004fc63e  ff503c                    CALL dword ptr [EAX + 0x3c]
004fc641  8b06                      MOV EAX,dword ptr [ESI]
004fc643  8bce                      MOV ECX,ESI
004fc645  ff500c                    CALL dword ptr [EAX + 0xc]
004fc648  83adfcfeffff01            SUB dword ptr [EBP + 0xfffffefc],0x1
004fc64f  0f85fcfdffff              JNZ 0x004fc451
004fc655  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fc659  740d                      JZ 0x004fc668
004fc65b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004fc662  0f8542050000              JNZ 0x004fcbaa
004fc668  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fc672  e933050000                JMP 0x004fcbaa
004fc677  a118ddb100                MOV EAX,[0x00b1dd18]
004fc67c  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004fc682  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004fc689  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004fc690  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004fc693  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004fc696  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004fc69a  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004fc6a1  a130ddb100                MOV EAX,[0x00b1dd30]
004fc6a6  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004fc6ac  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004fc6b3  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004fc6ba  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004fc6bd  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004fc6c0  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004fc6c4  51                        PUSH ECX
004fc6c5  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004fc6c9  8d45bc                    LEA EAX,[EBP + -0x44]
004fc6cc  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004fc6d3  8bcf                      MOV ECX,EDI
004fc6d5  50                        PUSH EAX
004fc6d6  8d45d4                    LEA EAX,[EBP + -0x2c]
004fc6d9  50                        PUSH EAX
004fc6da  e8514c1c00                CALL 0x006c1330
004fc6df  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004fc6e3  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004fc6e6  83fa10                    CMP EDX,0x10
004fc6e9  7228                      JC 0x004fc713
004fc6eb  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004fc6ee  42                        INC EDX
004fc6ef  8bc1                      MOV EAX,ECX
004fc6f1  81fa00100000              CMP EDX,0x1000
004fc6f7  7210                      JC 0x004fc709
004fc6f9  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004fc6fc  83c223                    ADD EDX,0x23
004fc6ff  2bc1                      SUB EAX,ECX
004fc701  83c0fc                    ADD EAX,-0x4
004fc704  83f81f                    CMP EAX,0x1f
004fc707  7749                      JA 0x004fc752
004fc709  52                        PUSH EDX
004fc70a  51                        PUSH ECX
004fc70b  e84c2a5f00                CALL 0x00aef15c
004fc710  83c408                    ADD ESP,0x8
004fc713  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004fc71a  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004fc71d  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004fc724  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004fc72b  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004fc72f  83fa10                    CMP EDX,0x10
004fc732  722e                      JC 0x004fc762
004fc734  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004fc737  42                        INC EDX
004fc738  8bc1                      MOV EAX,ECX
004fc73a  81fa00100000              CMP EDX,0x1000
004fc740  7216                      JC 0x004fc758
004fc742  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004fc745  83c223                    ADD EDX,0x23
004fc748  2bc1                      SUB EAX,ECX
004fc74a  83c0fc                    ADD EAX,-0x4
004fc74d  83f81f                    CMP EAX,0x1f
004fc750  7606                      JBE 0x004fc758
004fc752  ff159488b100              CALL dword ptr [0x00b18894]
004fc758  52                        PUSH EDX
004fc759  51                        PUSH ECX
004fc75a  e8fd295f00                CALL 0x00aef15c
004fc75f  83c408                    ADD ESP,0x8
004fc762  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004fc768  2500080001                AND EAX,0x1000800
004fc76d  83c800                    OR EAX,0x0
004fc770  744d                      JZ 0x004fc7bf
004fc772  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fc779  7444                      JZ 0x004fc7bf
004fc77b  8bcf                      MOV ECX,EDI
004fc77d  e8be201c00                CALL 0x006be840
004fc782  6a00                      PUSH 0x0
004fc784  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004fc78a  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004fc790  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004fc793  8d45e4                    LEA EAX,[EBP + -0x1c]
004fc796  894de4                    MOV dword ptr [EBP + -0x1c],ECX
004fc799  8d8f14040000              LEA ECX,[EDI + 0x414]
004fc79f  50                        PUSH EAX
004fc7a0  e89b812e00                CALL 0x007e4940
004fc7a5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fc7ad  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004fc7b5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fc7bd  eb2d                      JMP 0x004fc7ec
004fc7bf  6a01                      PUSH 0x1
004fc7c1  6a00                      PUSH 0x0
004fc7c3  83ec08                    SUB ESP,0x8
004fc7c6  8d45e4                    LEA EAX,[EBP + -0x1c]
004fc7c9  8bcf                      MOV ECX,EDI
004fc7cb  c74424049a99193f          MOV dword ptr [ESP + 0x4],0x3f19999a
004fc7d3  c7042400000000            MOV dword ptr [ESP],0x0
004fc7da  50                        PUSH EAX
004fc7db  e860241c00                CALL 0x006bec40
004fc7e0  50                        PUSH EAX
004fc7e1  8d8f14040000              LEA ECX,[EDI + 0x414]
004fc7e7  e8d46b2e00                CALL 0x007e33c0
004fc7ec  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
004fc7f3  7431                      JZ 0x004fc826
004fc7f5  e866271f00                CALL 0x006eef60
004fc7fa  33d2                      XOR EDX,EDX
004fc7fc  b903000000                MOV ECX,0x3
004fc801  f7f1                      DIV ECX
004fc803  85d2                      TEST EDX,EDX
004fc805  751f                      JNZ 0x004fc826
004fc807  51                        PUSH ECX
004fc808  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fc80f  52                        PUSH EDX
004fc810  6a78                      PUSH 0x78
004fc812  51                        PUSH ECX
004fc813  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004fc81a  8bcf                      MOV ECX,EDI
004fc81c  68a7000000                PUSH 0xa7
004fc821  e87aa31d00                CALL 0x006d6ba0
004fc826  660f6e9f10040000          MOVD XMM3,dword ptr [EDI + 0x410]
004fc82e  0f57d2                    XORPS XMM2,XMM2
004fc831  f30f100d44aaba00          MOVSS XMM1,dword ptr [0x00baaa44]
004fc839  8bcf                      MOV ECX,EDI
004fc83b  0f5bdb                    CVTDQ2PS XMM3,XMM3
004fc83e  6a01                      PUSH 0x1
004fc840  e8fbc51d00                CALL 0x006d8e40
004fc845  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004fc84b  85d2                      TEST EDX,EDX
004fc84d  7e1a                      JLE 0x004fc869
004fc84f  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004fc857  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004fc85f  2bc8                      SUB ECX,EAX
004fc861  03d1                      ADD EDX,ECX
004fc863  899710040000              MOV dword ptr [EDI + 0x410],EDX
004fc869  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004fc871  0f2f05a4a7ba00            COMISS XMM0,dword ptr [0x00baa7a4]
004fc878  761e                      JBE 0x004fc898
004fc87a  85d2                      TEST EDX,EDX
004fc87c  7e22                      JLE 0x004fc8a0
004fc87e  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004fc886  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004fc88e  2bc8                      SUB ECX,EAX
004fc890  03d1                      ADD EDX,ECX
004fc892  899710040000              MOV dword ptr [EDI + 0x410],EDX
004fc898  85d2                      TEST EDX,EDX
004fc89a  0f8f0a030000              JG 0x004fcbaa
004fc8a0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fc8a7  7420                      JZ 0x004fc8c9
004fc8a9  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
004fc8b1  8bcf                      MOV ECX,EDI
004fc8b3  6a07                      PUSH 0x7
004fc8b5  6a00                      PUSH 0x0
004fc8b7  e8a4e51c00                CALL 0x006cae60
004fc8bc  0fb6c0                    MOVZX EAX,AL
004fc8bf  85c0                      TEST EAX,EAX
004fc8c1  0f84e3020000              JZ 0x004fcbaa
004fc8c7  eb3d                      JMP 0x004fc906
004fc8c9  e892261f00                CALL 0x006eef60
004fc8ce  33d2                      XOR EDX,EDX
004fc8d0  b93c000000                MOV ECX,0x3c
004fc8d5  f7f1                      DIV ECX
004fc8d7  85d2                      TEST EDX,EDX
004fc8d9  742b                      JZ 0x004fc906
004fc8db  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004fc8e3  0f2f05a4a7ba00            COMISS XMM0,dword ptr [0x00baa7a4]
004fc8ea  0f86ba020000              JBE 0x004fcbaa
004fc8f0  e86b261f00                CALL 0x006eef60
004fc8f5  33d2                      XOR EDX,EDX
004fc8f7  b914000000                MOV ECX,0x14
004fc8fc  f7f1                      DIV ECX
004fc8fe  85d2                      TEST EDX,EDX
004fc900  0f85a4020000              JNZ 0x004fcbaa
004fc906  6a00                      PUSH 0x0
004fc908  68000a0001                PUSH 0x1000a00
004fc90d  8bcf                      MOV ECX,EDI
004fc90f  e81cabf1ff                CALL 0x00417430
004fc914  84c0                      TEST AL,AL
004fc916  0f858e020000              JNZ 0x004fcbaa
004fc91c  817f348a030000            CMP dword ptr [EDI + 0x34],0x38a
004fc923  0f8481020000              JZ 0x004fcbaa
004fc929  8bcf                      MOV ECX,EDI
004fc92b  e8101f1c00                CALL 0x006be840
004fc930  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004fc938  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004fc940  f30f5cc8                  SUBSS XMM1,XMM0
004fc944  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fc94c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fc954  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004fc95c  f30f59c9                  MULSS XMM1,XMM1
004fc960  f30f59c0                  MULSS XMM0,XMM0
004fc964  f30f58c1                  ADDSS XMM0,XMM1
004fc968  e8e390f3ff                CALL 0x00435a50
004fc96d  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
004fc975  0f2fc8                    COMISS XMM1,XMM0
004fc978  772c                      JA 0x004fc9a6
004fc97a  f30f100d54abba00          MOVSS XMM1,dword ptr [0x00baab54]
004fc982  0f2fc8                    COMISS XMM1,XMM0
004fc985  7612                      JBE 0x004fc999
004fc987  e8d4251f00                CALL 0x006eef60
004fc98c  33d2                      XOR EDX,EDX
004fc98e  b90a000000                MOV ECX,0xa
004fc993  f7f1                      DIV ECX
004fc995  85d2                      TEST EDX,EDX
004fc997  740d                      JZ 0x004fc9a6
004fc999  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fc9a0  0f8404020000              JZ 0x004fcbaa
004fc9a6  8b8664120000              MOV EAX,dword ptr [ESI + 0x1264]
004fc9ac  33c9                      XOR ECX,ECX
004fc9ae  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004fc9b2  7525                      JNZ 0x004fc9d9
004fc9b4  85c0                      TEST EAX,EAX
004fc9b6  7454                      JZ 0x004fca0c
004fc9b8  8b965c120000              MOV EDX,dword ptr [ESI + 0x125c]
004fc9be  6690                      NOP
004fc9c0  8b32                      MOV ESI,dword ptr [EDX]
004fc9c2  837e2821                  CMP dword ptr [ESI + 0x28],0x21
004fc9c6  7507                      JNZ 0x004fc9cf
004fc9c8  837e2c02                  CMP dword ptr [ESI + 0x2c],0x2
004fc9cc  7501                      JNZ 0x004fc9cf
004fc9ce  41                        INC ECX
004fc9cf  83c204                    ADD EDX,0x4
004fc9d2  83e801                    SUB EAX,0x1
004fc9d5  75e9                      JNZ 0x004fc9c0
004fc9d7  eb2a                      JMP 0x004fca03
004fc9d9  85c0                      TEST EAX,EAX
004fc9db  742f                      JZ 0x004fca0c
004fc9dd  8b965c120000              MOV EDX,dword ptr [ESI + 0x125c]
004fc9e3  8b32                      MOV ESI,dword ptr [EDX]
004fc9e5  837e2855                  CMP dword ptr [ESI + 0x28],0x55
004fc9e9  7506                      JNZ 0x004fc9f1
004fc9eb  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
004fc9ef  eb07                      JMP 0x004fc9f8
004fc9f1  817e2832030000            CMP dword ptr [ESI + 0x28],0x332
004fc9f8  7501                      JNZ 0x004fc9fb
004fc9fa  41                        INC ECX
004fc9fb  83c204                    ADD EDX,0x4
004fc9fe  83e801                    SUB EAX,0x1
004fca01  75e0                      JNZ 0x004fc9e3
004fca03  83f909                    CMP ECX,0x9
004fca06  0f8d9e010000              JGE 0x004fcbaa
004fca0c  6a01                      PUSH 0x1
004fca0e  8bcf                      MOV ECX,EDI
004fca10  e83bc61d00                CALL 0x006d9050
004fca15  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fca1c  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004fca24  7416                      JZ 0x004fca3c
004fca26  f30f1087200f0000          MOVSS XMM0,dword ptr [EDI + 0xf20]
004fca2e  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
004fca36  f30f58c1                  ADDSS XMM0,XMM1
004fca3a  eb08                      JMP 0x004fca44
004fca3c  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004fca44  0f2fc8                    COMISS XMM1,XMM0
004fca47  6a00                      PUSH 0x0
004fca49  8d4f48                    LEA ECX,[EDI + 0x48]
004fca4c  6854ddb100                PUSH 0xb1dd54
004fca51  0f97c0                    SETA AL
004fca54  888748010000              MOV byte ptr [EDI + 0x148],AL
004fca5a  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004fca64  e817d9f0ff                CALL 0x0040a380
004fca69  c7871004000096000000      MOV dword ptr [EDI + 0x410],0x96
004fca73  e932010000                JMP 0x004fcbaa
004fca78  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fca82  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004fca85  85f6                      TEST ESI,ESI
004fca87  744a                      JZ 0x004fcad3
004fca89  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004fca8d  8bc6                      MOV EAX,ESI
004fca8f  7202                      JC 0x004fca93
004fca91  8b06                      MOV EAX,dword ptr [ESI]
004fca93  b918ddb100                MOV ECX,0xb1dd18
004fca98  8a10                      MOV DL,byte ptr [EAX]
004fca9a  3a11                      CMP DL,byte ptr [ECX]
004fca9c  751a                      JNZ 0x004fcab8
004fca9e  84d2                      TEST DL,DL
004fcaa0  7412                      JZ 0x004fcab4
004fcaa2  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004fcaa5  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004fcaa8  750e                      JNZ 0x004fcab8
004fcaaa  83c002                    ADD EAX,0x2
004fcaad  83c102                    ADD ECX,0x2
004fcab0  84d2                      TEST DL,DL
004fcab2  75e4                      JNZ 0x004fca98
004fcab4  33c0                      XOR EAX,EAX
004fcab6  eb05                      JMP 0x004fcabd
004fcab8  1bc0                      SBB EAX,EAX
004fcaba  83c801                    OR EAX,0x1
004fcabd  85c0                      TEST EAX,EAX
004fcabf  7512                      JNZ 0x004fcad3
004fcac1  384634                    CMP byte ptr [ESI + 0x34],AL
004fcac4  742e                      JZ 0x004fcaf4
004fcac6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004fcacc  8d7748                    LEA ESI,[EDI + 0x48]
004fcacf  7523                      JNZ 0x004fcaf4
004fcad1  eb03                      JMP 0x004fcad6
004fcad3  8d7748                    LEA ESI,[EDI + 0x48]
004fcad6  6a01                      PUSH 0x1
004fcad8  6818ddb100                PUSH 0xb1dd18
004fcadd  8bce                      MOV ECX,ESI
004fcadf  e8ecdaf0ff                CALL 0x0040a5d0
004fcae4  84c0                      TEST AL,AL
004fcae6  740c                      JZ 0x004fcaf4
004fcae8  8d4e30                    LEA ECX,[ESI + 0x30]
004fcaeb  e8c0d6f0ff                CALL 0x0040a1b0
004fcaf0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004fcaf4  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004fcaf8  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004fcafe  7531                      JNZ 0x004fcb31
004fcb00  81f94c4dc300              CMP ECX,0xc34d4c
004fcb06  747c                      JZ 0x004fcb84
004fcb08  0f10054c4dc300            MOVUPS XMM0,xmmword ptr [0x00c34d4c]
004fcb0f  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004fcb12  0f10055c4dc300            MOVUPS XMM0,xmmword ptr [0x00c34d5c]
004fcb19  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004fcb1d  f30f7e056c4dc300          MOVQ XMM0,qword ptr [0x00c34d6c]
004fcb25  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004fcb2a  a1744dc300                MOV EAX,[0x00c34d74]
004fcb2f  eb50                      JMP 0x004fcb81
004fcb31  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004fcb38  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
004fcb3e  0f280d90baba00            MOVAPS XMM1,xmmword ptr [0x00baba90]
004fcb45  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
004fcb4f  c785ccfeffff00000000      MOV dword ptr [EBP + 0xfffffecc],0x0
004fcb59  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
004fcb63  3bc8                      CMP ECX,EAX
004fcb65  741d                      JZ 0x004fcb84
004fcb67  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
004fcb6d  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004fcb70  f30f7e85c8feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffec8]
004fcb78  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
004fcb7c  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004fcb81  894128                    MOV dword ptr [ECX + 0x28],EAX
004fcb84  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fcb8b  7407                      JZ 0x004fcb94
004fcb8d  ba0a000000                MOV EDX,0xa
004fcb92  eb10                      JMP 0x004fcba4
004fcb94  e8c7231f00                CALL 0x006eef60
004fcb99  33d2                      XOR EDX,EDX
004fcb9b  b90a000000                MOV ECX,0xa
004fcba0  f7f1                      DIV ECX
004fcba2  03d1                      ADD EDX,ECX
004fcba4  899710040000              MOV dword ptr [EDI + 0x410],EDX
004fcbaa  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
004fcbaf  0f57d2                    XORPS XMM2,XMM2
004fcbb2  0f2fca                    COMISS XMM1,XMM2
004fcbb5  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004fcbbd  760e                      JBE 0x004fcbcd
004fcbbf  f30f58c8                  ADDSS XMM1,XMM0
004fcbc3  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
004fcbcb  eb03                      JMP 0x004fcbd0
004fcbcd  0f28c8                    MOVAPS XMM1,XMM0
004fcbd0  0f2fca                    COMISS XMM1,XMM2
004fcbd3  7620                      JBE 0x004fcbf5
004fcbd5  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004fcbdd  f30f59052ca1ba00          MULSS XMM0,dword ptr [0x00baa12c]
004fcbe5  f30f5cc8                  SUBSS XMM1,XMM0
004fcbe9  f30f5fca                  MAXSS XMM1,XMM2
004fcbed  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
004fcbf5  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004fcbf8  64890d00000000            MOV dword ptr FS:[0x0],ECX
004fcbff  59                        POP ECX
004fcc00  5f                        POP EDI
004fcc01  5e                        POP ESI
004fcc02  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004fcc05  33cd                      XOR ECX,EBP
004fcc07  e81f255f00                CALL 0x00aef12b
004fcc0c  8be5                      MOV ESP,EBP
004fcc0e  5d                        POP EBP
004fcc0f  8be3                      MOV ESP,EBX
004fcc11  5b                        POP EBX
004fcc12  c3                        RET
