; J460 NPC AI 0x0045d7d0 AI_0045d7d0
; types=267
; identities=267.0.0
; entry=0045d7d0
0045d7d0  53                        PUSH EBX
0045d7d1  8bdc                      MOV EBX,ESP
0045d7d3  83ec08                    SUB ESP,0x8
0045d7d6  83e4f8                    AND ESP,0xfffffff8
0045d7d9  83c404                    ADD ESP,0x4
0045d7dc  55                        PUSH EBP
0045d7dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0045d7e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0045d7e4  8bec                      MOV EBP,ESP
0045d7e6  81ecf0000000              SUB ESP,0xf0
0045d7ec  a1b493bf00                MOV EAX,[0x00bf93b4]
0045d7f1  33c5                      XOR EAX,EBP
0045d7f3  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0045d7f6  56                        PUSH ESI
0045d7f7  57                        PUSH EDI
0045d7f8  8bf9                      MOV EDI,ECX
0045d7fa  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
0045d804  e837102600                CALL 0x006be840
0045d809  8db73c030000              LEA ESI,[EDI + 0x33c]
0045d80f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0045d817  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045d81f  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0045d823  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0045d828  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045d82e  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0045d836  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0045d83e  85c0                      TEST EAX,EAX
0045d840  7523                      JNZ 0x0045d865
0045d842  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045d84c  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045d852  5f                        POP EDI
0045d853  5e                        POP ESI
0045d854  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0045d857  33cd                      XOR ECX,EBP
0045d859  e8cd186900                CALL 0x00aef12b
0045d85e  8be5                      MOV ESP,EBP
0045d860  5d                        POP EBP
0045d861  8be3                      MOV ESP,EBX
0045d863  5b                        POP EBX
0045d864  c3                        RET
0045d865  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
0045d86f  83f80a                    CMP EAX,0xa
0045d872  7454                      JZ 0x0045d8c8
0045d874  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
0045d87c  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0045d882  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045d888  83ec0c                    SUB ESP,0xc
0045d88b  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0045d891  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0045d897  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
0045d89d  f30f111c24                MOVSS dword ptr [ESP],XMM3
0045d8a2  56                        PUSH ESI
0045d8a3  50                        PUSH EAX
0045d8a4  e8a7563b00                CALL 0x00812f50
0045d8a9  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
0045d8b1  f30f1106                  MOVSS dword ptr [ESI],XMM0
0045d8b5  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
0045d8bd  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0045d8c2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045d8c8  83f804                    CMP EAX,0x4
0045d8cb  0f85f1020000              JNZ 0x0045dbc2
0045d8d1  ff8710040000              INC dword ptr [EDI + 0x410]
0045d8d7  8d4f48                    LEA ECX,[EDI + 0x48]
0045d8da  6a00                      PUSH 0x0
0045d8dc  68e4dcb100                PUSH 0xb1dce4
0045d8e1  e89acafaff                CALL 0x0040a380
0045d8e6  6a00                      PUSH 0x0
0045d8e8  8d8f14040000              LEA ECX,[EDI + 0x414]
0045d8ee  e85d8d3800                CALL 0x007e6650
0045d8f3  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045d8f9  33c0                      XOR EAX,EAX
0045d8fb  81e100000010              AND ECX,0x10000000
0045d901  0bc1                      OR EAX,ECX
0045d903  7418                      JZ 0x0045d91d
0045d905  a17816c700                MOV EAX,[0x00c71678]
0045d90a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045d910  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045d913  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0045d917  0f85e7060000              JNZ 0x0045e004
0045d91d  ff7720                    PUSH dword ptr [EDI + 0x20]
0045d920  8bcf                      MOV ECX,EDI
0045d922  6a3c                      PUSH 0x3c
0045d924  e8e7ed2400                CALL 0x006ac710
0045d929  84c0                      TEST AL,AL
0045d92b  7410                      JZ 0x0045d93d
0045d92d  e82e162900                CALL 0x006eef60
0045d932  83e003                    AND EAX,0x3
0045d935  3c03                      CMP AL,0x3
0045d937  7304                      JNC 0x0045d93d
0045d939  b101                      MOV CL,0x1
0045d93b  eb02                      JMP 0x0045d93f
0045d93d  32c9                      XOR CL,CL
0045d93f  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0045d945  2500080001                AND EAX,0x1000800
0045d94a  83c800                    OR EAX,0x0
0045d94d  7504                      JNZ 0x0045d953
0045d94f  84c9                      TEST CL,CL
0045d951  7447                      JZ 0x0045d99a
0045d953  a17816c700                MOV EAX,[0x00c71678]
0045d958  0f57c0                    XORPS XMM0,XMM0
0045d95b  0f2f8018650200            COMISS XMM0,dword ptr [EAX + 0x26518]
0045d962  7236                      JC 0x0045d99a
0045d964  51                        PUSH ECX
0045d965  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045d96c  6a00                      PUSH 0x0
0045d96e  6a02                      PUSH 0x2
0045d970  51                        PUSH ECX
0045d971  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045d978  8bcf                      MOV ECX,EDI
0045d97a  6a68                      PUSH 0x68
0045d97c  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0045d986  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045d990  e80b922700                CALL 0x006d6ba0
0045d995  e96a060000                JMP 0x0045e004
0045d99a  ff7720                    PUSH dword ptr [EDI + 0x20]
0045d99d  8bcf                      MOV ECX,EDI
0045d99f  6a0a                      PUSH 0xa
0045d9a1  e86aed2400                CALL 0x006ac710
0045d9a6  84c0                      TEST AL,AL
0045d9a8  7427                      JZ 0x0045d9d1
0045d9aa  e8b1152900                CALL 0x006eef60
0045d9af  33d2                      XOR EDX,EDX
0045d9b1  b906000000                MOV ECX,0x6
0045d9b6  f7f1                      DIV ECX
0045d9b8  85d2                      TEST EDX,EDX
0045d9ba  7515                      JNZ 0x0045d9d1
0045d9bc  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045d9c6  899710040000              MOV dword ptr [EDI + 0x410],EDX
0045d9cc  e933060000                JMP 0x0045e004
0045d9d1  f30f108d18ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff18]
0045d9d9  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0045d9e0  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
0045d9e8  0f2fc1                    COMISS XMM0,XMM1
0045d9eb  7619                      JBE 0x0045da06
0045d9ed  ff7720                    PUSH dword ptr [EDI + 0x20]
0045d9f0  8bcf                      MOV ECX,EDI
0045d9f2  6a0a                      PUSH 0xa
0045d9f4  e817ed2400                CALL 0x006ac710
0045d9f9  84c0                      TEST AL,AL
0045d9fb  7409                      JZ 0x0045da06
0045d9fd  e85e152900                CALL 0x006eef60
0045da02  a801                      TEST AL,0x1
0045da04  7443                      JZ 0x0045da49
0045da06  a17816c700                MOV EAX,[0x00c71678]
0045da0b  0f57c9                    XORPS XMM1,XMM1
0045da0e  f30f108018650200          MOVSS XMM0,dword ptr [EAX + 0x26518]
0045da16  0f2fc1                    COMISS XMM0,XMM1
0045da19  0f86c5000000              JBE 0x0045dae4
0045da1f  ff7720                    PUSH dword ptr [EDI + 0x20]
0045da22  8bcf                      MOV ECX,EDI
0045da24  6a0a                      PUSH 0xa
0045da26  e8e5ec2400                CALL 0x006ac710
0045da2b  84c0                      TEST AL,AL
0045da2d  0f84ae000000              JZ 0x0045dae1
0045da33  e828152900                CALL 0x006eef60
0045da38  33d2                      XOR EDX,EDX
0045da3a  b905000000                MOV ECX,0x5
0045da3f  f7f1                      DIV ECX
0045da41  85d2                      TEST EDX,EDX
0045da43  0f8598000000              JNZ 0x0045dae1
0045da49  6a00                      PUSH 0x0
0045da4b  68000a0001                PUSH 0x1000a00
0045da50  8bcf                      MOV ECX,EDI
0045da52  e8d999fbff                CALL 0x00417430
0045da57  84c0                      TEST AL,AL
0045da59  0f8582000000              JNZ 0x0045dae1
0045da5f  51                        PUSH ECX
0045da60  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045da67  6a00                      PUSH 0x0
0045da69  6a02                      PUSH 0x2
0045da6b  51                        PUSH ECX
0045da6c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045da73  8bcf                      MOV ECX,EDI
0045da75  6a77                      PUSH 0x77
0045da77  e824912700                CALL 0x006d6ba0
0045da7c  0f57c0                    XORPS XMM0,XMM0
0045da7f  8d4f48                    LEA ECX,[EDI + 0x48]
0045da82  0f2f8514ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff14]
0045da89  6a01                      PUSH 0x1
0045da8b  6868d6b100                PUSH 0xb1d668
0045da90  0f97c0                    SETA AL
0045da93  888748010000              MOV byte ptr [EDI + 0x148],AL
0045da99  e832cbfaff                CALL 0x0040a5d0
0045da9e  84c0                      TEST AL,AL
0045daa0  7415                      JZ 0x0045dab7
0045daa2  8d4f78                    LEA ECX,[EDI + 0x78]
0045daa5  e806c7faff                CALL 0x0040a1b0
0045daaa  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045dab1  8db73c030000              LEA ESI,[EDI + 0x33c]
0045dab7  8b06                      MOV EAX,dword ptr [ESI]
0045dab9  898734030000              MOV dword ptr [EDI + 0x334],EAX
0045dabf  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0045dac2  898738030000              MOV dword ptr [EDI + 0x338],EAX
0045dac8  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0045dad2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045dadc  e923050000                JMP 0x0045e004
0045dae1  0f57c9                    XORPS XMM1,XMM1
0045dae4  f30f109514ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff14]
0045daec  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0045daf3  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
0045dafb  0f2fc2                    COMISS XMM0,XMM2
0045dafe  0f8600050000              JBE 0x0045e004
0045db04  f30f108518ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff18]
0045db0c  0f2fc1                    COMISS XMM0,XMM1
0045db0f  0f86ef040000              JBE 0x0045e004
0045db15  ff7720                    PUSH dword ptr [EDI + 0x20]
0045db18  8bcf                      MOV ECX,EDI
0045db1a  6a0a                      PUSH 0xa
0045db1c  e8efeb2400                CALL 0x006ac710
0045db21  84c0                      TEST AL,AL
0045db23  0f84db040000              JZ 0x0045e004
0045db29  e832142900                CALL 0x006eef60
0045db2e  a801                      TEST AL,0x1
0045db30  0f85ce040000              JNZ 0x0045e004
0045db36  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0045db3e  0f57db                    XORPS XMM3,XMM3
0045db41  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0045db49  51                        PUSH ECX
0045db4a  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
0045db50  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0045db5a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045db64  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0045db6b  e8805dfcff                CALL 0x004238f0
0045db70  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0045db78  8bf0                      MOV ESI,EAX
0045db7a  e8c1f9fbff                CALL 0x0041d540
0045db7f  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0045db87  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0045db8f  e88cf9fbff                CALL 0x0041d520
0045db94  51                        PUSH ECX
0045db95  c7042400008040            MOV dword ptr [ESP],0x40800000
0045db9c  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0045dba2  56                        PUSH ESI
0045dba3  6a16                      PUSH 0x16
0045dba5  50                        PUSH EAX
0045dba6  ba40b6c700                MOV EDX,0xc7b640
0045dbab  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0045dbb3  8bcf                      MOV ECX,EDI
0045dbb5  e8d6dc1a00                CALL 0x0060b890
0045dbba  83c410                    ADD ESP,0x10
0045dbbd  e942040000                JMP 0x0045e004
0045dbc2  83f808                    CMP EAX,0x8
0045dbc5  0f850d010000              JNZ 0x0045dcd8
0045dbcb  ff8710040000              INC dword ptr [EDI + 0x410]
0045dbd1  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0045dbd4  85c9                      TEST ECX,ECX
0045dbd6  744c                      JZ 0x0045dc24
0045dbd8  83791410                  CMP dword ptr [ECX + 0x14],0x10
0045dbdc  8bc1                      MOV EAX,ECX
0045dbde  7202                      JC 0x0045dbe2
0045dbe0  8b01                      MOV EAX,dword ptr [ECX]
0045dbe2  b9ccd2b100                MOV ECX,0xb1d2cc
0045dbe7  8a10                      MOV DL,byte ptr [EAX]
0045dbe9  3a11                      CMP DL,byte ptr [ECX]
0045dbeb  751a                      JNZ 0x0045dc07
0045dbed  84d2                      TEST DL,DL
0045dbef  7412                      JZ 0x0045dc03
0045dbf1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045dbf4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045dbf7  750e                      JNZ 0x0045dc07
0045dbf9  83c002                    ADD EAX,0x2
0045dbfc  83c102                    ADD ECX,0x2
0045dbff  84d2                      TEST DL,DL
0045dc01  75e4                      JNZ 0x0045dbe7
0045dc03  33c0                      XOR EAX,EAX
0045dc05  eb05                      JMP 0x0045dc0c
0045dc07  1bc0                      SBB EAX,EAX
0045dc09  83c801                    OR EAX,0x1
0045dc0c  8d4f48                    LEA ECX,[EDI + 0x48]
0045dc0f  85c0                      TEST EAX,EAX
0045dc11  7514                      JNZ 0x0045dc27
0045dc13  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0045dc16  80783400                  CMP byte ptr [EAX + 0x34],0x0
0045dc1a  7430                      JZ 0x0045dc4c
0045dc1c  80794400                  CMP byte ptr [ECX + 0x44],0x0
0045dc20  752a                      JNZ 0x0045dc4c
0045dc22  eb03                      JMP 0x0045dc27
0045dc24  8d4f48                    LEA ECX,[EDI + 0x48]
0045dc27  6a01                      PUSH 0x1
0045dc29  68ccd2b100                PUSH 0xb1d2cc
0045dc2e  e89dc9faff                CALL 0x0040a5d0
0045dc33  84c0                      TEST AL,AL
0045dc35  7415                      JZ 0x0045dc4c
0045dc37  8d4f78                    LEA ECX,[EDI + 0x78]
0045dc3a  e871c5faff                CALL 0x0040a1b0
0045dc3f  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045dc46  8db73c030000              LEA ESI,[EDI + 0x33c]
0045dc4c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045dc50  0f8442030000              JZ 0x0045df98
0045dc56  68dcd2b100                PUSH 0xb1d2dc
0045dc5b  8d4f78                    LEA ECX,[EDI + 0x78]
0045dc5e  e86dd1faff                CALL 0x0040add0
0045dc63  84c0                      TEST AL,AL
0045dc65  0f847d010000              JZ 0x0045dde8
0045dc6b  51                        PUSH ECX
0045dc6c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045dc73  6a00                      PUSH 0x0
0045dc75  6a02                      PUSH 0x2
0045dc77  51                        PUSH ECX
0045dc78  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045dc7f  8bcf                      MOV ECX,EDI
0045dc81  6a73                      PUSH 0x73
0045dc83  e8188f2700                CALL 0x006d6ba0
0045dc88  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
0045dc8e  e89d12feff                CALL 0x0043ef30
0045dc93  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0045dc99  c78554ffffff000088c1      MOV dword ptr [EBP + 0xffffff54],0xc1880000
0045dca3  50                        PUSH EAX
0045dca4  6a09                      PUSH 0x9
0045dca6  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0045dcac  c78558ffffff6666a63f      MOV dword ptr [EBP + 0xffffff58],0x3fa66666
0045dcb6  50                        PUSH EAX
0045dcb7  56                        PUSH ESI
0045dcb8  8bcf                      MOV ECX,EDI
0045dcba  c7851cffffff00001041      MOV dword ptr [EBP + 0xffffff1c],0x41100000
0045dcc4  c78520ffffff00004041      MOV dword ptr [EBP + 0xffffff20],0x41400000
0045dcce  e80dd62600                CALL 0x006cb2e0
0045dcd3  e910010000                JMP 0x0045dde8
0045dcd8  83f809                    CMP EAX,0x9
0045dcdb  0f8537010000              JNZ 0x0045de18
0045dce1  ff8710040000              INC dword ptr [EDI + 0x410]
0045dce7  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0045dcea  85c9                      TEST ECX,ECX
0045dcec  744f                      JZ 0x0045dd3d
0045dcee  83791410                  CMP dword ptr [ECX + 0x14],0x10
0045dcf2  8bc1                      MOV EAX,ECX
0045dcf4  7202                      JC 0x0045dcf8
0045dcf6  8b01                      MOV EAX,dword ptr [ECX]
0045dcf8  b9ecd2b100                MOV ECX,0xb1d2ec
0045dcfd  0f1f00                    NOP dword ptr [EAX]
0045dd00  8a10                      MOV DL,byte ptr [EAX]
0045dd02  3a11                      CMP DL,byte ptr [ECX]
0045dd04  751a                      JNZ 0x0045dd20
0045dd06  84d2                      TEST DL,DL
0045dd08  7412                      JZ 0x0045dd1c
0045dd0a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045dd0d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045dd10  750e                      JNZ 0x0045dd20
0045dd12  83c002                    ADD EAX,0x2
0045dd15  83c102                    ADD ECX,0x2
0045dd18  84d2                      TEST DL,DL
0045dd1a  75e4                      JNZ 0x0045dd00
0045dd1c  33c0                      XOR EAX,EAX
0045dd1e  eb05                      JMP 0x0045dd25
0045dd20  1bc0                      SBB EAX,EAX
0045dd22  83c801                    OR EAX,0x1
0045dd25  8d4f48                    LEA ECX,[EDI + 0x48]
0045dd28  85c0                      TEST EAX,EAX
0045dd2a  7514                      JNZ 0x0045dd40
0045dd2c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0045dd2f  80783400                  CMP byte ptr [EAX + 0x34],0x0
0045dd33  7430                      JZ 0x0045dd65
0045dd35  80794400                  CMP byte ptr [ECX + 0x44],0x0
0045dd39  752a                      JNZ 0x0045dd65
0045dd3b  eb03                      JMP 0x0045dd40
0045dd3d  8d4f48                    LEA ECX,[EDI + 0x48]
0045dd40  6a01                      PUSH 0x1
0045dd42  68ecd2b100                PUSH 0xb1d2ec
0045dd47  e884c8faff                CALL 0x0040a5d0
0045dd4c  84c0                      TEST AL,AL
0045dd4e  7415                      JZ 0x0045dd65
0045dd50  8d4f78                    LEA ECX,[EDI + 0x78]
0045dd53  e858c4faff                CALL 0x0040a1b0
0045dd58  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045dd5f  8db73c030000              LEA ESI,[EDI + 0x33c]
0045dd65  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045dd69  0f8429020000              JZ 0x0045df98
0045dd6f  68dcd2b100                PUSH 0xb1d2dc
0045dd74  8d4f78                    LEA ECX,[EDI + 0x78]
0045dd77  e854d0faff                CALL 0x0040add0
0045dd7c  84c0                      TEST AL,AL
0045dd7e  7468                      JZ 0x0045dde8
0045dd80  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045dd84  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0045dd8a  6a00                      PUSH 0x0
0045dd8c  0f57c9                    XORPS XMM1,XMM1
0045dd8f  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
0045dd99  f30f58c1                  ADDSS XMM0,XMM1
0045dd9d  c78520ffffff0000a0c1      MOV dword ptr [EBP + 0xffffff20],0xc1a00000
0045dda7  57                        PUSH EDI
0045dda8  50                        PUSH EAX
0045dda9  6a0a                      PUSH 0xa
0045ddab  51                        PUSH ECX
0045ddac  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0045ddb4  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
0045ddba  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045ddbf  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0045ddc7  c704240000b442            MOV dword ptr [ESP],0x42b40000
0045ddce  50                        PUSH EAX
0045ddcf  6a01                      PUSH 0x1
0045ddd1  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0045ddd9  e832155100                CALL 0x0096f310
0045ddde  83c41c                    ADD ESP,0x1c
0045dde1  8bc8                      MOV ECX,EAX
0045dde3  8b10                      MOV EDX,dword ptr [EAX]
0045dde5  ff520c                    CALL dword ptr [EDX + 0xc]
0045dde8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045ddec  0f84a6010000              JZ 0x0045df98
0045ddf2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045ddf9  0f8505020000              JNZ 0x0045e004
0045ddff  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045de09  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045de13  e9ec010000                JMP 0x0045e004
0045de18  83f80a                    CMP EAX,0xa
0045de1b  0f858d010000              JNZ 0x0045dfae
0045de21  8d4f48                    LEA ECX,[EDI + 0x48]
0045de24  6868d6b100                PUSH 0xb1d668
0045de29  e802d2faff                CALL 0x0040b030
0045de2e  84c0                      TEST AL,AL
0045de30  740a                      JZ 0x0045de3c
0045de32  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
0045de3c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045de40  7409                      JZ 0x0045de4b
0045de42  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045de49  750f                      JNZ 0x0045de5a
0045de4b  6a00                      PUSH 0x0
0045de4d  68a4ddb100                PUSH 0xb1dda4
0045de52  8d4f48                    LEA ECX,[EDI + 0x48]
0045de55  e826c5faff                CALL 0x0040a380
0045de5a  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0045de60  f30f1025d0a9ba00          MOVSS XMM4,dword ptr [0x00baa9d0]
0045de68  83f901                    CMP ECX,0x1
0045de6b  0f8c98000000              JL 0x0045df09
0045de71  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0045de78  740a                      JZ 0x0045de84
0045de7a  f30f1005f0adba00          MOVSS XMM0,dword ptr [0x00baadf0]
0045de82  eb08                      JMP 0x0045de8c
0045de84  f30f100584a8ba00          MOVSS XMM0,dword ptr [0x00baa884]
0045de8c  f30f109d18ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff18]
0045de94  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
0045de9b  f30f5edc                  DIVSS XMM3,XMM4
0045de9f  f30f103580a2ba00          MOVSS XMM6,dword ptr [0x00baa280]
0045dea7  0f2fde                    COMISS XMM3,XMM6
0045deaa  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0045deb2  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0045deba  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
0045dec2  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045deca  7606                      JBE 0x0045ded2
0045decc  f30f59ce                  MULSS XMM1,XMM6
0045ded0  eb27                      JMP 0x0045def9
0045ded2  f30f100524adba00          MOVSS XMM0,dword ptr [0x00baad24]
0045deda  0f2fc3                    COMISS XMM0,XMM3
0045dedd  7616                      JBE 0x0045def5
0045dedf  f30f59ce                  MULSS XMM1,XMM6
0045dee3  f30f5ecd                  DIVSS XMM1,XMM5
0045dee7  f30f58ca                  ADDSS XMM1,XMM2
0045deeb  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0045def3  eb14                      JMP 0x0045df09
0045def5  f30f59cb                  MULSS XMM1,XMM3
0045def9  f30f5ecd                  DIVSS XMM1,XMM5
0045defd  f30f5cd1                  SUBSS XMM2,XMM1
0045df01  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0045df09  a17816c700                MOV EAX,[0x00c71678]
0045df0e  0f57ed                    XORPS XMM5,XMM5
0045df11  f30f10b760030000          MOVSS XMM6,dword ptr [EDI + 0x360]
0045df19  0f2ff5                    COMISS XMM6,XMM5
0045df1c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045df22  f30f105014                MOVSS XMM2,dword ptr [EAX + 0x14]
0045df27  f30f10581c                MOVSS XMM3,dword ptr [EAX + 0x1c]
0045df2c  761a                      JBE 0x0045df48
0045df2e  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045df32  0f28cb                    MOVAPS XMM1,XMM3
0045df35  f30f58cc                  ADDSS XMM1,XMM4
0045df39  0f2fc1                    COMISS XMM0,XMM1
0045df3c  760a                      JBE 0x0045df48
0045df3e  f30f5cd4                  SUBSS XMM2,XMM4
0045df42  f30f1116                  MOVSS dword ptr [ESI],XMM2
0045df46  eb16                      JMP 0x0045df5e
0045df48  0f2fee                    COMISS XMM5,XMM6
0045df4b  761a                      JBE 0x0045df67
0045df4d  f30f5cd4                  SUBSS XMM2,XMM4
0045df51  0f2f16                    COMISS XMM2,dword ptr [ESI]
0045df54  7611                      JBE 0x0045df67
0045df56  f30f58dc                  ADDSS XMM3,XMM4
0045df5a  f30f111e                  MOVSS dword ptr [ESI],XMM3
0045df5e  8d4101                    LEA EAX,[ECX + 0x1]
0045df61  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045df67  83bf1004000002            CMP dword ptr [EDI + 0x410],0x2
0045df6e  0f8e90000000              JLE 0x0045e004
0045df74  0f2fee                    COMISS XMM5,XMM6
0045df77  760d                      JBE 0x0045df86
0045df79  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0045df81  0f2f06                    COMISS XMM0,dword ptr [ESI]
0045df84  7712                      JA 0x0045df98
0045df86  0f2ff5                    COMISS XMM6,XMM5
0045df89  7679                      JBE 0x0045e004
0045df8b  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045df8f  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
0045df96  766c                      JBE 0x0045e004
0045df98  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045dfa2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045dfac  eb56                      JMP 0x0045e004
0045dfae  83f810                    CMP EAX,0x10
0045dfb1  7551                      JNZ 0x0045e004
0045dfb3  6a00                      PUSH 0x0
0045dfb5  8d4f48                    LEA ECX,[EDI + 0x48]
0045dfb8  6898ddb100                PUSH 0xb1dd98
0045dfbd  e8bec3faff                CALL 0x0040a380
0045dfc2  ff8710040000              INC dword ptr [EDI + 0x410]
0045dfc8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045dfcc  7409                      JZ 0x0045dfd7
0045dfce  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045dfd5  752d                      JNZ 0x0045e004
0045dfd7  a17816c700                MOV EAX,[0x00c71678]
0045dfdc  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045dfe6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045dff0  c7801c6502000000803f      MOV dword ptr [EAX + 0x2651c],0x3f800000
0045dffa  c78014650200b4000000      MOV dword ptr [EAX + 0x26514],0xb4
0045e004  a17816c700                MOV EAX,[0x00c71678]
0045e009  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045e00f  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0045e016  751b                      JNZ 0x0045e033
0045e018  f30f100514abba00          MOVSS XMM0,dword ptr [0x00baab14]
0045e020  0f2f8740030000            COMISS XMM0,dword ptr [EDI + 0x340]
0045e027  760a                      JBE 0x0045e033
0045e029  c787400300000000a043      MOV dword ptr [EDI + 0x340],0x43a00000
0045e033  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0045e036  5f                        POP EDI
0045e037  33cd                      XOR ECX,EBP
0045e039  5e                        POP ESI
0045e03a  e8ec106900                CALL 0x00aef12b
0045e03f  8be5                      MOV ESP,EBP
0045e041  5d                        POP EBP
0045e042  8be3                      MOV ESP,EBX
0045e044  5b                        POP EBX
0045e045  c3                        RET
