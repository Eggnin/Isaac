; J460 NPC AI 0x0047d8a0 AI_0047d8a0
; types=68
; identities=68.0.0,68.1.0,68.10.0,68.11.0
; entry=0047d8a0
0047d8a0  53                        PUSH EBX
0047d8a1  8bdc                      MOV EBX,ESP
0047d8a3  83ec08                    SUB ESP,0x8
0047d8a6  83e4f8                    AND ESP,0xfffffff8
0047d8a9  83c404                    ADD ESP,0x4
0047d8ac  55                        PUSH EBP
0047d8ad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0047d8b0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0047d8b4  8bec                      MOV EBP,ESP
0047d8b6  6aff                      PUSH -0x1
0047d8b8  68c52baf00                PUSH 0xaf2bc5
0047d8bd  64a100000000              MOV EAX,FS:[0x0]
0047d8c3  50                        PUSH EAX
0047d8c4  53                        PUSH EBX
0047d8c5  81ec38020000              SUB ESP,0x238
0047d8cb  a1b493bf00                MOV EAX,[0x00bf93b4]
0047d8d0  33c5                      XOR EAX,EBP
0047d8d2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0047d8d5  56                        PUSH ESI
0047d8d6  57                        PUSH EDI
0047d8d7  50                        PUSH EAX
0047d8d8  8d45f4                    LEA EAX,[EBP + -0xc]
0047d8db  64a300000000              MOV FS:[0x0],EAX
0047d8e1  8bf9                      MOV EDI,ECX
0047d8e3  89bdecfdffff              MOV dword ptr [EBP + 0xfffffdec],EDI
0047d8e9  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0047d8f1  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0047d8f9  2bc8                      SUB ECX,EAX
0047d8fb  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0047d902  898de8fdffff              MOV dword ptr [EBP + 0xfffffde8],ECX
0047d908  0f8506010000              JNZ 0x0047da14
0047d90e  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0047d911  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047d91b  83f80a                    CMP EAX,0xa
0047d91e  7235                      JC 0x0047d955
0047d920  838f6801000001            OR dword ptr [EDI + 0x168],0x1
0047d927  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
0047d92e  837f3063                  CMP dword ptr [EDI + 0x30],0x63
0047d932  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0047d939  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0047d943  0f85a81c0000              JNZ 0x0047f5f1
0047d949  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
0047d950  e99c1c0000                JMP 0x0047f5f1
0047d955  83f801                    CMP EAX,0x1
0047d958  0f85931c0000              JNZ 0x0047f5f1
0047d95e  a17816c700                MOV EAX,[0x00c71678]
0047d963  83b88465020020            CMP dword ptr [EAX + 0x26584],0x20
0047d96a  0f85811c0000              JNZ 0x0047f5f1
0047d970  833806                    CMP dword ptr [EAX],0x6
0047d973  0f85781c0000              JNZ 0x0047f5f1
0047d979  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047d97f  83780805                  CMP dword ptr [EAX + 0x8],0x5
0047d983  0f85681c0000              JNZ 0x0047f5f1
0047d989  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0047d98c  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
0047d98f  0f845c1c0000              JZ 0x0047f5f1
0047d995  e8c6152700                CALL 0x006eef60
0047d99a  8b7f30                    MOV EDI,dword ptr [EDI + 0x30]
0047d99d  8bf0                      MOV ESI,EAX
0047d99f  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
0047d9a5  50                        PUSH EAX
0047d9a6  e8c5162000                CALL 0x0067f070
0047d9ab  8b8decfdffff              MOV ECX,dword ptr [EBP + 0xfffffdec]
0047d9b1  83c404                    ADD ESP,0x4
0047d9b4  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0047d9b9  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0047d9bd  8d8160030000              LEA EAX,[ECX + 0x360]
0047d9c3  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0047d9cb  56                        PUSH ESI
0047d9cc  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
0047d9d4  57                        PUSH EDI
0047d9d5  f30f58813c030000          ADDSS XMM0,dword ptr [ECX + 0x33c]
0047d9dd  51                        PUSH ECX
0047d9de  f30f589140030000          ADDSS XMM2,dword ptr [ECX + 0x340]
0047d9e6  50                        PUSH EAX
0047d9e7  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047d9ed  50                        PUSH EAX
0047d9ee  ff712c                    PUSH dword ptr [ECX + 0x2c]
0047d9f1  f30f1185f8fdffff          MOVSS dword ptr [EBP + 0xfffffdf8],XMM0
0047d9f9  ff7128                    PUSH dword ptr [ECX + 0x28]
0047d9fc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047da02  f30f1195fcfdffff          MOVSS dword ptr [EBP + 0xfffffdfc],XMM2
0047da0a  e811b1faff                CALL 0x00428b20
0047da0f  e9dd1b0000                JMP 0x0047f5f1
0047da14  51                        PUSH ECX
0047da15  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047da1b  c7042400000000            MOV dword ptr [ESP],0x0
0047da22  50                        PUSH EAX
0047da23  8bcf                      MOV ECX,EDI
0047da25  e816122400                CALL 0x006bec40
0047da2a  8bcf                      MOV ECX,EDI
0047da2c  e80f0e2400                CALL 0x006be840
0047da31  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
0047da34  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0047da3c  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0047da44  f30f58c0                  ADDSS XMM0,XMM0
0047da48  f30f58c9                  ADDSS XMM1,XMM1
0047da4c  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0047da54  f30f118df4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM1
0047da5c  83fa0a                    CMP EDX,0xa
0047da5f  0f826d020000              JC 0x0047dcd2
0047da65  6a00                      PUSH 0x0
0047da67  68e4dcb100                PUSH 0xb1dce4
0047da6c  8d4f48                    LEA ECX,[EDI + 0x48]
0047da6f  e80cc9f8ff                CALL 0x0040a380
0047da74  837f3063                  CMP dword ptr [EDI + 0x30],0x63
0047da78  7541                      JNZ 0x0047dabb
0047da7a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047da80  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
0047da86  ffb104830100              PUSH dword ptr [ECX + 0x18304]
0047da8c  e82f312c00                CALL 0x00740bc0
0047da91  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
0047da94  d1e8                      SHR EAX,0x1
0047da96  a801                      TEST AL,0x1
0047da98  7534                      JNZ 0x0047dace
0047da9a  8bcf                      MOV ECX,EDI
0047da9c  e87f912500                CALL 0x006d6c20
0047daa1  85c0                      TEST EAX,EAX
0047daa3  7f39                      JG 0x0047dade
0047daa5  a17816c700                MOV EAX,[0x00c71678]
0047daaa  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047dab0  83b8ec11000008            CMP dword ptr [EAX + 0x11ec],0x8
0047dab7  7f25                      JG 0x0047dade
0047dab9  eb13                      JMP 0x0047dace
0047dabb  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0047dac1  85c0                      TEST EAX,EAX
0047dac3  7409                      JZ 0x0047dace
0047dac5  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
0047dacc  7410                      JZ 0x0047dade
0047dace  8d4dc4                    LEA ECX,[EBP + -0x3c]
0047dad1  e89a81fbff                CALL 0x00435c70
0047dad6  8b17                      MOV EDX,dword ptr [EDI]
0047dad8  8bcf                      MOV ECX,EDI
0047dada  50                        PUSH EAX
0047dadb  ff5224                    CALL dword ptr [EDX + 0x24]
0047dade  e87d142700                CALL 0x006eef60
0047dae3  a803                      TEST AL,0x3
0047dae5  7542                      JNZ 0x0047db29
0047dae7  e874142700                CALL 0x006eef60
0047daec  51                        PUSH ECX
0047daed  8bcf                      MOV ECX,EDI
0047daef  660f6ec0                  MOVD XMM0,EAX
0047daf3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047daf7  c1e81f                    SHR EAX,0x1f
0047dafa  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047db03  660f5ac8                  CVTPD2PS XMM1,XMM0
0047db07  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0047db0f  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
0047db17  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
0047db1f  f30f110c24                MOVSS dword ptr [ESP],XMM1
0047db24  e8a7892300                CALL 0x006b64d0
0047db29  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0047db31  e81a7ffbff                CALL 0x00435a50
0047db36  f30f5905b8a2ba00          MULSS XMM0,dword ptr [0x00baa2b8]
0047db3e  0f57d2                    XORPS XMM2,XMM2
0047db41  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
0047db49  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0047db51  0f2fc2                    COMISS XMM0,XMM2
0047db54  f30f1185ecfdffff          MOVSS dword ptr [EBP + 0xfffffdec],XMM0
0047db5c  7609                      JBE 0x0047db67
0047db5e  0f2f97b00b0000            COMISS XMM2,dword ptr [EDI + 0xbb0]
0047db65  732e                      JNC 0x0047db95
0047db67  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0047db6f  0f2fca                    COMISS XMM1,XMM2
0047db72  f30f118de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM1
0047db7a  7650                      JBE 0x0047dbcc
0047db7c  0f2f97b40b0000            COMISS XMM2,dword ptr [EDI + 0xbb4]
0047db83  f30f118de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM1
0047db8b  f30f1185ecfdffff          MOVSS dword ptr [EBP + 0xfffffdec],XMM0
0047db93  7237                      JC 0x0047dbcc
0047db95  e8c6132700                CALL 0x006eef60
0047db9a  33d2                      XOR EDX,EDX
0047db9c  b91f000000                MOV ECX,0x1f
0047dba1  f7f1                      DIV ECX
0047dba3  83ea0f                    SUB EDX,0xf
0047dba6  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
0047dbac  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0047dbb4  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
0047dbbc  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0047dbc4  f30f1185ecfdffff          MOVSS dword ptr [EBP + 0xfffffdec],XMM0
0047dbcc  660f6e87c40b0000          MOVD XMM0,dword ptr [EDI + 0xbc4]
0047dbd4  0f5bc0                    CVTDQ2PS XMM0,XMM0
0047dbd7  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0047dbdf  f30f5e0578aaba00          DIVSS XMM0,dword ptr [0x00baaa78]
0047dbe7  f30f580598a3ba00          ADDSS XMM0,dword ptr [0x00baa398]
0047dbef  f30f1185f4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM0
0047dbf7  e824f9f9ff                CALL 0x0041d520
0047dbfc  f30f108de8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde8]
0047dc04  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0047dc0b  7707                      JA 0x0047dc14
0047dc0d  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0047dc14  f30f108de4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde4]
0047dc1c  f30f59c8                  MULSS XMM1,XMM0
0047dc20  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
0047dc28  f30f118ddcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM1
0047dc30  e80bf9f9ff                CALL 0x0041d540
0047dc35  f30f1095ecfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdec]
0047dc3d  0f57e4                    XORPS XMM4,XMM4
0047dc40  0f2fd4                    COMISS XMM2,XMM4
0047dc43  7707                      JA 0x0047dc4c
0047dc45  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0047dc4c  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0047dc54  f30f591de0a3ba00          MULSS XMM3,dword ptr [0x00baa3e0]
0047dc5c  f30f108de4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde4]
0047dc64  f30f59c8                  MULSS XMM1,XMM0
0047dc68  0f2edc                    UCOMISS XMM3,XMM4
0047dc6b  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
0047dc73  9f                        LAHF
0047dc74  f6c444                    TEST AH,0x44
0047dc77  7b3c                      JNP 0x0047dcb5
0047dc79  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0047dc81  f30f59c8                  MULSS XMM1,XMM0
0047dc85  f30f5ecb                  DIVSS XMM1,XMM3
0047dc89  f30f58ca                  ADDSS XMM1,XMM2
0047dc8d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0047dc95  f30f108ddcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffddc]
0047dc9d  f30f59c8                  MULSS XMM1,XMM0
0047dca1  f30f5ecb                  DIVSS XMM1,XMM3
0047dca5  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0047dcad  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0047dcb5  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
0047dcbb  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
0047dcc1  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
0047dcc7  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
0047dccd  e91f190000                JMP 0x0047f5f1
0047dcd2  83fa01                    CMP EDX,0x1
0047dcd5  7579                      JNZ 0x0047dd50
0047dcd7  395730                    CMP dword ptr [EDI + 0x30],EDX
0047dcda  7542                      JNZ 0x0047dd1e
0047dcdc  0f280510bfba00            MOVAPS XMM0,xmmword ptr [0x00babf10]
0047dce3  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047dce9  0f118550ffffff            MOVUPS xmmword ptr [EBP + 0xffffff50],XMM0
0047dcf0  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
0047dcfa  0f280590c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac090]
0047dd01  0f118560ffffff            MOVUPS xmmword ptr [EBP + 0xffffff60],XMM0
0047dd08  c78574ffffff00000000      MOV dword ptr [EBP + 0xffffff74],0x0
0047dd12  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
0047dd1c  eb08                      JMP 0x0047dd26
0047dd1e  8d4dc0                    LEA ECX,[EBP + -0x40]
0047dd21  e84a94f8ff                CALL 0x00407170
0047dd26  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
0047dd29  0f11857cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM0
0047dd30  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
0047dd34  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
0047dd38  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
0047dd3d  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0047dd40  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0047dd43  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0047dd49  660fd6459c                MOVQ qword ptr [EBP + -0x64],XMM0
0047dd4e  eb2e                      JMP 0x0047dd7e
0047dd50  0f280510bfba00            MOVAPS XMM0,xmmword ptr [0x00babf10]
0047dd57  8d45c0                    LEA EAX,[EBP + -0x40]
0047dd5a  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0047dd5e  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0047dd65  0f2805a0c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac0a0]
0047dd6c  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0047dd70  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0047dd77  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0047dd7e  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
0047dd85  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
0047dd88  0f118550ffffff            MOVUPS xmmword ptr [EBP + 0xffffff50],XMM0
0047dd8f  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
0047dd93  0f118560ffffff            MOVUPS xmmword ptr [EBP + 0xffffff60],XMM0
0047dd9a  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
0047dd9f  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0047dda2  660fd68570ffffff          MOVQ qword ptr [EBP + 0xffffff70],XMM0
0047ddaa  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0047ddb0  743c                      JZ 0x0047ddee
0047ddb2  85d2                      TEST EDX,EDX
0047ddb4  7520                      JNZ 0x0047ddd6
0047ddb6  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0047ddba  751a                      JNZ 0x0047ddd6
0047ddbc  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047ddc4  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0047ddcc  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047ddd4  eb20                      JMP 0x0047ddf6
0047ddd6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047ddde  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0047dde6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047ddee  85d2                      TEST EDX,EDX
0047ddf0  0f85b8000000              JNZ 0x0047deae
0047ddf6  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0047ddfa  0f85ae000000              JNZ 0x0047deae
0047de00  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047de06  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0047de0c  803800                    CMP byte ptr [EAX],0x0
0047de0f  0f8499000000              JZ 0x0047deae
0047de15  8b89f8640200              MOV ECX,dword ptr [ECX + 0x264f8]
0047de1b  2b88f0110000              SUB ECX,dword ptr [EAX + 0x11f0]
0047de21  b84fecc44e                MOV EAX,0x4ec4ec4f
0047de26  f7e9                      IMUL ECX
0047de28  c1fa02                    SAR EDX,0x2
0047de2b  8bc2                      MOV EAX,EDX
0047de2d  c1e81f                    SHR EAX,0x1f
0047de30  03c2                      ADD EAX,EDX
0047de32  6bc00d                    IMUL EAX,EAX,0xd
0047de35  2bc8                      SUB ECX,EAX
0047de37  7575                      JNZ 0x0047deae
0047de39  e822112700                CALL 0x006eef60
0047de3e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047de44  6a00                      PUSH 0x0
0047de46  68acd5c500                PUSH 0xc5d5ac
0047de4b  68dcd5c500                PUSH 0xc5d5dc
0047de50  6a00                      PUSH 0x0
0047de52  50                        PUSH EAX
0047de53  6a00                      PUSH 0x0
0047de55  57                        PUSH EDI
0047de56  6840b6c700                PUSH 0xc7b640
0047de5b  8d873c030000              LEA EAX,[EDI + 0x33c]
0047de61  50                        PUSH EAX
0047de62  6a18                      PUSH 0x18
0047de64  68e8030000                PUSH 0x3e8
0047de69  e8b2acfaff                CALL 0x00428b20
0047de6e  50                        PUSH EAX
0047de6f  e83d2a6700                CALL 0x00af08b1
0047de74  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0047de7c  8bc8                      MOV ECX,EAX
0047de7e  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0047de86  83c414                    ADD ESP,0x14
0047de89  f30f590d54a5ba00          MULSS XMM1,dword ptr [0x00baa554]
0047de91  f30f590554a5ba00          MULSS XMM0,dword ptr [0x00baa554]
0047de99  8b01                      MOV EAX,dword ptr [ECX]
0047de9b  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
0047dea3  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
0047deab  ff500c                    CALL dword ptr [EAX + 0xc]
0047deae  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0047deb4  83c0fc                    ADD EAX,-0x4
0047deb7  83f809                    CMP EAX,0x9
0047deba  0f877b120000              JA 0x0047f13b
0047dec0  ff248510f64700            JMP dword ptr [EAX*0x4 + 0x47f610]
0047dec7  8d8f14040000              LEA ECX,[EDI + 0x414]
0047decd  6a00                      PUSH 0x0
0047decf  e87c873600                CALL 0x007e6650
0047ded4  6a00                      PUSH 0x0
0047ded6  8d4f48                    LEA ECX,[EDI + 0x48]
0047ded9  68e4dcb100                PUSH 0xb1dce4
0047dede  e89dc4f8ff                CALL 0x0040a380
0047dee3  6800000010                PUSH 0x10000000
0047dee8  6a00                      PUSH 0x0
0047deea  8bcf                      MOV ECX,EDI
0047deec  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047def6  e83595f9ff                CALL 0x00417430
0047defb  84c0                      TEST AL,AL
0047defd  7418                      JZ 0x0047df17
0047deff  a17816c700                MOV EAX,[0x00c71678]
0047df04  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047df0a  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0047df0d  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0047df11  0f8524120000              JNZ 0x0047f13b
0047df17  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0047df1b  751c                      JNZ 0x0047df39
0047df1d  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0047df21  7516                      JNZ 0x0047df39
0047df23  e838102700                CALL 0x006eef60
0047df28  33d2                      XOR EDX,EDX
0047df2a  b903000000                MOV ECX,0x3
0047df2f  f7f1                      DIV ECX
0047df31  85d2                      TEST EDX,EDX
0047df33  0f8402120000              JZ 0x0047f13b
0047df39  e822102700                CALL 0x006eef60
0047df3e  33d2                      XOR EDX,EDX
0047df40  b917000000                MOV ECX,0x17
0047df45  f7f1                      DIV ECX
0047df47  85d2                      TEST EDX,EDX
0047df49  750a                      JNZ 0x0047df55
0047df4b  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0047df55  e806102700                CALL 0x006eef60
0047df5a  33d2                      XOR EDX,EDX
0047df5c  b914000000                MOV ECX,0x14
0047df61  f7f1                      DIV ECX
0047df63  85d2                      TEST EDX,EDX
0047df65  751b                      JNZ 0x0047df82
0047df67  e8f40f2700                CALL 0x006eef60
0047df6c  83e001                    AND EAX,0x1
0047df6f  b908000000                MOV ECX,0x8
0047df74  b80d000000                MOV EAX,0xd
0047df79  0f44c1                    CMOVZ EAX,ECX
0047df7c  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0047df82  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0047df86  0f85af110000              JNZ 0x0047f13b
0047df8c  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0047df90  51                        PUSH ECX
0047df91  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0047df98  8d4dc0                    LEA ECX,[EBP + -0x40]
0047df9b  751a                      JNZ 0x0047dfb7
0047df9d  f30f101dd0a1ba00          MOVSS XMM3,dword ptr [0x00baa1d0]
0047dfa5  f30f10152ca2ba00          MOVSS XMM2,dword ptr [0x00baa22c]
0047dfad  f30f100d1ca2ba00          MOVSS XMM1,dword ptr [0x00baa21c]
0047dfb5  eb13                      JMP 0x0047dfca
0047dfb7  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0047dfbf  0f57db                    XORPS XMM3,XMM3
0047dfc2  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0047dfca  e82159faff                CALL 0x004238f0
0047dfcf  50                        PUSH EAX
0047dfd0  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
0047dfd6  e8e591f8ff                CALL 0x004071c0
0047dfdb  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0047dfe3  f30f109dfcfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdfc]
0047dfeb  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
0047dff3  f30f5ccb                  SUBSS XMM1,XMM3
0047dff7  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0047dfff  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
0047e007  f30f10a5f8fdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffdf8]
0047e00f  f30f5c0d04a9ba00          SUBSS XMM1,dword ptr [0x00baa904]
0047e017  f30f5cc8                  SUBSS XMM1,XMM0
0047e01b  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
0047e023  0f54ca                    ANDPS XMM1,XMM2
0047e026  0f2fc1                    COMISS XMM0,XMM1
0047e029  0f862b010000              JBE 0x0047e15a
0047e02f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047e037  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0047e03f  f30f5ccc                  SUBSS XMM1,XMM4
0047e043  f30f5987380c0000          MULSS XMM0,dword ptr [EDI + 0xc38]
0047e04b  0f54ca                    ANDPS XMM1,XMM2
0047e04e  0f2fc8                    COMISS XMM1,XMM0
0047e051  0f8603010000              JBE 0x0047e15a
0047e057  0f57c0                    XORPS XMM0,XMM0
0047e05a  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0047e064  e8b7f4f9ff                CALL 0x0041d520
0047e069  f30f1185f4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM0
0047e071  0f57c0                    XORPS XMM0,XMM0
0047e074  e8c7f4f9ff                CALL 0x0041d540
0047e079  51                        PUSH ECX
0047e07a  c7042400008040            MOV dword ptr [ESP],0x40800000
0047e081  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0047e087  50                        PUSH EAX
0047e088  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
0047e090  8d85e0fdffff              LEA EAX,[EBP + 0xfffffde0]
0047e096  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
0047e09e  8d95f0fdffff              LEA EDX,[EBP + 0xfffffdf0]
0047e0a4  6a0c                      PUSH 0xc
0047e0a6  50                        PUSH EAX
0047e0a7  8bcf                      MOV ECX,EDI
0047e0a9  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
0047e0b1  c785f0fdffff0000a041      MOV dword ptr [EBP + 0xfffffdf0],0x41a00000
0047e0bb  c785f4fdffff0000a0c2      MOV dword ptr [EBP + 0xfffffdf4],0xc2a00000
0047e0c5  e8c6d71800                CALL 0x0060b890
0047e0ca  f30f100508a7ba00          MOVSS XMM0,dword ptr [0x00baa708]
0047e0d2  e849f4f9ff                CALL 0x0041d520
0047e0d7  f30f1185f4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM0
0047e0df  f30f100508a7ba00          MOVSS XMM0,dword ptr [0x00baa708]
0047e0e7  e854f4f9ff                CALL 0x0041d540
0047e0ec  83c40c                    ADD ESP,0xc
0047e0ef  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0047e0f5  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
0047e0fd  8d95f0fdffff              LEA EDX,[EBP + 0xfffffdf0]
0047e103  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
0047e10b  8bcf                      MOV ECX,EDI
0047e10d  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
0047e115  c7042400008040            MOV dword ptr [ESP],0x40800000
0047e11c  50                        PUSH EAX
0047e11d  8d85e0fdffff              LEA EAX,[EBP + 0xfffffde0]
0047e123  c785f0fdffff0000a0c1      MOV dword ptr [EBP + 0xfffffdf0],0xc1a00000
0047e12d  6a0c                      PUSH 0xc
0047e12f  50                        PUSH EAX
0047e130  c785f4fdffff0000a0c2      MOV dword ptr [EBP + 0xfffffdf4],0xc2a00000
0047e13a  e851d71800                CALL 0x0060b890
0047e13f  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
0047e147  83c410                    ADD ESP,0x10
0047e14a  f30f109dfcfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdfc]
0047e152  f30f10a5f8fdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffdf8]
0047e15a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047e162  f30f108ddcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffddc]
0047e16a  f30f5cc4                  SUBSS XMM0,XMM4
0047e16e  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0047e176  f30f5cc1                  SUBSS XMM0,XMM1
0047e17a  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0047e182  0f54c2                    ANDPS XMM0,XMM2
0047e185  0f2fc8                    COMISS XMM1,XMM0
0047e188  0f86ad0f0000              JBE 0x0047f13b
0047e18e  0f2f9f40030000            COMISS XMM3,dword ptr [EDI + 0x340]
0047e195  0f86a00f0000              JBE 0x0047f13b
0047e19b  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0047e1a3  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0047e1ad  e86ef3f9ff                CALL 0x0041d520
0047e1b2  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
0047e1ba  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0047e1c2  e879f3f9ff                CALL 0x0041d540
0047e1c7  51                        PUSH ECX
0047e1c8  c7042400008040            MOV dword ptr [ESP],0x40800000
0047e1cf  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0047e1d5  50                        PUSH EAX
0047e1d6  f30f1185f8fdffff          MOVSS dword ptr [EBP + 0xfffffdf8],XMM0
0047e1de  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047e1e4  f30f1085e4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde4]
0047e1ec  8d95f0fdffff              LEA EDX,[EBP + 0xfffffdf0]
0047e1f2  6a0c                      PUSH 0xc
0047e1f4  50                        PUSH EAX
0047e1f5  8bcf                      MOV ECX,EDI
0047e1f7  f30f1185fcfdffff          MOVSS dword ptr [EBP + 0xfffffdfc],XMM0
0047e1ff  c785f0fdffff00007041      MOV dword ptr [EBP + 0xfffffdf0],0x41700000
0047e209  c785f4fdffff000020c2      MOV dword ptr [EBP + 0xfffffdf4],0xc2200000
0047e213  e878d61800                CALL 0x0060b890
0047e218  f30f1085f8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf8]
0047e220  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0047e226  83c40c                    ADD ESP,0xc
0047e229  f30f1185f8fdffff          MOVSS dword ptr [EBP + 0xfffffdf8],XMM0
0047e231  f30f1085e4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde4]
0047e239  8d95f0fdffff              LEA EDX,[EBP + 0xfffffdf0]
0047e23f  8bcf                      MOV ECX,EDI
0047e241  f30f1185fcfdffff          MOVSS dword ptr [EBP + 0xfffffdfc],XMM0
0047e249  c785f0fdffff000070c1      MOV dword ptr [EBP + 0xfffffdf0],0xc1700000
0047e253  c7042400008040            MOV dword ptr [ESP],0x40800000
0047e25a  50                        PUSH EAX
0047e25b  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047e261  c785f4fdffff000020c2      MOV dword ptr [EBP + 0xfffffdf4],0xc2200000
0047e26b  6a0c                      PUSH 0xc
0047e26d  50                        PUSH EAX
0047e26e  e81dd61800                CALL 0x0060b890
0047e273  83c410                    ADD ESP,0x10
0047e276  e9c00e0000                JMP 0x0047f13b
0047e27b  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047e281  8d7748                    LEA ESI,[EDI + 0x48]
0047e284  85c0                      TEST EAX,EAX
0047e286  7544                      JNZ 0x0047e2cc
0047e288  6a01                      PUSH 0x1
0047e28a  683cd5b100                PUSH 0xb1d53c
0047e28f  8bce                      MOV ECX,ESI
0047e291  e83ac3f8ff                CALL 0x0040a5d0
0047e296  84c0                      TEST AL,AL
0047e298  740f                      JZ 0x0047e2a9
0047e29a  8d4e30                    LEA ECX,[ESI + 0x30]
0047e29d  e80ebff8ff                CALL 0x0040a1b0
0047e2a2  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0047e2a6  8d7748                    LEA ESI,[EDI + 0x48]
0047e2a9  51                        PUSH ECX
0047e2aa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047e2b1  6a00                      PUSH 0x0
0047e2b3  6a02                      PUSH 0x2
0047e2b5  51                        PUSH ECX
0047e2b6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047e2bd  8bcf                      MOV ECX,EDI
0047e2bf  6a0f                      PUSH 0xf
0047e2c1  e8da882500                CALL 0x006d6ba0
0047e2c6  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047e2cc  40                        INC EAX
0047e2cd  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047e2d3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047e2d7  7409                      JZ 0x0047e2e2
0047e2d9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047e2e0  750a                      JNZ 0x0047e2ec
0047e2e2  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047e2ec  68dcd2b100                PUSH 0xb1d2dc
0047e2f1  8bce                      MOV ECX,ESI
0047e2f3  e838cdf8ff                CALL 0x0040b030
0047e2f8  84c0                      TEST AL,AL
0047e2fa  0f843b0e0000              JZ 0x0047f13b
0047e300  51                        PUSH ECX
0047e301  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047e308  6a00                      PUSH 0x0
0047e30a  6a02                      PUSH 0x2
0047e30c  51                        PUSH ECX
0047e30d  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0047e314  8bcf                      MOV ECX,EDI
0047e316  6a30                      PUSH 0x30
0047e318  e883882500                CALL 0x006d6ba0
0047e31d  8d8da8feffff              LEA ECX,[EBP + 0xfffffea8]
0047e323  e8080cfcff                CALL 0x0043ef30
0047e328  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0047e32c  0f8520010000              JNZ 0x0047e452
0047e332  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0047e336  0f86d3000000              JBE 0x0047e40f
0047e33c  be02000000                MOV ESI,0x2
0047e341  8d8d00feffff              LEA ECX,[EBP + 0xfffffe00]
0047e347  e8e40bfcff                CALL 0x0043ef30
0047e34c  50                        PUSH EAX
0047e34d  51                        PUSH ECX
0047e34e  c7042400002041            MOV dword ptr [ESP],0x41200000
0047e355  8bcf                      MOV ECX,EDI
0047e357  6840b6c700                PUSH 0xc7b640
0047e35c  6a01                      PUSH 0x1
0047e35e  e86dea2400                CALL 0x006ccdd0
0047e363  8bd0                      MOV EDX,EAX
0047e365  6a01                      PUSH 0x1
0047e367  6a00                      PUSH 0x0
0047e369  68ff000000                PUSH 0xff
0047e36e  f30f108218040000          MOVSS XMM0,dword ptr [EDX + 0x418]
0047e376  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
0047e37e  8b8a3c040000              MOV ECX,dword ptr [EDX + 0x43c]
0047e384  838a3804000002            OR dword ptr [EDX + 0x438],0x2
0047e38b  898a3c040000              MOV dword ptr [EDX + 0x43c],ECX
0047e391  8d4dc0                    LEA ECX,[EBP + -0x40]
0047e394  c78220040000cdcccc3f      MOV dword ptr [EDX + 0x420],0x3fcccccd
0047e39e  f30f118218040000          MOVSS dword ptr [EDX + 0x418],XMM0
0047e3a6  f30f108214040000          MOVSS XMM0,dword ptr [EDX + 0x414]
0047e3ae  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0047e3b6  6aff                      PUSH -0x1
0047e3b8  51                        PUSH ECX
0047e3b9  8bca                      MOV ECX,EDX
0047e3bb  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
0047e3c3  f30f118214040000          MOVSS dword ptr [EDX + 0x414],XMM0
0047e3cb  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0047e3d2  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0047e3d6  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0047e3dd  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0047e3e4  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0047e3eb  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0047e3f2  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0047e3f6  8b02                      MOV EAX,dword ptr [EDX]
0047e3f8  ff503c                    CALL dword ptr [EAX + 0x3c]
0047e3fb  83ee01                    SUB ESI,0x1
0047e3fe  0f853dffffff              JNZ 0x0047e341
0047e404  8db73c030000              LEA ESI,[EDI + 0x33c]
0047e40a  e9ba000000                JMP 0x0047e4c9
0047e40f  e82c9e2500                CALL 0x006d8240
0047e414  85c0                      TEST EAX,EAX
0047e416  7e1d                      JLE 0x0047e435
0047e418  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
0047e420  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0047e426  50                        PUSH EAX
0047e427  c785fcfdffff00000000      MOV dword ptr [EBP + 0xfffffdfc],0x0
0047e431  6a08                      PUSH 0x8
0047e433  eb77                      JMP 0x0047e4ac
0047e435  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0047e43d  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0047e443  50                        PUSH EAX
0047e444  c785fcfdffff00000000      MOV dword ptr [EBP + 0xfffffdfc],0x0
0047e44e  6a08                      PUSH 0x8
0047e450  eb5a                      JMP 0x0047e4ac
0047e452  0f280500c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac300]
0047e459  0f1185e4feffff            MOVUPS xmmword ptr [EBP + 0xfffffee4],XMM0
0047e460  c785f4fefffff2f0703e      MOV dword ptr [EBP + 0xfffffef4],0x3e70f0f2
0047e46a  c785f8fefffff2f0703e      MOV dword ptr [EBP + 0xfffffef8],0x3e70f0f2
0047e474  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
0047e47e  e8bd9d2500                CALL 0x006d8240
0047e483  85c0                      TEST EAX,EAX
0047e485  7e0a                      JLE 0x0047e491
0047e487  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
0047e48f  eb08                      JMP 0x0047e499
0047e491  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0047e499  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0047e49f  c785fcfdffff00000041      MOV dword ptr [EBP + 0xfffffdfc],0x41000000
0047e4a9  50                        PUSH EAX
0047e4aa  6a09                      PUSH 0x9
0047e4ac  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047e4b2  f30f1185f8fdffff          MOVSS dword ptr [EBP + 0xfffffdf8],XMM0
0047e4ba  50                        PUSH EAX
0047e4bb  8db73c030000              LEA ESI,[EDI + 0x33c]
0047e4c1  8bcf                      MOV ECX,EDI
0047e4c3  56                        PUSH ESI
0047e4c4  e817ce2400                CALL 0x006cb2e0
0047e4c9  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0047e4d1  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047e4d7  50                        PUSH EAX
0047e4d8  56                        PUSH ESI
0047e4d9  8bcf                      MOV ECX,EDI
0047e4db  e8e0812300                CALL 0x006b66c0
0047e4e0  e9560c0000                JMP 0x0047f13b
0047e4e5  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047e4eb  8d7748                    LEA ESI,[EDI + 0x48]
0047e4ee  85c0                      TEST EAX,EAX
0047e4f0  7544                      JNZ 0x0047e536
0047e4f2  6a01                      PUSH 0x1
0047e4f4  68e4e0b100                PUSH 0xb1e0e4
0047e4f9  8bce                      MOV ECX,ESI
0047e4fb  e8d0c0f8ff                CALL 0x0040a5d0
0047e500  84c0                      TEST AL,AL
0047e502  740f                      JZ 0x0047e513
0047e504  8d4e30                    LEA ECX,[ESI + 0x30]
0047e507  e8a4bcf8ff                CALL 0x0040a1b0
0047e50c  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0047e510  8d7748                    LEA ESI,[EDI + 0x48]
0047e513  51                        PUSH ECX
0047e514  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047e51b  6a00                      PUSH 0x0
0047e51d  6a02                      PUSH 0x2
0047e51f  51                        PUSH ECX
0047e520  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047e527  8bcf                      MOV ECX,EDI
0047e529  6a0f                      PUSH 0xf
0047e52b  e870862500                CALL 0x006d6ba0
0047e530  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047e536  40                        INC EAX
0047e537  8bce                      MOV ECX,ESI
0047e539  6860d5b100                PUSH 0xb1d560
0047e53e  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047e544  e8e7caf8ff                CALL 0x0040b030
0047e549  84c0                      TEST AL,AL
0047e54b  7440                      JZ 0x0047e58d
0047e54d  f30f1095f8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdf8]
0047e555  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0047e55d  f30f108dfcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdfc]
0047e565  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0047e56d  f30f5915aca0ba00          MULSS XMM2,dword ptr [0x00baa0ac]
0047e575  f30f590daca0ba00          MULSS XMM1,dword ptr [0x00baa0ac]
0047e57d  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0047e585  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0047e58d  6860d5b100                PUSH 0xb1d560
0047e592  8bce                      MOV ECX,ESI
0047e594  e8f7caf8ff                CALL 0x0040b090
0047e599  84c0                      TEST AL,AL
0047e59b  7414                      JZ 0x0047e5b1
0047e59d  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0047e5a7  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0047e5b1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047e5b5  740d                      JZ 0x0047e5c4
0047e5b7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047e5be  0f85770b0000              JNZ 0x0047f13b
0047e5c4  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047e5ce  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
0047e5d8  e95e0b0000                JMP 0x0047f13b
0047e5dd  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0047e5e4  7522                      JNZ 0x0047e608
0047e5e6  6a01                      PUSH 0x1
0047e5e8  68c8e0b100                PUSH 0xb1e0c8
0047e5ed  8d4f48                    LEA ECX,[EDI + 0x48]
0047e5f0  e8dbbff8ff                CALL 0x0040a5d0
0047e5f5  84c0                      TEST AL,AL
0047e5f7  740f                      JZ 0x0047e608
0047e5f9  8d4f78                    LEA ECX,[EDI + 0x78]
0047e5fc  e8afbbf8ff                CALL 0x0040a1b0
0047e601  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047e608  ff8710040000              INC dword ptr [EDI + 0x410]
0047e60e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047e612  7409                      JZ 0x0047e61d
0047e614  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047e61b  750a                      JNZ 0x0047e627
0047e61d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047e627  68dcd2b100                PUSH 0xb1d2dc
0047e62c  8d4f48                    LEA ECX,[EDI + 0x48]
0047e62f  e85ccaf8ff                CALL 0x0040b090
0047e634  84c0                      TEST AL,AL
0047e636  7414                      JZ 0x0047e64c
0047e638  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0047e642  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0047e64c  68dcd2b100                PUSH 0xb1d2dc
0047e651  8d4f48                    LEA ECX,[EDI + 0x48]
0047e654  e8d7c9f8ff                CALL 0x0040b030
0047e659  84c0                      TEST AL,AL
0047e65b  0f84da0a0000              JZ 0x0047f13b
0047e661  8d4dd0                    LEA ECX,[EBP + -0x30]
0047e664  e8077ffdff                CALL 0x00456570
0047e669  a17816c700                MOV EAX,[0x00c71678]
0047e66e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047e676  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0047e67b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047e683  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0047e689  c745e80a000000            MOV dword ptr [EBP + -0x18],0xa
0047e690  c745e0cdcccc3c            MOV dword ptr [EBP + -0x20],0x3ccccccd
0047e697  c745dc295c0f3d            MOV dword ptr [EBP + -0x24],0x3d0f5c29
0047e69e  ff81fc700000              INC dword ptr [ECX + 0x70fc]
0047e6a4  8b81fc700000              MOV EAX,dword ptr [ECX + 0x70fc]
0047e6aa  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0047e6af  2501000080                AND EAX,0x80000001
0047e6b4  7905                      JNS 0x0047e6bb
0047e6b6  48                        DEC EAX
0047e6b7  83c8fe                    OR EAX,0xfffffffe
0047e6ba  40                        INC EAX
0047e6bb  8d55d0                    LEA EDX,[EBP + -0x30]
0047e6be  52                        PUSH EDX
0047e6bf  50                        PUSH EAX
0047e6c0  e84bf83900                CALL 0x0081df10
0047e6c5  51                        PUSH ECX
0047e6c6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047e6cd  6a00                      PUSH 0x0
0047e6cf  6a02                      PUSH 0x2
0047e6d1  51                        PUSH ECX
0047e6d2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047e6d9  8bcf                      MOV ECX,EDI
0047e6db  6a30                      PUSH 0x30
0047e6dd  e8be842500                CALL 0x006d6ba0
0047e6e2  8d8da8feffff              LEA ECX,[EBP + 0xfffffea8]
0047e6e8  e84308fcff                CALL 0x0043ef30
0047e6ed  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0047e6f1  0f85c1020000              JNZ 0x0047e9b8
0047e6f7  c785e4fdffff0a000000      MOV dword ptr [EBP + 0xfffffde4],0xa
0047e701  e85a082700                CALL 0x006eef60
0047e706  8bf0                      MOV ESI,EAX
0047e708  e853082700                CALL 0x006eef60
0047e70d  660f6ec0                  MOVD XMM0,EAX
0047e711  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047e715  c1e81f                    SHR EAX,0x1f
0047e718  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047e721  660f5ac0                  CVTPD2PS XMM0,XMM0
0047e725  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047e72d  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0047e735  f30f58c0                  ADDSS XMM0,XMM0
0047e739  f30f1185f4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM0
0047e741  e8daedf9ff                CALL 0x0041d520
0047e746  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
0047e74e  e80d082700                CALL 0x006eef60
0047e753  660f6ec8                  MOVD XMM1,EAX
0047e757  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0047e75b  c1e81f                    SHR EAX,0x1f
0047e75e  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0047e767  660f5ac1                  CVTPD2PS XMM0,XMM1
0047e76b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047e773  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
0047e77b  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0047e783  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
0047e78b  e8b0edf9ff                CALL 0x0041d540
0047e790  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0047e793  8d8df8fdffff              LEA ECX,[EBP + 0xfffffdf8]
0047e799  f30f1095e8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffde8]
0047e7a1  48                        DEC EAX
0047e7a2  f30f5985dcfdffff          MULSS XMM0,dword ptr [EBP + 0xfffffddc]
0047e7aa  f7d8                      NEG EAX
0047e7ac  6a00                      PUSH 0x0
0047e7ae  f30f5995dcfdffff          MULSS XMM2,dword ptr [EBP + 0xfffffddc]
0047e7b6  1bc0                      SBB EAX,EAX
0047e7b8  68acd5c500                PUSH 0xc5d5ac
0047e7bd  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0047e7c5  68dcd5c500                PUSH 0xc5d5dc
0047e7ca  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0047e7d2  6a00                      PUSH 0x0
0047e7d4  56                        PUSH ESI
0047e7d5  6a00                      PUSH 0x0
0047e7d7  57                        PUSH EDI
0047e7d8  6840b6c700                PUSH 0xc7b640
0047e7dd  51                        PUSH ECX
0047e7de  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047e7e4  83c017                    ADD EAX,0x17
0047e7e7  50                        PUSH EAX
0047e7e8  68e8030000                PUSH 0x3e8
0047e7ed  f30f1185f8fdffff          MOVSS dword ptr [EBP + 0xfffffdf8],XMM0
0047e7f5  f30f1195fcfdffff          MOVSS dword ptr [EBP + 0xfffffdfc],XMM2
0047e7fd  e81ea3faff                CALL 0x00428b20
0047e802  50                        PUSH EAX
0047e803  e8a9206700                CALL 0x00af08b1
0047e808  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0047e810  83c414                    ADD ESP,0x14
0047e813  83ade4fdffff01            SUB dword ptr [EBP + 0xfffffde4],0x1
0047e81a  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0047e822  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
0047e82a  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
0047e832  f30f1188e4000000          MOVSS dword ptr [EAX + 0xe4],XMM1
0047e83a  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
0047e842  0f85b9feffff              JNZ 0x0047e701
0047e848  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0047e84c  0f8623010000              JBE 0x0047e975
0047e852  33f6                      XOR ESI,ESI
0047e854  8d8d00feffff              LEA ECX,[EBP + 0xfffffe00]
0047e85a  e8d106fcff                CALL 0x0043ef30
0047e85f  8985f4fdffff              MOV dword ptr [EBP + 0xfffffdf4],EAX
0047e865  85f6                      TEST ESI,ESI
0047e867  7527                      JNZ 0x0047e890
0047e869  8bcf                      MOV ECX,EDI
0047e86b  e8d0ff2300                CALL 0x006be840
0047e870  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0047e876  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
0047e87c  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047e882  898df8fdffff              MOV dword ptr [EBP + 0xfffffdf8],ECX
0047e888  8995fcfdffff              MOV dword ptr [EBP + 0xfffffdfc],EDX
0047e88e  eb26                      JMP 0x0047e8b6
0047e890  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047e898  8d85d8fdffff              LEA EAX,[EBP + 0xfffffdd8]
0047e89e  f30f1185d8fdffff          MOVSS dword ptr [EBP + 0xfffffdd8],XMM0
0047e8a6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047e8ae  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0047e8b6  ffb5f4fdffff              PUSH dword ptr [EBP + 0xfffffdf4]
0047e8bc  51                        PUSH ECX
0047e8bd  c7042400002041            MOV dword ptr [ESP],0x41200000
0047e8c4  8bcf                      MOV ECX,EDI
0047e8c6  50                        PUSH EAX
0047e8c7  6a01                      PUSH 0x1
0047e8c9  e802e52400                CALL 0x006ccdd0
0047e8ce  8bd0                      MOV EDX,EAX
0047e8d0  6a01                      PUSH 0x1
0047e8d2  6a00                      PUSH 0x0
0047e8d4  68ff000000                PUSH 0xff
0047e8d9  f30f108218040000          MOVSS XMM0,dword ptr [EDX + 0x418]
0047e8e1  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
0047e8e9  8b8a3c040000              MOV ECX,dword ptr [EDX + 0x43c]
0047e8ef  838a3804000002            OR dword ptr [EDX + 0x438],0x2
0047e8f6  898a3c040000              MOV dword ptr [EDX + 0x43c],ECX
0047e8fc  8d4dc0                    LEA ECX,[EBP + -0x40]
0047e8ff  c78220040000cdcccc3f      MOV dword ptr [EDX + 0x420],0x3fcccccd
0047e909  f30f118218040000          MOVSS dword ptr [EDX + 0x418],XMM0
0047e911  f30f108214040000          MOVSS XMM0,dword ptr [EDX + 0x414]
0047e919  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0047e921  6aff                      PUSH -0x1
0047e923  51                        PUSH ECX
0047e924  8bca                      MOV ECX,EDX
0047e926  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
0047e92e  f30f118214040000          MOVSS dword ptr [EDX + 0x414],XMM0
0047e936  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0047e93d  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0047e941  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0047e948  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0047e94f  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0047e956  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0047e95d  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0047e961  8b02                      MOV EAX,dword ptr [EDX]
0047e963  ff503c                    CALL dword ptr [EAX + 0x3c]
0047e966  46                        INC ESI
0047e967  83fe03                    CMP ESI,0x3
0047e96a  0f8ce4feffff              JL 0x0047e854
0047e970  e9b8000000                JMP 0x0047ea2d
0047e975  e8c6982500                CALL 0x006d8240
0047e97a  85c0                      TEST EAX,EAX
0047e97c  7e1d                      JLE 0x0047e99b
0047e97e  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
0047e986  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0047e98c  50                        PUSH EAX
0047e98d  c785fcfdffff00000000      MOV dword ptr [EBP + 0xfffffdfc],0x0
0047e997  6a08                      PUSH 0x8
0047e999  eb75                      JMP 0x0047ea10
0047e99b  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0047e9a3  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0047e9a9  50                        PUSH EAX
0047e9aa  c785fcfdffff00000000      MOV dword ptr [EBP + 0xfffffdfc],0x0
0047e9b4  6a08                      PUSH 0x8
0047e9b6  eb58                      JMP 0x0047ea10
0047e9b8  0f280500c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac300]
0047e9bf  0f1185e4feffff            MOVUPS xmmword ptr [EBP + 0xfffffee4],XMM0
0047e9c6  c785f4fefffff2f0703e      MOV dword ptr [EBP + 0xfffffef4],0x3e70f0f2
0047e9d0  c785f8fefffff2f0703e      MOV dword ptr [EBP + 0xfffffef8],0x3e70f0f2
0047e9da  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
0047e9e4  e857982500                CALL 0x006d8240
0047e9e9  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
0047e9f1  85c0                      TEST EAX,EAX
0047e9f3  7f08                      JG 0x0047e9fd
0047e9f5  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0047e9fd  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0047ea03  c785fcfdffff00004041      MOV dword ptr [EBP + 0xfffffdfc],0x41400000
0047ea0d  50                        PUSH EAX
0047ea0e  6a09                      PUSH 0x9
0047ea10  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047ea16  f30f1185f8fdffff          MOVSS dword ptr [EBP + 0xfffffdf8],XMM0
0047ea1e  50                        PUSH EAX
0047ea1f  8d873c030000              LEA EAX,[EDI + 0x33c]
0047ea25  8bcf                      MOV ECX,EDI
0047ea27  50                        PUSH EAX
0047ea28  e8b3c82400                CALL 0x006cb2e0
0047ea2d  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0047ea35  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047ea3b  50                        PUSH EAX
0047ea3c  8d873c030000              LEA EAX,[EDI + 0x33c]
0047ea42  8bcf                      MOV ECX,EDI
0047ea44  50                        PUSH EAX
0047ea45  e8767c2300                CALL 0x006b66c0
0047ea4a  e9ec060000                JMP 0x0047f13b
0047ea4f  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0047ea56  7522                      JNZ 0x0047ea7a
0047ea58  6a01                      PUSH 0x1
0047ea5a  6854d5b100                PUSH 0xb1d554
0047ea5f  8d4f48                    LEA ECX,[EDI + 0x48]
0047ea62  e869bbf8ff                CALL 0x0040a5d0
0047ea67  84c0                      TEST AL,AL
0047ea69  740f                      JZ 0x0047ea7a
0047ea6b  8d4f78                    LEA ECX,[EDI + 0x78]
0047ea6e  e83db7f8ff                CALL 0x0040a1b0
0047ea73  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047ea7a  ff8710040000              INC dword ptr [EDI + 0x410]
0047ea80  8d4f48                    LEA ECX,[EDI + 0x48]
0047ea83  6860d5b100                PUSH 0xb1d560
0047ea88  e8a3c5f8ff                CALL 0x0040b030
0047ea8d  84c0                      TEST AL,AL
0047ea8f  747a                      JZ 0x0047eb0b
0047ea91  51                        PUSH ECX
0047ea92  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047ea99  6a00                      PUSH 0x0
0047ea9b  6a02                      PUSH 0x2
0047ea9d  51                        PUSH ECX
0047ea9e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047eaa5  8bcf                      MOV ECX,EDI
0047eaa7  6895000000                PUSH 0x95
0047eaac  e8ef802500                CALL 0x006d6ba0
0047eab1  e8aa042700                CALL 0x006eef60
0047eab6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047eabc  50                        PUSH EAX
0047eabd  6a03                      PUSH 0x3
0047eabf  57                        PUSH EDI
0047eac0  6840b6c700                PUSH 0xc7b640
0047eac5  8d873c030000              LEA EAX,[EDI + 0x33c]
0047eacb  50                        PUSH EAX
0047eacc  6a10                      PUSH 0x10
0047eace  68e8030000                PUSH 0x3e8
0047ead3  e848a0faff                CALL 0x00428b20
0047ead8  8bf0                      MOV ESI,EAX
0047eada  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047eae0  6a01                      PUSH 0x1
0047eae2  6a00                      PUSH 0x0
0047eae4  68ff000000                PUSH 0xff
0047eae9  8b0e                      MOV ECX,dword ptr [ESI]
0047eaeb  6aff                      PUSH -0x1
0047eaed  50                        PUSH EAX
0047eaee  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0047eaf1  8bce                      MOV ECX,ESI
0047eaf3  ffd2                      CALL EDX
0047eaf5  e866042700                CALL 0x006eef60
0047eafa  34ff                      XOR AL,0xff
0047eafc  8bce                      MOV ECX,ESI
0047eafe  2401                      AND AL,0x1
0047eb00  888648010000              MOV byte ptr [ESI + 0x148],AL
0047eb06  8b06                      MOV EAX,dword ptr [ESI]
0047eb08  ff500c                    CALL dword ptr [EAX + 0xc]
0047eb0b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047eb0f  7409                      JZ 0x0047eb1a
0047eb11  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047eb18  750a                      JNZ 0x0047eb24
0047eb1a  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047eb24  8b85e8fdffff              MOV EAX,dword ptr [EBP + 0xfffffde8]
0047eb2a  33f6                      XOR ESI,ESI
0047eb2c  89b5f4fdffff              MOV dword ptr [EBP + 0xfffffdf4],ESI
0047eb32  85c0                      TEST EAX,EAX
0047eb34  0f8e01060000              JLE 0x0047f13b
0047eb3a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0047eb40  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047eb44  0f848b030000              JZ 0x0047eed5
0047eb4a  8d4f78                    LEA ECX,[EDI + 0x78]
0047eb4d  6818e5b100                PUSH 0xb1e518
0047eb52  e889c1f8ff                CALL 0x0040ace0
0047eb57  8985e4fdffff              MOV dword ptr [EBP + 0xfffffde4],EAX
0047eb5d  85c0                      TEST EAX,EAX
0047eb5f  0f846a030000              JZ 0x0047eecf
0047eb65  80780c00                  CMP byte ptr [EAX + 0xc],0x0
0047eb69  0f8460030000              JZ 0x0047eecf
0047eb6f  e8ec032700                CALL 0x006eef60
0047eb74  660f6ec0                  MOVD XMM0,EAX
0047eb78  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047eb7c  c1e81f                    SHR EAX,0x1f
0047eb7f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047eb88  660f5ac0                  CVTPD2PS XMM0,XMM0
0047eb8c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047eb94  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0047eb9c  f30f58c0                  ADDSS XMM0,XMM0
0047eba0  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0047eba8  e873e9f9ff                CALL 0x0041d520
0047ebad  f30f1185ecfdffff          MOVSS dword ptr [EBP + 0xfffffdec],XMM0
0047ebb5  f30f1085dcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffddc]
0047ebbd  e87ee9f9ff                CALL 0x0041d540
0047ebc2  8b85e4fdffff              MOV EAX,dword ptr [EBP + 0xfffffde4]
0047ebc8  f30f108decfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdec]
0047ebd0  f30f594010                MULSS XMM0,dword ptr [EAX + 0x10]
0047ebd5  f30f594814                MULSS XMM1,dword ptr [EAX + 0x14]
0047ebda  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0047ebe2  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0047ebea  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0047ebf2  f30f118decfdffff          MOVSS dword ptr [EBP + 0xfffffdec],XMM1
0047ebfa  e861032700                CALL 0x006eef60
0047ebff  660f6ec0                  MOVD XMM0,EAX
0047ec03  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047ec07  c1e81f                    SHR EAX,0x1f
0047ec0a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0047ec0e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047ec17  660f5ac0                  CVTPD2PS XMM0,XMM0
0047ec1b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047ec23  0f28c8                    MOVAPS XMM1,XMM0
0047ec26  f30f598ddcfdffff          MULSS XMM1,dword ptr [EBP + 0xfffffddc]
0047ec2e  f30f118ddcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM1
0047ec36  f30f108decfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdec]
0047ec3e  f30f59c8                  MULSS XMM1,XMM0
0047ec42  f30f118decfdffff          MOVSS dword ptr [EBP + 0xfffffdec],XMM1
0047ec4a  0f85e4000000              JNZ 0x0047ed34
0047ec50  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0047ec54  0f85da000000              JNZ 0x0047ed34
0047ec5a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047ec5e  0f84d0000000              JZ 0x0047ed34
0047ec64  68dcd2b100                PUSH 0xb1d2dc
0047ec69  8d4f78                    LEA ECX,[EDI + 0x78]
0047ec6c  e85fc1f8ff                CALL 0x0040add0
0047ec71  84c0                      TEST AL,AL
0047ec73  0f84bb000000              JZ 0x0047ed34
0047ec79  85f6                      TEST ESI,ESI
0047ec7b  0f85b3000000              JNZ 0x0047ed34
0047ec81  a17816c700                MOV EAX,[0x00c71678]
0047ec86  8db73c030000              LEA ESI,[EDI + 0x33c]
0047ec8c  6a00                      PUSH 0x0
0047ec8e  6a00                      PUSH 0x0
0047ec90  6a00                      PUSH 0x0
0047ec92  51                        PUSH ECX
0047ec93  c7042400004842            MOV dword ptr [ESP],0x42480000
0047ec9a  8d8df8fdffff              LEA ECX,[EBP + 0xfffffdf8]
0047eca0  56                        PUSH ESI
0047eca1  51                        PUSH ECX
0047eca2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0047eca8  e873483900                CALL 0x00813520
0047ecad  e8ae022700                CALL 0x006eef60
0047ecb2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047ecb8  50                        PUSH EAX
0047ecb9  6a00                      PUSH 0x0
0047ecbb  57                        PUSH EDI
0047ecbc  6840b6c700                PUSH 0xc7b640
0047ecc1  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047ecc7  50                        PUSH EAX
0047ecc8  6a00                      PUSH 0x0
0047ecca  6a17                      PUSH 0x17
0047eccc  e84f9efaff                CALL 0x00428b20
0047ecd1  a17816c700                MOV EAX,[0x00c71678]
0047ecd6  6a00                      PUSH 0x0
0047ecd8  6a00                      PUSH 0x0
0047ecda  6a00                      PUSH 0x0
0047ecdc  51                        PUSH ECX
0047ecdd  c7042400004842            MOV dword ptr [ESP],0x42480000
0047ece4  8d8db8fdffff              LEA ECX,[EBP + 0xfffffdb8]
0047ecea  56                        PUSH ESI
0047eceb  51                        PUSH ECX
0047ecec  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0047ecf2  e829483900                CALL 0x00813520
0047ecf7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0047ecfb  f30f1185f8fdffff          MOVSS dword ptr [EBP + 0xfffffdf8],XMM0
0047ed03  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0047ed08  f30f1185fcfdffff          MOVSS dword ptr [EBP + 0xfffffdfc],XMM0
0047ed10  e84b022700                CALL 0x006eef60
0047ed15  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047ed1b  50                        PUSH EAX
0047ed1c  6a00                      PUSH 0x0
0047ed1e  57                        PUSH EDI
0047ed1f  6840b6c700                PUSH 0xc7b640
0047ed24  8d85f8fdffff              LEA EAX,[EBP + 0xfffffdf8]
0047ed2a  50                        PUSH EAX
0047ed2b  6a00                      PUSH 0x0
0047ed2d  6a17                      PUSH 0x17
0047ed2f  e8ec9dfaff                CALL 0x00428b20
0047ed34  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0047ed38  be18000000                MOV ESI,0x18
0047ed3d  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0047ed45  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
0047ed4d  751b                      JNZ 0x0047ed6a
0047ed4f  8b7730                    MOV ESI,dword ptr [EDI + 0x30]
0047ed52  f30f1005c8a6ba00          MOVSS XMM0,dword ptr [0x00baa6c8]
0047ed5a  4e                        DEC ESI
0047ed5b  f7de                      NEG ESI
0047ed5d  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
0047ed65  1bf6                      SBB ESI,ESI
0047ed67  83c617                    ADD ESI,0x17
0047ed6a  e8f1012700                CALL 0x006eef60
0047ed6f  f30f108ddcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffddc]
0047ed77  f30f1085ecfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdec]
0047ed7f  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0047ed87  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0047ed8f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047ed95  50                        PUSH EAX
0047ed96  6a00                      PUSH 0x0
0047ed98  57                        PUSH EDI
0047ed99  6840b6c700                PUSH 0xc7b640
0047ed9e  8d85c8fdffff              LEA EAX,[EBP + 0xfffffdc8]
0047eda4  f30f118dc8fdffff          MOVSS dword ptr [EBP + 0xfffffdc8],XMM1
0047edac  50                        PUSH EAX
0047edad  56                        PUSH ESI
0047edae  68e8030000                PUSH 0x3e8
0047edb3  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
0047edbb  e8609dfaff                CALL 0x00428b20
0047edc0  f30f108de4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde4]
0047edc8  8bc8                      MOV ECX,EAX
0047edca  0f28c1                    MOVAPS XMM0,XMM1
0047edcd  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0047edd5  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0047eddd  8b01                      MOV EAX,dword ptr [ECX]
0047eddf  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
0047ede7  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
0047edef  ff500c                    CALL dword ptr [EAX + 0xc]
0047edf2  f30f109ddcfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffddc]
0047edfa  f30f1095ecfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdec]
0047ee02  0f28cb                    MOVAPS XMM1,XMM3
0047ee05  f30f591d44a2ba00          MULSS XMM3,dword ptr [0x00baa244]
0047ee0d  0f28c2                    MOVAPS XMM0,XMM2
0047ee10  f30f591544a2ba00          MULSS XMM2,dword ptr [0x00baa244]
0047ee18  f30f589f3c030000          ADDSS XMM3,dword ptr [EDI + 0x33c]
0047ee20  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
0047ee28  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0047ee30  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
0047ee38  f30f118dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM1
0047ee40  f30f119dd0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM3
0047ee48  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0047ee50  f30f1195d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM2
0047ee58  e803012700                CALL 0x006eef60
0047ee5d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047ee63  50                        PUSH EAX
0047ee64  6a03                      PUSH 0x3
0047ee66  6a00                      PUSH 0x0
0047ee68  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
0047ee6e  50                        PUSH EAX
0047ee6f  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
0047ee75  50                        PUSH EAX
0047ee76  6a02                      PUSH 0x2
0047ee78  68e8030000                PUSH 0x3e8
0047ee7d  e89e9cfaff                CALL 0x00428b20
0047ee82  8bf0                      MOV ESI,EAX
0047ee84  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047ee8a  6a01                      PUSH 0x1
0047ee8c  6a00                      PUSH 0x0
0047ee8e  68ff000000                PUSH 0xff
0047ee93  8b0e                      MOV ECX,dword ptr [ESI]
0047ee95  6aff                      PUSH -0x1
0047ee97  50                        PUSH EAX
0047ee98  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0047ee9b  8bce                      MOV ECX,ESI
0047ee9d  ffd2                      CALL EDX
0047ee9f  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047eea7  f30f1186dc000000          MOVSS dword ptr [ESI + 0xdc],XMM0
0047eeaf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047eeb7  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
0047eebf  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
0047eec9  8bb5f4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdf4]
0047eecf  8b85e8fdffff              MOV EAX,dword ptr [EBP + 0xfffffde8]
0047eed5  46                        INC ESI
0047eed6  89b5f4fdffff              MOV dword ptr [EBP + 0xfffffdf4],ESI
0047eedc  3bf0                      CMP ESI,EAX
0047eede  0f8c5cfcffff              JL 0x0047eb40
0047eee4  e952020000                JMP 0x0047f13b
0047eee9  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047eeef  8d7748                    LEA ESI,[EDI + 0x48]
0047eef2  85c0                      TEST EAX,EAX
0047eef4  7514                      JNZ 0x0047ef0a
0047eef6  6a01                      PUSH 0x1
0047eef8  680ce5b100                PUSH 0xb1e50c
0047eefd  8bce                      MOV ECX,ESI
0047eeff  e87cb4f8ff                CALL 0x0040a380
0047ef04  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047ef0a  40                        INC EAX
0047ef0b  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047ef11  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047ef15  7409                      JZ 0x0047ef20
0047ef17  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047ef1e  750a                      JNZ 0x0047ef2a
0047ef20  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047ef2a  68dcd2b100                PUSH 0xb1d2dc
0047ef2f  8bce                      MOV ECX,ESI
0047ef31  e8fac0f8ff                CALL 0x0040b030
0047ef36  84c0                      TEST AL,AL
0047ef38  0f84fd010000              JZ 0x0047f13b
0047ef3e  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047ef46  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
0047ef4c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047ef54  f30f5c0d54a8ba00          SUBSS XMM1,dword ptr [0x00baa854]
0047ef5c  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0047ef64  6a00                      PUSH 0x0
0047ef66  57                        PUSH EDI
0047ef67  50                        PUSH EAX
0047ef68  6a28                      PUSH 0x28
0047ef6a  51                        PUSH ECX
0047ef6b  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
0047ef71  c704240000b442            MOV dword ptr [ESP],0x42b40000
0047ef78  50                        PUSH EAX
0047ef79  6a01                      PUSH 0x1
0047ef7b  c785d0fdffff00000000      MOV dword ptr [EBP + 0xfffffdd0],0x0
0047ef85  c785d4fdffff0000c8c1      MOV dword ptr [EBP + 0xfffffdd4],0xc1c80000
0047ef8f  f30f118dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM1
0047ef97  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0047ef9f  e86c034f00                CALL 0x0096f310
0047efa4  8b8decfdffff              MOV ECX,dword ptr [EBP + 0xfffffdec]
0047efaa  83c41c                    ADD ESP,0x1c
0047efad  8bf8                      MOV EDI,EAX
0047efaf  c785d4fdffff0000c8c1      MOV dword ptr [EBP + 0xfffffdd4],0xc1c80000
0047efb9  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
0047efbf  f30f10893c030000          MOVSS XMM1,dword ptr [ECX + 0x33c]
0047efc7  f30f580d54a8ba00          ADDSS XMM1,dword ptr [0x00baa854]
0047efcf  6a00                      PUSH 0x0
0047efd1  51                        PUSH ECX
0047efd2  50                        PUSH EAX
0047efd3  6a28                      PUSH 0x28
0047efd5  51                        PUSH ECX
0047efd6  c704240000b442            MOV dword ptr [ESP],0x42b40000
0047efdd  e9f4000000                JMP 0x0047f0d6
0047efe2  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047efe8  8d7748                    LEA ESI,[EDI + 0x48]
0047efeb  85c0                      TEST EAX,EAX
0047efed  7514                      JNZ 0x0047f003
0047efef  6a01                      PUSH 0x1
0047eff1  682ce5b100                PUSH 0xb1e52c
0047eff6  8bce                      MOV ECX,ESI
0047eff8  e883b3f8ff                CALL 0x0040a380
0047effd  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047f003  40                        INC EAX
0047f004  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047f00a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047f00e  7409                      JZ 0x0047f019
0047f010  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047f017  750a                      JNZ 0x0047f023
0047f019  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047f023  68dcd2b100                PUSH 0xb1d2dc
0047f028  8bce                      MOV ECX,ESI
0047f02a  e801c0f8ff                CALL 0x0040b030
0047f02f  84c0                      TEST AL,AL
0047f031  0f8404010000              JZ 0x0047f13b
0047f037  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047f03f  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
0047f045  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047f04d  f30f5c0d7ca8ba00          SUBSS XMM1,dword ptr [0x00baa87c]
0047f055  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0047f05d  6a00                      PUSH 0x0
0047f05f  57                        PUSH EDI
0047f060  50                        PUSH EAX
0047f061  6a28                      PUSH 0x28
0047f063  51                        PUSH ECX
0047f064  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
0047f06a  c7042400003443            MOV dword ptr [ESP],0x43340000
0047f071  50                        PUSH EAX
0047f072  6a01                      PUSH 0x1
0047f074  c785d0fdffff00000000      MOV dword ptr [EBP + 0xfffffdd0],0x0
0047f07e  c785d4fdffff00000cc2      MOV dword ptr [EBP + 0xfffffdd4],0xc20c0000
0047f088  f30f118dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM1
0047f090  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
0047f098  e873024f00                CALL 0x0096f310
0047f09d  8b8decfdffff              MOV ECX,dword ptr [EBP + 0xfffffdec]
0047f0a3  83c41c                    ADD ESP,0x1c
0047f0a6  8bf8                      MOV EDI,EAX
0047f0a8  c785d4fdffff00000cc2      MOV dword ptr [EBP + 0xfffffdd4],0xc20c0000
0047f0b2  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
0047f0b8  f30f10893c030000          MOVSS XMM1,dword ptr [ECX + 0x33c]
0047f0c0  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
0047f0c8  6a00                      PUSH 0x0
0047f0ca  51                        PUSH ECX
0047f0cb  50                        PUSH EAX
0047f0cc  6a28                      PUSH 0x28
0047f0ce  51                        PUSH ECX
0047f0cf  c7042400000000            MOV dword ptr [ESP],0x0
0047f0d6  f30f108140030000          MOVSS XMM0,dword ptr [ECX + 0x340]
0047f0de  8d85c8fdffff              LEA EAX,[EBP + 0xfffffdc8]
0047f0e4  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0047f0ec  50                        PUSH EAX
0047f0ed  6a01                      PUSH 0x1
0047f0ef  c785d0fdffff00000000      MOV dword ptr [EBP + 0xfffffdd0],0x0
0047f0f9  f30f118dc8fdffff          MOVSS dword ptr [EBP + 0xfffffdc8],XMM1
0047f101  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
0047f109  e802024f00                CALL 0x0096f310
0047f10e  8bf0                      MOV ESI,EAX
0047f110  c7875803000000803b45      MOV dword ptr [EDI + 0x358],0x453b8000
0047f11a  83c41c                    ADD ESP,0x1c
0047f11d  8bcf                      MOV ECX,EDI
0047f11f  c7865803000000803b45      MOV dword ptr [ESI + 0x358],0x453b8000
0047f129  8b17                      MOV EDX,dword ptr [EDI]
0047f12b  ff520c                    CALL dword ptr [EDX + 0xc]
0047f12e  8b16                      MOV EDX,dword ptr [ESI]
0047f130  8bce                      MOV ECX,ESI
0047f132  ff520c                    CALL dword ptr [EDX + 0xc]
0047f135  8bbdecfdffff              MOV EDI,dword ptr [EBP + 0xfffffdec]
0047f13b  e820fe2600                CALL 0x006eef60
0047f140  0f57c0                    XORPS XMM0,XMM0
0047f143  51                        PUSH ECX
0047f144  8bcf                      MOV ECX,EDI
0047f146  f20f2ac0                  CVTSI2SD XMM0,EAX
0047f14a  c1e81f                    SHR EAX,0x1f
0047f14d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047f156  660f5ac0                  CVTPD2PS XMM0,XMM0
0047f15a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047f162  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0047f16a  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0047f172  f30f110424                MOVSS dword ptr [ESP],XMM0
0047f177  e854732300                CALL 0x006b64d0
0047f17c  8bf0                      MOV ESI,EAX
0047f17e  89b5e4fdffff              MOV dword ptr [EBP + 0xfffffde4],ESI
0047f184  e8d7fd2600                CALL 0x006eef60
0047f189  0f57c0                    XORPS XMM0,XMM0
0047f18c  f20f2ac0                  CVTSI2SD XMM0,EAX
0047f190  c1e81f                    SHR EAX,0x1f
0047f193  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047f19c  660f5ac0                  CVTPD2PS XMM0,XMM0
0047f1a0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047f1a8  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0047f1b0  f30f58c0                  ADDSS XMM0,XMM0
0047f1b4  f30f1185f4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM0
0047f1bc  e85fe3f9ff                CALL 0x0041d520
0047f1c1  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
0047f1c9  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
0047f1d1  e86ae3f9ff                CALL 0x0041d540
0047f1d6  f30f108ddcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffddc]
0047f1de  f30f58c0                  ADDSS XMM0,XMM0
0047f1e2  f30f58c9                  ADDSS XMM1,XMM1
0047f1e6  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0047f1ee  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0047f1f6  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0047f1fe  f30f580de8a7ba00          ADDSS XMM1,dword ptr [0x00baa7e8]
0047f206  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
0047f20e  f30f118e40030000          MOVSS dword ptr [ESI + 0x340],XMM1
0047f216  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
0047f219  85d2                      TEST EDX,EDX
0047f21b  7550                      JNZ 0x0047f26d
0047f21d  8b06                      MOV EAX,dword ptr [ESI]
0047f21f  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
0047f225  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
0047f228  e8a33c2000                CALL 0x00682ed0
0047f22d  0f280560bdba00            MOVAPS XMM0,xmmword ptr [0x00babd60]
0047f234  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0047f23a  8b8de4fdffff              MOV ECX,dword ptr [EBP + 0xfffffde4]
0047f240  6a01                      PUSH 0x1
0047f242  6a00                      PUSH 0x0
0047f244  68ff000000                PUSH 0xff
0047f249  6aff                      PUSH -0x1
0047f24b  50                        PUSH EAX
0047f24c  0f11857cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM0
0047f253  c7459ccac8483f            MOV dword ptr [EBP + -0x64],0x3f48c8ca
0047f25a  c745a0cac8483f            MOV dword ptr [EBP + -0x60],0x3f48c8ca
0047f261  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
0047f268  ffd6                      CALL ESI
0047f26a  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
0047f26d  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047f275  b902000000                MOV ECX,0x2
0047f27a  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0047f282  be02000000                MOV ESI,0x2
0047f287  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047f28f  f30f2cc0                  CVTTSS2SI EAX,XMM0
0047f293  2bc8                      SUB ECX,EAX
0047f295  3bce                      CMP ECX,ESI
0047f297  0f4cf1                    CMOVL ESI,ECX
0047f29a  89b5dcfdffff              MOV dword ptr [EBP + 0xfffffddc],ESI
0047f2a0  83fa01                    CMP EDX,0x1
0047f2a3  7406                      JZ 0x0047f2ab
0047f2a5  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0047f2a9  750b                      JNZ 0x0047f2b6
0047f2ab  be02000000                MOV ESI,0x2
0047f2b0  89b5dcfdffff              MOV dword ptr [EBP + 0xfffffddc],ESI
0047f2b6  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
0047f2bc  8bc1                      MOV EAX,ECX
0047f2be  3bce                      CMP ECX,ESI
0047f2c0  0f8db9000000              JGE 0x0047f37f
0047f2c6  83fe01                    CMP ESI,0x1
0047f2c9  0f85b8000000              JNZ 0x0047f387
0047f2cf  85d2                      TEST EDX,EDX
0047f2d1  0f85a8000000              JNZ 0x0047f37f
0047f2d7  8d4f48                    LEA ECX,[EDI + 0x48]
0047f2da  52                        PUSH EDX
0047f2db  e840bff8ff                CALL 0x0040b220
0047f2e0  8d4da8                    LEA ECX,[EBP + -0x58]
0047f2e3  51                        PUSH ECX
0047f2e4  8bc8                      MOV ECX,EAX
0047f2e6  e80570fdff                CALL 0x004562f0
0047f2eb  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0047f2f2  8d4da8                    LEA ECX,[EBP + -0x58]
0047f2f5  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
0047f2f8  6a00                      PUSH 0x0
0047f2fa  83c0fc                    ADD EAX,-0x4
0047f2fd  50                        PUSH EAX
0047f2fe  e81d52f9ff                CALL 0x00414520
0047f303  6a06                      PUSH 0x6
0047f305  6824e5b100                PUSH 0xb1e524
0047f30a  8d4da8                    LEA ECX,[EBP + -0x58]
0047f30d  e8dea40100                CALL 0x004997f0
0047f312  8d45a8                    LEA EAX,[EBP + -0x58]
0047f315  8bcf                      MOV ECX,EDI
0047f317  50                        PUSH EAX
0047f318  8d45d4                    LEA EAX,[EBP + -0x2c]
0047f31b  50                        PUSH EAX
0047f31c  e81fb52300                CALL 0x006ba840
0047f321  50                        PUSH EAX
0047f322  6a00                      PUSH 0x0
0047f324  8d4f48                    LEA ECX,[EDI + 0x48]
0047f327  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0047f32b  e800ccf8ff                CALL 0x0040bf30
0047f330  8d4dd4                    LEA ECX,[EBP + -0x2c]
0047f333  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0047f337  e804ddf8ff                CALL 0x0040d040
0047f33c  6800000010                PUSH 0x10000000
0047f341  6a00                      PUSH 0x0
0047f343  8bcf                      MOV ECX,EDI
0047f345  e8e680f9ff                CALL 0x00417430
0047f34a  84c0                      TEST AL,AL
0047f34c  7413                      JZ 0x0047f361
0047f34e  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0047f351  8d4f48                    LEA ECX,[EDI + 0x48]
0047f354  6a00                      PUSH 0x0
0047f356  ff772c                    PUSH dword ptr [EDI + 0x2c]
0047f359  e8b2690200                CALL 0x004a5d10
0047f35e  83c408                    ADD ESP,0x8
0047f361  51                        PUSH ECX
0047f362  8d4f48                    LEA ECX,[EDI + 0x48]
0047f365  e896ccf8ff                CALL 0x0040c000
0047f36a  8d4da8                    LEA ECX,[EBP + -0x58]
0047f36d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0047f374  e8c7dcf8ff                CALL 0x0040d040
0047f379  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0047f37f  3bc6                      CMP EAX,ESI
0047f381  0f8d6a020000              JGE 0x0047f5f1
0047f387  83fe02                    CMP ESI,0x2
0047f38a  0f85c0000000              JNZ 0x0047f450
0047f390  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0047f394  0f85a5000000              JNZ 0x0047f43f
0047f39a  8d4f48                    LEA ECX,[EDI + 0x48]
0047f39d  6a00                      PUSH 0x0
0047f39f  e87cbef8ff                CALL 0x0040b220
0047f3a4  8d4da8                    LEA ECX,[EBP + -0x58]
0047f3a7  51                        PUSH ECX
0047f3a8  8bc8                      MOV ECX,EAX
0047f3aa  e8416ffdff                CALL 0x004562f0
0047f3af  8975fc                    MOV dword ptr [EBP + -0x4],ESI
0047f3b2  8d4da8                    LEA ECX,[EBP + -0x58]
0047f3b5  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
0047f3b8  6a00                      PUSH 0x0
0047f3ba  83c0fc                    ADD EAX,-0x4
0047f3bd  50                        PUSH EAX
0047f3be  e85d51f9ff                CALL 0x00414520
0047f3c3  6a06                      PUSH 0x6
0047f3c5  6838e5b100                PUSH 0xb1e538
0047f3ca  8d4da8                    LEA ECX,[EBP + -0x58]
0047f3cd  e81ea40100                CALL 0x004997f0
0047f3d2  8d45a8                    LEA EAX,[EBP + -0x58]
0047f3d5  8bcf                      MOV ECX,EDI
0047f3d7  50                        PUSH EAX
0047f3d8  8d45d4                    LEA EAX,[EBP + -0x2c]
0047f3db  50                        PUSH EAX
0047f3dc  e85fb42300                CALL 0x006ba840
0047f3e1  50                        PUSH EAX
0047f3e2  6a00                      PUSH 0x0
0047f3e4  8d4f48                    LEA ECX,[EDI + 0x48]
0047f3e7  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0047f3eb  e840cbf8ff                CALL 0x0040bf30
0047f3f0  8d4dd4                    LEA ECX,[EBP + -0x2c]
0047f3f3  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0047f3f7  e844dcf8ff                CALL 0x0040d040
0047f3fc  6800000010                PUSH 0x10000000
0047f401  6a00                      PUSH 0x0
0047f403  8bcf                      MOV ECX,EDI
0047f405  e82680f9ff                CALL 0x00417430
0047f40a  84c0                      TEST AL,AL
0047f40c  7413                      JZ 0x0047f421
0047f40e  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0047f411  8d4f48                    LEA ECX,[EDI + 0x48]
0047f414  6a00                      PUSH 0x0
0047f416  ff772c                    PUSH dword ptr [EDI + 0x2c]
0047f419  e8f2680200                CALL 0x004a5d10
0047f41e  83c408                    ADD ESP,0x8
0047f421  51                        PUSH ECX
0047f422  8d4f48                    LEA ECX,[EDI + 0x48]
0047f425  e8d6cbf8ff                CALL 0x0040c000
0047f42a  8d4da8                    LEA ECX,[EBP + -0x58]
0047f42d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0047f434  e807dcf8ff                CALL 0x0040d040
0047f439  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0047f43f  3bc6                      CMP EAX,ESI
0047f441  0f8daa010000              JGE 0x0047f5f1
0047f447  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0047f450  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047f458  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0047f45e  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
0047f466  83f812                    CMP EAX,0x12
0047f469  750a                      JNZ 0x0047f475
0047f46b  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0047f473  eb0d                      JMP 0x0047f482
0047f475  83f813                    CMP EAX,0x13
0047f478  7510                      JNZ 0x0047f48a
0047f47a  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0047f482  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
0047f48a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047f490  8d8df4fdffff              LEA ECX,[EBP + 0xfffffdf4]
0047f496  c785f4fdffffed000000      MOV dword ptr [EBP + 0xfffffdf4],0xed
0047f4a0  e8db724d00                CALL 0x00956780
0047f4a5  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
0047f4ad  83ec08                    SUB ESP,0x8
0047f4b0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047f4b8  f30f110424                MOVSS dword ptr [ESP],XMM0
0047f4bd  6a00                      PUSH 0x0
0047f4bf  6a02                      PUSH 0x2
0047f4c1  51                        PUSH ECX
0047f4c2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047f4c9  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047f4cf  ffb5f4fdffff              PUSH dword ptr [EBP + 0xfffffdf4]
0047f4d5  e856e74a00                CALL 0x0092dc30
0047f4da  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0047f4e0  e87bfa2600                CALL 0x006eef60
0047f4e5  8bf0                      MOV ESI,EAX
0047f4e7  e874fa2600                CALL 0x006eef60
0047f4ec  660f6ec0                  MOVD XMM0,EAX
0047f4f0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047f4f4  c1e81f                    SHR EAX,0x1f
0047f4f7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047f500  660f5ac0                  CVTPD2PS XMM0,XMM0
0047f504  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047f50c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0047f514  f30f58c0                  ADDSS XMM0,XMM0
0047f518  f30f1185f4fdffff          MOVSS dword ptr [EBP + 0xfffffdf4],XMM0
0047f520  e81be0f9ff                CALL 0x0041d540
0047f525  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
0047f52d  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0047f535  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
0047f53d  f30f1085f4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdf4]
0047f545  e8d6dff9ff                CALL 0x0041d520
0047f54a  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
0047f552  8d8dd0fdffff              LEA ECX,[EBP + 0xfffffdd0]
0047f558  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0047f55b  6a00                      PUSH 0x0
0047f55d  68acd6c500                PUSH 0xc5d6ac
0047f562  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0047f56a  68dcd5c500                PUSH 0xc5d5dc
0047f56f  6a00                      PUSH 0x0
0047f571  56                        PUSH ESI
0047f572  6a00                      PUSH 0x0
0047f574  57                        PUSH EDI
0047f575  6840b6c700                PUSH 0xc7b640
0047f57a  51                        PUSH ECX
0047f57b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047f581  83c00a                    ADD EAX,0xa
0047f584  50                        PUSH EAX
0047f585  ff7728                    PUSH dword ptr [EDI + 0x28]
0047f588  f30f1185d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM0
0047f590  e88b95faff                CALL 0x00428b20
0047f595  50                        PUSH EAX
0047f596  e816136700                CALL 0x00af08b1
0047f59b  83c410                    ADD ESP,0x10
0047f59e  8bf0                      MOV ESI,EAX
0047f5a0  8bce                      MOV ECX,ESI
0047f5a2  ffb7780c0000              PUSH dword ptr [EDI + 0xc78]
0047f5a8  e8530d2500                CALL 0x006d0300
0047f5ad  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0047f5b3  81c6bc030000              ADD ESI,0x3bc
0047f5b9  85c9                      TEST ECX,ECX
0047f5bb  7418                      JZ 0x0047f5d5
0047f5bd  8d85f4fdffff              LEA EAX,[EBP + 0xfffffdf4]
0047f5c3  89b5f4fdffff              MOV dword ptr [EBP + 0xfffffdf4],ESI
0047f5c9  50                        PUSH EAX
0047f5ca  81c1cc030000              ADD ECX,0x3cc
0047f5d0  e83bfc0400                CALL 0x004cf210
0047f5d5  56                        PUSH ESI
0047f5d6  8bcf                      MOV ECX,EDI
0047f5d8  893e                      MOV dword ptr [ESI],EDI
0047f5da  e811e70400                CALL 0x004cdcf0
0047f5df  8b85dcfdffff              MOV EAX,dword ptr [EBP + 0xfffffddc]
0047f5e5  3987c00b0000              CMP dword ptr [EDI + 0xbc0],EAX
0047f5eb  0f8c5ffeffff              JL 0x0047f450
0047f5f1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0047f5f4  64890d00000000            MOV dword ptr FS:[0x0],ECX
0047f5fb  59                        POP ECX
0047f5fc  5f                        POP EDI
0047f5fd  5e                        POP ESI
0047f5fe  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0047f601  33cd                      XOR ECX,EBP
0047f603  e823fb6600                CALL 0x00aef12b
0047f608  8be5                      MOV ESP,EBP
0047f60a  5d                        POP EBP
0047f60b  8be3                      MOV ESP,EBX
0047f60d  5b                        POP EBX
0047f60e  c3                        RET
