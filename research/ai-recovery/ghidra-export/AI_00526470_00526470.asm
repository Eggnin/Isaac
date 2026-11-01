; J460 NPC AI 0x00526470 AI_00526470
; types=29,34,54,86,246,305,840
; identities=246.0.0,246.1.0,29.0.0,29.1.0,29.2.0,29.3.0,305.0.0,34.0.0,34.1.0,54.0.0,840.0.0,86.0.0
; entry=00526470
00526470  53                        PUSH EBX
00526471  8bdc                      MOV EBX,ESP
00526473  83ec08                    SUB ESP,0x8
00526476  83e4f8                    AND ESP,0xfffffff8
00526479  83c404                    ADD ESP,0x4
0052647c  55                        PUSH EBP
0052647d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00526480  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00526484  8bec                      MOV EBP,ESP
00526486  6aff                      PUSH -0x1
00526488  68f045af00                PUSH 0xaf45f0
0052648d  64a100000000              MOV EAX,FS:[0x0]
00526493  50                        PUSH EAX
00526494  53                        PUSH EBX
00526495  81ec28030000              SUB ESP,0x328
0052649b  a1b493bf00                MOV EAX,[0x00bf93b4]
005264a0  33c5                      XOR EAX,EBP
005264a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005264a5  56                        PUSH ESI
005264a6  57                        PUSH EDI
005264a7  50                        PUSH EAX
005264a8  8d45f4                    LEA EAX,[EBP + -0xc]
005264ab  64a300000000              MOV FS:[0x0],EAX
005264b1  8bf9                      MOV EDI,ECX
005264b3  89bd5cfdffff              MOV dword ptr [EBP + 0xfffffd5c],EDI
005264b9  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
005264bf  85d2                      TEST EDX,EDX
005264c1  0f8524010000              JNZ 0x005265eb
005264c7  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005264ca  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005264d4  83f856                    CMP EAX,0x56
005264d7  740f                      JZ 0x005264e8
005264d9  83f81d                    CMP EAX,0x1d
005264dc  7568                      JNZ 0x00526546
005264de  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
005264e2  0f85a2290000              JNZ 0x00528e8a
005264e8  0f280590c2ba00            MOVAPS XMM0,xmmword ptr [0x00bac290]
005264ef  8d8520fdffff              LEA EAX,[EBP + 0xfffffd20]
005264f5  81c7e4010000              ADD EDI,0x1e4
005264fb  c78540fdffff00000000      MOV dword ptr [EBP + 0xfffffd40],0x0
00526505  c78544fdffff00000000      MOV dword ptr [EBP + 0xfffffd44],0x0
0052650f  0f57c9                    XORPS XMM1,XMM1
00526512  c78548fdffff00000000      MOV dword ptr [EBP + 0xfffffd48],0x0
0052651c  3bf8                      CMP EDI,EAX
0052651e  0f8466290000              JZ 0x00528e8a
00526524  8b8548fdffff              MOV EAX,dword ptr [EBP + 0xfffffd48]
0052652a  0f1107                    MOVUPS xmmword ptr [EDI],XMM0
0052652d  f30f7e8540fdffff          MOVQ XMM0,qword ptr [EBP + 0xfffffd40]
00526535  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0052653a  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
0052653e  894728                    MOV dword ptr [EDI + 0x28],EAX
00526541  e944290000                JMP 0x00528e8a
00526546  83f836                    CMP EAX,0x36
00526549  753b                      JNZ 0x00526586
0052654b  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00526552  8d45c0                    LEA EAX,[EBP + -0x40]
00526555  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00526559  c745e09190103e            MOV dword ptr [EBP + -0x20],0x3e109091
00526560  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00526566  0f57c0                    XORPS XMM0,XMM0
00526569  c745e4f9f8f83d            MOV dword ptr [EBP + -0x1c],0x3df8f8f9
00526570  50                        PUSH EAX
00526571  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00526575  c745e8e1e0e03d            MOV dword ptr [EBP + -0x18],0x3de0e0e1
0052657c  e86f0ceeff                CALL 0x004071f0
00526581  e904290000                JMP 0x00528e8a
00526586  3df6000000                CMP EAX,0xf6
0052658b  751f                      JNZ 0x005265ac
0052658d  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00526591  0f85f3280000              JNZ 0x00528e8a
00526597  68a44dc300                PUSH 0xc34da4
0052659c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005265a2  e8490ceeff                CALL 0x004071f0
005265a7  e9de280000                JMP 0x00528e8a
005265ac  83f822                    CMP EAX,0x22
005265af  0f85d5280000              JNZ 0x00528e8a
005265b5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005265b9  0f85cb280000              JNZ 0x00528e8a
005265bf  f30f101dd0a0ba00          MOVSS XMM3,dword ptr [0x00baa0d0]
005265c7  8d4dc0                    LEA ECX,[EBP + -0x40]
005265ca  f30f100d8ca0ba00          MOVSS XMM1,dword ptr [0x00baa08c]
005265d2  0f28d3                    MOVAPS XMM2,XMM3
005265d5  e8a6f4f0ff                CALL 0x00435a80
005265da  50                        PUSH EAX
005265db  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005265e1  e80a0ceeff                CALL 0x004071f0
005265e6  e99f280000                JMP 0x00528e8a
005265eb  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
005265f1  33c0                      XOR EAX,EAX
005265f3  81e100800000              AND ECX,0x8000
005265f9  0bc1                      OR EAX,ECX
005265fb  746c                      JZ 0x00526669
005265fd  83bff802000001            CMP dword ptr [EDI + 0x2f8],0x1
00526604  7563                      JNZ 0x00526669
00526606  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0052660e  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00526615  9f                        LAHF
00526616  f6c444                    TEST AH,0x44
00526619  7a15                      JP 0x00526630
0052661b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00526623  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0052662a  9f                        LAHF
0052662b  f6c444                    TEST AH,0x44
0052662e  7b39                      JNP 0x00526669
00526630  83fa04                    CMP EDX,0x4
00526633  7534                      JNZ 0x00526669
00526635  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0052663f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00526649  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00526651  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00526659  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00526661  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00526669  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
0052666c  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
0052666f  89b598fdffff              MOV dword ptr [EBP + 0xfffffd98],ESI
00526675  3bf2                      CMP ESI,EDX
00526677  0f8480010000              JZ 0x005267fd
0052667d  8d4e38                    LEA ECX,[ESI + 0x38]
00526680  898db4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ECX
00526686  8b41d0                    MOV EAX,dword ptr [ECX + -0x30]
00526689  83e002                    AND EAX,0x2
0052668c  83c800                    OR EAX,0x0
0052668f  0f844e010000              JZ 0x005267e3
00526695  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00526698  83f81d                    CMP EAX,0x1d
0052669b  0f85a6000000              JNZ 0x00526747
005266a1  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005266a5  0f8538010000              JNZ 0x005267e3
005266ab  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
005266b3  8bcf                      MOV ECX,EDI
005266b5  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
005266bd  6aff                      PUSH -0x1
005266bf  6a00                      PUSH 0x0
005266c1  6a00                      PUSH 0x0
005266c3  6a36                      PUSH 0x36
005266c5  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
005266cd  e85ea81900                CALL 0x006c0f30
005266d2  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
005266d9  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005266df  8d85f4fcffff              LEA EAX,[EBP + 0xfffffcf4]
005266e5  c78514fdffff9190103e      MOV dword ptr [EBP + 0xfffffd14],0x3e109091
005266ef  c78518fdfffff9f8f83d      MOV dword ptr [EBP + 0xfffffd18],0x3df8f8f9
005266f9  0f57c9                    XORPS XMM1,XMM1
005266fc  c7851cfdffffe1e0e03d      MOV dword ptr [EBP + 0xfffffd1c],0x3de0e0e1
00526706  3bc8                      CMP ECX,EAX
00526708  741d                      JZ 0x00526727
0052670a  8b851cfdffff              MOV EAX,dword ptr [EBP + 0xfffffd1c]
00526710  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00526713  f30f7e8514fdffff          MOVQ XMM0,qword ptr [EBP + 0xfffffd14]
0052671b  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00526720  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00526724  894128                    MOV dword ptr [ECX + 0x28],EAX
00526727  f30f1085a0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda0]
0052672f  f30f598784030000          MULSS XMM0,dword ptr [EDI + 0x384]
00526737  8b8db4fdffff              MOV ECX,dword ptr [EBP + 0xfffffdb4]
0052673d  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00526745  eb09                      JMP 0x00526750
00526747  83f836                    CMP EAX,0x36
0052674a  0f8593000000              JNZ 0x005267e3
00526750  8b470c                    MOV EAX,dword ptr [EDI + 0xc]
00526753  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
00526759  898da0fdffff              MOV dword ptr [EBP + 0xfffffda0],ECX
0052675f  3bc8                      CMP ECX,EAX
00526761  7478                      JZ 0x005267db
00526763  8d51f4                    LEA EDX,[ECX + -0xc]
00526766  8bf9                      MOV EDI,ECX
00526768  8bf0                      MOV ESI,EAX
0052676a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00526770  8b07                      MOV EAX,dword ptr [EDI]
00526772  8d5238                    LEA EDX,[EDX + 0x38]
00526775  89429c                    MOV dword ptr [EDX + -0x64],EAX
00526778  83c738                    ADD EDI,0x38
0052677b  8b42dc                    MOV EAX,dword ptr [EDX + -0x24]
0052677e  8b4ae0                    MOV ECX,dword ptr [EDX + -0x20]
00526781  8942a4                    MOV dword ptr [EDX + -0x5c],EAX
00526784  894aa8                    MOV dword ptr [EDX + -0x58],ECX
00526787  8b42e4                    MOV EAX,dword ptr [EDX + -0x1c]
0052678a  8942ac                    MOV dword ptr [EDX + -0x54],EAX
0052678d  8b42e8                    MOV EAX,dword ptr [EDX + -0x18]
00526790  8942b0                    MOV dword ptr [EDX + -0x50],EAX
00526793  8b42ec                    MOV EAX,dword ptr [EDX + -0x14]
00526796  8942b4                    MOV dword ptr [EDX + -0x4c],EAX
00526799  8b42f0                    MOV EAX,dword ptr [EDX + -0x10]
0052679c  8942b8                    MOV dword ptr [EDX + -0x48],EAX
0052679f  8b42f4                    MOV EAX,dword ptr [EDX + -0xc]
005267a2  8942bc                    MOV dword ptr [EDX + -0x44],EAX
005267a5  8b42f8                    MOV EAX,dword ptr [EDX + -0x8]
005267a8  8942c0                    MOV dword ptr [EDX + -0x40],EAX
005267ab  8b42fc                    MOV EAX,dword ptr [EDX + -0x4]
005267ae  8942c4                    MOV dword ptr [EDX + -0x3c],EAX
005267b1  8b02                      MOV EAX,dword ptr [EDX]
005267b3  8942c8                    MOV dword ptr [EDX + -0x38],EAX
005267b6  8b4204                    MOV EAX,dword ptr [EDX + 0x4]
005267b9  8942cc                    MOV dword ptr [EDX + -0x34],EAX
005267bc  8b4208                    MOV EAX,dword ptr [EDX + 0x8]
005267bf  8942d0                    MOV dword ptr [EDX + -0x30],EAX
005267c2  3bfe                      CMP EDI,ESI
005267c4  75aa                      JNZ 0x00526770
005267c6  8bbd5cfdffff              MOV EDI,dword ptr [EBP + 0xfffffd5c]
005267cc  8bb598fdffff              MOV ESI,dword ptr [EBP + 0xfffffd98]
005267d2  8b8db4fdffff              MOV ECX,dword ptr [EBP + 0xfffffdb4]
005267d8  8b470c                    MOV EAX,dword ptr [EDI + 0xc]
005267db  8d50c8                    LEA EDX,[EAX + -0x38]
005267de  89570c                    MOV dword ptr [EDI + 0xc],EDX
005267e1  eb12                      JMP 0x005267f5
005267e3  83c638                    ADD ESI,0x38
005267e6  83c138                    ADD ECX,0x38
005267e9  89b598fdffff              MOV dword ptr [EBP + 0xfffffd98],ESI
005267ef  898db4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ECX
005267f5  3bf2                      CMP ESI,EDX
005267f7  0f8589feffff              JNZ 0x00526686
005267fd  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00526800  b954bcb100                MOV ECX,0xb1bc54
00526805  898db4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ECX
0052680b  beeca4b100                MOV ESI,0xb1a4ec
00526810  c78598fdffff1cdeb100      MOV dword ptr [EBP + 0xfffffd98],0xb1de1c
0052681a  8bd1                      MOV EDX,ECX
0052681c  83f856                    CMP EAX,0x56
0052681f  7516                      JNZ 0x00526837
00526821  b9dccdb100                MOV ECX,0xb1cddc
00526826  c78598fdffffc8e0b100      MOV dword ptr [EBP + 0xfffffd98],0xb1e0c8
00526830  beec0cb600                MOV ESI,0xb60cec
00526835  eb4b                      JMP 0x00526882
00526837  3d31010000                CMP EAX,0x131
0052683c  7507                      JNZ 0x00526845
0052683e  be54ddb100                MOV ESI,0xb1dd54
00526843  eb43                      JMP 0x00526888
00526845  83f81d                    CMP EAX,0x1d
00526848  753e                      JNZ 0x00526888
0052684a  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0052684e  7538                      JNZ 0x00526888
00526850  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00526856  b928d4b100                MOV ECX,0xb1d428
0052685b  83e001                    AND EAX,0x1
0052685e  c785a0fdffff1cdeb100      MOV dword ptr [EBP + 0xfffffda0],0xb1de1c
00526868  0f44ca                    CMOVZ ECX,EDX
0052686b  a901000000                TEST EAX,0x1
00526870  ba700fb600                MOV EDX,0xb60f70
00526875  0f4495a0fdffff            CMOVZ EDX,dword ptr [EBP + 0xfffffda0]
0052687c  899598fdffff              MOV dword ptr [EBP + 0xfffffd98],EDX
00526882  898db4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ECX
00526888  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052688c  7409                      JZ 0x00526897
0052688e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00526895  7536                      JNZ 0x005268cd
00526897  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0052689d  83f805                    CMP EAX,0x5
005268a0  742b                      JZ 0x005268cd
005268a2  83e803                    SUB EAX,0x3
005268a5  741b                      JZ 0x005268c2
005268a7  83e803                    SUB EAX,0x3
005268aa  740d                      JZ 0x005268b9
005268ac  83e801                    SUB EAX,0x1
005268af  751c                      JNZ 0x005268cd
005268b1  50                        PUSH EAX
005268b2  68780fb600                PUSH 0xb60f78
005268b7  eb0c                      JMP 0x005268c5
005268b9  6a00                      PUSH 0x0
005268bb  6844deb100                PUSH 0xb1de44
005268c0  eb03                      JMP 0x005268c5
005268c2  6a00                      PUSH 0x0
005268c4  51                        PUSH ECX
005268c5  8d4f48                    LEA ECX,[EDI + 0x48]
005268c8  e8b33aeeff                CALL 0x0040a380
005268cd  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005268d0  0f57c0                    XORPS XMM0,XMM0
005268d3  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
005268db  0f57c9                    XORPS XMM1,XMM1
005268de  f30f118d8cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM1
005268e6  c785b0fdffff00000000      MOV dword ptr [EBP + 0xfffffdb0],0x0
005268f0  83f81d                    CMP EAX,0x1d
005268f3  7534                      JNZ 0x00526929
005268f5  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005268f8  83f801                    CMP EAX,0x1
005268fb  7437                      JZ 0x00526934
005268fd  83f802                    CMP EAX,0x2
00526900  750f                      JNZ 0x00526911
00526902  c785b0fdffff08000000      MOV dword ptr [EBP + 0xfffffdb0],0x8
0052690c  e918010000                JMP 0x00526a29
00526911  83f803                    CMP EAX,0x3
00526914  0f850f010000              JNZ 0x00526a29
0052691a  c785b0fdffff1a000000      MOV dword ptr [EBP + 0xfffffdb0],0x1a
00526924  e900010000                JMP 0x00526a29
00526929  3df6000000                CMP EAX,0xf6
0052692e  0f85a0000000              JNZ 0x005269d4
00526934  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052693b  7417                      JZ 0x00526954
0052693d  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
00526945  c785b0fdffff0f000000      MOV dword ptr [EBP + 0xfffffdb0],0xf
0052694f  e9cd000000                JMP 0x00526a21
00526954  e807861c00                CALL 0x006eef60
00526959  0f57c0                    XORPS XMM0,XMM0
0052695c  f20f2ac0                  CVTSI2SD XMM0,EAX
00526960  c1e81f                    SHR EAX,0x1f
00526963  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052696c  660f5ac0                  CVTPD2PS XMM0,XMM0
00526970  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00526978  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00526980  f30f11858cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM0
00526988  e8d3851c00                CALL 0x006eef60
0052698d  f30f108d8cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd8c]
00526995  0f57c0                    XORPS XMM0,XMM0
00526998  f30f588da8fdffff          ADDSS XMM1,dword ptr [EBP + 0xfffffda8]
005269a0  c785b0fdffff0f000000      MOV dword ptr [EBP + 0xfffffdb0],0xf
005269aa  f20f2ac0                  CVTSI2SD XMM0,EAX
005269ae  c1e81f                    SHR EAX,0x1f
005269b1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005269ba  660f5ac0                  CVTPD2PS XMM0,XMM0
005269be  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005269c6  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
005269ce  f30f58c8                  ADDSS XMM1,XMM0
005269d2  eb4d                      JMP 0x00526a21
005269d4  83f836                    CMP EAX,0x36
005269d7  7550                      JNZ 0x00526a29
005269d9  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005269e0  740a                      JZ 0x005269ec
005269e2  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
005269ea  eb35                      JMP 0x00526a21
005269ec  e86f851c00                CALL 0x006eef60
005269f1  660f6ec0                  MOVD XMM0,EAX
005269f5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005269f9  c1e81f                    SHR EAX,0x1f
005269fc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00526a05  660f5ac8                  CVTPD2PS XMM1,XMM0
00526a09  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00526a11  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
00526a19  f30f588da8fdffff          ADDSS XMM1,dword ptr [EBP + 0xfffffda8]
00526a21  f30f118d8cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM1
00526a29  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00526a2c  0f28c1                    MOVAPS XMM0,XMM1
00526a2f  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
00526a37  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
00526a3f  f30f58051caaba00          ADDSS XMM0,dword ptr [0x00baaa1c]
00526a47  f30f118564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM0
00526a4f  3df6000000                CMP EAX,0xf6
00526a54  7506                      JNZ 0x00526a5c
00526a56  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00526a5a  eb09                      JMP 0x00526a65
00526a5c  83f81d                    CMP EAX,0x1d
00526a5f  7512                      JNZ 0x00526a73
00526a61  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00526a65  750c                      JNZ 0x00526a73
00526a67  f30f59c1                  MULSS XMM0,XMM1
00526a6b  f30f118564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM0
00526a73  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00526a7a  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
00526a82  0f84f4000000              JZ 0x00526b7c
00526a88  8d8550fdffff              LEA EAX,[EBP + 0xfffffd50]
00526a8e  0f28d1                    MOVAPS XMM2,XMM1
00526a91  50                        PUSH EAX
00526a92  8bcf                      MOV ECX,EDI
00526a94  e837181b00                CALL 0x006d82d0
00526a99  8bc8                      MOV ECX,EAX
00526a9b  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00526a9f  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00526aa6  9f                        LAHF
00526aa7  f6c444                    TEST AH,0x44
00526aaa  7a1c                      JP 0x00526ac8
00526aac  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00526ab1  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00526ab8  9f                        LAHF
00526ab9  f6c444                    TEST AH,0x44
00526abc  7a0a                      JP 0x00526ac8
00526abe  f30f1085a8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda8]
00526ac6  eb3c                      JMP 0x00526b04
00526ac8  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00526ad0  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
00526ad6  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00526ade  8d8dc4fdffff              LEA ECX,[EBP + 0xfffffdc4]
00526ae4  c785a0fdffff0000f041      MOV dword ptr [EBP + 0xfffffda0],0x41f00000
00526aee  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
00526af5  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
00526afd  0f46c1                    CMOVBE EAX,ECX
00526b00  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00526b04  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00526b0c  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00526b12  83f803                    CMP EAX,0x3
00526b15  7421                      JZ 0x00526b38
00526b17  83f808                    CMP EAX,0x8
00526b1a  741c                      JZ 0x00526b38
00526b1c  83f804                    CMP EAX,0x4
00526b1f  7528                      JNZ 0x00526b49
00526b21  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00526b25  7422                      JZ 0x00526b49
00526b27  6874d5b100                PUSH 0xb1d574
00526b2c  8d4f78                    LEA ECX,[EDI + 0x78]
00526b2f  e83c43eeff                CALL 0x0040ae70
00526b34  84c0                      TEST AL,AL
00526b36  7411                      JZ 0x00526b49
00526b38  f30f109564fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd64]
00526b40  8bcf                      MOV ECX,EDI
00526b42  6a01                      PUSH 0x1
00526b44  e8d71f1b00                CALL 0x006d8b20
00526b49  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00526b4f  83f803                    CMP EAX,0x3
00526b52  7405                      JZ 0x00526b59
00526b54  83f804                    CMP EAX,0x4
00526b57  7523                      JNZ 0x00526b7c
00526b59  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00526b5f  83f8ff                    CMP EAX,-0x1
00526b62  7418                      JZ 0x00526b7c
00526b64  51                        PUSH ECX
00526b65  57                        PUSH EDI
00526b66  50                        PUSH EAX
00526b67  6a09                      PUSH 0x9
00526b69  e8a2f54200                CALL 0x00956110
00526b6e  84c0                      TEST AL,AL
00526b70  740a                      JZ 0x00526b7c
00526b72  c787bc0b00000000803f      MOV dword ptr [EDI + 0xbbc],0x3f800000
00526b7c  51                        PUSH ECX
00526b7d  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
00526b83  c7042400007042            MOV dword ptr [ESP],0x42700000
00526b8a  50                        PUSH EAX
00526b8b  8bcf                      MOV ECX,EDI
00526b8d  e8ae801900                CALL 0x006bec40
00526b92  f30f109580fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd80]
00526b9a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00526ba0  f30f109d84fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd84]
00526ba8  f30f5c11                  SUBSS XMM2,dword ptr [ECX]
00526bac  f30f5c5904                SUBSS XMM3,dword ptr [ECX + 0x4]
00526bb1  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00526bb7  898da0fdffff              MOV dword ptr [EBP + 0xfffffda0],ECX
00526bbd  f30f1195a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM2
00526bc5  f30f119dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM3
00526bcd  83f803                    CMP EAX,0x3
00526bd0  0f8530010000              JNZ 0x00526d06
00526bd6  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00526bde  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00526be5  9f                        LAHF
00526be6  f6c444                    TEST AH,0x44
00526be9  0f8ac8050000              JP 0x005271b7
00526bef  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00526bf7  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00526bfe  9f                        LAHF
00526bff  f6c444                    TEST AH,0x44
00526c02  0f8aaf050000              JP 0x005271b7
00526c08  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00526c0b  83f856                    CMP EAX,0x56
00526c0e  740b                      JZ 0x00526c1b
00526c10  3d31010000                CMP EAX,0x131
00526c15  0f859c050000              JNZ 0x005271b7
00526c1b  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00526c21  25000a0001                AND EAX,0x1000a00
00526c26  83c800                    OR EAX,0x0
00526c29  0f8588050000              JNZ 0x005271b7
00526c2f  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00526c35  85d2                      TEST EDX,EDX
00526c37  0f8ff5000000              JG 0x00526d32
00526c3d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00526c44  741d                      JZ 0x00526c63
00526c46  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00526c4e  8bcf                      MOV ECX,EDI
00526c50  6a07                      PUSH 0x7
00526c52  50                        PUSH EAX
00526c53  e808421a00                CALL 0x006cae60
00526c58  0fb6c0                    MOVZX EAX,AL
00526c5b  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00526c61  eb22                      JMP 0x00526c85
00526c63  0f28c3                    MOVAPS XMM0,XMM3
00526c66  0f28ca                    MOVAPS XMM1,XMM2
00526c69  f30f59c3                  MULSS XMM0,XMM3
00526c6d  33c0                      XOR EAX,EAX
00526c6f  f30f59ca                  MULSS XMM1,XMM2
00526c73  f30f58c8                  ADDSS XMM1,XMM0
00526c77  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
00526c7f  0f2fc1                    COMISS XMM0,XMM1
00526c82  0f97c0                    SETA AL
00526c85  85c0                      TEST EAX,EAX
00526c87  7477                      JZ 0x00526d00
00526c89  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00526c90  7529                      JNZ 0x00526cbb
00526c92  a17816c700                MOV EAX,[0x00c71678]
00526c97  8d9580fdffff              LEA EDX,[EBP + 0xfffffd80]
00526c9d  6a00                      PUSH 0x0
00526c9f  6a00                      PUSH 0x0
00526ca1  6a00                      PUSH 0x0
00526ca3  68e7030000                PUSH 0x3e7
00526ca8  6a03                      PUSH 0x3
00526caa  52                        PUSH EDX
00526cab  51                        PUSH ECX
00526cac  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00526cb2  e839a12c00                CALL 0x007f0df0
00526cb7  84c0                      TEST AL,AL
00526cb9  7445                      JZ 0x00526d00
00526cbb  6a01                      PUSH 0x1
00526cbd  8bcf                      MOV ECX,EDI
00526cbf  e88c231b00                CALL 0x006d9050
00526cc4  6a01                      PUSH 0x1
00526cc6  56                        PUSH ESI
00526cc7  8d4f48                    LEA ECX,[EDI + 0x48]
00526cca  c787a00b000002000000      MOV dword ptr [EDI + 0xba0],0x2
00526cd4  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00526cde  e8ed38eeff                CALL 0x0040a5d0
00526ce3  84c0                      TEST AL,AL
00526ce5  740f                      JZ 0x00526cf6
00526ce7  8d4f78                    LEA ECX,[EDI + 0x78]
00526cea  e8c134eeff                CALL 0x0040a1b0
00526cef  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00526cf6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00526d00  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00526d06  83f808                    CMP EAX,0x8
00526d09  0f85a8040000              JNZ 0x005271b7
00526d0f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00526d16  7539                      JNZ 0x00526d51
00526d18  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00526d20  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
00526d28  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00526d30  eb67                      JMP 0x00526d99
00526d32  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00526d3a  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00526d42  2bc8                      SUB ECX,EAX
00526d44  2bd1                      SUB EDX,ECX
00526d46  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00526d4c  e966040000                JMP 0x005271b7
00526d51  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00526d59  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
00526d5f  50                        PUSH EAX
00526d60  8bcf                      MOV ECX,EDI
00526d62  e839181b00                CALL 0x006d85a0
00526d67  f30f108d78fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd78]
00526d6f  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00526d76  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
00526d7e  9f                        LAHF
00526d7f  f6c444                    TEST AH,0x44
00526d82  7a0d                      JP 0x00526d91
00526d84  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00526d8b  9f                        LAHF
00526d8c  f6c444                    TEST AH,0x44
00526d8f  7b10                      JNP 0x00526da1
00526d91  f30f118f200f0000          MOVSS dword ptr [EDI + 0xf20],XMM1
00526d99  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
00526da1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00526da5  0f84d8030000              JZ 0x00527183
00526dab  68dcd2b100                PUSH 0xb1d2dc
00526db0  8d4f78                    LEA ECX,[EDI + 0x78]
00526db3  e81840eeff                CALL 0x0040add0
00526db8  84c0                      TEST AL,AL
00526dba  0f84b4030000              JZ 0x00527174
00526dc0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00526dc8  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00526dce  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
00526dd6  83f812                    CMP EAX,0x12
00526dd9  750a                      JNZ 0x00526de5
00526ddb  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00526de3  eb0d                      JMP 0x00526df2
00526de5  83f813                    CMP EAX,0x13
00526de8  7510                      JNZ 0x00526dfa
00526dea  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00526df2  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
00526dfa  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00526e00  8d8dc4fdffff              LEA ECX,[EBP + 0xfffffdc4]
00526e06  c785c4fdffffb2000000      MOV dword ptr [EBP + 0xfffffdc4],0xb2
00526e10  e86bf94200                CALL 0x00956780
00526e15  f30f108574fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd74]
00526e1d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00526e23  83ec08                    SUB ESP,0x8
00526e26  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00526e2e  f30f110424                MOVSS dword ptr [ESP],XMM0
00526e33  6a00                      PUSH 0x0
00526e35  6a02                      PUSH 0x2
00526e37  51                        PUSH ECX
00526e38  c704240000803f            MOV dword ptr [ESP],0x3f800000
00526e3f  ffb5c4fdffff              PUSH dword ptr [EBP + 0xfffffdc4]
00526e45  e8e66d4000                CALL 0x0092dc30
00526e4a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00526e51  7444                      JZ 0x00526e97
00526e53  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
00526e5b  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00526e62  9f                        LAHF
00526e63  f6c444                    TEST AH,0x44
00526e66  7a15                      JP 0x00526e7d
00526e68  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
00526e70  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00526e77  9f                        LAHF
00526e78  f6c444                    TEST AH,0x44
00526e7b  7b1a                      JNP 0x00526e97
00526e7d  f30f1097240f0000          MOVSS XMM2,dword ptr [EDI + 0xf24]
00526e85  f30f118da4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM1
00526e8d  f30f1195bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM2
00526e95  eb10                      JMP 0x00526ea7
00526e97  f30f1095bcfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdbc]
00526e9f  f30f108da4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda4]
00526ea7  817f28f6000000            CMP dword ptr [EDI + 0x28],0xf6
00526eae  0f8570010000              JNZ 0x00527024
00526eb4  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00526eba  e87180f1ff                CALL 0x0043ef30
00526ebf  0f2805a0c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac4a0]
00526ec6  8db73c030000              LEA ESI,[EDI + 0x33c]
00526ecc  f30f1095bcfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdbc]
00526ed4  0f57c9                    XORPS XMM1,XMM1
00526ed7  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
00526edd  0f118544ffffff            MOVUPS xmmword ptr [EBP + 0xffffff44],XMM0
00526ee4  818d70ffffff00280000      OR dword ptr [EBP + 0xffffff70],0x2800
00526eee  0f118d54ffffff            MOVUPS xmmword ptr [EBP + 0xffffff54],XMM1
00526ef5  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
00526efb  f30f108da8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda8]
00526f03  0f28c1                    MOVAPS XMM0,XMM1
00526f06  c785f0fcffff00000000      MOV dword ptr [EBP + 0xfffffcf0],0x0
00526f10  8b85f0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcf0]
00526f16  0f14c1                    UNPCKLPS XMM0,XMM1
00526f19  f30f108da4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda4]
00526f21  660fd68564ffffff          MOVQ qword ptr [EBP + 0xffffff64],XMM0
00526f29  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00526f2d  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00526f32  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00526f37  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00526f3c  0f28c1                    MOVAPS XMM0,XMM1
00526f3f  f30f59c1                  MULSS XMM0,XMM1
00526f43  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
00526f49  f30f118d74fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM1
00526f51  0f28ca                    MOVAPS XMM1,XMM2
00526f54  f30f59ca                  MULSS XMM1,XMM2
00526f58  c68518ffffff00            MOV byte ptr [EBP + 0xffffff18],0x0
00526f5f  f30f1195c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM2
00526f67  f30f58c1                  ADDSS XMM0,XMM1
00526f6b  e8e0eaf0ff                CALL 0x00435a50
00526f70  0f2f85a8fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffda8]
00526f77  7621                      JBE 0x00526f9a
00526f79  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00526f81  f30f5ec8                  DIVSS XMM1,XMM0
00526f85  0f28d1                    MOVAPS XMM2,XMM1
00526f88  f30f598dbcfdffff          MULSS XMM1,dword ptr [EBP + 0xfffffdbc]
00526f90  f30f5995a4fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffda4]
00526f98  eb10                      JMP 0x00526faa
00526f9a  f30f108dc4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc4]
00526fa2  f30f109574fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd74]
00526faa  f30f5915b8a7ba00          MULSS XMM2,dword ptr [0x00baa7b8]
00526fb2  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00526fb8  8bcf                      MOV ECX,EDI
00526fba  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
00526fc2  50                        PUSH EAX
00526fc3  6a00                      PUSH 0x0
00526fc5  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
00526fcb  f30f119578fdffff          MOVSS dword ptr [EBP + 0xfffffd78],XMM2
00526fd3  50                        PUSH EAX
00526fd4  56                        PUSH ESI
00526fd5  f30f118d7cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM1
00526fdd  e8fe421a00                CALL 0x006cb2e0
00526fe2  f30f109578fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd78]
00526fea  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00526ff0  f30f108d7cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd7c]
00526ff8  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00526fff  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00527006  50                        PUSH EAX
00527007  f30f119550fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM2
0052700f  8d8550fdffff              LEA EAX,[EBP + 0xfffffd50]
00527015  f30f118d54fdffff          MOVSS dword ptr [EBP + 0xfffffd54],XMM1
0052701d  6a00                      PUSH 0x0
0052701f  e947010000                JMP 0x0052716b
00527024  0f28c1                    MOVAPS XMM0,XMM1
00527027  f30f1195c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM2
0052702f  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
00527037  f30f59c1                  MULSS XMM0,XMM1
0052703b  0f28ca                    MOVAPS XMM1,XMM2
0052703e  f30f59ca                  MULSS XMM1,XMM2
00527042  f30f58c1                  ADDSS XMM0,XMM1
00527046  e805eaf0ff                CALL 0x00435a50
0052704b  0f2f85a8fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffda8]
00527052  7629                      JBE 0x0052707d
00527054  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0052705c  f30f5ed0                  DIVSS XMM2,XMM0
00527060  0f28c2                    MOVAPS XMM0,XMM2
00527063  f30f5995bcfdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdbc]
0052706b  f30f5985a4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffda4]
00527073  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
0052707b  eb10                      JMP 0x0052708d
0052707d  f30f1095c4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc4]
00527085  f30f108574fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd74]
0052708d  817f2831010000            CMP dword ptr [EDI + 0x28],0x131
00527094  8db73c030000              LEA ESI,[EDI + 0x33c]
0052709a  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
005270a2  f30f5915b8a7ba00          MULSS XMM2,dword ptr [0x00baa7b8]
005270aa  f30f118578fdffff          MOVSS dword ptr [EBP + 0xfffffd78],XMM0
005270b2  f30f11957cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM2
005270ba  0f8597000000              JNZ 0x00527157
005270c0  51                        PUSH ECX
005270c1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005270c8  6a00                      PUSH 0x0
005270ca  6a02                      PUSH 0x2
005270cc  51                        PUSH ECX
005270cd  c704240000803f            MOV dword ptr [ESP],0x3f800000
005270d4  8bcf                      MOV ECX,EDI
005270d6  683e010000                PUSH 0x13e
005270db  e8c0fa1a00                CALL 0x006d6ba0
005270e0  8d8dc8fdffff              LEA ECX,[EBP + 0xfffffdc8]
005270e6  e8457ef1ff                CALL 0x0043ef30
005270eb  f30f108d78fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd78]
005270f3  8d85c8fdffff              LEA EAX,[EBP + 0xfffffdc8]
005270f9  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
00527101  f30f580e                  ADDSS XMM1,dword ptr [ESI]
00527105  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0052710a  50                        PUSH EAX
0052710b  51                        PUSH ECX
0052710c  c7042400002041            MOV dword ptr [ESP],0x41200000
00527113  8d8550fdffff              LEA EAX,[EBP + 0xfffffd50]
00527119  50                        PUSH EAX
0052711a  6a05                      PUSH 0x5
0052711c  8bcf                      MOV ECX,EDI
0052711e  c785dcfdffff0000003f      MOV dword ptr [EBP + 0xfffffddc],0x3f000000
00527128  f30f118d50fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM1
00527130  f30f118554fdffff          MOVSS dword ptr [EBP + 0xfffffd54],XMM0
00527138  e8935c1a00                CALL 0x006ccdd0
0052713d  f30f108da8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda8]
00527145  0f2f8d74fdffff            COMISS XMM1,dword ptr [EBP + 0xfffffd74]
0052714c  0f97c0                    SETA AL
0052714f  888748010000              MOV byte ptr [EDI + 0x148],AL
00527155  eb1d                      JMP 0x00527174
00527157  8d8dc8fdffff              LEA ECX,[EBP + 0xfffffdc8]
0052715d  e8ce7df1ff                CALL 0x0043ef30
00527162  50                        PUSH EAX
00527163  6a01                      PUSH 0x1
00527165  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
0052716b  50                        PUSH EAX
0052716c  56                        PUSH ESI
0052716d  8bcf                      MOV ECX,EDI
0052716f  e86c411a00                CALL 0x006cb2e0
00527174  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00527178  7409                      JZ 0x00527183
0052717a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00527181  7534                      JNZ 0x005271b7
00527183  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0052718d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00527197  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052719f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005271a7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005271af  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005271b7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005271bd  be03000000                MOV ESI,0x3
005271c2  89b54cfdffff              MOV dword ptr [EBP + 0xfffffd4c],ESI
005271c8  83f806                    CMP EAX,0x6
005271cb  0f8575010000              JNZ 0x00527346
005271d1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005271d5  7508                      JNZ 0x005271df
005271d7  8b8f1c0f0000              MOV ECX,dword ptr [EDI + 0xf1c]
005271dd  eb17                      JMP 0x005271f6
005271df  6860d5b100                PUSH 0xb1d560
005271e4  8d4f78                    LEA ECX,[EDI + 0x78]
005271e7  e8843ceeff                CALL 0x0040ae70
005271ec  8b8f1c0f0000              MOV ECX,dword ptr [EDI + 0xf1c]
005271f2  84c0                      TEST AL,AL
005271f4  7556                      JNZ 0x0052724c
005271f6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005271fe  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00527206  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00527210  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0052721a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00527222  83f9ff                    CMP ECX,-0x1
00527225  0f84c1110000              JZ 0x005283ec
0052722b  6a01                      PUSH 0x1
0052722d  6a00                      PUSH 0x0
0052722f  8d8f14040000              LEA ECX,[EDI + 0x414]
00527235  51                        PUSH ECX
00527236  c704240000003f            MOV dword ptr [ESP],0x3f000000
0052723d  6840b6c700                PUSH 0xc7b640
00527242  e879c12b00                CALL 0x007e33c0
00527247  e9a0110000                JMP 0x005283ec
0052724c  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00527254  33c0                      XOR EAX,EAX
00527256  f30f58058ca0ba00          ADDSS XMM0,dword ptr [0x00baa08c]
0052725e  83f9ff                    CMP ECX,-0x1
00527261  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0052726b  0f45c6                    CMOVNZ EAX,ESI
0052726e  898784010000              MOV dword ptr [EDI + 0x184],EAX
00527274  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052727c  7445                      JZ 0x005272c3
0052727e  f30f5905a0a1ba00          MULSS XMM0,dword ptr [0x00baa1a0]
00527286  8bcf                      MOV ECX,EDI
00527288  f30f1015c0a4ba00          MOVSS XMM2,dword ptr [0x00baa4c0]
00527290  f30f101dd0a8ba00          MOVSS XMM3,dword ptr [0x00baa8d0]
00527298  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
005272a0  f30f5cd0                  SUBSS XMM2,XMM0
005272a4  e877201b00                CALL 0x006d9320
005272a9  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
005272af  898734030000              MOV dword ptr [EDI + 0x334],EAX
005272b5  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
005272bb  898738030000              MOV dword ptr [EDI + 0x338],EAX
005272c1  eb4d                      JMP 0x00527310
005272c3  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
005272cb  0f28c8                    MOVAPS XMM1,XMM0
005272ce  f30f598f34030000          MULSS XMM1,dword ptr [EDI + 0x334]
005272d6  f30f5cd8                  SUBSS XMM3,XMM0
005272da  0f28d0                    MOVAPS XMM2,XMM0
005272dd  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
005272e5  0f28c3                    MOVAPS XMM0,XMM3
005272e8  f30f599f40030000          MULSS XMM3,dword ptr [EDI + 0x340]
005272f0  f30f59873c030000          MULSS XMM0,dword ptr [EDI + 0x33c]
005272f8  f30f58da                  ADDSS XMM3,XMM2
005272fc  f30f58c1                  ADDSS XMM0,XMM1
00527300  f30f119f40030000          MOVSS dword ptr [EDI + 0x340],XMM3
00527308  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00527310  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00527314  740d                      JZ 0x00527323
00527316  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052731d  0f85c9100000              JNZ 0x005283ec
00527323  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
0052732d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00527337  c7875403000000000000      MOV dword ptr [EDI + 0x354],0x0
00527341  e9a6100000                JMP 0x005283ec
00527346  83f807                    CMP EAX,0x7
00527349  0f8541030000              JNZ 0x00527690
0052734f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00527353  7449                      JZ 0x0052739e
00527355  8d7778                    LEA ESI,[EDI + 0x78]
00527358  6874d5b100                PUSH 0xb1d574
0052735d  8bce                      MOV ECX,ESI
0052735f  e80c3beeff                CALL 0x0040ae70
00527364  84c0                      TEST AL,AL
00527366  7431                      JZ 0x00527399
00527368  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00527370  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00527378  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00527382  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0052738c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00527394  e9d0000000                JMP 0x00527469
00527399  be03000000                MOV ESI,0x3
0052739e  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005273a6  33c0                      XOR EAX,EAX
005273a8  f30f58058ca0ba00          ADDSS XMM0,dword ptr [0x00baa08c]
005273b0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005273b7  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005273c1  0f45c6                    CMOVNZ EAX,ESI
005273c4  898784010000              MOV dword ptr [EDI + 0x184],EAX
005273ca  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005273d2  7445                      JZ 0x00527419
005273d4  f30f5905a0a1ba00          MULSS XMM0,dword ptr [0x00baa1a0]
005273dc  8bcf                      MOV ECX,EDI
005273de  f30f1015c0a4ba00          MOVSS XMM2,dword ptr [0x00baa4c0]
005273e6  f30f101dd0a8ba00          MOVSS XMM3,dword ptr [0x00baa8d0]
005273ee  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
005273f6  f30f5cd0                  SUBSS XMM2,XMM0
005273fa  e8211f1b00                CALL 0x006d9320
005273ff  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00527405  898734030000              MOV dword ptr [EDI + 0x334],EAX
0052740b  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00527411  898738030000              MOV dword ptr [EDI + 0x338],EAX
00527417  eb4d                      JMP 0x00527466
00527419  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00527421  0f28c8                    MOVAPS XMM1,XMM0
00527424  f30f598f34030000          MULSS XMM1,dword ptr [EDI + 0x334]
0052742c  f30f5cd8                  SUBSS XMM3,XMM0
00527430  0f28d0                    MOVAPS XMM2,XMM0
00527433  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
0052743b  0f28c3                    MOVAPS XMM0,XMM3
0052743e  f30f599f40030000          MULSS XMM3,dword ptr [EDI + 0x340]
00527446  f30f59873c030000          MULSS XMM0,dword ptr [EDI + 0x33c]
0052744e  f30f58da                  ADDSS XMM3,XMM2
00527452  f30f58c1                  ADDSS XMM0,XMM1
00527456  f30f119f40030000          MOVSS dword ptr [EDI + 0x340],XMM3
0052745e  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00527466  8d7778                    LEA ESI,[EDI + 0x78]
00527469  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052746d  0f84e4010000              JZ 0x00527657
00527473  6874d5b100                PUSH 0xb1d574
00527478  8bce                      MOV ECX,ESI
0052747a  e85139eeff                CALL 0x0040add0
0052747f  84c0                      TEST AL,AL
00527481  0f84bd010000              JZ 0x00527644
00527487  51                        PUSH ECX
00527488  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052748f  6a00                      PUSH 0x0
00527491  6a02                      PUSH 0x2
00527493  51                        PUSH ECX
00527494  c7042400000040            MOV dword ptr [ESP],0x40000000
0052749b  8bcf                      MOV ECX,EDI
0052749d  6a45                      PUSH 0x45
0052749f  e8fcf61a00                CALL 0x006d6ba0
005274a4  51                        PUSH ECX
005274a5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005274ac  6a00                      PUSH 0x0
005274ae  6a02                      PUSH 0x2
005274b0  51                        PUSH ECX
005274b1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005274b8  8bcf                      MOV ECX,EDI
005274ba  68b2000000                PUSH 0xb2
005274bf  e8dcf61a00                CALL 0x006d6ba0
005274c4  837f2822                  CMP dword ptr [EDI + 0x28],0x22
005274c8  0f85ed000000              JNZ 0x005275bb
005274ce  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005274d2  0f85e3000000              JNZ 0x005275bb
005274d8  e8837a1c00                CALL 0x006eef60
005274dd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005274e3  8db73c030000              LEA ESI,[EDI + 0x33c]
005274e9  50                        PUSH EAX
005274ea  6a00                      PUSH 0x0
005274ec  57                        PUSH EDI
005274ed  6840b6c700                PUSH 0xc7b640
005274f2  56                        PUSH ESI
005274f3  6a1a                      PUSH 0x1a
005274f5  68e8030000                PUSH 0x3e8
005274fa  e82116f0ff                CALL 0x00428b20
005274ff  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00527507  8bc8                      MOV ECX,EAX
00527509  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00527511  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
00527519  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00527521  8b01                      MOV EAX,dword ptr [ECX]
00527523  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
0052752b  c7815c0400002c010000      MOV dword ptr [ECX + 0x45c],0x12c
00527535  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
0052753d  c781600400002c010000      MOV dword ptr [ECX + 0x460],0x12c
00527547  ff500c                    CALL dword ptr [EAX + 0xc]
0052754a  6840b6c700                PUSH 0xc7b640
0052754f  8d87e4010000              LEA EAX,[EDI + 0x1e4]
00527555  8bd6                      MOV EDX,ESI
00527557  50                        PUSH EAX
00527558  6840b6c700                PUSH 0xc7b640
0052755d  b902000000                MOV ECX,0x2
00527562  e889071b00                CALL 0x006d7cf0
00527567  83c40c                    ADD ESP,0xc
0052756a  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00527570  c78058030000000020c1      MOV dword ptr [EAX + 0x358],0xc1200000
0052757a  e8b179f1ff                CALL 0x0043ef30
0052757f  68544ec300                PUSH 0xc34e54
00527584  8d8d9cfeffff              LEA ECX,[EBP + 0xfffffe9c]
0052758a  e861fcedff                CALL 0x004071f0
0052758f  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
00527595  c78584feffff3333333f      MOV dword ptr [EBP + 0xfffffe84],0x3f333333
0052759f  50                        PUSH EAX
005275a0  51                        PUSH ECX
005275a1  c7042400002041            MOV dword ptr [ESP],0x41200000
005275a8  8bcf                      MOV ECX,EDI
005275aa  6840b6c700                PUSH 0xc7b640
005275af  6a06                      PUSH 0x6
005275b1  e81a581a00                CALL 0x006ccdd0
005275b6  e989000000                JMP 0x00527644
005275bb  6840b6c700                PUSH 0xc7b640
005275c0  8d4dc0                    LEA ECX,[EBP + -0x40]
005275c3  e8a8fbedff                CALL 0x00407170
005275c8  50                        PUSH EAX
005275c9  8db73c030000              LEA ESI,[EDI + 0x33c]
005275cf  b902000000                MOV ECX,0x2
005275d4  6840b6c700                PUSH 0xc7b640
005275d9  8bd6                      MOV EDX,ESI
005275db  e810071b00                CALL 0x006d7cf0
005275e0  83c40c                    ADD ESP,0xc
005275e3  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
005275e9  c78058030000000020c1      MOV dword ptr [EAX + 0x358],0xc1200000
005275f3  e83879f1ff                CALL 0x0043ef30
005275f8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005275fe  8b89c8690200              MOV ECX,dword ptr [ECX + 0x269c8]
00527604  83f901                    CMP ECX,0x1
00527607  740f                      JZ 0x00527618
00527609  83f903                    CMP ECX,0x3
0052760c  740a                      JZ 0x00527618
0052760e  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
00527616  eb08                      JMP 0x00527620
00527618  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
00527620  50                        PUSH EAX
00527621  6a06                      PUSH 0x6
00527623  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
00527629  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
00527631  50                        PUSH EAX
00527632  56                        PUSH ESI
00527633  8bcf                      MOV ECX,EDI
00527635  c785a0fdffff00000000      MOV dword ptr [EBP + 0xfffffda0],0x0
0052763f  e89c3c1a00                CALL 0x006cb2e0
00527644  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00527648  740d                      JZ 0x00527657
0052764a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00527651  0f85950d0000              JNZ 0x005283ec
00527657  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00527661  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052766b  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00527673  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052767b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00527683  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052768b  e95c0d0000                JMP 0x005283ec
00527690  83f803                    CMP EAX,0x3
00527693  0f85c7050000              JNZ 0x00527c60
00527699  8b8db0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdb0]
0052769f  398f10040000              CMP dword ptr [EDI + 0x410],ECX
005276a5  0f8c410d0000              JL 0x005283ec
005276ab  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005276b3  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005276ba  9f                        LAHF
005276bb  f6c444                    TEST AH,0x44
005276be  0f8a280d0000              JP 0x005283ec
005276c4  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005276cc  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005276d3  9f                        LAHF
005276d4  f6c444                    TEST AH,0x44
005276d7  0f8a0f0d0000              JP 0x005283ec
005276dd  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005276e4  f30f108da4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda4]
005276ec  f30f1095bcfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdbc]
005276f4  0f28d9                    MOVAPS XMM3,XMM1
005276f7  0f28c2                    MOVAPS XMM0,XMM2
005276fa  f30f59d9                  MULSS XMM3,XMM1
005276fe  f30f59c2                  MULSS XMM0,XMM2
00527702  f30f58d8                  ADDSS XMM3,XMM0
00527706  f30f1085a8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda8]
0052770e  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
00527716  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0052771e  0f84e0000000              JZ 0x00527804
00527724  85c9                      TEST ECX,ECX
00527726  7511                      JNZ 0x00527739
00527728  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00527730  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
00527737  770f                      JA 0x00527748
00527739  8bcf                      MOV ECX,EDI
0052773b  e840161b00                CALL 0x006d8d80
00527740  84c0                      TEST AL,AL
00527742  0f84a7000000              JZ 0x005277ef
00527748  8d8570fdffff              LEA EAX,[EBP + 0xfffffd70]
0052774e  8bcf                      MOV ECX,EDI
00527750  50                        PUSH EAX
00527751  e8da151b00                CALL 0x006d8d30
00527756  8bb5a0fdffff              MOV ESI,dword ptr [EBP + 0xfffffda0]
0052775c  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00527761  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00527766  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0052776a  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
0052776e  0f28c1                    MOVAPS XMM0,XMM1
00527771  f30f118d74fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM1
00527779  f30f59c1                  MULSS XMM0,XMM1
0052777d  0f28ca                    MOVAPS XMM1,XMM2
00527780  f30f1195c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM2
00527788  f30f59ca                  MULSS XMM1,XMM2
0052778c  f30f58c1                  ADDSS XMM0,XMM1
00527790  e8bbe2f0ff                CALL 0x00435a50
00527795  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
0052779c  763c                      JBE 0x005277da
0052779e  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005277a2  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
005277a7  f30f5885c4fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffdc4]
005277af  f30f588d74fdffff          ADDSS XMM1,dword ptr [EBP + 0xfffffd74]
005277b7  51                        PUSH ECX
005277b8  c7042400002041            MOV dword ptr [ESP],0x41200000
005277bf  8d8dc0fdffff              LEA ECX,[EBP + 0xfffffdc0]
005277c5  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
005277cd  f30f118dc4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM1
005277d5  e947010000                JMP 0x00527921
005277da  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005277e2  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
005277ea  e953010000                JMP 0x00527942
005277ef  f30f1085acfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdac]
005277f7  f30f108db0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb0]
005277ff  e94e010000                JMP 0x00527952
00527804  f30f108564fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd64]
0052780c  f30f59c0                  MULSS XMM0,XMM0
00527810  0f2fc3                    COMISS XMM0,XMM3
00527813  0f86af000000              JBE 0x005278c8
00527819  837f2836                  CMP dword ptr [EDI + 0x28],0x36
0052781d  f30f598d8cfdffff          MULSS XMM1,dword ptr [EBP + 0xfffffd8c]
00527825  f30f59958cfdffff          MULSS XMM2,dword ptr [EBP + 0xfffffd8c]
0052782d  f30f5e0d94aaba00          DIVSS XMM1,dword ptr [0x00baaa94]
00527835  f30f5e1594aaba00          DIVSS XMM2,dword ptr [0x00baaa94]
0052783d  f30f109d80fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd80]
00527845  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
0052784d  f30f58d9                  ADDSS XMM3,XMM1
00527851  f30f58c2                  ADDSS XMM0,XMM2
00527855  f30f119dc4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM3
0052785d  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
00527865  f30f119dacfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM3
0052786d  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
00527875  0f8598000000              JNZ 0x00527913
0052787b  8bcf                      MOV ECX,EDI
0052787d  e8be6f1900                CALL 0x006be840
00527882  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0052788a  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00527892  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0052789a  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
005278a2  f30f5885c4fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffdc4]
005278aa  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
005278b2  f30f108574fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd74]
005278ba  f30f58c1                  ADDSS XMM0,XMM1
005278be  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
005278c6  eb4b                      JMP 0x00527913
005278c8  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
005278ce  50                        PUSH EAX
005278cf  e89c771500                CALL 0x0067f070
005278d4  f30f108d8cfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd8c]
005278dc  83c404                    ADD ESP,0x4
005278df  f30f580dc0a9ba00          ADDSS XMM1,dword ptr [0x00baa9c0]
005278e7  0f28c1                    MOVAPS XMM0,XMM1
005278ea  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
005278ef  f30f5900                  MULSS XMM0,dword ptr [EAX]
005278f3  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
005278fb  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00527903  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
0052790b  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
00527913  51                        PUSH ECX
00527914  c704240000a040            MOV dword ptr [ESP],0x40a00000
0052791b  8d8dacfdffff              LEA ECX,[EBP + 0xfffffdac]
00527921  a17816c700                MOV EAX,[0x00c71678]
00527926  51                        PUSH ECX
00527927  8d8d70fdffff              LEA ECX,[EBP + 0xfffffd70]
0052792d  51                        PUSH ECX
0052792e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00527934  e857e7f0ff                CALL 0x00436090
00527939  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0052793e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00527942  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0052794a  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
00527952  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00527959  9f                        LAHF
0052795a  f6c444                    TEST AH,0x44
0052795d  7a14                      JP 0x00527973
0052795f  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00527966  9f                        LAHF
00527967  f6c444                    TEST AH,0x44
0052796a  7a07                      JP 0x00527973
0052796c  be03000000                MOV ESI,0x3
00527971  eb1f                      JMP 0x00527992
00527973  ffb5b0fdffff              PUSH dword ptr [EBP + 0xfffffdb0]
00527979  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052797f  ffb5acfdffff              PUSH dword ptr [EBP + 0xfffffdac]
00527985  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052798b  e8f08d2c00                CALL 0x007f0780
00527990  8bf0                      MOV ESI,EAX
00527992  817f2848030000            CMP dword ptr [EDI + 0x28],0x348
00527999  0f85b3010000              JNZ 0x00527b52
0052799f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005279a6  0f85af010000              JNZ 0x00527b5b
005279ac  a17816c700                MOV EAX,[0x00c71678]
005279b1  8d8dacfdffff              LEA ECX,[EBP + 0xfffffdac]
005279b7  0500830100                ADD EAX,0x18300
005279bc  51                        PUSH ECX
005279bd  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
005279c3  8b08                      MOV ECX,dword ptr [EAX]
005279c5  e846b22e00                CALL 0x00812c10
005279ca  8bbda0fdffff              MOV EDI,dword ptr [EBP + 0xfffffda0]
005279d0  3dc8000000                CMP EAX,0xc8
005279d5  b902000000                MOV ECX,0x2
005279da  c78574fdffff00000000      MOV dword ptr [EBP + 0xfffffd74],0x0
005279e4  0f4df1                    CMOVGE ESI,ECX
005279e7  85f6                      TEST ESI,ESI
005279e9  0f845d010000              JZ 0x00527b4c
005279ef  8bb5c4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdc4]
005279f5  8b36                      MOV ESI,dword ptr [ESI]
005279f7  e864751c00                CALL 0x006eef60
005279fc  660f6ec0                  MOVD XMM0,EAX
00527a00  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00527a04  c1e81f                    SHR EAX,0x1f
00527a07  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00527a10  660f5ac0                  CVTPD2PS XMM0,XMM0
00527a14  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00527a1c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00527a24  f30f58c0                  ADDSS XMM0,XMM0
00527a28  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
00527a30  e8eb5aefff                CALL 0x0041d520
00527a35  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00527a3d  f30f10858cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd8c]
00527a45  f30f5805c0a9ba00          ADDSS XMM0,dword ptr [0x00baa9c0]
00527a4d  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
00527a55  f30f1085a0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda0]
00527a5d  e8de5aefff                CALL 0x0041d540
00527a62  f30f1095b4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb4]
00527a6a  8d8560fdffff              LEA EAX,[EBP + 0xfffffd60]
00527a70  f30f5985c4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc4]
00527a78  83ec0c                    SUB ESP,0xc
00527a7b  8bce                      MOV ECX,ESI
00527a7d  f30f5995c4fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdc4]
00527a85  f30f5807                  ADDSS XMM0,dword ptr [EDI]
00527a89  f30f109da8fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffda8]
00527a91  f30f585704                ADDSS XMM2,dword ptr [EDI + 0x4]
00527a96  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00527a9e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00527aa6  c7042400000000            MOV dword ptr [ESP],0x0
00527aad  50                        PUSH EAX
00527aae  8d85b8fdffff              LEA EAX,[EBP + 0xfffffdb8]
00527ab4  f30f118560fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM0
00527abc  50                        PUSH EAX
00527abd  f30f119564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM2
00527ac5  e886b42e00                CALL 0x00812f50
00527aca  f30f1085b8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb8]
00527ad2  a17816c700                MOV EAX,[0x00c71678]
00527ad7  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
00527adf  0500830100                ADD EAX,0x18300
00527ae4  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
00527aec  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
00527af4  ffb5b0fdffff              PUSH dword ptr [EBP + 0xfffffdb0]
00527afa  8b30                      MOV ESI,dword ptr [EAX]
00527afc  8bce                      MOV ECX,ESI
00527afe  ffb5acfdffff              PUSH dword ptr [EBP + 0xfffffdac]
00527b04  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
00527b0a  e8718c2c00                CALL 0x007f0780
00527b0f  8985a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EAX
00527b15  8bce                      MOV ECX,ESI
00527b17  8d85acfdffff              LEA EAX,[EBP + 0xfffffdac]
00527b1d  50                        PUSH EAX
00527b1e  e8edb02e00                CALL 0x00812c10
00527b23  8bb5a0fdffff              MOV ESI,dword ptr [EBP + 0xfffffda0]
00527b29  3dc8000000                CMP EAX,0xc8
00527b2e  b802000000                MOV EAX,0x2
00527b33  0f4df0                    CMOVGE ESI,EAX
00527b36  8b8574fdffff              MOV EAX,dword ptr [EBP + 0xfffffd74]
00527b3c  40                        INC EAX
00527b3d  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
00527b43  83f80a                    CMP EAX,0xa
00527b46  0f829bfeffff              JC 0x005279e7
00527b4c  8bbd5cfdffff              MOV EDI,dword ptr [EBP + 0xfffffd5c]
00527b52  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00527b59  7418                      JZ 0x00527b73
00527b5b  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00527b63  8bcf                      MOV ECX,EDI
00527b65  6a07                      PUSH 0x7
00527b67  6a00                      PUSH 0x0
00527b69  e8f2321a00                CALL 0x006cae60
00527b6e  0fb6c0                    MOVZX EAX,AL
00527b71  eb15                      JMP 0x00527b88
00527b73  e8e8731c00                CALL 0x006eef60
00527b78  33d2                      XOR EDX,EDX
00527b7a  b903000000                MOV ECX,0x3
00527b7f  f7f1                      DIV ECX
00527b81  33c0                      XOR EAX,EAX
00527b83  85d2                      TEST EDX,EDX
00527b85  0f94c0                    SETZ AL
00527b88  85c0                      TEST EAX,EAX
00527b8a  744c                      JZ 0x00527bd8
00527b8c  817f28f6000000            CMP dword ptr [EDI + 0x28],0xf6
00527b93  7543                      JNZ 0x00527bd8
00527b95  6a00                      PUSH 0x0
00527b97  68000a0001                PUSH 0x1000a00
00527b9c  8bcf                      MOV ECX,EDI
00527b9e  e88df8eeff                CALL 0x00417430
00527ba3  84c0                      TEST AL,AL
00527ba5  7531                      JNZ 0x00527bd8
00527ba7  6a01                      PUSH 0x1
00527ba9  8bcf                      MOV ECX,EDI
00527bab  e8a0141b00                CALL 0x006d9050
00527bb0  6a01                      PUSH 0x1
00527bb2  6898d5b100                PUSH 0xb1d598
00527bb7  8d4f48                    LEA ECX,[EDI + 0x48]
00527bba  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00527bc4  e8b727eeff                CALL 0x0040a380
00527bc9  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00527bd3  e914080000                JMP 0x005283ec
00527bd8  85f6                      TEST ESI,ESI
00527bda  0f850c080000              JNZ 0x005283ec
00527be0  a17816c700                MOV EAX,[0x00c71678]
00527be5  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00527beb  8d85acfdffff              LEA EAX,[EBP + 0xfffffdac]
00527bf1  50                        PUSH EAX
00527bf2  8bce                      MOV ECX,ESI
00527bf4  e897b02e00                CALL 0x00812c90
00527bf9  85c0                      TEST EAX,EAX
00527bfb  0f88eb070000              JS 0x005283ec
00527c01  50                        PUSH EAX
00527c02  8d8558fdffff              LEA EAX,[EBP + 0xfffffd58]
00527c08  8bce                      MOV ECX,ESI
00527c0a  50                        PUSH EAX
00527c0b  e8f0b22e00                CALL 0x00812f00
00527c10  6a01                      PUSH 0x1
00527c12  ffb598fdffff              PUSH dword ptr [EBP + 0xfffffd98]
00527c18  8b08                      MOV ECX,dword ptr [EAX]
00527c1a  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00527c20  8d4f48                    LEA ECX,[EDI + 0x48]
00527c23  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00527c26  898738030000              MOV dword ptr [EDI + 0x338],EAX
00527c2c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00527c36  e84527eeff                CALL 0x0040a380
00527c3b  81bf100400000f270000      CMP dword ptr [EDI + 0x410],0x270f
00527c45  7c0a                      JL 0x00527c51
00527c47  6a04                      PUSH 0x4
00527c49  8d4f48                    LEA ECX,[EDI + 0x48]
00527c4c  e8cf2aeeff                CALL 0x0040a720
00527c51  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00527c5b  e98c070000                JMP 0x005283ec
00527c60  83f804                    CMP EAX,0x4
00527c63  0f8583070000              JNZ 0x005283ec
00527c69  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00527c6c  85c0                      TEST EAX,EAX
00527c6e  7405                      JZ 0x00527c75
00527c70  8a4034                    MOV AL,byte ptr [EAX + 0x34]
00527c73  eb02                      JMP 0x00527c77
00527c75  32c0                      XOR AL,AL
00527c77  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00527c7f  8db73c030000              LEA ESI,[EDI + 0x33c]
00527c85  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00527c89  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
00527c91  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
00527c96  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
00527c9c  0f28c1                    MOVAPS XMM0,XMM1
00527c9f  f30f118d98fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM1
00527ca7  f30f59c1                  MULSS XMM0,XMM1
00527cab  f30f118d9cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM1
00527cb3  0f28ca                    MOVAPS XMM1,XMM2
00527cb6  f30f59ca                  MULSS XMM1,XMM2
00527cba  f30f119574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM2
00527cc2  f30f1195a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM2
00527cca  f30f58c1                  ADDSS XMM0,XMM1
00527cce  e87dddf0ff                CALL 0x00435a50
00527cd3  80bdbcfdffff00            CMP byte ptr [EBP + 0xfffffdbc],0x0
00527cda  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
00527ce2  0f85db030000              JNZ 0x005280c3
00527ce8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00527cec  0f847d030000              JZ 0x0052806f
00527cf2  6874d5b100                PUSH 0xb1d574
00527cf7  8d4f78                    LEA ECX,[EDI + 0x78]
00527cfa  e8d130eeff                CALL 0x0040add0
00527cff  84c0                      TEST AL,AL
00527d01  0f843b030000              JZ 0x00528042
00527d07  51                        PUSH ECX
00527d08  c704240000803f            MOV dword ptr [ESP],0x3f800000
00527d0f  6a00                      PUSH 0x0
00527d11  6a02                      PUSH 0x2
00527d13  51                        PUSH ECX
00527d14  c704240000803f            MOV dword ptr [ESP],0x3f800000
00527d1b  8bcf                      MOV ECX,EDI
00527d1d  6a45                      PUSH 0x45
00527d1f  e87cee1a00                CALL 0x006d6ba0
00527d24  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00527d27  3d48030000                CMP EAX,0x348
00527d2c  756a                      JNZ 0x00527d98
00527d2e  e82d721c00                CALL 0x006eef60
00527d33  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00527d39  50                        PUSH EAX
00527d3a  6a00                      PUSH 0x0
00527d3c  57                        PUSH EDI
00527d3d  6840b6c700                PUSH 0xc7b640
00527d42  56                        PUSH ESI
00527d43  6a16                      PUSH 0x16
00527d45  68e8030000                PUSH 0x3e8
00527d4a  e8d10df0ff                CALL 0x00428b20
00527d4f  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
00527d57  8bc8                      MOV ECX,EAX
00527d59  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00527d61  f30f5915c0a4ba00          MULSS XMM2,dword ptr [0x00baa4c0]
00527d69  f30f590dc0a4ba00          MULSS XMM1,dword ptr [0x00baa4c0]
00527d71  8b01                      MOV EAX,dword ptr [ECX]
00527d73  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
00527d7b  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00527d83  ff500c                    CALL dword ptr [EAX + 0xc]
00527d86  6840b6c700                PUSH 0xc7b640
00527d8b  8d4dc0                    LEA ECX,[EBP + -0x40]
00527d8e  e8ddf3edff                CALL 0x00407170
00527d93  e98a000000                JMP 0x00527e22
00527d98  83f822                    CMP EAX,0x22
00527d9b  0f85cb000000              JNZ 0x00527e6c
00527da1  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00527da5  0f8597020000              JNZ 0x00528042
00527dab  e8b0711c00                CALL 0x006eef60
00527db0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00527db6  50                        PUSH EAX
00527db7  6a00                      PUSH 0x0
00527db9  57                        PUSH EDI
00527dba  6840b6c700                PUSH 0xc7b640
00527dbf  56                        PUSH ESI
00527dc0  6a1a                      PUSH 0x1a
00527dc2  68e8030000                PUSH 0x3e8
00527dc7  e8540df0ff                CALL 0x00428b20
00527dcc  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00527dd4  8bc8                      MOV ECX,EAX
00527dd6  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00527dde  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
00527de6  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00527dee  8b01                      MOV EAX,dword ptr [ECX]
00527df0  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
00527df8  c7815c0400002c010000      MOV dword ptr [ECX + 0x45c],0x12c
00527e02  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00527e0a  c781600400002c010000      MOV dword ptr [ECX + 0x460],0x12c
00527e14  ff500c                    CALL dword ptr [EAX + 0xc]
00527e17  6840b6c700                PUSH 0xc7b640
00527e1c  8d87e4010000              LEA EAX,[EDI + 0x1e4]
00527e22  50                        PUSH EAX
00527e23  6840b6c700                PUSH 0xc7b640
00527e28  8bd6                      MOV EDX,ESI
00527e2a  b902000000                MOV ECX,0x2
00527e2f  e8bcfe1a00                CALL 0x006d7cf0
00527e34  83c40c                    ADD ESP,0xc
00527e37  c78058030000000020c1      MOV dword ptr [EAX + 0x358],0xc1200000
00527e41  a17816c700                MOV EAX,[0x00c71678]
00527e46  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00527e4c  8d873c030000              LEA EAX,[EDI + 0x33c]
00527e52  50                        PUSH EAX
00527e53  8bce                      MOV ECX,ESI
00527e55  e836ae2e00                CALL 0x00812c90
00527e5a  6884030000                PUSH 0x384
00527e5f  50                        PUSH EAX
00527e60  8bce                      MOV ECX,ESI
00527e62  e879e7f2ff                CALL 0x004565e0
00527e67  e9d6010000                JMP 0x00528042
00527e6c  83f81d                    CMP EAX,0x1d
00527e6f  0f85cd010000              JNZ 0x00528042
00527e75  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00527e78  83f802                    CMP EAX,0x2
00527e7b  0f85ad000000              JNZ 0x00527f2e
00527e81  6a00                      PUSH 0x0
00527e83  6800000001                PUSH 0x1000000
00527e88  8bcf                      MOV ECX,EDI
00527e8a  e8a1f5eeff                CALL 0x00417430
00527e8f  84c0                      TEST AL,AL
00527e91  0f85ab010000              JNZ 0x00528042
00527e97  e8c4701c00                CALL 0x006eef60
00527e9c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00527ea2  50                        PUSH EAX
00527ea3  6a00                      PUSH 0x0
00527ea5  57                        PUSH EDI
00527ea6  6840b6c700                PUSH 0xc7b640
00527eab  56                        PUSH ESI
00527eac  6a19                      PUSH 0x19
00527eae  68e8030000                PUSH 0x3e8
00527eb3  e8680cf0ff                CALL 0x00428b20
00527eb8  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
00527ec0  8bc8                      MOV ECX,EAX
00527ec2  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00527eca  f30f5915a4a3ba00          MULSS XMM2,dword ptr [0x00baa3a4]
00527ed2  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
00527eda  8b01                      MOV EAX,dword ptr [ECX]
00527edc  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
00527ee4  c7815c04000096000000      MOV dword ptr [ECX + 0x45c],0x96
00527eee  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00527ef6  c7816004000096000000      MOV dword ptr [ECX + 0x460],0x96
00527f00  ff500c                    CALL dword ptr [EAX + 0xc]
00527f03  a17816c700                MOV EAX,[0x00c71678]
00527f08  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00527f0e  8d873c030000              LEA EAX,[EDI + 0x33c]
00527f14  50                        PUSH EAX
00527f15  8bce                      MOV ECX,ESI
00527f17  e874ad2e00                CALL 0x00812c90
00527f1c  6884030000                PUSH 0x384
00527f21  50                        PUSH EAX
00527f22  8bce                      MOV ECX,ESI
00527f24  e8b7e6f2ff                CALL 0x004565e0
00527f29  e914010000                JMP 0x00528042
00527f2e  83f803                    CMP EAX,0x3
00527f31  0f850b010000              JNZ 0x00528042
00527f37  6840b6c700                PUSH 0xc7b640
00527f3c  8d4dc0                    LEA ECX,[EBP + -0x40]
00527f3f  e82cf2edff                CALL 0x00407170
00527f44  50                        PUSH EAX
00527f45  6840b6c700                PUSH 0xc7b640
00527f4a  8bd6                      MOV EDX,ESI
00527f4c  b902000000                MOV ECX,0x2
00527f51  e89afd1a00                CALL 0x006d7cf0
00527f56  83c408                    ADD ESP,0x8
00527f59  8bcf                      MOV ECX,EDI
00527f5b  c78058030000000020c1      MOV dword ptr [EAX + 0x358],0xc1200000
00527f65  c704240000803f            MOV dword ptr [ESP],0x3f800000
00527f6c  e85fe51800                CALL 0x006b64d0
00527f71  a17816c700                MOV EAX,[0x00c71678]
00527f76  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00527f7c  8d873c030000              LEA EAX,[EDI + 0x33c]
00527f82  50                        PUSH EAX
00527f83  8bce                      MOV ECX,ESI
00527f85  e806ad2e00                CALL 0x00812c90
00527f8a  6884030000                PUSH 0x384
00527f8f  50                        PUSH EAX
00527f90  8bce                      MOV ECX,ESI
00527f92  e849e6f2ff                CALL 0x004565e0
00527f97  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00527f9d  e88e6ff1ff                CALL 0x0043ef30
00527fa2  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00527fa8  c68508ffffff01            MOV byte ptr [EBP + 0xffffff08],0x1
00527faf  c78588feffff00000000      MOV dword ptr [EBP + 0xfffffe88],0x0
00527fb9  c7857cfeffff295c8fbd      MOV dword ptr [EBP + 0xfffffe7c],0xbd8f5c29
00527fc3  83f803                    CMP EAX,0x3
00527fc6  777a                      JA 0x00528042
00527fc8  ff2485a88e5200            JMP dword ptr [EAX*0x4 + 0x528ea8]
00527fcf  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
00527fd5  c785c0fdffff00000041      MOV dword ptr [EBP + 0xfffffdc0],0x41000000
00527fdf  50                        PUSH EAX
00527fe0  c785c4fdffff00000000      MOV dword ptr [EBP + 0xfffffdc4],0x0
00527fea  6a06                      PUSH 0x6
00527fec  eb3f                      JMP 0x0052802d
00527fee  c785c4fdffff0000c040      MOV dword ptr [EBP + 0xfffffdc4],0x40c00000
00527ff8  eb20                      JMP 0x0052801a
00527ffa  c785c0fdffff00000041      MOV dword ptr [EBP + 0xfffffdc0],0x41000000
00528004  c785c4fdffff00000041      MOV dword ptr [EBP + 0xfffffdc4],0x41000000
0052800e  eb14                      JMP 0x00528024
00528010  c785c4fdffff00004041      MOV dword ptr [EBP + 0xfffffdc4],0x41400000
0052801a  c785c0fdffff00002041      MOV dword ptr [EBP + 0xfffffdc0],0x41200000
00528024  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
0052802a  50                        PUSH EAX
0052802b  6a09                      PUSH 0x9
0052802d  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
00528033  8bcf                      MOV ECX,EDI
00528035  50                        PUSH EAX
00528036  8d873c030000              LEA EAX,[EDI + 0x33c]
0052803c  50                        PUSH EAX
0052803d  e89e321a00                CALL 0x006cb2e0
00528042  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00528046  7427                      JZ 0x0052806f
00528048  6860d5b100                PUSH 0xb1d560
0052804d  8d4f78                    LEA ECX,[EDI + 0x78]
00528050  e81b2eeeff                CALL 0x0040ae70
00528055  84c0                      TEST AL,AL
00528057  7416                      JZ 0x0052806f
00528059  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00528063  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0052806d  eb54                      JMP 0x005280c3
0052806f  f30f108598fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd98]
00528077  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0052807f  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00528089  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00528093  f30f118598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM0
0052809b  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
005280a3  f30f108574fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd74]
005280ab  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
005280b3  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
005280bb  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
005280c3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005280c7  7409                      JZ 0x005280d2
005280c9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005280d0  751a                      JNZ 0x005280ec
005280d2  8bb5b4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdb4]
005280d8  8d4f48                    LEA ECX,[EDI + 0x48]
005280db  6a00                      PUSH 0x0
005280dd  56                        PUSH ESI
005280de  e89d22eeff                CALL 0x0040a380
005280e3  c685bcfdffff01            MOV byte ptr [EBP + 0xfffffdbc],0x1
005280ea  eb06                      JMP 0x005280f2
005280ec  8bb5b4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdb4]
005280f2  817f2848030000            CMP dword ptr [EDI + 0x28],0x348
005280f9  753e                      JNZ 0x00528139
005280fb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005280ff  7438                      JZ 0x00528139
00528101  6874d5b100                PUSH 0xb1d574
00528106  8d4f78                    LEA ECX,[EDI + 0x78]
00528109  e8622deeff                CALL 0x0040ae70
0052810e  84c0                      TEST AL,AL
00528110  7427                      JZ 0x00528139
00528112  e8496e1c00                CALL 0x006eef60
00528117  33d2                      XOR EDX,EDX
00528119  b903000000                MOV ECX,0x3
0052811e  f7f1                      DIV ECX
00528120  8b85bcfdffff              MOV EAX,dword ptr [EBP + 0xfffffdbc]
00528126  b901000000                MOV ECX,0x1
0052812b  85d2                      TEST EDX,EDX
0052812d  0fb6c0                    MOVZX EAX,AL
00528130  0f45c1                    CMOVNZ EAX,ECX
00528133  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
00528139  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00528141  0f2f855cfdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd5c]
00528148  7749                      JA 0x00528193
0052814a  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00528152  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0052815a  f30f59c0                  MULSS XMM0,XMM0
0052815e  f30f59c9                  MULSS XMM1,XMM1
00528162  f30f58c1                  ADDSS XMM0,XMM1
00528166  e8e5d8f0ff                CALL 0x00435a50
0052816b  f30f100d80a3ba00          MOVSS XMM1,dword ptr [0x00baa380]
00528173  0f2fc8                    COMISS XMM1,XMM0
00528176  7709                      JA 0x00528181
00528178  83bf100400001e            CMP dword ptr [EDI + 0x410],0x1e
0052817f  7e5a                      JLE 0x005281db
00528181  e8da6d1c00                CALL 0x006eef60
00528186  33d2                      XOR EDX,EDX
00528188  b90a000000                MOV ECX,0xa
0052818d  f7f1                      DIV ECX
0052818f  85d2                      TEST EDX,EDX
00528191  7548                      JNZ 0x005281db
00528193  80bdbcfdffff00            CMP byte ptr [EBP + 0xfffffdbc],0x0
0052819a  743f                      JZ 0x005281db
0052819c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005281a4  8d4f48                    LEA ECX,[EDI + 0x48]
005281a7  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005281af  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005281b7  6a00                      PUSH 0x0
005281b9  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005281c1  56                        PUSH ESI
005281c2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005281cc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005281d6  e8a521eeff                CALL 0x0040a380
005281db  837f281d                  CMP dword ptr [EDI + 0x28],0x1d
005281df  0f85f5000000              JNZ 0x005282da
005281e5  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
005281e9  7562                      JNZ 0x0052824d
005281eb  6874d5b100                PUSH 0xb1d574
005281f0  8d4f48                    LEA ECX,[EDI + 0x48]
005281f3  e8382eeeff                CALL 0x0040b030
005281f8  84c0                      TEST AL,AL
005281fa  7451                      JZ 0x0052824d
005281fc  e85f6d1c00                CALL 0x006eef60
00528201  33d2                      XOR EDX,EDX
00528203  b903000000                MOV ECX,0x3
00528208  f7f1                      DIV ECX
0052820a  85d2                      TEST EDX,EDX
0052820c  753f                      JNZ 0x0052824d
0052820e  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00528216  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052821e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00528226  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052822e  52                        PUSH EDX
0052822f  898f640b0000              MOV dword ptr [EDI + 0xb64],ECX
00528235  8d4f48                    LEA ECX,[EDI + 0x48]
00528238  56                        PUSH ESI
00528239  c787100400000f270000      MOV dword ptr [EDI + 0x410],0x270f
00528243  e83821eeff                CALL 0x0040a380
00528248  e98d000000                JMP 0x005282da
0052824d  837f281d                  CMP dword ptr [EDI + 0x28],0x1d
00528251  0f8583000000              JNZ 0x005282da
00528257  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0052825b  757d                      JNZ 0x005282da
0052825d  6874d5b100                PUSH 0xb1d574
00528262  8d4f48                    LEA ECX,[EDI + 0x48]
00528265  e8c62deeff                CALL 0x0040b030
0052826a  84c0                      TEST AL,AL
0052826c  746c                      JZ 0x005282da
0052826e  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00528274  83f803                    CMP EAX,0x3
00528277  7d57                      JGE 0x005282d0
00528279  40                        INC EAX
0052827a  b954bcb100                MOV ECX,0xb1bc54
0052827f  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00528285  a801                      TEST AL,0x1
00528287  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052828f  b828d4b100                MOV EAX,0xb1d428
00528294  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052829c  0f44c1                    CMOVZ EAX,ECX
0052829f  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005282a7  8d4f48                    LEA ECX,[EDI + 0x48]
005282aa  6a00                      PUSH 0x0
005282ac  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005282b4  50                        PUSH EAX
005282b5  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005282bf  c787100400000f270000      MOV dword ptr [EDI + 0x410],0x270f
005282c9  e8b220eeff                CALL 0x0040a380
005282ce  eb0a                      JMP 0x005282da
005282d0  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
005282da  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
005282e2  0f2f855cfdffff            COMISS XMM0,dword ptr [EBP + 0xfffffd5c]
005282e9  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
005282f1  766f                      JBE 0x00528362
005282f3  8d8594fdffff              LEA EAX,[EBP + 0xfffffd94]
005282f9  50                        PUSH EAX
005282fa  8d8d9cfdffff              LEA ECX,[EBP + 0xfffffd9c]
00528300  e82b7d4e00                CALL 0x00a10030
00528305  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
0052830d  8bc8                      MOV ECX,EAX
0052830f  f30f1085a8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda8]
00528317  0f2ed0                    UCOMISS XMM2,XMM0
0052831a  9f                        LAHF
0052831b  f6c444                    TEST AH,0x44
0052831e  0f8baf000000              JNP 0x005283d3
00528324  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052832c  0f28c1                    MOVAPS XMM0,XMM1
0052832f  f30f594904                MULSS XMM1,dword ptr [ECX + 0x4]
00528334  f30f5901                  MULSS XMM0,dword ptr [ECX]
00528338  f30f5eca                  DIVSS XMM1,XMM2
0052833c  f30f5ec2                  DIVSS XMM0,XMM2
00528340  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00528348  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00528350  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00528358  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00528360  eb69                      JMP 0x005283cb
00528362  f30f1085a8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda8]
0052836a  f30f108d98fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd98]
00528372  f30f109574fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd74]
0052837a  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
00528382  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
0052838a  0f2ed8                    UCOMISS XMM3,XMM0
0052838d  9f                        LAHF
0052838e  f6c444                    TEST AH,0x44
00528391  7b40                      JNP 0x005283d3
00528393  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0052839b  f30f59c8                  MULSS XMM1,XMM0
0052839f  f30f59d0                  MULSS XMM2,XMM0
005283a3  f30f5ecb                  DIVSS XMM1,XMM3
005283a7  f30f5ed3                  DIVSS XMM2,XMM3
005283ab  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
005283b3  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
005283bb  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005283c3  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
005283cb  f30f1085a8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda8]
005283d3  817f2831010000            CMP dword ptr [EDI + 0x28],0x131
005283da  7510                      JNZ 0x005283ec
005283dc  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
005283e3  0f97c0                    SETA AL
005283e6  888748010000              MOV byte ptr [EDI + 0x148],AL
005283ec  837f2822                  CMP dword ptr [EDI + 0x28],0x22
005283f0  0f852e010000              JNZ 0x00528524
005283f6  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005283fe  8db734030000              LEA ESI,[EDI + 0x334]
00528404  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0052840b  9f                        LAHF
0052840c  f6c444                    TEST AH,0x44
0052840f  0f8a0f010000              JP 0x00528524
00528415  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0052841a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00528421  9f                        LAHF
00528422  f6c444                    TEST AH,0x44
00528425  0f8af9000000              JP 0x00528524
0052842b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00528432  7416                      JZ 0x0052844a
00528434  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0052843c  33c0                      XOR EAX,EAX
0052843e  0f2f85a8fdffff            COMISS XMM0,dword ptr [EBP + 0xfffffda8]
00528445  0f97c0                    SETA AL
00528448  eb15                      JMP 0x0052845f
0052844a  e8116b1c00                CALL 0x006eef60
0052844f  33d2                      XOR EDX,EDX
00528451  b907000000                MOV ECX,0x7
00528456  f7f1                      DIV ECX
00528458  33c0                      XOR EAX,EAX
0052845a  85d2                      TEST EDX,EDX
0052845c  0f94c0                    SETZ AL
0052845f  85c0                      TEST EAX,EAX
00528461  0f84bd000000              JZ 0x00528524
00528467  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0052846d  25000a0001                AND EAX,0x1000a00
00528472  83c800                    OR EAX,0x0
00528475  0f85a9000000              JNZ 0x00528524
0052847b  f30f108580fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd80]
00528483  f30f1106                  MOVSS dword ptr [ESI],XMM0
00528487  f30f108584fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd84]
0052848f  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00528494  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
0052849a  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0052849e  a17816c700                MOV EAX,[0x00c71678]
005284a3  f30f118580fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM0
005284ab  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005284b0  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
005284b8  ffb584fdffff              PUSH dword ptr [EBP + 0xfffffd84]
005284be  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005284c4  8bc8                      MOV ECX,EAX
005284c6  ffb580fdffff              PUSH dword ptr [EBP + 0xfffffd80]
005284cc  89855cfdffff              MOV dword ptr [EBP + 0xfffffd5c],EAX
005284d2  e8a9822c00                CALL 0x007f0780
005284d7  85c0                      TEST EAX,EAX
005284d9  742b                      JZ 0x00528506
005284db  6a00                      PUSH 0x0
005284dd  6a00                      PUSH 0x0
005284df  6a00                      PUSH 0x0
005284e1  51                        PUSH ECX
005284e2  8b8d5cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd5c]
005284e8  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
005284ee  c704240000f042            MOV dword ptr [ESP],0x42f00000
005284f5  56                        PUSH ESI
005284f6  50                        PUSH EAX
005284f7  e824b02e00                CALL 0x00813520
005284fc  8b08                      MOV ECX,dword ptr [EAX]
005284fe  890e                      MOV dword ptr [ESI],ECX
00528500  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00528503  894604                    MOV dword ptr [ESI + 0x4],EAX
00528506  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00528510  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052851a  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00528524  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
0052852b  750a                      JNZ 0x00528537
0052852d  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00528537  817f28f6000000            CMP dword ptr [EDI + 0x28],0xf6
0052853e  8db73c030000              LEA ESI,[EDI + 0x33c]
00528544  0f85dc010000              JNZ 0x00528726
0052854a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052854e  0f85d2010000              JNZ 0x00528726
00528554  a17816c700                MOV EAX,[0x00c71678]
00528559  56                        PUSH ESI
0052855a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00528560  8bc8                      MOV ECX,EAX
00528562  898598fdffff              MOV dword ptr [EBP + 0xfffffd98],EAX
00528568  e823a72e00                CALL 0x00812c90
0052856d  8b8d98fdffff              MOV ECX,dword ptr [EBP + 0xfffffd98]
00528573  3dbf010000                CMP EAX,0x1bf
00528578  770d                      JA 0x00528587
0052857a  81bc816c070000f4010000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x1f4
00528585  7d27                      JGE 0x005285ae
00528587  56                        PUSH ESI
00528588  e803a72e00                CALL 0x00812c90
0052858d  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00528593  8bd0                      MOV EDX,EAX
00528595  81fabf010000              CMP EDX,0x1bf
0052859b  7717                      JA 0x005285b4
0052859d  8b8598fdffff              MOV EAX,dword ptr [EBP + 0xfffffd98]
005285a3  c784906c070000f4010000    MOV dword ptr [EAX + EDX*0x4 + 0x76c],0x1f4
005285ae  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005285b4  83f910                    CMP ECX,0x10
005285b7  753b                      JNZ 0x005285f4
005285b9  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
005285c0  0f8560010000              JNZ 0x00528726
005285c6  e895691c00                CALL 0x006eef60
005285cb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005285d1  50                        PUSH EAX
005285d2  6a00                      PUSH 0x0
005285d4  6a00                      PUSH 0x0
005285d6  6840b6c700                PUSH 0xc7b640
005285db  56                        PUSH ESI
005285dc  6a0f                      PUSH 0xf
005285de  68e8030000                PUSH 0x3e8
005285e3  e83805f0ff                CALL 0x00428b20
005285e8  8b07                      MOV EAX,dword ptr [EDI]
005285ea  8bcf                      MOV ECX,EDI
005285ec  ff5028                    CALL dword ptr [EAX + 0x28]
005285ef  e932010000                JMP 0x00528726
005285f4  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005285fb  0f84ab000000              JZ 0x005286ac
00528601  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00528608  0f849e000000              JZ 0x005286ac
0052860e  6800000010                PUSH 0x10000000
00528613  6a00                      PUSH 0x0
00528615  8bcf                      MOV ECX,EDI
00528617  e814eeeeff                CALL 0x00417430
0052861c  84c0                      TEST AL,AL
0052861e  7556                      JNZ 0x00528676
00528620  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00528628  8bcf                      MOV ECX,EDI
0052862a  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00528632  888773010000              MOV byte ptr [EDI + 0x173],AL
00528638  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
0052863e  898780030000              MOV dword ptr [EDI + 0x380],EAX
00528644  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0052864e  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00528655  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0052865f  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00528669  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00528671  e8ba5f1800                CALL 0x006ae630
00528676  6840b6c700                PUSH 0xc7b640
0052867b  8d87e4010000              LEA EAX,[EDI + 0x1e4]
00528681  c78550fdffff00000000      MOV dword ptr [EBP + 0xfffffd50],0x0
0052868b  50                        PUSH EAX
0052868c  8d8550fdffff              LEA EAX,[EBP + 0xfffffd50]
00528692  c78554fdffff0000a0c0      MOV dword ptr [EBP + 0xfffffd54],0xc0a00000
0052869c  50                        PUSH EAX
0052869d  8bd6                      MOV EDX,ESI
0052869f  b903000000                MOV ECX,0x3
005286a4  e847f61a00                CALL 0x006d7cf0
005286a9  83c40c                    ADD ESP,0xc
005286ac  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005286b2  83f802                    CMP EAX,0x2
005286b5  755b                      JNZ 0x00528712
005286b7  6a00                      PUSH 0x0
005286b9  68e009b600                PUSH 0xb609e0
005286be  8d4f48                    LEA ECX,[EDI + 0x48]
005286c1  e8ba1ceeff                CALL 0x0040a380
005286c6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005286ca  7409                      JZ 0x005286d5
005286cc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005286d3  7551                      JNZ 0x00528726
005286d5  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
005286dc  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005286e6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005286ee  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005286f6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005286fe  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00528706  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00528710  eb14                      JMP 0x00528726
00528712  83f810                    CMP EAX,0x10
00528715  750f                      JNZ 0x00528726
00528717  6a00                      PUSH 0x0
00528719  686c0fb600                PUSH 0xb60f6c
0052871e  8d4f48                    LEA ECX,[EDI + 0x48]
00528721  e85a1ceeff                CALL 0x0040a380
00528726  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
0052872d  754a                      JNZ 0x00528779
0052872f  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00528737  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0052873e  9f                        LAHF
0052873f  f6c444                    TEST AH,0x44
00528742  7a15                      JP 0x00528759
00528744  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0052874c  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00528753  9f                        LAHF
00528754  f6c444                    TEST AH,0x44
00528757  7b20                      JNP 0x00528779
00528759  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00528761  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00528769  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00528771  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00528779  837f281d                  CMP dword ptr [EDI + 0x28],0x1d
0052877d  0f85d7060000              JNZ 0x00528e5a
00528783  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00528787  0f85cd060000              JNZ 0x00528e5a
0052878d  83bf640b000005            CMP dword ptr [EDI + 0xb64],0x5
00528794  0f850e060000              JNZ 0x00528da8
0052879a  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005287a4  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005287ac  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005287b4  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005287b8  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005287bd  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005287c5  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005287cd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005287d1  745d                      JZ 0x00528830
005287d3  6860d5b100                PUSH 0xb1d560
005287d8  8d4f78                    LEA ECX,[EDI + 0x78]
005287db  e8f025eeff                CALL 0x0040add0
005287e0  84c0                      TEST AL,AL
005287e2  744c                      JZ 0x00528830
005287e4  51                        PUSH ECX
005287e5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005287ec  6a00                      PUSH 0x0
005287ee  6a02                      PUSH 0x2
005287f0  51                        PUSH ECX
005287f1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005287f8  8bcf                      MOV ECX,EDI
005287fa  68ed000000                PUSH 0xed
005287ff  e89ce31a00                CALL 0x006d6ba0
00528804  51                        PUSH ECX
00528805  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052880c  6a00                      PUSH 0x0
0052880e  6a02                      PUSH 0x2
00528810  51                        PUSH ECX
00528811  c704240000803f            MOV dword ptr [ESP],0x3f800000
00528818  8bcf                      MOV ECX,EDI
0052881a  68b5000000                PUSH 0xb5
0052881f  e87ce31a00                CALL 0x006d6ba0
00528824  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052882e  eb0d                      JMP 0x0052883d
00528830  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00528837  0f8c4c050000              JL 0x00528d89
0052883d  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
00528845  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0052884d  2bd0                      SUB EDX,EAX
0052884f  8995a4fdffff              MOV dword ptr [EBP + 0xfffffda4],EDX
00528855  85d2                      TEST EDX,EDX
00528857  0f8e2c050000              JLE 0x00528d89
0052885d  be06000000                MOV ESI,0x6
00528862  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00528868  41                        INC ECX
00528869  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0052886f  8bc1                      MOV EAX,ECX
00528871  83f90e                    CMP ECX,0xe
00528874  7f0e                      JG 0x00528884
00528876  99                        CDQ
00528877  f7bd4cfdffff              IDIV dword ptr [EBP + 0xfffffd4c]
0052887d  83fa02                    CMP EDX,0x2
00528880  7434                      JZ 0x005288b6
00528882  eb07                      JMP 0x0052888b
00528884  8bc8                      MOV ECX,EAX
00528886  83f81f                    CMP EAX,0x1f
00528889  7f10                      JG 0x0052889b
0052888b  8bc1                      MOV EAX,ECX
0052888d  99                        CDQ
0052888e  f7fe                      IDIV ESI
00528890  83fa01                    CMP EDX,0x1
00528893  7421                      JZ 0x005288b6
00528895  8b95a4fdffff              MOV EDX,dword ptr [EBP + 0xfffffda4]
0052889b  83f93c                    CMP ECX,0x3c
0052889e  0f8fd0040000              JG 0x00528d74
005288a4  8bc1                      MOV EAX,ECX
005288a6  b90f000000                MOV ECX,0xf
005288ab  99                        CDQ
005288ac  f7f9                      IDIV ECX
005288ae  85d2                      TEST EDX,EDX
005288b0  0f85b8040000              JNZ 0x00528d6e
005288b6  0fb787760c0000            MOVZX EAX,word ptr [EDI + 0xc76]
005288bd  6685c0                    TEST AX,AX
005288c0  7e21                      JLE 0x005288e3
005288c2  98                        CWDE
005288c3  be03000000                MOV ESI,0x3
005288c8  40                        INC EAX
005288c9  3bc6                      CMP EAX,ESI
005288cb  0f4cf0                    CMOVL ESI,EAX
005288ce  85f6                      TEST ESI,ESI
005288d0  7411                      JZ 0x005288e3
005288d2  e889661c00                CALL 0x006eef60
005288d7  33d2                      XOR EDX,EDX
005288d9  f7f6                      DIV ESI
005288db  85d2                      TEST EDX,EDX
005288dd  0f8586040000              JNZ 0x00528d69
005288e3  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
005288e9  e802082c00                CALL 0x007e90f0
005288ee  8bf0                      MOV ESI,EAX
005288f0  e86b661c00                CALL 0x006eef60
005288f5  660f6ec0                  MOVD XMM0,EAX
005288f9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005288fd  c1e81f                    SHR EAX,0x1f
00528900  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00528909  660f5ac0                  CVTPD2PS XMM0,XMM0
0052890d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00528915  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0052891d  f30f58c0                  ADDSS XMM0,XMM0
00528921  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
00528929  e8f24befff                CALL 0x0041d520
0052892e  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
00528936  f30f10855cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd5c]
0052893e  e8fd4befff                CALL 0x0041d540
00528943  f30f108da0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda0]
0052894b  8d8550fdffff              LEA EAX,[EBP + 0xfffffd50]
00528951  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00528959  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00528961  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00528967  56                        PUSH ESI
00528968  6a00                      PUSH 0x0
0052896a  57                        PUSH EDI
0052896b  6840b6c700                PUSH 0xc7b640
00528970  50                        PUSH EAX
00528971  6a00                      PUSH 0x0
00528973  6874030000                PUSH 0x374
00528978  f30f118550fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM0
00528980  f30f118d54fdffff          MOVSS dword ptr [EBP + 0xfffffd54],XMM1
00528988  e89301f0ff                CALL 0x00428b20
0052898d  8bf0                      MOV ESI,EAX
0052898f  c78590fdffff00000000      MOV dword ptr [EBP + 0xfffffd90],0x0
00528999  c78594fdffff00000000      MOV dword ptr [EBP + 0xfffffd94],0x0
005289a3  c78598fdffff00000000      MOV dword ptr [EBP + 0xfffffd98],0x0
005289ad  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
005289b3  818e6801000000000040      OR dword ptr [ESI + 0x168],0x40000000
005289bd  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
005289c3  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
005289c9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005289d0  50                        PUSH EAX
005289d1  6a00                      PUSH 0x0
005289d3  8d8d90fdffff              LEA ECX,[EBP + 0xfffffd90]
005289d9  c78578fdffff00000000      MOV dword ptr [EBP + 0xfffffd78],0x0
005289e3  c7857cfdffff03000000      MOV dword ptr [EBP + 0xfffffd7c],0x3
005289ed  e8ce87f7ff                CALL 0x004a11c0
005289f2  8b9594fdffff              MOV EDX,dword ptr [EBP + 0xfffffd94]
005289f8  33c0                      XOR EAX,EAX
005289fa  8b8d90fdffff              MOV ECX,dword ptr [EBP + 0xfffffd90]
00528a00  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
00528a06  298dbcfdffff              SUB dword ptr [EBP + 0xfffffdbc],ECX
00528a0c  c1bdbcfdffff03            SAR dword ptr [EBP + 0xfffffdbc],0x3
00528a13  3985bcfdffff              CMP dword ptr [EBP + 0xfffffdbc],EAX
00528a19  7614                      JBE 0x00528a2f
00528a1b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00528a20  833cc101                  CMP dword ptr [ECX + EAX*0x8],0x1
00528a24  743d                      JZ 0x00528a63
00528a26  40                        INC EAX
00528a27  3b85bcfdffff              CMP EAX,dword ptr [EBP + 0xfffffdbc]
00528a2d  72f1                      JC 0x00528a20
00528a2f  c78580fdffff01000000      MOV dword ptr [EBP + 0xfffffd80],0x1
00528a39  c78584fdffff02000000      MOV dword ptr [EBP + 0xfffffd84],0x2
00528a43  3b9598fdffff              CMP EDX,dword ptr [EBP + 0xfffffd98]
00528a49  7429                      JZ 0x00528a74
00528a4b  c70201000000              MOV dword ptr [EDX],0x1
00528a51  c7420402000000            MOV dword ptr [EDX + 0x4],0x2
00528a58  83c208                    ADD EDX,0x8
00528a5b  899594fdffff              MOV dword ptr [EBP + 0xfffffd94],EDX
00528a61  eb30                      JMP 0x00528a93
00528a63  8344c10402                ADD dword ptr [ECX + EAX*0x8 + 0x4],0x2
00528a68  7929                      JNS 0x00528a93
00528a6a  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
00528a72  eb1f                      JMP 0x00528a93
00528a74  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
00528a7a  50                        PUSH EAX
00528a7b  52                        PUSH EDX
00528a7c  8d8d90fdffff              LEA ECX,[EBP + 0xfffffd90]
00528a82  e83987f7ff                CALL 0x004a11c0
00528a87  8b9594fdffff              MOV EDX,dword ptr [EBP + 0xfffffd94]
00528a8d  8b8d90fdffff              MOV ECX,dword ptr [EBP + 0xfffffd90]
00528a93  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
00528a99  33c0                      XOR EAX,EAX
00528a9b  298dbcfdffff              SUB dword ptr [EBP + 0xfffffdbc],ECX
00528aa1  c1bdbcfdffff03            SAR dword ptr [EBP + 0xfffffdbc],0x3
00528aa8  3985bcfdffff              CMP dword ptr [EBP + 0xfffffdbc],EAX
00528aae  760f                      JBE 0x00528abf
00528ab0  833cc102                  CMP dword ptr [ECX + EAX*0x8],0x2
00528ab4  743d                      JZ 0x00528af3
00528ab6  40                        INC EAX
00528ab7  3b85bcfdffff              CMP EAX,dword ptr [EBP + 0xfffffdbc]
00528abd  72f1                      JC 0x00528ab0
00528abf  c785c0fdffff02000000      MOV dword ptr [EBP + 0xfffffdc0],0x2
00528ac9  c785c4fdffff01000000      MOV dword ptr [EBP + 0xfffffdc4],0x1
00528ad3  3b9598fdffff              CMP EDX,dword ptr [EBP + 0xfffffd98]
00528ad9  7429                      JZ 0x00528b04
00528adb  c70202000000              MOV dword ptr [EDX],0x2
00528ae1  c7420401000000            MOV dword ptr [EDX + 0x4],0x1
00528ae8  83c208                    ADD EDX,0x8
00528aeb  899594fdffff              MOV dword ptr [EBP + 0xfffffd94],EDX
00528af1  eb24                      JMP 0x00528b17
00528af3  8344c10401                ADD dword ptr [ECX + EAX*0x8 + 0x4],0x1
00528af8  791d                      JNS 0x00528b17
00528afa  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
00528b02  eb13                      JMP 0x00528b17
00528b04  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
00528b0a  50                        PUSH EAX
00528b0b  52                        PUSH EDX
00528b0c  8d8d90fdffff              LEA ECX,[EBP + 0xfffffd90]
00528b12  e8a986f7ff                CALL 0x004a11c0
00528b17  e844641c00                CALL 0x006eef60
00528b1c  660f6ec0                  MOVD XMM0,EAX
00528b20  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00528b24  c1e81f                    SHR EAX,0x1f
00528b27  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00528b30  660f5ac0                  CVTPD2PS XMM0,XMM0
00528b34  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00528b3c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00528b44  f30f58c0                  ADDSS XMM0,XMM0
00528b48  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
00528b50  e8cb49efff                CALL 0x0041d520
00528b55  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00528b5d  f30f10855cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd5c]
00528b65  e8d649efff                CALL 0x0041d540
00528b6a  f30f118564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM0
00528b72  e8e9631c00                CALL 0x006eef60
00528b77  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00528b7f  8d8d90fdffff              LEA ECX,[EBP + 0xfffffd90]
00528b85  83c801                    OR EAX,0x1
00528b88  660fd6856cfdffff          MOVQ qword ptr [EBP + 0xfffffd6c],XMM0
00528b90  898568fdffff              MOV dword ptr [EBP + 0xfffffd68],EAX
00528b96  83ec10                    SUB ESP,0x10
00528b99  a174f6b100                MOV EAX,[0x00b1f674]
00528b9e  898574fdffff              MOV dword ptr [EBP + 0xfffffd74],EAX
00528ba4  8bc4                      MOV EAX,ESP
00528ba6  0f108568fdffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffd68]
00528bad  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00528bb0  e83b40f7ff                CALL 0x0049cbf0
00528bb5  83e800                    SUB EAX,0x0
00528bb8  0f84dc000000              JZ 0x00528c9a
00528bbe  83e801                    SUB EAX,0x1
00528bc1  7464                      JZ 0x00528c27
00528bc3  83e801                    SUB EAX,0x1
00528bc6  0f8522010000              JNZ 0x00528cee
00528bcc  50                        PUSH EAX
00528bcd  8d4e48                    LEA ECX,[ESI + 0x48]
00528bd0  68a00fb600                PUSH 0xb60fa0
00528bd5  e8a617eeff                CALL 0x0040a380
00528bda  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00528bde  7410                      JZ 0x00528bf0
00528be0  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
00528be8  8d4e78                    LEA ECX,[ESI + 0x78]
00528beb  e81002eeff                CALL 0x00408e00
00528bf0  e86b631c00                CALL 0x006eef60
00528bf5  660f6ec0                  MOVD XMM0,EAX
00528bf9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00528bfd  c1e81f                    SHR EAX,0x1f
00528c00  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00528c09  660f5ac8                  CVTPD2PS XMM1,XMM0
00528c0d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00528c15  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00528c1d  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
00528c25  eb56                      JMP 0x00528c7d
00528c27  6a00                      PUSH 0x0
00528c29  8d4e48                    LEA ECX,[ESI + 0x48]
00528c2c  681cdeb100                PUSH 0xb1de1c
00528c31  e84a17eeff                CALL 0x0040a380
00528c36  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00528c3a  7410                      JZ 0x00528c4c
00528c3c  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00528c44  8d4e78                    LEA ECX,[ESI + 0x78]
00528c47  e8b401eeff                CALL 0x00408e00
00528c4c  e80f631c00                CALL 0x006eef60
00528c51  660f6ec0                  MOVD XMM0,EAX
00528c55  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00528c59  c1e81f                    SHR EAX,0x1f
00528c5c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00528c65  660f5ac8                  CVTPD2PS XMM1,XMM0
00528c69  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00528c71  f30f58c9                  ADDSS XMM1,XMM1
00528c75  f30f580de8a7ba00          ADDSS XMM1,dword ptr [0x00baa7e8]
00528c7d  f30f109564fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd64]
00528c85  0f28c1                    MOVAPS XMM0,XMM1
00528c88  f30f59d0                  MULSS XMM2,XMM0
00528c8c  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
00528c94  f30f59c1                  MULSS XMM0,XMM1
00528c98  eb64                      JMP 0x00528cfe
00528c9a  6a00                      PUSH 0x0
00528c9c  8d4e48                    LEA ECX,[ESI + 0x48]
00528c9f  68a80fb600                PUSH 0xb60fa8
00528ca4  e8d716eeff                CALL 0x0040a380
00528ca9  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00528cad  7410                      JZ 0x00528cbf
00528caf  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00528cb7  8d4e78                    LEA ECX,[ESI + 0x78]
00528cba  e84101eeff                CALL 0x00408e00
00528cbf  e89c621c00                CALL 0x006eef60
00528cc4  660f6ec0                  MOVD XMM0,EAX
00528cc8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00528ccc  c1e81f                    SHR EAX,0x1f
00528ccf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00528cd8  660f5ac8                  CVTPD2PS XMM1,XMM0
00528cdc  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00528ce4  f30f580d84a7ba00          ADDSS XMM1,dword ptr [0x00baa784]
00528cec  eb8f                      JMP 0x00528c7d
00528cee  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
00528cf6  f30f109564fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd64]
00528cfe  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00528d05  8b8d90fdffff              MOV ECX,dword ptr [EBP + 0xfffffd90]
00528d0b  f30f119634030000          MOVSS dword ptr [ESI + 0x334],XMM2
00528d13  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
00528d1b  c786640b000006000000      MOV dword ptr [ESI + 0xb64],0x6
00528d25  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
00528d2d  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00528d35  85c9                      TEST ECX,ECX
00528d37  7430                      JZ 0x00528d69
00528d39  8b8598fdffff              MOV EAX,dword ptr [EBP + 0xfffffd98]
00528d3f  2bc1                      SUB EAX,ECX
00528d41  c1f803                    SAR EAX,0x3
00528d44  50                        PUSH EAX
00528d45  51                        PUSH ECX
00528d46  e8f5dbefff                CALL 0x00426940
00528d4b  c78590fdffff00000000      MOV dword ptr [EBP + 0xfffffd90],0x0
00528d55  c78594fdffff00000000      MOV dword ptr [EBP + 0xfffffd94],0x0
00528d5f  c78598fdffff00000000      MOV dword ptr [EBP + 0xfffffd98],0x0
00528d69  be06000000                MOV ESI,0x6
00528d6e  8b95a4fdffff              MOV EDX,dword ptr [EBP + 0xfffffda4]
00528d74  83ea01                    SUB EDX,0x1
00528d77  8995a4fdffff              MOV dword ptr [EBP + 0xfffffda4],EDX
00528d7d  0f85dffaffff              JNZ 0x00528862
00528d83  8db73c030000              LEA ESI,[EDI + 0x33c]
00528d89  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00528d8d  7409                      JZ 0x00528d98
00528d8f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00528d96  7510                      JNZ 0x00528da8
00528d98  8d4dc4                    LEA ECX,[EBP + -0x3c]
00528d9b  e8d0cef0ff                CALL 0x00435c70
00528da0  8b17                      MOV EDX,dword ptr [EDI]
00528da2  8bcf                      MOV ECX,EDI
00528da4  50                        PUSH EAX
00528da5  ff5224                    CALL dword ptr [EDX + 0x24]
00528da8  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00528daf  0f84a5000000              JZ 0x00528e5a
00528db5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00528dbb  83f805                    CMP EAX,0x5
00528dbe  0f8496000000              JZ 0x00528e5a
00528dc4  83f812                    CMP EAX,0x12
00528dc7  0f848d000000              JZ 0x00528e5a
00528dcd  6a00                      PUSH 0x0
00528dcf  686c0fb600                PUSH 0xb60f6c
00528dd4  8d4f48                    LEA ECX,[EDI + 0x48]
00528dd7  e8a415eeff                CALL 0x0040a380
00528ddc  6a00                      PUSH 0x0
00528dde  6800000001                PUSH 0x1000000
00528de3  8bcf                      MOV ECX,EDI
00528de5  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00528def  e83ce6eeff                CALL 0x00417430
00528df4  8bcf                      MOV ECX,EDI
00528df6  88858bfdffff              MOV byte ptr [EBP + 0xfffffd8b],AL
00528dfc  e82f581800                CALL 0x006ae630
00528e01  80bd8bfdffff00            CMP byte ptr [EBP + 0xfffffd8b],0x0
00528e08  741d                      JZ 0x00528e27
00528e0a  57                        PUSH EDI
00528e0b  8d4dc4                    LEA ECX,[EBP + -0x3c]
00528e0e  e8fd84f0ff                CALL 0x00431310
00528e13  6a00                      PUSH 0x0
00528e15  6a00                      PUSH 0x0
00528e17  686affffff                PUSH 0xffffff6a
00528e1c  8d45c4                    LEA EAX,[EBP + -0x3c]
00528e1f  8bcf                      MOV ECX,EDI
00528e21  50                        PUSH EAX
00528e22  e8e9cd1800                CALL 0x006b5c10
00528e27  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
00528e31  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00528e38  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
00528e3f  c78780030000cdcccc3d      MOV dword ptr [EDI + 0x380],0x3dcccccd
00528e49  8b06                      MOV EAX,dword ptr [ESI]
00528e4b  898734030000              MOV dword ptr [EDI + 0x334],EAX
00528e51  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00528e54  898738030000              MOV dword ptr [EDI + 0x338],EAX
00528e5a  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00528e62  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00528e6a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00528e72  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00528e7a  2bc8                      SUB ECX,EAX
00528e7c  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00528e82  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00528e8a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00528e8d  64890d00000000            MOV dword ptr FS:[0x0],ECX
00528e94  59                        POP ECX
00528e95  5f                        POP EDI
00528e96  5e                        POP ESI
00528e97  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00528e9a  33cd                      XOR ECX,EBP
00528e9c  e88a625c00                CALL 0x00aef12b
00528ea1  8be5                      MOV ESP,EBP
00528ea3  5d                        POP EBP
00528ea4  8be3                      MOV ESP,EBX
00528ea6  5b                        POP EBX
00528ea7  c3                        RET
