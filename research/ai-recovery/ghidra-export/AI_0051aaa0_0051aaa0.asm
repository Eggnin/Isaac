; J460 NPC AI 0x0051aaa0 AI_0051aaa0
; types=87
; identities=87.0.0,87.1.0
; entry=0051aaa0
0051aaa0  53                        PUSH EBX
0051aaa1  8bdc                      MOV EBX,ESP
0051aaa3  83ec08                    SUB ESP,0x8
0051aaa6  83e4f8                    AND ESP,0xfffffff8
0051aaa9  83c404                    ADD ESP,0x4
0051aaac  55                        PUSH EBP
0051aaad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0051aab0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0051aab4  8bec                      MOV EBP,ESP
0051aab6  6aff                      PUSH -0x1
0051aab8  688544af00                PUSH 0xaf4485
0051aabd  64a100000000              MOV EAX,FS:[0x0]
0051aac3  50                        PUSH EAX
0051aac4  53                        PUSH EBX
0051aac5  81ec78010000              SUB ESP,0x178
0051aacb  a1b493bf00                MOV EAX,[0x00bf93b4]
0051aad0  33c5                      XOR EAX,EBP
0051aad2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0051aad5  56                        PUSH ESI
0051aad6  57                        PUSH EDI
0051aad7  50                        PUSH EAX
0051aad8  8d45f4                    LEA EAX,[EBP + -0xc]
0051aadb  64a300000000              MOV FS:[0x0],EAX
0051aae1  8bf9                      MOV EDI,ECX
0051aae3  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0051aae9  85c9                      TEST ECX,ECX
0051aaeb  0f85c1000000              JNZ 0x0051abb2
0051aaf1  0f280db0c4ba00            MOVAPS XMM1,xmmword ptr [0x00bac4b0]
0051aaf8  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0051aafe  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0051ab04  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051ab0e  c785c4feffffcac848be      MOV dword ptr [EBP + 0xfffffec4],0xbe48c8ca
0051ab18  0f57c0                    XORPS XMM0,XMM0
0051ab1b  c785c8feffff8382023f      MOV dword ptr [EBP + 0xfffffec8],0x3f028283
0051ab25  c785ccfeffffcac8483e      MOV dword ptr [EBP + 0xfffffecc],0x3e48c8ca
0051ab2f  3bc8                      CMP ECX,EAX
0051ab31  741d                      JZ 0x0051ab50
0051ab33  8b85ccfeffff              MOV EAX,dword ptr [EBP + 0xfffffecc]
0051ab39  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0051ab3d  f30f7e85c4feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffec4]
0051ab45  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0051ab4a  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0051ab4d  894128                    MOV dword ptr [ECX + 0x28],EAX
0051ab50  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0051ab54  0f85ee090000              JNZ 0x0051b548
0051ab5a  0f280520caba00            MOVAPS XMM0,xmmword ptr [0x00baca20]
0051ab61  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
0051ab67  c78598feffff0000803f      MOV dword ptr [EBP + 0xfffffe98],0x3f800000
0051ab71  0f57c9                    XORPS XMM1,XMM1
0051ab74  c7859cfeffff8483033f      MOV dword ptr [EBP + 0xfffffe9c],0x3f038384
0051ab7e  c785a0feffff8180803b      MOV dword ptr [EBP + 0xfffffea0],0x3b808081
0051ab88  3bc8                      CMP ECX,EAX
0051ab8a  0f84b8090000              JZ 0x0051b548
0051ab90  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
0051ab96  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0051ab99  f30f7e8598feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe98]
0051aba1  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0051aba6  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0051abaa  894128                    MOV dword ptr [ECX + 0x28],EAX
0051abad  e996090000                JMP 0x0051b548
0051abb2  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0051abb9  7476                      JZ 0x0051ac31
0051abbb  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0051abc3  0f2f0500aeba00            COMISS XMM0,dword ptr [0x00baae00]
0051abca  0f8678090000              JBE 0x0051b548
0051abd0  e88b431d00                CALL 0x006eef60
0051abd5  33d2                      XOR EDX,EDX
0051abd7  b964000000                MOV ECX,0x64
0051abdc  f7f1                      DIV ECX
0051abde  83fa0f                    CMP EDX,0xf
0051abe1  0f8361090000              JNC 0x0051b548
0051abe7  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0051abeb  0f8557090000              JNZ 0x0051b548
0051abf1  6aff                      PUSH -0x1
0051abf3  6a00                      PUSH 0x0
0051abf5  6a00                      PUSH 0x0
0051abf7  68ee000000                PUSH 0xee
0051abfc  8bcf                      MOV ECX,EDI
0051abfe  e82d631a00                CALL 0x006c0f30
0051ac03  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
0051ac09  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0051ac10  898780030000              MOV dword ptr [EDI + 0x380],EAX
0051ac16  e845431d00                CALL 0x006eef60
0051ac1b  33d2                      XOR EDX,EDX
0051ac1d  b914000000                MOV ECX,0x14
0051ac22  f7f1                      DIV ECX
0051ac24  03d1                      ADD EDX,ECX
0051ac26  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0051ac2c  e917090000                JMP 0x0051b548
0051ac31  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0051ac36  0f57c9                    XORPS XMM1,XMM1
0051ac39  0f2fc1                    COMISS XMM0,XMM1
0051ac3c  7660                      JBE 0x0051ac9e
0051ac3e  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0051ac41  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0051ac44  7458                      JZ 0x0051ac9e
0051ac46  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
0051ac50  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
0051ac53  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
0051ac56  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
0051ac5c  8bca                      MOV ECX,EDX
0051ac5e  83e106                    AND ECX,0x6
0051ac61  83c900                    OR ECX,0x0
0051ac64  742a                      JZ 0x0051ac90
0051ac66  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
0051ac69  d1e9                      SHR ECX,0x1
0051ac6b  f6c101                    TEST CL,0x1
0051ac6e  7520                      JNZ 0x0051ac90
0051ac70  83781001                  CMP dword ptr [EAX + 0x10],0x1
0051ac74  741a                      JZ 0x0051ac90
0051ac76  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
0051ac79  83f901                    CMP ECX,0x1
0051ac7c  7412                      JZ 0x0051ac90
0051ac7e  83f903                    CMP ECX,0x3
0051ac81  740d                      JZ 0x0051ac90
0051ac83  81e200100000              AND EDX,0x1000
0051ac89  83ca00                    OR EDX,0x0
0051ac8c  7502                      JNZ 0x0051ac90
0051ac8e  8910                      MOV dword ptr [EAX],EDX
0051ac90  83c038                    ADD EAX,0x38
0051ac93  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0051ac96  75b8                      JNZ 0x0051ac50
0051ac98  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0051ac9e  83f904                    CMP ECX,0x4
0051aca1  0f858a040000              JNZ 0x0051b131
0051aca7  e8b4421d00                CALL 0x006eef60
0051acac  33d2                      XOR EDX,EDX
0051acae  b90a000000                MOV ECX,0xa
0051acb3  f7f1                      DIV ECX
0051acb5  85d2                      TEST EDX,EDX
0051acb7  0f8519010000              JNZ 0x0051add6
0051acbd  e89e421d00                CALL 0x006eef60
0051acc2  660f6ec0                  MOVD XMM0,EAX
0051acc6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051acca  c1e81f                    SHR EAX,0x1f
0051accd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051acd6  660f5ac0                  CVTPD2PS XMM0,XMM0
0051acda  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051ace2  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0051acea  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0051acf2  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0051acfa  e861421d00                CALL 0x006eef60
0051acff  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0051ad07  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051ad0f  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0051ad17  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0051ad1f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051ad25  6a00                      PUSH 0x0
0051ad27  68acd5c500                PUSH 0xc5d5ac
0051ad2c  68dcd5c500                PUSH 0xc5d5dc
0051ad31  6a00                      PUSH 0x0
0051ad33  50                        PUSH EAX
0051ad34  6a00                      PUSH 0x0
0051ad36  57                        PUSH EDI
0051ad37  6840b6c700                PUSH 0xc7b640
0051ad3c  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051ad42  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
0051ad4a  50                        PUSH EAX
0051ad4b  6a07                      PUSH 0x7
0051ad4d  68e8030000                PUSH 0x3e8
0051ad52  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0051ad5a  e8c1ddf0ff                CALL 0x00428b20
0051ad5f  50                        PUSH EAX
0051ad60  e84c5b5d00                CALL 0x00af08b1
0051ad65  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0051ad6d  83c414                    ADD ESP,0x14
0051ad70  8bf0                      MOV ESI,EAX
0051ad72  6a01                      PUSH 0x1
0051ad74  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0051ad7c  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0051ad84  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0051ad88  8b0e                      MOV ECX,dword ptr [ESI]
0051ad8a  6a00                      PUSH 0x0
0051ad8c  68ff000000                PUSH 0xff
0051ad91  6aff                      PUSH -0x1
0051ad93  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0051ad96  8bce                      MOV ECX,ESI
0051ad98  752c                      JNZ 0x0051adc6
0051ad9a  0f57c0                    XORPS XMM0,XMM0
0051ad9d  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0051ada4  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0051ada8  8d45c0                    LEA EAX,[EBP + -0x40]
0051adab  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
0051adb2  0f280530c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac030]
0051adb9  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0051adbd  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0051adc4  eb06                      JMP 0x0051adcc
0051adc6  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0051adcc  50                        PUSH EAX
0051adcd  ffd2                      CALL EDX
0051adcf  8b06                      MOV EAX,dword ptr [ESI]
0051add1  8bce                      MOV ECX,ESI
0051add3  ff500c                    CALL dword ptr [EAX + 0xc]
0051add6  8b0d30ddb100              MOV ECX,dword ptr [0x00b1dd30]
0051addc  a134ddb100                MOV EAX,[0x00b1dd34]
0051ade1  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0051ade8  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0051adef  894dd4                    MOV dword ptr [EBP + -0x2c],ECX
0051adf2  8945d8                    MOV dword ptr [EBP + -0x28],EAX
0051adf5  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0051adf9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0051ae00  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0051ae07  c745b808000000            MOV dword ptr [EBP + -0x48],0x8
0051ae0e  894da8                    MOV dword ptr [EBP + -0x58],ECX
0051ae11  8945ac                    MOV dword ptr [EBP + -0x54],EAX
0051ae14  c645b000                  MOV byte ptr [EBP + -0x50],0x0
0051ae18  51                        PUSH ECX
0051ae19  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0051ae1d  8d45d4                    LEA EAX,[EBP + -0x2c]
0051ae20  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0051ae27  8bcf                      MOV ECX,EDI
0051ae29  50                        PUSH EAX
0051ae2a  8d45a8                    LEA EAX,[EBP + -0x58]
0051ae2d  50                        PUSH EAX
0051ae2e  e8fd641a00                CALL 0x006c1330
0051ae33  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0051ae37  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
0051ae3a  83fa10                    CMP EDX,0x10
0051ae3d  7228                      JC 0x0051ae67
0051ae3f  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0051ae42  42                        INC EDX
0051ae43  8bc1                      MOV EAX,ECX
0051ae45  81fa00100000              CMP EDX,0x1000
0051ae4b  7210                      JC 0x0051ae5d
0051ae4d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051ae50  83c223                    ADD EDX,0x23
0051ae53  2bc1                      SUB EAX,ECX
0051ae55  83c0fc                    ADD EAX,-0x4
0051ae58  83f81f                    CMP EAX,0x1f
0051ae5b  7749                      JA 0x0051aea6
0051ae5d  52                        PUSH EDX
0051ae5e  51                        PUSH ECX
0051ae5f  e8f8425d00                CALL 0x00aef15c
0051ae64  83c408                    ADD ESP,0x8
0051ae67  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0051ae6e  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0051ae71  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0051ae78  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0051ae7f  c645a800                  MOV byte ptr [EBP + -0x58],0x0
0051ae83  83fa10                    CMP EDX,0x10
0051ae86  722e                      JC 0x0051aeb6
0051ae88  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0051ae8b  42                        INC EDX
0051ae8c  8bc1                      MOV EAX,ECX
0051ae8e  81fa00100000              CMP EDX,0x1000
0051ae94  7216                      JC 0x0051aeac
0051ae96  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051ae99  83c223                    ADD EDX,0x23
0051ae9c  2bc1                      SUB EAX,ECX
0051ae9e  83c0fc                    ADD EAX,-0x4
0051aea1  83f81f                    CMP EAX,0x1f
0051aea4  7606                      JBE 0x0051aeac
0051aea6  ff159488b100              CALL dword ptr [0x00b18894]
0051aeac  52                        PUSH EDX
0051aead  51                        PUSH ECX
0051aeae  e8a9425d00                CALL 0x00aef15c
0051aeb3  83c408                    ADD ESP,0x8
0051aeb6  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051aebc  2500080001                AND EAX,0x1000800
0051aec1  83c800                    OR EAX,0x0
0051aec4  7456                      JZ 0x0051af1c
0051aec6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051aecd  754d                      JNZ 0x0051af1c
0051aecf  8bcf                      MOV ECX,EDI
0051aed1  e86a391a00                CALL 0x006be840
0051aed6  6a00                      PUSH 0x0
0051aed8  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0051aede  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0051aee4  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0051aeea  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051aef0  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
0051aef6  8d8f14040000              LEA ECX,[EDI + 0x414]
0051aefc  50                        PUSH EAX
0051aefd  e83e9a2c00                CALL 0x007e4940
0051af02  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051af0a  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0051af12  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051af1a  eb30                      JMP 0x0051af4c
0051af1c  6a01                      PUSH 0x1
0051af1e  6a00                      PUSH 0x0
0051af20  83ec08                    SUB ESP,0x8
0051af23  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051af29  8bcf                      MOV ECX,EDI
0051af2b  c74424049a99193f          MOV dword ptr [ESP + 0x4],0x3f19999a
0051af33  c7042400000000            MOV dword ptr [ESP],0x0
0051af3a  50                        PUSH EAX
0051af3b  e8003d1a00                CALL 0x006bec40
0051af40  50                        PUSH EAX
0051af41  8d8f14040000              LEA ECX,[EDI + 0x414]
0051af47  e874842c00                CALL 0x007e33c0
0051af4c  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0051af52  be03000000                MOV ESI,0x3
0051af57  83f8ff                    CMP EAX,-0x1
0051af5a  741e                      JZ 0x0051af7a
0051af5c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0051af62  6a00                      PUSH 0x0
0051af64  57                        PUSH EDI
0051af65  50                        PUSH EAX
0051af66  6a0a                      PUSH 0xa
0051af68  e873b24300                CALL 0x009561e0
0051af6d  33c9                      XOR ECX,ECX
0051af6f  84c0                      TEST AL,AL
0051af71  0f95c1                    SETNZ CL
0051af74  85c9                      TEST ECX,ECX
0051af76  747d                      JZ 0x0051aff5
0051af78  eb29                      JMP 0x0051afa3
0051af7a  8bcf                      MOV ECX,EDI
0051af7c  e8bf381a00                CALL 0x006be840
0051af81  50                        PUSH EAX
0051af82  8bcf                      MOV ECX,EDI
0051af84  e8d7cd1b00                CALL 0x006d7d60
0051af89  84c0                      TEST AL,AL
0051af8b  7468                      JZ 0x0051aff5
0051af8d  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
0051af94  745f                      JZ 0x0051aff5
0051af96  e8c53f1d00                CALL 0x006eef60
0051af9b  33d2                      XOR EDX,EDX
0051af9d  f7f6                      DIV ESI
0051af9f  85d2                      TEST EDX,EDX
0051afa1  7552                      JNZ 0x0051aff5
0051afa3  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0051afa6  85c0                      TEST EAX,EAX
0051afa8  751a                      JNZ 0x0051afc4
0051afaa  51                        PUSH ECX
0051afab  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051afb2  50                        PUSH EAX
0051afb3  6a28                      PUSH 0x28
0051afb5  51                        PUSH ECX
0051afb6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051afbd  68a5000000                PUSH 0xa5
0051afc2  eb2a                      JMP 0x0051afee
0051afc4  83f801                    CMP EAX,0x1
0051afc7  752c                      JNZ 0x0051aff5
0051afc9  e8923f1d00                CALL 0x006eef60
0051afce  33d2                      XOR EDX,EDX
0051afd0  f7f6                      DIV ESI
0051afd2  85d2                      TEST EDX,EDX
0051afd4  751f                      JNZ 0x0051aff5
0051afd6  51                        PUSH ECX
0051afd7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051afde  52                        PUSH EDX
0051afdf  6a78                      PUSH 0x78
0051afe1  51                        PUSH ECX
0051afe2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051afe9  68a7000000                PUSH 0xa7
0051afee  8bcf                      MOV ECX,EDI
0051aff0  e8abbb1b00                CALL 0x006d6ba0
0051aff5  0f57c0                    XORPS XMM0,XMM0
0051aff8  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
0051afff  0f97c0                    SETA AL
0051b002  888748010000              MOV byte ptr [EDI + 0x148],AL
0051b008  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b00f  7418                      JZ 0x0051b029
0051b011  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0051b019  8bcf                      MOV ECX,EDI
0051b01b  6a07                      PUSH 0x7
0051b01d  6a00                      PUSH 0x0
0051b01f  e83cfe1a00                CALL 0x006cae60
0051b024  0fb6d0                    MOVZX EDX,AL
0051b027  eb13                      JMP 0x0051b03c
0051b029  e8323f1d00                CALL 0x006eef60
0051b02e  33d2                      XOR EDX,EDX
0051b030  b93c000000                MOV ECX,0x3c
0051b035  f7f1                      DIV ECX
0051b037  f7da                      NEG EDX
0051b039  1bd2                      SBB EDX,EDX
0051b03b  42                        INC EDX
0051b03c  85d2                      TEST EDX,EDX
0051b03e  0f8404050000              JZ 0x0051b548
0051b044  817f348a030000            CMP dword ptr [EDI + 0x34],0x38a
0051b04b  0f84f7040000              JZ 0x0051b548
0051b051  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051b057  25000a0001                AND EAX,0x1000a00
0051b05c  83c800                    OR EAX,0x0
0051b05f  0f85e3040000              JNZ 0x0051b548
0051b065  6a01                      PUSH 0x1
0051b067  8bcf                      MOV ECX,EDI
0051b069  e8e2df1b00                CALL 0x006d9050
0051b06e  8bcf                      MOV ECX,EDI
0051b070  e8cb371a00                CALL 0x006be840
0051b075  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b07c  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0051b084  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0051b08c  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
0051b094  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
0051b09c  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
0051b0a4  7418                      JZ 0x0051b0be
0051b0a6  f30f1097200f0000          MOVSS XMM2,dword ptr [EDI + 0xf20]
0051b0ae  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
0051b0b6  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
0051b0be  0f28c2                    MOVAPS XMM0,XMM2
0051b0c1  f30f59c9                  MULSS XMM1,XMM1
0051b0c5  f30f59c2                  MULSS XMM0,XMM2
0051b0c9  f30f58c8                  ADDSS XMM1,XMM0
0051b0cd  f30f100544acba00          MOVSS XMM0,dword ptr [0x00baac44]
0051b0d5  0f2fc1                    COMISS XMM0,XMM1
0051b0d8  0f866a040000              JBE 0x0051b548
0051b0de  6a01                      PUSH 0x1
0051b0e0  6854ddb100                PUSH 0xb1dd54
0051b0e5  8d4f48                    LEA ECX,[EDI + 0x48]
0051b0e8  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051b0f2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0051b0fc  e8cff4eeff                CALL 0x0040a5d0
0051b101  84c0                      TEST AL,AL
0051b103  740f                      JZ 0x0051b114
0051b105  8d4f78                    LEA ECX,[EDI + 0x78]
0051b108  e8a3f0eeff                CALL 0x0040a1b0
0051b10d  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0051b114  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0051b11c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0051b123  0f97c0                    SETA AL
0051b126  888748010000              MOV byte ptr [EDI + 0x148],AL
0051b12c  e917040000                JMP 0x0051b548
0051b131  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b138  751a                      JNZ 0x0051b154
0051b13a  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051b142  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051b14a  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051b152  eb48                      JMP 0x0051b19c
0051b154  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051b15c  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051b162  50                        PUSH EAX
0051b163  8bcf                      MOV ECX,EDI
0051b165  e836d41b00                CALL 0x006d85a0
0051b16a  f30f108de0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee0]
0051b172  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0051b179  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0051b181  9f                        LAHF
0051b182  f6c444                    TEST AH,0x44
0051b185  7a0d                      JP 0x0051b194
0051b187  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0051b18e  9f                        LAHF
0051b18f  f6c444                    TEST AH,0x44
0051b192  7b10                      JNP 0x0051b1a4
0051b194  f30f118f200f0000          MOVSS dword ptr [EDI + 0xf20],XMM1
0051b19c  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0051b1a4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051b1a8  0f84f2020000              JZ 0x0051b4a0
0051b1ae  68dcd2b100                PUSH 0xb1d2dc
0051b1b3  8d4f78                    LEA ECX,[EDI + 0x78]
0051b1b6  e815fceeff                CALL 0x0040add0
0051b1bb  84c0                      TEST AL,AL
0051b1bd  0f84dd020000              JZ 0x0051b4a0
0051b1c3  8bcf                      MOV ECX,EDI
0051b1c5  e876361a00                CALL 0x006be840
0051b1ca  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b1d1  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0051b1d9  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0051b1e1  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051b1e9  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0051b1f1  7462                      JZ 0x0051b255
0051b1f3  f30f1097200f0000          MOVSS XMM2,dword ptr [EDI + 0xf20]
0051b1fb  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
0051b202  9f                        LAHF
0051b203  f6c444                    TEST AH,0x44
0051b206  7a15                      JP 0x0051b21d
0051b208  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
0051b210  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0051b217  9f                        LAHF
0051b218  f6c444                    TEST AH,0x44
0051b21b  7b38                      JNP 0x0051b255
0051b21d  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
0051b225  f30f591544aaba00          MULSS XMM2,dword ptr [0x00baaa44]
0051b22d  f30f590d44aaba00          MULSS XMM1,dword ptr [0x00baaa44]
0051b235  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0051b23d  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0051b245  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
0051b24d  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
0051b255  51                        PUSH ECX
0051b256  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051b25d  6a00                      PUSH 0x0
0051b25f  6a02                      PUSH 0x2
0051b261  51                        PUSH ECX
0051b262  c704243333333f            MOV dword ptr [ESP],0x3f333333
0051b269  8bcf                      MOV ECX,EDI
0051b26b  68d5000000                PUSH 0xd5
0051b270  e82bb91b00                CALL 0x006d6ba0
0051b275  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0051b27b  e8b03cf2ff                CALL 0x0043ef30
0051b280  50                        PUSH EAX
0051b281  51                        PUSH ECX
0051b282  c7042400002041            MOV dword ptr [ESP],0x41200000
0051b289  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0051b28f  50                        PUSH EAX
0051b290  6a01                      PUSH 0x1
0051b292  8bcf                      MOV ECX,EDI
0051b294  e8371b1b00                CALL 0x006ccdd0
0051b299  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
0051b29c  8bf0                      MOV ESI,EAX
0051b29e  8b9638040000              MOV EDX,dword ptr [ESI + 0x438]
0051b2a4  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
0051b2aa  c78620040000cdcccc3f      MOV dword ptr [ESI + 0x420],0x3fcccccd
0051b2b4  83f901                    CMP ECX,0x1
0051b2b7  0f85af000000              JNZ 0x0051b36c
0051b2bd  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0051b2c4  83c808                    OR EAX,0x8
0051b2c7  51                        PUSH ECX
0051b2c8  6a00                      PUSH 0x0
0051b2ca  68ff000000                PUSH 0xff
0051b2cf  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
0051b2d5  8d4dc0                    LEA ECX,[EBP + -0x40]
0051b2d8  8b06                      MOV EAX,dword ptr [ESI]
0051b2da  6aff                      PUSH -0x1
0051b2dc  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0051b2e0  899638040000              MOV dword ptr [ESI + 0x438],EDX
0051b2e6  0f57c0                    XORPS XMM0,XMM0
0051b2e9  c745e00000803f            MOV dword ptr [EBP + -0x20],0x3f800000
0051b2f0  51                        PUSH ECX
0051b2f1  8bce                      MOV ECX,ESI
0051b2f3  c745e49a99993e            MOV dword ptr [EBP + -0x1c],0x3e99999a
0051b2fa  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0051b2fe  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0051b305  ff503c                    CALL dword ptr [EAX + 0x3c]
0051b308  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0051b30f  8d86f0000000              LEA EAX,[ESI + 0xf0]
0051b315  740a                      JZ 0x0051b321
0051b317  f30f1005b4adba00          MOVSS XMM0,dword ptr [0x00baadb4]
0051b31f  eb08                      JMP 0x0051b329
0051b321  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0051b329  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051b331  8d95d8feffff              LEA EDX,[EBP + 0xfffffed8]
0051b337  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051b33f  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0051b347  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0051b34f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051b357  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0051b35f  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0051b367  e9a2000000                JMP 0x0051b40e
0051b36c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0051b374  8d4d94                    LEA ECX,[EBP + -0x6c]
0051b377  83ca02                    OR EDX,0x2
0051b37a  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
0051b380  0f28d8                    MOVAPS XMM3,XMM0
0051b383  899638040000              MOV dword ptr [ESI + 0x438],EDX
0051b389  0f28d0                    MOVAPS XMM2,XMM0
0051b38c  0f28c8                    MOVAPS XMM1,XMM0
0051b38f  e8eca6f1ff                CALL 0x00435a80
0051b394  8b06                      MOV EAX,dword ptr [ESI]
0051b396  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0051b39d  6a01                      PUSH 0x1
0051b39f  6a00                      PUSH 0x0
0051b3a1  68ff000000                PUSH 0xff
0051b3a6  6aff                      PUSH -0x1
0051b3a8  51                        PUSH ECX
0051b3a9  8bce                      MOV ECX,ESI
0051b3ab  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
0051b3af  ff503c                    CALL dword ptr [EAX + 0x3c]
0051b3b2  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0051b3b9  740a                      JZ 0x0051b3c5
0051b3bb  f30f1005b4adba00          MOVSS XMM0,dword ptr [0x00baadb4]
0051b3c3  eb08                      JMP 0x0051b3cd
0051b3c5  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0051b3cd  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0051b3d5  8d4594                    LEA EAX,[EBP + -0x6c]
0051b3d8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051b3e0  8d95d0feffff              LEA EDX,[EBP + 0xfffffed0]
0051b3e6  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0051b3ee  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
0051b3f6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051b3fe  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0051b406  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
0051b40e  6840b6c700                PUSH 0xc7b640
0051b413  50                        PUSH EAX
0051b414  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051b41a  c785e4feffff000070c1      MOV dword ptr [EBP + 0xfffffee4],0xc1700000
0051b424  50                        PUSH EAX
0051b425  b902000000                MOV ECX,0x2
0051b42a  e8c1c81b00                CALL 0x006d7cf0
0051b42f  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
0051b437  83c40c                    ADD ESP,0xc
0051b43a  f30f108618040000          MOVSS XMM0,dword ptr [ESI + 0x418]
0051b442  f30f5c0504a3ba00          SUBSS XMM0,dword ptr [0x00baa304]
0051b44a  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
0051b452  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0051b45a  f30f5915e4a2ba00          MULSS XMM2,dword ptr [0x00baa2e4]
0051b462  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
0051b46a  f30f108614040000          MOVSS XMM0,dword ptr [ESI + 0x414]
0051b472  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
0051b47a  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
0051b482  f30f59c1                  MULSS XMM0,XMM1
0051b486  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
0051b48e  f30f5c05fca6ba00          SUBSS XMM0,dword ptr [0x00baa6fc]
0051b496  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
0051b49e  eb08                      JMP 0x0051b4a8
0051b4a0  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
0051b4a8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051b4b0  f30f59c1                  MULSS XMM0,XMM1
0051b4b4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051b4bc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051b4c0  7409                      JZ 0x0051b4cb
0051b4c2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0051b4c9  757d                      JNZ 0x0051b548
0051b4cb  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051b4d5  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0051b4d8  85f6                      TEST ESI,ESI
0051b4da  744a                      JZ 0x0051b526
0051b4dc  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0051b4e0  8bc6                      MOV EAX,ESI
0051b4e2  7202                      JC 0x0051b4e6
0051b4e4  8b06                      MOV EAX,dword ptr [ESI]
0051b4e6  b954bcb100                MOV ECX,0xb1bc54
0051b4eb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0051b4f0  8a10                      MOV DL,byte ptr [EAX]
0051b4f2  3a11                      CMP DL,byte ptr [ECX]
0051b4f4  751a                      JNZ 0x0051b510
0051b4f6  84d2                      TEST DL,DL
0051b4f8  7412                      JZ 0x0051b50c
0051b4fa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051b4fd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0051b500  750e                      JNZ 0x0051b510
0051b502  83c002                    ADD EAX,0x2
0051b505  83c102                    ADD ECX,0x2
0051b508  84d2                      TEST DL,DL
0051b50a  75e4                      JNZ 0x0051b4f0
0051b50c  33c0                      XOR EAX,EAX
0051b50e  eb05                      JMP 0x0051b515
0051b510  1bc0                      SBB EAX,EAX
0051b512  83c801                    OR EAX,0x1
0051b515  85c0                      TEST EAX,EAX
0051b517  750d                      JNZ 0x0051b526
0051b519  384634                    CMP byte ptr [ESI + 0x34],AL
0051b51c  742a                      JZ 0x0051b548
0051b51e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0051b524  7522                      JNZ 0x0051b548
0051b526  6a01                      PUSH 0x1
0051b528  6854bcb100                PUSH 0xb1bc54
0051b52d  8d4f48                    LEA ECX,[EDI + 0x48]
0051b530  e89bf0eeff                CALL 0x0040a5d0
0051b535  84c0                      TEST AL,AL
0051b537  740f                      JZ 0x0051b548
0051b539  8d4f78                    LEA ECX,[EDI + 0x78]
0051b53c  e86feceeff                CALL 0x0040a1b0
0051b541  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0051b548  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0051b54b  64890d00000000            MOV dword ptr FS:[0x0],ECX
0051b552  59                        POP ECX
0051b553  5f                        POP EDI
0051b554  5e                        POP ESI
0051b555  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0051b558  33cd                      XOR ECX,EBP
0051b55a  e8cc3b5d00                CALL 0x00aef12b
0051b55f  8be5                      MOV ESP,EBP
0051b561  5d                        POP EBP
0051b562  8be3                      MOV ESP,EBX
0051b564  5b                        POP EBX
0051b565  c3                        RET
