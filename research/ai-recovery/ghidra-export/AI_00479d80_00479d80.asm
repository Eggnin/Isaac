; J460 NPC AI 0x00479d80 AI_00479d80
; types=52
; identities=52.0.0,52.1.0
; entry=00479d80
00479d80  55                        PUSH EBP
00479d81  8bec                      MOV EBP,ESP
00479d83  83e4f8                    AND ESP,0xfffffff8
00479d86  81ec28010000              SUB ESP,0x128
00479d8c  a1b493bf00                MOV EAX,[0x00bf93b4]
00479d91  33c4                      XOR EAX,ESP
00479d93  89842424010000            MOV dword ptr [ESP + 0x124],EAX
00479d9a  56                        PUSH ESI
00479d9b  57                        PUSH EDI
00479d9c  8bf9                      MOV EDI,ECX
00479d9e  897c241c                  MOV dword ptr [ESP + 0x1c],EDI
00479da2  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00479da8  85c9                      TEST ECX,ECX
00479daa  7567                      JNZ 0x00479e13
00479dac  0f2815b0c7ba00            MOVAPS XMM2,xmmword ptr [0x00bac7b0]
00479db3  8d442428                  LEA EAX,[ESP + 0x28]
00479db7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00479dc1  0f57c9                    XORPS XMM1,XMM1
00479dc4  81c7e4010000              ADD EDI,0x1e4
00479dca  894c2448                  MOV dword ptr [ESP + 0x48],ECX
00479dce  c744244ccdcc4c3e          MOV dword ptr [ESP + 0x4c],0x3e4ccccd
00479dd6  c7442450cdcc4c3e          MOV dword ptr [ESP + 0x50],0x3e4ccccd
00479dde  3bf8                      CMP EDI,EAX
00479de0  0f8466050000              JZ 0x0047a34c
00479de6  f30f7e442448              MOVQ XMM0,qword ptr [ESP + 0x48]
00479dec  8b442450                  MOV EAX,dword ptr [ESP + 0x50]
00479df0  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00479df5  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
00479df8  894728                    MOV dword ptr [EDI + 0x28],EAX
00479dfb  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
00479dff  5f                        POP EDI
00479e00  5e                        POP ESI
00479e01  8b8c2424010000            MOV ECX,dword ptr [ESP + 0x124]
00479e08  33cc                      XOR ECX,ESP
00479e0a  e81c536700                CALL 0x00aef12b
00479e0f  8be5                      MOV ESP,EBP
00479e11  5d                        POP EBP
00479e12  c3                        RET
00479e13  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00479e16  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
00479e19  89442424                  MOV dword ptr [ESP + 0x24],EAX
00479e1d  89542410                  MOV dword ptr [ESP + 0x10],EDX
00479e21  3bc2                      CMP EAX,EDX
00479e23  0f84b4000000              JZ 0x00479edd
00479e29  8d7038                    LEA ESI,[EAX + 0x38]
00479e2c  8974240c                  MOV dword ptr [ESP + 0xc],ESI
00479e30  8b4ee0                    MOV ECX,dword ptr [ESI + -0x20]
00479e33  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
00479e36  0f8581000000              JNZ 0x00479ebd
00479e3c  89742414                  MOV dword ptr [ESP + 0x14],ESI
00479e40  3bf2                      CMP ESI,EDX
00479e42  7471                      JZ 0x00479eb5
00479e44  8b7c2410                  MOV EDI,dword ptr [ESP + 0x10]
00479e48  83c6f4                    ADD ESI,-0xc
00479e4b  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00479e4f  90                        NOP
00479e50  8b08                      MOV ECX,dword ptr [EAX]
00479e52  8d7638                    LEA ESI,[ESI + 0x38]
00479e55  894e9c                    MOV dword ptr [ESI + -0x64],ECX
00479e58  83c038                    ADD EAX,0x38
00479e5b  8b4edc                    MOV ECX,dword ptr [ESI + -0x24]
00479e5e  8b56e0                    MOV EDX,dword ptr [ESI + -0x20]
00479e61  894ea4                    MOV dword ptr [ESI + -0x5c],ECX
00479e64  8956a8                    MOV dword ptr [ESI + -0x58],EDX
00479e67  8b4ee4                    MOV ECX,dword ptr [ESI + -0x1c]
00479e6a  894eac                    MOV dword ptr [ESI + -0x54],ECX
00479e6d  8b4ee8                    MOV ECX,dword ptr [ESI + -0x18]
00479e70  894eb0                    MOV dword ptr [ESI + -0x50],ECX
00479e73  8b4eec                    MOV ECX,dword ptr [ESI + -0x14]
00479e76  894eb4                    MOV dword ptr [ESI + -0x4c],ECX
00479e79  8b4ef0                    MOV ECX,dword ptr [ESI + -0x10]
00479e7c  894eb8                    MOV dword ptr [ESI + -0x48],ECX
00479e7f  8b4ef4                    MOV ECX,dword ptr [ESI + -0xc]
00479e82  894ebc                    MOV dword ptr [ESI + -0x44],ECX
00479e85  8b4ef8                    MOV ECX,dword ptr [ESI + -0x8]
00479e88  894ec0                    MOV dword ptr [ESI + -0x40],ECX
00479e8b  8b4efc                    MOV ECX,dword ptr [ESI + -0x4]
00479e8e  894ec4                    MOV dword ptr [ESI + -0x3c],ECX
00479e91  8b0e                      MOV ECX,dword ptr [ESI]
00479e93  894ec8                    MOV dword ptr [ESI + -0x38],ECX
00479e96  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00479e99  894ecc                    MOV dword ptr [ESI + -0x34],ECX
00479e9c  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
00479e9f  894ed0                    MOV dword ptr [ESI + -0x30],ECX
00479ea2  3bc7                      CMP EAX,EDI
00479ea4  75aa                      JNZ 0x00479e50
00479ea6  8b7c241c                  MOV EDI,dword ptr [ESP + 0x1c]
00479eaa  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
00479eae  8b74240c                  MOV ESI,dword ptr [ESP + 0xc]
00479eb2  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
00479eb5  83c2c8                    ADD EDX,-0x38
00479eb8  89570c                    MOV dword ptr [EDI + 0xc],EDX
00479ebb  eb0e                      JMP 0x00479ecb
00479ebd  83c038                    ADD EAX,0x38
00479ec0  83c638                    ADD ESI,0x38
00479ec3  89442424                  MOV dword ptr [ESP + 0x24],EAX
00479ec7  8974240c                  MOV dword ptr [ESP + 0xc],ESI
00479ecb  89542410                  MOV dword ptr [ESP + 0x10],EDX
00479ecf  3bc2                      CMP EAX,EDX
00479ed1  0f8559ffffff              JNZ 0x00479e30
00479ed7  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00479edd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00479ee5  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
00479eed  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00479ef5  83f904                    CMP ECX,0x4
00479ef8  0f854b010000              JNZ 0x0047a049
00479efe  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00479f06  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00479f0e  0f28c2                    MOVAPS XMM0,XMM2
00479f11  f30f59c2                  MULSS XMM0,XMM2
00479f15  f30f59c9                  MULSS XMM1,XMM1
00479f19  f30f58c1                  ADDSS XMM0,XMM1
00479f1d  e82ebbfbff                CALL 0x00435a50
00479f22  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00479f2a  8d4f48                    LEA ECX,[EDI + 0x48]
00479f2d  0f2fc8                    COMISS XMM1,XMM0
00479f30  7636                      JBE 0x00479f68
00479f32  6a01                      PUSH 0x1
00479f34  6844e0b100                PUSH 0xb1e044
00479f39  e89206f9ff                CALL 0x0040a5d0
00479f3e  84c0                      TEST AL,AL
00479f40  0f8483000000              JZ 0x00479fc9
00479f46  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00479f49  85c0                      TEST EAX,EAX
00479f4b  747c                      JZ 0x00479fc9
00479f4d  8d4f78                    LEA ECX,[EDI + 0x78]
00479f50  0f57c9                    XORPS XMM1,XMM1
00479f53  e8a8eef8ff                CALL 0x00408e00
00479f58  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00479f5b  85c0                      TEST EAX,EAX
00479f5d  746a                      JZ 0x00479fc9
00479f5f  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
00479f66  eb61                      JMP 0x00479fc9
00479f68  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
00479f70  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00479f78  0f28c3                    MOVAPS XMM0,XMM3
00479f7b  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00479f82  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00479f89  0f2fd0                    COMISS XMM2,XMM0
00479f8c  6a00                      PUSH 0x0
00479f8e  761f                      JBE 0x00479faf
00479f90  6830ddb100                PUSH 0xb1dd30
00479f95  e8e603f9ff                CALL 0x0040a380
00479f9a  0f57c0                    XORPS XMM0,XMM0
00479f9d  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
00479fa4  0f97c0                    SETA AL
00479fa7  888748010000              MOV byte ptr [EDI + 0x148],AL
00479fad  eb1a                      JMP 0x00479fc9
00479faf  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
00479fb6  7607                      JBE 0x00479fbf
00479fb8  6844e0b100                PUSH 0xb1e044
00479fbd  eb05                      JMP 0x00479fc4
00479fbf  6820e0b100                PUSH 0xb1e020
00479fc4  e8b703f9ff                CALL 0x0040a380
00479fc9  6a00                      PUSH 0x0
00479fcb  51                        PUSH ECX
00479fcc  8d8f14040000              LEA ECX,[EDI + 0x414]
00479fd2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00479fd9  e862b33600                CALL 0x007e5340
00479fde  e87d4f2700                CALL 0x006eef60
00479fe3  33d2                      XOR EDX,EDX
00479fe5  b932000000                MOV ECX,0x32
00479fea  f7f1                      DIV ECX
00479fec  85d2                      TEST EDX,EDX
00479fee  0f8552030000              JNZ 0x0047a346
00479ff4  899710040000              MOV dword ptr [EDI + 0x410],EDX
00479ffa  e8614f2700                CALL 0x006eef60
00479fff  8d4f48                    LEA ECX,[EDI + 0x48]
0047a002  6a01                      PUSH 0x1
0047a004  a801                      TEST AL,0x1
0047a006  7511                      JNZ 0x0047a019
0047a008  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0047a012  683cd5b100                PUSH 0xb1d53c
0047a017  eb0f                      JMP 0x0047a028
0047a019  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0047a023  6854d5b100                PUSH 0xb1d554
0047a028  e8a305f9ff                CALL 0x0040a5d0
0047a02d  84c0                      TEST AL,AL
0047a02f  0f8411030000              JZ 0x0047a346
0047a035  8d4f78                    LEA ECX,[EDI + 0x78]
0047a038  e87301f9ff                CALL 0x0040a1b0
0047a03d  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047a044  e9fd020000                JMP 0x0047a346
0047a049  83f908                    CMP ECX,0x8
0047a04c  0f85f9010000              JNZ 0x0047a24b
0047a052  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0047a056  7564                      JNZ 0x0047a0bc
0047a058  83bf1004000014            CMP dword ptr [EDI + 0x410],0x14
0047a05f  755b                      JNZ 0x0047a0bc
0047a061  8d8c2480000000            LEA ECX,[ESP + 0x80]
0047a068  e8c34efcff                CALL 0x0043ef30
0047a06d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047a075  0f57c9                    XORPS XMM1,XMM1
0047a078  f30f5cc1                  SUBSS XMM0,XMM1
0047a07c  c744241c00000041          MOV dword ptr [ESP + 0x1c],0x41000000
0047a084  50                        PUSH EAX
0047a085  6a09                      PUSH 0x9
0047a087  8d442424                  LEA EAX,[ESP + 0x24]
0047a08b  c74424280000c040          MOV dword ptr [ESP + 0x28],0x40c00000
0047a093  50                        PUSH EAX
0047a094  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0047a09a  8d442420                  LEA EAX,[ESP + 0x20]
0047a09e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047a0a6  8bcf                      MOV ECX,EDI
0047a0a8  f30f5c05ecadba00          SUBSS XMM0,dword ptr [0x00baadec]
0047a0b0  50                        PUSH EAX
0047a0b1  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0047a0b7  e824122500                CALL 0x006cb2e0
0047a0bc  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047a0c2  83f80c                    CMP EAX,0xc
0047a0c5  0f8584000000              JNZ 0x0047a14f
0047a0cb  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047a0d3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0047a0d9  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0047a0df  83f812                    CMP EAX,0x12
0047a0e2  750a                      JNZ 0x0047a0ee
0047a0e4  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0047a0ec  eb0d                      JMP 0x0047a0fb
0047a0ee  83f813                    CMP EAX,0x13
0047a0f1  750e                      JNZ 0x0047a101
0047a0f3  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0047a0fb  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0047a101  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047a107  8d4c240c                  LEA ECX,[ESP + 0xc]
0047a10b  c744240c87030000          MOV dword ptr [ESP + 0xc],0x387
0047a113  e868c64d00                CALL 0x00956780
0047a118  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0047a11e  83ec08                    SUB ESP,0x8
0047a121  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047a129  f30f110424                MOVSS dword ptr [ESP],XMM0
0047a12e  6a00                      PUSH 0x0
0047a130  6a02                      PUSH 0x2
0047a132  51                        PUSH ECX
0047a133  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047a13a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047a140  ff742420                  PUSH dword ptr [ESP + 0x20]
0047a144  e8e73a4b00                CALL 0x0092dc30
0047a149  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047a14f  83f814                    CMP EAX,0x14
0047a152  0f85eb000000              JNZ 0x0047a243
0047a158  33c0                      XOR EAX,EAX
0047a15a  c74424200000a0c1          MOV dword ptr [ESP + 0x20],0xc1a00000
0047a162  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0047a166  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0047a16a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0047a170  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047a178  8d4c241c                  LEA ECX,[ESP + 0x1c]
0047a17c  0f57c9                    XORPS XMM1,XMM1
0047a17f  f30f58c1                  ADDSS XMM0,XMM1
0047a183  6a00                      PUSH 0x0
0047a185  57                        PUSH EDI
0047a186  51                        PUSH ECX
0047a187  6a11                      PUSH 0x11
0047a189  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0047a18f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047a197  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
0047a19f  51                        PUSH ECX
0047a1a0  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0047a1a6  660f6ec0                  MOVD XMM0,EAX
0047a1aa  8d442428                  LEA EAX,[ESP + 0x28]
0047a1ae  0f5bc0                    CVTDQ2PS XMM0,XMM0
0047a1b1  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0047a1b9  f30f580510a9ba00          ADDSS XMM0,dword ptr [0x00baa910]
0047a1c1  f30f110424                MOVSS dword ptr [ESP],XMM0
0047a1c6  50                        PUSH EAX
0047a1c7  6a04                      PUSH 0x4
0047a1c9  e842514f00                CALL 0x0096f310
0047a1ce  83c41c                    ADD ESP,0x1c
0047a1d1  8bf0                      MOV ESI,EAX
0047a1d3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0047a1d7  754c                      JNZ 0x0047a225
0047a1d9  8b06                      MOV EAX,dword ptr [ESI]
0047a1db  8d4c2454                  LEA ECX,[ESP + 0x54]
0047a1df  6a01                      PUSH 0x1
0047a1e1  6a00                      PUSH 0x0
0047a1e3  68ff000000                PUSH 0xff
0047a1e8  0f57c0                    XORPS XMM0,XMM0
0047a1eb  c7842480000000d4d2523f    MOV dword ptr [ESP + 0x80],0x3f52d2d4
0047a1f6  6aff                      PUSH -0x1
0047a1f8  0f11442474                MOVUPS xmmword ptr [ESP + 0x74],XMM0
0047a1fd  51                        PUSH ECX
0047a1fe  0f280570c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac470]
0047a205  8bce                      MOV ECX,ESI
0047a207  0f11442468                MOVUPS xmmword ptr [ESP + 0x68],XMM0
0047a20c  c784248c000000f2f0703e    MOV dword ptr [ESP + 0x8c],0x3e70f0f2
0047a217  c7842490000000b5b4343f    MOV dword ptr [ESP + 0x90],0x3f34b4b5
0047a222  ff503c                    CALL dword ptr [EAX + 0x3c]
0047a225  8b06                      MOV EAX,dword ptr [ESI]
0047a227  8bce                      MOV ECX,ESI
0047a229  ff500c                    CALL dword ptr [EAX + 0xc]
0047a22c  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
0047a230  40                        INC EAX
0047a231  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0047a235  83f804                    CMP EAX,0x4
0047a238  0f8c32ffffff              JL 0x0047a170
0047a23e  e903010000                JMP 0x0047a346
0047a243  83f82d                    CMP EAX,0x2d
0047a246  e9ef000000                JMP 0x0047a33a
0047a24b  83f909                    CMP ECX,0x9
0047a24e  0f85f2000000              JNZ 0x0047a346
0047a254  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0047a25a  83ee06                    SUB ESI,0x6
0047a25d  83fe01                    CMP ESI,0x1
0047a260  7522                      JNZ 0x0047a284
0047a262  51                        PUSH ECX
0047a263  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047a26a  6a00                      PUSH 0x0
0047a26c  6a02                      PUSH 0x2
0047a26e  51                        PUSH ECX
0047a26f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047a276  8bcf                      MOV ECX,EDI
0047a278  6834010000                PUSH 0x134
0047a27d  e81ec92500                CALL 0x006d6ba0
0047a282  eb08                      JMP 0x0047a28c
0047a284  85f6                      TEST ESI,ESI
0047a286  0f88a7000000              JS 0x0047a333
0047a28c  b867666666                MOV EAX,0x66666667
0047a291  8bce                      MOV ECX,ESI
0047a293  f7ee                      IMUL ESI
0047a295  d1fa                      SAR EDX,0x1
0047a297  8bc2                      MOV EAX,EDX
0047a299  c1e81f                    SHR EAX,0x1f
0047a29c  03c2                      ADD EAX,EDX
0047a29e  8d0480                    LEA EAX,[EAX + EAX*0x4]
0047a2a1  2bc8                      SUB ECX,EAX
0047a2a3  0f858a000000              JNZ 0x0047a333
0047a2a9  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
0047a2ac  8d41ff                    LEA EAX,[ECX + -0x1]
0047a2af  f7d8                      NEG EAX
0047a2b1  1bc0                      SBB EAX,EAX
0047a2b3  83c004                    ADD EAX,0x4
0047a2b6  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0047a2ba  85c9                      TEST ECX,ECX
0047a2bc  7507                      JNZ 0x0047a2c5
0047a2be  83fe14                    CMP ESI,0x14
0047a2c1  7c0c                      JL 0x0047a2cf
0047a2c3  eb6e                      JMP 0x0047a333
0047a2c5  83f901                    CMP ECX,0x1
0047a2c8  7569                      JNZ 0x0047a333
0047a2ca  83fe0a                    CMP ESI,0xa
0047a2cd  7d64                      JGE 0x0047a333
0047a2cf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047a2d5  8d442414                  LEA EAX,[ESP + 0x14]
0047a2d9  6a00                      PUSH 0x0
0047a2db  6a00                      PUSH 0x0
0047a2dd  50                        PUSH EAX
0047a2de  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0047a2e4  e877913900                CALL 0x00813460
0047a2e9  a17816c700                MOV EAX,[0x00c71678]
0047a2ee  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0047a2f4  8d442414                  LEA EAX,[ESP + 0x14]
0047a2f8  50                        PUSH EAX
0047a2f9  8bce                      MOV ECX,ESI
0047a2fb  e890893900                CALL 0x00812c90
0047a300  6884030000                PUSH 0x384
0047a305  50                        PUSH EAX
0047a306  8bce                      MOV ECX,ESI
0047a308  e8d3c2fdff                CALL 0x004565e0
0047a30d  e84e4c2700                CALL 0x006eef60
0047a312  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047a318  6a00                      PUSH 0x0
0047a31a  50                        PUSH EAX
0047a31b  6a00                      PUSH 0x0
0047a31d  57                        PUSH EDI
0047a31e  6840b6c700                PUSH 0xc7b640
0047a323  8d442428                  LEA EAX,[ESP + 0x28]
0047a327  50                        PUSH EAX
0047a328  ff742434                  PUSH dword ptr [ESP + 0x34]
0047a32c  6a04                      PUSH 0x4
0047a32e  e8dd402800                CALL 0x006fe410
0047a333  83bf100400002d            CMP dword ptr [EDI + 0x410],0x2d
0047a33a  7e0a                      JLE 0x0047a346
0047a33c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047a346  ff8710040000              INC dword ptr [EDI + 0x410]
0047a34c  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0047a353  5f                        POP EDI
0047a354  5e                        POP ESI
0047a355  33cc                      XOR ECX,ESP
0047a357  e8cf4d6700                CALL 0x00aef12b
0047a35c  8be5                      MOV ESP,EBP
0047a35e  5d                        POP EBP
0047a35f  c3                        RET
