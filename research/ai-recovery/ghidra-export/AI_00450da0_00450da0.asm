; J460 NPC AI 0x00450da0 AI_00450da0
; types=901
; identities=901.0.0
; entry=00450da0
00450da0  53                        PUSH EBX
00450da1  8bdc                      MOV EBX,ESP
00450da3  83ec08                    SUB ESP,0x8
00450da6  83e4f8                    AND ESP,0xfffffff8
00450da9  83c404                    ADD ESP,0x4
00450dac  55                        PUSH EBP
00450dad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00450db0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00450db4  8bec                      MOV EBP,ESP
00450db6  6aff                      PUSH -0x1
00450db8  682024af00                PUSH 0xaf2420
00450dbd  64a100000000              MOV EAX,FS:[0x0]
00450dc3  50                        PUSH EAX
00450dc4  53                        PUSH EBX
00450dc5  81ec30010000              SUB ESP,0x130
00450dcb  a1b493bf00                MOV EAX,[0x00bf93b4]
00450dd0  33c5                      XOR EAX,EBP
00450dd2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00450dd5  56                        PUSH ESI
00450dd6  57                        PUSH EDI
00450dd7  50                        PUSH EAX
00450dd8  8d45f4                    LEA EAX,[EBP + -0xc]
00450ddb  64a300000000              MOV FS:[0x0],EAX
00450de1  8bf9                      MOV EDI,ECX
00450de3  a17816c700                MOV EAX,[0x00c71678]
00450de8  33d2                      XOR EDX,EDX
00450dea  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00450df2  899524ffffff              MOV dword ptr [EBP + 0xffffff24],EDX
00450df8  89953cffffff              MOV dword ptr [EBP + 0xffffff3c],EDX
00450dfe  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00450e04  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00450e0a  899538ffffff              MOV dword ptr [EBP + 0xffffff38],EDX
00450e10  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00450e18  8bb064120000              MOV ESI,dword ptr [EAX + 0x1264]
00450e1e  85f6                      TEST ESI,ESI
00450e20  7457                      JZ 0x00450e79
00450e22  8b885c120000              MOV ECX,dword ptr [EAX + 0x125c]
00450e28  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00450e30  8b01                      MOV EAX,dword ptr [ECX]
00450e32  8178282a030000            CMP dword ptr [EAX + 0x28],0x32a
00450e39  7536                      JNZ 0x00450e71
00450e3b  81783485030000            CMP dword ptr [EAX + 0x34],0x385
00450e42  752d                      JNZ 0x00450e71
00450e44  42                        INC EDX
00450e45  899524ffffff              MOV dword ptr [EBP + 0xffffff24],EDX
00450e4b  8b90bc030000              MOV EDX,dword ptr [EAX + 0x3bc]
00450e51  3bd7                      CMP EDX,EDI
00450e53  7506                      JNZ 0x00450e5b
00450e55  ff8538ffffff              INC dword ptr [EBP + 0xffffff38]
00450e5b  85d2                      TEST EDX,EDX
00450e5d  8b9524ffffff              MOV EDX,dword ptr [EBP + 0xffffff24]
00450e63  750c                      JNZ 0x00450e71
00450e65  83783001                  CMP dword ptr [EAX + 0x30],0x1
00450e69  7506                      JNZ 0x00450e71
00450e6b  ff853cffffff              INC dword ptr [EBP + 0xffffff3c]
00450e71  83c104                    ADD ECX,0x4
00450e74  83ee01                    SUB ESI,0x1
00450e77  75b7                      JNZ 0x00450e30
00450e79  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
00450e81  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
00450e89  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00450e8f  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
00450e97  0f2fc1                    COMISS XMM0,XMM1
00450e9a  0f978537ffffff            SETA byte ptr [EBP + 0xffffff37]
00450ea1  83f80b                    CMP EAX,0xb
00450ea4  0f8735160000              JA 0x004524df
00450eaa  ff2485a42b4500            JMP dword ptr [EAX*0x4 + 0x452ba4]
00450eb1  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00450ebb  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00450ec5  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00450ecd  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00450ed5  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00450edd  51                        PUSH ECX
00450ede  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00450ee4  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00450eec  e87f752e00                CALL 0x00738470
00450ef1  83f81c                    CMP EAX,0x1c
00450ef4  ba2439c300                MOV EDX,0xc33924
00450ef9  b9183cc300                MOV ECX,0xc33c18
00450efe  0f45ca                    CMOVNZ ECX,EDX
00450f01  8d97e4010000              LEA EDX,[EDI + 0x1e4]
00450f07  3bd1                      CMP EDX,ECX
00450f09  741e                      JZ 0x00450f29
00450f0b  0f1001                    MOVUPS XMM0,xmmword ptr [ECX]
00450f0e  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
00450f11  0f104110                  MOVUPS XMM0,xmmword ptr [ECX + 0x10]
00450f15  0f114210                  MOVUPS xmmword ptr [EDX + 0x10],XMM0
00450f19  f30f7e4120                MOVQ XMM0,qword ptr [ECX + 0x20]
00450f1e  660fd64220                MOVQ qword ptr [EDX + 0x20],XMM0
00450f23  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00450f26  894228                    MOV dword ptr [EDX + 0x28],EAX
00450f29  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
00450f33  e99d150000                JMP 0x004524d5
00450f38  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00450f3b  85f6                      TEST ESI,ESI
00450f3d  744c                      JZ 0x00450f8b
00450f3f  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00450f43  8bc6                      MOV EAX,ESI
00450f45  7202                      JC 0x00450f49
00450f47  8b06                      MOV EAX,dword ptr [ESI]
00450f49  b954bcb100                MOV ECX,0xb1bc54
00450f4e  6690                      NOP
00450f50  8a10                      MOV DL,byte ptr [EAX]
00450f52  3a11                      CMP DL,byte ptr [ECX]
00450f54  751a                      JNZ 0x00450f70
00450f56  84d2                      TEST DL,DL
00450f58  7412                      JZ 0x00450f6c
00450f5a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00450f5d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00450f60  750e                      JNZ 0x00450f70
00450f62  83c002                    ADD EAX,0x2
00450f65  83c102                    ADD ECX,0x2
00450f68  84d2                      TEST DL,DL
00450f6a  75e4                      JNZ 0x00450f50
00450f6c  33c0                      XOR EAX,EAX
00450f6e  eb05                      JMP 0x00450f75
00450f70  1bc0                      SBB EAX,EAX
00450f72  83c801                    OR EAX,0x1
00450f75  85c0                      TEST EAX,EAX
00450f77  7512                      JNZ 0x00450f8b
00450f79  384634                    CMP byte ptr [ESI + 0x34],AL
00450f7c  742e                      JZ 0x00450fac
00450f7e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00450f84  8d7748                    LEA ESI,[EDI + 0x48]
00450f87  7523                      JNZ 0x00450fac
00450f89  eb03                      JMP 0x00450f8e
00450f8b  8d7748                    LEA ESI,[EDI + 0x48]
00450f8e  6a01                      PUSH 0x1
00450f90  6854bcb100                PUSH 0xb1bc54
00450f95  8bce                      MOV ECX,ESI
00450f97  e83496fbff                CALL 0x0040a5d0
00450f9c  84c0                      TEST AL,AL
00450f9e  740c                      JZ 0x00450fac
00450fa0  8d4e30                    LEA ECX,[ESI + 0x30]
00450fa3  e80892fbff                CALL 0x0040a1b0
00450fa8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00450fac  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
00450fb6  e8a5df2900                CALL 0x006eef60
00450fbb  33d2                      XOR EDX,EDX
00450fbd  be28000000                MOV ESI,0x28
00450fc2  f7f6                      DIV ESI
00450fc4  85d2                      TEST EDX,EDX
00450fc6  7518                      JNZ 0x00450fe0
00450fc8  83bd24ffffff06            CMP dword ptr [EBP + 0xffffff24],0x6
00450fcf  7d0f                      JGE 0x00450fe0
00450fd1  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00450fdb  e9ff140000                JMP 0x004524df
00450fe0  e87bdf2900                CALL 0x006eef60
00450fe5  33d2                      XOR EDX,EDX
00450fe7  b946000000                MOV ECX,0x46
00450fec  f7f1                      DIV ECX
00450fee  85d2                      TEST EDX,EDX
00450ff0  7416                      JZ 0x00451008
00450ff2  80bd37ffffff00            CMP byte ptr [EBP + 0xffffff37],0x0
00450ff9  7425                      JZ 0x00451020
00450ffb  e860df2900                CALL 0x006eef60
00451000  33d2                      XOR EDX,EDX
00451002  f7f6                      DIV ESI
00451004  85d2                      TEST EDX,EDX
00451006  7518                      JNZ 0x00451020
00451008  83bd3cffffff01            CMP dword ptr [EBP + 0xffffff3c],0x1
0045100f  7d0f                      JGE 0x00451020
00451011  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0045101b  e9bf140000                JMP 0x004524df
00451020  e83bdf2900                CALL 0x006eef60
00451025  33d2                      XOR EDX,EDX
00451027  8bb538ffffff              MOV ESI,dword ptr [EBP + 0xffffff38]
0045102d  b92d000000                MOV ECX,0x2d
00451032  f7f1                      DIV ECX
00451034  85d2                      TEST EDX,EDX
00451036  7514                      JNZ 0x0045104c
00451038  83fe03                    CMP ESI,0x3
0045103b  7c0f                      JL 0x0045104c
0045103d  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00451047  e993140000                JMP 0x004524df
0045104c  e80fdf2900                CALL 0x006eef60
00451051  33d2                      XOR EDX,EDX
00451053  389537ffffff              CMP byte ptr [EBP + 0xffffff37],DL
00451059  7519                      JNZ 0x00451074
0045105b  b96e000000                MOV ECX,0x6e
00451060  f7f1                      DIV ECX
00451062  85d2                      TEST EDX,EDX
00451064  0f8575140000              JNZ 0x004524df
0045106a  83fe03                    CMP ESI,0x3
0045106d  7d14                      JGE 0x00451083
0045106f  e96b140000                JMP 0x004524df
00451074  b90a000000                MOV ECX,0xa
00451079  f7f1                      DIV ECX
0045107b  85d2                      TEST EDX,EDX
0045107d  0f855c140000              JNZ 0x004524df
00451083  80bd37ffffff00            CMP byte ptr [EBP + 0xffffff37],0x0
0045108a  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
00451094  c787a40b000001000000      MOV dword ptr [EDI + 0xba4],0x1
0045109e  0f843b140000              JZ 0x004524df
004510a4  e8b7de2900                CALL 0x006eef60
004510a9  33d2                      XOR EDX,EDX
004510ab  b903000000                MOV ECX,0x3
004510b0  f7f1                      DIV ECX
004510b2  83c202                    ADD EDX,0x2
004510b5  0197a40b0000              ADD dword ptr [EDI + 0xba4],EDX
004510bb  e91f140000                JMP 0x004524df
004510c0  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004510c3  85f6                      TEST ESI,ESI
004510c5  744a                      JZ 0x00451111
004510c7  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004510cb  8bc6                      MOV EAX,ESI
004510cd  7202                      JC 0x004510d1
004510cf  8b06                      MOV EAX,dword ptr [ESI]
004510d1  b93cd5b100                MOV ECX,0xb1d53c
004510d6  8a10                      MOV DL,byte ptr [EAX]
004510d8  3a11                      CMP DL,byte ptr [ECX]
004510da  751a                      JNZ 0x004510f6
004510dc  84d2                      TEST DL,DL
004510de  7412                      JZ 0x004510f2
004510e0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004510e3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004510e6  750e                      JNZ 0x004510f6
004510e8  83c002                    ADD EAX,0x2
004510eb  83c102                    ADD ECX,0x2
004510ee  84d2                      TEST DL,DL
004510f0  75e4                      JNZ 0x004510d6
004510f2  33c0                      XOR EAX,EAX
004510f4  eb05                      JMP 0x004510fb
004510f6  1bc0                      SBB EAX,EAX
004510f8  83c801                    OR EAX,0x1
004510fb  85c0                      TEST EAX,EAX
004510fd  7512                      JNZ 0x00451111
004510ff  384634                    CMP byte ptr [ESI + 0x34],AL
00451102  742e                      JZ 0x00451132
00451104  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045110a  8d7748                    LEA ESI,[EDI + 0x48]
0045110d  7523                      JNZ 0x00451132
0045110f  eb03                      JMP 0x00451114
00451111  8d7748                    LEA ESI,[EDI + 0x48]
00451114  6a01                      PUSH 0x1
00451116  683cd5b100                PUSH 0xb1d53c
0045111b  8bce                      MOV ECX,ESI
0045111d  e8ae94fbff                CALL 0x0040a5d0
00451122  84c0                      TEST AL,AL
00451124  740c                      JZ 0x00451132
00451126  8d4e30                    LEA ECX,[ESI + 0x30]
00451129  e88290fbff                CALL 0x0040a1b0
0045112e  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00451132  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00451136  0f8417040000              JZ 0x00451553
0045113c  68dcd2b100                PUSH 0xb1d2dc
00451141  8d4f78                    LEA ECX,[EDI + 0x78]
00451144  e8879cfbff                CALL 0x0040add0
00451149  84c0                      TEST AL,AL
0045114b  0f84ef030000              JZ 0x00451540
00451151  e80ade2900                CALL 0x006eef60
00451156  33d2                      XOR EDX,EDX
00451158  b903000000                MOV ECX,0x3
0045115d  f7f1                      DIV ECX
0045115f  42                        INC EDX
00451160  89953cffffff              MOV dword ptr [EBP + 0xffffff3c],EDX
00451166  85d2                      TEST EDX,EDX
00451168  0f8e8e010000              JLE 0x004512fc
0045116e  8db73c030000              LEA ESI,[EDI + 0x33c]
00451174  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00451178  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00451180  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00451188  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00451190  e8cbdd2900                CALL 0x006eef60
00451195  660f6ec0                  MOVD XMM0,EAX
00451199  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0045119d  c1e81f                    SHR EAX,0x1f
004511a0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004511a9  660f5ac0                  CVTPD2PS XMM0,XMM0
004511ad  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004511b5  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004511bd  f30f58c0                  ADDSS XMM0,XMM0
004511c1  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004511c9  e872c3fcff                CALL 0x0041d540
004511ce  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
004511d6  0f57d2                    XORPS XMM2,XMM2
004511d9  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004511e1  f30f58ca                  ADDSS XMM1,XMM2
004511e5  f30f58c1                  ADDSS XMM0,XMM1
004511e9  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
004511f1  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
004511f9  e822c3fcff                CALL 0x0041d520
004511fe  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
00451206  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0045120c  f30f580dd0a8ba00          ADDSS XMM1,dword ptr [0x00baa8d0]
00451214  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
0045121c  83ec0c                    SUB ESP,0xc
0045121f  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
00451225  f30f101d84a7ba00          MOVSS XMM3,dword ptr [0x00baa784]
0045122d  c74424080000a040          MOV dword ptr [ESP + 0x8],0x40a00000
00451235  f30f58c1                  ADDSS XMM0,XMM1
00451239  c74424040000a040          MOV dword ptr [ESP + 0x4],0x40a00000
00451241  c704240000a040            MOV dword ptr [ESP],0x40a00000
00451248  50                        PUSH EAX
00451249  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0045124f  50                        PUSH EAX
00451250  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00451258  e8f31c3c00                CALL 0x00812f50
0045125d  f30f101514aeba00          MOVSS XMM2,dword ptr [0x00baae14]
00451265  8bd7                      MOV EDX,EDI
00451267  6a00                      PUSH 0x0
00451269  8bce                      MOV ECX,ESI
0045126b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0045126f  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00451277  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0045127c  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
00451282  50                        PUSH EAX
00451283  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0045128b  e830b21000                CALL 0x0055c4c0
00451290  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00451293  83c408                    ADD ESP,0x8
00451296  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
0045129e  8db0bc030000              LEA ESI,[EAX + 0x3bc]
004512a4  f30f58c0                  ADDSS XMM0,XMM0
004512a8  894834                    MOV dword ptr [EAX + 0x34],ECX
004512ab  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
004512ae  894838                    MOV dword ptr [EAX + 0x38],ECX
004512b1  8b0e                      MOV ECX,dword ptr [ESI]
004512b3  f30f118084030000          MOVSS dword ptr [EAX + 0x384],XMM0
004512bb  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
004512c3  85c9                      TEST ECX,ECX
004512c5  7418                      JZ 0x004512df
004512c7  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
004512cd  89b530ffffff              MOV dword ptr [EBP + 0xffffff30],ESI
004512d3  50                        PUSH EAX
004512d4  81c1cc030000              ADD ECX,0x3cc
004512da  e831df0700                CALL 0x004cf210
004512df  56                        PUSH ESI
004512e0  8bcf                      MOV ECX,EDI
004512e2  893e                      MOV dword ptr [ESI],EDI
004512e4  e807ca0700                CALL 0x004cdcf0
004512e9  83ad3cffffff01            SUB dword ptr [EBP + 0xffffff3c],0x1
004512f0  8db73c030000              LEA ESI,[EDI + 0x33c]
004512f6  0f8578feffff              JNZ 0x00451174
004512fc  e85fdc2900                CALL 0x006eef60
00451301  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00451309  0f57c9                    XORPS XMM1,XMM1
0045130c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00451312  f30f58c1                  ADDSS XMM0,XMM1
00451316  50                        PUSH EAX
00451317  6a01                      PUSH 0x1
00451319  6a00                      PUSH 0x0
0045131b  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
00451321  50                        PUSH EAX
00451322  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0045132a  8d873c030000              LEA EAX,[EDI + 0x33c]
00451330  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00451338  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
00451340  50                        PUSH EAX
00451341  6a02                      PUSH 0x2
00451343  68e8030000                PUSH 0x3e8
00451348  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00451350  e8cb77fdff                CALL 0x00428b20
00451355  8bf0                      MOV ESI,EAX
00451357  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
0045135d  e8fedb2900                CALL 0x006eef60
00451362  8d4e48                    LEA ECX,[ESI + 0x48]
00451365  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
0045136b  660f6ec0                  MOVD XMM0,EAX
0045136f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00451373  c1e81f                    SHR EAX,0x1f
00451376  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0045137f  660f5ac0                  CVTPD2PS XMM0,XMM0
00451383  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0045138b  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00451393  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
0045139b  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
0045139e  85c9                      TEST ECX,ECX
004513a0  744c                      JZ 0x004513ee
004513a2  83791410                  CMP dword ptr [ECX + 0x14],0x10
004513a6  8bc1                      MOV EAX,ECX
004513a8  7202                      JC 0x004513ac
004513aa  8b01                      MOV EAX,dword ptr [ECX]
004513ac  b934d5b100                MOV ECX,0xb1d534
004513b1  8a10                      MOV DL,byte ptr [EAX]
004513b3  3a11                      CMP DL,byte ptr [ECX]
004513b5  751a                      JNZ 0x004513d1
004513b7  84d2                      TEST DL,DL
004513b9  7412                      JZ 0x004513cd
004513bb  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004513be  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004513c1  750e                      JNZ 0x004513d1
004513c3  83c002                    ADD EAX,0x2
004513c6  83c102                    ADD ECX,0x2
004513c9  84d2                      TEST DL,DL
004513cb  75e4                      JNZ 0x004513b1
004513cd  33c0                      XOR EAX,EAX
004513cf  eb05                      JMP 0x004513d6
004513d1  1bc0                      SBB EAX,EAX
004513d3  83c801                    OR EAX,0x1
004513d6  8d4e48                    LEA ECX,[ESI + 0x48]
004513d9  85c0                      TEST EAX,EAX
004513db  7514                      JNZ 0x004513f1
004513dd  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004513e0  80783400                  CMP byte ptr [EAX + 0x34],0x0
004513e4  7433                      JZ 0x00451419
004513e6  80794400                  CMP byte ptr [ECX + 0x44],0x0
004513ea  752d                      JNZ 0x00451419
004513ec  eb03                      JMP 0x004513f1
004513ee  8d4e48                    LEA ECX,[ESI + 0x48]
004513f1  6a01                      PUSH 0x1
004513f3  6834d5b100                PUSH 0xb1d534
004513f8  e8d391fbff                CALL 0x0040a5d0
004513fd  84c0                      TEST AL,AL
004513ff  7418                      JZ 0x00451419
00451401  8bb530ffffff              MOV ESI,dword ptr [EBP + 0xffffff30]
00451407  8d4e30                    LEA ECX,[ESI + 0x30]
0045140a  e8a18dfbff                CALL 0x0040a1b0
0045140f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00451413  8bb53cffffff              MOV ESI,dword ptr [EBP + 0xffffff3c]
00451419  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00451423  c78650030000000020c2      MOV dword ptr [ESI + 0x350],0xc2200000
0045142d  c78654030000f4010000      MOV dword ptr [ESI + 0x354],0x1f4
00451437  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0045143d  83be846502002c            CMP dword ptr [ESI + 0x26584],0x2c
00451444  7511                      JNZ 0x00451457
00451446  ffb604830100              PUSH dword ptr [ESI + 0x18304]
0045144c  8bce                      MOV ECX,ESI
0045144e  e83de22f00                CALL 0x0074f690
00451453  8bd0                      MOV EDX,EAX
00451455  eb13                      JMP 0x0045146a
00451457  83be0c83010002            CMP dword ptr [ESI + 0x1830c],0x2
0045145e  7507                      JNZ 0x00451467
00451460  b923000000                MOV ECX,0x23
00451465  eb11                      JMP 0x00451478
00451467  8b5604                    MOV EDX,dword ptr [ESI + 0x4]
0045146a  8b0e                      MOV ECX,dword ptr [ESI]
0045146c  6aff                      PUSH -0x1
0045146e  e8bdbb3d00                CALL 0x0082d030
00451473  8bc8                      MOV ECX,EAX
00451475  83c404                    ADD ESP,0x4
00451478  83f91c                    CMP ECX,0x1c
0045147b  b8183cc300                MOV EAX,0xc33c18
00451480  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00451486  ba2439c300                MOV EDX,0xc33924
0045148b  0f45c2                    CMOVNZ EAX,EDX
0045148e  81c1f0000000              ADD ECX,0xf0
00451494  3bc8                      CMP ECX,EAX
00451496  741e                      JZ 0x004514b6
00451498  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
0045149b  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0045149e  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
004514a2  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004514a6  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
004514ab  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004514b0  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
004514b3  894128                    MOV dword ptr [ECX + 0x28],EAX
004514b6  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004514be  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004514c4  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004514cc  83f812                    CMP EAX,0x12
004514cf  750a                      JNZ 0x004514db
004514d1  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004514d9  eb0d                      JMP 0x004514e8
004514db  83f813                    CMP EAX,0x13
004514de  7510                      JNZ 0x004514f0
004514e0  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004514e8  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004514f0  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004514f6  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
004514fc  c78538ffffff6c000000      MOV dword ptr [EBP + 0xffffff38],0x6c
00451506  e875525000                CALL 0x00956780
0045150b  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00451513  83ec08                    SUB ESP,0x8
00451516  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045151e  f30f110424                MOVSS dword ptr [ESP],XMM0
00451523  6a00                      PUSH 0x0
00451525  6a02                      PUSH 0x2
00451527  51                        PUSH ECX
00451528  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045152f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00451535  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
0045153b  e8f0c64d00                CALL 0x0092dc30
00451540  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00451544  740d                      JZ 0x00451553
00451546  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045154d  0f858c0f0000              JNZ 0x004524df
00451553  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045155d  e97d0f0000                JMP 0x004524df
00451562  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00451565  85f6                      TEST ESI,ESI
00451567  744a                      JZ 0x004515b3
00451569  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0045156d  8bc6                      MOV EAX,ESI
0045156f  7202                      JC 0x00451573
00451571  8b06                      MOV EAX,dword ptr [ESI]
00451573  b954d5b100                MOV ECX,0xb1d554
00451578  8a10                      MOV DL,byte ptr [EAX]
0045157a  3a11                      CMP DL,byte ptr [ECX]
0045157c  751a                      JNZ 0x00451598
0045157e  84d2                      TEST DL,DL
00451580  7412                      JZ 0x00451594
00451582  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00451585  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00451588  750e                      JNZ 0x00451598
0045158a  83c002                    ADD EAX,0x2
0045158d  83c102                    ADD ECX,0x2
00451590  84d2                      TEST DL,DL
00451592  75e4                      JNZ 0x00451578
00451594  33c0                      XOR EAX,EAX
00451596  eb05                      JMP 0x0045159d
00451598  1bc0                      SBB EAX,EAX
0045159a  83c801                    OR EAX,0x1
0045159d  85c0                      TEST EAX,EAX
0045159f  7512                      JNZ 0x004515b3
004515a1  384634                    CMP byte ptr [ESI + 0x34],AL
004515a4  742e                      JZ 0x004515d4
004515a6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004515ac  8d7748                    LEA ESI,[EDI + 0x48]
004515af  7523                      JNZ 0x004515d4
004515b1  eb03                      JMP 0x004515b6
004515b3  8d7748                    LEA ESI,[EDI + 0x48]
004515b6  6a01                      PUSH 0x1
004515b8  6854d5b100                PUSH 0xb1d554
004515bd  8bce                      MOV ECX,ESI
004515bf  e80c90fbff                CALL 0x0040a5d0
004515c4  84c0                      TEST AL,AL
004515c6  740c                      JZ 0x004515d4
004515c8  8d4e30                    LEA ECX,[ESI + 0x30]
004515cb  e8e08bfbff                CALL 0x0040a1b0
004515d0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004515d4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004515d8  0f8475ffffff              JZ 0x00451553
004515de  68dcd2b100                PUSH 0xb1d2dc
004515e3  8d4f78                    LEA ECX,[EDI + 0x78]
004515e6  e8e597fbff                CALL 0x0040add0
004515eb  84c0                      TEST AL,AL
004515ed  0f844dffffff              JZ 0x00451540
004515f3  8bcf                      MOV ECX,EDI
004515f5  e846d22600                CALL 0x006be840
004515fa  8db73c030000              LEA ESI,[EDI + 0x33c]
00451600  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00451608  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0045160d  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00451615  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
00451619  0f28c1                    MOVAPS XMM0,XMM1
0045161c  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
00451624  f30f59c1                  MULSS XMM0,XMM1
00451628  0f28ca                    MOVAPS XMM1,XMM2
0045162b  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00451633  f30f59ca                  MULSS XMM1,XMM2
00451637  f30f58c1                  ADDSS XMM0,XMM1
0045163b  e81044feff                CALL 0x00435a50
00451640  f30f1015b4a9ba00          MOVSS XMM2,dword ptr [0x00baa9b4]
00451648  0f2fc2                    COMISS XMM0,XMM2
0045164b  764b                      JBE 0x00451698
0045164d  0f57c9                    XORPS XMM1,XMM1
00451650  0f2fc1                    COMISS XMM0,XMM1
00451653  7629                      JBE 0x0045167e
00451655  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0045165d  f30f5ec8                  DIVSS XMM1,XMM0
00451661  0f28c1                    MOVAPS XMM0,XMM1
00451664  f30f598d38ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff38]
0045166c  f30f59853cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff3c]
00451674  f30f59ca                  MULSS XMM1,XMM2
00451678  f30f59c2                  MULSS XMM0,XMM2
0045167c  eb2a                      JMP 0x004516a8
0045167e  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00451686  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
0045168e  f30f59c2                  MULSS XMM0,XMM2
00451692  f30f59ca                  MULSS XMM1,XMM2
00451696  eb10                      JMP 0x004516a8
00451698  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
004516a0  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
004516a8  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004516ac  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
004516b1  f30f101d84a7ba00          MOVSS XMM3,dword ptr [0x00baa784]
004516b9  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
004516bf  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004516c5  83ec0c                    SUB ESP,0xc
004516c8  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
004516d0  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
004516d8  c74424080000a040          MOV dword ptr [ESP + 0x8],0x40a00000
004516e0  c74424040000a040          MOV dword ptr [ESP + 0x4],0x40a00000
004516e8  c704240000a040            MOV dword ptr [ESP],0x40a00000
004516ef  50                        PUSH EAX
004516f0  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004516f6  50                        PUSH EAX
004516f7  e854183c00                CALL 0x00812f50
004516fc  f30f101514aeba00          MOVSS XMM2,dword ptr [0x00baae14]
00451704  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0045170a  6a01                      PUSH 0x1
0045170c  50                        PUSH EAX
0045170d  8bd7                      MOV EDX,EDI
0045170f  8bce                      MOV ECX,ESI
00451711  e8aaad1000                CALL 0x0055c4c0
00451716  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00451719  83c408                    ADD ESP,0x8
0045171c  894834                    MOV dword ptr [EAX + 0x34],ECX
0045171f  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00451722  894838                    MOV dword ptr [EAX + 0x38],ECX
00451725  e836d82900                CALL 0x006eef60
0045172a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00451732  0f57c9                    XORPS XMM1,XMM1
00451735  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045173b  f30f58c1                  ADDSS XMM0,XMM1
0045173f  50                        PUSH EAX
00451740  6a01                      PUSH 0x1
00451742  6a00                      PUSH 0x0
00451744  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0045174a  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00451752  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0045175a  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
00451762  50                        PUSH EAX
00451763  56                        PUSH ESI
00451764  6a02                      PUSH 0x2
00451766  68e8030000                PUSH 0x3e8
0045176b  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00451773  e8a873fdff                CALL 0x00428b20
00451778  8bf0                      MOV ESI,EAX
0045177a  e8e1d72900                CALL 0x006eef60
0045177f  6a00                      PUSH 0x0
00451781  6834d5b100                PUSH 0xb1d534
00451786  8d4e48                    LEA ECX,[ESI + 0x48]
00451789  660f6ec0                  MOVD XMM0,EAX
0045178d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00451791  c1e81f                    SHR EAX,0x1f
00451794  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0045179d  660f5ac0                  CVTPD2PS XMM0,XMM0
004517a1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004517a9  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004517b1  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
004517b9  e8c28bfbff                CALL 0x0040a380
004517be  51                        PUSH ECX
004517bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004517c5  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
004517cf  c78650030000000020c2      MOV dword ptr [ESI + 0x350],0xc2200000
004517d9  c78654030000f4010000      MOV dword ptr [ESI + 0x354],0x1f4
004517e3  e8886c2e00                CALL 0x00738470
004517e8  83f81c                    CMP EAX,0x1c
004517eb  b9183cc300                MOV ECX,0xc33c18
004517f0  ba2439c300                MOV EDX,0xc33924
004517f5  0f45ca                    CMOVNZ ECX,EDX
004517f8  81c6f0000000              ADD ESI,0xf0
004517fe  3bf1                      CMP ESI,ECX
00451800  741e                      JZ 0x00451820
00451802  0f1001                    MOVUPS XMM0,xmmword ptr [ECX]
00451805  0f1106                    MOVUPS xmmword ptr [ESI],XMM0
00451808  0f104110                  MOVUPS XMM0,xmmword ptr [ECX + 0x10]
0045180c  0f114610                  MOVUPS xmmword ptr [ESI + 0x10],XMM0
00451810  f30f7e4120                MOVQ XMM0,qword ptr [ECX + 0x20]
00451815  660fd64620                MOVQ qword ptr [ESI + 0x20],XMM0
0045181a  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0045181d  894628                    MOV dword ptr [ESI + 0x28],EAX
00451820  51                        PUSH ECX
00451821  c704240000803f            MOV dword ptr [ESP],0x3f800000
00451828  6a00                      PUSH 0x0
0045182a  6a02                      PUSH 0x2
0045182c  51                        PUSH ECX
0045182d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00451834  8bcf                      MOV ECX,EDI
00451836  6a6a                      PUSH 0x6a
00451838  e863532800                CALL 0x006d6ba0
0045183d  e9fefcffff                JMP 0x00451540
00451842  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00451845  85f6                      TEST ESI,ESI
00451847  744a                      JZ 0x00451893
00451849  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0045184d  8bc6                      MOV EAX,ESI
0045184f  7202                      JC 0x00451853
00451851  8b06                      MOV EAX,dword ptr [ESI]
00451853  b948d5b100                MOV ECX,0xb1d548
00451858  8a10                      MOV DL,byte ptr [EAX]
0045185a  3a11                      CMP DL,byte ptr [ECX]
0045185c  751a                      JNZ 0x00451878
0045185e  84d2                      TEST DL,DL
00451860  7412                      JZ 0x00451874
00451862  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00451865  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00451868  750e                      JNZ 0x00451878
0045186a  83c002                    ADD EAX,0x2
0045186d  83c102                    ADD ECX,0x2
00451870  84d2                      TEST DL,DL
00451872  75e4                      JNZ 0x00451858
00451874  33c0                      XOR EAX,EAX
00451876  eb05                      JMP 0x0045187d
00451878  1bc0                      SBB EAX,EAX
0045187a  83c801                    OR EAX,0x1
0045187d  85c0                      TEST EAX,EAX
0045187f  7512                      JNZ 0x00451893
00451881  384634                    CMP byte ptr [ESI + 0x34],AL
00451884  742e                      JZ 0x004518b4
00451886  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045188c  8d7748                    LEA ESI,[EDI + 0x48]
0045188f  7523                      JNZ 0x004518b4
00451891  eb03                      JMP 0x00451896
00451893  8d7748                    LEA ESI,[EDI + 0x48]
00451896  6a01                      PUSH 0x1
00451898  6848d5b100                PUSH 0xb1d548
0045189d  8bce                      MOV ECX,ESI
0045189f  e82c8dfbff                CALL 0x0040a5d0
004518a4  84c0                      TEST AL,AL
004518a6  740c                      JZ 0x004518b4
004518a8  8d4e30                    LEA ECX,[ESI + 0x30]
004518ab  e80089fbff                CALL 0x0040a1b0
004518b0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004518b4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004518b8  8d7778                    LEA ESI,[EDI + 0x78]
004518bb  0f8492fcffff              JZ 0x00451553
004518c1  68dcd2b100                PUSH 0xb1d2dc
004518c6  8bce                      MOV ECX,ESI
004518c8  e80395fbff                CALL 0x0040add0
004518cd  84c0                      TEST AL,AL
004518cf  7462                      JZ 0x00451933
004518d1  51                        PUSH ECX
004518d2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004518d9  6a00                      PUSH 0x0
004518db  6a02                      PUSH 0x2
004518dd  51                        PUSH ECX
004518de  c704240000803f            MOV dword ptr [ESP],0x3f800000
004518e5  8bcf                      MOV ECX,EDI
004518e7  6a70                      PUSH 0x70
004518e9  e8b2522800                CALL 0x006d6ba0
004518ee  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
004518f6  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004518fe  e85dd62900                CALL 0x006eef60
00451903  660f6ec0                  MOVD XMM0,EAX
00451907  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0045190b  c1e81f                    SHR EAX,0x1f
0045190e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00451917  660f5ac0                  CVTPD2PS XMM0,XMM0
0045191b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00451923  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0045192b  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00451933  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00451937  0f8416fcffff              JZ 0x00451553
0045193d  68dcd2b100                PUSH 0xb1d2dc
00451942  8bce                      MOV ECX,ESI
00451944  e82795fbff                CALL 0x0040ae70
00451949  84c0                      TEST AL,AL
0045194b  0f84effbffff              JZ 0x00451540
00451951  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
00451957  8bc8                      MOV ECX,EAX
00451959  a801                      TEST AL,0x1
0045195b  0f8538050000              JNZ 0x00451e99
00451961  83f80c                    CMP EAX,0xc
00451964  0f8d2f050000              JGE 0x00451e99
0045196a  33c0                      XOR EAX,EAX
0045196c  898530ffffff              MOV dword ptr [EBP + 0xffffff30],EAX
00451972  0f1f4000                  NOP dword ptr [EAX]
00451976  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00451980  0f57c0                    XORPS XMM0,XMM0
00451983  f30f2ac0                  CVTSI2SS XMM0,EAX
00451987  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
0045198f  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
00451997  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0045199f  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004519a7  e894bbfcff                CALL 0x0041d540
004519ac  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004519b4  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
004519bc  e85fbbfcff                CALL 0x0041d520
004519c1  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004519c9  e892d52900                CALL 0x006eef60
004519ce  0f57c9                    XORPS XMM1,XMM1
004519d1  f20f2ac8                  CVTSI2SD XMM1,EAX
004519d5  c1e81f                    SHR EAX,0x1f
004519d8  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004519e1  660f5ac1                  CVTPD2PS XMM0,XMM1
004519e5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004519ed  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
004519f5  f30f5c05a4a7ba00          SUBSS XMM0,dword ptr [0x00baa7a4]
004519fd  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00451a05  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00451a0d  e82ebbfcff                CALL 0x0041d540
00451a12  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00451a1a  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00451a22  e8f9bafcff                CALL 0x0041d520
00451a27  f30f10a524ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff24]
00451a2f  0f28c8                    MOVAPS XMM1,XMM0
00451a32  f30f598d10ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff10]
00451a3a  0f28ec                    MOVAPS XMM5,XMM4
00451a3d  f30f59ad38ffffff          MULSS XMM5,dword ptr [EBP + 0xffffff38]
00451a45  f30f59a510ffffff          MULSS XMM4,dword ptr [EBP + 0xffffff10]
00451a4d  f30f598538ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff38]
00451a55  f30f5ce9                  SUBSS XMM5,XMM1
00451a59  f30f58e0                  ADDSS XMM4,XMM0
00451a5d  f30f11ad3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM5
00451a65  f30f11a524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM4
00451a6d  e8eed42900                CALL 0x006eef60
00451a72  0f57c0                    XORPS XMM0,XMM0
00451a75  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00451a7b  f20f2ac0                  CVTSI2SD XMM0,EAX
00451a7f  c1e81f                    SHR EAX,0x1f
00451a82  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00451a8b  660f5ac0                  CVTPD2PS XMM0,XMM0
00451a8f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00451a97  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
00451a9f  e88cd4feff                CALL 0x0043ef30
00451aa4  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00451aaa  83be846502002c            CMP dword ptr [ESI + 0x26584],0x2c
00451ab1  7511                      JNZ 0x00451ac4
00451ab3  ffb604830100              PUSH dword ptr [ESI + 0x18304]
00451ab9  8bce                      MOV ECX,ESI
00451abb  e8d0db2f00                CALL 0x0074f690
00451ac0  8bd0                      MOV EDX,EAX
00451ac2  eb13                      JMP 0x00451ad7
00451ac4  83be0c83010002            CMP dword ptr [ESI + 0x1830c],0x2
00451acb  7507                      JNZ 0x00451ad4
00451acd  b923000000                MOV ECX,0x23
00451ad2  eb11                      JMP 0x00451ae5
00451ad4  8b5604                    MOV EDX,dword ptr [ESI + 0x4]
00451ad7  8b0e                      MOV ECX,dword ptr [ESI]
00451ad9  6aff                      PUSH -0x1
00451adb  e850b53d00                CALL 0x0082d030
00451ae0  8bc8                      MOV ECX,EAX
00451ae2  83c404                    ADD ESP,0x4
00451ae5  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
00451aed  33c0                      XOR EAX,EAX
00451aef  0f28c1                    MOVAPS XMM0,XMM1
00451af2  c78544ffffff000020c1      MOV dword ptr [EBP + 0xffffff44],0xc1200000
00451afc  f30f5905cca0ba00          MULSS XMM0,dword ptr [0x00baa0cc]
00451b04  83f91c                    CMP ECX,0x1c
00451b07  0f95c0                    SETNZ AL
00451b0a  83c003                    ADD EAX,0x3
00451b0d  f30f5c0508a1ba00          SUBSS XMM0,dword ptr [0x00baa108]
00451b15  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00451b18  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00451b20  0f28c1                    MOVAPS XMM0,XMM1
00451b23  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00451b2b  f30f590d94a1ba00          MULSS XMM1,dword ptr [0x00baa194]
00451b33  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
00451b3b  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
00451b43  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00451b4b  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00451b53  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00451b5b  f30f59c1                  MULSS XMM0,XMM1
00451b5f  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
00451b67  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00451b6f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00451b77  f30f59c1                  MULSS XMM0,XMM1
00451b7b  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00451b83  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00451b8b  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
00451b93  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00451b9b  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00451ba3  e8b8d32900                CALL 0x006eef60
00451ba8  660f6ec0                  MOVD XMM0,EAX
00451bac  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00451bb0  c1e81f                    SHR EAX,0x1f
00451bb3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00451bbc  660f5ac0                  CVTPD2PS XMM0,XMM0
00451bc0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00451bc8  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00451bd0  f30f58c0                  ADDSS XMM0,XMM0
00451bd4  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00451bdc  e85fb9fcff                CALL 0x0041d540
00451be1  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00451be9  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
00451bf1  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00451bf9  f30f588d10ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff10]
00451c01  f30f58c1                  ADDSS XMM0,XMM1
00451c05  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00451c0d  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00451c15  e806b9fcff                CALL 0x0041d520
00451c1a  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
00451c22  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00451c28  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
00451c30  8bcf                      MOV ECX,EDI
00451c32  50                        PUSH EAX
00451c33  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00451c3b  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00451c41  6a00                      PUSH 0x0
00451c43  f30f588d2cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff2c]
00451c4b  50                        PUSH EAX
00451c4c  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00451c52  50                        PUSH EAX
00451c53  f30f58c1                  ADDSS XMM0,XMM1
00451c57  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
00451c5f  e87c962700                CALL 0x006cb2e0
00451c64  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
00451c6a  2503000080                AND EAX,0x80000003
00451c6f  7907                      JNS 0x00451c78
00451c71  48                        DEC EAX
00451c72  83c8fc                    OR EAX,0xfffffffc
00451c75  83c001                    ADD EAX,0x1
00451c78  0f85ff010000              JNZ 0x00451e7d
00451c7e  e8ddd22900                CALL 0x006eef60
00451c83  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
00451c8b  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
00451c93  0f28c2                    MOVAPS XMM0,XMM2
00451c96  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
00451c9e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00451ca4  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
00451cac  50                        PUSH EAX
00451cad  6a01                      PUSH 0x1
00451caf  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00451cb7  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00451cbd  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
00451cc5  0f28c1                    MOVAPS XMM0,XMM1
00451cc8  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
00451cd0  6a00                      PUSH 0x0
00451cd2  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
00451cda  50                        PUSH EAX
00451cdb  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00451ce3  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00451ce9  f30f119518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM2
00451cf1  50                        PUSH EAX
00451cf2  6a02                      PUSH 0x2
00451cf4  68e8030000                PUSH 0x3e8
00451cf9  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
00451d01  f30f118d1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM1
00451d09  e8126efdff                CALL 0x00428b20
00451d0e  8bf0                      MOV ESI,EAX
00451d10  89b538ffffff              MOV dword ptr [EBP + 0xffffff38],ESI
00451d16  e845d22900                CALL 0x006eef60
00451d1b  660f6ec0                  MOVD XMM0,EAX
00451d1f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00451d23  c1e81f                    SHR EAX,0x1f
00451d26  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00451d2f  660f5ac0                  CVTPD2PS XMM0,XMM0
00451d33  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00451d3b  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00451d43  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00451d4b  83c648                    ADD ESI,0x48
00451d4e  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
00451d54  8b7634                    MOV ESI,dword ptr [ESI + 0x34]
00451d57  85f6                      TEST ESI,ESI
00451d59  7450                      JZ 0x00451dab
00451d5b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00451d5f  8bc6                      MOV EAX,ESI
00451d61  7202                      JC 0x00451d65
00451d63  8b06                      MOV EAX,dword ptr [ESI]
00451d65  b934d5b100                MOV ECX,0xb1d534
00451d6a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00451d70  8a10                      MOV DL,byte ptr [EAX]
00451d72  3a11                      CMP DL,byte ptr [ECX]
00451d74  751a                      JNZ 0x00451d90
00451d76  84d2                      TEST DL,DL
00451d78  7412                      JZ 0x00451d8c
00451d7a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00451d7d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00451d80  750e                      JNZ 0x00451d90
00451d82  83c002                    ADD EAX,0x2
00451d85  83c102                    ADD ECX,0x2
00451d88  84d2                      TEST DL,DL
00451d8a  75e4                      JNZ 0x00451d70
00451d8c  33c0                      XOR EAX,EAX
00451d8e  eb05                      JMP 0x00451d95
00451d90  1bc0                      SBB EAX,EAX
00451d92  83c801                    OR EAX,0x1
00451d95  85c0                      TEST EAX,EAX
00451d97  7512                      JNZ 0x00451dab
00451d99  384634                    CMP byte ptr [ESI + 0x34],AL
00451d9c  7431                      JZ 0x00451dcf
00451d9e  8bb53cffffff              MOV ESI,dword ptr [EBP + 0xffffff3c]
00451da4  384644                    CMP byte ptr [ESI + 0x44],AL
00451da7  7526                      JNZ 0x00451dcf
00451da9  eb06                      JMP 0x00451db1
00451dab  8bb53cffffff              MOV ESI,dword ptr [EBP + 0xffffff3c]
00451db1  6a01                      PUSH 0x1
00451db3  6834d5b100                PUSH 0xb1d534
00451db8  8bce                      MOV ECX,ESI
00451dba  e81188fbff                CALL 0x0040a5d0
00451dbf  84c0                      TEST AL,AL
00451dc1  740c                      JZ 0x00451dcf
00451dc3  8d4e30                    LEA ECX,[ESI + 0x30]
00451dc6  e8e583fbff                CALL 0x0040a1b0
00451dcb  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00451dcf  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
00451dd5  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00451ddb  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
00451de5  c780500300000000e0c1      MOV dword ptr [EAX + 0x350],0xc1e00000
00451def  c78054030000f4010000      MOV dword ptr [EAX + 0x354],0x1f4
00451df9  83be846502002c            CMP dword ptr [ESI + 0x26584],0x2c
00451e00  7511                      JNZ 0x00451e13
00451e02  ffb604830100              PUSH dword ptr [ESI + 0x18304]
00451e08  8bce                      MOV ECX,ESI
00451e0a  e881d82f00                CALL 0x0074f690
00451e0f  8bd0                      MOV EDX,EAX
00451e11  eb1e                      JMP 0x00451e31
00451e13  a17816c700                MOV EAX,[0x00c71678]
00451e18  83b80c83010002            CMP dword ptr [EAX + 0x1830c],0x2
00451e1f  7507                      JNZ 0x00451e28
00451e21  b923000000                MOV ECX,0x23
00451e26  eb17                      JMP 0x00451e3f
00451e28  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00451e2e  8b5604                    MOV EDX,dword ptr [ESI + 0x4]
00451e31  8b0e                      MOV ECX,dword ptr [ESI]
00451e33  6aff                      PUSH -0x1
00451e35  e8f6b13d00                CALL 0x0082d030
00451e3a  8bc8                      MOV ECX,EAX
00451e3c  83c404                    ADD ESP,0x4
00451e3f  83f91c                    CMP ECX,0x1c
00451e42  b8183cc300                MOV EAX,0xc33c18
00451e47  b92439c300                MOV ECX,0xc33924
00451e4c  0f45c1                    CMOVNZ EAX,ECX
00451e4f  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
00451e55  81c1f0000000              ADD ECX,0xf0
00451e5b  3bc8                      CMP ECX,EAX
00451e5d  741e                      JZ 0x00451e7d
00451e5f  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00451e62  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00451e65  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
00451e69  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00451e6d  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00451e72  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00451e77  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00451e7a  894128                    MOV dword ptr [ECX + 0x28],EAX
00451e7d  8b8530ffffff              MOV EAX,dword ptr [EBP + 0xffffff30]
00451e83  40                        INC EAX
00451e84  898530ffffff              MOV dword ptr [EBP + 0xffffff30],EAX
00451e8a  83f806                    CMP EAX,0x6
00451e8d  0f8cedfaffff              JL 0x00451980
00451e93  8b8fa40b0000              MOV ECX,dword ptr [EDI + 0xba4]
00451e99  8d4101                    LEA EAX,[ECX + 0x1]
00451e9c  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
00451ea2  e999f6ffff                JMP 0x00451540
00451ea7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00451eaa  85f6                      TEST ESI,ESI
00451eac  744d                      JZ 0x00451efb
00451eae  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00451eb2  8bc6                      MOV EAX,ESI
00451eb4  7202                      JC 0x00451eb8
00451eb6  8b06                      MOV EAX,dword ptr [ESI]
00451eb8  b968d5b100                MOV ECX,0xb1d568
00451ebd  0f1f00                    NOP dword ptr [EAX]
00451ec0  8a10                      MOV DL,byte ptr [EAX]
00451ec2  3a11                      CMP DL,byte ptr [ECX]
00451ec4  751a                      JNZ 0x00451ee0
00451ec6  84d2                      TEST DL,DL
00451ec8  7412                      JZ 0x00451edc
00451eca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00451ecd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00451ed0  750e                      JNZ 0x00451ee0
00451ed2  83c002                    ADD EAX,0x2
00451ed5  83c102                    ADD ECX,0x2
00451ed8  84d2                      TEST DL,DL
00451eda  75e4                      JNZ 0x00451ec0
00451edc  33c0                      XOR EAX,EAX
00451ede  eb05                      JMP 0x00451ee5
00451ee0  1bc0                      SBB EAX,EAX
00451ee2  83c801                    OR EAX,0x1
00451ee5  85c0                      TEST EAX,EAX
00451ee7  7512                      JNZ 0x00451efb
00451ee9  384634                    CMP byte ptr [ESI + 0x34],AL
00451eec  742e                      JZ 0x00451f1c
00451eee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00451ef4  8d7748                    LEA ESI,[EDI + 0x48]
00451ef7  7523                      JNZ 0x00451f1c
00451ef9  eb03                      JMP 0x00451efe
00451efb  8d7748                    LEA ESI,[EDI + 0x48]
00451efe  6a01                      PUSH 0x1
00451f00  6868d5b100                PUSH 0xb1d568
00451f05  8bce                      MOV ECX,ESI
00451f07  e8c486fbff                CALL 0x0040a5d0
00451f0c  84c0                      TEST AL,AL
00451f0e  740c                      JZ 0x00451f1c
00451f10  8d4e30                    LEA ECX,[ESI + 0x30]
00451f13  e89882fbff                CALL 0x0040a1b0
00451f18  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00451f1c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00451f20  0f8481040000              JZ 0x004523a7
00451f26  6860d5b100                PUSH 0xb1d560
00451f2b  8d4f78                    LEA ECX,[EDI + 0x78]
00451f2e  e89d8efbff                CALL 0x0040add0
00451f33  84c0                      TEST AL,AL
00451f35  0f8444020000              JZ 0x0045217f
00451f3b  51                        PUSH ECX
00451f3c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00451f43  6a00                      PUSH 0x0
00451f45  6a02                      PUSH 0x2
00451f47  51                        PUSH ECX
00451f48  c704240000803f            MOV dword ptr [ESP],0x3f800000
00451f4f  8bcf                      MOV ECX,EDI
00451f51  682f010000                PUSH 0x12f
00451f56  e8454c2800                CALL 0x006d6ba0
00451f5b  51                        PUSH ECX
00451f5c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00451f63  6a00                      PUSH 0x0
00451f65  6a02                      PUSH 0x2
00451f67  51                        PUSH ECX
00451f68  c704240000803f            MOV dword ptr [ESP],0x3f800000
00451f6f  8bcf                      MOV ECX,EDI
00451f71  68da010000                PUSH 0x1da
00451f76  e8254c2800                CALL 0x006d6ba0
00451f7b  e8e0cf2900                CALL 0x006eef60
00451f80  50                        PUSH EAX
00451f81  6a00                      PUSH 0x0
00451f83  6a00                      PUSH 0x0
00451f85  6840b6c700                PUSH 0xc7b640
00451f8a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00451f90  51                        PUSH ECX
00451f91  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00451f97  6884000000                PUSH 0x84
00451f9c  68e8030000                PUSH 0x3e8
00451fa1  e87a6bfdff                CALL 0x00428b20
00451fa6  8bc8                      MOV ECX,EAX
00451fa8  8b10                      MOV EDX,dword ptr [EAX]
00451faa  ff520c                    CALL dword ptr [EDX + 0xc]
00451fad  8bcf                      MOV ECX,EDI
00451faf  e88cc82600                CALL 0x006be840
00451fb4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00451fbc  8bf0                      MOV ESI,EAX
00451fbe  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
00451fc6  f30f590dbca0ba00          MULSS XMM1,dword ptr [0x00baa0bc]
00451fce  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00451fd6  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
00451fde  f30f5915bca0ba00          MULSS XMM2,dword ptr [0x00baa0bc]
00451fe6  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
00451fee  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00451ff6  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00451ffe  f30f59c0                  MULSS XMM0,XMM0
00452002  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0045200a  f30f59c9                  MULSS XMM1,XMM1
0045200e  f30f58c1                  ADDSS XMM0,XMM1
00452012  e8393afeff                CALL 0x00435a50
00452017  f30f108d2cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff2c]
0045201f  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00452025  f30f109510ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff10]
0045202d  83ec0c                    SUB ESP,0xc
00452030  f30f109e3c030000          MOVSS XMM3,dword ptr [ESI + 0x33c]
00452038  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0045203e  f30f59c8                  MULSS XMM1,XMM0
00452042  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0045204a  f30f59d0                  MULSS XMM2,XMM0
0045204e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00452056  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0045205e  f30f58d9                  ADDSS XMM3,XMM1
00452062  c704240000a041            MOV dword ptr [ESP],0x41a00000
00452069  f30f58c2                  ADDSS XMM0,XMM2
0045206d  50                        PUSH EAX
0045206e  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00452074  f30f119d18ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM3
0045207c  0f57db                    XORPS XMM3,XMM3
0045207f  50                        PUSH EAX
00452080  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
00452088  e8c30e3c00                CALL 0x00812f50
0045208d  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
00452095  8db73c030000              LEA ESI,[EDI + 0x33c]
0045209b  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004520a0  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
004520a8  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
004520ac  0f28c1                    MOVAPS XMM0,XMM1
004520af  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
004520b7  f30f59c1                  MULSS XMM0,XMM1
004520bb  0f28ca                    MOVAPS XMM1,XMM2
004520be  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
004520c6  f30f59ca                  MULSS XMM1,XMM2
004520ca  f30f58c1                  ADDSS XMM0,XMM1
004520ce  e87d39feff                CALL 0x00435a50
004520d3  80bd37ffffff00            CMP byte ptr [EBP + 0xffffff37],0x0
004520da  f30f109d30ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff30]
004520e2  f30f10a53cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff3c]
004520ea  0f28d3                    MOVAPS XMM2,XMM3
004520ed  0f28cc                    MOVAPS XMM1,XMM4
004520f0  740a                      JZ 0x004520fc
004520f2  f30f102d5caaba00          MOVSS XMM5,dword ptr [0x00baaa5c]
004520fa  eb08                      JMP 0x00452104
004520fc  f30f102dd4aaba00          MOVSS XMM5,dword ptr [0x00baaad4]
00452104  0f2fc5                    COMISS XMM0,XMM5
00452107  761a                      JBE 0x00452123
00452109  0f57f6                    XORPS XMM6,XMM6
0045210c  0f2fc6                    COMISS XMM0,XMM6
0045210f  7612                      JBE 0x00452123
00452111  0f28cd                    MOVAPS XMM1,XMM5
00452114  f30f5ec8                  DIVSS XMM1,XMM0
00452118  0f28d1                    MOVAPS XMM2,XMM1
0045211b  f30f59cc                  MULSS XMM1,XMM4
0045211f  f30f59d3                  MULSS XMM2,XMM3
00452123  f30f5816                  ADDSS XMM2,dword ptr [ESI]
00452127  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
0045212c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00452134  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0045213c  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00452144  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0045214c  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
00452150  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00452155  f30f5915e4a0ba00          MULSS XMM2,dword ptr [0x00baa0e4]
0045215d  f30f590de4a0ba00          MULSS XMM1,dword ptr [0x00baa0e4]
00452165  f30f1197b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM2
0045216d  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
00452175  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0045217f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00452183  0f841e020000              JZ 0x004523a7
00452189  6874d5b100                PUSH 0xb1d574
0045218e  8d4f78                    LEA ECX,[EDI + 0x78]
00452191  e83a8cfbff                CALL 0x0040add0
00452196  84c0                      TEST AL,AL
00452198  0f8409020000              JZ 0x004523a7
0045219e  51                        PUSH ECX
0045219f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004521a6  6a00                      PUSH 0x0
004521a8  6a02                      PUSH 0x2
004521aa  51                        PUSH ECX
004521ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
004521b2  8bcf                      MOV ECX,EDI
004521b4  682f010000                PUSH 0x12f
004521b9  e8e2492800                CALL 0x006d6ba0
004521be  51                        PUSH ECX
004521bf  c704240000803f            MOV dword ptr [ESP],0x3f800000
004521c6  6a00                      PUSH 0x0
004521c8  6a02                      PUSH 0x2
004521ca  51                        PUSH ECX
004521cb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004521d2  8bcf                      MOV ECX,EDI
004521d4  6a30                      PUSH 0x30
004521d6  e8c5492800                CALL 0x006d6ba0
004521db  e880cd2900                CALL 0x006eef60
004521e0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004521e6  8db73c030000              LEA ESI,[EDI + 0x33c]
004521ec  50                        PUSH EAX
004521ed  6a00                      PUSH 0x0
004521ef  6a00                      PUSH 0x0
004521f1  6840b6c700                PUSH 0xc7b640
004521f6  56                        PUSH ESI
004521f7  6884000000                PUSH 0x84
004521fc  68e8030000                PUSH 0x3e8
00452201  e81a69fdff                CALL 0x00428b20
00452206  8bc8                      MOV ECX,EAX
00452208  8b10                      MOV EDX,dword ptr [EAX]
0045220a  ff520c                    CALL dword ptr [EDX + 0xc]
0045220d  80bd37ffffff00            CMP byte ptr [EBP + 0xffffff37],0x0
00452214  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0045221c  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00452224  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0045222c  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00452234  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0045223e  747f                      JZ 0x004522bf
00452240  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00452246  e8e5ccfeff                CALL 0x0043ef30
0045224b  51                        PUSH ECX
0045224c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00452252  e819622e00                CALL 0x00738470
00452257  33c9                      XOR ECX,ECX
00452259  c78518ffffff00002041      MOV dword ptr [EBP + 0xffffff18],0x41200000
00452263  83f81c                    CMP EAX,0x1c
00452266  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
00452270  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00452276  50                        PUSH EAX
00452277  0f95c1                    SETNZ CL
0045227a  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00452280  6a06                      PUSH 0x6
00452282  83c103                    ADD ECX,0x3
00452285  50                        PUSH EAX
00452286  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
00452289  8bcf                      MOV ECX,EDI
0045228b  56                        PUSH ESI
0045228c  e84f902700                CALL 0x006cb2e0
00452291  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00452297  c78518ffffff00008040      MOV dword ptr [EBP + 0xffffff18],0x40800000
004522a1  50                        PUSH EAX
004522a2  6a07                      PUSH 0x7
004522a4  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004522aa  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
004522b4  50                        PUSH EAX
004522b5  56                        PUSH ESI
004522b6  8bcf                      MOV ECX,EDI
004522b8  e823902700                CALL 0x006cb2e0
004522bd  eb0a                      JMP 0x004522c9
004522bf  c7871004000008000000      MOV dword ptr [EDI + 0x410],0x8
004522c9  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004522cf  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
004522d5  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
004522dd  6a08                      PUSH 0x8
004522df  56                        PUSH ESI
004522e0  8d8918120000              LEA ECX,[ECX + 0x1218]
004522e6  50                        PUSH EAX
004522e7  e8a484fcff                CALL 0x0041a790
004522ec  33c9                      XOR ECX,ECX
004522ee  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004522f5  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
004522fb  398d08ffffff              CMP dword ptr [EBP + 0xffffff08],ECX
00452301  765f                      JBE 0x00452362
00452303  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
00452309  6a00                      PUSH 0x0
0045230b  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
0045230e  8bce                      MOV ECX,ESI
00452310  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
00452316  e845a22500                CALL 0x006ac560
0045231b  84c0                      TEST AL,AL
0045231d  742e                      JZ 0x0045234d
0045231f  8b06                      MOV EAX,dword ptr [ESI]
00452321  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
00452327  57                        PUSH EDI
00452328  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0045232b  e8e0effdff                CALL 0x00431310
00452330  6a1e                      PUSH 0x1e
00452332  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00452338  50                        PUSH EAX
00452339  6a00                      PUSH 0x0
0045233b  6a04                      PUSH 0x4
0045233d  51                        PUSH ECX
0045233e  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
00452344  c7042400000c42            MOV dword ptr [ESP],0x420c0000
0045234b  ffd6                      CALL ESI
0045234d  8b8d30ffffff              MOV ECX,dword ptr [EBP + 0xffffff30]
00452353  41                        INC ECX
00452354  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
0045235a  3b8d08ffffff              CMP ECX,dword ptr [EBP + 0xffffff08]
00452360  72a1                      JC 0x00452303
00452362  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00452368  6a08                      PUSH 0x8
0045236a  e801132b00                CALL 0x00703670
0045236f  ff8fa40b0000              DEC dword ptr [EDI + 0xba4]
00452375  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0045237c  80bdfcfeffff00            CMP byte ptr [EBP + 0xfffffefc],0x0
00452383  7522                      JNZ 0x004523a7
00452385  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0045238c  b101                      MOV CL,0x1
0045238e  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
00452394  6a00                      PUSH 0x0
00452396  6a00                      PUSH 0x0
00452398  e813256100                CALL 0x00a648b0
0045239d  83c408                    ADD ESP,0x8
004523a0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004523a7  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004523af  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004523b6  9f                        LAHF
004523b7  f6c444                    TEST AH,0x44
004523ba  7a2f                      JP 0x004523eb
004523bc  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004523c4  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004523cb  9f                        LAHF
004523cc  f6c444                    TEST AH,0x44
004523cf  7a1a                      JP 0x004523eb
004523d1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004523d9  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004523e1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004523e9  eb40                      JMP 0x0045242b
004523eb  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
004523f3  f30f5915e0a3ba00          MULSS XMM2,dword ptr [0x00baa3e0]
004523fb  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
00452403  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
0045240b  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00452413  f30f5eca                  DIVSS XMM1,XMM2
00452417  f30f5ec2                  DIVSS XMM0,XMM2
0045241b  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00452423  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0045242b  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00452431  85c0                      TEST EAX,EAX
00452433  7e51                      JLE 0x00452486
00452435  48                        DEC EAX
00452436  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0045243c  898710040000              MOV dword ptr [EDI + 0x410],EAX
00452442  e8e9cafeff                CALL 0x0043ef30
00452447  51                        PUSH ECX
00452448  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045244e  e81d602e00                CALL 0x00738470
00452453  33c9                      XOR ECX,ECX
00452455  83f81c                    CMP EAX,0x1c
00452458  0f95c1                    SETNZ CL
0045245b  83c103                    ADD ECX,0x3
0045245e  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
00452461  e8faca2900                CALL 0x006eef60
00452466  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0045246c  83e001                    AND EAX,0x1
0045246f  51                        PUSH ECX
00452470  51                        PUSH ECX
00452471  c7042400000000            MOV dword ptr [ESP],0x0
00452478  40                        INC EAX
00452479  6840b6c700                PUSH 0xc7b640
0045247e  50                        PUSH EAX
0045247f  8bcf                      MOV ECX,EDI
00452481  e84aa92700                CALL 0x006ccdd0
00452486  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
0045248d  7e2d                      JLE 0x004524bc
0045248f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00452493  7436                      JZ 0x004524cb
00452495  68dcd2b100                PUSH 0xb1d2dc
0045249a  8d4f78                    LEA ECX,[EDI + 0x78]
0045249d  e82e89fbff                CALL 0x0040add0
004524a2  84c0                      TEST AL,AL
004524a4  7416                      JZ 0x004524bc
004524a6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004524aa  741f                      JZ 0x004524cb
004524ac  f30f100d70a8ba00          MOVSS XMM1,dword ptr [0x00baa870]
004524b4  8d4f78                    LEA ECX,[EDI + 0x78]
004524b7  e84469fbff                CALL 0x00408e00
004524bc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004524c0  7409                      JZ 0x004524cb
004524c2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004524c9  7514                      JNZ 0x004524df
004524cb  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004524d5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004524df  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004524e5  8db73c030000              LEA ESI,[EDI + 0x33c]
004524eb  83ec0c                    SUB ESP,0xc
004524ee  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004524f4  0f57db                    XORPS XMM3,XMM3
004524f7  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004524fd  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00452505  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045250d  c7042400002042            MOV dword ptr [ESP],0x42200000
00452514  56                        PUSH ESI
00452515  50                        PUSH EAX
00452516  e8350a3c00                CALL 0x00812f50
0045251b  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00452521  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00452525  f30f1106                  MOVSS dword ptr [ESI],XMM0
00452529  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045252c  894604                    MOV dword ptr [ESI + 0x4],EAX
0045252f  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
00452535  0f2e411c                  UCOMISS XMM0,dword ptr [ECX + 0x1c]
00452539  9f                        LAHF
0045253a  f6c444                    TEST AH,0x44
0045253d  7a10                      JP 0x0045254f
0045253f  c78760030000000080bf      MOV dword ptr [EDI + 0x360],0xbf800000
00452549  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
0045254f  0f2e4114                  UCOMISS XMM0,dword ptr [ECX + 0x14]
00452553  9f                        LAHF
00452554  f6c444                    TEST AH,0x44
00452557  7a10                      JP 0x00452569
00452559  c787600300000000803f      MOV dword ptr [EDI + 0x360],0x3f800000
00452563  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
00452569  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00452571  0f2e4920                  UCOMISS XMM1,dword ptr [ECX + 0x20]
00452575  9f                        LAHF
00452576  f6c444                    TEST AH,0x44
00452579  7a10                      JP 0x0045258b
0045257b  c78764030000000080bf      MOV dword ptr [EDI + 0x364],0xbf800000
00452585  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
0045258b  f30f104118                MOVSS XMM0,dword ptr [ECX + 0x18]
00452590  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
00452598  0f2ec8                    UCOMISS XMM1,XMM0
0045259b  9f                        LAHF
0045259c  f6c444                    TEST AH,0x44
0045259f  7a0a                      JP 0x004525ab
004525a1  c787640300000000803f      MOV dword ptr [EDI + 0x364],0x3f800000
004525ab  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004525b1  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004525b7  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
004525bd  8bc1                      MOV EAX,ECX
004525bf  2500020000                AND EAX,0x200
004525c4  83c800                    OR EAX,0x0
004525c7  7453                      JZ 0x0045261c
004525c9  81e100010000              AND ECX,0x100
004525cf  83c900                    OR ECX,0x0
004525d2  7548                      JNZ 0x0045261c
004525d4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004525dc  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004525e4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004525ec  394f2c                    CMP dword ptr [EDI + 0x2c],ECX
004525ef  7516                      JNZ 0x00452607
004525f1  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004525f5  7510                      JNZ 0x00452607
004525f7  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004525ff  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00452607  6a00                      PUSH 0x0
00452609  8d8f14040000              LEA ECX,[EDI + 0x414]
0045260f  e8ec3c3900                CALL 0x007e6300
00452614  0f57e4                    XORPS XMM4,XMM4
00452617  e9c3010000                JMP 0x004527df
0045261c  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00452624  0f2f0520a1ba00            COMISS XMM0,dword ptr [0x00baa120]
0045262b  f30f102d50adba00          MOVSS XMM5,dword ptr [0x00baad50]
00452633  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0045263b  7205                      JC 0x00452642
0045263d  0f28c8                    MOVAPS XMM1,XMM0
00452640  eb03                      JMP 0x00452645
00452642  0f28cd                    MOVAPS XMM1,XMM5
00452645  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0045264d  0f57e4                    XORPS XMM4,XMM4
00452650  0f2fdc                    COMISS XMM3,XMM4
00452653  7603                      JBE 0x00452658
00452655  0f28e8                    MOVAPS XMM5,XMM0
00452658  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
00452660  f30f5915a4a3ba00          MULSS XMM2,dword ptr [0x00baa3a4]
00452668  f30f592dd0a2ba00          MULSS XMM5,dword ptr [0x00baa2d0]
00452670  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00452678  0f2ed4                    UCOMISS XMM2,XMM4
0045267b  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
00452683  9f                        LAHF
00452684  f6c444                    TEST AH,0x44
00452687  7b34                      JNP 0x004526bd
00452689  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00452691  f30f59e8                  MULSS XMM5,XMM0
00452695  f30f59c8                  MULSS XMM1,XMM0
00452699  f30f5eea                  DIVSS XMM5,XMM2
0045269d  f30f5eca                  DIVSS XMM1,XMM2
004526a1  f30f58eb                  ADDSS XMM5,XMM3
004526a5  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004526ad  f30f11af60030000          MOVSS dword ptr [EDI + 0x360],XMM5
004526b5  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004526bd  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004526c1  7519                      JNZ 0x004526dc
004526c3  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004526c7  7513                      JNZ 0x004526dc
004526c9  0f28c2                    MOVAPS XMM0,XMM2
004526cc  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004526d4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004526dc  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004526e2  2500080001                AND EAX,0x1000800
004526e7  83c800                    OR EAX,0x0
004526ea  0f84ef000000              JZ 0x004527df
004526f0  8bcf                      MOV ECX,EDI
004526f2  e849c12600                CALL 0x006be840
004526f7  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004526ff  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00452704  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0045270c  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
00452710  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00452717  0f28c1                    MOVAPS XMM0,XMM1
0045271a  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00452722  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00452729  f30f59c1                  MULSS XMM0,XMM1
0045272d  0f28ca                    MOVAPS XMM1,XMM2
00452730  f30f59ca                  MULSS XMM1,XMM2
00452734  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
0045273c  f30f58c1                  ADDSS XMM0,XMM1
00452740  e80b33feff                CALL 0x00435a50
00452745  0f57e4                    XORPS XMM4,XMM4
00452748  0f2fc4                    COMISS XMM0,XMM4
0045274b  7639                      JBE 0x00452786
0045274d  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
00452755  f30f5cc8                  SUBSS XMM1,XMM0
00452759  f30f590d8ca0ba00          MULSS XMM1,dword ptr [0x00baa08c]
00452761  f30f5fcc                  MAXSS XMM1,XMM4
00452765  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0045276d  f30f5ec8                  DIVSS XMM1,XMM0
00452771  0f28d1                    MOVAPS XMM2,XMM1
00452774  f30f598d3cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff3c]
0045277c  f30f599530ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff30]
00452784  eb10                      JMP 0x00452796
00452786  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
0045278e  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00452796  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0045279e  0f2edc                    UCOMISS XMM3,XMM4
004527a1  9f                        LAHF
004527a2  f6c444                    TEST AH,0x44
004527a5  7b38                      JNP 0x004527df
004527a7  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004527af  f30f59d0                  MULSS XMM2,XMM0
004527b3  f30f59c8                  MULSS XMM1,XMM0
004527b7  f30f5ed3                  DIVSS XMM2,XMM3
004527bb  f30f5ecb                  DIVSS XMM1,XMM3
004527bf  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004527c7  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004527cf  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004527d7  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004527df  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004527e6  0f84f5010000              JZ 0x004529e1
004527ec  e86fc72900                CALL 0x006eef60
004527f1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004527f7  50                        PUSH EAX
004527f8  6a00                      PUSH 0x0
004527fa  6a00                      PUSH 0x0
004527fc  6840b6c700                PUSH 0xc7b640
00452801  56                        PUSH ESI
00452802  6884000000                PUSH 0x84
00452807  68e8030000                PUSH 0x3e8
0045280c  e80f63fdff                CALL 0x00428b20
00452811  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00452819  8bc8                      MOV ECX,EAX
0045281b  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00452823  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
0045282b  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00452833  8b01                      MOV EAX,dword ptr [ECX]
00452835  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
0045283d  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00452845  ff500c                    CALL dword ptr [EAX + 0xc]
00452848  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
00452850  ba01000000                MOV EDX,0x1
00452855  6a00                      PUSH 0x0
00452857  6a0f                      PUSH 0xf
00452859  b9c0084500                MOV ECX,0x4508c0
0045285e  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00452866  e895861b00                CALL 0x0060af00
0045286b  8b0e                      MOV ECX,dword ptr [ESI]
0045286d  83c408                    ADD ESP,0x8
00452870  8b10                      MOV EDX,dword ptr [EAX]
00452872  89883c030000              MOV dword ptr [EAX + 0x33c],ECX
00452878  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0045287b  898840030000              MOV dword ptr [EAX + 0x340],ECX
00452881  8bc8                      MOV ECX,EAX
00452883  ff520c                    CALL dword ptr [EDX + 0xc]
00452886  e8d5c62900                CALL 0x006eef60
0045288b  33d2                      XOR EDX,EDX
0045288d  b903000000                MOV ECX,0x3
00452892  f7f1                      DIV ECX
00452894  83c202                    ADD EDX,0x2
00452897  899538ffffff              MOV dword ptr [EBP + 0xffffff38],EDX
0045289d  85d2                      TEST EDX,EDX
0045289f  0f8e4d010000              JLE 0x004529f2
004528a5  e8b6c62900                CALL 0x006eef60
004528aa  660f6ec0                  MOVD XMM0,EAX
004528ae  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004528b2  c1e81f                    SHR EAX,0x1f
004528b5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004528be  660f5ac0                  CVTPD2PS XMM0,XMM0
004528c2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004528ca  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004528d2  f30f58c0                  ADDSS XMM0,XMM0
004528d6  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
004528de  e87dc62900                CALL 0x006eef60
004528e3  660f6ec0                  MOVD XMM0,EAX
004528e7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004528eb  c1e81f                    SHR EAX,0x1f
004528ee  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004528f7  660f5ac0                  CVTPD2PS XMM0,XMM0
004528fb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00452903  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0045290b  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00452913  e828acfcff                CALL 0x0041d540
00452918  f30f59853cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff3c]
00452920  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
00452928  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0045292c  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00452934  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
0045293c  e8dfabfcff                CALL 0x0041d520
00452941  f30f59853cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff3c]
00452949  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0045294f  83ec0c                    SUB ESP,0xc
00452952  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
00452958  f30f101d84a7ba00          MOVSS XMM3,dword ptr [0x00baa784]
00452960  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
00452968  c74424080000a040          MOV dword ptr [ESP + 0x8],0x40a00000
00452970  c74424040000a040          MOV dword ptr [ESP + 0x4],0x40a00000
00452978  c704240000a040            MOV dword ptr [ESP],0x40a00000
0045297f  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00452987  50                        PUSH EAX
00452988  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0045298e  50                        PUSH EAX
0045298f  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00452997  e8b4053c00                CALL 0x00812f50
0045299c  f30f101514aeba00          MOVSS XMM2,dword ptr [0x00baae14]
004529a4  8bd7                      MOV EDX,EDI
004529a6  6a00                      PUSH 0x0
004529a8  8bce                      MOV ECX,ESI
004529aa  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004529ae  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
004529b6  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004529bb  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
004529c1  50                        PUSH EAX
004529c2  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
004529ca  e8f19a1000                CALL 0x0055c4c0
004529cf  83c408                    ADD ESP,0x8
004529d2  83ad38ffffff01            SUB dword ptr [EBP + 0xffffff38],0x1
004529d9  0f85c6feffff              JNZ 0x004528a5
004529df  eb11                      JMP 0x004529f2
004529e1  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
004529e9  0f2fc4                    COMISS XMM0,XMM4
004529ec  0f8694010000              JBE 0x00452b86
004529f2  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
004529f8  33c9                      XOR ECX,ECX
004529fa  898d38ffffff              MOV dword ptr [EBP + 0xffffff38],ECX
00452a00  398864120000              CMP dword ptr [EAX + 0x1264],ECX
00452a06  0f867a010000              JBE 0x00452b86
00452a0c  0f1f4000                  NOP dword ptr [EAX]
00452a10  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00452a16  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00452a19  817e282a030000            CMP dword ptr [ESI + 0x28],0x32a
00452a20  0f8547010000              JNZ 0x00452b6d
00452a26  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
00452a2c  8d96bc030000              LEA EDX,[ESI + 0x3bc]
00452a32  3bc7                      CMP EAX,EDI
00452a34  0f8533010000              JNZ 0x00452b6d
00452a3a  85c0                      TEST EAX,EAX
00452a3c  741e                      JZ 0x00452a5c
00452a3e  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
00452a44  89952cffffff              MOV dword ptr [EBP + 0xffffff2c],EDX
00452a4a  51                        PUSH ECX
00452a4b  8d88cc030000              LEA ECX,[EAX + 0x3cc]
00452a51  e8bac70700                CALL 0x004cf210
00452a56  8d96bc030000              LEA EDX,[ESI + 0x3bc]
00452a5c  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00452a64  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
00452a6c  c70200000000              MOV dword ptr [EDX],0x0
00452a72  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00452a7a  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00452a82  0f28c1                    MOVAPS XMM0,XMM1
00452a85  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
00452a8d  f30f59c1                  MULSS XMM0,XMM1
00452a91  0f28ca                    MOVAPS XMM1,XMM2
00452a94  f30f59ca                  MULSS XMM1,XMM2
00452a98  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00452aa0  f30f58c1                  ADDSS XMM0,XMM1
00452aa4  e8a72ffeff                CALL 0x00435a50
00452aa9  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
00452ab1  0f57e4                    XORPS XMM4,XMM4
00452ab4  0f2fc4                    COMISS XMM0,XMM4
00452ab7  f30f109d3cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff3c]
00452abf  7614                      JBE 0x00452ad5
00452ac1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00452ac9  f30f5ec8                  DIVSS XMM1,XMM0
00452acd  f30f59d1                  MULSS XMM2,XMM1
00452ad1  f30f59d9                  MULSS XMM3,XMM1
00452ad5  f30f108e6c030000          MOVSS XMM1,dword ptr [ESI + 0x36c]
00452add  f30f59950cffffff          MULSS XMM2,dword ptr [EBP + 0xffffff0c]
00452ae5  f30f599d0cffffff          MULSS XMM3,dword ptr [EBP + 0xffffff0c]
00452aed  0f2ecc                    UCOMISS XMM1,XMM4
00452af0  9f                        LAHF
00452af1  f6c444                    TEST AH,0x44
00452af4  7b38                      JNP 0x00452b2e
00452af6  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00452afe  f30f59d0                  MULSS XMM2,XMM0
00452b02  f30f59d8                  MULSS XMM3,XMM0
00452b06  f30f5ed1                  DIVSS XMM2,XMM1
00452b0a  f30f5ed9                  DIVSS XMM3,XMM1
00452b0e  f30f589660030000          ADDSS XMM2,dword ptr [ESI + 0x360]
00452b16  f30f589e64030000          ADDSS XMM3,dword ptr [ESI + 0x364]
00452b1e  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
00452b26  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
00452b2e  f30f108e84030000          MOVSS XMM1,dword ptr [ESI + 0x384]
00452b36  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00452b3e  c786b00b000000000000      MOV dword ptr [ESI + 0xbb0],0x0
00452b48  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
00452b50  0f2fc1                    COMISS XMM0,XMM1
00452b53  7706                      JA 0x00452b5b
00452b55  f30f10c0                  MOVSS XMM0,XMM0
00452b59  eb04                      JMP 0x00452b5f
00452b5b  f30f10c1                  MOVSS XMM0,XMM1
00452b5f  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
00452b65  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
00452b6d  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
00452b73  41                        INC ECX
00452b74  898d38ffffff              MOV dword ptr [EBP + 0xffffff38],ECX
00452b7a  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
00452b80  0f828afeffff              JC 0x00452a10
00452b86  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00452b89  64890d00000000            MOV dword ptr FS:[0x0],ECX
00452b90  59                        POP ECX
00452b91  5f                        POP EDI
00452b92  5e                        POP ESI
00452b93  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00452b96  33cd                      XOR ECX,EBP
00452b98  e88ec56900                CALL 0x00aef12b
00452b9d  8be5                      MOV ESP,EBP
00452b9f  5d                        POP EBP
00452ba0  8be3                      MOV ESP,EBX
00452ba2  5b                        POP EBX
00452ba3  c3                        RET
