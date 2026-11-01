; J460 NPC AI 0x004a3040 AI_004a3040
; types=917
; identities=917.0.0
; entry=004a3040
004a3040  53                        PUSH EBX
004a3041  8bdc                      MOV EBX,ESP
004a3043  83ec08                    SUB ESP,0x8
004a3046  83e4f8                    AND ESP,0xfffffff8
004a3049  83c404                    ADD ESP,0x4
004a304c  55                        PUSH EBP
004a304d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004a3050  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004a3054  8bec                      MOV EBP,ESP
004a3056  6aff                      PUSH -0x1
004a3058  681b30af00                PUSH 0xaf301b
004a305d  64a100000000              MOV EAX,FS:[0x0]
004a3063  50                        PUSH EAX
004a3064  53                        PUSH EBX
004a3065  81ec90010000              SUB ESP,0x190
004a306b  a1b493bf00                MOV EAX,[0x00bf93b4]
004a3070  33c5                      XOR EAX,EBP
004a3072  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004a3075  56                        PUSH ESI
004a3076  57                        PUSH EDI
004a3077  50                        PUSH EAX
004a3078  8d45f4                    LEA EAX,[EBP + -0xc]
004a307b  64a300000000              MOV FS:[0x0],EAX
004a3081  8bf9                      MOV EDI,ECX
004a3083  89bdb0feffff              MOV dword ptr [EBP + 0xfffffeb0],EDI
004a3089  c785a8feffff00000000      MOV dword ptr [EBP + 0xfffffea8],0x0
004a3093  0f57c9                    XORPS XMM1,XMM1
004a3096  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004a309e  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004a30a6  f30f100524a3ba00          MOVSS XMM0,dword ptr [0x00baa324]
004a30ae  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
004a30b6  2bc8                      SUB ECX,EAX
004a30b8  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004a30bd  0f2fc1                    COMISS XMM0,XMM1
004a30c0  898d8cfeffff              MOV dword ptr [EBP + 0xfffffe8c],ECX
004a30c6  765b                      JBE 0x004a3123
004a30c8  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
004a30cf  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004a30d2  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004a30d5  744c                      JZ 0x004a3123
004a30d7  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004a30da  83e104                    AND ECX,0x4
004a30dd  83c900                    OR ECX,0x0
004a30e0  742b                      JZ 0x004a310d
004a30e2  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
004a30e5  d1e9                      SHR ECX,0x1
004a30e7  f6c101                    TEST CL,0x1
004a30ea  7521                      JNZ 0x004a310d
004a30ec  817810e8030000            CMP dword ptr [EAX + 0x10],0x3e8
004a30f3  7509                      JNZ 0x004a30fe
004a30f5  8178148d000000            CMP dword ptr [EAX + 0x14],0x8d
004a30fc  7409                      JZ 0x004a3107
004a30fe  81781895030000            CMP dword ptr [EAX + 0x18],0x395
004a3105  7506                      JNZ 0x004a310d
004a3107  c70000000000              MOV dword ptr [EAX],0x0
004a310d  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004a3111  83c038                    ADD EAX,0x38
004a3114  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
004a3119  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
004a311e  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004a3121  75b4                      JNZ 0x004a30d7
004a3123  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004a312b  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004a3133  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004a313a  0f86e0000000              JBE 0x004a3220
004a3140  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004a3146  83f810                    CMP EAX,0x10
004a3149  0f84d1000000              JZ 0x004a3220
004a314f  83f804                    CMP EAX,0x4
004a3152  0f84c8000000              JZ 0x004a3220
004a3158  83f806                    CMP EAX,0x6
004a315b  0f84bf000000              JZ 0x004a3220
004a3161  83f80a                    CMP EAX,0xa
004a3164  0f84b6000000              JZ 0x004a3220
004a316a  83f80b                    CMP EAX,0xb
004a316d  0f84ad000000              JZ 0x004a3220
004a3173  8bcf                      MOV ECX,EDI
004a3175  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004a317f  e8acb42000                CALL 0x006ae630
004a3184  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004a318e  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004a3191  85f6                      TEST ESI,ESI
004a3193  744a                      JZ 0x004a31df
004a3195  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004a3199  8bc6                      MOV EAX,ESI
004a319b  7202                      JC 0x004a319f
004a319d  8b06                      MOV EAX,dword ptr [ESI]
004a319f  b948e8b100                MOV ECX,0xb1e848
004a31a4  8a10                      MOV DL,byte ptr [EAX]
004a31a6  3a11                      CMP DL,byte ptr [ECX]
004a31a8  751a                      JNZ 0x004a31c4
004a31aa  84d2                      TEST DL,DL
004a31ac  7412                      JZ 0x004a31c0
004a31ae  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a31b1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a31b4  750e                      JNZ 0x004a31c4
004a31b6  83c002                    ADD EAX,0x2
004a31b9  83c102                    ADD ECX,0x2
004a31bc  84d2                      TEST DL,DL
004a31be  75e4                      JNZ 0x004a31a4
004a31c0  33c0                      XOR EAX,EAX
004a31c2  eb05                      JMP 0x004a31c9
004a31c4  1bc0                      SBB EAX,EAX
004a31c6  83c801                    OR EAX,0x1
004a31c9  85c0                      TEST EAX,EAX
004a31cb  7512                      JNZ 0x004a31df
004a31cd  384634                    CMP byte ptr [ESI + 0x34],AL
004a31d0  742e                      JZ 0x004a3200
004a31d2  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004a31d8  8d7748                    LEA ESI,[EDI + 0x48]
004a31db  7523                      JNZ 0x004a3200
004a31dd  eb03                      JMP 0x004a31e2
004a31df  8d7748                    LEA ESI,[EDI + 0x48]
004a31e2  6a01                      PUSH 0x1
004a31e4  6848e8b100                PUSH 0xb1e848
004a31e9  8bce                      MOV ECX,ESI
004a31eb  e8e073f6ff                CALL 0x0040a5d0
004a31f0  84c0                      TEST AL,AL
004a31f2  740c                      JZ 0x004a3200
004a31f4  8d4e30                    LEA ECX,[ESI + 0x30]
004a31f7  e8b46ff6ff                CALL 0x0040a1b0
004a31fc  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004a3200  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a3208  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004a3210  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a3218  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a3220  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004a3226  83f810                    CMP EAX,0x10
004a3229  0f87fd240000              JA 0x004a572c
004a322f  0fb680d05c4a00            MOVZX EAX,byte ptr [EAX + 0x4a5cd0]
004a3236  ff2485a85c4a00            JMP dword ptr [EAX*0x4 + 0x4a5ca8]
004a323d  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004a3244  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004a324a  0f280dc0c8ba00            MOVAPS XMM1,xmmword ptr [0x00bac8c0]
004a3251  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
004a3257  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a3261  c78580feffff00000000      MOV dword ptr [EBP + 0xfffffe80],0x0
004a326b  c78584feffff00000000      MOV dword ptr [EBP + 0xfffffe84],0x0
004a3275  c78588feffff00000000      MOV dword ptr [EBP + 0xfffffe88],0x0
004a327f  3bc8                      CMP ECX,EAX
004a3281  741d                      JZ 0x004a32a0
004a3283  8b8588feffff              MOV EAX,dword ptr [EBP + 0xfffffe88]
004a3289  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004a328c  f30f7e8580feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe80]
004a3294  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004a3299  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
004a329d  894128                    MOV dword ptr [ECX + 0x28],EAX
004a32a0  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
004a32aa  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
004a32b4  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004a32be  e969240000                JMP 0x004a572c
004a32c3  8d7748                    LEA ESI,[EDI + 0x48]
004a32c6  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004a32d0  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
004a32d3  85c9                      TEST ECX,ECX
004a32d5  7447                      JZ 0x004a331e
004a32d7  83791410                  CMP dword ptr [ECX + 0x14],0x10
004a32db  8bc1                      MOV EAX,ECX
004a32dd  7202                      JC 0x004a32e1
004a32df  8b01                      MOV EAX,dword ptr [ECX]
004a32e1  b954bcb100                MOV ECX,0xb1bc54
004a32e6  8a10                      MOV DL,byte ptr [EAX]
004a32e8  3a11                      CMP DL,byte ptr [ECX]
004a32ea  751a                      JNZ 0x004a3306
004a32ec  84d2                      TEST DL,DL
004a32ee  7412                      JZ 0x004a3302
004a32f0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a32f3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a32f6  750e                      JNZ 0x004a3306
004a32f8  83c002                    ADD EAX,0x2
004a32fb  83c102                    ADD ECX,0x2
004a32fe  84d2                      TEST DL,DL
004a3300  75e4                      JNZ 0x004a32e6
004a3302  33c0                      XOR EAX,EAX
004a3304  eb05                      JMP 0x004a330b
004a3306  1bc0                      SBB EAX,EAX
004a3308  83c801                    OR EAX,0x1
004a330b  85c0                      TEST EAX,EAX
004a330d  750f                      JNZ 0x004a331e
004a330f  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004a3312  80783400                  CMP byte ptr [EAX + 0x34],0x0
004a3316  7427                      JZ 0x004a333f
004a3318  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004a331c  7521                      JNZ 0x004a333f
004a331e  6a01                      PUSH 0x1
004a3320  6854bcb100                PUSH 0xb1bc54
004a3325  8bce                      MOV ECX,ESI
004a3327  e8a472f6ff                CALL 0x0040a5d0
004a332c  84c0                      TEST AL,AL
004a332e  740f                      JZ 0x004a333f
004a3330  8d4e30                    LEA ECX,[ESI + 0x30]
004a3333  e8786ef6ff                CALL 0x0040a1b0
004a3338  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004a333c  8d7748                    LEA ESI,[EDI + 0x48]
004a333f  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004a3346  0f8fe0230000              JG 0x004a572c
004a334c  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004a3353  0f85da000000              JNZ 0x004a3433
004a3359  8d85e7feffff              LEA EAX,[EBP + 0xfffffee7]
004a335f  c685e7feffff00            MOV byte ptr [EBP + 0xfffffee7],0x0
004a3366  50                        PUSH EAX
004a3367  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a336d  8bcf                      MOV ECX,EDI
004a336f  50                        PUSH EAX
004a3370  e8cbf5ffff                CALL 0x004a2940
004a3375  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
004a337b  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004a337f  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004a3387  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004a338c  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a3394  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004a339c  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004a33a4  f30f58c9                  ADDSS XMM1,XMM1
004a33a8  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004a33b0  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
004a33b8  e8a3be1d00                CALL 0x0067f260
004a33bd  80bde7feffff00            CMP byte ptr [EBP + 0xfffffee7],0x0
004a33c4  8bc8                      MOV ECX,EAX
004a33c6  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
004a33cc  7426                      JZ 0x004a33f4
004a33ce  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a33d6  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004a33de  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a33e6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a33ee  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004a33f4  83f901                    CMP ECX,0x1
004a33f7  7519                      JNZ 0x004a3412
004a33f9  b86ce8b100                MOV EAX,0xb1e86c
004a33fe  8bce                      MOV ECX,ESI
004a3400  6a00                      PUSH 0x0
004a3402  50                        PUSH EAX
004a3403  e8786ff6ff                CALL 0x0040a380
004a3408  b808000000                MOV EAX,0x8
004a340d  e996000000                JMP 0x004a34a8
004a3412  83f903                    CMP ECX,0x3
004a3415  ba4ce8b100                MOV EDX,0xb1e84c
004a341a  b87ce8b100                MOV EAX,0xb1e87c
004a341f  8bce                      MOV ECX,ESI
004a3421  0f45c2                    CMOVNZ EAX,EDX
004a3424  6a00                      PUSH 0x0
004a3426  50                        PUSH EAX
004a3427  e8546ff6ff                CALL 0x0040a380
004a342c  b808000000                MOV EAX,0x8
004a3431  eb75                      JMP 0x004a34a8
004a3433  6a00                      PUSH 0x0
004a3435  6854ddb100                PUSH 0xb1dd54
004a343a  8bce                      MOV ECX,ESI
004a343c  e83f6ff6ff                CALL 0x0040a380
004a3441  8bcf                      MOV ECX,EDI
004a3443  e8f8b32100                CALL 0x006be840
004a3448  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004a3450  8bf0                      MOV ESI,EAX
004a3452  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a345a  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004a3462  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004a346a  f30f59c0                  MULSS XMM0,XMM0
004a346e  f30f59c9                  MULSS XMM1,XMM1
004a3472  f30f58c1                  ADDSS XMM0,XMM1
004a3476  e8d525f9ff                CALL 0x00435a50
004a347b  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004a3483  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
004a348b  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
004a3493  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
004a349a  0f97c0                    SETA AL
004a349d  888748010000              MOV byte ptr [EDI + 0x148],AL
004a34a3  b809000000                MOV EAX,0x9
004a34a8  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004a34ae  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004a34b8  e96f220000                JMP 0x004a572c
004a34bd  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
004a34c3  85f6                      TEST ESI,ESI
004a34c5  0f88170c0000              JS 0x004a40e2
004a34cb  83fe03                    CMP ESI,0x3
004a34ce  7735                      JA 0x004a3505
004a34d0  64a12c000000              MOV EAX,FS:[0x2c]
004a34d6  8b08                      MOV ECX,dword ptr [EAX]
004a34d8  a12000c800                MOV EAX,[0x00c80020]
004a34dd  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
004a34e3  0f8f76270000              JG 0x004a5c5f
004a34e9  f30f100cf52400c800        MOVSS XMM1,dword ptr [ESI*0x8 + 0xc80024]
004a34f2  f30f1004f52800c800        MOVSS XMM0,dword ptr [ESI*0x8 + 0xc80028]
004a34fb  f30f118db0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM1
004a3503  eb18                      JMP 0x004a351d
004a3505  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a350d  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
004a3515  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a351d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a3521  8d7778                    LEA ESI,[EDI + 0x78]
004a3524  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004a352c  0f84c1000000              JZ 0x004a35f3
004a3532  68dcd2b100                PUSH 0xb1d2dc
004a3537  8bce                      MOV ECX,ESI
004a3539  e89278f6ff                CALL 0x0040add0
004a353e  84c0                      TEST AL,AL
004a3540  0f8497000000              JZ 0x004a35dd
004a3546  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004a354d  51                        PUSH ECX
004a354e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a3555  0f94c0                    SETZ AL
004a3558  6a00                      PUSH 0x0
004a355a  6a02                      PUSH 0x2
004a355c  51                        PUSH ECX
004a355d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a3564  8bcf                      MOV ECX,EDI
004a3566  682d010000                PUSH 0x12d
004a356b  888748010000              MOV byte ptr [EDI + 0x148],AL
004a3571  e82a362300                CALL 0x006d6ba0
004a3576  51                        PUSH ECX
004a3577  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a357e  6a00                      PUSH 0x0
004a3580  6a02                      PUSH 0x2
004a3582  51                        PUSH ECX
004a3583  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a358a  8bcf                      MOV ECX,EDI
004a358c  68da010000                PUSH 0x1da
004a3591  e80a362300                CALL 0x006d6ba0
004a3596  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004a359c  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
004a35a2  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004a35a8  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
004a35ae  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004a35b4  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004a35be  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004a35c8  f30f104044                MOVSS XMM0,dword ptr [EAX + 0x44]
004a35cd  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004a35d5  f30f11877c030000          MOVSS dword ptr [EDI + 0x37c],XMM0
004a35dd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a35e1  7410                      JZ 0x004a35f3
004a35e3  68dcd2b100                PUSH 0xb1d2dc
004a35e8  8bce                      MOV ECX,ESI
004a35ea  e88178f6ff                CALL 0x0040ae70
004a35ef  84c0                      TEST AL,AL
004a35f1  7515                      JNZ 0x004a3608
004a35f3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004a35f6  85c0                      TEST EAX,EAX
004a35f8  0f846e090000              JZ 0x004a3f6c
004a35fe  80783400                  CMP byte ptr [EAX + 0x34],0x0
004a3602  0f8464090000              JZ 0x004a3f6c
004a3608  f30f100518a4ba00          MOVSS XMM0,dword ptr [0x00baa418]
004a3610  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
004a3618  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004a3620  e81b9ff7ff                CALL 0x0041d540
004a3625  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004a362d  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004a3635  e8e69ef7ff                CALL 0x0041d520
004a363a  f30f109db8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeb8]
004a3642  0f28c8                    MOVAPS XMM1,XMM0
004a3645  f30f10adb0feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffeb0]
004a364d  0f28e3                    MOVAPS XMM4,XMM3
004a3650  f30f599da8feffff          MULSS XMM3,dword ptr [EBP + 0xfffffea8]
004a3658  f30f598da8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffea8]
004a3660  f30f59c5                  MULSS XMM0,XMM5
004a3664  f30f59e5                  MULSS XMM4,XMM5
004a3668  f30f58d8                  ADDSS XMM3,XMM0
004a366c  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004a3674  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004a367b  f30f5ce1                  SUBSS XMM4,XMM1
004a367f  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004a3687  f30f119db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM3
004a368f  9f                        LAHF
004a3690  f30f11a5c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM4
004a3698  f6c444                    TEST AH,0x44
004a369b  7a3c                      JP 0x004a36d9
004a369d  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
004a36a4  9f                        LAHF
004a36a5  f6c444                    TEST AH,0x44
004a36a8  7a2f                      JP 0x004a36d9
004a36aa  8bcf                      MOV ECX,EDI
004a36ac  e88fb12100                CALL 0x006be840
004a36b1  f30f109db8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeb8]
004a36b9  f30f10a5c8feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffec8]
004a36c1  f30f10adb0feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffeb0]
004a36c9  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004a36d1  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004a36d9  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004a36e1  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004a36e9  8bcf                      MOV ECX,EDI
004a36eb  f30f59cb                  MULSS XMM1,XMM3
004a36ef  f30f59c4                  MULSS XMM0,XMM4
004a36f3  f30f58c8                  ADDSS XMM1,XMM0
004a36f7  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004a36ff  f30f590d30a0ba00          MULSS XMM1,dword ptr [0x00baa030]
004a3707  f30f5f0d0cadba00          MAXSS XMM1,dword ptr [0x00baad0c]
004a370f  f30f5d0d98a1ba00          MINSS XMM1,dword ptr [0x00baa198]
004a3717  0f28d1                    MOVAPS XMM2,XMM1
004a371a  f30f59cb                  MULSS XMM1,XMM3
004a371e  f30f59d4                  MULSS XMM2,XMM4
004a3722  f30f588da8feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffea8]
004a372a  f30f58d5                  ADDSS XMM2,XMM5
004a372e  f30f58c9                  ADDSS XMM1,XMM1
004a3732  f30f58d2                  ADDSS XMM2,XMM2
004a3736  f30f59c8                  MULSS XMM1,XMM0
004a373a  f30f59d0                  MULSS XMM2,XMM0
004a373e  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004a3746  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004a374e  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004a3756  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004a375e  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
004a3766  f30f1195b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM2
004a376e  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004a3776  0f57d2                    XORPS XMM2,XMM2
004a3779  e8e28f2000                CALL 0x006ac760
004a377e  85c0                      TEST EAX,EAX
004a3780  0f84ff020000              JZ 0x004a3a85
004a3786  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
004a378e  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
004a3794  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004a379c  50                        PUSH EAX
004a379d  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004a37a5  f30f108de0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee0]
004a37ad  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004a37b5  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004a37bd  e8aeb81d00                CALL 0x0067f070
004a37c2  83c404                    ADD ESP,0x4
004a37c5  8bf0                      MOV ESI,EAX
004a37c7  e894b72400                CALL 0x006eef60
004a37cc  8d973c030000              LEA EDX,[EDI + 0x33c]
004a37d2  b903000000                MOV ECX,0x3
004a37d7  660f6ec0                  MOVD XMM0,EAX
004a37db  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a37df  c1e81f                    SHR EAX,0x1f
004a37e2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a37eb  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a37f1  50                        PUSH EAX
004a37f2  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004a37f8  50                        PUSH EAX
004a37f9  660f5ac8                  CVTPD2PS XMM1,XMM0
004a37fd  6840b6c700                PUSH 0xc7b640
004a3802  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a380a  0f28c1                    MOVAPS XMM0,XMM1
004a380d  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004a3812  f30f5906                  MULSS XMM0,dword ptr [ESI]
004a3816  f30f58c9                  ADDSS XMM1,XMM1
004a381a  f30f58c0                  ADDSS XMM0,XMM0
004a381e  f30f588de0feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffee0]
004a3826  f30f5885b8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeb8]
004a382e  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a3836  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a383e  e8ad442300                CALL 0x006d7cf0
004a3843  83c40c                    ADD ESP,0xc
004a3846  8bf0                      MOV ESI,EAX
004a3848  e813b72400                CALL 0x006eef60
004a384d  660f6ec0                  MOVD XMM0,EAX
004a3851  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a3855  c1e81f                    SHR EAX,0x1f
004a3858  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a3861  660f5ad0                  CVTPD2PS XMM2,XMM0
004a3865  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004a386d  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
004a3875  f30f5815a4a3ba00          ADDSS XMM2,dword ptr [0x00baa3a4]
004a387d  0f28ca                    MOVAPS XMM1,XMM2
004a3880  f30f1196e4000000          MOVSS dword ptr [ESI + 0xe4],XMM2
004a3888  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
004a3890  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004a3898  e8c3b62400                CALL 0x006eef60
004a389d  33d2                      XOR EDX,EDX
004a389f  b906000000                MOV ECX,0x6
004a38a4  f7f1                      DIV ECX
004a38a6  83c208                    ADD EDX,0x8
004a38a9  8995c8feffff              MOV dword ptr [EBP + 0xfffffec8],EDX
004a38af  85d2                      TEST EDX,EDX
004a38b1  0f8ece010000              JLE 0x004a3a85
004a38b7  e8a4b62400                CALL 0x006eef60
004a38bc  660f6ec0                  MOVD XMM0,EAX
004a38c0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a38c4  c1e81f                    SHR EAX,0x1f
004a38c7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a38d0  660f5ac0                  CVTPD2PS XMM0,XMM0
004a38d4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a38dc  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004a38e4  f30f58c0                  ADDSS XMM0,XMM0
004a38e8  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a38f0  e82b9cf7ff                CALL 0x0041d520
004a38f5  0f28c8                    MOVAPS XMM1,XMM0
004a38f8  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004a3900  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
004a3908  e8339cf7ff                CALL 0x0041d540
004a390d  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
004a3915  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a391d  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
004a3925  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004a392d  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004a3935  e826b62400                CALL 0x006eef60
004a393a  f30f1095e0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee0]
004a3942  660f6ec8                  MOVD XMM1,EAX
004a3946  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004a394a  c1e81f                    SHR EAX,0x1f
004a394d  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004a3956  660f5ac1                  CVTPD2PS XMM0,XMM1
004a395a  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
004a3962  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a396a  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004a3972  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
004a397a  f30f59d0                  MULSS XMM2,XMM0
004a397e  f30f59c8                  MULSS XMM1,XMM0
004a3982  f30f5e1550a9ba00          DIVSS XMM2,dword ptr [0x00baa950]
004a398a  f30f5e0d50a9ba00          DIVSS XMM1,dword ptr [0x00baa950]
004a3992  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
004a399a  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a39a2  e8b9b52400                CALL 0x006eef60
004a39a7  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004a39af  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
004a39b7  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004a39bf  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004a39c7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a39cd  50                        PUSH EAX
004a39ce  6a01                      PUSH 0x1
004a39d0  6a00                      PUSH 0x0
004a39d2  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a39d8  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
004a39e0  50                        PUSH EAX
004a39e1  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
004a39e7  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
004a39ef  50                        PUSH EAX
004a39f0  6a63                      PUSH 0x63
004a39f2  68e8030000                PUSH 0x3e8
004a39f7  e82451f8ff                CALL 0x00428b20
004a39fc  8bf0                      MOV ESI,EAX
004a39fe  f30f108ee4000000          MOVSS XMM1,dword ptr [ESI + 0xe4]
004a3a06  f30f1086e8000000          MOVSS XMM0,dword ptr [ESI + 0xe8]
004a3a0e  f30f58c9                  ADDSS XMM1,XMM1
004a3a12  f30f58c0                  ADDSS XMM0,XMM0
004a3a16  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
004a3a1e  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
004a3a26  e835b52400                CALL 0x006eef60
004a3a2b  8bce                      MOV ECX,ESI
004a3a2d  c786180400000000c03f      MOV dword ptr [ESI + 0x418],0x3fc00000
004a3a37  660f6ec0                  MOVD XMM0,EAX
004a3a3b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a3a3f  c1e81f                    SHR EAX,0x1f
004a3a42  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a3a4b  8b06                      MOV EAX,dword ptr [ESI]
004a3a4d  660f5ac8                  CVTPD2PS XMM1,XMM0
004a3a51  f30f100590adba00          MOVSS XMM0,dword ptr [0x00baad90]
004a3a59  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a3a61  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
004a3a69  f30f5cc1                  SUBSS XMM0,XMM1
004a3a6d  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
004a3a75  ff500c                    CALL dword ptr [EAX + 0xc]
004a3a78  83adc8feffff01            SUB dword ptr [EBP + 0xfffffec8],0x1
004a3a7f  0f8532feffff              JNZ 0x004a38b7
004a3a85  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004a3a8d  0f28c8                    MOVAPS XMM1,XMM0
004a3a90  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a3a98  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a3aa0  f30f5c87bc0b0000          SUBSS XMM0,dword ptr [EDI + 0xbbc]
004a3aa8  f30f5c8fb80b0000          SUBSS XMM1,dword ptr [EDI + 0xbb8]
004a3ab0  f30f59c0                  MULSS XMM0,XMM0
004a3ab4  f30f59c9                  MULSS XMM1,XMM1
004a3ab8  f30f58c1                  ADDSS XMM0,XMM1
004a3abc  e88f1ff9ff                CALL 0x00435a50
004a3ac1  0f28d0                    MOVAPS XMM2,XMM0
004a3ac4  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
004a3acc  0f28ca                    MOVAPS XMM1,XMM2
004a3acf  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
004a3ad7  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
004a3adf  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004a3ae7  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004a3aed  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
004a3af3  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004a3afb  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
004a3b03  0f28c1                    MOVAPS XMM0,XMM1
004a3b06  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004a3b0e  0f2fc2                    COMISS XMM0,XMM2
004a3b11  7611                      JBE 0x004a3b24
004a3b13  0f28c1                    MOVAPS XMM0,XMM1
004a3b16  f30f58c3                  ADDSS XMM0,XMM3
004a3b1a  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004a3b22  eb03                      JMP 0x004a3b27
004a3b24  0f28c3                    MOVAPS XMM0,XMM3
004a3b27  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
004a3b2e  7647                      JBE 0x004a3b77
004a3b30  c6879001000001            MOV byte ptr [EDI + 0x190],0x1
004a3b37  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
004a3b3d  898794010000              MOV dword ptr [EDI + 0x194],EAX
004a3b43  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
004a3b49  898798010000              MOV dword ptr [EDI + 0x198],EAX
004a3b4f  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
004a3b55  89879c010000              MOV dword ptr [EDI + 0x19c],EAX
004a3b5b  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
004a3b61  8987a0010000              MOV dword ptr [EDI + 0x1a0],EAX
004a3b67  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004a3b6f  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004a3b77  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004a3b7f  f30f5cc1                  SUBSS XMM0,XMM1
004a3b83  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004a3b8b  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004a3b93  0f2f0550a9ba00            COMISS XMM0,dword ptr [0x00baa950]
004a3b9a  0f86cc030000              JBE 0x004a3f6c
004a3ba0  51                        PUSH ECX
004a3ba1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a3ba8  6a00                      PUSH 0x0
004a3baa  6a02                      PUSH 0x2
004a3bac  51                        PUSH ECX
004a3bad  c704240000003f            MOV dword ptr [ESP],0x3f000000
004a3bb4  8bcf                      MOV ECX,EDI
004a3bb6  6a25                      PUSH 0x25
004a3bb8  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004a3bc2  e8d92f2300                CALL 0x006d6ba0
004a3bc7  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a3bcd  50                        PUSH EAX
004a3bce  e89db41d00                CALL 0x0067f070
004a3bd3  83c404                    ADD ESP,0x4
004a3bd6  8bf0                      MOV ESI,EAX
004a3bd8  e883b32400                CALL 0x006eef60
004a3bdd  660f6ec0                  MOVD XMM0,EAX
004a3be1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a3be5  c1e81f                    SHR EAX,0x1f
004a3be8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a3bf1  660f5ac8                  CVTPD2PS XMM1,XMM0
004a3bf5  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a3bfd  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004a3c05  0f28c1                    MOVAPS XMM0,XMM1
004a3c08  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004a3c0d  f30f5906                  MULSS XMM0,dword ptr [ESI]
004a3c11  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004a3c19  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004a3c21  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004a3c29  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a3c31  e82ab32400                CALL 0x006eef60
004a3c36  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
004a3c3e  8db73c030000              LEA ESI,[EDI + 0x33c]
004a3c44  f30f108de0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee0]
004a3c4c  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004a3c54  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a3c5a  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004a3c62  50                        PUSH EAX
004a3c63  6a01                      PUSH 0x1
004a3c65  57                        PUSH EDI
004a3c66  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a3c6c  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a3c74  50                        PUSH EAX
004a3c75  56                        PUSH ESI
004a3c76  688d000000                PUSH 0x8d
004a3c7b  68e8030000                PUSH 0x3e8
004a3c80  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a3c88  e8934ef8ff                CALL 0x00428b20
004a3c8d  8bc8                      MOV ECX,EAX
004a3c8f  8b10                      MOV EDX,dword ptr [EAX]
004a3c91  c7805c040000ffffffff      MOV dword ptr [EAX + 0x45c],0xffffffff
004a3c9b  c78060040000ffffffff      MOV dword ptr [EAX + 0x460],0xffffffff
004a3ca5  ff520c                    CALL dword ptr [EDX + 0xc]
004a3ca8  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004a3cae  e87db2f9ff                CALL 0x0043ef30
004a3cb3  c785f4feffffc976bebd      MOV dword ptr [EBP + 0xfffffef4],0xbdbe76c9
004a3cbd  e89eb22400                CALL 0x006eef60
004a3cc2  c78540ffffff00000000      MOV dword ptr [EBP + 0xffffff40],0x0
004a3ccc  c78544ffffff20000000      MOV dword ptr [EBP + 0xffffff44],0x20
004a3cd6  c7850cffffff8fc2753f      MOV dword ptr [EBP + 0xffffff0c],0x3f75c28f
004a3ce0  660f6ec0                  MOVD XMM0,EAX
004a3ce4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a3ce8  c1e81f                    SHR EAX,0x1f
004a3ceb  c7857cffffff03000000      MOV dword ptr [EBP + 0xffffff7c],0x3
004a3cf5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a3cfe  660f5ac0                  CVTPD2PS XMM0,XMM0
004a3d02  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a3d0a  f30f590574adba00          MULSS XMM0,dword ptr [0x00baad74]
004a3d12  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004a3d1a  f30f100508a6ba00          MOVSS XMM0,dword ptr [0x00baa608]
004a3d22  e81998f7ff                CALL 0x0041d540
004a3d27  0f28d0                    MOVAPS XMM2,XMM0
004a3d2a  f30f100508a6ba00          MOVSS XMM0,dword ptr [0x00baa608]
004a3d32  f30f1195b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM2
004a3d3a  e8e197f7ff                CALL 0x0041d520
004a3d3f  f30f10a5b8feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffeb8]
004a3d47  0f28c8                    MOVAPS XMM1,XMM0
004a3d4a  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
004a3d52  0f28ec                    MOVAPS XMM5,XMM4
004a3d55  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004a3d5d  f30f59eb                  MULSS XMM5,XMM3
004a3d61  f30f59c3                  MULSS XMM0,XMM3
004a3d65  f30f59ca                  MULSS XMM1,XMM2
004a3d69  f30f59e2                  MULSS XMM4,XMM2
004a3d6d  f30f5ce9                  SUBSS XMM5,XMM1
004a3d71  f30f58e0                  ADDSS XMM4,XMM0
004a3d75  0f28c5                    MOVAPS XMM0,XMM5
004a3d78  f30f11ade0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM5
004a3d80  f30f59c5                  MULSS XMM0,XMM5
004a3d84  0f28cc                    MOVAPS XMM1,XMM4
004a3d87  f30f11a5b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM4
004a3d8f  f30f59cc                  MULSS XMM1,XMM4
004a3d93  f30f58c1                  ADDSS XMM0,XMM1
004a3d97  e8b41cf9ff                CALL 0x00435a50
004a3d9c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004a3da3  7633                      JBE 0x004a3dd8
004a3da5  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a3dad  f30f5ec8                  DIVSS XMM1,XMM0
004a3db1  0f28c1                    MOVAPS XMM0,XMM1
004a3db4  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004a3dbc  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a3dc4  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
004a3dcc  f30f59c1                  MULSS XMM0,XMM1
004a3dd0  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004a3dd8  e883b12400                CALL 0x006eef60
004a3ddd  8bcf                      MOV ECX,EDI
004a3ddf  660f6ec0                  MOVD XMM0,EAX
004a3de3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a3de7  c1e81f                    SHR EAX,0x1f
004a3dea  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a3df3  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004a3df9  50                        PUSH EAX
004a3dfa  6a00                      PUSH 0x0
004a3dfc  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a3e02  660f5ac8                  CVTPD2PS XMM1,XMM0
004a3e06  50                        PUSH EAX
004a3e07  56                        PUSH ESI
004a3e08  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a3e10  f30f58c9                  ADDSS XMM1,XMM1
004a3e14  f30f580da4a7ba00          ADDSS XMM1,dword ptr [0x00baa7a4]
004a3e1c  0f28c1                    MOVAPS XMM0,XMM1
004a3e1f  f30f598db8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffeb8]
004a3e27  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004a3e2f  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a3e37  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a3e3f  e89c742200                CALL 0x006cb2e0
004a3e44  f30f100570adba00          MOVSS XMM0,dword ptr [0x00baad70]
004a3e4c  e8ef96f7ff                CALL 0x0041d540
004a3e51  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a3e59  f30f100570adba00          MOVSS XMM0,dword ptr [0x00baad70]
004a3e61  e8ba96f7ff                CALL 0x0041d520
004a3e66  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
004a3e6e  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
004a3e76  0f28cc                    MOVAPS XMM1,XMM4
004a3e79  f30f59a5c8feffff          MULSS XMM4,dword ptr [EBP + 0xfffffec8]
004a3e81  0f28ea                    MOVAPS XMM5,XMM2
004a3e84  f30f59adc8feffff          MULSS XMM5,dword ptr [EBP + 0xfffffec8]
004a3e8c  f30f59c8                  MULSS XMM1,XMM0
004a3e90  f30f59d0                  MULSS XMM2,XMM0
004a3e94  f30f5ce9                  SUBSS XMM5,XMM1
004a3e98  f30f58e2                  ADDSS XMM4,XMM2
004a3e9c  0f28cd                    MOVAPS XMM1,XMM5
004a3e9f  f30f11ade0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM5
004a3ea7  f30f59cd                  MULSS XMM1,XMM5
004a3eab  0f28c4                    MOVAPS XMM0,XMM4
004a3eae  f30f11a5b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM4
004a3eb6  f30f59c4                  MULSS XMM0,XMM4
004a3eba  f30f58c1                  ADDSS XMM0,XMM1
004a3ebe  e88d1bf9ff                CALL 0x00435a50
004a3ec3  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004a3eca  7634                      JBE 0x004a3f00
004a3ecc  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a3ed4  f30f5ec8                  DIVSS XMM1,XMM0
004a3ed8  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004a3ee0  f30f59c1                  MULSS XMM0,XMM1
004a3ee4  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a3eec  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
004a3ef4  f30f59c1                  MULSS XMM0,XMM1
004a3ef8  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004a3f00  e85bb02400                CALL 0x006eef60
004a3f05  8bcf                      MOV ECX,EDI
004a3f07  660f6ec0                  MOVD XMM0,EAX
004a3f0b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a3f0f  c1e81f                    SHR EAX,0x1f
004a3f12  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a3f1b  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004a3f21  50                        PUSH EAX
004a3f22  6a00                      PUSH 0x0
004a3f24  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a3f2a  660f5ac8                  CVTPD2PS XMM1,XMM0
004a3f2e  50                        PUSH EAX
004a3f2f  56                        PUSH ESI
004a3f30  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a3f38  f30f58c9                  ADDSS XMM1,XMM1
004a3f3c  f30f580da4a7ba00          ADDSS XMM1,dword ptr [0x00baa7a4]
004a3f44  0f28c1                    MOVAPS XMM0,XMM1
004a3f47  f30f598db8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffeb8]
004a3f4f  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004a3f57  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a3f5f  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a3f67  e874732200                CALL 0x006cb2e0
004a3f6c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a3f70  8d7748                    LEA ESI,[EDI + 0x48]
004a3f73  740d                      JZ 0x004a3f82
004a3f75  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a3f7c  0f859e000000              JNZ 0x004a4020
004a3f82  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004a3f88  83f801                    CMP EAX,0x1
004a3f8b  7575                      JNZ 0x004a4002
004a3f8d  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004a3f90  85c9                      TEST ECX,ECX
004a3f92  744a                      JZ 0x004a3fde
004a3f94  83791410                  CMP dword ptr [ECX + 0x14],0x10
004a3f98  8bc1                      MOV EAX,ECX
004a3f9a  7202                      JC 0x004a3f9e
004a3f9c  8b01                      MOV EAX,dword ptr [ECX]
004a3f9e  b95ce8b100                MOV ECX,0xb1e85c
004a3fa3  8a10                      MOV DL,byte ptr [EAX]
004a3fa5  3a11                      CMP DL,byte ptr [ECX]
004a3fa7  751a                      JNZ 0x004a3fc3
004a3fa9  84d2                      TEST DL,DL
004a3fab  7412                      JZ 0x004a3fbf
004a3fad  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a3fb0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a3fb3  750e                      JNZ 0x004a3fc3
004a3fb5  83c002                    ADD EAX,0x2
004a3fb8  83c102                    ADD ECX,0x2
004a3fbb  84d2                      TEST DL,DL
004a3fbd  75e4                      JNZ 0x004a3fa3
004a3fbf  33c0                      XOR EAX,EAX
004a3fc1  eb05                      JMP 0x004a3fc8
004a3fc3  1bc0                      SBB EAX,EAX
004a3fc5  83c801                    OR EAX,0x1
004a3fc8  85c0                      TEST EAX,EAX
004a3fca  7512                      JNZ 0x004a3fde
004a3fcc  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004a3fcf  80783400                  CMP byte ptr [EAX + 0x34],0x0
004a3fd3  7448                      JZ 0x004a401d
004a3fd5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a3fdc  753f                      JNZ 0x004a401d
004a3fde  6a01                      PUSH 0x1
004a3fe0  685ce8b100                PUSH 0xb1e85c
004a3fe5  8d4f48                    LEA ECX,[EDI + 0x48]
004a3fe8  e8e365f6ff                CALL 0x0040a5d0
004a3fed  84c0                      TEST AL,AL
004a3fef  742c                      JZ 0x004a401d
004a3ff1  8d4f78                    LEA ECX,[EDI + 0x78]
004a3ff4  e8b761f6ff                CALL 0x0040a1b0
004a3ff9  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004a4000  eb1b                      JMP 0x004a401d
004a4002  8d4f48                    LEA ECX,[EDI + 0x48]
004a4005  6a00                      PUSH 0x0
004a4007  83f803                    CMP EAX,0x3
004a400a  7507                      JNZ 0x004a4013
004a400c  68a8e8b100                PUSH 0xb1e8a8
004a4011  eb05                      JMP 0x004a4018
004a4013  68b8e8b100                PUSH 0xb1e8b8
004a4018  e86363f6ff                CALL 0x0040a380
004a401d  8d7748                    LEA ESI,[EDI + 0x48]
004a4020  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004a4027  0f84ff160000              JZ 0x004a572c
004a402d  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
004a4035  f30f108db0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb0]
004a403d  f30f5987a0010000          MULSS XMM0,dword ptr [EDI + 0x1a0]
004a4045  f30f598f9c010000          MULSS XMM1,dword ptr [EDI + 0x19c]
004a404d  f30f58c1                  ADDSS XMM0,XMM1
004a4051  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
004a4058  0f86ce160000              JBE 0x004a572c
004a405e  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004a4064  51                        PUSH ECX
004a4065  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a406c  6a00                      PUSH 0x0
004a406e  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004a4071  6a02                      PUSH 0x2
004a4073  51                        PUSH ECX
004a4074  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a407b  8bcf                      MOV ECX,EDI
004a407d  6a30                      PUSH 0x30
004a407f  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
004a4085  e8162b2300                CALL 0x006d6ba0
004a408a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a4090  6a06                      PUSH 0x6
004a4092  e8d9f52500                CALL 0x00703670
004a4097  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004a409d  83f901                    CMP ECX,0x1
004a40a0  7507                      JNZ 0x004a40a9
004a40a2  b88ce8b100                MOV EAX,0xb1e88c
004a40a7  eb10                      JMP 0x004a40b9
004a40a9  83f903                    CMP ECX,0x3
004a40ac  b898e8b100                MOV EAX,0xb1e898
004a40b1  bad4e8b100                MOV EDX,0xb1e8d4
004a40b6  0f45c2                    CMOVNZ EAX,EDX
004a40b9  6a00                      PUSH 0x0
004a40bb  50                        PUSH EAX
004a40bc  8bce                      MOV ECX,ESI
004a40be  e8bd62f6ff                CALL 0x0040a380
004a40c3  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004a40ca  0f94c0                    SETZ AL
004a40cd  888748010000              MOV byte ptr [EDI + 0x148],AL
004a40d3  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
004a40dd  e94a160000                JMP 0x004a572c
004a40e2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a40e6  742b                      JZ 0x004a4113
004a40e8  68dcd2b100                PUSH 0xb1d2dc
004a40ed  8d4f78                    LEA ECX,[EDI + 0x78]
004a40f0  e8db6cf6ff                CALL 0x0040add0
004a40f5  84c0                      TEST AL,AL
004a40f7  7407                      JZ 0x004a4100
004a40f9  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004a4100  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a4104  740d                      JZ 0x004a4113
004a4106  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a410d  0f8519160000              JNZ 0x004a572c
004a4113  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a411d  e83eae2400                CALL 0x006eef60
004a4122  33d2                      XOR EDX,EDX
004a4124  b905000000                MOV ECX,0x5
004a4129  f7f1                      DIV ECX
004a412b  a17816c700                MOV EAX,[0x00c71678]
004a4130  6a00                      PUSH 0x0
004a4132  6a00                      PUSH 0x0
004a4134  6a01                      PUSH 0x1
004a4136  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a413c  8d7a08                    LEA EDI,[EDX + 0x8]
004a413f  688d000000                PUSH 0x8d
004a4144  68e8030000                PUSH 0x3e8
004a4149  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
004a414f  81c118120000              ADD ECX,0x1218
004a4155  50                        PUSH EAX
004a4156  e8056ef7ff                CALL 0x0041af60
004a415b  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
004a4161  8b700c                    MOV ESI,dword ptr [EAX + 0xc]
004a4164  e84734f7ff                CALL 0x004175b0
004a4169  8b85b0feffff              MOV EAX,dword ptr [EBP + 0xfffffeb0]
004a416f  3bf7                      CMP ESI,EDI
004a4171  8bf8                      MOV EDI,EAX
004a4173  c780a00b000001000000      MOV dword ptr [EAX + 0xba0],0x1
004a417d  0f82a9150000              JC 0x004a572c
004a4183  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
004a418d  e99a150000                JMP 0x004a572c
004a4192  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a4196  0f8421030000              JZ 0x004a44bd
004a419c  68dcd2b100                PUSH 0xb1d2dc
004a41a1  8d4f78                    LEA ECX,[EDI + 0x78]
004a41a4  e8276cf6ff                CALL 0x0040add0
004a41a9  84c0                      TEST AL,AL
004a41ab  0f84db020000              JZ 0x004a448c
004a41b1  51                        PUSH ECX
004a41b2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a41b9  6a00                      PUSH 0x0
004a41bb  6a02                      PUSH 0x2
004a41bd  51                        PUSH ECX
004a41be  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a41c5  8bcf                      MOV ECX,EDI
004a41c7  68d5000000                PUSH 0xd5
004a41cc  e8cf292300                CALL 0x006d6ba0
004a41d1  e88aad2400                CALL 0x006eef60
004a41d6  50                        PUSH EAX
004a41d7  6a03                      PUSH 0x3
004a41d9  57                        PUSH EDI
004a41da  6840b6c700                PUSH 0xc7b640
004a41df  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004a41e5  51                        PUSH ECX
004a41e6  6a10                      PUSH 0x10
004a41e8  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
004a41ee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a41f4  68e8030000                PUSH 0x3e8
004a41f9  e82249f8ff                CALL 0x00428b20
004a41fe  8bf0                      MOV ESI,EAX
004a4200  6a01                      PUSH 0x1
004a4202  6a00                      PUSH 0x0
004a4204  68ff000000                PUSH 0xff
004a4209  8b0e                      MOV ECX,dword ptr [ESI]
004a420b  6aff                      PUSH -0x1
004a420d  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
004a4210  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004a4216  51                        PUSH ECX
004a4217  8bce                      MOV ECX,ESI
004a4219  ffd2                      CALL EDX
004a421b  e840ad2400                CALL 0x006eef60
004a4220  34ff                      XOR AL,0xff
004a4222  8bce                      MOV ECX,ESI
004a4224  2401                      AND AL,0x1
004a4226  888648010000              MOV byte ptr [ESI + 0x148],AL
004a422c  8b06                      MOV EAX,dword ptr [ESI]
004a422e  ff500c                    CALL dword ptr [EAX + 0xc]
004a4231  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
004a4238  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004a4240  7431                      JZ 0x004a4273
004a4242  f30f580554a8ba00          ADDSS XMM0,dword ptr [0x00baa854]
004a424a  0f57c9                    XORPS XMM1,XMM1
004a424d  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
004a4255  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a425d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a4265  f30f58c1                  ADDSS XMM0,XMM1
004a4269  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004a4271  eb38                      JMP 0x004a42ab
004a4273  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
004a427b  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a4283  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a428b  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004a4293  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004a429b  f30f100578aaba00          MOVSS XMM0,dword ptr [0x00baaa78]
004a42a3  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a42ab  8bcf                      MOV ECX,EDI
004a42ad  e88ea52100                CALL 0x006be840
004a42b2  8bbde0feffff              MOV EDI,dword ptr [EBP + 0xfffffee0]
004a42b8  8bf0                      MOV ESI,EAX
004a42ba  f30f100f                  MOVSS XMM1,dword ptr [EDI]
004a42be  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
004a42c3  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004a42cb  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004a42d3  f30f59c0                  MULSS XMM0,XMM0
004a42d7  f30f59c9                  MULSS XMM1,XMM1
004a42db  f30f58c1                  ADDSS XMM0,XMM1
004a42df  e86c17f9ff                CALL 0x00435a50
004a42e4  0f28d0                    MOVAPS XMM2,XMM0
004a42e7  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004a42ef  0f28c2                    MOVAPS XMM0,XMM2
004a42f2  f30f599664030000          MULSS XMM2,dword ptr [ESI + 0x364]
004a42fa  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
004a4302  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
004a430a  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
004a4312  f30f1195a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM2
004a431a  0f28c8                    MOVAPS XMM1,XMM0
004a431d  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a4325  f30f5c8dd4feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffed4]
004a432d  0f28c2                    MOVAPS XMM0,XMM2
004a4330  f30f5c85d8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffed8]
004a4338  e8235affff                CALL 0x00499d60
004a433d  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004a4345  f30f100f                  MOVSS XMM1,dword ptr [EDI]
004a4349  f30f5c8de0feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffee0]
004a4351  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004a4359  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
004a435e  f30f5c85a8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffea8]
004a4366  f30f59c9                  MULSS XMM1,XMM1
004a436a  f30f59c0                  MULSS XMM0,XMM0
004a436e  f30f58c1                  ADDSS XMM0,XMM1
004a4372  e8d916f9ff                CALL 0x00435a50
004a4377  f30f590508a1ba00          MULSS XMM0,dword ptr [0x00baa108]
004a437f  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004a4385  8db5a8feffff              LEA ESI,[EBP + 0xfffffea8]
004a438b  c785b8feffff00009041      MOV dword ptr [EBP + 0xfffffeb8],0x41900000
004a4395  f30f101568a8ba00          MOVSS XMM2,dword ptr [0x00baa868]
004a439d  f30f108dc0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec0]
004a43a5  0f2fd0                    COMISS XMM2,XMM0
004a43a8  f30f101568a9ba00          MOVSS XMM2,dword ptr [0x00baa968]
004a43b0  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004a43b8  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
004a43c0  0f46f0                    CMOVBE ESI,EAX
004a43c3  e888e61d00                CALL 0x00682a50
004a43c8  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a43d0  e88bab2400                CALL 0x006eef60
004a43d5  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004a43dd  8bf8                      MOV EDI,EAX
004a43df  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004a43e7  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a43ef  e82c91f7ff                CALL 0x0041d520
004a43f4  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004a43fc  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004a4404  e83791f7ff                CALL 0x0041d540
004a4409  f30f100e                  MOVSS XMM1,dword ptr [ESI]
004a440d  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
004a4413  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a4419  57                        PUSH EDI
004a441a  8bbdb0feffff              MOV EDI,dword ptr [EBP + 0xfffffeb0]
004a4420  6a00                      PUSH 0x0
004a4422  57                        PUSH EDI
004a4423  50                        PUSH EAX
004a4424  f30f59c1                  MULSS XMM0,XMM1
004a4428  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a442e  50                        PUSH EAX
004a442f  f30f598dc0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec0]
004a4437  6a09                      PUSH 0x9
004a4439  6a04                      PUSH 0x4
004a443b  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
004a4443  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
004a444b  e8d046f8ff                CALL 0x00428b20
004a4450  c7801c0400000000c0c0      MOV dword ptr [EAX + 0x41c],0xc0c00000
004a445a  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
004a4464  c78050030000000048c2      MOV dword ptr [EAX + 0x350],0xc2480000
004a446e  c7801004000024000000      MOV dword ptr [EAX + 0x410],0x24
004a4478  c7801404000024000000      MOV dword ptr [EAX + 0x414],0x24
004a4482  c7808801000000000000      MOV dword ptr [EAX + 0x188],0x0
004a448c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a4490  742b                      JZ 0x004a44bd
004a4492  6874d5b100                PUSH 0xb1d574
004a4497  8d4f78                    LEA ECX,[EDI + 0x78]
004a449a  e83169f6ff                CALL 0x0040add0
004a449f  84c0                      TEST AL,AL
004a44a1  7407                      JZ 0x004a44aa
004a44a3  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004a44aa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a44ae  740d                      JZ 0x004a44bd
004a44b0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a44b7  0f856f120000              JNZ 0x004a572c
004a44bd  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a44c7  e894aa2400                CALL 0x006eef60
004a44cc  33d2                      XOR EDX,EDX
004a44ce  b914000000                MOV ECX,0x14
004a44d3  f7f1                      DIV ECX
004a44d5  83c228                    ADD EDX,0x28
004a44d8  e949120000                JMP 0x004a5726
004a44dd  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004a44e5  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004a44ec  9f                        LAHF
004a44ed  f6c444                    TEST AH,0x44
004a44f0  0f8aaa000000              JP 0x004a45a0
004a44f6  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004a44fe  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004a4505  9f                        LAHF
004a4506  f6c444                    TEST AH,0x44
004a4509  0f8a91000000              JP 0x004a45a0
004a450f  a17816c700                MOV EAX,[0x00c71678]
004a4514  8db73c030000              LEA ESI,[EDI + 0x33c]
004a451a  f30f101da0a9ba00          MOVSS XMM3,dword ptr [0x00baa9a0]
004a4522  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
004a4528  83ec0c                    SUB ESP,0xc
004a452b  c744240800002042          MOV dword ptr [ESP + 0x8],0x42200000
004a4533  c74424040000a042          MOV dword ptr [ESP + 0x4],0x42a00000
004a453b  c7042400002042            MOV dword ptr [ESP],0x42200000
004a4542  56                        PUSH ESI
004a4543  51                        PUSH ECX
004a4544  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004a454a  e801ea3600                CALL 0x00812f50
004a454f  f30f1095d4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed4]
004a4557  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
004a455b  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
004a4563  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
004a4568  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
004a4570  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
004a4578  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004a4580  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004a4588  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004a4590  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004a4598  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004a45a0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a45a4  0f8456030000              JZ 0x004a4900
004a45aa  68dcd2b100                PUSH 0xb1d2dc
004a45af  8d4f78                    LEA ECX,[EDI + 0x78]
004a45b2  e81968f6ff                CALL 0x0040add0
004a45b7  84c0                      TEST AL,AL
004a45b9  0f8463020000              JZ 0x004a4822
004a45bf  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004a45c5  8db73c030000              LEA ESI,[EDI + 0x33c]
004a45cb  51                        PUSH ECX
004a45cc  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a45d3  6a00                      PUSH 0x0
004a45d5  6a02                      PUSH 0x2
004a45d7  51                        PUSH ECX
004a45d8  898734030000              MOV dword ptr [EDI + 0x334],EAX
004a45de  8bcf                      MOV ECX,EDI
004a45e0  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004a45e3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a45ea  68ed000000                PUSH 0xed
004a45ef  898738030000              MOV dword ptr [EDI + 0x338],EAX
004a45f5  e8a6252300                CALL 0x006d6ba0
004a45fa  51                        PUSH ECX
004a45fb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a4602  6a00                      PUSH 0x0
004a4604  6a02                      PUSH 0x2
004a4606  51                        PUSH ECX
004a4607  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a460e  8bcf                      MOV ECX,EDI
004a4610  6a1c                      PUSH 0x1c
004a4612  e889252300                CALL 0x006d6ba0
004a4617  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004a461f  8d45c0                    LEA EAX,[EBP + -0x40]
004a4622  0f57c0                    XORPS XMM0,XMM0
004a4625  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004a462c  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004a4630  8bcf                      MOV ECX,EDI
004a4632  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004a4639  0f2805f0bcba00            MOVAPS XMM0,xmmword ptr [0x00babcf0]
004a4640  50                        PUSH EAX
004a4641  56                        PUSH ESI
004a4642  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004a4649  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004a464d  e8fe1e2100                CALL 0x006b6550
004a4652  688d000000                PUSH 0x8d
004a4657  68e8030000                PUSH 0x3e8
004a465c  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
004a4662  8bcf                      MOV ECX,EDI
004a4664  50                        PUSH EAX
004a4665  e8f6c52200                CALL 0x006d0c60
004a466a  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004a4671  33c9                      XOR ECX,ECX
004a4673  8b95a0feffff              MOV EDX,dword ptr [EBP + 0xfffffea0]
004a4679  85d2                      TEST EDX,EDX
004a467b  7437                      JZ 0x004a46b4
004a467d  8bb598feffff              MOV ESI,dword ptr [EBP + 0xfffffe98]
004a4683  8b048e                    MOV EAX,dword ptr [ESI + ECX*0x4]
004a4686  85c0                      TEST EAX,EAX
004a4688  7425                      JZ 0x004a46af
004a468a  817828e8030000            CMP dword ptr [EAX + 0x28],0x3e8
004a4691  751c                      JNZ 0x004a46af
004a4693  39b8c8030000              CMP dword ptr [EAX + 0x3c8],EDI
004a4699  7514                      JNZ 0x004a46af
004a469b  c7805c0400001e000000      MOV dword ptr [EAX + 0x45c],0x1e
004a46a5  c780600400001e000000      MOV dword ptr [EAX + 0x460],0x1e
004a46af  41                        INC ECX
004a46b0  3bca                      CMP ECX,EDX
004a46b2  72cf                      JC 0x004a4683
004a46b4  33f6                      XOR ESI,ESI
004a46b6  e8a5a82400                CALL 0x006eef60
004a46bb  660f6ec0                  MOVD XMM0,EAX
004a46bf  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a46c3  c1e81f                    SHR EAX,0x1f
004a46c6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a46cf  8bc6                      MOV EAX,ESI
004a46d1  c1e81f                    SHR EAX,0x1f
004a46d4  660f5ac8                  CVTPD2PS XMM1,XMM0
004a46d8  660f6ec6                  MOVD XMM0,ESI
004a46dc  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a46e4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a46e8  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004a46f0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a46f9  f30f5c0d1ca8ba00          SUBSS XMM1,dword ptr [0x00baa81c]
004a4701  660f5ac0                  CVTPD2PS XMM0,XMM0
004a4705  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
004a470d  f30f58c8                  ADDSS XMM1,XMM0
004a4711  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
004a4719  0f28c1                    MOVAPS XMM0,XMM1
004a471c  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
004a4724  e8f78df7ff                CALL 0x0041d520
004a4729  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a4731  e82aa82400                CALL 0x006eef60
004a4736  660f6ec8                  MOVD XMM1,EAX
004a473a  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004a473e  c1e81f                    SHR EAX,0x1f
004a4741  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004a474a  660f5ac1                  CVTPD2PS XMM0,XMM1
004a474e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a4756  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004a475e  f30f58053ca8ba00          ADDSS XMM0,dword ptr [0x00baa83c]
004a4766  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a476e  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
004a4776  e8c58df7ff                CALL 0x0041d540
004a477b  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
004a4783  f30f59c1                  MULSS XMM0,XMM1
004a4787  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004a478f  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a4797  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a479f  e8bca72400                CALL 0x006eef60
004a47a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a47aa  50                        PUSH EAX
004a47ab  6a01                      PUSH 0x1
004a47ad  57                        PUSH EDI
004a47ae  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a47b4  50                        PUSH EAX
004a47b5  8d873c030000              LEA EAX,[EDI + 0x33c]
004a47bb  50                        PUSH EAX
004a47bc  688d000000                PUSH 0x8d
004a47c1  68e8030000                PUSH 0x3e8
004a47c6  e85543f8ff                CALL 0x00428b20
004a47cb  8bc8                      MOV ECX,EAX
004a47cd  8b10                      MOV EDX,dword ptr [EAX]
004a47cf  c7805c040000ffffffff      MOV dword ptr [EAX + 0x45c],0xffffffff
004a47d9  c78060040000ffffffff      MOV dword ptr [EAX + 0x460],0xffffffff
004a47e3  ff520c                    CALL dword ptr [EDX + 0xc]
004a47e6  46                        INC ESI
004a47e7  83fe06                    CMP ESI,0x6
004a47ea  0f82c6feffff              JC 0x004a46b6
004a47f0  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a47f7  80bd94feffff00            CMP byte ptr [EBP + 0xfffffe94],0x0
004a47fe  7522                      JNZ 0x004a4822
004a4800  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004a4807  b101                      MOV CL,0x1
004a4809  8b9598feffff              MOV EDX,dword ptr [EBP + 0xfffffe98]
004a480f  6a00                      PUSH 0x0
004a4811  6a00                      PUSH 0x0
004a4813  e898005c00                CALL 0x00a648b0
004a4818  83c408                    ADD ESP,0x8
004a481b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a4822  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a4826  0f84d4000000              JZ 0x004a4900
004a482c  68dcd2b100                PUSH 0xb1d2dc
004a4831  8d4f78                    LEA ECX,[EDI + 0x78]
004a4834  e83766f6ff                CALL 0x0040ae70
004a4839  8d4f78                    LEA ECX,[EDI + 0x78]
004a483c  84c0                      TEST AL,AL
004a483e  0f84bf000000              JZ 0x004a4903
004a4844  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004a484b  8db7c0030000              LEA ESI,[EDI + 0x3c0]
004a4851  8d4f78                    LEA ECX,[EDI + 0x78]
004a4854  0f85a9000000              JNZ 0x004a4903
004a485a  e801a72400                CALL 0x006eef60
004a485f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a4865  50                        PUSH EAX
004a4866  6a00                      PUSH 0x0
004a4868  57                        PUSH EDI
004a4869  6840b6c700                PUSH 0xc7b640
004a486e  8d873c030000              LEA EAX,[EDI + 0x33c]
004a4874  50                        PUSH EAX
004a4875  68a8000000                PUSH 0xa8
004a487a  68e8030000                PUSH 0x3e8
004a487f  e89c42f8ff                CALL 0x00428b20
004a4884  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
004a488a  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
004a4890  05bc030000                ADD EAX,0x3bc
004a4895  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
004a489b  85c9                      TEST ECX,ECX
004a489d  741e                      JZ 0x004a48bd
004a489f  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
004a48a5  81c1cc030000              ADD ECX,0x3cc
004a48ab  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
004a48b1  50                        PUSH EAX
004a48b2  e859a90200                CALL 0x004cf210
004a48b7  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
004a48bd  50                        PUSH EAX
004a48be  8bcf                      MOV ECX,EDI
004a48c0  8938                      MOV dword ptr [EAX],EDI
004a48c2  e829940200                CALL 0x004cdcf0
004a48c7  8b8dc8feffff              MOV ECX,dword ptr [EBP + 0xfffffec8]
004a48cd  8b01                      MOV EAX,dword ptr [ECX]
004a48cf  ff500c                    CALL dword ptr [EAX + 0xc]
004a48d2  8b0e                      MOV ECX,dword ptr [ESI]
004a48d4  85c9                      TEST ECX,ECX
004a48d6  7418                      JZ 0x004a48f0
004a48d8  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
004a48de  89b5c0feffff              MOV dword ptr [EBP + 0xfffffec0],ESI
004a48e4  81c1cc030000              ADD ECX,0x3cc
004a48ea  50                        PUSH EAX
004a48eb  e820a90200                CALL 0x004cf210
004a48f0  8b85c8feffff              MOV EAX,dword ptr [EBP + 0xfffffec8]
004a48f6  8bc8                      MOV ECX,EAX
004a48f8  56                        PUSH ESI
004a48f9  8906                      MOV dword ptr [ESI],EAX
004a48fb  e8f0930200                CALL 0x004cdcf0
004a4900  8d4f78                    LEA ECX,[EDI + 0x78]
004a4903  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a4907  0f8490000000              JZ 0x004a499d
004a490d  6874d5b100                PUSH 0xb1d574
004a4912  e8b964f6ff                CALL 0x0040add0
004a4917  84c0                      TEST AL,AL
004a4919  0f847e000000              JZ 0x004a499d
004a491f  51                        PUSH ECX
004a4920  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a4927  6a00                      PUSH 0x0
004a4929  6a02                      PUSH 0x2
004a492b  51                        PUSH ECX
004a492c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a4933  8bcf                      MOV ECX,EDI
004a4935  68e2000000                PUSH 0xe2
004a493a  e861222300                CALL 0x006d6ba0
004a493f  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004a4947  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004a494d  50                        PUSH EAX
004a494e  8db73c030000              LEA ESI,[EDI + 0x33c]
004a4954  8bcf                      MOV ECX,EDI
004a4956  56                        PUSH ESI
004a4957  e8641d2100                CALL 0x006b66c0
004a495c  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004a4962  e8c9a5f9ff                CALL 0x0043ef30
004a4967  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004a496d  c7857cffffff03000000      MOV dword ptr [EBP + 0xffffff7c],0x3
004a4977  50                        PUSH EAX
004a4978  6a08                      PUSH 0x8
004a497a  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a4980  c785d4feffff00002041      MOV dword ptr [EBP + 0xfffffed4],0x41200000
004a498a  50                        PUSH EAX
004a498b  56                        PUSH ESI
004a498c  8bcf                      MOV ECX,EDI
004a498e  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
004a4998  e843692200                CALL 0x006cb2e0
004a499d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a49a1  8d4f48                    LEA ECX,[EDI + 0x48]
004a49a4  740d                      JZ 0x004a49b3
004a49a6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a49ad  0f85790d0000              JNZ 0x004a572c
004a49b3  6a00                      PUSH 0x0
004a49b5  68e4e8b100                PUSH 0xb1e8e4
004a49ba  e8c159f6ff                CALL 0x0040a380
004a49bf  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004a49c9  e892a52400                CALL 0x006eef60
004a49ce  33d2                      XOR EDX,EDX
004a49d0  b90a000000                MOV ECX,0xa
004a49d5  f7f1                      DIV ECX
004a49d7  83c206                    ADD EDX,0x6
004a49da  e93d0d0000                JMP 0x004a571c
004a49df  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a49e3  742a                      JZ 0x004a4a0f
004a49e5  68dcd2b100                PUSH 0xb1d2dc
004a49ea  8d4f78                    LEA ECX,[EDI + 0x78]
004a49ed  e8de63f6ff                CALL 0x0040add0
004a49f2  84c0                      TEST AL,AL
004a49f4  740a                      JZ 0x004a4a00
004a49f6  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004a4a00  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a4a04  7409                      JZ 0x004a4a0f
004a4a06  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a4a0d  750f                      JNZ 0x004a4a1e
004a4a0f  6a00                      PUSH 0x0
004a4a11  6828d4b100                PUSH 0xb1d428
004a4a16  8d4f48                    LEA ECX,[EDI + 0x48]
004a4a19  e86259f6ff                CALL 0x0040a380
004a4a1e  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004a4a25  0f8f010d0000              JG 0x004a572c
004a4a2b  33f6                      XOR ESI,ESI
004a4a2d  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004a4a37  89b598feffff              MOV dword ptr [EBP + 0xfffffe98],ESI
004a4a3d  89b59cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ESI
004a4a43  89b5a0feffff              MOV dword ptr [EBP + 0xfffffea0],ESI
004a4a49  688d000000                PUSH 0x8d
004a4a4e  68e8030000                PUSH 0x3e8
004a4a53  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004a4a59  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004a4a60  50                        PUSH EAX
004a4a61  8bcf                      MOV ECX,EDI
004a4a63  e8f8c12200                CALL 0x006d0c60
004a4a68  8d8dccfeffff              LEA ECX,[EBP + 0xfffffecc]
004a4a6e  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004a4a71  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
004a4a77  e8342bf7ff                CALL 0x004175b0
004a4a7c  39b7c00b0000              CMP dword ptr [EDI + 0xbc0],ESI
004a4a82  752e                      JNZ 0x004a4ab2
004a4a84  8b8dc0feffff              MOV ECX,dword ptr [EBP + 0xfffffec0]
004a4a8a  83f90e                    CMP ECX,0xe
004a4a8d  7d23                      JGE 0x004a4ab2
004a4a8f  33c0                      XOR EAX,EAX
004a4a91  83f904                    CMP ECX,0x4
004a4a94  56                        PUSH ESI
004a4a95  0f9cc0                    SETL AL
004a4a98  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
004a4a9e  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
004a4aa5  50                        PUSH EAX
004a4aa6  56                        PUSH ESI
004a4aa7  e8b480ffff                CALL 0x0049cb60
004a4aac  8bb598feffff              MOV ESI,dword ptr [EBP + 0xfffffe98]
004a4ab2  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
004a4ab8  33c0                      XOR EAX,EAX
004a4aba  8bd1                      MOV EDX,ECX
004a4abc  2bd6                      SUB EDX,ESI
004a4abe  c1fa03                    SAR EDX,0x3
004a4ac1  85d2                      TEST EDX,EDX
004a4ac3  740b                      JZ 0x004a4ad0
004a4ac5  833cc601                  CMP dword ptr [ESI + EAX*0x8],0x1
004a4ac9  7439                      JZ 0x004a4b04
004a4acb  40                        INC EAX
004a4acc  3bc2                      CMP EAX,EDX
004a4ace  72f5                      JC 0x004a4ac5
004a4ad0  c785d4feffff01000000      MOV dword ptr [EBP + 0xfffffed4],0x1
004a4ada  c785d8feffff02000000      MOV dword ptr [EBP + 0xfffffed8],0x2
004a4ae4  3b8da0feffff              CMP ECX,dword ptr [EBP + 0xfffffea0]
004a4aea  7429                      JZ 0x004a4b15
004a4aec  c70101000000              MOV dword ptr [ECX],0x1
004a4af2  c7410402000000            MOV dword ptr [ECX + 0x4],0x2
004a4af9  83c108                    ADD ECX,0x8
004a4afc  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
004a4b02  eb30                      JMP 0x004a4b34
004a4b04  8344c60402                ADD dword ptr [ESI + EAX*0x8 + 0x4],0x2
004a4b09  7929                      JNS 0x004a4b34
004a4b0b  c744c60400000000          MOV dword ptr [ESI + EAX*0x8 + 0x4],0x0
004a4b13  eb1f                      JMP 0x004a4b34
004a4b15  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a4b1b  50                        PUSH EAX
004a4b1c  51                        PUSH ECX
004a4b1d  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
004a4b23  e898c6ffff                CALL 0x004a11c0
004a4b28  8bb598feffff              MOV ESI,dword ptr [EBP + 0xfffffe98]
004a4b2e  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
004a4b34  8bd1                      MOV EDX,ECX
004a4b36  33c0                      XOR EAX,EAX
004a4b38  2bd6                      SUB EDX,ESI
004a4b3a  c1fa03                    SAR EDX,0x3
004a4b3d  85d2                      TEST EDX,EDX
004a4b3f  740b                      JZ 0x004a4b4c
004a4b41  833cc602                  CMP dword ptr [ESI + EAX*0x8],0x2
004a4b45  7439                      JZ 0x004a4b80
004a4b47  40                        INC EAX
004a4b48  3bc2                      CMP EAX,EDX
004a4b4a  72f5                      JC 0x004a4b41
004a4b4c  c785d4feffff02000000      MOV dword ptr [EBP + 0xfffffed4],0x2
004a4b56  c785d8feffff01000000      MOV dword ptr [EBP + 0xfffffed8],0x1
004a4b60  3b8da0feffff              CMP ECX,dword ptr [EBP + 0xfffffea0]
004a4b66  7429                      JZ 0x004a4b91
004a4b68  c70102000000              MOV dword ptr [ECX],0x2
004a4b6e  c7410401000000            MOV dword ptr [ECX + 0x4],0x1
004a4b75  83c108                    ADD ECX,0x8
004a4b78  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
004a4b7e  eb24                      JMP 0x004a4ba4
004a4b80  8344c60401                ADD dword ptr [ESI + EAX*0x8 + 0x4],0x1
004a4b85  791d                      JNS 0x004a4ba4
004a4b87  c744c60400000000          MOV dword ptr [ESI + EAX*0x8 + 0x4],0x0
004a4b8f  eb13                      JMP 0x004a4ba4
004a4b91  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a4b97  50                        PUSH EAX
004a4b98  51                        PUSH ECX
004a4b99  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
004a4b9f  e81cc6ffff                CALL 0x004a11c0
004a4ba4  e8b7a32400                CALL 0x006eef60
004a4ba9  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004a4bb1  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
004a4bb7  83c801                    OR EAX,0x1
004a4bba  660fd685d0feffff          MOVQ qword ptr [EBP + 0xfffffed0],XMM0
004a4bc2  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
004a4bc8  83ec10                    SUB ESP,0x10
004a4bcb  a174f6b100                MOV EAX,[0x00b1f674]
004a4bd0  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
004a4bd6  8bc4                      MOV EAX,ESP
004a4bd8  0f1085ccfeffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffecc]
004a4bdf  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004a4be2  e80980ffff                CALL 0x0049cbf0
004a4be7  83e800                    SUB EAX,0x0
004a4bea  0f84b2000000              JZ 0x004a4ca2
004a4bf0  83e801                    SUB EAX,0x1
004a4bf3  7424                      JZ 0x004a4c19
004a4bf5  83e801                    SUB EAX,0x1
004a4bf8  0f85c7000000              JNZ 0x004a4cc5
004a4bfe  8bcf                      MOV ECX,EDI
004a4c00  e8dbe0ffff                CALL 0x004a2ce0
004a4c05  6a00                      PUSH 0x0
004a4c07  6838d9b100                PUSH 0xb1d938
004a4c0c  8d4f48                    LEA ECX,[EDI + 0x48]
004a4c0f  e86c57f6ff                CALL 0x0040a380
004a4c14  e9ac000000                JMP 0x004a4cc5
004a4c19  6a00                      PUSH 0x0
004a4c1b  68ecd2b100                PUSH 0xb1d2ec
004a4c20  8d4f48                    LEA ECX,[EDI + 0x48]
004a4c23  e85857f6ff                CALL 0x0040a380
004a4c28  8bcf                      MOV ECX,EDI
004a4c2a  e8119c2100                CALL 0x006be840
004a4c2f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004a4c37  8bf0                      MOV ESI,EAX
004a4c39  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a4c41  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004a4c49  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004a4c51  f30f59c0                  MULSS XMM0,XMM0
004a4c55  f30f59c9                  MULSS XMM1,XMM1
004a4c59  f30f58c1                  ADDSS XMM0,XMM1
004a4c5d  e8ee0df9ff                CALL 0x00435a50
004a4c62  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004a4c6a  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
004a4c72  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
004a4c7a  f30f59c8                  MULSS XMM1,XMM0
004a4c7e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004a4c86  f30f58d1                  ADDSS XMM2,XMM1
004a4c8a  0f2fc2                    COMISS XMM0,XMM2
004a4c8d  0f97c0                    SETA AL
004a4c90  888748010000              MOV byte ptr [EDI + 0x148],AL
004a4c96  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
004a4ca0  eb23                      JMP 0x004a4cc5
004a4ca2  6a00                      PUSH 0x0
004a4ca4  6838d9b100                PUSH 0xb1d938
004a4ca9  8d4f48                    LEA ECX,[EDI + 0x48]
004a4cac  e8cf56f6ff                CALL 0x0040a380
004a4cb1  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
004a4cbb  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004a4cc5  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a4ccc  8b8d98feffff              MOV ECX,dword ptr [EBP + 0xfffffe98]
004a4cd2  85c9                      TEST ECX,ECX
004a4cd4  0f84520a0000              JZ 0x004a572c
004a4cda  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
004a4ce0  2bc1                      SUB EAX,ECX
004a4ce2  c1f803                    SAR EAX,0x3
004a4ce5  50                        PUSH EAX
004a4ce6  51                        PUSH ECX
004a4ce7  e8541cf8ff                CALL 0x00426940
004a4cec  e93b0a0000                JMP 0x004a572c
004a4cf1  8d45d4                    LEA EAX,[EBP + -0x2c]
004a4cf4  8d4f78                    LEA ECX,[EDI + 0x78]
004a4cf7  50                        PUSH EAX
004a4cf8  e8f3defaff                CALL 0x00452bf0
004a4cfd  83781410                  CMP dword ptr [EAX + 0x14],0x10
004a4d01  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
004a4d04  7202                      JC 0x004a4d08
004a4d06  8b00                      MOV EAX,dword ptr [EAX]
004a4d08  6a07                      PUSH 0x7
004a4d0a  68e4e8b100                PUSH 0xb1e8e4
004a4d0f  8bc8                      MOV ECX,EAX
004a4d11  e8ca7df6ff                CALL 0x0040cae0
004a4d16  83c408                    ADD ESP,0x8
004a4d19  8885e7feffff              MOV byte ptr [EBP + 0xfffffee7],AL
004a4d1f  8d4dd4                    LEA ECX,[EBP + -0x2c]
004a4d22  e81983f6ff                CALL 0x0040d040
004a4d27  80bde7feffff00            CMP byte ptr [EBP + 0xfffffee7],0x0
004a4d2e  8d4f48                    LEA ECX,[EDI + 0x48]
004a4d31  0f848a000000              JZ 0x004a4dc1
004a4d37  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a4d3b  740d                      JZ 0x004a4d4a
004a4d3d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a4d44  0f85e2090000              JNZ 0x004a572c
004a4d4a  6a00                      PUSH 0x0
004a4d4c  68ecd2b100                PUSH 0xb1d2ec
004a4d51  e82a56f6ff                CALL 0x0040a380
004a4d56  8bcf                      MOV ECX,EDI
004a4d58  e8e39a2100                CALL 0x006be840
004a4d5d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004a4d65  8bf0                      MOV ESI,EAX
004a4d67  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a4d6f  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004a4d77  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004a4d7f  f30f59c0                  MULSS XMM0,XMM0
004a4d83  f30f59c9                  MULSS XMM1,XMM1
004a4d87  f30f58c1                  ADDSS XMM0,XMM1
004a4d8b  e8c00cf9ff                CALL 0x00435a50
004a4d90  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004a4d98  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004a4da0  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
004a4da8  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
004a4db0  0f2fc8                    COMISS XMM1,XMM0
004a4db3  0f97c0                    SETA AL
004a4db6  888748010000              MOV byte ptr [EDI + 0x148],AL
004a4dbc  e96b090000                JMP 0x004a572c
004a4dc1  68dcd2b100                PUSH 0xb1d2dc
004a4dc6  e86562f6ff                CALL 0x0040b030
004a4dcb  84c0                      TEST AL,AL
004a4dcd  0f849c030000              JZ 0x004a516f
004a4dd3  51                        PUSH ECX
004a4dd4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a4ddb  6a00                      PUSH 0x0
004a4ddd  6a02                      PUSH 0x2
004a4ddf  51                        PUSH ECX
004a4de0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a4de7  8bcf                      MOV ECX,EDI
004a4de9  6a0c                      PUSH 0xc
004a4deb  e8b01d2300                CALL 0x006d6ba0
004a4df0  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004a4df6  50                        PUSH EAX
004a4df7  8d4d94                    LEA ECX,[EBP + -0x6c]
004a4dfa  e8c123f6ff                CALL 0x004071c0
004a4dff  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
004a4e07  8d873c030000              LEA EAX,[EDI + 0x33c]
004a4e0d  51                        PUSH ECX
004a4e0e  50                        PUSH EAX
004a4e0f  8bcf                      MOV ECX,EDI
004a4e11  c745a00000003f            MOV dword ptr [EBP + -0x60],0x3f000000
004a4e18  e8131a2100                CALL 0x006b6830
004a4e1d  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
004a4e24  740a                      JZ 0x004a4e30
004a4e26  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
004a4e2e  eb08                      JMP 0x004a4e38
004a4e30  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
004a4e38  8bcf                      MOV ECX,EDI
004a4e3a  f30f11804c030000          MOVSS dword ptr [EAX + 0x34c],XMM0
004a4e42  c780500300000000a0c1      MOV dword ptr [EAX + 0x350],0xc1a00000
004a4e4c  e8ef992100                CALL 0x006be840
004a4e51  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004a4e59  8bf0                      MOV ESI,EAX
004a4e5b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a4e63  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004a4e6b  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004a4e73  f30f59c0                  MULSS XMM0,XMM0
004a4e77  f30f59c9                  MULSS XMM1,XMM1
004a4e7b  f30f58c1                  ADDSS XMM0,XMM1
004a4e7f  e8cc0bf9ff                CALL 0x00435a50
004a4e84  0f28c8                    MOVAPS XMM1,XMM0
004a4e87  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004a4e8f  0f28d1                    MOVAPS XMM2,XMM1
004a4e92  f30f598e64030000          MULSS XMM1,dword ptr [ESI + 0x364]
004a4e9a  f30f599660030000          MULSS XMM2,dword ptr [ESI + 0x360]
004a4ea2  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
004a4eaa  f30f58963c030000          ADDSS XMM2,dword ptr [ESI + 0x33c]
004a4eb2  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004a4eba  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004a4ec2  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
004a4eca  f30f5915d0a0ba00          MULSS XMM2,dword ptr [0x00baa0d0]
004a4ed2  0f28c1                    MOVAPS XMM0,XMM1
004a4ed5  f30f118da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM1
004a4edd  f30f59c1                  MULSS XMM0,XMM1
004a4ee1  0f28ca                    MOVAPS XMM1,XMM2
004a4ee4  f30f1195b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM2
004a4eec  f30f59ca                  MULSS XMM1,XMM2
004a4ef0  f30f58c1                  ADDSS XMM0,XMM1
004a4ef4  e8570bf9ff                CALL 0x00435a50
004a4ef9  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
004a4f01  0f2fc1                    COMISS XMM0,XMM1
004a4f04  7634                      JBE 0x004a4f3a
004a4f06  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004a4f0d  762b                      JBE 0x004a4f3a
004a4f0f  f30f5ec8                  DIVSS XMM1,XMM0
004a4f13  0f28c1                    MOVAPS XMM0,XMM1
004a4f16  f30f5985b0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffeb0]
004a4f1e  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
004a4f26  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
004a4f2e  f30f59c1                  MULSS XMM0,XMM1
004a4f32  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004a4f3a  e821a02400                CALL 0x006eef60
004a4f3f  f30f10051cadba00          MOVSS XMM0,dword ptr [0x00baad1c]
004a4f47  8bf0                      MOV ESI,EAX
004a4f49  e8f285f7ff                CALL 0x0041d540
004a4f4e  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004a4f56  f30f10051cadba00          MOVSS XMM0,dword ptr [0x00baad1c]
004a4f5e  e8bd85f7ff                CALL 0x0041d520
004a4f63  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
004a4f6b  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004a4f71  f30f1095b0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeb0]
004a4f79  f30f5995c0feffff          MULSS XMM2,dword ptr [EBP + 0xfffffec0]
004a4f81  50                        PUSH EAX
004a4f82  f30f59c8                  MULSS XMM1,XMM0
004a4f86  f30f5cd1                  SUBSS XMM2,XMM1
004a4f8a  f30f108db0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb0]
004a4f92  f30f59c8                  MULSS XMM1,XMM0
004a4f96  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
004a4f9e  f30f5985c0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffec0]
004a4fa6  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
004a4fae  f30f58c8                  ADDSS XMM1,XMM0
004a4fb2  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a4fba  e8b1a01d00                CALL 0x0067f070
004a4fbf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a4fc5  83c404                    ADD ESP,0x4
004a4fc8  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004a4fcc  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004a4fd1  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a4fd7  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
004a4fdf  56                        PUSH ESI
004a4fe0  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004a4fe8  6a00                      PUSH 0x0
004a4fea  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004a4ff2  57                        PUSH EDI
004a4ff3  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004a4ffb  50                        PUSH EAX
004a4ffc  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004a5002  50                        PUSH EAX
004a5003  6a09                      PUSH 0x9
004a5005  6a04                      PUSH 0x4
004a5007  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
004a500f  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a5017  e8043bf8ff                CALL 0x00428b20
004a501c  c7801c0400000000c0c0      MOV dword ptr [EAX + 0x41c],0xc0c00000
004a5026  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
004a5030  c78050030000000048c2      MOV dword ptr [EAX + 0x350],0xc2480000
004a503a  c780100400001e000000      MOV dword ptr [EAX + 0x410],0x1e
004a5044  c780140400001e000000      MOV dword ptr [EAX + 0x414],0x1e
004a504e  c7808801000000000000      MOV dword ptr [EAX + 0x188],0x0
004a5058  e8039f2400                CALL 0x006eef60
004a505d  f30f100540a2ba00          MOVSS XMM0,dword ptr [0x00baa240]
004a5065  8bf0                      MOV ESI,EAX
004a5067  e8d484f7ff                CALL 0x0041d540
004a506c  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004a5074  f30f100540a2ba00          MOVSS XMM0,dword ptr [0x00baa240]
004a507c  e89f84f7ff                CALL 0x0041d520
004a5081  0f28d8                    MOVAPS XMM3,XMM0
004a5084  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
004a508a  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
004a5092  0f28cb                    MOVAPS XMM1,XMM3
004a5095  f30f598da8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffea8]
004a509d  0f28d0                    MOVAPS XMM2,XMM0
004a50a0  50                        PUSH EAX
004a50a1  f30f5995b0feffff          MULSS XMM2,dword ptr [EBP + 0xfffffeb0]
004a50a9  f30f599db0feffff          MULSS XMM3,dword ptr [EBP + 0xfffffeb0]
004a50b1  f30f5985a8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffea8]
004a50b9  f30f5cd1                  SUBSS XMM2,XMM1
004a50bd  f30f58d8                  ADDSS XMM3,XMM0
004a50c1  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
004a50c9  f30f119dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM3
004a50d1  e89a9f1d00                CALL 0x0067f070
004a50d6  83c404                    ADD ESP,0x4
004a50d9  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004a50dd  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004a50e2  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
004a50ea  56                        PUSH ESI
004a50eb  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004a50f3  6a00                      PUSH 0x0
004a50f5  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004a50fd  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004a5105  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
004a510d  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004a5115  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a511b  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a5121  57                        PUSH EDI
004a5122  50                        PUSH EAX
004a5123  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
004a5129  50                        PUSH EAX
004a512a  6a09                      PUSH 0x9
004a512c  6a04                      PUSH 0x4
004a512e  e8ed39f8ff                CALL 0x00428b20
004a5133  c7801c0400000000c0c0      MOV dword ptr [EAX + 0x41c],0xc0c00000
004a513d  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
004a5147  c78050030000000048c2      MOV dword ptr [EAX + 0x350],0xc2480000
004a5151  c7801004000024000000      MOV dword ptr [EAX + 0x410],0x24
004a515b  c7801404000024000000      MOV dword ptr [EAX + 0x414],0x24
004a5165  c7808801000000000000      MOV dword ptr [EAX + 0x188],0x0
004a516f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a5173  740d                      JZ 0x004a5182
004a5175  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a517c  0f85aa050000              JNZ 0x004a572c
004a5182  8bcf                      MOV ECX,EDI
004a5184  e857dbffff                CALL 0x004a2ce0
004a5189  e99e050000                JMP 0x004a572c
004a518e  8d45d4                    LEA EAX,[EBP + -0x2c]
004a5191  8d4f78                    LEA ECX,[EDI + 0x78]
004a5194  50                        PUSH EAX
004a5195  e856dafaff                CALL 0x00452bf0
004a519a  83781410                  CMP dword ptr [EAX + 0x14],0x10
004a519e  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
004a51a1  7202                      JC 0x004a51a5
004a51a3  8b00                      MOV EAX,dword ptr [EAX]
004a51a5  6a07                      PUSH 0x7
004a51a7  6838d9b100                PUSH 0xb1d938
004a51ac  8bc8                      MOV ECX,EAX
004a51ae  e82d79f6ff                CALL 0x0040cae0
004a51b3  83c408                    ADD ESP,0x8
004a51b6  8885e7feffff              MOV byte ptr [EBP + 0xfffffee7],AL
004a51bc  8d4dd4                    LEA ECX,[EBP + -0x2c]
004a51bf  e87c7ef6ff                CALL 0x0040d040
004a51c4  80bde7feffff00            CMP byte ptr [EBP + 0xfffffee7],0x0
004a51cb  8d7748                    LEA ESI,[EDI + 0x48]
004a51ce  7426                      JZ 0x004a51f6
004a51d0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a51d4  740d                      JZ 0x004a51e3
004a51d6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a51dd  0f8549050000              JNZ 0x004a572c
004a51e3  6a00                      PUSH 0x0
004a51e5  68e4d2b100                PUSH 0xb1d2e4
004a51ea  8bce                      MOV ECX,ESI
004a51ec  e88f51f6ff                CALL 0x0040a380
004a51f1  e936050000                JMP 0x004a572c
004a51f6  68dcd2b100                PUSH 0xb1d2dc
004a51fb  8bce                      MOV ECX,ESI
004a51fd  e82e5ef6ff                CALL 0x0040b030
004a5202  84c0                      TEST AL,AL
004a5204  0f8494010000              JZ 0x004a539e
004a520a  51                        PUSH ECX
004a520b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a5212  6a00                      PUSH 0x0
004a5214  6a02                      PUSH 0x2
004a5216  51                        PUSH ECX
004a5217  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a521e  8bcf                      MOV ECX,EDI
004a5220  6a25                      PUSH 0x25
004a5222  e879192300                CALL 0x006d6ba0
004a5227  f30f101d98a2ba00          MOVSS XMM3,dword ptr [0x00baa298]
004a522f  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
004a5237  f30f100d10a3ba00          MOVSS XMM1,dword ptr [0x00baa310]
004a523f  51                        PUSH ECX
004a5240  8d4d94                    LEA ECX,[EBP + -0x6c]
004a5243  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004a524a  e8a1e6f7ff                CALL 0x004238f0
004a524f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a5257  8bcf                      MOV ECX,EDI
004a5259  50                        PUSH EAX
004a525a  e841142100                CALL 0x006b66a0
004a525f  33f6                      XOR ESI,ESI
004a5261  e8fa9c2400                CALL 0x006eef60
004a5266  660f6ec0                  MOVD XMM0,EAX
004a526a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a526e  c1e81f                    SHR EAX,0x1f
004a5271  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a527a  8bc6                      MOV EAX,ESI
004a527c  c1e81f                    SHR EAX,0x1f
004a527f  660f5ac8                  CVTPD2PS XMM1,XMM0
004a5283  660f6ec6                  MOVD XMM0,ESI
004a5287  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004a528f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a5293  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004a529b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a52a4  f30f5c0d1ca8ba00          SUBSS XMM1,dword ptr [0x00baa81c]
004a52ac  660f5ac0                  CVTPD2PS XMM0,XMM0
004a52b0  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
004a52b8  f30f58c8                  ADDSS XMM1,XMM0
004a52bc  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
004a52c4  0f28c1                    MOVAPS XMM0,XMM1
004a52c7  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
004a52cf  e84c82f7ff                CALL 0x0041d520
004a52d4  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a52dc  e87f9c2400                CALL 0x006eef60
004a52e1  660f6ec8                  MOVD XMM1,EAX
004a52e5  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004a52e9  c1e81f                    SHR EAX,0x1f
004a52ec  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004a52f5  660f5ac1                  CVTPD2PS XMM0,XMM1
004a52f9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a5301  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
004a5309  f30f580548a8ba00          ADDSS XMM0,dword ptr [0x00baa848]
004a5311  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a5319  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
004a5321  e81a82f7ff                CALL 0x0041d540
004a5326  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
004a532e  f30f59c1                  MULSS XMM0,XMM1
004a5332  f30f598de0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffee0]
004a533a  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004a5342  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004a534a  e8119c2400                CALL 0x006eef60
004a534f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a5355  50                        PUSH EAX
004a5356  6a01                      PUSH 0x1
004a5358  57                        PUSH EDI
004a5359  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004a535f  50                        PUSH EAX
004a5360  8d873c030000              LEA EAX,[EDI + 0x33c]
004a5366  50                        PUSH EAX
004a5367  688d000000                PUSH 0x8d
004a536c  68e8030000                PUSH 0x3e8
004a5371  e8aa37f8ff                CALL 0x00428b20
004a5376  8bc8                      MOV ECX,EAX
004a5378  8b10                      MOV EDX,dword ptr [EAX]
004a537a  c7805c040000ffffffff      MOV dword ptr [EAX + 0x45c],0xffffffff
004a5384  c78060040000ffffffff      MOV dword ptr [EAX + 0x460],0xffffffff
004a538e  ff520c                    CALL dword ptr [EDX + 0xc]
004a5391  46                        INC ESI
004a5392  83fe08                    CMP ESI,0x8
004a5395  0f82c6feffff              JC 0x004a5261
004a539b  8d7748                    LEA ESI,[EDI + 0x48]
004a539e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a53a2  740d                      JZ 0x004a53b1
004a53a4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a53ab  0f857b030000              JNZ 0x004a572c
004a53b1  e8aa9b2400                CALL 0x006eef60
004a53b6  33d2                      XOR EDX,EDX
004a53b8  b903000000                MOV ECX,0x3
004a53bd  f7f1                      DIV ECX
004a53bf  85d2                      TEST EDX,EDX
004a53c1  752c                      JNZ 0x004a53ef
004a53c3  688d000000                PUSH 0x8d
004a53c8  68e8030000                PUSH 0x3e8
004a53cd  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
004a53d3  8bcf                      MOV ECX,EDI
004a53d5  50                        PUSH EAX
004a53d6  e885b82200                CALL 0x006d0c60
004a53db  b901000000                MOV ECX,0x1
004a53e0  83780c0c                  CMP dword ptr [EAX + 0xc],0xc
004a53e4  730f                      JNC 0x004a53f5
004a53e6  c685e7feffff00            MOV byte ptr [EBP + 0xfffffee7],0x0
004a53ed  eb0d                      JMP 0x004a53fc
004a53ef  8b8da8feffff              MOV ECX,dword ptr [EBP + 0xfffffea8]
004a53f5  c685e7feffff01            MOV byte ptr [EBP + 0xfffffee7],0x1
004a53fc  f6c101                    TEST CL,0x1
004a53ff  740b                      JZ 0x004a540c
004a5401  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
004a5407  e8a421f7ff                CALL 0x004175b0
004a540c  6a00                      PUSH 0x0
004a540e  8bce                      MOV ECX,ESI
004a5410  68e4e8b100                PUSH 0xb1e8e4
004a5415  e8664ff6ff                CALL 0x0040a380
004a541a  80bde7feffff00            CMP byte ptr [EBP + 0xfffffee7],0x0
004a5421  740f                      JZ 0x004a5432
004a5423  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
004a542d  e9fa020000                JMP 0x004a572c
004a5432  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004a543c  e81f9b2400                CALL 0x006eef60
004a5441  33d2                      XOR EDX,EDX
004a5443  b90a000000                MOV ECX,0xa
004a5448  f7f1                      DIV ECX
004a544a  83c206                    ADD EDX,0x6
004a544d  e9d4020000                JMP 0x004a5726
004a5452  8d45d4                    LEA EAX,[EBP + -0x2c]
004a5455  8d4f78                    LEA ECX,[EDI + 0x78]
004a5458  50                        PUSH EAX
004a5459  e892d7faff                CALL 0x00452bf0
004a545e  83781410                  CMP dword ptr [EAX + 0x14],0x10
004a5462  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
004a5465  7202                      JC 0x004a5469
004a5467  8b00                      MOV EAX,dword ptr [EAX]
004a5469  6a07                      PUSH 0x7
004a546b  6838d9b100                PUSH 0xb1d938
004a5470  8bc8                      MOV ECX,EAX
004a5472  e86976f6ff                CALL 0x0040cae0
004a5477  83c408                    ADD ESP,0x8
004a547a  8885e7feffff              MOV byte ptr [EBP + 0xfffffee7],AL
004a5480  8d4dd4                    LEA ECX,[EBP + -0x2c]
004a5483  e8b87bf6ff                CALL 0x0040d040
004a5488  80bde7feffff00            CMP byte ptr [EBP + 0xfffffee7],0x0
004a548f  8d7748                    LEA ESI,[EDI + 0x48]
004a5492  7426                      JZ 0x004a54ba
004a5494  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a5498  740d                      JZ 0x004a54a7
004a549a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a54a1  0f8585020000              JNZ 0x004a572c
004a54a7  6a00                      PUSH 0x0
004a54a9  683cd3b100                PUSH 0xb1d33c
004a54ae  8bce                      MOV ECX,ESI
004a54b0  e8cb4ef6ff                CALL 0x0040a380
004a54b5  e972020000                JMP 0x004a572c
004a54ba  6860d5b100                PUSH 0xb1d560
004a54bf  8bce                      MOV ECX,ESI
004a54c1  e86a5bf6ff                CALL 0x0040b030
004a54c6  84c0                      TEST AL,AL
004a54c8  745b                      JZ 0x004a5525
004a54ca  51                        PUSH ECX
004a54cb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a54d2  6a00                      PUSH 0x0
004a54d4  6a02                      PUSH 0x2
004a54d6  51                        PUSH ECX
004a54d7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a54de  8bcf                      MOV ECX,EDI
004a54e0  6a48                      PUSH 0x48
004a54e2  e8b9162300                CALL 0x006d6ba0
004a54e7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a54ef  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004a54f7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a54ff  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a5507  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004a5511  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004a551b  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004a5525  6860d5b100                PUSH 0xb1d560
004a552a  8bce                      MOV ECX,ESI
004a552c  e85f5bf6ff                CALL 0x0040b090
004a5531  84c0                      TEST AL,AL
004a5533  0f849f000000              JZ 0x004a55d8
004a5539  6874d5b100                PUSH 0xb1d574
004a553e  8bce                      MOV ECX,ESI
004a5540  e84b5bf6ff                CALL 0x0040b090
004a5545  84c0                      TEST AL,AL
004a5547  0f858b000000              JNZ 0x004a55d8
004a554d  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
004a5555  f30f592570a0ba00          MULSS XMM4,dword ptr [0x00baa070]
004a555d  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
004a5565  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
004a556d  f30f58a7b80b0000          ADDSS XMM4,dword ptr [EDI + 0xbb8]
004a5575  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
004a557d  f30f5f25e49fba00          MAXSS XMM4,dword ptr [0x00ba9fe4]
004a5585  f30f5d2554a4ba00          MINSS XMM4,dword ptr [0x00baa454]
004a558d  f30f11a7b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM4
004a5595  0f28d4                    MOVAPS XMM2,XMM4
004a5598  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004a55a0  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004a55a8  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004a55b0  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004a55b8  f30f59d0                  MULSS XMM2,XMM0
004a55bc  f30f59e1                  MULSS XMM4,XMM1
004a55c0  f30f5ed3                  DIVSS XMM2,XMM3
004a55c4  f30f5ee3                  DIVSS XMM4,XMM3
004a55c8  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004a55d0  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
004a55d8  6874d5b100                PUSH 0xb1d574
004a55dd  8bce                      MOV ECX,ESI
004a55df  e84c5af6ff                CALL 0x0040b030
004a55e4  84c0                      TEST AL,AL
004a55e6  0f84f8000000              JZ 0x004a56e4
004a55ec  51                        PUSH ECX
004a55ed  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a55f4  6a00                      PUSH 0x0
004a55f6  6a02                      PUSH 0x2
004a55f8  51                        PUSH ECX
004a55f9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a5600  8bcf                      MOV ECX,EDI
004a5602  68e2000000                PUSH 0xe2
004a5607  e894152300                CALL 0x006d6ba0
004a560c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a5614  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004a561a  50                        PUSH EAX
004a561b  8bcf                      MOV ECX,EDI
004a561d  e8ee112100                CALL 0x006b6810
004a5622  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004a5628  e80399f9ff                CALL 0x0043ef30
004a562d  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
004a5633  c7857cffffff03000000      MOV dword ptr [EBP + 0xffffff7c],0x3
004a563d  51                        PUSH ECX
004a563e  6a08                      PUSH 0x8
004a5640  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
004a5646  c785d4feffff00002041      MOV dword ptr [EBP + 0xfffffed4],0x41200000
004a5650  51                        PUSH ECX
004a5651  8d873c030000              LEA EAX,[EDI + 0x33c]
004a5657  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
004a5661  50                        PUSH EAX
004a5662  8bcf                      MOV ECX,EDI
004a5664  e8775c2200                CALL 0x006cb2e0
004a5669  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004a5670  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004a5676  898734030000              MOV dword ptr [EDI + 0x334],EAX
004a567c  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004a5682  898738030000              MOV dword ptr [EDI + 0x338],EAX
004a5688  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004a5692  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004a569c  7546                      JNZ 0x004a56e4
004a569e  e8bd982400                CALL 0x006eef60
004a56a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a56a9  50                        PUSH EAX
004a56aa  6a00                      PUSH 0x0
004a56ac  57                        PUSH EDI
004a56ad  6840b6c700                PUSH 0xc7b640
004a56b2  8d873c030000              LEA EAX,[EDI + 0x33c]
004a56b8  50                        PUSH EAX
004a56b9  68a8000000                PUSH 0xa8
004a56be  68e8030000                PUSH 0x3e8
004a56c3  e85834f8ff                CALL 0x00428b20
004a56c8  8bf0                      MOV ESI,EAX
004a56ca  57                        PUSH EDI
004a56cb  8bce                      MOV ECX,ESI
004a56cd  e8ce3b2000                CALL 0x006a92a0
004a56d2  8b16                      MOV EDX,dword ptr [ESI]
004a56d4  8bce                      MOV ECX,ESI
004a56d6  ff520c                    CALL dword ptr [EDX + 0xc]
004a56d9  56                        PUSH ESI
004a56da  8bcf                      MOV ECX,EDI
004a56dc  e8ff3b2000                CALL 0x006a92e0
004a56e1  8d7748                    LEA ESI,[EDI + 0x48]
004a56e4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004a56e8  7409                      JZ 0x004a56f3
004a56ea  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004a56f1  7539                      JNZ 0x004a572c
004a56f3  6a00                      PUSH 0x0
004a56f5  68e4e8b100                PUSH 0xb1e8e4
004a56fa  8bce                      MOV ECX,ESI
004a56fc  e87f4cf6ff                CALL 0x0040a380
004a5701  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004a570b  e850982400                CALL 0x006eef60
004a5710  33d2                      XOR EDX,EDX
004a5712  b91e000000                MOV ECX,0x1e
004a5717  f7f1                      DIV ECX
004a5719  83c214                    ADD EDX,0x14
004a571c  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004a5726  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004a572c  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004a5732  83f810                    CMP EAX,0x10
004a5735  7409                      JZ 0x004a5740
004a5737  83f806                    CMP EAX,0x6
004a573a  0f85e4010000              JNZ 0x004a5924
004a5740  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004a5748  0f57d2                    XORPS XMM2,XMM2
004a574b  8bcf                      MOV ECX,EDI
004a574d  e80e702000                CALL 0x006ac760
004a5752  85c0                      TEST EAX,EAX
004a5754  0f84ca010000              JZ 0x004a5924
004a575a  68c8e8b100                PUSH 0xb1e8c8
004a575f  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
004a5765  8bcf                      MOV ECX,EDI
004a5767  50                        PUSH EAX
004a5768  e883132100                CALL 0x006b6af0
004a576d  f30f1085acfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeac]
004a5775  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004a577c  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
004a5784  9f                        LAHF
004a5785  f6c444                    TEST AH,0x44
004a5788  7a11                      JP 0x004a579b
004a578a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004a5791  9f                        LAHF
004a5792  f6c444                    TEST AH,0x44
004a5795  0f8b89010000              JNP 0x004a5924
004a579b  e8c0972400                CALL 0x006eef60
004a57a0  660f6ec0                  MOVD XMM0,EAX
004a57a4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a57a8  c1e81f                    SHR EAX,0x1f
004a57ab  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a57b4  660f5ac0                  CVTPD2PS XMM0,XMM0
004a57b8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a57c0  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004a57c8  f30f58c0                  ADDSS XMM0,XMM0
004a57cc  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004a57d4  e8477df7ff                CALL 0x0041d520
004a57d9  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004a57e1  e87a972400                CALL 0x006eef60
004a57e6  660f6ec8                  MOVD XMM1,EAX
004a57ea  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004a57ee  c1e81f                    SHR EAX,0x1f
004a57f1  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004a57fa  660f5ac1                  CVTPD2PS XMM0,XMM1
004a57fe  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004a5806  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004a580e  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
004a5816  e8257df7ff                CALL 0x0041d540
004a581b  f30f108de0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee0]
004a5823  f30f59c1                  MULSS XMM0,XMM1
004a5827  f30f598dc8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec8]
004a582f  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
004a5837  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004a583f  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
004a5847  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
004a584f  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004a5857  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
004a585f  e8fc962400                CALL 0x006eef60
004a5864  f30f108dacfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeac]
004a586c  f30f588dc0feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffec0]
004a5874  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a587c  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004a5884  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a588a  50                        PUSH EAX
004a588b  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004a5893  6a00                      PUSH 0x0
004a5895  6a00                      PUSH 0x0
004a5897  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
004a589d  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004a58a5  50                        PUSH EAX
004a58a6  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
004a58ac  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
004a58b4  50                        PUSH EAX
004a58b5  6a6f                      PUSH 0x6f
004a58b7  68e8030000                PUSH 0x3e8
004a58bc  e85f32f8ff                CALL 0x00428b20
004a58c1  f30f108db0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb0]
004a58c9  8bd0                      MOV EDX,EAX
004a58cb  f30f588de0feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffee0]
004a58d3  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004a58d9  8d8af0000000              LEA ECX,[EDX + 0xf0]
004a58df  c7824c03000000000000      MOV dword ptr [EDX + 0x34c],0x0
004a58e9  c78258030000000020c1      MOV dword ptr [EDX + 0x358],0xc1200000
004a58f3  f30f118a50030000          MOVSS dword ptr [EDX + 0x350],XMM1
004a58fb  3bc8                      CMP ECX,EAX
004a58fd  741e                      JZ 0x004a591d
004a58ff  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
004a5902  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004a5905  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
004a5909  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004a590d  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
004a5912  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004a5917  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
004a591a  894128                    MOV dword ptr [ECX + 0x28],EAX
004a591d  8b02                      MOV EAX,dword ptr [EDX]
004a591f  8bca                      MOV ECX,EDX
004a5921  ff500c                    CALL dword ptr [EAX + 0xc]
004a5924  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004a592a  83f810                    CMP EAX,0x10
004a592d  7414                      JZ 0x004a5943
004a592f  83f804                    CMP EAX,0x4
004a5932  740f                      JZ 0x004a5943
004a5934  83f806                    CMP EAX,0x6
004a5937  740a                      JZ 0x004a5943
004a5939  83f80a                    CMP EAX,0xa
004a593c  7405                      JZ 0x004a5943
004a593e  83f80b                    CMP EAX,0xb
004a5941  7552                      JNZ 0x004a5995
004a5943  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004a594b  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
004a5952  9f                        LAHF
004a5953  f6c444                    TEST AH,0x44
004a5956  7a15                      JP 0x004a596d
004a5958  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004a5960  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004a5967  9f                        LAHF
004a5968  f6c444                    TEST AH,0x44
004a596b  7b28                      JNP 0x004a5995
004a596d  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004a5975  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004a597d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004a5985  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004a598d  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004a5995  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
004a599d  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
004a59a5  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004a59ab  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004a59b3  85c0                      TEST EAX,EAX
004a59b5  7e0c                      JLE 0x004a59c3
004a59b7  2b858cfeffff              SUB EAX,dword ptr [EBP + 0xfffffe8c]
004a59bd  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004a59c3  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004a59ca  0f8471020000              JZ 0x004a5c41
004a59d0  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004a59d6  0f281de0c5ba00            MOVAPS XMM3,xmmword ptr [0x00bac5e0]
004a59dd  0f282570bdba00            MOVAPS XMM4,xmmword ptr [0x00babd70]
004a59e4  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
004a59ea  8b8194720000              MOV EAX,dword ptr [ECX + 0x7294]
004a59f0  85c0                      TEST EAX,EAX
004a59f2  0f8856010000              JS 0x004a5b4e
004a59f8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004a5a00  742a                      JZ 0x004a5a2c
004a5a02  660f6e8998720000          MOVD XMM1,dword ptr [ECX + 0x7298]
004a5a0a  660f6ec0                  MOVD XMM0,EAX
004a5a0e  0f5bc9                    CVTDQ2PS XMM1,XMM1
004a5a11  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a5a14  f30f5ec8                  DIVSS XMM1,XMM0
004a5a18  f30f5cd1                  SUBSS XMM2,XMM1
004a5a1c  f30f5f15e49fba00          MAXSS XMM2,dword ptr [0x00ba9fe4]
004a5a24  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
004a5a2c  f30f108944720000          MOVSS XMM1,dword ptr [ECX + 0x7244]
004a5a34  f30f10816c720000          MOVSS XMM0,dword ptr [ECX + 0x726c]
004a5a3c  f30f5cc1                  SUBSS XMM0,XMM1
004a5a40  f30f59c2                  MULSS XMM0,XMM2
004a5a44  f30f58c1                  ADDSS XMM0,XMM1
004a5a48  f30f108948720000          MOVSS XMM1,dword ptr [ECX + 0x7248]
004a5a50  f30f118144720000          MOVSS dword ptr [ECX + 0x7244],XMM0
004a5a58  f30f108170720000          MOVSS XMM0,dword ptr [ECX + 0x7270]
004a5a60  f30f5cc1                  SUBSS XMM0,XMM1
004a5a64  f30f59c2                  MULSS XMM0,XMM2
004a5a68  f30f58c1                  ADDSS XMM0,XMM1
004a5a6c  f30f10894c720000          MOVSS XMM1,dword ptr [ECX + 0x724c]
004a5a74  f30f118148720000          MOVSS dword ptr [ECX + 0x7248],XMM0
004a5a7c  f30f108174720000          MOVSS XMM0,dword ptr [ECX + 0x7274]
004a5a84  f30f5cc1                  SUBSS XMM0,XMM1
004a5a88  f30f59c2                  MULSS XMM0,XMM2
004a5a8c  f30f58c1                  ADDSS XMM0,XMM1
004a5a90  f30f108950720000          MOVSS XMM1,dword ptr [ECX + 0x7250]
004a5a98  f30f11814c720000          MOVSS dword ptr [ECX + 0x724c],XMM0
004a5aa0  f30f108178720000          MOVSS XMM0,dword ptr [ECX + 0x7278]
004a5aa8  f30f5cc1                  SUBSS XMM0,XMM1
004a5aac  f30f59c2                  MULSS XMM0,XMM2
004a5ab0  f30f58c1                  ADDSS XMM0,XMM1
004a5ab4  f30f108958720000          MOVSS XMM1,dword ptr [ECX + 0x7258]
004a5abc  f30f118150720000          MOVSS dword ptr [ECX + 0x7250],XMM0
004a5ac4  f30f108180720000          MOVSS XMM0,dword ptr [ECX + 0x7280]
004a5acc  f30f5cc1                  SUBSS XMM0,XMM1
004a5ad0  f30f59c2                  MULSS XMM0,XMM2
004a5ad4  f30f58c1                  ADDSS XMM0,XMM1
004a5ad8  f30f10895c720000          MOVSS XMM1,dword ptr [ECX + 0x725c]
004a5ae0  f30f118158720000          MOVSS dword ptr [ECX + 0x7258],XMM0
004a5ae8  f30f108184720000          MOVSS XMM0,dword ptr [ECX + 0x7284]
004a5af0  f30f5cc1                  SUBSS XMM0,XMM1
004a5af4  f30f59c2                  MULSS XMM0,XMM2
004a5af8  f30f58c1                  ADDSS XMM0,XMM1
004a5afc  f30f108960720000          MOVSS XMM1,dword ptr [ECX + 0x7260]
004a5b04  f30f11815c720000          MOVSS dword ptr [ECX + 0x725c],XMM0
004a5b0c  f30f108188720000          MOVSS XMM0,dword ptr [ECX + 0x7288]
004a5b14  f30f5cc1                  SUBSS XMM0,XMM1
004a5b18  f30f59c2                  MULSS XMM0,XMM2
004a5b1c  f30f58c1                  ADDSS XMM0,XMM1
004a5b20  f30f108964720000          MOVSS XMM1,dword ptr [ECX + 0x7264]
004a5b28  f30f118160720000          MOVSS dword ptr [ECX + 0x7260],XMM0
004a5b30  f30f10818c720000          MOVSS XMM0,dword ptr [ECX + 0x728c]
004a5b38  f30f5cc1                  SUBSS XMM0,XMM1
004a5b3c  f30f59c2                  MULSS XMM0,XMM2
004a5b40  f30f58c1                  ADDSS XMM0,XMM1
004a5b44  f30f118164720000          MOVSS dword ptr [ECX + 0x7264],XMM0
004a5b4c  eb34                      JMP 0x004a5b82
004a5b4e  0f1081301b0000            MOVUPS XMM0,xmmword ptr [ECX + 0x1b30]
004a5b55  8b81401b0000              MOV EAX,dword ptr [ECX + 0x1b40]
004a5b5b  0f118144720000            MOVUPS xmmword ptr [ECX + 0x7244],XMM0
004a5b62  898154720000              MOV dword ptr [ECX + 0x7254],EAX
004a5b68  0f1081441b0000            MOVUPS XMM0,xmmword ptr [ECX + 0x1b44]
004a5b6f  8b81541b0000              MOV EAX,dword ptr [ECX + 0x1b54]
004a5b75  0f118158720000            MOVUPS xmmword ptr [ECX + 0x7258],XMM0
004a5b7c  898168720000              MOV dword ptr [ECX + 0x7268],EAX
004a5b82  6a00                      PUSH 0x0
004a5b84  6a00                      PUSH 0x0
004a5b86  6aff                      PUSH -0x1
004a5b88  0f11a16c720000            MOVUPS xmmword ptr [ECX + 0x726c],XMM4
004a5b8f  688d000000                PUSH 0x8d
004a5b94  0f119980720000            MOVUPS xmmword ptr [ECX + 0x7280],XMM3
004a5b9b  c7817c72000000000000      MOV dword ptr [ECX + 0x727c],0x0
004a5ba5  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
004a5bab  c7819072000000000000      MOV dword ptr [ECX + 0x7290],0x0
004a5bb5  c781947200005a000000      MOV dword ptr [ECX + 0x7294],0x5a
004a5bbf  c781987200005a000000      MOV dword ptr [ECX + 0x7298],0x5a
004a5bc9  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
004a5bcf  68e8030000                PUSH 0x3e8
004a5bd4  81c118120000              ADD ECX,0x1218
004a5bda  50                        PUSH EAX
004a5bdb  e88053f7ff                CALL 0x0041af60
004a5be0  8bb5a0feffff              MOV ESI,dword ptr [EBP + 0xfffffea0]
004a5be6  33c9                      XOR ECX,ECX
004a5be8  8b9598feffff              MOV EDX,dword ptr [EBP + 0xfffffe98]
004a5bee  85f6                      TEST ESI,ESI
004a5bf0  7431                      JZ 0x004a5c23
004a5bf2  8b048a                    MOV EAX,dword ptr [EDX + ECX*0x4]
004a5bf5  85c0                      TEST EAX,EAX
004a5bf7  7425                      JZ 0x004a5c1e
004a5bf9  817828e8030000            CMP dword ptr [EAX + 0x28],0x3e8
004a5c00  751c                      JNZ 0x004a5c1e
004a5c02  39b8c8030000              CMP dword ptr [EAX + 0x3c8],EDI
004a5c08  7514                      JNZ 0x004a5c1e
004a5c0a  c7805c0400001e000000      MOV dword ptr [EAX + 0x45c],0x1e
004a5c14  c780600400001e000000      MOV dword ptr [EAX + 0x460],0x1e
004a5c1e  41                        INC ECX
004a5c1f  3bce                      CMP ECX,ESI
004a5c21  72cf                      JC 0x004a5bf2
004a5c23  80bd94feffff00            CMP byte ptr [EBP + 0xfffffe94],0x0
004a5c2a  7515                      JNZ 0x004a5c41
004a5c2c  6a00                      PUSH 0x0
004a5c2e  6a00                      PUSH 0x0
004a5c30  b101                      MOV CL,0x1
004a5c32  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004a5c39  e872ec5b00                CALL 0x00a648b0
004a5c3e  83c408                    ADD ESP,0x8
004a5c41  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004a5c44  64890d00000000            MOV dword ptr FS:[0x0],ECX
004a5c4b  59                        POP ECX
004a5c4c  5f                        POP EDI
004a5c4d  5e                        POP ESI
004a5c4e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004a5c51  33cd                      XOR ECX,EBP
004a5c53  e8d3946400                CALL 0x00aef12b
004a5c58  8be5                      MOV ESP,EBP
004a5c5a  5d                        POP EBP
004a5c5b  8be3                      MOV ESP,EBX
004a5c5d  5b                        POP EBX
004a5c5e  c3                        RET
004a5c5f  682000c800                PUSH 0xc80020
004a5c64  e834966400                CALL 0x00aef29d
004a5c69  83c404                    ADD ESP,0x4
004a5c6c  833d2000c800ff            CMP dword ptr [0x00c80020],-0x1
004a5c73  0f8570d8ffff              JNZ 0x004a34e9
004a5c79  0f280590cbba00            MOVAPS XMM0,xmmword ptr [0x00bacb90]
004a5c80  0f11052400c800            MOVUPS xmmword ptr [0x00c80024],XMM0
004a5c87  682000c800                PUSH 0xc80020
004a5c8c  0f2805b0bfba00            MOVAPS XMM0,xmmword ptr [0x00babfb0]
004a5c93  0f11053400c800            MOVUPS xmmword ptr [0x00c80034],XMM0
004a5c9a  e8b4956400                CALL 0x00aef253
004a5c9f  83c404                    ADD ESP,0x4
004a5ca2  e942d8ffff                JMP 0x004a34e9
