; J460 NPC AI 0x005505c0 AI_005505c0
; types=884
; identities=884.0.0
; entry=005505c0
005505c0  53                        PUSH EBX
005505c1  8bdc                      MOV EBX,ESP
005505c3  83ec08                    SUB ESP,0x8
005505c6  83e4f8                    AND ESP,0xfffffff8
005505c9  83c404                    ADD ESP,0x4
005505cc  55                        PUSH EBP
005505cd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005505d0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005505d4  8bec                      MOV EBP,ESP
005505d6  6aff                      PUSH -0x1
005505d8  68ed4aaf00                PUSH 0xaf4aed
005505dd  64a100000000              MOV EAX,FS:[0x0]
005505e3  50                        PUSH EAX
005505e4  53                        PUSH EBX
005505e5  83ec48                    SUB ESP,0x48
005505e8  a1b493bf00                MOV EAX,[0x00bf93b4]
005505ed  33c5                      XOR EAX,EBP
005505ef  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005505f2  56                        PUSH ESI
005505f3  57                        PUSH EDI
005505f4  50                        PUSH EAX
005505f5  8d45f4                    LEA EAX,[EBP + -0xc]
005505f8  64a300000000              MOV FS:[0x0],EAX
005505fe  8bf1                      MOV ESI,ECX
00550600  8975c0                    MOV dword ptr [EBP + -0x40],ESI
00550603  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00550609  6a01                      PUSH 0x1
0055060b  81c1a8ba0100              ADD ECX,0x1baa8
00550611  51                        PUSH ECX
00550612  6879010000                PUSH 0x179
00550617  e864da4600                CALL 0x009be080
0055061c  85c0                      TEST EAX,EAX
0055061e  0f84bf000000              JZ 0x005506e3
00550624  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0055062a  2500000020                AND EAX,0x20000000
0055062f  83c800                    OR EAX,0x0
00550632  0f85ab000000              JNZ 0x005506e3
00550638  c645c701                  MOV byte ptr [EBP + -0x39],0x1
0055063c  3986640b0000              CMP dword ptr [ESI + 0xb64],EAX
00550642  741a                      JZ 0x0055065e
00550644  a17816c700                MOV EAX,[0x00c71678]
00550649  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0055064f  2b8628030000              SUB EAX,dword ptr [ESI + 0x328]
00550655  83f801                    CMP EAX,0x1
00550658  0f8589000000              JNZ 0x005506e7
0055065e  a1980fb600                MOV EAX,[0x00b60f98]
00550663  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00550666  66a19c0fb600              MOV AX,[0x00b60f9c]
0055066c  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00550673  c745e406000000            MOV dword ptr [EBP + -0x1c],0x6
0055067a  668945d8                  MOV word ptr [EBP + -0x28],AX
0055067e  c645da00                  MOV byte ptr [EBP + -0x26],0x0
00550682  8d45d4                    LEA EAX,[EBP + -0x2c]
00550685  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0055068c  50                        PUSH EAX
0055068d  8bce                      MOV ECX,ESI
0055068f  e8dca31600                CALL 0x006baa70
00550694  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0055069b  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0055069e  83fa10                    CMP EDX,0x10
005506a1  722c                      JC 0x005506cf
005506a3  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
005506a6  42                        INC EDX
005506a7  8bc1                      MOV EAX,ECX
005506a9  81fa00100000              CMP EDX,0x1000
005506af  7214                      JC 0x005506c5
005506b1  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005506b4  83c223                    ADD EDX,0x23
005506b7  2bc1                      SUB EAX,ECX
005506b9  83c0fc                    ADD EAX,-0x4
005506bc  83f81f                    CMP EAX,0x1f
005506bf  0f87510a0000              JA 0x00551116
005506c5  52                        PUSH EDX
005506c6  51                        PUSH ECX
005506c7  e890ea5900                CALL 0x00aef15c
005506cc  83c408                    ADD ESP,0x8
005506cf  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005506d6  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005506dd  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
005506e1  eb04                      JMP 0x005506e7
005506e3  c645c700                  MOV byte ptr [EBP + -0x39],0x0
005506e7  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
005506ed  85c0                      TEST EAX,EAX
005506ef  0f84360a0000              JZ 0x0055112b
005506f5  83f803                    CMP EAX,0x3
005506f8  0f84b5010000              JZ 0x005508b3
005506fe  83f806                    CMP EAX,0x6
00550701  0f856d0c0000              JNZ 0x00551374
00550707  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0055070d  2500000040                AND EAX,0x40000000
00550712  83c800                    OR EAX,0x0
00550715  7518                      JNZ 0x0055072f
00550717  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
0055071f  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00550727  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
0055072f  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00550733  8d7e78                    LEA EDI,[ESI + 0x78]
00550736  0f84f3000000              JZ 0x0055082f
0055073c  6860d5b100                PUSH 0xb1d560
00550741  8bcf                      MOV ECX,EDI
00550743  e888a6ebff                CALL 0x0040add0
00550748  84c0                      TEST AL,AL
0055074a  0f8483000000              JZ 0x005507d3
00550750  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00550756  818e6801000000000040      OR dword ptr [ESI + 0x168],0x40000000
00550760  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00550766  8b8634030000              MOV EAX,dword ptr [ESI + 0x334]
0055076c  898660030000              MOV dword ptr [ESI + 0x360],EAX
00550772  8b8638030000              MOV EAX,dword ptr [ESI + 0x338]
00550778  898664030000              MOV dword ptr [ESI + 0x364],EAX
0055077e  e8dde71900                CALL 0x006eef60
00550783  51                        PUSH ECX
00550784  660f6ec0                  MOVD XMM0,EAX
00550788  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055078c  c1e81f                    SHR EAX,0x1f
0055078f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00550798  660f5ac0                  CVTPD2PS XMM0,XMM0
0055079c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005507a4  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005507ac  f30f5805b4a5ba00          ADDSS XMM0,dword ptr [0x00baa5b4]
005507b4  f30f110424                MOVSS dword ptr [ESP],XMM0
005507b9  6a00                      PUSH 0x0
005507bb  6a02                      PUSH 0x2
005507bd  51                        PUSH ECX
005507be  c70424cdcccc3e            MOV dword ptr [ESP],0x3ecccccd
005507c5  8bce                      MOV ECX,ESI
005507c7  6802010000                PUSH 0x102
005507cc  e8cf631800                CALL 0x006d6ba0
005507d1  eb2c                      JMP 0x005507ff
005507d3  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
005507d7  7456                      JZ 0x0055082f
005507d9  6874d5b100                PUSH 0xb1d574
005507de  8bcf                      MOV ECX,EDI
005507e0  e8eba5ebff                CALL 0x0040add0
005507e5  84c0                      TEST AL,AL
005507e7  7416                      JZ 0x005507ff
005507e9  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
005507ef  81a668010000ffffffbf      AND dword ptr [ESI + 0x168],0xbfffffff
005507f9  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
005507ff  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00550803  742a                      JZ 0x0055082f
00550805  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0055080c  7421                      JZ 0x0055082f
0055080e  6874d5b100                PUSH 0xb1d574
00550813  8bcf                      MOV ECX,EDI
00550815  e856a6ebff                CALL 0x0040ae70
0055081a  84c0                      TEST AL,AL
0055081c  0f84520b0000              JZ 0x00551374
00550822  e839e71900                CALL 0x006eef60
00550827  a803                      TEST AL,0x3
00550829  0f85450b0000              JNZ 0x00551374
0055082f  8b7e7c                    MOV EDI,dword ptr [ESI + 0x7c]
00550832  85ff                      TEST EDI,EDI
00550834  744a                      JZ 0x00550880
00550836  837f1410                  CMP dword ptr [EDI + 0x14],0x10
0055083a  8bc7                      MOV EAX,EDI
0055083c  7202                      JC 0x00550840
0055083e  8b07                      MOV EAX,dword ptr [EDI]
00550840  b954bcb100                MOV ECX,0xb1bc54
00550845  8a10                      MOV DL,byte ptr [EAX]
00550847  3a11                      CMP DL,byte ptr [ECX]
00550849  751a                      JNZ 0x00550865
0055084b  84d2                      TEST DL,DL
0055084d  7412                      JZ 0x00550861
0055084f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00550852  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00550855  750e                      JNZ 0x00550865
00550857  83c002                    ADD EAX,0x2
0055085a  83c102                    ADD ECX,0x2
0055085d  84d2                      TEST DL,DL
0055085f  75e4                      JNZ 0x00550845
00550861  33c0                      XOR EAX,EAX
00550863  eb05                      JMP 0x0055086a
00550865  1bc0                      SBB EAX,EAX
00550867  83c801                    OR EAX,0x1
0055086a  85c0                      TEST EAX,EAX
0055086c  7512                      JNZ 0x00550880
0055086e  384734                    CMP byte ptr [EDI + 0x34],AL
00550871  7431                      JZ 0x005508a4
00550873  38868c000000              CMP byte ptr [ESI + 0x8c],AL
00550879  8d7e48                    LEA EDI,[ESI + 0x48]
0055087c  7526                      JNZ 0x005508a4
0055087e  eb03                      JMP 0x00550883
00550880  8d7e48                    LEA EDI,[ESI + 0x48]
00550883  6a01                      PUSH 0x1
00550885  6854bcb100                PUSH 0xb1bc54
0055088a  8bcf                      MOV ECX,EDI
0055088c  e83f9debff                CALL 0x0040a5d0
00550891  84c0                      TEST AL,AL
00550893  740f                      JZ 0x005508a4
00550895  8d4f30                    LEA ECX,[EDI + 0x30]
00550898  e81399ebff                CALL 0x0040a1b0
0055089d  8b75c0                    MOV ESI,dword ptr [EBP + -0x40]
005508a0  c6474401                  MOV byte ptr [EDI + 0x44],0x1
005508a4  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
005508ae  e9c10a0000                JMP 0x00551374
005508b3  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
005508bb  8d45b8                    LEA EAX,[EBP + -0x48]
005508be  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005508c6  51                        PUSH ECX
005508c7  c7042400000000            MOV dword ptr [ESP],0x0
005508ce  8bce                      MOV ECX,ESI
005508d0  50                        PUSH EAX
005508d1  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
005508d9  e862e31600                CALL 0x006bec40
005508de  807dc700                  CMP byte ptr [EBP + -0x39],0x0
005508e2  0f8463010000              JZ 0x00550a4b
005508e8  a17816c700                MOV EAX,[0x00c71678]
005508ed  0f57c0                    XORPS XMM0,XMM0
005508f0  6a00                      PUSH 0x0
005508f2  6a00                      PUSH 0x0
005508f4  6aff                      PUSH -0x1
005508f6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005508fc  8d45dc                    LEA EAX,[EBP + -0x24]
005508ff  6aff                      PUSH -0x1
00550901  ff7628                    PUSH dword ptr [ESI + 0x28]
00550904  81c118120000              ADD ECX,0x1218
0055090a  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0055090f  50                        PUSH EAX
00550910  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00550915  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
0055091a  e841a6ecff                CALL 0x0041af60
0055091f  33ff                      XOR EDI,EDI
00550921  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00550928  397de8                    CMP dword ptr [EBP + -0x18],EDI
0055092b  0f86b8000000              JBE 0x005509e9
00550931  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00550934  8b0cb8                    MOV ECX,dword ptr [EAX + EDI*0x4]
00550937  3bce                      CMP ECX,ESI
00550939  746e                      JZ 0x005509a9
0055093b  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
00550941  2500000020                AND EAX,0x20000000
00550946  83c800                    OR EAX,0x0
00550949  7565                      JNZ 0x005509b0
0055094b  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00550953  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0055095b  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
00550963  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
0055096b  f30f59c0                  MULSS XMM0,XMM0
0055096f  f30f59c9                  MULSS XMM1,XMM1
00550973  f30f58c1                  ADDSS XMM0,XMM1
00550977  e8d450eeff                CALL 0x00435a50
0055097c  0f2f45cc                  COMISS XMM0,dword ptr [EBP + -0x34]
00550980  762e                      JBE 0x005509b0
00550982  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
00550985  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
0055098a  8b04b9                    MOV EAX,dword ptr [ECX + EDI*0x4]
0055098d  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00550995  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
0055099a  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005509a2  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
005509a7  eb0c                      JMP 0x005509b5
005509a9  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
005509ae  eb08                      JMP 0x005509b8
005509b0  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
005509b5  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
005509b8  47                        INC EDI
005509b9  3b7de8                    CMP EDI,dword ptr [EBP + -0x18]
005509bc  0f8272ffffff              JC 0x00550934
005509c2  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005509c9  731e                      JNC 0x005509e9
005509cb  a17816c700                MOV EAX,[0x00c71678]
005509d0  51                        PUSH ECX
005509d1  8d4db8                    LEA ECX,[EBP + -0x48]
005509d4  c7042400000000            MOV dword ptr [ESP],0x0
005509db  51                        PUSH ECX
005509dc  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005509e2  e8e9df2c00                CALL 0x0081e9d0
005509e7  eb17                      JMP 0x00550a00
005509e9  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
005509ee  8d45b8                    LEA EAX,[EBP + -0x48]
005509f1  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
005509f6  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
005509fb  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00550a00  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00550a04  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00550a09  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00550a10  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
00550a14  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
00550a19  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
00550a1e  7535                      JNZ 0x00550a55
00550a20  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00550a27  b101                      MOV CL,0x1
00550a29  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
00550a2c  6a00                      PUSH 0x0
00550a2e  6a00                      PUSH 0x0
00550a30  e87b3e5100                CALL 0x00a648b0
00550a35  f30f104dcc                MOVSS XMM1,dword ptr [EBP + -0x34]
00550a3a  83c408                    ADD ESP,0x8
00550a3d  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
00550a42  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00550a49  eb0a                      JMP 0x00550a55
00550a4b  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
00550a50  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
00550a55  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00550a5d  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
00550a65  0f28c1                    MOVAPS XMM0,XMM1
00550a68  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
00550a6d  f30f59c1                  MULSS XMM0,XMM1
00550a71  0f28ca                    MOVAPS XMM1,XMM2
00550a74  f30f59ca                  MULSS XMM1,XMM2
00550a78  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
00550a7d  f30f58c1                  ADDSS XMM0,XMM1
00550a81  e8ca4feeff                CALL 0x00435a50
00550a86  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00550a8d  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00550a92  0f86dc080000              JBE 0x00551374
00550a98  0f2f0594aaba00            COMISS XMM0,dword ptr [0x00baaa94]
00550a9f  b814000000                MOV EAX,0x14
00550aa4  be04000000                MOV ESI,0x4
00550aa9  0f47f0                    CMOVA ESI,EAX
00550aac  e8afe41900                CALL 0x006eef60
00550ab1  33d2                      XOR EDX,EDX
00550ab3  f7f6                      DIV ESI
00550ab5  85d2                      TEST EDX,EDX
00550ab7  7416                      JZ 0x00550acf
00550ab9  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00550abe  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
00550ac6  0f2fc8                    COMISS XMM1,XMM0
00550ac9  0f869a000000              JBE 0x00550b69
00550acf  e88ce41900                CALL 0x006eef60
00550ad4  83e001                    AND EAX,0x1
00550ad7  7571                      JNZ 0x00550b4a
00550ad9  e882e41900                CALL 0x006eef60
00550ade  83e001                    AND EAX,0x1
00550ae1  750a                      JNZ 0x00550aed
00550ae3  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
00550aeb  eb08                      JMP 0x00550af5
00550aed  f30f100550aeba00          MOVSS XMM0,dword ptr [0x00baae50]
00550af5  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00550afd  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
00550b02  e839caecff                CALL 0x0041d540
00550b07  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00550b0c  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
00550b11  e80acaecff                CALL 0x0041d520
00550b16  f30f1065cc                MOVSS XMM4,dword ptr [EBP + -0x34]
00550b1b  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
00550b20  0f28d4                    MOVAPS XMM2,XMM4
00550b23  f30f5955bc                MULSS XMM2,dword ptr [EBP + -0x44]
00550b28  0f28cd                    MOVAPS XMM1,XMM5
00550b2b  f30f596dbc                MULSS XMM5,dword ptr [EBP + -0x44]
00550b30  f30f59c8                  MULSS XMM1,XMM0
00550b34  f30f59e0                  MULSS XMM4,XMM0
00550b38  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00550b3d  f30f5cd1                  SUBSS XMM2,XMM1
00550b41  f30f58ec                  ADDSS XMM5,XMM4
00550b45  0f28e2                    MOVAPS XMM4,XMM2
00550b48  eb29                      JMP 0x00550b73
00550b4a  f30f1065cc                MOVSS XMM4,dword ptr [EBP + -0x34]
00550b4f  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
00550b54  0f572570cbba00            XORPS XMM4,xmmword ptr [0x00bacb70]
00550b5b  0f572d70cbba00            XORPS XMM5,xmmword ptr [0x00bacb70]
00550b62  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00550b67  eb0a                      JMP 0x00550b73
00550b69  f30f1065cc                MOVSS XMM4,dword ptr [EBP + -0x34]
00550b6e  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
00550b73  f30f5ee0                  DIVSS XMM4,XMM0
00550b77  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00550b7e  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00550b85  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00550b8c  f30f5ee8                  DIVSS XMM5,XMM0
00550b90  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
00550b95  f30f116dd0                MOVSS dword ptr [EBP + -0x30],XMM5
00550b9a  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
00550ba1  bf02000000                MOV EDI,0x2
00550ba6  f30f1025d0a9ba00          MOVSS XMM4,dword ptr [0x00baa9d0]
00550bae  b905000000                MOV ECX,0x5
00550bb3  0f2fe0                    COMISS XMM4,XMM0
00550bb6  8bc7                      MOV EAX,EDI
00550bb8  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00550bbf  0f47c1                    CMOVA EAX,ECX
00550bc2  8d4de0                    LEA ECX,[EBP + -0x20]
00550bc5  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00550bc8  8d45b8                    LEA EAX,[EBP + -0x48]
00550bcb  50                        PUSH EAX
00550bcc  6a00                      PUSH 0x0
00550bce  e8ed05f5ff                CALL 0x004a11c0
00550bd3  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
00550bd6  33c0                      XOR EAX,EAX
00550bd8  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
00550bdb  8bf2                      MOV ESI,EDX
00550bdd  2bf1                      SUB ESI,ECX
00550bdf  c1fe03                    SAR ESI,0x3
00550be2  85f6                      TEST ESI,ESI
00550be4  740b                      JZ 0x00550bf1
00550be6  833cc101                  CMP dword ptr [ECX + EAX*0x8],0x1
00550bea  742d                      JZ 0x00550c19
00550bec  40                        INC EAX
00550bed  3bc6                      CMP EAX,ESI
00550bef  72f5                      JC 0x00550be6
00550bf1  c745b801000000            MOV dword ptr [EBP + -0x48],0x1
00550bf8  c745bc03000000            MOV dword ptr [EBP + -0x44],0x3
00550bff  3b55e8                    CMP EDX,dword ptr [EBP + -0x18]
00550c02  7426                      JZ 0x00550c2a
00550c04  c70201000000              MOV dword ptr [EDX],0x1
00550c0a  c7420403000000            MOV dword ptr [EDX + 0x4],0x3
00550c11  83c208                    ADD EDX,0x8
00550c14  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
00550c17  eb24                      JMP 0x00550c3d
00550c19  8344c10403                ADD dword ptr [ECX + EAX*0x8 + 0x4],0x3
00550c1e  791d                      JNS 0x00550c3d
00550c20  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
00550c28  eb13                      JMP 0x00550c3d
00550c2a  8d45b8                    LEA EAX,[EBP + -0x48]
00550c2d  50                        PUSH EAX
00550c2e  52                        PUSH EDX
00550c2f  8d4de0                    LEA ECX,[EBP + -0x20]
00550c32  e88905f5ff                CALL 0x004a11c0
00550c37  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
00550c3a  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
00550c3d  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00550c42  0f2f05d0a9ba00            COMISS XMM0,dword ptr [0x00baa9d0]
00550c49  7664                      JBE 0x00550caf
00550c4b  0f2f0594aaba00            COMISS XMM0,dword ptr [0x00baaa94]
00550c52  b809000000                MOV EAX,0x9
00550c57  8bf2                      MOV ESI,EDX
00550c59  0f47f8                    CMOVA EDI,EAX
00550c5c  2bf1                      SUB ESI,ECX
00550c5e  c1fe03                    SAR ESI,0x3
00550c61  33c0                      XOR EAX,EAX
00550c63  85f6                      TEST ESI,ESI
00550c65  740b                      JZ 0x00550c72
00550c67  833cc102                  CMP dword ptr [ECX + EAX*0x8],0x2
00550c6b  7425                      JZ 0x00550c92
00550c6d  40                        INC EAX
00550c6e  3bc6                      CMP EAX,ESI
00550c70  72f5                      JC 0x00550c67
00550c72  c745b802000000            MOV dword ptr [EBP + -0x48],0x2
00550c79  897dbc                    MOV dword ptr [EBP + -0x44],EDI
00550c7c  3b55e8                    CMP EDX,dword ptr [EBP + -0x18]
00550c7f  7421                      JZ 0x00550ca2
00550c81  c70202000000              MOV dword ptr [EDX],0x2
00550c87  897a04                    MOV dword ptr [EDX + 0x4],EDI
00550c8a  83c208                    ADD EDX,0x8
00550c8d  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
00550c90  eb1d                      JMP 0x00550caf
00550c92  017cc104                  ADD dword ptr [ECX + EAX*0x8 + 0x4],EDI
00550c96  7917                      JNS 0x00550caf
00550c98  c744c10400000000          MOV dword ptr [ECX + EAX*0x8 + 0x4],0x0
00550ca0  eb0d                      JMP 0x00550caf
00550ca2  8d45b8                    LEA EAX,[EBP + -0x48]
00550ca5  50                        PUSH EAX
00550ca6  52                        PUSH EDX
00550ca7  8d4de0                    LEA ECX,[EBP + -0x20]
00550caa  e81105f5ff                CALL 0x004a11c0
00550caf  e8ace21900                CALL 0x006eef60
00550cb4  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00550cbc  8d4de0                    LEA ECX,[EBP + -0x20]
00550cbf  83c801                    OR EAX,0x1
00550cc2  660fd645b4                MOVQ qword ptr [EBP + -0x4c],XMM0
00550cc7  8945b0                    MOV dword ptr [EBP + -0x50],EAX
00550cca  83ec10                    SUB ESP,0x10
00550ccd  a174f6b100                MOV EAX,[0x00b1f674]
00550cd2  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00550cd5  8bc4                      MOV EAX,ESP
00550cd7  0f1045b0                  MOVUPS XMM0,xmmword ptr [EBP + -0x50]
00550cdb  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00550cde  e80dbff4ff                CALL 0x0049cbf0
00550ce3  8b7dc0                    MOV EDI,dword ptr [EBP + -0x40]
00550ce6  83e800                    SUB EAX,0x0
00550ce9  0f849c020000              JZ 0x00550f8b
00550cef  83e801                    SUB EAX,0x1
00550cf2  0f844e010000              JZ 0x00550e46
00550cf8  83e801                    SUB EAX,0x1
00550cfb  0f85c4030000              JNZ 0x005510c5
00550d01  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00550d04  85f6                      TEST ESI,ESI
00550d06  744a                      JZ 0x00550d52
00550d08  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00550d0c  8bc6                      MOV EAX,ESI
00550d0e  7202                      JC 0x00550d12
00550d10  8b06                      MOV EAX,dword ptr [ESI]
00550d12  b9a00fb600                MOV ECX,0xb60fa0
00550d17  8a10                      MOV DL,byte ptr [EAX]
00550d19  3a11                      CMP DL,byte ptr [ECX]
00550d1b  751a                      JNZ 0x00550d37
00550d1d  84d2                      TEST DL,DL
00550d1f  7412                      JZ 0x00550d33
00550d21  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00550d24  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00550d27  750e                      JNZ 0x00550d37
00550d29  83c002                    ADD EAX,0x2
00550d2c  83c102                    ADD ECX,0x2
00550d2f  84d2                      TEST DL,DL
00550d31  75e4                      JNZ 0x00550d17
00550d33  33c0                      XOR EAX,EAX
00550d35  eb05                      JMP 0x00550d3c
00550d37  1bc0                      SBB EAX,EAX
00550d39  83c801                    OR EAX,0x1
00550d3c  85c0                      TEST EAX,EAX
00550d3e  7512                      JNZ 0x00550d52
00550d40  384634                    CMP byte ptr [ESI + 0x34],AL
00550d43  742e                      JZ 0x00550d73
00550d45  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00550d4b  8d7748                    LEA ESI,[EDI + 0x48]
00550d4e  7523                      JNZ 0x00550d73
00550d50  eb03                      JMP 0x00550d55
00550d52  8d7748                    LEA ESI,[EDI + 0x48]
00550d55  6a01                      PUSH 0x1
00550d57  68a00fb600                PUSH 0xb60fa0
00550d5c  8bce                      MOV ECX,ESI
00550d5e  e86d98ebff                CALL 0x0040a5d0
00550d63  84c0                      TEST AL,AL
00550d65  740c                      JZ 0x00550d73
00550d67  8d4e30                    LEA ECX,[ESI + 0x30]
00550d6a  e84194ebff                CALL 0x0040a1b0
00550d6f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00550d73  e8e8e11900                CALL 0x006eef60
00550d78  0f57c0                    XORPS XMM0,XMM0
00550d7b  f20f2ac0                  CVTSI2SD XMM0,EAX
00550d7f  c1e81f                    SHR EAX,0x1f
00550d82  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00550d8b  660f5ac0                  CVTPD2PS XMM0,XMM0
00550d8f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00550d97  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00550d9f  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00550da7  0f28c8                    MOVAPS XMM1,XMM0
00550daa  f30f594dcc                MULSS XMM1,dword ptr [EBP + -0x34]
00550daf  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
00550db4  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
00550db9  f30f59c8                  MULSS XMM1,XMM0
00550dbd  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
00550dc2  e899e11900                CALL 0x006eef60
00550dc7  0f57c0                    XORPS XMM0,XMM0
00550dca  f20f2ac0                  CVTSI2SD XMM0,EAX
00550dce  c1e81f                    SHR EAX,0x1f
00550dd1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00550dda  660f5ac0                  CVTPD2PS XMM0,XMM0
00550dde  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00550de6  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00550dee  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00550df6  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00550dfe  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00550e03  e838c7ecff                CALL 0x0041d540
00550e08  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00550e0d  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
00550e12  e809c7ecff                CALL 0x0041d520
00550e17  f30f105dac                MOVSS XMM3,dword ptr [EBP + -0x54]
00550e1c  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
00550e21  0f28e3                    MOVAPS XMM4,XMM3
00550e24  f30f5965c8                MULSS XMM4,dword ptr [EBP + -0x38]
00550e29  0f28cd                    MOVAPS XMM1,XMM5
00550e2c  f30f596dc8                MULSS XMM5,dword ptr [EBP + -0x38]
00550e31  f30f59c8                  MULSS XMM1,XMM0
00550e35  f30f59d8                  MULSS XMM3,XMM0
00550e39  f30f5ce1                  SUBSS XMM4,XMM1
00550e3d  f30f58eb                  ADDSS XMM5,XMM3
00550e41  e989020000                JMP 0x005510cf
00550e46  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00550e49  85f6                      TEST ESI,ESI
00550e4b  744e                      JZ 0x00550e9b
00550e4d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00550e51  8bc6                      MOV EAX,ESI
00550e53  7202                      JC 0x00550e57
00550e55  8b06                      MOV EAX,dword ptr [ESI]
00550e57  b91cdeb100                MOV ECX,0xb1de1c
00550e5c  0f1f4000                  NOP dword ptr [EAX]
00550e60  8a10                      MOV DL,byte ptr [EAX]
00550e62  3a11                      CMP DL,byte ptr [ECX]
00550e64  751a                      JNZ 0x00550e80
00550e66  84d2                      TEST DL,DL
00550e68  7412                      JZ 0x00550e7c
00550e6a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00550e6d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00550e70  750e                      JNZ 0x00550e80
00550e72  83c002                    ADD EAX,0x2
00550e75  83c102                    ADD ECX,0x2
00550e78  84d2                      TEST DL,DL
00550e7a  75e4                      JNZ 0x00550e60
00550e7c  33c0                      XOR EAX,EAX
00550e7e  eb05                      JMP 0x00550e85
00550e80  1bc0                      SBB EAX,EAX
00550e82  83c801                    OR EAX,0x1
00550e85  85c0                      TEST EAX,EAX
00550e87  7512                      JNZ 0x00550e9b
00550e89  384634                    CMP byte ptr [ESI + 0x34],AL
00550e8c  742e                      JZ 0x00550ebc
00550e8e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00550e94  8d7748                    LEA ESI,[EDI + 0x48]
00550e97  7523                      JNZ 0x00550ebc
00550e99  eb03                      JMP 0x00550e9e
00550e9b  8d7748                    LEA ESI,[EDI + 0x48]
00550e9e  6a01                      PUSH 0x1
00550ea0  681cdeb100                PUSH 0xb1de1c
00550ea5  8bce                      MOV ECX,ESI
00550ea7  e82497ebff                CALL 0x0040a5d0
00550eac  84c0                      TEST AL,AL
00550eae  740c                      JZ 0x00550ebc
00550eb0  8d4e30                    LEA ECX,[ESI + 0x30]
00550eb3  e8f892ebff                CALL 0x0040a1b0
00550eb8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00550ebc  e89fe01900                CALL 0x006eef60
00550ec1  0f57c0                    XORPS XMM0,XMM0
00550ec4  f20f2ac0                  CVTSI2SD XMM0,EAX
00550ec8  c1e81f                    SHR EAX,0x1f
00550ecb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00550ed4  660f5ac0                  CVTPD2PS XMM0,XMM0
00550ed8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00550ee0  f30f58c0                  ADDSS XMM0,XMM0
00550ee4  f30f5805e8a7ba00          ADDSS XMM0,dword ptr [0x00baa7e8]
00550eec  0f28c8                    MOVAPS XMM1,XMM0
00550eef  f30f594dcc                MULSS XMM1,dword ptr [EBP + -0x34]
00550ef4  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
00550ef9  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
00550efe  f30f59c8                  MULSS XMM1,XMM0
00550f02  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
00550f07  e854e01900                CALL 0x006eef60
00550f0c  0f57c0                    XORPS XMM0,XMM0
00550f0f  f20f2ac0                  CVTSI2SD XMM0,EAX
00550f13  c1e81f                    SHR EAX,0x1f
00550f16  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00550f1f  660f5ac0                  CVTPD2PS XMM0,XMM0
00550f23  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00550f2b  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00550f33  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00550f3b  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00550f43  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00550f48  e8f3c5ecff                CALL 0x0041d540
00550f4d  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00550f52  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
00550f57  e8c4c5ecff                CALL 0x0041d520
00550f5c  f30f105dac                MOVSS XMM3,dword ptr [EBP + -0x54]
00550f61  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
00550f66  0f28e3                    MOVAPS XMM4,XMM3
00550f69  f30f5965c8                MULSS XMM4,dword ptr [EBP + -0x38]
00550f6e  0f28cd                    MOVAPS XMM1,XMM5
00550f71  f30f596dc8                MULSS XMM5,dword ptr [EBP + -0x38]
00550f76  f30f59c8                  MULSS XMM1,XMM0
00550f7a  f30f59d8                  MULSS XMM3,XMM0
00550f7e  f30f5ce1                  SUBSS XMM4,XMM1
00550f82  f30f58eb                  ADDSS XMM5,XMM3
00550f86  e944010000                JMP 0x005510cf
00550f8b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00550f8e  85f6                      TEST ESI,ESI
00550f90  744a                      JZ 0x00550fdc
00550f92  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00550f96  8bc6                      MOV EAX,ESI
00550f98  7202                      JC 0x00550f9c
00550f9a  8b06                      MOV EAX,dword ptr [ESI]
00550f9c  b9a80fb600                MOV ECX,0xb60fa8
00550fa1  8a10                      MOV DL,byte ptr [EAX]
00550fa3  3a11                      CMP DL,byte ptr [ECX]
00550fa5  751a                      JNZ 0x00550fc1
00550fa7  84d2                      TEST DL,DL
00550fa9  7412                      JZ 0x00550fbd
00550fab  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00550fae  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00550fb1  750e                      JNZ 0x00550fc1
00550fb3  83c002                    ADD EAX,0x2
00550fb6  83c102                    ADD ECX,0x2
00550fb9  84d2                      TEST DL,DL
00550fbb  75e4                      JNZ 0x00550fa1
00550fbd  33c0                      XOR EAX,EAX
00550fbf  eb05                      JMP 0x00550fc6
00550fc1  1bc0                      SBB EAX,EAX
00550fc3  83c801                    OR EAX,0x1
00550fc6  85c0                      TEST EAX,EAX
00550fc8  7512                      JNZ 0x00550fdc
00550fca  384634                    CMP byte ptr [ESI + 0x34],AL
00550fcd  742e                      JZ 0x00550ffd
00550fcf  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00550fd5  8d7748                    LEA ESI,[EDI + 0x48]
00550fd8  7523                      JNZ 0x00550ffd
00550fda  eb03                      JMP 0x00550fdf
00550fdc  8d7748                    LEA ESI,[EDI + 0x48]
00550fdf  6a01                      PUSH 0x1
00550fe1  68a80fb600                PUSH 0xb60fa8
00550fe6  8bce                      MOV ECX,ESI
00550fe8  e8e395ebff                CALL 0x0040a5d0
00550fed  84c0                      TEST AL,AL
00550fef  740c                      JZ 0x00550ffd
00550ff1  8d4e30                    LEA ECX,[ESI + 0x30]
00550ff4  e8b791ebff                CALL 0x0040a1b0
00550ff9  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00550ffd  e85edf1900                CALL 0x006eef60
00551002  0f57c0                    XORPS XMM0,XMM0
00551005  f20f2ac0                  CVTSI2SD XMM0,EAX
00551009  c1e81f                    SHR EAX,0x1f
0055100c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00551015  660f5ac0                  CVTPD2PS XMM0,XMM0
00551019  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00551021  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
00551029  0f28c8                    MOVAPS XMM1,XMM0
0055102c  f30f594dcc                MULSS XMM1,dword ptr [EBP + -0x34]
00551031  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
00551036  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
0055103b  f30f59c8                  MULSS XMM1,XMM0
0055103f  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
00551044  e817df1900                CALL 0x006eef60
00551049  0f57c0                    XORPS XMM0,XMM0
0055104c  f20f2ac0                  CVTSI2SD XMM0,EAX
00551050  c1e81f                    SHR EAX,0x1f
00551053  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055105c  660f5ac0                  CVTPD2PS XMM0,XMM0
00551060  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00551068  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00551070  f30f5c0510a9ba00          SUBSS XMM0,dword ptr [0x00baa910]
00551078  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00551080  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00551085  e8b6c4ecff                CALL 0x0041d540
0055108a  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0055108f  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
00551094  e887c4ecff                CALL 0x0041d520
00551099  f30f105dac                MOVSS XMM3,dword ptr [EBP + -0x54]
0055109e  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
005510a3  0f28e3                    MOVAPS XMM4,XMM3
005510a6  f30f5965c8                MULSS XMM4,dword ptr [EBP + -0x38]
005510ab  0f28cd                    MOVAPS XMM1,XMM5
005510ae  f30f596dc8                MULSS XMM5,dword ptr [EBP + -0x38]
005510b3  f30f59c8                  MULSS XMM1,XMM0
005510b7  f30f59d8                  MULSS XMM3,XMM0
005510bb  f30f5ce1                  SUBSS XMM4,XMM1
005510bf  f30f58eb                  ADDSS XMM5,XMM3
005510c3  eb0a                      JMP 0x005510cf
005510c5  f30f1065cc                MOVSS XMM4,dword ptr [EBP + -0x34]
005510ca  f30f106dd0                MOVSS XMM5,dword ptr [EBP + -0x30]
005510cf  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
005510d2  f30f11a734030000          MOVSS dword ptr [EDI + 0x334],XMM4
005510da  f30f11af38030000          MOVSS dword ptr [EDI + 0x338],XMM5
005510e2  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
005510ec  85d2                      TEST EDX,EDX
005510ee  0f8480020000              JZ 0x00551374
005510f4  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
005510f7  8bc2                      MOV EAX,EDX
005510f9  2bca                      SUB ECX,EDX
005510fb  83e1f8                    AND ECX,0xfffffff8
005510fe  81f900100000              CMP ECX,0x1000
00551104  7216                      JC 0x0055111c
00551106  8b52fc                    MOV EDX,dword ptr [EDX + -0x4]
00551109  83c123                    ADD ECX,0x23
0055110c  2bc2                      SUB EAX,EDX
0055110e  83c0fc                    ADD EAX,-0x4
00551111  83f81f                    CMP EAX,0x1f
00551114  7606                      JBE 0x0055111c
00551116  ff159488b100              CALL dword ptr [0x00b18894]
0055111c  51                        PUSH ECX
0055111d  52                        PUSH EDX
0055111e  e839e05900                CALL 0x00aef15c
00551123  83c408                    ADD ESP,0x8
00551126  e949020000                JMP 0x00551374
0055112b  8b7e7c                    MOV EDI,dword ptr [ESI + 0x7c]
0055112e  85ff                      TEST EDI,EDI
00551130  744a                      JZ 0x0055117c
00551132  837f1410                  CMP dword ptr [EDI + 0x14],0x10
00551136  8bc7                      MOV EAX,EDI
00551138  7202                      JC 0x0055113c
0055113a  8b07                      MOV EAX,dword ptr [EDI]
0055113c  b954bcb100                MOV ECX,0xb1bc54
00551141  8a10                      MOV DL,byte ptr [EAX]
00551143  3a11                      CMP DL,byte ptr [ECX]
00551145  751a                      JNZ 0x00551161
00551147  84d2                      TEST DL,DL
00551149  7412                      JZ 0x0055115d
0055114b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0055114e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00551151  750e                      JNZ 0x00551161
00551153  83c002                    ADD EAX,0x2
00551156  83c102                    ADD ECX,0x2
00551159  84d2                      TEST DL,DL
0055115b  75e4                      JNZ 0x00551141
0055115d  33c0                      XOR EAX,EAX
0055115f  eb05                      JMP 0x00551166
00551161  1bc0                      SBB EAX,EAX
00551163  83c801                    OR EAX,0x1
00551166  85c0                      TEST EAX,EAX
00551168  7512                      JNZ 0x0055117c
0055116a  384734                    CMP byte ptr [EDI + 0x34],AL
0055116d  7431                      JZ 0x005511a0
0055116f  38868c000000              CMP byte ptr [ESI + 0x8c],AL
00551175  8d7e48                    LEA EDI,[ESI + 0x48]
00551178  7526                      JNZ 0x005511a0
0055117a  eb03                      JMP 0x0055117f
0055117c  8d7e48                    LEA EDI,[ESI + 0x48]
0055117f  6a01                      PUSH 0x1
00551181  6854bcb100                PUSH 0xb1bc54
00551186  8bcf                      MOV ECX,EDI
00551188  e84394ebff                CALL 0x0040a5d0
0055118d  84c0                      TEST AL,AL
0055118f  740f                      JZ 0x005511a0
00551191  8d4f30                    LEA ECX,[EDI + 0x30]
00551194  e81790ebff                CALL 0x0040a1b0
00551199  8b75c0                    MOV ESI,dword ptr [EBP + -0x40]
0055119c  c6474401                  MOV byte ptr [EDI + 0x44],0x1
005511a0  837e3000                  CMP dword ptr [ESI + 0x30],0x0
005511a4  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
005511ae  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
005511b8  0f86b6010000              JBE 0x00551374
005511be  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
005511c5  8b96dc030000              MOV EDX,dword ptr [ESI + 0x3dc]
005511cb  85d2                      TEST EDX,EDX
005511cd  751a                      JNZ 0x005511e9
005511cf  6854bfb600                PUSH 0xb6bf54
005511d4  6a10                      PUSH 0x10
005511d6  e8e5004c00                CALL 0x00a112c0
005511db  8b96dc030000              MOV EDX,dword ptr [ESI + 0x3dc]
005511e1  83c408                    ADD ESP,0x8
005511e4  85d2                      TEST EDX,EDX
005511e6  7501                      JNZ 0x005511e9
005511e8  cc                        INT3
005511e9  8b8ee0030000              MOV ECX,dword ptr [ESI + 0x3e0]
005511ef  8bc2                      MOV EAX,EDX
005511f1  d3e8                      SHR EAX,CL
005511f3  8b8ee4030000              MOV ECX,dword ptr [ESI + 0x3e4]
005511f9  33c2                      XOR EAX,EDX
005511fb  8bd0                      MOV EDX,EAX
005511fd  d3e2                      SHL EDX,CL
005511ff  8b8ee8030000              MOV ECX,dword ptr [ESI + 0x3e8]
00551205  33d0                      XOR EDX,EAX
00551207  8bfa                      MOV EDI,EDX
00551209  d3ef                      SHR EDI,CL
0055120b  33fa                      XOR EDI,EDX
0055120d  89bedc030000              MOV dword ptr [ESI + 0x3dc],EDI
00551213  8bb6c8030000              MOV ESI,dword ptr [ESI + 0x3c8]
00551219  e842dd1900                CALL 0x006eef60
0055121e  660f6ec0                  MOVD XMM0,EAX
00551222  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00551226  c1e81f                    SHR EAX,0x1f
00551229  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00551232  660f5ac0                  CVTPD2PS XMM0,XMM0
00551236  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055123e  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00551246  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0055124e  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00551253  e808dd1900                CALL 0x006eef60
00551258  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055125e  57                        PUSH EDI
0055125f  6a00                      PUSH 0x0
00551261  660f6ec0                  MOVD XMM0,EAX
00551265  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00551269  c1e81f                    SHR EAX,0x1f
0055126c  56                        PUSH ESI
0055126d  8b75c0                    MOV ESI,dword ptr [EBP + -0x40]
00551270  6840b6c700                PUSH 0xc7b640
00551275  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055127e  8b45c0                    MOV EAX,dword ptr [EBP + -0x40]
00551281  660f5ac0                  CVTPD2PS XMM0,XMM0
00551285  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055128d  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00551295  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0055129d  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
005512a5  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
005512aa  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
005512af  f30f588040030000          ADDSS XMM0,dword ptr [EAX + 0x340]
005512b7  8d45a8                    LEA EAX,[EBP + -0x58]
005512ba  50                        PUSH EAX
005512bb  ff762c                    PUSH dword ptr [ESI + 0x2c]
005512be  ff7628                    PUSH dword ptr [ESI + 0x28]
005512c1  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
005512c6  e85578edff                CALL 0x00428b20
005512cb  8b45c8                    MOV EAX,dword ptr [EBP + -0x38]
005512ce  40                        INC EAX
005512cf  8945c8                    MOV dword ptr [EBP + -0x38],EAX
005512d2  3b4630                    CMP EAX,dword ptr [ESI + 0x30]
005512d5  0f82eafeffff              JC 0x005511c5
005512db  e880dc1900                CALL 0x006eef60
005512e0  0f57c0                    XORPS XMM0,XMM0
005512e3  f20f2ac0                  CVTSI2SD XMM0,EAX
005512e7  c1e81f                    SHR EAX,0x1f
005512ea  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005512f3  660f5ac0                  CVTPD2PS XMM0,XMM0
005512f7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005512ff  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00551307  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0055130f  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00551314  e847dc1900                CALL 0x006eef60
00551319  0f57c0                    XORPS XMM0,XMM0
0055131c  c7463000000000            MOV dword ptr [ESI + 0x30],0x0
00551323  f20f2ac0                  CVTSI2SD XMM0,EAX
00551327  c1e81f                    SHR EAX,0x1f
0055132a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00551333  660f5ac0                  CVTPD2PS XMM0,XMM0
00551337  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055133f  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00551347  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0055134f  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
00551357  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
0055135f  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
00551364  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
0055136c  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00551374  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00551377  64890d00000000            MOV dword ptr FS:[0x0],ECX
0055137e  59                        POP ECX
0055137f  5f                        POP EDI
00551380  5e                        POP ESI
00551381  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00551384  33cd                      XOR ECX,EBP
00551386  e8a0dd5900                CALL 0x00aef12b
0055138b  8be5                      MOV ESP,EBP
0055138d  5d                        POP EBP
0055138e  8be3                      MOV ESP,EBX
00551390  5b                        POP EBX
00551391  c3                        RET
