; J460 NPC AI 0x00548720 HELPER_310_1_AI
; types=310
; identities=310.1.0
; entry=00548720
00548720  53                        PUSH EBX
00548721  8bdc                      MOV EBX,ESP
00548723  83ec08                    SUB ESP,0x8
00548726  83e4f0                    AND ESP,0xfffffff0
00548729  83c404                    ADD ESP,0x4
0054872c  55                        PUSH EBP
0054872d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00548730  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00548734  8bec                      MOV EBP,ESP
00548736  81ec38010000              SUB ESP,0x138
0054873c  a1b493bf00                MOV EAX,[0x00bf93b4]
00548741  33c5                      XOR EAX,EBP
00548743  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00548746  56                        PUSH ESI
00548747  57                        PUSH EDI
00548748  8bf9                      MOV EDI,ECX
0054874a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00548750  85c0                      TEST EAX,EAX
00548752  0f84a1010000              JZ 0x005488f9
00548758  83f804                    CMP EAX,0x4
0054875b  0f85ea020000              JNZ 0x00548a4b
00548761  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00548769  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0054876f  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
00548777  51                        PUSH ECX
00548778  c7042400000000            MOV dword ptr [ESP],0x0
0054877f  50                        PUSH EAX
00548780  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00548788  e8b3641700                CALL 0x006bec40
0054878d  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00548792  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0054879a  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0054879e  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005487a6  0f28c1                    MOVAPS XMM0,XMM1
005487a9  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
005487b1  f30f59c1                  MULSS XMM0,XMM1
005487b5  0f28ca                    MOVAPS XMM1,XMM2
005487b8  f30f11954cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM2
005487c0  f30f59ca                  MULSS XMM1,XMM2
005487c4  f30f58c1                  ADDSS XMM0,XMM1
005487c8  e883d2eeff                CALL 0x00435a50
005487cd  0f28d0                    MOVAPS XMM2,XMM0
005487d0  0f57c0                    XORPS XMM0,XMM0
005487d3  0f2fd0                    COMISS XMM2,XMM0
005487d6  7634                      JBE 0x0054880c
005487d8  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005487e0  f30f5eca                  DIVSS XMM1,XMM2
005487e4  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
005487ec  f30f59c1                  MULSS XMM0,XMM1
005487f0  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
005487f8  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
00548800  f30f59c1                  MULSS XMM0,XMM1
00548804  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
0054880c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00548813  742a                      JZ 0x0054883f
00548815  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0054881b  0f57d2                    XORPS XMM2,XMM2
0054881e  50                        PUSH EAX
0054881f  8bcf                      MOV ECX,EDI
00548821  e8aafa1800                CALL 0x006d82d0
00548826  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054882a  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00548832  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00548837  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
0054883f  e81c671a00                CALL 0x006eef60
00548844  0f57c0                    XORPS XMM0,XMM0
00548847  f20f2ac0                  CVTSI2SD XMM0,EAX
0054884b  c1e81f                    SHR EAX,0x1f
0054884e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548857  660f5ac0                  CVTPD2PS XMM0,XMM0
0054885b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00548863  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0054886b  f30f58c0                  ADDSS XMM0,XMM0
0054886f  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00548877  e8c44cedff                CALL 0x0041d540
0054887c  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00548884  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
0054888c  e88f4cedff                CALL 0x0041d520
00548891  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00548899  0f28d8                    MOVAPS XMM3,XMM0
0054889c  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
005488a4  f30f58db                  ADDSS XMM3,XMM3
005488a8  f30f58c0                  ADDSS XMM0,XMM0
005488ac  f30f589d48ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff48]
005488b4  f30f58854cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff4c]
005488bc  f30f591d54a1ba00          MULSS XMM3,dword ptr [0x00baa154]
005488c4  f30f590554a1ba00          MULSS XMM0,dword ptr [0x00baa154]
005488cc  f30f59da                  MULSS XMM3,XMM2
005488d0  f30f59c2                  MULSS XMM0,XMM2
005488d4  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
005488dc  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005488e4  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
005488ec  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005488f4  e952010000                JMP 0x00548a4b
005488f9  a13cf5b100                MOV EAX,[0x00b1f53c]
005488fe  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
00548904  f30f7e0534f5b100          MOVQ XMM0,qword ptr [0x00b1f534]
0054890c  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
00548912  8d4748                    LEA EAX,[EDI + 0x48]
00548915  660fd68524ffffff          MOVQ qword ptr [EBP + 0xffffff24],XMM0
0054891d  898540ffffff              MOV dword ptr [EBP + 0xffffff40],EAX
00548923  85f6                      TEST ESI,ESI
00548925  7510                      JNZ 0x00548937
00548927  6854bfb600                PUSH 0xb6bf54
0054892c  6a10                      PUSH 0x10
0054892e  e88d894c00                CALL 0x00a112c0
00548933  83c408                    ADD ESP,0x8
00548936  cc                        INT3
00548937  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
0054893d  8bd6                      MOV EDX,ESI
0054893f  d3ea                      SHR EDX,CL
00548941  8b8d28ffffff              MOV ECX,dword ptr [EBP + 0xffffff28]
00548947  33d6                      XOR EDX,ESI
00548949  8bc2                      MOV EAX,EDX
0054894b  d3e0                      SHL EAX,CL
0054894d  8b8d4cffffff              MOV ECX,dword ptr [EBP + 0xffffff4c]
00548953  33c2                      XOR EAX,EDX
00548955  8bf0                      MOV ESI,EAX
00548957  d3ee                      SHR ESI,CL
00548959  33f0                      XOR ESI,EAX
0054895b  b8abaaaaaa                MOV EAX,0xaaaaaaab
00548960  f7e6                      MUL ESI
00548962  8bc6                      MOV EAX,ESI
00548964  c1ea02                    SHR EDX,0x2
00548967  8d0c52                    LEA ECX,[EDX + EDX*0x2]
0054896a  03c9                      ADD ECX,ECX
0054896c  2bc1                      SUB EAX,ECX
0054896e  8b0c85c014b600            MOV ECX,dword ptr [EAX*0x4 + 0xb614c0]
00548975  898d48ffffff              MOV dword ptr [EBP + 0xffffff48],ECX
0054897b  8b8d40ffffff              MOV ECX,dword ptr [EBP + 0xffffff40]
00548981  8b4934                    MOV ECX,dword ptr [ECX + 0x34]
00548984  85c9                      TEST ECX,ECX
00548986  744d                      JZ 0x005489d5
00548988  83791410                  CMP dword ptr [ECX + 0x14],0x10
0054898c  8bc1                      MOV EAX,ECX
0054898e  7202                      JC 0x00548992
00548990  8b01                      MOV EAX,dword ptr [ECX]
00548992  8b8d48ffffff              MOV ECX,dword ptr [EBP + 0xffffff48]
00548998  8a10                      MOV DL,byte ptr [EAX]
0054899a  3a11                      CMP DL,byte ptr [ECX]
0054899c  751a                      JNZ 0x005489b8
0054899e  84d2                      TEST DL,DL
005489a0  7412                      JZ 0x005489b4
005489a2  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005489a5  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005489a8  750e                      JNZ 0x005489b8
005489aa  83c002                    ADD EAX,0x2
005489ad  83c102                    ADD ECX,0x2
005489b0  84d2                      TEST DL,DL
005489b2  75e4                      JNZ 0x00548998
005489b4  33c0                      XOR EAX,EAX
005489b6  eb05                      JMP 0x005489bd
005489b8  1bc0                      SBB EAX,EAX
005489ba  83c801                    OR EAX,0x1
005489bd  8d4f48                    LEA ECX,[EDI + 0x48]
005489c0  85c0                      TEST EAX,EAX
005489c2  7514                      JNZ 0x005489d8
005489c4  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
005489c7  80783400                  CMP byte ptr [EAX + 0x34],0x0
005489cb  742b                      JZ 0x005489f8
005489cd  80794400                  CMP byte ptr [ECX + 0x44],0x0
005489d1  7525                      JNZ 0x005489f8
005489d3  eb03                      JMP 0x005489d8
005489d5  8d4f48                    LEA ECX,[EDI + 0x48]
005489d8  6a01                      PUSH 0x1
005489da  ffb548ffffff              PUSH dword ptr [EBP + 0xffffff48]
005489e0  e8eb1becff                CALL 0x0040a5d0
005489e5  84c0                      TEST AL,AL
005489e7  740f                      JZ 0x005489f8
005489e9  8d4f78                    LEA ECX,[EDI + 0x78]
005489ec  e8bf17ecff                CALL 0x0040a1b0
005489f1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005489f8  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00548a02  85f6                      TEST ESI,ESI
00548a04  7510                      JNZ 0x00548a16
00548a06  6854bfb600                PUSH 0xb6bf54
00548a0b  6a10                      PUSH 0x10
00548a0d  e8ae884c00                CALL 0x00a112c0
00548a12  83c408                    ADD ESP,0x8
00548a15  cc                        INT3
00548a16  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
00548a1c  8bc6                      MOV EAX,ESI
00548a1e  d3e8                      SHR EAX,CL
00548a20  8b8d28ffffff              MOV ECX,dword ptr [EBP + 0xffffff28]
00548a26  33c6                      XOR EAX,ESI
00548a28  8bd0                      MOV EDX,EAX
00548a2a  d3e2                      SHL EDX,CL
00548a2c  8b8d4cffffff              MOV ECX,dword ptr [EBP + 0xffffff4c]
00548a32  33d0                      XOR EDX,EAX
00548a34  8bc2                      MOV EAX,EDX
00548a36  d3e8                      SHR EAX,CL
00548a38  32c2                      XOR AL,DL
00548a3a  f6d0                      NOT AL
00548a3c  2401                      AND AL,0x1
00548a3e  888748010000              MOV byte ptr [EDI + 0x148],AL
00548a44  c6877401000001            MOV byte ptr [EDI + 0x174],0x1
00548a4b  6a00                      PUSH 0x0
00548a4d  6a0a                      PUSH 0xa
00548a4f  8bcf                      MOV ECX,EDI
00548a51  e8ba3c1600                CALL 0x006ac710
00548a56  84c0                      TEST AL,AL
00548a58  7442                      JZ 0x00548a9c
00548a5a  e801651a00                CALL 0x006eef60
00548a5f  51                        PUSH ECX
00548a60  8bcf                      MOV ECX,EDI
00548a62  660f6ec0                  MOVD XMM0,EAX
00548a66  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548a6a  c1e81f                    SHR EAX,0x1f
00548a6d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548a76  660f5ac8                  CVTPD2PS XMM1,XMM0
00548a7a  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00548a82  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00548a8a  f30f580d80a2ba00          ADDSS XMM1,dword ptr [0x00baa280]
00548a92  f30f110c24                MOVSS dword ptr [ESP],XMM1
00548a97  e834da1600                CALL 0x006b64d0
00548a9c  6a00                      PUSH 0x0
00548a9e  6a06                      PUSH 0x6
00548aa0  8bcf                      MOV ECX,EDI
00548aa2  e8693c1600                CALL 0x006ac710
00548aa7  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
00548aaf  0f298520ffffff            MOVAPS xmmword ptr [EBP + 0xffffff20],XMM0
00548ab6  84c0                      TEST AL,AL
00548ab8  0f8419020000              JZ 0x00548cd7
00548abe  e89d641a00                CALL 0x006eef60
00548ac3  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00548acb  8bf0                      MOV ESI,EAX
00548acd  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00548ad5  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00548add  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00548ae5  e876641a00                CALL 0x006eef60
00548aea  660f6ec0                  MOVD XMM0,EAX
00548aee  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548af2  c1e81f                    SHR EAX,0x1f
00548af5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548afe  660f5ac0                  CVTPD2PS XMM0,XMM0
00548b02  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00548b0a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00548b12  f30f58c0                  ADDSS XMM0,XMM0
00548b16  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00548b1e  e83d641a00                CALL 0x006eef60
00548b23  660f6ec0                  MOVD XMM0,EAX
00548b27  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548b2b  c1e81f                    SHR EAX,0x1f
00548b2e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548b37  660f5ac0                  CVTPD2PS XMM0,XMM0
00548b3b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00548b43  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00548b4b  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
00548b53  e8e849edff                CALL 0x0041d540
00548b58  f30f59854cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff4c]
00548b60  f30f108d40ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff40]
00548b68  f30f598d20ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff20]
00548b70  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00548b78  f30f58c1                  ADDSS XMM0,XMM1
00548b7c  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00548b84  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
00548b8c  e88f49edff                CALL 0x0041d520
00548b91  f30f59854cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff4c]
00548b99  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00548b9f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00548ba5  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
00548bad  f30f598d20ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff20]
00548bb5  56                        PUSH ESI
00548bb6  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00548bbe  6a00                      PUSH 0x0
00548bc0  6a00                      PUSH 0x0
00548bc2  50                        PUSH EAX
00548bc3  8d873c030000              LEA EAX,[EDI + 0x33c]
00548bc9  f30f58c1                  ADDSS XMM0,XMM1
00548bcd  50                        PUSH EAX
00548bce  6a6f                      PUSH 0x6f
00548bd0  68e8030000                PUSH 0x3e8
00548bd5  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00548bdd  e83effedff                CALL 0x00428b20
00548be2  8bf0                      MOV ESI,EAX
00548be4  e877631a00                CALL 0x006eef60
00548be9  660f6ec0                  MOVD XMM0,EAX
00548bed  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548bf1  c1e81f                    SHR EAX,0x1f
00548bf4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548bfd  660f5ac0                  CVTPD2PS XMM0,XMM0
00548c01  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00548c09  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00548c11  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00548c19  f30f11864c010000          MOVSS dword ptr [ESI + 0x14c],XMM0
00548c21  f30f108f380c0000          MOVSS XMM1,dword ptr [EDI + 0xc38]
00548c29  0f28c1                    MOVAPS XMM0,XMM1
00548c2c  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00548c34  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00548c3c  f30f118d44ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM1
00548c44  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00548c4c  e80f631a00                CALL 0x006eef60
00548c51  f30f108d40ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff40]
00548c59  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00548c61  660f6ec0                  MOVD XMM0,EAX
00548c65  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548c69  c1e81f                    SHR EAX,0x1f
00548c6c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548c75  660f5ac0                  CVTPD2PS XMM0,XMM0
00548c79  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00548c81  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00548c89  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
00548c91  f30f59c8                  MULSS XMM1,XMM0
00548c95  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
00548c9d  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
00548ca5  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00548cad  f30f59c8                  MULSS XMM1,XMM0
00548cb1  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00548cb9  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00548cc3  c786500300000000b0c1      MOV dword ptr [ESI + 0x350],0xc1b00000
00548ccd  c7865403000070feffff      MOV dword ptr [ESI + 0x354],0xfffffe70
00548cd7  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00548cdd  83f8ff                    CMP EAX,-0x1
00548ce0  0f8488000000              JZ 0x00548d6e
00548ce6  51                        PUSH ECX
00548ce7  57                        PUSH EDI
00548ce8  50                        PUSH EAX
00548ce9  6a09                      PUSH 0x9
00548ceb  e820d44000                CALL 0x00956110
00548cf0  84c0                      TEST AL,AL
00548cf2  747a                      JZ 0x00548d6e
00548cf4  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00548cfc  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
00548d02  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00548d0a  8b07                      MOV EAX,dword ptr [EDI]
00548d0c  51                        PUSH ECX
00548d0d  8bcf                      MOV ECX,EDI
00548d0f  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
00548d19  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
00548d23  c78500ffffff00000000      MOV dword ptr [EBP + 0xffffff00],0x0
00548d2d  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
00548d37  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00548d3f  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00548d47  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
00548d4f  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00548d57  c78518ffffff00000000      MOV dword ptr [EBP + 0xffffff18],0x0
00548d61  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
00548d6b  ff5024                    CALL dword ptr [EAX + 0x24]
00548d6e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00548d75  0f8497010000              JZ 0x00548f12
00548d7b  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00548d81  2500000001                AND EAX,0x1000000
00548d86  83c800                    OR EAX,0x0
00548d89  0f8583010000              JNZ 0x00548f12
00548d8f  8bcf                      MOV ECX,EDI
00548d91  e8aa5a1700                CALL 0x006be840
00548d96  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00548d9e  8bf0                      MOV ESI,EAX
00548da0  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
00548da8  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00548db0  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
00548db8  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
00548dc0  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00548dc8  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00548dd0  f30f59c0                  MULSS XMM0,XMM0
00548dd4  f30f11954cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM2
00548ddc  f30f59c9                  MULSS XMM1,XMM1
00548de0  f30f58c1                  ADDSS XMM0,XMM1
00548de4  e867cceeff                CALL 0x00435a50
00548de9  f30f109548ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff48]
00548df1  f30f109d4cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff4c]
00548df9  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00548e01  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
00548e09  f30f59d0                  MULSS XMM2,XMM0
00548e0d  f30f59d8                  MULSS XMM3,XMM0
00548e11  f30f58963c030000          ADDSS XMM2,dword ptr [ESI + 0x33c]
00548e19  f30f589e40030000          ADDSS XMM3,dword ptr [ESI + 0x340]
00548e21  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00548e29  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
00548e31  0f28ca                    MOVAPS XMM1,XMM2
00548e34  f30f119548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM2
00548e3c  f30f59ca                  MULSS XMM1,XMM2
00548e40  0f28c3                    MOVAPS XMM0,XMM3
00548e43  f30f119d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM3
00548e4b  f30f59c3                  MULSS XMM0,XMM3
00548e4f  f30f58c1                  ADDSS XMM0,XMM1
00548e53  e8f8cbeeff                CALL 0x00435a50
00548e58  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
00548e60  0f28c8                    MOVAPS XMM1,XMM0
00548e63  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00548e6a  761e                      JBE 0x00548e8a
00548e6c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00548e74  f30f5ec1                  DIVSS XMM0,XMM1
00548e78  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
00548e80  f30f59c8                  MULSS XMM1,XMM0
00548e84  f30f59d0                  MULSS XMM2,XMM0
00548e88  eb08                      JMP 0x00548e92
00548e8a  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
00548e92  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00548e9a  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00548ea0  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00548ea8  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00548eb0  f30f119540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM2
00548eb8  e87360efff                CALL 0x0043ef30
00548ebd  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00548ec4  0f57c9                    XORPS XMM1,XMM1
00548ec7  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
00548ed1  8bcf                      MOV ECX,EDI
00548ed3  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
00548ed9  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
00548edc  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
00548ee2  50                        PUSH EAX
00548ee3  6a00                      PUSH 0x0
00548ee5  0f11857cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM0
00548eec  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00548ef2  0f288520ffffff            MOVAPS XMM0,xmmword ptr [EBP + 0xffffff20]
00548ef9  50                        PUSH EAX
00548efa  8d873c030000              LEA EAX,[EDI + 0x33c]
00548f00  0f14c1                    UNPCKLPS XMM0,XMM1
00548f03  50                        PUSH EAX
00548f04  0f114d8c                  MOVUPS xmmword ptr [EBP + -0x74],XMM1
00548f08  660fd6459c                MOVQ qword ptr [EBP + -0x64],XMM0
00548f0d  e8ce231800                CALL 0x006cb2e0
00548f12  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00548f15  5f                        POP EDI
00548f16  33cd                      XOR ECX,EBP
00548f18  5e                        POP ESI
00548f19  e80d625a00                CALL 0x00aef12b
00548f1e  8be5                      MOV ESP,EBP
00548f20  5d                        POP EBP
00548f21  8be3                      MOV ESP,EBX
00548f23  5b                        POP EBX
00548f24  c3                        RET
