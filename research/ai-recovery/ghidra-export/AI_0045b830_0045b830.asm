; J460 NPC AI 0x0045b830 AI_0045b830
; types=81
; identities=81.0.0,81.1.0
; entry=0045b830
0045b830  53                        PUSH EBX
0045b831  8bdc                      MOV EBX,ESP
0045b833  83ec08                    SUB ESP,0x8
0045b836  83e4f8                    AND ESP,0xfffffff8
0045b839  83c404                    ADD ESP,0x4
0045b83c  55                        PUSH EBP
0045b83d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0045b840  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0045b844  8bec                      MOV EBP,ESP
0045b846  6aff                      PUSH -0x1
0045b848  681526af00                PUSH 0xaf2615
0045b84d  64a100000000              MOV EAX,FS:[0x0]
0045b853  50                        PUSH EAX
0045b854  53                        PUSH EBX
0045b855  81ec30010000              SUB ESP,0x130
0045b85b  a1b493bf00                MOV EAX,[0x00bf93b4]
0045b860  33c5                      XOR EAX,EBP
0045b862  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0045b865  56                        PUSH ESI
0045b866  57                        PUSH EDI
0045b867  50                        PUSH EAX
0045b868  8d45f4                    LEA EAX,[EBP + -0xc]
0045b86b  64a300000000              MOV FS:[0x0],EAX
0045b871  8bf9                      MOV EDI,ECX
0045b873  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0045b87a  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0045b87d  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0045b883  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0045b886  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
0045b88c  0f84a6140000              JZ 0x0045cd38
0045b892  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045b896  8d4f78                    LEA ECX,[EDI + 0x78]
0045b899  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0045b8a1  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
0045b8a7  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
0045b8af  0f840c020000              JZ 0x0045bac1
0045b8b5  8bf1                      MOV ESI,ECX
0045b8b7  6848ddb100                PUSH 0xb1dd48
0045b8bc  89b5d0feffff              MOV dword ptr [EBP + 0xfffffed0],ESI
0045b8c2  e809f5faff                CALL 0x0040add0
0045b8c7  8bce                      MOV ECX,ESI
0045b8c9  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
0045b8cf  84c0                      TEST AL,AL
0045b8d1  0f8496000000              JZ 0x0045b96d
0045b8d7  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0045b8df  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0045b8e5  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0045b8ed  83f812                    CMP EAX,0x12
0045b8f0  750a                      JNZ 0x0045b8fc
0045b8f2  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0045b8fa  eb0d                      JMP 0x0045b909
0045b8fc  83f813                    CMP EAX,0x13
0045b8ff  7510                      JNZ 0x0045b911
0045b901  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0045b909  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0045b911  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045b917  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0045b91d  c785e4feffffc4030000      MOV dword ptr [EBP + 0xfffffee4],0x3c4
0045b927  e854ae4f00                CALL 0x00956780
0045b92c  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0045b934  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045b93a  83ec08                    SUB ESP,0x8
0045b93d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045b945  f30f110424                MOVSS dword ptr [ESP],XMM0
0045b94a  6a00                      PUSH 0x0
0045b94c  6a02                      PUSH 0x2
0045b94e  51                        PUSH ECX
0045b94f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b956  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
0045b95c  e8cf224d00                CALL 0x0092dc30
0045b961  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
0045b967  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
0045b96d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045b971  0f844a010000              JZ 0x0045bac1
0045b977  6868ddb100                PUSH 0xb1dd68
0045b97c  e84ff4faff                CALL 0x0040add0
0045b981  84c0                      TEST AL,AL
0045b983  0f848a000000              JZ 0x0045ba13
0045b989  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0045b991  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0045b997  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0045b99f  83f812                    CMP EAX,0x12
0045b9a2  750a                      JNZ 0x0045b9ae
0045b9a4  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0045b9ac  eb0d                      JMP 0x0045b9bb
0045b9ae  83f813                    CMP EAX,0x13
0045b9b1  7510                      JNZ 0x0045b9c3
0045b9b3  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0045b9bb  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0045b9c3  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045b9c9  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0045b9cf  c785d0feffffc6030000      MOV dword ptr [EBP + 0xfffffed0],0x3c6
0045b9d9  e8a2ad4f00                CALL 0x00956780
0045b9de  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0045b9e6  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045b9ec  83ec08                    SUB ESP,0x8
0045b9ef  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045b9f7  f30f110424                MOVSS dword ptr [ESP],XMM0
0045b9fc  6a00                      PUSH 0x0
0045b9fe  6a02                      PUSH 0x2
0045ba00  51                        PUSH ECX
0045ba01  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ba08  ffb5d0feffff              PUSH dword ptr [EBP + 0xfffffed0]
0045ba0e  e81d224d00                CALL 0x0092dc30
0045ba13  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045ba17  0f84a4000000              JZ 0x0045bac1
0045ba1d  8bb5e0feffff              MOV ESI,dword ptr [EBP + 0xfffffee0]
0045ba23  8bce                      MOV ECX,ESI
0045ba25  685cddb100                PUSH 0xb1dd5c
0045ba2a  e8a1f3faff                CALL 0x0040add0
0045ba2f  84c0                      TEST AL,AL
0045ba31  0f8490000000              JZ 0x0045bac7
0045ba37  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0045ba3f  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0045ba45  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0045ba4d  83f812                    CMP EAX,0x12
0045ba50  750a                      JNZ 0x0045ba5c
0045ba52  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0045ba5a  eb0d                      JMP 0x0045ba69
0045ba5c  83f813                    CMP EAX,0x13
0045ba5f  7510                      JNZ 0x0045ba71
0045ba61  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0045ba69  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0045ba71  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045ba77  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0045ba7d  c785d0feffffc7030000      MOV dword ptr [EBP + 0xfffffed0],0x3c7
0045ba87  e8f4ac4f00                CALL 0x00956780
0045ba8c  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0045ba94  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045ba9a  83ec08                    SUB ESP,0x8
0045ba9d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045baa5  f30f110424                MOVSS dword ptr [ESP],XMM0
0045baaa  6a00                      PUSH 0x0
0045baac  6a02                      PUSH 0x2
0045baae  51                        PUSH ECX
0045baaf  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bab6  ffb5d0feffff              PUSH dword ptr [EBP + 0xfffffed0]
0045babc  e86f214d00                CALL 0x0092dc30
0045bac1  8bb5e0feffff              MOV ESI,dword ptr [EBP + 0xfffffee0]
0045bac7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045bacf  8d8780030000              LEA EAX,[EDI + 0x380]
0045bad5  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0045badd  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
0045bae5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045baed  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0045baf1  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0045baf9  0f2fc8                    COMISS XMM1,XMM0
0045bafc  767d                      JBE 0x0045bb7b
0045bafe  8b85dcfeffff              MOV EAX,dword ptr [EBP + 0xfffffedc]
0045bb04  3985ecfeffff              CMP dword ptr [EBP + 0xfffffeec],EAX
0045bb0a  746f                      JZ 0x0045bb7b
0045bb0c  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0045bb10  7569                      JNZ 0x0045bb7b
0045bb12  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
0045bb19  7460                      JZ 0x0045bb7b
0045bb1b  51                        PUSH ECX
0045bb1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bb23  6a00                      PUSH 0x0
0045bb25  6a02                      PUSH 0x2
0045bb27  51                        PUSH ECX
0045bb28  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bb2f  8bcf                      MOV ECX,EDI
0045bb31  6a75                      PUSH 0x75
0045bb33  e868b02700                CALL 0x006d6ba0
0045bb38  8d8f80030000              LEA ECX,[EDI + 0x380]
0045bb3e  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0045bb48  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045bb52  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0045bb58  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0045bb5c  0f2f85ccfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffecc]
0045bb63  c785d0feffff0000803f      MOV dword ptr [EBP + 0xfffffed0],0x3f800000
0045bb6d  0f47c1                    CMOVA EAX,ECX
0045bb70  8b00                      MOV EAX,dword ptr [EAX]
0045bb72  8901                      MOV dword ptr [ECX],EAX
0045bb74  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0045bb7b  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0045bb81  83f904                    CMP ECX,0x4
0045bb84  0f8541040000              JNZ 0x0045bfcb
0045bb8a  8d8f14040000              LEA ECX,[EDI + 0x414]
0045bb90  6a00                      PUSH 0x0
0045bb92  51                        PUSH ECX
0045bb93  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bb9a  e8a1973800                CALL 0x007e5340
0045bb9f  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0045bba6  c745b804000000            MOV dword ptr [EBP + -0x48],0x4
0045bbad  c745a857616c6b            MOV dword ptr [EBP + -0x58],0x6b6c6157
0045bbb4  c645ac00                  MOV byte ptr [EBP + -0x54],0x0
0045bbb8  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0045bbbf  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0045bbc6  c745e404000000            MOV dword ptr [EBP + -0x1c],0x4
0045bbcd  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
0045bbd4  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0045bbd8  51                        PUSH ECX
0045bbd9  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0045bbdd  8d45a8                    LEA EAX,[EBP + -0x58]
0045bbe0  c7042400004040            MOV dword ptr [ESP],0x40400000
0045bbe7  8bcf                      MOV ECX,EDI
0045bbe9  50                        PUSH EAX
0045bbea  8d45d4                    LEA EAX,[EBP + -0x2c]
0045bbed  50                        PUSH EAX
0045bbee  e83d572600                CALL 0x006c1330
0045bbf3  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0045bbf7  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0045bbfa  83fa10                    CMP EDX,0x10
0045bbfd  7228                      JC 0x0045bc27
0045bbff  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0045bc02  42                        INC EDX
0045bc03  8bc1                      MOV EAX,ECX
0045bc05  81fa00100000              CMP EDX,0x1000
0045bc0b  7210                      JC 0x0045bc1d
0045bc0d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045bc10  83c223                    ADD EDX,0x23
0045bc13  2bc1                      SUB EAX,ECX
0045bc15  83c0fc                    ADD EAX,-0x4
0045bc18  83f81f                    CMP EAX,0x1f
0045bc1b  7749                      JA 0x0045bc66
0045bc1d  52                        PUSH EDX
0045bc1e  51                        PUSH ECX
0045bc1f  e838356900                CALL 0x00aef15c
0045bc24  83c408                    ADD ESP,0x8
0045bc27  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0045bc2e  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
0045bc31  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045bc38  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0045bc3f  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0045bc43  83fa10                    CMP EDX,0x10
0045bc46  722e                      JC 0x0045bc76
0045bc48  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0045bc4b  42                        INC EDX
0045bc4c  8bc1                      MOV EAX,ECX
0045bc4e  81fa00100000              CMP EDX,0x1000
0045bc54  7216                      JC 0x0045bc6c
0045bc56  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045bc59  83c223                    ADD EDX,0x23
0045bc5c  2bc1                      SUB EAX,ECX
0045bc5e  83c0fc                    ADD EAX,-0x4
0045bc61  83f81f                    CMP EAX,0x1f
0045bc64  7606                      JBE 0x0045bc6c
0045bc66  ff159488b100              CALL dword ptr [0x00b18894]
0045bc6c  52                        PUSH EDX
0045bc6d  51                        PUSH ECX
0045bc6e  e8e9346900                CALL 0x00aef15c
0045bc73  83c408                    ADD ESP,0x8
0045bc76  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045bc7c  33c0                      XOR EAX,EAX
0045bc7e  81e100000010              AND ECX,0x10000000
0045bc84  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0045bc8b  0bc1                      OR EAX,ECX
0045bc8d  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0045bc94  c645a800                  MOV byte ptr [EBP + -0x58],0x0
0045bc98  7418                      JZ 0x0045bcb2
0045bc9a  a17816c700                MOV EAX,[0x00c71678]
0045bc9f  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045bca5  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045bca8  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0045bcac  0f8590100000              JNZ 0x0045cd42
0045bcb2  e8a9322900                CALL 0x006eef60
0045bcb7  33d2                      XOR EDX,EDX
0045bcb9  b903000000                MOV ECX,0x3
0045bcbe  f7f1                      DIV ECX
0045bcc0  85d2                      TEST EDX,EDX
0045bcc2  7412                      JZ 0x0045bcd6
0045bcc4  8b85dcfeffff              MOV EAX,dword ptr [EBP + 0xfffffedc]
0045bcca  3985ecfeffff              CMP dword ptr [EBP + 0xfffffeec],EAX
0045bcd0  0f856c100000              JNZ 0x0045cd42
0045bcd6  8bcf                      MOV ECX,EDI
0045bcd8  e8632b2600                CALL 0x006be840
0045bcdd  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0045bce5  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045bced  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0045bcf5  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0045bcfd  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
0045bd05  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0045bd0d  e84e322900                CALL 0x006eef60
0045bd12  33d2                      XOR EDX,EDX
0045bd14  b950000000                MOV ECX,0x50
0045bd19  f7f1                      DIV ECX
0045bd1b  85d2                      TEST EDX,EDX
0045bd1d  753a                      JNZ 0x0045bd59
0045bd1f  39572c                    CMP dword ptr [EDI + 0x2c],EDX
0045bd22  7535                      JNZ 0x0045bd59
0045bd24  51                        PUSH ECX
0045bd25  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bd2c  52                        PUSH EDX
0045bd2d  6a02                      PUSH 0x2
0045bd2f  51                        PUSH ECX
0045bd30  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bd37  8bcf                      MOV ECX,EDI
0045bd39  6a7a                      PUSH 0x7a
0045bd3b  e860ae2700                CALL 0x006d6ba0
0045bd40  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0045bd4a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045bd54  e9e90f0000                JMP 0x0045cd42
0045bd59  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045bd5d  be14000000                MOV ESI,0x14
0045bd62  0f85f4010000              JNZ 0x0045bf5c
0045bd68  e8f3312900                CALL 0x006eef60
0045bd6d  33d2                      XOR EDX,EDX
0045bd6f  f7f6                      DIV ESI
0045bd71  85d2                      TEST EDX,EDX
0045bd73  755d                      JNZ 0x0045bdd2
0045bd75  f30f109de0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee0]
0045bd7d  f30f100d40cbba00          MOVSS XMM1,dword ptr [0x00bacb40]
0045bd85  0f28c3                    MOVAPS XMM0,XMM3
0045bd88  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
0045bd90  0f54c1                    ANDPS XMM0,XMM1
0045bd93  0f2fe0                    COMISS XMM4,XMM0
0045bd96  f30f1095e4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee4]
0045bd9e  770b                      JA 0x0045bdab
0045bda0  0f28c2                    MOVAPS XMM0,XMM2
0045bda3  0f54c1                    ANDPS XMM0,XMM1
0045bda6  0f2fe0                    COMISS XMM4,XMM0
0045bda9  7627                      JBE 0x0045bdd2
0045bdab  0f28ca                    MOVAPS XMM1,XMM2
0045bdae  0f28c3                    MOVAPS XMM0,XMM3
0045bdb1  f30f59ca                  MULSS XMM1,XMM2
0045bdb5  f30f59c3                  MULSS XMM0,XMM3
0045bdb9  f30f58c1                  ADDSS XMM0,XMM1
0045bdbd  e88e9cfdff                CALL 0x00435a50
0045bdc2  0f28c8                    MOVAPS XMM1,XMM0
0045bdc5  f30f100554abba00          MOVSS XMM0,dword ptr [0x00baab54]
0045bdcd  0f2fc1                    COMISS XMM0,XMM1
0045bdd0  7716                      JA 0x0045bde8
0045bdd2  e889312900                CALL 0x006eef60
0045bdd7  33d2                      XOR EDX,EDX
0045bdd9  b9c8000000                MOV ECX,0xc8
0045bdde  f7f1                      DIV ECX
0045bde0  85d2                      TEST EDX,EDX
0045bde2  0f8574010000              JNZ 0x0045bf5c
0045bde8  51                        PUSH ECX
0045bde9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bdf0  6a00                      PUSH 0x0
0045bdf2  6a02                      PUSH 0x2
0045bdf4  51                        PUSH ECX
0045bdf5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045bdfc  8bcf                      MOV ECX,EDI
0045bdfe  6a7a                      PUSH 0x7a
0045be00  e89bad2700                CALL 0x006d6ba0
0045be05  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045be09  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0045be13  7548                      JNZ 0x0045be5d
0045be15  e846312900                CALL 0x006eef60
0045be1a  a803                      TEST AL,0x3
0045be1c  750a                      JNZ 0x0045be28
0045be1e  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
0045be28  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045be2c  752f                      JNZ 0x0045be5d
0045be2e  83bf640b00000a            CMP dword ptr [EDI + 0xb64],0xa
0045be35  7526                      JNZ 0x0045be5d
0045be37  e824312900                CALL 0x006eef60
0045be3c  a801                      TEST AL,0x1
0045be3e  7416                      JZ 0x0045be56
0045be40  a17816c700                MOV EAX,[0x00c71678]
0045be45  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0045be4b  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0045be51  83f83c                    CMP EAX,0x3c
0045be54  7d07                      JGE 0x0045be5d
0045be56  b801000000                MOV EAX,0x1
0045be5b  eb02                      JMP 0x0045be5f
0045be5d  33c0                      XOR EAX,EAX
0045be5f  33c9                      XOR ECX,ECX
0045be61  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0045be67  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0045be6d  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
0045be73  c785c8feffff000020c2      MOV dword ptr [EBP + 0xfffffec8],0xc2200000
0045be7d  8d4120                    LEA EAX,[ECX + 0x20]
0045be80  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045be84  0f57c0                    XORPS XMM0,XMM0
0045be87  be16000000                MOV ESI,0x16
0045be8c  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0045be93  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0045be97  0f44f0                    CMOVZ ESI,EAX
0045be9a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0045bea1  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
0045bea8  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045beaf  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0045beb6  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0045beba  740a                      JZ 0x0045bec6
0045bebc  f30f100d10a9ba00          MOVSS XMM1,dword ptr [0x00baa910]
0045bec4  eb03                      JMP 0x0045bec9
0045bec6  0f57c9                    XORPS XMM1,XMM1
0045bec9  660f6ec1                  MOVD XMM0,ECX
0045becd  0f5bc0                    CVTDQ2PS XMM0,XMM0
0045bed0  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0045bed8  f30f58c1                  ADDSS XMM0,XMM1
0045bedc  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0045bee4  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0045beec  e84f16fcff                CALL 0x0041d540
0045bef1  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0045bef9  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0045bf01  e81a16fcff                CALL 0x0041d520
0045bf06  51                        PUSH ECX
0045bf07  c7042400008040            MOV dword ptr [ESP],0x40800000
0045bf0e  8d45c0                    LEA EAX,[EBP + -0x40]
0045bf11  50                        PUSH EAX
0045bf12  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0045bf18  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0045bf20  56                        PUSH ESI
0045bf21  50                        PUSH EAX
0045bf22  8d95c4feffff              LEA EDX,[EBP + 0xfffffec4]
0045bf28  8bcf                      MOV ECX,EDI
0045bf2a  e861f91a00                CALL 0x0060b890
0045bf2f  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
0045bf35  83c410                    ADD ESP,0x10
0045bf38  41                        INC ECX
0045bf39  b820000000                MOV EAX,0x20
0045bf3e  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0045bf44  83f904                    CMP ECX,0x4
0045bf47  0f8c33ffffff              JL 0x0045be80
0045bf4d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045bf57  e9e60d0000                JMP 0x0045cd42
0045bf5c  e8ff2f2900                CALL 0x006eef60
0045bf61  33d2                      XOR EDX,EDX
0045bf63  f7f6                      DIV ESI
0045bf65  85d2                      TEST EDX,EDX
0045bf67  0f85d50d0000              JNZ 0x0045cd42
0045bf6d  f30f108de0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee0]
0045bf75  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0045bf7d  f30f59c0                  MULSS XMM0,XMM0
0045bf81  f30f59c9                  MULSS XMM1,XMM1
0045bf85  f30f58c1                  ADDSS XMM0,XMM1
0045bf89  e8c29afdff                CALL 0x00435a50
0045bf8e  f30f100dc0aaba00          MOVSS XMM1,dword ptr [0x00baaac0]
0045bf96  0f2fc8                    COMISS XMM1,XMM0
0045bf99  0f86a30d0000              JBE 0x0045cd42
0045bf9f  0f57c0                    XORPS XMM0,XMM0
0045bfa2  0f2f85e0feffff            COMISS XMM0,dword ptr [EBP + 0xfffffee0]
0045bfa9  0f97c0                    SETA AL
0045bfac  888748010000              MOV byte ptr [EDI + 0x148],AL
0045bfb2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045bfbc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045bfc6  e9770d0000                JMP 0x0045cd42
0045bfcb  83f908                    CMP ECX,0x8
0045bfce  0f8562030000              JNZ 0x0045c336
0045bfd4  ff8710040000              INC dword ptr [EDI + 0x410]
0045bfda  8d4f48                    LEA ECX,[EDI + 0x48]
0045bfdd  6a00                      PUSH 0x0
0045bfdf  68ccd2b100                PUSH 0xb1d2cc
0045bfe4  e897e3faff                CALL 0x0040a380
0045bfe9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045bfed  0f84a3010000              JZ 0x0045c196
0045bff3  68dcd2b100                PUSH 0xb1d2dc
0045bff8  8bce                      MOV ECX,ESI
0045bffa  e8d1edfaff                CALL 0x0040add0
0045bfff  84c0                      TEST AL,AL
0045c001  751e                      JNZ 0x0045c021
0045c003  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045c007  0f8489010000              JZ 0x0045c196
0045c00d  687cddb100                PUSH 0xb1dd7c
0045c012  8bce                      MOV ECX,ESI
0045c014  e8b7edfaff                CALL 0x0040add0
0045c019  84c0                      TEST AL,AL
0045c01b  0f8462010000              JZ 0x0045c183
0045c021  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045c025  7504                      JNZ 0x0045c02b
0045c027  32c0                      XOR AL,AL
0045c029  eb0c                      JMP 0x0045c037
0045c02b  68dcd2b100                PUSH 0xb1d2dc
0045c030  8bce                      MOV ECX,ESI
0045c032  e899edfaff                CALL 0x0040add0
0045c037  51                        PUSH ECX
0045c038  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045c03f  6a00                      PUSH 0x0
0045c041  6a02                      PUSH 0x2
0045c043  51                        PUSH ECX
0045c044  0fb6c8                    MOVZX ECX,AL
0045c047  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045c04e  8885ebfeffff              MOV byte ptr [EBP + 0xfffffeeb],AL
0045c054  8d0c4d6a000000            LEA ECX,[ECX*0x2 + 0x6a]
0045c05b  51                        PUSH ECX
0045c05c  8bcf                      MOV ECX,EDI
0045c05e  e83dab2700                CALL 0x006d6ba0
0045c063  8bcf                      MOV ECX,EDI
0045c065  e8d6272600                CALL 0x006be840
0045c06a  8bcf                      MOV ECX,EDI
0045c06c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0045c074  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0045c07c  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045c084  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0045c08c  e8af272600                CALL 0x006be840
0045c091  8db73c030000              LEA ESI,[EDI + 0x33c]
0045c097  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
0045c09f  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0045c0a7  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
0045c0af  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0045c0b7  f30f588decfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffeec]
0045c0bf  f30f5895dcfeffff          ADDSS XMM2,dword ptr [EBP + 0xfffffedc]
0045c0c7  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0045c0cb  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
0045c0d0  0f28c1                    MOVAPS XMM0,XMM1
0045c0d3  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0045c0db  f30f59c1                  MULSS XMM0,XMM1
0045c0df  0f28ca                    MOVAPS XMM1,XMM2
0045c0e2  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
0045c0ea  f30f59ca                  MULSS XMM1,XMM2
0045c0ee  f30f58c1                  ADDSS XMM0,XMM1
0045c0f2  e85999fdff                CALL 0x00435a50
0045c0f7  f30f1095dcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffedc]
0045c0ff  0f28c8                    MOVAPS XMM1,XMM0
0045c102  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0045c109  761e                      JBE 0x0045c129
0045c10b  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0045c113  f30f5ec1                  DIVSS XMM0,XMM1
0045c117  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
0045c11f  f30f59c8                  MULSS XMM1,XMM0
0045c123  f30f59d0                  MULSS XMM2,XMM0
0045c127  eb08                      JMP 0x0045c131
0045c129  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
0045c131  f30f590deca7ba00          MULSS XMM1,dword ptr [0x00baa7ec]
0045c139  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0045c13f  f30f5915eca7ba00          MULSS XMM2,dword ptr [0x00baa7ec]
0045c147  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
0045c14f  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
0045c157  e8d42dfeff                CALL 0x0043ef30
0045c15c  50                        PUSH EAX
0045c15d  0fb685ebfeffff            MOVZX EAX,byte ptr [EBP + 0xfffffeeb]
0045c164  8bcf                      MOV ECX,EDI
0045c166  83f001                    XOR EAX,0x1
0045c169  8d044502000000            LEA EAX,[EAX*0x2 + 0x2]
0045c170  50                        PUSH EAX
0045c171  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0045c177  50                        PUSH EAX
0045c178  56                        PUSH ESI
0045c179  e862f12600                CALL 0x006cb2e0
0045c17e  e9bf0b0000                JMP 0x0045cd42
0045c183  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045c187  740d                      JZ 0x0045c196
0045c189  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045c190  0f85ac0b0000              JNZ 0x0045cd42
0045c196  e8c52d2900                CALL 0x006eef60
0045c19b  33d2                      XOR EDX,EDX
0045c19d  b903000000                MOV ECX,0x3
0045c1a2  f7f1                      DIV ECX
0045c1a4  85d2                      TEST EDX,EDX
0045c1a6  0f858c0b0000              JNZ 0x0045cd38
0045c1ac  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045c1b0  0f85820b0000              JNZ 0x0045cd38
0045c1b6  51                        PUSH ECX
0045c1b7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045c1be  52                        PUSH EDX
0045c1bf  6a02                      PUSH 0x2
0045c1c1  51                        PUSH ECX
0045c1c2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045c1c9  8bcf                      MOV ECX,EDI
0045c1cb  6a7a                      PUSH 0x7a
0045c1cd  e8cea92700                CALL 0x006d6ba0
0045c1d2  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045c1d6  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0045c1e0  7548                      JNZ 0x0045c22a
0045c1e2  e8792d2900                CALL 0x006eef60
0045c1e7  a803                      TEST AL,0x3
0045c1e9  750a                      JNZ 0x0045c1f5
0045c1eb  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
0045c1f5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045c1f9  752f                      JNZ 0x0045c22a
0045c1fb  83bf640b00000a            CMP dword ptr [EDI + 0xb64],0xa
0045c202  7526                      JNZ 0x0045c22a
0045c204  e8572d2900                CALL 0x006eef60
0045c209  a801                      TEST AL,0x1
0045c20b  7416                      JZ 0x0045c223
0045c20d  a17816c700                MOV EAX,[0x00c71678]
0045c212  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0045c218  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0045c21e  83f83c                    CMP EAX,0x3c
0045c221  7d07                      JGE 0x0045c22a
0045c223  b801000000                MOV EAX,0x1
0045c228  eb02                      JMP 0x0045c22c
0045c22a  33c0                      XOR EAX,EAX
0045c22c  33c9                      XOR ECX,ECX
0045c22e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0045c234  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0045c23a  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
0045c240  c785c8feffff000020c2      MOV dword ptr [EBP + 0xfffffec8],0xc2200000
0045c24a  8d4120                    LEA EAX,[ECX + 0x20]
0045c24d  0f1f00                    NOP dword ptr [EAX]
0045c250  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045c254  0f57c0                    XORPS XMM0,XMM0
0045c257  be16000000                MOV ESI,0x16
0045c25c  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0045c263  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0045c267  0f44f0                    CMOVZ ESI,EAX
0045c26a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0045c271  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
0045c278  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045c27f  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0045c286  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0045c28a  740a                      JZ 0x0045c296
0045c28c  f30f100d10a9ba00          MOVSS XMM1,dword ptr [0x00baa910]
0045c294  eb03                      JMP 0x0045c299
0045c296  0f57c9                    XORPS XMM1,XMM1
0045c299  660f6ec1                  MOVD XMM0,ECX
0045c29d  0f5bc0                    CVTDQ2PS XMM0,XMM0
0045c2a0  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0045c2a8  f30f58c1                  ADDSS XMM0,XMM1
0045c2ac  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0045c2b4  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0045c2bc  e87f12fcff                CALL 0x0041d540
0045c2c1  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0045c2c9  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0045c2d1  e84a12fcff                CALL 0x0041d520
0045c2d6  51                        PUSH ECX
0045c2d7  c7042400008040            MOV dword ptr [ESP],0x40800000
0045c2de  8d45c0                    LEA EAX,[EBP + -0x40]
0045c2e1  50                        PUSH EAX
0045c2e2  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0045c2e8  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0045c2f0  56                        PUSH ESI
0045c2f1  50                        PUSH EAX
0045c2f2  8d95c4feffff              LEA EDX,[EBP + 0xfffffec4]
0045c2f8  8bcf                      MOV ECX,EDI
0045c2fa  e891f51a00                CALL 0x0060b890
0045c2ff  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
0045c305  83c410                    ADD ESP,0x10
0045c308  41                        INC ECX
0045c309  b820000000                MOV EAX,0x20
0045c30e  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0045c314  83f904                    CMP ECX,0x4
0045c317  0f8c33ffffff              JL 0x0045c250
0045c31d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045c327  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0045c331  e90c0a0000                JMP 0x0045cd42
0045c336  83f909                    CMP ECX,0x9
0045c339  0f85f3020000              JNZ 0x0045c632
0045c33f  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0045c346  7517                      JNZ 0x0045c35f
0045c348  6a00                      PUSH 0x0
0045c34a  6870ddb100                PUSH 0xb1dd70
0045c34f  8d4f48                    LEA ECX,[EDI + 0x48]
0045c352  e829e0faff                CALL 0x0040a380
0045c357  ff8710040000              INC dword ptr [EDI + 0x410]
0045c35d  eb1e                      JMP 0x0045c37d
0045c35f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045c363  7409                      JZ 0x0045c36e
0045c365  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045c36c  750f                      JNZ 0x0045c37d
0045c36e  6a00                      PUSH 0x0
0045c370  6868d6b100                PUSH 0xb1d668
0045c375  8d4f48                    LEA ECX,[EDI + 0x48]
0045c378  e803e0faff                CALL 0x0040a380
0045c37d  6868d6b100                PUSH 0xb1d668
0045c382  8d4f48                    LEA ECX,[EDI + 0x48]
0045c385  e846e1faff                CALL 0x0040a4d0
0045c38a  84c0                      TEST AL,AL
0045c38c  0f84b0090000              JZ 0x0045cd42
0045c392  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0045c398  8d4101                    LEA EAX,[ECX + 0x1]
0045c39b  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045c3a1  83f978                    CMP ECX,0x78
0045c3a4  7c32                      JL 0x0045c3d8
0045c3a6  e8b52b2900                CALL 0x006eef60
0045c3ab  33d2                      XOR EDX,EDX
0045c3ad  b93c000000                MOV ECX,0x3c
0045c3b2  f7f1                      DIV ECX
0045c3b4  85d2                      TEST EDX,EDX
0045c3b6  7420                      JZ 0x0045c3d8
0045c3b8  51                        PUSH ECX
0045c3b9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045c3c0  6a00                      PUSH 0x0
0045c3c2  6a78                      PUSH 0x78
0045c3c4  51                        PUSH ECX
0045c3c5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045c3cc  8bcf                      MOV ECX,EDI
0045c3ce  68c5030000                PUSH 0x3c5
0045c3d3  e8c8a72700                CALL 0x006d6ba0
0045c3d8  51                        PUSH ECX
0045c3d9  8d45e4                    LEA EAX,[EBP + -0x1c]
0045c3dc  c7042400000000            MOV dword ptr [ESP],0x0
0045c3e3  50                        PUSH EAX
0045c3e4  8bcf                      MOV ECX,EDI
0045c3e6  e855282600                CALL 0x006bec40
0045c3eb  8bcf                      MOV ECX,EDI
0045c3ed  8bf0                      MOV ESI,EAX
0045c3ef  e84c242600                CALL 0x006be840
0045c3f4  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
0045c3fa  f30f109060030000          MOVSS XMM2,dword ptr [EAX + 0x360]
0045c402  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0045c40a  8d45e4                    LEA EAX,[EBP + -0x1c]
0045c40d  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0045c415  50                        PUSH EAX
0045c416  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0045c41e  f30f5816                  ADDSS XMM2,dword ptr [ESI]
0045c422  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
0045c427  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0045c42f  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0045c437  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
0045c43f  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0045c447  e8e43b5b00                CALL 0x00a10030
0045c44c  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0045c454  0f57d2                    XORPS XMM2,XMM2
0045c457  0f2eda                    UCOMISS XMM3,XMM2
0045c45a  f30f1020                  MOVSS XMM4,dword ptr [EAX]
0045c45e  f30f106804                MOVSS XMM5,dword ptr [EAX + 0x4]
0045c463  f30f592500a5ba00          MULSS XMM4,dword ptr [0x00baa500]
0045c46b  f30f592d00a5ba00          MULSS XMM5,dword ptr [0x00baa500]
0045c473  9f                        LAHF
0045c474  f6c444                    TEST AH,0x44
0045c477  7b3b                      JNP 0x0045c4b4
0045c479  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0045c481  0f28c1                    MOVAPS XMM0,XMM1
0045c484  f30f59cd                  MULSS XMM1,XMM5
0045c488  f30f59c4                  MULSS XMM0,XMM4
0045c48c  f30f5ecb                  DIVSS XMM1,XMM3
0045c490  f30f5ec3                  DIVSS XMM0,XMM3
0045c494  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0045c49c  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0045c4a4  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0045c4ac  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045c4b4  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
0045c4b9  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
0045c4c1  0f2f95d4feffff            COMISS XMM2,dword ptr [EBP + 0xfffffed4]
0045c4c8  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0045c4d0  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0045c4d8  f30f59053ca1ba00          MULSS XMM0,dword ptr [0x00baa13c]
0045c4e0  0f97c0                    SETA AL
0045c4e3  888748010000              MOV byte ptr [EDI + 0x148],AL
0045c4e9  0f2fc8                    COMISS XMM1,XMM0
0045c4ec  0f8650080000              JBE 0x0045cd42
0045c4f2  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0045c4fc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045c506  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0045c510  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045c514  7526                      JNZ 0x0045c53c
0045c516  e8452a2900                CALL 0x006eef60
0045c51b  a801                      TEST AL,0x1
0045c51d  7416                      JZ 0x0045c535
0045c51f  a17816c700                MOV EAX,[0x00c71678]
0045c524  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0045c52a  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0045c530  83f83c                    CMP EAX,0x3c
0045c533  7d07                      JGE 0x0045c53c
0045c535  b801000000                MOV EAX,0x1
0045c53a  eb02                      JMP 0x0045c53e
0045c53c  33c0                      XOR EAX,EAX
0045c53e  33c9                      XOR ECX,ECX
0045c540  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0045c546  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0045c54c  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
0045c552  c785c8feffff000020c2      MOV dword ptr [EBP + 0xfffffec8],0xc2200000
0045c55c  8d4120                    LEA EAX,[ECX + 0x20]
0045c55f  90                        NOP
0045c560  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045c564  0f57c0                    XORPS XMM0,XMM0
0045c567  be16000000                MOV ESI,0x16
0045c56c  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0045c573  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0045c577  0f44f0                    CMOVZ ESI,EAX
0045c57a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0045c581  0f280520beba00            MOVAPS XMM0,xmmword ptr [0x00babe20]
0045c588  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045c58f  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0045c596  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0045c59a  740a                      JZ 0x0045c5a6
0045c59c  f30f100d10a9ba00          MOVSS XMM1,dword ptr [0x00baa910]
0045c5a4  eb03                      JMP 0x0045c5a9
0045c5a6  0f57c9                    XORPS XMM1,XMM1
0045c5a9  660f6ec1                  MOVD XMM0,ECX
0045c5ad  0f5bc0                    CVTDQ2PS XMM0,XMM0
0045c5b0  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0045c5b8  f30f58c1                  ADDSS XMM0,XMM1
0045c5bc  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0045c5c4  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0045c5cc  e86f0ffcff                CALL 0x0041d540
0045c5d1  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0045c5d9  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0045c5e1  e83a0ffcff                CALL 0x0041d520
0045c5e6  51                        PUSH ECX
0045c5e7  c7042400008040            MOV dword ptr [ESP],0x40800000
0045c5ee  8d45c0                    LEA EAX,[EBP + -0x40]
0045c5f1  50                        PUSH EAX
0045c5f2  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0045c5f8  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0045c600  56                        PUSH ESI
0045c601  50                        PUSH EAX
0045c602  8d95c4feffff              LEA EDX,[EBP + 0xfffffec4]
0045c608  8bcf                      MOV ECX,EDI
0045c60a  e881f21a00                CALL 0x0060b890
0045c60f  8b8decfeffff              MOV ECX,dword ptr [EBP + 0xfffffeec]
0045c615  83c410                    ADD ESP,0x10
0045c618  41                        INC ECX
0045c619  b820000000                MOV EAX,0x20
0045c61e  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0045c624  83f904                    CMP ECX,0x4
0045c627  0f8c33ffffff              JL 0x0045c560
0045c62d  e910070000                JMP 0x0045cd42
0045c632  83f90a                    CMP ECX,0xa
0045c635  0f842f020000              JZ 0x0045c86a
0045c63b  83f90b                    CMP ECX,0xb
0045c63e  0f8426020000              JZ 0x0045c86a
0045c644  83f90d                    CMP ECX,0xd
0045c647  0f85f5060000              JNZ 0x0045cd42
0045c64d  6a00                      PUSH 0x0
0045c64f  6884ddb100                PUSH 0xb1dd84
0045c654  8d4f48                    LEA ECX,[EDI + 0x48]
0045c657  e824ddfaff                CALL 0x0040a380
0045c65c  ff8710040000              INC dword ptr [EDI + 0x410]
0045c662  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0045c66c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045c670  740d                      JZ 0x0045c67f
0045c672  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045c679  0f85c3060000              JNZ 0x0045cd42
0045c67f  51                        PUSH ECX
0045c680  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045c687  6a00                      PUSH 0x0
0045c689  6a02                      PUSH 0x2
0045c68b  51                        PUSH ECX
0045c68c  c7042400000040            MOV dword ptr [ESP],0x40000000
0045c693  8bcf                      MOV ECX,EDI
0045c695  6809010000                PUSH 0x109
0045c69a  e801a52700                CALL 0x006d6ba0
0045c69f  c785ecfeffffffffffff      MOV dword ptr [EBP + 0xfffffeec],0xffffffff
0045c6a9  8db73c030000              LEA ESI,[EDI + 0x33c]
0045c6af  90                        NOP
0045c6b0  e8ab282900                CALL 0x006eef60
0045c6b5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045c6bb  6a00                      PUSH 0x0
0045c6bd  68acd5c500                PUSH 0xc5d5ac
0045c6c2  68dcd5c500                PUSH 0xc5d5dc
0045c6c7  6a00                      PUSH 0x0
0045c6c9  50                        PUSH EAX
0045c6ca  6a03                      PUSH 0x3
0045c6cc  57                        PUSH EDI
0045c6cd  6840b6c700                PUSH 0xc7b640
0045c6d2  56                        PUSH ESI
0045c6d3  6a0f                      PUSH 0xf
0045c6d5  68e8030000                PUSH 0x3e8
0045c6da  e841c4fcff                CALL 0x00428b20
0045c6df  50                        PUSH EAX
0045c6e0  e8cc416900                CALL 0x00af08b1
0045c6e5  83c414                    ADD ESP,0x14
0045c6e8  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0045c6ef  8bf0                      MOV ESI,EAX
0045c6f1  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045c6f8  0f57c0                    XORPS XMM0,XMM0
0045c6fb  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0045c702  8d4dc0                    LEA ECX,[EBP + -0x40]
0045c705  6a01                      PUSH 0x1
0045c707  8b06                      MOV EAX,dword ptr [ESI]
0045c709  6a00                      PUSH 0x0
0045c70b  68ff000000                PUSH 0xff
0045c710  6aff                      PUSH -0x1
0045c712  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0045c716  51                        PUSH ECX
0045c717  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
0045c71e  8bce                      MOV ECX,ESI
0045c720  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0045c724  ff503c                    CALL dword ptr [EAX + 0x3c]
0045c727  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
0045c72d  660f6ec0                  MOVD XMM0,EAX
0045c731  40                        INC EAX
0045c732  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0045c738  0f5bc0                    CVTDQ2PS XMM0,XMM0
0045c73b  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
0045c743  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0045c74b  8db73c030000              LEA ESI,[EDI + 0x33c]
0045c751  83f802                    CMP EAX,0x2
0045c754  0f8c56ffffff              JL 0x0045c6b0
0045c75a  0f280500ccba00            MOVAPS XMM0,xmmword ptr [0x00bacc00]
0045c761  33f6                      XOR ESI,ESI
0045c763  0f1145dc                  MOVUPS xmmword ptr [EBP + -0x24],XMM0
0045c767  e8f4272900                CALL 0x006eef60
0045c76c  f30f1044f5dc              MOVSS XMM0,dword ptr [EBP + ESI*0x8 + -0x24]
0045c772  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0045c77a  6a00                      PUSH 0x0
0045c77c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045c782  68acd6c500                PUSH 0xc5d6ac
0045c787  68dcd5c500                PUSH 0xc5d5dc
0045c78c  6a00                      PUSH 0x0
0045c78e  50                        PUSH EAX
0045c78f  6a00                      PUSH 0x0
0045c791  57                        PUSH EDI
0045c792  6840b6c700                PUSH 0xc7b640
0045c797  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0045c79f  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0045c7a5  f30f1044f5e0              MOVSS XMM0,dword ptr [EBP + ESI*0x8 + -0x20]
0045c7ab  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0045c7b3  50                        PUSH EAX
0045c7b4  ff772c                    PUSH dword ptr [EDI + 0x2c]
0045c7b7  ff7728                    PUSH dword ptr [EDI + 0x28]
0045c7ba  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0045c7c2  e859c3fcff                CALL 0x00428b20
0045c7c7  50                        PUSH EAX
0045c7c8  e8e4406900                CALL 0x00af08b1
0045c7cd  33c9                      XOR ECX,ECX
0045c7cf  83c414                    ADD ESP,0x14
0045c7d2  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0045c7da  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0045c7e2  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0045c7ea  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0045c7f0  81e200000010              AND EDX,0x10000000
0045c7f6  0bca                      OR ECX,EDX
0045c7f8  7414                      JZ 0x0045c80e
0045c7fa  c780840300000000a041      MOV dword ptr [EAX + 0x384],0x41a00000
0045c804  c780800300000000a041      MOV dword ptr [EAX + 0x380],0x41a00000
0045c80e  f30f1088b4030000          MOVSS XMM1,dword ptr [EAX + 0x3b4]
0045c816  46                        INC ESI
0045c817  f30f590d80a3ba00          MULSS XMM1,dword ptr [0x00baa380]
0045c81f  c780380c00000000403f      MOV dword ptr [EAX + 0xc38],0x3f400000
0045c829  0f28c1                    MOVAPS XMM0,XMM1
0045c82c  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0045c834  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0045c83c  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
0045c844  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
0045c84c  83fe02                    CMP ESI,0x2
0045c84f  0f8c12ffffff              JL 0x0045c767
0045c855  8d4d98                    LEA ECX,[EBP + -0x68]
0045c858  e81394fdff                CALL 0x00435c70
0045c85d  8b17                      MOV EDX,dword ptr [EDI]
0045c85f  8bcf                      MOV ECX,EDI
0045c861  50                        PUSH EAX
0045c862  ff5224                    CALL dword ptr [EDX + 0x24]
0045c865  e9d8040000                JMP 0x0045cd42
0045c86a  83f90b                    CMP ECX,0xb
0045c86d  baecd2b100                MOV EDX,0xb1d2ec
0045c872  b88cddb100                MOV EAX,0xb1dd8c
0045c877  8d4f48                    LEA ECX,[EDI + 0x48]
0045c87a  6a00                      PUSH 0x0
0045c87c  0f45c2                    CMOVNZ EAX,EDX
0045c87f  50                        PUSH EAX
0045c880  e8fbdafaff                CALL 0x0040a380
0045c885  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045c889  0f847f010000              JZ 0x0045ca0e
0045c88f  687cddb100                PUSH 0xb1dd7c
0045c894  8d4f78                    LEA ECX,[EDI + 0x78]
0045c897  e834e5faff                CALL 0x0040add0
0045c89c  84c0                      TEST AL,AL
0045c89e  0f846a010000              JZ 0x0045ca0e
0045c8a4  a17816c700                MOV EAX,[0x00c71678]
0045c8a9  8bcf                      MOV ECX,EDI
0045c8ab  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0045c8b1  e88a1f2600                CALL 0x006be840
0045c8b6  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
0045c8be  83ec0c                    SUB ESP,0xc
0045c8c1  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0045c8c7  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0045c8cd  c74424080000c842          MOV dword ptr [ESP + 0x8],0x42c80000
0045c8d5  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
0045c8db  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0045c8e1  c74424040000c842          MOV dword ptr [ESP + 0x4],0x42c80000
0045c8e9  c704240000c842            MOV dword ptr [ESP],0x42c80000
0045c8f0  50                        PUSH EAX
0045c8f1  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
0045c8f7  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
0045c8fd  50                        PUSH EAX
0045c8fe  8bce                      MOV ECX,ESI
0045c900  e84b663b00                CALL 0x00812f50
0045c905  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
0045c90d  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0045c915  f30f1095c4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec4]
0045c91d  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0045c925  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
0045c92d  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
0045c935  0f28c1                    MOVAPS XMM0,XMM1
0045c938  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
0045c940  f30f59c1                  MULSS XMM0,XMM1
0045c944  0f28ca                    MOVAPS XMM1,XMM2
0045c947  f30f1195e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM2
0045c94f  f30f59ca                  MULSS XMM1,XMM2
0045c953  f30f58c1                  ADDSS XMM0,XMM1
0045c957  e8f490fdff                CALL 0x00435a50
0045c95c  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
0045c964  0f2fd0                    COMISS XMM2,XMM0
0045c967  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0045c96f  7632                      JBE 0x0045c9a3
0045c971  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0045c978  761c                      JBE 0x0045c996
0045c97a  f30f5ed0                  DIVSS XMM2,XMM0
0045c97e  0f28c2                    MOVAPS XMM0,XMM2
0045c981  f30f59c8                  MULSS XMM1,XMM0
0045c985  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0045c98d  f30f59c2                  MULSS XMM0,XMM2
0045c991  0f28d9                    MOVAPS XMM3,XMM1
0045c994  eb4a                      JMP 0x0045c9e0
0045c996  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0045c99e  0f28d9                    MOVAPS XMM3,XMM1
0045c9a1  eb3d                      JMP 0x0045c9e0
0045c9a3  f30f101554a8ba00          MOVSS XMM2,dword ptr [0x00baa854]
0045c9ab  0f28d9                    MOVAPS XMM3,XMM1
0045c9ae  0f2fc2                    COMISS XMM0,XMM2
0045c9b1  7625                      JBE 0x0045c9d8
0045c9b3  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0045c9ba  761c                      JBE 0x0045c9d8
0045c9bc  f30f5ed0                  DIVSS XMM2,XMM0
0045c9c0  0f28c2                    MOVAPS XMM0,XMM2
0045c9c3  f30f59c8                  MULSS XMM1,XMM0
0045c9c7  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0045c9cf  f30f59c2                  MULSS XMM0,XMM2
0045c9d3  0f28d9                    MOVAPS XMM3,XMM1
0045c9d6  eb08                      JMP 0x0045c9e0
0045c9d8  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
0045c9e0  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0045c9e8  0f57c9                    XORPS XMM1,XMM1
0045c9eb  0f2fcb                    COMISS XMM1,XMM3
0045c9ee  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0045c9f6  c787b40b00000000803f      MOV dword ptr [EDI + 0xbb4],0x3f800000
0045ca00  0f97c0                    SETA AL
0045ca03  888748010000              MOV byte ptr [EDI + 0x148],AL
0045ca09  e98c000000                JMP 0x0045ca9a
0045ca0e  687cddb100                PUSH 0xb1dd7c
0045ca13  8d4f48                    LEA ECX,[EDI + 0x48]
0045ca16  e875e6faff                CALL 0x0040b090
0045ca1b  84c0                      TEST AL,AL
0045ca1d  0f8477000000              JZ 0x0045ca9a
0045ca23  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
0045ca2b  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
0045ca32  7666                      JBE 0x0045ca9a
0045ca34  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0045ca3c  0f28c3                    MOVAPS XMM0,XMM3
0045ca3f  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
0045ca47  f30f59c2                  MULSS XMM0,XMM2
0045ca4b  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0045ca53  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045ca5b  0f57c0                    XORPS XMM0,XMM0
0045ca5e  f30f599f38030000          MULSS XMM3,dword ptr [EDI + 0x338]
0045ca66  f30f59da                  MULSS XMM3,XMM2
0045ca6a  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0045ca72  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0045ca7a  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0045ca82  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0045ca8a  f30f5cca                  SUBSS XMM1,XMM2
0045ca8e  f30f5fc1                  MAXSS XMM0,XMM1
0045ca92  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0045ca9a  ff8710040000              INC dword ptr [EDI + 0x410]
0045caa0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045caa4  0f848e020000              JZ 0x0045cd38
0045caaa  68dcd2b100                PUSH 0xb1d2dc
0045caaf  8d4f78                    LEA ECX,[EDI + 0x78]
0045cab2  e819e3faff                CALL 0x0040add0
0045cab7  84c0                      TEST AL,AL
0045cab9  0f846a020000              JZ 0x0045cd29
0045cabf  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045cac5  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0045cacb  e890242900                CALL 0x006eef60
0045cad0  a801                      TEST AL,0x1
0045cad2  7410                      JZ 0x0045cae4
0045cad4  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0045cadc  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
0045cae4  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0045cae8  7516                      JNZ 0x0045cb00
0045caea  83bf640b00000a            CMP dword ptr [EDI + 0xb64],0xa
0045caf1  750d                      JNZ 0x0045cb00
0045caf3  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0045cafa  7404                      JZ 0x0045cb00
0045cafc  b101                      MOV CL,0x1
0045cafe  eb02                      JMP 0x0045cb02
0045cb00  32c9                      XOR CL,CL
0045cb02  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
0045cb08  33f6                      XOR ESI,ESI
0045cb0a  f30f101510a9ba00          MOVSS XMM2,dword ptr [0x00baa910]
0045cb12  83f80b                    CMP EAX,0xb
0045cb15  f30f100db4a9ba00          MOVSS XMM1,dword ptr [0x00baa9b4]
0045cb1d  ba1e000000                MOV EDX,0x1e
0045cb22  f30f102588a0ba00          MOVSS XMM4,dword ptr [0x00baa088]
0045cb2a  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
0045cb32  c785ecfeffff32000000      MOV dword ptr [EBP + 0xfffffeec],0x32
0045cb3c  0f4495ecfeffff            CMOVZ EDX,dword ptr [EBP + 0xfffffeec]
0045cb43  888debfeffff              MOV byte ptr [EBP + 0xfffffeeb],CL
0045cb49  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
0045cb4f  90                        NOP
0045cb50  660f6ec6                  MOVD XMM0,ESI
0045cb54  0f5bc0                    CVTDQ2PS XMM0,XMM0
0045cb57  f30f59c1                  MULSS XMM0,XMM1
0045cb5b  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0045cb63  84c9                      TEST CL,CL
0045cb65  740c                      JZ 0x0045cb73
0045cb67  f30f58c2                  ADDSS XMM0,XMM2
0045cb6b  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0045cb73  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0045cb7b  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0045cb83  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
0045cb8b  f30f1195e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM2
0045cb93  83f80b                    CMP EAX,0xb
0045cb96  750d                      JNZ 0x0045cba5
0045cb98  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
0045cba0  e97e000000                JMP 0x0045cc23
0045cba5  f30f59c4                  MULSS XMM0,XMM4
0045cba9  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0045cbb1  e88a09fcff                CALL 0x0041d540
0045cbb6  f30f108ddcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffedc]
0045cbbe  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0045cbc6  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0045cbce  f30f58c1                  ADDSS XMM0,XMM1
0045cbd2  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0045cbda  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
0045cbe2  e83909fcff                CALL 0x0041d520
0045cbe7  f30f108de0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee0]
0045cbef  f30f5c0d7ca8ba00          SUBSS XMM1,dword ptr [0x00baa87c]
0045cbf7  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0045cbff  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
0045cc07  f30f58c1                  ADDSS XMM0,XMM1
0045cc0b  f30f108ddcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffedc]
0045cc13  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0045cc1b  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0045cc23  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
0045cc2b  0f28c8                    MOVAPS XMM1,XMM0
0045cc2e  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0045cc35  0f2fcb                    COMISS XMM1,XMM3
0045cc38  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045cc3f  c745e80000a0c1            MOV dword ptr [EBP + -0x18],0xc1a00000
0045cc46  7610                      JBE 0x0045cc58
0045cc48  0f28cb                    MOVAPS XMM1,XMM3
0045cc4b  e8d0d00300                CALL 0x00499d20
0045cc50  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
0045cc58  0f2f0578aaba00            COMISS XMM0,dword ptr [0x00baaa78]
0045cc5f  7606                      JBE 0x0045cc67
0045cc61  f30f5cc3                  SUBSS XMM0,XMM3
0045cc65  eb11                      JMP 0x0045cc78
0045cc67  f30f100d7caeba00          MOVSS XMM1,dword ptr [0x00baae7c]
0045cc6f  0f2fc8                    COMISS XMM1,XMM0
0045cc72  7604                      JBE 0x0045cc78
0045cc74  f30f58c3                  ADDSS XMM0,XMM3
0045cc78  6a00                      PUSH 0x0
0045cc7a  57                        PUSH EDI
0045cc7b  8d45e4                    LEA EAX,[EBP + -0x1c]
0045cc7e  50                        PUSH EAX
0045cc7f  ffb5c8feffff              PUSH dword ptr [EBP + 0xfffffec8]
0045cc85  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0045cc8b  51                        PUSH ECX
0045cc8c  f30f110424                MOVSS dword ptr [ESP],XMM0
0045cc91  50                        PUSH EAX
0045cc92  6a01                      PUSH 0x1
0045cc94  e877265100                CALL 0x0096f310
0045cc99  8bc8                      MOV ECX,EAX
0045cc9b  83c41c                    ADD ESP,0x1c
0045cc9e  c78158030000000020c1      MOV dword ptr [ECX + 0x358],0xc1200000
0045cca8  83bde4feffff0b            CMP dword ptr [EBP + 0xfffffee4],0xb
0045ccaf  753b                      JNZ 0x0045ccec
0045ccb1  f30f1095ccfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffecc]
0045ccb9  0f28c2                    MOVAPS XMM0,XMM2
0045ccbc  c681c004000001            MOV byte ptr [ECX + 0x4c0],0x1
0045ccc3  0f28ca                    MOVAPS XMM1,XMM2
0045ccc6  c781c40400001e000000      MOV dword ptr [ECX + 0x4c4],0x1e
0045ccd0  f30f590db4a9ba00          MULSS XMM1,dword ptr [0x00baa9b4]
0045ccd8  f30f58c2                  ADDSS XMM0,XMM2
0045ccdc  f30f1189c8040000          MOVSS dword ptr [ECX + 0x4c8],XMM1
0045cce4  f30f1181cc040000          MOVSS dword ptr [ECX + 0x4cc],XMM0
0045ccec  8b01                      MOV EAX,dword ptr [ECX]
0045ccee  ff500c                    CALL dword ptr [EAX + 0xc]
0045ccf1  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
0045ccf9  46                        INC ESI
0045ccfa  f30f100db4a9ba00          MOVSS XMM1,dword ptr [0x00baa9b4]
0045cd02  f30f101510a9ba00          MOVSS XMM2,dword ptr [0x00baa910]
0045cd0a  f30f102588a0ba00          MOVSS XMM4,dword ptr [0x00baa088]
0045cd12  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
0045cd18  8a8debfeffff              MOV CL,byte ptr [EBP + 0xfffffeeb]
0045cd1e  83fe04                    CMP ESI,0x4
0045cd21  0f8c29feffff              JL 0x0045cb50
0045cd27  eb19                      JMP 0x0045cd42
0045cd29  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045cd2d  7409                      JZ 0x0045cd38
0045cd2f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045cd36  750a                      JNZ 0x0045cd42
0045cd38  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045cd42  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0045cd45  64890d00000000            MOV dword ptr FS:[0x0],ECX
0045cd4c  59                        POP ECX
0045cd4d  5f                        POP EDI
0045cd4e  5e                        POP ESI
0045cd4f  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0045cd52  33cd                      XOR ECX,EBP
0045cd54  e8d2236900                CALL 0x00aef12b
0045cd59  8be5                      MOV ESP,EBP
0045cd5b  5d                        POP EBP
0045cd5c  8be3                      MOV ESP,EBX
0045cd5e  5b                        POP EBX
0045cd5f  c3                        RET
