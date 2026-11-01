; J460 NPC AI 0x0041af60 AI_0041af60
; types=93
; identities=93.0.0,93.1.0
; entry=0041af60
0041af60  55                        PUSH EBP
0041af61  8bec                      MOV EBP,ESP
0041af63  6aff                      PUSH -0x1
0041af65  683516af00                PUSH 0xaf1635
0041af6a  64a100000000              MOV EAX,FS:[0x0]
0041af70  50                        PUSH EAX
0041af71  83ec3c                    SUB ESP,0x3c
0041af74  53                        PUSH EBX
0041af75  56                        PUSH ESI
0041af76  57                        PUSH EDI
0041af77  a1b493bf00                MOV EAX,[0x00bf93b4]
0041af7c  33c5                      XOR EAX,EBP
0041af7e  50                        PUSH EAX
0041af7f  8d45f4                    LEA EAX,[EBP + -0xc]
0041af82  64a300000000              MOV FS:[0x0],EAX
0041af88  8bf1                      MOV ESI,ECX
0041af8a  837d0c03                  CMP dword ptr [EBP + 0xc],0x3
0041af8e  0f8525010000              JNZ 0x0041b0b9
0041af94  817d10ce000000            CMP dword ptr [EBP + 0x10],0xce
0041af9b  0f8518010000              JNZ 0x0041b0b9
0041afa1  8b4d14                    MOV ECX,dword ptr [EBP + 0x14]
0041afa4  83f9ff                    CMP ECX,-0x1
0041afa7  7535                      JNZ 0x0041afde
0041afa9  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0041afac  8b8e94000000              MOV ECX,dword ptr [ESI + 0x94]
0041afb2  894804                    MOV dword ptr [EAX + 0x4],ECX
0041afb5  8b8e98000000              MOV ECX,dword ptr [ESI + 0x98]
0041afbb  894808                    MOV dword ptr [EAX + 0x8],ECX
0041afbe  8b8e9c000000              MOV ECX,dword ptr [ESI + 0x9c]
0041afc4  c60001                    MOV byte ptr [EAX],0x1
0041afc7  89480c                    MOV dword ptr [EAX + 0xc],ECX
0041afca  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0041afcd  64890d00000000            MOV dword ptr FS:[0x0],ECX
0041afd4  59                        POP ECX
0041afd5  5f                        POP EDI
0041afd6  5e                        POP ESI
0041afd7  5b                        POP EBX
0041afd8  8be5                      MOV ESP,EBP
0041afda  5d                        POP EBP
0041afdb  c21800                    RET 0x18
0041afde  33c0                      XOR EAX,EAX
0041afe0  c7467c00000000            MOV dword ptr [ESI + 0x7c],0x0
0041afe7  33ff                      XOR EDI,EDI
0041afe9  39869c000000              CMP dword ptr [ESI + 0x9c],EAX
0041afef  7643                      JBE 0x0041b034
0041aff1  8b8694000000              MOV EAX,dword ptr [ESI + 0x94]
0041aff7  8b1cb8                    MOV EBX,dword ptr [EAX + EDI*0x4]
0041affa  394b30                    CMP dword ptr [EBX + 0x30],ECX
0041affd  7529                      JNZ 0x0041b028
0041afff  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b002  8d4101                    LEA EAX,[ECX + 0x1]
0041b005  3b4678                    CMP EAX,dword ptr [ESI + 0x78]
0041b008  7612                      JBE 0x0041b01c
0041b00a  6840b7b100                PUSH 0xb1b740
0041b00f  6a10                      PUSH 0x10
0041b011  e8aa625f00                CALL 0x00a112c0
0041b016  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b019  83c408                    ADD ESP,0x8
0041b01c  8b4674                    MOV EAX,dword ptr [ESI + 0x74]
0041b01f  891c88                    MOV dword ptr [EAX + ECX*0x4],EBX
0041b022  ff467c                    INC dword ptr [ESI + 0x7c]
0041b025  8b4d14                    MOV ECX,dword ptr [EBP + 0x14]
0041b028  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
0041b02b  47                        INC EDI
0041b02c  3bbe9c000000              CMP EDI,dword ptr [ESI + 0x9c]
0041b032  72bd                      JC 0x0041aff1
0041b034  50                        PUSH EAX
0041b035  8d8680000000              LEA EAX,[ESI + 0x80]
0041b03b  50                        PUSH EAX
0041b03c  8d4dc8                    LEA ECX,[EBP + -0x38]
0041b03f  e8fcc4ffff                CALL 0x00417540
0041b044  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0041b04b  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
0041b04e  8b5dd0                    MOV EBX,dword ptr [EBP + -0x30]
0041b051  3bd8                      CMP EBX,EAX
0041b053  7312                      JNC 0x0041b067
0041b055  68c8b7b100                PUSH 0xb1b7c8
0041b05a  6a10                      PUSH 0x10
0041b05c  e85f625f00                CALL 0x00a112c0
0041b061  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
0041b064  83c408                    ADD ESP,0x8
0041b067  8b7dcc                    MOV EDI,dword ptr [EBP + -0x34]
0041b06a  c1e002                    SHL EAX,0x2
0041b06d  50                        PUSH EAX
0041b06e  ff7674                    PUSH dword ptr [ESI + 0x74]
0041b071  57                        PUSH EDI
0041b072  e868556d00                CALL 0x00af05df
0041b077  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
0041b07a  83c40c                    ADD ESP,0xc
0041b07d  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
0041b080  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0041b087  807dc800                  CMP byte ptr [EBP + -0x38],0x0
0041b08b  c60601                    MOV byte ptr [ESI],0x1
0041b08e  897e04                    MOV dword ptr [ESI + 0x4],EDI
0041b091  895e08                    MOV dword ptr [ESI + 0x8],EBX
0041b094  89460c                    MOV dword ptr [ESI + 0xc],EAX
0041b097  0f853b040000              JNZ 0x0041b4d8
0041b09d  6a00                      PUSH 0x0
0041b09f  6a00                      PUSH 0x0
0041b0a1  8bd7                      MOV EDX,EDI
0041b0a3  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0041b0aa  b101                      MOV CL,0x1
0041b0ac  e8ff976400                CALL 0x00a648b0
0041b0b1  83c408                    ADD ESP,0x8
0041b0b4  e91f040000                JMP 0x0041b4d8
0041b0b9  e8d2d36400                CALL 0x00a68490
0041b0be  8955ec                    MOV dword ptr [EBP + -0x14],EDX
0041b0c1  8bc8                      MOV ECX,EAX
0041b0c3  badb34b6d7                MOV EDX,0xd7b634db
0041b0c8  bb82de1b43                MOV EBX,0x431bde82
0041b0cd  f7e2                      MUL EDX
0041b0cf  8945d0                    MOV dword ptr [EBP + -0x30],EAX
0041b0d2  8bfa                      MOV EDI,EDX
0041b0d4  8bc1                      MOV EAX,ECX
0041b0d6  b9db34b6d7                MOV ECX,0xd7b634db
0041b0db  f7e3                      MUL EBX
0041b0dd  8bd8                      MOV EBX,EAX
0041b0df  8955d4                    MOV dword ptr [EBP + -0x2c],EDX
0041b0e2  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
0041b0e5  f7e1                      MUL ECX
0041b0e7  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
0041b0ea  8bc8                      MOV ECX,EAX
0041b0ec  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
0041b0ef  ba82de1b43                MOV EDX,0x431bde82
0041b0f4  f7e2                      MUL EDX
0041b0f6  03cf                      ADD ECX,EDI
0041b0f8  8955ec                    MOV dword ptr [EBP + -0x14],EDX
0041b0fb  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
0041b0fe  83d200                    ADC EDX,0x0
0041b101  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0041b104  03d9                      ADD EBX,ECX
0041b106  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0041b109  895de0                    MOV dword ptr [EBP + -0x20],EBX
0041b10c  8b5df0                    MOV EBX,dword ptr [EBP + -0x10]
0041b10f  83d100                    ADC ECX,0x0
0041b112  33c0                      XOR EAX,EAX
0041b114  03d1                      ADD EDX,ECX
0041b116  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0041b119  13c0                      ADC EAX,EAX
0041b11b  03da                      ADD EBX,EDX
0041b11d  8b5510                    MOV EDX,dword ptr [EBP + 0x10]
0041b120  13c8                      ADC ECX,EAX
0041b122  8955c0                    MOV dword ptr [EBP + -0x40],EDX
0041b125  0faccb12                  SHRD EBX,ECX,0x12
0041b129  c1e912                    SHR ECX,0x12
0041b12c  807d1800                  CMP byte ptr [EBP + 0x18],0x0
0041b130  895df0                    MOV dword ptr [EBP + -0x10],EBX
0041b133  8b5d14                    MOV EBX,dword ptr [EBP + 0x14]
0041b136  894dec                    MOV dword ptr [EBP + -0x14],ECX
0041b139  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0041b13c  894dbc                    MOV dword ptr [EBP + -0x44],ECX
0041b13f  895dc4                    MOV dword ptr [EBP + -0x3c],EBX
0041b142  746f                      JZ 0x0041b1b3
0041b144  8d4dbc                    LEA ECX,[EBP + -0x44]
0041b147  51                        PUSH ECX
0041b148  8d4dcc                    LEA ECX,[EBP + -0x34]
0041b14b  51                        PUSH ECX
0041b14c  8d8ee0000000              LEA ECX,[ESI + 0xe0]
0041b152  e839220000                CALL 0x0041d390
0041b157  8b7dd4                    MOV EDI,dword ptr [EBP + -0x2c]
0041b15a  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0041b15d  8b5510                    MOV EDX,dword ptr [EBP + 0x10]
0041b160  807f0d00                  CMP byte ptr [EDI + 0xd],0x0
0041b164  7513                      JNZ 0x0041b179
0041b166  3b4f10                    CMP ECX,dword ptr [EDI + 0x10]
0041b169  7c0e                      JL 0x0041b179
0041b16b  7f12                      JG 0x0041b17f
0041b16d  3b5714                    CMP EDX,dword ptr [EDI + 0x14]
0041b170  7c07                      JL 0x0041b179
0041b172  7f0b                      JG 0x0041b17f
0041b174  3b5f18                    CMP EBX,dword ptr [EDI + 0x18]
0041b177  7d06                      JGE 0x0041b17f
0041b179  8bbee0000000              MOV EDI,dword ptr [ESI + 0xe0]
0041b17f  3bbee0000000              CMP EDI,dword ptr [ESI + 0xe0]
0041b185  742c                      JZ 0x0041b1b3
0041b187  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0041b18a  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
0041b18d  894804                    MOV dword ptr [EAX + 0x4],ECX
0041b190  8b4f24                    MOV ECX,dword ptr [EDI + 0x24]
0041b193  894808                    MOV dword ptr [EAX + 0x8],ECX
0041b196  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
0041b199  c60001                    MOV byte ptr [EAX],0x1
0041b19c  89480c                    MOV dword ptr [EAX + 0xc],ECX
0041b19f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0041b1a2  64890d00000000            MOV dword ptr FS:[0x0],ECX
0041b1a9  59                        POP ECX
0041b1aa  5f                        POP EDI
0041b1ab  5e                        POP ESI
0041b1ac  5b                        POP EBX
0041b1ad  8be5                      MOV ESP,EBP
0041b1af  5d                        POP EBP
0041b1b0  c21800                    RET 0x18
0041b1b3  8b464c                    MOV EAX,dword ptr [ESI + 0x4c]
0041b1b6  c7467c00000000            MOV dword ptr [ESI + 0x7c],0x0
0041b1bd  85d2                      TEST EDX,EDX
0041b1bf  0f89ec000000              JNS 0x0041b2b1
0041b1c5  8bd3                      MOV EDX,EBX
0041b1c7  33db                      XOR EBX,EBX
0041b1c9  85d2                      TEST EDX,EDX
0041b1cb  796e                      JNS 0x0041b23b
0041b1cd  85c0                      TEST EAX,EAX
0041b1cf  0f84d0010000              JZ 0x0041b3a5
0041b1d5  8b4644                    MOV EAX,dword ptr [ESI + 0x44]
0041b1d8  8b3c98                    MOV EDI,dword ptr [EAX + EBX*0x4]
0041b1db  394f28                    CMP dword ptr [EDI + 0x28],ECX
0041b1de  7550                      JNZ 0x0041b230
0041b1e0  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0041b1e6  33c0                      XOR EAX,EAX
0041b1e8  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
0041b1ee  81e100400000              AND ECX,0x4000
0041b1f4  0bc1                      OR EAX,ECX
0041b1f6  7535                      JNZ 0x0041b22d
0041b1f8  38451c                    CMP byte ptr [EBP + 0x1c],AL
0041b1fb  740a                      JZ 0x0041b207
0041b1fd  81e200000020              AND EDX,0x20000000
0041b203  0bd0                      OR EDX,EAX
0041b205  7526                      JNZ 0x0041b22d
0041b207  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b20a  8d4101                    LEA EAX,[ECX + 0x1]
0041b20d  3b4678                    CMP EAX,dword ptr [ESI + 0x78]
0041b210  7612                      JBE 0x0041b224
0041b212  6840b7b100                PUSH 0xb1b740
0041b217  6a10                      PUSH 0x10
0041b219  e8a2605f00                CALL 0x00a112c0
0041b21e  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b221  83c408                    ADD ESP,0x8
0041b224  8b4674                    MOV EAX,dword ptr [ESI + 0x74]
0041b227  893c88                    MOV dword ptr [EAX + ECX*0x4],EDI
0041b22a  ff467c                    INC dword ptr [ESI + 0x7c]
0041b22d  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0041b230  43                        INC EBX
0041b231  3b5e4c                    CMP EBX,dword ptr [ESI + 0x4c]
0041b234  729f                      JC 0x0041b1d5
0041b236  e96a010000                JMP 0x0041b3a5
0041b23b  85c0                      TEST EAX,EAX
0041b23d  0f8462010000              JZ 0x0041b3a5
0041b243  8b4644                    MOV EAX,dword ptr [ESI + 0x44]
0041b246  8b3c98                    MOV EDI,dword ptr [EAX + EBX*0x4]
0041b249  394f28                    CMP dword ptr [EDI + 0x28],ECX
0041b24c  7558                      JNZ 0x0041b2a6
0041b24e  395730                    CMP dword ptr [EDI + 0x30],EDX
0041b251  7553                      JNZ 0x0041b2a6
0041b253  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0041b259  33c0                      XOR EAX,EAX
0041b25b  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
0041b261  81e100400000              AND ECX,0x4000
0041b267  0bc1                      OR EAX,ECX
0041b269  7535                      JNZ 0x0041b2a0
0041b26b  38451c                    CMP byte ptr [EBP + 0x1c],AL
0041b26e  740a                      JZ 0x0041b27a
0041b270  81e200000020              AND EDX,0x20000000
0041b276  0bd0                      OR EDX,EAX
0041b278  7526                      JNZ 0x0041b2a0
0041b27a  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b27d  8d4101                    LEA EAX,[ECX + 0x1]
0041b280  3b4678                    CMP EAX,dword ptr [ESI + 0x78]
0041b283  7612                      JBE 0x0041b297
0041b285  6840b7b100                PUSH 0xb1b740
0041b28a  6a10                      PUSH 0x10
0041b28c  e82f605f00                CALL 0x00a112c0
0041b291  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b294  83c408                    ADD ESP,0x8
0041b297  8b4674                    MOV EAX,dword ptr [ESI + 0x74]
0041b29a  893c88                    MOV dword ptr [EAX + ECX*0x4],EDI
0041b29d  ff467c                    INC dword ptr [ESI + 0x7c]
0041b2a0  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0041b2a3  8b5514                    MOV EDX,dword ptr [EBP + 0x14]
0041b2a6  43                        INC EBX
0041b2a7  3b5e4c                    CMP EBX,dword ptr [ESI + 0x4c]
0041b2aa  7297                      JC 0x0041b243
0041b2ac  e9f4000000                JMP 0x0041b3a5
0041b2b1  85db                      TEST EBX,EBX
0041b2b3  7979                      JNS 0x0041b32e
0041b2b5  33db                      XOR EBX,EBX
0041b2b7  85c0                      TEST EAX,EAX
0041b2b9  0f84e6000000              JZ 0x0041b3a5
0041b2bf  90                        NOP
0041b2c0  8b4644                    MOV EAX,dword ptr [ESI + 0x44]
0041b2c3  8b3c98                    MOV EDI,dword ptr [EAX + EBX*0x4]
0041b2c6  394f28                    CMP dword ptr [EDI + 0x28],ECX
0041b2c9  7558                      JNZ 0x0041b323
0041b2cb  39572c                    CMP dword ptr [EDI + 0x2c],EDX
0041b2ce  7553                      JNZ 0x0041b323
0041b2d0  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0041b2d6  33c0                      XOR EAX,EAX
0041b2d8  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
0041b2de  81e100400000              AND ECX,0x4000
0041b2e4  0bc1                      OR EAX,ECX
0041b2e6  7535                      JNZ 0x0041b31d
0041b2e8  38451c                    CMP byte ptr [EBP + 0x1c],AL
0041b2eb  740a                      JZ 0x0041b2f7
0041b2ed  81e200000020              AND EDX,0x20000000
0041b2f3  0bd0                      OR EDX,EAX
0041b2f5  7526                      JNZ 0x0041b31d
0041b2f7  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b2fa  8d4101                    LEA EAX,[ECX + 0x1]
0041b2fd  3b4678                    CMP EAX,dword ptr [ESI + 0x78]
0041b300  7612                      JBE 0x0041b314
0041b302  6840b7b100                PUSH 0xb1b740
0041b307  6a10                      PUSH 0x10
0041b309  e8b25f5f00                CALL 0x00a112c0
0041b30e  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b311  83c408                    ADD ESP,0x8
0041b314  8b4674                    MOV EAX,dword ptr [ESI + 0x74]
0041b317  893c88                    MOV dword ptr [EAX + ECX*0x4],EDI
0041b31a  ff467c                    INC dword ptr [ESI + 0x7c]
0041b31d  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0041b320  8b5510                    MOV EDX,dword ptr [EBP + 0x10]
0041b323  43                        INC EBX
0041b324  3b5e4c                    CMP EBX,dword ptr [ESI + 0x4c]
0041b327  7297                      JC 0x0041b2c0
0041b329  e977000000                JMP 0x0041b3a5
0041b32e  33db                      XOR EBX,EBX
0041b330  85c0                      TEST EAX,EAX
0041b332  7471                      JZ 0x0041b3a5
0041b334  8b4644                    MOV EAX,dword ptr [ESI + 0x44]
0041b337  8b3c98                    MOV EDI,dword ptr [EAX + EBX*0x4]
0041b33a  394f28                    CMP dword ptr [EDI + 0x28],ECX
0041b33d  7560                      JNZ 0x0041b39f
0041b33f  39572c                    CMP dword ptr [EDI + 0x2c],EDX
0041b342  755b                      JNZ 0x0041b39f
0041b344  8b4514                    MOV EAX,dword ptr [EBP + 0x14]
0041b347  394730                    CMP dword ptr [EDI + 0x30],EAX
0041b34a  7553                      JNZ 0x0041b39f
0041b34c  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0041b352  33c0                      XOR EAX,EAX
0041b354  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
0041b35a  81e100400000              AND ECX,0x4000
0041b360  0bc1                      OR EAX,ECX
0041b362  7535                      JNZ 0x0041b399
0041b364  38451c                    CMP byte ptr [EBP + 0x1c],AL
0041b367  740a                      JZ 0x0041b373
0041b369  81e200000020              AND EDX,0x20000000
0041b36f  0bd0                      OR EDX,EAX
0041b371  7526                      JNZ 0x0041b399
0041b373  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b376  8d4101                    LEA EAX,[ECX + 0x1]
0041b379  3b4678                    CMP EAX,dword ptr [ESI + 0x78]
0041b37c  7612                      JBE 0x0041b390
0041b37e  6840b7b100                PUSH 0xb1b740
0041b383  6a10                      PUSH 0x10
0041b385  e8365f5f00                CALL 0x00a112c0
0041b38a  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0041b38d  83c408                    ADD ESP,0x8
0041b390  8b4674                    MOV EAX,dword ptr [ESI + 0x74]
0041b393  893c88                    MOV dword ptr [EAX + ECX*0x4],EDI
0041b396  ff467c                    INC dword ptr [ESI + 0x7c]
0041b399  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0041b39c  8b5510                    MOV EDX,dword ptr [EBP + 0x10]
0041b39f  43                        INC EBX
0041b3a0  3b5e4c                    CMP EBX,dword ptr [ESI + 0x4c]
0041b3a3  728f                      JC 0x0041b334
0041b3a5  ff767c                    PUSH dword ptr [ESI + 0x7c]
0041b3a8  8d8680000000              LEA EAX,[ESI + 0x80]
0041b3ae  50                        PUSH EAX
0041b3af  8d4dd8                    LEA ECX,[EBP + -0x28]
0041b3b2  e889c1ffff                CALL 0x00417540
0041b3b7  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0041b3be  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
0041b3c1  3945e0                    CMP dword ptr [EBP + -0x20],EAX
0041b3c4  7312                      JNC 0x0041b3d8
0041b3c6  68c8b7b100                PUSH 0xb1b7c8
0041b3cb  6a10                      PUSH 0x10
0041b3cd  e8ee5e5f00                CALL 0x00a112c0
0041b3d2  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
0041b3d5  83c408                    ADD ESP,0x8
0041b3d8  8b7ddc                    MOV EDI,dword ptr [EBP + -0x24]
0041b3db  c1e002                    SHL EAX,0x2
0041b3de  50                        PUSH EAX
0041b3df  ff7674                    PUSH dword ptr [ESI + 0x74]
0041b3e2  57                        PUSH EDI
0041b3e3  e8f7516d00                CALL 0x00af05df
0041b3e8  8b5e7c                    MOV EBX,dword ptr [ESI + 0x7c]
0041b3eb  83c40c                    ADD ESP,0xc
0041b3ee  807d1800                  CMP byte ptr [EBP + 0x18],0x0
0041b3f2  895d0c                    MOV dword ptr [EBP + 0xc],EBX
0041b3f5  895de4                    MOV dword ptr [EBP + -0x1c],EBX
0041b3f8  741e                      JZ 0x0041b418
0041b3fa  8d45bc                    LEA EAX,[EBP + -0x44]
0041b3fd  8d8ee0000000              LEA ECX,[ESI + 0xe0]
0041b403  50                        PUSH EAX
0041b404  e8e7120000                CALL 0x0041c6f0
0041b409  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0041b40c  c60001                    MOV byte ptr [EAX],0x1
0041b40f  897804                    MOV dword ptr [EAX + 0x4],EDI
0041b412  894808                    MOV dword ptr [EAX + 0x8],ECX
0041b415  89580c                    MOV dword ptr [EAX + 0xc],EBX
0041b418  e873d06400                CALL 0x00a68490
0041b41d  8bda                      MOV EBX,EDX
0041b41f  8bc8                      MOV ECX,EAX
0041b421  badb34b6d7                MOV EDX,0xd7b634db
0041b426  895d1c                    MOV dword ptr [EBP + 0x1c],EBX
0041b429  f7e2                      MUL EDX
0041b42b  bf82de1b43                MOV EDI,0x431bde82
0041b430  8945d0                    MOV dword ptr [EBP + -0x30],EAX
0041b433  8bf2                      MOV ESI,EDX
0041b435  8bc1                      MOV EAX,ECX
0041b437  b9db34b6d7                MOV ECX,0xd7b634db
0041b43c  f7e7                      MUL EDI
0041b43e  8bf8                      MOV EDI,EAX
0041b440  895518                    MOV dword ptr [EBP + 0x18],EDX
0041b443  8bc3                      MOV EAX,EBX
0041b445  f7e1                      MUL ECX
0041b447  8bc8                      MOV ECX,EAX
0041b449  8bda                      MOV EBX,EDX
0041b44b  8b451c                    MOV EAX,dword ptr [EBP + 0x1c]
0041b44e  ba82de1b43                MOV EDX,0x431bde82
0041b453  f7e2                      MUL EDX
0041b455  03ce                      ADD ECX,ESI
0041b457  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
0041b45a  89451c                    MOV dword ptr [EBP + 0x1c],EAX
0041b45d  83d300                    ADC EBX,0x0
0041b460  03f9                      ADD EDI,ECX
0041b462  8b4d18                    MOV ECX,dword ptr [EBP + 0x18]
0041b465  83d100                    ADC ECX,0x0
0041b468  897dd0                    MOV dword ptr [EBP + -0x30],EDI
0041b46b  33c0                      XOR EAX,EAX
0041b46d  c60601                    MOV byte ptr [ESI],0x1
0041b470  03d9                      ADD EBX,ECX
0041b472  8b4d1c                    MOV ECX,dword ptr [EBP + 0x1c]
0041b475  13c0                      ADC EAX,EAX
0041b477  03cb                      ADD ECX,EBX
0041b479  13d0                      ADC EDX,EAX
0041b47b  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0041b47e  0facd112                  SHRD ECX,EDX,0x12
0041b482  894608                    MOV dword ptr [ESI + 0x8],EAX
0041b485  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
0041b488  c1ea12                    SHR EDX,0x12
0041b48b  2b4df0                    SUB ECX,dword ptr [EBP + -0x10]
0041b48e  89460c                    MOV dword ptr [ESI + 0xc],EAX
0041b491  1b55ec                    SBB EDX,dword ptr [EBP + -0x14]
0041b494  010d489cc700              ADD dword ptr [0x00c79c48],ECX
0041b49a  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
0041b49d  11154c9cc700              ADC dword ptr [0x00c79c4c],EDX
0041b4a3  807dd800                  CMP byte ptr [EBP + -0x28],0x0
0041b4a7  894e04                    MOV dword ptr [ESI + 0x4],ECX
0041b4aa  752c                      JNZ 0x0041b4d8
0041b4ac  a178dec700                MOV EAX,[0x00c7de78]
0041b4b1  85c0                      TEST EAX,EAX
0041b4b3  7405                      JZ 0x0041b4ba
0041b4b5  83c030                    ADD EAX,0x30
0041b4b8  eb05                      JMP 0x0041b4bf
0041b4ba  b818f6c700                MOV EAX,0xc7f618
0041b4bf  85c9                      TEST ECX,ECX
0041b4c1  7415                      JZ 0x0041b4d8
0041b4c3  8d51fc                    LEA EDX,[ECX + -0x4]
0041b4c6  8b0a                      MOV ECX,dword ptr [EDX]
0041b4c8  2908                      SUB dword ptr [EAX],ECX
0041b4ca  52                        PUSH EDX
0041b4cb  83580400                  SBB dword ptr [EAX + 0x4],0x0
0041b4cf  ff15dc87b100              CALL dword ptr [0x00b187dc]
0041b4d5  83c404                    ADD ESP,0x4
0041b4d8  8bc6                      MOV EAX,ESI
0041b4da  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0041b4dd  64890d00000000            MOV dword ptr FS:[0x0],ECX
0041b4e4  59                        POP ECX
0041b4e5  5f                        POP EDI
0041b4e6  5e                        POP ESI
0041b4e7  5b                        POP EBX
0041b4e8  8be5                      MOV ESP,EBP
0041b4ea  5d                        POP EBP
0041b4eb  c21800                    RET 0x18
