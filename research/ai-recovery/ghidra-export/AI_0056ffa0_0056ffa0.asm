; J460 NPC AI 0x0056ffa0 AI_0056ffa0
; types=867
; identities=867.0.0
; entry=0056ffa0
0056ffa0  53                        PUSH EBX
0056ffa1  8bdc                      MOV EBX,ESP
0056ffa3  83ec08                    SUB ESP,0x8
0056ffa6  83e4f8                    AND ESP,0xfffffff8
0056ffa9  83c404                    ADD ESP,0x4
0056ffac  55                        PUSH EBP
0056ffad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0056ffb0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0056ffb4  8bec                      MOV EBP,ESP
0056ffb6  6aff                      PUSH -0x1
0056ffb8  68e54faf00                PUSH 0xaf4fe5
0056ffbd  64a100000000              MOV EAX,FS:[0x0]
0056ffc3  50                        PUSH EAX
0056ffc4  53                        PUSH EBX
0056ffc5  83ec78                    SUB ESP,0x78
0056ffc8  a1b493bf00                MOV EAX,[0x00bf93b4]
0056ffcd  33c5                      XOR EAX,EBP
0056ffcf  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0056ffd2  56                        PUSH ESI
0056ffd3  57                        PUSH EDI
0056ffd4  50                        PUSH EAX
0056ffd5  8d45f4                    LEA EAX,[EBP + -0xc]
0056ffd8  64a300000000              MOV FS:[0x0],EAX
0056ffde  8bf9                      MOV EDI,ECX
0056ffe0  897db0                    MOV dword ptr [EBP + -0x50],EDI
0056ffe3  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
0056ffeb  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0056fff1  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0056fff9  2bf0                      SUB ESI,EAX
0056fffb  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
00570002  8975bc                    MOV dword ptr [EBP + -0x44],ESI
00570005  0f85e6020000              JNZ 0x005702f1
0057000b  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00570011  83f903                    CMP ECX,0x3
00570014  7405                      JZ 0x0057001b
00570016  83f908                    CMP ECX,0x8
00570019  752a                      JNZ 0x00570045
0057001b  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
00570021  803800                    CMP byte ptr [EAX],0x0
00570024  7505                      JNZ 0x0057002b
00570026  83caff                    OR EDX,0xffffffff
00570029  eb0c                      JMP 0x00570037
0057002b  8b96f8640200              MOV EDX,dword ptr [ESI + 0x264f8]
00570031  2b90f0110000              SUB EDX,dword ptr [EAX + 0x11f0]
00570037  33c0                      XOR EAX,EAX
00570039  83fa2d                    CMP EDX,0x2d
0057003c  0f9dc0                    SETGE AL
0057003f  898788010000              MOV dword ptr [EDI + 0x188],EAX
00570045  83f910                    CMP ECX,0x10
00570048  0f84c8100000              JZ 0x00571116
0057004e  6a04                      PUSH 0x4
00570050  8bce                      MOV ECX,ESI
00570052  e819361900                CALL 0x00703670
00570057  83bf640b000005            CMP dword ptr [EDI + 0xb64],0x5
0057005e  0f84b2100000              JZ 0x00571116
00570064  e8f7ee1700                CALL 0x006eef60
00570069  33d2                      XOR EDX,EDX
0057006b  b903000000                MOV ECX,0x3
00570070  f7f1                      DIV ECX
00570072  85d2                      TEST EDX,EDX
00570074  0f8530010000              JNZ 0x005701aa
0057007a  51                        PUSH ECX
0057007b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00570081  8d4598                    LEA EAX,[EBP + -0x68]
00570084  891424                    MOV dword ptr [ESP],EDX
00570087  50                        PUSH EAX
00570088  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0057008e  e83de92a00                CALL 0x0081e9d0
00570093  e8c8ee1700                CALL 0x006eef60
00570098  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0057009e  50                        PUSH EAX
0057009f  8d4598                    LEA EAX,[EBP + -0x68]
005700a2  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
005700a8  8b89181d0000              MOV ECX,dword ptr [ECX + 0x1d18]
005700ae  81c900000200              OR ECX,0x20000
005700b4  51                        PUSH ECX
005700b5  6a00                      PUSH 0x0
005700b7  6840b6c700                PUSH 0xc7b640
005700bc  50                        PUSH EAX
005700bd  6a04                      PUSH 0x4
005700bf  68e8030000                PUSH 0x3e8
005700c4  8bca                      MOV ECX,EDX
005700c6  e8558aebff                CALL 0x00428b20
005700cb  8bf0                      MOV ESI,EAX
005700cd  e88eee1700                CALL 0x006eef60
005700d2  660f6ec0                  MOVD XMM0,EAX
005700d6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005700da  c1e81f                    SHR EAX,0x1f
005700dd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005700e6  660f5ac8                  CVTPD2PS XMM1,XMM0
005700ea  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005700f2  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
005700fa  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
00570102  0f28c1                    MOVAPS XMM0,XMM1
00570105  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0057010d  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00570115  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0057011d  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00570125  e836ee1700                CALL 0x006eef60
0057012a  6a01                      PUSH 0x1
0057012c  6a01                      PUSH 0x1
0057012e  68ff000000                PUSH 0xff
00570133  660f6ec0                  MOVD XMM0,EAX
00570137  8d4dc0                    LEA ECX,[EBP + -0x40]
0057013a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0057013e  c1e81f                    SHR EAX,0x1f
00570141  6a0f                      PUSH 0xf
00570143  51                        PUSH ECX
00570144  8bce                      MOV ECX,ESI
00570146  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0057014d  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00570154  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0057015b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00570164  8b06                      MOV EAX,dword ptr [ESI]
00570166  660f5ac8                  CVTPD2PS XMM1,XMM0
0057016a  f30f100580aeba00          MOVSS XMM0,dword ptr [0x00baae80]
00570172  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0057017a  f30f590da0a9ba00          MULSS XMM1,dword ptr [0x00baa9a0]
00570182  f30f5cc1                  SUBSS XMM0,XMM1
00570186  f30f118610040000          MOVSS dword ptr [ESI + 0x410],XMM0
0057018e  0f57c0                    XORPS XMM0,XMM0
00570191  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00570195  0f280550b0ba00            MOVAPS XMM0,xmmword ptr [0x00bab050]
0057019c  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
005701a0  ff503c                    CALL dword ptr [EAX + 0x3c]
005701a3  8b06                      MOV EAX,dword ptr [ESI]
005701a5  8bce                      MOV ECX,ESI
005701a7  ff500c                    CALL dword ptr [EAX + 0xc]
005701aa  a17816c700                MOV EAX,[0x00c71678]
005701af  83b80c83010000            CMP dword ptr [EAX + 0x1830c],0x0
005701b6  0f855a0f0000              JNZ 0x00571116
005701bc  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005701c2  8d4dbc                    LEA ECX,[EBP + -0x44]
005701c5  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
005701cf  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005701d9  c745bccd020000            MOV dword ptr [EBP + -0x44],0x2cd
005701e0  e89b653e00                CALL 0x00956780
005701e5  83ec08                    SUB ESP,0x8
005701e8  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005701f0  c704240000803f            MOV dword ptr [ESP],0x3f800000
005701f7  6a00                      PUSH 0x0
005701f9  6a02                      PUSH 0x2
005701fb  51                        PUSH ECX
005701fc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570203  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00570209  ff75bc                    PUSH dword ptr [EBP + -0x44]
0057020c  e81fda3b00                CALL 0x0092dc30
00570211  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00570217  8d4dbc                    LEA ECX,[EBP + -0x44]
0057021a  c745bc42020000            MOV dword ptr [EBP + -0x44],0x242
00570221  e85a653e00                CALL 0x00956780
00570226  83ec08                    SUB ESP,0x8
00570229  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00570231  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570238  6a00                      PUSH 0x0
0057023a  6a02                      PUSH 0x2
0057023c  51                        PUSH ECX
0057023d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570244  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0057024a  ff75bc                    PUSH dword ptr [EBP + -0x44]
0057024d  e8ded93b00                CALL 0x0092dc30
00570252  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00570258  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0057025f  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00570269  c6873c0c000001            MOV byte ptr [EDI + 0xc3c],0x1
00570270  e85bed1d00                CALL 0x0074efd0
00570275  84c0                      TEST AL,AL
00570277  0f84990e0000              JZ 0x00571116
0057027d  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00570283  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
00570289  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0057028c  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0057028f  83780801                  CMP dword ptr [EAX + 0x8],0x1
00570293  0f857d0e0000              JNZ 0x00571116
00570299  8378100a                  CMP dword ptr [EAX + 0x10],0xa
0057029d  0f85730e0000              JNZ 0x00571116
005702a3  33ff                      XOR EDI,EDI
005702a5  be24070000                MOV ESI,0x724
005702aa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005702b0  47                        INC EDI
005702b1  83ff08                    CMP EDI,0x8
005702b4  772b                      JA 0x005702e1
005702b6  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
005702bc  8b0c06                    MOV ECX,dword ptr [ESI + EAX*0x1]
005702bf  85c9                      TEST ECX,ECX
005702c1  741e                      JZ 0x005702e1
005702c3  8b81a0030000              MOV EAX,dword ptr [ECX + 0x3a0]
005702c9  c1e805                    SHR EAX,0x5
005702cc  a801                      TEST AL,0x1
005702ce  7411                      JZ 0x005702e1
005702d0  83790804                  CMP dword ptr [ECX + 0x8],0x4
005702d4  740b                      JZ 0x005702e1
005702d6  e8b50a1a00                CALL 0x00710d90
005702db  8b157816c700              MOV EDX,dword ptr [0x00c71678]
005702e1  83c604                    ADD ESI,0x4
005702e4  81fe44070000              CMP ESI,0x744
005702ea  72c4                      JC 0x005702b0
005702ec  e9250e0000                JMP 0x00571116
005702f1  83f910                    CMP ECX,0x10
005702f4  0f871c0e0000              JA 0x00571116
005702fa  0fb68150115700            MOVZX EAX,byte ptr [ECX + 0x571150]
00570301  ff248534115700            JMP dword ptr [EAX*0x4 + 0x571134]
00570308  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0057030e  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00570315  83e1fb                    AND ECX,0xfffffffb
00570318  81c9110010c4              OR ECX,0xc4100011
0057031e  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00570325  6a00                      PUSH 0x0
00570327  898f68010000              MOV dword ptr [EDI + 0x168],ECX
0057032d  8d4f48                    LEA ECX,[EDI + 0x48]
00570330  6898d5b100                PUSH 0xb1d598
00570335  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0057033f  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00570349  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00570350  e88ba3e9ff                CALL 0x0040a6e0
00570355  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0057035b  898734030000              MOV dword ptr [EDI + 0x334],EAX
00570361  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00570367  898738030000              MOV dword ptr [EDI + 0x338],EAX
0057036d  a17816c700                MOV EAX,[0x00c71678]
00570372  57                        PUSH EDI
00570373  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00570379  81c118120000              ADD ECX,0x1218
0057037f  e86cb1eaff                CALL 0x0041b4f0
00570384  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
0057038b  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00570395  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
0057039f  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005703a9  7c71                      JL 0x0057041c
005703ab  a17816c700                MOV EAX,[0x00c71678]
005703b0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005703b6  33c0                      XOR EAX,EAX
005703b8  8b9164120000              MOV EDX,dword ptr [ECX + 0x1264]
005703be  85d2                      TEST EDX,EDX
005703c0  0f84500d0000              JZ 0x00571116
005703c6  8b895c120000              MOV ECX,dword ptr [ECX + 0x125c]
005703cc  0f1f4000                  NOP dword ptr [EAX]
005703d0  8b31                      MOV ESI,dword ptr [ECX]
005703d2  837e2805                  CMP dword ptr [ESI + 0x28],0x5
005703d6  7506                      JNZ 0x005703de
005703d8  837e2c64                  CMP dword ptr [ESI + 0x2c],0x64
005703dc  740d                      JZ 0x005703eb
005703de  40                        INC EAX
005703df  83c104                    ADD ECX,0x4
005703e2  3bc2                      CMP EAX,EDX
005703e4  72ea                      JC 0x005703d0
005703e6  e92b0d0000                JMP 0x00571116
005703eb  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
005703f1  81c7ec0b0000              ADD EDI,0xbec
005703f7  85c9                      TEST ECX,ECX
005703f9  7412                      JZ 0x0057040d
005703fb  8d45b0                    LEA EAX,[EBP + -0x50]
005703fe  897db0                    MOV dword ptr [EBP + -0x50],EDI
00570401  50                        PUSH EAX
00570402  81c1cc030000              ADD ECX,0x3cc
00570408  e803eef5ff                CALL 0x004cf210
0057040d  57                        PUSH EDI
0057040e  8bce                      MOV ECX,ESI
00570410  8937                      MOV dword ptr [EDI],ESI
00570412  e8d9d8f5ff                CALL 0x004cdcf0
00570417  e9fa0c0000                JMP 0x00571116
0057041c  6a00                      PUSH 0x0
0057041e  6854bcb100                PUSH 0xb1bc54
00570423  8d4f48                    LEA ECX,[EDI + 0x48]
00570426  e8559fe9ff                CALL 0x0040a380
0057042b  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00570431  81a768010000ffffffbb      AND dword ptr [EDI + 0x168],0xbbffffff
0057043b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00570445  c787c00b00003c000000      MOV dword ptr [EDI + 0xbc0],0x3c
0057044f  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00570455  c7878801000001000000      MOV dword ptr [EDI + 0x188],0x1
0057045f  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
00570466  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00570470  e9a10c0000                JMP 0x00571116
00570475  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
0057047b  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00570481  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
00570487  898740030000              MOV dword ptr [EDI + 0x340],EAX
0057048d  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
00570493  85c0                      TEST EAX,EAX
00570495  7413                      JZ 0x005704aa
00570497  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
0057049e  750a                      JNZ 0x005704aa
005704a0  83783000                  CMP dword ptr [EAX + 0x30],0x0
005704a4  0f856c0c0000              JNZ 0x00571116
005704aa  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005704b1  7557                      JNZ 0x0057050a
005704b3  51                        PUSH ECX
005704b4  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005704ba  c704240ad7a33d            MOV dword ptr [ESP],0x3da3d70a
005704c1  6a42                      PUSH 0x42
005704c3  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
005704cd  8d89bc9f0200              LEA ECX,[ECX + 0x29fbc]
005704d3  e898192700                CALL 0x007e1e70
005704d8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005704de  b8abaaaa2a                MOV EAX,0x2aaaaaab
005704e3  8b8edca20200              MOV ECX,dword ptr [ESI + 0x2a2dc]
005704e9  2b8ed8a20200              SUB ECX,dword ptr [ESI + 0x2a2d8]
005704ef  f7e9                      IMUL ECX
005704f1  c1fa04                    SAR EDX,0x4
005704f4  8bc2                      MOV EAX,EDX
005704f6  c1e81f                    SHR EAX,0x1f
005704f9  03c2                      ADD EAX,EDX
005704fb  83f875                    CMP EAX,0x75
005704fe  7e0a                      JLE 0x0057050a
00570500  c786cca2020075000000      MOV dword ptr [ESI + 0x2a2cc],0x75
0057050a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00570510  33f6                      XOR ESI,ESI
00570512  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00570518  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
0057051e  c1f802                    SAR EAX,0x2
00570521  85c0                      TEST EAX,EAX
00570523  742d                      JZ 0x00570552
00570525  56                        PUSH ESI
00570526  e84573eaff                CALL 0x00417870
0057052b  83b8c417000000            CMP dword ptr [EAX + 0x17c4],0x0
00570532  0f85de0b0000              JNZ 0x00571116
00570538  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057053e  46                        INC ESI
0057053f  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00570545  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
0057054b  c1f802                    SAR EAX,0x2
0057054e  3bf0                      CMP ESI,EAX
00570550  72d3                      JC 0x00570525
00570552  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
0057055c  c787a40b00001e000000      MOV dword ptr [EDI + 0xba4],0x1e
00570566  e9ab0b0000                JMP 0x00571116
0057056b  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
00570571  85c0                      TEST EAX,EAX
00570573  0f8e7d000000              JLE 0x005705f6
00570579  48                        DEC EAX
0057057a  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
00570580  85c0                      TEST EAX,EAX
00570582  0f8f8e0b0000              JG 0x00571116
00570588  6a01                      PUSH 0x1
0057058a  6898d5b100                PUSH 0xb1d598
0057058f  8d4f48                    LEA ECX,[EDI + 0x48]
00570592  e839a0e9ff                CALL 0x0040a5d0
00570597  84c0                      TEST AL,AL
00570599  740f                      JZ 0x005705aa
0057059b  8d4f78                    LEA ECX,[EDI + 0x78]
0057059e  e80d9ce9ff                CALL 0x0040a1b0
005705a3  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005705aa  6aff                      PUSH -0x1
005705ac  6a21                      PUSH 0x21
005705ae  8d4590                    LEA EAX,[EBP + -0x70]
005705b1  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
005705b8  50                        PUSH EAX
005705b9  8bcf                      MOV ECX,EDI
005705bb  e8a0061600                CALL 0x006d0c60
005705c0  33f6                      XOR ESI,ESI
005705c2  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005705c9  39759c                    CMP dword ptr [EBP + -0x64],ESI
005705cc  761b                      JBE 0x005705e9
005705ce  8b7d94                    MOV EDI,dword ptr [EBP + -0x6c]
005705d1  8b04b7                    MOV EAX,dword ptr [EDI + ESI*0x4]
005705d4  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
005705db  8b0cb7                    MOV ECX,dword ptr [EDI + ESI*0x4]
005705de  8b01                      MOV EAX,dword ptr [ECX]
005705e0  ff500c                    CALL dword ptr [EAX + 0xc]
005705e3  46                        INC ESI
005705e4  3b759c                    CMP ESI,dword ptr [EBP + -0x64]
005705e7  72e8                      JC 0x005705d1
005705e9  8d4d90                    LEA ECX,[EBP + -0x70]
005705ec  e8bf6feaff                CALL 0x004175b0
005705f1  e9200b0000                JMP 0x00571116
005705f6  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005705fe  8d7748                    LEA ESI,[EDI + 0x48]
00570601  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00570609  8bce                      MOV ECX,ESI
0057060b  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00570613  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0057061b  68dcd2b100                PUSH 0xb1d2dc
00570620  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00570628  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00570630  e8fba9e9ff                CALL 0x0040b030
00570635  84c0                      TEST AL,AL
00570637  0f84c5000000              JZ 0x00570702
0057063d  6aff                      PUSH -0x1
0057063f  6a21                      PUSH 0x21
00570641  8d4590                    LEA EAX,[EBP + -0x70]
00570644  8bcf                      MOV ECX,EDI
00570646  50                        PUSH EAX
00570647  e814061600                CALL 0x006d0c60
0057064c  33f6                      XOR ESI,ESI
0057064e  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00570655  39759c                    CMP dword ptr [EBP + -0x64],ESI
00570658  7655                      JBE 0x005706af
0057065a  8b7d94                    MOV EDI,dword ptr [EBP + -0x6c]
0057065d  0f1f00                    NOP dword ptr [EAX]
00570660  a17816c700                MOV EAX,[0x00c71678]
00570665  8b0cb7                    MOV ECX,dword ptr [EDI + ESI*0x4]
00570668  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0057066f  7c06                      JL 0x00570677
00570671  83792801                  CMP dword ptr [ECX + 0x28],0x1
00570675  740d                      JZ 0x00570684
00570677  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0057067a  83e80a                    SUB EAX,0xa
0057067d  3ddd030000                CMP EAX,0x3dd
00570682  7722                      JA 0x005706a6
00570684  6aff                      PUSH -0x1
00570686  6a00                      PUSH 0x0
00570688  6a01                      PUSH 0x1
0057068a  6a21                      PUSH 0x21
0057068c  e89f081500                CALL 0x006c0f30
00570691  8b04b7                    MOV EAX,dword ptr [EDI + ESI*0x4]
00570694  c780640b000009000000      MOV dword ptr [EAX + 0xb64],0x9
0057069e  8b0cb7                    MOV ECX,dword ptr [EDI + ESI*0x4]
005706a1  8b01                      MOV EAX,dword ptr [ECX]
005706a3  ff500c                    CALL dword ptr [EAX + 0xc]
005706a6  46                        INC ESI
005706a7  3b759c                    CMP ESI,dword ptr [EBP + -0x64]
005706aa  72b4                      JC 0x00570660
005706ac  8b7db0                    MOV EDI,dword ptr [EBP + -0x50]
005706af  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005706b5  8d4dbc                    LEA ECX,[EBP + -0x44]
005706b8  c745bcca020000            MOV dword ptr [EBP + -0x44],0x2ca
005706bf  e8bc603e00                CALL 0x00956780
005706c4  83ec08                    SUB ESP,0x8
005706c7  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005706cd  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005706d5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005706dc  6a00                      PUSH 0x0
005706de  6a02                      PUSH 0x2
005706e0  51                        PUSH ECX
005706e1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005706e8  ff75bc                    PUSH dword ptr [EBP + -0x44]
005706eb  e840d53b00                CALL 0x0092dc30
005706f0  8d4d90                    LEA ECX,[EBP + -0x70]
005706f3  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005706fa  e8b16eeaff                CALL 0x004175b0
005706ff  8d7748                    LEA ESI,[EDI + 0x48]
00570702  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00570706  740d                      JZ 0x00570715
00570708  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0057070f  0f85010a0000              JNZ 0x00571116
00570715  6a00                      PUSH 0x0
00570717  6854bcb100                PUSH 0xb1bc54
0057071c  8bce                      MOV ECX,ESI
0057071e  e85d9ce9ff                CALL 0x0040a380
00570723  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00570729  33c9                      XOR ECX,ECX
0057072b  81a768010000ffffffbb      AND dword ptr [EDI + 0x168],0xbbffffff
00570735  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0057073f  c787c00b00003c000000      MOV dword ptr [EDI + 0xbc0],0x3c
00570749  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0057074f  c7878801000001000000      MOV dword ptr [EDI + 0x188],0x1
00570759  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
00570760  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
00570766  897dbc                    MOV dword ptr [EBP + -0x44],EDI
00570769  894db8                    MOV dword ptr [EBP + -0x48],ECX
0057076c  818f9c83010000004000      OR dword ptr [EDI + 0x1839c],0x400000
00570776  398fcc820100              CMP dword ptr [EDI + 0x182cc],ECX
0057077c  0f8e94090000              JLE 0x00571116
00570782  33c0                      XOR EAX,EAX
00570784  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
00570787  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00570790  837c382001                CMP dword ptr [EAX + EDI*0x1 + 0x20],0x1
00570795  0f855d010000              JNZ 0x005708f8
0057079b  8b543824                  MOV EDX,dword ptr [EAX + EDI*0x1 + 0x24]
0057079f  85d2                      TEST EDX,EDX
005707a1  0f8451010000              JZ 0x005708f8
005707a7  837a0801                  CMP dword ptr [EDX + 0x8],0x1
005707ab  0f8547010000              JNZ 0x005708f8
005707b1  837a101e                  CMP dword ptr [EDX + 0x10],0x1e
005707b5  0f853d010000              JNZ 0x005708f8
005707bb  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
005707be  8d8f10890100              LEA ECX,[EDI + 0x18910]
005707c4  6aff                      PUSH -0x1
005707c6  40                        INC EAX
005707c7  50                        PUSH EAX
005707c8  6a01                      PUSH 0x1
005707ca  ff32                      PUSH dword ptr [EDX]
005707cc  e84fbf2b00                CALL 0x0082c720
005707d1  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
005707d4  89443924                  MOV dword ptr [ECX + EDI*0x1 + 0x24],EAX
005707d8  8b8439a0000000            MOV EAX,dword ptr [ECX + EDI*0x1 + 0xa0]
005707df  8bb4399c000000            MOV ESI,dword ptr [ECX + EDI*0x1 + 0x9c]
005707e6  8945b0                    MOV dword ptr [EBP + -0x50],EAX
005707e9  3bf0                      CMP ESI,EAX
005707eb  741e                      JZ 0x0057080b
005707ed  8bf8                      MOV EDI,EAX
005707ef  90                        NOP
005707f0  8bce                      MOV ECX,ESI
005707f2  e8e966f6ff                CALL 0x004d6ee0
005707f7  83c678                    ADD ESI,0x78
005707fa  3bf7                      CMP ESI,EDI
005707fc  75f2                      JNZ 0x005707f0
005707fe  8b7dbc                    MOV EDI,dword ptr [EBP + -0x44]
00570801  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
00570804  8bb4399c000000            MOV ESI,dword ptr [ECX + EDI*0x1 + 0x9c]
0057080b  89b439a0000000            MOV dword ptr [ECX + EDI*0x1 + 0xa0],ESI
00570812  8b84398c000000            MOV EAX,dword ptr [ECX + EDI*0x1 + 0x8c]
00570819  8bb43988000000            MOV ESI,dword ptr [ECX + EDI*0x1 + 0x88]
00570820  8945b0                    MOV dword ptr [EBP + -0x50],EAX
00570823  3bf0                      CMP ESI,EAX
00570825  7424                      JZ 0x0057084b
00570827  8bf8                      MOV EDI,EAX
00570829  0f1f8000000000            NOP dword ptr [EAX]
00570830  8bce                      MOV ECX,ESI
00570832  e8a966f6ff                CALL 0x004d6ee0
00570837  83c678                    ADD ESI,0x78
0057083a  3bf7                      CMP ESI,EDI
0057083c  75f2                      JNZ 0x00570830
0057083e  8b7dbc                    MOV EDI,dword ptr [EBP + -0x44]
00570841  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
00570844  8bb43988000000            MOV ESI,dword ptr [ECX + EDI*0x1 + 0x88]
0057084b  89b4398c000000            MOV dword ptr [ECX + EDI*0x1 + 0x8c],ESI
00570852  8b44397c                  MOV EAX,dword ptr [ECX + EDI*0x1 + 0x7c]
00570856  8b943980000000            MOV EDX,dword ptr [ECX + EDI*0x1 + 0x80]
0057085d  2bd0                      SUB EDX,EAX
0057085f  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
00570866  83e2e0                    AND EDX,0xffffffe0
00570869  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
00570870  03d0                      ADD EDX,EAX
00570872  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
00570879  c7458c00000000            MOV dword ptr [EBP + -0x74],0x0
00570880  c7459081dea916            MOV dword ptr [EBP + -0x70],0x16a9de81
00570887  c7459400000000            MOV dword ptr [EBP + -0x6c],0x0
0057088e  c6459800                  MOV byte ptr [EBP + -0x68],0x0
00570892  c7459c81dea916            MOV dword ptr [EBP + -0x64],0x16a9de81
00570899  3bc2                      CMP EAX,EDX
0057089b  7416                      JZ 0x005708b3
0057089d  0f104590                  MOVUPS XMM0,xmmword ptr [EBP + -0x70]
005708a1  0f104d80                  MOVUPS XMM1,xmmword ptr [EBP + -0x80]
005708a5  0f1108                    MOVUPS xmmword ptr [EAX],XMM1
005708a8  0f114010                  MOVUPS xmmword ptr [EAX + 0x10],XMM0
005708ac  83c020                    ADD EAX,0x20
005708af  3bc2                      CMP EAX,EDX
005708b1  75f2                      JNZ 0x005708a5
005708b3  89943980000000            MOV dword ptr [ECX + EDI*0x1 + 0x80],EDX
005708ba  81c194000000              ADD ECX,0x94
005708c0  03f9                      ADD EDI,ECX
005708c2  8bcf                      MOV ECX,EDI
005708c4  8b37                      MOV ESI,dword ptr [EDI]
005708c6  ff7604                    PUSH dword ptr [ESI + 0x4]
005708c9  57                        PUSH EDI
005708ca  e8713cebff                CALL 0x00424540
005708cf  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
005708d2  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005708d5  897604                    MOV dword ptr [ESI + 0x4],ESI
005708d8  8936                      MOV dword ptr [ESI],ESI
005708da  897608                    MOV dword ptr [ESI + 0x8],ESI
005708dd  c7470400000000            MOV dword ptr [EDI + 0x4],0x0
005708e4  8b7dbc                    MOV EDI,dword ptr [EBP + -0x44]
005708e7  c744385400000000          MOV dword ptr [EAX + EDI*0x1 + 0x54],0x0
005708ef  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
005708f5  897dbc                    MOV dword ptr [EBP + -0x44],EDI
005708f8  41                        INC ECX
005708f9  05b8000000                ADD EAX,0xb8
005708fe  894db8                    MOV dword ptr [EBP + -0x48],ECX
00570901  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
00570904  3b8fcc820100              CMP ECX,dword ptr [EDI + 0x182cc]
0057090a  0f8c80feffff              JL 0x00570790
00570910  e901080000                JMP 0x00571116
00570915  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0057091d  8bcf                      MOV ECX,EDI
0057091f  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00570927  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
0057092e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00570936  e805df1400                CALL 0x006be840
0057093b  51                        PUSH ECX
0057093c  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
0057093f  8bcf                      MOV ECX,EDI
00570941  8d45a0                    LEA EAX,[EBP + -0x60]
00570944  c7042400000000            MOV dword ptr [ESP],0x0
0057094b  50                        PUSH EAX
0057094c  e8efe21400                CALL 0x006bec40
00570951  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00570959  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
0057095e  f30f104da4                MOVSS XMM1,dword ptr [EBP + -0x5c]
00570963  f30f5cd0                  SUBSS XMM2,XMM0
00570967  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0057096f  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00570974  0f28c2                    MOVAPS XMM0,XMM2
00570977  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
0057097c  f30f59c2                  MULSS XMM0,XMM2
00570980  f30f59c9                  MULSS XMM1,XMM1
00570984  f30f58c1                  ADDSS XMM0,XMM1
00570988  e8c350ecff                CALL 0x00435a50
0057098d  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
00570993  0f28c8                    MOVAPS XMM1,XMM0
00570996  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
0057099b  85f6                      TEST ESI,ESI
0057099d  7e09                      JLE 0x005709a8
0057099f  2b75bc                    SUB ESI,dword ptr [EBP + -0x44]
005709a2  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
005709a8  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
005709b0  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
005709b8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005709c0  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005709c8  2bc8                      SUB ECX,EAX
005709ca  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
005709cd  018fa40b0000              ADD dword ptr [EDI + 0xba4],ECX
005709d3  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005709db  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
005709e3  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
005709eb  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005709f0  f30f5cd3                  SUBSS XMM2,XMM3
005709f4  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005709fc  f30f5c45b0                SUBSS XMM0,dword ptr [EBP + -0x50]
00570a01  f30f59d2                  MULSS XMM2,XMM2
00570a05  f30f59c0                  MULSS XMM0,XMM0
00570a09  f30f58d0                  ADDSS XMM2,XMM0
00570a0d  0f2f1524acba00            COMISS XMM2,dword ptr [0x00baac24]
00570a14  0f86c7000000              JBE 0x00570ae1
00570a1a  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
00570a1f  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
00570a27  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00570a2c  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
00570a31  f30f5cc3                  SUBSS XMM0,XMM3
00570a35  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
00570a3d  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
00570a42  0f28c2                    MOVAPS XMM0,XMM2
00570a45  e80650ecff                CALL 0x00435a50
00570a4a  0f57c9                    XORPS XMM1,XMM1
00570a4d  8d4598                    LEA EAX,[EBP + -0x68]
00570a50  f30f5cc1                  SUBSS XMM0,XMM1
00570a54  51                        PUSH ECX
00570a55  8d4da8                    LEA ECX,[EBP + -0x58]
00570a58  f30f5e0598abba00          DIVSS XMM0,dword ptr [0x00baab98]
00570a60  f30f5fc1                  MAXSS XMM0,XMM1
00570a64  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
00570a6c  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00570a74  f30f58c1                  ADDSS XMM0,XMM1
00570a78  f30f110424                MOVSS dword ptr [ESP],XMM0
00570a7d  50                        PUSH EAX
00570a7e  e87df64900                CALL 0x00a10100
00570a83  f30f105dbc                MOVSS XMM3,dword ptr [EBP + -0x44]
00570a88  0f57c0                    XORPS XMM0,XMM0
00570a8b  0f2ed8                    UCOMISS XMM3,XMM0
00570a8e  8bc8                      MOV ECX,EAX
00570a90  9f                        LAHF
00570a91  f6c444                    TEST AH,0x44
00570a94  7b46                      JNP 0x00570adc
00570a96  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00570a9e  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00570aa3  0f28c2                    MOVAPS XMM0,XMM2
00570aa6  f30f5901                  MULSS XMM0,dword ptr [ECX]
00570aaa  f30f59d1                  MULSS XMM2,XMM1
00570aae  f30f5ec3                  DIVSS XMM0,XMM3
00570ab2  f30f5ed3                  DIVSS XMM2,XMM3
00570ab6  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00570abe  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00570ac6  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00570ace  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00570ad6  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
00570adc  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
00570ae1  85f6                      TEST ESI,ESI
00570ae3  0f8f2d060000              JG 0x00571116
00570ae9  f30f100594aaba00          MOVSS XMM0,dword ptr [0x00baaa94]
00570af1  0f2fc1                    COMISS XMM0,XMM1
00570af4  0f861c060000              JBE 0x00571116
00570afa  6a00                      PUSH 0x0
00570afc  8d4f48                    LEA ECX,[EDI + 0x48]
00570aff  6854ddb100                PUSH 0xb1dd54
00570b04  e87798e9ff                CALL 0x0040a380
00570b09  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00570b0f  8db7c4030000              LEA ESI,[EDI + 0x3c4]
00570b15  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00570b1f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00570b29  85c9                      TEST ECX,ECX
00570b2b  7412                      JZ 0x00570b3f
00570b2d  8d45ac                    LEA EAX,[EBP + -0x54]
00570b30  8975ac                    MOV dword ptr [EBP + -0x54],ESI
00570b33  50                        PUSH EAX
00570b34  81c1cc030000              ADD ECX,0x3cc
00570b3a  e8d1e6f5ff                CALL 0x004cf210
00570b3f  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
00570b42  8bc8                      MOV ECX,EAX
00570b44  56                        PUSH ESI
00570b45  8906                      MOV dword ptr [ESI],EAX
00570b47  e8a4d1f5ff                CALL 0x004cdcf0
00570b4c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00570b54  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00570b5c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00570b64  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00570b6c  e9a5050000                JMP 0x00571116
00570b71  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00570b78  7544                      JNZ 0x00570bbe
00570b7a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00570b80  8d4db8                    LEA ECX,[EBP + -0x48]
00570b83  c745b8cb020000            MOV dword ptr [EBP + -0x48],0x2cb
00570b8a  e8f15b3e00                CALL 0x00956780
00570b8f  83ec08                    SUB ESP,0x8
00570b92  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00570b9a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570ba1  6a00                      PUSH 0x0
00570ba3  6a02                      PUSH 0x2
00570ba5  51                        PUSH ECX
00570ba6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570bad  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00570bb3  ff75b8                    PUSH dword ptr [EBP + -0x48]
00570bb6  e875d03b00                CALL 0x0092dc30
00570bbb  8b75bc                    MOV ESI,dword ptr [EBP + -0x44]
00570bbe  8d4f48                    LEA ECX,[EDI + 0x48]
00570bc1  68b012b600                PUSH 0xb612b0
00570bc6  e8c5a4e9ff                CALL 0x0040b090
00570bcb  84c0                      TEST AL,AL
00570bcd  7453                      JZ 0x00570c22
00570bcf  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00570bd7  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00570bdf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00570be7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00570beb  740d                      JZ 0x00570bfa
00570bed  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00570bf4  0f851c050000              JNZ 0x00571116
00570bfa  6a00                      PUSH 0x0
00570bfc  6854bcb100                PUSH 0xb1bc54
00570c01  8d4f48                    LEA ECX,[EDI + 0x48]
00570c04  e87797e9ff                CALL 0x0040a380
00570c09  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00570c13  c787c00b00005a000000      MOV dword ptr [EDI + 0xbc0],0x5a
00570c1d  e9f4040000                JMP 0x00571116
00570c22  68dcd2b100                PUSH 0xb1d2dc
00570c27  8d4f48                    LEA ECX,[EDI + 0x48]
00570c2a  e861a4e9ff                CALL 0x0040b090
00570c2f  84c0                      TEST AL,AL
00570c31  0f84e8020000              JZ 0x00570f1f
00570c37  68b012b600                PUSH 0xb612b0
00570c3c  8d4f48                    LEA ECX,[EDI + 0x48]
00570c3f  e84ca4e9ff                CALL 0x0040b090
00570c44  84c0                      TEST AL,AL
00570c46  0f85d3020000              JNZ 0x00570f1f
00570c4c  68dcd2b100                PUSH 0xb1d2dc
00570c51  8d4f48                    LEA ECX,[EDI + 0x48]
00570c54  e8d7a3e9ff                CALL 0x0040b030
00570c59  84c0                      TEST AL,AL
00570c5b  7441                      JZ 0x00570c9e
00570c5d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00570c63  8d4db8                    LEA ECX,[EBP + -0x48]
00570c66  c745b8cc020000            MOV dword ptr [EBP + -0x48],0x2cc
00570c6d  e80e5b3e00                CALL 0x00956780
00570c72  83ec08                    SUB ESP,0x8
00570c75  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00570c7d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570c84  6a00                      PUSH 0x0
00570c86  6a02                      PUSH 0x2
00570c88  51                        PUSH ECX
00570c89  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570c90  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00570c96  ff75b8                    PUSH dword ptr [EBP + -0x48]
00570c99  e892cf3b00                CALL 0x0092dc30
00570c9e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00570ca6  8bcf                      MOV ECX,EDI
00570ca8  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00570cb0  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00570cb8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00570cc0  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
00570cc8  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00570cd0  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
00570cd8  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00570ce0  f30f59d1                  MULSS XMM2,XMM1
00570ce4  f30f59c1                  MULSS XMM0,XMM1
00570ce8  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00570cf0  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
00570cf8  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00570d00  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00570d08  0f57d2                    XORPS XMM2,XMM2
00570d0b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00570d13  e848ba1300                CALL 0x006ac760
00570d18  85c0                      TEST EAX,EAX
00570d1a  0f84f1010000              JZ 0x00570f11
00570d20  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
00570d28  8d45a0                    LEA EAX,[EBP + -0x60]
00570d2b  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00570d30  8bcf                      MOV ECX,EDI
00570d32  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00570d3a  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
00570d3f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00570d47  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
00570d4c  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00570d54  68c013b600                PUSH 0xb613c0
00570d59  50                        PUSH EAX
00570d5a  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00570d5f  e88c5d1400                CALL 0x006b6af0
00570d64  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
00570d69  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
00570d6e  f30f5845b0                ADDSS XMM0,dword ptr [EBP + -0x50]
00570d73  f30f584db4                ADDSS XMM1,dword ptr [EBP + -0x4c]
00570d78  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
00570d7d  f30f5808                  ADDSS XMM1,dword ptr [EAX]
00570d81  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
00570d86  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
00570d8b  e8d0e11700                CALL 0x006eef60
00570d90  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00570d98  0f57c0                    XORPS XMM0,XMM0
00570d9b  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00570da3  8bf0                      MOV ESI,EAX
00570da5  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
00570dad  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00570db5  f30f58c8                  ADDSS XMM1,XMM0
00570db9  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
00570dbe  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
00570dc3  e898e11700                CALL 0x006eef60
00570dc8  f30f100d74adba00          MOVSS XMM1,dword ptr [0x00baad74]
00570dd0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00570dd6  56                        PUSH ESI
00570dd7  660f6ec0                  MOVD XMM0,EAX
00570ddb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00570ddf  c1e81f                    SHR EAX,0x1f
00570de2  6a00                      PUSH 0x0
00570de4  57                        PUSH EDI
00570de5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00570dee  8d45a0                    LEA EAX,[EBP + -0x60]
00570df1  50                        PUSH EAX
00570df2  8d4598                    LEA EAX,[EBP + -0x68]
00570df5  50                        PUSH EAX
00570df6  660f5ac0                  CVTPD2PS XMM0,XMM0
00570dfa  6a3b                      PUSH 0x3b
00570dfc  68e8030000                PUSH 0x3e8
00570e01  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00570e09  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00570e11  f30f5cc8                  SUBSS XMM1,XMM0
00570e15  f30f584dac                ADDSS XMM1,dword ptr [EBP + -0x54]
00570e1a  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
00570e1f  e8fc7cebff                CALL 0x00428b20
00570e24  51                        PUSH ECX
00570e25  0f57db                    XORPS XMM3,XMM3
00570e28  c704240000803f            MOV dword ptr [ESP],0x3f800000
00570e2f  0f57d2                    XORPS XMM2,XMM2
00570e32  8d4dc0                    LEA ECX,[EBP + -0x40]
00570e35  0f57c9                    XORPS XMM1,XMM1
00570e38  8bf0                      MOV ESI,EAX
00570e3a  e8b12aebff                CALL 0x004238f0
00570e3f  50                        PUSH EAX
00570e40  51                        PUSH ECX
00570e41  6a00                      PUSH 0x0
00570e43  8d4e48                    LEA ECX,[ESI + 0x48]
00570e46  e8d5a3e9ff                CALL 0x0040b220
00570e4b  83c404                    ADD ESP,0x4
00570e4e  8d4848                    LEA ECX,[EAX + 0x48]
00570e51  e89a63e9ff                CALL 0x004071f0
00570e56  e805e11700                CALL 0x006eef60
00570e5b  660f6ec0                  MOVD XMM0,EAX
00570e5f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00570e63  c1e81f                    SHR EAX,0x1f
00570e66  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00570e6f  660f5ac0                  CVTPD2PS XMM0,XMM0
00570e73  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00570e7b  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00570e83  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00570e8b  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00570e93  e8c8e01700                CALL 0x006eef60
00570e98  33d2                      XOR EDX,EDX
00570e9a  b90a000000                MOV ECX,0xa
00570e9f  f7f1                      DIV ECX
00570ea1  03d1                      ADD EDX,ECX
00570ea3  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
00570ea9  899660040000              MOV dword ptr [ESI + 0x460],EDX
00570eaf  e8ace01700                CALL 0x006eef60
00570eb4  660f6ec0                  MOVD XMM0,EAX
00570eb8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00570ebc  c1e81f                    SHR EAX,0x1f
00570ebf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00570ec8  660f5ac8                  CVTPD2PS XMM1,XMM0
00570ecc  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00570ed4  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00570edc  f30f580d28a5ba00          ADDSS XMM1,dword ptr [0x00baa528]
00570ee4  0f28c1                    MOVAPS XMM0,XMM1
00570ee7  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00570eef  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00570ef7  c7865403000030f8ffff      MOV dword ptr [ESI + 0x354],0xfffff830
00570f01  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00570f09  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00570f11  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00570f14  018710040000              ADD dword ptr [EDI + 0x410],EAX
00570f1a  e9f7010000                JMP 0x00571116
00570f1f  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
00570f26  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00570f2e  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00570f36  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00570f3e  0f848f010000              JZ 0x005710d3
00570f44  51                        PUSH ECX
00570f45  8d4598                    LEA EAX,[EBP + -0x68]
00570f48  c7042400000000            MOV dword ptr [ESP],0x0
00570f4f  50                        PUSH EAX
00570f50  8bcf                      MOV ECX,EDI
00570f52  e8e9dc1400                CALL 0x006bec40
00570f57  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00570f5f  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00570f67  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00570f6c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00570f70  f30f5ccb                  SUBSS XMM1,XMM3
00570f74  f30f5cd0                  SUBSS XMM2,XMM0
00570f78  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00570f7d  f30f115db4                MOVSS dword ptr [EBP + -0x4c],XMM3
00570f82  0f28c1                    MOVAPS XMM0,XMM1
00570f85  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
00570f8a  f30f59c1                  MULSS XMM0,XMM1
00570f8e  0f28ca                    MOVAPS XMM1,XMM2
00570f91  f30f59ca                  MULSS XMM1,XMM2
00570f95  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
00570f9a  f30f58c1                  ADDSS XMM0,XMM1
00570f9e  e8ad4aecff                CALL 0x00435a50
00570fa3  f30f105db0                MOVSS XMM3,dword ptr [EBP + -0x50]
00570fa8  0f57e4                    XORPS XMM4,XMM4
00570fab  0f2fc4                    COMISS XMM0,XMM4
00570fae  761b                      JBE 0x00570fcb
00570fb0  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
00570fb8  f30f5ec8                  DIVSS XMM1,XMM0
00570fbc  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
00570fc1  f30f59c1                  MULSS XMM0,XMM1
00570fc5  f30f59d9                  MULSS XMM3,XMM1
00570fc9  eb05                      JMP 0x00570fd0
00570fcb  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
00570fd0  f30f1055b4                MOVSS XMM2,dword ptr [EBP + -0x4c]
00570fd5  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
00570fda  f30f58d3                  ADDSS XMM2,XMM3
00570fde  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00570fe6  f30f58c8                  ADDSS XMM1,XMM0
00570fea  0f2edc                    UCOMISS XMM3,XMM4
00570fed  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00570ff5  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00570ffd  9f                        LAHF
00570ffe  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
00571006  f30f59156ca0ba00          MULSS XMM2,dword ptr [0x00baa06c]
0057100e  f6c444                    TEST AH,0x44
00571011  7b38                      JNP 0x0057104b
00571013  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0057101b  f30f59c8                  MULSS XMM1,XMM0
0057101f  f30f59d0                  MULSS XMM2,XMM0
00571023  f30f5ecb                  DIVSS XMM1,XMM3
00571027  f30f5ed3                  DIVSS XMM2,XMM3
0057102b  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00571033  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0057103b  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00571043  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0057104b  f30f1055b4                MOVSS XMM2,dword ptr [EBP + -0x4c]
00571050  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
00571055  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0057105b  03c6                      ADD EAX,ESI
0057105d  898710040000              MOV dword ptr [EDI + 0x410],EAX
00571063  83f80e                    CMP EAX,0xe
00571066  7e4e                      JLE 0x005710b6
00571068  6840b6c700                PUSH 0xc7b640
0057106d  8d8f34030000              LEA ECX,[EDI + 0x334]
00571073  e888f54900                CALL 0x00a10600
00571078  84c0                      TEST AL,AL
0057107a  743a                      JZ 0x005710b6
0057107c  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00571084  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0057108c  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
00571092  50                        PUSH EAX
00571093  8d4d98                    LEA ECX,[EBP + -0x68]
00571096  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
0057109b  f30f11559c                MOVSS dword ptr [EBP + -0x64],XMM2
005710a0  e88bef4900                CALL 0x00a10030
005710a5  8b08                      MOV ECX,dword ptr [EAX]
005710a7  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005710ad  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005710b0  898738030000              MOV dword ptr [EDI + 0x338],EAX
005710b6  68dcd2b100                PUSH 0xb1d2dc
005710bb  8d4f48                    LEA ECX,[EDI + 0x48]
005710be  e86d9fe9ff                CALL 0x0040b030
005710c3  84c0                      TEST AL,AL
005710c5  744f                      JZ 0x00571116
005710c7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005710d1  eb43                      JMP 0x00571116
005710d3  8bcf                      MOV ECX,EDI
005710d5  e866d71400                CALL 0x006be840
005710da  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005710e2  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
005710ea  e966ffffff                JMP 0x00571055
005710ef  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005710f5  03c6                      ADD EAX,ESI
005710f7  898710040000              MOV dword ptr [EDI + 0x410],EAX
005710fd  83f81e                    CMP EAX,0x1e
00571100  7c07                      JL 0x00571109
00571102  8b07                      MOV EAX,dword ptr [EDI]
00571104  8bcf                      MOV ECX,EDI
00571106  ff5028                    CALL dword ptr [EAX + 0x28]
00571109  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057110f  6a0e                      PUSH 0xe
00571111  e85a251900                CALL 0x00703670
00571116  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00571119  64890d00000000            MOV dword ptr FS:[0x0],ECX
00571120  59                        POP ECX
00571121  5f                        POP EDI
00571122  5e                        POP ESI
00571123  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00571126  33cd                      XOR ECX,EBP
00571128  e8fedf5700                CALL 0x00aef12b
0057112d  8be5                      MOV ESP,EBP
0057112f  5d                        POP EBP
00571130  8be3                      MOV ESP,EBX
00571132  5b                        POP EBX
00571133  c3                        RET
