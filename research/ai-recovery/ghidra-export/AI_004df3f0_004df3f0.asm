; J460 NPC AI 0x004df3f0 AI_004df3f0
; types=865
; identities=865.0.0,865.10.0
; entry=004df3f0
004df3f0  53                        PUSH EBX
004df3f1  8bdc                      MOV EBX,ESP
004df3f3  83ec08                    SUB ESP,0x8
004df3f6  83e4f8                    AND ESP,0xfffffff8
004df3f9  83c404                    ADD ESP,0x4
004df3fc  55                        PUSH EBP
004df3fd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004df400  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004df404  8bec                      MOV EBP,ESP
004df406  6aff                      PUSH -0x1
004df408  68dd3aaf00                PUSH 0xaf3add
004df40d  64a100000000              MOV EAX,FS:[0x0]
004df413  50                        PUSH EAX
004df414  53                        PUSH EBX
004df415  81ec80000000              SUB ESP,0x80
004df41b  a1b493bf00                MOV EAX,[0x00bf93b4]
004df420  33c5                      XOR EAX,EBP
004df422  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004df425  56                        PUSH ESI
004df426  57                        PUSH EDI
004df427  50                        PUSH EAX
004df428  8d45f4                    LEA EAX,[EBP + -0xc]
004df42b  64a300000000              MOV FS:[0x0],EAX
004df431  8bf9                      MOV EDI,ECX
004df433  897da8                    MOV dword ptr [EBP + -0x58],EDI
004df436  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004df43a  0f857f0c0000              JNZ 0x004e00bf
004df440  8bb7740b0000              MOV ESI,dword ptr [EDI + 0xb74]
004df446  89759c                    MOV dword ptr [EBP + -0x64],ESI
004df449  83fe01                    CMP ESI,0x1
004df44c  0f84e3030000              JZ 0x004df835
004df452  83fe02                    CMP ESI,0x2
004df455  0f84dd030000              JZ 0x004df838
004df45b  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004df462  0f851d030000              JNZ 0x004df785
004df468  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004df46f  750a                      JNZ 0x004df47b
004df471  8b07                      MOV EAX,dword ptr [EDI]
004df473  ff5028                    CALL dword ptr [EAX + 0x28]
004df476  e9ce110000                JMP 0x004e0649
004df47b  68804ec300                PUSH 0xc34e80
004df480  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004df486  e8657df2ff                CALL 0x004071f0
004df48b  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004df491  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004df497  83e1fb                    AND ECX,0xfffffffb
004df49a  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004df4a2  81c900000100              OR ECX,0x10000
004df4a8  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004df4ae  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004df4b4  e887e0f3ff                CALL 0x0041d540
004df4b9  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004df4be  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004df4c6  e855e0f3ff                CALL 0x0041d520
004df4cb  f30f1065a8                MOVSS XMM4,dword ptr [EBP + -0x58]
004df4d0  33f6                      XOR ESI,ESI
004df4d2  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004df4da  0f28ec                    MOVAPS XMM5,XMM4
004df4dd  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
004df4e5  0f28ca                    MOVAPS XMM1,XMM2
004df4e8  f30f59eb                  MULSS XMM5,XMM3
004df4ec  f30f59c8                  MULSS XMM1,XMM0
004df4f0  f30f59e2                  MULSS XMM4,XMM2
004df4f4  f30f59d8                  MULSS XMM3,XMM0
004df4f8  f30f5ce9                  SUBSS XMM5,XMM1
004df4fc  f30f58e3                  ADDSS XMM4,XMM3
004df500  f30f116d94                MOVSS dword ptr [EBP + -0x6c],XMM5
004df505  f30f1165a8                MOVSS dword ptr [EBP + -0x58],XMM4
004df50a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004df510  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004df516  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004df51c  660f6ec6                  MOVD XMM0,ESI
004df520  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df524  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004df52c  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004df534  8bc6                      MOV EAX,ESI
004df536  c1e81f                    SHR EAX,0x1f
004df539  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df542  8d4584                    LEA EAX,[EBP + -0x7c]
004df545  50                        PUSH EAX
004df546  660f5ac8                  CVTPD2PS XMM1,XMM0
004df54a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004df552  f30f5e0da4a7ba00          DIVSS XMM1,dword ptr [0x00baa7a4]
004df55a  f30f5cc2                  SUBSS XMM0,XMM2
004df55e  f30f59c1                  MULSS XMM0,XMM1
004df562  f30f58c2                  ADDSS XMM0,XMM2
004df566  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004df56b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004df573  f30f5cc3                  SUBSS XMM0,XMM3
004df577  f30f59c1                  MULSS XMM0,XMM1
004df57b  f30f58c3                  ADDSS XMM0,XMM3
004df57f  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004df584  e8c719fdff                CALL 0x004b0f50
004df589  8d4598                    LEA EAX,[EBP + -0x68]
004df58c  c7459800000000            MOV dword ptr [EBP + -0x68],0x0
004df593  50                        PUSH EAX
004df594  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004df59a  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
004df5a1  e8aa19fdff                CALL 0x004b0f50
004df5a6  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
004df5ac  c7857cffffff0000a0c1      MOV dword ptr [EBP + 0xffffff7c],0xc1a00000
004df5b6  50                        PUSH EAX
004df5b7  8d8f040c0000              LEA ECX,[EDI + 0xc04]
004df5bd  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
004df5c4  e88719fdff                CALL 0x004b0f50
004df5c9  85f6                      TEST ESI,ESI
004df5cb  0f8449010000              JZ 0x004df71a
004df5d1  83fe06                    CMP ESI,0x6
004df5d4  0f8440010000              JZ 0x004df71a
004df5da  e881f92000                CALL 0x006eef60
004df5df  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
004df5e4  f30f1055a8                MOVSS XMM2,dword ptr [EBP + -0x58]
004df5e9  660f6ec0                  MOVD XMM0,EAX
004df5ed  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df5f1  c1e81f                    SHR EAX,0x1f
004df5f4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df5fd  8bc6                      MOV EAX,ESI
004df5ff  83e001                    AND EAX,0x1
004df602  8945a0                    MOV dword ptr [EBP + -0x60],EAX
004df605  660f5ac0                  CVTPD2PS XMM0,XMM0
004df609  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004df611  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004df619  f30f59c8                  MULSS XMM1,XMM0
004df61d  f30f59d0                  MULSS XMM2,XMM0
004df621  740a                      JZ 0x004df62d
004df623  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004df62b  eb08                      JMP 0x004df635
004df62d  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004df635  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004df63b  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004df641  48                        DEC EAX
004df642  f30f59c8                  MULSS XMM1,XMM0
004df646  8d51fd                    LEA EDX,[ECX + -0x3]
004df649  f30f59d0                  MULSS XMM2,XMM0
004df64d  0397140c0000              ADD EDX,dword ptr [EDI + 0xc14]
004df653  8bca                      MOV ECX,EDX
004df655  83e201                    AND EDX,0x1
004df658  d1e9                      SHR ECX,0x1
004df65a  23c8                      AND ECX,EAX
004df65c  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004df662  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004df665  f30f580cd0                ADDSS XMM1,dword ptr [EAX + EDX*0x8]
004df66a  f30f5854d004              ADDSS XMM2,dword ptr [EAX + EDX*0x8 + 0x4]
004df670  f30f110cd0                MOVSS dword ptr [EAX + EDX*0x8],XMM1
004df675  f30f1154d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM2
004df67b  e8e0f82000                CALL 0x006eef60
004df680  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
004df685  f30f1055a8                MOVSS XMM2,dword ptr [EBP + -0x58]
004df68a  660f6ec0                  MOVD XMM0,EAX
004df68e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004df692  c1e81f                    SHR EAX,0x1f
004df695  837da000                  CMP dword ptr [EBP + -0x60],0x0
004df699  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004df6a2  660f5ac0                  CVTPD2PS XMM0,XMM0
004df6a6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004df6ae  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004df6b6  f30f59c8                  MULSS XMM1,XMM0
004df6ba  f30f59d0                  MULSS XMM2,XMM0
004df6be  740a                      JZ 0x004df6ca
004df6c0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004df6c8  eb08                      JMP 0x004df6d2
004df6ca  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004df6d2  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004df6d8  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004df6de  83c1fe                    ADD ECX,-0x2
004df6e1  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004df6e7  03d1                      ADD EDX,ECX
004df6e9  8bca                      MOV ECX,EDX
004df6eb  f30f59c8                  MULSS XMM1,XMM0
004df6ef  48                        DEC EAX
004df6f0  d1e9                      SHR ECX,0x1
004df6f2  23c8                      AND ECX,EAX
004df6f4  f30f59d0                  MULSS XMM2,XMM0
004df6f8  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004df6fe  83e201                    AND EDX,0x1
004df701  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004df704  f30f580cd0                ADDSS XMM1,dword ptr [EAX + EDX*0x8]
004df709  f30f5854d004              ADDSS XMM2,dword ptr [EAX + EDX*0x8 + 0x4]
004df70f  f30f110cd0                MOVSS dword ptr [EAX + EDX*0x8],XMM1
004df714  f30f1154d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM2
004df71a  46                        INC ESI
004df71b  83fe07                    CMP ESI,0x7
004df71e  0f82ecfdffff              JC 0x004df510
004df724  8d87040c0000              LEA EAX,[EDI + 0xc04]
004df72a  50                        PUSH EAX
004df72b  8d8f180c0000              LEA ECX,[EDI + 0xc18]
004df731  e80a17fdff                CALL 0x004b0e40
004df736  6a00                      PUSH 0x0
004df738  684405b600                PUSH 0xb60544
004df73d  8d4f48                    LEA ECX,[EDI + 0x48]
004df740  c787180f000003000000      MOV dword ptr [EDI + 0xf18],0x3
004df74a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004df754  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004df75e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004df768  e873aff2ff                CALL 0x0040a6e0
004df76d  f30f108758030000          MOVSS XMM0,dword ptr [EDI + 0x358]
004df775  f30f58055ca8ba00          ADDSS XMM0,dword ptr [0x00baa85c]
004df77d  f30f118758030000          MOVSS dword ptr [EDI + 0x358],XMM0
004df785  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004df78c  0f84b70e0000              JZ 0x004e0649
004df792  b903000000                MOV ECX,0x3
004df797  894da8                    MOV dword ptr [EBP + -0x58],ECX
004df79a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004df7a0  8d4102                    LEA EAX,[ECX + 0x2]
004df7a3  3b87140c0000              CMP EAX,dword ptr [EDI + 0xc14]
004df7a9  7376                      JNC 0x004df821
004df7ab  8bb7100c0000              MOV ESI,dword ptr [EDI + 0xc10]
004df7b1  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004df7b7  48                        DEC EAX
004df7b8  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
004df7bf  6840b6c700                PUSH 0xc7b640
004df7c4  8d5602                    LEA EDX,[ESI + 0x2]
004df7c7  03d1                      ADD EDX,ECX
004df7c9  8bca                      MOV ECX,EDX
004df7cb  83e201                    AND EDX,0x1
004df7ce  d1e9                      SHR ECX,0x1
004df7d0  23c8                      AND ECX,EAX
004df7d2  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004df7d8  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004df7db  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004df7e1  49                        DEC ECX
004df7e2  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
004df7e7  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004df7ed  8b55a8                    MOV EDX,dword ptr [EBP + -0x58]
004df7f0  50                        PUSH EAX
004df7f1  03d6                      ADD EDX,ESI
004df7f3  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004df7f8  8d4584                    LEA EAX,[EBP + -0x7c]
004df7fb  50                        PUSH EAX
004df7fc  8bc2                      MOV EAX,EDX
004df7fe  83e201                    AND EDX,0x1
004df801  d1e8                      SHR EAX,0x1
004df803  23c8                      AND ECX,EAX
004df805  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004df80b  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004df80e  b901000000                MOV ECX,0x1
004df813  8d14d0                    LEA EDX,[EAX + EDX*0x8]
004df816  e8d5841f00                CALL 0x006d7cf0
004df81b  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004df81e  83c40c                    ADD ESP,0xc
004df821  83c103                    ADD ECX,0x3
004df824  894da8                    MOV dword ptr [EBP + -0x58],ECX
004df827  83f915                    CMP ECX,0x15
004df82a  0f8270ffffff              JC 0x004df7a0
004df830  e9140e0000                JMP 0x004e0649
004df835  83fe02                    CMP ESI,0x2
004df838  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004df840  0f944588                  SETZ byte ptr [EBP + -0x78]
004df844  0f8449020000              JZ 0x004dfa93
004df84a  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004df851  7515                      JNZ 0x004df868
004df853  8d4dac                    LEA ECX,[EBP + -0x54]
004df856  e81564f5ff                CALL 0x00435c70
004df85b  8b17                      MOV EDX,dword ptr [EDI]
004df85d  8bcf                      MOV ECX,EDI
004df85f  50                        PUSH EAX
004df860  ff5224                    CALL dword ptr [EDX + 0x24]
004df863  e9e10d0000                JMP 0x004e0649
004df868  8b87c4030000              MOV EAX,dword ptr [EDI + 0x3c4]
004df86e  8d8fc4030000              LEA ECX,[EDI + 0x3c4]
004df874  85c0                      TEST EAX,EAX
004df876  745b                      JZ 0x004df8d3
004df878  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004df880  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004df888  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004df890  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004df898  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004df8a0  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004df8a8  8b09                      MOV ECX,dword ptr [ECX]
004df8aa  e811ce1c00                CALL 0x006ac6c0
004df8af  84c0                      TEST AL,AL
004df8b1  740a                      JZ 0x004df8bd
004df8b3  f30f1005ecadba00          MOVSS XMM0,dword ptr [0x00baadec]
004df8bb  eb08                      JMP 0x004df8c5
004df8bd  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
004df8c5  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
004df8cd  8d8fc4030000              LEA ECX,[EDI + 0x3c4]
004df8d3  a17816c700                MOV EAX,[0x00c71678]
004df8d8  ba03000000                MOV EDX,0x3
004df8dd  8955a0                    MOV dword ptr [EBP + -0x60],EDX
004df8e0  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004df8e6  897580                    MOV dword ptr [EBP + -0x80],ESI
004df8e9  0f1f8000000000            NOP dword ptr [EAX]
004df8f0  833900                    CMP dword ptr [ECX],0x0
004df8f3  0f858f010000              JNZ 0x004dfa88
004df8f9  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004df8ff  03d0                      ADD EDX,EAX
004df901  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004df907  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
004df90d  49                        DEC ECX
004df90e  8bc2                      MOV EAX,EDX
004df910  83e201                    AND EDX,0x1
004df913  d1e8                      SHR EAX,0x1
004df915  23c8                      AND ECX,EAX
004df917  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004df91d  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004df920  8bcf                      MOV ECX,EDI
004df922  f30f100cd0                MOVSS XMM1,dword ptr [EAX + EDX*0x8]
004df927  f30f1044d004              MOVSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
004df92d  8d458c                    LEA EAX,[EBP + -0x74]
004df930  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004df938  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004df940  50                        PUSH EAX
004df941  8d45ac                    LEA EAX,[EBP + -0x54]
004df944  50                        PUSH EAX
004df945  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
004df94a  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004df94f  e84ca21c00                CALL 0x006a9ba0
004df954  6a20                      PUSH 0x20
004df956  8d45ac                    LEA EAX,[EBP + -0x54]
004df959  50                        PUSH EAX
004df95a  8d45dc                    LEA EAX,[EBP + -0x24]
004df95d  8d8e18120000              LEA ECX,[ESI + 0x1218]
004df963  50                        PUSH EAX
004df964  e8e7b1f3ff                CALL 0x0041ab50
004df969  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004df970  33c0                      XOR EAX,EAX
004df972  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
004df975  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
004df978  85f6                      TEST ESI,ESI
004df97a  0f84c4000000              JZ 0x004dfa44
004df980  8b0c82                    MOV ECX,dword ptr [EDX + EAX*0x4]
004df983  898d78ffffff              MOV dword ptr [EBP + 0xffffff78],ECX
004df989  83792801                  CMP dword ptr [ECX + 0x28],0x1
004df98d  740a                      JZ 0x004df999
004df98f  40                        INC EAX
004df990  3bc6                      CMP EAX,ESI
004df992  72ec                      JC 0x004df980
004df994  e9ab000000                JMP 0x004dfa44
004df999  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004df99f  8d4d94                    LEA ECX,[EBP + -0x6c]
004df9a2  c745944d000000            MOV dword ptr [EBP + -0x6c],0x4d
004df9a9  e8d26d4700                CALL 0x00956780
004df9ae  83ec08                    SUB ESP,0x8
004df9b1  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004df9b7  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004df9bf  c704240000803f            MOV dword ptr [ESP],0x3f800000
004df9c6  6a00                      PUSH 0x0
004df9c8  6a02                      PUSH 0x2
004df9ca  51                        PUSH ECX
004df9cb  c704240000003f            MOV dword ptr [ESP],0x3f000000
004df9d2  ff7594                    PUSH dword ptr [EBP + -0x6c]
004df9d5  e856e24400                CALL 0x0092dc30
004df9da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004df9e0  6a06                      PUSH 0x6
004df9e2  e8893c2200                CALL 0x00703670
004df9e7  8bb578ffffff              MOV ESI,dword ptr [EBP + 0xffffff78]
004df9ed  8d87c4030000              LEA EAX,[EDI + 0x3c4]
004df9f3  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004df9fb  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004dfa03  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004dfa0b  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
004dfa13  8b08                      MOV ECX,dword ptr [EAX]
004dfa15  85c9                      TEST ECX,ECX
004dfa17  741e                      JZ 0x004dfa37
004dfa19  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
004dfa1f  81c1cc030000              ADD ECX,0x3cc
004dfa25  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
004dfa2b  50                        PUSH EAX
004dfa2c  e8dff7feff                CALL 0x004cf210
004dfa31  8d87c4030000              LEA EAX,[EDI + 0x3c4]
004dfa37  50                        PUSH EAX
004dfa38  8bce                      MOV ECX,ESI
004dfa3a  8930                      MOV dword ptr [EAX],ESI
004dfa3c  e8afe2feff                CALL 0x004cdcf0
004dfa41  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
004dfa44  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004dfa4b  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004dfa4f  751c                      JNZ 0x004dfa6d
004dfa51  6a00                      PUSH 0x0
004dfa53  6a00                      PUSH 0x0
004dfa55  b101                      MOV CL,0x1
004dfa57  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004dfa5e  e84d4e5800                CALL 0x00a648b0
004dfa63  83c408                    ADD ESP,0x8
004dfa66  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004dfa6d  8b55a0                    MOV EDX,dword ptr [EBP + -0x60]
004dfa70  8d8fc4030000              LEA ECX,[EDI + 0x3c4]
004dfa76  8b7580                    MOV ESI,dword ptr [EBP + -0x80]
004dfa79  83c203                    ADD EDX,0x3
004dfa7c  8955a0                    MOV dword ptr [EBP + -0x60],EDX
004dfa7f  83fa15                    CMP EDX,0x15
004dfa82  0f8268feffff              JC 0x004df8f0
004dfa88  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dfa90  8b759c                    MOV ESI,dword ptr [EBP + -0x64]
004dfa93  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
004dfa9a  f30f102598a1ba00          MOVSS XMM4,dword ptr [0x00baa198]
004dfaa2  0f8584040000              JNZ 0x004dff2c
004dfaa8  83fe02                    CMP ESI,0x2
004dfaab  7512                      JNZ 0x004dfabf
004dfaad  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004dfab5  f30f59152cadba00          MULSS XMM2,dword ptr [0x00baad2c]
004dfabd  eb03                      JMP 0x004dfac2
004dfabf  0f57d2                    XORPS XMM2,XMM2
004dfac2  f30f5897a4030000          ADDSS XMM2,dword ptr [EDI + 0x3a4]
004dfaca  f30f5e1554a8ba00          DIVSS XMM2,dword ptr [0x00baa854]
004dfad2  0f28c2                    MOVAPS XMM0,XMM2
004dfad5  f30f11559c                MOVSS dword ptr [EBP + -0x64],XMM2
004dfada  f30f58c2                  ADDSS XMM0,XMM2
004dfade  f30f5cc1                  SUBSS XMM0,XMM1
004dfae2  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004dfaea  e8a14b0000                CALL 0x004e4690
004dfaef  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dfaf7  f30f10559c                MOVSS XMM2,dword ptr [EBP + -0x64]
004dfafc  f30f5cc8                  SUBSS XMM1,XMM0
004dfb00  0f57c0                    XORPS XMM0,XMM0
004dfb03  0f2fd0                    COMISS XMM2,XMM0
004dfb06  f30f590d94aaba00          MULSS XMM1,dword ptr [0x00baaa94]
004dfb0e  761a                      JBE 0x004dfb2a
004dfb10  0f2fc1                    COMISS XMM0,XMM1
004dfb13  7215                      JC 0x004dfb2a
004dfb15  83fe02                    CMP ESI,0x2
004dfb18  0f842b0b0000              JZ 0x004e0649
004dfb1e  8b07                      MOV EAX,dword ptr [EDI]
004dfb20  8bcf                      MOV ECX,EDI
004dfb22  ff5028                    CALL dword ptr [EAX + 0x28]
004dfb25  e91f0b0000                JMP 0x004e0649
004dfb2a  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004dfb30  85c0                      TEST EAX,EAX
004dfb32  0f84ec030000              JZ 0x004dff24
004dfb38  0f2f15d0a2ba00            COMISS XMM2,dword ptr [0x00baa2d0]
004dfb3f  0f28c1                    MOVAPS XMM0,XMM1
004dfb42  f30f598f38030000          MULSS XMM1,dword ptr [EDI + 0x338]
004dfb4a  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
004dfb52  f30f588840030000          ADDSS XMM1,dword ptr [EAX + 0x340]
004dfb5a  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
004dfb62  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
004dfb6a  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
004dfb72  0f86ac030000              JBE 0x004dff24
004dfb78  f30f102598a1ba00          MOVSS XMM4,dword ptr [0x00baa198]
004dfb80  83fe02                    CMP ESI,0x2
004dfb83  0f84a3030000              JZ 0x004dff2c
004dfb89  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004dfb8f  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
004dfb95  8bca                      MOV ECX,EDX
004dfb97  d1e9                      SHR ECX,0x1
004dfb99  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004dfba1  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004dfba9  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004dfbaf  48                        DEC EAX
004dfbb0  23c8                      AND ECX,EAX
004dfbb2  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004dfbb8  8bfa                      MOV EDI,EDX
004dfbba  42                        INC EDX
004dfbbb  83e701                    AND EDI,0x1
004dfbbe  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004dfbc1  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfbc4  f30f5c14fe                SUBSS XMM2,dword ptr [ESI + EDI*0x8]
004dfbc9  f30f10809c030000          MOVSS XMM0,dword ptr [EAX + 0x39c]
004dfbd1  8b880c0c0000              MOV ECX,dword ptr [EAX + 0xc0c]
004dfbd7  8bc2                      MOV EAX,EDX
004dfbd9  f30f104cfe04              MOVSS XMM1,dword ptr [ESI + EDI*0x8 + 0x4]
004dfbdf  49                        DEC ECX
004dfbe0  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
004dfbe3  f30f5cd9                  SUBSS XMM3,XMM1
004dfbe7  d1e8                      SHR EAX,0x1
004dfbe9  83e201                    AND EDX,0x1
004dfbec  23c8                      AND ECX,EAX
004dfbee  f30f59d4                  MULSS XMM2,XMM4
004dfbf2  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfbf5  f30f59dc                  MULSS XMM3,XMM4
004dfbf9  8b80080c0000              MOV EAX,dword ptr [EAX + 0xc08]
004dfbff  f30f59d0                  MULSS XMM2,XMM0
004dfc03  f30f59d8                  MULSS XMM3,XMM0
004dfc07  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dfc0a  f30f5814d0                ADDSS XMM2,dword ptr [EAX + EDX*0x8]
004dfc0f  f30f585cd004              ADDSS XMM3,dword ptr [EAX + EDX*0x8 + 0x4]
004dfc15  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
004dfc1a  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
004dfc20  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
004dfc26  8b96100c0000              MOV EDX,dword ptr [ESI + 0xc10]
004dfc2c  8b8e0c0c0000              MOV ECX,dword ptr [ESI + 0xc0c]
004dfc32  49                        DEC ECX
004dfc33  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004dfc3b  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004dfc43  8d7a03                    LEA EDI,[EDX + 0x3]
004dfc46  8bc7                      MOV EAX,EDI
004dfc48  83c204                    ADD EDX,0x4
004dfc4b  d1e8                      SHR EAX,0x1
004dfc4d  83e701                    AND EDI,0x1
004dfc50  23c8                      AND ECX,EAX
004dfc52  8b86080c0000              MOV EAX,dword ptr [ESI + 0xc08]
004dfc58  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004dfc5b  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfc5e  f30f5c14fe                SUBSS XMM2,dword ptr [ESI + EDI*0x8]
004dfc63  f30f10889c030000          MOVSS XMM1,dword ptr [EAX + 0x39c]
004dfc6b  8b880c0c0000              MOV ECX,dword ptr [EAX + 0xc0c]
004dfc71  8bc2                      MOV EAX,EDX
004dfc73  f30f1044fe04              MOVSS XMM0,dword ptr [ESI + EDI*0x8 + 0x4]
004dfc79  49                        DEC ECX
004dfc7a  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
004dfc7d  f30f5cd8                  SUBSS XMM3,XMM0
004dfc81  d1e8                      SHR EAX,0x1
004dfc83  83e201                    AND EDX,0x1
004dfc86  23c8                      AND ECX,EAX
004dfc88  f30f59d4                  MULSS XMM2,XMM4
004dfc8c  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfc8f  f30f59dc                  MULSS XMM3,XMM4
004dfc93  8b80080c0000              MOV EAX,dword ptr [EAX + 0xc08]
004dfc99  f30f59d1                  MULSS XMM2,XMM1
004dfc9d  f30f59d9                  MULSS XMM3,XMM1
004dfca1  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dfca4  f30f5814d0                ADDSS XMM2,dword ptr [EAX + EDX*0x8]
004dfca9  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
004dfcae  f30f585cd004              ADDSS XMM3,dword ptr [EAX + EDX*0x8 + 0x4]
004dfcb4  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
004dfcba  8b96100c0000              MOV EDX,dword ptr [ESI + 0xc10]
004dfcc0  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
004dfcc6  8d7a06                    LEA EDI,[EDX + 0x6]
004dfcc9  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004dfcd1  8bcf                      MOV ECX,EDI
004dfcd3  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004dfcdb  d1e9                      SHR ECX,0x1
004dfcdd  8b860c0c0000              MOV EAX,dword ptr [ESI + 0xc0c]
004dfce3  83c207                    ADD EDX,0x7
004dfce6  48                        DEC EAX
004dfce7  83e701                    AND EDI,0x1
004dfcea  23c8                      AND ECX,EAX
004dfcec  8b86080c0000              MOV EAX,dword ptr [ESI + 0xc08]
004dfcf2  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004dfcf5  8bca                      MOV ECX,EDX
004dfcf7  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfcfa  83e201                    AND EDX,0x1
004dfcfd  d1e9                      SHR ECX,0x1
004dfcff  f30f5c14fe                SUBSS XMM2,dword ptr [ESI + EDI*0x8]
004dfd04  f30f10889c030000          MOVSS XMM1,dword ptr [EAX + 0x39c]
004dfd0c  8b800c0c0000              MOV EAX,dword ptr [EAX + 0xc0c]
004dfd12  f30f1044fe04              MOVSS XMM0,dword ptr [ESI + EDI*0x8 + 0x4]
004dfd18  48                        DEC EAX
004dfd19  23c8                      AND ECX,EAX
004dfd1b  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
004dfd1e  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfd21  f30f5cd8                  SUBSS XMM3,XMM0
004dfd25  f30f59d4                  MULSS XMM2,XMM4
004dfd29  8b80080c0000              MOV EAX,dword ptr [EAX + 0xc08]
004dfd2f  f30f59d1                  MULSS XMM2,XMM1
004dfd33  f30f59dc                  MULSS XMM3,XMM4
004dfd37  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dfd3a  f30f59d9                  MULSS XMM3,XMM1
004dfd3e  f30f5814d0                ADDSS XMM2,dword ptr [EAX + EDX*0x8]
004dfd43  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
004dfd48  f30f585cd004              ADDSS XMM3,dword ptr [EAX + EDX*0x8 + 0x4]
004dfd4e  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
004dfd54  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
004dfd5a  8b96100c0000              MOV EDX,dword ptr [ESI + 0xc10]
004dfd60  8b8e0c0c0000              MOV ECX,dword ptr [ESI + 0xc0c]
004dfd66  49                        DEC ECX
004dfd67  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004dfd6f  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004dfd77  8d7a09                    LEA EDI,[EDX + 0x9]
004dfd7a  8bc7                      MOV EAX,EDI
004dfd7c  83c20a                    ADD EDX,0xa
004dfd7f  d1e8                      SHR EAX,0x1
004dfd81  83e701                    AND EDI,0x1
004dfd84  23c8                      AND ECX,EAX
004dfd86  8b86080c0000              MOV EAX,dword ptr [ESI + 0xc08]
004dfd8c  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004dfd8f  8bca                      MOV ECX,EDX
004dfd91  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfd94  83e201                    AND EDX,0x1
004dfd97  d1e9                      SHR ECX,0x1
004dfd99  f30f5c14fe                SUBSS XMM2,dword ptr [ESI + EDI*0x8]
004dfd9e  f30f10889c030000          MOVSS XMM1,dword ptr [EAX + 0x39c]
004dfda6  8b800c0c0000              MOV EAX,dword ptr [EAX + 0xc0c]
004dfdac  f30f1044fe04              MOVSS XMM0,dword ptr [ESI + EDI*0x8 + 0x4]
004dfdb2  48                        DEC EAX
004dfdb3  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
004dfdb6  f30f5cd8                  SUBSS XMM3,XMM0
004dfdba  23c8                      AND ECX,EAX
004dfdbc  f30f59d4                  MULSS XMM2,XMM4
004dfdc0  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfdc3  f30f59d1                  MULSS XMM2,XMM1
004dfdc7  8b80080c0000              MOV EAX,dword ptr [EAX + 0xc08]
004dfdcd  f30f59dc                  MULSS XMM3,XMM4
004dfdd1  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dfdd4  f30f59d9                  MULSS XMM3,XMM1
004dfdd8  f30f5814d0                ADDSS XMM2,dword ptr [EAX + EDX*0x8]
004dfddd  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
004dfde2  f30f585cd004              ADDSS XMM3,dword ptr [EAX + EDX*0x8 + 0x4]
004dfde8  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
004dfdee  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
004dfdf4  8b96100c0000              MOV EDX,dword ptr [ESI + 0xc10]
004dfdfa  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004dfe02  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004dfe0a  8d7a0c                    LEA EDI,[EDX + 0xc]
004dfe0d  8b860c0c0000              MOV EAX,dword ptr [ESI + 0xc0c]
004dfe13  8bcf                      MOV ECX,EDI
004dfe15  48                        DEC EAX
004dfe16  d1e9                      SHR ECX,0x1
004dfe18  23c8                      AND ECX,EAX
004dfe1a  8b86080c0000              MOV EAX,dword ptr [ESI + 0xc08]
004dfe20  83e701                    AND EDI,0x1
004dfe23  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004dfe26  f30f1044fe04              MOVSS XMM0,dword ptr [ESI + EDI*0x8 + 0x4]
004dfe2c  f30f5c14fe                SUBSS XMM2,dword ptr [ESI + EDI*0x8]
004dfe31  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfe34  f30f5cd8                  SUBSS XMM3,XMM0
004dfe38  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
004dfe3b  83c20d                    ADD EDX,0xd
004dfe3e  8bca                      MOV ECX,EDX
004dfe40  83e201                    AND EDX,0x1
004dfe43  d1e9                      SHR ECX,0x1
004dfe45  f30f10889c030000          MOVSS XMM1,dword ptr [EAX + 0x39c]
004dfe4d  8b800c0c0000              MOV EAX,dword ptr [EAX + 0xc0c]
004dfe53  48                        DEC EAX
004dfe54  f30f59d4                  MULSS XMM2,XMM4
004dfe58  23c8                      AND ECX,EAX
004dfe5a  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfe5d  f30f59dc                  MULSS XMM3,XMM4
004dfe61  f30f59d1                  MULSS XMM2,XMM1
004dfe65  8b80080c0000              MOV EAX,dword ptr [EAX + 0xc08]
004dfe6b  f30f59d9                  MULSS XMM3,XMM1
004dfe6f  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dfe72  f30f5814d0                ADDSS XMM2,dword ptr [EAX + EDX*0x8]
004dfe77  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
004dfe7c  f30f585cd004              ADDSS XMM3,dword ptr [EAX + EDX*0x8 + 0x4]
004dfe82  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
004dfe88  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
004dfe8e  8b96100c0000              MOV EDX,dword ptr [ESI + 0xc10]
004dfe94  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004dfe9c  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004dfea4  8d7a0f                    LEA EDI,[EDX + 0xf]
004dfea7  8b860c0c0000              MOV EAX,dword ptr [ESI + 0xc0c]
004dfead  8bcf                      MOV ECX,EDI
004dfeaf  48                        DEC EAX
004dfeb0  d1e9                      SHR ECX,0x1
004dfeb2  23c8                      AND ECX,EAX
004dfeb4  83e701                    AND EDI,0x1
004dfeb7  8b86080c0000              MOV EAX,dword ptr [ESI + 0xc08]
004dfebd  83c210                    ADD EDX,0x10
004dfec0  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004dfec3  8bca                      MOV ECX,EDX
004dfec5  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfec8  d1e9                      SHR ECX,0x1
004dfeca  f30f5c14fe                SUBSS XMM2,dword ptr [ESI + EDI*0x8]
004dfecf  f30f10889c030000          MOVSS XMM1,dword ptr [EAX + 0x39c]
004dfed7  8b800c0c0000              MOV EAX,dword ptr [EAX + 0xc0c]
004dfedd  f30f1044fe04              MOVSS XMM0,dword ptr [ESI + EDI*0x8 + 0x4]
004dfee3  48                        DEC EAX
004dfee4  23c8                      AND ECX,EAX
004dfee6  8b7da8                    MOV EDI,dword ptr [EBP + -0x58]
004dfee9  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dfeec  f30f5cd8                  SUBSS XMM3,XMM0
004dfef0  f30f59d4                  MULSS XMM2,XMM4
004dfef4  83e201                    AND EDX,0x1
004dfef7  8b80080c0000              MOV EAX,dword ptr [EAX + 0xc08]
004dfefd  f30f59d1                  MULSS XMM2,XMM1
004dff01  f30f59dc                  MULSS XMM3,XMM4
004dff05  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dff08  f30f59d9                  MULSS XMM3,XMM1
004dff0c  f30f5814d0                ADDSS XMM2,dword ptr [EAX + EDX*0x8]
004dff11  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
004dff16  f30f585cd004              ADDSS XMM3,dword ptr [EAX + EDX*0x8 + 0x4]
004dff1c  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
004dff22  eb08                      JMP 0x004dff2c
004dff24  f30f102598a1ba00          MOVSS XMM4,dword ptr [0x00baa198]
004dff2c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004dff32  85c0                      TEST EAX,EAX
004dff34  0f840f070000              JZ 0x004e0649
004dff3a  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
004dff41  0f8402070000              JZ 0x004e0649
004dff47  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004dff4f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004dff57  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
004dff5d  8bc2                      MOV EAX,EDX
004dff5f  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
004dff65  83e201                    AND EDX,0x1
004dff68  d1e8                      SHR EAX,0x1
004dff6a  49                        DEC ECX
004dff6b  23c8                      AND ECX,EAX
004dff6d  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004dff73  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dff76  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004dff7b  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
004dff81  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004dff87  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
004dff8f  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
004dff97  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004dff9d  f30f59c4                  MULSS XMM0,XMM4
004dffa1  f30f59cc                  MULSS XMM1,XMM4
004dffa5  8d5001                    LEA EDX,[EAX + 0x1]
004dffa8  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004dffae  48                        DEC EAX
004dffaf  8bca                      MOV ECX,EDX
004dffb1  d1e9                      SHR ECX,0x1
004dffb3  83e201                    AND EDX,0x1
004dffb6  23c8                      AND ECX,EAX
004dffb8  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004dffbe  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dffc1  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
004dffc6  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
004dffcc  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
004dffd2  8d5002                    LEA EDX,[EAX + 0x2]
004dffd5  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004dffdb  48                        DEC EAX
004dffdc  8bca                      MOV ECX,EDX
004dffde  d1e9                      SHR ECX,0x1
004dffe0  83e201                    AND EDX,0x1
004dffe3  23c8                      AND ECX,EAX
004dffe5  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004dffeb  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004dffee  c704d00000a0c1            MOV dword ptr [EAX + EDX*0x8],0xc1a00000
004dfff5  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
004dfffd  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004e0003  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004e0009  83c1fd                    ADD ECX,-0x3
004e000c  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004e0012  03d1                      ADD EDX,ECX
004e0014  48                        DEC EAX
004e0015  8bca                      MOV ECX,EDX
004e0017  d1e9                      SHR ECX,0x1
004e0019  83e201                    AND EDX,0x1
004e001c  23c8                      AND ECX,EAX
004e001e  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004e0024  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004e0027  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004e002d  8904d1                    MOV dword ptr [ECX + EDX*0x8],EAX
004e0030  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004e0036  8944d104                  MOV dword ptr [ECX + EDX*0x8 + 0x4],EAX
004e003a  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004e0040  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004e0046  83c1fe                    ADD ECX,-0x2
004e0049  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004e004f  03d1                      ADD EDX,ECX
004e0051  8bca                      MOV ECX,EDX
004e0053  48                        DEC EAX
004e0054  d1e9                      SHR ECX,0x1
004e0056  83e201                    AND EDX,0x1
004e0059  23c8                      AND ECX,EAX
004e005b  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004e0061  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004e0064  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
004e006a  8904d1                    MOV dword ptr [ECX + EDX*0x8],EAX
004e006d  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
004e0073  8944d104                  MOV dword ptr [ECX + EDX*0x8 + 0x4],EAX
004e0077  8b8f100c0000              MOV ECX,dword ptr [EDI + 0xc10]
004e007d  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
004e0083  49                        DEC ECX
004e0084  8b870c0c0000              MOV EAX,dword ptr [EDI + 0xc0c]
004e008a  03d1                      ADD EDX,ECX
004e008c  8bca                      MOV ECX,EDX
004e008e  d1e9                      SHR ECX,0x1
004e0090  ff7588                    PUSH dword ptr [EBP + -0x78]
004e0093  48                        DEC EAX
004e0094  83e201                    AND EDX,0x1
004e0097  23c8                      AND ECX,EAX
004e0099  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
004e009f  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004e00a2  8b8750030000              MOV EAX,dword ptr [EDI + 0x350]
004e00a8  8904d1                    MOV dword ptr [ECX + EDX*0x8],EAX
004e00ab  c744d10400000000          MOV dword ptr [ECX + EDX*0x8 + 0x4],0x0
004e00b3  8bcf                      MOV ECX,EDI
004e00b5  e8e68e0000                CALL 0x004e8fa0
004e00ba  e98a050000                JMP 0x004e0649
004e00bf  a17816c700                MOV EAX,[0x00c71678]
004e00c4  8db7b00b0000              LEA ESI,[EDI + 0xbb0]
004e00ca  f30f101da4a3ba00          MOVSS XMM3,dword ptr [0x00baa3a4]
004e00d2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004e00d8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e00de  85c0                      TEST EAX,EAX
004e00e0  742b                      JZ 0x004e010d
004e00e2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e00ea  8d873c030000              LEA EAX,[EDI + 0x33c]
004e00f0  f30f59c3                  MULSS XMM0,XMM3
004e00f4  6884030000                PUSH 0x384
004e00f9  50                        PUSH EAX
004e00fa  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e0102  e879dcfeff                CALL 0x004cdd80
004e0107  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e010d  83f808                    CMP EAX,0x8
004e0110  0f879c030000              JA 0x004e04b2
004e0116  ff248570074e00            JMP dword ptr [EAX*0x4 + 0x4e0770]
004e011d  68804ec300                PUSH 0xc34e80
004e0122  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e0128  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004e0132  e8b970f2ff                CALL 0x004071f0
004e0137  e976030000                JMP 0x004e04b2
004e013c  6830ddb100                PUSH 0xb1dd30
004e0141  8d4dbc                    LEA ECX,[EBP + -0x44]
004e0144  e8f7c1f2ff                CALL 0x0040c340
004e0149  6830ddb100                PUSH 0xb1dd30
004e014e  8d4dd4                    LEA ECX,[EBP + -0x2c]
004e0151  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004e0158  e8e3c1f2ff                CALL 0x0040c340
004e015d  51                        PUSH ECX
004e015e  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004e0162  8d45bc                    LEA EAX,[EBP + -0x44]
004e0165  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004e016c  8bcf                      MOV ECX,EDI
004e016e  50                        PUSH EAX
004e016f  8d45d4                    LEA EAX,[EBP + -0x2c]
004e0172  50                        PUSH EAX
004e0173  e8b8111e00                CALL 0x006c1330
004e0178  8d4dd4                    LEA ECX,[EBP + -0x2c]
004e017b  e8c0cef2ff                CALL 0x0040d040
004e0180  8d4dbc                    LEA ECX,[EBP + -0x44]
004e0183  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e018a  e8b1cef2ff                CALL 0x0040d040
004e018f  6a00                      PUSH 0x0
004e0191  51                        PUSH ECX
004e0192  8d8f14040000              LEA ECX,[EDI + 0x414]
004e0198  c704243333333f            MOV dword ptr [ESP],0x3f333333
004e019f  e89c513000                CALL 0x007e5340
004e01a4  ff7720                    PUSH dword ptr [EDI + 0x20]
004e01a7  8bcf                      MOV ECX,EDI
004e01a9  6a03                      PUSH 0x3
004e01ab  e860c51c00                CALL 0x006ac710
004e01b0  84c0                      TEST AL,AL
004e01b2  0f84fa020000              JZ 0x004e04b2
004e01b8  8bcf                      MOV ECX,EDI
004e01ba  e881e61d00                CALL 0x006be840
004e01bf  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
004e01c7  f30f1025d0a8ba00          MOVSS XMM4,dword ptr [0x00baa8d0]
004e01cf  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004e01d7  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004e01df  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004e01e7  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004e01ef  0f28c2                    MOVAPS XMM0,XMM2
004e01f2  f30f11559c                MOVSS dword ptr [EBP + -0x64],XMM2
004e01f7  0f54c3                    ANDPS XMM0,XMM3
004e01fa  0f2fe0                    COMISS XMM4,XMM0
004e01fd  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
004e0202  7741                      JA 0x004e0245
004e0204  0f28c1                    MOVAPS XMM0,XMM1
004e0207  0f54c3                    ANDPS XMM0,XMM3
004e020a  0f2fe0                    COMISS XMM4,XMM0
004e020d  0f869f020000              JBE 0x004e04b2
004e0213  0f28c1                    MOVAPS XMM0,XMM1
004e0216  f30f59c1                  MULSS XMM0,XMM1
004e021a  0f28ca                    MOVAPS XMM1,XMM2
004e021d  f30f59ca                  MULSS XMM1,XMM2
004e0221  f30f58c1                  ADDSS XMM0,XMM1
004e0225  e82658f5ff                CALL 0x00435a50
004e022a  f30f100d08abba00          MOVSS XMM1,dword ptr [0x00baab08]
004e0232  0f2fc8                    COMISS XMM1,XMM0
004e0235  0f8677020000              JBE 0x004e04b2
004e023b  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
004e0240  f30f10559c                MOVSS XMM2,dword ptr [EBP + -0x64]
004e0245  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e024f  f30f1116                  MOVSS dword ptr [ESI],XMM2
004e0253  f30f114e04                MOVSS dword ptr [ESI + 0x4],XMM1
004e0258  e955020000                JMP 0x004e04b2
004e025d  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
004e0262  8d4f48                    LEA ECX,[EDI + 0x48]
004e0265  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004e0269  0f28d3                    MOVAPS XMM2,XMM3
004e026c  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004e0273  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e027a  0f2fd0                    COMISS XMM2,XMM0
004e027d  6a00                      PUSH 0x0
004e027f  761b                      JBE 0x004e029c
004e0281  0f57c0                    XORPS XMM0,XMM0
004e0284  ba68e1b100                MOV EDX,0xb1e168
004e0289  0f2fc3                    COMISS XMM0,XMM3
004e028c  b844e1b100                MOV EAX,0xb1e144
004e0291  0f46c2                    CMOVBE EAX,EDX
004e0294  50                        PUSH EAX
004e0295  e8e6a0f2ff                CALL 0x0040a380
004e029a  eb19                      JMP 0x004e02b5
004e029c  682005b600                PUSH 0xb60520
004e02a1  e8daa0f2ff                CALL 0x0040a380
004e02a6  0f57c0                    XORPS XMM0,XMM0
004e02a9  0f2f06                    COMISS XMM0,dword ptr [ESI]
004e02ac  0f97c0                    SETA AL
004e02af  888748010000              MOV byte ptr [EDI + 0x148],AL
004e02b5  68dcd2b100                PUSH 0xb1d2dc
004e02ba  8d4f48                    LEA ECX,[EDI + 0x48]
004e02bd  e86eadf2ff                CALL 0x0040b030
004e02c2  84c0                      TEST AL,AL
004e02c4  0f84cd010000              JZ 0x004e0497
004e02ca  8bcf                      MOV ECX,EDI
004e02cc  e86fe51d00                CALL 0x006be840
004e02d1  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004e02d9  8bf0                      MOV ESI,EAX
004e02db  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e02e3  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004e02eb  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004e02f3  f30f59c0                  MULSS XMM0,XMM0
004e02f7  f30f59c9                  MULSS XMM1,XMM1
004e02fb  f30f58c1                  ADDSS XMM0,XMM1
004e02ff  e84c57f5ff                CALL 0x00435a50
004e0304  0f28e8                    MOVAPS XMM5,XMM0
004e0307  8d97b00b0000              LEA EDX,[EDI + 0xbb0]
004e030d  f30f592d20a1ba00          MULSS XMM5,dword ptr [0x00baa120]
004e0315  8d4d84                    LEA ECX,[EBP + -0x7c]
004e0318  e853ee1900                CALL 0x0067f170
004e031d  0f28cd                    MOVAPS XMM1,XMM5
004e0320  8d4598                    LEA EAX,[EBP + -0x68]
004e0323  f30f598e60030000          MULSS XMM1,dword ptr [ESI + 0x360]
004e032b  8d4d8c                    LEA ECX,[EBP + -0x74]
004e032e  50                        PUSH EAX
004e032f  f30f59ae64030000          MULSS XMM5,dword ptr [ESI + 0x364]
004e0337  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
004e033f  f30f58ae40030000          ADDSS XMM5,dword ptr [ESI + 0x340]
004e0347  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e034f  f30f5caf40030000          SUBSS XMM5,dword ptr [EDI + 0x340]
004e0357  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
004e035c  f30f116d90                MOVSS dword ptr [EBP + -0x70],XMM5
004e0361  e8cafc5200                CALL 0x00a10030
004e0366  f30f104d84                MOVSS XMM1,dword ptr [EBP + -0x7c]
004e036b  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004e0370  e8eb99fbff                CALL 0x00499d60
004e0375  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e037d  f30f104d98                MOVSS XMM1,dword ptr [EBP + -0x68]
004e0382  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004e0387  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
004e038c  e8cf99fbff                CALL 0x00499d60
004e0391  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e0399  f30f5c45a0                SUBSS XMM0,dword ptr [EBP + -0x60]
004e039e  e89d231a00                CALL 0x00682740
004e03a3  f30f5f0530aeba00          MAXSS XMM0,dword ptr [0x00baae30]
004e03ab  f30f5d0524a9ba00          MINSS XMM0,dword ptr [0x00baa924]
004e03b3  f30f5845a0                ADDSS XMM0,dword ptr [EBP + -0x60]
004e03b8  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e03c0  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004e03c5  e876d1f3ff                CALL 0x0041d540
004e03ca  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004e03cf  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004e03d4  e847d1f3ff                CALL 0x0041d520
004e03d9  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004e03de  e87deb2000                CALL 0x006eef60
004e03e3  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
004e03e8  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
004e03ed  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004e03f5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e03fb  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004e0403  50                        PUSH EAX
004e0404  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004e040c  6a00                      PUSH 0x0
004e040e  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004e0416  57                        PUSH EDI
004e0417  6840b6c700                PUSH 0xc7b640
004e041c  8d458c                    LEA EAX,[EBP + -0x74]
004e041f  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
004e0424  50                        PUSH EAX
004e0425  6a0a                      PUSH 0xa
004e0427  6861030000                PUSH 0x361
004e042c  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
004e0431  e8ea86f4ff                CALL 0x00428b20
004e0436  8bf0                      MOV ESI,EAX
004e0438  57                        PUSH EDI
004e0439  8bce                      MOV ECX,ESI
004e043b  e8608e1c00                CALL 0x006a92a0
004e0440  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
004e0445  8bcf                      MOV ECX,EDI
004e0447  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
004e044f  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
004e0454  56                        PUSH ESI
004e0455  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
004e045d  e87e8e1c00                CALL 0x006a92e0
004e0462  8b06                      MOV EAX,dword ptr [ESI]
004e0464  8bce                      MOV ECX,ESI
004e0466  ff500c                    CALL dword ptr [EAX + 0xc]
004e0469  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004e0471  51                        PUSH ECX
004e0472  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e0479  6a00                      PUSH 0x0
004e047b  6a02                      PUSH 0x2
004e047d  68e2000000                PUSH 0xe2
004e0482  e8e95f1d00                CALL 0x006b6470
004e0487  c787340c000000002043      MOV dword ptr [EDI + 0xc34],0x43200000
004e0491  8db7b00b0000              LEA ESI,[EDI + 0xbb0]
004e0497  68eca4b100                PUSH 0xb1a4ec
004e049c  8d4f48                    LEA ECX,[EDI + 0x48]
004e049f  e8aca0f2ff                CALL 0x0040a550
004e04a4  84c0                      TEST AL,AL
004e04a6  740a                      JZ 0x004e04b2
004e04a8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004e04b2  8bcf                      MOV ECX,EDI
004e04b4  e82763f7ff                CALL 0x004567e0
004e04b9  85c0                      TEST EAX,EAX
004e04bb  0f8488010000              JZ 0x004e0649
004e04c1  8b80c4030000              MOV EAX,dword ptr [EAX + 0x3c4]
004e04c7  894580                    MOV dword ptr [EBP + -0x80],EAX
004e04ca  85c0                      TEST EAX,EAX
004e04cc  0f8477010000              JZ 0x004e0649
004e04d2  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004e04da  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004e04e2  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004e04ec  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004e04f4  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
004e04fc  0f28c1                    MOVAPS XMM0,XMM1
004e04ff  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
004e0504  f30f59c1                  MULSS XMM0,XMM1
004e0508  0f28ca                    MOVAPS XMM1,XMM2
004e050b  f30f59ca                  MULSS XMM1,XMM2
004e050f  f30f1155a0                MOVSS dword ptr [EBP + -0x60],XMM2
004e0514  f30f58c1                  ADDSS XMM0,XMM1
004e0518  e83355f5ff                CALL 0x00435a50
004e051d  f30f105da0                MOVSS XMM3,dword ptr [EBP + -0x60]
004e0522  0f28e0                    MOVAPS XMM4,XMM0
004e0525  f30f107594                MOVSS XMM6,dword ptr [EBP + -0x6c]
004e052a  0f57c9                    XORPS XMM1,XMM1
004e052d  0f2fe1                    COMISS XMM4,XMM1
004e0530  7617                      JBE 0x004e0549
004e0532  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004e053a  f30f5ed4                  DIVSS XMM2,XMM4
004e053e  0f28c2                    MOVAPS XMM0,XMM2
004e0541  f30f59f2                  MULSS XMM6,XMM2
004e0545  f30f59d8                  MULSS XMM3,XMM0
004e0549  f30f5ca7340c0000          SUBSS XMM4,dword ptr [EDI + 0xc34]
004e0551  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004e0559  8d4d9c                    LEA ECX,[EBP + -0x64]
004e055c  8d4588                    LEA EAX,[EBP + -0x78]
004e055f  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
004e0566  0f2fe1                    COMISS XMM4,XMM1
004e0569  f30f116588                MOVSS dword ptr [EBP + -0x78],XMM4
004e056e  0f46c1                    CMOVBE EAX,ECX
004e0571  8d4d8c                    LEA ECX,[EBP + -0x74]
004e0574  f30f1028                  MOVSS XMM5,dword ptr [EAX]
004e0578  0f28e5                    MOVAPS XMM4,XMM5
004e057b  8b4580                    MOV EAX,dword ptr [EBP + -0x80]
004e057e  f30f59e3                  MULSS XMM4,XMM3
004e0582  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
004e058a  f30f59ee                  MULSS XMM5,XMM6
004e058e  f30f592550a1ba00          MULSS XMM4,dword ptr [0x00baa150]
004e0596  f30f592d50a1ba00          MULSS XMM5,dword ptr [0x00baa150]
004e059e  0f28cc                    MOVAPS XMM1,XMM4
004e05a1  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
004e05a9  f30f59cb                  MULSS XMM1,XMM3
004e05ad  f30f5cc1                  SUBSS XMM0,XMM1
004e05b1  0f28cd                    MOVAPS XMM1,XMM5
004e05b4  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
004e05bc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e05c4  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004e05cc  f30f59cb                  MULSS XMM1,XMM3
004e05d0  f30f5cc1                  SUBSS XMM0,XMM1
004e05d4  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e05dc  f30f10809c030000          MOVSS XMM0,dword ptr [EAX + 0x39c]
004e05e4  f30f59e0                  MULSS XMM4,XMM0
004e05e8  f30f59e8                  MULSS XMM5,XMM0
004e05ec  f30f58a060030000          ADDSS XMM4,dword ptr [EAX + 0x360]
004e05f4  f30f58a864030000          ADDSS XMM5,dword ptr [EAX + 0x364]
004e05fc  f30f11a060030000          MOVSS dword ptr [EAX + 0x360],XMM4
004e0604  f30f11a864030000          MOVSS dword ptr [EAX + 0x364],XMM5
004e060c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004e0614  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004e061c  8d45a4                    LEA EAX,[EBP + -0x5c]
004e061f  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004e0627  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004e062f  50                        PUSH EAX
004e0630  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
004e0635  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
004e063a  e8f1f95200                CALL 0x00a10030
004e063f  8b08                      MOV ECX,dword ptr [EAX]
004e0641  890e                      MOV dword ptr [ESI],ECX
004e0643  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004e0646  894604                    MOV dword ptr [ESI + 0x4],EAX
004e0649  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e064c  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e0653  59                        POP ECX
004e0654  5f                        POP EDI
004e0655  5e                        POP ESI
004e0656  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004e0659  33cd                      XOR ECX,EBP
004e065b  e8cbea6000                CALL 0x00aef12b
004e0660  8be5                      MOV ESP,EBP
004e0662  5d                        POP EBP
004e0663  8be3                      MOV ESP,EBX
004e0665  5b                        POP EBX
004e0666  c3                        RET
004e0667  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e066f  8d4f48                    LEA ECX,[EDI + 0x48]
004e0672  f30f59c3                  MULSS XMM0,XMM3
004e0676  6a00                      PUSH 0x0
004e0678  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e0680  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
004e0685  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004e0689  0f28d3                    MOVAPS XMM2,XMM3
004e068c  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004e0693  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e069a  0f2fd0                    COMISS XMM2,XMM0
004e069d  761b                      JBE 0x004e06ba
004e069f  0f57c0                    XORPS XMM0,XMM0
004e06a2  ba5c05b600                MOV EDX,0xb6055c
004e06a7  0f2fc3                    COMISS XMM0,XMM3
004e06aa  b83005b600                MOV EAX,0xb60530
004e06af  0f46c2                    CMOVBE EAX,EDX
004e06b2  50                        PUSH EAX
004e06b3  e8c89cf2ff                CALL 0x0040a380
004e06b8  eb19                      JMP 0x004e06d3
004e06ba  686805b600                PUSH 0xb60568
004e06bf  e8bc9cf2ff                CALL 0x0040a380
004e06c4  0f57c0                    XORPS XMM0,XMM0
004e06c7  0f2f06                    COMISS XMM0,dword ptr [ESI]
004e06ca  0f97c0                    SETA AL
004e06cd  888748010000              MOV byte ptr [EDI + 0x148],AL
004e06d3  f30f108f340c0000          MOVSS XMM1,dword ptr [EDI + 0xc34]
004e06db  8bcf                      MOV ECX,EDI
004e06dd  f30f5c0d20a2ba00          SUBSS XMM1,dword ptr [0x00baa220]
004e06e5  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
004e06ed  f30f5fc1                  MAXSS XMM0,XMM1
004e06f1  f30f1187340c0000          MOVSS dword ptr [EDI + 0xc34],XMM0
004e06f9  e8e260f7ff                CALL 0x004567e0
004e06fe  85c0                      TEST EAX,EAX
004e0700  0f84a2fdffff              JZ 0x004e04a8
004e0706  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
004e070e  0f57c9                    XORPS XMM1,XMM1
004e0711  f30f5cc1                  SUBSS XMM0,XMM1
004e0715  8bcf                      MOV ECX,EDI
004e0717  f30f5e055caaba00          DIVSS XMM0,dword ptr [0x00baaa5c]
004e071f  f30f5fc1                  MAXSS XMM0,XMM1
004e0723  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004e072b  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004e0733  f30f58c1                  ADDSS XMM0,XMM1
004e0737  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004e073c  e89f60f7ff                CALL 0x004567e0
004e0741  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004e0746  8bcf                      MOV ECX,EDI
004e0748  f30f1180340c0000          MOVSS dword ptr [EAX + 0xc34],XMM0
004e0750  e88b60f7ff                CALL 0x004567e0
004e0755  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
004e075f  c780500300000000c0c1      MOV dword ptr [EAX + 0x350],0xc1c00000
004e0769  e944fdffff                JMP 0x004e04b2
