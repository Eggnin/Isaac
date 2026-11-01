; J460 NPC AI 0x00571280 AI_00571280
; types=245
; identities=245.0.0
; entry=00571280
00571280  53                        PUSH EBX
00571281  8bdc                      MOV EBX,ESP
00571283  83ec08                    SUB ESP,0x8
00571286  83e4f8                    AND ESP,0xfffffff8
00571289  83c404                    ADD ESP,0x4
0057128c  55                        PUSH EBP
0057128d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00571290  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00571294  8bec                      MOV EBP,ESP
00571296  6aff                      PUSH -0x1
00571298  682b50af00                PUSH 0xaf502b
0057129d  64a100000000              MOV EAX,FS:[0x0]
005712a3  50                        PUSH EAX
005712a4  53                        PUSH EBX
005712a5  81ec18010000              SUB ESP,0x118
005712ab  a1b493bf00                MOV EAX,[0x00bf93b4]
005712b0  33c5                      XOR EAX,EBP
005712b2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005712b5  56                        PUSH ESI
005712b6  57                        PUSH EDI
005712b7  50                        PUSH EAX
005712b8  8d45f4                    LEA EAX,[EBP + -0xc]
005712bb  64a300000000              MOV FS:[0x0],EAX
005712c1  8bf1                      MOV ESI,ECX
005712c3  89b504ffffff              MOV dword ptr [EBP + 0xffffff04],ESI
005712c9  8b96740b0000              MOV EDX,dword ptr [ESI + 0xb74]
005712cf  c6851bffffff00            MOV byte ptr [EBP + 0xffffff1b],0x0
005712d6  c68503ffffff00            MOV byte ptr [EBP + 0xffffff03],0x0
005712dd  899524ffffff              MOV dword ptr [EBP + 0xffffff24],EDX
005712e3  83fa03                    CMP EDX,0x3
005712e6  0f8521010000              JNZ 0x0057140d
005712ec  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
005712f2  33c0                      XOR EAX,EAX
005712f4  81e100000004              AND ECX,0x4000000
005712fa  0bc1                      OR EAX,ECX
005712fc  0f841f160000              JZ 0x00572921
00571302  8b8e7c0b0000              MOV ECX,dword ptr [ESI + 0xb7c]
00571308  6a00                      PUSH 0x0
0057130a  e881481400                CALL 0x006b5b90
0057130f  84c0                      TEST AL,AL
00571311  0f840a160000              JZ 0x00572921
00571317  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
0057131d  e84e49ecff                CALL 0x00435c70
00571322  8b16                      MOV EDX,dword ptr [ESI]
00571324  8bce                      MOV ECX,ESI
00571326  50                        PUSH EAX
00571327  ff5224                    CALL dword ptr [EDX + 0x24]
0057132a  837e2c0b                  CMP dword ptr [ESI + 0x2c],0xb
0057132e  0f57c0                    XORPS XMM0,XMM0
00571331  660f138510ffffff          MOVLPD qword ptr [EBP + 0xffffff10],XMM0
00571339  7516                      JNZ 0x00571351
0057133b  c7851cffffff00000001      MOV dword ptr [EBP + 0xffffff1c],0x1000000
00571345  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
0057134f  eb18                      JMP 0x00571369
00571351  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
00571357  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0057135d  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00571363  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
00571369  8bbe7c0b0000              MOV EDI,dword ptr [ESI + 0xb7c]
0057136f  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
00571375  8b07                      MOV EAX,dword ptr [EDI]
00571377  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0057137a  8b81c8030000              MOV EAX,dword ptr [ECX + 0x3c8]
00571380  85c0                      TEST EAX,EAX
00571382  0f45c8                    CMOVNZ ECX,EAX
00571385  51                        PUSH ECX
00571386  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
0057138c  e87fffebff                CALL 0x00431310
00571391  6a1e                      PUSH 0x1e
00571393  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00571399  50                        PUSH EAX
0057139a  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
005713a0  ffb51cffffff              PUSH dword ptr [EBP + 0xffffff1c]
005713a6  51                        PUSH ECX
005713a7  8bcf                      MOV ECX,EDI
005713a9  c7042400007041            MOV dword ptr [ESP],0x41700000
005713b0  ffd6                      CALL ESI
005713b2  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
005713b8  8b817c0b0000              MOV EAX,dword ptr [ECX + 0xb7c]
005713be  c781800b000000000000      MOV dword ptr [ECX + 0xb80],0x0
005713c8  f30f109164030000          MOVSS XMM2,dword ptr [ECX + 0x364]
005713d0  f30f108160030000          MOVSS XMM0,dword ptr [ECX + 0x360]
005713d8  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005713e0  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
005713e8  f30f588060030000          ADDSS XMM0,dword ptr [EAX + 0x360]
005713f0  f30f589064030000          ADDSS XMM2,dword ptr [EAX + 0x364]
005713f8  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
00571400  f30f119064030000          MOVSS dword ptr [EAX + 0x364],XMM2
00571408  e914150000                JMP 0x00572921
0057140d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00571415  0f57db                    XORPS XMM3,XMM3
00571418  83fa01                    CMP EDX,0x1
0057141b  0f84d30e0000              JZ 0x005722f4
00571421  83fa02                    CMP EDX,0x2
00571424  0f8402130000              JZ 0x0057272c
0057142a  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00571430  2500040000                AND EAX,0x400
00571435  83c800                    OR EAX,0x0
00571438  0f84d0000000              JZ 0x0057150e
0057143e  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
00571442  0f85c6000000              JNZ 0x0057150e
00571448  b920000000                MOV ECX,0x20
0057144d  c7462c01000000            MOV dword ptr [ESI + 0x2c],0x1
00571454  e8a7bae9ff                CALL 0x0040cf00
00571459  0f1005e81ab600            MOVUPS XMM0,xmmword ptr [0x00b61ae8]
00571460  8bd0                      MOV EDX,EAX
00571462  c78548ffffff1b000000      MOV dword ptr [EBP + 0xffffff48],0x1b
0057146c  c7854cffffff1f000000      MOV dword ptr [EBP + 0xffffff4c],0x1f
00571476  899538ffffff              MOV dword ptr [EBP + 0xffffff38],EDX
0057147c  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
0057147f  f30f7e05f81ab600          MOVQ XMM0,qword ptr [0x00b61af8]
00571487  660fd64210                MOVQ qword ptr [EDX + 0x10],XMM0
0057148c  668b0d001bb600            MOV CX,word ptr [0x00b61b00]
00571493  66894a18                  MOV word ptr [EDX + 0x18],CX
00571497  a0021bb600                MOV AL,[0x00b61b02]
0057149c  88421a                    MOV byte ptr [EDX + 0x1a],AL
0057149f  c6421b00                  MOV byte ptr [EDX + 0x1b],0x0
005714a3  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
005714a9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005714b0  50                        PUSH EAX
005714b1  6a00                      PUSH 0x0
005714b3  8d4e48                    LEA ECX,[ESI + 0x48]
005714b6  e875aae9ff                CALL 0x0040bf30
005714bb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005714c2  8b954cffffff              MOV EDX,dword ptr [EBP + 0xffffff4c]
005714c8  83fa10                    CMP EDX,0x10
005714cb  7231                      JC 0x005714fe
005714cd  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
005714d3  42                        INC EDX
005714d4  8bc1                      MOV EAX,ECX
005714d6  81fa00100000              CMP EDX,0x1000
005714dc  7216                      JC 0x005714f4
005714de  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005714e1  83c223                    ADD EDX,0x23
005714e4  2bc1                      SUB EAX,ECX
005714e6  83c0fc                    ADD EAX,-0x4
005714e9  83f81f                    CMP EAX,0x1f
005714ec  7606                      JBE 0x005714f4
005714ee  ff159488b100              CALL dword ptr [0x00b18894]
005714f4  52                        PUSH EDX
005714f5  51                        PUSH ECX
005714f6  e861dc5700                CALL 0x00aef15c
005714fb  83c408                    ADD ESP,0x8
005714fe  51                        PUSH ECX
005714ff  8d4e48                    LEA ECX,[ESI + 0x48]
00571502  e8f9aae9ff                CALL 0x0040c000
00571507  c6851bffffff01            MOV byte ptr [EBP + 0xffffff1b],0x1
0057150e  83be640b000000            CMP dword ptr [ESI + 0xb64],0x0
00571515  0f8586020000              JNZ 0x005717a1
0057151b  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00571521  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
00571527  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0057152d  83e1fb                    AND ECX,0xfffffffb
00571530  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00571533  81c911000d02              OR ECX,0x20d0011
00571539  48                        DEC EAX
0057153a  898e68010000              MOV dword ptr [ESI + 0x168],ECX
00571540  c786180f000007000000      MOV dword ptr [ESI + 0xf18],0x7
0057154a  83f80f                    CMP EAX,0xf
0057154d  0f87ae000000              JA 0x00571601
00571553  0fb68060295700            MOVZX EAX,byte ptr [EAX + 0x572960]
0057155a  ff248540295700            JMP dword ptr [EAX*0x4 + 0x572940]
00571561  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00571567  68e81ab600                PUSH 0xb61ae8
0057156c  50                        PUSH EAX
0057156d  e80ef5eaff                CALL 0x00420a80
00571572  83c408                    ADD ESP,0x8
00571575  e9aa000000                JMP 0x00571624
0057157a  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00571580  68c81ab600                PUSH 0xb61ac8
00571585  50                        PUSH EAX
00571586  e8f5f4eaff                CALL 0x00420a80
0057158b  83c408                    ADD ESP,0x8
0057158e  e991000000                JMP 0x00571624
00571593  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00571599  68ac1ab600                PUSH 0xb61aac
0057159e  50                        PUSH EAX
0057159f  e8dcf4eaff                CALL 0x00420a80
005715a4  83c408                    ADD ESP,0x8
005715a7  eb7b                      JMP 0x00571624
005715a9  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
005715af  688c1ab600                PUSH 0xb61a8c
005715b4  50                        PUSH EAX
005715b5  e8c6f4eaff                CALL 0x00420a80
005715ba  83c408                    ADD ESP,0x8
005715bd  eb65                      JMP 0x00571624
005715bf  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
005715c5  68601bb600                PUSH 0xb61b60
005715ca  50                        PUSH EAX
005715cb  e8b0f4eaff                CALL 0x00420a80
005715d0  83c408                    ADD ESP,0x8
005715d3  eb4f                      JMP 0x00571624
005715d5  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
005715db  68401bb600                PUSH 0xb61b40
005715e0  50                        PUSH EAX
005715e1  e89af4eaff                CALL 0x00420a80
005715e6  83c408                    ADD ESP,0x8
005715e9  eb39                      JMP 0x00571624
005715eb  8d8edc030000              LEA ECX,[ESI + 0x3dc]
005715f1  6a03                      PUSH 0x3
005715f3  e8287a2700                CALL 0x007e9020
005715f8  40                        INC EAX
005715f9  50                        PUSH EAX
005715fa  68201bb600                PUSH 0xb61b20
005715ff  eb14                      JMP 0x00571615
00571601  8d8edc030000              LEA ECX,[ESI + 0x3dc]
00571607  6a03                      PUSH 0x3
00571609  e8127a2700                CALL 0x007e9020
0057160e  40                        INC EAX
0057160f  50                        PUSH EAX
00571610  68041bb600                PUSH 0xb61b04
00571615  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
0057161b  50                        PUSH EAX
0057161c  e85ff4eaff                CALL 0x00420a80
00571621  83c40c                    ADD ESP,0xc
00571624  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
0057162a  c78550ffffff00000000      MOV dword ptr [EBP + 0xffffff50],0x0
00571634  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
0057163e  8d5101                    LEA EDX,[ECX + 0x1]
00571641  c78564ffffff0f000000      MOV dword ptr [EBP + 0xffffff64],0xf
0057164b  c68550ffffff00            MOV byte ptr [EBP + 0xffffff50],0x0
00571652  8a01                      MOV AL,byte ptr [ECX]
00571654  41                        INC ECX
00571655  84c0                      TEST AL,AL
00571657  75f9                      JNZ 0x00571652
00571659  2bca                      SUB ECX,EDX
0057165b  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
00571661  51                        PUSH ECX
00571662  50                        PUSH EAX
00571663  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00571669  e862b6e9ff                CALL 0x0040ccd0
0057166e  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
00571674  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0057167b  50                        PUSH EAX
0057167c  6a00                      PUSH 0x0
0057167e  8d4e48                    LEA ECX,[ESI + 0x48]
00571681  e8aaa8e9ff                CALL 0x0040bf30
00571686  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0057168d  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
00571693  83fa10                    CMP EDX,0x10
00571696  7231                      JC 0x005716c9
00571698  8b8d50ffffff              MOV ECX,dword ptr [EBP + 0xffffff50]
0057169e  42                        INC EDX
0057169f  8bc1                      MOV EAX,ECX
005716a1  81fa00100000              CMP EDX,0x1000
005716a7  7216                      JC 0x005716bf
005716a9  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005716ac  83c223                    ADD EDX,0x23
005716af  2bc1                      SUB EAX,ECX
005716b1  83c0fc                    ADD EAX,-0x4
005716b4  83f81f                    CMP EAX,0x1f
005716b7  7606                      JBE 0x005716bf
005716b9  ff159488b100              CALL dword ptr [0x00b18894]
005716bf  52                        PUSH EDX
005716c0  51                        PUSH ECX
005716c1  e896da5700                CALL 0x00aef15c
005716c6  83c408                    ADD ESP,0x8
005716c9  51                        PUSH ECX
005716ca  8d4e48                    LEA ECX,[ESI + 0x48]
005716cd  e82ea9e9ff                CALL 0x0040c000
005716d2  6a02                      PUSH 0x2
005716d4  8d8edc030000              LEA ECX,[ESI + 0x3dc]
005716da  e841792700                CALL 0x007e9020
005716df  85c0                      TEST EAX,EAX
005716e1  0f95c0                    SETNZ AL
005716e4  888648010000              MOV byte ptr [ESI + 0x148],AL
005716ea  837e2c0d                  CMP dword ptr [ESI + 0x2c],0xd
005716ee  0f859c000000              JNZ 0x00571790
005716f4  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
005716fc  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00571703  0f8687000000              JBE 0x00571790
00571709  e852d81700                CALL 0x006eef60
0057170e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00571714  50                        PUSH EAX
00571715  6a00                      PUSH 0x0
00571717  56                        PUSH ESI
00571718  6840b6c700                PUSH 0xc7b640
0057171d  8d863c030000              LEA EAX,[ESI + 0x33c]
00571723  50                        PUSH EAX
00571724  6a33                      PUSH 0x33
00571726  68e8030000                PUSH 0x3e8
0057172b  e8f073ebff                CALL 0x00428b20
00571730  8bf8                      MOV EDI,EAX
00571732  56                        PUSH ESI
00571733  8bcf                      MOV ECX,EDI
00571735  e8764deeff                CALL 0x004564b0
0057173a  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
00571740  c7875c040000ffffffff      MOV dword ptr [EDI + 0x45c],0xffffffff
0057174a  c78760040000ffffffff      MOV dword ptr [EDI + 0x460],0xffffffff
00571754  8b08                      MOV ECX,dword ptr [EAX]
00571756  85c9                      TEST ECX,ECX
00571758  741e                      JZ 0x00571778
0057175a  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00571760  81c1cc030000              ADD ECX,0x3cc
00571766  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0057176c  50                        PUSH EAX
0057176d  e89edaf5ff                CALL 0x004cf210
00571772  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
00571778  50                        PUSH EAX
00571779  8bcf                      MOV ECX,EDI
0057177b  8938                      MOV dword ptr [EAX],EDI
0057177d  e86ec5f5ff                CALL 0x004cdcf0
00571782  8b07                      MOV EAX,dword ptr [EDI]
00571784  8bcf                      MOV ECX,EDI
00571786  ff500c                    CALL dword ptr [EAX + 0xc]
00571789  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00571790  b101                      MOV CL,0x1
00571792  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
0057179c  e9360a0000                JMP 0x005721d7
005717a1  6800000004                PUSH 0x4000000
005717a6  6a00                      PUSH 0x0
005717a8  8bce                      MOV ECX,ESI
005717aa  e8815ceaff                CALL 0x00417430
005717af  84c0                      TEST AL,AL
005717b1  0f859f010000              JNZ 0x00571956
005717b7  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
005717bf  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005717c7  8b86c8030000              MOV EAX,dword ptr [ESI + 0x3c8]
005717cd  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
005717d3  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
005717db  85c0                      TEST EAX,EAX
005717dd  0f8473010000              JZ 0x00571956
005717e3  83782801                  CMP dword ptr [EAX + 0x28],0x1
005717e7  0f8569010000              JNZ 0x00571956
005717ed  837e2c0c                  CMP dword ptr [ESI + 0x2c],0xc
005717f1  0f855f010000              JNZ 0x00571956
005717f7  6a00                      PUSH 0x0
005717f9  6a3c                      PUSH 0x3c
005717fb  8bce                      MOV ECX,ESI
005717fd  e80eaf1300                CALL 0x006ac710
00571802  84c0                      TEST AL,AL
00571804  0f844c010000              JZ 0x00571956
0057180a  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
00571812  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00571819  0f8637010000              JBE 0x00571956
0057181f  83be000c000003            CMP dword ptr [ESI + 0xc00],0x3
00571826  731e                      JNC 0x00571846
00571828  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0057182e  c7850cffffff00000000      MOV dword ptr [EBP + 0xffffff0c],0x0
00571838  50                        PUSH EAX
00571839  6a03                      PUSH 0x3
0057183b  8d8ef00b0000              LEA ECX,[ESI + 0xbf0]
00571841  e87aa4edff                CALL 0x0044bcc0
00571846  8b86fc0b0000              MOV EAX,dword ptr [ESI + 0xbfc]
0057184c  33ff                      XOR EDI,EDI
0057184e  6690                      NOP
00571850  8d1438                    LEA EDX,[EAX + EDI*0x1]
00571853  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00571859  8b86f80b0000              MOV EAX,dword ptr [ESI + 0xbf8]
0057185f  8bca                      MOV ECX,EDX
00571861  48                        DEC EAX
00571862  c1e902                    SHR ECX,0x2
00571865  23c8                      AND ECX,EAX
00571867  83e203                    AND EDX,0x3
0057186a  8b86f40b0000              MOV EAX,dword ptr [ESI + 0xbf4]
00571870  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00571873  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
00571877  7411                      JZ 0x0057188a
00571879  8b86fc0b0000              MOV EAX,dword ptr [ESI + 0xbfc]
0057187f  47                        INC EDI
00571880  83ff03                    CMP EDI,0x3
00571883  72cb                      JC 0x00571850
00571885  e9cc000000                JMP 0x00571956
0057188a  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
00571890  8d863c030000              LEA EAX,[ESI + 0x33c]
00571896  6a00                      PUSH 0x0
00571898  50                        PUSH EAX
00571899  6a01                      PUSH 0x1
0057189b  e830811e00                CALL 0x007599d0
005718a0  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
005718a6  85c0                      TEST EAX,EAX
005718a8  0f84a8000000              JZ 0x00571956
005718ae  8b8efc0b0000              MOV ECX,dword ptr [ESI + 0xbfc]
005718b4  8b86f80b0000              MOV EAX,dword ptr [ESI + 0xbf8]
005718ba  898d64ffffff              MOV dword ptr [EBP + 0xffffff64],ECX
005718c0  48                        DEC EAX
005718c1  8d1439                    LEA EDX,[ECX + EDI*0x1]
005718c4  8bca                      MOV ECX,EDX
005718c6  83e203                    AND EDX,0x3
005718c9  c1e902                    SHR ECX,0x2
005718cc  23c8                      AND ECX,EAX
005718ce  8b86f40b0000              MOV EAX,dword ptr [ESI + 0xbf4]
005718d4  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005718d7  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
005718da  8d0490                    LEA EAX,[EAX + EDX*0x4]
005718dd  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
005718e3  85c9                      TEST ECX,ECX
005718e5  741e                      JZ 0x00571905
005718e7  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
005718ed  81c1cc030000              ADD ECX,0x3cc
005718f3  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
005718f9  50                        PUSH EAX
005718fa  e811d9f5ff                CALL 0x004cf210
005718ff  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
00571905  8bbd1cffffff              MOV EDI,dword ptr [EBP + 0xffffff1c]
0057190b  8bcf                      MOV ECX,EDI
0057190d  50                        PUSH EAX
0057190e  8938                      MOV dword ptr [EAX],EDI
00571910  e8dbc3f5ff                CALL 0x004cdcf0
00571915  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0057191b  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00571921  85c9                      TEST ECX,ECX
00571923  741e                      JZ 0x00571943
00571925  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
0057192b  81c1cc030000              ADD ECX,0x3cc
00571931  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00571937  50                        PUSH EAX
00571938  e8d3d8f5ff                CALL 0x004cf210
0057193d  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00571943  50                        PUSH EAX
00571944  8bce                      MOV ECX,ESI
00571946  8930                      MOV dword ptr [EAX],ESI
00571948  e8a3c3f5ff                CALL 0x004cdcf0
0057194d  6a01                      PUSH 0x1
0057194f  8bcf                      MOV ECX,EDI
00571951  e85a0e0a00                CALL 0x006127b0
00571956  f30f108634030000          MOVSS XMM0,dword ptr [ESI + 0x334]
0057195e  8dbe34030000              LEA EDI,[ESI + 0x334]
00571964  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0057196b  9f                        LAHF
0057196c  f6c444                    TEST AH,0x44
0057196f  7a12                      JP 0x00571983
00571971  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
00571976  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0057197d  9f                        LAHF
0057197e  f6c444                    TEST AH,0x44
00571981  7b40                      JNP 0x005719c3
00571983  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00571989  6884030000                PUSH 0x384
0057198e  57                        PUSH EDI
0057198f  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00571995  e8e6c3f5ff                CALL 0x004cdd80
0057199a  f30f100f                  MOVSS XMM1,dword ptr [EDI]
0057199e  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
005719a3  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005719ab  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005719b3  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
005719bb  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
005719c3  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
005719ca  0f57f6                    XORPS XMM6,XMM6
005719cd  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005719d5  0f852a010000              JNZ 0x00571b05
005719db  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
005719e3  0f2fc2                    COMISS XMM0,XMM2
005719e6  0f8619010000              JBE 0x00571b05
005719ec  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
005719f3  0f840c010000              JZ 0x00571b05
005719f9  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00571a01  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
00571a07  50                        PUSH EAX
00571a08  8bce                      MOV ECX,ESI
00571a0a  e8c1681600                CALL 0x006d82d0
00571a0f  f30f10a510ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff10]
00571a17  0f2e2540b6c700            UCOMISS XMM4,dword ptr [0x00c7b640]
00571a1e  f30f109d14ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff14]
00571a26  9f                        LAHF
00571a27  f6c444                    TEST AH,0x44
00571a2a  7a27                      JP 0x00571a53
00571a2c  0f2e1d44b6c700            UCOMISS XMM3,dword ptr [0x00c7b644]
00571a33  9f                        LAHF
00571a34  f6c444                    TEST AH,0x44
00571a37  7a1a                      JP 0x00571a53
00571a39  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00571a41  0f57f6                    XORPS XMM6,XMM6
00571a44  c786b80b000000000000      MOV dword ptr [ESI + 0xbb8],0x0
00571a4e  e9b2000000                JMP 0x00571b05
00571a53  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00571a5b  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00571a61  f30f10ae6c030000          MOVSS XMM5,dword ptr [ESI + 0x36c]
00571a69  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
00571a6f  0f28c2                    MOVAPS XMM0,XMM2
00571a72  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
00571a7c  f30f5c86b80b0000          SUBSS XMM0,dword ptr [ESI + 0xbb8]
00571a84  0f57f6                    XORPS XMM6,XMM6
00571a87  0f2fc6                    COMISS XMM0,XMM6
00571a8a  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00571a92  0f46c1                    CMOVBE EAX,ECX
00571a95  0f2eee                    UCOMISS XMM5,XMM6
00571a98  f30f5920                  MULSS XMM4,dword ptr [EAX]
00571a9c  f30f5918                  MULSS XMM3,dword ptr [EAX]
00571aa0  9f                        LAHF
00571aa1  f6c444                    TEST AH,0x44
00571aa4  7b3b                      JNP 0x00571ae1
00571aa6  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
00571aae  0f28c1                    MOVAPS XMM0,XMM1
00571ab1  f30f59cb                  MULSS XMM1,XMM3
00571ab5  f30f59c4                  MULSS XMM0,XMM4
00571ab9  f30f5ecd                  DIVSS XMM1,XMM5
00571abd  f30f5ec5                  DIVSS XMM0,XMM5
00571ac1  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
00571ac9  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
00571ad1  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
00571ad9  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00571ae1  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00571ae9  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00571af1  f30f5886b00b0000          ADDSS XMM0,dword ptr [ESI + 0xbb0]
00571af9  f30f5dc2                  MINSS XMM0,XMM2
00571afd  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
00571b05  c7461400000000            MOV dword ptr [ESI + 0x14],0x0
00571b0c  b893244992                MOV EAX,0x92492493
00571b11  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00571b14  0f57c9                    XORPS XMM1,XMM1
00571b17  8b7e08                    MOV EDI,dword ptr [ESI + 0x8]
00571b1a  2bcf                      SUB ECX,EDI
00571b1c  f7e9                      IMUL ECX
00571b1e  03d1                      ADD EDX,ECX
00571b20  c1fa05                    SAR EDX,0x5
00571b23  8bc2                      MOV EAX,EDX
00571b25  c1e81f                    SHR EAX,0x1f
00571b28  03c2                      ADD EAX,EDX
00571b2a  7466                      JZ 0x00571b92
00571b2c  33c0                      XOR EAX,EAX
00571b2e  33c9                      XOR ECX,ECX
00571b30  817c0710e8030000          CMP dword ptr [EDI + EAX*0x1 + 0x10],0x3e8
00571b38  750e                      JNZ 0x00571b48
00571b3a  837c071433                CMP dword ptr [EDI + EAX*0x1 + 0x14],0x33
00571b3f  7507                      JNZ 0x00571b48
00571b41  c7040700000000            MOV dword ptr [EDI + EAX*0x1],0x0
00571b48  f30f100c07                MOVSS XMM1,dword ptr [EDI + EAX*0x1]
00571b4d  41                        INC ECX
00571b4e  f30f584e14                ADDSS XMM1,dword ptr [ESI + 0x14]
00571b53  83c038                    ADD EAX,0x38
00571b56  898d0cffffff              MOV dword ptr [EBP + 0xffffff0c],ECX
00571b5c  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
00571b62  b893244992                MOV EAX,0x92492493
00571b67  f30f114e14                MOVSS dword ptr [ESI + 0x14],XMM1
00571b6c  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00571b6f  8b7e08                    MOV EDI,dword ptr [ESI + 0x8]
00571b72  2bcf                      SUB ECX,EDI
00571b74  f7e9                      IMUL ECX
00571b76  03d1                      ADD EDX,ECX
00571b78  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
00571b7e  c1fa05                    SAR EDX,0x5
00571b81  8bc2                      MOV EAX,EDX
00571b83  c1e81f                    SHR EAX,0x1f
00571b86  03c2                      ADD EAX,EDX
00571b88  3bc8                      CMP ECX,EAX
00571b8a  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
00571b90  729e                      JC 0x00571b30
00571b92  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
00571b9a  f30f5c8680030000          SUBSS XMM0,dword ptr [ESI + 0x380]
00571ba2  f30f5fc2                  MAXSS XMM0,XMM2
00571ba6  f30f5d0584a7ba00          MINSS XMM0,dword ptr [0x00baa784]
00571bae  f30f2cc0                  CVTTSS2SI EAX,XMM0
00571bb2  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
00571bb8  8a8673010000              MOV AL,byte ptr [ESI + 0x173]
00571bbe  84c0                      TEST AL,AL
00571bc0  7509                      JNZ 0x00571bcb
00571bc2  0f2fce                    COMISS XMM1,XMM6
00571bc5  0f86f9050000              JBE 0x005721c4
00571bcb  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
00571bd3  84c0                      TEST AL,AL
00571bd5  750b                      JNZ 0x00571be2
00571bd7  8b4618                    MOV EAX,dword ptr [ESI + 0x18]
00571bda  83e004                    AND EAX,0x4
00571bdd  83c800                    OR EAX,0x0
00571be0  7410                      JZ 0x00571bf2
00571be2  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00571bea  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
00571bf2  e869d31700                CALL 0x006eef60
00571bf7  33d2                      XOR EDX,EDX
00571bf9  bf03000000                MOV EDI,0x3
00571bfe  f7f7                      DIV EDI
00571c00  85d2                      TEST EDX,EDX
00571c02  7518                      JNZ 0x00571c1c
00571c04  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00571c0c  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00571c14  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00571c1c  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00571c1f  83f801                    CMP EAX,0x1
00571c22  742c                      JZ 0x00571c50
00571c24  83f80b                    CMP EAX,0xb
00571c27  7427                      JZ 0x00571c50
00571c29  e832d31700                CALL 0x006eef60
00571c2e  33d2                      XOR EDX,EDX
00571c30  f30f109520ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff20]
00571c38  f7f7                      DIV EDI
00571c3a  85d2                      TEST EDX,EDX
00571c3c  751a                      JNZ 0x00571c58
00571c3e  f30f581554a4ba00          ADDSS XMM2,dword ptr [0x00baa454]
00571c46  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
00571c4e  eb08                      JMP 0x00571c58
00571c50  f30f109520ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff20]
00571c58  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00571c5b  83f801                    CMP EAX,0x1
00571c5e  7405                      JZ 0x00571c65
00571c60  83f80b                    CMP EAX,0xb
00571c63  753d                      JNZ 0x00571ca2
00571c65  e8f6d21700                CALL 0x006eef60
00571c6a  660f6ec0                  MOVD XMM0,EAX
00571c6e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00571c72  c1e81f                    SHR EAX,0x1f
00571c75  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00571c7e  660f5ad0                  CVTPD2PS XMM2,XMM0
00571c82  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00571c8a  f30f5915f8a1ba00          MULSS XMM2,dword ptr [0x00baa1f8]
00571c92  f30f581598a1ba00          ADDSS XMM2,dword ptr [0x00baa198]
00571c9a  f30f599520ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff20]
00571ca2  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00571ca5  b893244992                MOV EAX,0x92492493
00571caa  8b7e08                    MOV EDI,dword ptr [ESI + 0x8]
00571cad  2bcf                      SUB ECX,EDI
00571caf  f7e9                      IMUL ECX
00571cb1  03d1                      ADD EDX,ECX
00571cb3  c1fa05                    SAR EDX,0x5
00571cb6  8bca                      MOV ECX,EDX
00571cb8  c1e91f                    SHR ECX,0x1f
00571cbb  03ca                      ADD ECX,EDX
00571cbd  7437                      JZ 0x00571cf6
00571cbf  8d04cd00000000            LEA EAX,[ECX*0x8 + 0x0]
00571cc6  2bc1                      SUB EAX,ECX
00571cc8  0f1044c7d8                MOVUPS XMM0,xmmword ptr [EDI + EAX*0x8 + -0x28]
00571ccd  0f118528ffffff            MOVUPS xmmword ptr [EBP + 0xffffff28],XMM0
00571cd4  0f1044c7e8                MOVUPS XMM0,xmmword ptr [EDI + EAX*0x8 + -0x18]
00571cd9  0f118538ffffff            MOVUPS xmmword ptr [EBP + 0xffffff38],XMM0
00571ce0  f30f7e44c7f8              MOVQ XMM0,qword ptr [EDI + EAX*0x8 + -0x8]
00571ce6  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
00571cec  660fd68548ffffff          MOVQ qword ptr [EBP + 0xffffff48],XMM0
00571cf4  eb0d                      JMP 0x00571d03
00571cf6  6a00                      PUSH 0x0
00571cf8  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
00571cfe  e80df6ebff                CALL 0x00431310
00571d03  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00571d06  0f1185d8feffff            MOVUPS xmmword ptr [EBP + 0xfffffed8],XMM0
00571d0d  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
00571d11  0f1185e8feffff            MOVUPS xmmword ptr [EBP + 0xfffffee8],XMM0
00571d18  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00571d1d  660fd685f8feffff          MOVQ qword ptr [EBP + 0xfffffef8],XMM0
00571d25  0f57c0                    XORPS XMM0,XMM0
00571d28  0f2fd0                    COMISS XMM2,XMM0
00571d2b  0f8671040000              JBE 0x005721a2
00571d31  f30f10a680030000          MOVSS XMM4,dword ptr [ESI + 0x380]
00571d39  33ff                      XOR EDI,EDI
00571d3b  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
00571d43  0f28cc                    MOVAPS XMM1,XMM4
00571d46  f30f101d84a7ba00          MOVSS XMM3,dword ptr [0x00baa784]
00571d4e  f30f5cca                  SUBSS XMM1,XMM2
00571d52  c6851bffffff01            MOV byte ptr [EBP + 0xffffff1b],0x1
00571d59  f30f5f0d54a4ba00          MAXSS XMM1,dword ptr [0x00baa454]
00571d61  f30f5cc1                  SUBSS XMM0,XMM1
00571d65  f30f118e80030000          MOVSS dword ptr [ESI + 0x380],XMM1
00571d6d  f30f5f0554a4ba00          MAXSS XMM0,dword ptr [0x00baa454]
00571d75  f30f5dc3                  MINSS XMM0,XMM3
00571d79  f30f2cc0                  CVTTSS2SI EAX,XMM0
00571d7d  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
00571d83  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00571d86  48                        DEC EAX
00571d87  83f80f                    CMP EAX,0xf
00571d8a  773d                      JA 0x00571dc9
00571d8c  0fb68090295700            MOVZX EAX,byte ptr [EAX + 0x572990]
00571d93  ff248570295700            JMP dword ptr [EAX*0x4 + 0x572970]
00571d9a  bf03000000                MOV EDI,0x3
00571d9f  eb28                      JMP 0x00571dc9
00571da1  bf0c000000                MOV EDI,0xc
00571da6  eb21                      JMP 0x00571dc9
00571da8  bf02000000                MOV EDI,0x2
00571dad  eb1a                      JMP 0x00571dc9
00571daf  bf0d000000                MOV EDI,0xd
00571db4  eb13                      JMP 0x00571dc9
00571db6  bf0e000000                MOV EDI,0xe
00571dbb  eb0c                      JMP 0x00571dc9
00571dbd  bf05000000                MOV EDI,0x5
00571dc2  eb05                      JMP 0x00571dc9
00571dc4  bf06000000                MOV EDI,0x6
00571dc9  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00571dcf  8d8e3c030000              LEA ECX,[ESI + 0x33c]
00571dd5  f30f5915e0aaba00          MULSS XMM2,dword ptr [0x00baaae0]
00571ddd  0f28c3                    MOVAPS XMM0,XMM3
00571de0  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
00571de6  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00571dec  f30f5cc4                  SUBSS XMM0,XMM4
00571df0  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
00571df6  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00571df9  8bd7                      MOV EDX,EDI
00571dfb  50                        PUSH EAX
00571dfc  f30f2cc2                  CVTTSS2SI EAX,XMM2
00571e00  51                        PUSH ECX
00571e01  6a00                      PUSH 0x0
00571e03  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
00571e09  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00571e0f  f30f5905e0aaba00          MULSS XMM0,dword ptr [0x00baaae0]
00571e17  50                        PUSH EAX
00571e18  f30f2cc0                  CVTTSS2SI EAX,XMM0
00571e1c  50                        PUSH EAX
00571e1d  ffb6ec030000              PUSH dword ptr [ESI + 0x3ec]
00571e23  e8884f1a00                CALL 0x00716db0
00571e28  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
00571e2e  83c418                    ADD ESP,0x18
00571e31  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
00571e37  3bc8                      CMP ECX,EAX
00571e39  0f8edf000000              JLE 0x00571f1e
00571e3f  85c0                      TEST EAX,EAX
00571e41  7504                      JNZ 0x00571e47
00571e43  33d2                      XOR EDX,EDX
00571e45  eb0d                      JMP 0x00571e54
00571e47  e814d11700                CALL 0x006eef60
00571e4c  33d2                      XOR EDX,EDX
00571e4e  f7b51cffffff              DIV dword ptr [EBP + 0xffffff1c]
00571e54  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
00571e5a  8b01                      MOV EAX,dword ptr [ECX]
00571e5c  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00571e5f  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
00571e65  8d4201                    LEA EAX,[EDX + 0x1]
00571e68  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
00571e6e  8bd7                      MOV EDX,EDI
00571e70  50                        PUSH EAX
00571e71  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00571e77  e8e4481a00                CALL 0x00716760
00571e7c  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00571e82  83c404                    ADD ESP,0x4
00571e85  e8d6d01700                CALL 0x006eef60
00571e8a  6a00                      PUSH 0x0
00571e8c  50                        PUSH EAX
00571e8d  6840020000                PUSH 0x240
00571e92  8d8ea8ba0100              LEA ECX,[ESI + 0x1baa8]
00571e98  e8a3c24400                CALL 0x009be140
00571e9d  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
00571ea3  8bf0                      MOV ESI,EAX
00571ea5  8bc1                      MOV EAX,ECX
00571ea7  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
00571ead  2b851cffffff              SUB EAX,dword ptr [EBP + 0xffffff1c]
00571eb3  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00571eb9  85f6                      TEST ESI,ESI
00571ebb  7455                      JZ 0x00571f12
00571ebd  85c0                      TEST EAX,EAX
00571ebf  7e51                      JLE 0x00571f12
00571ec1  8bb524ffffff              MOV ESI,dword ptr [EBP + 0xffffff24]
00571ec7  83f905                    CMP ECX,0x5
00571eca  7420                      JZ 0x00571eec
00571ecc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00571ed2  6a02                      PUSH 0x2
00571ed4  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
00571eda  e8d1a0edff                CALL 0x0044bfb0
00571edf  84c0                      TEST AL,AL
00571ee1  7509                      JNZ 0x00571eec
00571ee3  e878d01700                CALL 0x006eef60
00571ee8  a801                      TEST AL,0x1
00571eea  7517                      JNZ 0x00571f03
00571eec  6840b6c700                PUSH 0xc7b640
00571ef1  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
00571ef7  8bd6                      MOV EDX,ESI
00571ef9  8bcf                      MOV ECX,EDI
00571efb  e8a0740c00                CALL 0x006393a0
00571f00  83c408                    ADD ESP,0x8
00571f03  83ad0cffffff01            SUB dword ptr [EBP + 0xffffff0c],0x1
00571f0a  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
00571f10  75b5                      JNZ 0x00571ec7
00571f12  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
00571f18  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
00571f1e  83f905                    CMP ECX,0x5
00571f21  0f857b020000              JNZ 0x005721a2
00571f27  3bc1                      CMP EAX,ECX
00571f29  0f8d73020000              JGE 0x005721a2
00571f2f  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
00571f35  8bd7                      MOV EDX,EDI
00571f37  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00571f3d  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
00571f43  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00571f49  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
00571f4f  e8bc4b1a00                CALL 0x00716b10
00571f54  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00571f5a  8bd7                      MOV EDX,EDI
00571f5c  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
00571f62  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
00571f68  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00571f6e  50                        PUSH EAX
00571f6f  6a00                      PUSH 0x0
00571f71  6a00                      PUSH 0x0
00571f73  ffb6ec030000              PUSH dword ptr [ESI + 0x3ec]
00571f79  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
00571f7f  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00571f85  e836591a00                CALL 0x007178c0
00571f8a  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00571f8d  83c410                    ADD ESP,0x10
00571f90  83f80d                    CMP EAX,0xd
00571f93  7548                      JNZ 0x00571fdd
00571f95  e8c6cf1700                CALL 0x006eef60
00571f9a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00571fa0  50                        PUSH EAX
00571fa1  6a00                      PUSH 0x0
00571fa3  6a00                      PUSH 0x0
00571fa5  6840b6c700                PUSH 0xc7b640
00571faa  8d863c030000              LEA EAX,[ESI + 0x33c]
00571fb0  50                        PUSH EAX
00571fb1  6a33                      PUSH 0x33
00571fb3  68e8030000                PUSH 0x3e8
00571fb8  e8636bebff                CALL 0x00428b20
00571fbd  8bc8                      MOV ECX,EAX
00571fbf  8b10                      MOV EDX,dword ptr [EAX]
00571fc1  c7805c04000096000000      MOV dword ptr [EAX + 0x45c],0x96
00571fcb  c7806004000096000000      MOV dword ptr [EAX + 0x460],0x96
00571fd5  ff520c                    CALL dword ptr [EDX + 0xc]
00571fd8  e99e010000                JMP 0x0057217b
00571fdd  83f80e                    CMP EAX,0xe
00571fe0  0f8595010000              JNZ 0x0057217b
00571fe6  e875cf1700                CALL 0x006eef60
00571feb  660f6ec0                  MOVD XMM0,EAX
00571fef  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00571ff3  c1e81f                    SHR EAX,0x1f
00571ff6  33f6                      XOR ESI,ESI
00571ff8  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
00571ffe  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00572007  660f5ac0                  CVTPD2PS XMM0,XMM0
0057200b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00572013  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0057201b  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00572023  e838cf1700                CALL 0x006eef60
00572028  660f6ec0                  MOVD XMM0,EAX
0057202c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00572030  c1e81f                    SHR EAX,0x1f
00572033  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0057203c  660f5ac8                  CVTPD2PS XMM1,XMM0
00572040  660f6ec6                  MOVD XMM0,ESI
00572044  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0057204c  0f5bc0                    CVTDQ2PS XMM0,XMM0
0057204f  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
00572057  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
0057205f  f30f588514ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff14]
00572067  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
0057206f  f30f58c8                  ADDSS XMM1,XMM0
00572073  f30f118d1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM1
0057207b  e8e0ce1700                CALL 0x006eef60
00572080  8bf8                      MOV EDI,EAX
00572082  e8d9ce1700                CALL 0x006eef60
00572087  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
0057208f  8bf0                      MOV ESI,EAX
00572091  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00572099  83e601                    AND ESI,0x1
0057209c  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005720a4  e8b7ce1700                CALL 0x006eef60
005720a9  660f6ec0                  MOVD XMM0,EAX
005720ad  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005720b1  c1e81f                    SHR EAX,0x1f
005720b4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005720bd  660f5ac0                  CVTPD2PS XMM0,XMM0
005720c1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005720c9  f30f58c0                  ADDSS XMM0,XMM0
005720cd  f30f5805e8a7ba00          ADDSS XMM0,dword ptr [0x00baa7e8]
005720d5  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005720dd  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
005720e5  e856b4eaff                CALL 0x0041d540
005720ea  f30f59850cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff0c]
005720f2  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
005720fa  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
00572102  e819b4eaff                CALL 0x0041d520
00572107  f30f59850cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff0c]
0057210f  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00572115  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057211b  57                        PUSH EDI
0057211c  56                        PUSH ESI
0057211d  6a00                      PUSH 0x0
0057211f  50                        PUSH EAX
00572120  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
00572126  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
0057212e  688d000000                PUSH 0x8d
00572133  68e8030000                PUSH 0x3e8
00572138  e8e369ebff                CALL 0x00428b20
0057213d  8bc8                      MOV ECX,EAX
0057213f  8b10                      MOV EDX,dword ptr [EAX]
00572141  c7403401000000            MOV dword ptr [EAX + 0x34],0x1
00572148  c7805c04000096000000      MOV dword ptr [EAX + 0x45c],0x96
00572152  c7806004000096000000      MOV dword ptr [EAX + 0x460],0x96
0057215c  ff520c                    CALL dword ptr [EDX + 0xc]
0057215f  8bb520ffffff              MOV ESI,dword ptr [EBP + 0xffffff20]
00572165  46                        INC ESI
00572166  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
0057216c  83fe08                    CMP ESI,0x8
0057216f  0f8caefeffff              JL 0x00572023
00572175  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
0057217b  83bed403000000            CMP dword ptr [ESI + 0x3d4],0x0
00572182  7512                      JNZ 0x00572196
00572184  8b966c010000              MOV EDX,dword ptr [ESI + 0x16c]
0057218a  33c0                      XOR EAX,EAX
0057218c  81e200000004              AND EDX,0x4000000
00572192  0bc2                      OR EAX,EDX
00572194  740c                      JZ 0x005721a2
00572196  8b06                      MOV EAX,dword ptr [ESI]
00572198  8bce                      MOV ECX,ESI
0057219a  ff5028                    CALL dword ptr [EAX + 0x28]
0057219d  e97f070000                JMP 0x00572921
005721a2  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
005721a5  c6867301000000            MOV byte ptr [ESI + 0x173],0x0
005721ac  89460c                    MOV dword ptr [ESI + 0xc],EAX
005721af  c7461400000000            MOV dword ptr [ESI + 0x14],0x0
005721b6  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
005721bd  c7461c00000000            MOV dword ptr [ESI + 0x1c],0x0
005721c4  80bd1bffffff00            CMP byte ptr [EBP + 0xffffff1b],0x0
005721cb  0f8450070000              JZ 0x00572921
005721d1  8a8d03ffffff              MOV CL,byte ptr [EBP + 0xffffff03]
005721d7  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
005721df  f30f5c8680030000          SUBSS XMM0,dword ptr [ESI + 0x380]
005721e7  f30f5f0554a4ba00          MAXSS XMM0,dword ptr [0x00baa454]
005721ef  f30f5d0584a7ba00          MINSS XMM0,dword ptr [0x00baa784]
005721f7  f30f2cc0                  CVTTSS2SI EAX,XMM0
005721fb  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00572201  83f801                    CMP EAX,0x1
00572204  752e                      JNZ 0x00572234
00572206  84c9                      TEST CL,CL
00572208  742a                      JZ 0x00572234
0057220a  50                        PUSH EAX
0057220b  6898d5b100                PUSH 0xb1d598
00572210  8d4e48                    LEA ECX,[ESI + 0x48]
00572213  e8b883e9ff                CALL 0x0040a5d0
00572218  84c0                      TEST AL,AL
0057221a  0f8401070000              JZ 0x00572921
00572220  8d4e78                    LEA ECX,[ESI + 0x78]
00572223  e8887fe9ff                CALL 0x0040a1b0
00572228  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
0057222f  e9ed060000                JMP 0x00572921
00572234  50                        PUSH EAX
00572235  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0057223b  68841ab600                PUSH 0xb61a84
00572240  50                        PUSH EAX
00572241  e83ae8eaff                CALL 0x00420a80
00572246  8b7e7c                    MOV EDI,dword ptr [ESI + 0x7c]
00572249  83c40c                    ADD ESP,0xc
0057224c  85ff                      TEST EDI,EDI
0057224e  744b                      JZ 0x0057229b
00572250  837f1410                  CMP dword ptr [EDI + 0x14],0x10
00572254  8bc7                      MOV EAX,EDI
00572256  7202                      JC 0x0057225a
00572258  8b07                      MOV EAX,dword ptr [EDI]
0057225a  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00572260  8a10                      MOV DL,byte ptr [EAX]
00572262  3a11                      CMP DL,byte ptr [ECX]
00572264  751a                      JNZ 0x00572280
00572266  84d2                      TEST DL,DL
00572268  7412                      JZ 0x0057227c
0057226a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0057226d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00572270  750e                      JNZ 0x00572280
00572272  83c002                    ADD EAX,0x2
00572275  83c102                    ADD ECX,0x2
00572278  84d2                      TEST DL,DL
0057227a  75e4                      JNZ 0x00572260
0057227c  33c0                      XOR EAX,EAX
0057227e  eb05                      JMP 0x00572285
00572280  1bc0                      SBB EAX,EAX
00572282  83c801                    OR EAX,0x1
00572285  85c0                      TEST EAX,EAX
00572287  7512                      JNZ 0x0057229b
00572289  384734                    CMP byte ptr [EDI + 0x34],AL
0057228c  7436                      JZ 0x005722c4
0057228e  38868c000000              CMP byte ptr [ESI + 0x8c],AL
00572294  8d7e48                    LEA EDI,[ESI + 0x48]
00572297  752b                      JNZ 0x005722c4
00572299  eb03                      JMP 0x0057229e
0057229b  8d7e48                    LEA EDI,[ESI + 0x48]
0057229e  6a01                      PUSH 0x1
005722a0  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
005722a6  8bcf                      MOV ECX,EDI
005722a8  50                        PUSH EAX
005722a9  e82283e9ff                CALL 0x0040a5d0
005722ae  84c0                      TEST AL,AL
005722b0  7412                      JZ 0x005722c4
005722b2  8d4f30                    LEA ECX,[EDI + 0x30]
005722b5  e8f67ee9ff                CALL 0x0040a1b0
005722ba  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
005722c0  c6474401                  MOV byte ptr [EDI + 0x44],0x1
005722c4  83bd14ffffff05            CMP dword ptr [EBP + 0xffffff14],0x5
005722cb  0f8550060000              JNZ 0x00572921
005722d1  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
005722db  c7865c03000000000000      MOV dword ptr [ESI + 0x35c],0x0
005722e5  c786540300001c0c0000      MOV dword ptr [ESI + 0x354],0xc1c
005722ef  e92d060000                JMP 0x00572921
005722f4  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
005722fc  0f2fc1                    COMISS XMM0,XMM1
005722ff  0f8619010000              JBE 0x0057241e
00572305  837e2c0e                  CMP dword ptr [ESI + 0x2c],0xe
00572309  0f850f010000              JNZ 0x0057241e
0057230f  6800000004                PUSH 0x4000000
00572314  6a00                      PUSH 0x0
00572316  e81551eaff                CALL 0x00417430
0057231b  84c0                      TEST AL,AL
0057231d  740a                      JZ 0x00572329
0057231f  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00572327  eb08                      JMP 0x00572331
00572329  f30f100d54a8ba00          MOVSS XMM1,dword ptr [0x00baa854]
00572331  0f57d2                    XORPS XMM2,XMM2
00572334  8bce                      MOV ECX,ESI
00572336  e825a41300                CALL 0x006ac760
0057233b  85c0                      TEST EAX,EAX
0057233d  0f84d3000000              JZ 0x00572416
00572343  e818cc1700                CALL 0x006eef60
00572348  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0057234e  e80dcc1700                CALL 0x006eef60
00572353  8bf8                      MOV EDI,EAX
00572355  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
0057235b  50                        PUSH EAX
0057235c  83e701                    AND EDI,0x1
0057235f  e80ccd1000                CALL 0x0067f070
00572364  83c404                    ADD ESP,0x4
00572367  8bf0                      MOV ESI,EAX
00572369  e8f2cb1700                CALL 0x006eef60
0057236e  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
00572374  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057237a  57                        PUSH EDI
0057237b  660f6ec0                  MOVD XMM0,EAX
0057237f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00572383  c1e81f                    SHR EAX,0x1f
00572386  6a00                      PUSH 0x0
00572388  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00572391  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00572397  50                        PUSH EAX
00572398  660f5ac8                  CVTPD2PS XMM1,XMM0
0057239c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005723a4  0f28c1                    MOVAPS XMM0,XMM1
005723a7  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
005723ac  f30f5906                  MULSS XMM0,dword ptr [ESI]
005723b0  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
005723b6  f30f58c9                  ADDSS XMM1,XMM1
005723ba  f30f58c0                  ADDSS XMM0,XMM0
005723be  8d863c030000              LEA EAX,[ESI + 0x33c]
005723c4  50                        PUSH EAX
005723c5  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
005723cd  688d000000                PUSH 0x8d
005723d2  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
005723da  68e8030000                PUSH 0x3e8
005723df  f30f118d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM1
005723e7  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
005723ef  e82c67ebff                CALL 0x00428b20
005723f4  8bc8                      MOV ECX,EAX
005723f6  8b10                      MOV EDX,dword ptr [EAX]
005723f8  c7403401000000            MOV dword ptr [EAX + 0x34],0x1
005723ff  c7805c0400003c000000      MOV dword ptr [EAX + 0x45c],0x3c
00572409  c780600400003c000000      MOV dword ptr [EAX + 0x460],0x3c
00572413  ff520c                    CALL dword ptr [EDX + 0xc]
00572416  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0057241e  837e2c10                  CMP dword ptr [ESI + 0x2c],0x10
00572422  0f850e020000              JNZ 0x00572636
00572428  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
00572430  0f2fc1                    COMISS XMM0,XMM1
00572433  0f868b010000              JBE 0x005725c4
00572439  6a00                      PUSH 0x0
0057243b  6a03                      PUSH 0x3
0057243d  8bce                      MOV ECX,ESI
0057243f  e8cca21300                CALL 0x006ac710
00572444  84c0                      TEST AL,AL
00572446  0f84d7000000              JZ 0x00572523
0057244c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00572452  33d2                      XOR EDX,EDX
00572454  89950cffffff              MOV dword ptr [EBP + 0xffffff0c],EDX
0057245a  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00572460  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00572466  c1f802                    SAR EAX,0x2
00572469  85c0                      TEST EAX,EAX
0057246b  0f84b2000000              JZ 0x00572523
00572471  52                        PUSH EDX
00572472  e8f953eaff                CALL 0x00417870
00572477  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0057247f  8bf8                      MOV EDI,EAX
00572481  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00572489  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00572491  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00572499  f30f59c0                  MULSS XMM0,XMM0
0057249d  f30f59c9                  MULSS XMM1,XMM1
005724a1  f30f58c1                  ADDSS XMM0,XMM1
005724a5  e8a635ecff                CALL 0x00435a50
005724aa  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
005724b2  f30f580d7ca9ba00          ADDSS XMM1,dword ptr [0x00baa97c]
005724ba  0f2fc8                    COMISS XMM1,XMM0
005724bd  763a                      JBE 0x005724f9
005724bf  8b97901d0000              MOV EDX,dword ptr [EDI + 0x1d90]
005724c5  b904000000                MOV ECX,0x4
005724ca  8d4204                    LEA EAX,[EDX + 0x4]
005724cd  83f804                    CMP EAX,0x4
005724d0  0f4fc1                    CMOVG EAX,ECX
005724d3  33c9                      XOR ECX,ECX
005724d5  85c0                      TEST EAX,EAX
005724d7  8987901d0000              MOV dword ptr [EDI + 0x1d90],EAX
005724dd  0f9fc1                    SETG CL
005724e0  33c0                      XOR EAX,EAX
005724e2  85d2                      TEST EDX,EDX
005724e4  0f9fc0                    SETG AL
005724e7  3bc1                      CMP EAX,ECX
005724e9  740e                      JZ 0x005724f9
005724eb  838f7415000063            OR dword ptr [EDI + 0x1574],0x63
005724f2  8bcf                      MOV ECX,EDI
005724f4  e877101f00                CALL 0x00763570
005724f9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005724ff  8b950cffffff              MOV EDX,dword ptr [EBP + 0xffffff0c]
00572505  42                        INC EDX
00572506  89950cffffff              MOV dword ptr [EBP + 0xffffff0c],EDX
0057250c  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00572512  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00572518  c1f802                    SAR EAX,0x2
0057251b  3bd0                      CMP EDX,EAX
0057251d  0f824effffff              JC 0x00572471
00572523  83beec0b000000            CMP dword ptr [ESI + 0xbec],0x0
0057252a  0f8506010000              JNZ 0x00572636
00572530  e82bca1700                CALL 0x006eef60
00572535  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0057253b  50                        PUSH EAX
0057253c  6a00                      PUSH 0x0
0057253e  6a00                      PUSH 0x0
00572540  6840b6c700                PUSH 0xc7b640
00572545  8d863c030000              LEA EAX,[ESI + 0x33c]
0057254b  50                        PUSH EAX
0057254c  6a70                      PUSH 0x70
0057254e  68e8030000                PUSH 0x3e8
00572553  e8c865ebff                CALL 0x00428b20
00572558  8bf8                      MOV EDI,EAX
0057255a  56                        PUSH ESI
0057255b  8bcf                      MOV ECX,EDI
0057255d  e84e3feeff                CALL 0x004564b0
00572562  8b17                      MOV EDX,dword ptr [EDI]
00572564  8bcf                      MOV ECX,EDI
00572566  c787dc00000000000000      MOV dword ptr [EDI + 0xdc],0x0
00572570  c787e0000000000080c0      MOV dword ptr [EDI + 0xe0],0xc0800000
0057257a  c7875403000010270000      MOV dword ptr [EDI + 0x354],0x2710
00572584  ff520c                    CALL dword ptr [EDX + 0xc]
00572587  8b8eec0b0000              MOV ECX,dword ptr [ESI + 0xbec]
0057258d  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
00572593  85c9                      TEST ECX,ECX
00572595  741e                      JZ 0x005725b5
00572597  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0057259d  81c1cc030000              ADD ECX,0x3cc
005725a3  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005725a9  50                        PUSH EAX
005725aa  e861ccf5ff                CALL 0x004cf210
005725af  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
005725b5  50                        PUSH EAX
005725b6  8bcf                      MOV ECX,EDI
005725b8  8938                      MOV dword ptr [EAX],EDI
005725ba  e831b7f5ff                CALL 0x004cdcf0
005725bf  e972000000                JMP 0x00572636
005725c4  8b86ec0b0000              MOV EAX,dword ptr [ESI + 0xbec]
005725ca  8dbeec0b0000              LEA EDI,[ESI + 0xbec]
005725d0  85c0                      TEST EAX,EAX
005725d2  7462                      JZ 0x00572636
005725d4  c6807101000001            MOV byte ptr [EAX + 0x171],0x1
005725db  8b07                      MOV EAX,dword ptr [EDI]
005725dd  05bc030000                ADD EAX,0x3bc
005725e2  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
005725e8  8b08                      MOV ECX,dword ptr [EAX]
005725ea  85c9                      TEST ECX,ECX
005725ec  741e                      JZ 0x0057260c
005725ee  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
005725f4  81c1cc030000              ADD ECX,0x3cc
005725fa  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
00572600  50                        PUSH EAX
00572601  e80accf5ff                CALL 0x004cf210
00572606  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
0057260c  c70000000000              MOV dword ptr [EAX],0x0
00572612  8b0f                      MOV ECX,dword ptr [EDI]
00572614  85c9                      TEST ECX,ECX
00572616  7418                      JZ 0x00572630
00572618  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0057261e  89bd14ffffff              MOV dword ptr [EBP + 0xffffff14],EDI
00572624  50                        PUSH EAX
00572625  81c1cc030000              ADD ECX,0x3cc
0057262b  e8e0cbf5ff                CALL 0x004cf210
00572630  c70700000000              MOV dword ptr [EDI],0x0
00572636  837e2c0f                  CMP dword ptr [ESI + 0x2c],0xf
0057263a  0f85e3000000              JNZ 0x00572723
00572640  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00572646  33c0                      XOR EAX,EAX
00572648  81e100000004              AND ECX,0x4000000
0057264e  0bc1                      OR EAX,ECX
00572650  740a                      JZ 0x0057265c
00572652  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0057265a  eb08                      JMP 0x00572664
0057265c  f30f100554a8ba00          MOVSS XMM0,dword ptr [0x00baa854]
00572664  0f57d2                    XORPS XMM2,XMM2
00572667  0f28c8                    MOVAPS XMM1,XMM0
0057266a  8bce                      MOV ECX,ESI
0057266c  e8efa01300                CALL 0x006ac760
00572671  85c0                      TEST EAX,EAX
00572673  0f84aa000000              JZ 0x00572723
00572679  e8e2c81700                CALL 0x006eef60
0057267e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00572684  50                        PUSH EAX
00572685  6a00                      PUSH 0x0
00572687  6a00                      PUSH 0x0
00572689  6840b6c700                PUSH 0xc7b640
0057268e  8d863c030000              LEA EAX,[ESI + 0x33c]
00572694  50                        PUSH EAX
00572695  6a2d                      PUSH 0x2d
00572697  68e8030000                PUSH 0x3e8
0057269c  e87f64ebff                CALL 0x00428b20
005726a1  8bf0                      MOV ESI,EAX
005726a3  c7463401000000            MOV dword ptr [ESI + 0x34],0x1
005726aa  e8b1c81700                CALL 0x006eef60
005726af  8bce                      MOV ECX,ESI
005726b1  660f6ec0                  MOVD XMM0,EAX
005726b5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005726b9  c1e81f                    SHR EAX,0x1f
005726bc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005726c5  8b06                      MOV EAX,dword ptr [ESI]
005726c7  660f5ac8                  CVTPD2PS XMM1,XMM0
005726cb  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005726d3  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
005726db  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
005726e3  0f28c1                    MOVAPS XMM0,XMM1
005726e6  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
005726ee  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
005726f6  c7865c0400003c000000      MOV dword ptr [ESI + 0x45c],0x3c
00572700  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00572708  c786600400003c000000      MOV dword ptr [ESI + 0x460],0x3c
00572712  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0057271a  ff500c                    CALL dword ptr [EAX + 0xc]
0057271d  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
00572723  8b9524ffffff              MOV EDX,dword ptr [EBP + 0xffffff24]
00572729  0f57db                    XORPS XMM3,XMM3
0057272c  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00572732  33c0                      XOR EAX,EAX
00572734  81e100000004              AND ECX,0x4000000
0057273a  0bc1                      OR EAX,ECX
0057273c  0f84df010000              JZ 0x00572921
00572742  83fa02                    CMP EDX,0x2
00572745  752d                      JNZ 0x00572774
00572747  f30f1086b40b0000          MOVSS XMM0,dword ptr [ESI + 0xbb4]
0057274f  f30f59869c030000          MULSS XMM0,dword ptr [ESI + 0x39c]
00572757  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0057275f  f30f5886b00b0000          ADDSS XMM0,dword ptr [ESI + 0xbb0]
00572767  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
0057276f  e9ad010000                JMP 0x00572921
00572774  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0057277c  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
00572784  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0057278c  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
00572794  f30f108eb40b0000          MOVSS XMM1,dword ptr [ESI + 0xbb4]
0057279c  0f28d1                    MOVAPS XMM2,XMM1
0057279f  f30f59969c030000          MULSS XMM2,dword ptr [ESI + 0x39c]
005727a7  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
005727af  f30f5896b00b0000          ADDSS XMM2,dword ptr [ESI + 0xbb0]
005727b7  f30f1196b00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM2
005727bf  f30f118eb40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM1
005727c7  837e2c0b                  CMP dword ptr [ESI + 0x2c],0xb
005727cb  7510                      JNZ 0x005727dd
005727cd  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
005727d5  f30f118eb40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM1
005727dd  f30f100504aeba00          MOVSS XMM0,dword ptr [0x00baae04]
005727e5  0f2fc2                    COMISS XMM0,XMM2
005727e8  760c                      JBE 0x005727f6
005727ea  c7868401000003000000      MOV dword ptr [ESI + 0x184],0x3
005727f4  eb19                      JMP 0x0057280f
005727f6  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
005727fe  33c0                      XOR EAX,EAX
00572800  0f2fc1                    COMISS XMM0,XMM1
00572803  0f97c0                    SETA AL
00572806  83c005                    ADD EAX,0x5
00572809  898684010000              MOV dword ptr [ESI + 0x184],EAX
0057280f  0f2fd3                    COMISS XMM2,XMM3
00572812  0f8201010000              JC 0x00572919
00572818  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0057281e  81a66c010000fffffffb      AND dword ptr [ESI + 0x16c],0xfbffffff
00572828  898668010000              MOV dword ptr [ESI + 0x168],EAX
0057282e  b8e7010000                MOV EAX,0x1e7
00572833  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
0057283b  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00572843  51                        PUSH ECX
00572844  c704240000803f            MOV dword ptr [ESP],0x3f800000
0057284b  6a00                      PUSH 0x0
0057284d  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00572855  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
0057285d  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00572865  6a02                      PUSH 0x2
00572867  51                        PUSH ECX
00572868  b945000000                MOV ECX,0x45
0057286d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00572874  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
0057287c  837e2c0b                  CMP dword ptr [ESI + 0x2c],0xb
00572880  0f45c1                    CMOVNZ EAX,ECX
00572883  8bce                      MOV ECX,ESI
00572885  50                        PUSH EAX
00572886  e815431600                CALL 0x006d6ba0
0057288b  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
00572893  f30f5c8680030000          SUBSS XMM0,dword ptr [ESI + 0x380]
0057289b  f30f5f0554a4ba00          MAXSS XMM0,dword ptr [0x00baa454]
005728a3  f30f5d0584a7ba00          MINSS XMM0,dword ptr [0x00baa784]
005728ab  f30f2cc0                  CVTTSS2SI EAX,XMM0
005728af  50                        PUSH EAX
005728b0  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
005728b6  68841ab600                PUSH 0xb61a84
005728bb  50                        PUSH EAX
005728bc  e8bfe1eaff                CALL 0x00420a80
005728c1  83c40c                    ADD ESP,0xc
005728c4  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
005728ca  8d4e48                    LEA ECX,[ESI + 0x48]
005728cd  6a01                      PUSH 0x1
005728cf  50                        PUSH EAX
005728d0  e8fb7ce9ff                CALL 0x0040a5d0
005728d5  84c0                      TEST AL,AL
005728d7  7415                      JZ 0x005728ee
005728d9  8d4e78                    LEA ECX,[ESI + 0x78]
005728dc  e8cf78e9ff                CALL 0x0040a1b0
005728e1  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
005728e8  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
005728ee  c786b00b000000000000      MOV dword ptr [ESI + 0xbb0],0x0
005728f8  0f57d2                    XORPS XMM2,XMM2
005728fb  c786b40b000000000000      MOV dword ptr [ESI + 0xbb4],0x0
00572905  c7868401000005000000      MOV dword ptr [ESI + 0x184],0x5
0057290f  c7868801000004000000      MOV dword ptr [ESI + 0x188],0x4
00572919  f30f119650030000          MOVSS dword ptr [ESI + 0x350],XMM2
00572921  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00572924  64890d00000000            MOV dword ptr FS:[0x0],ECX
0057292b  59                        POP ECX
0057292c  5f                        POP EDI
0057292d  5e                        POP ESI
0057292e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00572931  33cd                      XOR ECX,EBP
00572933  e8f3c75700                CALL 0x00aef12b
00572938  8be5                      MOV ESP,EBP
0057293a  5d                        POP EBP
0057293b  8be3                      MOV ESP,EBX
0057293d  5b                        POP EBX
0057293e  c3                        RET
