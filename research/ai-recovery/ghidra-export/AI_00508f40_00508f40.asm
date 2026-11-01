; J460 NPC AI 0x00508f40 AI_00508f40
; types=10,208,252,257,284,302,807
; identities=10.0.0,10.1.0,10.2.0,10.3.0,10.3.1,10.3.2,10.3.3,10.3.4,10.3.5,208.0.0,208.1.0,208.2.0,252.0.0,257.0.0,257.1.0,284.0.0,302.0.0,302.10.0,807.0.0
; entry=00508f40
00508f40  53                        PUSH EBX
00508f41  8bdc                      MOV EBX,ESP
00508f43  83ec08                    SUB ESP,0x8
00508f46  83e4f8                    AND ESP,0xfffffff8
00508f49  83c404                    ADD ESP,0x4
00508f4c  55                        PUSH EBP
00508f4d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00508f50  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00508f54  8bec                      MOV EBP,ESP
00508f56  6aff                      PUSH -0x1
00508f58  68c541af00                PUSH 0xaf41c5
00508f5d  64a100000000              MOV EAX,FS:[0x0]
00508f63  50                        PUSH EAX
00508f64  53                        PUSH EBX
00508f65  81ecf8010000              SUB ESP,0x1f8
00508f6b  a1b493bf00                MOV EAX,[0x00bf93b4]
00508f70  33c5                      XOR EAX,EBP
00508f72  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00508f75  56                        PUSH ESI
00508f76  57                        PUSH EDI
00508f77  50                        PUSH EAX
00508f78  8d45f4                    LEA EAX,[EBP + -0xc]
00508f7b  64a300000000              MOV FS:[0x0],EAX
00508f81  8bf9                      MOV EDI,ECX
00508f83  837f280a                  CMP dword ptr [EDI + 0x28],0xa
00508f87  7510                      JNZ 0x00508f99
00508f89  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
00508f8d  750a                      JNZ 0x00508f99
00508f8f  e8fc15fdff                CALL 0x004da590
00508f94  e9f6160000                JMP 0x0050a68f
00508f99  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00508f9e  0f57c9                    XORPS XMM1,XMM1
00508fa1  0f2fc1                    COMISS XMM0,XMM1
00508fa4  7620                      JBE 0x00508fc6
00508fa6  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00508fa9  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00508fac  7418                      JZ 0x00508fc6
00508fae  6690                      NOP
00508fb0  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
00508fb3  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
00508fb6  7506                      JNZ 0x00508fbe
00508fb8  c70000000000              MOV dword ptr [EAX],0x0
00508fbe  83c038                    ADD EAX,0x38
00508fc1  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00508fc4  75ea                      JNZ 0x00508fb0
00508fc6  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00508fcd  0f8530020000              JNZ 0x00509203
00508fd3  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00508fd6  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00508fe0  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00508fea  3d2e010000                CMP EAX,0x12e
00508fef  7517                      JNZ 0x00509008
00508ff1  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00508ff8  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00508fff  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00509006  eb54                      JMP 0x0050905c
00509008  3dd0000000                CMP EAX,0xd0
0050900d  744d                      JZ 0x0050905c
0050900f  3d01010000                CMP EAX,0x101
00509014  7446                      JZ 0x0050905c
00509016  83f80a                    CMP EAX,0xa
00509019  7517                      JNZ 0x00509032
0050901b  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050901f  7511                      JNZ 0x00509032
00509021  6a00                      PUSH 0x0
00509023  8d4f48                    LEA ECX,[EDI + 0x48]
00509026  68d4feb500                PUSH 0xb5fed4
0050902b  e81019f0ff                CALL 0x0040a940
00509030  eb2a                      JMP 0x0050905c
00509032  6a01                      PUSH 0x1
00509034  68d4feb500                PUSH 0xb5fed4
00509039  8d4f48                    LEA ECX,[EDI + 0x48]
0050903c  e8af1af0ff                CALL 0x0040aaf0
00509041  84c0                      TEST AL,AL
00509043  7417                      JZ 0x0050905c
00509045  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0050904c  740e                      JZ 0x0050905c
0050904e  8d8f98000000              LEA ECX,[EDI + 0x98]
00509054  0f57c9                    XORPS XMM1,XMM1
00509057  e8a4fdefff                CALL 0x00408e00
0050905c  817f28d0000000            CMP dword ptr [EDI + 0x28],0xd0
00509063  7519                      JNZ 0x0050907e
00509065  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00509069  7513                      JNZ 0x0050907e
0050906b  6a00                      PUSH 0x0
0050906d  8d4f48                    LEA ECX,[EDI + 0x48]
00509070  c6417001                  MOV byte ptr [ECX + 0x70],0x1
00509074  68600db600                PUSH 0xb60d60
00509079  e8c218f0ff                CALL 0x0040a940
0050907e  6a01                      PUSH 0x1
00509080  6818ddb100                PUSH 0xb1dd18
00509085  8d4f48                    LEA ECX,[EDI + 0x48]
00509088  e84315f0ff                CALL 0x0040a5d0
0050908d  84c0                      TEST AL,AL
0050908f  7420                      JZ 0x005090b1
00509091  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00509094  85c0                      TEST EAX,EAX
00509096  7419                      JZ 0x005090b1
00509098  8d4f78                    LEA ECX,[EDI + 0x78]
0050909b  0f57c9                    XORPS XMM1,XMM1
0050909e  e85dfdefff                CALL 0x00408e00
005090a3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005090a6  85c0                      TEST EAX,EAX
005090a8  7407                      JZ 0x005090b1
005090aa  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
005090b1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005090b4  3dfc000000                CMP EAX,0xfc
005090b9  755e                      JNZ 0x00509119
005090bb  0f280d40bfba00            MOVAPS XMM1,xmmword ptr [0x00babf40]
005090c2  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005090c8  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
005090ce  c78518feffff00000000      MOV dword ptr [EBP + 0xfffffe18],0x0
005090d8  c7851cfeffff00000000      MOV dword ptr [EBP + 0xfffffe1c],0x0
005090e2  0f57c0                    XORPS XMM0,XMM0
005090e5  c78520feffff00000000      MOV dword ptr [EBP + 0xfffffe20],0x0
005090ef  3bc8                      CMP ECX,EAX
005090f1  0f840c010000              JZ 0x00509203
005090f7  8b8520feffff              MOV EAX,dword ptr [EBP + 0xfffffe20]
005090fd  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00509101  f30f7e8518feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe18]
00509109  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0050910e  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
00509111  894128                    MOV dword ptr [ECX + 0x28],EAX
00509114  e9ea000000                JMP 0x00509203
00509119  3d2e010000                CMP EAX,0x12e
0050911e  0f85df000000              JNZ 0x00509203
00509124  8d4dc0                    LEA ECX,[EBP + -0x40]
00509127  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00509131  e83ae0efff                CALL 0x00407170
00509136  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050913c  3bc8                      CMP ECX,EAX
0050913e  741e                      JZ 0x0050915e
00509140  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00509143  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00509146  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
0050914a  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0050914e  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00509153  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00509158  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0050915b  894128                    MOV dword ptr [ECX + 0x28],EAX
0050915e  c787f40100000000803f      MOV dword ptr [EDI + 0x1f4],0x3f800000
00509168  c787f80100000000803f      MOV dword ptr [EDI + 0x1f8],0x3f800000
00509172  c787fc0100000000803f      MOV dword ptr [EDI + 0x1fc],0x3f800000
0050917c  c787000200000000803f      MOV dword ptr [EDI + 0x200],0x3f800000
00509186  e8d55d1e00                CALL 0x006eef60
0050918b  33d2                      XOR EDX,EDX
0050918d  b93c000000                MOV ECX,0x3c
00509192  f7f1                      DIV ECX
00509194  83c25a                    ADD EDX,0x5a
00509197  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
0050919b  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
005091a1  7560                      JNZ 0x00509203
005091a3  6a00                      PUSH 0x0
005091a5  683cd7b100                PUSH 0xb1d73c
005091aa  8d4f48                    LEA ECX,[EDI + 0x48]
005091ad  e88e17f0ff                CALL 0x0040a940
005091b2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005091b6  744b                      JZ 0x00509203
005091b8  6a02                      PUSH 0x2
005091ba  8d4f78                    LEA ECX,[EDI + 0x78]
005091bd  e8ae1af0ff                CALL 0x0040ac70
005091c2  898554feffff              MOV dword ptr [EBP + 0xfffffe54],EAX
005091c8  85c0                      TEST EAX,EAX
005091ca  7437                      JZ 0x00509203
005091cc  6a01                      PUSH 0x1
005091ce  8d4f48                    LEA ECX,[EDI + 0x48]
005091d1  e84a20f0ff                CALL 0x0040b220
005091d6  8b8d54feffff              MOV ECX,dword ptr [EBP + 0xfffffe54]
005091dc  6a01                      PUSH 0x1
005091de  8b11                      MOV EDX,dword ptr [ECX]
005091e0  895040                    MOV dword ptr [EAX + 0x40],EDX
005091e3  8b5104                    MOV EDX,dword ptr [ECX + 0x4]
005091e6  8d4f48                    LEA ECX,[EDI + 0x48]
005091e9  895044                    MOV dword ptr [EAX + 0x44],EDX
005091ec  e82f20f0ff                CALL 0x0040b220
005091f1  8b9554feffff              MOV EDX,dword ptr [EBP + 0xfffffe54]
005091f7  8b4a10                    MOV ECX,dword ptr [EDX + 0x10]
005091fa  894834                    MOV dword ptr [EAX + 0x34],ECX
005091fd  8b4a14                    MOV ECX,dword ptr [EDX + 0x14]
00509200  894838                    MOV dword ptr [EAX + 0x38],ECX
00509203  817f28d0000000            CMP dword ptr [EDI + 0x28],0xd0
0050920a  754f                      JNZ 0x0050925b
0050920c  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00509210  7549                      JNZ 0x0050925b
00509212  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00509216  7443                      JZ 0x0050925b
00509218  68580db600                PUSH 0xb60d58
0050921d  8d4f78                    LEA ECX,[EDI + 0x78]
00509220  e8bb1af0ff                CALL 0x0040ace0
00509225  8bf0                      MOV ESI,EAX
00509227  85f6                      TEST ESI,ESI
00509229  7430                      JZ 0x0050925b
0050922b  807e0c00                  CMP byte ptr [ESI + 0xc],0x0
0050922f  742a                      JZ 0x0050925b
00509231  8d4f48                    LEA ECX,[EDI + 0x48]
00509234  68600db600                PUSH 0xb60d60
00509239  e8f221f0ff                CALL 0x0040b430
0050923e  8bd0                      MOV EDX,EAX
00509240  85d2                      TEST EDX,EDX
00509242  7417                      JZ 0x0050925b
00509244  8b0e                      MOV ECX,dword ptr [ESI]
00509246  894a40                    MOV dword ptr [EDX + 0x40],ECX
00509249  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0050924c  894a44                    MOV dword ptr [EDX + 0x44],ECX
0050924f  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
00509252  894234                    MOV dword ptr [EDX + 0x34],EAX
00509255  8b4614                    MOV EAX,dword ptr [ESI + 0x14]
00509258  894238                    MOV dword ptr [EDX + 0x38],EAX
0050925b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00509261  85c0                      TEST EAX,EAX
00509263  0f8426140000              JZ 0x0050a68f
00509269  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00509270  0f8453010000              JZ 0x005093c9
00509276  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0050927e  0f2f0500aeba00            COMISS XMM0,dword ptr [0x00baae00]
00509285  0f8604140000              JBE 0x0050a68f
0050928b  e8d05c1e00                CALL 0x006eef60
00509290  a801                      TEST AL,0x1
00509292  0f85f7130000              JNZ 0x0050a68f
00509298  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050929b  83f80a                    CMP EAX,0xa
0050929e  755b                      JNZ 0x005092fb
005092a0  e8bb5c1e00                CALL 0x006eef60
005092a5  33d2                      XOR EDX,EDX
005092a7  b903000000                MOV ECX,0x3
005092ac  f7f1                      DIV ECX
005092ae  85d2                      TEST EDX,EDX
005092b0  750b                      JNZ 0x005092bd
005092b2  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
005092b6  7405                      JZ 0x005092bd
005092b8  8d41fe                    LEA EAX,[ECX + -0x2]
005092bb  eb02                      JMP 0x005092bf
005092bd  33c0                      XOR EAX,EAX
005092bf  6aff                      PUSH -0x1
005092c1  6a00                      PUSH 0x0
005092c3  50                        PUSH EAX
005092c4  6a0b                      PUSH 0xb
005092c6  8bcf                      MOV ECX,EDI
005092c8  e8637c1b00                CALL 0x006c0f30
005092cd  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
005092d4  e8875c1e00                CALL 0x006eef60
005092d9  33d2                      XOR EDX,EDX
005092db  b914000000                MOV ECX,0x14
005092e0  f7f1                      DIV ECX
005092e2  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
005092e8  03d1                      ADD EDX,ECX
005092ea  898780030000              MOV dword ptr [EDI + 0x380],EAX
005092f0  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
005092f6  e994130000                JMP 0x0050a68f
005092fb  3dd0000000                CMP EAX,0xd0
00509300  0f8584000000              JNZ 0x0050938a
00509306  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00509309  83f801                    CMP EAX,0x1
0050930c  752a                      JNZ 0x00509338
0050930e  6aff                      PUSH -0x1
00509310  6a00                      PUSH 0x0
00509312  6a00                      PUSH 0x0
00509314  68d2000000                PUSH 0xd2
00509319  8bcf                      MOV ECX,EDI
0050931b  e8107c1b00                CALL 0x006c0f30
00509320  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00509326  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0050932d  898780030000              MOV dword ptr [EDI + 0x380],EAX
00509333  e957130000                JMP 0x0050a68f
00509338  83f802                    CMP EAX,0x2
0050933b  0f854e130000              JNZ 0x0050a68f
00509341  e81a5c1e00                CALL 0x006eef60
00509346  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050934c  50                        PUSH EAX
0050934d  6a00                      PUSH 0x0
0050934f  57                        PUSH EDI
00509350  6840b6c700                PUSH 0xc7b640
00509355  8d873c030000              LEA EAX,[EDI + 0x33c]
0050935b  50                        PUSH EAX
0050935c  6a0a                      PUSH 0xa
0050935e  6a21                      PUSH 0x21
00509360  e8bbf7f1ff                CALL 0x00428b20
00509365  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050936d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00509375  f30f118034030000          MOVSS dword ptr [EAX + 0x334],XMM0
0050937d  f30f118838030000          MOVSS dword ptr [EAX + 0x338],XMM1
00509385  e905130000                JMP 0x0050a68f
0050938a  3d01010000                CMP EAX,0x101
0050938f  0f85fa120000              JNZ 0x0050a68f
00509395  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00509399  0f85f0120000              JNZ 0x0050a68f
0050939f  6aff                      PUSH -0x1
005093a1  6a00                      PUSH 0x0
005093a3  6a00                      PUSH 0x0
005093a5  68d0000000                PUSH 0xd0
005093aa  8bcf                      MOV ECX,EDI
005093ac  e87f7b1b00                CALL 0x006c0f30
005093b1  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
005093b7  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
005093be  898780030000              MOV dword ptr [EDI + 0x380],EAX
005093c4  e9c6120000                JMP 0x0050a68f
005093c9  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
005093cc  81f9d0000000              CMP ECX,0xd0
005093d2  0f844b020000              JZ 0x00509623
005093d8  81f901010000              CMP ECX,0x101
005093de  0f843f020000              JZ 0x00509623
005093e4  81f91c010000              CMP ECX,0x11c
005093ea  0f8521010000              JNZ 0x00509511
005093f0  83f808                    CMP EAX,0x8
005093f3  0f8518010000              JNZ 0x00509511
005093f9  6a00                      PUSH 0x0
005093fb  8bcf                      MOV ECX,EDI
005093fd  e84efc1c00                CALL 0x006d9050
00509402  8d8f98000000              LEA ECX,[EDI + 0x98]
00509408  68dcd2b100                PUSH 0xb1d2dc
0050940d  e8be19f0ff                CALL 0x0040add0
00509412  84c0                      TEST AL,AL
00509414  0f84aa000000              JZ 0x005094c4
0050941a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00509421  741a                      JZ 0x0050943d
00509423  8b87200f0000              MOV EAX,dword ptr [EDI + 0xf20]
00509429  8b8f240f0000              MOV ECX,dword ptr [EDI + 0xf24]
0050942f  89854cfeffff              MOV dword ptr [EBP + 0xfffffe4c],EAX
00509435  898d50feffff              MOV dword ptr [EBP + 0xfffffe50],ECX
0050943b  eb37                      JMP 0x00509474
0050943d  8bcf                      MOV ECX,EDI
0050943f  e8fc531b00                CALL 0x006be840
00509444  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050944c  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00509454  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0050945c  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00509464  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
0050946c  f30f118d50feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM1
00509474  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
0050947a  8b01                      MOV EAX,dword ptr [ECX]
0050947c  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
0050947f  898d50feffff              MOV dword ptr [EBP + 0xfffffe50],ECX
00509485  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0050948b  89854cfeffff              MOV dword ptr [EBP + 0xfffffe4c],EAX
00509491  e89a5af3ff                CALL 0x0043ef30
00509496  51                        PUSH ECX
00509497  8bf0                      MOV ESI,EAX
00509499  c704240000e040            MOV dword ptr [ESP],0x40e00000
005094a0  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
005094a6  50                        PUSH EAX
005094a7  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
005094ad  e84e6c5000                CALL 0x00a10100
005094b2  56                        PUSH ESI
005094b3  6a00                      PUSH 0x0
005094b5  50                        PUSH EAX
005094b6  8d873c030000              LEA EAX,[EDI + 0x33c]
005094bc  8bcf                      MOV ECX,EDI
005094be  50                        PUSH EAX
005094bf  e81c1e1c00                CALL 0x006cb2e0
005094c4  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
005094cb  8d4f48                    LEA ECX,[EDI + 0x48]
005094ce  7409                      JZ 0x005094d9
005094d0  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
005094d7  7520                      JNZ 0x005094f9
005094d9  6a00                      PUSH 0x0
005094db  68d4feb500                PUSH 0xb5fed4
005094e0  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005094ea  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005094f4  e8f716f0ff                CALL 0x0040abf0
005094f9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00509501  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00509509  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00509511  817f282e010000            CMP dword ptr [EDI + 0x28],0x12e
00509518  7512                      JNZ 0x0050952c
0050951a  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00509521  b82e010000                MOV EAX,0x12e
00509526  0f8452090000              JZ 0x00509e7e
0050952c  6a08                      PUSH 0x8
0050952e  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00509535  8d4dd4                    LEA ECX,[EBP + -0x2c]
00509538  6818ddb100                PUSH 0xb1dd18
0050953d  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00509544  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050954b  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0050954f  e87c37f0ff                CALL 0x0040ccd0
00509554  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0050955b  8d4da8                    LEA ECX,[EBP + -0x58]
0050955e  6a08                      PUSH 0x8
00509560  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
00509567  6830ddb100                PUSH 0xb1dd30
0050956c  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00509573  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0050957a  c645a800                  MOV byte ptr [EBP + -0x58],0x0
0050957e  e84d37f0ff                CALL 0x0040ccd0
00509583  51                        PUSH ECX
00509584  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00509588  8d45d4                    LEA EAX,[EBP + -0x2c]
0050958b  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00509592  8bcf                      MOV ECX,EDI
00509594  50                        PUSH EAX
00509595  8d45a8                    LEA EAX,[EBP + -0x58]
00509598  50                        PUSH EAX
00509599  e8927d1b00                CALL 0x006c1330
0050959e  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005095a2  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
005095a5  83fa10                    CMP EDX,0x10
005095a8  7228                      JC 0x005095d2
005095aa  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
005095ad  42                        INC EDX
005095ae  8bc1                      MOV EAX,ECX
005095b0  81fa00100000              CMP EDX,0x1000
005095b6  7210                      JC 0x005095c8
005095b8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005095bb  83c223                    ADD EDX,0x23
005095be  2bc1                      SUB EAX,ECX
005095c0  83c0fc                    ADD EAX,-0x4
005095c3  83f81f                    CMP EAX,0x1f
005095c6  7755                      JA 0x0050961d
005095c8  52                        PUSH EDX
005095c9  51                        PUSH ECX
005095ca  e88d5b5e00                CALL 0x00aef15c
005095cf  83c408                    ADD ESP,0x8
005095d2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005095d9  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
005095dc  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
005095e3  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
005095ea  c645a800                  MOV byte ptr [EBP + -0x58],0x0
005095ee  83fa10                    CMP EDX,0x10
005095f1  0f8284080000              JC 0x00509e7b
005095f7  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
005095fa  42                        INC EDX
005095fb  8bc1                      MOV EAX,ECX
005095fd  81fa00100000              CMP EDX,0x1000
00509603  0f8268080000              JC 0x00509e71
00509609  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050960c  83c223                    ADD EDX,0x23
0050960f  2bc1                      SUB EAX,ECX
00509611  83c0fc                    ADD EAX,-0x4
00509614  83f81f                    CMP EAX,0x1f
00509617  0f8654080000              JBE 0x00509e71
0050961d  ff159488b100              CALL dword ptr [0x00b18894]
00509623  83f804                    CMP EAX,0x4
00509626  0f85a1010000              JNZ 0x005097cd
0050962c  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
00509632  83fa64                    CMP EDX,0x64
00509635  7d1b                      JGE 0x00509652
00509637  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0050963f  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00509647  2bc8                      SUB ECX,EAX
00509649  8d040a                    LEA EAX,[EDX + ECX*0x1]
0050964c  898710040000              MOV dword ptr [EDI + 0x410],EAX
00509652  8bcf                      MOV ECX,EDI
00509654  e8e7511b00                CALL 0x006be840
00509659  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00509660  8bf0                      MOV ESI,EAX
00509662  8bcf                      MOV ECX,EDI
00509664  743a                      JZ 0x005096a0
00509666  6a09                      PUSH 0x9
00509668  e8f3eb1c00                CALL 0x006d8260
0050966d  84c0                      TEST AL,AL
0050966f  0f858c000000              JNZ 0x00509701
00509675  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050967d  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
00509683  50                        PUSH EAX
00509684  8bcf                      MOV ECX,EDI
00509686  e815ef1c00                CALL 0x006d85a0
0050968b  6840b6c700                PUSH 0xc7b640
00509690  8bc8                      MOV ECX,EAX
00509692  e8996f5000                CALL 0x00a10630
00509697  84c0                      TEST AL,AL
00509699  7566                      JNZ 0x00509701
0050969b  e971feffff                JMP 0x00509511
005096a0  56                        PUSH ESI
005096a1  e8bae61c00                CALL 0x006d7d60
005096a6  84c0                      TEST AL,AL
005096a8  0f8463feffff              JZ 0x00509511
005096ae  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
005096b6  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
005096be  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005096c6  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005096ce  f30f59c0                  MULSS XMM0,XMM0
005096d2  f30f59c9                  MULSS XMM1,XMM1
005096d6  f30f58c8                  ADDSS XMM1,XMM0
005096da  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
005096e2  0f2fc1                    COMISS XMM0,XMM1
005096e5  0f8626feffff              JBE 0x00509511
005096eb  e870581e00                CALL 0x006eef60
005096f0  33d2                      XOR EDX,EDX
005096f2  b978000000                MOV ECX,0x78
005096f7  f7f1                      DIV ECX
005096f9  85d2                      TEST EDX,EDX
005096fb  0f8510feffff              JNZ 0x00509511
00509701  83bf1004000064            CMP dword ptr [EDI + 0x410],0x64
00509708  0f8c03feffff              JL 0x00509511
0050970e  51                        PUSH ECX
0050970f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00509716  6a00                      PUSH 0x0
00509718  6a05                      PUSH 0x5
0050971a  51                        PUSH ECX
0050971b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00509722  8bcf                      MOV ECX,EDI
00509724  68a7000000                PUSH 0xa7
00509729  e872d41c00                CALL 0x006d6ba0
0050972e  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
00509736  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
0050973e  0f28d3                    MOVAPS XMM2,XMM3
00509741  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00509748  0f28c4                    MOVAPS XMM0,XMM4
0050974b  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00509752  0f2fd0                    COMISS XMM2,XMM0
00509755  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0050975f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00509769  7645                      JBE 0x005097b0
0050976b  f30f59db                  MULSS XMM3,XMM3
0050976f  f30f59e4                  MULSS XMM4,XMM4
00509773  f30f58dc                  ADDSS XMM3,XMM4
00509777  0f2f1d6ca0ba00            COMISS XMM3,dword ptr [0x00baa06c]
0050977e  7630                      JBE 0x005097b0
00509780  6a00                      PUSH 0x0
00509782  684407b600                PUSH 0xb60744
00509787  8d4f48                    LEA ECX,[EDI + 0x48]
0050978a  e8f10bf0ff                CALL 0x0040a380
0050978f  0f57c0                    XORPS XMM0,XMM0
00509792  8bcf                      MOV ECX,EDI
00509794  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
0050979b  6a01                      PUSH 0x1
0050979d  0f97c0                    SETA AL
005097a0  888748010000              MOV byte ptr [EDI + 0x148],AL
005097a6  e8a5f81c00                CALL 0x006d9050
005097ab  e9df0e0000                JMP 0x0050a68f
005097b0  6a00                      PUSH 0x0
005097b2  680808b600                PUSH 0xb60808
005097b7  8d4f48                    LEA ECX,[EDI + 0x48]
005097ba  e8c10bf0ff                CALL 0x0040a380
005097bf  6a01                      PUSH 0x1
005097c1  8bcf                      MOV ECX,EDI
005097c3  e888f81c00                CALL 0x006d9050
005097c8  e9c20e0000                JMP 0x0050a68f
005097cd  83f808                    CMP EAX,0x8
005097d0  0f853bfdffff              JNZ 0x00509511
005097d6  6a00                      PUSH 0x0
005097d8  8bcf                      MOV ECX,EDI
005097da  e871f81c00                CALL 0x006d9050
005097df  817f2801010000            CMP dword ptr [EDI + 0x28],0x101
005097e6  0f856d040000              JNZ 0x00509c59
005097ec  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005097f0  0f8563040000              JNZ 0x00509c59
005097f6  68500db600                PUSH 0xb60d50
005097fb  8d4f48                    LEA ECX,[EDI + 0x48]
005097fe  e82d18f0ff                CALL 0x0040b030
00509803  84c0                      TEST AL,AL
00509805  745a                      JZ 0x00509861
00509807  8bcf                      MOV ECX,EDI
00509809  e832501b00                CALL 0x006be840
0050980e  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
00509814  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050981c  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00509824  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
0050982a  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00509832  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0050983a  50                        PUSH EAX
0050983b  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
00509843  f30f118d50feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM1
0050984b  e8e0675000                CALL 0x00a10030
00509850  8b08                      MOV ECX,dword ptr [EAX]
00509852  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00509858  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0050985b  898738030000              MOV dword ptr [EDI + 0x338],EAX
00509861  68dcd2b100                PUSH 0xb1d2dc
00509866  8d4f48                    LEA ECX,[EDI + 0x48]
00509869  e8c217f0ff                CALL 0x0040b030
0050986e  84c0                      TEST AL,AL
00509870  743a                      JZ 0x005098ac
00509872  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00509879  7431                      JZ 0x005098ac
0050987b  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00509881  6840b6c700                PUSH 0xc7b640
00509886  e8a56d5000                CALL 0x00a10630
0050988b  84c0                      TEST AL,AL
0050988d  741d                      JZ 0x005098ac
0050988f  8d853cfeffff              LEA EAX,[EBP + 0xfffffe3c]
00509895  50                        PUSH EAX
00509896  e895675000                CALL 0x00a10030
0050989b  8b08                      MOV ECX,dword ptr [EAX]
0050989d  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005098a3  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005098a6  898738030000              MOV dword ptr [EDI + 0x338],EAX
005098ac  68dcd2b100                PUSH 0xb1d2dc
005098b1  8d4f48                    LEA ECX,[EDI + 0x48]
005098b4  e8d717f0ff                CALL 0x0040b090
005098b9  84c0                      TEST AL,AL
005098bb  0f8470050000              JZ 0x00509e31
005098c1  68f4d6b100                PUSH 0xb1d6f4
005098c6  8d4f48                    LEA ECX,[EDI + 0x48]
005098c9  e8c217f0ff                CALL 0x0040b090
005098ce  84c0                      TEST AL,AL
005098d0  0f855b050000              JNZ 0x00509e31
005098d6  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005098dc  85c0                      TEST EAX,EAX
005098de  0f859a000000              JNZ 0x0050997e
005098e4  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005098ea  8d8d54feffff              LEA ECX,[EBP + 0xfffffe54]
005098f0  c78554feffffd4000000      MOV dword ptr [EBP + 0xfffffe54],0xd4
005098fa  e881ce4400                CALL 0x00956780
005098ff  83ec08                    SUB ESP,0x8
00509902  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0050990a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00509911  6a00                      PUSH 0x0
00509913  6a02                      PUSH 0x2
00509915  51                        PUSH ECX
00509916  c704243333333f            MOV dword ptr [ESP],0x3f333333
0050991d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00509923  ffb554feffff              PUSH dword ptr [EBP + 0xfffffe54]
00509929  e802434200                CALL 0x0092dc30
0050992e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00509934  8d8d54feffff              LEA ECX,[EBP + 0xfffffe54]
0050993a  c78554feffff25000000      MOV dword ptr [EBP + 0xfffffe54],0x25
00509944  e837ce4400                CALL 0x00956780
00509949  83ec08                    SUB ESP,0x8
0050994c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00509954  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050995b  6a00                      PUSH 0x0
0050995d  6a02                      PUSH 0x2
0050995f  51                        PUSH ECX
00509960  c704240000803f            MOV dword ptr [ESP],0x3f800000
00509967  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0050996d  ffb554feffff              PUSH dword ptr [EBP + 0xfffffe54]
00509973  e8b8424200                CALL 0x0092dc30
00509978  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0050997e  660f6ec8                  MOVD XMM1,EAX
00509982  0f5bc9                    CVTDQ2PS XMM1,XMM1
00509985  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
0050998d  0f28c1                    MOVAPS XMM0,XMM1
00509990  f30f598f38030000          MULSS XMM1,dword ptr [EDI + 0x338]
00509998  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
005099a0  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
005099a8  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005099b0  f30f118d50feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM1
005099b8  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
005099c0  e89b551e00                CALL 0x006eef60
005099c5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005099cb  50                        PUSH EAX
005099cc  6a00                      PUSH 0x0
005099ce  57                        PUSH EDI
005099cf  6840b6c700                PUSH 0xc7b640
005099d4  8d854cfeffff              LEA EAX,[EBP + 0xfffffe4c]
005099da  50                        PUSH EAX
005099db  6a17                      PUSH 0x17
005099dd  68e8030000                PUSH 0x3e8
005099e2  e839f1f1ff                CALL 0x00428b20
005099e7  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
005099ef  8bc8                      MOV ECX,EAX
005099f1  0f5bc0                    CVTDQ2PS XMM0,XMM0
005099f4  8b01                      MOV EAX,dword ptr [ECX]
005099f6  c7815c0400000f000000      MOV dword ptr [ECX + 0x45c],0xf
00509a00  c781600400000f000000      MOV dword ptr [ECX + 0x460],0xf
00509a0a  f30f5905f4a0ba00          MULSS XMM0,dword ptr [0x00baa0f4]
00509a12  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
00509a1a  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
00509a22  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
00509a2a  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00509a32  ff500c                    CALL dword ptr [EAX + 0xc]
00509a35  a17816c700                MOV EAX,[0x00c71678]
00509a3a  51                        PUSH ECX
00509a3b  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
00509a41  c7042400000000            MOV dword ptr [ESP],0x0
00509a48  51                        PUSH ECX
00509a49  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00509a4f  e80c993000                CALL 0x00813360
00509a54  84c0                      TEST AL,AL
00509a56  0f84e0010000              JZ 0x00509c3c
00509a5c  e8ff541e00                CALL 0x006eef60
00509a61  c745e00ad7a33d            MOV dword ptr [EBP + -0x20],0x3da3d70a
00509a68  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
00509a6f  c745e80ad7233c            MOV dword ptr [EBP + -0x18],0x3c23d70a
00509a76  660f6ec0                  MOVD XMM0,EAX
00509a7a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00509a7e  c1e81f                    SHR EAX,0x1f
00509a81  c7852cfeffff00000000      MOV dword ptr [EBP + 0xfffffe2c],0x0
00509a8b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00509a94  660f5ac8                  CVTPD2PS XMM1,XMM0
00509a98  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00509aa0  0f28c1                    MOVAPS XMM0,XMM1
00509aa3  f30f598f38030000          MULSS XMM1,dword ptr [EDI + 0x338]
00509aab  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
00509ab3  f30f58c9                  ADDSS XMM1,XMM1
00509ab7  f30f58c0                  ADDSS XMM0,XMM0
00509abb  f30f118d38feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM1
00509ac3  f30f118534feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM0
00509acb  0f57c0                    XORPS XMM0,XMM0
00509ace  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00509ad2  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00509ad9  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00509add  e87e541e00                CALL 0x006eef60
00509ae2  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00509aea  8d9544feffff              LEA EDX,[EBP + 0xfffffe44]
00509af0  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00509af8  b902000000                MOV ECX,0x2
00509afd  660f6ec0                  MOVD XMM0,EAX
00509b01  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00509b05  c1e81f                    SHR EAX,0x1f
00509b08  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00509b11  8d8534feffff              LEA EAX,[EBP + 0xfffffe34]
00509b17  50                        PUSH EAX
00509b18  8d45c0                    LEA EAX,[EBP + -0x40]
00509b1b  50                        PUSH EAX
00509b1c  660f5ac0                  CVTPD2PS XMM0,XMM0
00509b20  8d852cfeffff              LEA EAX,[EBP + 0xfffffe2c]
00509b26  50                        PUSH EAX
00509b27  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00509b2f  f30f5905dcadba00          MULSS XMM0,dword ptr [0x00baaddc]
00509b37  f30f118530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM0
00509b3f  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
00509b47  f30f5cc1                  SUBSS XMM0,XMM1
00509b4b  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00509b53  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00509b5b  f30f118544feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM0
00509b63  f30f108550feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe50]
00509b6b  f30f5cc1                  SUBSS XMM0,XMM1
00509b6f  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
00509b77  e874e11c00                CALL 0x006d7cf0
00509b7c  83c40c                    ADD ESP,0xc
00509b7f  8bf0                      MOV ESI,EAX
00509b81  e8da531e00                CALL 0x006eef60
00509b86  660f6ec0                  MOVD XMM0,EAX
00509b8a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00509b8e  c1e81f                    SHR EAX,0x1f
00509b91  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00509b9a  660f5ac0                  CVTPD2PS XMM0,XMM0
00509b9e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00509ba6  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00509bae  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00509bb6  e8a5531e00                CALL 0x006eef60
00509bbb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00509bc1  50                        PUSH EAX
00509bc2  6a00                      PUSH 0x0
00509bc4  6a00                      PUSH 0x0
00509bc6  6840b6c700                PUSH 0xc7b640
00509bcb  8d854cfeffff              LEA EAX,[EBP + 0xfffffe4c]
00509bd1  50                        PUSH EAX
00509bd2  6a07                      PUSH 0x7
00509bd4  68e8030000                PUSH 0x3e8
00509bd9  e842eff1ff                CALL 0x00428b20
00509bde  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
00509be6  8bf0                      MOV ESI,EAX
00509be8  c745e00ad7a33d            MOV dword ptr [EBP + -0x20],0x3da3d70a
00509bef  f30f118674030000          MOVSS dword ptr [ESI + 0x374],XMM0
00509bf7  f30f118678030000          MOVSS dword ptr [ESI + 0x378],XMM0
00509bff  0f57c0                    XORPS XMM0,XMM0
00509c02  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00509c06  0f2805b0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbb0]
00509c0d  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00509c11  8b06                      MOV EAX,dword ptr [ESI]
00509c13  8d4dc0                    LEA ECX,[EBP + -0x40]
00509c16  6a01                      PUSH 0x1
00509c18  6a00                      PUSH 0x0
00509c1a  68ff000000                PUSH 0xff
00509c1f  6aff                      PUSH -0x1
00509c21  51                        PUSH ECX
00509c22  8bce                      MOV ECX,ESI
00509c24  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
00509c2b  c745e80ad7233c            MOV dword ptr [EBP + -0x18],0x3c23d70a
00509c32  ff503c                    CALL dword ptr [EAX + 0x3c]
00509c35  8b06                      MOV EAX,dword ptr [ESI]
00509c37  8bce                      MOV ECX,ESI
00509c39  ff500c                    CALL dword ptr [EAX + 0xc]
00509c3c  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00509c44  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00509c4c  2bc8                      SUB ECX,EAX
00509c4e  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00509c54  e9d8010000                JMP 0x00509e31
00509c59  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00509c5d  0f84dd010000              JZ 0x00509e40
00509c63  68dcd2b100                PUSH 0xb1d2dc
00509c68  8d4f78                    LEA ECX,[EDI + 0x78]
00509c6b  e86011f0ff                CALL 0x0040add0
00509c70  84c0                      TEST AL,AL
00509c72  0f84b9010000              JZ 0x00509e31
00509c78  817f2801010000            CMP dword ptr [EDI + 0x28],0x101
00509c7f  0f850f010000              JNZ 0x00509d94
00509c85  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00509c8b  8d8d54feffff              LEA ECX,[EBP + 0xfffffe54]
00509c91  c78554feffffd5000000      MOV dword ptr [EBP + 0xfffffe54],0xd5
00509c9b  e8e0ca4400                CALL 0x00956780
00509ca0  83ec08                    SUB ESP,0x8
00509ca3  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00509cab  c704240000803f            MOV dword ptr [ESP],0x3f800000
00509cb2  6a00                      PUSH 0x0
00509cb4  6a02                      PUSH 0x2
00509cb6  51                        PUSH ECX
00509cb7  c704240000803f            MOV dword ptr [ESP],0x3f800000
00509cbe  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00509cc4  ffb554feffff              PUSH dword ptr [EBP + 0xfffffe54]
00509cca  e8613f4200                CALL 0x0092dc30
00509ccf  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00509cd5  e85652f3ff                CALL 0x0043ef30
00509cda  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
00509ce0  8bcf                      MOV ECX,EDI
00509ce2  838d58ffffff03            OR dword ptr [EBP + 0xffffff58],0x3
00509ce9  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00509cef  c78514ffffff0000c03f      MOV dword ptr [EBP + 0xffffff14],0x3fc00000
00509cf9  e8424b1b00                CALL 0x006be840
00509cfe  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00509d05  8db73c030000              LEA ESI,[EDI + 0x33c]
00509d0b  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00509d13  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00509d1b  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00509d1f  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00509d24  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
00509d2c  f30f118d50feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM1
00509d34  742d                      JZ 0x00509d63
00509d36  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00509d3c  6840b6c700                PUSH 0xc7b640
00509d41  e8ea685000                CALL 0x00a10630
00509d46  84c0                      TEST AL,AL
00509d48  7419                      JZ 0x00509d63
00509d4a  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00509d4e  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
00509d56  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00509d5b  f30f118550feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM0
00509d63  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
00509d69  50                        PUSH EAX
00509d6a  6a00                      PUSH 0x0
00509d6c  51                        PUSH ECX
00509d6d  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
00509d73  c704240000e040            MOV dword ptr [ESP],0x40e00000
00509d7a  50                        PUSH EAX
00509d7b  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
00509d81  e87a635000                CALL 0x00a10100
00509d86  50                        PUSH EAX
00509d87  56                        PUSH ESI
00509d88  8bcf                      MOV ECX,EDI
00509d8a  e851151c00                CALL 0x006cb2e0
00509d8f  e99d000000                JMP 0x00509e31
00509d94  6a00                      PUSH 0x0
00509d96  6a01                      PUSH 0x1
00509d98  57                        PUSH EDI
00509d99  51                        PUSH ECX
00509d9a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00509da0  8db73c030000              LEA ESI,[EDI + 0x33c]
00509da6  c704240000f042            MOV dword ptr [ESP],0x42f00000
00509dad  56                        PUSH ESI
00509dae  e8ada51f00                CALL 0x00704360
00509db3  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00509db6  83f801                    CMP EAX,0x1
00509db9  7533                      JNZ 0x00509dee
00509dbb  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00509dc1  e86a51f3ff                CALL 0x0043ef30
00509dc6  50                        PUSH EAX
00509dc7  6a09                      PUSH 0x9
00509dc9  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
00509dcf  c78544feffff00000041      MOV dword ptr [EBP + 0xfffffe44],0x41000000
00509dd9  50                        PUSH EAX
00509dda  56                        PUSH ESI
00509ddb  8bcf                      MOV ECX,EDI
00509ddd  c78548feffff0000c040      MOV dword ptr [EBP + 0xfffffe48],0x40c00000
00509de7  e8f4141c00                CALL 0x006cb2e0
00509dec  eb43                      JMP 0x00509e31
00509dee  83f802                    CMP EAX,0x2
00509df1  753e                      JNZ 0x00509e31
00509df3  e868511e00                CALL 0x006eef60
00509df8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00509dfe  50                        PUSH EAX
00509dff  6a00                      PUSH 0x0
00509e01  57                        PUSH EDI
00509e02  6840b6c700                PUSH 0xc7b640
00509e07  56                        PUSH ESI
00509e08  6a0a                      PUSH 0xa
00509e0a  6a21                      PUSH 0x21
00509e0c  e80fedf1ff                CALL 0x00428b20
00509e11  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00509e19  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00509e21  f30f118034030000          MOVSS dword ptr [EAX + 0x334],XMM0
00509e29  f30f118838030000          MOVSS dword ptr [EAX + 0x338],XMM1
00509e31  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00509e35  7409                      JZ 0x00509e40
00509e37  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00509e3e  7514                      JNZ 0x00509e54
00509e40  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00509e4a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00509e54  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00509e5c  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00509e64  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00509e6c  e91e080000                JMP 0x0050a68f
00509e71  52                        PUSH EDX
00509e72  51                        PUSH ECX
00509e73  e8e4525e00                CALL 0x00aef15c
00509e78  83c408                    ADD ESP,0x8
00509e7b  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00509e7e  c787340c00009a99193f      MOV dword ptr [EDI + 0xc34],0x3f19999a
00509e88  3dd0000000                CMP EAX,0xd0
00509e8d  0f848e000000              JZ 0x00509f21
00509e93  3d01010000                CMP EAX,0x101
00509e98  0f8483000000              JZ 0x00509f21
00509e9e  3d2e010000                CMP EAX,0x12e
00509ea3  7519                      JNZ 0x00509ebe
00509ea5  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
00509ea9  0f8593000000              JNZ 0x00509f42
00509eaf  c787340c000090c2f53e      MOV dword ptr [EDI + 0xc34],0x3ef5c290
00509eb9  e984000000                JMP 0x00509f42
00509ebe  3dfc000000                CMP EAX,0xfc
00509ec3  750c                      JNZ 0x00509ed1
00509ec5  c787340c00006766663f      MOV dword ptr [EDI + 0xc34],0x3f666667
00509ecf  eb71                      JMP 0x00509f42
00509ed1  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
00509ed4  83fa01                    CMP EDX,0x1
00509ed7  743c                      JZ 0x00509f15
00509ed9  3d1c010000                CMP EAX,0x11c
00509ede  7435                      JZ 0x00509f15
00509ee0  8d4f48                    LEA ECX,[EDI + 0x48]
00509ee3  83fa02                    CMP EDX,0x2
00509ee6  7518                      JNZ 0x00509f00
00509ee8  6a00                      PUSH 0x0
00509eea  68d4feb500                PUSH 0xb5fed4
00509eef  c787340c00009f3c0c3f      MOV dword ptr [EDI + 0xc34],0x3f0c3c9f
00509ef9  e8420af0ff                CALL 0x0040a940
00509efe  eb42                      JMP 0x00509f42
00509f00  e84b0df0ff                CALL 0x0040ac50
00509f05  85c0                      TEST EAX,EAX
00509f07  7e39                      JLE 0x00509f42
00509f09  c787340c0000ec51383f      MOV dword ptr [EDI + 0xc34],0x3f3851ec
00509f13  eb2d                      JMP 0x00509f42
00509f15  c787340c0000dbf9fe3e      MOV dword ptr [EDI + 0xc34],0x3efef9db
00509f1f  eb21                      JMP 0x00509f42
00509f21  c787340c00009a99993e      MOV dword ptr [EDI + 0xc34],0x3e99999a
00509f2b  3dd0000000                CMP EAX,0xd0
00509f30  7510                      JNZ 0x00509f42
00509f32  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00509f36  750a                      JNZ 0x00509f42
00509f38  c787340c0000c3f5a83e      MOV dword ptr [EDI + 0xc34],0x3ea8f5c3
00509f42  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00509f48  2500080001                AND EAX,0x1000800
00509f4d  83c800                    OR EAX,0x0
00509f50  7477                      JZ 0x00509fc9
00509f52  8bcf                      MOV ECX,EDI
00509f54  e8e7481b00                CALL 0x006be840
00509f59  6a00                      PUSH 0x0
00509f5b  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00509f61  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00509f67  898548feffff              MOV dword ptr [EBP + 0xfffffe48],EAX
00509f6d  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
00509f73  898d44feffff              MOV dword ptr [EBP + 0xfffffe44],ECX
00509f79  8d8f14040000              LEA ECX,[EDI + 0x414]
00509f7f  50                        PUSH EAX
00509f80  e8bba92d00                CALL 0x007e4940
00509f85  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00509f8d  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00509f95  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00509f98  f30f59c1                  MULSS XMM0,XMM1
00509f9c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00509fa4  3dd0000000                CMP EAX,0xd0
00509fa9  7407                      JZ 0x00509fb2
00509fab  3d01010000                CMP EAX,0x101
00509fb0  756e                      JNZ 0x0050a020
00509fb2  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
00509fb9  7e65                      JLE 0x0050a020
00509fbb  f30f59c1                  MULSS XMM0,XMM1
00509fbf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00509fc7  eb57                      JMP 0x0050a020
00509fc9  817f282e010000            CMP dword ptr [EDI + 0x28],0x12e
00509fd0  b864000000                MOV EAX,0x64
00509fd5  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
00509fdd  be84030000                MOV ESI,0x384
00509fe2  51                        PUSH ECX
00509fe3  0f44f0                    CMOVZ ESI,EAX
00509fe6  c7042400000000            MOV dword ptr [ESP],0x0
00509fed  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
00509ff3  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
00509ffb  50                        PUSH EAX
00509ffc  8bcf                      MOV ECX,EDI
00509ffe  e83d4c1b00                CALL 0x006bec40
0050a003  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0050a00b  6a01                      PUSH 0x1
0050a00d  56                        PUSH ESI
0050a00e  51                        PUSH ECX
0050a00f  f30f110424                MOVSS dword ptr [ESP],XMM0
0050a014  8d8f14040000              LEA ECX,[EDI + 0x414]
0050a01a  50                        PUSH EAX
0050a01b  e8a0932d00                CALL 0x007e33c0
0050a020  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050a027  8bcf                      MOV ECX,EDI
0050a029  7414                      JZ 0x0050a03f
0050a02b  6a0a                      PUSH 0xa
0050a02d  e85ee21c00                CALL 0x006d8290
0050a032  0fb6c0                    MOVZX EAX,AL
0050a035  85c0                      TEST EAX,EAX
0050a037  0f84f4000000              JZ 0x0050a131
0050a03d  eb38                      JMP 0x0050a077
0050a03f  e8fc471b00                CALL 0x006be840
0050a044  50                        PUSH EAX
0050a045  8bcf                      MOV ECX,EDI
0050a047  e814dd1c00                CALL 0x006d7d60
0050a04c  84c0                      TEST AL,AL
0050a04e  0f84dd000000              JZ 0x0050a131
0050a054  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
0050a05b  0f84d0000000              JZ 0x0050a131
0050a061  e8fa4e1e00                CALL 0x006eef60
0050a066  33d2                      XOR EDX,EDX
0050a068  b903000000                MOV ECX,0x3
0050a06d  f7f1                      DIV ECX
0050a06f  85d2                      TEST EDX,EDX
0050a071  0f85ba000000              JNZ 0x0050a131
0050a077  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050a07a  3dd0000000                CMP EAX,0xd0
0050a07f  0f848f000000              JZ 0x0050a114
0050a085  3d01010000                CMP EAX,0x101
0050a08a  0f8484000000              JZ 0x0050a114
0050a090  3d2e010000                CMP EAX,0x12e
0050a095  7562                      JNZ 0x0050a0f9
0050a097  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
0050a09e  0f848d000000              JZ 0x0050a131
0050a0a4  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
0050a0a8  0f8483000000              JZ 0x0050a131
0050a0ae  e8ad4e1e00                CALL 0x006eef60
0050a0b3  51                        PUSH ECX
0050a0b4  660f6ec0                  MOVD XMM0,EAX
0050a0b8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050a0bc  c1e81f                    SHR EAX,0x1f
0050a0bf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050a0c8  660f5ac0                  CVTPD2PS XMM0,XMM0
0050a0cc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050a0d4  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0050a0dc  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0050a0e4  f30f110424                MOVSS dword ptr [ESP],XMM0
0050a0e9  6a00                      PUSH 0x0
0050a0eb  6a3c                      PUSH 0x3c
0050a0ed  51                        PUSH ECX
0050a0ee  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a0f5  6a32                      PUSH 0x32
0050a0f7  eb31                      JMP 0x0050a12a
0050a0f9  51                        PUSH ECX
0050a0fa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a101  6a00                      PUSH 0x0
0050a103  6a28                      PUSH 0x28
0050a105  51                        PUSH ECX
0050a106  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a10d  68a5000000                PUSH 0xa5
0050a112  eb16                      JMP 0x0050a12a
0050a114  51                        PUSH ECX
0050a115  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a11c  6a00                      PUSH 0x0
0050a11e  6a3c                      PUSH 0x3c
0050a120  51                        PUSH ECX
0050a121  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a128  6a74                      PUSH 0x74
0050a12a  8bcf                      MOV ECX,EDI
0050a12c  e86fca1c00                CALL 0x006d6ba0
0050a131  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0050a135  753c                      JNZ 0x0050a173
0050a137  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
0050a13e  7433                      JZ 0x0050a173
0050a140  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050a143  3dd0000000                CMP EAX,0xd0
0050a148  7429                      JZ 0x0050a173
0050a14a  3d01010000                CMP EAX,0x101
0050a14f  7422                      JZ 0x0050a173
0050a151  3d2e010000                CMP EAX,0x12e
0050a156  741b                      JZ 0x0050a173
0050a158  8d4f48                    LEA ECX,[EDI + 0x48]
0050a15b  e8f00af0ff                CALL 0x0040ac50
0050a160  85c0                      TEST EAX,EAX
0050a162  7f0f                      JG 0x0050a173
0050a164  6a01                      PUSH 0x1
0050a166  68d4feb500                PUSH 0xb5fed4
0050a16b  8d4f48                    LEA ECX,[EDI + 0x48]
0050a16e  e8cd07f0ff                CALL 0x0040a940
0050a173  817f281c010000            CMP dword ptr [EDI + 0x28],0x11c
0050a17a  0f85cd010000              JNZ 0x0050a34d
0050a180  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0050a183  33d2                      XOR EDX,EDX
0050a185  b907000000                MOV ECX,0x7
0050a18a  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
0050a192  f7f1                      DIV ECX
0050a194  8bcf                      MOV ECX,EDI
0050a196  660f6ec2                  MOVD XMM0,EDX
0050a19a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050a19e  c1ea1f                    SHR EDX,0x1f
0050a1a1  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
0050a1aa  660f5ad0                  CVTPD2PS XMM2,XMM0
0050a1ae  e8ad251a00                CALL 0x006ac760
0050a1b3  85c0                      TEST EAX,EAX
0050a1b5  0f84a0000000              JZ 0x0050a25b
0050a1bb  e8a04d1e00                CALL 0x006eef60
0050a1c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050a1c6  6a00                      PUSH 0x0
0050a1c8  68acd5c500                PUSH 0xc5d5ac
0050a1cd  68dcd5c500                PUSH 0xc5d5dc
0050a1d2  6a00                      PUSH 0x0
0050a1d4  50                        PUSH EAX
0050a1d5  6a00                      PUSH 0x0
0050a1d7  57                        PUSH EDI
0050a1d8  6840b6c700                PUSH 0xc7b640
0050a1dd  8d873c030000              LEA EAX,[EDI + 0x33c]
0050a1e3  50                        PUSH EAX
0050a1e4  6a16                      PUSH 0x16
0050a1e6  68e8030000                PUSH 0x3e8
0050a1eb  e830e9f1ff                CALL 0x00428b20
0050a1f0  50                        PUSH EAX
0050a1f1  e8bb665e00                CALL 0x00af08b1
0050a1f6  83c414                    ADD ESP,0x14
0050a1f9  8bf0                      MOV ESI,EAX
0050a1fb  e8604d1e00                CALL 0x006eef60
0050a200  8bce                      MOV ECX,ESI
0050a202  c7865c04000014000000      MOV dword ptr [ESI + 0x45c],0x14
0050a20c  c7866004000014000000      MOV dword ptr [ESI + 0x460],0x14
0050a216  660f6ec0                  MOVD XMM0,EAX
0050a21a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050a21e  c1e81f                    SHR EAX,0x1f
0050a221  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050a22a  8b06                      MOV EAX,dword ptr [ESI]
0050a22c  660f5ac0                  CVTPD2PS XMM0,XMM0
0050a230  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050a238  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0050a240  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0050a248  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0050a250  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0050a258  ff500c                    CALL dword ptr [EAX + 0xc]
0050a25b  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0050a262  0f85c1000000              JNZ 0x0050a329
0050a268  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0050a26f  0f8fb4000000              JG 0x0050a329
0050a275  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050a27c  742d                      JZ 0x0050a2ab
0050a27e  6a01                      PUSH 0x1
0050a280  8bcf                      MOV ECX,EDI
0050a282  e8c9ed1c00                CALL 0x006d9050
0050a287  6840b6c700                PUSH 0xc7b640
0050a28c  8d8f200f0000              LEA ECX,[EDI + 0xf20]
0050a292  e899635000                CALL 0x00a10630
0050a297  84c0                      TEST AL,AL
0050a299  0f848a000000              JZ 0x0050a329
0050a29f  c787a00b00002d000000      MOV dword ptr [EDI + 0xba0],0x2d
0050a2a9  eb65                      JMP 0x0050a310
0050a2ab  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
0050a2b2  7475                      JZ 0x0050a329
0050a2b4  e8a74c1e00                CALL 0x006eef60
0050a2b9  33d2                      XOR EDX,EDX
0050a2bb  b91e000000                MOV ECX,0x1e
0050a2c0  f7f1                      DIV ECX
0050a2c2  85d2                      TEST EDX,EDX
0050a2c4  7563                      JNZ 0x0050a329
0050a2c6  8bcf                      MOV ECX,EDI
0050a2c8  e873451b00                CALL 0x006be840
0050a2cd  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0050a2d5  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0050a2dd  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0050a2e5  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
0050a2ed  f30f59c9                  MULSS XMM1,XMM1
0050a2f1  f30f59c0                  MULSS XMM0,XMM0
0050a2f5  f30f58c1                  ADDSS XMM0,XMM1
0050a2f9  f30f100d5cacba00          MOVSS XMM1,dword ptr [0x00baac5c]
0050a301  0f2fc8                    COMISS XMM1,XMM0
0050a304  7623                      JBE 0x0050a329
0050a306  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
0050a310  6a00                      PUSH 0x0
0050a312  6854ddb100                PUSH 0xb1dd54
0050a317  8d4f48                    LEA ECX,[EDI + 0x48]
0050a31a  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0050a324  e81706f0ff                CALL 0x0040a940
0050a329  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0050a32f  85d2                      TEST EDX,EDX
0050a331  7e1a                      JLE 0x0050a34d
0050a333  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0050a33b  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050a343  2bc8                      SUB ECX,EAX
0050a345  03ca                      ADD ECX,EDX
0050a347  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
0050a34d  817f282e010000            CMP dword ptr [EDI + 0x28],0x12e
0050a354  0f8535030000              JNZ 0x0050a68f
0050a35a  8bcf                      MOV ECX,EDI
0050a35c  e8bfc81c00                CALL 0x006d6c20
0050a361  85c0                      TEST EAX,EAX
0050a363  0f8fb2000000              JG 0x0050a41b
0050a369  a17816c700                MOV EAX,[0x00c71678]
0050a36e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0050a374  80b82972000000            CMP byte ptr [EAX + 0x7229],0x0
0050a37b  740d                      JZ 0x0050a38a
0050a37d  83b8ec11000008            CMP dword ptr [EAX + 0x11ec],0x8
0050a384  0f8f91000000              JG 0x0050a41b
0050a38a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050a390  83f812                    CMP EAX,0x12
0050a393  0f8488000000              JZ 0x0050a421
0050a399  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
0050a39d  c787640b000012000000      MOV dword ptr [EDI + 0xb64],0x12
0050a3a7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0050a3b1  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0050a3bb  0f85ce020000              JNZ 0x0050a68f
0050a3c1  6a00                      PUSH 0x0
0050a3c3  8d8f98000000              LEA ECX,[EDI + 0x98]
0050a3c9  e862e4efff                CALL 0x00408830
0050a3ce  6a01                      PUSH 0x1
0050a3d0  8d4f48                    LEA ECX,[EDI + 0x48]
0050a3d3  e8480ef0ff                CALL 0x0040b220
0050a3d8  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0050a3e0  8d4f48                    LEA ECX,[EDI + 0x48]
0050a3e3  6a01                      PUSH 0x1
0050a3e5  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
0050a3ea  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0050a3f2  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
0050a3f7  e8240ef0ff                CALL 0x0040b220
0050a3fc  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
0050a404  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
0050a409  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0050a411  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
0050a416  e908020000                JMP 0x0050a623
0050a41b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050a421  83f804                    CMP EAX,0x4
0050a424  0f857f010000              JNZ 0x0050a5a9
0050a42a  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
0050a42e  0f851a010000              JNZ 0x0050a54e
0050a434  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
0050a43b  b9b40cb600                MOV ECX,0xb60cb4
0050a440  b8c40cb600                MOV EAX,0xb60cc4
0050a445  0f45c1                    CMOVNZ EAX,ECX
0050a448  8d4f48                    LEA ECX,[EDI + 0x48]
0050a44b  6a00                      PUSH 0x0
0050a44d  50                        PUSH EAX
0050a44e  e8ed04f0ff                CALL 0x0040a940
0050a453  68dcd2b100                PUSH 0xb1d2dc
0050a458  8d8f98000000              LEA ECX,[EDI + 0x98]
0050a45e  e86d09f0ff                CALL 0x0040add0
0050a463  84c0                      TEST AL,AL
0050a465  0f84b7000000              JZ 0x0050a522
0050a46b  51                        PUSH ECX
0050a46c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a473  6a00                      PUSH 0x0
0050a475  6a00                      PUSH 0x0
0050a477  51                        PUSH ECX
0050a478  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050a47f  8bcf                      MOV ECX,EDI
0050a481  6806010000                PUSH 0x106
0050a486  e815c71c00                CALL 0x006d6ba0
0050a48b  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0050a491  e89a4af3ff                CALL 0x0043ef30
0050a496  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0050a49e  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0050a4a4  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0050a4ac  f30f58c0                  ADDSS XMM0,XMM0
0050a4b0  50                        PUSH EAX
0050a4b1  33c0                      XOR EAX,EAX
0050a4b3  c7855cfeffff000070c1      MOV dword ptr [EBP + 0xfffffe5c],0xc1700000
0050a4bd  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
0050a4c4  f30f58c9                  ADDSS XMM1,XMM1
0050a4c8  8bcf                      MOV ECX,EDI
0050a4ca  c78564feffff9a99993e      MOV dword ptr [EBP + 0xfffffe64],0x3e99999a
0050a4d4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0050a4dc  0f95c0                    SETNZ AL
0050a4df  c78524feffff00002041      MOV dword ptr [EBP + 0xfffffe24],0x41200000
0050a4e9  83c006                    ADD EAX,0x6
0050a4ec  c78528feffff00000000      MOV dword ptr [EBP + 0xfffffe28],0x0
0050a4f6  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0050a4fe  50                        PUSH EAX
0050a4ff  8d8524feffff              LEA EAX,[EBP + 0xfffffe24]
0050a505  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
0050a50d  50                        PUSH EAX
0050a50e  8d853cfeffff              LEA EAX,[EBP + 0xfffffe3c]
0050a514  50                        PUSH EAX
0050a515  f30f118d40feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM1
0050a51d  e8be0d1c00                CALL 0x006cb2e0
0050a522  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0050a529  740d                      JZ 0x0050a538
0050a52b  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
0050a532  0f85eb000000              JNZ 0x0050a623
0050a538  b801000000                MOV EAX,0x1
0050a53d  2b87c40b0000              SUB EAX,dword ptr [EDI + 0xbc4]
0050a543  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0050a549  e9d5000000                JMP 0x0050a623
0050a54e  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0050a554  85d2                      TEST EDX,EDX
0050a556  7e22                      JLE 0x0050a57a
0050a558  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0050a560  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050a568  2bc8                      SUB ECX,EAX
0050a56a  03d1                      ADD EDX,ECX
0050a56c  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0050a572  85d2                      TEST EDX,EDX
0050a574  0f8fa9000000              JG 0x0050a623
0050a57a  6a00                      PUSH 0x0
0050a57c  680ce1b100                PUSH 0xb1e10c
0050a581  8d4f48                    LEA ECX,[EDI + 0x48]
0050a584  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0050a58e  e8edfdefff                CALL 0x0040a380
0050a593  e8c8491e00                CALL 0x006eef60
0050a598  83e003                    AND EAX,0x3
0050a59b  83c002                    ADD EAX,0x2
0050a59e  6bc015                    IMUL EAX,EAX,0x15
0050a5a1  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0050a5a7  eb7a                      JMP 0x0050a623
0050a5a9  83f810                    CMP EAX,0x10
0050a5ac  7575                      JNZ 0x0050a623
0050a5ae  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0050a5b6  0f57c9                    XORPS XMM1,XMM1
0050a5b9  f30f59c1                  MULSS XMM0,XMM1
0050a5bd  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0050a5c5  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0050a5cd  f30f59c1                  MULSS XMM0,XMM1
0050a5d1  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0050a5d9  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0050a5df  85d2                      TEST EDX,EDX
0050a5e1  7e1a                      JLE 0x0050a5fd
0050a5e3  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0050a5eb  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050a5f3  2bc8                      SUB ECX,EAX
0050a5f5  03d1                      ADD EDX,ECX
0050a5f7  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0050a5fd  83fa01                    CMP EDX,0x1
0050a600  7d21                      JGE 0x0050a623
0050a602  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050a60c  e84f491e00                CALL 0x006eef60
0050a611  33d2                      XOR EDX,EDX
0050a613  b93c000000                MOV ECX,0x3c
0050a618  f7f1                      DIV ECX
0050a61a  83c25a                    ADD EDX,0x5a
0050a61d  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0050a623  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
0050a627  7566                      JNZ 0x0050a68f
0050a629  83bf640b000012            CMP dword ptr [EDI + 0xb64],0x12
0050a630  745d                      JZ 0x0050a68f
0050a632  83c748                    ADD EDI,0x48
0050a635  6a02                      PUSH 0x2
0050a637  8bcf                      MOV ECX,EDI
0050a639  e8620bf0ff                CALL 0x0040b1a0
0050a63e  8bf0                      MOV ESI,EAX
0050a640  85f6                      TEST ESI,ESI
0050a642  743e                      JZ 0x0050a682
0050a644  807e0c00                  CMP byte ptr [ESI + 0xc],0x0
0050a648  7438                      JZ 0x0050a682
0050a64a  6a01                      PUSH 0x1
0050a64c  8bcf                      MOV ECX,EDI
0050a64e  e8cd0bf0ff                CALL 0x0040b220
0050a653  6a01                      PUSH 0x1
0050a655  8bcf                      MOV ECX,EDI
0050a657  c6407401                  MOV byte ptr [EAX + 0x74],0x1
0050a65b  e8c00bf0ff                CALL 0x0040b220
0050a660  8b16                      MOV EDX,dword ptr [ESI]
0050a662  8bcf                      MOV ECX,EDI
0050a664  6a01                      PUSH 0x1
0050a666  895040                    MOV dword ptr [EAX + 0x40],EDX
0050a669  8b5604                    MOV EDX,dword ptr [ESI + 0x4]
0050a66c  895044                    MOV dword ptr [EAX + 0x44],EDX
0050a66f  e8ac0bf0ff                CALL 0x0040b220
0050a674  8b4e10                    MOV ECX,dword ptr [ESI + 0x10]
0050a677  894834                    MOV dword ptr [EAX + 0x34],ECX
0050a67a  8b4e14                    MOV ECX,dword ptr [ESI + 0x14]
0050a67d  894838                    MOV dword ptr [EAX + 0x38],ECX
0050a680  eb0d                      JMP 0x0050a68f
0050a682  6a01                      PUSH 0x1
0050a684  8bcf                      MOV ECX,EDI
0050a686  e8950bf0ff                CALL 0x0040b220
0050a68b  c6407400                  MOV byte ptr [EAX + 0x74],0x0
0050a68f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0050a692  64890d00000000            MOV dword ptr FS:[0x0],ECX
0050a699  59                        POP ECX
0050a69a  5f                        POP EDI
0050a69b  5e                        POP ESI
0050a69c  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0050a69f  33cd                      XOR ECX,EBP
0050a6a1  e8854a5e00                CALL 0x00aef12b
0050a6a6  8be5                      MOV ESP,EBP
0050a6a8  5d                        POP EBP
0050a6a9  8be3                      MOV ESP,EBX
0050a6ab  5b                        POP EBX
0050a6ac  c3                        RET
