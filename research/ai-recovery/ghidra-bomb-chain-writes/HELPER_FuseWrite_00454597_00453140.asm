; J460 NPC AI 0x00454597 HELPER_FuseWrite_00454597
; types=4
; identities=4.*
; entry=00453140
00453140  53                        PUSH EBX
00453141  8bdc                      MOV EBX,ESP
00453143  83ec08                    SUB ESP,0x8
00453146  83e4f8                    AND ESP,0xfffffff8
00453149  83c404                    ADD ESP,0x4
0045314c  55                        PUSH EBP
0045314d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00453150  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00453154  8bec                      MOV EBP,ESP
00453156  6aff                      PUSH -0x1
00453158  689d24af00                PUSH 0xaf249d
0045315d  64a100000000              MOV EAX,FS:[0x0]
00453163  50                        PUSH EAX
00453164  53                        PUSH EBX
00453165  81ecb8000000              SUB ESP,0xb8
0045316b  a1b493bf00                MOV EAX,[0x00bf93b4]
00453170  33c5                      XOR EAX,EBP
00453172  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00453175  56                        PUSH ESI
00453176  57                        PUSH EDI
00453177  50                        PUSH EAX
00453178  8d45f4                    LEA EAX,[EBP + -0xc]
0045317b  64a300000000              MOV FS:[0x0],EAX
00453181  8bf9                      MOV EDI,ECX
00453183  89bd44ffffff              MOV dword ptr [EBP + 0xffffff44],EDI
00453189  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0045318c  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
00453194  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045319a  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
004531a0  81c1a8ba0100              ADD ECX,0x1baa8
004531a6  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004531ae  2bf0                      SUB ESI,EAX
004531b0  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
004531b6  e8d5b75600                CALL 0x009be990
004531bb  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004531c2  88856fffffff              MOV byte ptr [EBP + 0xffffff6f],AL
004531c8  751e                      JNZ 0x004531e8
004531ca  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
004531d0  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
004531da  50                        PUSH EAX
004531db  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
004531e1  6a01                      PUSH 0x1
004531e3  e8d88affff                CALL 0x0044bcc0
004531e8  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
004531ee  8bc2                      MOV EAX,EDX
004531f0  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004531f6  83e203                    AND EDX,0x3
004531f9  c1e802                    SHR EAX,0x2
004531fc  49                        DEC ECX
004531fd  23c8                      AND ECX,EAX
004531ff  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
00453205  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00453208  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
0045320c  8d0c90                    LEA ECX,[EAX + EDX*0x4]
0045320f  898d58ffffff              MOV dword ptr [EBP + 0xffffff58],ECX
00453215  0f85e6000000              JNZ 0x00453301
0045321b  8d4f48                    LEA ECX,[EDI + 0x48]
0045321e  687cd5b100                PUSH 0xb1d57c
00453223  e80882fbff                CALL 0x0040b430
00453228  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0045322e  85c0                      TEST EAX,EAX
00453230  0f84cb000000              JZ 0x00453301
00453236  e825bd2900                CALL 0x006eef60
0045323b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00453241  50                        PUSH EAX
00453242  6a00                      PUSH 0x0
00453244  57                        PUSH EDI
00453245  6840b6c700                PUSH 0xc7b640
0045324a  8d873c030000              LEA EAX,[EDI + 0x33c]
00453250  50                        PUSH EAX
00453251  6a7a                      PUSH 0x7a
00453253  68e8030000                PUSH 0x3e8
00453258  e8c358fdff                CALL 0x00428b20
0045325d  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
00453263  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
00453269  05bc030000                ADD EAX,0x3bc
0045326e  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00453274  85c9                      TEST ECX,ECX
00453276  741e                      JZ 0x00453296
00453278  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
0045327e  81c1cc030000              ADD ECX,0x3cc
00453284  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
0045328a  50                        PUSH EAX
0045328b  e880bf0700                CALL 0x004cf210
00453290  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
00453296  50                        PUSH EAX
00453297  8bcf                      MOV ECX,EDI
00453299  8938                      MOV dword ptr [EAX],EDI
0045329b  e850aa0700                CALL 0x004cdcf0
004532a0  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
004532a6  8b00                      MOV EAX,dword ptr [EAX]
004532a8  85c0                      TEST EAX,EAX
004532aa  7404                      JZ 0x004532b0
004532ac  8b00                      MOV EAX,dword ptr [EAX]
004532ae  eb03                      JMP 0x004532b3
004532b0  83c8ff                    OR EAX,0xffffffff
004532b3  8b8d68ffffff              MOV ECX,dword ptr [EBP + 0xffffff68]
004532b9  898150040000              MOV dword ptr [ECX + 0x450],EAX
004532bf  8b8558ffffff              MOV EAX,dword ptr [EBP + 0xffffff58]
004532c5  8b10                      MOV EDX,dword ptr [EAX]
004532c7  85d2                      TEST EDX,EDX
004532c9  7424                      JZ 0x004532ef
004532cb  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
004532d1  8d8acc030000              LEA ECX,[EDX + 0x3cc]
004532d7  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
004532dd  50                        PUSH EAX
004532de  e82dbf0700                CALL 0x004cf210
004532e3  8b8558ffffff              MOV EAX,dword ptr [EBP + 0xffffff58]
004532e9  8b8d68ffffff              MOV ECX,dword ptr [EBP + 0xffffff68]
004532ef  50                        PUSH EAX
004532f0  8908                      MOV dword ptr [EAX],ECX
004532f2  e8f9a90700                CALL 0x004cdcf0
004532f7  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
004532fd  c6407400                  MOV byte ptr [EAX + 0x74],0x0
00453301  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
00453307  0f57d2                    XORPS XMM2,XMM2
0045330a  85c0                      TEST EAX,EAX
0045330c  0f859f160000              JNZ 0x004549b1
00453312  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00453318  85c0                      TEST EAX,EAX
0045331a  751d                      JNZ 0x00453339
0045331c  50                        PUSH EAX
0045331d  6898d5b100                PUSH 0xb1d598
00453322  8d4f48                    LEA ECX,[EDI + 0x48]
00453325  e85670fbff                CALL 0x0040a380
0045332a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00453334  e9c82d0000                JMP 0x00456101
00453339  83c0fd                    ADD EAX,-0x3
0045333c  83f80d                    CMP EAX,0xd
0045333f  0f87f6140000              JA 0x0045483b
00453345  0fb68034614500            MOVZX EAX,byte ptr [EAX + 0x456134]
0045334c  ff248520614500            JMP dword ptr [EAX*0x4 + 0x456120]
00453353  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
0045335d  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00453360  85c9                      TEST ECX,ECX
00453362  0f8481000000              JZ 0x004533e9
00453368  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045336f  7478                      JZ 0x004533e9
00453371  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00453377  85c0                      TEST EAX,EAX
00453379  0f8ebc140000              JLE 0x0045483b
0045337f  03c6                      ADD EAX,ESI
00453381  8bcf                      MOV ECX,EDI
00453383  6800000010                PUSH 0x10000000
00453388  6a00                      PUSH 0x0
0045338a  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
00453390  898710040000              MOV dword ptr [EDI + 0x410],EAX
00453396  e89540fcff                CALL 0x00417430
0045339b  84c0                      TEST AL,AL
0045339d  7418                      JZ 0x004533b7
0045339f  a17816c700                MOV EAX,[0x00c71678]
004533a4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004533aa  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004533ad  f6404401                  TEST byte ptr [EAX + 0x44],0x1
004533b1  0f8556010000              JNZ 0x0045350d
004533b7  83bd74ffffff0f            CMP dword ptr [EBP + 0xffffff74],0xf
004533be  0f8e49010000              JLE 0x0045350d
004533c4  6890d5b100                PUSH 0xb1d590
004533c9  8d4f48                    LEA ECX,[EDI + 0x48]
004533cc  e8ff70fbff                CALL 0x0040a4d0
004533d1  8d4f48                    LEA ECX,[EDI + 0x48]
004533d4  84c0                      TEST AL,AL
004533d6  7558                      JNZ 0x00453430
004533d8  6a00                      PUSH 0x0
004533da  6890d5b100                PUSH 0xb1d590
004533df  e89c6ffbff                CALL 0x0040a380
004533e4  e99f000000                JMP 0x00453488
004533e9  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004533ef  85c0                      TEST EAX,EAX
004533f1  7586                      JNZ 0x00453379
004533f3  85c9                      TEST ECX,ECX
004533f5  740c                      JZ 0x00453403
004533f7  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004533fd  0f8538140000              JNZ 0x0045483b
00453403  6a00                      PUSH 0x0
00453405  6854bcb100                PUSH 0xb1bc54
0045340a  8d4f48                    LEA ECX,[EDI + 0x48]
0045340d  e86e6ffbff                CALL 0x0040a380
00453412  8bce                      MOV ECX,ESI
00453414  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0045341e  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00453424  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0045342b  e90b140000                JMP 0x0045483b
00453430  68b0d5b100                PUSH 0xb1d5b0
00453435  e8f67bfbff                CALL 0x0040b030
0045343a  84c0                      TEST AL,AL
0045343c  744a                      JZ 0x00453488
0045343e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00453444  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
0045344a  c78578ffffff72030000      MOV dword ptr [EBP + 0xffffff78],0x372
00453454  e827335000                CALL 0x00956780
00453459  83ec08                    SUB ESP,0x8
0045345c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00453462  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045346a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453471  6a00                      PUSH 0x0
00453473  6a02                      PUSH 0x2
00453475  51                        PUSH ECX
00453476  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045347d  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00453483  e8a8a74d00                CALL 0x0092dc30
00453488  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045348c  740d                      JZ 0x0045349b
0045348e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00453495  0f85a0130000              JNZ 0x0045483b
0045349b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004534a1  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004534a7  c78578ffffff6a030000      MOV dword ptr [EBP + 0xffffff78],0x36a
004534b1  e8ca325000                CALL 0x00956780
004534b6  83ec08                    SUB ESP,0x8
004534b9  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004534bf  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004534c7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004534ce  6a00                      PUSH 0x0
004534d0  6a02                      PUSH 0x2
004534d2  51                        PUSH ECX
004534d3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004534da  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
004534e0  e84ba74d00                CALL 0x0092dc30
004534e5  6a00                      PUSH 0x0
004534e7  68a0d5b100                PUSH 0xb1d5a0
004534ec  8d4f48                    LEA ECX,[EDI + 0x48]
004534ef  e88c6efbff                CALL 0x0040a380
004534f4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004534fe  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00453508  e92e130000                JMP 0x0045483b
0045350d  6800000010                PUSH 0x10000000
00453512  6a00                      PUSH 0x0
00453514  8bcf                      MOV ECX,EDI
00453516  e8153ffcff                CALL 0x00417430
0045351b  84c0                      TEST AL,AL
0045351d  0f8418130000              JZ 0x0045483b
00453523  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00453527  740d                      JZ 0x00453536
00453529  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00453530  0f8505130000              JNZ 0x0045483b
00453536  6a01                      PUSH 0x1
00453538  6854bcb100                PUSH 0xb1bc54
0045353d  8d4f48                    LEA ECX,[EDI + 0x48]
00453540  e88b70fbff                CALL 0x0040a5d0
00453545  84c0                      TEST AL,AL
00453547  0f84ee120000              JZ 0x0045483b
0045354d  8d4f78                    LEA ECX,[EDI + 0x78]
00453550  e85b6cfbff                CALL 0x0040a1b0
00453555  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045355c  e9da120000                JMP 0x0045483b
00453561  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00453567  85c0                      TEST EAX,EAX
00453569  0f8557040000              JNZ 0x004539c6
0045356f  39477c                    CMP dword ptr [EDI + 0x7c],EAX
00453572  740c                      JZ 0x00453580
00453574  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045357a  0f85f3030000              JNZ 0x00453973
00453580  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0045358a  40                        INC EAX
0045358b  c787580300000000c8c2      MOV dword ptr [EDI + 0x358],0xc2c80000
00453595  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045359b  e8c0b92900                CALL 0x006eef60
004535a0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004535a6  8bf0                      MOV ESI,EAX
004535a8  83e601                    AND ESI,0x1
004535ab  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004535b1  e8ba6cfdff                CALL 0x0042a270
004535b6  33c9                      XOR ECX,ECX
004535b8  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
004535c2  83f808                    CMP EAX,0x8
004535c5  0f9dc1                    SETGE CL
004535c8  8d044d02000000            LEA EAX,[ECX*0x2 + 0x2]
004535cf  03c6                      ADD EAX,ESI
004535d1  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
004535d7  0f845e120000              JZ 0x0045483b
004535dd  0f1f00                    NOP dword ptr [EAX]
004535e0  a17816c700                MOV EAX,[0x00c71678]
004535e5  33f6                      XOR ESI,ESI
004535e7  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004535ed  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
004535f3  e868b92900                CALL 0x006eef60
004535f8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004535fe  81c100830100              ADD ECX,0x18300
00453604  51                        PUSH ECX
00453605  8b09                      MOV ECX,dword ptr [ECX]
00453607  8d45b8                    LEA EAX,[EBP + -0x48]
0045360a  c7042400000000            MOV dword ptr [ESP],0x0
00453611  46                        INC ESI
00453612  50                        PUSH EAX
00453613  89b568ffffff              MOV dword ptr [EBP + 0xffffff68],ESI
00453619  e8b2b33c00                CALL 0x0081e9d0
0045361e  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00453626  8d4db8                    LEA ECX,[EBP + -0x48]
00453629  f30f591d80a3ba00          MULSS XMM3,dword ptr [0x00baa380]
00453631  83ec0c                    SUB ESP,0xc
00453634  a17816c700                MOV EAX,[0x00c71678]
00453639  0500830100                ADD EAX,0x18300
0045363e  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
00453644  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0045364a  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00453650  f30f111c24                MOVSS dword ptr [ESP],XMM3
00453655  51                        PUSH ECX
00453656  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
0045365c  51                        PUSH ECX
0045365d  8b08                      MOV ECX,dword ptr [EAX]
0045365f  e8ecf83b00                CALL 0x00812f50
00453664  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0045366a  33f6                      XOR ESI,ESI
0045366c  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
00453672  0f86e8000000              JBE 0x00453760
00453678  8b905c120000              MOV EDX,dword ptr [EAX + 0x125c]
0045367e  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
00453686  f30f109d60ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff60]
0045368e  6690                      NOP
00453690  a17816c700                MOV EAX,[0x00c71678]
00453695  8b0a                      MOV ECX,dword ptr [EDX]
00453697  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0045369e  7c0d                      JL 0x004536ad
004536a0  83792801                  CMP dword ptr [ECX + 0x28],0x1
004536a4  7507                      JNZ 0x004536ad
004536a6  b801000000                MOV EAX,0x1
004536ab  eb4e                      JMP 0x004536fb
004536ad  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004536b0  83f80a                    CMP EAX,0xa
004536b3  0f8c91000000              JL 0x0045374a
004536b9  3de8030000                CMP EAX,0x3e8
004536be  0f8d86000000              JGE 0x0045374a
004536c4  83f821                    CMP EAX,0x21
004536c7  0f847d000000              JZ 0x0045374a
004536cd  83f811                    CMP EAX,0x11
004536d0  7478                      JZ 0x0045374a
004536d2  3d24010000                CMP EAX,0x124
004536d7  7471                      JZ 0x0045374a
004536d9  3d75030000                CMP EAX,0x375
004536de  7506                      JNZ 0x004536e6
004536e0  83792c0a                  CMP dword ptr [ECX + 0x2c],0xa
004536e4  eb13                      JMP 0x004536f9
004536e6  3dc0030000                CMP EAX,0x3c0
004536eb  745d                      JZ 0x0045374a
004536ed  3dc5030000                CMP EAX,0x3c5
004536f2  7456                      JZ 0x0045374a
004536f4  3df5000000                CMP EAX,0xf5
004536f9  744f                      JZ 0x0045374a
004536fb  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
00453702  7546                      JNZ 0x0045374a
00453704  3d9b010000                CMP EAX,0x19b
00453709  753f                      JNZ 0x0045374a
0045370b  83792c01                  CMP dword ptr [ECX + 0x2c],0x1
0045370f  7539                      JNZ 0x0045374a
00453711  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
00453719  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
00453721  f30f5cc3                  SUBSS XMM0,XMM3
00453725  f30f5cca                  SUBSS XMM1,XMM2
00453729  f30f59c0                  MULSS XMM0,XMM0
0045372d  f30f59c9                  MULSS XMM1,XMM1
00453731  f30f58c8                  ADDSS XMM1,XMM0
00453735  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0045373d  f30f58c0                  ADDSS XMM0,XMM0
00453741  f30f59c0                  MULSS XMM0,XMM0
00453745  0f2fc1                    COMISS XMM0,XMM1
00453748  7741                      JA 0x0045378b
0045374a  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00453750  46                        INC ESI
00453751  83c204                    ADD EDX,0x4
00453754  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
0045375a  0f8230ffffff              JC 0x00453690
00453760  33f6                      XOR ESI,ESI
00453762  83bd70ffffff02            CMP dword ptr [EBP + 0xffffff70],0x2
00453769  0f8325010000              JNC 0x00453894
0045376f  e8ecb72900                CALL 0x006eef60
00453774  33d2                      XOR EDX,EDX
00453776  b964000000                MOV ECX,0x64
0045377b  f7f1                      DIV ECX
0045377d  8bca                      MOV ECX,EDX
0045377f  83f932                    CMP ECX,0x32
00453782  7322                      JNC 0x004537a6
00453784  be01000000                MOV ESI,0x1
00453789  eb26                      JMP 0x004537b1
0045378b  8bb568ffffff              MOV ESI,dword ptr [EBP + 0xffffff68]
00453791  8b8d74ffffff              MOV ECX,dword ptr [EBP + 0xffffff74]
00453797  83fe32                    CMP ESI,0x32
0045379a  0f8c64feffff              JL 0x00453604
004537a0  46                        INC ESI
004537a1  e99b010000                JMP 0x00453941
004537a6  83f95a                    CMP ECX,0x5a
004537a9  1bf6                      SBB ESI,ESI
004537ab  83e6fe                    AND ESI,0xfffffffe
004537ae  83c605                    ADD ESI,0x5
004537b1  83bd70ffffff00            CMP dword ptr [EBP + 0xffffff70],0x0
004537b8  0f85d0000000              JNZ 0x0045388e
004537be  b8cdcccccc                MOV EAX,0xcccccccd
004537c3  f7e1                      MUL ECX
004537c5  c1ea03                    SHR EDX,0x3
004537c8  8d0492                    LEA EAX,[EDX + EDX*0x4]
004537cb  03c0                      ADD EAX,EAX
004537cd  2bc8                      SUB ECX,EAX
004537cf  0f85b9000000              JNZ 0x0045388e
004537d5  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
004537dd  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
004537e3  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
004537eb  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
004537f3  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
004537fb  51                        PUSH ECX
004537fc  890c24                    MOV dword ptr [ESP],ECX
004537ff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00453805  50                        PUSH EAX
00453806  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
0045380e  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00453816  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0045381c  e83ffb3b00                CALL 0x00813360
00453821  84c0                      TEST AL,AL
00453823  7469                      JZ 0x0045388e
00453825  a17816c700                MOV EAX,[0x00c71678]
0045382a  6a00                      PUSH 0x0
0045382c  6a00                      PUSH 0x0
0045382e  6aff                      PUSH -0x1
00453830  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00453836  8d45dc                    LEA EAX,[EBP + -0x24]
00453839  6a01                      PUSH 0x1
0045383b  6894010000                PUSH 0x194
00453840  81c118120000              ADD ECX,0x1218
00453846  50                        PUSH EAX
00453847  e81477fcff                CALL 0x0041af60
0045384c  837de802                  CMP dword ptr [EBP + -0x18],0x2
00453850  0f92c0                    SETC AL
00453853  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
00453857  88856fffffff              MOV byte ptr [EBP + 0xffffff6f],AL
0045385d  7525                      JNZ 0x00453884
0045385f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00453866  b101                      MOV CL,0x1
00453868  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0045386b  6a00                      PUSH 0x0
0045386d  6a00                      PUSH 0x0
0045386f  e83c106100                CALL 0x00a648b0
00453874  8a856fffffff              MOV AL,byte ptr [EBP + 0xffffff6f]
0045387a  83c408                    ADD ESP,0x8
0045387d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00453884  84c0                      TEST AL,AL
00453886  b807000000                MOV EAX,0x7
0045388b  0f45f0                    CMOVNZ ESI,EAX
0045388e  03b570ffffff              ADD ESI,dword ptr [EBP + 0xffffff70]
00453894  e8c7b62900                CALL 0x006eef60
00453899  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045389f  50                        PUSH EAX
004538a0  56                        PUSH ESI
004538a1  57                        PUSH EDI
004538a2  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
004538a8  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
004538b2  50                        PUSH EAX
004538b3  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
004538b9  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
004538c3  50                        PUSH EAX
004538c4  6a01                      PUSH 0x1
004538c6  689b010000                PUSH 0x19b
004538cb  e85052fdff                CALL 0x00428b20
004538d0  8bf0                      MOV ESI,EAX
004538d2  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004538d8  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004538df  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004538e5  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
004538eb  8b8f84030000              MOV ECX,dword ptr [EDI + 0x384]
004538f1  898e84030000              MOV dword ptr [ESI + 0x384],ECX
004538f7  8b8f80030000              MOV ECX,dword ptr [EDI + 0x380]
004538fd  898e80030000              MOV dword ptr [ESI + 0x380],ECX
00453903  8b08                      MOV ECX,dword ptr [EAX]
00453905  85c9                      TEST ECX,ECX
00453907  741e                      JZ 0x00453927
00453909  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
0045390f  81c1cc030000              ADD ECX,0x3cc
00453915  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
0045391b  50                        PUSH EAX
0045391c  e8efb80700                CALL 0x004cf210
00453921  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00453927  50                        PUSH EAX
00453928  8bcf                      MOV ECX,EDI
0045392a  8938                      MOV dword ptr [EAX],EDI
0045392c  e8bfa30700                CALL 0x004cdcf0
00453931  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
0045393b  8bb568ffffff              MOV ESI,dword ptr [EBP + 0xffffff68]
00453941  83fe32                    CMP ESI,0x32
00453944  7c0f                      JL 0x00453955
00453946  68c4d5b100                PUSH 0xb1d5c4
0045394b  6a04                      PUSH 0x4
0045394d  e86ed95b00                CALL 0x00a112c0
00453952  83c408                    ADD ESP,0x8
00453955  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
0045395b  40                        INC EAX
0045395c  898570ffffff              MOV dword ptr [EBP + 0xffffff70],EAX
00453962  3b8554ffffff              CMP EAX,dword ptr [EBP + 0xffffff54]
00453968  0f8c72fcffff              JL 0x004535e0
0045396e  e9c80e0000                JMP 0x0045483b
00453973  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0045397d  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00453982  0f2fc2                    COMISS XMM0,XMM2
00453985  0f86b00e0000              JBE 0x0045483b
0045398b  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0045398e  8b570c                    MOV EDX,dword ptr [EDI + 0xc]
00453991  3bc2                      CMP EAX,EDX
00453993  0f84a20e0000              JZ 0x0045483b
00453999  0f1f8000000000            NOP dword ptr [EAX]
004539a0  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004539a3  81e100200000              AND ECX,0x2000
004539a9  83c900                    OR ECX,0x0
004539ac  750c                      JNZ 0x004539ba
004539ae  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004539b2  f30f59c2                  MULSS XMM0,XMM2
004539b6  f30f1100                  MOVSS dword ptr [EAX],XMM0
004539ba  83c038                    ADD EAX,0x38
004539bd  3bc2                      CMP EAX,EDX
004539bf  75df                      JNZ 0x004539a0
004539c1  e9750e0000                JMP 0x0045483b
004539c6  03c6                      ADD EAX,ESI
004539c8  898710040000              MOV dword ptr [EDI + 0x410],EAX
004539ce  83f869                    CMP EAX,0x69
004539d1  0f8eb8030000              JLE 0x00453d8f
004539d7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004539da  85f6                      TEST ESI,ESI
004539dc  0f8477010000              JZ 0x00453b59
004539e2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004539e9  7542                      JNZ 0x00453a2d
004539eb  8bc6                      MOV EAX,ESI
004539ed  83781410                  CMP dword ptr [EAX + 0x14],0x10
004539f1  7202                      JC 0x004539f5
004539f3  8b00                      MOV EAX,dword ptr [EAX]
004539f5  b9b8d5b100                MOV ECX,0xb1d5b8
004539fa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00453a00  8a10                      MOV DL,byte ptr [EAX]
00453a02  3a11                      CMP DL,byte ptr [ECX]
00453a04  751a                      JNZ 0x00453a20
00453a06  84d2                      TEST DL,DL
00453a08  7412                      JZ 0x00453a1c
00453a0a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00453a0d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00453a10  750e                      JNZ 0x00453a20
00453a12  83c002                    ADD EAX,0x2
00453a15  83c102                    ADD ECX,0x2
00453a18  84d2                      TEST DL,DL
00453a1a  75e4                      JNZ 0x00453a00
00453a1c  33c0                      XOR EAX,EAX
00453a1e  eb05                      JMP 0x00453a25
00453a20  1bc0                      SBB EAX,EAX
00453a22  83c801                    OR EAX,0x1
00453a25  85c0                      TEST EAX,EAX
00453a27  0f8462030000              JZ 0x00453d8f
00453a2d  85f6                      TEST ESI,ESI
00453a2f  0f8424010000              JZ 0x00453b59
00453a35  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00453a3c  0f8417010000              JZ 0x00453b59
00453a42  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00453a45  83781410                  CMP dword ptr [EAX + 0x14],0x10
00453a49  7202                      JC 0x00453a4d
00453a4b  8b00                      MOV EAX,dword ptr [EAX]
00453a4d  b9b8d5b100                MOV ECX,0xb1d5b8
00453a52  8a10                      MOV DL,byte ptr [EAX]
00453a54  3a11                      CMP DL,byte ptr [ECX]
00453a56  751a                      JNZ 0x00453a72
00453a58  84d2                      TEST DL,DL
00453a5a  7412                      JZ 0x00453a6e
00453a5c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00453a5f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00453a62  750e                      JNZ 0x00453a72
00453a64  83c002                    ADD EAX,0x2
00453a67  83c102                    ADD ECX,0x2
00453a6a  84d2                      TEST DL,DL
00453a6c  75e4                      JNZ 0x00453a52
00453a6e  33c0                      XOR EAX,EAX
00453a70  eb05                      JMP 0x00453a77
00453a72  1bc0                      SBB EAX,EAX
00453a74  83c801                    OR EAX,0x1
00453a77  85c0                      TEST EAX,EAX
00453a79  0f85da000000              JNZ 0x00453b59
00453a7f  6804d6b100                PUSH 0xb1d604
00453a84  8d4f48                    LEA ECX,[EDI + 0x48]
00453a87  e8a475fbff                CALL 0x0040b030
00453a8c  84c0                      TEST AL,AL
00453a8e  744a                      JZ 0x00453ada
00453a90  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00453a96  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00453a9c  c78578ffffff6b030000      MOV dword ptr [EBP + 0xffffff78],0x36b
00453aa6  e8d52c5000                CALL 0x00956780
00453aab  83ec08                    SUB ESP,0x8
00453aae  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00453ab4  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00453abc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453ac3  6a00                      PUSH 0x0
00453ac5  6a02                      PUSH 0x2
00453ac7  51                        PUSH ECX
00453ac8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453acf  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00453ad5  e856a14d00                CALL 0x0092dc30
00453ada  6844d6b100                PUSH 0xb1d644
00453adf  8d4f48                    LEA ECX,[EDI + 0x48]
00453ae2  e84975fbff                CALL 0x0040b030
00453ae7  84c0                      TEST AL,AL
00453ae9  744a                      JZ 0x00453b35
00453aeb  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00453af1  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00453af7  c78578ffffff6c030000      MOV dword ptr [EBP + 0xffffff78],0x36c
00453b01  e87a2c5000                CALL 0x00956780
00453b06  83ec08                    SUB ESP,0x8
00453b09  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00453b0f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00453b17  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453b1e  6a00                      PUSH 0x0
00453b20  6a02                      PUSH 0x2
00453b22  51                        PUSH ECX
00453b23  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453b2a  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00453b30  e8fba04d00                CALL 0x0092dc30
00453b35  683cd6b100                PUSH 0xb1d63c
00453b3a  8d4f48                    LEA ECX,[EDI + 0x48]
00453b3d  e8ee74fbff                CALL 0x0040b030
00453b42  84c0                      TEST AL,AL
00453b44  0f84f10c0000              JZ 0x0045483b
00453b4a  c78578ffffff6d030000      MOV dword ptr [EBP + 0xffffff78],0x36d
00453b54  e9a20c0000                JMP 0x004547fb
00453b59  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00453b5f  33c9                      XOR ECX,ECX
00453b61  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00453b69  81c600830100              ADD ESI,0x18300
00453b6f  90                        NOP
00453b70  8b36                      MOV ESI,dword ptr [ESI]
00453b72  8d45b8                    LEA EAX,[EBP + -0x48]
00453b75  41                        INC ECX
00453b76  0f28c3                    MOVAPS XMM0,XMM3
00453b79  f30f5905b8a2ba00          MULSS XMM0,dword ptr [0x00baa2b8]
00453b81  51                        PUSH ECX
00453b82  f30f591da0a4ba00          MULSS XMM3,dword ptr [0x00baa4a0]
00453b8a  898d68ffffff              MOV dword ptr [EBP + 0xffffff68],ECX
00453b90  8bce                      MOV ECX,ESI
00453b92  c7042400000000            MOV dword ptr [ESP],0x0
00453b99  50                        PUSH EAX
00453b9a  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
00453ba2  f30f119d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM3
00453baa  e821ae3c00                CALL 0x0081e9d0
00453baf  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
00453bb7  83ec0c                    SUB ESP,0xc
00453bba  f30f109d54ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff54]
00453bc2  8bce                      MOV ECX,ESI
00453bc4  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00453bca  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00453bd0  f30f110424                MOVSS dword ptr [ESP],XMM0
00453bd5  50                        PUSH EAX
00453bd6  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00453bdc  50                        PUSH EAX
00453bdd  e86ef33b00                CALL 0x00812f50
00453be2  a17816c700                MOV EAX,[0x00c71678]
00453be7  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00453bed  8d8800830100              LEA ECX,[EAX + 0x18300]
00453bf3  898d4cffffff              MOV dword ptr [EBP + 0xffffff4c],ECX
00453bf9  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
00453c03  8b8e64120000              MOV ECX,dword ptr [ESI + 0x1264]
00453c09  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
00453c0f  85c9                      TEST ECX,ECX
00453c11  0f8426010000              JZ 0x00453d3d
00453c17  8b8014660200              MOV EAX,dword ptr [EAX + 0x26614]
00453c1d  8bb65c120000              MOV ESI,dword ptr [ESI + 0x125c]
00453c23  f30f10a564ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff64]
00453c2b  f30f10ad60ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff60]
00453c33  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00453c39  0f1f8000000000            NOP dword ptr [EAX]
00453c40  8b16                      MOV EDX,dword ptr [ESI]
00453c42  83f802                    CMP EAX,0x2
00453c45  7c0d                      JL 0x00453c54
00453c47  837a2801                  CMP dword ptr [EDX + 0x28],0x1
00453c4b  7507                      JNZ 0x00453c54
00453c4d  b901000000                MOV ECX,0x1
00453c52  eb4b                      JMP 0x00453c9f
00453c54  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
00453c57  8d41f6                    LEA EAX,[ECX + -0xa]
00453c5a  3ddd030000                CMP EAX,0x3dd
00453c5f  775b                      JA 0x00453cbc
00453c61  83f921                    CMP ECX,0x21
00453c64  7456                      JZ 0x00453cbc
00453c66  83f911                    CMP ECX,0x11
00453c69  7451                      JZ 0x00453cbc
00453c6b  81f924010000              CMP ECX,0x124
00453c71  7449                      JZ 0x00453cbc
00453c73  81f975030000              CMP ECX,0x375
00453c79  750c                      JNZ 0x00453c87
00453c7b  837a2c0a                  CMP dword ptr [EDX + 0x2c],0xa
00453c7f  0f847c000000              JZ 0x00453d01
00453c85  eb18                      JMP 0x00453c9f
00453c87  81f9c0030000              CMP ECX,0x3c0
00453c8d  742d                      JZ 0x00453cbc
00453c8f  81f9c5030000              CMP ECX,0x3c5
00453c95  7425                      JZ 0x00453cbc
00453c97  81f9f5000000              CMP ECX,0xf5
00453c9d  741d                      JZ 0x00453cbc
00453c9f  80ba7301000000            CMP byte ptr [EDX + 0x173],0x0
00453ca6  7514                      JNZ 0x00453cbc
00453ca8  3bd7                      CMP EDX,EDI
00453caa  7410                      JZ 0x00453cbc
00453cac  81f99b010000              CMP ECX,0x19b
00453cb2  740d                      JZ 0x00453cc1
00453cb4  81f994010000              CMP ECX,0x194
00453cba  7405                      JZ 0x00453cc1
00453cbc  83f904                    CMP ECX,0x4
00453cbf  7540                      JNZ 0x00453d01
00453cc1  f30f108a3c030000          MOVSS XMM1,dword ptr [EDX + 0x33c]
00453cc9  f30f109240030000          MOVSS XMM2,dword ptr [EDX + 0x340]
00453cd1  f30f5ccd                  SUBSS XMM1,XMM5
00453cd5  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00453cdd  f30f5cd4                  SUBSS XMM2,XMM4
00453ce1  0f28c3                    MOVAPS XMM0,XMM3
00453ce4  f30f588270030000          ADDSS XMM0,dword ptr [EDX + 0x370]
00453cec  f30f59c9                  MULSS XMM1,XMM1
00453cf0  f30f59d2                  MULSS XMM2,XMM2
00453cf4  f30f59c0                  MULSS XMM0,XMM0
00453cf8  f30f58d1                  ADDSS XMM2,XMM1
00453cfc  0f2fc2                    COMISS XMM0,XMM2
00453cff  7723                      JA 0x00453d24
00453d01  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00453d07  83c604                    ADD ESI,0x4
00453d0a  40                        INC EAX
00453d0b  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
00453d11  3b8574ffffff              CMP EAX,dword ptr [EBP + 0xffffff74]
00453d17  7324                      JNC 0x00453d3d
00453d19  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
00453d1f  e91cffffff                JMP 0x00453c40
00453d24  8b8d68ffffff              MOV ECX,dword ptr [EBP + 0xffffff68]
00453d2a  83f932                    CMP ECX,0x32
00453d2d  7d0b                      JGE 0x00453d3a
00453d2f  8bb54cffffff              MOV ESI,dword ptr [EBP + 0xffffff4c]
00453d35  e936feffff                JMP 0x00453b70
00453d3a  41                        INC ECX
00453d3b  eb35                      JMP 0x00453d72
00453d3d  6a00                      PUSH 0x0
00453d3f  68b8d5b100                PUSH 0xb1d5b8
00453d44  8d4f48                    LEA ECX,[EDI + 0x48]
00453d47  e83466fbff                CALL 0x0040a380
00453d4c  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
00453d54  8b8d68ffffff              MOV ECX,dword ptr [EBP + 0xffffff68]
00453d5a  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00453d62  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
00453d6a  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00453d72  83f932                    CMP ECX,0x32
00453d75  0f8cc00a0000              JL 0x0045483b
00453d7b  680cd6b100                PUSH 0xb1d60c
00453d80  6a04                      PUSH 0x4
00453d82  e839d55b00                CALL 0x00a112c0
00453d87  83c408                    ADD ESP,0x8
00453d8a  e9ac0a0000                JMP 0x0045483b
00453d8f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00453d93  0f84a20a0000              JZ 0x0045483b
00453d99  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00453da0  0f85950a0000              JNZ 0x0045483b
00453da6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00453da9  83781410                  CMP dword ptr [EAX + 0x14],0x10
00453dad  7202                      JC 0x00453db1
00453daf  8b00                      MOV EAX,dword ptr [EAX]
00453db1  b9b8d5b100                MOV ECX,0xb1d5b8
00453db6  8a10                      MOV DL,byte ptr [EAX]
00453db8  3a11                      CMP DL,byte ptr [ECX]
00453dba  751a                      JNZ 0x00453dd6
00453dbc  84d2                      TEST DL,DL
00453dbe  7412                      JZ 0x00453dd2
00453dc0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00453dc3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00453dc6  750e                      JNZ 0x00453dd6
00453dc8  83c002                    ADD EAX,0x2
00453dcb  83c102                    ADD ECX,0x2
00453dce  84d2                      TEST DL,DL
00453dd0  75e4                      JNZ 0x00453db6
00453dd2  33c0                      XOR EAX,EAX
00453dd4  eb05                      JMP 0x00453ddb
00453dd6  1bc0                      SBB EAX,EAX
00453dd8  83c801                    OR EAX,0x1
00453ddb  85c0                      TEST EAX,EAX
00453ddd  0f85580a0000              JNZ 0x0045483b
00453de3  38856fffffff              CMP byte ptr [EBP + 0xffffff6f],AL
00453de9  0f854c0a0000              JNZ 0x0045483b
00453def  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
00453df5  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00453dff  85f6                      TEST ESI,ESI
00453e01  0f84a5000000              JZ 0x00453eac
00453e07  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00453e0f  8bcf                      MOV ECX,EDI
00453e11  8887b0030000              MOV byte ptr [EDI + 0x3b0],AL
00453e17  e844892500                CALL 0x006ac760
00453e1c  85c0                      TEST EAX,EAX
00453e1e  0f847c000000              JZ 0x00453ea0
00453e24  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
00453e2a  8d8ecc030000              LEA ECX,[ESI + 0x3cc]
00453e30  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00453e36  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00453e3c  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
00453e42  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
00453e48  50                        PUSH EAX
00453e49  e8c2b30700                CALL 0x004cf210
00453e4e  8b8d54ffffff              MOV ECX,dword ptr [EBP + 0xffffff54]
00453e54  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00453e5a  8908                      MOV dword ptr [EAX],ECX
00453e5c  85c9                      TEST ECX,ECX
00453e5e  7406                      JZ 0x00453e66
00453e60  50                        PUSH EAX
00453e61  e88a9e0700                CALL 0x004cdcf0
00453e66  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00453e6c  8bce                      MOV ECX,ESI
00453e6e  89863c030000              MOV dword ptr [ESI + 0x33c],EAX
00453e74  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00453e7a  898640030000              MOV dword ptr [ESI + 0x340],EAX
00453e80  8b06                      MOV EAX,dword ptr [ESI]
00453e82  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
00453e8c  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
00453e96  ff500c                    CALL dword ptr [EAX + 0xc]
00453e99  8b06                      MOV EAX,dword ptr [ESI]
00453e9b  8bce                      MOV ECX,ESI
00453e9d  ff5028                    CALL dword ptr [EAX + 0x28]
00453ea0  8bcf                      MOV ECX,EDI
00453ea2  e839f2ffff                CALL 0x004530e0
00453ea7  e98f090000                JMP 0x0045483b
00453eac  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00453eb2  8d4f48                    LEA ECX,[EDI + 0x48]
00453eb5  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
00453ebc  6a00                      PUSH 0x0
00453ebe  85c0                      TEST EAX,EAX
00453ec0  7e2a                      JLE 0x00453eec
00453ec2  6854d6b100                PUSH 0xb1d654
00453ec7  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00453ed1  e8aa64fbff                CALL 0x0040a380
00453ed6  c787c40b000096000000      MOV dword ptr [EDI + 0xbc4],0x96
00453ee0  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00453eea  eb51                      JMP 0x00453f3d
00453eec  684cd6b100                PUSH 0xb1d64c
00453ef1  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00453efb  e88064fbff                CALL 0x0040a380
00453f00  51                        PUSH ECX
00453f01  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453f08  6a00                      PUSH 0x0
00453f0a  6a02                      PUSH 0x2
00453f0c  51                        PUSH ECX
00453f0d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453f14  8bcf                      MOV ECX,EDI
00453f16  6a0e                      PUSH 0xe
00453f18  e8832c2800                CALL 0x006d6ba0
00453f1d  51                        PUSH ECX
00453f1e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453f25  6a00                      PUSH 0x0
00453f27  6a02                      PUSH 0x2
00453f29  51                        PUSH ECX
00453f2a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453f31  8bcf                      MOV ECX,EDI
00453f33  6869030000                PUSH 0x369
00453f38  e8632c2800                CALL 0x006d6ba0
00453f3d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00453f47  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
00453f51  e9e5080000                JMP 0x0045483b
00453f56  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00453f5c  8d4f48                    LEA ECX,[EDI + 0x48]
00453f5f  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
00453f69  85c0                      TEST EAX,EAX
00453f6b  0f85dd000000              JNZ 0x0045404e
00453f71  39477c                    CMP dword ptr [EDI + 0x7c],EAX
00453f74  740c                      JZ 0x00453f82
00453f76  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00453f7c  0f85b9080000              JNZ 0x0045483b
00453f82  a17816c700                MOV EAX,[0x00c71678]
00453f87  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00453f8d  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
00453f92  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00453f9a  0f2f8770030000            COMISS XMM0,dword ptr [EDI + 0x370]
00453fa1  0f8687000000              JBE 0x0045402e
00453fa7  e8b4af2900                CALL 0x006eef60
00453fac  33d2                      XOR EDX,EDX
00453fae  b964000000                MOV ECX,0x64
00453fb3  f7f1                      DIV ECX
00453fb5  83fa23                    CMP EDX,0x23
00453fb8  7307                      JNC 0x00453fc1
00453fba  b860d6b100                MOV EAX,0xb1d660
00453fbf  eb10                      JMP 0x00453fd1
00453fc1  83fa28                    CMP EDX,0x28
00453fc4  b89cd6b100                MOV EAX,0xb1d69c
00453fc9  b968d6b100                MOV ECX,0xb1d668
00453fce  0f43c1                    CMOVNC EAX,ECX
00453fd1  6a00                      PUSH 0x0
00453fd3  50                        PUSH EAX
00453fd4  8d4f48                    LEA ECX,[EDI + 0x48]
00453fd7  e8a463fbff                CALL 0x0040a380
00453fdc  ff8710040000              INC dword ptr [EDI + 0x410]
00453fe2  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00453fe8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00453fee  c78578ffffff74030000      MOV dword ptr [EBP + 0xffffff78],0x374
00453ff8  e883275000                CALL 0x00956780
00453ffd  83ec08                    SUB ESP,0x8
00454000  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00454006  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045400e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454015  6a00                      PUSH 0x0
00454017  6a02                      PUSH 0x2
00454019  51                        PUSH ECX
0045401a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454021  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00454027  e8049c4d00                CALL 0x0092dc30
0045402c  eb0a                      JMP 0x00454038
0045402e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00454038  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0045403f  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00454049  e9ed070000                JMP 0x0045483b
0045404e  03c6                      ADD EAX,ESI
00454050  68dcd2b100                PUSH 0xb1d2dc
00454055  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045405b  e8d06ffbff                CALL 0x0040b030
00454060  84c0                      TEST AL,AL
00454062  0f8432040000              JZ 0x0045449a
00454068  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045406c  be01000000                MOV ESI,0x1
00454071  0f280580caba00            MOVAPS XMM0,xmmword ptr [0x00baca80]
00454078  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
0045407e  0f1145d4                  MOVUPS xmmword ptr [EBP + -0x2c],XMM0
00454082  c745e4000070c1            MOV dword ptr [EBP + -0x1c],0xc1700000
00454089  c745e80000e040            MOV dword ptr [EBP + -0x18],0x40e00000
00454090  0f8410010000              JZ 0x004541a6
00454096  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045409d  746d                      JZ 0x0045410c
0045409f  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004540a2  83781410                  CMP dword ptr [EAX + 0x14],0x10
004540a6  7202                      JC 0x004540aa
004540a8  8b00                      MOV EAX,dword ptr [EAX]
004540aa  b968d6b100                MOV ECX,0xb1d668
004540af  90                        NOP
004540b0  8a10                      MOV DL,byte ptr [EAX]
004540b2  3a11                      CMP DL,byte ptr [ECX]
004540b4  751a                      JNZ 0x004540d0
004540b6  84d2                      TEST DL,DL
004540b8  7412                      JZ 0x004540cc
004540ba  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004540bd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004540c0  750e                      JNZ 0x004540d0
004540c2  83c002                    ADD EAX,0x2
004540c5  83c102                    ADD ECX,0x2
004540c8  84d2                      TEST DL,DL
004540ca  75e4                      JNZ 0x004540b0
004540cc  33c0                      XOR EAX,EAX
004540ce  eb05                      JMP 0x004540d5
004540d0  1bc0                      SBB EAX,EAX
004540d2  83c801                    OR EAX,0x1
004540d5  85c0                      TEST EAX,EAX
004540d7  7533                      JNZ 0x0045410c
004540d9  51                        PUSH ECX
004540da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004540e0  8db73c030000              LEA ESI,[EDI + 0x33c]
004540e6  c704247f96184b            MOV dword ptr [ESP],0x4b18967f
004540ed  56                        PUSH ESI
004540ee  e85df72a00                CALL 0x00703850
004540f3  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004540f7  be01000000                MOV ESI,0x1
004540fc  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
00454103  7607                      JBE 0x0045410c
00454105  c745d40000a0c0            MOV dword ptr [EBP + -0x2c],0xc0a00000
0045410c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00454110  0f8490000000              JZ 0x004541a6
00454116  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045411d  0f8483000000              JZ 0x004541a6
00454123  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00454126  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045412a  7202                      JC 0x0045412e
0045412c  8b00                      MOV EAX,dword ptr [EAX]
0045412e  b960d6b100                MOV ECX,0xb1d660
00454133  8a10                      MOV DL,byte ptr [EAX]
00454135  3a11                      CMP DL,byte ptr [ECX]
00454137  751a                      JNZ 0x00454153
00454139  84d2                      TEST DL,DL
0045413b  7412                      JZ 0x0045414f
0045413d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00454140  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00454143  750e                      JNZ 0x00454153
00454145  83c002                    ADD EAX,0x2
00454148  83c102                    ADD ECX,0x2
0045414b  84d2                      TEST DL,DL
0045414d  75e4                      JNZ 0x00454133
0045414f  33c0                      XOR EAX,EAX
00454151  eb05                      JMP 0x00454158
00454153  1bc0                      SBB EAX,EAX
00454155  83c801                    OR EAX,0x1
00454158  85c0                      TEST EAX,EAX
0045415a  7505                      JNZ 0x00454161
0045415c  8d7002                    LEA ESI,[EAX + 0x2]
0045415f  eb3f                      JMP 0x004541a0
00454161  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00454164  83781410                  CMP dword ptr [EAX + 0x14],0x10
00454168  7202                      JC 0x0045416c
0045416a  8b00                      MOV EAX,dword ptr [EAX]
0045416c  b99cd6b100                MOV ECX,0xb1d69c
00454171  8a10                      MOV DL,byte ptr [EAX]
00454173  3a11                      CMP DL,byte ptr [ECX]
00454175  751a                      JNZ 0x00454191
00454177  84d2                      TEST DL,DL
00454179  7412                      JZ 0x0045418d
0045417b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045417e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00454181  750e                      JNZ 0x00454191
00454183  83c002                    ADD EAX,0x2
00454186  83c102                    ADD ECX,0x2
00454189  84d2                      TEST DL,DL
0045418b  75e4                      JNZ 0x00454171
0045418d  33c0                      XOR EAX,EAX
0045418f  eb05                      JMP 0x00454196
00454191  1bc0                      SBB EAX,EAX
00454193  83c801                    OR EAX,0x1
00454196  85c0                      TEST EAX,EAX
00454198  b903000000                MOV ECX,0x3
0045419d  0f44f1                    CMOVZ ESI,ECX
004541a0  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
004541a6  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
004541ae  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
004541b4  0f57c0                    XORPS XMM0,XMM0
004541b7  c7459c9a99193e            MOV dword ptr [EBP + -0x64],0x3e19999a
004541be  8d873c030000              LEA EAX,[EDI + 0x33c]
004541c4  c745a09a99193e            MOV dword ptr [EBP + -0x60],0x3e19999a
004541cb  51                        PUSH ECX
004541cc  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
004541d0  8bcf                      MOV ECX,EDI
004541d2  c745a49a99193e            MOV dword ptr [EBP + -0x5c],0x3e19999a
004541d9  0f280510beba00            MOVAPS XMM0,xmmword ptr [0x00babe10]
004541e0  50                        PUSH EAX
004541e1  0f11857cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM0
004541e8  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
004541ee  e83d262600                CALL 0x006b6830
004541f3  6800000010                PUSH 0x10000000
004541f8  6a00                      PUSH 0x0
004541fa  8bcf                      MOV ECX,EDI
004541fc  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
00454206  c780500300000000c8c1      MOV dword ptr [EAX + 0x350],0xc1c80000
00454210  e81b32fcff                CALL 0x00417430
00454215  84c0                      TEST AL,AL
00454217  743d                      JZ 0x00454256
00454219  a17816c700                MOV EAX,[0x00c71678]
0045421e  6a00                      PUSH 0x0
00454220  6a00                      PUSH 0x0
00454222  6aff                      PUSH -0x1
00454224  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0045422a  8d45b0                    LEA EAX,[EBP + -0x50]
0045422d  6a01                      PUSH 0x1
0045422f  6894010000                PUSH 0x194
00454234  81c118120000              ADD ECX,0x1218
0045423a  50                        PUSH EAX
0045423b  e8206dfcff                CALL 0x0041af60
00454240  be02000000                MOV ESI,0x2
00454245  8d4db0                    LEA ECX,[EBP + -0x50]
00454248  2b75bc                    SUB ESI,dword ptr [EBP + -0x44]
0045424b  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
00454251  e85a33fcff                CALL 0x004175b0
00454256  33c0                      XOR EAX,EAX
00454258  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
0045425e  85f6                      TEST ESI,ESI
00454260  0f8e14020000              JLE 0x0045447a
00454266  83fe02                    CMP ESI,0x2
00454269  8d4dd4                    LEA ECX,[EBP + -0x2c]
0045426c  8d55dc                    LEA EDX,[EBP + -0x24]
0045426f  0f44ca                    CMOVZ ECX,EDX
00454272  898d58ffffff              MOV dword ptr [EBP + 0xffffff58],ECX
00454278  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00454280  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
0045428a  83fe02                    CMP ESI,0x2
0045428d  7405                      JZ 0x00454294
0045428f  83f801                    CMP EAX,0x1
00454292  7e0a                      JLE 0x0045429e
00454294  c78578ffffff01000000      MOV dword ptr [EBP + 0xffffff78],0x1
0045429e  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004542a2  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004542aa  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
004542af  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004542b7  e8a4ac2900                CALL 0x006eef60
004542bc  8b8d58ffffff              MOV ECX,dword ptr [EBP + 0xffffff58]
004542c2  50                        PUSH EAX
004542c3  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
004542c9  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
004542cf  f30f1009                  MOVSS XMM1,dword ptr [ECX]
004542d3  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
004542d8  8b8d74ffffff              MOV ECX,dword ptr [EBP + 0xffffff74]
004542de  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
004542e6  57                        PUSH EDI
004542e7  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
004542ef  50                        PUSH EAX
004542f0  f30f5809                  ADDSS XMM1,dword ptr [ECX]
004542f4  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004542fa  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
004542ff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00454305  50                        PUSH EAX
00454306  6a01                      PUSH 0x1
00454308  6894010000                PUSH 0x194
0045430d  f30f118d50ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM1
00454315  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0045431d  e8fe47fdff                CALL 0x00428b20
00454322  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00454328  33c9                      XOR ECX,ECX
0045432a  81e200000010              AND EDX,0x10000000
00454330  8bf0                      MOV ESI,EAX
00454332  0bca                      OR ECX,EDX
00454334  7414                      JZ 0x0045434a
00454336  c786800300000000a040      MOV dword ptr [ESI + 0x380],0x40a00000
00454340  c786840300000000a040      MOV dword ptr [ESI + 0x384],0x40a00000
0045434a  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00454350  b930000000                MOV ECX,0x30
00454355  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0045435c  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00454362  e8998bfbff                CALL 0x0040cf00
00454367  0f100570d6b100            MOVUPS XMM0,xmmword ptr [0x00b1d670]
0045436e  c745b828000000            MOV dword ptr [EBP + -0x48],0x28
00454375  c745bc2f000000            MOV dword ptr [EBP + -0x44],0x2f
0045437c  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0045437f  8945a8                    MOV dword ptr [EBP + -0x58],EAX
00454382  0f100580d6b100            MOVUPS XMM0,xmmword ptr [0x00b1d680]
00454389  0f114010                  MOVUPS xmmword ptr [EAX + 0x10],XMM0
0045438d  f30f7e0590d6b100          MOVQ XMM0,qword ptr [0x00b1d690]
00454395  660fd64020                MOVQ qword ptr [EAX + 0x20],XMM0
0045439a  c6402800                  MOV byte ptr [EAX + 0x28],0x0
0045439e  8d45a8                    LEA EAX,[EBP + -0x58]
004543a1  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004543a8  50                        PUSH EAX
004543a9  6a00                      PUSH 0x0
004543ab  8d4e48                    LEA ECX,[ESI + 0x48]
004543ae  e87d7bfbff                CALL 0x0040bf30
004543b3  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004543ba  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
004543bd  83fa10                    CMP EDX,0x10
004543c0  722c                      JC 0x004543ee
004543c2  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004543c5  42                        INC EDX
004543c6  8bc1                      MOV EAX,ECX
004543c8  81fa00100000              CMP EDX,0x1000
004543ce  7214                      JC 0x004543e4
004543d0  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004543d3  83c223                    ADD EDX,0x23
004543d6  2bc1                      SUB EAX,ECX
004543d8  83c0fc                    ADD EAX,-0x4
004543db  83f81f                    CMP EAX,0x1f
004543de  0f87a0080000              JA 0x00454c84
004543e4  52                        PUSH EDX
004543e5  51                        PUSH ECX
004543e6  e871ad6900                CALL 0x00aef15c
004543eb  83c408                    ADD ESP,0x8
004543ee  51                        PUSH ECX
004543ef  8d4e48                    LEA ECX,[ESI + 0x48]
004543f2  e8097cfbff                CALL 0x0040c000
004543f7  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004543ff  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00454406  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0045440e  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00454415  6aff                      PUSH -0x1
00454417  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
0045441f  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
00454425  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
0045442d  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00454435  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
0045443d  ffb560ffffff              PUSH dword ptr [EBP + 0xffffff60]
00454443  51                        PUSH ECX
00454444  8bce                      MOV ECX,ESI
00454446  f30f110424                MOVSS dword ptr [ESP],XMM0
0045444b  e8507e2500                CALL 0x006ac2a0
00454450  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
00454456  8b8d58ffffff              MOV ECX,dword ptr [EBP + 0xffffff58]
0045445c  40                        INC EAX
0045445d  8bb570ffffff              MOV ESI,dword ptr [EBP + 0xffffff70]
00454463  83c108                    ADD ECX,0x8
00454466  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
0045446c  898d58ffffff              MOV dword ptr [EBP + 0xffffff58],ECX
00454472  3bc6                      CMP EAX,ESI
00454474  0f8c06feffff              JL 0x00454280
0045447a  51                        PUSH ECX
0045447b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454482  6a00                      PUSH 0x0
00454484  6a02                      PUSH 0x2
00454486  51                        PUSH ECX
00454487  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045448e  8bcf                      MOV ECX,EDI
00454490  6879030000                PUSH 0x379
00454495  e806272800                CALL 0x006d6ba0
0045449a  68dcd2b100                PUSH 0xb1d2dc
0045449f  8d4f48                    LEA ECX,[EDI + 0x48]
004544a2  e8e96bfbff                CALL 0x0040b090
004544a7  84c0                      TEST AL,AL
004544a9  7407                      JZ 0x004544b2
004544ab  8bcf                      MOV ECX,EDI
004544ad  e8fee9ffff                CALL 0x00452eb0
004544b2  8bcf                      MOV ECX,EDI
004544b4  e827ecffff                CALL 0x004530e0
004544b9  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004544c0  8d87c0030000              LEA EAX,[EDI + 0x3c0]
004544c6  0f84f8000000              JZ 0x004545c4
004544cc  68b0d6b100                PUSH 0xb1d6b0
004544d1  8d4f48                    LEA ECX,[EDI + 0x48]
004544d4  e8b76bfbff                CALL 0x0040b090
004544d9  84c0                      TEST AL,AL
004544db  0f84dd000000              JZ 0x004545be
004544e1  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004544e7  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004544ed  c78578ffffff73030000      MOV dword ptr [EBP + 0xffffff78],0x373
004544f7  e884225000                CALL 0x00956780
004544fc  83ec08                    SUB ESP,0x8
004544ff  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00454505  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045450d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454514  6a00                      PUSH 0x0
00454516  6a02                      PUSH 0x2
00454518  51                        PUSH ECX
00454519  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454520  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00454526  e805974d00                CALL 0x0092dc30
0045452b  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00454531  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00454537  85c9                      TEST ECX,ECX
00454539  740a                      JZ 0x00454545
0045453b  83792804                  CMP dword ptr [ECX + 0x28],0x4
0045453f  7504                      JNZ 0x00454545
00454541  8bf1                      MOV ESI,ECX
00454543  eb06                      JMP 0x0045454b
00454545  33f6                      XOR ESI,ESI
00454547  85c9                      TEST ECX,ECX
00454549  741e                      JZ 0x00454569
0045454b  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
00454551  81c1cc030000              ADD ECX,0x3cc
00454557  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
0045455d  50                        PUSH EAX
0045455e  e8adac0700                CALL 0x004cf210
00454563  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00454569  c70000000000              MOV dword ptr [EAX],0x0
0045456f  85f6                      TEST ESI,ESI
00454571  7451                      JZ 0x004545c4
00454573  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0045457b  8bce                      MOV ECX,ESI
0045457d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00454585  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0045458d  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00454595  8b06                      MOV EAX,dword ptr [ESI]
00454597  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
004545a1  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
004545ab  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
004545b3  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
004545bb  ff500c                    CALL dword ptr [EAX + 0xc]
004545be  8d87c0030000              LEA EAX,[EDI + 0x3c0]
004545c4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004545c8  740d                      JZ 0x004545d7
004545ca  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004545d1  0f8564020000              JNZ 0x0045483b
004545d7  8b30                      MOV ESI,dword ptr [EAX]
004545d9  85f6                      TEST ESI,ESI
004545db  7468                      JZ 0x00454645
004545dd  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
004545e3  8d8ecc030000              LEA ECX,[ESI + 0x3cc]
004545e9  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004545ef  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004545f6  50                        PUSH EAX
004545f7  e814ac0700                CALL 0x004cf210
004545fc  c787c003000000000000      MOV dword ptr [EDI + 0x3c0],0x0
00454606  8bce                      MOV ECX,ESI
00454608  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0045460e  89863c030000              MOV dword ptr [ESI + 0x33c],EAX
00454614  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0045461a  898640030000              MOV dword ptr [ESI + 0x340],EAX
00454620  8b06                      MOV EAX,dword ptr [ESI]
00454622  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
0045462c  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
00454636  ff500c                    CALL dword ptr [EAX + 0xc]
00454639  8b06                      MOV EAX,dword ptr [ESI]
0045463b  8bce                      MOV ECX,ESI
0045463d  ff5028                    CALL dword ptr [EAX + 0x28]
00454640  e9f6010000                JMP 0x0045483b
00454645  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0045464c  7e3c                      JLE 0x0045468a
0045464e  6a00                      PUSH 0x0
00454650  68a4d6b100                PUSH 0xb1d6a4
00454655  8d4f48                    LEA ECX,[EDI + 0x48]
00454658  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00454662  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0045466c  e80f5dfbff                CALL 0x0040a380
00454671  c787c40b000096000000      MOV dword ptr [EDI + 0xbc4],0x96
0045467b  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00454685  e9b1010000                JMP 0x0045483b
0045468a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00454694  e9a2010000                JMP 0x0045483b
00454699  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004546a0  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004546aa  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
004546b4  7531                      JNZ 0x004546e7
004546b6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004546ba  8d4f48                    LEA ECX,[EDI + 0x48]
004546bd  740d                      JZ 0x004546cc
004546bf  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004546c6  0f856f010000              JNZ 0x0045483b
004546cc  6a00                      PUSH 0x0
004546ce  68a4d6b100                PUSH 0xb1d6a4
004546d3  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004546dd  e89e5cfbff                CALL 0x0040a380
004546e2  e954010000                JMP 0x0045483b
004546e7  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004546ec  0f2fc2                    COMISS XMM0,XMM2
004546ef  7625                      JBE 0x00454716
004546f1  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004546f4  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
004546f7  3bc1                      CMP EAX,ECX
004546f9  741b                      JZ 0x00454716
004546fb  f30f100db0a4ba00          MOVSS XMM1,dword ptr [0x00baa4b0]
00454703  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00454707  f30f59c1                  MULSS XMM0,XMM1
0045470b  f30f1100                  MOVSS dword ptr [EAX],XMM0
0045470f  83c038                    ADD EAX,0x38
00454712  3bc1                      CMP EAX,ECX
00454714  75ed                      JNZ 0x00454703
00454716  29b7c40b0000              SUB dword ptr [EDI + 0xbc4],ESI
0045471c  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
00454723  0f8d12010000              JGE 0x0045483b
00454729  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0045472c  85f6                      TEST ESI,ESI
0045472e  745c                      JZ 0x0045478c
00454730  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00454737  7553                      JNZ 0x0045478c
00454739  8bc6                      MOV EAX,ESI
0045473b  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045473f  7202                      JC 0x00454743
00454741  8b00                      MOV EAX,dword ptr [EAX]
00454743  b9ccd6b100                MOV ECX,0xb1d6cc
00454748  8a10                      MOV DL,byte ptr [EAX]
0045474a  3a11                      CMP DL,byte ptr [ECX]
0045474c  751a                      JNZ 0x00454768
0045474e  84d2                      TEST DL,DL
00454750  7412                      JZ 0x00454764
00454752  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00454755  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00454758  750e                      JNZ 0x00454768
0045475a  83c002                    ADD EAX,0x2
0045475d  83c102                    ADD ECX,0x2
00454760  84d2                      TEST DL,DL
00454762  75e4                      JNZ 0x00454748
00454764  33c0                      XOR EAX,EAX
00454766  eb05                      JMP 0x0045476d
00454768  1bc0                      SBB EAX,EAX
0045476a  83c801                    OR EAX,0x1
0045476d  85c0                      TEST EAX,EAX
0045476f  751b                      JNZ 0x0045478c
00454771  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045477b  898710040000              MOV dword ptr [EDI + 0x410],EAX
00454781  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00454787  e9af000000                JMP 0x0045483b
0045478c  8d4748                    LEA EAX,[EDI + 0x48]
0045478f  85f6                      TEST ESI,ESI
00454791  7450                      JZ 0x004547e3
00454793  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045479a  7447                      JZ 0x004547e3
0045479c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0045479f  85c0                      TEST EAX,EAX
004547a1  740a                      JZ 0x004547ad
004547a3  83781410                  CMP dword ptr [EAX + 0x14],0x10
004547a7  7209                      JC 0x004547b2
004547a9  8b00                      MOV EAX,dword ptr [EAX]
004547ab  eb05                      JMP 0x004547b2
004547ad  b8eca4b100                MOV EAX,0xb1a4ec
004547b2  b9ccd6b100                MOV ECX,0xb1d6cc
004547b7  8a10                      MOV DL,byte ptr [EAX]
004547b9  3a11                      CMP DL,byte ptr [ECX]
004547bb  751a                      JNZ 0x004547d7
004547bd  84d2                      TEST DL,DL
004547bf  7412                      JZ 0x004547d3
004547c1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004547c4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004547c7  750e                      JNZ 0x004547d7
004547c9  83c002                    ADD EAX,0x2
004547cc  83c102                    ADD ECX,0x2
004547cf  84d2                      TEST DL,DL
004547d1  75e4                      JNZ 0x004547b7
004547d3  33c0                      XOR EAX,EAX
004547d5  eb05                      JMP 0x004547dc
004547d7  1bc0                      SBB EAX,EAX
004547d9  83c801                    OR EAX,0x1
004547dc  85c0                      TEST EAX,EAX
004547de  745b                      JZ 0x0045483b
004547e0  8d4748                    LEA EAX,[EDI + 0x48]
004547e3  6a00                      PUSH 0x0
004547e5  68ccd6b100                PUSH 0xb1d6cc
004547ea  8bc8                      MOV ECX,EAX
004547ec  e88f5bfbff                CALL 0x0040a380
004547f1  c78578ffffff6f030000      MOV dword ptr [EBP + 0xffffff78],0x36f
004547fb  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00454801  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00454807  e8741f5000                CALL 0x00956780
0045480c  83ec08                    SUB ESP,0x8
0045480f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00454815  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045481d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454824  6a00                      PUSH 0x0
00454826  6a02                      PUSH 0x2
00454828  51                        PUSH ECX
00454829  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454830  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00454836  e8f5934d00                CALL 0x0092dc30
0045483b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00454842  0f8497180000              JZ 0x004560df
00454848  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045484e  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00454854  c78578ffffff6e030000      MOV dword ptr [EBP + 0xffffff78],0x36e
0045485e  e81d1f5000                CALL 0x00956780
00454863  83ec08                    SUB ESP,0x8
00454866  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045486c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00454874  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045487b  6a00                      PUSH 0x0
0045487d  6a02                      PUSH 0x2
0045487f  51                        PUSH ECX
00454880  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454887  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
0045488d  e89e934d00                CALL 0x0092dc30
00454892  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
00454898  8d87c0030000              LEA EAX,[EDI + 0x3c0]
0045489e  85f6                      TEST ESI,ESI
004548a0  744d                      JZ 0x004548ef
004548a2  8bf8                      MOV EDI,EAX
004548a4  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
004548aa  8d8ecc030000              LEA ECX,[ESI + 0x3cc]
004548b0  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
004548b6  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004548bc  50                        PUSH EAX
004548bd  89bd74ffffff              MOV dword ptr [EBP + 0xffffff74],EDI
004548c3  e848a90700                CALL 0x004cf210
004548c8  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
004548ce  8907                      MOV dword ptr [EDI],EAX
004548d0  85c0                      TEST EAX,EAX
004548d2  7408                      JZ 0x004548dc
004548d4  57                        PUSH EDI
004548d5  8bc8                      MOV ECX,EAX
004548d7  e814940700                CALL 0x004cdcf0
004548dc  8b06                      MOV EAX,dword ptr [ESI]
004548de  8bce                      MOV ECX,ESI
004548e0  ff5028                    CALL dword ptr [EAX + 0x28]
004548e3  8b37                      MOV ESI,dword ptr [EDI]
004548e5  85f6                      TEST ESI,ESI
004548e7  75bb                      JNZ 0x004548a4
004548e9  8bbd44ffffff              MOV EDI,dword ptr [EBP + 0xffffff44]
004548ef  a17816c700                MOV EAX,[0x00c71678]
004548f4  6a00                      PUSH 0x0
004548f6  6a00                      PUSH 0x0
004548f8  6aff                      PUSH -0x1
004548fa  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00454900  8d45b0                    LEA EAX,[EBP + -0x50]
00454903  6aff                      PUSH -0x1
00454905  ff7728                    PUSH dword ptr [EDI + 0x28]
00454908  81c118120000              ADD ECX,0x1218
0045490e  50                        PUSH EAX
0045490f  e84c66fcff                CALL 0x0041af60
00454914  33c0                      XOR EAX,EAX
00454916  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0045491d  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
00454923  3945bc                    CMP dword ptr [EBP + -0x44],EAX
00454926  765b                      JBE 0x00454983
00454928  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
0045492b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00454930  8b0481                    MOV EAX,dword ptr [ECX + EAX*0x4]
00454933  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
00454939  3bc7                      CMP EAX,EDI
0045493b  7434                      JZ 0x00454971
0045493d  83782c00                  CMP dword ptr [EAX + 0x2c],0x0
00454941  742e                      JZ 0x00454971
00454943  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
00454949  7526                      JNZ 0x00454971
0045494b  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
00454952  751d                      JNZ 0x00454971
00454954  8b00                      MOV EAX,dword ptr [EAX]
00454956  8d4dc4                    LEA ECX,[EBP + -0x3c]
00454959  57                        PUSH EDI
0045495a  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
0045495d  e8aec9fdff                CALL 0x00431310
00454962  8b8d44ffffff              MOV ECX,dword ptr [EBP + 0xffffff44]
00454968  8d45c4                    LEA EAX,[EBP + -0x3c]
0045496b  50                        PUSH EAX
0045496c  ffd6                      CALL ESI
0045496e  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
00454971  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
00454977  40                        INC EAX
00454978  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0045497e  3b45bc                    CMP EAX,dword ptr [EBP + -0x44]
00454981  72ad                      JC 0x00454930
00454983  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0045498a  807db000                  CMP byte ptr [EBP + -0x50],0x0
0045498e  0f854b170000              JNZ 0x004560df
00454994  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
0045499b  b101                      MOV CL,0x1
0045499d  8b55b4                    MOV EDX,dword ptr [EBP + -0x4c]
004549a0  6a00                      PUSH 0x0
004549a2  6a00                      PUSH 0x0
004549a4  e807ff6000                CALL 0x00a648b0
004549a9  83c408                    ADD ESP,0x8
004549ac  e92e170000                JMP 0x004560df
004549b1  83f801                    CMP EAX,0x1
004549b4  0f85a7140000              JNZ 0x00455e61
004549ba  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004549c1  0f85c7000000              JNZ 0x00454a8e
004549c7  50                        PUSH EAX
004549c8  68bcd6b100                PUSH 0xb1d6bc
004549cd  8d4f48                    LEA ECX,[EDI + 0x48]
004549d0  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
004549d7  8887b0030000              MOV byte ptr [EDI + 0x3b0],AL
004549dd  e8ee5bfbff                CALL 0x0040a5d0
004549e2  84c0                      TEST AL,AL
004549e4  740f                      JZ 0x004549f5
004549e6  8d4f78                    LEA ECX,[EDI + 0x78]
004549e9  e8c257fbff                CALL 0x0040a1b0
004549ee  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004549f5  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004549f8  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00454a02  a801                      TEST AL,0x1
00454a04  7407                      JZ 0x00454a0d
00454a06  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
00454a0d  83f801                    CMP EAX,0x1
00454a10  7244                      JC 0x00454a56
00454a12  83f803                    CMP EAX,0x3
00454a15  730c                      JNC 0x00454a23
00454a17  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00454a21  eb3d                      JMP 0x00454a60
00454a23  83f805                    CMP EAX,0x5
00454a26  730c                      JNC 0x00454a34
00454a28  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00454a32  eb2c                      JMP 0x00454a60
00454a34  83f807                    CMP EAX,0x7
00454a37  730c                      JNC 0x00454a45
00454a39  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00454a43  eb1b                      JMP 0x00454a60
00454a45  83f809                    CMP EAX,0x9
00454a48  730c                      JNC 0x00454a56
00454a4a  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
00454a54  eb0a                      JMP 0x00454a60
00454a56  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00454a60  e8fba42900                CALL 0x006eef60
00454a65  a801                      TEST AL,0x1
00454a67  740a                      JZ 0x00454a73
00454a69  c787c40b00001e000000      MOV dword ptr [EDI + 0xbc4],0x1e
00454a73  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00454a79  818f6801000000000100      OR dword ptr [EDI + 0x168],0x10000
00454a83  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00454a89  e973160000                JMP 0x00456101
00454a8e  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00454a94  85c0                      TEST EAX,EAX
00454a96  750c                      JNZ 0x00454aa4
00454a98  8b07                      MOV EAX,dword ptr [EDI]
00454a9a  8bcf                      MOV ECX,EDI
00454a9c  ff5028                    CALL dword ptr [EAX + 0x28]
00454a9f  e95d160000                JMP 0x00456101
00454aa4  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00454aac  f30f108880030000          MOVSS XMM1,dword ptr [EAX + 0x380]
00454ab4  0f2fc8                    COMISS XMM1,XMM0
00454ab7  760a                      JBE 0x00454ac3
00454ab9  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
00454ac1  eb08                      JMP 0x00454acb
00454ac3  f30f118f80030000          MOVSS dword ptr [EDI + 0x380],XMM1
00454acb  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00454ad2  0f84f6000000              JZ 0x00454bce
00454ad8  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00454ade  8d4d80                    LEA ECX,[EBP + -0x80]
00454ae1  8b06                      MOV EAX,dword ptr [ESI]
00454ae3  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
00454ae6  e88511feff                CALL 0x00435c70
00454aeb  50                        PUSH EAX
00454aec  8bce                      MOV ECX,ESI
00454aee  ffd2                      CALL EDX
00454af0  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00454af3  83e807                    SUB EAX,0x7
00454af6  83f801                    CMP EAX,0x1
00454af9  0f87c6000000              JA 0x00454bc5
00454aff  8d4f48                    LEA ECX,[EDI + 0x48]
00454b02  68b0d6b100                PUSH 0xb1d6b0
00454b07  e88465fbff                CALL 0x0040b090
00454b0c  84c0                      TEST AL,AL
00454b0e  0f85b1000000              JNZ 0x00454bc5
00454b14  83bfc80b000000            CMP dword ptr [EDI + 0xbc8],0x0
00454b1b  0f85a4000000              JNZ 0x00454bc5
00454b21  e83aa42900                CALL 0x006eef60
00454b26  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00454b2c  50                        PUSH EAX
00454b2d  6a00                      PUSH 0x0
00454b2f  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00454b35  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00454b3b  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
00454b45  50                        PUSH EAX
00454b46  8d873c030000              LEA EAX,[EDI + 0x33c]
00454b4c  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
00454b56  50                        PUSH EAX
00454b57  6a00                      PUSH 0x0
00454b59  6894010000                PUSH 0x194
00454b5e  e8bd3ffdff                CALL 0x00428b20
00454b63  8bc8                      MOV ECX,EAX
00454b65  f30f108184030000          MOVSS XMM0,dword ptr [ECX + 0x384]
00454b6d  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
00454b73  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00454b7b  83a168010000fb            AND dword ptr [ECX + 0x168],0xfffffffb
00454b82  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
00454b88  8b01                      MOV EAX,dword ptr [ECX]
00454b8a  f30f118184030000          MOVSS dword ptr [ECX + 0x384],XMM0
00454b92  f30f118180030000          MOVSS dword ptr [ECX + 0x380],XMM0
00454b9a  c7811004000000000000      MOV dword ptr [ECX + 0x410],0x0
00454ba4  c781640b000003000000      MOV dword ptr [ECX + 0xb64],0x3
00454bae  c7818401000003000000      MOV dword ptr [ECX + 0x184],0x3
00454bb8  c781c00b00002d000000      MOV dword ptr [ECX + 0xbc0],0x2d
00454bc2  ff500c                    CALL dword ptr [EAX + 0xc]
00454bc5  8bb570ffffff              MOV ESI,dword ptr [EBP + 0xffffff70]
00454bcb  0f57d2                    XORPS XMM2,XMM2
00454bce  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00454bd4  83c0fd                    ADD EAX,-0x3
00454bd7  83f808                    CMP EAX,0x8
00454bda  0f87bc110000              JA 0x00455d9c
00454be0  ff248544614500            JMP dword ptr [EAX*0x4 + 0x456144]
00454be7  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00454bee  c787580300000000c8c2      MOV dword ptr [EDI + 0x358],0xc2c80000
00454bf8  7536                      JNZ 0x00454c30
00454bfa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00454bfe  740d                      JZ 0x00454c0d
00454c00  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00454c07  0f858f110000              JNZ 0x00455d9c
00454c0d  c787880300000000803f      MOV dword ptr [EDI + 0x388],0x3f800000
00454c17  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00454c21  c7878801000003000000      MOV dword ptr [EDI + 0x188],0x3
00454c2b  e96c110000                JMP 0x00455d9c
00454c30  8d45a8                    LEA EAX,[EBP + -0x58]
00454c33  50                        PUSH EAX
00454c34  8d4f78                    LEA ECX,[EDI + 0x78]
00454c37  e8b4dfffff                CALL 0x00452bf0
00454c3c  83781410                  CMP dword ptr [EAX + 0x14],0x10
00454c40  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
00454c43  7202                      JC 0x00454c47
00454c45  8b00                      MOV EAX,dword ptr [EAX]
00454c47  6a0d                      PUSH 0xd
00454c49  68bcd6b100                PUSH 0xb1d6bc
00454c4e  8bc8                      MOV ECX,EAX
00454c50  e88b7efbff                CALL 0x0040cae0
00454c55  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
00454c58  83c408                    ADD ESP,0x8
00454c5b  88855fffffff              MOV byte ptr [EBP + 0xffffff5f],AL
00454c61  83fa10                    CMP EDX,0x10
00454c64  7234                      JC 0x00454c9a
00454c66  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
00454c69  42                        INC EDX
00454c6a  8bc1                      MOV EAX,ECX
00454c6c  81fa00100000              CMP EDX,0x1000
00454c72  7216                      JC 0x00454c8a
00454c74  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00454c77  83c223                    ADD EDX,0x23
00454c7a  2bc1                      SUB EAX,ECX
00454c7c  83c0fc                    ADD EAX,-0x4
00454c7f  83f81f                    CMP EAX,0x1f
00454c82  7606                      JBE 0x00454c8a
00454c84  ff159488b100              CALL dword ptr [0x00b18894]
00454c8a  52                        PUSH EDX
00454c8b  51                        PUSH ECX
00454c8c  e8cba46900                CALL 0x00aef15c
00454c91  8a855fffffff              MOV AL,byte ptr [EBP + 0xffffff5f]
00454c97  83c408                    ADD ESP,0x8
00454c9a  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00454ca1  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
00454ca8  c645a800                  MOV byte ptr [EBP + -0x58],0x0
00454cac  84c0                      TEST AL,AL
00454cae  0f8413010000              JZ 0x00454dc7
00454cb4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00454cba  33f6                      XOR ESI,ESI
00454cbc  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00454cc2  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00454cc8  c1f802                    SAR EAX,0x2
00454ccb  85c0                      TEST EAX,EAX
00454ccd  742a                      JZ 0x00454cf9
00454ccf  90                        NOP
00454cd0  56                        PUSH ESI
00454cd1  e89a2bfcff                CALL 0x00417870
00454cd6  8bd7                      MOV EDX,EDI
00454cd8  8bc8                      MOV ECX,EAX
00454cda  e881dfffff                CALL 0x00452c60
00454cdf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00454ce5  46                        INC ESI
00454ce6  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00454cec  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00454cf2  c1f802                    SAR EAX,0x2
00454cf5  3bf0                      CMP ESI,EAX
00454cf7  72d7                      JC 0x00454cd0
00454cf9  8bcf                      MOV ECX,EDI
00454cfb  e840e0ffff                CALL 0x00452d40
00454d00  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
00454d06  03d0                      ADD EDX,EAX
00454d08  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
00454d0e  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00454d14  038570ffffff              ADD EAX,dword ptr [EBP + 0xffffff70]
00454d1a  898710040000              MOV dword ptr [EDI + 0x410],EAX
00454d20  83f81e                    CMP EAX,0x1e
00454d23  0f8e73100000              JLE 0x00455d9c
00454d29  80bd6fffffff00            CMP byte ptr [EBP + 0xffffff6f],0x0
00454d30  0f8566100000              JNZ 0x00455d9c
00454d36  83fa01                    CMP EDX,0x1
00454d39  750c                      JNZ 0x00454d47
00454d3b  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00454d45  eb1d                      JMP 0x00454d64
00454d47  7e0c                      JLE 0x00454d55
00454d49  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00454d53  eb0f                      JMP 0x00454d64
00454d55  6a00                      PUSH 0x0
00454d57  68e4d6b100                PUSH 0xb1d6e4
00454d5c  8d4f48                    LEA ECX,[EDI + 0x48]
00454d5f  e81c56fbff                CALL 0x0040a380
00454d64  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00454d6a  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00454d70  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00454d7a  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00454d84  c78578ffffff75030000      MOV dword ptr [EBP + 0xffffff78],0x375
00454d8e  e8ed195000                CALL 0x00956780
00454d93  83ec08                    SUB ESP,0x8
00454d96  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00454d9e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454da5  6a00                      PUSH 0x0
00454da7  6a02                      PUSH 0x2
00454da9  51                        PUSH ECX
00454daa  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454db1  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00454db7  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00454dbd  e86e8e4d00                CALL 0x0092dc30
00454dc2  e9d50f0000                JMP 0x00455d9c
00454dc7  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00454dd1  e9b00f0000                JMP 0x00455d86
00454dd6  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00454ddc  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
00454de6  85c0                      TEST EAX,EAX
00454de8  0f85fc000000              JNZ 0x00454eea
00454dee  8d4f48                    LEA ECX,[EDI + 0x48]
00454df1  39477c                    CMP dword ptr [EDI + 0x7c],EAX
00454df4  740c                      JZ 0x00454e02
00454df6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00454dfc  0f859a0f0000              JNZ 0x00455d9c
00454e02  29b7c40b0000              SUB dword ptr [EDI + 0xbc4],ESI
00454e08  0f898e0f0000              JNS 0x00455d9c
00454e0e  6a00                      PUSH 0x0
00454e10  68d8d6b100                PUSH 0xb1d6d8
00454e15  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
00454e1c  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00454e26  c787880300000000803f      MOV dword ptr [EDI + 0x388],0x3f800000
00454e30  e84b55fbff                CALL 0x0040a380
00454e35  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00454e3b  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00454e41  c78578ffffff70030000      MOV dword ptr [EBP + 0xffffff78],0x370
00454e4b  e830195000                CALL 0x00956780
00454e50  83ec08                    SUB ESP,0x8
00454e53  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00454e5b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454e62  6a00                      PUSH 0x0
00454e64  6a02                      PUSH 0x2
00454e66  51                        PUSH ECX
00454e67  c704240000803f            MOV dword ptr [ESP],0x3f800000
00454e6e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00454e74  ffb578ffffff              PUSH dword ptr [EBP + 0xffffff78]
00454e7a  e8b18d4d00                CALL 0x0092dc30
00454e7f  51                        PUSH ECX
00454e80  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00454e86  8d873c030000              LEA EAX,[EDI + 0x33c]
00454e8c  c704247f96184b            MOV dword ptr [ESP],0x4b18967f
00454e93  50                        PUSH EAX
00454e94  e8b7e92a00                CALL 0x00703850
00454e99  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00454e9f  8db7c4030000              LEA ESI,[EDI + 0x3c4]
00454ea5  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
00454eab  85c9                      TEST ECX,ECX
00454ead  741e                      JZ 0x00454ecd
00454eaf  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00454eb5  89b544ffffff              MOV dword ptr [EBP + 0xffffff44],ESI
00454ebb  50                        PUSH EAX
00454ebc  81c1cc030000              ADD ECX,0x3cc
00454ec2  e849a30700                CALL 0x004cf210
00454ec7  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
00454ecd  8906                      MOV dword ptr [ESI],EAX
00454ecf  85c0                      TEST EAX,EAX
00454ed1  7408                      JZ 0x00454edb
00454ed3  56                        PUSH ESI
00454ed4  8bc8                      MOV ECX,EAX
00454ed6  e8158e0700                CALL 0x004cdcf0
00454edb  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00454ee5  e9b20e0000                JMP 0x00455d9c
00454eea  0f8eac0e0000              JLE 0x00455d9c
00454ef0  83f802                    CMP EAX,0x2
00454ef3  0f8574000000              JNZ 0x00454f6d
00454ef9  8b87c4030000              MOV EAX,dword ptr [EDI + 0x3c4]
00454eff  85c0                      TEST EAX,EAX
00454f01  7430                      JZ 0x00454f33
00454f03  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00454f0b  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00454f13  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00454f1b  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00454f23  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00454f2b  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00454f33  8d45b8                    LEA EAX,[EBP + -0x48]
00454f36  50                        PUSH EAX
00454f37  8d8f60030000              LEA ECX,[EDI + 0x360]
00454f3d  e8eeb05b00                CALL 0x00a10030
00454f42  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00454f46  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00454f4b  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
00454f53  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00454f5b  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00454f63  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00454f6b  eb28                      JMP 0x00454f95
00454f6d  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00454f75  f30f59c2                  MULSS XMM0,XMM2
00454f79  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00454f81  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00454f89  f30f59c2                  MULSS XMM0,XMM2
00454f8d  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00454f95  8d7748                    LEA ESI,[EDI + 0x48]
00454f98  68fcd6b100                PUSH 0xb1d6fc
00454f9d  8bce                      MOV ECX,ESI
00454f9f  e88c60fbff                CALL 0x0040b030
00454fa4  84c0                      TEST AL,AL
00454fa6  740c                      JZ 0x00454fb4
00454fa8  c7871004000002000000      MOV dword ptr [EDI + 0x410],0x2
00454fb2  eb1a                      JMP 0x00454fce
00454fb4  68f4d6b100                PUSH 0xb1d6f4
00454fb9  8bce                      MOV ECX,ESI
00454fbb  e87060fbff                CALL 0x0040b030
00454fc0  84c0                      TEST AL,AL
00454fc2  740a                      JZ 0x00454fce
00454fc4  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00454fce  6810d7b100                PUSH 0xb1d710
00454fd3  8bce                      MOV ECX,ESI
00454fd5  e85660fbff                CALL 0x0040b030
00454fda  84c0                      TEST AL,AL
00454fdc  0f84db020000              JZ 0x004552bd
00454fe2  6810d7b100                PUSH 0xb1d710
00454fe7  8d45c4                    LEA EAX,[EBP + -0x3c]
00454fea  8bcf                      MOV ECX,EDI
00454fec  50                        PUSH EAX
00454fed  e82e1c2600                CALL 0x006b6c20
00454ff2  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00454ff7  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00454ffe  0f861b020000              JBE 0x0045521f
00455004  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045500a  8b8144650200              MOV EAX,dword ptr [ECX + 0x26544]
00455010  c1e805                    SHR EAX,0x5
00455013  a801                      TEST AL,0x1
00455015  7426                      JZ 0x0045503d
00455017  6a01                      PUSH 0x1
00455019  8bcf                      MOV ECX,EDI
0045501b  e8f00e2600                CALL 0x006b5f10
00455020  8d4dc4                    LEA ECX,[EBP + -0x3c]
00455023  51                        PUSH ECX
00455024  8bc8                      MOV ECX,EAX
00455026  c7400401000000            MOV dword ptr [EAX + 0x4],0x1
0045502d  e8be9efdff                CALL 0x0042eef0
00455032  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00455038  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0045503d  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
00455042  8d45c4                    LEA EAX,[EBP + -0x3c]
00455045  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0045504b  f30f58d8                  ADDSS XMM3,XMM0
0045504f  6aff                      PUSH -0x1
00455051  50                        PUSH EAX
00455052  8d45b0                    LEA EAX,[EBP + -0x50]
00455055  81c118120000              ADD ECX,0x1218
0045505b  50                        PUSH EAX
0045505c  e82f57fcff                CALL 0x0041a790
00455061  33f6                      XOR ESI,ESI
00455063  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0045506a  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
00455070  3975bc                    CMP dword ptr [EBP + -0x44],ESI
00455073  0f8694010000              JBE 0x0045520d
00455079  0f1f8000000000            NOP dword ptr [EAX]
00455080  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
00455083  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
00455086  89b558ffffff              MOV dword ptr [EBP + 0xffffff58],ESI
0045508c  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
00455093  0f845e010000              JZ 0x004551f7
00455099  83be8401000004            CMP dword ptr [ESI + 0x184],0x4
004550a0  0f8451010000              JZ 0x004551f7
004550a6  3bf7                      CMP ESI,EDI
004550a8  0f8449010000              JZ 0x004551f7
004550ae  6840b6c700                PUSH 0xc7b640
004550b3  8d4580                    LEA EAX,[EBP + -0x80]
004550b6  8bce                      MOV ECX,ESI
004550b8  50                        PUSH EAX
004550b9  e8e24a2500                CALL 0x006a9ba0
004550be  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
004550c4  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
004550ce  50                        PUSH EAX
004550cf  8d5580                    LEA EDX,[EBP + -0x80]
004550d2  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004550dc  8d4dc4                    LEA ECX,[EBP + -0x3c]
004550df  e88c034f00                CALL 0x00945470
004550e4  83c404                    ADD ESP,0x4
004550e7  84c0                      TEST AL,AL
004550e9  0f8408010000              JZ 0x004551f7
004550ef  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
004550f7  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004550ff  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
00455107  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0045510f  0f28c1                    MOVAPS XMM0,XMM1
00455112  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
0045511a  f30f59c1                  MULSS XMM0,XMM1
0045511e  0f28ca                    MOVAPS XMM1,XMM2
00455121  f30f119578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM2
00455129  f30f59ca                  MULSS XMM1,XMM2
0045512d  f30f58c1                  ADDSS XMM0,XMM1
00455131  e81a09feff                CALL 0x00435a50
00455136  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0045513d  7621                      JBE 0x00455160
0045513f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00455147  f30f5ec8                  DIVSS XMM1,XMM0
0045514b  0f28c1                    MOVAPS XMM0,XMM1
0045514e  f30f598d68ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff68]
00455156  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
0045515e  eb10                      JMP 0x00455170
00455160  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
00455168  f30f108d68ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff68]
00455170  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00455178  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00455180  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
00455188  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
00455190  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00455198  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004551a0  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004551a3  83f801                    CMP EAX,0x1
004551a6  7427                      JZ 0x004551cf
004551a8  83f803                    CMP EAX,0x3
004551ab  7422                      JZ 0x004551cf
004551ad  8b06                      MOV EAX,dword ptr [ESI]
004551af  8d4d80                    LEA ECX,[EBP + -0x80]
004551b2  57                        PUSH EDI
004551b3  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
004551b6  e855c1fdff                CALL 0x00431310
004551bb  6a1e                      PUSH 0x1e
004551bd  8d4580                    LEA EAX,[EBP + -0x80]
004551c0  50                        PUSH EAX
004551c1  6a00                      PUSH 0x0
004551c3  6a00                      PUSH 0x0
004551c5  51                        PUSH ECX
004551c6  c704240000c841            MOV dword ptr [ESP],0x41c80000
004551cd  eb20                      JMP 0x004551ef
004551cf  8b06                      MOV EAX,dword ptr [ESI]
004551d1  8d4d80                    LEA ECX,[EBP + -0x80]
004551d4  57                        PUSH EDI
004551d5  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
004551d8  e833c1fdff                CALL 0x00431310
004551dd  6a1e                      PUSH 0x1e
004551df  8d4580                    LEA EAX,[EBP + -0x80]
004551e2  50                        PUSH EAX
004551e3  6a00                      PUSH 0x0
004551e5  6a00                      PUSH 0x0
004551e7  51                        PUSH ECX
004551e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004551ef  8b8d58ffffff              MOV ECX,dword ptr [EBP + 0xffffff58]
004551f5  ffd6                      CALL ESI
004551f7  8bb570ffffff              MOV ESI,dword ptr [EBP + 0xffffff70]
004551fd  46                        INC ESI
004551fe  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
00455204  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
00455207  0f8273feffff              JC 0x00455080
0045520d  8d4db0                    LEA ECX,[EBP + -0x50]
00455210  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00455217  e89423fcff                CALL 0x004175b0
0045521c  8d7748                    LEA ESI,[EDI + 0x48]
0045521f  0f280520bdba00            MOVAPS XMM0,xmmword ptr [0x00babd20]
00455226  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0045522c  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00455234  8bcf                      MOV ECX,EDI
00455236  50                        PUSH EAX
00455237  0f11857cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM0
0045523e  8d45c4                    LEA EAX,[EBP + -0x3c]
00455241  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
00455248  0f2805b0c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac5b0]
0045524f  50                        PUSH EAX
00455250  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
00455254  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
0045525b  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
00455262  e8e9122600                CALL 0x006b6550
00455267  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0045526f  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00455275  50                        PUSH EAX
00455276  8d45c4                    LEA EAX,[EBP + -0x3c]
00455279  c78560ffffff00007042      MOV dword ptr [EBP + 0xffffff60],0x42700000
00455283  50                        PUSH EAX
00455284  c78564ffffff00002042      MOV dword ptr [EBP + 0xffffff64],0x42200000
0045528e  e82d162600                CALL 0x006b68c0
00455293  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00455299  6a06                      PUSH 0x6
0045529b  e8d0e32a00                CALL 0x00703670
004552a0  51                        PUSH ECX
004552a1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004552a8  6a00                      PUSH 0x0
004552aa  6a02                      PUSH 0x2
004552ac  51                        PUSH ECX
004552ad  c704240000803f            MOV dword ptr [ESP],0x3f800000
004552b4  8bcf                      MOV ECX,EDI
004552b6  6a30                      PUSH 0x30
004552b8  e8e3182800                CALL 0x006d6ba0
004552bd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004552c1  740d                      JZ 0x004552d0
004552c3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004552ca  0f85cc0a0000              JNZ 0x00455d9c
004552d0  6a00                      PUSH 0x0
004552d2  68e4d6b100                PUSH 0xb1d6e4
004552d7  8bce                      MOV ECX,ESI
004552d9  e8a250fbff                CALL 0x0040a380
004552de  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004552e6  51                        PUSH ECX
004552e7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004552ee  6a00                      PUSH 0x0
004552f0  6a02                      PUSH 0x2
004552f2  6875030000                PUSH 0x375
004552f7  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00455301  e8da155000                CALL 0x009568e0
00455306  e9910a0000                JMP 0x00455d9c
0045530b  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00455311  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
0045531b  85c0                      TEST EAX,EAX
0045531d  0f859b010000              JNZ 0x004554be
00455323  8d4f48                    LEA ECX,[EDI + 0x48]
00455326  39477c                    CMP dword ptr [EDI + 0x7c],EAX
00455329  740c                      JZ 0x00455337
0045532b  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00455331  0f85650a0000              JNZ 0x00455d9c
00455337  6a00                      PUSH 0x0
00455339  6804d7b100                PUSH 0xb1d704
0045533e  c787880300000000803f      MOV dword ptr [EDI + 0x388],0x3f800000
00455348  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0045534f  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00455359  e82250fbff                CALL 0x0040a380
0045535e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455366  51                        PUSH ECX
00455367  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045536e  6a00                      PUSH 0x0
00455370  6a02                      PUSH 0x2
00455372  6870030000                PUSH 0x370
00455377  e864155000                CALL 0x009568e0
0045537c  ff8710040000              INC dword ptr [EDI + 0x410]
00455382  0f57c0                    XORPS XMM0,XMM0
00455385  be03000000                MOV ESI,0x3
0045538a  660f1345b0                MOVLPD qword ptr [EBP + -0x50],XMM0
0045538f  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
00455395  660f1345b8                MOVLPD qword ptr [EBP + -0x48],XMM0
0045539a  e8c19b2900                CALL 0x006eef60
0045539f  33d2                      XOR EDX,EDX
004553a1  b964000000                MOV ECX,0x64
004553a6  f7f1                      DIV ECX
004553a8  83fa0a                    CMP EDX,0xa
004553ab  0f83ba000000              JNC 0x0045546b
004553b1  be04000000                MOV ESI,0x4
004553b6  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
004553bc  0f1045b0                  MOVUPS XMM0,xmmword ptr [EBP + -0x50]
004553c0  0f1145b0                  MOVUPS xmmword ptr [EBP + -0x50],XMM0
004553c4  e8979b2900                CALL 0x006eef60
004553c9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004553cf  50                        PUSH EAX
004553d0  6a00                      PUSH 0x0
004553d2  57                        PUSH EDI
004553d3  6840b6c700                PUSH 0xc7b640
004553d8  8d873c030000              LEA EAX,[EDI + 0x33c]
004553de  50                        PUSH EAX
004553df  56                        PUSH ESI
004553e0  6a04                      PUSH 0x4
004553e2  e83937fdff                CALL 0x00428b20
004553e7  8bf0                      MOV ESI,EAX
004553e9  57                        PUSH EDI
004553ea  8bce                      MOV ECX,ESI
004553ec  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
004553f3  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
004553fd  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
00455407  e8943e2500                CALL 0x006a92a0
0045540c  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00455412  0f1045b0                  MOVUPS XMM0,xmmword ptr [EBP + -0x50]
00455416  838e6801000020            OR dword ptr [ESI + 0x168],0x20
0045541d  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00455423  8b8570ffffff              MOV EAX,dword ptr [EBP + 0xffffff70]
00455429  c6866304000001            MOV byte ptr [ESI + 0x463],0x1
00455430  0f118638040000            MOVUPS xmmword ptr [ESI + 0x438],XMM0
00455437  83f803                    CMP EAX,0x3
0045543a  7405                      JZ 0x00455441
0045543c  83f804                    CMP EAX,0x4
0045543f  751d                      JNZ 0x0045545e
00455441  e81a9b2900                CALL 0x006eef60
00455446  33d2                      XOR EDX,EDX
00455448  b90a000000                MOV ECX,0xa
0045544d  f7f1                      DIV ECX
0045544f  83c223                    ADD EDX,0x23
00455452  899610040000              MOV dword ptr [ESI + 0x410],EDX
00455458  899614040000              MOV dword ptr [ESI + 0x414],EDX
0045545e  56                        PUSH ESI
0045545f  8bcf                      MOV ECX,EDI
00455461  e8bab72700                CALL 0x006d0c20
00455466  e931090000                JMP 0x00455d9c
0045546b  83fa1e                    CMP EDX,0x1e
0045546e  0f8348ffffff              JNC 0x004553bc
00455474  a17816c700                MOV EAX,[0x00c71678]
00455479  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045547f  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
00455487  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0045548e  7617                      JBE 0x004554a7
00455490  0f1005904bc300            MOVUPS XMM0,xmmword ptr [0x00c34b90]
00455497  be10000000                MOV ESI,0x10
0045549c  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
004554a2  e919ffffff                JMP 0x004553c0
004554a7  0f1005004cc300            MOVUPS XMM0,xmmword ptr [0x00c34c00]
004554ae  be08000000                MOV ESI,0x8
004554b3  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
004554b9  e902ffffff                JMP 0x004553c0
004554be  83f801                    CMP EAX,0x1
004554c1  0f85d5080000              JNZ 0x00455d9c
004554c7  8d7748                    LEA ESI,[EDI + 0x48]
004554ca  68dcd2b100                PUSH 0xb1d2dc
004554cf  8bce                      MOV ECX,ESI
004554d1  e85a5bfbff                CALL 0x0040b030
004554d6  84c0                      TEST AL,AL
004554d8  0f847b010000              JZ 0x00455659
004554de  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
004554e4  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
004554ea  85c0                      TEST EAX,EAX
004554ec  0f8447010000              JZ 0x00455639
004554f2  83782804                  CMP dword ptr [EAX + 0x28],0x4
004554f6  0f853d010000              JNZ 0x00455639
004554fc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00455502  8db73c030000              LEA ESI,[EDI + 0x33c]
00455508  56                        PUSH ESI
00455509  e842e42a00                CALL 0x00703950
0045550e  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
00455514  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0045551c  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00455524  8d45b8                    LEA EAX,[EBP + -0x48]
00455527  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0045552b  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00455530  50                        PUSH EAX
00455531  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
00455539  f30f118d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM1
00455541  e8eaaa5b00                CALL 0x00a10030
00455546  57                        PUSH EDI
00455547  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0045554b  f30f591554a8ba00          MULSS XMM2,dword ptr [0x00baa854]
00455553  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00455558  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
00455560  0f28c2                    MOVAPS XMM0,XMM2
00455563  f30f11954cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM2
0045556b  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00455573  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
0045557b  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0045557f  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
00455587  0f28c1                    MOVAPS XMM0,XMM1
0045558a  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0045558f  8bb544ffffff              MOV ESI,dword ptr [EBP + 0xffffff44]
00455595  8bce                      MOV ECX,ESI
00455597  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0045559f  e8fc3c2500                CALL 0x006a92a0
004555a4  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
004555ac  8bce                      MOV ECX,ESI
004555ae  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004555b4  83a668010000df            AND dword ptr [ESI + 0x168],0xffffffdf
004555bb  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
004555c3  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
004555cb  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
004555d3  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
004555db  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004555e1  8b06                      MOV EAX,dword ptr [ESI]
004555e3  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004555eb  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004555f3  c7868801000004000000      MOV dword ptr [ESI + 0x188],0x4
004555fd  c6867101000001            MOV byte ptr [ESI + 0x171],0x1
00455604  c7861c040000000080c0      MOV dword ptr [ESI + 0x41c],0xc0800000
0045560e  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00455618  c786500300000000c0c1      MOV dword ptr [ESI + 0x350],0xc1c00000
00455622  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
0045562a  ff500c                    CALL dword ptr [EAX + 0xc]
0045562d  6a00                      PUSH 0x0
0045562f  8bcf                      MOV ECX,EDI
00455631  e8eab52700                CALL 0x006d0c20
00455636  8d7748                    LEA ESI,[EDI + 0x48]
00455639  51                        PUSH ECX
0045563a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455641  6a00                      PUSH 0x0
00455643  6a02                      PUSH 0x2
00455645  51                        PUSH ECX
00455646  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045564d  8bcf                      MOV ECX,EDI
0045564f  68fc000000                PUSH 0xfc
00455654  e847152800                CALL 0x006d6ba0
00455659  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045565d  740d                      JZ 0x0045566c
0045565f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00455666  0f8530070000              JNZ 0x00455d9c
0045566c  6a00                      PUSH 0x0
0045566e  68e4d6b100                PUSH 0xb1d6e4
00455673  8bce                      MOV ECX,ESI
00455675  e8064dfbff                CALL 0x0040a380
0045567a  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455682  51                        PUSH ECX
00455683  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045568a  6a00                      PUSH 0x0
0045568c  6a02                      PUSH 0x2
0045568e  6875030000                PUSH 0x375
00455693  e848125000                CALL 0x009568e0
00455698  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
004556a2  e9f5060000                JMP 0x00455d9c
004556a7  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004556ad  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
004556b7  85c0                      TEST EAX,EAX
004556b9  7564                      JNZ 0x0045571f
004556bb  8d4f48                    LEA ECX,[EDI + 0x48]
004556be  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004556c1  740c                      JZ 0x004556cf
004556c3  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004556c9  0f85cd060000              JNZ 0x00455d9c
004556cf  6a00                      PUSH 0x0
004556d1  6828d7b100                PUSH 0xb1d728
004556d6  c787880300000000803f      MOV dword ptr [EDI + 0x388],0x3f800000
004556e0  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004556ea  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004556f1  e88a4cfbff                CALL 0x0040a380
004556f6  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004556fe  51                        PUSH ECX
004556ff  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455706  6a00                      PUSH 0x0
00455708  6a02                      PUSH 0x2
0045570a  6870030000                PUSH 0x370
0045570f  e8cc115000                CALL 0x009568e0
00455714  ff8710040000              INC dword ptr [EDI + 0x410]
0045571a  e97d060000                JMP 0x00455d9c
0045571f  83f801                    CMP EAX,0x1
00455722  0f8574060000              JNZ 0x00455d9c
00455728  8d7748                    LEA ESI,[EDI + 0x48]
0045572b  68dcd2b100                PUSH 0xb1d2dc
00455730  8bce                      MOV ECX,ESI
00455732  e8f958fbff                CALL 0x0040b030
00455737  84c0                      TEST AL,AL
00455739  0f8435030000              JZ 0x00455a74
0045573f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00455745  8db73c030000              LEA ESI,[EDI + 0x33c]
0045574b  56                        PUSH ESI
0045574c  e8ffe12a00                CALL 0x00703950
00455751  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
00455757  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0045575f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00455767  8d45b8                    LEA EAX,[EBP + -0x48]
0045576a  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0045576e  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00455773  50                        PUSH EAX
00455774  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
0045577c  f30f118d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM1
00455784  e8a7a85b00                CALL 0x00a10030
00455789  c78578ffffff03000000      MOV dword ptr [EBP + 0xffffff78],0x3
00455793  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00455797  f30f590d34a8ba00          MULSS XMM1,dword ptr [0x00baa834]
0045579f  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004557a4  f30f591534a8ba00          MULSS XMM2,dword ptr [0x00baa834]
004557ac  0f28c1                    MOVAPS XMM0,XMM1
004557af  f30f118d44ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM1
004557b7  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004557bf  f30f590dbca6ba00          MULSS XMM1,dword ptr [0x00baa6bc]
004557c7  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004557cb  f30f119554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM2
004557d3  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
004557db  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004557e3  0f28c2                    MOVAPS XMM0,XMM2
004557e6  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004557eb  f30f5915bca6ba00          MULSS XMM2,dword ptr [0x00baa6bc]
004557f3  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004557fb  f30f10054caeba00          MOVSS XMM0,dword ptr [0x00baae4c]
00455803  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
0045580b  f30f119568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM2
00455813  e848972900                CALL 0x006eef60
00455818  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
00455820  8bf0                      MOV ESI,EAX
00455822  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0045582a  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
00455832  e8097dfcff                CALL 0x0041d540
00455837  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
0045583f  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
00455847  e8d47cfcff                CALL 0x0041d520
0045584c  f30f109544ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff44]
00455854  f30f599574ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff74]
0045585c  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
00455864  f30f59c8                  MULSS XMM1,XMM0
00455868  f30f5cd1                  SUBSS XMM2,XMM1
0045586c  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
00455874  f30f598d74ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff74]
0045587c  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
00455881  f30f109544ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff44]
00455889  f30f59d0                  MULSS XMM2,XMM0
0045588d  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
00455895  f30f58d1                  ADDSS XMM2,XMM1
00455899  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
0045589e  e89d7cfcff                CALL 0x0041d540
004558a3  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004558ab  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
004558b3  e8687cfcff                CALL 0x0041d520
004558b8  f30f108d68ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff68]
004558c0  8d45e4                    LEA EAX,[EBP + -0x1c]
004558c3  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
004558cb  0f28d8                    MOVAPS XMM3,XMM0
004558ce  f30f599574ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff74]
004558d6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004558dc  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
004558e4  f30f59cb                  MULSS XMM1,XMM3
004558e8  56                        PUSH ESI
004558e9  f30f59c3                  MULSS XMM0,XMM3
004558ed  6a00                      PUSH 0x0
004558ef  f30f5cd1                  SUBSS XMM2,XMM1
004558f3  f30f108d68ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff68]
004558fb  f30f598d74ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff74]
00455903  57                        PUSH EDI
00455904  50                        PUSH EAX
00455905  8d45b8                    LEA EAX,[EBP + -0x48]
00455908  f30f58953cffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff3c]
00455910  f30f58c8                  ADDSS XMM1,XMM0
00455914  50                        PUSH EAX
00455915  6a03                      PUSH 0x3
00455917  6a04                      PUSH 0x4
00455919  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
0045591e  f30f588d64ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff64]
00455926  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0045592b  e8f031fdff                CALL 0x00428b20
00455930  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
00455938  8bf0                      MOV ESI,EAX
0045593a  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
00455942  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00455948  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0045594e  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00455955  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
0045595b  c7863804000000000000      MOV dword ptr [ESI + 0x438],0x0
00455965  c7863c04000000000000      MOV dword ptr [ESI + 0x43c],0x0
0045596f  c7864004000000000000      MOV dword ptr [ESI + 0x440],0x0
00455979  c7864404000000000000      MOV dword ptr [ESI + 0x444],0x0
00455983  8b08                      MOV ECX,dword ptr [EAX]
00455985  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
0045598d  c6866304000001            MOV byte ptr [ESI + 0x463],0x1
00455994  85c9                      TEST ECX,ECX
00455996  741e                      JZ 0x004559b6
00455998  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
0045599e  81c1cc030000              ADD ECX,0x3cc
004559a4  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004559aa  50                        PUSH EAX
004559ab  e860980700                CALL 0x004cf210
004559b0  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004559b6  50                        PUSH EAX
004559b7  8bcf                      MOV ECX,EDI
004559b9  8938                      MOV dword ptr [EAX],EDI
004559bb  e830830700                CALL 0x004cdcf0
004559c0  e89b952900                CALL 0x006eef60
004559c5  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
004559cf  c786500300000000c0c1      MOV dword ptr [ESI + 0x350],0xc1c00000
004559d9  660f6ec0                  MOVD XMM0,EAX
004559dd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004559e1  c1e81f                    SHR EAX,0x1f
004559e4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004559ed  660f5ac8                  CVTPD2PS XMM1,XMM0
004559f1  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
004559f9  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00455a01  f30f58c9                  ADDSS XMM1,XMM1
00455a05  f30f5cc1                  SUBSS XMM0,XMM1
00455a09  f30f11861c040000          MOVSS dword ptr [ESI + 0x41c],XMM0
00455a11  e84a952900                CALL 0x006eef60
00455a16  33d2                      XOR EDX,EDX
00455a18  b90a000000                MOV ECX,0xa
00455a1d  f7f1                      DIV ECX
00455a1f  83c223                    ADD EDX,0x23
00455a22  899610040000              MOV dword ptr [ESI + 0x410],EDX
00455a28  899614040000              MOV dword ptr [ESI + 0x414],EDX
00455a2e  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00455a32  7410                      JZ 0x00455a44
00455a34  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
00455a37  8d4e78                    LEA ECX,[ESI + 0x78]
00455a3a  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
00455a3d  48                        DEC EAX
00455a3e  50                        PUSH EAX
00455a3f  e8bc32fbff                CALL 0x00408d00
00455a44  83ad78ffffff01            SUB dword ptr [EBP + 0xffffff78],0x1
00455a4b  0f85c2fdffff              JNZ 0x00455813
00455a51  51                        PUSH ECX
00455a52  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455a59  6a00                      PUSH 0x0
00455a5b  6a02                      PUSH 0x2
00455a5d  51                        PUSH ECX
00455a5e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455a65  8bcf                      MOV ECX,EDI
00455a67  68fc000000                PUSH 0xfc
00455a6c  e82f112800                CALL 0x006d6ba0
00455a71  8d7748                    LEA ESI,[EDI + 0x48]
00455a74  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00455a78  740d                      JZ 0x00455a87
00455a7a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00455a81  0f8515030000              JNZ 0x00455d9c
00455a87  6a00                      PUSH 0x0
00455a89  68e4d6b100                PUSH 0xb1d6e4
00455a8e  8bce                      MOV ECX,ESI
00455a90  e8eb48fbff                CALL 0x0040a380
00455a95  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455a9d  51                        PUSH ECX
00455a9e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455aa5  6a00                      PUSH 0x0
00455aa7  6a02                      PUSH 0x2
00455aa9  6875030000                PUSH 0x375
00455aae  e82d0e5000                CALL 0x009568e0
00455ab3  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00455abd  e9da020000                JMP 0x00455d9c
00455ac2  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00455ac8  c7875803000000000000      MOV dword ptr [EDI + 0x358],0x0
00455ad2  85c0                      TEST EAX,EAX
00455ad4  7520                      JNZ 0x00455af6
00455ad6  8d4f48                    LEA ECX,[EDI + 0x48]
00455ad9  39477c                    CMP dword ptr [EDI + 0x7c],EAX
00455adc  740c                      JZ 0x00455aea
00455ade  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00455ae4  0f85b2020000              JNZ 0x00455d9c
00455aea  6a00                      PUSH 0x0
00455aec  6818d7b100                PUSH 0xb1d718
00455af1  e9e0fbffff                JMP 0x004556d6
00455af6  0f8ea0020000              JLE 0x00455d9c
00455afc  8d7748                    LEA ESI,[EDI + 0x48]
00455aff  68fcd6b100                PUSH 0xb1d6fc
00455b04  8bce                      MOV ECX,ESI
00455b06  e82555fbff                CALL 0x0040b030
00455b0b  84c0                      TEST AL,AL
00455b0d  7420                      JZ 0x00455b2f
00455b0f  51                        PUSH ECX
00455b10  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455b17  6a00                      PUSH 0x0
00455b19  6a02                      PUSH 0x2
00455b1b  51                        PUSH ECX
00455b1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455b23  8bcf                      MOV ECX,EDI
00455b25  689f010000                PUSH 0x19f
00455b2a  e871102800                CALL 0x006d6ba0
00455b2f  68dcd2b100                PUSH 0xb1d2dc
00455b34  8bce                      MOV ECX,ESI
00455b36  e8f554fbff                CALL 0x0040b030
00455b3b  84c0                      TEST AL,AL
00455b3d  0f84af010000              JZ 0x00455cf2
00455b43  e818942900                CALL 0x006eef60
00455b48  51                        PUSH ECX
00455b49  660f6ec0                  MOVD XMM0,EAX
00455b4d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00455b51  c1e81f                    SHR EAX,0x1f
00455b54  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00455b5d  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00455b63  48                        DEC EAX
00455b64  660f5ac8                  CVTPD2PS XMM1,XMM0
00455b68  660f6ec0                  MOVD XMM0,EAX
00455b6c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00455b74  0f5bc0                    CVTDQ2PS XMM0,XMM0
00455b77  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
00455b7f  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00455b87  f30f580544a4ba00          ADDSS XMM0,dword ptr [0x00baa444]
00455b8f  f30f58c1                  ADDSS XMM0,XMM1
00455b93  f30f110424                MOVSS dword ptr [ESP],XMM0
00455b98  6a00                      PUSH 0x0
00455b9a  6a02                      PUSH 0x2
00455b9c  51                        PUSH ECX
00455b9d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455ba4  8bcf                      MOV ECX,EDI
00455ba6  689e010000                PUSH 0x19e
00455bab  e8f00f2800                CALL 0x006d6ba0
00455bb0  6800000010                PUSH 0x10000000
00455bb5  6a00                      PUSH 0x0
00455bb7  8bcf                      MOV ECX,EDI
00455bb9  e87218fcff                CALL 0x00417430
00455bbe  84c0                      TEST AL,AL
00455bc0  742f                      JZ 0x00455bf1
00455bc2  6a00                      PUSH 0x0
00455bc4  6a00                      PUSH 0x0
00455bc6  6aff                      PUSH -0x1
00455bc8  6a01                      PUSH 0x1
00455bca  6894010000                PUSH 0x194
00455bcf  8d45b0                    LEA EAX,[EBP + -0x50]
00455bd2  50                        PUSH EAX
00455bd3  a17816c700                MOV EAX,[0x00c71678]
00455bd8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00455bde  81c118120000              ADD ECX,0x1218
00455be4  e87753fcff                CALL 0x0041af60
00455be9  8d4db0                    LEA ECX,[EBP + -0x50]
00455bec  e8bf19fcff                CALL 0x004175b0
00455bf1  e86a932900                CALL 0x006eef60
00455bf6  50                        PUSH EAX
00455bf7  6a00                      PUSH 0x0
00455bf9  57                        PUSH EDI
00455bfa  6840b6c700                PUSH 0xc7b640
00455bff  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00455c05  51                        PUSH ECX
00455c06  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00455c0c  6a01                      PUSH 0x1
00455c0e  6894010000                PUSH 0x194
00455c13  e8082ffdff                CALL 0x00428b20
00455c18  6800000010                PUSH 0x10000000
00455c1d  6a00                      PUSH 0x0
00455c1f  8bcf                      MOV ECX,EDI
00455c21  8bf0                      MOV ESI,EAX
00455c23  e80818fcff                CALL 0x00417430
00455c28  84c0                      TEST AL,AL
00455c2a  7414                      JZ 0x00455c40
00455c2c  c786800300000000a040      MOV dword ptr [ESI + 0x380],0x40a00000
00455c36  c786840300000000a040      MOV dword ptr [ESI + 0x384],0x40a00000
00455c40  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00455c46  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
00455c4e  83e802                    SUB EAX,0x2
00455c51  660f6ec8                  MOVD XMM1,EAX
00455c55  0f5bc9                    CVTDQ2PS XMM1,XMM1
00455c58  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
00455c60  f30f5cc1                  SUBSS XMM0,XMM1
00455c64  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00455c6c  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
00455c74  e8c778fcff                CALL 0x0041d540
00455c79  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00455c81  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00455c89  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
00455c91  e88a78fcff                CALL 0x0041d520
00455c96  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00455c9e  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00455ca6  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
00455cae  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00455cb6  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
00455cbe  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00455cc6  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00455ccc  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00455cd3  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00455cd9  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
00455ce1  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00455ce9  8d7748                    LEA ESI,[EDI + 0x48]
00455cec  ff8710040000              INC dword ptr [EDI + 0x410]
00455cf2  68f4d6b100                PUSH 0xb1d6f4
00455cf7  8bce                      MOV ECX,ESI
00455cf9  e83253fbff                CALL 0x0040b030
00455cfe  84c0                      TEST AL,AL
00455d00  7411                      JZ 0x00455d13
00455d02  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00455d09  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00455d13  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00455d17  740d                      JZ 0x00455d26
00455d19  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00455d20  0f8576000000              JNZ 0x00455d9c
00455d26  6a00                      PUSH 0x0
00455d28  68e4d6b100                PUSH 0xb1d6e4
00455d2d  8bce                      MOV ECX,ESI
00455d2f  e84c46fbff                CALL 0x0040a380
00455d34  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455d3c  51                        PUSH ECX
00455d3d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455d44  6a00                      PUSH 0x0
00455d46  6a02                      PUSH 0x2
00455d48  6875030000                PUSH 0x375
00455d4d  e88e0b5000                CALL 0x009568e0
00455d52  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00455d5c  eb3e                      JMP 0x00455d9c
00455d5e  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00455d66  f30f59c2                  MULSS XMM0,XMM2
00455d6a  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00455d72  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00455d7a  f30f59c2                  MULSS XMM0,XMM2
00455d7e  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00455d86  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00455d8a  7409                      JZ 0x00455d95
00455d8c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00455d93  7507                      JNZ 0x00455d9c
00455d95  8b07                      MOV EAX,dword ptr [EDI]
00455d97  8bcf                      MOV ECX,EDI
00455d99  ff5028                    CALL dword ptr [EAX + 0x28]
00455d9c  68b0d5b100                PUSH 0xb1d5b0
00455da1  8d4f48                    LEA ECX,[EDI + 0x48]
00455da4  e88752fbff                CALL 0x0040b030
00455da9  84c0                      TEST AL,AL
00455dab  741e                      JZ 0x00455dcb
00455dad  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455db5  51                        PUSH ECX
00455db6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455dbd  6a00                      PUSH 0x0
00455dbf  6a02                      PUSH 0x2
00455dc1  6871030000                PUSH 0x371
00455dc6  e8150b5000                CALL 0x009568e0
00455dcb  6804d6b100                PUSH 0xb1d604
00455dd0  8d4f48                    LEA ECX,[EDI + 0x48]
00455dd3  e85852fbff                CALL 0x0040b030
00455dd8  84c0                      TEST AL,AL
00455dda  741e                      JZ 0x00455dfa
00455ddc  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455de4  51                        PUSH ECX
00455de5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455dec  6a00                      PUSH 0x0
00455dee  6a02                      PUSH 0x2
00455df0  6876030000                PUSH 0x376
00455df5  e8e60a5000                CALL 0x009568e0
00455dfa  6844d6b100                PUSH 0xb1d644
00455dff  8d4f48                    LEA ECX,[EDI + 0x48]
00455e02  e82952fbff                CALL 0x0040b030
00455e07  84c0                      TEST AL,AL
00455e09  741e                      JZ 0x00455e29
00455e0b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455e13  51                        PUSH ECX
00455e14  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455e1b  6a00                      PUSH 0x0
00455e1d  6a02                      PUSH 0x2
00455e1f  6877030000                PUSH 0x377
00455e24  e8b70a5000                CALL 0x009568e0
00455e29  683cd6b100                PUSH 0xb1d63c
00455e2e  8d4f48                    LEA ECX,[EDI + 0x48]
00455e31  e8fa51fbff                CALL 0x0040b030
00455e36  84c0                      TEST AL,AL
00455e38  0f84a1020000              JZ 0x004560df
00455e3e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00455e46  51                        PUSH ECX
00455e47  c704240000803f            MOV dword ptr [ESP],0x3f800000
00455e4e  6a00                      PUSH 0x0
00455e50  6a02                      PUSH 0x2
00455e52  6878030000                PUSH 0x378
00455e57  e8840a5000                CALL 0x009568e0
00455e5c  e97e020000                JMP 0x004560df
00455e61  83f802                    CMP EAX,0x2
00455e64  0f8575020000              JNZ 0x004560df
00455e6a  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00455e71  754a                      JNZ 0x00455ebd
00455e73  6a01                      PUSH 0x1
00455e75  68b8d5b100                PUSH 0xb1d5b8
00455e7a  8d4f48                    LEA ECX,[EDI + 0x48]
00455e7d  e8fe44fbff                CALL 0x0040a380
00455e82  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00455e8c  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
00455e93  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00455e9a  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
00455ea4  c7878801000003000000      MOV dword ptr [EDI + 0x188],0x3
00455eae  c787580300000000c8c2      MOV dword ptr [EDI + 0x358],0xc2c80000
00455eb8  e9b6ebffff                JMP 0x00454a73
00455ebd  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00455ec3  c787580300000000c8c2      MOV dword ptr [EDI + 0x358],0xc2c80000
00455ecd  85c0                      TEST EAX,EAX
00455ecf  0f84c3ebffff              JZ 0x00454a98
00455ed5  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
00455edd  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
00455ee5  0f2fc1                    COMISS XMM0,XMM1
00455ee8  760a                      JBE 0x00455ef4
00455eea  f30f118880030000          MOVSS dword ptr [EAX + 0x380],XMM1
00455ef2  eb08                      JMP 0x00455efc
00455ef4  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00455efc  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00455f03  7418                      JZ 0x00455f1d
00455f05  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00455f0b  8d4d80                    LEA ECX,[EBP + -0x80]
00455f0e  8b06                      MOV EAX,dword ptr [ESI]
00455f10  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
00455f13  e858fdfdff                CALL 0x00435c70
00455f18  50                        PUSH EAX
00455f19  8bce                      MOV ECX,ESI
00455f1b  ffd2                      CALL EDX
00455f1d  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00455f24  0f85b5010000              JNZ 0x004560df
00455f2a  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00455f31  7522                      JNZ 0x00455f55
00455f33  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00455f37  740d                      JZ 0x00455f46
00455f39  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00455f40  0f8599010000              JNZ 0x004560df
00455f46  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00455f50  e98a010000                JMP 0x004560df
00455f55  8d45a8                    LEA EAX,[EBP + -0x58]
00455f58  50                        PUSH EAX
00455f59  8d4f78                    LEA ECX,[EDI + 0x78]
00455f5c  e88fccffff                CALL 0x00452bf0
00455f61  bab8d5b100                MOV EDX,0xb1d5b8
00455f66  8bc8                      MOV ECX,EAX
00455f68  e843020000                CALL 0x004561b0
00455f6d  8d4da8                    LEA ECX,[EBP + -0x58]
00455f70  88855fffffff              MOV byte ptr [EBP + 0xffffff5f],AL
00455f76  e8c570fbff                CALL 0x0040d040
00455f7b  80bd5fffffff00            CMP byte ptr [EBP + 0xffffff5f],0x0
00455f82  0f848a000000              JZ 0x00456012
00455f88  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00455f8e  33f6                      XOR ESI,ESI
00455f90  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00455f96  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00455f9c  c1f802                    SAR EAX,0x2
00455f9f  85c0                      TEST EAX,EAX
00455fa1  7429                      JZ 0x00455fcc
00455fa3  56                        PUSH ESI
00455fa4  e8c718fcff                CALL 0x00417870
00455fa9  8bd7                      MOV EDX,EDI
00455fab  8bc8                      MOV ECX,EAX
00455fad  e8aeccffff                CALL 0x00452c60
00455fb2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00455fb8  46                        INC ESI
00455fb9  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00455fbf  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00455fc5  c1f802                    SAR EAX,0x2
00455fc8  3bf0                      CMP ESI,EAX
00455fca  72d7                      JC 0x00455fa3
00455fcc  8bcf                      MOV ECX,EDI
00455fce  e86dcdffff                CALL 0x00452d40
00455fd3  0187c00b0000              ADD dword ptr [EDI + 0xbc0],EAX
00455fd9  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00455fdf  8d4101                    LEA EAX,[ECX + 0x1]
00455fe2  898710040000              MOV dword ptr [EDI + 0x410],EAX
00455fe8  83f93c                    CMP ECX,0x3c
00455feb  0f8eee000000              JLE 0x004560df
00455ff1  80bd6fffffff00            CMP byte ptr [EBP + 0xffffff6f],0x0
00455ff8  0f85e1000000              JNZ 0x004560df
00455ffe  6a00                      PUSH 0x0
00456000  68a0d5b100                PUSH 0xb1d5a0
00456005  8d4f48                    LEA ECX,[EDI + 0x48]
00456008  e87343fbff                CALL 0x0040a380
0045600d  e9cd000000                JMP 0x004560df
00456012  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00456016  740d                      JZ 0x00456025
00456018  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045601f  0f85ba000000              JNZ 0x004560df
00456025  8b07                      MOV EAX,dword ptr [EDI]
00456027  8bcf                      MOV ECX,EDI
00456029  ff5028                    CALL dword ptr [EAX + 0x28]
0045602c  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00456033  7e37                      JLE 0x0045606c
00456035  e8268f2900                CALL 0x006eef60
0045603a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00456040  8bf0                      MOV ESI,EAX
00456042  51                        PUSH ECX
00456043  8d45e4                    LEA EAX,[EBP + -0x1c]
00456046  c7042400000000            MOV dword ptr [ESP],0x0
0045604d  50                        PUSH EAX
0045604e  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00456054  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0045605b  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
00456062  e869893c00                CALL 0x0081e9d0
00456067  56                        PUSH ESI
00456068  6a03                      PUSH 0x3
0045606a  eb3e                      JMP 0x004560aa
0045606c  0f8563000000              JNZ 0x004560d5
00456072  e8e98e2900                CALL 0x006eef60
00456077  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045607d  8bf0                      MOV ESI,EAX
0045607f  51                        PUSH ECX
00456080  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00456086  c7042400000000            MOV dword ptr [ESP],0x0
0045608d  50                        PUSH EAX
0045608e  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00456094  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0045609b  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
004560a2  e829893c00                CALL 0x0081e9d0
004560a7  56                        PUSH ESI
004560a8  6a02                      PUSH 0x2
004560aa  57                        PUSH EDI
004560ab  8d4db8                    LEA ECX,[EBP + -0x48]
004560ae  51                        PUSH ECX
004560af  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004560b5  50                        PUSH EAX
004560b6  6a01                      PUSH 0x1
004560b8  689b010000                PUSH 0x19b
004560bd  e85e2afdff                CALL 0x00428b20
004560c2  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
004560c8  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
004560ce  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
004560d5  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004560df  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004560e3  7512                      JNZ 0x004560f7
004560e5  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004560ec  7509                      JNZ 0x004560f7
004560ee  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004560f5  7f0a                      JG 0x00456101
004560f7  c7876c03000000000000      MOV dword ptr [EDI + 0x36c],0x0
00456101  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00456104  64890d00000000            MOV dword ptr FS:[0x0],ECX
0045610b  59                        POP ECX
0045610c  5f                        POP EDI
0045610d  5e                        POP ESI
0045610e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00456111  33cd                      XOR ECX,EBP
00456113  e813906900                CALL 0x00aef12b
00456118  8be5                      MOV ESP,EBP
0045611a  5d                        POP EBP
0045611b  8be3                      MOV ESP,EBX
0045611d  5b                        POP EBX
0045611e  c3                        RET
