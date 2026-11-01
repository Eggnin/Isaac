; J460 NPC AI 0x004fcc20 AI_004fcc20
; types=821
; identities=821.0.0
; entry=004fcc20
004fcc20  53                        PUSH EBX
004fcc21  8bdc                      MOV EBX,ESP
004fcc23  83ec08                    SUB ESP,0x8
004fcc26  83e4f8                    AND ESP,0xfffffff8
004fcc29  83c404                    ADD ESP,0x4
004fcc2c  55                        PUSH EBP
004fcc2d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004fcc30  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004fcc34  8bec                      MOV EBP,ESP
004fcc36  6aff                      PUSH -0x1
004fcc38  68252aaf00                PUSH 0xaf2a25
004fcc3d  64a100000000              MOV EAX,FS:[0x0]
004fcc43  50                        PUSH EAX
004fcc44  53                        PUSH EBX
004fcc45  81ec80000000              SUB ESP,0x80
004fcc4b  a1b493bf00                MOV EAX,[0x00bf93b4]
004fcc50  33c5                      XOR EAX,EBP
004fcc52  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004fcc55  56                        PUSH ESI
004fcc56  57                        PUSH EDI
004fcc57  50                        PUSH EAX
004fcc58  8d45f4                    LEA EAX,[EBP + -0xc]
004fcc5b  64a300000000              MOV FS:[0x0],EAX
004fcc61  8bf9                      MOV EDI,ECX
004fcc63  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
004fcc6a  7564                      JNZ 0x004fccd0
004fcc6c  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004fcc6f  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
004fcc72  3bc2                      CMP EAX,EDX
004fcc74  7441                      JZ 0x004fccb7
004fcc76  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
004fcc7e  6690                      NOP
004fcc80  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004fcc83  81e104000001              AND ECX,0x1000004
004fcc89  83c900                    OR ECX,0x0
004fcc8c  7522                      JNZ 0x004fccb0
004fcc8e  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004fcc92  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004fcc97  f30f59ca                  MULSS XMM1,XMM2
004fcc9b  f30f5cc1                  SUBSS XMM0,XMM1
004fcc9f  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
004fcca4  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004fcca8  f30f5cc1                  SUBSS XMM0,XMM1
004fccac  f30f1100                  MOVSS dword ptr [EAX],XMM0
004fccb0  83c038                    ADD EAX,0x38
004fccb3  3bc2                      CMP EAX,EDX
004fccb5  75c9                      JNZ 0x004fcc80
004fccb7  0f57c0                    XORPS XMM0,XMM0
004fccba  0f2f4714                  COMISS XMM0,dword ptr [EDI + 0x14]
004fccbe  0f8696050000              JBE 0x004fd25a
004fccc4  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
004fcccb  e98a050000                JMP 0x004fd25a
004fccd0  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004fccd6  85c0                      TEST EAX,EAX
004fccd8  756d                      JNZ 0x004fcd47
004fccda  50                        PUSH EAX
004fccdb  6818ddb100                PUSH 0xb1dd18
004fcce0  8d4f48                    LEA ECX,[EDI + 0x48]
004fcce3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fcced  e88ed6f0ff                CALL 0x0040a380
004fccf2  0f281520bfba00            MOVAPS XMM2,xmmword ptr [0x00babf20]
004fccf9  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004fccff  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004fcd05  c74590f2f0f03d            MOV dword ptr [EBP + -0x70],0x3df0f0f2
004fcd0c  c74594f2f0f03d            MOV dword ptr [EBP + -0x6c],0x3df0f0f2
004fcd13  0f57c9                    XORPS XMM1,XMM1
004fcd16  c74598f2f0f03d            MOV dword ptr [EBP + -0x68],0x3df0f0f2
004fcd1d  3bc8                      CMP ECX,EAX
004fcd1f  7417                      JZ 0x004fcd38
004fcd21  f30f7e4590                MOVQ XMM0,qword ptr [EBP + -0x70]
004fcd26  8b4598                    MOV EAX,dword ptr [EBP + -0x68]
004fcd29  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004fcd2e  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
004fcd31  894128                    MOV dword ptr [ECX + 0x28],EAX
004fcd34  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
004fcd38  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
004fcd42  e913050000                JMP 0x004fd25a
004fcd47  83f804                    CMP EAX,0x4
004fcd4a  0f84f0020000              JZ 0x004fd040
004fcd50  83f808                    CMP EAX,0x8
004fcd53  0f8501050000              JNZ 0x004fd25a
004fcd59  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
004fcd61  6a00                      PUSH 0x0
004fcd63  e8b8bd1d00                CALL 0x006d8b20
004fcd68  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fcd6c  0f8402020000              JZ 0x004fcf74
004fcd72  68dcd2b100                PUSH 0xb1d2dc
004fcd77  8d4f78                    LEA ECX,[EDI + 0x78]
004fcd7a  e851e0f0ff                CALL 0x0040add0
004fcd7f  84c0                      TEST AL,AL
004fcd81  0f84ed010000              JZ 0x004fcf74
004fcd87  51                        PUSH ECX
004fcd88  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fcd8f  6a00                      PUSH 0x0
004fcd91  6a0a                      PUSH 0xa
004fcd93  51                        PUSH ECX
004fcd94  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fcd9b  8bcf                      MOV ECX,EDI
004fcd9d  68e2010000                PUSH 0x1e2
004fcda2  e8f99d1d00                CALL 0x006d6ba0
004fcda7  8bcf                      MOV ECX,EDI
004fcda9  e8921a1c00                CALL 0x006be840
004fcdae  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004fcdb6  8bf0                      MOV ESI,EAX
004fcdb8  0f28c8                    MOVAPS XMM1,XMM0
004fcdbb  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004fcdc0  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fcdc8  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004fcdcd  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004fcdd5  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004fcddd  f30f59c0                  MULSS XMM0,XMM0
004fcde1  f30f59c9                  MULSS XMM1,XMM1
004fcde5  f30f58c1                  ADDSS XMM0,XMM1
004fcde9  e8628cf3ff                CALL 0x00435a50
004fcdee  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fcdf5  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004fcdfd  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
004fce05  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
004fce0d  f30f59c8                  MULSS XMM1,XMM0
004fce11  f30f59d0                  MULSS XMM2,XMM0
004fce15  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
004fce1d  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
004fce25  7414                      JZ 0x004fce3b
004fce27  8d45e4                    LEA EAX,[EBP + -0x1c]
004fce2a  8bcf                      MOV ECX,EDI
004fce2c  50                        PUSH EAX
004fce2d  e8febe1d00                CALL 0x006d8d30
004fce32  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004fce36  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004fce3b  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
004fce42  f30f5c55a8                SUBSS XMM2,dword ptr [EBP + -0x58]
004fce47  f30f5c4da0                SUBSS XMM1,dword ptr [EBP + -0x60]
004fce4c  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
004fce51  740a                      JZ 0x004fce5d
004fce53  f30f5d0de49fba00          MINSS XMM1,dword ptr [0x00ba9fe4]
004fce5b  eb08                      JMP 0x004fce65
004fce5d  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
004fce65  8d4da4                    LEA ECX,[EBP + -0x5c]
004fce68  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
004fce6d  e84e315100                CALL 0x00a0ffc0
004fce72  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
004fce77  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fce7f  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
004fce84  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fce8c  c7871004000005000000      MOV dword ptr [EDI + 0x410],0x5
004fce96  e8c5201f00                CALL 0x006eef60
004fce9b  f30f1055a4                MOVSS XMM2,dword ptr [EBP + -0x5c]
004fcea0  f30f105da8                MOVSS XMM3,dword ptr [EBP + -0x58]
004fcea5  0f28c2                    MOVAPS XMM0,XMM2
004fcea8  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004fceb0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fceb6  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
004fcebe  50                        PUSH EAX
004fcebf  6a00                      PUSH 0x0
004fcec1  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004fcec6  8d459c                    LEA EAX,[EBP + -0x64]
004fcec9  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
004fced1  0f28c3                    MOVAPS XMM0,XMM3
004fced4  f30f591d84a7ba00          MULSS XMM3,dword ptr [0x00baa784]
004fcedc  57                        PUSH EDI
004fcedd  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004fcee5  50                        PUSH EAX
004fcee6  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
004fceee  8d45e4                    LEA EAX,[EBP + -0x1c]
004fcef1  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004fcef6  50                        PUSH EAX
004fcef7  6a00                      PUSH 0x0
004fcef9  6833030000                PUSH 0x333
004fcefe  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004fcf03  f30f115de8                MOVSS dword ptr [EBP + -0x18],XMM3
004fcf08  e813bcf2ff                CALL 0x00428b20
004fcf0d  8bf0                      MOV ESI,EAX
004fcf0f  6a00                      PUSH 0x0
004fcf11  6800010000                PUSH 0x100
004fcf16  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004fcf1c  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004fcf23  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
004fcf29  8bcf                      MOV ECX,EDI
004fcf2b  e800a5f1ff                CALL 0x00417430
004fcf30  84c0                      TEST AL,AL
004fcf32  741b                      JZ 0x004fcf4f
004fcf34  6a00                      PUSH 0x0
004fcf36  8d4dac                    LEA ECX,[EBP + -0x54]
004fcf39  e8d243f3ff                CALL 0x00431310
004fcf3e  6a00                      PUSH 0x0
004fcf40  6a00                      PUSH 0x0
004fcf42  6aff                      PUSH -0x1
004fcf44  8d45ac                    LEA EAX,[EBP + -0x54]
004fcf47  8bce                      MOV ECX,ESI
004fcf49  50                        PUSH EAX
004fcf4a  e821091b00                CALL 0x006ad870
004fcf4f  8b06                      MOV EAX,dword ptr [ESI]
004fcf51  8bce                      MOV ECX,ESI
004fcf53  ff500c                    CALL dword ptr [EAX + 0xc]
004fcf56  c786640b000010000000      MOV dword ptr [ESI + 0xb64],0x10
004fcf60  c78680030000cdcccc3d      MOV dword ptr [ESI + 0x380],0x3dcccccd
004fcf6a  c786c00b00003c000000      MOV dword ptr [ESI + 0xbc0],0x3c
004fcf74  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004fcf7a  85d2                      TEST EDX,EDX
004fcf7c  0f8e84000000              JLE 0x004fd006
004fcf82  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004fcf8a  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004fcf92  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
004fcf9a  2bc8                      SUB ECX,EAX
004fcf9c  03ca                      ADD ECX,EDX
004fcf9e  898f10040000              MOV dword ptr [EDI + 0x410],ECX
004fcfa4  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004fcfac  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
004fcfb4  f30f10a738030000          MOVSS XMM4,dword ptr [EDI + 0x338]
004fcfbc  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004fcfc4  f30f59255ca7ba00          MULSS XMM4,dword ptr [0x00baa75c]
004fcfcc  f30f59cb                  MULSS XMM1,XMM3
004fcfd0  f30f59e3                  MULSS XMM4,XMM3
004fcfd4  f30f5cc1                  SUBSS XMM0,XMM1
004fcfd8  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004fcfe0  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004fcfe8  f30f5cc4                  SUBSS XMM0,XMM4
004fcfec  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004fcff4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fcffc  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004fd004  eb10                      JMP 0x004fd016
004fd006  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fd00e  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004fd016  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fd01e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fd022  740d                      JZ 0x004fd031
004fd024  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004fd02b  0f8529020000              JNZ 0x004fd25a
004fd031  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fd03b  e91a020000                JMP 0x004fd25a
004fd040  a118ddb100                MOV EAX,[0x00b1dd18]
004fd045  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004fd04b  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004fd052  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004fd059  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004fd05c  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004fd05f  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004fd063  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004fd06a  a130ddb100                MOV EAX,[0x00b1dd30]
004fd06f  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004fd075  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004fd07c  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004fd083  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004fd086  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004fd089  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004fd08d  51                        PUSH ECX
004fd08e  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004fd092  8d45bc                    LEA EAX,[EBP + -0x44]
004fd095  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004fd09c  8bcf                      MOV ECX,EDI
004fd09e  50                        PUSH EAX
004fd09f  8d45d4                    LEA EAX,[EBP + -0x2c]
004fd0a2  50                        PUSH EAX
004fd0a3  e888421c00                CALL 0x006c1330
004fd0a8  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004fd0ac  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004fd0af  83fa10                    CMP EDX,0x10
004fd0b2  7228                      JC 0x004fd0dc
004fd0b4  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004fd0b7  42                        INC EDX
004fd0b8  8bc1                      MOV EAX,ECX
004fd0ba  81fa00100000              CMP EDX,0x1000
004fd0c0  7210                      JC 0x004fd0d2
004fd0c2  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004fd0c5  83c223                    ADD EDX,0x23
004fd0c8  2bc1                      SUB EAX,ECX
004fd0ca  83c0fc                    ADD EAX,-0x4
004fd0cd  83f81f                    CMP EAX,0x1f
004fd0d0  7749                      JA 0x004fd11b
004fd0d2  52                        PUSH EDX
004fd0d3  51                        PUSH ECX
004fd0d4  e883205f00                CALL 0x00aef15c
004fd0d9  83c408                    ADD ESP,0x8
004fd0dc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004fd0e3  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004fd0e6  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004fd0ed  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004fd0f4  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004fd0f8  83fa10                    CMP EDX,0x10
004fd0fb  722e                      JC 0x004fd12b
004fd0fd  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004fd100  42                        INC EDX
004fd101  8bc1                      MOV EAX,ECX
004fd103  81fa00100000              CMP EDX,0x1000
004fd109  7216                      JC 0x004fd121
004fd10b  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004fd10e  83c223                    ADD EDX,0x23
004fd111  2bc1                      SUB EAX,ECX
004fd113  83c0fc                    ADD EAX,-0x4
004fd116  83f81f                    CMP EAX,0x1f
004fd119  7606                      JBE 0x004fd121
004fd11b  ff159488b100              CALL dword ptr [0x00b18894]
004fd121  52                        PUSH EDX
004fd122  51                        PUSH ECX
004fd123  e834205f00                CALL 0x00aef15c
004fd128  83c408                    ADD ESP,0x8
004fd12b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fd133  8d8f14040000              LEA ECX,[EDI + 0x414]
004fd139  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004fd141  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004fd147  2500000020                AND EAX,0x20000000
004fd14c  83c800                    OR EAX,0x0
004fd14f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fd157  740d                      JZ 0x004fd166
004fd159  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fd160  7504                      JNZ 0x004fd166
004fd162  b001                      MOV AL,0x1
004fd164  eb02                      JMP 0x004fd168
004fd166  32c0                      XOR AL,AL
004fd168  50                        PUSH EAX
004fd169  e892912e00                CALL 0x007e6300
004fd16e  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
004fd176  8bcf                      MOV ECX,EDI
004fd178  6a00                      PUSH 0x0
004fd17a  e8a1b91d00                CALL 0x006d8b20
004fd17f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fd186  7434                      JZ 0x004fd1bc
004fd188  6a09                      PUSH 0x9
004fd18a  8bcf                      MOV ECX,EDI
004fd18c  e8cfb01d00                CALL 0x006d8260
004fd191  84c0                      TEST AL,AL
004fd193  0f84c1000000              JZ 0x004fd25a
004fd199  8d45e4                    LEA EAX,[EBP + -0x1c]
004fd19c  8bcf                      MOV ECX,EDI
004fd19e  50                        PUSH EAX
004fd19f  e88cbb1d00                CALL 0x006d8d30
004fd1a4  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004fd1aa  51                        PUSH ECX
004fd1ab  8bc8                      MOV ECX,EAX
004fd1ad  e87e345100                CALL 0x00a10630
004fd1b2  84c0                      TEST AL,AL
004fd1b4  0f84a0000000              JZ 0x004fd25a
004fd1ba  eb16                      JMP 0x004fd1d2
004fd1bc  e89f1d1f00                CALL 0x006eef60
004fd1c1  33d2                      XOR EDX,EDX
004fd1c3  b946000000                MOV ECX,0x46
004fd1c8  f7f1                      DIV ECX
004fd1ca  85d2                      TEST EDX,EDX
004fd1cc  0f8588000000              JNZ 0x004fd25a
004fd1d2  6a00                      PUSH 0x0
004fd1d4  68000a0000                PUSH 0xa00
004fd1d9  8bcf                      MOV ECX,EDI
004fd1db  e850a2f1ff                CALL 0x00417430
004fd1e0  84c0                      TEST AL,AL
004fd1e2  7576                      JNZ 0x004fd25a
004fd1e4  6a00                      PUSH 0x0
004fd1e6  6833030000                PUSH 0x333
004fd1eb  8d45dc                    LEA EAX,[EBP + -0x24]
004fd1ee  8bcf                      MOV ECX,EDI
004fd1f0  50                        PUSH EAX
004fd1f1  e86a3a1d00                CALL 0x006d0c60
004fd1f6  8d4ddc                    LEA ECX,[EBP + -0x24]
004fd1f9  8b700c                    MOV ESI,dword ptr [EAX + 0xc]
004fd1fc  e8afa3f1ff                CALL 0x004175b0
004fd201  83fe04                    CMP ESI,0x4
004fd204  7354                      JNC 0x004fd25a
004fd206  6a00                      PUSH 0x0
004fd208  6854ddb100                PUSH 0xb1dd54
004fd20d  8d4f48                    LEA ECX,[EDI + 0x48]
004fd210  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004fd21a  e861d1f0ff                CALL 0x0040a380
004fd21f  8bcf                      MOV ECX,EDI
004fd221  e81a161c00                CALL 0x006be840
004fd226  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fd22d  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004fd235  740f                      JZ 0x004fd246
004fd237  8d45e4                    LEA EAX,[EBP + -0x1c]
004fd23a  8bcf                      MOV ECX,EDI
004fd23c  50                        PUSH EAX
004fd23d  e8eeba1d00                CALL 0x006d8d30
004fd242  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004fd246  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004fd24e  0f2fc1                    COMISS XMM0,XMM1
004fd251  0f97c0                    SETA AL
004fd254  888748010000              MOV byte ptr [EDI + 0x148],AL
004fd25a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004fd25d  64890d00000000            MOV dword ptr FS:[0x0],ECX
004fd264  59                        POP ECX
004fd265  5f                        POP EDI
004fd266  5e                        POP ESI
004fd267  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004fd26a  33cd                      XOR ECX,EBP
004fd26c  e8ba1e5f00                CALL 0x00aef12b
004fd271  8be5                      MOV ESP,EBP
004fd273  5d                        POP EBP
004fd274  8be3                      MOV ESP,EBX
004fd276  5b                        POP EBX
004fd277  c3                        RET
