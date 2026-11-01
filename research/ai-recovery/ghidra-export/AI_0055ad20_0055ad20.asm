; J460 NPC AI 0x0055ad20 AI_0055ad20
; types=806
; identities=806.0.0
; entry=0055ad20
0055ad20  53                        PUSH EBX
0055ad21  8bdc                      MOV EBX,ESP
0055ad23  83ec08                    SUB ESP,0x8
0055ad26  83e4f8                    AND ESP,0xfffffff8
0055ad29  83c404                    ADD ESP,0x4
0055ad2c  55                        PUSH EBP
0055ad2d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0055ad30  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0055ad34  8bec                      MOV EBP,ESP
0055ad36  6aff                      PUSH -0x1
0055ad38  68754daf00                PUSH 0xaf4d75
0055ad3d  64a100000000              MOV EAX,FS:[0x0]
0055ad43  50                        PUSH EAX
0055ad44  53                        PUSH EBX
0055ad45  81ecd8010000              SUB ESP,0x1d8
0055ad4b  a1b493bf00                MOV EAX,[0x00bf93b4]
0055ad50  33c5                      XOR EAX,EBP
0055ad52  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0055ad55  56                        PUSH ESI
0055ad56  57                        PUSH EDI
0055ad57  50                        PUSH EAX
0055ad58  8d45f4                    LEA EAX,[EBP + -0xc]
0055ad5b  64a300000000              MOV FS:[0x0],EAX
0055ad61  8bf9                      MOV EDI,ECX
0055ad63  89bd24feffff              MOV dword ptr [EBP + 0xfffffe24],EDI
0055ad69  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0055ad6f  85c0                      TEST EAX,EAX
0055ad71  0f8449090000              JZ 0x0055b6c0
0055ad77  83f804                    CMP EAX,0x4
0055ad7a  0f8489000000              JZ 0x0055ae09
0055ad80  83f808                    CMP EAX,0x8
0055ad83  0f85c3030000              JNZ 0x0055b14c
0055ad89  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055ad8d  7449                      JZ 0x0055add8
0055ad8f  68dcd2b100                PUSH 0xb1d2dc
0055ad94  8d4f78                    LEA ECX,[EDI + 0x78]
0055ad97  e83400ebff                CALL 0x0040add0
0055ad9c  84c0                      TEST AL,AL
0055ad9e  7429                      JZ 0x0055adc9
0055ada0  6a00                      PUSH 0x0
0055ada2  6a01                      PUSH 0x1
0055ada4  57                        PUSH EDI
0055ada5  51                        PUSH ECX
0055ada6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055adac  8d873c030000              LEA EAX,[EDI + 0x33c]
0055adb2  c704240000f042            MOV dword ptr [ESP],0x42f00000
0055adb9  50                        PUSH EAX
0055adba  e8a1951a00                CALL 0x00704360
0055adbf  c787c00b00000c000000      MOV dword ptr [EDI + 0xbc0],0xc
0055adc9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055adcd  7409                      JZ 0x0055add8
0055adcf  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0055add6  7514                      JNZ 0x0055adec
0055add8  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0055ade2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0055adec  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055adf4  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0055adfc  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055ae04  e943030000                JMP 0x0055b14c
0055ae09  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
0055ae0f  83fa64                    CMP EDX,0x64
0055ae12  7d1f                      JGE 0x0055ae33
0055ae14  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0055ae1c  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0055ae24  2bc8                      SUB ECX,EAX
0055ae26  03d1                      ADD EDX,ECX
0055ae28  899710040000              MOV dword ptr [EDI + 0x410],EDX
0055ae2e  83fa64                    CMP EDX,0x64
0055ae31  7c39                      JL 0x0055ae6c
0055ae33  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055ae3a  8bcf                      MOV ECX,EDI
0055ae3c  0f8417010000              JZ 0x0055af59
0055ae42  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0055ae4a  6a07                      PUSH 0x7
0055ae4c  6a00                      PUSH 0x0
0055ae4e  e80d001700                CALL 0x006cae60
0055ae53  84c0                      TEST AL,AL
0055ae55  0f8556010000              JNZ 0x0055afb1
0055ae5b  6a09                      PUSH 0x9
0055ae5d  8bcf                      MOV ECX,EDI
0055ae5f  e8fcd31700                CALL 0x006d8260
0055ae64  84c0                      TEST AL,AL
0055ae66  0f8545010000              JNZ 0x0055afb1
0055ae6c  a118ddb100                MOV EAX,[0x00b1dd18]
0055ae71  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0055ae77  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0055ae7e  c745b808000000            MOV dword ptr [EBP + -0x48],0x8
0055ae85  8945a8                    MOV dword ptr [EBP + -0x58],EAX
0055ae88  894dac                    MOV dword ptr [EBP + -0x54],ECX
0055ae8b  c645b000                  MOV byte ptr [EBP + -0x50],0x0
0055ae8f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0055ae96  a130ddb100                MOV EAX,[0x00b1dd30]
0055ae9b  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0055aea1  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0055aea8  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0055aeaf  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0055aeb2  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0055aeb5  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0055aeb9  51                        PUSH ECX
0055aeba  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0055aebe  8d45a8                    LEA EAX,[EBP + -0x58]
0055aec1  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0055aec8  8bcf                      MOV ECX,EDI
0055aeca  50                        PUSH EAX
0055aecb  8d45d4                    LEA EAX,[EBP + -0x2c]
0055aece  50                        PUSH EAX
0055aecf  e85c641600                CALL 0x006c1330
0055aed4  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0055aed8  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0055aedb  83fa10                    CMP EDX,0x10
0055aede  7228                      JC 0x0055af08
0055aee0  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0055aee3  42                        INC EDX
0055aee4  8bc1                      MOV EAX,ECX
0055aee6  81fa00100000              CMP EDX,0x1000
0055aeec  7210                      JC 0x0055aefe
0055aeee  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0055aef1  83c223                    ADD EDX,0x23
0055aef4  2bc1                      SUB EAX,ECX
0055aef6  83c0fc                    ADD EAX,-0x4
0055aef9  83f81f                    CMP EAX,0x1f
0055aefc  7755                      JA 0x0055af53
0055aefe  52                        PUSH EDX
0055aeff  51                        PUSH ECX
0055af00  e857425900                CALL 0x00aef15c
0055af05  83c408                    ADD ESP,0x8
0055af08  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0055af0f  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
0055af12  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0055af19  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0055af20  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0055af24  83fa10                    CMP EDX,0x10
0055af27  0f821b010000              JC 0x0055b048
0055af2d  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0055af30  42                        INC EDX
0055af31  8bc1                      MOV EAX,ECX
0055af33  81fa00100000              CMP EDX,0x1000
0055af39  0f82ff000000              JC 0x0055b03e
0055af3f  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0055af42  83c223                    ADD EDX,0x23
0055af45  2bc1                      SUB EAX,ECX
0055af47  83c0fc                    ADD EAX,-0x4
0055af4a  83f81f                    CMP EAX,0x1f
0055af4d  0f86eb000000              JBE 0x0055b03e
0055af53  ff159488b100              CALL dword ptr [0x00b18894]
0055af59  e8e2381600                CALL 0x006be840
0055af5e  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0055af66  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0055af6e  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0055af76  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0055af7e  f30f59c0                  MULSS XMM0,XMM0
0055af82  f30f59c9                  MULSS XMM1,XMM1
0055af86  f30f58c8                  ADDSS XMM1,XMM0
0055af8a  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
0055af92  0f2fc1                    COMISS XMM0,XMM1
0055af95  0f86d1feffff              JBE 0x0055ae6c
0055af9b  e8c03f1900                CALL 0x006eef60
0055afa0  33d2                      XOR EDX,EDX
0055afa2  b978000000                MOV ECX,0x78
0055afa7  f7f1                      DIV ECX
0055afa9  85d2                      TEST EDX,EDX
0055afab  0f85bbfeffff              JNZ 0x0055ae6c
0055afb1  51                        PUSH ECX
0055afb2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055afb9  6a00                      PUSH 0x0
0055afbb  6a05                      PUSH 0x5
0055afbd  51                        PUSH ECX
0055afbe  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055afc5  8bcf                      MOV ECX,EDI
0055afc7  68a7000000                PUSH 0xa7
0055afcc  e8cfbb1700                CALL 0x006d6ba0
0055afd1  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0055afd9  8d4f48                    LEA ECX,[EDI + 0x48]
0055afdc  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0055afe4  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0055afeb  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0055aff2  0f2fd0                    COMISS XMM2,XMM0
0055aff5  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0055afff  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0055b009  6a00                      PUSH 0x0
0055b00b  7622                      JBE 0x0055b02f
0055b00d  684407b600                PUSH 0xb60744
0055b012  e869f3eaff                CALL 0x0040a380
0055b017  0f57c9                    XORPS XMM1,XMM1
0055b01a  0f2f8f60030000            COMISS XMM1,dword ptr [EDI + 0x360]
0055b021  0f97c0                    SETA AL
0055b024  888748010000              MOV byte ptr [EDI + 0x148],AL
0055b02a  e920010000                JMP 0x0055b14f
0055b02f  680808b600                PUSH 0xb60808
0055b034  e847f3eaff                CALL 0x0040a380
0055b039  e90e010000                JMP 0x0055b14c
0055b03e  52                        PUSH EDX
0055b03f  51                        PUSH ECX
0055b040  e817415900                CALL 0x00aef15c
0055b045  83c408                    ADD ESP,0x8
0055b048  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0055b04e  2500080001                AND EAX,0x1000800
0055b053  c787340c00009a99993e      MOV dword ptr [EDI + 0xc34],0x3e99999a
0055b05d  83c800                    OR EAX,0x0
0055b060  746f                      JZ 0x0055b0d1
0055b062  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055b069  7566                      JNZ 0x0055b0d1
0055b06b  8bcf                      MOV ECX,EDI
0055b06d  e8ce371600                CALL 0x006be840
0055b072  6a00                      PUSH 0x0
0055b074  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0055b07a  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0055b080  898534feffff              MOV dword ptr [EBP + 0xfffffe34],EAX
0055b086  8d8530feffff              LEA EAX,[EBP + 0xfffffe30]
0055b08c  898d30feffff              MOV dword ptr [EBP + 0xfffffe30],ECX
0055b092  8d8f14040000              LEA ECX,[EDI + 0x414]
0055b098  50                        PUSH EAX
0055b099  e8a2982800                CALL 0x007e4940
0055b09e  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0055b0a5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055b0ad  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0055b0b5  f30f59c1                  MULSS XMM0,XMM1
0055b0b9  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055b0c1  7e3f                      JLE 0x0055b102
0055b0c3  f30f59c1                  MULSS XMM0,XMM1
0055b0c7  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055b0cf  eb31                      JMP 0x0055b102
0055b0d1  51                        PUSH ECX
0055b0d2  8d8528feffff              LEA EAX,[EBP + 0xfffffe28]
0055b0d8  c7042400000000            MOV dword ptr [ESP],0x0
0055b0df  50                        PUSH EAX
0055b0e0  8bcf                      MOV ECX,EDI
0055b0e2  e8593b1600                CALL 0x006bec40
0055b0e7  6a01                      PUSH 0x1
0055b0e9  6884030000                PUSH 0x384
0055b0ee  51                        PUSH ECX
0055b0ef  c704249a99993e            MOV dword ptr [ESP],0x3e99999a
0055b0f6  8d8f14040000              LEA ECX,[EDI + 0x414]
0055b0fc  50                        PUSH EAX
0055b0fd  e8be822800                CALL 0x007e33c0
0055b102  8bcf                      MOV ECX,EDI
0055b104  e837371600                CALL 0x006be840
0055b109  50                        PUSH EAX
0055b10a  8bcf                      MOV ECX,EDI
0055b10c  e84fcc1700                CALL 0x006d7d60
0055b111  84c0                      TEST AL,AL
0055b113  7437                      JZ 0x0055b14c
0055b115  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
0055b11c  742e                      JZ 0x0055b14c
0055b11e  e83d3e1900                CALL 0x006eef60
0055b123  33d2                      XOR EDX,EDX
0055b125  b903000000                MOV ECX,0x3
0055b12a  f7f1                      DIV ECX
0055b12c  85d2                      TEST EDX,EDX
0055b12e  751c                      JNZ 0x0055b14c
0055b130  51                        PUSH ECX
0055b131  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055b138  52                        PUSH EDX
0055b139  6a3c                      PUSH 0x3c
0055b13b  51                        PUSH ECX
0055b13c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055b143  8bcf                      MOV ECX,EDI
0055b145  6a74                      PUSH 0x74
0055b147  e854ba1700                CALL 0x006d6ba0
0055b14c  0f57c9                    XORPS XMM1,XMM1
0055b14f  660f6e9f10040000          MOVD XMM3,dword ptr [EDI + 0x410]
0055b157  8bcf                      MOV ECX,EDI
0055b159  f30f1015d0a9ba00          MOVSS XMM2,dword ptr [0x00baa9d0]
0055b161  0f5bdb                    CVTDQ2PS XMM3,XMM3
0055b164  6a01                      PUSH 0x1
0055b166  e8d5dc1700                CALL 0x006d8e40
0055b16b  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0055b171  85c0                      TEST EAX,EAX
0055b173  0f8f9c010000              JG 0x0055b315
0055b179  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0055b17c  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0055b17f  0f8497010000              JZ 0x0055b31c
0055b185  8b470c                    MOV EAX,dword ptr [EDI + 0xc]
0055b188  f30f1040ec                MOVSS XMM0,dword ptr [EAX + -0x14]
0055b18d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0055b195  f30f1048e8                MOVSS XMM1,dword ptr [EAX + -0x18]
0055b19a  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0055b1a2  0f28d0                    MOVAPS XMM2,XMM0
0055b1a5  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
0055b1ad  f30f59d0                  MULSS XMM2,XMM0
0055b1b1  0f28c1                    MOVAPS XMM0,XMM1
0055b1b4  f30f118d38feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM1
0055b1bc  f30f59c1                  MULSS XMM0,XMM1
0055b1c0  f30f58d0                  ADDSS XMM2,XMM0
0055b1c4  f30f10056ca0ba00          MOVSS XMM0,dword ptr [0x00baa06c]
0055b1cc  0f2fc2                    COMISS XMM0,XMM2
0055b1cf  7622                      JBE 0x0055b1f3
0055b1d1  8d8528feffff              LEA EAX,[EBP + 0xfffffe28]
0055b1d7  50                        PUSH EAX
0055b1d8  e8933e1200                CALL 0x0067f070
0055b1dd  83c404                    ADD ESP,0x4
0055b1e0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0055b1e5  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0055b1e9  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
0055b1f1  eb3c                      JMP 0x0055b22f
0055b1f3  0f28c2                    MOVAPS XMM0,XMM2
0055b1f6  e855a8edff                CALL 0x00435a50
0055b1fb  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0055b202  7633                      JBE 0x0055b237
0055b204  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0055b20c  f30f5ed0                  DIVSS XMM2,XMM0
0055b210  f30f108d38feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe38]
0055b218  0f28c2                    MOVAPS XMM0,XMM2
0055b21b  f30f59953cfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffe3c]
0055b223  f30f59c8                  MULSS XMM1,XMM0
0055b227  f30f11953cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM2
0055b22f  f30f118d38feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM1
0055b237  e8243d1900                CALL 0x006eef60
0055b23c  f30f108d38feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe38]
0055b244  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0055b24a  660f6ec0                  MOVD XMM0,EAX
0055b24e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055b252  c1e81f                    SHR EAX,0x1f
0055b255  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055b25e  660f5ac0                  CVTPD2PS XMM0,XMM0
0055b262  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055b26a  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
0055b272  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0055b27a  f30f59c8                  MULSS XMM1,XMM0
0055b27e  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0055b286  f30f118d30feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM1
0055b28e  f30f108d3cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe3c]
0055b296  f30f59c8                  MULSS XMM1,XMM0
0055b29a  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0055b2a2  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0055b2aa  e8813ceeff                CALL 0x0043ef30
0055b2af  e8fce81500                CALL 0x006b9bb0
0055b2b4  83e81b                    SUB EAX,0x1b
0055b2b7  7411                      JZ 0x0055b2ca
0055b2b9  83e801                    SUB EAX,0x1
0055b2bc  7516                      JNZ 0x0055b2d4
0055b2be  c7857cffffff03000000      MOV dword ptr [EBP + 0xffffff7c],0x3
0055b2c8  eb0a                      JMP 0x0055b2d4
0055b2ca  c7857cffffff04000000      MOV dword ptr [EBP + 0xffffff7c],0x4
0055b2d4  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0055b2da  c785fcfeffff9a99193f      MOV dword ptr [EBP + 0xfffffefc],0x3f19999a
0055b2e4  50                        PUSH EAX
0055b2e5  51                        PUSH ECX
0055b2e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055b2ed  8d8530feffff              LEA EAX,[EBP + 0xfffffe30]
0055b2f3  50                        PUSH EAX
0055b2f4  6a01                      PUSH 0x1
0055b2f6  8bcf                      MOV ECX,EDI
0055b2f8  e8d31a1700                CALL 0x006ccdd0
0055b2fd  e85e3c1900                CALL 0x006eef60
0055b302  33d2                      XOR EDX,EDX
0055b304  b914000000                MOV ECX,0x14
0055b309  f7f1                      DIV ECX
0055b30b  03d1                      ADD EDX,ECX
0055b30d  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
0055b313  eb07                      JMP 0x0055b31c
0055b315  48                        DEC EAX
0055b316  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0055b31c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0055b323  0f8ea7000000              JLE 0x0055b3d0
0055b329  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0055b32f  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
0055b335  c7853cfeffffb9000000      MOV dword ptr [EBP + 0xfffffe3c],0xb9
0055b33f  e83cb43f00                CALL 0x00956780
0055b344  83ec08                    SUB ESP,0x8
0055b347  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0055b34f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055b356  6a00                      PUSH 0x0
0055b358  6a02                      PUSH 0x2
0055b35a  51                        PUSH ECX
0055b35b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055b362  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0055b368  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
0055b36e  e8bd283d00                CALL 0x0092dc30
0055b373  8d8d40feffff              LEA ECX,[EBP + 0xfffffe40]
0055b379  e8b23beeff                CALL 0x0043ef30
0055b37e  e82de81500                CALL 0x006b9bb0
0055b383  83e81b                    SUB EAX,0x1b
0055b386  7411                      JZ 0x0055b399
0055b388  83e801                    SUB EAX,0x1
0055b38b  7516                      JNZ 0x0055b3a3
0055b38d  c785d4feffff03000000      MOV dword ptr [EBP + 0xfffffed4],0x3
0055b397  eb0a                      JMP 0x0055b3a3
0055b399  c785d4feffff04000000      MOV dword ptr [EBP + 0xfffffed4],0x4
0055b3a3  8d8540feffff              LEA EAX,[EBP + 0xfffffe40]
0055b3a9  c78554feffff9a99193f      MOV dword ptr [EBP + 0xfffffe54],0x3f19999a
0055b3b3  50                        PUSH EAX
0055b3b4  51                        PUSH ECX
0055b3b5  c7042400004040            MOV dword ptr [ESP],0x40400000
0055b3bc  8bcf                      MOV ECX,EDI
0055b3be  6840b6c700                PUSH 0xc7b640
0055b3c3  6a01                      PUSH 0x1
0055b3c5  e8061a1700                CALL 0x006ccdd0
0055b3ca  ff8fc00b0000              DEC dword ptr [EDI + 0xbc0]
0055b3d0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0055b3d7  0f843e030000              JZ 0x0055b71b
0055b3dd  e87e3b1900                CALL 0x006eef60
0055b3e2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055b3e8  8db73c030000              LEA ESI,[EDI + 0x33c]
0055b3ee  50                        PUSH EAX
0055b3ef  6a00                      PUSH 0x0
0055b3f1  6a00                      PUSH 0x0
0055b3f3  6840b6c700                PUSH 0xc7b640
0055b3f8  56                        PUSH ESI
0055b3f9  6884000000                PUSH 0x84
0055b3fe  68e8030000                PUSH 0x3e8
0055b403  89b53cfeffff              MOV dword ptr [EBP + 0xfffffe3c],ESI
0055b409  e812d7ecff                CALL 0x00428b20
0055b40e  8bf0                      MOV ESI,EAX
0055b410  e89be71500                CALL 0x006b9bb0
0055b415  83f81c                    CMP EAX,0x1c
0055b418  753d                      JNZ 0x0055b457
0055b41a  8b06                      MOV EAX,dword ptr [ESI]
0055b41c  8d4d94                    LEA ECX,[EBP + -0x6c]
0055b41f  6a01                      PUSH 0x1
0055b421  6a00                      PUSH 0x0
0055b423  68ff000000                PUSH 0xff
0055b428  0f57c0                    XORPS XMM0,XMM0
0055b42b  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
0055b432  6aff                      PUSH -0x1
0055b434  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
0055b438  51                        PUSH ECX
0055b439  0f2805c0c2ba00            MOVAPS XMM0,xmmword ptr [0x00bac2c0]
0055b440  8bce                      MOV ECX,ESI
0055b442  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0055b449  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0055b450  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
0055b454  ff503c                    CALL dword ptr [EAX + 0x3c]
0055b457  8b06                      MOV EAX,dword ptr [ESI]
0055b459  8bce                      MOV ECX,ESI
0055b45b  ff500c                    CALL dword ptr [EAX + 0xc]
0055b45e  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0055b464  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0055b46a  81e100000001              AND ECX,0x1000000
0055b470  2500002000                AND EAX,0x200000
0055b475  0bc8                      OR ECX,EAX
0055b477  0f859e020000              JNZ 0x0055b71b
0055b47d  8d7904                    LEA EDI,[ECX + 0x4]
0055b480  e8db3a1900                CALL 0x006eef60
0055b485  660f6ec0                  MOVD XMM0,EAX
0055b489  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055b48d  c1e81f                    SHR EAX,0x1f
0055b490  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055b499  660f5ac8                  CVTPD2PS XMM1,XMM0
0055b49d  f30f10052caeba00          MOVSS XMM0,dword ptr [0x00baae2c]
0055b4a5  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0055b4ad  f30f590db4a9ba00          MULSS XMM1,dword ptr [0x00baa9b4]
0055b4b5  f30f5cc1                  SUBSS XMM0,XMM1
0055b4b9  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0055b4c1  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
0055b4c9  e87220ecff                CALL 0x0041d540
0055b4ce  f30f118534feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM0
0055b4d6  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
0055b4de  e83d20ecff                CALL 0x0041d520
0055b4e3  f30f109534feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe34]
0055b4eb  0f28d8                    MOVAPS XMM3,XMM0
0055b4ee  8b853cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe3c]
0055b4f4  0f28ca                    MOVAPS XMM1,XMM2
0055b4f7  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
0055b4ff  0f57c0                    XORPS XMM0,XMM0
0055b502  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0055b509  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
0055b511  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0055b518  f30f118d28feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM1
0055b520  0f28cb                    MOVAPS XMM1,XMM3
0055b523  f30f591d04a9ba00          MULSS XMM3,dword ptr [0x00baa904]
0055b52b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0055b532  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
0055b53a  f30f5810                  ADDSS XMM2,dword ptr [EAX]
0055b53e  f30f585804                ADDSS XMM3,dword ptr [EAX + 0x4]
0055b543  f30f118d2cfeffff          MOVSS dword ptr [EBP + 0xfffffe2c],XMM1
0055b54b  0f280db0c7ba00            MOVAPS XMM1,xmmword ptr [0x00bac7b0]
0055b552  0f114dc0                  MOVUPS xmmword ptr [EBP + -0x40],XMM1
0055b556  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0055b55a  f30f11951cfeffff          MOVSS dword ptr [EBP + 0xfffffe1c],XMM2
0055b562  f30f119d20feffff          MOVSS dword ptr [EBP + 0xfffffe20],XMM3
0055b56a  e8f1391900                CALL 0x006eef60
0055b56f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055b575  50                        PUSH EAX
0055b576  6a02                      PUSH 0x2
0055b578  6a00                      PUSH 0x0
0055b57a  8d8528feffff              LEA EAX,[EBP + 0xfffffe28]
0055b580  50                        PUSH EAX
0055b581  8d851cfeffff              LEA EAX,[EBP + 0xfffffe1c]
0055b587  50                        PUSH EAX
0055b588  6a02                      PUSH 0x2
0055b58a  68e8030000                PUSH 0x3e8
0055b58f  e88cd5ecff                CALL 0x00428b20
0055b594  6a01                      PUSH 0x1
0055b596  8bf0                      MOV ESI,EAX
0055b598  8d45c0                    LEA EAX,[EBP + -0x40]
0055b59b  6a00                      PUSH 0x0
0055b59d  68ff000000                PUSH 0xff
0055b5a2  6aff                      PUSH -0x1
0055b5a4  8b16                      MOV EDX,dword ptr [ESI]
0055b5a6  8bce                      MOV ECX,ESI
0055b5a8  50                        PUSH EAX
0055b5a9  ff523c                    CALL dword ptr [EDX + 0x3c]
0055b5ac  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
0055b5b6  c786e00000000000e0c1      MOV dword ptr [ESI + 0xe0],0xc1e00000
0055b5c0  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
0055b5ca  e891391900                CALL 0x006eef60
0055b5cf  c78654030000f4010000      MOV dword ptr [ESI + 0x354],0x1f4
0055b5d9  660f6ec0                  MOVD XMM0,EAX
0055b5dd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055b5e1  c1e81f                    SHR EAX,0x1f
0055b5e4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055b5ed  660f5ac0                  CVTPD2PS XMM0,XMM0
0055b5f1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055b5f9  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0055b601  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
0055b609  e8a2e51500                CALL 0x006b9bb0
0055b60e  8b0e                      MOV ECX,dword ptr [ESI]
0055b610  6a01                      PUSH 0x1
0055b612  6a00                      PUSH 0x0
0055b614  68ff000000                PUSH 0xff
0055b619  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0055b61c  8bce                      MOV ECX,ESI
0055b61e  6aff                      PUSH -0x1
0055b620  83f81c                    CMP EAX,0x1c
0055b623  7507                      JNZ 0x0055b62c
0055b625  68083dc300                PUSH 0xc33d08
0055b62a  eb05                      JMP 0x0055b631
0055b62c  68dc3cc300                PUSH 0xc33cdc
0055b631  ffd2                      CALL EDX
0055b633  83ef01                    SUB EDI,0x1
0055b636  0f8544feffff              JNZ 0x0055b480
0055b63c  57                        PUSH EDI
0055b63d  6a0f                      PUSH 0xf
0055b63f  8d5701                    LEA EDX,[EDI + 0x1]
0055b642  b950a85500                MOV ECX,0x55a850
0055b647  e8b4f80a00                CALL 0x0060af00
0055b64c  8bb53cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe3c]
0055b652  8bd0                      MOV EDX,EAX
0055b654  8bbd24feffff              MOV EDI,dword ptr [EBP + 0xfffffe24]
0055b65a  83c408                    ADD ESP,0x8
0055b65d  8b0e                      MOV ECX,dword ptr [ESI]
0055b65f  898a3c030000              MOV dword ptr [EDX + 0x33c],ECX
0055b665  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0055b668  898a40030000              MOV dword ptr [EDX + 0x340],ECX
0055b66e  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
0055b675  7408                      JZ 0x0055b67f
0055b677  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0055b67d  eb03                      JMP 0x0055b682
0055b67f  83c8ff                    OR EAX,0xffffffff
0055b682  898250040000              MOV dword ptr [EDX + 0x450],EAX
0055b688  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0055b68e  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0055b694  81e100010020              AND ECX,0x20000100
0055b69a  098a68010000              OR dword ptr [EDX + 0x168],ECX
0055b6a0  2500004000                AND EAX,0x400000
0055b6a5  09826c010000              OR dword ptr [EDX + 0x16c],EAX
0055b6ab  8bca                      MOV ECX,EDX
0055b6ad  8b87380c0000              MOV EAX,dword ptr [EDI + 0xc38]
0055b6b3  898278040000              MOV dword ptr [EDX + 0x478],EAX
0055b6b9  8b02                      MOV EAX,dword ptr [EDX]
0055b6bb  ff500c                    CALL dword ptr [EAX + 0xc]
0055b6be  eb5b                      JMP 0x0055b71b
0055b6c0  6a01                      PUSH 0x1
0055b6c2  6818ddb100                PUSH 0xb1dd18
0055b6c7  8d4f48                    LEA ECX,[EDI + 0x48]
0055b6ca  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0055b6d4  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0055b6de  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0055b6e8  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0055b6f2  e8d9eeeaff                CALL 0x0040a5d0
0055b6f7  84c0                      TEST AL,AL
0055b6f9  7420                      JZ 0x0055b71b
0055b6fb  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0055b6fe  85c0                      TEST EAX,EAX
0055b700  7419                      JZ 0x0055b71b
0055b702  8d4f78                    LEA ECX,[EDI + 0x78]
0055b705  0f57c9                    XORPS XMM1,XMM1
0055b708  e8f3d6eaff                CALL 0x00408e00
0055b70d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0055b710  85c0                      TEST EAX,EAX
0055b712  7407                      JZ 0x0055b71b
0055b714  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
0055b71b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0055b71e  64890d00000000            MOV dword ptr FS:[0x0],ECX
0055b725  59                        POP ECX
0055b726  5f                        POP EDI
0055b727  5e                        POP ESI
0055b728  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0055b72b  33cd                      XOR ECX,EBP
0055b72d  e8f9395900                CALL 0x00aef12b
0055b732  8be5                      MOV ESP,EBP
0055b734  5d                        POP EBP
0055b735  8be3                      MOV ESP,EBX
0055b737  5b                        POP EBX
0055b738  c3                        RET
