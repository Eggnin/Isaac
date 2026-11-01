; J460 NPC AI 0x0099dca0 HELPER_HomingLaser_BeamTangents
; types=7
; identities=7.*
; entry=0099dca0
0099dca0  55                        PUSH EBP
0099dca1  8bec                      MOV EBP,ESP
0099dca3  83e4f8                    AND ESP,0xfffffff8
0099dca6  83ec30                    SUB ESP,0x30
0099dca9  56                        PUSH ESI
0099dcaa  57                        PUSH EDI
0099dcab  8bf9                      MOV EDI,ECX
0099dcad  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099dcb2  897c2424                  MOV dword ptr [ESP + 0x24],EDI
0099dcb6  8b574c                    MOV EDX,dword ptr [EDI + 0x4c]
0099dcb9  8b7748                    MOV ESI,dword ptr [EDI + 0x48]
0099dcbc  2bd6                      SUB EDX,ESI
0099dcbe  f7ea                      IMUL EDX
0099dcc0  c1fa02                    SAR EDX,0x2
0099dcc3  8bc2                      MOV EAX,EDX
0099dcc5  c1e81f                    SHR EAX,0x1f
0099dcc8  03c2                      ADD EAX,EDX
0099dcca  83f802                    CMP EAX,0x2
0099dccd  0f827a040000              JC 0x0099e14d
0099dcd3  f30f105610                MOVSS XMM2,dword ptr [ESI + 0x10]
0099dcd8  f30f107604                MOVSS XMM6,dword ptr [ESI + 0x4]
0099dcdd  f30f105e14                MOVSS XMM3,dword ptr [ESI + 0x14]
0099dce2  f30f102e                  MOVSS XMM5,dword ptr [ESI]
0099dce6  f30f5cde                  SUBSS XMM3,XMM6
0099dcea  f30f102550adba00          MOVSS XMM4,dword ptr [0x00baad50]
0099dcf2  f30f5cd5                  SUBSS XMM2,XMM5
0099dcf6  f30f11742420              MOVSS dword ptr [ESP + 0x20],XMM6
0099dcfc  0f28c3                    MOVAPS XMM0,XMM3
0099dcff  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0099dd06  0f28ca                    MOVAPS XMM1,XMM2
0099dd09  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0099dd10  0f2fc8                    COMISS XMM1,XMM0
0099dd13  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099dd1b  0f57c0                    XORPS XMM0,XMM0
0099dd1e  0f86cc000000              JBE 0x0099ddf0
0099dd24  0f2fc2                    COMISS XMM0,XMM2
0099dd27  0f86bb000000              JBE 0x0099dde8
0099dd2d  0f28d4                    MOVAPS XMM2,XMM4
0099dd30  0f57c9                    XORPS XMM1,XMM1
0099dd33  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
0099dd39  f30f104e18                MOVSS XMM1,dword ptr [ESI + 0x18]
0099dd3e  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
0099dd43  f30f5ccd                  SUBSS XMM1,XMM5
0099dd47  f30f5cc6                  SUBSS XMM0,XMM6
0099dd4b  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
0099dd51  f30f59c9                  MULSS XMM1,XMM1
0099dd55  f30f59c0                  MULSS XMM0,XMM0
0099dd59  f30f58c1                  ADDSS XMM0,XMM1
0099dd5d  e8ee7ca9ff                CALL 0x00435a50
0099dd62  f30f103dd0a2ba00          MOVSS XMM7,dword ptr [0x00baa2d0]
0099dd6a  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099dd6f  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0099dd75  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
0099dd7b  f30f59c7                  MULSS XMM0,XMM7
0099dd7f  f30f59d0                  MULSS XMM2,XMM0
0099dd83  f30f59d8                  MULSS XMM3,XMM0
0099dd87  0f28c2                    MOVAPS XMM0,XMM2
0099dd8a  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0099dd8e  f30f114610                MOVSS dword ptr [ESI + 0x10],XMM0
0099dd93  0f28c3                    MOVAPS XMM0,XMM3
0099dd96  f30f58442420              ADDSS XMM0,dword ptr [ESP + 0x20]
0099dd9c  c744242001000000          MOV dword ptr [ESP + 0x20],0x1
0099dda4  f30f114614                MOVSS dword ptr [ESI + 0x14],XMM0
0099dda9  f30f104e1c                MOVSS XMM1,dword ptr [ESI + 0x1c]
0099ddae  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
0099ddb3  f30f5ccb                  SUBSS XMM1,XMM3
0099ddb7  f30f5cc2                  SUBSS XMM0,XMM2
0099ddbb  f30f114e24                MOVSS dword ptr [ESI + 0x24],XMM1
0099ddc0  f30f114620                MOVSS dword ptr [ESI + 0x20],XMM0
0099ddc5  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099ddc8  2bce                      SUB ECX,ESI
0099ddca  f7e9                      IMUL ECX
0099ddcc  c1fa02                    SAR EDX,0x2
0099ddcf  8bc2                      MOV EAX,EDX
0099ddd1  c1e81f                    SHR EAX,0x1f
0099ddd4  48                        DEC EAX
0099ddd5  03c2                      ADD EAX,EDX
0099ddd7  83f801                    CMP EAX,0x1
0099ddda  0f86ed020000              JBE 0x0099e0cd
0099dde0  8b7748                    MOV ESI,dword ptr [EDI + 0x48]
0099dde3  83c604                    ADD ESI,0x4
0099dde6  eb2c                      JMP 0x0099de14
0099dde8  0f28d1                    MOVAPS XMM2,XMM1
0099ddeb  e940ffffff                JMP 0x0099dd30
0099ddf0  0f2fc3                    COMISS XMM0,XMM3
0099ddf3  0f57d2                    XORPS XMM2,XMM2
0099ddf6  0f8637ffffff              JBE 0x0099dd33
0099ddfc  f30f1164240c              MOVSS dword ptr [ESP + 0xc],XMM4
0099de02  e932ffffff                JMP 0x0099dd39
0099de10  8b7c2424                  MOV EDI,dword ptr [ESP + 0x24]
0099de14  f30f105e14                MOVSS XMM3,dword ptr [ESI + 0x14]
0099de19  f30f1046fc                MOVSS XMM0,dword ptr [ESI + -0x4]
0099de1e  f30f106618                MOVSS XMM4,dword ptr [ESI + 0x18]
0099de23  f30f5cc3                  SUBSS XMM0,XMM3
0099de27  f30f104e30                MOVSS XMM1,dword ptr [ESI + 0x30]
0099de2c  f30f10562c                MOVSS XMM2,dword ptr [ESI + 0x2c]
0099de31  f30f5ccc                  SUBSS XMM1,XMM4
0099de35  f30f5cd3                  SUBSS XMM2,XMM3
0099de39  f30f115c2418              MOVSS dword ptr [ESP + 0x18],XMM3
0099de3f  f30f1164241c              MOVSS dword ptr [ESP + 0x1c],XMM4
0099de45  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0099de4b  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0099de4f  f30f5cc4                  SUBSS XMM0,XMM4
0099de53  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
0099de59  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
0099de5f  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0099de65  0f28c1                    MOVAPS XMM0,XMM1
0099de68  f30f59c1                  MULSS XMM0,XMM1
0099de6c  0f28ca                    MOVAPS XMM1,XMM2
0099de6f  f30f59ca                  MULSS XMM1,XMM2
0099de73  f30f58c1                  ADDSS XMM0,XMM1
0099de77  e8d47ba9ff                CALL 0x00435a50
0099de7c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0099de83  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0099de89  762b                      JBE 0x0099deb6
0099de8b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099de93  f30f5ec8                  DIVSS XMM1,XMM0
0099de97  0f28c1                    MOVAPS XMM0,XMM1
0099de9a  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
0099dea0  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0099dea6  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0099deac  f30f59c1                  MULSS XMM0,XMM1
0099deb0  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0099deb6  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
0099debc  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0099dec2  0f28d0                    MOVAPS XMM2,XMM0
0099dec5  f30f59d0                  MULSS XMM2,XMM0
0099dec9  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0099decf  0f28c1                    MOVAPS XMM0,XMM1
0099ded2  f30f59c1                  MULSS XMM0,XMM1
0099ded6  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
0099dedc  f30f58d0                  ADDSS XMM2,XMM0
0099dee0  0f28c2                    MOVAPS XMM0,XMM2
0099dee3  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
0099dee9  e8627ba9ff                CALL 0x00435a50
0099deee  f30f103d54a4ba00          MOVSS XMM7,dword ptr [0x00baa454]
0099def6  0f28c8                    MOVAPS XMM1,XMM0
0099def9  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
0099deff  0f57ed                    XORPS XMM5,XMM5
0099df02  0f2fcd                    COMISS XMM1,XMM5
0099df05  f30f10742408              MOVSS XMM6,dword ptr [ESP + 0x8]
0099df0b  7614                      JBE 0x0099df21
0099df0d  0f28c7                    MOVAPS XMM0,XMM7
0099df10  f30f5ec1                  DIVSS XMM0,XMM1
0099df14  0f28c8                    MOVAPS XMM1,XMM0
0099df17  f30f59c6                  MULSS XMM0,XMM6
0099df1b  f30f59ca                  MULSS XMM1,XMM2
0099df1f  eb0c                      JMP 0x0099df2d
0099df21  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
0099df27  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0099df2d  f30f105c2410              MOVSS XMM3,dword ptr [ESP + 0x10]
0099df33  f30f10642414              MOVSS XMM4,dword ptr [ESP + 0x14]
0099df39  f30f58d9                  ADDSS XMM3,XMM1
0099df3d  f30f58e0                  ADDSS XMM4,XMM0
0099df41  0f28cb                    MOVAPS XMM1,XMM3
0099df44  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0099df4b  0f28c4                    MOVAPS XMM0,XMM4
0099df4e  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0099df55  0f2fc8                    COMISS XMM1,XMM0
0099df58  761d                      JBE 0x0099df77
0099df5a  0f2feb                    COMISS XMM5,XMM3
0099df5d  0f57e4                    XORPS XMM4,XMM4
0099df60  f30f11642408              MOVSS dword ptr [ESP + 0x8],XMM4
0099df66  760a                      JBE 0x0099df72
0099df68  f30f101d50adba00          MOVSS XMM3,dword ptr [0x00baad50]
0099df70  eb26                      JMP 0x0099df98
0099df72  0f28df                    MOVAPS XMM3,XMM7
0099df75  eb21                      JMP 0x0099df98
0099df77  0f2fec                    COMISS XMM5,XMM4
0099df7a  0f57db                    XORPS XMM3,XMM3
0099df7d  7610                      JBE 0x0099df8f
0099df7f  f30f102550adba00          MOVSS XMM4,dword ptr [0x00baad50]
0099df87  f30f11642408              MOVSS dword ptr [ESP + 0x8],XMM4
0099df8d  eb09                      JMP 0x0099df98
0099df8f  0f28e7                    MOVAPS XMM4,XMM7
0099df92  f30f117c2408              MOVSS dword ptr [ESP + 0x8],XMM7
0099df98  f30f103d70cbba00          MOVSS XMM7,dword ptr [0x00bacb70]
0099dfa0  0f57df                    XORPS XMM3,XMM7
0099dfa3  f30f59d4                  MULSS XMM2,XMM4
0099dfa7  0f28c3                    MOVAPS XMM0,XMM3
0099dfaa  f30f115c2414              MOVSS dword ptr [ESP + 0x14],XMM3
0099dfb0  f30f59c6                  MULSS XMM0,XMM6
0099dfb4  f30f58d0                  ADDSS XMM2,XMM0
0099dfb8  0f2fea                    COMISS XMM5,XMM2
0099dfbb  7612                      JBE 0x0099dfcf
0099dfbd  0f57e7                    XORPS XMM4,XMM7
0099dfc0  0f57df                    XORPS XMM3,XMM7
0099dfc3  f30f11642408              MOVSS dword ptr [ESP + 0x8],XMM4
0099dfc9  f30f115c2414              MOVSS dword ptr [ESP + 0x14],XMM3
0099dfcf  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
0099dfd5  f30f10560c                MOVSS XMM2,dword ptr [ESI + 0xc]
0099dfda  f30f5c46fc                SUBSS XMM0,dword ptr [ESI + -0x4]
0099dfdf  f30f5c56fc                SUBSS XMM2,dword ptr [ESI + -0x4]
0099dfe4  f30f104e10                MOVSS XMM1,dword ptr [ESI + 0x10]
0099dfe9  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0099dfed  f30f59d0                  MULSS XMM2,XMM0
0099dff1  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0099dff7  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0099dffb  f30f59c8                  MULSS XMM1,XMM0
0099dfff  f30f58d1                  ADDSS XMM2,XMM1
0099e003  0f2fea                    COMISS XMM5,XMM2
0099e006  761a                      JBE 0x0099e022
0099e008  0f28c4                    MOVAPS XMM0,XMM4
0099e00b  f30f58e0                  ADDSS XMM4,XMM0
0099e00f  0f28c3                    MOVAPS XMM0,XMM3
0099e012  f30f58d8                  ADDSS XMM3,XMM0
0099e016  f30f11642408              MOVSS dword ptr [ESP + 0x8],XMM4
0099e01c  f30f115c2414              MOVSS dword ptr [ESP + 0x14],XMM3
0099e022  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
0099e028  0f57c7                    XORPS XMM0,XMM7
0099e02b  0f28c8                    MOVAPS XMM1,XMM0
0099e02e  f30f59c3                  MULSS XMM0,XMM3
0099e032  f30f59cc                  MULSS XMM1,XMM4
0099e036  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0099e03e  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0099e046  f30f5844241c              ADDSS XMM0,dword ptr [ESP + 0x1c]
0099e04c  f30f584c2418              ADDSS XMM1,dword ptr [ESP + 0x18]
0099e052  f30f114628                MOVSS dword ptr [ESI + 0x28],XMM0
0099e057  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0099e05d  f30f114e24                MOVSS dword ptr [ESI + 0x24],XMM1
0099e062  e8e979a9ff                CALL 0x00435a50
0099e067  f30f103dd0a2ba00          MOVSS XMM7,dword ptr [0x00baa2d0]
0099e06f  0f28c8                    MOVAPS XMM1,XMM0
0099e072  f30f594c2408              MULSS XMM1,dword ptr [ESP + 0x8]
0099e078  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e07d  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
0099e081  f30f59442414              MULSS XMM0,dword ptr [ESP + 0x14]
0099e087  ff442420                  INC dword ptr [ESP + 0x20]
0099e08b  f30f59cf                  MULSS XMM1,XMM7
0099e08f  f30f59c7                  MULSS XMM0,XMM7
0099e093  f30f584c2418              ADDSS XMM1,dword ptr [ESP + 0x18]
0099e099  f30f5844241c              ADDSS XMM0,dword ptr [ESP + 0x1c]
0099e09f  f30f114e1c                MOVSS dword ptr [ESI + 0x1c],XMM1
0099e0a4  f30f114620                MOVSS dword ptr [ESI + 0x20],XMM0
0099e0a9  83c618                    ADD ESI,0x18
0099e0ac  8b494c                    MOV ECX,dword ptr [ECX + 0x4c]
0099e0af  8b7f48                    MOV EDI,dword ptr [EDI + 0x48]
0099e0b2  2bcf                      SUB ECX,EDI
0099e0b4  f7e9                      IMUL ECX
0099e0b6  c1fa02                    SAR EDX,0x2
0099e0b9  8bc2                      MOV EAX,EDX
0099e0bb  c1e81f                    SHR EAX,0x1f
0099e0be  48                        DEC EAX
0099e0bf  03c2                      ADD EAX,EDX
0099e0c1  39442420                  CMP dword ptr [ESP + 0x20],EAX
0099e0c5  0f8245fdffff              JC 0x0099de10
0099e0cb  eb03                      JMP 0x0099e0d0
0099e0cd  8b7f48                    MOV EDI,dword ptr [EDI + 0x48]
0099e0d0  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
0099e0d4  8b484c                    MOV ECX,dword ptr [EAX + 0x4c]
0099e0d7  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e0dc  2bcf                      SUB ECX,EDI
0099e0de  f7e9                      IMUL ECX
0099e0e0  c1fa02                    SAR EDX,0x2
0099e0e3  8bc2                      MOV EAX,EDX
0099e0e5  c1e81f                    SHR EAX,0x1f
0099e0e8  03c2                      ADD EAX,EDX
0099e0ea  8d0c40                    LEA ECX,[EAX + EAX*0x2]
0099e0ed  f30f1054cfd0              MOVSS XMM2,dword ptr [EDI + ECX*0x8 + -0x30]
0099e0f3  8d0440                    LEA EAX,[EAX + EAX*0x2]
0099e0f6  f30f105ccfd4              MOVSS XMM3,dword ptr [EDI + ECX*0x8 + -0x2c]
0099e0fc  f30f106cc7e8              MOVSS XMM5,dword ptr [EDI + EAX*0x8 + -0x18]
0099e102  f30f1074c7ec              MOVSS XMM6,dword ptr [EDI + EAX*0x8 + -0x14]
0099e108  f30f5cd5                  SUBSS XMM2,XMM5
0099e10c  f30f5cde                  SUBSS XMM3,XMM6
0099e110  0f28ca                    MOVAPS XMM1,XMM2
0099e113  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0099e11a  0f28c3                    MOVAPS XMM0,XMM3
0099e11d  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0099e124  0f2fc8                    COMISS XMM1,XMM0
0099e127  7605                      JBE 0x0099e12e
0099e129  0f57db                    XORPS XMM3,XMM3
0099e12c  eb03                      JMP 0x0099e131
0099e12e  0f57d2                    XORPS XMM2,XMM2
0099e131  f30f59d7                  MULSS XMM2,XMM7
0099e135  f30f59df                  MULSS XMM3,XMM7
0099e139  f30f58d5                  ADDSS XMM2,XMM5
0099e13d  f30f58de                  ADDSS XMM3,XMM6
0099e141  f30f1154c7f0              MOVSS dword ptr [EDI + EAX*0x8 + -0x10],XMM2
0099e147  f30f115cc7f4              MOVSS dword ptr [EDI + EAX*0x8 + -0xc],XMM3
0099e14d  5f                        POP EDI
0099e14e  5e                        POP ESI
0099e14f  8be5                      MOV ESP,EBP
0099e151  5d                        POP EBP
0099e152  c3                        RET
