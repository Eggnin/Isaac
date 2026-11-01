; J460 NPC AI 0x0052db50 AI_0052db50
; types=21,23,31,55,237,243
; identities=21.0.0,23.0.0,23.0.1,23.1.0,23.2.0,23.3.0,237.0.0,237.1.0,237.2.0,243.0.0,31.0.0,31.1.0,55.0.0,55.1.0,55.2.0
; entry=0052db50
0052db50  53                        PUSH EBX
0052db51  8bdc                      MOV EBX,ESP
0052db53  83ec08                    SUB ESP,0x8
0052db56  83e4f8                    AND ESP,0xfffffff8
0052db59  83c404                    ADD ESP,0x4
0052db5c  55                        PUSH EBP
0052db5d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0052db60  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0052db64  8bec                      MOV EBP,ESP
0052db66  6aff                      PUSH -0x1
0052db68  680547af00                PUSH 0xaf4705
0052db6d  64a100000000              MOV EAX,FS:[0x0]
0052db73  50                        PUSH EAX
0052db74  53                        PUSH EBX
0052db75  81ec80020000              SUB ESP,0x280
0052db7b  a1b493bf00                MOV EAX,[0x00bf93b4]
0052db80  33c5                      XOR EAX,EBP
0052db82  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0052db85  56                        PUSH ESI
0052db86  57                        PUSH EDI
0052db87  50                        PUSH EAX
0052db88  8d45f4                    LEA EAX,[EBP + -0xc]
0052db8b  64a300000000              MOV FS:[0x0],EAX
0052db91  8bf9                      MOV EDI,ECX
0052db93  89bddcfdffff              MOV dword ptr [EBP + 0xfffffddc],EDI
0052db99  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052db9c  83f817                    CMP EAX,0x17
0052db9f  7515                      JNZ 0x0052dbb6
0052dba1  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0052dba5  750f                      JNZ 0x0052dbb6
0052dba7  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0052dbab  7509                      JNZ 0x0052dbb6
0052dbad  c685cbfdffff01            MOV byte ptr [EBP + 0xfffffdcb],0x1
0052dbb4  eb40                      JMP 0x0052dbf6
0052dbb6  c685cbfdffff00            MOV byte ptr [EBP + 0xfffffdcb],0x0
0052dbbd  83f837                    CMP EAX,0x37
0052dbc0  7534                      JNZ 0x0052dbf6
0052dbc2  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0052dbc6  742e                      JZ 0x0052dbf6
0052dbc8  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0052dbce  83f8ff                    CMP EAX,-0x1
0052dbd1  7423                      JZ 0x0052dbf6
0052dbd3  51                        PUSH ECX
0052dbd4  57                        PUSH EDI
0052dbd5  50                        PUSH EAX
0052dbd6  6a08                      PUSH 0x8
0052dbd8  e833854200                CALL 0x00956110
0052dbdd  84c0                      TEST AL,AL
0052dbdf  7415                      JZ 0x0052dbf6
0052dbe1  8b07                      MOV EAX,dword ptr [EDI]
0052dbe3  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
0052dbe9  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
0052dbec  e87f80f0ff                CALL 0x00435c70
0052dbf1  50                        PUSH EAX
0052dbf2  8bcf                      MOV ECX,EDI
0052dbf4  ffd2                      CALL EDX
0052dbf6  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0052dbfd  0f84e8000000              JZ 0x0052dceb
0052dc03  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052dc06  83f837                    CMP EAX,0x37
0052dc09  757c                      JNZ 0x0052dc87
0052dc0b  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0052dc0f  0f84d6000000              JZ 0x0052dceb
0052dc15  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0052dc1b  2500000001                AND EAX,0x1000000
0052dc20  83c800                    OR EAX,0x0
0052dc23  0f85c2000000              JNZ 0x0052dceb
0052dc29  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0052dc30  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052dc36  8db73c030000              LEA ESI,[EDI + 0x33c]
0052dc3c  50                        PUSH EAX
0052dc3d  50                        PUSH EAX
0052dc3e  6a04                      PUSH 0x4
0052dc40  83ec10                    SUB ESP,0x10
0052dc43  8bc4                      MOV EAX,ESP
0052dc45  57                        PUSH EDI
0052dc46  6a01                      PUSH 0x1
0052dc48  83ec08                    SUB ESP,0x8
0052dc4b  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0052dc4e  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
0052dc56  c7042400002042            MOV dword ptr [ESP],0x42200000
0052dc5d  56                        PUSH ESI
0052dc5e  e83d161d00                CALL 0x006ff2a0
0052dc63  e8f8121c00                CALL 0x006eef60
0052dc68  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052dc6e  50                        PUSH EAX
0052dc6f  6a00                      PUSH 0x0
0052dc71  6a00                      PUSH 0x0
0052dc73  6840b6c700                PUSH 0xc7b640
0052dc78  56                        PUSH ESI
0052dc79  6a01                      PUSH 0x1
0052dc7b  68e8030000                PUSH 0x3e8
0052dc80  e89baeefff                CALL 0x00428b20
0052dc85  eb64                      JMP 0x0052dceb
0052dc87  83f817                    CMP EAX,0x17
0052dc8a  755f                      JNZ 0x0052dceb
0052dc8c  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052dc90  7559                      JNZ 0x0052dceb
0052dc92  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0052dc98  2500000001                AND EAX,0x1000000
0052dc9d  83c800                    OR EAX,0x0
0052dca0  7549                      JNZ 0x0052dceb
0052dca2  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
0052dca8  e88312f1ff                CALL 0x0043ef30
0052dcad  8bc8                      MOV ECX,EAX
0052dcaf  e88ca51a00                CALL 0x006d8240
0052dcb4  85c0                      TEST EAX,EAX
0052dcb6  7e0a                      JLE 0x0052dcc2
0052dcb8  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0052dcc0  eb08                      JMP 0x0052dcca
0052dcc2  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0052dcca  51                        PUSH ECX
0052dccb  6a07                      PUSH 0x7
0052dccd  8d45e4                    LEA EAX,[EBP + -0x1c]
0052dcd0  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0052dcd5  50                        PUSH EAX
0052dcd6  8d873c030000              LEA EAX,[EDI + 0x33c]
0052dcdc  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0052dce3  50                        PUSH EAX
0052dce4  8bcf                      MOV ECX,EDI
0052dce6  e8f5d51900                CALL 0x006cb2e0
0052dceb  817f28ed000000            CMP dword ptr [EDI + 0x28],0xed
0052dcf2  753d                      JNZ 0x0052dd31
0052dcf4  80bf3d0c000000            CMP byte ptr [EDI + 0xc3d],0x0
0052dcfb  7434                      JZ 0x0052dd31
0052dcfd  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0052dd01  752e                      JNZ 0x0052dd31
0052dd03  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0052dd06  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0052dd09  7426                      JZ 0x0052dd31
0052dd0b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0052dd10  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0052dd13  83e104                    AND ECX,0x4
0052dd16  83c900                    OR ECX,0x0
0052dd19  740e                      JZ 0x0052dd29
0052dd1b  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
0052dd1e  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
0052dd21  7506                      JNZ 0x0052dd29
0052dd23  c7000000a040              MOV dword ptr [EAX],0x40a00000
0052dd29  83c038                    ADD EAX,0x38
0052dd2c  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0052dd2f  75df                      JNZ 0x0052dd10
0052dd31  a17816c700                MOV EAX,[0x00c71678]
0052dd36  6a00                      PUSH 0x0
0052dd38  6a01                      PUSH 0x1
0052dd3a  6aff                      PUSH -0x1
0052dd3c  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052dd42  8d45ac                    LEA EAX,[EBP + -0x54]
0052dd45  6aff                      PUSH -0x1
0052dd47  6891010000                PUSH 0x191
0052dd4c  81c118120000              ADD ECX,0x1218
0052dd52  50                        PUSH EAX
0052dd53  e808d2eeff                CALL 0x0041af60
0052dd58  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0052dd5f  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
0052dd62  85f6                      TEST ESI,ESI
0052dd64  7456                      JZ 0x0052ddbc
0052dd66  8b55b0                    MOV EDX,dword ptr [EBP + -0x50]
0052dd69  33ff                      XOR EDI,EDI
0052dd6b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0052dd70  8b04ba                    MOV EAX,dword ptr [EDX + EDI*0x4]
0052dd73  83b8640b000010            CMP dword ptr [EAX + 0xb64],0x10
0052dd7a  7435                      JZ 0x0052ddb1
0052dd7c  3bfe                      CMP EDI,ESI
0052dd7e  7212                      JC 0x0052dd92
0052dd80  6864b7b100                PUSH 0xb1b764
0052dd85  6a10                      PUSH 0x10
0052dd87  e834354e00                CALL 0x00a112c0
0052dd8c  8b55b0                    MOV EDX,dword ptr [EBP + -0x50]
0052dd8f  83c408                    ADD ESP,0x8
0052dd92  4e                        DEC ESI
0052dd93  8bcf                      MOV ECX,EDI
0052dd95  3bfe                      CMP EDI,ESI
0052dd97  7313                      JNC 0x0052ddac
0052dd99  0f1f8000000000            NOP dword ptr [EAX]
0052dda0  8b448a04                  MOV EAX,dword ptr [EDX + ECX*0x4 + 0x4]
0052dda4  89048a                    MOV dword ptr [EDX + ECX*0x4],EAX
0052dda7  41                        INC ECX
0052dda8  3bce                      CMP ECX,ESI
0052ddaa  72f4                      JC 0x0052dda0
0052ddac  8975b8                    MOV dword ptr [EBP + -0x48],ESI
0052ddaf  eb01                      JMP 0x0052ddb2
0052ddb1  47                        INC EDI
0052ddb2  3bfe                      CMP EDI,ESI
0052ddb4  72ba                      JC 0x0052dd70
0052ddb6  8bbddcfdffff              MOV EDI,dword ptr [EBP + 0xfffffddc]
0052ddbc  6a00                      PUSH 0x0
0052ddbe  68acd6c500                PUSH 0xc5d6ac
0052ddc3  68dcd5c500                PUSH 0xc5d5dc
0052ddc8  6a00                      PUSH 0x0
0052ddca  ffb740030000              PUSH dword ptr [EDI + 0x340]
0052ddd0  8db73c030000              LEA ESI,[EDI + 0x33c]
0052ddd6  ff36                      PUSH dword ptr [ESI]
0052ddd8  8d4dac                    LEA ECX,[EBP + -0x54]
0052dddb  89b5d0fdffff              MOV dword ptr [EBP + 0xfffffdd0],ESI
0052dde1  6a00                      PUSH 0x0
0052dde3  e88808f9ff                CALL 0x004be670
0052dde8  50                        PUSH EAX
0052dde9  e8c32a5c00                CALL 0x00af08b1
0052ddee  83c414                    ADD ESP,0x14
0052ddf1  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0052ddf8  807dac00                  CMP byte ptr [EBP + -0x54],0x0
0052ddfc  8985e0fdffff              MOV dword ptr [EBP + 0xfffffde0],EAX
0052de02  7525                      JNZ 0x0052de29
0052de04  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0052de0b  b101                      MOV CL,0x1
0052de0d  8b55b0                    MOV EDX,dword ptr [EBP + -0x50]
0052de10  6a00                      PUSH 0x0
0052de12  6a00                      PUSH 0x0
0052de14  e8976a5300                CALL 0x00a648b0
0052de19  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0052de20  83c408                    ADD ESP,0x8
0052de23  8b85e0fdffff              MOV EAX,dword ptr [EBP + 0xfffffde0]
0052de29  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0052de30  0f85a8020000              JNZ 0x0052e0de
0052de36  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052de39  83f837                    CMP EAX,0x37
0052de3c  0f8588000000              JNZ 0x0052deca
0052de42  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0052de46  7564                      JNZ 0x0052deac
0052de48  e813111c00                CALL 0x006eef60
0052de4d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052de53  6a00                      PUSH 0x0
0052de55  68acd6c500                PUSH 0xc5d6ac
0052de5a  68dcd5c500                PUSH 0xc5d5dc
0052de5f  6a00                      PUSH 0x0
0052de61  50                        PUSH EAX
0052de62  6a00                      PUSH 0x0
0052de64  57                        PUSH EDI
0052de65  6840b6c700                PUSH 0xc7b640
0052de6a  56                        PUSH ESI
0052de6b  6a00                      PUSH 0x0
0052de6d  6a60                      PUSH 0x60
0052de6f  e8acacefff                CALL 0x00428b20
0052de74  50                        PUSH EAX
0052de75  e8372a5c00                CALL 0x00af08b1
0052de7a  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0052de80  83c414                    ADD ESP,0x14
0052de83  8db0bc030000              LEA ESI,[EAX + 0x3bc]
0052de89  85c9                      TEST ECX,ECX
0052de8b  7412                      JZ 0x0052de9f
0052de8d  8d45d0                    LEA EAX,[EBP + -0x30]
0052de90  8975d0                    MOV dword ptr [EBP + -0x30],ESI
0052de93  81c1cc030000              ADD ECX,0x3cc
0052de99  50                        PUSH EAX
0052de9a  e87113faff                CALL 0x004cf210
0052de9f  56                        PUSH ESI
0052dea0  8bcf                      MOV ECX,EDI
0052dea2  893e                      MOV dword ptr [ESI],EDI
0052dea4  e847fef9ff                CALL 0x004cdcf0
0052dea9  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052deac  83f837                    CMP EAX,0x37
0052deaf  7519                      JNZ 0x0052deca
0052deb1  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0052debb  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052dec5  e931010000                JMP 0x0052dffb
0052deca  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052ded4  3ded000000                CMP EAX,0xed
0052ded9  0f851c010000              JNZ 0x0052dffb
0052dedf  80bf3d0c000000            CMP byte ptr [EDI + 0xc3d],0x0
0052dee6  0f840f010000              JZ 0x0052dffb
0052deec  837f3400                  CMP dword ptr [EDI + 0x34],0x0
0052def0  0f8505010000              JNZ 0x0052dffb
0052def6  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0052defa  0f85fb000000              JNZ 0x0052dffb
0052df00  a17816c700                MOV EAX,[0x00c71678]
0052df05  6a00                      PUSH 0x0
0052df07  6a00                      PUSH 0x0
0052df09  6aff                      PUSH -0x1
0052df0b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052df11  8d45ac                    LEA EAX,[EBP + -0x54]
0052df14  6a01                      PUSH 0x1
0052df16  68ed000000                PUSH 0xed
0052df1b  81c118120000              ADD ECX,0x1218
0052df21  50                        PUSH EAX
0052df22  e839d0eeff                CALL 0x0041af60
0052df27  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0052df2e  33f6                      XOR ESI,ESI
0052df30  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
0052df33  33d2                      XOR EDX,EDX
0052df35  85c9                      TEST ECX,ECX
0052df37  7424                      JZ 0x0052df5d
0052df39  8b7db0                    MOV EDI,dword ptr [EBP + -0x50]
0052df3c  0f1f4000                  NOP dword ptr [EAX]
0052df40  8b0497                    MOV EAX,dword ptr [EDI + EDX*0x4]
0052df43  8d4e01                    LEA ECX,[ESI + 0x1]
0052df46  83783400                  CMP dword ptr [EAX + 0x34],0x0
0052df4a  0f45ce                    CMOVNZ ECX,ESI
0052df4d  42                        INC EDX
0052df4e  8bf1                      MOV ESI,ECX
0052df50  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
0052df53  3bd1                      CMP EDX,ECX
0052df55  72e9                      JC 0x0052df40
0052df57  8bbddcfdffff              MOV EDI,dword ptr [EBP + 0xfffffddc]
0052df5d  8d4601                    LEA EAX,[ESI + 0x1]
0052df60  99                        CDQ
0052df61  2bc2                      SUB EAX,EDX
0052df63  d1f8                      SAR EAX,0x1
0052df65  03c6                      ADD EAX,ESI
0052df67  3bc8                      CMP ECX,EAX
0052df69  7d6b                      JGE 0x0052dfd6
0052df6b  2bc1                      SUB EAX,ECX
0052df6d  8985e0fdffff              MOV dword ptr [EBP + 0xfffffde0],EAX
0052df73  e8e80f1c00                CALL 0x006eef60
0052df78  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052df7e  8bf0                      MOV ESI,EAX
0052df80  8b7f30                    MOV EDI,dword ptr [EDI + 0x30]
0052df83  8d45e4                    LEA EAX,[EBP + -0x1c]
0052df86  6a00                      PUSH 0x0
0052df88  6a00                      PUSH 0x0
0052df8a  6a00                      PUSH 0x0
0052df8c  51                        PUSH ECX
0052df8d  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052df93  c7042400007042            MOV dword ptr [ESP],0x42700000
0052df9a  ffb5d0fdffff              PUSH dword ptr [EBP + 0xfffffdd0]
0052dfa0  50                        PUSH EAX
0052dfa1  e87a552e00                CALL 0x00813520
0052dfa6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052dfac  56                        PUSH ESI
0052dfad  57                        PUSH EDI
0052dfae  8bbddcfdffff              MOV EDI,dword ptr [EBP + 0xfffffddc]
0052dfb4  57                        PUSH EDI
0052dfb5  6840b6c700                PUSH 0xc7b640
0052dfba  50                        PUSH EAX
0052dfbb  ff772c                    PUSH dword ptr [EDI + 0x2c]
0052dfbe  ff7728                    PUSH dword ptr [EDI + 0x28]
0052dfc1  e85aabefff                CALL 0x00428b20
0052dfc6  8bc8                      MOV ECX,EAX
0052dfc8  8b10                      MOV EDX,dword ptr [EAX]
0052dfca  ff520c                    CALL dword ptr [EDX + 0xc]
0052dfcd  83ade0fdffff01            SUB dword ptr [EBP + 0xfffffde0],0x1
0052dfd4  759d                      JNZ 0x0052df73
0052dfd6  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0052dfdd  807dac00                  CMP byte ptr [EBP + -0x54],0x0
0052dfe1  7518                      JNZ 0x0052dffb
0052dfe3  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
0052dfea  b101                      MOV CL,0x1
0052dfec  8b55b0                    MOV EDX,dword ptr [EBP + -0x50]
0052dfef  6a00                      PUSH 0x0
0052dff1  6a00                      PUSH 0x0
0052dff3  e8b8685300                CALL 0x00a648b0
0052dff8  83c408                    ADD ESP,0x8
0052dffb  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052dffe  3ded000000                CMP EAX,0xed
0052e003  7568                      JNZ 0x0052e06d
0052e005  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0052e009  0f85522a0000              JNZ 0x00530a61
0052e00f  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0052e016  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0052e01c  81c7e4010000              ADD EDI,0x1e4
0052e022  c785bcfdffff9a99193f      MOV dword ptr [EBP + 0xfffffdbc],0x3f19999a
0052e02c  c785c0fdffffcdcccc3e      MOV dword ptr [EBP + 0xfffffdc0],0x3ecccccd
0052e036  0f57c0                    XORPS XMM0,XMM0
0052e039  c785c4fdffff00000000      MOV dword ptr [EBP + 0xfffffdc4],0x0
0052e043  3bf8                      CMP EDI,EAX
0052e045  0f84162a0000              JZ 0x00530a61
0052e04b  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
0052e051  0f114710                  MOVUPS xmmword ptr [EDI + 0x10],XMM0
0052e055  f30f7e85bcfdffff          MOVQ XMM0,qword ptr [EBP + 0xfffffdbc]
0052e05d  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0052e062  0f110f                    MOVUPS xmmword ptr [EDI],XMM1
0052e065  894728                    MOV dword ptr [EDI + 0x28],EAX
0052e068  e9f4290000                JMP 0x00530a61
0052e06d  83f817                    CMP EAX,0x17
0052e070  0f85eb290000              JNZ 0x00530a61
0052e076  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0052e07a  0f85e1290000              JNZ 0x00530a61
0052e080  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0052e087  8d8570fdffff              LEA EAX,[EBP + 0xfffffd70]
0052e08d  81c7e4010000              ADD EDI,0x1e4
0052e093  c78590fdffff00000000      MOV dword ptr [EBP + 0xfffffd90],0x0
0052e09d  c78594fdffff00000000      MOV dword ptr [EBP + 0xfffffd94],0x0
0052e0a7  0f57c0                    XORPS XMM0,XMM0
0052e0aa  c78598fdffff00000000      MOV dword ptr [EBP + 0xfffffd98],0x0
0052e0b4  3bf8                      CMP EDI,EAX
0052e0b6  0f84a5290000              JZ 0x00530a61
0052e0bc  8b8598fdffff              MOV EAX,dword ptr [EBP + 0xfffffd98]
0052e0c2  0f114710                  MOVUPS xmmword ptr [EDI + 0x10],XMM0
0052e0c6  f30f7e8590fdffff          MOVQ XMM0,qword ptr [EBP + 0xfffffd90]
0052e0ce  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0052e0d3  0f110f                    MOVUPS xmmword ptr [EDI],XMM1
0052e0d6  894728                    MOV dword ptr [EDI + 0x28],EAX
0052e0d9  e983290000                JMP 0x00530a61
0052e0de  f30f101d04a3ba00          MOVSS XMM3,dword ptr [0x00baa304]
0052e0e6  c685dafdffff00            MOV byte ptr [EBP + 0xfffffdda],0x0
0052e0ed  f30f119dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM3
0052e0f5  85c0                      TEST EAX,EAX
0052e0f7  0f844f010000              JZ 0x0052e24c
0052e0fd  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0052e105  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0052e10a  f30f5ecb                  DIVSS XMM1,XMM3
0052e10e  f30f5ec3                  DIVSS XMM0,XMM3
0052e112  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0052e11a  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
0052e11e  f30f5cc8                  SUBSS XMM1,XMM0
0052e122  f30f1195d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM2
0052e12a  0f28c1                    MOVAPS XMM0,XMM1
0052e12d  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
0052e132  f30f59c1                  MULSS XMM0,XMM1
0052e136  0f28ca                    MOVAPS XMM1,XMM2
0052e139  f30f59ca                  MULSS XMM1,XMM2
0052e13d  f30f58c1                  ADDSS XMM0,XMM1
0052e141  e80a79f0ff                CALL 0x00435a50
0052e146  8b85e0fdffff              MOV EAX,dword ptr [EBP + 0xfffffde0]
0052e14c  0f28e0                    MOVAPS XMM4,XMM0
0052e14f  f30f108070030000          MOVSS XMM0,dword ptr [EAX + 0x370]
0052e157  0f28c8                    MOVAPS XMM1,XMM0
0052e15a  f30f590dcca4ba00          MULSS XMM1,dword ptr [0x00baa4cc]
0052e162  0f2fcc                    COMISS XMM1,XMM4
0052e165  7612                      JBE 0x0052e179
0052e167  c7875403000078050000      MOV dword ptr [EDI + 0x354],0x578
0052e171  f30f108070030000          MOVSS XMM0,dword ptr [EAX + 0x370]
0052e179  0f2fc4                    COMISS XMM0,XMM4
0052e17c  0f86ca000000              JBE 0x0052e24c
0052e182  83787c00                  CMP dword ptr [EAX + 0x7c],0x0
0052e186  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0052e18b  f30f108dd4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdd4]
0052e193  f30f5ed0                  DIVSS XMM2,XMM0
0052e197  c685dafdffff01            MOV byte ptr [EBP + 0xfffffdda],0x1
0052e19e  f30f5ec8                  DIVSS XMM1,XMM0
0052e1a2  f30f5ee0                  DIVSS XMM4,XMM0
0052e1a6  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0052e1ae  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0052e1b5  f30f590deca8ba00          MULSS XMM1,dword ptr [0x00baa8ec]
0052e1bd  f30f5cc2                  SUBSS XMM0,XMM2
0052e1c1  f30f59e4                  MULSS XMM4,XMM4
0052e1c5  f30f59c8                  MULSS XMM1,XMM0
0052e1c9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0052e1d1  f30f5cc4                  SUBSS XMM0,XMM4
0052e1d5  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
0052e1dd  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0052e1e2  7446                      JZ 0x0052e22a
0052e1e4  68b410b600                PUSH 0xb610b4
0052e1e9  8d4878                    LEA ECX,[EAX + 0x78]
0052e1ec  e8efcaedff                CALL 0x0040ace0
0052e1f1  f30f108dd4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdd4]
0052e1f9  85c0                      TEST EAX,EAX
0052e1fb  742d                      JZ 0x0052e22a
0052e1fd  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
0052e202  f30f594004                MULSS XMM0,dword ptr [EAX + 0x4]
0052e207  c787dc00000000000000      MOV dword ptr [EDI + 0xdc],0x0
0052e211  f30f1187e0000000          MOVSS dword ptr [EDI + 0xe0],XMM0
0052e219  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052e21e  f30f5e05b8a8ba00          DIVSS XMM0,dword ptr [0x00baa8b8]
0052e226  f30f59c8                  MULSS XMM1,XMM0
0052e22a  f30f118fec000000          MOVSS dword ptr [EDI + 0xec],XMM1
0052e232  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052e23a  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0052e242  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052e24a  eb28                      JMP 0x0052e274
0052e24c  c787dc00000000000000      MOV dword ptr [EDI + 0xdc],0x0
0052e256  c787e000000000000000      MOV dword ptr [EDI + 0xe0],0x0
0052e260  c7875403000000000000      MOV dword ptr [EDI + 0x354],0x0
0052e26a  c787ec00000000000000      MOV dword ptr [EDI + 0xec],0x0
0052e274  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052e277  83f817                    CMP EAX,0x17
0052e27a  7413                      JZ 0x0052e28f
0052e27c  83f837                    CMP EAX,0x37
0052e27f  740e                      JZ 0x0052e28f
0052e281  c685d0fdffff00            MOV byte ptr [EBP + 0xfffffdd0],0x0
0052e288  3ded000000                CMP EAX,0xed
0052e28d  7507                      JNZ 0x0052e296
0052e28f  c685d0fdffff01            MOV byte ptr [EBP + 0xfffffdd0],0x1
0052e296  8bcf                      MOV ECX,EDI
0052e298  e8a3051900                CALL 0x006be840
0052e29d  83782801                  CMP dword ptr [EAX + 0x28],0x1
0052e2a1  753c                      JNZ 0x0052e2df
0052e2a3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0052e2a9  2500000020                AND EAX,0x20000000
0052e2ae  83c800                    OR EAX,0x0
0052e2b1  742c                      JZ 0x0052e2df
0052e2b3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052e2ba  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052e2c0  7523                      JNZ 0x0052e2e5
0052e2c2  8b85d0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdd0]
0052e2c8  33d2                      XOR EDX,EDX
0052e2ca  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
0052e2d1  0fb6c0                    MOVZX EAX,AL
0052e2d4  0f4cc2                    CMOVL EAX,EDX
0052e2d7  8985d0fdffff              MOV dword ptr [EBP + 0xfffffdd0],EAX
0052e2dd  eb06                      JMP 0x0052e2e5
0052e2df  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052e2e5  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052e2e8  83f815                    CMP EAX,0x15
0052e2eb  7512                      JNZ 0x0052e2ff
0052e2ed  f30f100d80a3ba00          MOVSS XMM1,dword ptr [0x00baa380]
0052e2f5  f30f118dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM1
0052e2fd  eb58                      JMP 0x0052e357
0052e2ff  83f837                    CMP EAX,0x37
0052e302  7512                      JNZ 0x0052e316
0052e304  f30f101dc4a3ba00          MOVSS XMM3,dword ptr [0x00baa3c4]
0052e30c  f30f119dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM3
0052e314  eb49                      JMP 0x0052e35f
0052e316  83f81f                    CMP EAX,0x1f
0052e319  742c                      JZ 0x0052e347
0052e31b  3df3000000                CMP EAX,0xf3
0052e320  7425                      JZ 0x0052e347
0052e322  83f817                    CMP EAX,0x17
0052e325  7530                      JNZ 0x0052e357
0052e327  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052e32b  f30f101dc4a3ba00          MOVSS XMM3,dword ptr [0x00baa3c4]
0052e333  752a                      JNZ 0x0052e35f
0052e335  f30f100ddca2ba00          MOVSS XMM1,dword ptr [0x00baa2dc]
0052e33d  f30f118dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM1
0052e345  eb18                      JMP 0x0052e35f
0052e347  f30f10057ca3ba00          MOVSS XMM0,dword ptr [0x00baa37c]
0052e34f  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
0052e357  f30f101dc4a3ba00          MOVSS XMM3,dword ptr [0x00baa3c4]
0052e35f  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0052e367  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0052e36b  f30f5cc1                  SUBSS XMM0,XMM1
0052e36f  8b9100830100              MOV EDX,dword ptr [ECX + 0x18300]
0052e375  f30f5ec1                  DIVSS XMM0,XMM1
0052e379  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0052e381  f30f2cc0                  CVTTSS2SI EAX,XMM0
0052e385  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0052e38a  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
0052e390  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0052e398  f30f5ec1                  DIVSS XMM0,XMM1
0052e39c  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0052e3a4  f30f2cc8                  CVTTSS2SI ECX,XMM0
0052e3a8  85c0                      TEST EAX,EAX
0052e3aa  781f                      JS 0x0052e3cb
0052e3ac  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
0052e3af  3985d4fdffff              CMP dword ptr [EBP + 0xfffffdd4],EAX
0052e3b5  7d14                      JGE 0x0052e3cb
0052e3b7  85c9                      TEST ECX,ECX
0052e3b9  7810                      JS 0x0052e3cb
0052e3bb  3b4a10                    CMP ECX,dword ptr [EDX + 0x10]
0052e3be  7d0b                      JGE 0x0052e3cb
0052e3c0  0fafc1                    IMUL EAX,ECX
0052e3c3  0185d4fdffff              ADD dword ptr [EBP + 0xfffffdd4],EAX
0052e3c9  eb0a                      JMP 0x0052e3d5
0052e3cb  c785d4fdffffffffffff      MOV dword ptr [EBP + 0xfffffdd4],0xffffffff
0052e3d5  6884030000                PUSH 0x384
0052e3da  56                        PUSH ESI
0052e3db  8bca                      MOV ECX,EDX
0052e3dd  e89ef9f9ff                CALL 0x004cdd80
0052e3e2  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0052e3e5  c745e0f005b600            MOV dword ptr [EBP + -0x20],0xb605f0
0052e3ec  c745e40806b600            MOV dword ptr [EBP + -0x1c],0xb60608
0052e3f3  c745e8fc05b600            MOV dword ptr [EBP + -0x18],0xb605fc
0052e3fa  c74588940db600            MOV dword ptr [EBP + -0x78],0xb60d94
0052e401  c7458ce4cdb100            MOV dword ptr [EBP + -0x74],0xb1cde4
0052e408  c74590dccdb100            MOV dword ptr [EBP + -0x70],0xb1cddc
0052e40f  c745b0a810b600            MOV dword ptr [EBP + -0x50],0xb610a8
0052e416  c745b4acedb100            MOV dword ptr [EBP + -0x4c],0xb1edac
0052e41d  c745b8b4edb100            MOV dword ptr [EBP + -0x48],0xb1edb4
0052e424  c745d49c10b600            MOV dword ptr [EBP + -0x2c],0xb6109c
0052e42b  c745d8b805b600            MOV dword ptr [EBP + -0x28],0xb605b8
0052e432  c745dc7405b600            MOV dword ptr [EBP + -0x24],0xb60574
0052e439  c745a0f005b600            MOV dword ptr [EBP + -0x60],0xb605f0
0052e440  c745a49010b600            MOV dword ptr [EBP + -0x5c],0xb61090
0052e447  c745a89010b600            MOV dword ptr [EBP + -0x58],0xb61090
0052e44e  c745bc9c10b600            MOV dword ptr [EBP + -0x44],0xb6109c
0052e455  c745c07405b600            MOV dword ptr [EBP + -0x40],0xb60574
0052e45c  c745c47405b600            MOV dword ptr [EBP + -0x3c],0xb60574
0052e463  c78568ffffff18ddb100      MOV dword ptr [EBP + 0xffffff68],0xb1dd18
0052e46d  c7856cffffff18ddb100      MOV dword ptr [EBP + 0xffffff6c],0xb1dd18
0052e477  c78570ffffff88dab100      MOV dword ptr [EBP + 0xffffff70],0xb1da88
0052e481  c78574ffffffc0dab100      MOV dword ptr [EBP + 0xffffff74],0xb1dac0
0052e48b  c78578ffffffa8fcb500      MOV dword ptr [EBP + 0xffffff78],0xb5fca8
0052e495  c7857cffffffb4fcb500      MOV dword ptr [EBP + 0xffffff7c],0xb5fcb4
0052e49f  c745806cfcb500            MOV dword ptr [EBP + -0x80],0xb5fc6c
0052e4a6  c7458424fcb500            MOV dword ptr [EBP + -0x7c],0xb5fc24
0052e4ad  c74594e810b600            MOV dword ptr [EBP + -0x6c],0xb610e8
0052e4b4  c74598dc10b600            MOV dword ptr [EBP + -0x68],0xb610dc
0052e4bb  c7459cd010b600            MOV dword ptr [EBP + -0x64],0xb610d0
0052e4c2  c745c8c010b600            MOV dword ptr [EBP + -0x38],0xb610c0
0052e4c9  c745cc0411b600            MOV dword ptr [EBP + -0x34],0xb61104
0052e4d0  c745d0f410b600            MOV dword ptr [EBP + -0x30],0xb610f4
0052e4d7  83fa17                    CMP EDX,0x17
0052e4da  750d                      JNZ 0x0052e4e9
0052e4dc  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0052e4e0  c685dbfdffff01            MOV byte ptr [EBP + 0xfffffddb],0x1
0052e4e7  7407                      JZ 0x0052e4f0
0052e4e9  c685dbfdffff00            MOV byte ptr [EBP + 0xfffffddb],0x0
0052e4f0  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0052e4f6  83f905                    CMP ECX,0x5
0052e4f9  0f850b010000              JNZ 0x0052e60a
0052e4ff  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052e507  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0052e50e  9f                        LAHF
0052e50f  f6c444                    TEST AH,0x44
0052e512  7a2d                      JP 0x0052e541
0052e514  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052e51c  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0052e523  9f                        LAHF
0052e524  f6c444                    TEST AH,0x44
0052e527  7a18                      JP 0x0052e541
0052e529  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
0052e52f  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
0052e535  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0052e53b  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
0052e541  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0052e549  0f57db                    XORPS XMM3,XMM3
0052e54c  f30f5925e0a3ba00          MULSS XMM4,dword ptr [0x00baa3e0]
0052e554  0f2ee3                    UCOMISS XMM4,XMM3
0052e557  f30f11a76c030000          MOVSS dword ptr [EDI + 0x36c],XMM4
0052e55f  9f                        LAHF
0052e560  f6c444                    TEST AH,0x44
0052e563  7b45                      JNP 0x0052e5aa
0052e565  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052e56d  0f28d1                    MOVAPS XMM2,XMM1
0052e570  f30f5997b00b0000          MULSS XMM2,dword ptr [EDI + 0xbb0]
0052e578  f30f5ed4                  DIVSS XMM2,XMM4
0052e57c  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0052e584  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0052e58c  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
0052e594  f30f5ecc                  DIVSS XMM1,XMM4
0052e598  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0052e5a0  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0052e5a8  eb08                      JMP 0x0052e5b2
0052e5aa  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0052e5b2  0f2fd3                    COMISS XMM2,XMM3
0052e5b5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052e5bb  f30f1025a0a9ba00          MOVSS XMM4,dword ptr [0x00baa9a0]
0052e5c3  7618                      JBE 0x0052e5dd
0052e5c5  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0052e5cb  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0052e5cf  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
0052e5d4  f30f58cc                  ADDSS XMM1,XMM4
0052e5d8  0f2fc1                    COMISS XMM0,XMM1
0052e5db  7721                      JA 0x0052e5fe
0052e5dd  0f2fda                    COMISS XMM3,XMM2
0052e5e0  0f867b240000              JBE 0x00530a61
0052e5e6  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0052e5ec  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0052e5f1  f30f5cc4                  SUBSS XMM0,XMM4
0052e5f5  0f2f06                    COMISS XMM0,dword ptr [ESI]
0052e5f8  0f8663240000              JBE 0x00530a61
0052e5fe  8b07                      MOV EAX,dword ptr [EDI]
0052e600  8bcf                      MOV ECX,EDI
0052e602  ff5028                    CALL dword ptr [EAX + 0x28]
0052e605  e957240000                JMP 0x00530a61
0052e60a  f30f103550adba00          MOVSS XMM6,dword ptr [0x00baad50]
0052e612  33c0                      XOR EAX,EAX
0052e614  8985e4fdffff              MOV dword ptr [EBP + 0xfffffde4],EAX
0052e61a  81faed000000              CMP EDX,0xed
0052e620  7545                      JNZ 0x0052e667
0052e622  f30f10a760030000          MOVSS XMM4,dword ptr [EDI + 0x360]
0052e62a  f30f10af64030000          MOVSS XMM5,dword ptr [EDI + 0x364]
0052e632  0f28cc                    MOVAPS XMM1,XMM4
0052e635  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0052e63c  0f28c5                    MOVAPS XMM0,XMM5
0052e63f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052e646  0f2fc8                    COMISS XMM1,XMM0
0052e649  0f57c0                    XORPS XMM0,XMM0
0052e64c  760e                      JBE 0x0052e65c
0052e64e  0f2fc4                    COMISS XMM0,XMM4
0052e651  0f96c0                    SETBE AL
0052e654  83c002                    ADD EAX,0x2
0052e657  e98f000000                JMP 0x0052e6eb
0052e65c  0f2fc5                    COMISS XMM0,XMM5
0052e65f  0f96c0                    SETBE AL
0052e662  e984000000                JMP 0x0052e6eb
0052e667  83f908                    CMP ECX,0x8
0052e66a  7414                      JZ 0x0052e680
0052e66c  3885dbfdffff              CMP byte ptr [EBP + 0xfffffddb],AL
0052e672  7405                      JZ 0x0052e679
0052e674  83f910                    CMP ECX,0x10
0052e677  7407                      JZ 0x0052e680
0052e679  ba60030000                MOV EDX,0x360
0052e67e  eb05                      JMP 0x0052e685
0052e680  bab00b0000                MOV EDX,0xbb0
0052e685  f30f102c3a                MOVSS XMM5,dword ptr [EDX + EDI*0x1]
0052e68a  f30f10643a04              MOVSS XMM4,dword ptr [EDX + EDI*0x1 + 0x4]
0052e690  0f28cd                    MOVAPS XMM1,XMM5
0052e693  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0052e69a  0f28c4                    MOVAPS XMM0,XMM4
0052e69d  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052e6a4  0f2fc8                    COMISS XMM1,XMM0
0052e6a7  7636                      JBE 0x0052e6df
0052e6a9  83f909                    CMP ECX,0x9
0052e6ac  7443                      JZ 0x0052e6f1
0052e6ae  0f57c0                    XORPS XMM0,XMM0
0052e6b1  0f2fc5                    COMISS XMM0,XMM5
0052e6b4  0f97c0                    SETA AL
0052e6b7  888748010000              MOV byte ptr [EDI + 0x148],AL
0052e6bd  84c0                      TEST AL,AL
0052e6bf  741a                      JZ 0x0052e6db
0052e6c1  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
0052e6c9  f30f59c6                  MULSS XMM0,XMM6
0052e6cd  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
0052e6d5  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0052e6db  33c0                      XOR EAX,EAX
0052e6dd  eb12                      JMP 0x0052e6f1
0052e6df  33c0                      XOR EAX,EAX
0052e6e1  0f57c0                    XORPS XMM0,XMM0
0052e6e4  0f2fc4                    COMISS XMM0,XMM4
0052e6e7  0f96c0                    SETBE AL
0052e6ea  40                        INC EAX
0052e6eb  8985e4fdffff              MOV dword ptr [EBP + 0xfffffde4],EAX
0052e6f1  f30f102530a6ba00          MOVSS XMM4,dword ptr [0x00baa630]
0052e6f9  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0052e701  83f903                    CMP ECX,0x3
0052e704  0f85ef030000              JNZ 0x0052eaf9
0052e70a  817f28ed000000            CMP dword ptr [EDI + 0x28],0xed
0052e711  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052e719  f30f59c3                  MULSS XMM0,XMM3
0052e71d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052e725  0f85b2030000              JNZ 0x0052eadd
0052e72b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052e72f  0f84531c0000              JZ 0x00530388
0052e735  68dcd2b100                PUSH 0xb1d2dc
0052e73a  8d4f78                    LEA ECX,[EDI + 0x78]
0052e73d  e88ec6edff                CALL 0x0040add0
0052e742  84c0                      TEST AL,AL
0052e744  0f8493030000              JZ 0x0052eadd
0052e74a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052e74d  85c0                      TEST EAX,EAX
0052e74f  754c                      JNZ 0x0052e79d
0052e751  51                        PUSH ECX
0052e752  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052e759  50                        PUSH EAX
0052e75a  6a02                      PUSH 0x2
0052e75c  51                        PUSH ECX
0052e75d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052e764  8bcf                      MOV ECX,EDI
0052e766  68b2000000                PUSH 0xb2
0052e76b  e830841a00                CALL 0x006d6ba0
0052e770  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
0052e776  e8b507f1ff                CALL 0x0043ef30
0052e77b  50                        PUSH EAX
0052e77c  6a09                      PUSH 0x9
0052e77e  8d45e4                    LEA EAX,[EBP + -0x1c]
0052e781  c745e40000f040            MOV dword ptr [EBP + -0x1c],0x40f00000
0052e788  50                        PUSH EAX
0052e789  56                        PUSH ESI
0052e78a  8bcf                      MOV ECX,EDI
0052e78c  c745e80000c040            MOV dword ptr [EBP + -0x18],0x40c00000
0052e793  e848cb1900                CALL 0x006cb2e0
0052e798  e940030000                JMP 0x0052eadd
0052e79d  83f802                    CMP EAX,0x2
0052e7a0  0f8520020000              JNZ 0x0052e9c6
0052e7a6  8bcf                      MOV ECX,EDI
0052e7a8  e873841a00                CALL 0x006d6c20
0052e7ad  33c9                      XOR ECX,ECX
0052e7af  ba04000000                MOV EDX,0x4
0052e7b4  83f808                    CMP EAX,0x8
0052e7b7  6800000010                PUSH 0x10000000
0052e7bc  0f4eca                    CMOVLE ECX,EDX
0052e7bf  898dd4fdffff              MOV dword ptr [EBP + 0xfffffdd4],ECX
0052e7c5  8bcf                      MOV ECX,EDI
0052e7c7  6a00                      PUSH 0x0
0052e7c9  e8628ceeff                CALL 0x00417430
0052e7ce  84c0                      TEST AL,AL
0052e7d0  742b                      JZ 0x0052e7fd
0052e7d2  6a00                      PUSH 0x0
0052e7d4  51                        PUSH ECX
0052e7d5  6a02                      PUSH 0x2
0052e7d7  68d9000000                PUSH 0xd9
0052e7dc  8bcf                      MOV ECX,EDI
0052e7de  e8fddf1700                CALL 0x006ac7e0
0052e7e3  b904000000                MOV ECX,0x4
0052e7e8  2bc8                      SUB ECX,EAX
0052e7ea  8b85d4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdd4]
0052e7f0  3bc1                      CMP EAX,ECX
0052e7f2  0f4dc1                    CMOVGE EAX,ECX
0052e7f5  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
0052e7fb  eb06                      JMP 0x0052e803
0052e7fd  8b85d4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdd4]
0052e803  85c0                      TEST EAX,EAX
0052e805  0f8e9d010000              JLE 0x0052e9a8
0052e80b  33c0                      XOR EAX,EAX
0052e80d  8985e0fdffff              MOV dword ptr [EBP + 0xfffffde0],EAX
0052e813  0f1f4000                  NOP dword ptr [EAX]
0052e817  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0052e820  660f6ec0                  MOVD XMM0,EAX
0052e824  0f5bc0                    CVTDQ2PS XMM0,XMM0
0052e827  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0052e82f  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0052e837  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0052e83f  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0052e844  e8d7eceeff                CALL 0x0041d520
0052e849  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
0052e851  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
0052e856  e8e5eceeff                CALL 0x0041d540
0052e85b  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0052e860  e8fb061c00                CALL 0x006eef60
0052e865  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0052e86a  f30f109dd0fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdd0]
0052e872  0f28c2                    MOVAPS XMM0,XMM2
0052e875  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052e87d  0f28cb                    MOVAPS XMM1,XMM3
0052e880  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052e886  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0052e88e  50                        PUSH EAX
0052e88f  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0052e894  8d45e4                    LEA EAX,[EBP + -0x1c]
0052e897  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0052e89c  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0052e8a4  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0052e8ac  f30f118dd0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM1
0052e8b4  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0052e8b9  6a00                      PUSH 0x0
0052e8bb  57                        PUSH EDI
0052e8bc  0f28c8                    MOVAPS XMM1,XMM0
0052e8bf  f30f59d8                  MULSS XMM3,XMM0
0052e8c3  50                        PUSH EAX
0052e8c4  f30f59ca                  MULSS XMM1,XMM2
0052e8c8  8d45d8                    LEA EAX,[EBP + -0x28]
0052e8cb  50                        PUSH EAX
0052e8cc  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
0052e8d4  6a02                      PUSH 0x2
0052e8d6  f30f580e                  ADDSS XMM1,dword ptr [ESI]
0052e8da  68d9000000                PUSH 0xd9
0052e8df  f30f115ddc                MOVSS dword ptr [EBP + -0x24],XMM3
0052e8e4  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
0052e8e9  e832a2efff                CALL 0x00428b20
0052e8ee  8bd0                      MOV EDX,EAX
0052e8f0  83a268010000fb            AND dword ptr [EDX + 0x168],0xfffffffb
0052e8f7  f30f10926c030000          MOVSS XMM2,dword ptr [EDX + 0x36c]
0052e8ff  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
0052e906  8b8a6c010000              MOV ECX,dword ptr [EDX + 0x16c]
0052e90c  898a6c010000              MOV dword ptr [EDX + 0x16c],ECX
0052e912  9f                        LAHF
0052e913  f6c444                    TEST AH,0x44
0052e916  7b41                      JNP 0x0052e959
0052e918  f30f10829c030000          MOVSS XMM0,dword ptr [EDX + 0x39c]
0052e920  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
0052e925  f30f59c8                  MULSS XMM1,XMM0
0052e929  f30f5985d0fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdd0]
0052e931  f30f5eca                  DIVSS XMM1,XMM2
0052e935  f30f5ec2                  DIVSS XMM0,XMM2
0052e939  f30f588a60030000          ADDSS XMM1,dword ptr [EDX + 0x360]
0052e941  f30f588264030000          ADDSS XMM0,dword ptr [EDX + 0x364]
0052e949  f30f118a60030000          MOVSS dword ptr [EDX + 0x360],XMM1
0052e951  f30f118264030000          MOVSS dword ptr [EDX + 0x364],XMM0
0052e959  8b02                      MOV EAX,dword ptr [EDX]
0052e95b  8bca                      MOV ECX,EDX
0052e95d  c78280030000cdcccc3d      MOV dword ptr [EDX + 0x380],0x3dcccccd
0052e967  ff500c                    CALL dword ptr [EAX + 0xc]
0052e96a  8b85e0fdffff              MOV EAX,dword ptr [EBP + 0xfffffde0]
0052e970  40                        INC EAX
0052e971  8985e0fdffff              MOV dword ptr [EBP + 0xfffffde0],EAX
0052e977  3b85d4fdffff              CMP EAX,dword ptr [EBP + 0xfffffdd4]
0052e97d  0f8c9dfeffff              JL 0x0052e820
0052e983  51                        PUSH ECX
0052e984  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052e98b  6a00                      PUSH 0x0
0052e98d  6a0a                      PUSH 0xa
0052e98f  51                        PUSH ECX
0052e990  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0052e997  8bcf                      MOV ECX,EDI
0052e999  68ed000000                PUSH 0xed
0052e99e  e8fd811a00                CALL 0x006d6ba0
0052e9a3  e935010000                JMP 0x0052eadd
0052e9a8  6a00                      PUSH 0x0
0052e9aa  6a01                      PUSH 0x1
0052e9ac  57                        PUSH EDI
0052e9ad  51                        PUSH ECX
0052e9ae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052e9b4  c704240000f042            MOV dword ptr [ESP],0x42f00000
0052e9bb  56                        PUSH ESI
0052e9bc  e89f591d00                CALL 0x00704360
0052e9c1  e917010000                JMP 0x0052eadd
0052e9c6  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0052e9ca  0f850d010000              JNZ 0x0052eadd
0052e9d0  33c0                      XOR EAX,EAX
0052e9d2  8985e0fdffff              MOV dword ptr [EBP + 0xfffffde0],EAX
0052e9d8  e883051c00                CALL 0x006eef60
0052e9dd  33d2                      XOR EDX,EDX
0052e9df  b903000000                MOV ECX,0x3
0052e9e4  f7f1                      DIV ECX
0052e9e6  85d2                      TEST EDX,EDX
0052e9e8  0f84ef000000              JZ 0x0052eadd
0052e9ee  6690                      NOP
0052e9f0  e86b051c00                CALL 0x006eef60
0052e9f5  660f6ec0                  MOVD XMM0,EAX
0052e9f9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052e9fd  c1e81f                    SHR EAX,0x1f
0052ea00  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052ea09  660f5ac0                  CVTPD2PS XMM0,XMM0
0052ea0d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052ea15  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0052ea1d  f30f58c0                  ADDSS XMM0,XMM0
0052ea21  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0052ea26  e815ebeeff                CALL 0x0041d540
0052ea2b  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
0052ea33  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
0052ea38  e8e3eaeeff                CALL 0x0041d520
0052ea3d  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0052ea42  e819051c00                CALL 0x006eef60
0052ea47  f30f1085d0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdd0]
0052ea4f  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0052ea54  0f28c8                    MOVAPS XMM1,XMM0
0052ea57  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052ea5d  f30f58c8                  ADDSS XMM1,XMM0
0052ea61  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0052ea69  50                        PUSH EAX
0052ea6a  6a00                      PUSH 0x0
0052ea6c  57                        PUSH EDI
0052ea6d  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0052ea71  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
0052ea76  8d45e4                    LEA EAX,[EBP + -0x1c]
0052ea79  0f28ca                    MOVAPS XMM1,XMM2
0052ea7c  f30f58ca                  ADDSS XMM1,XMM2
0052ea80  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
0052ea88  50                        PUSH EAX
0052ea89  8d45d8                    LEA EAX,[EBP + -0x28]
0052ea8c  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0052ea91  50                        PUSH EAX
0052ea92  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
0052ea97  6a00                      PUSH 0x0
0052ea99  6a12                      PUSH 0x12
0052ea9b  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0052eaa0  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
0052eaa5  e876a0efff                CALL 0x00428b20
0052eaaa  ff85e0fdffff              INC dword ptr [EBP + 0xfffffde0]
0052eab0  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0052eab6  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0052eabd  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0052eac3  e898041c00                CALL 0x006eef60
0052eac8  33d2                      XOR EDX,EDX
0052eaca  b903000000                MOV ECX,0x3
0052eacf  f7f1                      DIV ECX
0052ead1  3995e0fdffff              CMP dword ptr [EBP + 0xfffffde0],EDX
0052ead7  0f8213ffffff              JC 0x0052e9f0
0052eadd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052eae1  0f84a1180000              JZ 0x00530388
0052eae7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052eaee  0f859e180000              JNZ 0x00530392
0052eaf4  e98f180000                JMP 0x00530388
0052eaf9  83f904                    CMP ECX,0x4
0052eafc  0f85e40a0000              JNZ 0x0052f5e6
0052eb02  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
0052eb05  8d7748                    LEA ESI,[EDI + 0x48]
0052eb08  8975d0                    MOV dword ptr [EBP + -0x30],ESI
0052eb0b  83e937                    SUB ECX,0x37
0052eb0e  7422                      JZ 0x0052eb32
0052eb10  81e9b6000000              SUB ECX,0xb6
0052eb16  7411                      JZ 0x0052eb29
0052eb18  83e906                    SUB ECX,0x6
0052eb1b  7406                      JZ 0x0052eb23
0052eb1d  8b4485e0                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x20]
0052eb21  eb13                      JMP 0x0052eb36
0052eb23  8b4485a0                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x60]
0052eb27  eb0d                      JMP 0x0052eb36
0052eb29  8b848568ffffff            MOV EAX,dword ptr [EBP + EAX*0x4 + 0xffffff68]
0052eb30  eb04                      JMP 0x0052eb36
0052eb32  8b448588                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x78]
0052eb36  6a00                      PUSH 0x0
0052eb38  50                        PUSH EAX
0052eb39  8bce                      MOV ECX,ESI
0052eb3b  e840b8edff                CALL 0x0040a380
0052eb40  8b8de0fdffff              MOV ECX,dword ptr [EBP + 0xfffffde0]
0052eb46  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
0052eb4e  85c9                      TEST ECX,ECX
0052eb50  7517                      JNZ 0x0052eb69
0052eb52  51                        PUSH ECX
0052eb53  51                        PUSH ECX
0052eb54  8d8f14040000              LEA ECX,[EDI + 0x414]
0052eb5a  f30f110424                MOVSS dword ptr [ESP],XMM0
0052eb5f  e8dc672b00                CALL 0x007e5340
0052eb64  e989000000                JMP 0x0052ebf2
0052eb69  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
0052eb6f  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
0052eb75  f30f590500a5ba00          MULSS XMM0,dword ptr [0x00baa500]
0052eb7d  6a01                      PUSH 0x1
0052eb7f  6a00                      PUSH 0x0
0052eb81  51                        PUSH ECX
0052eb82  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
0052eb85  8d45e4                    LEA EAX,[EBP + -0x1c]
0052eb88  894de8                    MOV dword ptr [EBP + -0x18],ECX
0052eb8b  8d8f14040000              LEA ECX,[EDI + 0x414]
0052eb91  f30f110424                MOVSS dword ptr [ESP],XMM0
0052eb96  50                        PUSH EAX
0052eb97  e824482b00                CALL 0x007e33c0
0052eb9c  8d9760030000              LEA EDX,[EDI + 0x360]
0052eba2  8d4de4                    LEA ECX,[EBP + -0x1c]
0052eba5  e8c6051500                CALL 0x0067f170
0052ebaa  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0052ebb2  8bf0                      MOV ESI,EAX
0052ebb4  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0052ebbc  f30f59c0                  MULSS XMM0,XMM0
0052ebc0  f30f59c9                  MULSS XMM1,XMM1
0052ebc4  f30f58c1                  ADDSS XMM0,XMM1
0052ebc8  e8836ef0ff                CALL 0x00435a50
0052ebcd  0f28c8                    MOVAPS XMM1,XMM0
0052ebd0  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
0052ebd5  f30f590e                  MULSS XMM1,dword ptr [ESI]
0052ebd9  8b75d0                    MOV ESI,dword ptr [EBP + -0x30]
0052ebdc  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0052ebe4  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0052ebec  8bbddcfdffff              MOV EDI,dword ptr [EBP + 0xfffffddc]
0052ebf2  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0052ebfa  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
0052ec01  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052ec09  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0052ec11  f30f100d30a4ba00          MOVSS XMM1,dword ptr [0x00baa430]
0052ec19  9f                        LAHF
0052ec1a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052ec22  f6c444                    TEST AH,0x44
0052ec25  7b13                      JNP 0x0052ec3a
0052ec27  0f28c2                    MOVAPS XMM0,XMM2
0052ec2a  f30f59d1                  MULSS XMM2,XMM1
0052ec2e  f30f58c1                  ADDSS XMM0,XMM1
0052ec32  f30f5cc2                  SUBSS XMM0,XMM2
0052ec36  f30f5ec8                  DIVSS XMM1,XMM0
0052ec3a  837f281f                  CMP dword ptr [EDI + 0x28],0x1f
0052ec3e  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
0052ec46  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0052ec4e  756f                      JNZ 0x0052ecbf
0052ec50  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052ec54  7569                      JNZ 0x0052ecbf
0052ec56  68dcd2b100                PUSH 0xb1d2dc
0052ec5b  8bce                      MOV ECX,ESI
0052ec5d  e8cec3edff                CALL 0x0040b030
0052ec62  84c0                      TEST AL,AL
0052ec64  7459                      JZ 0x0052ecbf
0052ec66  51                        PUSH ECX
0052ec67  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052ec6e  6a00                      PUSH 0x0
0052ec70  6a02                      PUSH 0x2
0052ec72  51                        PUSH ECX
0052ec73  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052ec7a  8bcf                      MOV ECX,EDI
0052ec7c  68b2000000                PUSH 0xb2
0052ec81  e81a7f1a00                CALL 0x006d6ba0
0052ec86  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
0052ec8c  e89f02f1ff                CALL 0x0043ef30
0052ec91  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
0052ec97  e89402f1ff                CALL 0x0043ef30
0052ec9c  8bf0                      MOV ESI,EAX
0052ec9e  e8bd021c00                CALL 0x006eef60
0052eca3  56                        PUSH ESI
0052eca4  51                        PUSH ECX
0052eca5  83e001                    AND EAX,0x1
0052eca8  c7042400002041            MOV dword ptr [ESP],0x41200000
0052ecaf  83c003                    ADD EAX,0x3
0052ecb2  8bcf                      MOV ECX,EDI
0052ecb4  6840b6c700                PUSH 0xc7b640
0052ecb9  50                        PUSH EAX
0052ecba  e811e11900                CALL 0x006ccdd0
0052ecbf  80bdd0fdffff00            CMP byte ptr [EBP + 0xfffffdd0],0x0
0052ecc6  0f845e080000              JZ 0x0052f52a
0052eccc  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052ecd3  8bcf                      MOV ECX,EDI
0052ecd5  7409                      JZ 0x0052ece0
0052ecd7  6a09                      PUSH 0x9
0052ecd9  e882951a00                CALL 0x006d8260
0052ecde  eb0a                      JMP 0x0052ecea
0052ece0  ff7720                    PUSH dword ptr [EDI + 0x20]
0052ece3  6a04                      PUSH 0x4
0052ece5  e826da1700                CALL 0x006ac710
0052ecea  84c0                      TEST AL,AL
0052ecec  0f8438080000              JZ 0x0052f52a
0052ecf2  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
0052ecf8  33c0                      XOR EAX,EAX
0052ecfa  ba02000000                MOV EDX,0x2
0052ecff  837f2837                  CMP dword ptr [EDI + 0x28],0x37
0052ed03  0f44c2                    CMOVZ EAX,EDX
0052ed06  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0052ed09  a17816c700                MOV EAX,[0x00c71678]
0052ed0e  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
0052ed14  8d45a4                    LEA EAX,[EBP + -0x5c]
0052ed17  50                        PUSH EAX
0052ed18  8bcf                      MOV ECX,EDI
0052ed1a  e8e1412e00                CALL 0x00812f00
0052ed1f  51                        PUSH ECX
0052ed20  8b8ddcfdffff              MOV ECX,dword ptr [EBP + 0xfffffddc]
0052ed26  8d458c                    LEA EAX,[EBP + -0x74]
0052ed29  c7042400000000            MOV dword ptr [ESP],0x0
0052ed30  50                        PUSH EAX
0052ed31  e80aff1800                CALL 0x006bec40
0052ed36  8b8ddcfdffff              MOV ECX,dword ptr [EBP + 0xfffffddc]
0052ed3c  8bf0                      MOV ESI,EAX
0052ed3e  e8fdfa1800                CALL 0x006be840
0052ed43  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0052ed4b  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0052ed50  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0052ed58  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
0052ed60  e8fb011c00                CALL 0x006eef60
0052ed65  51                        PUSH ECX
0052ed66  8bcf                      MOV ECX,EDI
0052ed68  660f6ec0                  MOVD XMM0,EAX
0052ed6c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052ed70  c1e81f                    SHR EAX,0x1f
0052ed73  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052ed7c  c704240000a041            MOV dword ptr [ESP],0x41a00000
0052ed83  8d45c0                    LEA EAX,[EBP + -0x40]
0052ed86  50                        PUSH EAX
0052ed87  8d45d8                    LEA EAX,[EBP + -0x28]
0052ed8a  50                        PUSH EAX
0052ed8b  660f5ad0                  CVTPD2PS XMM2,XMM0
0052ed8f  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0052ed97  0f28ca                    MOVAPS XMM1,XMM2
0052ed9a  f30f5995d0fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdd0]
0052eda2  f30f594dd0                MULSS XMM1,dword ptr [EBP + -0x30]
0052eda7  f30f59155ca8ba00          MULSS XMM2,dword ptr [0x00baa85c]
0052edaf  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
0052edb7  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
0052edbc  f30f580e                  ADDSS XMM1,dword ptr [ESI]
0052edc0  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
0052edc5  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
0052edca  e8c172f0ff                CALL 0x00436090
0052edcf  8b85e0fdffff              MOV EAX,dword ptr [EBP + 0xfffffde0]
0052edd5  85c0                      TEST EAX,EAX
0052edd7  741c                      JZ 0x0052edf5
0052edd9  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0052ede1  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0052ede9  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
0052edee  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
0052edf3  eb0a                      JMP 0x0052edff
0052edf5  f30f1055dc                MOVSS XMM2,dword ptr [EBP + -0x24]
0052edfa  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
0052edff  8bbddcfdffff              MOV EDI,dword ptr [EBP + 0xfffffddc]
0052ee05  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
0052ee0a  f30f5c4da4                SUBSS XMM1,dword ptr [EBP + -0x5c]
0052ee0f  f30f1195d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM2
0052ee17  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052ee1e  f30f5c55a8                SUBSS XMM2,dword ptr [EBP + -0x58]
0052ee23  f30f118dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM1
0052ee2b  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
0052ee30  f30f1195e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM2
0052ee38  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
0052ee3d  7441                      JZ 0x0052ee80
0052ee3f  8d458c                    LEA EAX,[EBP + -0x74]
0052ee42  0f57d2                    XORPS XMM2,XMM2
0052ee45  50                        PUSH EAX
0052ee46  8bcf                      MOV ECX,EDI
0052ee48  e883941a00                CALL 0x006d82d0
0052ee4d  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0052ee51  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0052ee56  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0052ee5e  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0052ee66  f30f118dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM1
0052ee6e  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
0052ee73  f30f1195e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM2
0052ee7b  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
0052ee80  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
0052ee83  83fe17                    CMP ESI,0x17
0052ee86  0f85da030000              JNZ 0x0052f266
0052ee8c  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0052ee90  0f85d0030000              JNZ 0x0052f266
0052ee96  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
0052ee9e  e89de6eeff                CALL 0x0041d540
0052eea3  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0052eeab  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
0052eeb3  e868e6eeff                CALL 0x0041d520
0052eeb8  f30f10ade0fdffff          MOVSS XMM5,dword ptr [EBP + 0xfffffde0]
0052eec0  f30f10a5ccfdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffdcc]
0052eec8  0f28cd                    MOVAPS XMM1,XMM5
0052eecb  f30f59addcfdffff          MULSS XMM5,dword ptr [EBP + 0xfffffddc]
0052eed3  0f28dc                    MOVAPS XMM3,XMM4
0052eed6  f30f599ddcfdffff          MULSS XMM3,dword ptr [EBP + 0xfffffddc]
0052eede  f30f59c8                  MULSS XMM1,XMM0
0052eee2  f30f59e0                  MULSS XMM4,XMM0
0052eee6  f30f100540cbba00          MOVSS XMM0,dword ptr [0x00bacb40]
0052eeee  f30f5cd9                  SUBSS XMM3,XMM1
0052eef2  f30f58e5                  ADDSS XMM4,XMM5
0052eef6  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
0052eefe  f30f115de4                MOVSS dword ptr [EBP + -0x1c],XMM3
0052ef03  0f54d8                    ANDPS XMM3,XMM0
0052ef06  0f2feb                    COMISS XMM5,XMM3
0052ef09  f30f1165e8                MOVSS dword ptr [EBP + -0x18],XMM4
0052ef0e  770c                      JA 0x0052ef1c
0052ef10  0f54e0                    ANDPS XMM4,XMM0
0052ef13  0f2fec                    COMISS XMM5,XMM4
0052ef16  0f8676140000              JBE 0x00530392
0052ef1c  6a00                      PUSH 0x0
0052ef1e  68000a0001                PUSH 0x1000a00
0052ef23  8bcf                      MOV ECX,EDI
0052ef25  e80685eeff                CALL 0x00417430
0052ef2a  84c0                      TEST AL,AL
0052ef2c  0f8560140000              JNZ 0x00530392
0052ef32  8d55e4                    LEA EDX,[EBP + -0x1c]
0052ef35  8d4dd8                    LEA ECX,[EBP + -0x28]
0052ef38  e833021500                CALL 0x0067f170
0052ef3d  f30f100548adba00          MOVSS XMM0,dword ptr [0x00baad48]
0052ef45  8bf0                      MOV ESI,EAX
0052ef47  e8f4e5eeff                CALL 0x0041d540
0052ef4c  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
0052ef54  f30f100548adba00          MOVSS XMM0,dword ptr [0x00baad48]
0052ef5c  e8bfe5eeff                CALL 0x0041d520
0052ef61  f30f10a5ccfdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffdcc]
0052ef69  0f28c8                    MOVAPS XMM1,XMM0
0052ef6c  f30f5906                  MULSS XMM0,dword ptr [ESI]
0052ef70  0f28ec                    MOVAPS XMM5,XMM4
0052ef73  f30f592e                  MULSS XMM5,dword ptr [ESI]
0052ef77  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
0052ef7c  f30f596604                MULSS XMM4,dword ptr [ESI + 0x4]
0052ef81  f30f5ce9                  SUBSS XMM5,XMM1
0052ef85  f30f58e0                  ADDSS XMM4,XMM0
0052ef89  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0052ef91  f30f11ade0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM5
0052ef99  f30f11a5ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM4
0052efa1  e89ae5eeff                CALL 0x0041d540
0052efa6  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0052efae  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0052efb6  e865e5eeff                CALL 0x0041d520
0052efbb  f30f108dccfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdcc]
0052efc3  8d4dd8                    LEA ECX,[EBP + -0x28]
0052efc6  f30f109de0fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffde0]
0052efce  f30f599ddcfdffff          MULSS XMM3,dword ptr [EBP + 0xfffffddc]
0052efd6  a17816c700                MOV EAX,[0x00c71678]
0052efdb  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
0052efe1  f30f59c8                  MULSS XMM1,XMM0
0052efe5  51                        PUSH ECX
0052efe6  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0052efec  8bc8                      MOV ECX,EAX
0052efee  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0052eff1  f30f5cd9                  SUBSS XMM3,XMM1
0052eff5  f30f108de0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde0]
0052effd  f30f59c8                  MULSS XMM1,XMM0
0052f001  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
0052f009  f30f5985dcfdffff          MULSS XMM0,dword ptr [EBP + 0xfffffddc]
0052f011  f30f115d9c                MOVSS dword ptr [EBP + -0x64],XMM3
0052f016  f30f58c8                  ADDSS XMM1,XMM0
0052f01a  f30f118ddcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM1
0052f022  e8d93e2e00                CALL 0x00812f00
0052f027  f30f1075d8                MOVSS XMM6,dword ptr [EBP + -0x28]
0052f02c  8db73c030000              LEA ESI,[EDI + 0x33c]
0052f032  f30f107ddc                MOVSS XMM7,dword ptr [EBP + -0x24]
0052f037  0f28d6                    MOVAPS XMM2,XMM6
0052f03a  f30f5c157ca8ba00          SUBSS XMM2,dword ptr [0x00baa87c]
0052f042  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0052f046  0f57c0                    XORPS XMM0,XMM0
0052f049  f30f58357ca8ba00          ADDSS XMM6,dword ptr [0x00baa87c]
0052f051  f30f10addcfdffff          MOVSS XMM5,dword ptr [EBP + 0xfffffddc]
0052f059  0f28e7                    MOVAPS XMM4,XMM7
0052f05c  f30f5ce0                  SUBSS XMM4,XMM0
0052f060  f30f58f8                  ADDSS XMM7,XMM0
0052f064  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
0052f069  0f28c1                    MOVAPS XMM0,XMM1
0052f06c  f30f5cc2                  SUBSS XMM0,XMM2
0052f070  f30f1175c4                MOVSS dword ptr [EBP + -0x3c],XMM6
0052f075  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
0052f07a  f30f5cce                  SUBSS XMM1,XMM6
0052f07e  f30f1036                  MOVSS XMM6,dword ptr [ESI]
0052f082  0f28da                    MOVAPS XMM3,XMM2
0052f085  f30f5cd7                  SUBSS XMM2,XMM7
0052f089  f30f1165a8                MOVSS dword ptr [EBP + -0x58],XMM4
0052f08e  f30f5cdc                  SUBSS XMM3,XMM4
0052f092  f30f117ddc                MOVSS dword ptr [EBP + -0x24],XMM7
0052f097  f30f10659c                MOVSS XMM4,dword ptr [EBP + -0x64]
0052f09c  f30f107e04                MOVSS XMM7,dword ptr [ESI + 0x4]
0052f0a1  f30f59cc                  MULSS XMM1,XMM4
0052f0a5  f30f59d5                  MULSS XMM2,XMM5
0052f0a9  f30f59dd                  MULSS XMM3,XMM5
0052f0ad  f30f59c4                  MULSS XMM0,XMM4
0052f0b1  f30f58d1                  ADDSS XMM2,XMM1
0052f0b5  f30f58d8                  ADDSS XMM3,XMM0
0052f0b9  f30f1195d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM2
0052f0c1  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0052f0c6  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
0052f0cb  f30f115d9c                MOVSS dword ptr [EBP + -0x64],XMM3
0052f0d0  f30f1085d4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdd4]
0052f0d8  0f28cb                    MOVAPS XMM1,XMM3
0052f0db  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0052f0e2  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052f0e9  0f2fc1                    COMISS XMM0,XMM1
0052f0ec  f30f109dd0fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdd0]
0052f0f4  762a                      JBE 0x0052f120
0052f0f6  f30f104d9c                MOVSS XMM1,dword ptr [EBP + -0x64]
0052f0fb  0f28c1                    MOVAPS XMM0,XMM1
0052f0fe  f30f59cd                  MULSS XMM1,XMM5
0052f102  f30f59c4                  MULSS XMM0,XMM4
0052f106  f30f5cf9                  SUBSS XMM7,XMM1
0052f10a  0f28ca                    MOVAPS XMM1,XMM2
0052f10d  f30f5c4d90                SUBSS XMM1,dword ptr [EBP + -0x70]
0052f112  f30f5cf0                  SUBSS XMM6,XMM0
0052f116  0f28c3                    MOVAPS XMM0,XMM3
0052f119  f30f5c45a8                SUBSS XMM0,dword ptr [EBP + -0x58]
0052f11e  eb2b                      JMP 0x0052f14b
0052f120  f30f108dd4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdd4]
0052f128  0f28c1                    MOVAPS XMM0,XMM1
0052f12b  f30f59cd                  MULSS XMM1,XMM5
0052f12f  f30f59c4                  MULSS XMM0,XMM4
0052f133  f30f5cf9                  SUBSS XMM7,XMM1
0052f137  0f28ca                    MOVAPS XMM1,XMM2
0052f13a  f30f5c4dc4                SUBSS XMM1,dword ptr [EBP + -0x3c]
0052f13f  f30f5cf0                  SUBSS XMM6,XMM0
0052f143  0f28c3                    MOVAPS XMM0,XMM3
0052f146  f30f5c45dc                SUBSS XMM0,dword ptr [EBP + -0x24]
0052f14b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052f152  f30f59c5                  MULSS XMM0,XMM5
0052f156  f30f59cc                  MULSS XMM1,XMM4
0052f15a  f30f117d9c                MOVSS dword ptr [EBP + -0x64],XMM7
0052f15f  f30f117598                MOVSS dword ptr [EBP + -0x68],XMM6
0052f164  f30f58c8                  ADDSS XMM1,XMM0
0052f168  0f28c1                    MOVAPS XMM0,XMM1
0052f16b  f30f59cd                  MULSS XMM1,XMM5
0052f16f  f30f59c4                  MULSS XMM0,XMM4
0052f173  f30f5cd9                  SUBSS XMM3,XMM1
0052f177  f30f108dccfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdcc]
0052f17f  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0052f187  f30f5cd0                  SUBSS XMM2,XMM0
0052f18b  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
0052f193  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052f19b  f30f5cd9                  SUBSS XMM3,XMM1
0052f19f  f30f5cd0                  SUBSS XMM2,XMM0
0052f1a3  f30f115dd0                MOVSS dword ptr [EBP + -0x30],XMM3
0052f1a8  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
0052f1ad  7522                      JNZ 0x0052f1d1
0052f1af  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
0052f1b2  8d45cc                    LEA EAX,[EBP + -0x34]
0052f1b5  6a00                      PUSH 0x0
0052f1b7  6a00                      PUSH 0x0
0052f1b9  6a00                      PUSH 0x0
0052f1bb  6a00                      PUSH 0x0
0052f1bd  6a01                      PUSH 0x1
0052f1bf  50                        PUSH EAX
0052f1c0  8d4598                    LEA EAX,[EBP + -0x68]
0052f1c3  50                        PUSH EAX
0052f1c4  e8271c2c00                CALL 0x007f0df0
0052f1c9  84c0                      TEST AL,AL
0052f1cb  0f84c7110000              JZ 0x00530398
0052f1d1  51                        PUSH ECX
0052f1d2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052f1d9  6a00                      PUSH 0x0
0052f1db  6a14                      PUSH 0x14
0052f1dd  51                        PUSH ECX
0052f1de  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052f1e5  8bcf                      MOV ECX,EDI
0052f1e7  68e0000000                PUSH 0xe0
0052f1ec  e8af791a00                CALL 0x006d6ba0
0052f1f1  f30f108de0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde0]
0052f1f9  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
0052f201  f30f590dcca4ba00          MULSS XMM1,dword ptr [0x00baa4cc]
0052f209  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
0052f211  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0052f219  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0052f221  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0052f22b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052f235  8b06                      MOV EAX,dword ptr [ESI]
0052f237  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
0052f23d  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0052f240  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
0052f246  8b06                      MOV EAX,dword ptr [ESI]
0052f248  8987440b0000              MOV dword ptr [EDI + 0xb44],EAX
0052f24e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0052f251  8987480b0000              MOV dword ptr [EDI + 0xb48],EAX
0052f257  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
0052f261  e932110000                JMP 0x00530398
0052f266  6a00                      PUSH 0x0
0052f268  68000a0001                PUSH 0x1000a00
0052f26d  8bcf                      MOV ECX,EDI
0052f26f  e8bc81eeff                CALL 0x00417430
0052f274  84c0                      TEST AL,AL
0052f276  0f8516110000              JNZ 0x00530392
0052f27c  3885dafdffff              CMP byte ptr [EBP + 0xfffffdda],AL
0052f282  0f850a110000              JNZ 0x00530392
0052f288  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052f28f  0f8587000000              JNZ 0x0052f31c
0052f295  f30f108dccfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdcc]
0052f29d  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
0052f2a5  0f28c1                    MOVAPS XMM0,XMM1
0052f2a8  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
0052f2b0  0f54c3                    ANDPS XMM0,XMM3
0052f2b3  0f2fe8                    COMISS XMM5,XMM0
0052f2b6  f30f1095e0fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffde0]
0052f2be  770f                      JA 0x0052f2cf
0052f2c0  0f28c2                    MOVAPS XMM0,XMM2
0052f2c3  0f54c3                    ANDPS XMM0,XMM3
0052f2c6  0f2fe8                    COMISS XMM5,XMM0
0052f2c9  0f86c3100000              JBE 0x00530392
0052f2cf  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
0052f2d7  f30f59d2                  MULSS XMM2,XMM2
0052f2db  f30f59c9                  MULSS XMM1,XMM1
0052f2df  f30f58d1                  ADDSS XMM2,XMM1
0052f2e3  0f2fc2                    COMISS XMM0,XMM2
0052f2e6  7709                      JA 0x0052f2f1
0052f2e8  83fe37                    CMP ESI,0x37
0052f2eb  0f85a1100000              JNZ 0x00530392
0052f2f1  a17816c700                MOV EAX,[0x00c71678]
0052f2f6  8d4dd8                    LEA ECX,[EBP + -0x28]
0052f2f9  6a00                      PUSH 0x0
0052f2fb  6a00                      PUSH 0x0
0052f2fd  6a00                      PUSH 0x0
0052f2ff  6a00                      PUSH 0x0
0052f301  ff75e8                    PUSH dword ptr [EBP + -0x18]
0052f304  51                        PUSH ECX
0052f305  8d4da4                    LEA ECX,[EBP + -0x5c]
0052f308  51                        PUSH ECX
0052f309  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052f30f  e8dc1a2c00                CALL 0x007f0df0
0052f314  84c0                      TEST AL,AL
0052f316  0f8476100000              JZ 0x00530392
0052f31c  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052f31f  83f837                    CMP EAX,0x37
0052f322  7507                      JNZ 0x0052f32b
0052f324  b8dd000000                MOV EAX,0xdd
0052f329  eb35                      JMP 0x0052f360
0052f32b  3ded000000                CMP EAX,0xed
0052f330  7529                      JNZ 0x0052f35b
0052f332  51                        PUSH ECX
0052f333  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052f33a  6a00                      PUSH 0x0
0052f33c  6a14                      PUSH 0x14
0052f33e  51                        PUSH ECX
0052f33f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052f346  8bcf                      MOV ECX,EDI
0052f348  6a39                      PUSH 0x39
0052f34a  e851781a00                CALL 0x006d6ba0
0052f34f  b8af030000                MOV EAX,0x3af
0052f354  b902000000                MOV ECX,0x2
0052f359  eb0a                      JMP 0x0052f365
0052f35b  b8e0000000                MOV EAX,0xe0
0052f360  b914000000                MOV ECX,0x14
0052f365  51                        PUSH ECX
0052f366  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052f36d  6a00                      PUSH 0x0
0052f36f  51                        PUSH ECX
0052f370  51                        PUSH ECX
0052f371  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052f378  8bcf                      MOV ECX,EDI
0052f37a  50                        PUSH EAX
0052f37b  e820781a00                CALL 0x006d6ba0
0052f380  8d55c0                    LEA EDX,[EBP + -0x40]
0052f383  8d4de4                    LEA ECX,[EBP + -0x1c]
0052f386  e8e5fd1400                CALL 0x0067f170
0052f38b  837f2837                  CMP dword ptr [EDI + 0x28],0x37
0052f38f  750a                      JNZ 0x0052f39b
0052f391  f30f100d48a5ba00          MOVSS XMM1,dword ptr [0x00baa548]
0052f399  eb08                      JMP 0x0052f3a3
0052f39b  f30f100dcca4ba00          MOVSS XMM1,dword ptr [0x00baa4cc]
0052f3a3  0f28c1                    MOVAPS XMM0,XMM1
0052f3a6  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
0052f3ab  f30f5900                  MULSS XMM0,dword ptr [EAX]
0052f3af  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0052f3b7  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052f3bf  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052f3c2  3ded000000                CMP EAX,0xed
0052f3c7  752c                      JNZ 0x0052f3f5
0052f3c9  80bf3d0c000000            CMP byte ptr [EDI + 0xc3d],0x0
0052f3d0  744b                      JZ 0x0052f41d
0052f3d2  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0052f3d6  7545                      JNZ 0x0052f41d
0052f3d8  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
0052f3e0  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052f3e8  0f28c1                    MOVAPS XMM0,XMM1
0052f3eb  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
0052f3f3  eb4c                      JMP 0x0052f441
0052f3f5  83f817                    CMP EAX,0x17
0052f3f8  7523                      JNZ 0x0052f41d
0052f3fa  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052f3fe  751d                      JNZ 0x0052f41d
0052f400  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0052f408  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052f410  0f28c1                    MOVAPS XMM0,XMM1
0052f413  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0052f41b  eb24                      JMP 0x0052f441
0052f41d  80bddbfdffff00            CMP byte ptr [EBP + 0xfffffddb],0x0
0052f424  7423                      JZ 0x0052f449
0052f426  f30f590548a8ba00          MULSS XMM0,dword ptr [0x00baa848]
0052f42e  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052f436  0f28c1                    MOVAPS XMM0,XMM1
0052f439  f30f590548a8ba00          MULSS XMM0,dword ptr [0x00baa848]
0052f441  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0052f449  80bddbfdffff00            CMP byte ptr [EBP + 0xfffffddb],0x0
0052f450  8db73c030000              LEA ESI,[EDI + 0x33c]
0052f456  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0052f460  8b06                      MOV EAX,dword ptr [ESI]
0052f462  8987440b0000              MOV dword ptr [EDI + 0xb44],EAX
0052f468  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0052f46b  8987480b0000              MOV dword ptr [EDI + 0xb48],EAX
0052f471  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
0052f47b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052f485  8b06                      MOV EAX,dword ptr [ESI]
0052f487  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
0052f48d  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0052f490  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
0052f496  0f84fc0e0000              JZ 0x00530398
0052f49c  f30f10a7b00b0000          MOVSS XMM4,dword ptr [EDI + 0xbb0]
0052f4a4  33d2                      XOR EDX,EDX
0052f4a6  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
0052f4ae  0f28cc                    MOVAPS XMM1,XMM4
0052f4b1  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0052f4b8  0f28c3                    MOVAPS XMM0,XMM3
0052f4bb  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052f4c2  0f2fc8                    COMISS XMM1,XMM0
0052f4c5  0f57c0                    XORPS XMM0,XMM0
0052f4c8  7640                      JBE 0x0052f50a
0052f4ca  0f2fc4                    COMISS XMM0,XMM4
0052f4cd  8995e4fdffff              MOV dword ptr [EBP + 0xfffffde4],EDX
0052f4d3  0f97c0                    SETA AL
0052f4d6  888748010000              MOV byte ptr [EDI + 0x148],AL
0052f4dc  84c0                      TEST AL,AL
0052f4de  7437                      JZ 0x0052f517
0052f4e0  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
0052f4e8  8d4f48                    LEA ECX,[EDI + 0x48]
0052f4eb  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
0052f4f3  52                        PUSH EDX
0052f4f4  ff749594                  PUSH dword ptr [EBP + EDX*0x4 + -0x6c]
0052f4f8  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
0052f500  e87baeedff                CALL 0x0040a380
0052f505  e98e0e0000                JMP 0x00530398
0052f50a  0f2fc3                    COMISS XMM0,XMM3
0052f50d  0f96c2                    SETBE DL
0052f510  42                        INC EDX
0052f511  8995e4fdffff              MOV dword ptr [EBP + 0xfffffde4],EDX
0052f517  6a00                      PUSH 0x0
0052f519  ff749594                  PUSH dword ptr [EBP + EDX*0x4 + -0x6c]
0052f51d  8d4f48                    LEA ECX,[EDI + 0x48]
0052f520  e85baeedff                CALL 0x0040a380
0052f525  e96e0e0000                JMP 0x00530398
0052f52a  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052f52d  83f81f                    CMP EAX,0x1f
0052f530  740b                      JZ 0x0052f53d
0052f532  3df3000000                CMP EAX,0xf3
0052f537  0f85550e0000              JNZ 0x00530392
0052f53d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052f544  7418                      JZ 0x0052f55e
0052f546  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0052f54e  8bcf                      MOV ECX,EDI
0052f550  6a07                      PUSH 0x7
0052f552  6a00                      PUSH 0x0
0052f554  e807b91900                CALL 0x006cae60
0052f559  0fb6c0                    MOVZX EAX,AL
0052f55c  eb15                      JMP 0x0052f573
0052f55e  e8fdf91b00                CALL 0x006eef60
0052f563  33d2                      XOR EDX,EDX
0052f565  b923000000                MOV ECX,0x23
0052f56a  f7f1                      DIV ECX
0052f56c  33c0                      XOR EAX,EAX
0052f56e  85d2                      TEST EDX,EDX
0052f570  0f94c0                    SETZ AL
0052f573  85c0                      TEST EAX,EAX
0052f575  0f84170e0000              JZ 0x00530392
0052f57b  6a00                      PUSH 0x0
0052f57d  68000a0001                PUSH 0x1000a00
0052f582  8bcf                      MOV ECX,EDI
0052f584  e8a77eeeff                CALL 0x00417430
0052f589  84c0                      TEST AL,AL
0052f58b  0f85010e0000              JNZ 0x00530392
0052f591  6a01                      PUSH 0x1
0052f593  8bcf                      MOV ECX,EDI
0052f595  e8b69a1a00                CALL 0x006d9050
0052f59a  837f281f                  CMP dword ptr [EDI + 0x28],0x1f
0052f59e  8d4f48                    LEA ECX,[EDI + 0x48]
0052f5a1  8b85e4fdffff              MOV EAX,dword ptr [EBP + 0xfffffde4]
0052f5a7  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0052f5b1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052f5bb  7506                      JNZ 0x0052f5c3
0052f5bd  8b4485d4                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x2c]
0052f5c1  eb04                      JMP 0x0052f5c7
0052f5c3  8b4485bc                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x44]
0052f5c7  6a01                      PUSH 0x1
0052f5c9  50                        PUSH EAX
0052f5ca  e8b1adedff                CALL 0x0040a380
0052f5cf  8b95e4fdffff              MOV EDX,dword ptr [EBP + 0xfffffde4]
0052f5d5  8db73c030000              LEA ESI,[EDI + 0x33c]
0052f5db  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0052f5e1  e9b80d0000                JMP 0x0053039e
0052f5e6  83f908                    CMP ECX,0x8
0052f5e9  0f853d080000              JNZ 0x0052fe2c
0052f5ef  80bddbfdffff00            CMP byte ptr [EBP + 0xfffffddb],0x0
0052f5f6  0f8498030000              JZ 0x0052f994
0052f5fc  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052f604  8d4f48                    LEA ECX,[EDI + 0x48]
0052f607  f30f59c1                  MULSS XMM0,XMM1
0052f60b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052f613  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052f617  7409                      JZ 0x0052f622
0052f619  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052f620  7513                      JNZ 0x0052f635
0052f622  6a00                      PUSH 0x0
0052f624  ff7485d4                  PUSH dword ptr [EBP + EAX*0x4 + -0x2c]
0052f628  e853adedff                CALL 0x0040a380
0052f62d  f30f103550adba00          MOVSS XMM6,dword ptr [0x00baad50]
0052f635  8d4f78                    LEA ECX,[EDI + 0x78]
0052f638  e8737dedff                CALL 0x004073b0
0052f63d  84c0                      TEST AL,AL
0052f63f  0f844d0d0000              JZ 0x00530392
0052f645  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0052f64c  7428                      JZ 0x0052f676
0052f64e  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052f656  f30f59c6                  MULSS XMM0,XMM6
0052f65a  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052f662  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052f66a  f30f59c6                  MULSS XMM0,XMM6
0052f66e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0052f676  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0052f67e  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0052f686  0f28c2                    MOVAPS XMM0,XMM2
0052f689  f30f59c2                  MULSS XMM0,XMM2
0052f68d  f30f59c9                  MULSS XMM1,XMM1
0052f691  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
0052f696  f30f58c1                  ADDSS XMM0,XMM1
0052f69a  e8b163f0ff                CALL 0x00435a50
0052f69f  83bf100400002d            CMP dword ptr [EDI + 0x410],0x2d
0052f6a6  7e3b                      JLE 0x0052f6e3
0052f6a8  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0052f6b0  0f2fc8                    COMISS XMM1,XMM0
0052f6b3  762e                      JBE 0x0052f6e3
0052f6b5  8d8f14040000              LEA ECX,[EDI + 0x414]
0052f6bb  e8e0782b00                CALL 0x007e6fa0
0052f6c0  8b85e4fdffff              MOV EAX,dword ptr [EBP + 0xfffffde4]
0052f6c6  8d4f48                    LEA ECX,[EDI + 0x48]
0052f6c9  6a00                      PUSH 0x0
0052f6cb  ff7485c8                  PUSH dword ptr [EBP + EAX*0x4 + -0x38]
0052f6cf  e8acacedff                CALL 0x0040a380
0052f6d4  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0052f6de  e987010000                JMP 0x0052f86a
0052f6e3  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052f6eb  f30f100594a1ba00          MOVSS XMM0,dword ptr [0x00baa194]
0052f6f3  c7876c0300000000803f      MOV dword ptr [EDI + 0x36c],0x3f800000
0052f6fd  e8ae551500                CALL 0x00684cb0
0052f702  f30f103554a4ba00          MOVSS XMM6,dword ptr [0x00baa454]
0052f70a  8d45e4                    LEA EAX,[EBP + -0x1c]
0052f70d  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0052f715  0f28e6                    MOVAPS XMM4,XMM6
0052f718  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0052f720  f30f5ce0                  SUBSS XMM4,XMM0
0052f724  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0052f72c  f30f106de8                MOVSS XMM5,dword ptr [EBP + -0x18]
0052f731  f30f5cc2                  SUBSS XMM0,XMM2
0052f735  f30f5ceb                  SUBSS XMM5,XMM3
0052f739  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052f73f  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
0052f745  0f28cc                    MOVAPS XMM1,XMM4
0052f748  50                        PUSH EAX
0052f749  f30f59e0                  MULSS XMM4,XMM0
0052f74d  f30f59cd                  MULSS XMM1,XMM5
0052f751  f30f58e2                  ADDSS XMM4,XMM2
0052f755  f30f58d9                  ADDSS XMM3,XMM1
0052f759  0f57c9                    XORPS XMM1,XMM1
0052f75c  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
0052f764  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0052f76c  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
0052f774  0f5bc0                    CVTDQ2PS XMM0,XMM0
0052f777  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
0052f77f  f30f5e057ca9ba00          DIVSS XMM0,dword ptr [0x00baa97c]
0052f787  f30f5fc1                  MAXSS XMM0,XMM1
0052f78b  0f28ce                    MOVAPS XMM1,XMM6
0052f78e  f30f5dc6                  MINSS XMM0,XMM6
0052f792  f30f5905e0a0ba00          MULSS XMM0,dword ptr [0x00baa0e0]
0052f79a  f30f5cc8                  SUBSS XMM1,XMM0
0052f79e  0f28c1                    MOVAPS XMM0,XMM1
0052f7a1  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
0052f7a9  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
0052f7b1  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0052f7b9  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052f7c1  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052f7c7  e834372e00                CALL 0x00812f00
0052f7cc  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052f7d3  7412                      JZ 0x0052f7e7
0052f7d5  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
0052f7dd  f30f10a7bc0b0000          MOVSS XMM4,dword ptr [EDI + 0xbbc]
0052f7e5  eb0a                      JMP 0x0052f7f1
0052f7e7  f30f1065e8                MOVSS XMM4,dword ptr [EBP + -0x18]
0052f7ec  f30f105de4                MOVSS XMM3,dword ptr [EBP + -0x1c]
0052f7f1  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0052f7f9  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0052f801  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0052f808  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052f80f  0f2fc1                    COMISS XMM0,XMM1
0052f812  761e                      JBE 0x0052f832
0052f814  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0052f818  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
0052f820  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0052f828  f30f58d8                  ADDSS XMM3,XMM0
0052f82c  f30f111e                  MOVSS dword ptr [ESI],XMM3
0052f830  eb24                      JMP 0x0052f856
0052f832  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0052f83a  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
0052f842  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0052f84a  f30f58e0                  ADDSS XMM4,XMM0
0052f84e  f30f11a740030000          MOVSS dword ptr [EDI + 0x340],XMM4
0052f856  8b85e4fdffff              MOV EAX,dword ptr [EBP + 0xfffffde4]
0052f85c  8d4f48                    LEA ECX,[EDI + 0x48]
0052f85f  6a00                      PUSH 0x0
0052f861  ff7485d4                  PUSH dword ptr [EBP + EAX*0x4 + -0x2c]
0052f865  e816abedff                CALL 0x0040a380
0052f86a  e8f1f61b00                CALL 0x006eef60
0052f86f  33d2                      XOR EDX,EDX
0052f871  b90a000000                MOV ECX,0xa
0052f876  f7f1                      DIV ECX
0052f878  85d2                      TEST EDX,EDX
0052f87a  755d                      JNZ 0x0052f8d9
0052f87c  e8dff61b00                CALL 0x006eef60
0052f881  51                        PUSH ECX
0052f882  8bcf                      MOV ECX,EDI
0052f884  660f6ec0                  MOVD XMM0,EAX
0052f888  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052f88c  c1e81f                    SHR EAX,0x1f
0052f88f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052f898  660f5ac0                  CVTPD2PS XMM0,XMM0
0052f89c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052f8a4  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0052f8ac  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0052f8b4  f30f110424                MOVSS dword ptr [ESP],XMM0
0052f8b9  e8126c1800                CALL 0x006b64d0
0052f8be  6a01                      PUSH 0x1
0052f8c0  6a00                      PUSH 0x0
0052f8c2  68ff000000                PUSH 0xff
0052f8c7  8b08                      MOV ECX,dword ptr [EAX]
0052f8c9  6aff                      PUSH -0x1
0052f8cb  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0052f8ce  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0052f8d4  51                        PUSH ECX
0052f8d5  8bc8                      MOV ECX,EAX
0052f8d7  ffd2                      CALL EDX
0052f8d9  6a00                      PUSH 0x0
0052f8db  6a03                      PUSH 0x3
0052f8dd  8bcf                      MOV ECX,EDI
0052f8df  e82cce1700                CALL 0x006ac710
0052f8e4  84c0                      TEST AL,AL
0052f8e6  0f85a60a0000              JNZ 0x00530392
0052f8ec  6a00                      PUSH 0x0
0052f8ee  6800000001                PUSH 0x1000000
0052f8f3  8bcf                      MOV ECX,EDI
0052f8f5  e8367beeff                CALL 0x00417430
0052f8fa  84c0                      TEST AL,AL
0052f8fc  0f85900a0000              JNZ 0x00530392
0052f902  e859f61b00                CALL 0x006eef60
0052f907  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052f90d  6a00                      PUSH 0x0
0052f90f  68acd5c500                PUSH 0xc5d5ac
0052f914  68dcd5c500                PUSH 0xc5d5dc
0052f919  6a00                      PUSH 0x0
0052f91b  50                        PUSH EAX
0052f91c  6a00                      PUSH 0x0
0052f91e  57                        PUSH EDI
0052f91f  6840b6c700                PUSH 0xc7b640
0052f924  56                        PUSH ESI
0052f925  6a1a                      PUSH 0x1a
0052f927  68e8030000                PUSH 0x3e8
0052f92c  e8ef91efff                CALL 0x00428b20
0052f931  50                        PUSH EAX
0052f932  e87a0f5c00                CALL 0x00af08b1
0052f937  83c414                    ADD ESP,0x14
0052f93a  8bf0                      MOV ESI,EAX
0052f93c  8bce                      MOV ECX,ESI
0052f93e  57                        PUSH EDI
0052f93f  e85c991700                CALL 0x006a92a0
0052f944  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0052f94c  8bce                      MOV ECX,ESI
0052f94e  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0052f956  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
0052f95e  8b06                      MOV EAX,dword ptr [ESI]
0052f960  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0052f968  c7865c0400005a000000      MOV dword ptr [ESI + 0x45c],0x5a
0052f972  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
0052f97a  c786600400005a000000      MOV dword ptr [ESI + 0x460],0x5a
0052f984  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0052f98c  ff500c                    CALL dword ptr [EAX + 0xc]
0052f98f  e9fe090000                JMP 0x00530392
0052f994  f30f101e                  MOVSS XMM3,dword ptr [ESI]
0052f998  f30f108f440b0000          MOVSS XMM1,dword ptr [EDI + 0xb44]
0052f9a0  f30f1097480b0000          MOVSS XMM2,dword ptr [EDI + 0xb48]
0052f9a8  f30f5ccb                  SUBSS XMM1,XMM3
0052f9ac  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
0052f9b1  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0052f9b9  f30f59c0                  MULSS XMM0,XMM0
0052f9bd  f30f59c9                  MULSS XMM1,XMM1
0052f9c1  f30f59d2                  MULSS XMM2,XMM2
0052f9c5  f30f58d1                  ADDSS XMM2,XMM1
0052f9c9  f30f5ed0                  DIVSS XMM2,XMM0
0052f9cd  0f2fe2                    COMISS XMM4,XMM2
0052f9d0  761a                      JBE 0x0052f9ec
0052f9d2  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0052f9da  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0052f9e2  2bc8                      SUB ECX,EAX
0052f9e4  018f3c040000              ADD dword ptr [EDI + 0x43c],ECX
0052f9ea  eb0a                      JMP 0x0052f9f6
0052f9ec  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
0052f9f6  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0052f9fd  f30f119f440b0000          MOVSS dword ptr [EDI + 0xb44],XMM3
0052fa05  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0052fa0b  8987480b0000              MOV dword ptr [EDI + 0xb48],EAX
0052fa11  0f85df030000              JNZ 0x0052fdf6
0052fa17  6a00                      PUSH 0x0
0052fa19  68000a0001                PUSH 0x1000a00
0052fa1e  8bcf                      MOV ECX,EDI
0052fa20  e80b7aeeff                CALL 0x00417430
0052fa25  84c0                      TEST AL,AL
0052fa27  0f85c9030000              JNZ 0x0052fdf6
0052fa2d  6a00                      PUSH 0x0
0052fa2f  6880000000                PUSH 0x80
0052fa34  8bcf                      MOV ECX,EDI
0052fa36  e8f579eeff                CALL 0x00417430
0052fa3b  84c0                      TEST AL,AL
0052fa3d  7432                      JZ 0x0052fa71
0052fa3f  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0052fa47  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0052fa4f  f30f59c0                  MULSS XMM0,XMM0
0052fa53  f30f59c9                  MULSS XMM1,XMM1
0052fa57  f30f58c1                  ADDSS XMM0,XMM1
0052fa5b  e8f05ff0ff                CALL 0x00435a50
0052fa60  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
0052fa68  0f2fc8                    COMISS XMM1,XMM0
0052fa6b  0f8785030000              JA 0x0052fdf6
0052fa71  83bf3c04000005            CMP dword ptr [EDI + 0x43c],0x5
0052fa78  0f8f78030000              JG 0x0052fdf6
0052fa7e  80bddafdffff00            CMP byte ptr [EBP + 0xfffffdda],0x0
0052fa85  0f856b030000              JNZ 0x0052fdf6
0052fa8b  837f2817                  CMP dword ptr [EDI + 0x28],0x17
0052fa8f  750a                      JNZ 0x0052fa9b
0052fa91  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
0052fa99  eb08                      JMP 0x0052faa3
0052fa9b  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
0052faa3  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
0052faab  8d87b00b0000              LEA EAX,[EDI + 0xbb0]
0052fab1  6a00                      PUSH 0x0
0052fab3  50                        PUSH EAX
0052fab4  8bcf                      MOV ECX,EDI
0052fab6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052fabe  e8ed19f0ff                CALL 0x004314b0
0052fac3  837f2817                  CMP dword ptr [EDI + 0x28],0x17
0052fac7  0f8508020000              JNZ 0x0052fcd5
0052facd  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0052fad1  0f85fe010000              JNZ 0x0052fcd5
0052fad7  0f57c0                    XORPS XMM0,XMM0
0052fada  8d4f48                    LEA ECX,[EDI + 0x48]
0052fadd  0f2f87b40b0000            COMISS XMM0,dword ptr [EDI + 0xbb4]
0052fae4  ba7405b600                MOV EDX,0xb60574
0052fae9  b8b805b600                MOV EAX,0xb605b8
0052faee  6a00                      PUSH 0x0
0052faf0  0f46c2                    CMOVBE EAX,EDX
0052faf3  50                        PUSH EAX
0052faf4  e887a8edff                CALL 0x0040a380
0052faf9  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052fb01  0f57c9                    XORPS XMM1,XMM1
0052fb04  0f2fc8                    COMISS XMM1,XMM0
0052fb07  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0052fb0c  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0052fb14  0f97c0                    SETA AL
0052fb17  888748010000              MOV byte ptr [EDI + 0x148],AL
0052fb1d  e81edaeeff                CALL 0x0041d540
0052fb22  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0052fb27  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0052fb2f  e8ecd9eeff                CALL 0x0041d520
0052fb34  f30f10a7b40b0000          MOVSS XMM4,dword ptr [EDI + 0xbb4]
0052fb3c  8d45e4                    LEA EAX,[EBP + -0x1c]
0052fb3f  f30f106de8                MOVSS XMM5,dword ptr [EBP + -0x18]
0052fb44  8d4dd8                    LEA ECX,[EBP + -0x28]
0052fb47  0f28cc                    MOVAPS XMM1,XMM4
0052fb4a  0f28d5                    MOVAPS XMM2,XMM5
0052fb4d  f30f5955dc                MULSS XMM2,dword ptr [EBP + -0x24]
0052fb52  50                        PUSH EAX
0052fb53  f30f5965dc                MULSS XMM4,dword ptr [EBP + -0x24]
0052fb58  f30f59c8                  MULSS XMM1,XMM0
0052fb5c  f30f59e8                  MULSS XMM5,XMM0
0052fb60  f30f5cd1                  SUBSS XMM2,XMM1
0052fb64  f30f58e5                  ADDSS XMM4,XMM5
0052fb68  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
0052fb6d  f30f1165dc                MOVSS dword ptr [EBP + -0x24],XMM4
0052fb72  e8b9044e00                CALL 0x00a10030
0052fb77  a17816c700                MOV EAX,[0x00c71678]
0052fb7c  8d4dd8                    LEA ECX,[EBP + -0x28]
0052fb7f  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
0052fb85  51                        PUSH ECX
0052fb86  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052fb8c  e86f332e00                CALL 0x00812f00
0052fb91  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052fb98  7412                      JZ 0x0052fbac
0052fb9a  f30f10b7b80b0000          MOVSS XMM6,dword ptr [EDI + 0xbb8]
0052fba2  f30f10bfbc0b0000          MOVSS XMM7,dword ptr [EDI + 0xbbc]
0052fbaa  eb0a                      JMP 0x0052fbb6
0052fbac  f30f107ddc                MOVSS XMM7,dword ptr [EBP + -0x24]
0052fbb1  f30f1075d8                MOVSS XMM6,dword ptr [EBP + -0x28]
0052fbb6  f30f106e04                MOVSS XMM5,dword ptr [ESI + 0x4]
0052fbbb  0f57db                    XORPS XMM3,XMM3
0052fbbe  0f28ce                    MOVAPS XMM1,XMM6
0052fbc1  0f28d7                    MOVAPS XMM2,XMM7
0052fbc4  f30f5c0d7ca8ba00          SUBSS XMM1,dword ptr [0x00baa87c]
0052fbcc  f30f58357ca8ba00          ADDSS XMM6,dword ptr [0x00baa87c]
0052fbd4  f30f5cd3                  SUBSS XMM2,XMM3
0052fbd8  0f28c5                    MOVAPS XMM0,XMM5
0052fbdb  f30f58fb                  ADDSS XMM7,XMM3
0052fbdf  f30f101e                  MOVSS XMM3,dword ptr [ESI]
0052fbe3  0f28e3                    MOVAPS XMM4,XMM3
0052fbe6  f30f5ce1                  SUBSS XMM4,XMM1
0052fbea  f30f5cde                  SUBSS XMM3,XMM6
0052fbee  f30f5cc2                  SUBSS XMM0,XMM2
0052fbf2  f30f5cef                  SUBSS XMM5,XMM7
0052fbf6  f30f5965e4                MULSS XMM4,dword ptr [EBP + -0x1c]
0052fbfb  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
0052fc00  f30f596de8                MULSS XMM5,dword ptr [EBP + -0x18]
0052fc05  f30f595de4                MULSS XMM3,dword ptr [EBP + -0x1c]
0052fc0a  f30f58e0                  ADDSS XMM4,XMM0
0052fc0e  f30f58eb                  ADDSS XMM5,XMM3
0052fc12  0f28cc                    MOVAPS XMM1,XMM4
0052fc15  f30f1165d0                MOVSS dword ptr [EBP + -0x30],XMM4
0052fc1a  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0052fc21  0f28c5                    MOVAPS XMM0,XMM5
0052fc24  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052fc2b  0f2fc1                    COMISS XMM0,XMM1
0052fc2e  7705                      JA 0x0052fc35
0052fc30  f30f116dd0                MOVSS dword ptr [EBP + -0x30],XMM5
0052fc35  f30f10bf64030000          MOVSS XMM7,dword ptr [EDI + 0x364]
0052fc3d  f30f10b760030000          MOVSS XMM6,dword ptr [EDI + 0x360]
0052fc45  0f28c7                    MOVAPS XMM0,XMM7
0052fc48  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
0052fc4d  0f28ee                    MOVAPS XMM5,XMM6
0052fc50  f30f596de4                MULSS XMM5,dword ptr [EBP + -0x1c]
0052fc55  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052fc5d  f30f58e8                  ADDSS XMM5,XMM0
0052fc61  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
0052fc69  0f28e5                    MOVAPS XMM4,XMM5
0052fc6c  f30f596de8                MULSS XMM5,dword ptr [EBP + -0x18]
0052fc71  f30f5965e4                MULSS XMM4,dword ptr [EBP + -0x1c]
0052fc76  e835501500                CALL 0x00684cb0
0052fc7b  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0052fc83  8db73c030000              LEA ESI,[EDI + 0x33c]
0052fc89  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0052fc8e  0f28cb                    MOVAPS XMM1,XMM3
0052fc91  8b95e4fdffff              MOV EDX,dword ptr [EBP + 0xfffffde4]
0052fc97  f30f5cc8                  SUBSS XMM1,XMM0
0052fc9b  0f28c2                    MOVAPS XMM0,XMM2
0052fc9e  f30f5955e8                MULSS XMM2,dword ptr [EBP + -0x18]
0052fca3  f30f5945e4                MULSS XMM0,dword ptr [EBP + -0x1c]
0052fca8  f30f58ea                  ADDSS XMM5,XMM2
0052fcac  f30f58c4                  ADDSS XMM0,XMM4
0052fcb0  f30f59c1                  MULSS XMM0,XMM1
0052fcb4  f30f59cd                  MULSS XMM1,XMM5
0052fcb8  f30f5cf0                  SUBSS XMM6,XMM0
0052fcbc  f30f5cf9                  SUBSS XMM7,XMM1
0052fcc0  f30f11b760030000          MOVSS dword ptr [EDI + 0x360],XMM6
0052fcc8  f30f11bf64030000          MOVSS dword ptr [EDI + 0x364],XMM7
0052fcd0  e9d1060000                JMP 0x005303a6
0052fcd5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052fcdb  8d45e4                    LEA EAX,[EBP + -0x1c]
0052fcde  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
0052fce4  50                        PUSH EAX
0052fce5  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052fceb  e810322e00                CALL 0x00812f00
0052fcf0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052fcf7  7412                      JZ 0x0052fd0b
0052fcf9  f30f10b7b80b0000          MOVSS XMM6,dword ptr [EDI + 0xbb8]
0052fd01  f30f10bfbc0b0000          MOVSS XMM7,dword ptr [EDI + 0xbbc]
0052fd09  eb0a                      JMP 0x0052fd15
0052fd0b  f30f107de8                MOVSS XMM7,dword ptr [EBP + -0x18]
0052fd10  f30f1075e4                MOVSS XMM6,dword ptr [EBP + -0x1c]
0052fd15  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
0052fd18  81f9ed000000              CMP ECX,0xed
0052fd1e  0f848a000000              JZ 0x0052fdae
0052fd24  f30f10afb00b0000          MOVSS XMM5,dword ptr [EDI + 0xbb0]
0052fd2c  f30f10a7b40b0000          MOVSS XMM4,dword ptr [EDI + 0xbb4]
0052fd34  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052fd3c  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
0052fd44  0f542d40cbba00            ANDPS XMM5,xmmword ptr [0x00bacb40]
0052fd4b  0f542540cbba00            ANDPS XMM4,xmmword ptr [0x00bacb40]
0052fd52  e8594f1500                CALL 0x00684cb0
0052fd57  0f2fe5                    COMISS XMM4,XMM5
0052fd5a  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0052fd62  f30f5cc8                  SUBSS XMM1,XMM0
0052fd66  7622                      JBE 0x0052fd8a
0052fd68  f30f5c36                  SUBSS XMM6,dword ptr [ESI]
0052fd6c  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0052fd74  f30f5cf0                  SUBSS XMM6,XMM0
0052fd78  f30f59f1                  MULSS XMM6,XMM1
0052fd7c  f30f58f0                  ADDSS XMM6,XMM0
0052fd80  f30f11b760030000          MOVSS dword ptr [EDI + 0x360],XMM6
0052fd88  eb24                      JMP 0x0052fdae
0052fd8a  f30f5cbf40030000          SUBSS XMM7,dword ptr [EDI + 0x340]
0052fd92  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0052fd9a  f30f5cf8                  SUBSS XMM7,XMM0
0052fd9e  f30f59f9                  MULSS XMM7,XMM1
0052fda2  f30f58f8                  ADDSS XMM7,XMM0
0052fda6  f30f11bf64030000          MOVSS dword ptr [EDI + 0x364],XMM7
0052fdae  8b85e4fdffff              MOV EAX,dword ptr [EBP + 0xfffffde4]
0052fdb4  6a00                      PUSH 0x0
0052fdb6  83f937                    CMP ECX,0x37
0052fdb9  742a                      JZ 0x0052fde5
0052fdbb  81f9ed000000              CMP ECX,0xed
0052fdc1  8d4f48                    LEA ECX,[EDI + 0x48]
0052fdc4  740e                      JZ 0x0052fdd4
0052fdc6  ff7485d4                  PUSH dword ptr [EBP + EAX*0x4 + -0x2c]
0052fdca  e8b1a5edff                CALL 0x0040a380
0052fdcf  e9be050000                JMP 0x00530392
0052fdd4  ffb48578ffffff            PUSH dword ptr [EBP + EAX*0x4 + 0xffffff78]
0052fddb  e8a0a5edff                CALL 0x0040a380
0052fde0  e9ad050000                JMP 0x00530392
0052fde5  ff7485b0                  PUSH dword ptr [EBP + EAX*0x4 + -0x50]
0052fde9  8d4f48                    LEA ECX,[EDI + 0x48]
0052fdec  e88fa5edff                CALL 0x0040a380
0052fdf1  e99c050000                JMP 0x00530392
0052fdf6  8d8f14040000              LEA ECX,[EDI + 0x414]
0052fdfc  e89f712b00                CALL 0x007e6fa0
0052fe01  817f28ed000000            CMP dword ptr [EDI + 0x28],0xed
0052fe08  0f857a050000              JNZ 0x00530388
0052fe0e  6a00                      PUSH 0x0
0052fe10  8d4f48                    LEA ECX,[EDI + 0x48]
0052fe13  68f4d6b100                PUSH 0xb1d6f4
0052fe18  e863a5edff                CALL 0x0040a380
0052fe1d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0052fe27  e966050000                JMP 0x00530392
0052fe2c  83f909                    CMP ECX,0x9
0052fe2f  0f85b6030000              JNZ 0x005301eb
0052fe35  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052fe3d  8bcf                      MOV ECX,EDI
0052fe3f  f30f59c3                  MULSS XMM0,XMM3
0052fe43  6a00                      PUSH 0x0
0052fe45  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052fe4d  e8fe911a00                CALL 0x006d9050
0052fe52  8d4f48                    LEA ECX,[EDI + 0x48]
0052fe55  68dcd2b100                PUSH 0xb1d2dc
0052fe5a  e8d1b1edff                CALL 0x0040b030
0052fe5f  84c0                      TEST AL,AL
0052fe61  0f849d030000              JZ 0x00530204
0052fe67  51                        PUSH ECX
0052fe68  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052fe6f  6a00                      PUSH 0x0
0052fe71  6a02                      PUSH 0x2
0052fe73  51                        PUSH ECX
0052fe74  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052fe7b  8bcf                      MOV ECX,EDI
0052fe7d  68b2000000                PUSH 0xb2
0052fe82  e8196d1a00                CALL 0x006d6ba0
0052fe87  51                        PUSH ECX
0052fe88  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052fe8f  6a00                      PUSH 0x0
0052fe91  6a02                      PUSH 0x2
0052fe93  51                        PUSH ECX
0052fe94  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052fe9b  8bcf                      MOV ECX,EDI
0052fe9d  683f010000                PUSH 0x13f
0052fea2  e8f96c1a00                CALL 0x006d6ba0
0052fea7  8d8de8fdffff              LEA ECX,[EBP + 0xfffffde8]
0052fead  e87ef0f0ff                CALL 0x0043ef30
0052feb2  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052feb9  b802000000                MOV EAX,0x2
0052febe  c785ecfdffff00006041      MOV dword ptr [EBP + 0xfffffdec],0x41600000
0052fec8  c785f0fdffffcdccccbd      MOV dword ptr [EBP + 0xfffffdf0],0xbdcccccd
0052fed2  c785f4fdffff17d9cebd      MOV dword ptr [EBP + 0xfffffdf4],0xbdced917
0052fedc  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
0052fee2  0f8418020000              JZ 0x00530100
0052fee8  8d8f200f0000              LEA ECX,[EDI + 0xf20]
0052feee  e86df31400                CALL 0x0067f260
0052fef3  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
0052fef9  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
0052ff00  83f801                    CMP EAX,0x1
0052ff03  7504                      JNZ 0x0052ff09
0052ff05  8bc8                      MOV ECX,EAX
0052ff07  eb17                      JMP 0x0052ff20
0052ff09  83f803                    CMP EAX,0x3
0052ff0c  7505                      JNZ 0x0052ff13
0052ff0e  8d48ff                    LEA ECX,[EAX + -0x1]
0052ff11  eb0d                      JMP 0x0052ff20
0052ff13  33c9                      XOR ECX,ECX
0052ff15  85c0                      TEST EAX,EAX
0052ff17  0f94c0                    SETZ AL
0052ff1a  888748010000              MOV byte ptr [EDI + 0x148],AL
0052ff20  837f281f                  CMP dword ptr [EDI + 0x28],0x1f
0052ff24  898de4fdffff              MOV dword ptr [EBP + 0xfffffde4],ECX
0052ff2a  7506                      JNZ 0x0052ff32
0052ff2c  8b448dd4                  MOV EAX,dword ptr [EBP + ECX*0x4 + -0x2c]
0052ff30  eb04                      JMP 0x0052ff36
0052ff32  8b448dbc                  MOV EAX,dword ptr [EBP + ECX*0x4 + -0x44]
0052ff36  50                        PUSH EAX
0052ff37  8d4f48                    LEA ECX,[EDI + 0x48]
0052ff3a  e891a5edff                CALL 0x0040a4d0
0052ff3f  84c0                      TEST AL,AL
0052ff41  7521                      JNZ 0x0052ff64
0052ff43  837f281f                  CMP dword ptr [EDI + 0x28],0x1f
0052ff47  8b85e4fdffff              MOV EAX,dword ptr [EBP + 0xfffffde4]
0052ff4d  7506                      JNZ 0x0052ff55
0052ff4f  8b4485d4                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x2c]
0052ff53  eb04                      JMP 0x0052ff59
0052ff55  8b4485bc                  MOV EAX,dword ptr [EBP + EAX*0x4 + -0x44]
0052ff59  6a00                      PUSH 0x0
0052ff5b  50                        PUSH EAX
0052ff5c  8d4f48                    LEA ECX,[EDI + 0x48]
0052ff5f  e86ca6edff                CALL 0x0040a5d0
0052ff64  8b85dcfdffff              MOV EAX,dword ptr [EBP + 0xfffffddc]
0052ff6a  837f281f                  CMP dword ptr [EDI + 0x28],0x1f
0052ff6e  0f85d6010000              JNZ 0x0053014a
0052ff74  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052ff78  0f85cc010000              JNZ 0x0053014a
0052ff7e  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0052ff84  e8a7eff0ff                CALL 0x0043ef30
0052ff89  8b95dcfdffff              MOV EDX,dword ptr [EBP + 0xfffffddc]
0052ff8f  8d4dc0                    LEA ECX,[EBP + -0x40]
0052ff92  c785c4feffff00002041      MOV dword ptr [EBP + 0xfffffec4],0x41200000
0052ff9c  e82ff21400                CALL 0x0067f1d0
0052ffa1  33c9                      XOR ECX,ECX
0052ffa3  b80a000000                MOV EAX,0xa
0052ffa8  898de0fdffff              MOV dword ptr [EBP + 0xfffffde0],ECX
0052ffae  8945d0                    MOV dword ptr [EBP + -0x30],EAX
0052ffb1  f30f100580a5ba00          MOVSS XMM0,dword ptr [0x00baa580]
0052ffb9  660f6ed1                  MOVD XMM2,ECX
0052ffbd  0f5bd2                    CVTDQ2PS XMM2,XMM2
0052ffc0  c78518ffffff00000008      MOV dword ptr [EBP + 0xffffff18],0x8000000
0052ffca  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
0052ffd4  0f28ca                    MOVAPS XMM1,XMM2
0052ffd7  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0052ffdf  f30f5cc1                  SUBSS XMM0,XMM1
0052ffe3  0f28ca                    MOVAPS XMM1,XMM2
0052ffe6  f30f590da0a0ba00          MULSS XMM1,dword ptr [0x00baa0a0]
0052ffee  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0052fff6  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0052fffe  f30f5cc1                  SUBSS XMM0,XMM1
00530002  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0053000a  660f6ec0                  MOVD XMM0,EAX
0053000e  0f5bc0                    CVTDQ2PS XMM0,XMM0
00530011  f30f590554a0ba00          MULSS XMM0,dword ptr [0x00baa054]
00530019  f30f5c0508a1ba00          SUBSS XMM0,dword ptr [0x00baa108]
00530021  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00530029  e832ef1b00                CALL 0x006eef60
0053002e  660f6e8de0fdffff          MOVD XMM1,dword ptr [EBP + 0xfffffde0]
00530036  0f5bc9                    CVTDQ2PS XMM1,XMM1
00530039  660f6ec0                  MOVD XMM0,EAX
0053003d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00530041  c1e81f                    SHR EAX,0x1f
00530044  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053004d  660f5ac0                  CVTPD2PS XMM0,XMM0
00530051  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00530059  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
00530061  f30f59c1                  MULSS XMM0,XMM1
00530065  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0053006d  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00530072  e8c9d4eeff                CALL 0x0041d540
00530077  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0053007c  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
00530081  e89ad4eeff                CALL 0x0041d520
00530086  0f28d8                    MOVAPS XMM3,XMM0
00530089  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
0053008f  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
00530094  0f28cb                    MOVAPS XMM1,XMM3
00530097  f30f595dc0                MULSS XMM3,dword ptr [EBP + -0x40]
0053009c  0f28d0                    MOVAPS XMM2,XMM0
0053009f  8bcf                      MOV ECX,EDI
005300a1  f30f5955c0                MULSS XMM2,dword ptr [EBP + -0x40]
005300a6  50                        PUSH EAX
005300a7  f30f594dc4                MULSS XMM1,dword ptr [EBP + -0x3c]
005300ac  8d45a4                    LEA EAX,[EBP + -0x5c]
005300af  6a00                      PUSH 0x0
005300b1  f30f5945c4                MULSS XMM0,dword ptr [EBP + -0x3c]
005300b6  50                        PUSH EAX
005300b7  f30f5cd1                  SUBSS XMM2,XMM1
005300bb  56                        PUSH ESI
005300bc  f30f58d8                  ADDSS XMM3,XMM0
005300c0  f30f591568a8ba00          MULSS XMM2,dword ptr [0x00baa868]
005300c8  f30f591d68a8ba00          MULSS XMM3,dword ptr [0x00baa868]
005300d0  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
005300d5  f30f115da8                MOVSS dword ptr [EBP + -0x58],XMM3
005300da  e801b21900                CALL 0x006cb2e0
005300df  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
005300e2  8b8de0fdffff              MOV ECX,dword ptr [EBP + 0xfffffde0]
005300e8  48                        DEC EAX
005300e9  41                        INC ECX
005300ea  8945d0                    MOV dword ptr [EBP + -0x30],EAX
005300ed  898de0fdffff              MOV dword ptr [EBP + 0xfffffde0],ECX
005300f3  85c0                      TEST EAX,EAX
005300f5  0f8fb6feffff              JG 0x0052ffb1
005300fb  e904010000                JMP 0x00530204
00530100  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
00530106  85c9                      TEST ECX,ECX
00530108  7519                      JNZ 0x00530123
0053010a  388f48010000              CMP byte ptr [EDI + 0x148],CL
00530110  0f8454feffff              JZ 0x0052ff6a
00530116  33c0                      XOR EAX,EAX
00530118  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
0053011e  e947feffff                JMP 0x0052ff6a
00530123  83f901                    CMP ECX,0x1
00530126  750d                      JNZ 0x00530135
00530128  8bc1                      MOV EAX,ECX
0053012a  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
00530130  e935feffff                JMP 0x0052ff6a
00530135  3bc8                      CMP ECX,EAX
00530137  b903000000                MOV ECX,0x3
0053013c  0f44c1                    CMOVZ EAX,ECX
0053013f  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
00530145  e920feffff                JMP 0x0052ff6a
0053014a  8bd0                      MOV EDX,EAX
0053014c  8d4dd8                    LEA ECX,[EBP + -0x28]
0053014f  e87cf01400                CALL 0x0067f1d0
00530154  8bcf                      MOV ECX,EDI
00530156  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0053015a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0053015f  8d85e8fdffff              LEA EAX,[EBP + 0xfffffde8]
00530165  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
0053016d  50                        PUSH EAX
0053016e  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
00530176  8d45e4                    LEA EAX,[EBP + -0x1c]
00530179  6a00                      PUSH 0x0
0053017b  50                        PUSH EAX
0053017c  56                        PUSH ESI
0053017d  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00530182  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00530187  e854b11900                CALL 0x006cb2e0
0053018c  817f28f3000000            CMP dword ptr [EDI + 0x28],0xf3
00530193  756f                      JNZ 0x00530204
00530195  8b95dcfdffff              MOV EDX,dword ptr [EBP + 0xfffffddc]
0053019b  8d4dd8                    LEA ECX,[EBP + -0x28]
0053019e  e82df01400                CALL 0x0067f1d0
005301a3  8bcf                      MOV ECX,EDI
005301a5  f30f1010                  MOVSS XMM2,dword ptr [EAX]
005301a9  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005301ae  8d85e8fdffff              LEA EAX,[EBP + 0xfffffde8]
005301b4  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
005301bb  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
005301c2  f30f5915e8a7ba00          MULSS XMM2,dword ptr [0x00baa7e8]
005301ca  50                        PUSH EAX
005301cb  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
005301d3  8d45e4                    LEA EAX,[EBP + -0x1c]
005301d6  6a00                      PUSH 0x0
005301d8  50                        PUSH EAX
005301d9  56                        PUSH ESI
005301da  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
005301df  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
005301e4  e8f7b01900                CALL 0x006cb2e0
005301e9  eb19                      JMP 0x00530204
005301eb  83f910                    CMP ECX,0x10
005301ee  754c                      JNZ 0x0053023c
005301f0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005301f8  f30f59c1                  MULSS XMM0,XMM1
005301fc  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00530204  68eca4b100                PUSH 0xb1a4ec
00530209  8d4f48                    LEA ECX,[EDI + 0x48]
0053020c  e83fa3edff                CALL 0x0040a550
00530211  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00530219  8db73c030000              LEA ESI,[EDI + 0x33c]
0053021f  8b95e4fdffff              MOV EDX,dword ptr [EBP + 0xfffffde4]
00530225  84c0                      TEST AL,AL
00530227  0f8479010000              JZ 0x005303a6
0053022d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00530237  e96a010000                JMP 0x005303a6
0053023c  83f90d                    CMP ECX,0xd
0053023f  0f854d010000              JNZ 0x00530392
00530245  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053024d  8d4f48                    LEA ECX,[EDI + 0x48]
00530250  f30f59c1                  MULSS XMM0,XMM1
00530254  68dcd2b100                PUSH 0xb1d2dc
00530259  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00530261  e8caadedff                CALL 0x0040b030
00530266  84c0                      TEST AL,AL
00530268  0f8409010000              JZ 0x00530377
0053026e  51                        PUSH ECX
0053026f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00530276  6a00                      PUSH 0x0
00530278  6a02                      PUSH 0x2
0053027a  51                        PUSH ECX
0053027b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00530282  8bcf                      MOV ECX,EDI
00530284  6a25                      PUSH 0x25
00530286  e815691a00                CALL 0x006d6ba0
0053028b  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00530291  85c0                      TEST EAX,EAX
00530293  7510                      JNZ 0x005302a5
00530295  388748010000              CMP byte ptr [EDI + 0x148],AL
0053029b  ba02000000                MOV EDX,0x2
005302a0  0f45d0                    CMOVNZ EDX,EAX
005302a3  eb0f                      JMP 0x005302b4
005302a5  33d2                      XOR EDX,EDX
005302a7  83f801                    CMP EAX,0x1
005302aa  0f95c2                    SETNZ DL
005302ad  8d145501000000            LEA EDX,[EDX*0x2 + 0x1]
005302b4  8d4dd8                    LEA ECX,[EBP + -0x28]
005302b7  e814ef1400                CALL 0x0067f1d0
005302bc  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
005302c2  f30f1008                  MOVSS XMM1,dword ptr [EAX]
005302c6  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
005302cd  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
005302d2  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005302d7  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
005302de  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
005302e3  e8088e2b00                CALL 0x007e90f0
005302e8  f30f1065e8                MOVSS XMM4,dword ptr [EBP + -0x18]
005302ed  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
005302f2  0f28d4                    MOVAPS XMM2,XMM4
005302f5  f30f5925e8a7ba00          MULSS XMM4,dword ptr [0x00baa7e8]
005302fd  0f28cb                    MOVAPS XMM1,XMM3
00530300  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00530306  f30f591de8a7ba00          MULSS XMM3,dword ptr [0x00baa7e8]
0053030e  50                        PUSH EAX
0053030f  f30f5826                  ADDSS XMM4,dword ptr [ESI]
00530313  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
0053031b  8d45e4                    LEA EAX,[EBP + -0x1c]
0053031e  6a00                      PUSH 0x0
00530320  f30f585e04                ADDSS XMM3,dword ptr [ESI + 0x4]
00530325  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
0053032d  57                        PUSH EDI
0053032e  50                        PUSH EAX
0053032f  8d45c0                    LEA EAX,[EBP + -0x40]
00530332  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
00530337  50                        PUSH EAX
00530338  6a00                      PUSH 0x0
0053033a  68d9000000                PUSH 0xd9
0053033f  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00530344  f30f1165c0                MOVSS dword ptr [EBP + -0x40],XMM4
00530349  f30f115dc4                MOVSS dword ptr [EBP + -0x3c],XMM3
0053034e  e8cd87efff                CALL 0x00428b20
00530353  8bf0                      MOV ESI,EAX
00530355  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0053035b  8b16                      MOV EDX,dword ptr [ESI]
0053035d  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00530364  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
0053036a  8bce                      MOV ECX,ESI
0053036c  ff520c                    CALL dword ptr [EDX + 0xc]
0053036f  56                        PUSH ESI
00530370  8bcf                      MOV ECX,EDI
00530372  e8698f1700                CALL 0x006a92e0
00530377  68eca4b100                PUSH 0xb1a4ec
0053037c  8d4f48                    LEA ECX,[EDI + 0x48]
0053037f  e8cca1edff                CALL 0x0040a550
00530384  84c0                      TEST AL,AL
00530386  740a                      JZ 0x00530392
00530388  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00530392  8db73c030000              LEA ESI,[EDI + 0x33c]
00530398  8b95e4fdffff              MOV EDX,dword ptr [EBP + 0xfffffde4]
0053039e  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
005303a6  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005303ae  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
005303b6  2bc8                      SUB ECX,EAX
005303b8  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005303bb  018f10040000              ADD dword ptr [EDI + 0x410],ECX
005303c1  3ded000000                CMP EAX,0xed
005303c6  750f                      JNZ 0x005303d7
005303c8  c787300f000000000000      MOV dword ptr [EDI + 0xf30],0x0
005303d2  0f28c3                    MOVAPS XMM0,XMM3
005303d5  eb5f                      JMP 0x00530436
005303d7  83f817                    CMP EAX,0x17
005303da  7520                      JNZ 0x005303fc
005303dc  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
005303e0  751a                      JNZ 0x005303fc
005303e2  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
005303e9  7511                      JNZ 0x005303fc
005303eb  8d45e4                    LEA EAX,[EBP + -0x1c]
005303ee  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
005303f4  50                        PUSH EAX
005303f5  e836fc4d00                CALL 0x00a10030
005303fa  eb2d                      JMP 0x00530429
005303fc  83fa01                    CMP EDX,0x1
005303ff  7504                      JNZ 0x00530405
00530401  8bc2                      MOV EAX,EDX
00530403  eb1a                      JMP 0x0053041f
00530405  83fa02                    CMP EDX,0x2
00530408  7505                      JNZ 0x0053040f
0053040a  8d4201                    LEA EAX,[EDX + 0x1]
0053040d  eb10                      JMP 0x0053041f
0053040f  33c9                      XOR ECX,ECX
00530411  b802000000                MOV EAX,0x2
00530416  388f48010000              CMP byte ptr [EDI + 0x148],CL
0053041c  0f45c1                    CMOVNZ EAX,ECX
0053041f  8bd0                      MOV EDX,EAX
00530421  8d4de4                    LEA ECX,[EBP + -0x1c]
00530424  e8a7ed1400                CALL 0x0067f1d0
00530429  8b08                      MOV ECX,dword ptr [EAX]
0053042b  898f300f0000              MOV dword ptr [EDI + 0xf30],ECX
00530431  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00530436  f30f1187340f0000          MOVSS dword ptr [EDI + 0xf34],XMM0
0053043e  817f28ed000000            CMP dword ptr [EDI + 0x28],0xed
00530445  0f85d8020000              JNZ 0x00530723
0053044b  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00530453  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0053045b  f30f59c0                  MULSS XMM0,XMM0
0053045f  f30f59c9                  MULSS XMM1,XMM1
00530463  f30f58c1                  ADDSS XMM0,XMM1
00530467  0f2f0504a8ba00            COMISS XMM0,dword ptr [0x00baa804]
0053046e  0f86af020000              JBE 0x00530723
00530474  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0053047c  0f57d2                    XORPS XMM2,XMM2
0053047f  8bcf                      MOV ECX,EDI
00530481  e8dac21700                CALL 0x006ac760
00530486  85c0                      TEST EAX,EAX
00530488  745d                      JZ 0x005304e7
0053048a  e8d1ea1b00                CALL 0x006eef60
0053048f  51                        PUSH ECX
00530490  8bcf                      MOV ECX,EDI
00530492  660f6ec0                  MOVD XMM0,EAX
00530496  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053049a  c1e81f                    SHR EAX,0x1f
0053049d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005304a6  660f5ac0                  CVTPD2PS XMM0,XMM0
005304aa  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005304b2  f30f590570a2ba00          MULSS XMM0,dword ptr [0x00baa270]
005304ba  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
005304c2  f30f110424                MOVSS dword ptr [ESP],XMM0
005304c7  e804601800                CALL 0x006b64d0
005304cc  6a01                      PUSH 0x1
005304ce  6a00                      PUSH 0x0
005304d0  68ff000000                PUSH 0xff
005304d5  8b08                      MOV ECX,dword ptr [EAX]
005304d7  6aff                      PUSH -0x1
005304d9  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
005304dc  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005304e2  51                        PUSH ECX
005304e3  8bc8                      MOV ECX,EAX
005304e5  ffd2                      CALL EDX
005304e7  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005304eb  740d                      JZ 0x005304fa
005304ed  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
005304f4  0f8529020000              JNZ 0x00530723
005304fa  8a873d0c0000              MOV AL,byte ptr [EDI + 0xc3d]
00530500  8885dafdffff              MOV byte ptr [EBP + 0xfffffdda],AL
00530506  84c0                      TEST AL,AL
00530508  740a                      JZ 0x00530514
0053050a  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0053050e  0f85a5010000              JNZ 0x005306b9
00530514  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0053051c  0f57d2                    XORPS XMM2,XMM2
0053051f  8bcf                      MOV ECX,EDI
00530521  e83ac21700                CALL 0x006ac760
00530526  85c0                      TEST EAX,EAX
00530528  0f8482010000              JZ 0x005306b0
0053052e  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00530532  c745d016000000            MOV dword ptr [EBP + -0x30],0x16
00530539  0f85aa000000              JNZ 0x005305e9
0053053f  c745d05e000000            MOV dword ptr [EBP + -0x30],0x5e
00530546  e815ea1b00                CALL 0x006eef60
0053054b  33d2                      XOR EDX,EDX
0053054d  b903000000                MOV ECX,0x3
00530552  f7f1                      DIV ECX
00530554  85d2                      TEST EDX,EDX
00530556  0f858d000000              JNZ 0x005305e9
0053055c  e8ffe91b00                CALL 0x006eef60
00530561  660f6ec0                  MOVD XMM0,EAX
00530565  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00530569  c1e81f                    SHR EAX,0x1f
0053056c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00530575  660f5ac0                  CVTPD2PS XMM0,XMM0
00530579  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00530581  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00530589  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00530591  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00530596  e8c5e91b00                CALL 0x006eef60
0053059b  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
005305a0  51                        PUSH ECX
005305a1  660f6ec0                  MOVD XMM0,EAX
005305a5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005305a9  c1e81f                    SHR EAX,0x1f
005305ac  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005305b5  f30f110c24                MOVSS dword ptr [ESP],XMM1
005305ba  6a00                      PUSH 0x0
005305bc  6a02                      PUSH 0x2
005305be  51                        PUSH ECX
005305bf  660f5ac0                  CVTPD2PS XMM0,XMM0
005305c3  8bcf                      MOV ECX,EDI
005305c5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005305cd  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
005305d5  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005305dd  f30f110424                MOVSS dword ptr [ESP],XMM0
005305e2  6a25                      PUSH 0x25
005305e4  e8b7651a00                CALL 0x006d6ba0
005305e9  e872e91b00                CALL 0x006eef60
005305ee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005305f4  6a00                      PUSH 0x0
005305f6  68acd5c500                PUSH 0xc5d5ac
005305fb  68dcd5c500                PUSH 0xc5d5dc
00530600  6a00                      PUSH 0x0
00530602  50                        PUSH EAX
00530603  6a00                      PUSH 0x0
00530605  57                        PUSH EDI
00530606  6840b6c700                PUSH 0xc7b640
0053060b  56                        PUSH ESI
0053060c  ff75d0                    PUSH dword ptr [EBP + -0x30]
0053060f  68e8030000                PUSH 0x3e8
00530614  e80785efff                CALL 0x00428b20
00530619  50                        PUSH EAX
0053061a  e892025c00                CALL 0x00af08b1
0053061f  8bf0                      MOV ESI,EAX
00530621  83c414                    ADD ESP,0x14
00530624  8bce                      MOV ECX,ESI
00530626  c786e4000000a4709d3f      MOV dword ptr [ESI + 0xe4],0x3f9d70a4
00530630  c786e8000000a4709d3f      MOV dword ptr [ESI + 0xe8],0x3f9d70a4
0053063a  8b16                      MOV EDX,dword ptr [ESI]
0053063c  c7867404000000000000      MOV dword ptr [ESI + 0x474],0x0
00530646  ff520c                    CALL dword ptr [EDX + 0xc]
00530649  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
00530650  7420                      JZ 0x00530672
00530652  8b06                      MOV EAX,dword ptr [ESI]
00530654  8bce                      MOV ECX,ESI
00530656  6a01                      PUSH 0x1
00530658  6a00                      PUSH 0x0
0053065a  68ff000000                PUSH 0xff
0053065f  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
00530662  8d87b8010000              LEA EAX,[EDI + 0x1b8]
00530668  6aff                      PUSH -0x1
0053066a  50                        PUSH EAX
0053066b  ffd2                      CALL EDX
0053066d  e9b1000000                JMP 0x00530723
00530672  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00530676  0f84a7000000              JZ 0x00530723
0053067c  8d87b8010000              LEA EAX,[EDI + 0x1b8]
00530682  50                        PUSH EAX
00530683  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
00530689  e8326bedff                CALL 0x004071c0
0053068e  8b06                      MOV EAX,dword ptr [ESI]
00530690  6a01                      PUSH 0x1
00530692  6a00                      PUSH 0x0
00530694  68ff000000                PUSH 0xff
00530699  6aff                      PUSH -0x1
0053069b  51                        PUSH ECX
0053069c  8bce                      MOV ECX,ESI
0053069e  c785a0feffff0000803f      MOV dword ptr [EBP + 0xfffffea0],0x3f800000
005306a8  ff503c                    CALL dword ptr [EAX + 0x3c]
005306ab  e973000000                JMP 0x00530723
005306b0  80bddafdffff00            CMP byte ptr [EBP + 0xfffffdda],0x0
005306b7  746a                      JZ 0x00530723
005306b9  837f3002                  CMP dword ptr [EDI + 0x30],0x2
005306bd  7564                      JNZ 0x00530723
005306bf  f30f100d54a8ba00          MOVSS XMM1,dword ptr [0x00baa854]
005306c7  0f57d2                    XORPS XMM2,XMM2
005306ca  8bcf                      MOV ECX,EDI
005306cc  e88fc01700                CALL 0x006ac760
005306d1  85c0                      TEST EAX,EAX
005306d3  744e                      JZ 0x00530723
005306d5  e886e81b00                CALL 0x006eef60
005306da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005306e0  50                        PUSH EAX
005306e1  6a00                      PUSH 0x0
005306e3  57                        PUSH EDI
005306e4  6840b6c700                PUSH 0xc7b640
005306e9  56                        PUSH ESI
005306ea  6a03                      PUSH 0x3
005306ec  6a04                      PUSH 0x4
005306ee  e82d84efff                CALL 0x00428b20
005306f3  c7808801000001000000      MOV dword ptr [EAX + 0x188],0x1
005306fd  a17816c700                MOV EAX,[0x00c71678]
00530702  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00530708  8d873c030000              LEA EAX,[EDI + 0x33c]
0053070e  50                        PUSH EAX
0053070f  8bce                      MOV ECX,ESI
00530711  e87a252e00                CALL 0x00812c90
00530716  6884030000                PUSH 0x384
0053071b  50                        PUSH EAX
0053071c  8bce                      MOV ECX,ESI
0053071e  e8bd5ef2ff                CALL 0x004565e0
00530723  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0053072a  0f84f0000000              JZ 0x00530820
00530730  837f281f                  CMP dword ptr [EDI + 0x28],0x1f
00530734  0f85e6000000              JNZ 0x00530820
0053073a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0053073e  0f85dc000000              JNZ 0x00530820
00530744  6a00                      PUSH 0x0
00530746  6800000001                PUSH 0x1000000
0053074b  8bcf                      MOV ECX,EDI
0053074d  e8de6ceeff                CALL 0x00417430
00530752  84c0                      TEST AL,AL
00530754  0f85c6000000              JNZ 0x00530820
0053075a  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
00530760  e8cbe7f0ff                CALL 0x0043ef30
00530765  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053076d  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00530773  50                        PUSH EAX
00530774  8db73c030000              LEA ESI,[EDI + 0x33c]
0053077a  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00530782  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00530787  8d45e4                    LEA EAX,[EBP + -0x1c]
0053078a  6a09                      PUSH 0x9
0053078c  50                        PUSH EAX
0053078d  56                        PUSH ESI
0053078e  8bcf                      MOV ECX,EDI
00530790  c785d4feffff0000a03f      MOV dword ptr [EBP + 0xfffffed4],0x3fa00000
0053079a  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
005307a2  c785ccfeffff295c8fbd      MOV dword ptr [EBP + 0xfffffecc],0xbd8f5c29
005307ac  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
005307b6  c78518ffffff00080000      MOV dword ptr [EBP + 0xffffff18],0x800
005307c0  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
005307ca  c745e400000041            MOV dword ptr [EBP + -0x1c],0x41000000
005307d1  c745e800000041            MOV dword ptr [EBP + -0x18],0x41000000
005307d8  e803ab1900                CALL 0x006cb2e0
005307dd  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
005307e3  c785d8feffffdb0fc93e      MOV dword ptr [EBP + 0xfffffed8],0x3ec90fdb
005307ed  50                        PUSH EAX
005307ee  6a09                      PUSH 0x9
005307f0  8d45e4                    LEA EAX,[EBP + -0x1c]
005307f3  c78518ffffff00100000      MOV dword ptr [EBP + 0xffffff18],0x1000
005307fd  50                        PUSH EAX
005307fe  56                        PUSH ESI
005307ff  8bcf                      MOV ECX,EDI
00530801  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
0053080b  c745e400000041            MOV dword ptr [EBP + -0x1c],0x41000000
00530812  c745e800000041            MOV dword ptr [EBP + -0x18],0x41000000
00530819  e8c2aa1900                CALL 0x006cb2e0
0053081e  eb06                      JMP 0x00530826
00530820  8db73c030000              LEA ESI,[EDI + 0x33c]
00530826  80bdcbfdffff00            CMP byte ptr [EBP + 0xfffffdcb],0x0
0053082d  0f842e020000              JZ 0x00530a61
00530833  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0053083a  0f8521020000              JNZ 0x00530a61
00530840  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
00530846  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
0053084c  0f57c0                    XORPS XMM0,XMM0
0053084f  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
00530855  a16cf5b100                MOV EAX,[0x00b1f56c]
0053085a  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
00530862  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
0053086a  f30f7e0564f5b100          MOVQ XMM0,qword ptr [0x00b1f564]
00530872  660fd6857cffffff          MOVQ qword ptr [EBP + 0xffffff7c],XMM0
0053087a  894584                    MOV dword ptr [EBP + -0x7c],EAX
0053087d  e8fe872b00                CALL 0x007e9080
00530882  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0053088a  d95de8                    FSTP dword ptr [EBP + -0x18]
0053088d  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
00530892  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0053089a  f30f59c9                  MULSS XMM1,XMM1
0053089e  f30f580554a8ba00          ADDSS XMM0,dword ptr [0x00baa854]
005308a6  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
005308ab  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005308b3  f30f59c0                  MULSS XMM0,XMM0
005308b7  f30f58c1                  ADDSS XMM0,XMM1
005308bb  e89051f0ff                CALL 0x00435a50
005308c0  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
005308c8  a17816c700                MOV EAX,[0x00c71678]
005308cd  6a00                      PUSH 0x0
005308cf  6a00                      PUSH 0x0
005308d1  ff7730                    PUSH dword ptr [EDI + 0x30]
005308d4  f30f5f05a4a3ba00          MAXSS XMM0,dword ptr [0x00baa3a4]
005308dc  ff772c                    PUSH dword ptr [EDI + 0x2c]
005308df  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005308e5  8d45ac                    LEA EAX,[EBP + -0x54]
005308e8  ff7728                    PUSH dword ptr [EDI + 0x28]
005308eb  81c118120000              ADD ECX,0x1218
005308f1  f30f5d0530a6ba00          MINSS XMM0,dword ptr [0x00baa630]
005308f9  50                        PUSH EAX
005308fa  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
005308ff  e85ca6eeff                CALL 0x0041af60
00530904  33c0                      XOR EAX,EAX
00530906  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
0053090c  3945b8                    CMP dword ptr [EBP + -0x48],EAX
0053090f  0f86f3000000              JBE 0x00530a08
00530915  8b4db0                    MOV ECX,dword ptr [EBP + -0x50]
00530918  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
0053091b  85c9                      TEST ECX,ECX
0053091d  0f84d5000000              JZ 0x005309f8
00530923  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00530929  83ba1466020002            CMP dword ptr [EDX + 0x26614],0x2
00530930  7c06                      JL 0x00530938
00530932  83792801                  CMP dword ptr [ECX + 0x28],0x1
00530936  7417                      JZ 0x0053094f
00530938  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0053093b  83e80a                    SUB EAX,0xa
0053093e  3ddd030000                CMP EAX,0x3dd
00530943  8b85dcfdffff              MOV EAX,dword ptr [EBP + 0xfffffddc]
00530949  0f87a9000000              JA 0x005309f8
0053094f  3bcf                      CMP ECX,EDI
00530951  0f84a1000000              JZ 0x005309f8
00530957  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0053095c  f30f5c8940030000          SUBSS XMM1,dword ptr [ECX + 0x340]
00530964  f30f1016                  MOVSS XMM2,dword ptr [ESI]
00530968  f30f5c913c030000          SUBSS XMM2,dword ptr [ECX + 0x33c]
00530970  0f28c1                    MOVAPS XMM0,XMM1
00530973  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
00530978  f30f59c1                  MULSS XMM0,XMM1
0053097c  0f28ca                    MOVAPS XMM1,XMM2
0053097f  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
00530984  f30f59ca                  MULSS XMM1,XMM2
00530988  f30f58c1                  ADDSS XMM0,XMM1
0053098c  e8bf50f0ff                CALL 0x00435a50
00530991  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00530998  8b85dcfdffff              MOV EAX,dword ptr [EBP + 0xfffffddc]
0053099e  7658                      JBE 0x005309f8
005309a0  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
005309a5  0f2fc8                    COMISS XMM1,XMM0
005309a8  764e                      JBE 0x005309f8
005309aa  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
005309af  0f2f1d20a1ba00            COMISS XMM3,dword ptr [0x00baa120]
005309b6  7640                      JBE 0x005309f8
005309b8  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
005309bd  f30f1055a8                MOVSS XMM2,dword ptr [EBP + -0x58]
005309c2  f30f5ec8                  DIVSS XMM1,XMM0
005309c6  f30f5ed0                  DIVSS XMM2,XMM0
005309ca  0f28c3                    MOVAPS XMM0,XMM3
005309cd  f30f59c1                  MULSS XMM0,XMM1
005309d1  0f28cb                    MOVAPS XMM1,XMM3
005309d4  f30f59ca                  MULSS XMM1,XMM2
005309d8  f30f5885e0fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffde0]
005309e0  f30f588dd0fdffff          ADDSS XMM1,dword ptr [EBP + 0xfffffdd0]
005309e8  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
005309f0  f30f118dd0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM1
005309f8  40                        INC EAX
005309f9  8985dcfdffff              MOV dword ptr [EBP + 0xfffffddc],EAX
005309ff  3b45b8                    CMP EAX,dword ptr [EBP + -0x48]
00530a02  0f820dffffff              JC 0x00530915
00530a08  807dac00                  CMP byte ptr [EBP + -0x54],0x0
00530a0c  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00530a14  0f28c1                    MOVAPS XMM0,XMM1
00530a17  f30f598dd0fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffdd0]
00530a1f  f30f5985e0fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffde0]
00530a27  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00530a2f  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00530a37  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00530a3f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00530a47  7518                      JNZ 0x00530a61
00530a49  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
00530a50  b101                      MOV CL,0x1
00530a52  8b55b0                    MOV EDX,dword ptr [EBP + -0x50]
00530a55  6a00                      PUSH 0x0
00530a57  6a00                      PUSH 0x0
00530a59  e8523e5300                CALL 0x00a648b0
00530a5e  83c408                    ADD ESP,0x8
00530a61  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00530a64  64890d00000000            MOV dword ptr FS:[0x0],ECX
00530a6b  59                        POP ECX
00530a6c  5f                        POP EDI
00530a6d  5e                        POP ESI
00530a6e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00530a71  33cd                      XOR ECX,EBP
00530a73  e8b3e65b00                CALL 0x00aef12b
00530a78  8be5                      MOV ESP,EBP
00530a7a  5d                        POP EBP
00530a7b  8be3                      MOV ESP,EBX
00530a7d  5b                        POP EBX
00530a7e  c3                        RET
