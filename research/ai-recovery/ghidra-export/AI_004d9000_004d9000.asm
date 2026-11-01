; J460 NPC AI 0x004d9000 AI_004d9000
; types=854
; identities=854.0.0
; entry=004d9000
004d9000  55                        PUSH EBP
004d9001  8bec                      MOV EBP,ESP
004d9003  83e4f8                    AND ESP,0xfffffff8
004d9006  81ec28010000              SUB ESP,0x128
004d900c  a1b493bf00                MOV EAX,[0x00bf93b4]
004d9011  33c4                      XOR EAX,ESP
004d9013  89842424010000            MOV dword ptr [ESP + 0x124],EAX
004d901a  a17816c700                MOV EAX,[0x00c71678]
004d901f  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004d9026  56                        PUSH ESI
004d9027  57                        PUSH EDI
004d9028  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004d902e  8bf9                      MOV EDI,ECX
004d9030  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
004d9034  0f11442428                MOVUPS xmmword ptr [ESP + 0x28],XMM0
004d9039  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
004d9041  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004d9049  c744244c00000000          MOV dword ptr [ESP + 0x4c],0x0
004d9051  c744245000000000          MOV dword ptr [ESP + 0x50],0x0
004d9059  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004d9061  0f2805d0c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac5d0]
004d9068  2bf0                      SUB ESI,EAX
004d906a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004d9070  89742408                  MOV dword ptr [ESP + 0x8],ESI
004d9074  0f11442438                MOVUPS xmmword ptr [ESP + 0x38],XMM0
004d9079  83f80a                    CMP EAX,0xa
004d907c  0f8704130000              JA 0x004da386
004d9082  ff248560a54d00            JMP dword ptr [EAX*0x4 + 0x4da560]
004da386  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004da38d  7432                      JZ 0x004da3c1
004da38f  68b804b600                PUSH 0xb604b8
004da394  8d8f98000000              LEA ECX,[EDI + 0x98]
004da39a  e84109f3ff                CALL 0x0040ace0
004da39f  8bf0                      MOV ESI,EAX
004da3a1  85f6                      TEST ESI,ESI
004da3a3  741c                      JZ 0x004da3c1
004da3a5  807e0c00                  CMP byte ptr [ESI + 0xc],0x0
004da3a9  7416                      JZ 0x004da3c1
004da3ab  6a00                      PUSH 0x0
004da3ad  8d4f48                    LEA ECX,[EDI + 0x48]
004da3b0  e86b0ef3ff                CALL 0x0040b220
004da3b5  8b4e10                    MOV ECX,dword ptr [ESI + 0x10]
004da3b8  894834                    MOV dword ptr [EAX + 0x34],ECX
004da3bb  8b4e14                    MOV ECX,dword ptr [ESI + 0x14]
004da3be  894838                    MOV dword ptr [EAX + 0x38],ECX
004da3c1  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004da3c8  0f847d010000              JZ 0x004da54b
004da3ce  c744241c03000000          MOV dword ptr [ESP + 0x1c],0x3
004da3d6  e8854b2100                CALL 0x006eef60
004da3db  660f6ec0                  MOVD XMM0,EAX
004da3df  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004da3e3  c1e81f                    SHR EAX,0x1f
004da3e6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004da3ef  660f5ac0                  CVTPD2PS XMM0,XMM0
004da3f3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004da3fb  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004da403  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004da40b  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
004da411  e84a4b2100                CALL 0x006eef60
004da416  c744247400000000          MOV dword ptr [ESP + 0x74],0x0
004da41e  c744247800000000          MOV dword ptr [ESP + 0x78],0x0
004da426  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
004da42e  660f6ec0                  MOVD XMM0,EAX
004da432  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004da436  c1e81f                    SHR EAX,0x1f
004da439  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004da442  660f5ac0                  CVTPD2PS XMM0,XMM0
004da446  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004da44e  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004da456  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
004da45e  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004da466  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
004da46c  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
004da472  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004da47a  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004da480  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004da487  0f11442454                MOVUPS xmmword ptr [ESP + 0x54],XMM0
004da48c  0f57c0                    XORPS XMM0,XMM0
004da48f  0f11442464                MOVUPS xmmword ptr [ESP + 0x64],XMM0
004da494  e8c74a2100                CALL 0x006eef60
004da499  f30f100dc0adba00          MOVSS XMM1,dword ptr [0x00baadc0]
004da4a1  660f6ec0                  MOVD XMM0,EAX
004da4a5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004da4a9  c1e81f                    SHR EAX,0x1f
004da4ac  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004da4b5  660f5ac0                  CVTPD2PS XMM0,XMM0
004da4b9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004da4c1  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004da4c9  f30f5cc8                  SUBSS XMM1,XMM0
004da4cd  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
004da4d3  e8884a2100                CALL 0x006eef60
004da4d8  8bf0                      MOV ESI,EAX
004da4da  83e601                    AND ESI,0x1
004da4dd  e87e4a2100                CALL 0x006eef60
004da4e2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004da4e8  50                        PUSH EAX
004da4e9  8d4603                    LEA EAX,[ESI + 0x3]
004da4ec  50                        PUSH EAX
004da4ed  6a00                      PUSH 0x0
004da4ef  6840b6c700                PUSH 0xc7b640
004da4f4  8d442424                  LEA EAX,[ESP + 0x24]
004da4f8  50                        PUSH EAX
004da4f9  6a02                      PUSH 0x2
004da4fb  68e8030000                PUSH 0x3e8
004da500  e81be6f4ff                CALL 0x00428b20
004da505  6a01                      PUSH 0x1
004da507  8bf0                      MOV ESI,EAX
004da509  8d442458                  LEA EAX,[ESP + 0x58]
004da50d  6a00                      PUSH 0x0
004da50f  68ff000000                PUSH 0xff
004da514  6aff                      PUSH -0x1
004da516  8b16                      MOV EDX,dword ptr [ESI]
004da518  8bce                      MOV ECX,ESI
004da51a  50                        PUSH EAX
004da51b  ff523c                    CALL dword ptr [EDX + 0x3c]
004da51e  836c241c01                SUB dword ptr [ESP + 0x1c],0x1
004da523  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
004da529  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004da533  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
004da53b  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
004da545  0f858bfeffff              JNZ 0x004da3d6
004da54b  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
004da552  5f                        POP EDI
004da553  5e                        POP ESI
004da554  33cc                      XOR ECX,ESP
004da556  e8d04b6100                CALL 0x00aef12b
004da55b  8be5                      MOV ESP,EBP
004da55d  5d                        POP EBP
004da55e  c3                        RET
