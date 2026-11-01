; J460 NPC AI 0x0054ad80 AI_0054ad80
; types=868
; identities=868.0.0
; entry=0054ad80
0054ad80  55                        PUSH EBP
0054ad81  8bec                      MOV EBP,ESP
0054ad83  6aff                      PUSH -0x1
0054ad85  68554aaf00                PUSH 0xaf4a55
0054ad8a  64a100000000              MOV EAX,FS:[0x0]
0054ad90  50                        PUSH EAX
0054ad91  83ec2c                    SUB ESP,0x2c
0054ad94  53                        PUSH EBX
0054ad95  56                        PUSH ESI
0054ad96  57                        PUSH EDI
0054ad97  a1b493bf00                MOV EAX,[0x00bf93b4]
0054ad9c  33c5                      XOR EAX,EBP
0054ad9e  50                        PUSH EAX
0054ad9f  8d45f4                    LEA EAX,[EBP + -0xc]
0054ada2  64a300000000              MOV FS:[0x0],EAX
0054ada8  8bf9                      MOV EDI,ECX
0054adaa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054adb0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0054adb8  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0054adc0  6a01                      PUSH 0x1
0054adc2  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0054adc8  81c1a8ba0100              ADD ECX,0x1baa8
0054adce  51                        PUSH ECX
0054adcf  6a09                      PUSH 0x9
0054add1  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0054add4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0054addc  e89f324700                CALL 0x009be080
0054ade1  85c0                      TEST EAX,EAX
0054ade3  745f                      JZ 0x0054ae44
0054ade5  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0054adeb  2500000020                AND EAX,0x20000000
0054adf0  83c800                    OR EAX,0x0
0054adf3  754f                      JNZ 0x0054ae44
0054adf5  6aff                      PUSH -0x1
0054adf7  50                        PUSH EAX
0054adf8  50                        PUSH EAX
0054adf9  6a0d                      PUSH 0xd
0054adfb  8bcf                      MOV ECX,EDI
0054adfd  e82e611700                CALL 0x006c0f30
0054ae02  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0054ae0a  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
0054ae12  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0054ae1a  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0054ae22  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0054ae2a  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0054ae32  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0054ae35  64890d00000000            MOV dword ptr FS:[0x0],ECX
0054ae3c  59                        POP ECX
0054ae3d  5f                        POP EDI
0054ae3e  5e                        POP ESI
0054ae3f  5b                        POP EBX
0054ae40  8be5                      MOV ESP,EBP
0054ae42  5d                        POP EBP
0054ae43  c3                        RET
0054ae44  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054ae4a  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
0054ae50  81c1a8ba0100              ADD ECX,0x1baa8
0054ae56  51                        PUSH ECX
0054ae57  e8d4364700                CALL 0x009be530
0054ae5c  8bf0                      MOV ESI,EAX
0054ae5e  85f6                      TEST ESI,ESI
0054ae60  7446                      JZ 0x0054aea8
0054ae62  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0054ae69  753d                      JNZ 0x0054aea8
0054ae6b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054ae71  57                        PUSH EDI
0054ae72  81c1e4660200              ADD ECX,0x266e4
0054ae78  e883ad4900                CALL 0x009e5c00
0054ae7d  8b07                      MOV EAX,dword ptr [EDI]
0054ae7f  8bcf                      MOV ECX,EDI
0054ae81  ff5028                    CALL dword ptr [EAX + 0x28]
0054ae84  6a00                      PUSH 0x0
0054ae86  8d873c030000              LEA EAX,[EDI + 0x33c]
0054ae8c  8bce                      MOV ECX,ESI
0054ae8e  50                        PUSH EAX
0054ae8f  6a01                      PUSH 0x1
0054ae91  e83aeb2000                CALL 0x007599d0
0054ae96  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0054ae99  64890d00000000            MOV dword ptr FS:[0x0],ECX
0054aea0  59                        POP ECX
0054aea1  5f                        POP EDI
0054aea2  5e                        POP ESI
0054aea3  5b                        POP EBX
0054aea4  8be5                      MOV ESP,EBP
0054aea6  5d                        POP EBP
0054aea7  c3                        RET
0054aea8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054aeaf  0f84ba000000              JZ 0x0054af6f
0054aeb5  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0054aebc  7436                      JZ 0x0054aef4
0054aebe  8bcf                      MOV ECX,EDI
0054aec0  e8cbda1500                CALL 0x006a8990
0054aec5  8bd0                      MOV EDX,EAX
0054aec7  85d2                      TEST EDX,EDX
0054aec9  0f84a0000000              JZ 0x0054af6f
0054aecf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054aed5  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
0054aedc  7c06                      JL 0x0054aee4
0054aede  837a2801                  CMP dword ptr [EDX + 0x28],0x1
0054aee2  740d                      JZ 0x0054aef1
0054aee4  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
0054aee7  83e80a                    SUB EAX,0xa
0054aeea  3ddd030000                CMP EAX,0x3dd
0054aeef  777e                      JA 0x0054af6f
0054aef1  52                        PUSH EDX
0054aef2  eb74                      JMP 0x0054af68
0054aef4  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0054aefb  7472                      JZ 0x0054af6f
0054aefd  8bcf                      MOV ECX,EDI
0054aeff  e8dcb8f0ff                CALL 0x004567e0
0054af04  85c0                      TEST EAX,EAX
0054af06  7467                      JZ 0x0054af6f
0054af08  8bcf                      MOV ECX,EDI
0054af0a  e8d1b8f0ff                CALL 0x004567e0
0054af0f  8bcf                      MOV ECX,EDI
0054af11  e8cab8f0ff                CALL 0x004567e0
0054af16  85c0                      TEST EAX,EAX
0054af18  7455                      JZ 0x0054af6f
0054af1a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0054af20  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
0054af27  743e                      JZ 0x0054af67
0054af29  8db0c0030000              LEA ESI,[EAX + 0x3c0]
0054af2f  8b06                      MOV EAX,dword ptr [ESI]
0054af31  85c0                      TEST EAX,EAX
0054af33  742a                      JZ 0x0054af5f
0054af35  6a00                      PUSH 0x0
0054af37  68acd6c500                PUSH 0xc5d6ac
0054af3c  68dcd5c500                PUSH 0xc5d5dc
0054af41  6a00                      PUSH 0x0
0054af43  50                        PUSH EAX
0054af44  e868595a00                CALL 0x00af08b1
0054af49  83c414                    ADD ESP,0x14
0054af4c  85c0                      TEST EAX,EAX
0054af4e  750f                      JNZ 0x0054af5f
0054af50  688cdcb100                PUSH 0xb1dc8c
0054af55  6a10                      PUSH 0x10
0054af57  e864634c00                CALL 0x00a112c0
0054af5c  83c408                    ADD ESP,0x8
0054af5f  8b06                      MOV EAX,dword ptr [ESI]
0054af61  85c0                      TEST EAX,EAX
0054af63  75bb                      JNZ 0x0054af20
0054af65  eb08                      JMP 0x0054af6f
0054af67  50                        PUSH EAX
0054af68  8bcf                      MOV ECX,EDI
0054af6a  e841d91800                CALL 0x006d88b0
0054af6f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0054af75  85c0                      TEST EAX,EAX
0054af77  0f846c090000              JZ 0x0054b8e9
0054af7d  83f804                    CMP EAX,0x4
0054af80  0f85a10b0000              JNZ 0x0054bb27
0054af86  6a00                      PUSH 0x0
0054af88  8d4f48                    LEA ECX,[EDI + 0x48]
0054af8b  6804deb100                PUSH 0xb1de04
0054af90  e8ebf3ebff                CALL 0x0040a380
0054af95  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
0054af9d  8bcf                      MOV ECX,EDI
0054af9f  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0054afa7  6a01                      PUSH 0x1
0054afa9  e842ce1800                CALL 0x006d7df0
0054afae  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0054afb4  8d9fbc030000              LEA EBX,[EDI + 0x3bc]
0054afba  85c9                      TEST ECX,ECX
0054afbc  0f84ad000000              JZ 0x0054b06f
0054afc2  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0054afc8  2520020000                AND EAX,0x220
0054afcd  83c800                    OR EAX,0x0
0054afd0  0f84510b0000              JZ 0x0054bb27
0054afd6  8db1c0030000              LEA ESI,[ECX + 0x3c0]
0054afdc  8b0e                      MOV ECX,dword ptr [ESI]
0054afde  85c9                      TEST ECX,ECX
0054afe0  7412                      JZ 0x0054aff4
0054afe2  8d45e8                    LEA EAX,[EBP + -0x18]
0054afe5  8975e8                    MOV dword ptr [EBP + -0x18],ESI
0054afe8  81c1cc030000              ADD ECX,0x3cc
0054afee  50                        PUSH EAX
0054afef  e81c42f8ff                CALL 0x004cf210
0054aff4  c70600000000              MOV dword ptr [ESI],0x0
0054affa  8b0b                      MOV ECX,dword ptr [EBX]
0054affc  85c9                      TEST ECX,ECX
0054affe  7412                      JZ 0x0054b012
0054b000  8d45e8                    LEA EAX,[EBP + -0x18]
0054b003  895de8                    MOV dword ptr [EBP + -0x18],EBX
0054b006  81c1cc030000              ADD ECX,0x3cc
0054b00c  50                        PUSH EAX
0054b00d  e8fe41f8ff                CALL 0x004cf210
0054b012  c70300000000              MOV dword ptr [EBX],0x0
0054b018  8bcf                      MOV ECX,EDI
0054b01a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0054b020  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0054b023  8db1c0030000              LEA ESI,[ECX + 0x3c0]
0054b029  89817c0c0000              MOV dword ptr [ECX + 0xc7c],EAX
0054b02f  8b06                      MOV EAX,dword ptr [ESI]
0054b031  85c0                      TEST EAX,EAX
0054b033  742a                      JZ 0x0054b05f
0054b035  6a00                      PUSH 0x0
0054b037  68acd6c500                PUSH 0xc5d6ac
0054b03c  68dcd5c500                PUSH 0xc5d5dc
0054b041  6a00                      PUSH 0x0
0054b043  50                        PUSH EAX
0054b044  e868585a00                CALL 0x00af08b1
0054b049  83c414                    ADD ESP,0x14
0054b04c  85c0                      TEST EAX,EAX
0054b04e  750f                      JNZ 0x0054b05f
0054b050  688cdcb100                PUSH 0xb1dc8c
0054b055  6a10                      PUSH 0x10
0054b057  e864624c00                CALL 0x00a112c0
0054b05c  83c408                    ADD ESP,0x8
0054b05f  8b0e                      MOV ECX,dword ptr [ESI]
0054b061  85c9                      TEST ECX,ECX
0054b063  75bb                      JNZ 0x0054b020
0054b065  8b0b                      MOV ECX,dword ptr [EBX]
0054b067  85c9                      TEST ECX,ECX
0054b069  0f85b80a0000              JNZ 0x0054bb27
0054b06f  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0054b076  be03000000                MOV ESI,0x3
0054b07b  7d58                      JGE 0x0054b0d5
0054b07d  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0054b083  85c0                      TEST EAX,EAX
0054b085  7440                      JZ 0x0054b0c7
0054b087  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0054b08f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0054b097  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0054b09f  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
0054b0a7  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
0054b0ac  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0054b0b1  e8aa3e1a00                CALL 0x006eef60
0054b0b6  33d2                      XOR EDX,EDX
0054b0b8  8d4dd4                    LEA ECX,[EBP + -0x2c]
0054b0bb  f7f6                      DIV ESI
0054b0bd  e89e411300                CALL 0x0067f260
0054b0c2  48                        DEC EAX
0054b0c3  03c2                      ADD EAX,EDX
0054b0c5  eb05                      JMP 0x0054b0cc
0054b0c7  e8943e1a00                CALL 0x006eef60
0054b0cc  83e003                    AND EAX,0x3
0054b0cf  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0054b0d5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054b0dc  0f85c4010000              JNZ 0x0054b2a6
0054b0e2  6a00                      PUSH 0x0
0054b0e4  6a04                      PUSH 0x4
0054b0e6  8bcf                      MOV ECX,EDI
0054b0e8  e823161600                CALL 0x006ac710
0054b0ed  84c0                      TEST AL,AL
0054b0ef  0f84b1010000              JZ 0x0054b2a6
0054b0f5  e8663e1a00                CALL 0x006eef60
0054b0fa  83e007                    AND EAX,0x7
0054b0fd  0f85a3010000              JNZ 0x0054b2a6
0054b103  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0054b106  8d873c030000              LEA EAX,[EDI + 0x33c]
0054b10c  f30f101d08a9ba00          MOVSS XMM3,dword ptr [0x00baa908]
0054b114  6a08                      PUSH 0x8
0054b116  50                        PUSH EAX
0054b117  8d45cc                    LEA EAX,[EBP + -0x34]
0054b11a  8d8918120000              LEA ECX,[ECX + 0x1218]
0054b120  50                        PUSH EAX
0054b121  e86af6ecff                CALL 0x0041a790
0054b126  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0054b12d  33c9                      XOR ECX,ECX
0054b12f  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0054b132  394dd8                    CMP dword ptr [EBP + -0x28],ECX
0054b135  0f8612010000              JBE 0x0054b24d
0054b13b  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0054b13e  6690                      NOP
0054b140  8b348a                    MOV ESI,dword ptr [EDX + ECX*0x4]
0054b143  8b5f28                    MOV EBX,dword ptr [EDI + 0x28]
0054b146  395e28                    CMP dword ptr [ESI + 0x28],EBX
0054b149  8d9fbc030000              LEA EBX,[EDI + 0x3bc]
0054b14f  7524                      JNZ 0x0054b175
0054b151  83f8ff                    CMP EAX,-0x1
0054b154  7405                      JZ 0x0054b15b
0054b156  39462c                    CMP dword ptr [ESI + 0x2c],EAX
0054b159  751a                      JNZ 0x0054b175
0054b15b  8b867c0c0000              MOV EAX,dword ptr [ESI + 0xc7c]
0054b161  3b877c0c0000              CMP EAX,dword ptr [EDI + 0xc7c]
0054b167  7409                      JZ 0x0054b172
0054b169  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
0054b170  740e                      JZ 0x0054b180
0054b172  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0054b175  41                        INC ECX
0054b176  3b4dd8                    CMP ECX,dword ptr [EBP + -0x28]
0054b179  72c5                      JC 0x0054b140
0054b17b  e9c8000000                JMP 0x0054b248
0054b180  8bcf                      MOV ECX,EDI
0054b182  8b867c0c0000              MOV EAX,dword ptr [ESI + 0xc7c]
0054b188  8d99c0030000              LEA EBX,[ECX + 0x3c0]
0054b18e  89817c0c0000              MOV dword ptr [ECX + 0xc7c],EAX
0054b194  8b03                      MOV EAX,dword ptr [EBX]
0054b196  85c0                      TEST EAX,EAX
0054b198  742a                      JZ 0x0054b1c4
0054b19a  6a00                      PUSH 0x0
0054b19c  68acd6c500                PUSH 0xc5d6ac
0054b1a1  68dcd5c500                PUSH 0xc5d5dc
0054b1a6  6a00                      PUSH 0x0
0054b1a8  50                        PUSH EAX
0054b1a9  e803575a00                CALL 0x00af08b1
0054b1ae  83c414                    ADD ESP,0x14
0054b1b1  85c0                      TEST EAX,EAX
0054b1b3  750f                      JNZ 0x0054b1c4
0054b1b5  688cdcb100                PUSH 0xb1dc8c
0054b1ba  6a10                      PUSH 0x10
0054b1bc  e8ff604c00                CALL 0x00a112c0
0054b1c1  83c408                    ADD ESP,0x8
0054b1c4  8b0b                      MOV ECX,dword ptr [EBX]
0054b1c6  85c9                      TEST ECX,ECX
0054b1c8  75b8                      JNZ 0x0054b182
0054b1ca  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0054b1d0  8d9fbc030000              LEA EBX,[EDI + 0x3bc]
0054b1d6  85c9                      TEST ECX,ECX
0054b1d8  7412                      JZ 0x0054b1ec
0054b1da  8d45e8                    LEA EAX,[EBP + -0x18]
0054b1dd  895de8                    MOV dword ptr [EBP + -0x18],EBX
0054b1e0  81c1cc030000              ADD ECX,0x3cc
0054b1e6  50                        PUSH EAX
0054b1e7  e82440f8ff                CALL 0x004cf210
0054b1ec  53                        PUSH EBX
0054b1ed  8bce                      MOV ECX,ESI
0054b1ef  8933                      MOV dword ptr [EBX],ESI
0054b1f1  e8fa2af8ff                CALL 0x004cdcf0
0054b1f6  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
0054b1fc  8d86c0030000              LEA EAX,[ESI + 0x3c0]
0054b202  85c9                      TEST ECX,ECX
0054b204  7418                      JZ 0x0054b21e
0054b206  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0054b209  81c1cc030000              ADD ECX,0x3cc
0054b20f  8d45e8                    LEA EAX,[EBP + -0x18]
0054b212  50                        PUSH EAX
0054b213  e8f83ff8ff                CALL 0x004cf210
0054b218  8d86c0030000              LEA EAX,[ESI + 0x3c0]
0054b21e  50                        PUSH EAX
0054b21f  8bcf                      MOV ECX,EDI
0054b221  8938                      MOV dword ptr [EAX],EDI
0054b223  e8c82af8ff                CALL 0x004cdcf0
0054b228  8d8e040c0000              LEA ECX,[ESI + 0xc04]
0054b22e  e84de1f4ff                CALL 0x00499380
0054b233  8d873c030000              LEA EAX,[EDI + 0x33c]
0054b239  50                        PUSH EAX
0054b23a  8d8e040c0000              LEA ECX,[ESI + 0xc04]
0054b240  e84bdff4ff                CALL 0x00499190
0054b245  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0054b248  be03000000                MOV ESI,0x3
0054b24d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054b254  833b00                    CMP dword ptr [EBX],0x0
0054b257  742b                      JZ 0x0054b284
0054b259  807dcc00                  CMP byte ptr [EBP + -0x34],0x0
0054b25d  0f85c4080000              JNZ 0x0054bb27
0054b263  6a00                      PUSH 0x0
0054b265  6a00                      PUSH 0x0
0054b267  b101                      MOV CL,0x1
0054b269  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
0054b270  e83b965100                CALL 0x00a648b0
0054b275  83c408                    ADD ESP,0x8
0054b278  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054b27f  e9a3080000                JMP 0x0054bb27
0054b284  807dcc00                  CMP byte ptr [EBP + -0x34],0x0
0054b288  751c                      JNZ 0x0054b2a6
0054b28a  6a00                      PUSH 0x0
0054b28c  6a00                      PUSH 0x0
0054b28e  b101                      MOV CL,0x1
0054b290  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0054b297  e814965100                CALL 0x00a648b0
0054b29c  83c408                    ADD ESP,0x8
0054b29f  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054b2a6  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
0054b2ac  85d2                      TEST EDX,EDX
0054b2ae  7e44                      JLE 0x0054b2f4
0054b2b0  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0054b2b8  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0054b2c0  2bc8                      SUB ECX,EAX
0054b2c2  2bd1                      SUB EDX,ECX
0054b2c4  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
0054b2ca  8b5df0                    MOV EBX,dword ptr [EBP + -0x10]
0054b2cd  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054b2d4  0f84ff020000              JZ 0x0054b5d9
0054b2da  6a00                      PUSH 0x0
0054b2dc  51                        PUSH ECX
0054b2dd  8d8f14040000              LEA ECX,[EDI + 0x414]
0054b2e3  c70424cdcccc3f            MOV dword ptr [ESP],0x3fcccccd
0054b2ea  e851a02900                CALL 0x007e5340
0054b2ef  e933080000                JMP 0x0054bb27
0054b2f4  8bcf                      MOV ECX,EDI
0054b2f6  e845351700                CALL 0x006be840
0054b2fb  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0054b303  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0054b30b  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0054b313  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0054b31b  0f28c1                    MOVAPS XMM0,XMM1
0054b31e  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
0054b323  f30f59c1                  MULSS XMM0,XMM1
0054b327  0f28ca                    MOVAPS XMM1,XMM2
0054b32a  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
0054b32f  f30f59ca                  MULSS XMM1,XMM2
0054b333  f30f58c1                  ADDSS XMM0,XMM1
0054b337  e814a7eeff                CALL 0x00435a50
0054b33c  0f2f0598abba00            COMISS XMM0,dword ptr [0x00baab98]
0054b343  0f8751010000              JA 0x0054b49a
0054b349  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0054b34f  2500020000                AND EAX,0x200
0054b354  83c800                    OR EAX,0x0
0054b357  0f853d010000              JNZ 0x0054b49a
0054b35d  e8fe3b1a00                CALL 0x006eef60
0054b362  33d2                      XOR EDX,EDX
0054b364  f7f6                      DIV ESI
0054b366  85d2                      TEST EDX,EDX
0054b368  0f855cffffff              JNZ 0x0054b2ca
0054b36e  f30f100da4aeba00          MOVSS XMM1,dword ptr [0x00baaea4]
0054b376  bb03000000                MOV EBX,0x3
0054b37b  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0054b381  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0054b386  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0054b389  0f1f8000000000            NOP dword ptr [EAX]
0054b390  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
0054b396  03f3                      ADD ESI,EBX
0054b398  81e603000080              AND ESI,0x80000003
0054b39e  7905                      JNS 0x0054b3a5
0054b3a0  4e                        DEC ESI
0054b3a1  83cefc                    OR ESI,0xfffffffc
0054b3a4  46                        INC ESI
0054b3a5  8bd6                      MOV EDX,ESI
0054b3a7  8d4dd4                    LEA ECX,[EBP + -0x2c]
0054b3aa  e8213e1300                CALL 0x0067f1d0
0054b3af  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0054b3b7  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
0054b3bc  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
0054b3c1  f30f59c2                  MULSS XMM0,XMM2
0054b3c5  f30f59ca                  MULSS XMM1,XMM2
0054b3c9  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0054b3d1  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0054b3d9  f30f5cc2                  SUBSS XMM0,XMM2
0054b3dd  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
0054b3e5  f30f5ec2                  DIVSS XMM0,XMM2
0054b3e9  f30f5eca                  DIVSS XMM1,XMM2
0054b3ed  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0054b3f5  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
0054b3fd  f30f2cc8                  CVTTSS2SI ECX,XMM0
0054b401  f30f2cc1                  CVTTSS2SI EAX,XMM1
0054b405  85c9                      TEST ECX,ECX
0054b407  7821                      JS 0x0054b42a
0054b409  8b55f0                    MOV EDX,dword ptr [EBP + -0x10]
0054b40c  8b520c                    MOV EDX,dword ptr [EDX + 0xc]
0054b40f  3bca                      CMP ECX,EDX
0054b411  7d17                      JGE 0x0054b42a
0054b413  85c0                      TEST EAX,EAX
0054b415  7813                      JS 0x0054b42a
0054b417  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0054b41a  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0054b41d  f30f2cc8                  CVTTSS2SI ECX,XMM0
0054b421  7d07                      JGE 0x0054b42a
0054b423  0fafc2                    IMUL EAX,EDX
0054b426  03c1                      ADD EAX,ECX
0054b428  eb03                      JMP 0x0054b42d
0054b42a  83c8ff                    OR EAX,0xffffffff
0054b42d  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0054b430  50                        PUSH EAX
0054b431  e8ca532a00                CALL 0x007f0800
0054b436  83f804                    CMP EAX,0x4
0054b439  742a                      JZ 0x0054b465
0054b43b  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
0054b440  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
0054b445  f30f594dd8                MULSS XMM1,dword ptr [EBP + -0x28]
0054b44a  f30f5945d4                MULSS XMM0,dword ptr [EBP + -0x2c]
0054b44f  f30f58c8                  ADDSS XMM1,XMM0
0054b453  0f2f4de8                  COMISS XMM1,dword ptr [EBP + -0x18]
0054b457  760c                      JBE 0x0054b465
0054b459  8bc6                      MOV EAX,ESI
0054b45b  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0054b460  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0054b463  eb03                      JMP 0x0054b468
0054b465  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
0054b468  43                        INC EBX
0054b469  83fb05                    CMP EBX,0x5
0054b46c  0f8e1effffff              JLE 0x0054b390
0054b472  3b87c00b0000              CMP EAX,dword ptr [EDI + 0xbc0]
0054b478  0f844cfeffff              JZ 0x0054b2ca
0054b47e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0054b484  e8d73a1a00                CALL 0x006eef60
0054b489  33d2                      XOR EDX,EDX
0054b48b  b90f000000                MOV ECX,0xf
0054b490  f7f1                      DIV ECX
0054b492  83c208                    ADD EDX,0x8
0054b495  e92afeffff                JMP 0x0054b2c4
0054b49a  e8c13a1a00                CALL 0x006eef60
0054b49f  33d2                      XOR EDX,EDX
0054b4a1  b905000000                MOV ECX,0x5
0054b4a6  f7f1                      DIV ECX
0054b4a8  85d2                      TEST EDX,EDX
0054b4aa  7416                      JZ 0x0054b4c2
0054b4ac  6a00                      PUSH 0x0
0054b4ae  6800020000                PUSH 0x200
0054b4b3  8bcf                      MOV ECX,EDI
0054b4b5  e876bfecff                CALL 0x00417430
0054b4ba  84c0                      TEST AL,AL
0054b4bc  0f8408feffff              JZ 0x0054b2ca
0054b4c2  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0054b4c8  42                        INC EDX
0054b4c9  81e203000080              AND EDX,0x80000003
0054b4cf  7905                      JNS 0x0054b4d6
0054b4d1  4a                        DEC EDX
0054b4d2  83cafc                    OR EDX,0xfffffffc
0054b4d5  42                        INC EDX
0054b4d6  8d4ddc                    LEA ECX,[EBP + -0x24]
0054b4d9  e8f23c1300                CALL 0x0067f1d0
0054b4de  8b5df0                    MOV EBX,dword ptr [EBP + -0x10]
0054b4e1  8bcb                      MOV ECX,EBX
0054b4e3  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0054b4e8  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b4f0  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0054b4f4  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
0054b4fc  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0054b504  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0054b50c  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0054b511  ff75d8                    PUSH dword ptr [EBP + -0x28]
0054b514  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
0054b519  ff75d4                    PUSH dword ptr [EBP + -0x2c]
0054b51c  e85f522a00                CALL 0x007f0780
0054b521  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0054b527  8bf0                      MOV ESI,EAX
0054b529  83c203                    ADD EDX,0x3
0054b52c  81e203000080              AND EDX,0x80000003
0054b532  7905                      JNS 0x0054b539
0054b534  4a                        DEC EDX
0054b535  83cafc                    OR EDX,0xfffffffc
0054b538  42                        INC EDX
0054b539  8d4ddc                    LEA ECX,[EBP + -0x24]
0054b53c  e88f3c1300                CALL 0x0067f1d0
0054b541  8bcb                      MOV ECX,EBX
0054b543  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0054b548  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b550  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0054b554  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
0054b55c  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0054b564  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0054b56c  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0054b571  ff75d8                    PUSH dword ptr [EBP + -0x28]
0054b574  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
0054b579  ff75d4                    PUSH dword ptr [EBP + -0x2c]
0054b57c  e8ff512a00                CALL 0x007f0780
0054b581  8945e0                    MOV dword ptr [EBP + -0x20],EAX
0054b584  e8d7391a00                CALL 0x006eef60
0054b589  83e001                    AND EAX,0x1
0054b58c  7405                      JZ 0x0054b593
0054b58e  83fe04                    CMP ESI,0x4
0054b591  7506                      JNZ 0x0054b599
0054b593  837de004                  CMP dword ptr [EBP + -0x20],0x4
0054b597  7509                      JNZ 0x0054b5a2
0054b599  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0054b59f  40                        INC EAX
0054b5a0  eb09                      JMP 0x0054b5ab
0054b5a2  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0054b5a8  83c003                    ADD EAX,0x3
0054b5ab  2503000080                AND EAX,0x80000003
0054b5b0  7905                      JNS 0x0054b5b7
0054b5b2  48                        DEC EAX
0054b5b3  83c8fc                    OR EAX,0xfffffffc
0054b5b6  40                        INC EAX
0054b5b7  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0054b5bd  e89e391a00                CALL 0x006eef60
0054b5c2  33d2                      XOR EDX,EDX
0054b5c4  b90f000000                MOV ECX,0xf
0054b5c9  f7f1                      DIV ECX
0054b5cb  83c208                    ADD EDX,0x8
0054b5ce  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
0054b5d4  e9f4fcffff                JMP 0x0054b2cd
0054b5d9  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
0054b5df  83fe03                    CMP ESI,0x3
0054b5e2  772d                      JA 0x0054b611
0054b5e4  64a12c000000              MOV EAX,FS:[0x2c]
0054b5ea  8b08                      MOV ECX,dword ptr [EAX]
0054b5ec  a12000c800                MOV EAX,[0x00c80020]
0054b5f1  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
0054b5f7  0f8f57060000              JG 0x0054bc54
0054b5fd  f30f1004f52400c800        MOVSS XMM0,dword ptr [ESI*0x8 + 0xc80024]
0054b606  f30f100cf52800c800        MOVSS XMM1,dword ptr [ESI*0x8 + 0xc80028]
0054b60f  eb10                      JMP 0x0054b621
0054b611  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0054b619  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
0054b621  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0054b626  8bcb                      MOV ECX,EBX
0054b628  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b630  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
0054b635  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0054b63d  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0054b642  0f28c1                    MOVAPS XMM0,XMM1
0054b645  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b64d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0054b655  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0054b65a  ff75d8                    PUSH dword ptr [EBP + -0x28]
0054b65d  ff75d4                    PUSH dword ptr [EBP + -0x2c]
0054b660  e81b512a00                CALL 0x007f0780
0054b665  83f804                    CMP EAX,0x4
0054b668  0f85f5000000              JNZ 0x0054b763
0054b66e  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0054b674  42                        INC EDX
0054b675  81e203000080              AND EDX,0x80000003
0054b67b  7905                      JNS 0x0054b682
0054b67d  4a                        DEC EDX
0054b67e  83cafc                    OR EDX,0xfffffffc
0054b681  42                        INC EDX
0054b682  8d4ddc                    LEA ECX,[EBP + -0x24]
0054b685  e8463b1300                CALL 0x0067f1d0
0054b68a  8bcb                      MOV ECX,EBX
0054b68c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054b690  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b698  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0054b6a0  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0054b6a5  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0054b6aa  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b6b2  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0054b6ba  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0054b6bf  ff75d8                    PUSH dword ptr [EBP + -0x28]
0054b6c2  ff75d4                    PUSH dword ptr [EBP + -0x2c]
0054b6c5  e8b6502a00                CALL 0x007f0780
0054b6ca  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0054b6d0  8bf0                      MOV ESI,EAX
0054b6d2  83c203                    ADD EDX,0x3
0054b6d5  81e203000080              AND EDX,0x80000003
0054b6db  7905                      JNS 0x0054b6e2
0054b6dd  4a                        DEC EDX
0054b6de  83cafc                    OR EDX,0xfffffffc
0054b6e1  42                        INC EDX
0054b6e2  8d4ddc                    LEA ECX,[EBP + -0x24]
0054b6e5  e8e63a1300                CALL 0x0067f1d0
0054b6ea  8bcb                      MOV ECX,EBX
0054b6ec  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054b6f0  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b6f8  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0054b700  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0054b705  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0054b70a  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b712  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0054b71a  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0054b71f  ff75d8                    PUSH dword ptr [EBP + -0x28]
0054b722  ff75d4                    PUSH dword ptr [EBP + -0x2c]
0054b725  e856502a00                CALL 0x007f0780
0054b72a  8bd8                      MOV EBX,EAX
0054b72c  e82f381a00                CALL 0x006eef60
0054b731  a801                      TEST AL,0x1
0054b733  7405                      JZ 0x0054b73a
0054b735  83fe04                    CMP ESI,0x4
0054b738  7505                      JNZ 0x0054b73f
0054b73a  83fb04                    CMP EBX,0x4
0054b73d  7509                      JNZ 0x0054b748
0054b73f  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0054b745  40                        INC EAX
0054b746  eb09                      JMP 0x0054b751
0054b748  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0054b74e  83c003                    ADD EAX,0x3
0054b751  2503000080                AND EAX,0x80000003
0054b756  7905                      JNS 0x0054b75d
0054b758  48                        DEC EAX
0054b759  83c8fc                    OR EAX,0xfffffffc
0054b75c  40                        INC EAX
0054b75d  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0054b763  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0054b769  0f57c0                    XORPS XMM0,XMM0
0054b76c  2500020000                AND EAX,0x200
0054b771  83c800                    OR EAX,0x0
0054b774  a17816c700                MOV EAX,[0x00c71678]
0054b779  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0054b77f  0f84ca000000              JZ 0x0054b84f
0054b785  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0054b78b  f30f2ac0                  CVTSI2SS XMM0,EAX
0054b78f  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0054b797  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
0054b79f  e87c1dedff                CALL 0x0041d520
0054b7a4  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0054b7ac  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0054b7b4  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0054b7b9  e8821dedff                CALL 0x0041d540
0054b7be  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0054b7c3  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
0054b7c8  e8531dedff                CALL 0x0041d520
0054b7cd  f30f107dec                MOVSS XMM7,dword ptr [EBP + -0x14]
0054b7d2  0f28d8                    MOVAPS XMM3,XMM0
0054b7d5  f30f1075f0                MOVSS XMM6,dword ptr [EBP + -0x10]
0054b7da  0f28d7                    MOVAPS XMM2,XMM7
0054b7dd  f30f5955e4                MULSS XMM2,dword ptr [EBP + -0x1c]
0054b7e2  0f28ce                    MOVAPS XMM1,XMM6
0054b7e5  f30f5975e4                MULSS XMM6,dword ptr [EBP + -0x1c]
0054b7ea  f30f10af9c030000          MOVSS XMM5,dword ptr [EDI + 0x39c]
0054b7f2  f30f59cb                  MULSS XMM1,XMM3
0054b7f6  f30f59fb                  MULSS XMM7,XMM3
0054b7fa  f30f5cd1                  SUBSS XMM2,XMM1
0054b7fe  f30f58f7                  ADDSS XMM6,XMM7
0054b802  f30f591554a5ba00          MULSS XMM2,dword ptr [0x00baa554]
0054b80a  f30f593554a5ba00          MULSS XMM6,dword ptr [0x00baa554]
0054b812  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
0054b81a  f30f593504a3ba00          MULSS XMM6,dword ptr [0x00baa304]
0054b822  f30f59d5                  MULSS XMM2,XMM5
0054b826  f30f59f5                  MULSS XMM6,XMM5
0054b82a  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0054b832  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0054b83a  f30f58b764030000          ADDSS XMM6,dword ptr [EDI + 0x364]
0054b842  f30f11b764030000          MOVSS dword ptr [EDI + 0x364],XMM6
0054b84a  e9d8020000                JMP 0x0054bb27
0054b84f  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0054b855  f30f2ac0                  CVTSI2SS XMM0,EAX
0054b859  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0054b861  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
0054b869  e8b21cedff                CALL 0x0041d520
0054b86e  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0054b876  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0054b87e  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0054b883  e8b81cedff                CALL 0x0041d540
0054b888  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0054b88d  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
0054b892  e8891cedff                CALL 0x0041d520
0054b897  f30f107dec                MOVSS XMM7,dword ptr [EBP + -0x14]
0054b89c  0f28d8                    MOVAPS XMM3,XMM0
0054b89f  f30f1075f0                MOVSS XMM6,dword ptr [EBP + -0x10]
0054b8a4  0f28d7                    MOVAPS XMM2,XMM7
0054b8a7  f30f5955e4                MULSS XMM2,dword ptr [EBP + -0x1c]
0054b8ac  0f28ce                    MOVAPS XMM1,XMM6
0054b8af  f30f5975e4                MULSS XMM6,dword ptr [EBP + -0x1c]
0054b8b4  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
0054b8bc  f30f59cb                  MULSS XMM1,XMM3
0054b8c0  f30f59fb                  MULSS XMM7,XMM3
0054b8c4  f30f5cd1                  SUBSS XMM2,XMM1
0054b8c8  f30f58f7                  ADDSS XMM6,XMM7
0054b8cc  f30f591554a5ba00          MULSS XMM2,dword ptr [0x00baa554]
0054b8d4  f30f593554a5ba00          MULSS XMM6,dword ptr [0x00baa554]
0054b8dc  f30f59d4                  MULSS XMM2,XMM4
0054b8e0  f30f59f4                  MULSS XMM6,XMM4
0054b8e4  e941ffffff                JMP 0x0054b82a
0054b8e9  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0054b8ec  6a00                      PUSH 0x0
0054b8ee  6a00                      PUSH 0x0
0054b8f0  89877c0c0000              MOV dword ptr [EDI + 0xc7c],EAX
0054b8f6  a17816c700                MOV EAX,[0x00c71678]
0054b8fb  6aff                      PUSH -0x1
0054b8fd  ff772c                    PUSH dword ptr [EDI + 0x2c]
0054b900  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0054b906  8d45cc                    LEA EAX,[EBP + -0x34]
0054b909  ff7728                    PUSH dword ptr [EDI + 0x28]
0054b90c  81c118120000              ADD ECX,0x1218
0054b912  50                        PUSH EAX
0054b913  e848f6ecff                CALL 0x0041af60
0054b918  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0054b91f  8b5dd8                    MOV EBX,dword ptr [EBP + -0x28]
0054b922  83eb01                    SUB EBX,0x1
0054b925  895de8                    MOV dword ptr [EBP + -0x18],EBX
0054b928  0f88c5000000              JS 0x0054b9f3
0054b92e  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
0054b931  8b3498                    MOV ESI,dword ptr [EAX + EBX*0x4]
0054b934  3bf7                      CMP ESI,EDI
0054b936  0f84ab000000              JZ 0x0054b9e7
0054b93c  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
0054b942  0f849f000000              JZ 0x0054b9e7
0054b948  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
0054b94f  0f8592000000              JNZ 0x0054b9e7
0054b955  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0054b95d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0054b965  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0054b96d  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0054b975  f30f59c0                  MULSS XMM0,XMM0
0054b979  f30f59c9                  MULSS XMM1,XMM1
0054b97d  f30f58c1                  ADDSS XMM0,XMM1
0054b981  e8caa0eeff                CALL 0x00435a50
0054b986  f30f100d08a9ba00          MOVSS XMM1,dword ptr [0x00baa908]
0054b98e  0f2fc8                    COMISS XMM1,XMM0
0054b991  7651                      JBE 0x0054b9e4
0054b993  b001                      MOV AL,0x1
0054b995  8bd6                      MOV EDX,ESI
0054b997  84c0                      TEST AL,AL
0054b999  7449                      JZ 0x0054b9e4
0054b99b  33c9                      XOR ECX,ECX
0054b99d  0fb6c0                    MOVZX EAX,AL
0054b9a0  3bd7                      CMP EDX,EDI
0054b9a2  8b92bc030000              MOV EDX,dword ptr [EDX + 0x3bc]
0054b9a8  0f45c8                    CMOVNZ ECX,EAX
0054b9ab  8ac1                      MOV AL,CL
0054b9ad  85d2                      TEST EDX,EDX
0054b9af  75e6                      JNZ 0x0054b997
0054b9b1  84c0                      TEST AL,AL
0054b9b3  742f                      JZ 0x0054b9e4
0054b9b5  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0054b9bb  8d9fbc030000              LEA EBX,[EDI + 0x3bc]
0054b9c1  85c9                      TEST ECX,ECX
0054b9c3  7412                      JZ 0x0054b9d7
0054b9c5  8d45e0                    LEA EAX,[EBP + -0x20]
0054b9c8  895de0                    MOV dword ptr [EBP + -0x20],EBX
0054b9cb  81c1cc030000              ADD ECX,0x3cc
0054b9d1  50                        PUSH EAX
0054b9d2  e83938f8ff                CALL 0x004cf210
0054b9d7  53                        PUSH EBX
0054b9d8  8bce                      MOV ECX,ESI
0054b9da  8933                      MOV dword ptr [EBX],ESI
0054b9dc  e80f23f8ff                CALL 0x004cdcf0
0054b9e1  8b5de8                    MOV EBX,dword ptr [EBP + -0x18]
0054b9e4  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
0054b9e7  83eb01                    SUB EBX,0x1
0054b9ea  895de8                    MOV dword ptr [EBP + -0x18],EBX
0054b9ed  0f893effffff              JNS 0x0054b931
0054b9f3  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054b9fa  807dcc00                  CMP byte ptr [EBP + -0x34],0x0
0054b9fe  751f                      JNZ 0x0054ba1f
0054ba00  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0054ba07  b101                      MOV CL,0x1
0054ba09  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0054ba0c  6a00                      PUSH 0x0
0054ba0e  6a00                      PUSH 0x0
0054ba10  e89b8e5100                CALL 0x00a648b0
0054ba15  83c408                    ADD ESP,0x8
0054ba18  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054ba1f  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0054ba25  85c0                      TEST EAX,EAX
0054ba27  0f84dc000000              JZ 0x0054bb09
0054ba2d  6a00                      PUSH 0x0
0054ba2f  68acd6c500                PUSH 0xc5d6ac
0054ba34  68dcd5c500                PUSH 0xc5d5dc
0054ba39  6a00                      PUSH 0x0
0054ba3b  50                        PUSH EAX
0054ba3c  e8704e5a00                CALL 0x00af08b1
0054ba41  83c414                    ADD ESP,0x14
0054ba44  85c0                      TEST EAX,EAX
0054ba46  750f                      JNZ 0x0054ba57
0054ba48  6850d4b100                PUSH 0xb1d450
0054ba4d  6a10                      PUSH 0x10
0054ba4f  e86c584c00                CALL 0x00a112c0
0054ba54  83c408                    ADD ESP,0x8
0054ba57  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0054ba5d  8b88c0030000              MOV ECX,dword ptr [EAX + 0x3c0]
0054ba63  8db0c0030000              LEA ESI,[EAX + 0x3c0]
0054ba69  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0054ba6c  85c9                      TEST ECX,ECX
0054ba6e  7412                      JZ 0x0054ba82
0054ba70  8d45e0                    LEA EAX,[EBP + -0x20]
0054ba73  8975e0                    MOV dword ptr [EBP + -0x20],ESI
0054ba76  50                        PUSH EAX
0054ba77  81c1cc030000              ADD ECX,0x3cc
0054ba7d  e88e37f8ff                CALL 0x004cf210
0054ba82  56                        PUSH ESI
0054ba83  8bcf                      MOV ECX,EDI
0054ba85  893e                      MOV dword ptr [ESI],EDI
0054ba87  e86422f8ff                CALL 0x004cdcf0
0054ba8c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0054ba92  8bcf                      MOV ECX,EDI
0054ba94  85c0                      TEST EAX,EAX
0054ba96  7414                      JZ 0x0054baac
0054ba98  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0054baa0  8bc8                      MOV ECX,EAX
0054baa2  8b81bc030000              MOV EAX,dword ptr [ECX + 0x3bc]
0054baa8  85c0                      TEST EAX,EAX
0054baaa  75f4                      JNZ 0x0054baa0
0054baac  8d5920                    LEA EBX,[ECX + 0x20]
0054baaf  90                        NOP
0054bab0  8b03                      MOV EAX,dword ptr [EBX]
0054bab2  8db1c0030000              LEA ESI,[ECX + 0x3c0]
0054bab8  89817c0c0000              MOV dword ptr [ECX + 0xc7c],EAX
0054babe  8b06                      MOV EAX,dword ptr [ESI]
0054bac0  85c0                      TEST EAX,EAX
0054bac2  742a                      JZ 0x0054baee
0054bac4  6a00                      PUSH 0x0
0054bac6  68acd6c500                PUSH 0xc5d6ac
0054bacb  68dcd5c500                PUSH 0xc5d5dc
0054bad0  6a00                      PUSH 0x0
0054bad2  50                        PUSH EAX
0054bad3  e8d94d5a00                CALL 0x00af08b1
0054bad8  83c414                    ADD ESP,0x14
0054badb  85c0                      TEST EAX,EAX
0054badd  750f                      JNZ 0x0054baee
0054badf  688cdcb100                PUSH 0xb1dc8c
0054bae4  6a10                      PUSH 0x10
0054bae6  e8d5574c00                CALL 0x00a112c0
0054baeb  83c408                    ADD ESP,0x8
0054baee  8b0e                      MOV ECX,dword ptr [ESI]
0054baf0  85c9                      TEST ECX,ECX
0054baf2  75bc                      JNZ 0x0054bab0
0054baf4  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
0054baf7  8d873c030000              LEA EAX,[EDI + 0x33c]
0054bafd  50                        PUSH EAX
0054bafe  81c1040c0000              ADD ECX,0xc04
0054bb04  e887d6f4ff                CALL 0x00499190
0054bb09  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0054bb13  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
0054bb1d  c787c40b00000a000000      MOV dword ptr [EDI + 0xbc4],0xa
0054bb27  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0054bb2e  0f840e010000              JZ 0x0054bc42
0054bb34  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0054bb3a  85c0                      TEST EAX,EAX
0054bb3c  0f8400010000              JZ 0x0054bc42
0054bb42  6a00                      PUSH 0x0
0054bb44  68acd6c500                PUSH 0xc5d6ac
0054bb49  68dcd5c500                PUSH 0xc5d5dc
0054bb4e  6a00                      PUSH 0x0
0054bb50  50                        PUSH EAX
0054bb51  e85b4d5a00                CALL 0x00af08b1
0054bb56  83c414                    ADD ESP,0x14
0054bb59  85c0                      TEST EAX,EAX
0054bb5b  750f                      JNZ 0x0054bb6c
0054bb5d  688cdcb100                PUSH 0xb1dc8c
0054bb62  6a10                      PUSH 0x10
0054bb64  e857574c00                CALL 0x00a112c0
0054bb69  83c408                    ADD ESP,0x8
0054bb6c  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0054bb72  81c114040000              ADD ECX,0x414
0054bb78  e8e3762900                CALL 0x007e3260
0054bb7d  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0054bb83  85c0                      TEST EAX,EAX
0054bb85  742a                      JZ 0x0054bbb1
0054bb87  6a00                      PUSH 0x0
0054bb89  68acd6c500                PUSH 0xc5d6ac
0054bb8e  68dcd5c500                PUSH 0xc5d5dc
0054bb93  6a00                      PUSH 0x0
0054bb95  50                        PUSH EAX
0054bb96  e8164d5a00                CALL 0x00af08b1
0054bb9b  83c414                    ADD ESP,0x14
0054bb9e  85c0                      TEST EAX,EAX
0054bba0  750f                      JNZ 0x0054bbb1
0054bba2  688cdcb100                PUSH 0xb1dc8c
0054bba7  6a10                      PUSH 0x10
0054bba9  e812574c00                CALL 0x00a112c0
0054bbae  83c408                    ADD ESP,0x8
0054bbb1  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0054bbb7  8b987c0c0000              MOV EBX,dword ptr [EAX + 0xc7c]
0054bbbd  85c0                      TEST EAX,EAX
0054bbbf  742a                      JZ 0x0054bbeb
0054bbc1  6a00                      PUSH 0x0
0054bbc3  68acd6c500                PUSH 0xc5d6ac
0054bbc8  68dcd5c500                PUSH 0xc5d5dc
0054bbcd  6a00                      PUSH 0x0
0054bbcf  50                        PUSH EAX
0054bbd0  e8dc4c5a00                CALL 0x00af08b1
0054bbd5  83c414                    ADD ESP,0x14
0054bbd8  85c0                      TEST EAX,EAX
0054bbda  750f                      JNZ 0x0054bbeb
0054bbdc  688cdcb100                PUSH 0xb1dc8c
0054bbe1  6a10                      PUSH 0x10
0054bbe3  e8d8564c00                CALL 0x00a112c0
0054bbe8  83c408                    ADD ESP,0x8
0054bbeb  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0054bbf1  85c0                      TEST EAX,EAX
0054bbf3  744d                      JZ 0x0054bc42
0054bbf5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0054bc00  8db0c0030000              LEA ESI,[EAX + 0x3c0]
0054bc06  89987c0c0000              MOV dword ptr [EAX + 0xc7c],EBX
0054bc0c  8b06                      MOV EAX,dword ptr [ESI]
0054bc0e  85c0                      TEST EAX,EAX
0054bc10  742a                      JZ 0x0054bc3c
0054bc12  6a00                      PUSH 0x0
0054bc14  68acd6c500                PUSH 0xc5d6ac
0054bc19  68dcd5c500                PUSH 0xc5d5dc
0054bc1e  6a00                      PUSH 0x0
0054bc20  50                        PUSH EAX
0054bc21  e88b4c5a00                CALL 0x00af08b1
0054bc26  83c414                    ADD ESP,0x14
0054bc29  85c0                      TEST EAX,EAX
0054bc2b  750f                      JNZ 0x0054bc3c
0054bc2d  688cdcb100                PUSH 0xb1dc8c
0054bc32  6a10                      PUSH 0x10
0054bc34  e887564c00                CALL 0x00a112c0
0054bc39  83c408                    ADD ESP,0x8
0054bc3c  8b06                      MOV EAX,dword ptr [ESI]
0054bc3e  85c0                      TEST EAX,EAX
0054bc40  75be                      JNZ 0x0054bc00
0054bc42  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0054bc45  64890d00000000            MOV dword ptr FS:[0x0],ECX
0054bc4c  59                        POP ECX
0054bc4d  5f                        POP EDI
0054bc4e  5e                        POP ESI
0054bc4f  5b                        POP EBX
0054bc50  8be5                      MOV ESP,EBP
0054bc52  5d                        POP EBP
0054bc53  c3                        RET
0054bc54  682000c800                PUSH 0xc80020
0054bc59  e83f365a00                CALL 0x00aef29d
0054bc5e  83c404                    ADD ESP,0x4
0054bc61  833d2000c800ff            CMP dword ptr [0x00c80020],-0x1
0054bc68  0f858ff9ffff              JNZ 0x0054b5fd
0054bc6e  0f280590cbba00            MOVAPS XMM0,xmmword ptr [0x00bacb90]
0054bc75  0f11052400c800            MOVUPS xmmword ptr [0x00c80024],XMM0
0054bc7c  682000c800                PUSH 0xc80020
0054bc81  0f2805b0bfba00            MOVAPS XMM0,xmmword ptr [0x00babfb0]
0054bc88  0f11053400c800            MOVUPS xmmword ptr [0x00c80034],XMM0
0054bc8f  e8bf355a00                CALL 0x00aef253
0054bc94  83c404                    ADD ESP,0x4
0054bc97  e961f9ffff                JMP 0x0054b5fd
