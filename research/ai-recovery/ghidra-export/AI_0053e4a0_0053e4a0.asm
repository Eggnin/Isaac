; J460 NPC AI 0x0053e4a0 AI_0053e4a0
; types=244,255,276,289
; identities=244.0.0,244.1.0,244.2.0,244.2.1,244.3.0,255.0.0,276.0.0,289.0.0
; entry=0053e4a0
0053e4a0  55                        PUSH EBP
0053e4a1  8bec                      MOV EBP,ESP
0053e4a3  83e4f8                    AND ESP,0xfffffff8
0053e4a6  81ec30010000              SUB ESP,0x130
0053e4ac  a1b493bf00                MOV EAX,[0x00bf93b4]
0053e4b1  33c4                      XOR EAX,ESP
0053e4b3  8984242c010000            MOV dword ptr [ESP + 0x12c],EAX
0053e4ba  56                        PUSH ESI
0053e4bb  57                        PUSH EDI
0053e4bc  8bf9                      MOV EDI,ECX
0053e4be  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
0053e4c5  0f85be020000              JNZ 0x0053e789
0053e4cb  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
0053e4ce  0f57d2                    XORPS XMM2,XMM2
0053e4d1  8bd6                      MOV EDX,ESI
0053e4d3  8bce                      MOV ECX,ESI
0053e4d5  81fe14010000              CMP ESI,0x114
0053e4db  753d                      JNZ 0x0053e51a
0053e4dd  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0053e4e2  ba14010000                MOV EDX,0x114
0053e4e7  0f2fc2                    COMISS XMM0,XMM2
0053e4ea  762e                      JBE 0x0053e51a
0053e4ec  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0053e4ef  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0053e4f2  7426                      JZ 0x0053e51a
0053e4f4  f6403001                  TEST byte ptr [EAX + 0x30],0x1
0053e4f8  7513                      JNZ 0x0053e50d
0053e4fa  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
0053e4fd  394810                    CMP dword ptr [EAX + 0x10],ECX
0053e500  7405                      JZ 0x0053e507
0053e502  394818                    CMP dword ptr [EAX + 0x18],ECX
0053e505  7506                      JNZ 0x0053e50d
0053e507  c70000000000              MOV dword ptr [EAX],0x0
0053e50d  83c038                    ADD EAX,0x38
0053e510  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0053e513  75df                      JNZ 0x0053e4f4
0053e515  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0053e518  8bca                      MOV ECX,EDX
0053e51a  81faf4000000              CMP EDX,0xf4
0053e520  0f858e1b0000              JNZ 0x005400b4
0053e526  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053e52a  8bd1                      MOV EDX,ECX
0053e52c  7567                      JNZ 0x0053e595
0053e52e  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0053e533  0f2fc2                    COMISS XMM0,XMM2
0053e536  765d                      JBE 0x0053e595
0053e538  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0053e53b  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0053e53e  7455                      JZ 0x0053e595
0053e540  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
0053e543  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
0053e546  894c244c                  MOV dword ptr [ESP + 0x4c],ECX
0053e54a  8bca                      MOV ECX,EDX
0053e54c  83e106                    AND ECX,0x6
0053e54f  83c900                    OR ECX,0x0
0053e552  742a                      JZ 0x0053e57e
0053e554  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
0053e557  d1e9                      SHR ECX,0x1
0053e559  f6c101                    TEST CL,0x1
0053e55c  7520                      JNZ 0x0053e57e
0053e55e  83781001                  CMP dword ptr [EAX + 0x10],0x1
0053e562  741a                      JZ 0x0053e57e
0053e564  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
0053e567  83f901                    CMP ECX,0x1
0053e56a  7412                      JZ 0x0053e57e
0053e56c  83f903                    CMP ECX,0x3
0053e56f  740d                      JZ 0x0053e57e
0053e571  81e200100000              AND EDX,0x1000
0053e577  83ca00                    OR EDX,0x0
0053e57a  7502                      JNZ 0x0053e57e
0053e57c  8910                      MOV dword ptr [EAX],EDX
0053e57e  83c038                    ADD EAX,0x38
0053e581  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0053e584  75ba                      JNZ 0x0053e540
0053e586  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0053e589  81faf4000000              CMP EDX,0xf4
0053e58f  0f851f1b0000              JNZ 0x005400b4
0053e595  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0053e599  0f85151b0000              JNZ 0x005400b4
0053e59f  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0053e5a3  7540                      JNZ 0x0053e5e5
0053e5a5  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0053e5ab  8bcf                      MOV ECX,EDI
0053e5ad  85c0                      TEST EAX,EAX
0053e5af  740f                      JZ 0x0053e5c0
0053e5b1  8bc8                      MOV ECX,EAX
0053e5b3  8b81bc030000              MOV EAX,dword ptr [ECX + 0x3bc]
0053e5b9  85c0                      TEST EAX,EAX
0053e5bb  75f4                      JNZ 0x0053e5b1
0053e5bd  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0053e5c0  395128                    CMP dword ptr [ECX + 0x28],EDX
0053e5c3  750c                      JNZ 0x0053e5d1
0053e5c5  83792c02                  CMP dword ptr [ECX + 0x2c],0x2
0053e5c9  7506                      JNZ 0x0053e5d1
0053e5cb  83793000                  CMP dword ptr [ECX + 0x30],0x0
0053e5cf  7414                      JZ 0x0053e5e5
0053e5d1  8d4c245c                  LEA ECX,[ESP + 0x5c]
0053e5d5  e89676efff                CALL 0x00435c70
0053e5da  8b17                      MOV EDX,dword ptr [EDI]
0053e5dc  8bcf                      MOV ECX,EDI
0053e5de  50                        PUSH EAX
0053e5df  ff5224                    CALL dword ptr [EDX + 0x24]
0053e5e2  0f57d2                    XORPS XMM2,XMM2
0053e5e5  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0053e5e9  0f85ef000000              JNZ 0x0053e6de
0053e5ef  f30f100dc4acba00          MOVSS XMM1,dword ptr [0x00baacc4]
0053e5f7  8bc7                      MOV EAX,EDI
0053e5f9  0f1f8000000000            NOP dword ptr [EAX]
0053e600  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0053e608  f30f5dc1                  MINSS XMM0,XMM1
0053e60c  0f28c8                    MOVAPS XMM1,XMM0
0053e60f  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0053e614  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0053e61a  f30f5fc2                  MAXSS XMM0,XMM2
0053e61e  0f28d0                    MOVAPS XMM2,XMM0
0053e621  85c0                      TEST EAX,EAX
0053e623  75db                      JNZ 0x0053e600
0053e625  f30f58c1                  ADDSS XMM0,XMM1
0053e629  f30f11542428              MOVSS dword ptr [ESP + 0x28],XMM2
0053e62f  8bf7                      MOV ESI,EDI
0053e631  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0053e637  8b06                      MOV EAX,dword ptr [ESI]
0053e639  8d4c245c                  LEA ECX,[ESP + 0x5c]
0053e63d  6a1e                      PUSH 0x1e
0053e63f  51                        PUSH ECX
0053e640  6a00                      PUSH 0x0
0053e642  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
0053e64a  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0053e652  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053e65a  6800200000                PUSH 0x2000
0053e65f  51                        PUSH ECX
0053e660  8bce                      MOV ECX,ESI
0053e662  c744247000000000          MOV dword ptr [ESP + 0x70],0x0
0053e66a  c744247400000000          MOV dword ptr [ESP + 0x74],0x0
0053e672  c744247800000000          MOV dword ptr [ESP + 0x78],0x0
0053e67a  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
0053e682  f30f118c2480000000        MOVSS dword ptr [ESP + 0x80],XMM1
0053e68b  f30f11842484000000        MOVSS dword ptr [ESP + 0x84],XMM0
0053e694  f30f118c2488000000        MOVSS dword ptr [ESP + 0x88],XMM1
0053e69d  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
0053e6a6  c784249000000000000000    MOV dword ptr [ESP + 0x90],0x0
0053e6b1  c784249400000000000000    MOV dword ptr [ESP + 0x94],0x0
0053e6bc  f30f111424                MOVSS dword ptr [ESP],XMM2
0053e6c1  ff5020                    CALL dword ptr [EAX + 0x20]
0053e6c4  8bb6c0030000              MOV ESI,dword ptr [ESI + 0x3c0]
0053e6ca  f30f10542428              MOVSS XMM2,dword ptr [ESP + 0x28]
0053e6d0  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053e6d6  85f6                      TEST ESI,ESI
0053e6d8  0f8559ffffff              JNZ 0x0053e637
0053e6de  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0053e6e5  0f84c9190000              JZ 0x005400b4
0053e6eb  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0053e6f1  85c0                      TEST EAX,EAX
0053e6f3  740c                      JZ 0x0053e701
0053e6f5  8bf8                      MOV EDI,EAX
0053e6f7  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0053e6fd  85c0                      TEST EAX,EAX
0053e6ff  75f4                      JNZ 0x0053e6f5
0053e701  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0053e709  8d4c245c                  LEA ECX,[ESP + 0x5c]
0053e70d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053e715  8b07                      MOV EAX,dword ptr [EDI]
0053e717  51                        PUSH ECX
0053e718  8bcf                      MOV ECX,EDI
0053e71a  c744246000000000          MOV dword ptr [ESP + 0x60],0x0
0053e722  c744246400000000          MOV dword ptr [ESP + 0x64],0x0
0053e72a  c744246800000000          MOV dword ptr [ESP + 0x68],0x0
0053e732  c744246c00000000          MOV dword ptr [ESP + 0x6c],0x0
0053e73a  f30f114c2470              MOVSS dword ptr [ESP + 0x70],XMM1
0053e740  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
0053e746  f30f114c2478              MOVSS dword ptr [ESP + 0x78],XMM1
0053e74c  f30f1144247c              MOVSS dword ptr [ESP + 0x7c],XMM0
0053e752  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
0053e75d  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
0053e768  ff5024                    CALL dword ptr [EAX + 0x24]
0053e76b  8bbfc0030000              MOV EDI,dword ptr [EDI + 0x3c0]
0053e771  85ff                      TEST EDI,EDI
0053e773  758c                      JNZ 0x0053e701
0053e775  5f                        POP EDI
0053e776  5e                        POP ESI
0053e777  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0053e77e  33cc                      XOR ECX,ESP
0053e780  e8a6095b00                CALL 0x00aef12b
0053e785  8be5                      MOV ESP,EBP
0053e787  5d                        POP EBP
0053e788  c3                        RET
0053e789  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0053e790  7434                      JZ 0x0053e7c6
0053e792  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053e79a  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0053e7a2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053e7aa  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053e7b2  5f                        POP EDI
0053e7b3  5e                        POP ESI
0053e7b4  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0053e7bb  33cc                      XOR ECX,ESP
0053e7bd  e869095b00                CALL 0x00aef12b
0053e7c2  8be5                      MOV ESP,EBP
0053e7c4  5d                        POP EBP
0053e7c5  c3                        RET
0053e7c6  660f6e9fc40b0000          MOVD XMM3,dword ptr [EDI + 0xbc4]
0053e7ce  0f57d2                    XORPS XMM2,XMM2
0053e7d1  f30f100db4a9ba00          MOVSS XMM1,dword ptr [0x00baa9b4]
0053e7d9  0f5bdb                    CVTDQ2PS XMM3,XMM3
0053e7dc  6a01                      PUSH 0x1
0053e7de  e85da61900                CALL 0x006d8e40
0053e7e3  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0053e7e9  85c0                      TEST EAX,EAX
0053e7eb  0f85bb030000              JNZ 0x0053ebac
0053e7f1  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0053e7fb  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0053e801  8b01                      MOV EAX,dword ptr [ECX]
0053e803  898734030000              MOV dword ptr [EDI + 0x334],EAX
0053e809  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0053e80c  894c2440                  MOV dword ptr [ESP + 0x40],ECX
0053e810  8bcf                      MOV ECX,EDI
0053e812  6a01                      PUSH 0x1
0053e814  898738030000              MOV dword ptr [EDI + 0x338],EAX
0053e81a  e8911c1800                CALL 0x006c04b0
0053e81f  817f28f4000000            CMP dword ptr [EDI + 0x28],0xf4
0053e826  8d4728                    LEA EAX,[EDI + 0x28]
0053e829  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
0053e833  89442438                  MOV dword ptr [ESP + 0x38],EAX
0053e837  0f8577180000              JNZ 0x005400b4
0053e83d  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0053e841  8d472c                    LEA EAX,[EDI + 0x2c]
0053e844  89442454                  MOV dword ptr [ESP + 0x54],EAX
0053e848  0f8566180000              JNZ 0x005400b4
0053e84e  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0053e852  0f855c180000              JNZ 0x005400b4
0053e858  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0053e85e  81c600830100              ADD ESI,0x18300
0053e864  6884030000                PUSH 0x384
0053e869  ff742444                  PUSH dword ptr [ESP + 0x44]
0053e86d  8b0e                      MOV ECX,dword ptr [ESI]
0053e86f  e80cf5f8ff                CALL 0x004cdd80
0053e874  8d8740030000              LEA EAX,[EDI + 0x340]
0053e87a  c744243405000000          MOV dword ptr [ESP + 0x34],0x5
0053e882  89442428                  MOV dword ptr [ESP + 0x28],EAX
0053e886  c744242ce8030000          MOV dword ptr [ESP + 0x2c],0x3e8
0053e88e  6690                      NOP
0053e890  8b36                      MOV ESI,dword ptr [ESI]
0053e892  e8c9061b00                CALL 0x006eef60
0053e897  660f6ec0                  MOVD XMM0,EAX
0053e89b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053e89f  c1e81f                    SHR EAX,0x1f
0053e8a2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053e8ab  660f5ac0                  CVTPD2PS XMM0,XMM0
0053e8af  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053e8b7  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0053e8bf  f30f58c0                  ADDSS XMM0,XMM0
0053e8c3  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0053e8c9  e892061b00                CALL 0x006eef60
0053e8ce  660f6ec0                  MOVD XMM0,EAX
0053e8d2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053e8d6  c1e81f                    SHR EAX,0x1f
0053e8d9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053e8e2  660f5ac0                  CVTPD2PS XMM0,XMM0
0053e8e6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053e8ee  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
0053e8f6  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
0053e8fe  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0053e904  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0053e90a  e831ecedff                CALL 0x0041d540
0053e90f  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
0053e915  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
0053e919  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0053e91d  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0053e923  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0053e929  e8f2ebedff                CALL 0x0041d520
0053e92e  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
0053e934  83ec0c                    SUB ESP,0xc
0053e937  8b442434                  MOV EAX,dword ptr [ESP + 0x34]
0053e93b  8bce                      MOV ECX,ESI
0053e93d  f30f101d1ca8ba00          MOVSS XMM3,dword ptr [0x00baa81c]
0053e945  c744240800002041          MOV dword ptr [ESP + 0x8],0x41200000
0053e94d  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0053e951  c744240400002041          MOV dword ptr [ESP + 0x4],0x41200000
0053e959  8d442428                  LEA EAX,[ESP + 0x28]
0053e95d  c7042400002041            MOV dword ptr [ESP],0x41200000
0053e964  50                        PUSH EAX
0053e965  8d442458                  LEA EAX,[ESP + 0x58]
0053e969  50                        PUSH EAX
0053e96a  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0053e970  e8db452d00                CALL 0x00812f50
0053e975  6a00                      PUSH 0x0
0053e977  6a00                      PUSH 0x0
0053e979  6a01                      PUSH 0x1
0053e97b  51                        PUSH ECX
0053e97c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053e982  8d442458                  LEA EAX,[ESP + 0x58]
0053e986  c7042400000000            MOV dword ptr [ESP],0x0
0053e98d  50                        PUSH EAX
0053e98e  8d442424                  LEA EAX,[ESP + 0x24]
0053e992  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0053e998  50                        PUSH EAX
0053e999  e8824b2d00                CALL 0x00813520
0053e99e  e8bd051b00                CALL 0x006eef60
0053e9a3  660f6ec0                  MOVD XMM0,EAX
0053e9a7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053e9ab  c1e81f                    SHR EAX,0x1f
0053e9ae  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053e9b7  660f5ac0                  CVTPD2PS XMM0,XMM0
0053e9bb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053e9c3  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0053e9cb  f30f58c0                  ADDSS XMM0,XMM0
0053e9cf  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0053e9d5  e886051b00                CALL 0x006eef60
0053e9da  660f6ec0                  MOVD XMM0,EAX
0053e9de  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053e9e2  c1e81f                    SHR EAX,0x1f
0053e9e5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053e9ee  660f5ac0                  CVTPD2PS XMM0,XMM0
0053e9f2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053e9fa  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0053ea00  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0053ea06  e835ebedff                CALL 0x0041d540
0053ea0b  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0053ea13  f30f59442424              MULSS XMM0,dword ptr [ESP + 0x24]
0053ea19  f30f58442410              ADDSS XMM0,dword ptr [ESP + 0x10]
0053ea1f  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0053ea25  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0053ea2b  e8f0eaedff                CALL 0x0041d520
0053ea30  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0053ea38  f30f59442424              MULSS XMM0,dword ptr [ESP + 0x24]
0053ea3e  f30f58442414              ADDSS XMM0,dword ptr [ESP + 0x14]
0053ea44  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0053ea4a  e811051b00                CALL 0x006eef60
0053ea4f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053ea55  6a00                      PUSH 0x0
0053ea57  50                        PUSH EAX
0053ea58  6a01                      PUSH 0x1
0053ea5a  6a00                      PUSH 0x0
0053ea5c  6840b6c700                PUSH 0xc7b640
0053ea61  8d442424                  LEA EAX,[ESP + 0x24]
0053ea65  50                        PUSH EAX
0053ea66  8b44246c                  MOV EAX,dword ptr [ESP + 0x6c]
0053ea6a  ff30                      PUSH dword ptr [EAX]
0053ea6c  8b442454                  MOV EAX,dword ptr [ESP + 0x54]
0053ea70  ff30                      PUSH dword ptr [EAX]
0053ea72  e899f91b00                CALL 0x006fe410
0053ea77  8bf0                      MOV ESI,EAX
0053ea79  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0053ea7f  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0053ea85  85c9                      TEST ECX,ECX
0053ea87  741a                      JZ 0x0053eaa3
0053ea89  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0053ea8d  81c1cc030000              ADD ECX,0x3cc
0053ea93  8d44240c                  LEA EAX,[ESP + 0xc]
0053ea97  50                        PUSH EAX
0053ea98  e87307f9ff                CALL 0x004cf210
0053ea9d  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0053eaa3  8938                      MOV dword ptr [EAX],EDI
0053eaa5  85ff                      TEST EDI,EDI
0053eaa7  7408                      JZ 0x0053eab1
0053eaa9  50                        PUSH EAX
0053eaaa  8bcf                      MOV ECX,EDI
0053eaac  e83ff2f8ff                CALL 0x004cdcf0
0053eab1  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0053eab7  81c7c0030000              ADD EDI,0x3c0
0053eabd  85c9                      TEST ECX,ECX
0053eabf  7414                      JZ 0x0053ead5
0053eac1  8d44240c                  LEA EAX,[ESP + 0xc]
0053eac5  897c240c                  MOV dword ptr [ESP + 0xc],EDI
0053eac9  50                        PUSH EAX
0053eaca  81c1cc030000              ADD ECX,0x3cc
0053ead0  e83b07f9ff                CALL 0x004cf210
0053ead5  57                        PUSH EDI
0053ead6  8bce                      MOV ECX,ESI
0053ead8  8937                      MOV dword ptr [EDI],ESI
0053eada  e811f2f8ff                CALL 0x004cdcf0
0053eadf  8b06                      MOV EAX,dword ptr [ESI]
0053eae1  8bce                      MOV ECX,ESI
0053eae3  ff500c                    CALL dword ptr [EAX + 0xc]
0053eae6  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0053eaee  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0053eaf6  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0053eafe  f30f5cc2                  SUBSS XMM0,XMM2
0053eb02  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
0053eb0a  a17816c700                MOV EAX,[0x00c71678]
0053eb0f  0500830100                ADD EAX,0x18300
0053eb14  89442424                  MOV dword ptr [ESP + 0x24],EAX
0053eb18  f30f5ec2                  DIVSS XMM0,XMM2
0053eb1c  8b38                      MOV EDI,dword ptr [EAX]
0053eb1e  f30f5eca                  DIVSS XMM1,XMM2
0053eb22  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0053eb2a  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
0053eb32  f30f2cc8                  CVTTSS2SI ECX,XMM0
0053eb36  f30f2cc1                  CVTTSS2SI EAX,XMM1
0053eb3a  85c9                      TEST ECX,ECX
0053eb3c  7849                      JS 0x0053eb87
0053eb3e  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
0053eb41  3bca                      CMP ECX,EDX
0053eb43  7d42                      JGE 0x0053eb87
0053eb45  85c0                      TEST EAX,EAX
0053eb47  783e                      JS 0x0053eb87
0053eb49  3b4710                    CMP EAX,dword ptr [EDI + 0x10]
0053eb4c  7d39                      JGE 0x0053eb87
0053eb4e  0fafc2                    IMUL EAX,EDX
0053eb51  03c1                      ADD EAX,ECX
0053eb53  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0053eb57  3dbf010000                CMP EAX,0x1bf
0053eb5c  7729                      JA 0x0053eb87
0053eb5e  8b8c876c070000            MOV ECX,dword ptr [EDI + EAX*0x4 + 0x76c]
0053eb65  8bc1                      MOV EAX,ECX
0053eb67  99                        CDQ
0053eb68  f77c242c                  IDIV dword ptr [ESP + 0x2c]
0053eb6c  81fa84030000              CMP EDX,0x384
0053eb72  7d13                      JGE 0x0053eb87
0053eb74  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
0053eb78  2bca                      SUB ECX,EDX
0053eb7a  81c184030000              ADD ECX,0x384
0053eb80  898c876c070000            MOV dword ptr [EDI + EAX*0x4 + 0x76c],ECX
0053eb87  836c243401                SUB dword ptr [ESP + 0x34],0x1
0053eb8c  8bfe                      MOV EDI,ESI
0053eb8e  8b742424                  MOV ESI,dword ptr [ESP + 0x24]
0053eb92  0f85f8fcffff              JNZ 0x0053e890
0053eb98  5f                        POP EDI
0053eb99  5e                        POP ESI
0053eb9a  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0053eba1  33cc                      XOR ECX,ESP
0053eba3  e883055b00                CALL 0x00aef12b
0053eba8  8be5                      MOV ESP,EBP
0053ebaa  5d                        POP EBP
0053ebab  c3                        RET
0053ebac  83f806                    CMP EAX,0x6
0053ebaf  0f8589000000              JNZ 0x0053ec3e
0053ebb5  6a00                      PUSH 0x0
0053ebb7  68100cb600                PUSH 0xb60c10
0053ebbc  8d4f48                    LEA ECX,[EDI + 0x48]
0053ebbf  e8bcb7ecff                CALL 0x0040a380
0053ebc4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053ebc8  740d                      JZ 0x0053ebd7
0053ebca  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053ebd1  0f8573140000              JNZ 0x0054004a
0053ebd7  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0053ebdc  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0053ebe3  7219                      JC 0x0053ebfe
0053ebe5  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053ebef  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0053ebf9  e94c140000                JMP 0x0054004a
0053ebfe  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053ec08  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053ec10  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0053ec18  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053ec20  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0053ec28  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0053ec32  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0053ec39  e90c140000                JMP 0x0054004a
0053ec3e  83f804                    CMP EAX,0x4
0053ec41  0f85f9030000              JNZ 0x0053f040
0053ec47  817f28f4000000            CMP dword ptr [EDI + 0x28],0xf4
0053ec4e  7510                      JNZ 0x0053ec60
0053ec50  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0053ec54  750a                      JNZ 0x0053ec60
0053ec56  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0053ec5a  0f84ea130000              JZ 0x0054004a
0053ec60  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053ec67  0f846c010000              JZ 0x0053edd9
0053ec6d  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0053ec75  6a01                      PUSH 0x1
0053ec77  6a00                      PUSH 0x0
0053ec79  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0053ec81  2bc8                      SUB ECX,EAX
0053ec83  018fc40b0000              ADD dword ptr [EDI + 0xbc4],ECX
0053ec89  51                        PUSH ECX
0053ec8a  c7042400004040            MOV dword ptr [ESP],0x40400000
0053ec91  8d8f14040000              LEA ECX,[EDI + 0x414]
0053ec97  6840b6c700                PUSH 0xc7b640
0053ec9c  e81f472a00                CALL 0x007e33c0
0053eca1  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0053eca9  8bcf                      MOV ECX,EDI
0053ecab  6a07                      PUSH 0x7
0053ecad  6a00                      PUSH 0x0
0053ecaf  e8acc11800                CALL 0x006cae60
0053ecb4  84c0                      TEST AL,AL
0053ecb6  750d                      JNZ 0x0053ecc5
0053ecb8  83bfc40b00005a            CMP dword ptr [EDI + 0xbc4],0x5a
0053ecbf  0f8c0c030000              JL 0x0053efd1
0053ecc5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053eccd  8db73c030000              LEA ESI,[EDI + 0x33c]
0053ecd3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053ecd9  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0053ecdf  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0053ece4  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0053ecea  ff742414                  PUSH dword ptr [ESP + 0x14]
0053ecee  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0053ecf4  ff742414                  PUSH dword ptr [ESP + 0x14]
0053ecf8  e8831a2b00                CALL 0x007f0780
0053ecfd  85c0                      TEST EAX,EAX
0053ecff  751b                      JNZ 0x0053ed1c
0053ed01  f30f1015a0a9ba00          MOVSS XMM2,dword ptr [0x00baa9a0]
0053ed09  83ec08                    SUB ESP,0x8
0053ed0c  8bcf                      MOV ECX,EDI
0053ed0e  56                        PUSH ESI
0053ed0f  e82caa1700                CALL 0x006b9740
0053ed14  84c0                      TEST AL,AL
0053ed16  0f846c000000              JZ 0x0053ed88
0053ed1c  6a00                      PUSH 0x0
0053ed1e  6a00                      PUSH 0x0
0053ed20  6a01                      PUSH 0x1
0053ed22  51                        PUSH ECX
0053ed23  c7042400000000            MOV dword ptr [ESP],0x0
0053ed2a  8d442420                  LEA EAX,[ESP + 0x20]
0053ed2e  56                        PUSH ESI
0053ed2f  50                        PUSH EAX
0053ed30  a17816c700                MOV EAX,[0x00c71678]
0053ed35  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053ed3b  e8e0472d00                CALL 0x00813520
0053ed40  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0053ed44  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0053ed49  f30f5c442414              SUBSS XMM0,dword ptr [ESP + 0x14]
0053ed4f  f30f5c4c2410              SUBSS XMM1,dword ptr [ESP + 0x10]
0053ed55  f30f59c0                  MULSS XMM0,XMM0
0053ed59  f30f59c9                  MULSS XMM1,XMM1
0053ed5d  f30f58c1                  ADDSS XMM0,XMM1
0053ed61  e8ea6cefff                CALL 0x00435a50
0053ed66  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
0053ed6e  0f2fc8                    COMISS XMM1,XMM0
0053ed71  762b                      JBE 0x0053ed9e
0053ed73  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0053ed79  f30f1106                  MOVSS dword ptr [ESI],XMM0
0053ed7d  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0053ed83  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0053ed88  8b06                      MOV EAX,dword ptr [ESI]
0053ed8a  898734030000              MOV dword ptr [EDI + 0x334],EAX
0053ed90  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0053ed93  898738030000              MOV dword ptr [EDI + 0x338],EAX
0053ed99  e933020000                JMP 0x0053efd1
0053ed9e  83bfc40b000078            CMP dword ptr [EDI + 0xbc4],0x78
0053eda5  0f8c26020000              JL 0x0053efd1
0053edab  8d4c245c                  LEA ECX,[ESP + 0x5c]
0053edaf  c787c40b00005a000000      MOV dword ptr [EDI + 0xbc4],0x5a
0053edb9  e8b26eefff                CALL 0x00435c70
0053edbe  8b17                      MOV EDX,dword ptr [EDI]
0053edc0  6a1e                      PUSH 0x1e
0053edc2  50                        PUSH EAX
0053edc3  6a00                      PUSH 0x0
0053edc5  6a00                      PUSH 0x0
0053edc7  51                        PUSH ECX
0053edc8  8bcf                      MOV ECX,EDI
0053edca  c7042400006040            MOV dword ptr [ESP],0x40600000
0053edd1  ff5220                    CALL dword ptr [EDX + 0x20]
0053edd4  e9f8010000                JMP 0x0053efd1
0053edd9  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0053ede0  0f8feb010000              JG 0x0053efd1
0053ede6  a17816c700                MOV EAX,[0x00c71678]
0053edeb  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053edf1  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0053edf6  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0053edfc  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
0053ee01  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0053ee07  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0053ee0c  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0053ee12  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
0053ee17  8d442448                  LEA EAX,[ESP + 0x48]
0053ee1b  50                        PUSH EAX
0053ee1c  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
0053ee22  e849021400                CALL 0x0067f070
0053ee27  83c404                    ADD ESP,0x4
0053ee2a  8bf0                      MOV ESI,EAX
0053ee2c  e82f011b00                CALL 0x006eef60
0053ee31  f30f105c242c              MOVSS XMM3,dword ptr [ESP + 0x2c]
0053ee37  83ec0c                    SUB ESP,0xc
0053ee3a  f30f585c2444              ADDSS XMM3,dword ptr [ESP + 0x44]
0053ee40  660f6ec0                  MOVD XMM0,EAX
0053ee44  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053ee48  c1e81f                    SHR EAX,0x1f
0053ee4b  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
0053ee53  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053ee5c  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0053ee64  8d442438                  LEA EAX,[ESP + 0x38]
0053ee68  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0053ee70  c704240000a041            MOV dword ptr [ESP],0x41a00000
0053ee77  50                        PUSH EAX
0053ee78  660f5ad0                  CVTPD2PS XMM2,XMM0
0053ee7c  8d44242c                  LEA EAX,[ESP + 0x2c]
0053ee80  50                        PUSH EAX
0053ee81  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0053ee89  f30f5915e0aaba00          MULSS XMM2,dword ptr [0x00baaae0]
0053ee91  f30f581550a9ba00          ADDSS XMM2,dword ptr [0x00baa950]
0053ee99  0f28c2                    MOVAPS XMM0,XMM2
0053ee9c  f30f595604                MULSS XMM2,dword ptr [ESI + 0x4]
0053eea1  f30f5906                  MULSS XMM0,dword ptr [ESI]
0053eea5  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0053eeab  f30f58d8                  ADDSS XMM3,XMM0
0053eeaf  f30f10442468              MOVSS XMM0,dword ptr [ESP + 0x68]
0053eeb5  f30f5844243c              ADDSS XMM0,dword ptr [ESP + 0x3c]
0053eebb  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0053eec1  f30f115c2440              MOVSS dword ptr [ESP + 0x40],XMM3
0053eec7  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0053eecf  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0053eed7  f30f58c2                  ADDSS XMM0,XMM2
0053eedb  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
0053eee1  e86a402d00                CALL 0x00812f50
0053eee6  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0053eeec  8d44242c                  LEA EAX,[ESP + 0x2c]
0053eef0  6a00                      PUSH 0x0
0053eef2  6a00                      PUSH 0x0
0053eef4  6a01                      PUSH 0x1
0053eef6  51                        PUSH ECX
0053eef7  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0053eefd  c7042400000000            MOV dword ptr [ESP],0x0
0053ef04  50                        PUSH EAX
0053ef05  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0053ef0b  8d44245c                  LEA EAX,[ESP + 0x5c]
0053ef0f  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053ef15  50                        PUSH EAX
0053ef16  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0053ef1c  e8ff452d00                CALL 0x00813520
0053ef21  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053ef27  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0053ef2b  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0053ef31  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0053ef37  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0053ef3c  8d44242c                  LEA EAX,[ESP + 0x2c]
0053ef40  50                        PUSH EAX
0053ef41  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0053ef47  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0053ef4d  e8fe491c00                CALL 0x00703950
0053ef52  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053ef58  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0053ef5e  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
0053ef66  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0053ef6e  f30f59c9                  MULSS XMM1,XMM1
0053ef72  f30f59c0                  MULSS XMM0,XMM0
0053ef76  f30f58c8                  ADDSS XMM1,XMM0
0053ef7a  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
0053ef80  e8dbff1a00                CALL 0x006eef60
0053ef85  a801                      TEST AL,0x1
0053ef87  7548                      JNZ 0x0053efd1
0053ef89  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0053ef8f  0f2f0d34acba00            COMISS XMM1,dword ptr [0x00baac34]
0053ef96  7639                      JBE 0x0053efd1
0053ef98  f30f1005a4acba00          MOVSS XMM0,dword ptr [0x00baaca4]
0053efa0  0f2fc1                    COMISS XMM0,XMM1
0053efa3  762c                      JBE 0x0053efd1
0053efa5  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053efab  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0053efb1  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0053efb9  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0053efc1  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0053efc9  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0053efd1  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
0053efd7  85d2                      TEST EDX,EDX
0053efd9  7e1a                      JLE 0x0053eff5
0053efdb  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0053efe3  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0053efeb  2bc8                      SUB ECX,EAX
0053efed  03ca                      ADD ECX,EDX
0053efef  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0053eff5  6840b6c700                PUSH 0xc7b640
0053effa  8d8f34030000              LEA ECX,[EDI + 0x334]
0053f000  e82b164d00                CALL 0x00a10630
0053f005  84c0                      TEST AL,AL
0053f007  0f843d100000              JZ 0x0054004a
0053f00d  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053f017  8bcf                      MOV ECX,EDI
0053f019  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0053f023  6a01                      PUSH 0x1
0053f025  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
0053f02c  e87f141800                CALL 0x006c04b0
0053f031  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0053f03b  e90a100000                JMP 0x0054004a
0053f040  83f808                    CMP EAX,0x8
0053f043  0f8501100000              JNZ 0x0054004a
0053f049  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0053f051  8bcf                      MOV ECX,EDI
0053f053  6a00                      PUSH 0x0
0053f055  e8c69a1900                CALL 0x006d8b20
0053f05a  6a00                      PUSH 0x0
0053f05c  8d7748                    LEA ESI,[EDI + 0x48]
0053f05f  68e80bb600                PUSH 0xb60be8
0053f064  8bce                      MOV ECX,ESI
0053f066  e815b3ecff                CALL 0x0040a380
0053f06b  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0053f06e  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0053f078  83f801                    CMP EAX,0x1
0053f07b  0f84df090000              JZ 0x0053fa60
0053f081  83f803                    CMP EAX,0x3
0053f084  0f84d6090000              JZ 0x0053fa60
0053f08a  817f28f4000000            CMP dword ptr [EDI + 0x28],0xf4
0053f091  0f851a030000              JNZ 0x0053f3b1
0053f097  83f802                    CMP EAX,0x2
0053f09a  0f8511030000              JNZ 0x0053f3b1
0053f0a0  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0053f0a7  0f8404030000              JZ 0x0053f3b1
0053f0ad  681012b600                PUSH 0xb61210
0053f0b2  8bce                      MOV ECX,ESI
0053f0b4  e877bfecff                CALL 0x0040b030
0053f0b9  84c0                      TEST AL,AL
0053f0bb  0f84f0020000              JZ 0x0053f3b1
0053f0c1  8bcf                      MOV ECX,EDI
0053f0c3  e81877f1ff                CALL 0x004567e0
0053f0c8  89442428                  MOV dword ptr [ESP + 0x28],EAX
0053f0cc  c744242400000000          MOV dword ptr [ESP + 0x24],0x0
0053f0d4  e887fe1a00                CALL 0x006eef60
0053f0d9  660f6ec0                  MOVD XMM0,EAX
0053f0dd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053f0e1  c1e81f                    SHR EAX,0x1f
0053f0e4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053f0ed  660f5ac0                  CVTPD2PS XMM0,XMM0
0053f0f1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053f0f9  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0053f101  f30f58c0                  ADDSS XMM0,XMM0
0053f105  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0053f10b  e850fe1a00                CALL 0x006eef60
0053f110  660f6ec0                  MOVD XMM0,EAX
0053f114  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053f118  c1e81f                    SHR EAX,0x1f
0053f11b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053f124  660f5ac0                  CVTPD2PS XMM0,XMM0
0053f128  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053f130  f30f5905e0aaba00          MULSS XMM0,dword ptr [0x00baaae0]
0053f138  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
0053f140  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0053f146  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053f14c  e8efe3edff                CALL 0x0041d540
0053f151  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
0053f157  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0053f15f  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0053f165  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053f16b  e8b0e3edff                CALL 0x0041d520
0053f170  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
0053f176  8d442438                  LEA EAX,[ESP + 0x38]
0053f17a  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0053f180  83ec0c                    SUB ESP,0xc
0053f183  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0053f18b  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053f193  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0053f199  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0053f1a1  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0053f1a9  c704240000a041            MOV dword ptr [ESP],0x41a00000
0053f1b0  50                        PUSH EAX
0053f1b1  8d44242c                  LEA EAX,[ESP + 0x2c]
0053f1b5  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0053f1bb  50                        PUSH EAX
0053f1bc  e88f3d2d00                CALL 0x00812f50
0053f1c1  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0053f1c7  8d442438                  LEA EAX,[ESP + 0x38]
0053f1cb  6a00                      PUSH 0x0
0053f1cd  6a00                      PUSH 0x0
0053f1cf  6a01                      PUSH 0x1
0053f1d1  51                        PUSH ECX
0053f1d2  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0053f1d8  c7042400000000            MOV dword ptr [ESP],0x0
0053f1df  50                        PUSH EAX
0053f1e0  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0053f1e6  8d44245c                  LEA EAX,[ESP + 0x5c]
0053f1ea  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053f1f0  50                        PUSH EAX
0053f1f1  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
0053f1f7  e824432d00                CALL 0x00813520
0053f1fc  8bf0                      MOV ESI,EAX
0053f1fe  e85dfd1a00                CALL 0x006eef60
0053f203  660f6ec0                  MOVD XMM0,EAX
0053f207  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053f20b  c1e81f                    SHR EAX,0x1f
0053f20e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053f217  660f5ac0                  CVTPD2PS XMM0,XMM0
0053f21b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053f223  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0053f22b  f30f58c0                  ADDSS XMM0,XMM0
0053f22f  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0053f235  e826fd1a00                CALL 0x006eef60
0053f23a  660f6ec0                  MOVD XMM0,EAX
0053f23e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053f242  c1e81f                    SHR EAX,0x1f
0053f245  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053f24e  660f5ac0                  CVTPD2PS XMM0,XMM0
0053f252  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053f25a  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0053f260  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053f266  e8d5e2edff                CALL 0x0041d540
0053f26b  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0053f273  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
0053f279  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0053f27d  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0053f283  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0053f289  e892e2edff                CALL 0x0041d520
0053f28e  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0053f296  8d442438                  LEA EAX,[ESP + 0x38]
0053f29a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053f2a0  f30f104c2440              MOVSS XMM1,dword ptr [ESP + 0x40]
0053f2a6  50                        PUSH EAX
0053f2a7  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
0053f2ad  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
0053f2b3  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0053f2b8  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0053f2be  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0053f2c4  e887461c00                CALL 0x00703950
0053f2c9  f30f10542440              MOVSS XMM2,dword ptr [ESP + 0x40]
0053f2cf  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0053f2d5  0f28c2                    MOVAPS XMM0,XMM2
0053f2d8  0f28d9                    MOVAPS XMM3,XMM1
0053f2db  f30f5c9840030000          SUBSS XMM3,dword ptr [EAX + 0x340]
0053f2e3  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0053f2eb  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
0053f2ef  f30f59db                  MULSS XMM3,XMM3
0053f2f3  f30f59c0                  MULSS XMM0,XMM0
0053f2f7  f30f58d8                  ADDSS XMM3,XMM0
0053f2fb  0f2f1d34acba00            COMISS XMM3,dword ptr [0x00baac34]
0053f302  7612                      JBE 0x0053f316
0053f304  83f802                    CMP EAX,0x2
0053f307  7c51                      JL 0x0053f35a
0053f309  f30f1005a4acba00          MOVSS XMM0,dword ptr [0x00baaca4]
0053f311  0f2fc3                    COMISS XMM0,XMM3
0053f314  7744                      JA 0x0053f35a
0053f316  40                        INC EAX
0053f317  89442424                  MOV dword ptr [ESP + 0x24],EAX
0053f31b  83f80a                    CMP EAX,0xa
0053f31e  0f8cb0fdffff              JL 0x0053f0d4
0053f324  8d442448                  LEA EAX,[ESP + 0x48]
0053f328  50                        PUSH EAX
0053f329  e842fd1300                CALL 0x0067f070
0053f32e  83c404                    ADD ESP,0x4
0053f331  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053f336  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0053f33a  f30f590db8a8ba00          MULSS XMM1,dword ptr [0x00baa8b8]
0053f342  f30f5915b8a8ba00          MULSS XMM2,dword ptr [0x00baa8b8]
0053f34a  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0053f352  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0053f35a  8b742428                  MOV ESI,dword ptr [ESP + 0x28]
0053f35e  f30f119634030000          MOVSS dword ptr [ESI + 0x334],XMM2
0053f366  8d9634030000              LEA EDX,[ESI + 0x334]
0053f36c  89542428                  MOV dword ptr [ESP + 0x28],EDX
0053f370  8d8e3c030000              LEA ECX,[ESI + 0x33c]
0053f376  8b542428                  MOV EDX,dword ptr [ESP + 0x28]
0053f37a  8bc1                      MOV EAX,ECX
0053f37c  6a01                      PUSH 0x1
0053f37e  f30f114a04                MOVSS dword ptr [EDX + 0x4],XMM1
0053f383  f30f1111                  MOVSS dword ptr [ECX],XMM2
0053f387  8bce                      MOV ECX,ESI
0053f389  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
0053f38e  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
0053f398  c6867101000001            MOV byte ptr [ESI + 0x171],0x1
0053f39f  e80c111800                CALL 0x006c04b0
0053f3a4  c786c40b000000000000      MOV dword ptr [ESI + 0xbc4],0x0
0053f3ae  8d7748                    LEA ESI,[EDI + 0x48]
0053f3b1  68dcd2b100                PUSH 0xb1d2dc
0053f3b6  8bce                      MOV ECX,ESI
0053f3b8  e873bcecff                CALL 0x0040b030
0053f3bd  84c0                      TEST AL,AL
0053f3bf  0f84870b0000              JZ 0x0053ff4c
0053f3c5  8bcf                      MOV ECX,EDI
0053f3c7  e874f41700                CALL 0x006be840
0053f3cc  8bf0                      MOV ESI,EAX
0053f3ce  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
0053f3d6  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0053f3de  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
0053f3e6  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0053f3ee  0f28d0                    MOVAPS XMM2,XMM0
0053f3f1  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0053f3f7  f30f59d0                  MULSS XMM2,XMM0
0053f3fb  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0053f401  0f28c1                    MOVAPS XMM0,XMM1
0053f404  f30f59c1                  MULSS XMM0,XMM1
0053f408  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
0053f40e  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
0053f414  f30f58d0                  ADDSS XMM2,XMM0
0053f418  0f2f15d0a9ba00            COMISS XMM2,dword ptr [0x00baa9d0]
0053f41f  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
0053f425  0f86a6000000              JBE 0x0053f4d1
0053f42b  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0053f431  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
0053f437  89442410                  MOV dword ptr [ESP + 0x10],EAX
0053f43b  8d44241c                  LEA EAX,[ESP + 0x1c]
0053f43f  50                        PUSH EAX
0053f440  894c2418                  MOV dword ptr [ESP + 0x18],ECX
0053f444  8d442414                  LEA EAX,[ESP + 0x14]
0053f448  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053f44e  50                        PUSH EAX
0053f44f  8d442450                  LEA EAX,[ESP + 0x50]
0053f453  50                        PUSH EAX
0053f454  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0053f45a  e8e1162b00                CALL 0x007f0b40
0053f45f  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0053f467  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0053f46f  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
0053f474  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
0053f478  f30f59c0                  MULSS XMM0,XMM0
0053f47c  f30f59c9                  MULSS XMM1,XMM1
0053f480  f30f58c1                  ADDSS XMM0,XMM1
0053f484  e8c765efff                CALL 0x00435a50
0053f489  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
0053f491  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0053f497  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
0053f49d  e8ae65efff                CALL 0x00435a50
0053f4a2  f30f104c2438              MOVSS XMM1,dword ptr [ESP + 0x38]
0053f4a8  0f2fc1                    COMISS XMM0,XMM1
0053f4ab  7624                      JBE 0x0053f4d1
0053f4ad  f30f5ec8                  DIVSS XMM1,XMM0
0053f4b1  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0053f4b7  f30f59c1                  MULSS XMM0,XMM1
0053f4bb  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0053f4c1  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
0053f4c7  f30f59c1                  MULSS XMM0,XMM1
0053f4cb  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0053f4d1  8bcf                      MOV ECX,EDI
0053f4d3  e868f31700                CALL 0x006be840
0053f4d8  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0053f4e0  83ec0c                    SUB ESP,0xc
0053f4e3  f30f58442430              ADDSS XMM0,dword ptr [ESP + 0x30]
0053f4e9  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0053f4f1  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0053f4f7  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0053f4fd  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0053f505  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0053f50b  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
0053f511  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
0053f519  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
0053f51d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053f523  89442420                  MOV dword ptr [ESP + 0x20],EAX
0053f527  8d442428                  LEA EAX,[ESP + 0x28]
0053f52b  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0053f533  c704240000a041            MOV dword ptr [ESP],0x41a00000
0053f53a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0053f540  50                        PUSH EAX
0053f541  8d44243c                  LEA EAX,[ESP + 0x3c]
0053f545  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0053f54b  50                        PUSH EAX
0053f54c  e8ff392d00                CALL 0x00812f50
0053f551  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053f558  742f                      JZ 0x0053f589
0053f55a  8d442448                  LEA EAX,[ESP + 0x48]
0053f55e  8bcf                      MOV ECX,EDI
0053f560  50                        PUSH EAX
0053f561  e8ca971900                CALL 0x006d8d30
0053f566  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0053f56a  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053f56f  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0053f575  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
0053f57b  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0053f581  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
0053f587  eb0c                      JMP 0x0053f595
0053f589  f30f104c2430              MOVSS XMM1,dword ptr [ESP + 0x30]
0053f58f  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
0053f595  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0053f59d  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0053f5a5  8db73c030000              LEA ESI,[EDI + 0x33c]
0053f5ab  8bcf                      MOV ECX,EDI
0053f5ad  6a00                      PUSH 0x0
0053f5af  68000a0001                PUSH 0x1000a00
0053f5b4  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0053f5ba  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
0053f5c0  e86b7eedff                CALL 0x00417430
0053f5c5  84c0                      TEST AL,AL
0053f5c7  0f857f090000              JNZ 0x0053ff4c
0053f5cd  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0053f5d0  3dff000000                CMP EAX,0xff
0053f5d5  0f858c000000              JNZ 0x0053f667
0053f5db  8d8c2488000000            LEA ECX,[ESP + 0x88]
0053f5e2  e849f9efff                CALL 0x0043ef30
0053f5e7  8b8424e4000000            MOV EAX,dword ptr [ESP + 0xe4]
0053f5ee  8bcf                      MOV ECX,EDI
0053f5f0  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0053f5f4  818c24e000000000080000    OR dword ptr [ESP + 0xe0],0x800
0053f5ff  898424e4000000            MOV dword ptr [ESP + 0xe4],EAX
0053f606  8d842488000000            LEA EAX,[ESP + 0x88]
0053f60d  50                        PUSH EAX
0053f60e  6a06                      PUSH 0x6
0053f610  8d442424                  LEA EAX,[ESP + 0x24]
0053f614  f30f118424f8000000        MOVSS dword ptr [ESP + 0xf8],XMM0
0053f61d  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0053f622  50                        PUSH EAX
0053f623  56                        PUSH ESI
0053f624  f30f11842404010000        MOVSS dword ptr [ESP + 0x104],XMM0
0053f62d  c744242c00002041          MOV dword ptr [ESP + 0x2c],0x41200000
0053f635  c74424300000a040          MOV dword ptr [ESP + 0x30],0x40a00000
0053f63d  e89ebc1800                CALL 0x006cb2e0
0053f642  51                        PUSH ECX
0053f643  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f64a  6a00                      PUSH 0x0
0053f64c  6a02                      PUSH 0x2
0053f64e  51                        PUSH ECX
0053f64f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f656  8bcf                      MOV ECX,EDI
0053f658  683e010000                PUSH 0x13e
0053f65d  e83e751900                CALL 0x006d6ba0
0053f662  e9e5080000                JMP 0x0053ff4c
0053f667  3d14010000                CMP EAX,0x114
0053f66c  0f8539010000              JNZ 0x0053f7ab
0053f672  8d8c2488000000            LEA ECX,[ESP + 0x88]
0053f679  e8b2f8efff                CALL 0x0043ef30
0053f67e  817f2821010000            CMP dword ptr [EDI + 0x28],0x121
0053f685  750a                      JNZ 0x0053f691
0053f687  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0053f68f  eb08                      JMP 0x0053f699
0053f691  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0053f699  50                        PUSH EAX
0053f69a  51                        PUSH ECX
0053f69b  f30f110424                MOVSS dword ptr [ESP],XMM0
0053f6a0  8d442418                  LEA EAX,[ESP + 0x18]
0053f6a4  50                        PUSH EAX
0053f6a5  6a01                      PUSH 0x1
0053f6a7  8bcf                      MOV ECX,EDI
0053f6a9  e822d71800                CALL 0x006ccdd0
0053f6ae  8bd0                      MOV EDX,EAX
0053f6b0  8d4c245c                  LEA ECX,[ESP + 0x5c]
0053f6b4  f30f108218040000          MOVSS XMM0,dword ptr [EDX + 0x418]
0053f6bc  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
0053f6c4  f30f109260030000          MOVSS XMM2,dword ptr [EDX + 0x360]
0053f6cc  f30f109a64030000          MOVSS XMM3,dword ptr [EDX + 0x364]
0053f6d4  f30f5915e4a2ba00          MULSS XMM2,dword ptr [0x00baa2e4]
0053f6dc  8b823c040000              MOV EAX,dword ptr [EDX + 0x43c]
0053f6e2  f30f591de4a2ba00          MULSS XMM3,dword ptr [0x00baa2e4]
0053f6ea  838a3804000002            OR dword ptr [EDX + 0x438],0x2
0053f6f1  f30f118218040000          MOVSS dword ptr [EDX + 0x418],XMM0
0053f6f9  f30f108214040000          MOVSS XMM0,dword ptr [EDX + 0x414]
0053f701  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0053f709  89823c040000              MOV dword ptr [EDX + 0x43c],EAX
0053f70f  c78220040000cdcccc3f      MOV dword ptr [EDX + 0x420],0x3fcccccd
0053f719  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
0053f721  f30f118214040000          MOVSS dword ptr [EDX + 0x414],XMM0
0053f729  f30f108210040000          MOVSS XMM0,dword ptr [EDX + 0x410]
0053f731  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0053f739  f30f118210040000          MOVSS dword ptr [EDX + 0x410],XMM0
0053f741  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0053f749  f30f119260030000          MOVSS dword ptr [EDX + 0x360],XMM2
0053f751  0f28c8                    MOVAPS XMM1,XMM0
0053f754  f30f119a64030000          MOVSS dword ptr [EDX + 0x364],XMM3
0053f75c  0f28d0                    MOVAPS XMM2,XMM0
0053f75f  0f28d8                    MOVAPS XMM3,XMM0
0053f762  e81963efff                CALL 0x00435a80
0053f767  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0053f76e  6a01                      PUSH 0x1
0053f770  6a00                      PUSH 0x0
0053f772  68ff000000                PUSH 0xff
0053f777  0f11442478                MOVUPS xmmword ptr [ESP + 0x78],XMM0
0053f77c  8b02                      MOV EAX,dword ptr [EDX]
0053f77e  6aff                      PUSH -0x1
0053f780  51                        PUSH ECX
0053f781  8bca                      MOV ECX,EDX
0053f783  ff503c                    CALL dword ptr [EAX + 0x3c]
0053f786  51                        PUSH ECX
0053f787  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f78e  6a00                      PUSH 0x0
0053f790  6a02                      PUSH 0x2
0053f792  51                        PUSH ECX
0053f793  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f79a  8bcf                      MOV ECX,EDI
0053f79c  683e010000                PUSH 0x13e
0053f7a1  e8fa731900                CALL 0x006d6ba0
0053f7a6  e9a1070000                JMP 0x0053ff4c
0053f7ab  3d21010000                CMP EAX,0x121
0053f7b0  0f853f010000              JNZ 0x0053f8f5
0053f7b6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053f7bd  751f                      JNZ 0x0053f7de
0053f7bf  a17816c700                MOV EAX,[0x00c71678]
0053f7c4  56                        PUSH ESI
0053f7c5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053f7cb  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
0053f7d1  e86a524000                CALL 0x00944a40
0053f7d6  84c0                      TEST AL,AL
0053f7d8  0f846e070000              JZ 0x0053ff4c
0053f7de  6a00                      PUSH 0x0
0053f7e0  6a00                      PUSH 0x0
0053f7e2  6a00                      PUSH 0x0
0053f7e4  68e7030000                PUSH 0x3e7
0053f7e9  6a03                      PUSH 0x3
0053f7eb  8d442440                  LEA EAX,[ESP + 0x40]
0053f7ef  50                        PUSH EAX
0053f7f0  a17816c700                MOV EAX,[0x00c71678]
0053f7f5  56                        PUSH ESI
0053f7f6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053f7fc  e8ef152b00                CALL 0x007f0df0
0053f801  88442447                  MOV byte ptr [ESP + 0x47],AL
0053f805  e856f71a00                CALL 0x006eef60
0053f80a  33d2                      XOR EDX,EDX
0053f80c  b964000000                MOV ECX,0x64
0053f811  f7f1                      DIV ECX
0053f813  83fa4b                    CMP EDX,0x4b
0053f816  720b                      JC 0x0053f823
0053f818  807c244700                CMP byte ptr [ESP + 0x47],0x0
0053f81d  0f8567000000              JNZ 0x0053f88a
0053f823  8bcf                      MOV ECX,EDI
0053f825  e8f6731900                CALL 0x006d6c20
0053f82a  83f807                    CMP EAX,0x7
0053f82d  7d5b                      JGE 0x0053f88a
0053f82f  e82cf71a00                CALL 0x006eef60
0053f834  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053f83a  6a00                      PUSH 0x0
0053f83c  50                        PUSH EAX
0053f83d  6a00                      PUSH 0x0
0053f83f  57                        PUSH EDI
0053f840  6840b6c700                PUSH 0xc7b640
0053f845  56                        PUSH ESI
0053f846  6a00                      PUSH 0x0
0053f848  6800010000                PUSH 0x100
0053f84d  e8beeb1b00                CALL 0x006fe410
0053f852  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0053f858  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0053f85f  51                        PUSH ECX
0053f860  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f867  6a00                      PUSH 0x0
0053f869  6a02                      PUSH 0x2
0053f86b  51                        PUSH ECX
0053f86c  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0053f872  8bcf                      MOV ECX,EDI
0053f874  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f87b  683e010000                PUSH 0x13e
0053f880  e81b731900                CALL 0x006d6ba0
0053f885  e9c2060000                JMP 0x0053ff4c
0053f88a  8d8c2488000000            LEA ECX,[ESP + 0x88]
0053f891  e89af6efff                CALL 0x0043ef30
0053f896  817f2821010000            CMP dword ptr [EDI + 0x28],0x121
0053f89d  750a                      JNZ 0x0053f8a9
0053f89f  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0053f8a7  eb08                      JMP 0x0053f8b1
0053f8a9  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0053f8b1  50                        PUSH EAX
0053f8b2  51                        PUSH ECX
0053f8b3  f30f110424                MOVSS dword ptr [ESP],XMM0
0053f8b8  8d442418                  LEA EAX,[ESP + 0x18]
0053f8bc  50                        PUSH EAX
0053f8bd  6a01                      PUSH 0x1
0053f8bf  8bcf                      MOV ECX,EDI
0053f8c1  e80ad51800                CALL 0x006ccdd0
0053f8c6  51                        PUSH ECX
0053f8c7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f8ce  6a00                      PUSH 0x0
0053f8d0  6a02                      PUSH 0x2
0053f8d2  51                        PUSH ECX
0053f8d3  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f8da  8bcf                      MOV ECX,EDI
0053f8dc  683e010000                PUSH 0x13e
0053f8e1  c780200400000000803f      MOV dword ptr [EAX + 0x420],0x3f800000
0053f8eb  e8b0721900                CALL 0x006d6ba0
0053f8f0  e957060000                JMP 0x0053ff4c
0053f8f5  3df4000000                CMP EAX,0xf4
0053f8fa  0f85b0000000              JNZ 0x0053f9b0
0053f900  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0053f904  0f85a6000000              JNZ 0x0053f9b0
0053f90a  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0053f90e  0f859c000000              JNZ 0x0053f9b0
0053f914  8d8c2488000000            LEA ECX,[ESP + 0x88]
0053f91b  e810f6efff                CALL 0x0043ef30
0053f920  8d442448                  LEA EAX,[ESP + 0x48]
0053f924  c78424e000000000000000    MOV dword ptr [ESP + 0xe0],0x0
0053f92f  50                        PUSH EAX
0053f930  8d4c243c                  LEA ECX,[ESP + 0x3c]
0053f934  c78424e800000040000000    MOV dword ptr [ESP + 0xe8],0x40
0053f93f  c78424a000000000000040    MOV dword ptr [ESP + 0xa0],0x40000000
0053f94a  e8e1064d00                CALL 0x00a10030
0053f94f  8bcf                      MOV ECX,EDI
0053f951  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053f956  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0053f95a  8d842488000000            LEA EAX,[ESP + 0x88]
0053f961  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0053f969  50                        PUSH EAX
0053f96a  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0053f972  8d442420                  LEA EAX,[ESP + 0x20]
0053f976  6a00                      PUSH 0x0
0053f978  50                        PUSH EAX
0053f979  56                        PUSH ESI
0053f97a  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0053f980  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
0053f986  e855b91800                CALL 0x006cb2e0
0053f98b  51                        PUSH ECX
0053f98c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f993  6a00                      PUSH 0x0
0053f995  6a02                      PUSH 0x2
0053f997  51                        PUSH ECX
0053f998  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053f99f  8bcf                      MOV ECX,EDI
0053f9a1  683e010000                PUSH 0x13e
0053f9a6  e8f5711900                CALL 0x006d6ba0
0053f9ab  e99c050000                JMP 0x0053ff4c
0053f9b0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053f9b7  752b                      JNZ 0x0053f9e4
0053f9b9  6a00                      PUSH 0x0
0053f9bb  6a00                      PUSH 0x0
0053f9bd  6a00                      PUSH 0x0
0053f9bf  68e7030000                PUSH 0x3e7
0053f9c4  6a03                      PUSH 0x3
0053f9c6  8d442440                  LEA EAX,[ESP + 0x40]
0053f9ca  50                        PUSH EAX
0053f9cb  a17816c700                MOV EAX,[0x00c71678]
0053f9d0  56                        PUSH ESI
0053f9d1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053f9d7  e814142b00                CALL 0x007f0df0
0053f9dc  84c0                      TEST AL,AL
0053f9de  0f8468050000              JZ 0x0053ff4c
0053f9e4  8d8c2488000000            LEA ECX,[ESP + 0x88]
0053f9eb  e840f5efff                CALL 0x0043ef30
0053f9f0  8bf0                      MOV ESI,EAX
0053f9f2  8d4c2438                  LEA ECX,[ESP + 0x38]
0053f9f6  8d442448                  LEA EAX,[ESP + 0x48]
0053f9fa  50                        PUSH EAX
0053f9fb  e830064d00                CALL 0x00a10030
0053fa00  56                        PUSH ESI
0053fa01  6a00                      PUSH 0x0
0053fa03  8bcf                      MOV ECX,EDI
0053fa05  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053fa0a  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0053fa0e  8d442424                  LEA EAX,[ESP + 0x24]
0053fa12  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0053fa1a  50                        PUSH EAX
0053fa1b  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0053fa23  8d873c030000              LEA EAX,[EDI + 0x33c]
0053fa29  50                        PUSH EAX
0053fa2a  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
0053fa30  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0053fa36  e8a5b81800                CALL 0x006cb2e0
0053fa3b  51                        PUSH ECX
0053fa3c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053fa43  6a00                      PUSH 0x0
0053fa45  6a02                      PUSH 0x2
0053fa47  51                        PUSH ECX
0053fa48  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053fa4f  8bcf                      MOV ECX,EDI
0053fa51  683e010000                PUSH 0x13e
0053fa56  e845711900                CALL 0x006d6ba0
0053fa5b  e9ec040000                JMP 0x0053ff4c
0053fa60  681812b600                PUSH 0xb61218
0053fa65  8bce                      MOV ECX,ESI
0053fa67  e8c4b5ecff                CALL 0x0040b030
0053fa6c  84c0                      TEST AL,AL
0053fa6e  7434                      JZ 0x0053faa4
0053fa70  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053fa77  752b                      JNZ 0x0053faa4
0053fa79  a17816c700                MOV EAX,[0x00c71678]
0053fa7e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053fa84  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
0053fa8a  8d873c030000              LEA EAX,[EDI + 0x33c]
0053fa90  50                        PUSH EAX
0053fa91  e8aa4f4000                CALL 0x00944a40
0053fa96  84c0                      TEST AL,AL
0053fa98  750a                      JNZ 0x0053faa4
0053fa9a  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0053faa4  68dcd2b100                PUSH 0xb1d2dc
0053faa9  8bce                      MOV ECX,ESI
0053faab  e880b5ecff                CALL 0x0040b030
0053fab0  84c0                      TEST AL,AL
0053fab2  7437                      JZ 0x0053faeb
0053fab4  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053fab8  b90a000000                MOV ECX,0xa
0053fabd  51                        PUSH ECX
0053fabe  b801000000                MOV EAX,0x1
0053fac3  0f45c1                    CMOVNZ EAX,ECX
0053fac6  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0053facc  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053fad3  6a00                      PUSH 0x0
0053fad5  6a02                      PUSH 0x2
0053fad7  51                        PUSH ECX
0053fad8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053fadf  8bcf                      MOV ECX,EDI
0053fae1  683e010000                PUSH 0x13e
0053fae6  e8b5701900                CALL 0x006d6ba0
0053faeb  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053faf1  85c0                      TEST EAX,EAX
0053faf3  0f8e3a040000              JLE 0x0053ff33
0053faf9  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
0053fb01  48                        DEC EAX
0053fb02  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0053fb08  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053fb0c  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0053fb12  750e                      JNZ 0x0053fb22
0053fb14  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
0053fb1c  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0053fb22  8bcf                      MOV ECX,EDI
0053fb24  e817ed1700                CALL 0x006be840
0053fb29  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0053fb31  8bf0                      MOV ESI,EAX
0053fb33  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0053fb3b  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0053fb43  f30f5cc8                  SUBSS XMM1,XMM0
0053fb47  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0053fb4d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053fb55  f30f5cc2                  SUBSS XMM0,XMM2
0053fb59  f30f11542438              MOVSS dword ptr [ESP + 0x38],XMM2
0053fb5f  f30f59c9                  MULSS XMM1,XMM1
0053fb63  f30f59c0                  MULSS XMM0,XMM0
0053fb67  f30f58c1                  ADDSS XMM0,XMM1
0053fb6b  e8e05eefff                CALL 0x00435a50
0053fb70  f30f109660030000          MOVSS XMM2,dword ptr [ESI + 0x360]
0053fb78  8d44241c                  LEA EAX,[ESP + 0x1c]
0053fb7c  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0053fb84  83ec0c                    SUB ESP,0xc
0053fb87  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053fb8d  f30f101d5ca7ba00          MOVSS XMM3,dword ptr [0x00baa75c]
0053fb95  f30f59d0                  MULSS XMM2,XMM0
0053fb99  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0053fb9f  c744240800008040          MOV dword ptr [ESP + 0x8],0x40800000
0053fba7  c744240400008040          MOV dword ptr [ESP + 0x4],0x40800000
0053fbaf  f30f58542438              ADDSS XMM2,dword ptr [ESP + 0x38]
0053fbb5  c7042400008040            MOV dword ptr [ESP],0x40800000
0053fbbc  50                        PUSH EAX
0053fbbd  8d442420                  LEA EAX,[ESP + 0x20]
0053fbc1  50                        PUSH EAX
0053fbc2  f30f11542430              MOVSS dword ptr [ESP + 0x30],XMM2
0053fbc8  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0053fbd0  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0053fbd8  f30f59d0                  MULSS XMM2,XMM0
0053fbdc  f30f5854244c              ADDSS XMM2,dword ptr [ESP + 0x4c]
0053fbe2  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
0053fbe8  e863332d00                CALL 0x00812f50
0053fbed  8d442448                  LEA EAX,[ESP + 0x48]
0053fbf1  50                        PUSH EAX
0053fbf2  e879f41300                CALL 0x0067f070
0053fbf7  83c404                    ADD ESP,0x4
0053fbfa  8bf0                      MOV ESI,EAX
0053fbfc  e85ff31a00                CALL 0x006eef60
0053fc01  660f6ec0                  MOVD XMM0,EAX
0053fc05  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053fc09  c1e81f                    SHR EAX,0x1f
0053fc0c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053fc13  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053fc1c  660f5ac8                  CVTPD2PS XMM1,XMM0
0053fc20  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0053fc28  0f28d1                    MOVAPS XMM2,XMM1
0053fc2b  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
0053fc30  f30f5916                  MULSS XMM2,dword ptr [ESI]
0053fc34  f30f594c2428              MULSS XMM1,dword ptr [ESP + 0x28]
0053fc3a  f30f59542428              MULSS XMM2,dword ptr [ESP + 0x28]
0053fc40  f30f584c2414              ADDSS XMM1,dword ptr [ESP + 0x14]
0053fc46  f30f58542410              ADDSS XMM2,dword ptr [ESP + 0x10]
0053fc4c  7415                      JZ 0x0053fc63
0053fc4e  8d442448                  LEA EAX,[ESP + 0x48]
0053fc52  8bcf                      MOV ECX,EDI
0053fc54  50                        PUSH EAX
0053fc55  e8d6901900                CALL 0x006d8d30
0053fc5a  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0053fc5e  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053fc63  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0053fc6b  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0053fc73  8db73c030000              LEA ESI,[EDI + 0x33c]
0053fc79  8d8c2488000000            LEA ECX,[ESP + 0x88]
0053fc80  f30f59159ca0ba00          MULSS XMM2,dword ptr [0x00baa09c]
0053fc88  f30f590d9ca0ba00          MULSS XMM1,dword ptr [0x00baa09c]
0053fc90  f30f11542454              MOVSS dword ptr [ESP + 0x54],XMM2
0053fc96  f30f114c2458              MOVSS dword ptr [ESP + 0x58],XMM1
0053fc9c  e88ff2efff                CALL 0x0043ef30
0053fca1  e8baf21a00                CALL 0x006eef60
0053fca6  0f57c0                    XORPS XMM0,XMM0
0053fca9  f20f2ac0                  CVTSI2SD XMM0,EAX
0053fcad  c1e81f                    SHR EAX,0x1f
0053fcb0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053fcb9  660f5ac0                  CVTPD2PS XMM0,XMM0
0053fcbd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053fcc5  f30f5905a0a8ba00          MULSS XMM0,dword ptr [0x00baa8a0]
0053fccd  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
0053fcd6  e885f21a00                CALL 0x006eef60
0053fcdb  0f57c0                    XORPS XMM0,XMM0
0053fcde  c78424940000000000c03f    MOV dword ptr [ESP + 0x94],0x3fc00000
0053fce9  f20f2ac0                  CVTSI2SD XMM0,EAX
0053fced  c1e81f                    SHR EAX,0x1f
0053fcf0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053fcf9  660f5ac0                  CVTPD2PS XMM0,XMM0
0053fcfd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053fd05  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
0053fd0d  f30f5c0540a9ba00          SUBSS XMM0,dword ptr [0x00baa940]
0053fd15  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
0053fd1e  e83df21a00                CALL 0x006eef60
0053fd23  0f57c0                    XORPS XMM0,XMM0
0053fd26  f20f2ac0                  CVTSI2SD XMM0,EAX
0053fd2a  c1e81f                    SHR EAX,0x1f
0053fd2d  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053fd31  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053fd3a  660f5ac0                  CVTPD2PS XMM0,XMM0
0053fd3e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053fd46  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0053fd4e  f30f1184249c000000        MOVSS dword ptr [ESP + 0x9c],XMM0
0053fd57  0f859c000000              JNZ 0x0053fdf9
0053fd5d  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0053fd64  c78424e000000002000000    MOV dword ptr [ESP + 0xe0],0x2
0053fd6f  c78424e400000000000000    MOV dword ptr [ESP + 0xe4],0x0
0053fd7a  c784249c000000cdcccc3f    MOV dword ptr [ESP + 0x9c],0x3fcccccd
0053fd85  0f118424c4000000          MOVUPS xmmword ptr [ESP + 0xc4],XMM0
0053fd8d  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
0053fd95  e8c6f11a00                CALL 0x006eef60
0053fd9a  8bd6                      MOV EDX,ESI
0053fd9c  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
0053fda4  b902000000                MOV ECX,0x2
0053fda9  c74424140000f0c1          MOV dword ptr [ESP + 0x14],0xc1f00000
0053fdb1  660f6ec0                  MOVD XMM0,EAX
0053fdb5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053fdb9  c1e81f                    SHR EAX,0x1f
0053fdbc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053fdc5  8d44241c                  LEA EAX,[ESP + 0x1c]
0053fdc9  50                        PUSH EAX
0053fdca  8d8424b8000000            LEA EAX,[ESP + 0xb8]
0053fdd1  50                        PUSH EAX
0053fdd2  660f5ac0                  CVTPD2PS XMM0,XMM0
0053fdd6  8d442418                  LEA EAX,[ESP + 0x18]
0053fdda  50                        PUSH EAX
0053fddb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053fde3  f30f590574adba00          MULSS XMM0,dword ptr [0x00baad74]
0053fdeb  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0053fdf1  e8fa7e1900                CALL 0x006d7cf0
0053fdf6  83c40c                    ADD ESP,0xc
0053fdf9  8d842488000000            LEA EAX,[ESP + 0x88]
0053fe00  8bcf                      MOV ECX,EDI
0053fe02  50                        PUSH EAX
0053fe03  6a00                      PUSH 0x0
0053fe05  8d44245c                  LEA EAX,[ESP + 0x5c]
0053fe09  50                        PUSH EAX
0053fe0a  56                        PUSH ESI
0053fe0b  e8d0b41800                CALL 0x006cb2e0
0053fe10  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053fe16  b906000000                MOV ECX,0x6
0053fe1b  99                        CDQ
0053fe1c  f7f9                      IDIV ECX
0053fe1e  85d2                      TEST EDX,EDX
0053fe20  0f850d010000              JNZ 0x0053ff33
0053fe26  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053fe2a  0f8403010000              JZ 0x0053ff33
0053fe30  8954241c                  MOV dword ptr [ESP + 0x1c],EDX
0053fe34  e827f11a00                CALL 0x006eef60
0053fe39  8d4c245c                  LEA ECX,[ESP + 0x5c]
0053fe3d  660f6ec0                  MOVD XMM0,EAX
0053fe41  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053fe45  c1e81f                    SHR EAX,0x1f
0053fe48  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053fe51  660f5ac0                  CVTPD2PS XMM0,XMM0
0053fe55  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053fe5d  f30f590574adba00          MULSS XMM0,dword ptr [0x00baad74]
0053fe65  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0053fe6b  e80073ecff                CALL 0x00407170
0053fe70  8d54241c                  LEA EDX,[ESP + 0x1c]
0053fe74  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
0053fe7c  52                        PUSH EDX
0053fe7d  50                        PUSH EAX
0053fe7e  8d442418                  LEA EAX,[ESP + 0x18]
0053fe82  c744241c0000f0c1          MOV dword ptr [ESP + 0x1c],0xc1f00000
0053fe8a  50                        PUSH EAX
0053fe8b  8bd6                      MOV EDX,ESI
0053fe8d  b901000000                MOV ECX,0x1
0053fe92  e8597e1900                CALL 0x006d7cf0
0053fe97  83c40c                    ADD ESP,0xc
0053fe9a  8bf0                      MOV ESI,EAX
0053fe9c  e8bff01a00                CALL 0x006eef60
0053fea1  660f6ec0                  MOVD XMM0,EAX
0053fea5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053fea9  c1e81f                    SHR EAX,0x1f
0053feac  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053feb5  660f5ac0                  CVTPD2PS XMM0,XMM0
0053feb9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053fec1  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0053fec9  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
0053fed1  e88af01a00                CALL 0x006eef60
0053fed6  660f6ec0                  MOVD XMM0,EAX
0053feda  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053fede  c1e81f                    SHR EAX,0x1f
0053fee1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053feea  660f5ac8                  CVTPD2PS XMM1,XMM0
0053feee  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0053fef6  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
0053fefe  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
0053ff06  0f28c1                    MOVAPS XMM0,XMM1
0053ff09  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0053ff11  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0053ff19  c7865403000064000000      MOV dword ptr [ESI + 0x354],0x64
0053ff23  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0053ff2b  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0053ff33  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053ff37  7409                      JZ 0x0053ff42
0053ff39  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053ff40  750a                      JNZ 0x0053ff4c
0053ff42  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0053ff4c  817f2814010000            CMP dword ptr [EDI + 0x28],0x114
0053ff53  0f85bf000000              JNZ 0x00540018
0053ff59  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
0053ff61  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
0053ff68  9f                        LAHF
0053ff69  f6c444                    TEST AH,0x44
0053ff6c  0f8aa6000000              JP 0x00540018
0053ff72  e8e9ef1a00                CALL 0x006eef60
0053ff77  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053ff7d  6a00                      PUSH 0x0
0053ff7f  50                        PUSH EAX
0053ff80  6a00                      PUSH 0x0
0053ff82  57                        PUSH EDI
0053ff83  6840b6c700                PUSH 0xc7b640
0053ff88  8d873c030000              LEA EAX,[EDI + 0x33c]
0053ff8e  50                        PUSH EAX
0053ff8f  6a3d                      PUSH 0x3d
0053ff91  68e8030000                PUSH 0x3e8
0053ff96  e875e41b00                CALL 0x006fe410
0053ff9b  8bf0                      MOV ESI,EAX
0053ff9d  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0053ffa3  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0053ffa9  85c9                      TEST ECX,ECX
0053ffab  741a                      JZ 0x0053ffc7
0053ffad  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0053ffb1  81c1cc030000              ADD ECX,0x3cc
0053ffb7  8d44242c                  LEA EAX,[ESP + 0x2c]
0053ffbb  50                        PUSH EAX
0053ffbc  e84ff2f8ff                CALL 0x004cf210
0053ffc1  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0053ffc7  50                        PUSH EAX
0053ffc8  8bcf                      MOV ECX,EDI
0053ffca  8938                      MOV dword ptr [EAX],EDI
0053ffcc  e81fddf8ff                CALL 0x004cdcf0
0053ffd1  8b8770030000              MOV EAX,dword ptr [EDI + 0x370]
0053ffd7  51                        PUSH ECX
0053ffd8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053ffdf  6a00                      PUSH 0x0
0053ffe1  6a02                      PUSH 0x2
0053ffe3  51                        PUSH ECX
0053ffe4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053ffeb  8bcf                      MOV ECX,EDI
0053ffed  6a34                      PUSH 0x34
0053ffef  898654040000              MOV dword ptr [ESI + 0x454],EAX
0053fff5  c7865804000000004842      MOV dword ptr [ESI + 0x458],0x42480000
0053ffff  c7865c04000005000000      MOV dword ptr [ESI + 0x45c],0x5
00540009  c7866004000005000000      MOV dword ptr [ESI + 0x460],0x5
00540013  e8886b1900                CALL 0x006d6ba0
00540018  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0054001c  7409                      JZ 0x00540027
0054001e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00540025  7523                      JNZ 0x0054004a
00540027  817f28f4000000            CMP dword ptr [EDI + 0x28],0xf4
0054002e  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00540038  7510                      JNZ 0x0054004a
0054003a  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0054003e  750a                      JNZ 0x0054004a
00540040  c787100400002d000000      MOV dword ptr [EDI + 0x410],0x2d
0054004a  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00540052  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00540059  9f                        LAHF
0054005a  f6c444                    TEST AH,0x44
0054005d  7a15                      JP 0x00540074
0054005f  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00540067  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0054006e  9f                        LAHF
0054006f  f6c444                    TEST AH,0x44
00540072  7b28                      JNP 0x0054009c
00540074  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0054007c  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00540084  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0054008c  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00540094  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0054009c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005400a4  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005400ac  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005400b4  8b8c2434010000            MOV ECX,dword ptr [ESP + 0x134]
005400bb  5f                        POP EDI
005400bc  5e                        POP ESI
005400bd  33cc                      XOR ECX,ESP
005400bf  e867f05a00                CALL 0x00aef12b
005400c4  8be5                      MOV ESP,EBP
005400c6  5d                        POP EBP
005400c7  c3                        RET
