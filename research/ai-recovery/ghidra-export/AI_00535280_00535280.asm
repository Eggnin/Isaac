; J460 NPC AI 0x00535280 AI_00535280
; types=220,871
; identities=220.0.0,220.1.0,871.0.0
; entry=00535280
00535280  55                        PUSH EBP
00535281  8bec                      MOV EBP,ESP
00535283  83e4f8                    AND ESP,0xfffffff8
00535286  81ecb4020000              SUB ESP,0x2b4
0053528c  a1b493bf00                MOV EAX,[0x00bf93b4]
00535291  33c4                      XOR EAX,ESP
00535293  898424b0020000            MOV dword ptr [ESP + 0x2b0],EAX
0053529a  53                        PUSH EBX
0053529b  8bd9                      MOV EBX,ECX
0053529d  56                        PUSH ESI
0053529e  57                        PUSH EDI
0053529f  895c2450                  MOV dword ptr [ESP + 0x50],EBX
005352a3  8b8b640b0000              MOV ECX,dword ptr [EBX + 0xb64]
005352a9  85c9                      TEST ECX,ECX
005352ab  0f85f2000000              JNZ 0x005353a3
005352b1  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
005352b5  8d8be4010000              LEA ECX,[EBX + 0x1e4]
005352bb  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
005352c5  756e                      JNZ 0x00535335
005352c7  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
005352ce  8d8424f0010000            LEA EAX,[ESP + 0x1f0]
005352d5  c784241002000000000000    MOV dword ptr [ESP + 0x210],0x0
005352e0  0f57c9                    XORPS XMM1,XMM1
005352e3  c784241402000000000000    MOV dword ptr [ESP + 0x214],0x0
005352ee  c784241802000000000000    MOV dword ptr [ESP + 0x218],0x0
005352f9  3bc8                      CMP ECX,EAX
005352fb  0f84cf190000              JZ 0x00536cd0
00535301  8b842418020000            MOV EAX,dword ptr [ESP + 0x218]
00535308  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0053530b  f30f7e842410020000        MOVQ XMM0,qword ptr [ESP + 0x210]
00535314  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00535319  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0053531d  894128                    MOV dword ptr [ECX + 0x28],EAX
00535320  5f                        POP EDI
00535321  5e                        POP ESI
00535322  5b                        POP EBX
00535323  8b8c24b0020000            MOV ECX,dword ptr [ESP + 0x2b0]
0053532a  33cc                      XOR ECX,ESP
0053532c  e8fa9d5b00                CALL 0x00aef12b
00535331  8be5                      MOV ESP,EBP
00535333  5d                        POP EBP
00535334  c3                        RET
00535335  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0053533c  8d8424c4010000            LEA EAX,[ESP + 0x1c4]
00535343  c78424e40100008382823e    MOV dword ptr [ESP + 0x1e4],0x3e828283
0053534e  0f57c0                    XORPS XMM0,XMM0
00535351  c78424e8010000a5a4243e    MOV dword ptr [ESP + 0x1e8],0x3e24a4a5
0053535c  c78424ec0100008d8c0c3e    MOV dword ptr [ESP + 0x1ec],0x3e0c8c8d
00535367  3bc8                      CMP ECX,EAX
00535369  0f8461190000              JZ 0x00536cd0
0053536f  8b8424ec010000            MOV EAX,dword ptr [ESP + 0x1ec]
00535376  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0053537a  f30f7e8424e4010000        MOVQ XMM0,qword ptr [ESP + 0x1e4]
00535383  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00535388  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0053538b  894128                    MOV dword ptr [ECX + 0x28],EAX
0053538e  5f                        POP EDI
0053538f  5e                        POP ESI
00535390  5b                        POP EBX
00535391  8b8c24b0020000            MOV ECX,dword ptr [ESP + 0x2b0]
00535398  33cc                      XOR ECX,ESP
0053539a  e88c9d5b00                CALL 0x00aef12b
0053539f  8be5                      MOV ESP,EBP
005353a1  5d                        POP EBP
005353a2  c3                        RET
005353a3  8b5328                    MOV EDX,dword ptr [EBX + 0x28]
005353a6  0f57c9                    XORPS XMM1,XMM1
005353a9  81fa67030000              CMP EDX,0x367
005353af  751d                      JNZ 0x005353ce
005353b1  a17816c700                MOV EAX,[0x00c71678]
005353b6  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005353bc  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
005353c4  b806000000                MOV EAX,0x6
005353c9  0f2fc1                    COMISS XMM0,XMM1
005353cc  7705                      JA 0x005353d3
005353ce  b805000000                MOV EAX,0x5
005353d3  898384010000              MOV dword ptr [EBX + 0x184],EAX
005353d9  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
005353e0  0f8451030000              JZ 0x00535737
005353e6  6683bb760c000000          CMP word ptr [EBX + 0xc76],0x0
005353ee  0f8543030000              JNZ 0x00535737
005353f4  81fa67030000              CMP EDX,0x367
005353fa  0f8599010000              JNZ 0x00535599
00535400  bf02000000                MOV EDI,0x2
00535405  e8569b1b00                CALL 0x006eef60
0053540a  660f6ec0                  MOVD XMM0,EAX
0053540e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00535412  c1e81f                    SHR EAX,0x1f
00535415  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053541e  660f5ac0                  CVTPD2PS XMM0,XMM0
00535422  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053542a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00535432  f30f58c0                  ADDSS XMM0,XMM0
00535436  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0053543c  e8ff80eeff                CALL 0x0041d540
00535441  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00535447  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0053544d  e8ce80eeff                CALL 0x0041d520
00535452  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00535458  e8039b1b00                CALL 0x006eef60
0053545d  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
00535463  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0053546b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00535471  6a00                      PUSH 0x0
00535473  50                        PUSH EAX
00535474  f30f588b3c030000          ADDSS XMM1,dword ptr [EBX + 0x33c]
0053547c  6a00                      PUSH 0x0
0053547e  53                        PUSH EBX
0053547f  6840b6c700                PUSH 0xc7b640
00535484  8d8424b4000000            LEA EAX,[ESP + 0xb4]
0053548b  f30f118c24b4000000        MOVSS dword ptr [ESP + 0xb4],XMM1
00535494  f30f104c2428              MOVSS XMM1,dword ptr [ESP + 0x28]
0053549a  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
005354a2  50                        PUSH EAX
005354a3  6a00                      PUSH 0x0
005354a5  6866030000                PUSH 0x366
005354aa  f30f588b40030000          ADDSS XMM1,dword ptr [EBX + 0x340]
005354b2  f30f118c24c4000000        MOVSS dword ptr [ESP + 0xc4],XMM1
005354bb  e8508f1c00                CALL 0x006fe410
005354c0  8bf0                      MOV ESI,EAX
005354c2  e8999a1b00                CALL 0x006eef60
005354c7  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
005354cf  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
005354d5  f30f10642414              MOVSS XMM4,dword ptr [ESP + 0x14]
005354db  660f6ec0                  MOVD XMM0,EAX
005354df  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005354e3  c1e81f                    SHR EAX,0x1f
005354e6  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
005354ed  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005354f6  9f                        LAHF
005354f7  660f5ac0                  CVTPD2PS XMM0,XMM0
005354fb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00535503  f30f58c0                  ADDSS XMM0,XMM0
00535507  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
0053550f  f30f59d8                  MULSS XMM3,XMM0
00535513  f30f59e0                  MULSS XMM4,XMM0
00535517  f6c444                    TEST AH,0x44
0053551a  7b3b                      JNP 0x00535557
0053551c  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
00535524  0f28c1                    MOVAPS XMM0,XMM1
00535527  f30f59cc                  MULSS XMM1,XMM4
0053552b  f30f59c3                  MULSS XMM0,XMM3
0053552f  f30f5eca                  DIVSS XMM1,XMM2
00535533  f30f5ec2                  DIVSS XMM0,XMM2
00535537  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
0053553f  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
00535547  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0053554f  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00535557  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0053555d  8bce                      MOV ECX,ESI
0053555f  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00535566  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0053556c  8b06                      MOV EAX,dword ptr [ESI]
0053556e  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00535578  ff500c                    CALL dword ptr [EAX + 0xc]
0053557b  83ef01                    SUB EDI,0x1
0053557e  0f8581feffff              JNZ 0x00535405
00535584  5f                        POP EDI
00535585  5e                        POP ESI
00535586  5b                        POP EBX
00535587  8b8c24b0020000            MOV ECX,dword ptr [ESP + 0x2b0]
0053558e  33cc                      XOR ECX,ESP
00535590  e8969b5b00                CALL 0x00aef12b
00535595  8be5                      MOV ESP,EBP
00535597  5d                        POP EBP
00535598  c3                        RET
00535599  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
0053559d  0f85c7000000              JNZ 0x0053566a
005355a3  e8b8991b00                CALL 0x006eef60
005355a8  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
005355b0  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
005355b8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005355be  6a00                      PUSH 0x0
005355c0  50                        PUSH EAX
005355c1  6a00                      PUSH 0x0
005355c3  53                        PUSH EBX
005355c4  f30f118424b8000000        MOVSS dword ptr [ESP + 0xb8],XMM0
005355cd  8d8424b8000000            LEA EAX,[ESP + 0xb8]
005355d4  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
005355dc  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
005355e4  6840b6c700                PUSH 0xc7b640
005355e9  50                        PUSH EAX
005355ea  6a01                      PUSH 0x1
005355ec  6a0f                      PUSH 0xf
005355ee  f30f118424cc000000        MOVSS dword ptr [ESP + 0xcc],XMM0
005355f7  e8148e1c00                CALL 0x006fe410
005355fc  e85f991b00                CALL 0x006eef60
00535601  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
00535609  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00535611  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00535617  6a00                      PUSH 0x0
00535619  50                        PUSH EAX
0053561a  6a00                      PUSH 0x0
0053561c  53                        PUSH EBX
0053561d  f30f118424c0000000        MOVSS dword ptr [ESP + 0xc0],XMM0
00535626  8d8424c0000000            LEA EAX,[ESP + 0xc0]
0053562d  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
00535635  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0053563d  6840b6c700                PUSH 0xc7b640
00535642  50                        PUSH EAX
00535643  6a01                      PUSH 0x1
00535645  6a0f                      PUSH 0xf
00535647  f30f118424d4000000        MOVSS dword ptr [ESP + 0xd4],XMM0
00535650  e8bb8d1c00                CALL 0x006fe410
00535655  5f                        POP EDI
00535656  5e                        POP ESI
00535657  5b                        POP EBX
00535658  8b8c24b0020000            MOV ECX,dword ptr [ESP + 0x2b0]
0053565f  33cc                      XOR ECX,ESP
00535661  e8c59a5b00                CALL 0x00aef12b
00535666  8be5                      MOV ESP,EBP
00535668  5d                        POP EBP
00535669  c3                        RET
0053566a  e8f1981b00                CALL 0x006eef60
0053566f  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
00535677  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
0053567f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00535685  6a00                      PUSH 0x0
00535687  50                        PUSH EAX
00535688  6a00                      PUSH 0x0
0053568a  53                        PUSH EBX
0053568b  f30f118424c8000000        MOVSS dword ptr [ESP + 0xc8],XMM0
00535694  8d8424c8000000            LEA EAX,[ESP + 0xc8]
0053569b  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
005356a3  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
005356ab  6840b6c700                PUSH 0xc7b640
005356b0  50                        PUSH EAX
005356b1  6a00                      PUSH 0x0
005356b3  68d9000000                PUSH 0xd9
005356b8  f30f118424dc000000        MOVSS dword ptr [ESP + 0xdc],XMM0
005356c1  e84a8d1c00                CALL 0x006fe410
005356c6  e895981b00                CALL 0x006eef60
005356cb  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
005356d3  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
005356db  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005356e1  6a00                      PUSH 0x0
005356e3  50                        PUSH EAX
005356e4  6a00                      PUSH 0x0
005356e6  53                        PUSH EBX
005356e7  f30f118424d0000000        MOVSS dword ptr [ESP + 0xd0],XMM0
005356f0  8d8424d0000000            LEA EAX,[ESP + 0xd0]
005356f7  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
005356ff  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00535707  6840b6c700                PUSH 0xc7b640
0053570c  50                        PUSH EAX
0053570d  6a00                      PUSH 0x0
0053570f  68d9000000                PUSH 0xd9
00535714  f30f118424e4000000        MOVSS dword ptr [ESP + 0xe4],XMM0
0053571d  e8ee8c1c00                CALL 0x006fe410
00535722  5f                        POP EDI
00535723  5e                        POP ESI
00535724  5b                        POP EBX
00535725  8b8c24b0020000            MOV ECX,dword ptr [ESP + 0x2b0]
0053572c  33cc                      XOR ECX,ESP
0053572e  e8f8995b00                CALL 0x00aef12b
00535733  8be5                      MOV ESP,EBP
00535735  5d                        POP EBP
00535736  c3                        RET
00535737  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
0053573f  bf03000000                MOV EDI,0x3
00535744  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0053574c  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00535754  3bcf                      CMP ECX,EDI
00535756  0f858f010000              JNZ 0x005358eb
0053575c  6a00                      PUSH 0x0
0053575e  6854bcb100                PUSH 0xb1bc54
00535763  8d4b48                    LEA ECX,[EBX + 0x48]
00535766  e8154cedff                CALL 0x0040a380
0053576b  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00535772  744b                      JZ 0x005357bf
00535774  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0053577c  8d84241c020000            LEA EAX,[ESP + 0x21c]
00535783  50                        PUSH EAX
00535784  8bcb                      MOV ECX,EBX
00535786  e8452b1a00                CALL 0x006d82d0
0053578b  8bc8                      MOV ECX,EAX
0053578d  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00535791  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00535798  9f                        LAHF
00535799  f6c444                    TEST AH,0x44
0053579c  7a18                      JP 0x005357b6
0053579e  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
005357a3  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005357aa  9f                        LAHF
005357ab  f6c444                    TEST AH,0x44
005357ae  7a06                      JP 0x005357b6
005357b0  33c0                      XOR EAX,EAX
005357b2  85c0                      TEST EAX,EAX
005357b4  eb2c                      JMP 0x005357e2
005357b6  b801000000                MOV EAX,0x1
005357bb  85c0                      TEST EAX,EAX
005357bd  eb23                      JMP 0x005357e2
005357bf  e89c971b00                CALL 0x006eef60
005357c4  33d2                      XOR EDX,EDX
005357c6  b905000000                MOV ECX,0x5
005357cb  f7f1                      DIV ECX
005357cd  85d2                      TEST EDX,EDX
005357cf  0f8501010000              JNZ 0x005358d6
005357d5  ff7320                    PUSH dword ptr [EBX + 0x20]
005357d8  51                        PUSH ECX
005357d9  8bcb                      MOV ECX,EBX
005357db  e8306f1700                CALL 0x006ac710
005357e0  84c0                      TEST AL,AL
005357e2  0f84ee000000              JZ 0x005358d6
005357e8  8b836c010000              MOV EAX,dword ptr [EBX + 0x16c]
005357ee  8b8b68010000              MOV ECX,dword ptr [EBX + 0x168]
005357f4  89442444                  MOV dword ptr [ESP + 0x44],EAX
005357f8  8bc1                      MOV EAX,ECX
005357fa  2500080001                AND EAX,0x1000800
005357ff  83c800                    OR EAX,0x0
00535802  7469                      JZ 0x0053586d
00535804  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
0053580b  7560                      JNZ 0x0053586d
0053580d  51                        PUSH ECX
0053580e  c783b00b000000000000      MOV dword ptr [EBX + 0xbb0],0x0
00535818  8d842428020000            LEA EAX,[ESP + 0x228]
0053581f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00535826  8bcb                      MOV ECX,EBX
00535828  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00535832  50                        PUSH EAX
00535833  c783c00b000000000000      MOV dword ptr [EBX + 0xbc0],0x0
0053583d  e8fe931800                CALL 0x006bec40
00535842  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00535846  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0053584b  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
00535853  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
0053585b  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
00535863  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
0053586b  eb69                      JMP 0x005358d6
0053586d  81e100020000              AND ECX,0x200
00535873  83c900                    OR ECX,0x0
00535876  744a                      JZ 0x005358c2
00535878  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
0053587f  7541                      JNZ 0x005358c2
00535881  c783b00b000000000000      MOV dword ptr [EBX + 0xbb0],0x0
0053588b  8d84242c020000            LEA EAX,[ESP + 0x22c]
00535892  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
0053589c  50                        PUSH EAX
0053589d  c783c00b000000000000      MOV dword ptr [EBX + 0xbc0],0x0
005358a7  e8c4971400                CALL 0x0067f070
005358ac  83c404                    ADD ESP,0x4
005358af  8b08                      MOV ECX,dword ptr [EAX]
005358b1  898b60030000              MOV dword ptr [EBX + 0x360],ECX
005358b7  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005358ba  898364030000              MOV dword ptr [EBX + 0x364],EAX
005358c0  eb14                      JMP 0x005358d6
005358c2  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
005358cc  c783c00b000000000000      MOV dword ptr [EBX + 0xbc0],0x0
005358d6  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
005358de  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005358e6  e9d0060000                JMP 0x00535fbb
005358eb  83f904                    CMP ECX,0x4
005358ee  0f8445040000              JZ 0x00535d39
005358f4  83f906                    CMP ECX,0x6
005358f7  0f843c040000              JZ 0x00535d39
005358fd  83f908                    CMP ECX,0x8
00535900  0f8588020000              JNZ 0x00535b8e
00535906  6a00                      PUSH 0x0
00535908  683cd5b100                PUSH 0xb1d53c
0053590d  8d4b48                    LEA ECX,[EBX + 0x48]
00535910  e86b4aedff                CALL 0x0040a380
00535915  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0053591d  8bcb                      MOV ECX,EBX
0053591f  6a01                      PUSH 0x1
00535921  e8fa311a00                CALL 0x006d8b20
00535926  68fcd7b100                PUSH 0xb1d7fc
0053592b  8d4b48                    LEA ECX,[EBX + 0x48]
0053592e  e8fd56edff                CALL 0x0040b030
00535933  84c0                      TEST AL,AL
00535935  0f8418020000              JZ 0x00535b53
0053593b  817b2867030000            CMP dword ptr [EBX + 0x28],0x367
00535942  8db33c030000              LEA ESI,[EBX + 0x33c]
00535948  8bcb                      MOV ECX,EBX
0053594a  0f85d7000000              JNZ 0x00535a27
00535950  e8eb8e1800                CALL 0x006be840
00535955  8d8c24c8000000            LEA ECX,[ESP + 0xc8]
0053595c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00535964  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0053596c  8d442454                  LEA EAX,[ESP + 0x54]
00535970  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00535974  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00535979  50                        PUSH EAX
0053597a  f30f118424cc000000        MOVSS dword ptr [ESP + 0xcc],XMM0
00535983  f30f118c24d0000000        MOVSS dword ptr [ESP + 0xd0],XMM1
0053598c  e89fa64d00                CALL 0x00a10030
00535991  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00535998  747c                      JZ 0x00535a16
0053599a  8d842434020000            LEA EAX,[ESP + 0x234]
005359a1  8bcb                      MOV ECX,EBX
005359a3  50                        PUSH EAX
005359a4  e887331a00                CALL 0x006d8d30
005359a9  56                        PUSH ESI
005359aa  8bc8                      MOV ECX,EAX
005359ac  e87fac4d00                CALL 0x00a10630
005359b1  84c0                      TEST AL,AL
005359b3  7461                      JZ 0x00535a16
005359b5  8d84243c020000            LEA EAX,[ESP + 0x23c]
005359bc  8bcb                      MOV ECX,EBX
005359be  50                        PUSH EAX
005359bf  e86c331a00                CALL 0x006d8d30
005359c4  8d8c24d0000000            LEA ECX,[ESP + 0xd0]
005359cb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005359cf  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
005359d3  f30f118424d0000000        MOVSS dword ptr [ESP + 0xd0],XMM0
005359dc  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005359e1  8d842444020000            LEA EAX,[ESP + 0x244]
005359e8  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005359ed  50                        PUSH EAX
005359ee  f30f118424d8000000        MOVSS dword ptr [ESP + 0xd8],XMM0
005359f7  e834a64d00                CALL 0x00a10030
005359fc  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00535a00  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00535a05  f30f11542454              MOVSS dword ptr [ESP + 0x54],XMM2
00535a0b  f30f115c2458              MOVSS dword ptr [ESP + 0x58],XMM3
00535a11  e9e0000000                JMP 0x00535af6
00535a16  f30f105c2458              MOVSS XMM3,dword ptr [ESP + 0x58]
00535a1c  f30f10542454              MOVSS XMM2,dword ptr [ESP + 0x54]
00535a22  e9cf000000                JMP 0x00535af6
00535a27  e8148e1800                CALL 0x006be840
00535a2c  8d8c24d8000000            LEA ECX,[ESP + 0xd8]
00535a33  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00535a3b  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00535a43  8d44245c                  LEA EAX,[ESP + 0x5c]
00535a47  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00535a4b  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00535a50  50                        PUSH EAX
00535a51  f30f118424dc000000        MOVSS dword ptr [ESP + 0xdc],XMM0
00535a5a  f30f118c24e0000000        MOVSS dword ptr [ESP + 0xe0],XMM1
00535a63  e8c8a54d00                CALL 0x00a10030
00535a68  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00535a6f  7479                      JZ 0x00535aea
00535a71  8d84247c020000            LEA EAX,[ESP + 0x27c]
00535a78  8bcb                      MOV ECX,EBX
00535a7a  50                        PUSH EAX
00535a7b  e8b0321a00                CALL 0x006d8d30
00535a80  56                        PUSH ESI
00535a81  8bc8                      MOV ECX,EAX
00535a83  e8a8ab4d00                CALL 0x00a10630
00535a88  84c0                      TEST AL,AL
00535a8a  745e                      JZ 0x00535aea
00535a8c  8d84244c020000            LEA EAX,[ESP + 0x24c]
00535a93  8bcb                      MOV ECX,EBX
00535a95  50                        PUSH EAX
00535a96  e895321a00                CALL 0x006d8d30
00535a9b  8d8c24e0000000            LEA ECX,[ESP + 0xe0]
00535aa2  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00535aa6  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00535aaa  f30f118424e0000000        MOVSS dword ptr [ESP + 0xe0],XMM0
00535ab3  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00535ab8  8d842454020000            LEA EAX,[ESP + 0x254]
00535abf  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00535ac4  50                        PUSH EAX
00535ac5  f30f118424e8000000        MOVSS dword ptr [ESP + 0xe8],XMM0
00535ace  e85da54d00                CALL 0x00a10030
00535ad3  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00535ad7  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00535adc  f30f1154245c              MOVSS dword ptr [ESP + 0x5c],XMM2
00535ae2  f30f115c2460              MOVSS dword ptr [ESP + 0x60],XMM3
00535ae8  eb0c                      JMP 0x00535af6
00535aea  f30f105c2460              MOVSS XMM3,dword ptr [ESP + 0x60]
00535af0  f30f1054245c              MOVSS XMM2,dword ptr [ESP + 0x5c]
00535af6  f30f591d7ca8ba00          MULSS XMM3,dword ptr [0x00baa87c]
00535afe  51                        PUSH ECX
00535aff  f30f108b6c030000          MOVSS XMM1,dword ptr [EBX + 0x36c]
00535b07  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
00535b0f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00535b16  f30f5ed9                  DIVSS XMM3,XMM1
00535b1a  6a00                      PUSH 0x0
00535b1c  6a64                      PUSH 0x64
00535b1e  51                        PUSH ECX
00535b1f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00535b26  8bcb                      MOV ECX,EBX
00535b28  6a39                      PUSH 0x39
00535b2a  f30f5ed1                  DIVSS XMM2,XMM1
00535b2e  f30f589b64030000          ADDSS XMM3,dword ptr [EBX + 0x364]
00535b36  f30f589360030000          ADDSS XMM2,dword ptr [EBX + 0x360]
00535b3e  f30f119b64030000          MOVSS dword ptr [EBX + 0x364],XMM3
00535b46  f30f119360030000          MOVSS dword ptr [EBX + 0x360],XMM2
00535b4e  e84d101a00                CALL 0x006d6ba0
00535b53  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
00535b57  740d                      JZ 0x00535b66
00535b59  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00535b60  0f855d040000              JNZ 0x00535fc3
00535b66  33c0                      XOR EAX,EAX
00535b68  c783b00b000000000000      MOV dword ptr [EBX + 0xbb0],0x0
00535b72  817b2867030000            CMP dword ptr [EBX + 0x28],0x367
00535b79  0f94c0                    SETZ AL
00535b7c  8d044504000000            LEA EAX,[EAX*0x2 + 0x4]
00535b83  8983640b0000              MOV dword ptr [EBX + 0xb64],EAX
00535b89  e935040000                JMP 0x00535fc3
00535b8e  83f909                    CMP ECX,0x9
00535b91  0f852c040000              JNZ 0x00535fc3
00535b97  6a00                      PUSH 0x0
00535b99  6854d5b100                PUSH 0xb1d554
00535b9e  8d4b48                    LEA ECX,[EBX + 0x48]
00535ba1  e8da47edff                CALL 0x0040a380
00535ba6  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00535bae  8bcb                      MOV ECX,EBX
00535bb0  6a01                      PUSH 0x1
00535bb2  e8692f1a00                CALL 0x006d8b20
00535bb7  68fcd7b100                PUSH 0xb1d7fc
00535bbc  8d4b48                    LEA ECX,[EBX + 0x48]
00535bbf  e86c54edff                CALL 0x0040b030
00535bc4  84c0                      TEST AL,AL
00535bc6  0f8441010000              JZ 0x00535d0d
00535bcc  8bcb                      MOV ECX,EBX
00535bce  e86d8c1800                CALL 0x006be840
00535bd3  8db33c030000              LEA ESI,[EBX + 0x33c]
00535bd9  8d8c24e8000000            LEA ECX,[ESP + 0xe8]
00535be0  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00535be8  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00535bf0  8d442464                  LEA EAX,[ESP + 0x64]
00535bf4  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00535bf8  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00535bfd  50                        PUSH EAX
00535bfe  f30f118424ec000000        MOVSS dword ptr [ESP + 0xec],XMM0
00535c07  f30f118c24f0000000        MOVSS dword ptr [ESP + 0xf0],XMM1
00535c10  e81ba44d00                CALL 0x00a10030
00535c15  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00535c1c  7479                      JZ 0x00535c97
00535c1e  8d84245c020000            LEA EAX,[ESP + 0x25c]
00535c25  8bcb                      MOV ECX,EBX
00535c27  50                        PUSH EAX
00535c28  e803311a00                CALL 0x006d8d30
00535c2d  56                        PUSH ESI
00535c2e  8bc8                      MOV ECX,EAX
00535c30  e8fba94d00                CALL 0x00a10630
00535c35  84c0                      TEST AL,AL
00535c37  745e                      JZ 0x00535c97
00535c39  8d842464020000            LEA EAX,[ESP + 0x264]
00535c40  8bcb                      MOV ECX,EBX
00535c42  50                        PUSH EAX
00535c43  e8e8301a00                CALL 0x006d8d30
00535c48  8d8c24f0000000            LEA ECX,[ESP + 0xf0]
00535c4f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00535c53  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00535c57  f30f118424f0000000        MOVSS dword ptr [ESP + 0xf0],XMM0
00535c60  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00535c65  8d84246c020000            LEA EAX,[ESP + 0x26c]
00535c6c  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00535c71  50                        PUSH EAX
00535c72  f30f118424f8000000        MOVSS dword ptr [ESP + 0xf8],XMM0
00535c7b  e8b0a34d00                CALL 0x00a10030
00535c80  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00535c84  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00535c89  f30f114c2464              MOVSS dword ptr [ESP + 0x64],XMM1
00535c8f  f30f11542468              MOVSS dword ptr [ESP + 0x68],XMM2
00535c95  eb0c                      JMP 0x00535ca3
00535c97  f30f10542468              MOVSS XMM2,dword ptr [ESP + 0x68]
00535c9d  f30f104c2464              MOVSS XMM1,dword ptr [ESP + 0x64]
00535ca3  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00535cab  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
00535cb2  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00535cba  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
00535cc2  9f                        LAHF
00535cc3  f6c444                    TEST AH,0x44
00535cc6  7b28                      JNP 0x00535cf0
00535cc8  f30f5ec8                  DIVSS XMM1,XMM0
00535ccc  f30f5ed0                  DIVSS XMM2,XMM0
00535cd0  f30f588b60030000          ADDSS XMM1,dword ptr [EBX + 0x360]
00535cd8  f30f589364030000          ADDSS XMM2,dword ptr [EBX + 0x364]
00535ce0  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
00535ce8  f30f119364030000          MOVSS dword ptr [EBX + 0x364],XMM2
00535cf0  51                        PUSH ECX
00535cf1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00535cf8  6a00                      PUSH 0x0
00535cfa  6a64                      PUSH 0x64
00535cfc  51                        PUSH ECX
00535cfd  c704240000803f            MOV dword ptr [ESP],0x3f800000
00535d04  8bcb                      MOV ECX,EBX
00535d06  6a39                      PUSH 0x39
00535d08  e8930e1a00                CALL 0x006d6ba0
00535d0d  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
00535d11  740d                      JZ 0x00535d20
00535d13  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00535d1a  0f85a3020000              JNZ 0x00535fc3
00535d20  c783b00b000000000000      MOV dword ptr [EBX + 0xbb0],0x0
00535d2a  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00535d34  e98a020000                JMP 0x00535fc3
00535d39  6a00                      PUSH 0x0
00535d3b  68fcd7b100                PUSH 0xb1d7fc
00535d40  8d4b48                    LEA ECX,[EBX + 0x48]
00535d43  e83846edff                CALL 0x0040a380
00535d48  817b2867030000            CMP dword ptr [EBX + 0x28],0x367
00535d4f  0f8544010000              JNZ 0x00535e99
00535d55  8bb3640b0000              MOV ESI,dword ptr [EBX + 0xb64]
00535d5b  83fe06                    CMP ESI,0x6
00535d5e  7517                      JNZ 0x00535d77
00535d60  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00535d68  8bcb                      MOV ECX,EBX
00535d6a  6a01                      PUSH 0x1
00535d6c  e8af2d1a00                CALL 0x006d8b20
00535d71  8bb3640b0000              MOV ESI,dword ptr [EBX + 0xb64]
00535d77  f30f10839c030000          MOVSS XMM0,dword ptr [EBX + 0x39c]
00535d7f  0f28d0                    MOVAPS XMM2,XMM0
00535d82  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00535d88  f30f5893b00b0000          ADDSS XMM2,dword ptr [EBX + 0xbb0]
00535d90  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00535d98  0f2fc2                    COMISS XMM0,XMM2
00535d9b  f30f11542430              MOVSS dword ptr [ESP + 0x30],XMM2
00535da1  f30f1193b00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM2
00535da9  0f8687000000              JBE 0x00535e36
00535daf  51                        PUSH ECX
00535db0  8d8c2478020000            LEA ECX,[ESP + 0x278]
00535db7  c704240000003f            MOV dword ptr [ESP],0x3f000000
00535dbe  51                        PUSH ECX
00535dbf  8d8b60030000              LEA ECX,[EBX + 0x360]
00535dc5  e836a34d00                CALL 0x00a10100
00535dca  f30f10936c030000          MOVSS XMM2,dword ptr [EBX + 0x36c]
00535dd2  8bc8                      MOV ECX,EAX
00535dd4  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
00535ddb  9f                        LAHF
00535ddc  f6c444                    TEST AH,0x44
00535ddf  7b4d                      JNP 0x00535e2e
00535de1  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00535de6  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00535dec  f30f5901                  MULSS XMM0,dword ptr [ECX]
00535df0  f30f594c2420              MULSS XMM1,dword ptr [ESP + 0x20]
00535df6  f30f5ec2                  DIVSS XMM0,XMM2
00535dfa  f30f5eca                  DIVSS XMM1,XMM2
00535dfe  f30f588360030000          ADDSS XMM0,dword ptr [EBX + 0x360]
00535e06  f30f588b64030000          ADDSS XMM1,dword ptr [EBX + 0x364]
00535e0e  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
00535e16  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
00535e1e  8bb3640b0000              MOV ESI,dword ptr [EBX + 0xb64]
00535e24  f30f1093b00b0000          MOVSS XMM2,dword ptr [EBX + 0xbb0]
00535e2c  eb46                      JMP 0x00535e74
00535e2e  f30f10542430              MOVSS XMM2,dword ptr [ESP + 0x30]
00535e34  eb3e                      JMP 0x00535e74
00535e36  f30f108364030000          MOVSS XMM0,dword ptr [EBX + 0x364]
00535e3e  f30f108b60030000          MOVSS XMM1,dword ptr [EBX + 0x360]
00535e46  f30f59c0                  MULSS XMM0,XMM0
00535e4a  f30f59c9                  MULSS XMM1,XMM1
00535e4e  f30f58c8                  ADDSS XMM1,XMM0
00535e52  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
00535e5a  0f2fc1                    COMISS XMM0,XMM1
00535e5d  7615                      JBE 0x00535e74
00535e5f  83fe06                    CMP ESI,0x6
00535e62  8bc7                      MOV EAX,EDI
00535e64  b909000000                MOV ECX,0x9
00535e69  0f44c1                    CMOVZ EAX,ECX
00535e6c  8bf0                      MOV ESI,EAX
00535e6e  89b3640b0000              MOV dword ptr [EBX + 0xb64],ESI
00535e74  83fe06                    CMP ESI,0x6
00535e77  750a                      JNZ 0x00535e83
00535e79  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00535e81  eb08                      JMP 0x00535e8b
00535e83  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00535e8b  0f2fd0                    COMISS XMM2,XMM0
00535e8e  0f862f010000              JBE 0x00535fc3
00535e94  e912010000                JMP 0x00535fab
00535e99  f30f108b9c030000          MOVSS XMM1,dword ptr [EBX + 0x39c]
00535ea1  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00535ea9  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
00535eaf  f30f588bb00b0000          ADDSS XMM1,dword ptr [EBX + 0xbb0]
00535eb7  0f2fc1                    COMISS XMM0,XMM1
00535eba  f30f118bb00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM1
00535ec2  7676                      JBE 0x00535f3a
00535ec4  51                        PUSH ECX
00535ec5  8d8c240c010000            LEA ECX,[ESP + 0x10c]
00535ecc  c704240000003f            MOV dword ptr [ESP],0x3f000000
00535ed3  51                        PUSH ECX
00535ed4  8d8b60030000              LEA ECX,[EBX + 0x360]
00535eda  e821a24d00                CALL 0x00a10100
00535edf  f30f109b6c030000          MOVSS XMM3,dword ptr [EBX + 0x36c]
00535ee7  8bc8                      MOV ECX,EAX
00535ee9  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
00535ef0  9f                        LAHF
00535ef1  f6c444                    TEST AH,0x44
00535ef4  0f8b96000000              JNP 0x00535f90
00535efa  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
00535f00  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00535f05  0f28c2                    MOVAPS XMM0,XMM2
00535f08  f30f5901                  MULSS XMM0,dword ptr [ECX]
00535f0c  f30f59d1                  MULSS XMM2,XMM1
00535f10  f30f5ec3                  DIVSS XMM0,XMM3
00535f14  f30f5ed3                  DIVSS XMM2,XMM3
00535f18  f30f588360030000          ADDSS XMM0,dword ptr [EBX + 0x360]
00535f20  f30f589364030000          ADDSS XMM2,dword ptr [EBX + 0x364]
00535f28  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
00535f30  f30f119364030000          MOVSS dword ptr [EBX + 0x364],XMM2
00535f38  eb56                      JMP 0x00535f90
00535f3a  f30f108364030000          MOVSS XMM0,dword ptr [EBX + 0x364]
00535f42  f30f108b60030000          MOVSS XMM1,dword ptr [EBX + 0x360]
00535f4a  f30f59c0                  MULSS XMM0,XMM0
00535f4e  f30f59c9                  MULSS XMM1,XMM1
00535f52  f30f58c8                  ADDSS XMM1,XMM0
00535f56  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00535f5e  0f2fc1                    COMISS XMM0,XMM1
00535f61  7608                      JBE 0x00535f6b
00535f63  89bb640b0000              MOV dword ptr [EBX + 0xb64],EDI
00535f69  eb25                      JMP 0x00535f90
00535f6b  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
00535f73  0f2fc1                    COMISS XMM0,XMM1
00535f76  7618                      JBE 0x00535f90
00535f78  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00535f80  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00535f88  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00535f90  80bb9001000000            CMP byte ptr [EBX + 0x190],0x0
00535f97  8b83c00b0000              MOV EAX,dword ptr [EBX + 0xbc0]
00535f9d  7407                      JZ 0x00535fa6
00535f9f  40                        INC EAX
00535fa0  8983c00b0000              MOV dword ptr [EBX + 0xbc0],EAX
00535fa6  83f804                    CMP EAX,0x4
00535fa9  7e18                      JLE 0x00535fc3
00535fab  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00535fb3  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
00535fbb  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00535fc3  e8988f1b00                CALL 0x006eef60
00535fc8  33d2                      XOR EDX,EDX
00535fca  b90a000000                MOV ECX,0xa
00535fcf  f7f1                      DIV ECX
00535fd1  85d2                      TEST EDX,EDX
00535fd3  755b                      JNZ 0x00536030
00535fd5  e8868f1b00                CALL 0x006eef60
00535fda  51                        PUSH ECX
00535fdb  8bcb                      MOV ECX,EBX
00535fdd  660f6ec0                  MOVD XMM0,EAX
00535fe1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00535fe5  c1e81f                    SHR EAX,0x1f
00535fe8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00535ff1  660f5ac0                  CVTPD2PS XMM0,XMM0
00535ff5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00535ffd  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00536005  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0053600d  f30f110424                MOVSS dword ptr [ESP],XMM0
00536012  e8b9041800                CALL 0x006b64d0
00536017  6a01                      PUSH 0x1
00536019  6a00                      PUSH 0x0
0053601b  68ff000000                PUSH 0xff
00536020  8b10                      MOV EDX,dword ptr [EAX]
00536022  8d8be4010000              LEA ECX,[EBX + 0x1e4]
00536028  6aff                      PUSH -0x1
0053602a  51                        PUSH ECX
0053602b  8bc8                      MOV ECX,EAX
0053602d  ff523c                    CALL dword ptr [EDX + 0x3c]
00536030  0f57c0                    XORPS XMM0,XMM0
00536033  0f2f8360030000            COMISS XMM0,dword ptr [EBX + 0x360]
0053603a  0f97c0                    SETA AL
0053603d  888348010000              MOV byte ptr [EBX + 0x148],AL
00536043  83bb640b000009            CMP dword ptr [EBX + 0xb64],0x9
0053604a  7528                      JNZ 0x00536074
0053604c  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00536053  751f                      JNZ 0x00536074
00536055  8bcb                      MOV ECX,EBX
00536057  e8e4871800                CALL 0x006be840
0053605c  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
00536064  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
0053606b  0f97c0                    SETA AL
0053606e  888348010000              MOV byte ptr [EBX + 0x148],AL
00536074  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
00536078  0f85520c0000              JNZ 0x00536cd0
0053607e  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
00536084  2500400000                AND EAX,0x4000
00536089  83c800                    OR EAX,0x0
0053608c  0f853e0c0000              JNZ 0x00536cd0
00536092  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00536098  8bce                      MOV ECX,ESI
0053609a  e8b1721c00                CALL 0x006fd350
0053609f  84c0                      TEST AL,AL
005360a1  0f85290c0000              JNZ 0x00536cd0
005360a7  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
005360ad  99                        CDQ
005360ae  f7ff                      IDIV EDI
005360b0  85d2                      TEST EDX,EDX
005360b2  0f85180c0000              JNZ 0x00536cd0
005360b8  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
005360be  83f804                    CMP EAX,0x4
005360c1  741e                      JZ 0x005360e1
005360c3  83f808                    CMP EAX,0x8
005360c6  0f85040c0000              JNZ 0x00536cd0
005360cc  68fcd7b100                PUSH 0xb1d7fc
005360d1  8d4b48                    LEA ECX,[EBX + 0x48]
005360d4  e8b74fedff                CALL 0x0040b090
005360d9  84c0                      TEST AL,AL
005360db  0f84ef0b0000              JZ 0x00536cd0
005360e1  e87a8e1b00                CALL 0x006eef60
005360e6  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
005360ec  8d8b3c030000              LEA ECX,[EBX + 0x33c]
005360f2  89442430                  MOV dword ptr [ESP + 0x30],EAX
005360f6  8d442430                  LEA EAX,[ESP + 0x30]
005360fa  50                        PUSH EAX
005360fb  8d44241c                  LEA EAX,[ESP + 0x1c]
005360ff  894c2444                  MOV dword ptr [ESP + 0x44],ECX
00536103  50                        PUSH EAX
00536104  53                        PUSH EBX
00536105  6840b6c700                PUSH 0xc7b640
0053610a  51                        PUSH ECX
0053610b  8d442424                  LEA EAX,[ESP + 0x24]
0053610f  897c2430                  MOV dword ptr [ESP + 0x30],EDI
00536113  50                        PUSH EAX
00536114  8d442460                  LEA EAX,[ESP + 0x60]
00536118  c744243000000000          MOV dword ptr [ESP + 0x30],0x0
00536120  50                        PUSH EAX
00536121  c744242c1a000000          MOV dword ptr [ESP + 0x2c],0x1a
00536129  c7442464e8030000          MOV dword ptr [ESP + 0x64],0x3e8
00536131  e8aae53200                CALL 0x008646e0
00536136  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0053613c  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
00536140  894c2414                  MOV dword ptr [ESP + 0x14],ECX
00536144  83be1466020002            CMP dword ptr [ESI + 0x26614],0x2
0053614b  0f8c80020000              JL 0x005363d1
00536151  8bb620660200              MOV ESI,dword ptr [ESI + 0x26620]
00536157  89742424                  MOV dword ptr [ESP + 0x24],ESI
0053615b  e8008e1b00                CALL 0x006eef60
00536160  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00536168  8bf8                      MOV EDI,EAX
0053616a  a174f6b100                MOV EAX,[0x00b1f674]
0053616f  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00536173  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
00536177  660fd6842418010000        MOVQ qword ptr [ESP + 0x118],XMM0
00536180  89442428                  MOV dword ptr [ESP + 0x28],EAX
00536184  89842420010000            MOV dword ptr [ESP + 0x120],EAX
0053618b  83f905                    CMP ECX,0x5
0053618e  757f                      JNZ 0x0053620f
00536190  81fa2c010000              CMP EDX,0x12c
00536196  0f87f4010000              JA 0x00536390
0053619c  0f8444010000              JZ 0x005362e6
005361a2  83fa46                    CMP EDX,0x46
005361a5  0f849b000000              JZ 0x00536246
005361ab  83fa64                    CMP EDX,0x64
005361ae  755f                      JNZ 0x0053620f
005361b0  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
005361b4  83ff19                    CMP EDI,0x19
005361b7  7434                      JZ 0x005361ed
005361b9  8d44246c                  LEA EAX,[ESP + 0x6c]
005361bd  897c246c                  MOV dword ptr [ESP + 0x6c],EDI
005361c1  50                        PUSH EAX
005361c2  8d8424bc010000            LEA EAX,[ESP + 0x1bc]
005361c9  8d4e20                    LEA ECX,[ESI + 0x20]
005361cc  50                        PUSH EAX
005361cd  e8ce26efff                CALL 0x004288a0
005361d2  8b8424c0010000            MOV EAX,dword ptr [ESP + 0x1c0]
005361d9  80780d00                  CMP byte ptr [EAX + 0xd],0x0
005361dd  750a                      JNZ 0x005361e9
005361df  3b7810                    CMP EDI,dword ptr [EAX + 0x10]
005361e2  7c05                      JL 0x005361e9
005361e4  3b4620                    CMP EAX,dword ptr [ESI + 0x20]
005361e7  7504                      JNZ 0x005361ed
005361e9  b001                      MOV AL,0x1
005361eb  eb02                      JMP 0x005361ef
005361ed  32c0                      XOR AL,AL
005361ef  85ff                      TEST EDI,EDI
005361f1  7404                      JZ 0x005361f7
005361f3  84c0                      TEST AL,AL
005361f5  7410                      JZ 0x00536207
005361f7  8b06                      MOV EAX,dword ptr [ESI]
005361f9  8bce                      MOV ECX,ESI
005361fb  6a00                      PUSH 0x0
005361fd  ff9084000000              CALL dword ptr [EAX + 0x84]
00536203  89442418                  MOV dword ptr [ESP + 0x18],EAX
00536207  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
0053620b  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
0053620f  8b7c241c                  MOV EDI,dword ptr [ESP + 0x1c]
00536213  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
00536219  2500000020                AND EAX,0x20000000
0053621e  83c800                    OR EAX,0x0
00536221  0f84e3010000              JZ 0x0053640a
00536227  81f9e8030000              CMP ECX,0x3e8
0053622d  0f85d7010000              JNZ 0x0053640a
00536233  83c2ea                    ADD EDX,-0x16
00536236  83fa04                    CMP EDX,0x4
00536239  0f87cb010000              JA 0x0053640a
0053623f  ff2495e86c5300            JMP dword ptr [EDX*0x4 + 0x536ce8]
00536246  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
0053624a  8bc2                      MOV EAX,EDX
0053624c  c1e80b                    SHR EAX,0xb
0053624f  89442438                  MOV dword ptr [ESP + 0x38],EAX
00536253  85d2                      TEST EDX,EDX
00536255  7428                      JZ 0x0053627f
00536257  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053625d  8b06                      MOV EAX,dword ptr [ESI]
0053625f  6a00                      PUSH 0x0
00536261  52                        PUSH EDX
00536262  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00536268  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
0053626b  e810e81f00                CALL 0x00734a80
00536270  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00536274  50                        PUSH EAX
00536275  ffd6                      CALL ESI
00536277  84c0                      TEST AL,AL
00536279  748c                      JZ 0x00536207
0053627b  8b742424                  MOV ESI,dword ptr [ESP + 0x24]
0053627f  a17816c700                MOV EAX,[0x00c71678]
00536284  0540a70100                ADD EAX,0x1a740
00536289  89442420                  MOV dword ptr [ESP + 0x20],EAX
0053628d  85ff                      TEST EDI,EDI
0053628f  7510                      JNZ 0x005362a1
00536291  6854bfb600                PUSH 0xb6bf54
00536296  6a10                      PUSH 0x10
00536298  e823b04d00                CALL 0x00a112c0
0053629d  83c408                    ADD ESP,0x8
005362a0  cc                        INT3
005362a1  8b8c2418010000            MOV ECX,dword ptr [ESP + 0x118]
005362a8  8bd7                      MOV EDX,EDI
005362aa  d3ea                      SHR EDX,CL
005362ac  8b8c241c010000            MOV ECX,dword ptr [ESP + 0x11c]
005362b3  33d7                      XOR EDX,EDI
005362b5  8bc2                      MOV EAX,EDX
005362b7  d3e0                      SHL EAX,CL
005362b9  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
005362bd  33c2                      XOR EAX,EDX
005362bf  8bf8                      MOV EDI,EAX
005362c1  d3ef                      SHR EDI,CL
005362c3  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
005362c7  33f8                      XOR EDI,EAX
005362c9  57                        PUSH EDI
005362ca  e831e61f00                CALL 0x00734900
005362cf  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
005362d3  8bd0                      MOV EDX,EAX
005362d5  83e101                    AND ECX,0x1
005362d8  c1e10b                    SHL ECX,0xb
005362db  0bd1                      OR EDX,ECX
005362dd  89542418                  MOV dword ptr [ESP + 0x18],EDX
005362e1  e96dffffff                JMP 0x00536253
005362e6  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
005362ea  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005362f0  85c9                      TEST ECX,ECX
005362f2  7412                      JZ 0x00536306
005362f4  8b06                      MOV EAX,dword ptr [ESI]
005362f6  51                        PUSH ECX
005362f7  8bce                      MOV ECX,ESI
005362f9  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
005362fc  ffd0                      CALL EAX
005362fe  84c0                      TEST AL,AL
00536300  0f8401ffffff              JZ 0x00536207
00536306  85ff                      TEST EDI,EDI
00536308  7510                      JNZ 0x0053631a
0053630a  6854bfb600                PUSH 0xb6bf54
0053630f  6a10                      PUSH 0x10
00536311  e8aaaf4d00                CALL 0x00a112c0
00536316  83c408                    ADD ESP,0x8
00536319  cc                        INT3
0053631a  8b8c2418010000            MOV ECX,dword ptr [ESP + 0x118]
00536321  8bc7                      MOV EAX,EDI
00536323  d3e8                      SHR EAX,CL
00536325  8b8c241c010000            MOV ECX,dword ptr [ESP + 0x11c]
0053632c  33c7                      XOR EAX,EDI
0053632e  8bd0                      MOV EDX,EAX
00536330  d3e2                      SHL EDX,CL
00536332  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
00536336  33d0                      XOR EDX,EAX
00536338  6a01                      PUSH 0x1
0053633a  6a0a                      PUSH 0xa
0053633c  8bfa                      MOV EDI,EDX
0053633e  6a0a                      PUSH 0xa
00536340  d3ef                      SHR EDI,CL
00536342  33fa                      XOR EDI,EDX
00536344  6a19                      PUSH 0x19
00536346  57                        PUSH EDI
00536347  e834de1f00                CALL 0x00734180
0053634c  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00536354  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
0053635a  6a00                      PUSH 0x0
0053635c  6a01                      PUSH 0x1
0053635e  6a01                      PUSH 0x1
00536360  50                        PUSH EAX
00536361  8d8424bc020000            LEA EAX,[ESP + 0x2bc]
00536368  89bc24bc020000            MOV dword ptr [ESP + 0x2bc],EDI
0053636f  50                        PUSH EAX
00536370  660fd68424c4020000        MOVQ qword ptr [ESP + 0x2c4],XMM0
00536379  898c24cc020000            MOV dword ptr [ESP + 0x2cc],ECX
00536380  e8bbef3200                CALL 0x00865340
00536385  8bc8                      MOV ECX,EAX
00536387  894c2418                  MOV dword ptr [ESP + 0x18],ECX
0053638b  e960ffffff                JMP 0x005362f0
00536390  81fa5e010000              CMP EDX,0x15e
00536396  0f8573feffff              JNZ 0x0053620f
0053639c  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
005363a0  85c9                      TEST ECX,ECX
005363a2  7412                      JZ 0x005363b6
005363a4  8b06                      MOV EAX,dword ptr [ESI]
005363a6  51                        PUSH ECX
005363a7  8bce                      MOV ECX,ESI
005363a9  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
005363ac  ffd0                      CALL EAX
005363ae  84c0                      TEST AL,AL
005363b0  0f8451feffff              JZ 0x00536207
005363b6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005363bc  6a00                      PUSH 0x0
005363be  8d8940a70100              LEA ECX,[ECX + 0x1a740]
005363c4  e8d7d81f00                CALL 0x00733ca0
005363c9  8bc8                      MOV ECX,EAX
005363cb  894c2418                  MOV dword ptr [ESP + 0x18],ECX
005363cf  ebcf                      JMP 0x005363a0
005363d1  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
005363d5  e939feffff                JMP 0x00536213
0053640a  6a00                      PUSH 0x0
0053640c  51                        PUSH ECX
0053640d  8b8f80650200              MOV ECX,dword ptr [EDI + 0x26580]
00536413  e8789c1b00                CALL 0x006f0090
00536418  89442420                  MOV dword ptr [ESP + 0x20],EAX
0053641c  85c0                      TEST EAX,EAX
0053641e  0f842a080000              JZ 0x00536c4e
00536424  e867205300                CALL 0x00a68490
00536429  8bda                      MOV EBX,EDX
0053642b  8bc8                      MOV ECX,EAX
0053642d  badb34b6d7                MOV EDX,0xd7b634db
00536432  895c2438                  MOV dword ptr [ESP + 0x38],EBX
00536436  f7e2                      MUL EDX
00536438  bf82de1b43                MOV EDI,0x431bde82
0053643d  89442428                  MOV dword ptr [ESP + 0x28],EAX
00536441  8bf2                      MOV ESI,EDX
00536443  8bc1                      MOV EAX,ECX
00536445  b9db34b6d7                MOV ECX,0xd7b634db
0053644a  f7e7                      MUL EDI
0053644c  8bf8                      MOV EDI,EAX
0053644e  89542428                  MOV dword ptr [ESP + 0x28],EDX
00536452  8bc3                      MOV EAX,EBX
00536454  f7e1                      MUL ECX
00536456  8bc8                      MOV ECX,EAX
00536458  8bda                      MOV EBX,EDX
0053645a  8b442438                  MOV EAX,dword ptr [ESP + 0x38]
0053645e  ba82de1b43                MOV EDX,0x431bde82
00536463  f7e2                      MUL EDX
00536465  03ce                      ADD ECX,ESI
00536467  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
0053646b  89442424                  MOV dword ptr [ESP + 0x24],EAX
0053646f  83d300                    ADC EBX,0x0
00536472  03f9                      ADD EDI,ECX
00536474  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
00536478  83d100                    ADC ECX,0x0
0053647b  897c2438                  MOV dword ptr [ESP + 0x38],EDI
0053647f  33c0                      XOR EAX,EAX
00536481  03d9                      ADD EBX,ECX
00536483  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00536487  13c0                      ADC EAX,EAX
00536489  03cb                      ADD ECX,EBX
0053648b  8b5c2420                  MOV EBX,dword ptr [ESP + 0x20]
0053648f  13d0                      ADC EDX,EAX
00536491  8dbbc8030000              LEA EDI,[EBX + 0x3c8]
00536497  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0053649a  0facd112                  SHRD ECX,EDX,0x12
0053649e  894334                    MOV dword ptr [EBX + 0x34],EAX
005364a1  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
005364a4  894c2424                  MOV dword ptr [ESP + 0x24],ECX
005364a8  c1ea12                    SHR EDX,0x12
005364ab  894338                    MOV dword ptr [EBX + 0x38],EAX
005364ae  8b0f                      MOV ECX,dword ptr [EDI]
005364b0  89542438                  MOV dword ptr [ESP + 0x38],EDX
005364b4  85c9                      TEST ECX,ECX
005364b6  7414                      JZ 0x005364cc
005364b8  8d442470                  LEA EAX,[ESP + 0x70]
005364bc  897c2470                  MOV dword ptr [ESP + 0x70],EDI
005364c0  50                        PUSH EAX
005364c1  81c1cc030000              ADD ECX,0x3cc
005364c7  e8448df9ff                CALL 0x004cf210
005364cc  57                        PUSH EDI
005364cd  8bce                      MOV ECX,ESI
005364cf  8937                      MOV dword ptr [EDI],ESI
005364d1  e81a78f9ff                CALL 0x004cdcf0
005364d6  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
005364dc  8bcb                      MOV ECX,EBX
005364de  ff742430                  PUSH dword ptr [ESP + 0x30]
005364e2  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
005364e6  ff74241c                  PUSH dword ptr [ESP + 0x1c]
005364ea  89833c030000              MOV dword ptr [EBX + 0x33c],EAX
005364f0  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
005364f6  ff742418                  PUSH dword ptr [ESP + 0x18]
005364fa  898340030000              MOV dword ptr [EBX + 0x340],EAX
00536500  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00536508  8b03                      MOV EAX,dword ptr [EBX]
0053650a  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
00536512  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053651a  57                        PUSH EDI
0053651b  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
00536523  ff5004                    CALL dword ptr [EAX + 0x4]
00536526  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
0053652a  53                        PUSH EBX
0053652b  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00536531  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
00536537  8d4101                    LEA EAX,[ECX + 0x1]
0053653a  898214120000              MOV dword ptr [EDX + 0x1214],EAX
00536540  894b20                    MOV dword ptr [EBX + 0x20],ECX
00536543  8d8a18120000              LEA ECX,[EDX + 0x1218]
00536549  e8b21feeff                CALL 0x00418500
0053654e  6a01                      PUSH 0x1
00536550  8bce                      MOV ECX,ESI
00536552  e839f61700                CALL 0x006b5b90
00536557  84c0                      TEST AL,AL
00536559  0f8445050000              JZ 0x00536aa4
0053655f  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00536565  33c0                      XOR EAX,EAX
00536567  81e100000010              AND ECX,0x10000000
0053656d  0bc1                      OR EAX,ECX
0053656f  0f840c020000              JZ 0x00536781
00536575  8b836c010000              MOV EAX,dword ptr [EBX + 0x16c]
0053657b  8b8b68010000              MOV ECX,dword ptr [EBX + 0x168]
00536581  0d00000010                OR EAX,0x10000000
00536586  898b68010000              MOV dword ptr [EBX + 0x168],ECX
0053658c  89836c010000              MOV dword ptr [EBX + 0x16c],EAX
00536592  83ff09                    CMP EDI,0x9
00536595  7414                      JZ 0x005365ab
00536597  83ff07                    CMP EDI,0x7
0053659a  740f                      JZ 0x005365ab
0053659c  83c820                    OR EAX,0x20
0053659f  898b68010000              MOV dword ptr [EBX + 0x168],ECX
005365a5  89836c010000              MOV dword ptr [EBX + 0x16c],EAX
005365ab  8b9664020000              MOV EDX,dword ptr [ESI + 0x264]
005365b1  85d2                      TEST EDX,EDX
005365b3  0f84ab000000              JZ 0x00536664
005365b9  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
005365bc  f30f108a3c030000          MOVSS XMM1,dword ptr [EDX + 0x33c]
005365c4  f30f108240030000          MOVSS XMM0,dword ptr [EDX + 0x340]
005365cc  89442478                  MOV dword ptr [ESP + 0x78],EAX
005365d0  8b422c                    MOV EAX,dword ptr [EDX + 0x2c]
005365d3  8944247c                  MOV dword ptr [ESP + 0x7c],EAX
005365d7  8b4234                    MOV EAX,dword ptr [EDX + 0x34]
005365da  89842480000000            MOV dword ptr [ESP + 0x80],EAX
005365e1  8b4238                    MOV EAX,dword ptr [EDX + 0x38]
005365e4  89842484000000            MOV dword ptr [ESP + 0x84],EAX
005365eb  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
005365f1  f30f118c24a4010000        MOVSS dword ptr [ESP + 0x1a4],XMM1
005365fa  2500010000                AND EAX,0x100
005365ff  83c800                    OR EAX,0x0
00536602  f30f118424a8010000        MOVSS dword ptr [ESP + 0x1a8],XMM0
0053660b  f30f118c2488000000        MOVSS dword ptr [ESP + 0x88],XMM1
00536614  f30f108a60030000          MOVSS XMM1,dword ptr [EDX + 0x360]
0053661c  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
00536625  f30f108264030000          MOVSS XMM0,dword ptr [EDX + 0x364]
0053662d  f30f118c24ac010000        MOVSS dword ptr [ESP + 0x1ac],XMM1
00536636  f30f118424b0010000        MOVSS dword ptr [ESP + 0x1b0],XMM0
0053663f  f30f118c2490000000        MOVSS dword ptr [ESP + 0x90],XMM1
00536648  f30f11842494000000        MOVSS dword ptr [ESP + 0x94],XMM0
00536651  0f848b000000              JZ 0x005366e2
00536657  c744241401000000          MOV dword ptr [ESP + 0x14],0x1
0053665f  e98a000000                JMP 0x005366ee
00536664  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0053666c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00536674  c744247800000000          MOV dword ptr [ESP + 0x78],0x0
0053667c  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
00536684  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
0053668f  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
0053669a  f30f118c2474010000        MOVSS dword ptr [ESP + 0x174],XMM1
005366a3  f30f11842478010000        MOVSS dword ptr [ESP + 0x178],XMM0
005366ac  f30f118c2488000000        MOVSS dword ptr [ESP + 0x88],XMM1
005366b5  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
005366be  f30f118c247c010000        MOVSS dword ptr [ESP + 0x17c],XMM1
005366c7  f30f11842480010000        MOVSS dword ptr [ESP + 0x180],XMM0
005366d0  f30f118c2490000000        MOVSS dword ptr [ESP + 0x90],XMM1
005366d9  f30f11842494000000        MOVSS dword ptr [ESP + 0x94],XMM0
005366e2  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
005366ea  85d2                      TEST EDX,EDX
005366ec  741a                      JZ 0x00536708
005366ee  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
005366f4  2500000020                AND EAX,0x20000000
005366f9  83c800                    OR EAX,0x0
005366fc  7412                      JZ 0x00536710
005366fe  c744242802000000          MOV dword ptr [ESP + 0x28],0x2
00536706  eb14                      JMP 0x0053671c
00536708  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
00536710  c744242800000000          MOV dword ptr [ESP + 0x28],0x0
00536718  85d2                      TEST EDX,EDX
0053671a  7419                      JZ 0x00536735
0053671c  8b8a6c010000              MOV ECX,dword ptr [EDX + 0x16c]
00536722  33c0                      XOR EAX,EAX
00536724  81e100004000              AND ECX,0x400000
0053672a  0bc1                      OR EAX,ECX
0053672c  7407                      JZ 0x00536735
0053672e  b804000000                MOV EAX,0x4
00536733  eb02                      JMP 0x00536737
00536735  33c0                      XOR EAX,EAX
00536737  0b442428                  OR EAX,dword ptr [ESP + 0x28]
0053673b  8bcb                      MOV ECX,EBX
0053673d  0b442414                  OR EAX,dword ptr [ESP + 0x14]
00536741  6a00                      PUSH 0x0
00536743  6a00                      PUSH 0x0
00536745  898424a0000000            MOV dword ptr [ESP + 0xa0],EAX
0053674c  8d842480000000            LEA EAX,[ESP + 0x80]
00536753  6aff                      PUSH -0x1
00536755  50                        PUSH EAX
00536756  899424ac000000            MOV dword ptr [ESP + 0xac],EDX
0053675d  e80e711700                CALL 0x006ad870
00536762  8d47f6                    LEA EAX,[EDI + -0xa]
00536765  3ddd030000                CMP EAX,0x3dd
0053676a  7741                      JA 0x005367ad
0053676c  6a01                      PUSH 0x1
0053676e  ff742414                  PUSH dword ptr [ESP + 0x14]
00536772  8d4b48                    LEA ECX,[EBX + 0x48]
00536775  8bd7                      MOV EDX,EDI
00536777  e894f5f6ff                CALL 0x004a5d10
0053677c  83c408                    ADD ESP,0x8
0053677f  eb2c                      JMP 0x005367ad
00536781  6a00                      PUSH 0x0
00536783  6800000020                PUSH 0x20000000
00536788  8bce                      MOV ECX,ESI
0053678a  e8a10ceeff                CALL 0x00417430
0053678f  84c0                      TEST AL,AL
00536791  741a                      JZ 0x005367ad
00536793  6a00                      PUSH 0x0
00536795  6a00                      PUSH 0x0
00536797  6aff                      PUSH -0x1
00536799  8d8c2490020000            LEA ECX,[ESP + 0x290]
005367a0  e8cbf4efff                CALL 0x00435c70
005367a5  50                        PUSH EAX
005367a6  8bcb                      MOV ECX,EBX
005367a8  e8c3701700                CALL 0x006ad870
005367ad  6a00                      PUSH 0x0
005367af  68acd6c500                PUSH 0xc5d6ac
005367b4  68dcd5c500                PUSH 0xc5d5dc
005367b9  6a00                      PUSH 0x0
005367bb  56                        PUSH ESI
005367bc  e8f0a05b00                CALL 0x00af08b1
005367c1  83c414                    ADD ESP,0x14
005367c4  89442428                  MOV dword ptr [ESP + 0x28],EAX
005367c8  6a00                      PUSH 0x0
005367ca  68acd6c500                PUSH 0xc5d6ac
005367cf  68dcd5c500                PUSH 0xc5d5dc
005367d4  6a00                      PUSH 0x0
005367d6  53                        PUSH EBX
005367d7  e8d5a05b00                CALL 0x00af08b1
005367dc  83c414                    ADD ESP,0x14
005367df  8bf8                      MOV EDI,EAX
005367e1  837c242800                CMP dword ptr [ESP + 0x28],0x0
005367e6  0f84b8020000              JZ 0x00536aa4
005367ec  85ff                      TEST EDI,EDI
005367ee  0f84b0020000              JZ 0x00536aa4
005367f4  6a00                      PUSH 0x0
005367f6  6a01                      PUSH 0x1
005367f8  8bcf                      MOV ECX,EDI
005367fa  e8310ceeff                CALL 0x00417430
005367ff  84c0                      TEST AL,AL
00536801  0f85b1010000              JNZ 0x005369b8
00536807  6800000001                PUSH 0x1000000
0053680c  6a00                      PUSH 0x0
0053680e  8bce                      MOV ECX,ESI
00536810  e81b0ceeff                CALL 0x00417430
00536815  84c0                      TEST AL,AL
00536817  0f84ab000000              JZ 0x005368c8
0053681d  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00536825  8d842424010000            LEA EAX,[ESP + 0x124]
0053682c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00536834  8bcf                      MOV ECX,EDI
00536836  6a5a                      PUSH 0x5a
00536838  50                        PUSH EAX
00536839  c784242c01000000000000    MOV dword ptr [ESP + 0x12c],0x0
00536844  c784243001000000000000    MOV dword ptr [ESP + 0x130],0x0
0053684f  c784243401000000000000    MOV dword ptr [ESP + 0x134],0x0
0053685a  c784243801000000000000    MOV dword ptr [ESP + 0x138],0x0
00536865  f30f118c248c010000        MOVSS dword ptr [ESP + 0x18c],XMM1
0053686e  f30f11842490010000        MOVSS dword ptr [ESP + 0x190],XMM0
00536877  f30f118c243c010000        MOVSS dword ptr [ESP + 0x13c],XMM1
00536880  f30f11842440010000        MOVSS dword ptr [ESP + 0x140],XMM0
00536889  f30f118c2494010000        MOVSS dword ptr [ESP + 0x194],XMM1
00536892  f30f11842498010000        MOVSS dword ptr [ESP + 0x198],XMM0
0053689b  f30f118c2444010000        MOVSS dword ptr [ESP + 0x144],XMM1
005368a4  f30f11842448010000        MOVSS dword ptr [ESP + 0x148],XMM0
005368ad  c784244c01000000000000    MOV dword ptr [ESP + 0x14c],0x0
005368b8  c784245001000000000000    MOV dword ptr [ESP + 0x150],0x0
005368c3  e808101800                CALL 0x006b78d0
005368c8  6a00                      PUSH 0x0
005368ca  6800000001                PUSH 0x1000000
005368cf  8bce                      MOV ECX,ESI
005368d1  e85a0beeff                CALL 0x00417430
005368d6  84c0                      TEST AL,AL
005368d8  0f84da000000              JZ 0x005369b8
005368de  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005368e6  8d84244c010000            LEA EAX,[ESP + 0x14c]
005368ed  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005368f5  8bcf                      MOV ECX,EDI
005368f7  6a00                      PUSH 0x0
005368f9  6a00                      PUSH 0x0
005368fb  6a5a                      PUSH 0x5a
005368fd  50                        PUSH EAX
005368fe  c784245c01000000000000    MOV dword ptr [ESP + 0x15c],0x0
00536909  c784246001000000000000    MOV dword ptr [ESP + 0x160],0x0
00536914  c784246401000000000000    MOV dword ptr [ESP + 0x164],0x0
0053691f  c784246801000000000000    MOV dword ptr [ESP + 0x168],0x0
0053692a  f30f118c24a4010000        MOVSS dword ptr [ESP + 0x1a4],XMM1
00536933  f30f118424a8010000        MOVSS dword ptr [ESP + 0x1a8],XMM0
0053693c  f30f118c246c010000        MOVSS dword ptr [ESP + 0x16c],XMM1
00536945  f30f11842470010000        MOVSS dword ptr [ESP + 0x170],XMM0
0053694e  f30f118c24ac010000        MOVSS dword ptr [ESP + 0x1ac],XMM1
00536957  f30f118424b0010000        MOVSS dword ptr [ESP + 0x1b0],XMM0
00536960  f30f118c2474010000        MOVSS dword ptr [ESP + 0x174],XMM1
00536969  f30f11842478010000        MOVSS dword ptr [ESP + 0x178],XMM0
00536972  c784247c01000000000000    MOV dword ptr [ESP + 0x17c],0x0
0053697d  c784248001000000000000    MOV dword ptr [ESP + 0x180],0x0
00536988  e883f21700                CALL 0x006b5c10
0053698d  83bf3c02000000            CMP dword ptr [EDI + 0x23c],0x0
00536994  7e22                      JLE 0x005369b8
00536996  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0053699c  818f6801000000000001      OR dword ptr [EDI + 0x168],0x1000000
005369a6  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005369ac  8b87b8030000              MOV EAX,dword ptr [EDI + 0x3b8]
005369b2  8987b4030000              MOV dword ptr [EDI + 0x3b4],EAX
005369b8  8b742428                  MOV ESI,dword ptr [ESP + 0x28]
005369bc  8bcf                      MOV ECX,EDI
005369be  8b07                      MOV EAX,dword ptr [EDI]
005369c0  f30f108e480f0000          MOVSS XMM1,dword ptr [ESI + 0xf48]
005369c8  f30f598f380c0000          MULSS XMM1,dword ptr [EDI + 0xc38]
005369d0  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
005369d3  f30f118f380c0000          MOVSS dword ptr [EDI + 0xc38],XMM1
005369db  f30f598fb4030000          MULSS XMM1,dword ptr [EDI + 0x3b4]
005369e3  0f28c1                    MOVAPS XMM0,XMM1
005369e6  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
005369ee  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
005369f6  f30f118fe8000000          MOVSS dword ptr [EDI + 0xe8],XMM1
005369fe  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
00536a06  f30f1087480f0000          MOVSS XMM0,dword ptr [EDI + 0xf48]
00536a0e  f30f5986480f0000          MULSS XMM0,dword ptr [ESI + 0xf48]
00536a16  f30f1187480f0000          MOVSS dword ptr [EDI + 0xf48],XMM0
00536a1e  f30f1087440f0000          MOVSS XMM0,dword ptr [EDI + 0xf44]
00536a26  f30f5986440f0000          MULSS XMM0,dword ptr [ESI + 0xf44]
00536a2e  f30f1187440f0000          MOVSS dword ptr [EDI + 0xf44],XMM0
00536a36  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00536a3e  f30f5986440f0000          MULSS XMM0,dword ptr [ESI + 0xf44]
00536a46  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
00536a4e  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00536a56  f30f5986440f0000          MULSS XMM0,dword ptr [ESI + 0xf44]
00536a5e  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00536a66  ffd0                      CALL EAX
00536a68  84c0                      TEST AL,AL
00536a6a  7438                      JZ 0x00536aa4
00536a6c  8bb6540f0000              MOV ESI,dword ptr [ESI + 0xf54]
00536a72  81c7540f0000              ADD EDI,0xf54
00536a78  8b0f                      MOV ECX,dword ptr [EDI]
00536a7a  3bce                      CMP ECX,ESI
00536a7c  7426                      JZ 0x00536aa4
00536a7e  85c9                      TEST ECX,ECX
00536a80  7414                      JZ 0x00536a96
00536a82  8d442434                  LEA EAX,[ESP + 0x34]
00536a86  897c2434                  MOV dword ptr [ESP + 0x34],EDI
00536a8a  50                        PUSH EAX
00536a8b  81c1cc030000              ADD ECX,0x3cc
00536a91  e87a87f9ff                CALL 0x004cf210
00536a96  8937                      MOV dword ptr [EDI],ESI
00536a98  85f6                      TEST ESI,ESI
00536a9a  7408                      JZ 0x00536aa4
00536a9c  57                        PUSH EDI
00536a9d  8bce                      MOV ECX,ESI
00536a9f  e84c72f9ff                CALL 0x004cdcf0
00536aa4  53                        PUSH EBX
00536aa5  e8460e1d00                CALL 0x007078f0
00536aaa  84c0                      TEST AL,AL
00536aac  7407                      JZ 0x00536ab5
00536aae  51                        PUSH ECX
00536aaf  53                        PUSH EBX
00536ab0  e80b0f1d00                CALL 0x007079c0
00536ab5  80bb7201000000            CMP byte ptr [EBX + 0x172],0x0
00536abc  0f84fe000000              JZ 0x00536bc0
00536ac2  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
00536ac6  8b8258770600              MOV EAX,dword ptr [EDX + 0x67758]
00536acc  3b825c770600              CMP EAX,dword ptr [EDX + 0x6775c]
00536ad2  0f84e8000000              JZ 0x00536bc0
00536ad8  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
00536adb  8db280770600              LEA ESI,[EDX + 0x67780]
00536ae1  8b4b28                    MOV ECX,dword ptr [EBX + 0x28]
00536ae4  898424fc000000            MOV dword ptr [ESP + 0xfc],EAX
00536aeb  8d8424f8000000            LEA EAX,[ESP + 0xf8]
00536af2  50                        PUSH EAX
00536af3  8d442450                  LEA EAX,[ESP + 0x50]
00536af7  898c24fc000000            MOV dword ptr [ESP + 0xfc],ECX
00536afe  50                        PUSH EAX
00536aff  8bce                      MOV ECX,ESI
00536b01  e89ab94a00                CALL 0x009e24a0
00536b06  8b3e                      MOV EDI,dword ptr [ESI]
00536b08  397c244c                  CMP dword ptr [ESP + 0x4c],EDI
00536b0c  7536                      JNZ 0x00536b44
00536b0e  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
00536b11  8bce                      MOV ECX,ESI
00536b13  89842400010000            MOV dword ptr [ESP + 0x100],EAX
00536b1a  8d842400010000            LEA EAX,[ESP + 0x100]
00536b21  50                        PUSH EAX
00536b22  8d8424b8010000            LEA EAX,[ESP + 0x1b8]
00536b29  c7842408010000ffffffff    MOV dword ptr [ESP + 0x108],0xffffffff
00536b34  50                        PUSH EAX
00536b35  e866b94a00                CALL 0x009e24a0
00536b3a  8b00                      MOV EAX,dword ptr [EAX]
00536b3c  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
00536b40  3bc7                      CMP EAX,EDI
00536b42  747c                      JZ 0x00536bc0
00536b44  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00536b4a  33ff                      XOR EDI,EDI
00536b4c  81c6a8ba0100              ADD ESI,0x1baa8
00536b52  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00536b55  2b06                      SUB EAX,dword ptr [ESI]
00536b57  c1f802                    SAR EAX,0x2
00536b5a  85c0                      TEST EAX,EAX
00536b5c  7462                      JZ 0x00536bc0
00536b5e  6690                      NOP
00536b60  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00536b63  8bc1                      MOV EAX,ECX
00536b65  2b06                      SUB EAX,dword ptr [ESI]
00536b67  c1f802                    SAR EAX,0x2
00536b6a  85c0                      TEST EAX,EAX
00536b6c  7512                      JNZ 0x00536b80
00536b6e  68bce6b700                PUSH 0xb7e6bc
00536b73  6a10                      PUSH 0x10
00536b75  e846a74d00                CALL 0x00a112c0
00536b7a  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00536b7d  83c408                    ADD ESP,0x8
00536b80  8b06                      MOV EAX,dword ptr [ESI]
00536b82  2bc8                      SUB ECX,EAX
00536b84  c1f902                    SAR ECX,0x2
00536b87  3bf9                      CMP EDI,ECX
00536b89  7303                      JNC 0x00536b8e
00536b8b  8d04b8                    LEA EAX,[EAX + EDI*0x4]
00536b8e  8b08                      MOV ECX,dword ptr [EAX]
00536b90  6840b6c700                PUSH 0xc7b640
00536b95  ff742444                  PUSH dword ptr [ESP + 0x44]
00536b99  81c1c81f0000              ADD ECX,0x1fc8
00536b9f  53                        PUSH EBX
00536ba0  6a06                      PUSH 0x6
00536ba2  e8d99a4a00                CALL 0x009e0680
00536ba7  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00536bad  47                        INC EDI
00536bae  81c6a8ba0100              ADD ESI,0x1baa8
00536bb4  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00536bb7  2b06                      SUB EAX,dword ptr [ESI]
00536bb9  c1f802                    SAR EAX,0x2
00536bbc  3bf8                      CMP EDI,EAX
00536bbe  72a0                      JC 0x00536b60
00536bc0  e8cb185300                CALL 0x00a68490
00536bc5  8bda                      MOV EBX,EDX
00536bc7  8bc8                      MOV ECX,EAX
00536bc9  badb34b6d7                MOV EDX,0xd7b634db
00536bce  895c2440                  MOV dword ptr [ESP + 0x40],EBX
00536bd2  f7e2                      MUL EDX
00536bd4  bf82de1b43                MOV EDI,0x431bde82
00536bd9  89842408010000            MOV dword ptr [ESP + 0x108],EAX
00536be0  8bf2                      MOV ESI,EDX
00536be2  8bc1                      MOV EAX,ECX
00536be4  b9db34b6d7                MOV ECX,0xd7b634db
00536be9  f7e7                      MUL EDI
00536beb  8bf8                      MOV EDI,EAX
00536bed  89542434                  MOV dword ptr [ESP + 0x34],EDX
00536bf1  8bc3                      MOV EAX,EBX
00536bf3  f7e1                      MUL ECX
00536bf5  8bda                      MOV EBX,EDX
00536bf7  8bc8                      MOV ECX,EAX
00536bf9  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
00536bfd  ba82de1b43                MOV EDX,0x431bde82
00536c02  f7e2                      MUL EDX
00536c04  03ce                      ADD ECX,ESI
00536c06  89442440                  MOV dword ptr [ESP + 0x40],EAX
00536c0a  83d300                    ADC EBX,0x0
00536c0d  03f9                      ADD EDI,ECX
00536c0f  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
00536c13  83d100                    ADC ECX,0x0
00536c16  89bc2408010000            MOV dword ptr [ESP + 0x108],EDI
00536c1d  33c0                      XOR EAX,EAX
00536c1f  03d9                      ADD EBX,ECX
00536c21  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
00536c25  13c0                      ADC EAX,EAX
00536c27  03cb                      ADD ECX,EBX
00536c29  8b5c2450                  MOV EBX,dword ptr [ESP + 0x50]
00536c2d  13d0                      ADC EDX,EAX
00536c2f  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
00536c33  0facd112                  SHRD ECX,EDX,0x12
00536c37  c1ea12                    SHR EDX,0x12
00536c3a  2b4c2424                  SUB ECX,dword ptr [ESP + 0x24]
00536c3e  1b542438                  SBB EDX,dword ptr [ESP + 0x38]
00536c42  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
00536c48  111534b6c700              ADC dword ptr [0x00c7b634],EDX
00536c4e  6a00                      PUSH 0x0
00536c50  68acd5c500                PUSH 0xc5d5ac
00536c55  68dcd5c500                PUSH 0xc5d5dc
00536c5a  6a00                      PUSH 0x0
00536c5c  50                        PUSH EAX
00536c5d  e84f9c5b00                CALL 0x00af08b1
00536c62  8bf0                      MOV ESI,EAX
00536c64  83c414                    ADD ESP,0x14
00536c67  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00536c6d  8dbebc030000              LEA EDI,[ESI + 0x3bc]
00536c73  85c9                      TEST ECX,ECX
00536c75  7414                      JZ 0x00536c8b
00536c77  8d442474                  LEA EAX,[ESP + 0x74]
00536c7b  897c2474                  MOV dword ptr [ESP + 0x74],EDI
00536c7f  50                        PUSH EAX
00536c80  81c1cc030000              ADD ECX,0x3cc
00536c86  e88585f9ff                CALL 0x004cf210
00536c8b  57                        PUSH EDI
00536c8c  8bcb                      MOV ECX,EBX
00536c8e  891f                      MOV dword ptr [EDI],EBX
00536c90  e85b70f9ff                CALL 0x004cdcf0
00536c95  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00536c9d  8bce                      MOV ECX,ESI
00536c9f  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00536ca7  8b06                      MOV EAX,dword ptr [ESI]
00536ca9  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00536cb1  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00536cb9  c7865c0400003c000000      MOV dword ptr [ESI + 0x45c],0x3c
00536cc3  c786600400003c000000      MOV dword ptr [ESI + 0x460],0x3c
00536ccd  ff500c                    CALL dword ptr [EAX + 0xc]
00536cd0  8b8c24bc020000            MOV ECX,dword ptr [ESP + 0x2bc]
00536cd7  5f                        POP EDI
00536cd8  5e                        POP ESI
00536cd9  5b                        POP EBX
00536cda  33cc                      XOR ECX,ESP
00536cdc  e84a845b00                CALL 0x00aef12b
00536ce1  8be5                      MOV ESP,EBP
00536ce3  5d                        POP EBP
00536ce4  c3                        RET
