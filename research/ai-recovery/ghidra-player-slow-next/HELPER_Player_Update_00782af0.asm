; J460 NPC AI 0x00782af0 HELPER_Player_Update
; types=1
; identities=1.*
; entry=00782af0
00782af0  55                        PUSH EBP
00782af1  8bec                      MOV EBP,ESP
00782af3  6aff                      PUSH -0x1
00782af5  6834f5af00                PUSH 0xaff534
00782afa  64a100000000              MOV EAX,FS:[0x0]
00782b00  50                        PUSH EAX
00782b01  81ec18020000              SUB ESP,0x218
00782b07  a1b493bf00                MOV EAX,[0x00bf93b4]
00782b0c  33c5                      XOR EAX,EBP
00782b0e  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00782b11  56                        PUSH ESI
00782b12  57                        PUSH EDI
00782b13  50                        PUSH EAX
00782b14  8d45f4                    LEA EAX,[EBP + -0xc]
00782b17  64a300000000              MOV FS:[0x0],EAX
00782b1d  8bf9                      MOV EDI,ECX
00782b1f  89bdd0feffff              MOV dword ptr [EBP + 0xfffffed0],EDI
00782b25  33c0                      XOR EAX,EAX
00782b27  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
00782b2d  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
00782b33  3987bc030000              CMP dword ptr [EDI + 0x3bc],EAX
00782b39  744b                      JZ 0x00782b86
00782b3b  39472c                    CMP dword ptr [EDI + 0x2c],EAX
00782b3e  7546                      JNZ 0x00782b86
00782b40  3987d4200000              CMP dword ptr [EDI + 0x20d4],EAX
00782b46  753e                      JNZ 0x00782b86
00782b48  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00782b4e  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00782b54  57                        PUSH EDI
00782b55  50                        PUSH EAX
00782b56  8d8904da0100              LEA ECX,[ECX + 0x1da04]
00782b5c  e89f592200                CALL 0x009a8500
00782b61  50                        PUSH EAX
00782b62  8d8fd4200000              LEA ECX,[EDI + 0x20d4]
00782b68  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00782b6f  e85ca80500                CALL 0x007dd3d0
00782b74  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00782b7a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00782b81  e8da9a0500                CALL 0x007dc660
00782b86  8b8fd4200000              MOV ECX,dword ptr [EDI + 0x20d4]
00782b8c  85c9                      TEST ECX,ECX
00782b8e  7405                      JZ 0x00782b95
00782b90  e89bf60b00                CALL 0x00842230
00782b95  8d8fd8260000              LEA ECX,[EDI + 0x26d8]
00782b9b  e840d8caff                CALL 0x004303e0
00782ba0  8bb7801e0000              MOV ESI,dword ptr [EDI + 0x1e80]
00782ba6  85f6                      TEST ESI,ESI
00782ba8  0f8480000000              JZ 0x00782c2e
00782bae  8bcf                      MOV ECX,EDI
00782bb0  e88b170500                CALL 0x007d4340
00782bb5  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00782bbd  f30f118678040000          MOVSS dword ptr [ESI + 0x478],XMM0
00782bc5  8b87801e0000              MOV EAX,dword ptr [EDI + 0x1e80]
00782bcb  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
00782bd5  c78050030000000070c1      MOV dword ptr [EAX + 0x350],0xc1700000
00782bdf  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00782be5  8b8f801e0000              MOV ECX,dword ptr [EDI + 0x1e80]
00782beb  2500400000                AND EAX,0x4000
00782bf0  83c800                    OR EAX,0x0
00782bf3  740a                      JZ 0x00782bff
00782bf5  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00782bfd  eb03                      JMP 0x00782c02
00782bff  0f57c9                    XORPS XMM1,XMM1
00782c02  a17816c700                MOV EAX,[0x00c71678]
00782c07  be68010000                MOV ESI,0x168
00782c0c  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00782c12  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00782c18  99                        CDQ
00782c19  f7fe                      IDIV ESI
00782c1b  660f6ec2                  MOVD XMM0,EDX
00782c1f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00782c22  f30f58c1                  ADDSS XMM0,XMM1
00782c26  f30f1181ec000000          MOVSS dword ptr [ECX + 0xec],XMM0
00782c2e  8b87c0130000              MOV EAX,dword ptr [EDI + 0x13c0]
00782c34  83f81d                    CMP EAX,0x1d
00782c37  7409                      JZ 0x00782c42
00782c39  83f826                    CMP EAX,0x26
00782c3c  0f8503040000              JNZ 0x00783045
00782c42  8b876c1e0000              MOV EAX,dword ptr [EDI + 0x1e6c]
00782c48  85c0                      TEST EAX,EAX
00782c4a  0f845e020000              JZ 0x00782eae
00782c50  8a8070010000              MOV AL,byte ptr [EAX + 0x170]
00782c56  84c0                      TEST AL,AL
00782c58  0f8550020000              JNZ 0x00782eae
00782c5e  6a00                      PUSH 0x0
00782c60  686b020000                PUSH 0x26b
00782c65  8bcf                      MOV ECX,EDI
00782c67  e874dafeff                CALL 0x007706e0
00782c6c  84c0                      TEST AL,AL
00782c6e  751a                      JNZ 0x00782c8a
00782c70  8b8f6c1e0000              MOV ECX,dword ptr [EDI + 0x1e6c]
00782c76  6a00                      PUSH 0x0
00782c78  686b020000                PUSH 0x26b
00782c7d  e85edafeff                CALL 0x007706e0
00782c82  84c0                      TEST AL,AL
00782c84  0f8424020000              JZ 0x00782eae
00782c8a  ffb76c1e0000              PUSH dword ptr [EDI + 0x1e6c]
00782c90  8db7681e0000              LEA ESI,[EDI + 0x1e68]
00782c96  8bce                      MOV ECX,ESI
00782c98  89b5b8feffff              MOV dword ptr [EBP + 0xfffffeb8],ESI
00782c9e  e82dc5d4ff                CALL 0x004cf1d0
00782ca3  8b8f6c1e0000              MOV ECX,dword ptr [EDI + 0x1e6c]
00782ca9  57                        PUSH EDI
00782caa  81c1681e0000              ADD ECX,0x1e68
00782cb0  e81bc5d4ff                CALL 0x004cf1d0
00782cb5  8b876c1e0000              MOV EAX,dword ptr [EDI + 0x1e6c]
00782cbb  8bce                      MOV ECX,ESI
00782cbd  c7806c1e000000000000      MOV dword ptr [EAX + 0x1e6c],0x0
00782cc7  8b8718160000              MOV EAX,dword ptr [EDI + 0x1618]
00782ccd  c7876c1e000000000000      MOV dword ptr [EDI + 0x1e6c],0x0
00782cd7  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
00782cdd  e8be96c8ff                CALL 0x0040c3a0
00782ce2  80b8e820000000            CMP byte ptr [EAX + 0x20e8],0x0
00782ce9  745a                      JZ 0x00782d45
00782ceb  8bce                      MOV ECX,ESI
00782ced  e8ae96c8ff                CALL 0x0040c3a0
00782cf2  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00782cf8  8bf0                      MOV ESI,EAX
00782cfa  e8a196c8ff                CALL 0x0040c3a0
00782cff  05ec200000                ADD EAX,0x20ec
00782d04  8bce                      MOV ECX,ESI
00782d06  50                        PUSH EAX
00782d07  e8a4b70200                CALL 0x007ae4b0
00782d0c  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00782d12  e88996c8ff                CALL 0x0040c3a0
00782d17  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00782d1d  8bf0                      MOV ESI,EAX
00782d1f  e87c96c8ff                CALL 0x0040c3a0
00782d24  05ec200000                ADD EAX,0x20ec
00782d29  8bce                      MOV ECX,ESI
00782d2b  50                        PUSH EAX
00782d2c  e83fd30200                CALL 0x007b0070
00782d31  8db7681e0000              LEA ESI,[EDI + 0x1e68]
00782d37  8bce                      MOV ECX,ESI
00782d39  e86296c8ff                CALL 0x0040c3a0
00782d3e  c680e820000000            MOV byte ptr [EAX + 0x20e8],0x0
00782d45  6a01                      PUSH 0x1
00782d47  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
00782d4d  8bcf                      MOV ECX,EDI
00782d4f  e8fc360200                CALL 0x007a6450
00782d54  8bce                      MOV ECX,ESI
00782d56  e84596c8ff                CALL 0x0040c3a0
00782d5b  80b82418000000            CMP byte ptr [EAX + 0x1824],0x0
00782d62  750e                      JNZ 0x00782d72
00782d64  8bce                      MOV ECX,ESI
00782d66  e83596c8ff                CALL 0x0040c3a0
00782d6b  8bc8                      MOV ECX,EAX
00782d6d  e8ce990300                CALL 0x007bc740
00782d72  8bce                      MOV ECX,ESI
00782d74  e82796c8ff                CALL 0x0040c3a0
00782d79  8bce                      MOV ECX,ESI
00782d7b  c6807201000001            MOV byte ptr [EAX + 0x172],0x1
00782d82  e81996c8ff                CALL 0x0040c3a0
00782d87  8bb5d0feffff              MOV ESI,dword ptr [EBP + 0xfffffed0]
00782d8d  8bf8                      MOV EDI,EAX
00782d8f  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00782d95  50                        PUSH EAX
00782d96  e8d5c2efff                CALL 0x0067f070
00782d9b  50                        PUSH EAX
00782d9c  8d95e4feffff              LEA EDX,[EBP + 0xfffffee4]
00782da2  c785e4feffff00007041      MOV dword ptr [EBP + 0xfffffee4],0x41700000
00782dac  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00782db2  e81944c9ff                CALL 0x004171d0
00782db7  83c408                    ADD ESP,0x8
00782dba  8d8e3c030000              LEA ECX,[ESI + 0x33c]
00782dc0  50                        PUSH EAX
00782dc1  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00782dc7  50                        PUSH EAX
00782dc8  e853d62800                CALL 0x00a10420
00782dcd  50                        PUSH EAX
00782dce  8bcf                      MOV ECX,EDI
00782dd0  e81b5bcaff                CALL 0x004288f0
00782dd5  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
00782ddb  e8c095c8ff                CALL 0x0040c3a0
00782de0  8bfe                      MOV EDI,ESI
00782de2  8d8f60030000              LEA ECX,[EDI + 0x360]
00782de8  51                        PUSH ECX
00782de9  8bc8                      MOV ECX,EAX
00782deb  e8205bcaff                CALL 0x00428910
00782df0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00782df6  e8654ac9ff                CALL 0x00417860
00782dfb  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00782e01  8bf0                      MOV ESI,EAX
00782e03  e89895c8ff                CALL 0x0040c3a0
00782e08  50                        PUSH EAX
00782e09  8bce                      MOV ECX,ESI
00782e0b  e850712300                CALL 0x009b9f60
00782e10  8db7681e0000              LEA ESI,[EDI + 0x1e68]
00782e16  6aff                      PUSH -0x1
00782e18  8bce                      MOV ECX,ESI
00782e1a  e88195c8ff                CALL 0x0040c3a0
00782e1f  50                        PUSH EAX
00782e20  8bcf                      MOV ECX,EDI
00782e22  e87968fdff                CALL 0x007596a0
00782e27  8bce                      MOV ECX,ESI
00782e29  e87295c8ff                CALL 0x0040c3a0
00782e2e  0f57c0                    XORPS XMM0,XMM0
00782e31  8bce                      MOV ECX,ESI
00782e33  0f1180f0130000            MOVUPS xmmword ptr [EAX + 0x13f0],XMM0
00782e3a  c6800014000000            MOV byte ptr [EAX + 0x1400],0x0
00782e41  e85a95c8ff                CALL 0x0040c3a0
00782e46  8bce                      MOV ECX,ESI
00782e48  c78074150000ffff0000      MOV dword ptr [EAX + 0x1574],0xffff
00782e52  e84995c8ff                CALL 0x0040c3a0
00782e57  8bc8                      MOV ECX,EAX
00782e59  e81207feff                CALL 0x00763570
00782e5e  8bce                      MOV ECX,ESI
00782e60  e83b95c8ff                CALL 0x0040c3a0
00782e65  8bce                      MOV ECX,ESI
00782e67  c6801004000001            MOV byte ptr [EAX + 0x410],0x1
00782e6e  e82d95c8ff                CALL 0x0040c3a0
00782e73  8d881c040000              LEA ECX,[EAX + 0x41c]
00782e79  e89250c8ff                CALL 0x00407f10
00782e7e  8bce                      MOV ECX,ESI
00782e80  e81b95c8ff                CALL 0x0040c3a0
00782e85  8bce                      MOV ECX,ESI
00782e87  c6809a13000000            MOV byte ptr [EAX + 0x139a],0x0
00782e8e  e80d95c8ff                CALL 0x0040c3a0
00782e93  8d4848                    LEA ECX,[EAX + 0x48]
00782e96  e8c578c8ff                CALL 0x0040a760
00782e9b  8bce                      MOV ECX,ESI
00782e9d  e8fe94c8ff                CALL 0x0040c3a0
00782ea2  c6809813000000            MOV byte ptr [EAX + 0x1398],0x0
00782ea9  e997010000                JMP 0x00783045
00782eae  8db7681e0000              LEA ESI,[EDI + 0x1e68]
00782eb4  8bce                      MOV ECX,ESI
00782eb6  e8e594c8ff                CALL 0x0040c3a0
00782ebb  85c0                      TEST EAX,EAX
00782ebd  0f8482010000              JZ 0x00783045
00782ec3  6a00                      PUSH 0x0
00782ec5  686b020000                PUSH 0x26b
00782eca  8bcf                      MOV ECX,EDI
00782ecc  e80fd8feff                CALL 0x007706e0
00782ed1  84c0                      TEST AL,AL
00782ed3  0f856c010000              JNZ 0x00783045
00782ed9  8bce                      MOV ECX,ESI
00782edb  e8c094c8ff                CALL 0x0040c3a0
00782ee0  6a00                      PUSH 0x0
00782ee2  686b020000                PUSH 0x26b
00782ee7  8bc8                      MOV ECX,EAX
00782ee9  e8f2d7feff                CALL 0x007706e0
00782eee  84c0                      TEST AL,AL
00782ef0  0f854f010000              JNZ 0x00783045
00782ef6  8bcf                      MOV ECX,EDI
00782ef8  e803880500                CALL 0x007db700
00782efd  84c0                      TEST AL,AL
00782eff  0f8540010000              JNZ 0x00783045
00782f05  8bce                      MOV ECX,ESI
00782f07  e89494c8ff                CALL 0x0040c3a0
00782f0c  8bce                      MOV ECX,ESI
00782f0e  89876c1e0000              MOV dword ptr [EDI + 0x1e6c],EAX
00782f14  e88794c8ff                CALL 0x0040c3a0
00782f19  6a00                      PUSH 0x0
00782f1b  8bce                      MOV ECX,ESI
00782f1d  89b86c1e0000              MOV dword ptr [EAX + 0x1e6c],EDI
00782f23  e87894c8ff                CALL 0x0040c3a0
00782f28  8d88681e0000              LEA ECX,[EAX + 0x1e68]
00782f2e  e89dc2d4ff                CALL 0x004cf1d0
00782f33  6a00                      PUSH 0x0
00782f35  8bce                      MOV ECX,ESI
00782f37  e894c2d4ff                CALL 0x004cf1d0
00782f3c  8b8f6c1e0000              MOV ECX,dword ptr [EDI + 0x1e6c]
00782f42  6a00                      PUSH 0x0
00782f44  e837370200                CALL 0x007a6680
00782f49  8b8f6c1e0000              MOV ECX,dword ptr [EDI + 0x1e6c]
00782f4f  6a00                      PUSH 0x0
00782f51  e84a44c9ff                CALL 0x004173a0
00782f56  8b876c1e0000              MOV EAX,dword ptr [EDI + 0x1e6c]
00782f5c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00782f62  c6807201000000            MOV byte ptr [EAX + 0x172],0x0
00782f69  8b876c1e0000              MOV EAX,dword ptr [EDI + 0x1e6c]
00782f6f  c7801c160000ffffffff      MOV dword ptr [EAX + 0x161c],0xffffffff
00782f79  e80245c8ff                CALL 0x00407480
00782f7e  8bc8                      MOV ECX,EAX
00782f80  e8db5acaff                CALL 0x00428a60
00782f85  6a00                      PUSH 0x0
00782f87  6a00                      PUSH 0x0
00782f89  6aff                      PUSH -0x1
00782f8b  6aff                      PUSH -0x1
00782f8d  6a03                      PUSH 0x3
00782f8f  8d4de0                    LEA ECX,[EBP + -0x20]
00782f92  51                        PUSH ECX
00782f93  8bc8                      MOV ECX,EAX
00782f95  e8c67fc9ff                CALL 0x0041af60
00782f9a  8d4de0                    LEA ECX,[EBP + -0x20]
00782f9d  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00782fa4  33f6                      XOR ESI,ESI
00782fa6  e84547c9ff                CALL 0x004176f0
00782fab  85c0                      TEST EAX,EAX
00782fad  7439                      JZ 0x00782fe8
00782faf  90                        NOP
00782fb0  56                        PUSH ESI
00782fb1  8d4de0                    LEA ECX,[EBP + -0x20]
00782fb4  e86746c9ff                CALL 0x00417620
00782fb9  8b00                      MOV EAX,dword ptr [EAX]
00782fbb  8bc8                      MOV ECX,EAX
00782fbd  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
00782fc3  e82832cbff                CALL 0x004361f0
00782fc8  3b876c1e0000              CMP EAX,dword ptr [EDI + 0x1e6c]
00782fce  750b                      JNZ 0x00782fdb
00782fd0  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
00782fd6  8b01                      MOV EAX,dword ptr [ECX]
00782fd8  ff5028                    CALL dword ptr [EAX + 0x28]
00782fdb  8d4de0                    LEA ECX,[EBP + -0x20]
00782fde  46                        INC ESI
00782fdf  e80c47c9ff                CALL 0x004176f0
00782fe4  3bf0                      CMP ESI,EAX
00782fe6  72c8                      JC 0x00782fb0
00782fe8  e873bff6ff                CALL 0x006eef60
00782fed  8b8f6c1e0000              MOV ECX,dword ptr [EDI + 0x1e6c]
00782ff3  8bf0                      MOV ESI,EAX
00782ff5  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00782ffb  50                        PUSH EAX
00782ffc  e88f42c9ff                CALL 0x00417290
00783001  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783007  56                        PUSH ESI
00783008  6a00                      PUSH 0x0
0078300a  6a00                      PUSH 0x0
0078300c  6840b6c700                PUSH 0xc7b640
00783011  50                        PUSH EAX
00783012  6a0f                      PUSH 0xf
00783014  68e8030000                PUSH 0x3e8
00783019  e8025bcaff                CALL 0x00428b20
0078301e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783024  e83748c9ff                CALL 0x00417860
00783029  ffb76c1e0000              PUSH dword ptr [EDI + 0x1e6c]
0078302f  8bc8                      MOV ECX,EAX
00783031  e88a6f2300                CALL 0x009b9fc0
00783036  8d4de0                    LEA ECX,[EBP + -0x20]
00783039  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00783040  e86b45c9ff                CALL 0x004175b0
00783045  6a00                      PUSH 0x0
00783047  6800400000                PUSH 0x4000
0078304c  8bcf                      MOV ECX,EDI
0078304e  e8dd43c9ff                CALL 0x00417430
00783053  84c0                      TEST AL,AL
00783055  7571                      JNZ 0x007830c8
00783057  0fb787941d0000            MOVZX EAX,word ptr [EDI + 0x1d94]
0078305e  663b87961d0000            CMP AX,word ptr [EDI + 0x1d96]
00783065  7419                      JZ 0x00783080
00783067  838f7415000001            OR dword ptr [EDI + 0x1574],0x1
0078306e  8d8f08150000              LEA ECX,[EDI + 0x1508]
00783074  668987961d0000            MOV word ptr [EDI + 0x1d96],AX
0078307b  e8302fcbff                CALL 0x00435fb0
00783080  8bcf                      MOV ECX,EDI
00783082  e80943c9ff                CALL 0x00417390
00783087  84c0                      TEST AL,AL
00783089  743d                      JZ 0x007830c8
0078308b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783091  e84adac9ff                CALL 0x00420ae0
00783096  8bc8                      MOV ECX,EAX
00783098  e893bd0a00                CALL 0x0082ee30
0078309d  84c0                      TEST AL,AL
0078309f  7527                      JNZ 0x007830c8
007830a1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007830a7  e8a45acaff                CALL 0x00428b50
007830ac  8bc8                      MOV ECX,EAX
007830ae  e87dbd0a00                CALL 0x0082ee30
007830b3  84c0                      TEST AL,AL
007830b5  7511                      JNZ 0x007830c8
007830b7  3887c41f0000              CMP byte ptr [EDI + 0x1fc4],AL
007830bd  7409                      JZ 0x007830c8
007830bf  6a01                      PUSH 0x1
007830c1  8bcf                      MOV ECX,EDI
007830c3  e8d81a0200                CALL 0x007a4ba0
007830c8  8bcf                      MOV ECX,EDI
007830ca  e8c142c9ff                CALL 0x00417390
007830cf  84c0                      TEST AL,AL
007830d1  752c                      JNZ 0x007830ff
007830d3  817f3488030000            CMP dword ptr [EDI + 0x34],0x388
007830da  7523                      JNZ 0x007830ff
007830dc  8d8f1c040000              LEA ECX,[EDI + 0x41c]
007830e2  e879d0c9ff                CALL 0x00420160
007830e7  84c0                      TEST AL,AL
007830e9  0f8483810000              JZ 0x0078b272
007830ef  8d8f1c040000              LEA ECX,[EDI + 0x41c]
007830f5  e80660c8ff                CALL 0x00409100
007830fa  e973810000                JMP 0x0078b272
007830ff  6a00                      PUSH 0x0
00783101  6800400000                PUSH 0x4000
00783106  8bcf                      MOV ECX,EDI
00783108  e82343c9ff                CALL 0x00417430
0078310d  84c0                      TEST AL,AL
0078310f  7558                      JNZ 0x00783169
00783111  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783117  e8c4d9c9ff                CALL 0x00420ae0
0078311c  8bc8                      MOV ECX,EAX
0078311e  e80dbd0a00                CALL 0x0082ee30
00783123  84c0                      TEST AL,AL
00783125  7542                      JNZ 0x00783169
00783127  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078312d  e81e5acaff                CALL 0x00428b50
00783132  8bc8                      MOV ECX,EAX
00783134  e8f7bc0a00                CALL 0x0082ee30
00783139  84c0                      TEST AL,AL
0078313b  752c                      JNZ 0x00783169
0078313d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783143  e83843c8ff                CALL 0x00407480
00783148  8bc8                      MOV ECX,EAX
0078314a  e8614a0a00                CALL 0x00827bb0
0078314f  3a872c200000              CMP AL,byte ptr [EDI + 0x202c]
00783155  7412                      JZ 0x00783169
00783157  8bcf                      MOV ECX,EDI
00783159  84c0                      TEST AL,AL
0078315b  7407                      JZ 0x00783164
0078315d  e81e580500                CALL 0x007d8980
00783162  eb05                      JMP 0x00783169
00783164  e8b75b0500                CALL 0x007d8d20
00783169  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0078316d  0f859a000000              JNZ 0x0078320d
00783173  8bcf                      MOV ECX,EDI
00783175  e8f642c9ff                CALL 0x00417470
0078317a  84c0                      TEST AL,AL
0078317c  0f858b000000              JNZ 0x0078320d
00783182  6a00                      PUSH 0x0
00783184  6a67                      PUSH 0x67
00783186  8bcf                      MOV ECX,EDI
00783188  e8c3e3feff                CALL 0x00771550
0078318d  84c0                      TEST AL,AL
0078318f  744c                      JZ 0x007831dd
00783191  8bcf                      MOV ECX,EDI
00783193  e8989dedff                CALL 0x0065cf30
00783198  8bcf                      MOV ECX,EDI
0078319a  8bf0                      MOV ESI,EAX
0078319c  e82f6cd1ff                CALL 0x00499dd0
007831a1  3bf0                      CMP ESI,EAX
007831a3  7538                      JNZ 0x007831dd
007831a5  8bcf                      MOV ECX,EDI
007831a7  e8246cd1ff                CALL 0x00499dd0
007831ac  8bcf                      MOV ECX,EDI
007831ae  8bf0                      MOV ESI,EAX
007831b0  e8abe5e2ff                CALL 0x005b1760
007831b5  3bf0                      CMP ESI,EAX
007831b7  7524                      JNZ 0x007831dd
007831b9  6a67                      PUSH 0x67
007831bb  8d8f08150000              LEA ECX,[EDI + 0x1508]
007831c1  e87ad41a00                CALL 0x00930640
007831c6  84c0                      TEST AL,AL
007831c8  7543                      JNZ 0x0078320d
007831ca  6a01                      PUSH 0x1
007831cc  6a01                      PUSH 0x1
007831ce  6a67                      PUSH 0x67
007831d0  8d8f08150000              LEA ECX,[EDI + 0x1508]
007831d6  e855d11a00                CALL 0x00930330
007831db  eb20                      JMP 0x007831fd
007831dd  6a67                      PUSH 0x67
007831df  8d8f08150000              LEA ECX,[EDI + 0x1508]
007831e5  e856d41a00                CALL 0x00930640
007831ea  84c0                      TEST AL,AL
007831ec  741f                      JZ 0x0078320d
007831ee  6a01                      PUSH 0x1
007831f0  6a67                      PUSH 0x67
007831f2  8d8f08150000              LEA ECX,[EDI + 0x1508]
007831f8  e8f3d21a00                CALL 0x009304f0
007831fd  6a02                      PUSH 0x2
007831ff  8bcf                      MOV ECX,EDI
00783201  e85a2fcbff                CALL 0x00436160
00783206  8bcf                      MOV ECX,EDI
00783208  e86303feff                CALL 0x00763570
0078320d  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00783211  0f85fd010000              JNZ 0x00783414
00783217  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078321d  e8fe46c9ff                CALL 0x00417920
00783222  8bc8                      MOV ECX,EAX
00783224  e8c746c9ff                CALL 0x004178f0
00783229  84c0                      TEST AL,AL
0078322b  745d                      JZ 0x0078328a
0078322d  ffb718160000              PUSH dword ptr [EDI + 0x1618]
00783233  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00783239  b9187bc500                MOV ECX,0xc57b18
0078323e  50                        PUSH EAX
0078323f  e84cd12900                CALL 0x00a20390
00783244  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
0078324a  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00783251  e84a91c8ff                CALL 0x0040c3a0
00783256  85c0                      TEST EAX,EAX
00783258  0f84e0000000              JZ 0x0078333e
0078325e  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00783264  e83791c8ff                CALL 0x0040c3a0
00783269  8bc8                      MOV ECX,EAX
0078326b  e88006fdff                CALL 0x007538f0
00783270  84c0                      TEST AL,AL
00783272  0f84c6000000              JZ 0x0078333e
00783278  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
0078327e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00783285  e82610caff                CALL 0x004242b0
0078328a  6a00                      PUSH 0x0
0078328c  6800400000                PUSH 0x4000
00783291  8bcf                      MOV ECX,EDI
00783293  e89841c9ff                CALL 0x00417430
00783298  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
0078329f  0f84be000000              JZ 0x00783363
007832a5  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
007832ad  8d95e4feffff              LEA EDX,[EBP + 0xfffffee4]
007832b3  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
007832bb  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
007832c1  c785e4feffff0000803f      MOV dword ptr [EBP + 0xfffffee4],0x3f800000
007832cb  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
007832d3  e8a894c8ff                CALL 0x0040c780
007832d8  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
007832de  f30f1000                  MOVSS XMM0,dword ptr [EAX]
007832e2  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
007832e8  50                        PUSH EAX
007832e9  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
007832f1  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
007832f9  e8923fc9ff                CALL 0x00417290
007832fe  f30f109de4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee4]
00783306  8d973c030000              LEA EDX,[EDI + 0x33c]
0078330c  6a00                      PUSH 0x0
0078330e  50                        PUSH EAX
0078330f  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00783315  e8a6ce2800                CALL 0x00a101c0
0078331a  83c408                    ADD ESP,0x8
0078331d  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00783323  50                        PUSH EAX
00783324  e887a00500                CALL 0x007dd3b0
00783329  6840b6c700                PUSH 0xc7b640
0078332e  8d8f60030000              LEA ECX,[EDI + 0x360]
00783334  e877a00500                CALL 0x007dd3b0
00783339  e9347f0000                JMP 0x0078b272
0078333e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783344  e81745c9ff                CALL 0x00417860
00783349  6a00                      PUSH 0x0
0078334b  57                        PUSH EDI
0078334c  8bc8                      MOV ECX,EAX
0078334e  e8ad6c2300                CALL 0x009ba000
00783353  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00783359  e8520fcaff                CALL 0x004242b0
0078335e  e90f7f0000                JMP 0x0078b272
00783363  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783369  e81241c8ff                CALL 0x00407480
0078336e  8bc8                      MOV ECX,EAX
00783370  e8db56caff                CALL 0x00428a50
00783375  8bc8                      MOV ECX,EAX
00783377  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0078337d  33f6                      XOR ESI,ESI
0078337f  e86c43c9ff                CALL 0x004176f0
00783384  85c0                      TEST EAX,EAX
00783386  0f84e67e0000              JZ 0x0078b272
0078338c  0f1f4000                  NOP dword ptr [EAX]
00783390  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
00783396  56                        PUSH ESI
00783397  e87442c9ff                CALL 0x00417610
0078339c  8bc8                      MOV ECX,EAX
0078339e  e85d2acbff                CALL 0x00435e00
007833a3  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
007833a9  85c0                      TEST EAX,EAX
007833ab  740b                      JZ 0x007833b8
007833ad  8bc8                      MOV ECX,EAX
007833af  e8dc55f5ff                CALL 0x006d8990
007833b4  84c0                      TEST AL,AL
007833b6  7515                      JNZ 0x007833cd
007833b8  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
007833be  46                        INC ESI
007833bf  e82c43c9ff                CALL 0x004176f0
007833c4  3bf0                      CMP ESI,EAX
007833c6  72c8                      JC 0x00783390
007833c8  e9a57e0000                JMP 0x0078b272
007833cd  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
007833d3  8bcf                      MOV ECX,EDI
007833d5  56                        PUSH ESI
007833d6  e8455ff2ff                CALL 0x006a9320
007833db  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
007833e1  8bce                      MOV ECX,ESI
007833e3  50                        PUSH EAX
007833e4  e8a73ec9ff                CALL 0x00417290
007833e9  50                        PUSH EAX
007833ea  8d8f3c030000              LEA ECX,[EDI + 0x33c]
007833f0  e8bb9f0500                CALL 0x007dd3b0
007833f5  6840b6c700                PUSH 0xc7b640
007833fa  8d8f60030000              LEA ECX,[EDI + 0x360]
00783400  e8ab9f0500                CALL 0x007dd3b0
00783405  c787340300000000803f      MOV dword ptr [EDI + 0x334],0x3f800000
0078340f  e95e7e0000                JMP 0x0078b272
00783414  6a00                      PUSH 0x0
00783416  6800400000                PUSH 0x4000
0078341b  8bcf                      MOV ECX,EDI
0078341d  c687d81d000000            MOV byte ptr [EDI + 0x1dd8],0x0
00783424  e80740c9ff                CALL 0x00417430
00783429  84c0                      TEST AL,AL
0078342b  7521                      JNZ 0x0078344e
0078342d  3887d4260000              CMP byte ptr [EDI + 0x26d4],AL
00783433  750c                      JNZ 0x00783441
00783435  c787d026000000000000      MOV dword ptr [EDI + 0x26d0],0x0
0078343f  eb06                      JMP 0x00783447
00783441  ff87d0260000              INC dword ptr [EDI + 0x26d0]
00783447  c687d426000000            MOV byte ptr [EDI + 0x26d4],0x0
0078344e  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
00783455  0f84177e0000              JZ 0x0078b272
0078345b  80bf1c13000000            CMP byte ptr [EDI + 0x131c],0x0
00783462  7407                      JZ 0x0078346b
00783464  8bcf                      MOV ECX,EDI
00783466  e835f5ffff                CALL 0x007829a0
0078346b  8b8f3c140000              MOV ECX,dword ptr [EDI + 0x143c]
00783471  8db73c030000              LEA ESI,[EDI + 0x33c]
00783477  85c9                      TEST ECX,ECX
00783479  7416                      JZ 0x00783491
0078347b  56                        PUSH ESI
0078347c  e86f54caff                CALL 0x004288f0
00783481  8b8f3c140000              MOV ECX,dword ptr [EDI + 0x143c]
00783487  6840b6c700                PUSH 0xc7b640
0078348c  e87f54caff                CALL 0x00428910
00783491  8b8f40140000              MOV ECX,dword ptr [EDI + 0x1440]
00783497  85c9                      TEST ECX,ECX
00783499  7416                      JZ 0x007834b1
0078349b  56                        PUSH ESI
0078349c  e84f54caff                CALL 0x004288f0
007834a1  8b8f40140000              MOV ECX,dword ptr [EDI + 0x1440]
007834a7  6840b6c700                PUSH 0xc7b640
007834ac  e85f54caff                CALL 0x00428910
007834b1  8b8744140000              MOV EAX,dword ptr [EDI + 0x1444]
007834b7  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
007834bd  85c0                      TEST EAX,EAX
007834bf  743e                      JZ 0x007834ff
007834c1  f30f1015d8adba00          MOVSS XMM2,dword ptr [0x00baadd8]
007834c9  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
007834cf  0f57c9                    XORPS XMM1,XMM1
007834d2  e8b9c92800                CALL 0x00a0fe90
007834d7  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
007834dd  50                        PUSH EAX
007834de  e80d3ec9ff                CALL 0x004172f0
007834e3  8b8f44140000              MOV ECX,dword ptr [EDI + 0x1444]
007834e9  56                        PUSH ESI
007834ea  e80154caff                CALL 0x004288f0
007834ef  8b8f44140000              MOV ECX,dword ptr [EDI + 0x1444]
007834f5  6840b6c700                PUSH 0xc7b640
007834fa  e81154caff                CALL 0x00428910
007834ff  8b8f781e0000              MOV ECX,dword ptr [EDI + 0x1e78]
00783505  85c9                      TEST ECX,ECX
00783507  7416                      JZ 0x0078351f
00783509  56                        PUSH ESI
0078350a  e8e153caff                CALL 0x004288f0
0078350f  8b8f781e0000              MOV ECX,dword ptr [EDI + 0x1e78]
00783515  6840b6c700                PUSH 0xc7b640
0078351a  e8f153caff                CALL 0x00428910
0078351f  8b8f7c1e0000              MOV ECX,dword ptr [EDI + 0x1e7c]
00783525  85c9                      TEST ECX,ECX
00783527  7416                      JZ 0x0078353f
00783529  56                        PUSH ESI
0078352a  e8c153caff                CALL 0x004288f0
0078352f  8b8f7c1e0000              MOV ECX,dword ptr [EDI + 0x1e7c]
00783535  6840b6c700                PUSH 0xc7b640
0078353a  e8d153caff                CALL 0x00428910
0078353f  8b8f801e0000              MOV ECX,dword ptr [EDI + 0x1e80]
00783545  85c9                      TEST ECX,ECX
00783547  7416                      JZ 0x0078355f
00783549  56                        PUSH ESI
0078354a  e8a153caff                CALL 0x004288f0
0078354f  8b8f801e0000              MOV ECX,dword ptr [EDI + 0x1e80]
00783555  6840b6c700                PUSH 0xc7b640
0078355a  e8b153caff                CALL 0x00428910
0078355f  8d8f841e0000              LEA ECX,[EDI + 0x1e84]
00783565  e8368ec8ff                CALL 0x0040c3a0
0078356a  85c0                      TEST EAX,EAX
0078356c  7442                      JZ 0x007835b0
0078356e  8d8f841e0000              LEA ECX,[EDI + 0x1e84]
00783574  e8278ec8ff                CALL 0x0040c3a0
00783579  8bc8                      MOV ECX,EAX
0078357b  e8003bd3ff                CALL 0x004b7080
00783580  3bc7                      CMP EAX,EDI
00783582  752c                      JNZ 0x007835b0
00783584  8d8f841e0000              LEA ECX,[EDI + 0x1e84]
0078358a  e8118ec8ff                CALL 0x0040c3a0
0078358f  56                        PUSH ESI
00783590  8bc8                      MOV ECX,EAX
00783592  e85953caff                CALL 0x004288f0
00783597  8d8f841e0000              LEA ECX,[EDI + 0x1e84]
0078359d  e8fe8dc8ff                CALL 0x0040c3a0
007835a2  8d8f60030000              LEA ECX,[EDI + 0x360]
007835a8  51                        PUSH ECX
007835a9  8bc8                      MOV ECX,EAX
007835ab  e86053caff                CALL 0x00428910
007835b0  8b8f881e0000              MOV ECX,dword ptr [EDI + 0x1e88]
007835b6  85c9                      TEST ECX,ECX
007835b8  7416                      JZ 0x007835d0
007835ba  56                        PUSH ESI
007835bb  e83053caff                CALL 0x004288f0
007835c0  8b8f881e0000              MOV ECX,dword ptr [EDI + 0x1e88]
007835c6  6840b6c700                PUSH 0xc7b640
007835cb  e84053caff                CALL 0x00428910
007835d0  8bcf                      MOV ECX,EDI
007835d2  e83944fdff                CALL 0x00757a10
007835d7  8bcf                      MOV ECX,EDI
007835d9  f30f11879c030000          MOVSS dword ptr [EDI + 0x39c],XMM0
007835e1  e82a7b0200                CALL 0x007ab110
007835e6  6800000002                PUSH 0x2000000
007835eb  6a00                      PUSH 0x0
007835ed  8bcf                      MOV ECX,EDI
007835ef  8885dafeffff              MOV byte ptr [EBP + 0xfffffeda],AL
007835f5  e8363ec9ff                CALL 0x00417430
007835fa  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
00783602  0f57d2                    XORPS XMM2,XMM2
00783605  f30f102504a3ba00          MOVSS XMM4,dword ptr [0x00baa304]
0078360d  84c0                      TEST AL,AL
0078360f  740f                      JZ 0x00783620
00783611  c787701e000000000000      MOV dword ptr [EDI + 0x1e70],0x0
0078361b  e903020000                JMP 0x00783823
00783620  0f2f9750030000            COMISS XMM2,dword ptr [EDI + 0x350]
00783627  770d                      JA 0x00783636
00783629  0f2f97701e0000            COMISS XMM2,dword ptr [EDI + 0x1e70]
00783630  0f86ed010000              JBE 0x00783823
00783636  80bf7015000000            CMP byte ptr [EDI + 0x1570],0x0
0078363d  7509                      JNZ 0x00783648
0078363f  83bf8401000005            CMP dword ptr [EDI + 0x184],0x5
00783646  7433                      JZ 0x0078367b
00783648  6800000004                PUSH 0x4000000
0078364d  6a00                      PUSH 0x0
0078364f  8bcf                      MOV ECX,EDI
00783651  e8da3dc9ff                CALL 0x00417430
00783656  84c0                      TEST AL,AL
00783658  7519                      JNZ 0x00783673
0078365a  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
00783664  c787701e000000000000      MOV dword ptr [EDI + 0x1e70],0x0
0078366e  e9a5010000                JMP 0x00783818
00783673  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
0078367b  f30f108f881f0000          MOVSS XMM1,dword ptr [EDI + 0x1f88]
00783683  f30f1097701e0000          MOVSS XMM2,dword ptr [EDI + 0x1e70]
0078368b  f30f5cca                  SUBSS XMM1,XMM2
0078368f  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00783696  f30f118f881f0000          MOVSS dword ptr [EDI + 0x1f88],XMM1
0078369e  7618                      JBE 0x007836b8
007836a0  f30f59c8                  MULSS XMM1,XMM0
007836a4  f30f10878c1f0000          MOVSS XMM0,dword ptr [EDI + 0x1f8c]
007836ac  f30f5cc1                  SUBSS XMM0,XMM1
007836b0  f30f11878c1f0000          MOVSS dword ptr [EDI + 0x1f8c],XMM0
007836b8  f30f589750030000          ADDSS XMM2,dword ptr [EDI + 0x350]
007836c0  6800000004                PUSH 0x4000000
007836c5  6a00                      PUSH 0x0
007836c7  8bcf                      MOV ECX,EDI
007836c9  f30f119750030000          MOVSS dword ptr [EDI + 0x350],XMM2
007836d1  e85a3dc9ff                CALL 0x00417430
007836d6  f30f1087701e0000          MOVSS XMM0,dword ptr [EDI + 0x1e70]
007836de  0f57d2                    XORPS XMM2,XMM2
007836e1  f30f102504a3ba00          MOVSS XMM4,dword ptr [0x00baa304]
007836e9  84c0                      TEST AL,AL
007836eb  7449                      JZ 0x00783736
007836ed  f30f58c4                  ADDSS XMM0,XMM4
007836f1  0f2fd0                    COMISS XMM2,XMM0
007836f4  f30f1187701e0000          MOVSS dword ptr [EDI + 0x1e70],XMM0
007836fc  772b                      JA 0x00783729
007836fe  f30f100504aeba00          MOVSS XMM0,dword ptr [0x00baae04]
00783706  0f2f8750030000            COMISS XMM0,dword ptr [EDI + 0x350]
0078370d  771a                      JA 0x00783729
0078370f  33c0                      XOR EAX,EAX
00783711  388770150000              CMP byte ptr [EDI + 0x1570],AL
00783717  0f94c0                    SETZ AL
0078371a  8d044503000000            LEA EAX,[EAX*0x2 + 0x3]
00783721  898784010000              MOV dword ptr [EDI + 0x184],EAX
00783727  eb1d                      JMP 0x00783746
00783729  b803000000                MOV EAX,0x3
0078372e  898784010000              MOV dword ptr [EDI + 0x184],EAX
00783734  eb10                      JMP 0x00783746
00783736  f30f580590a4ba00          ADDSS XMM0,dword ptr [0x00baa490]
0078373e  f30f1187701e0000          MOVSS dword ptr [EDI + 0x1e70],XMM0
00783746  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0078374e  0f2fc2                    COMISS XMM0,XMM2
00783751  0f86cc000000              JBE 0x00783823
00783757  6800000004                PUSH 0x4000000
0078375c  6a00                      PUSH 0x0
0078375e  8bcf                      MOV ECX,EDI
00783760  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
0078376a  c787701e000000000000      MOV dword ptr [EDI + 0x1e70],0x0
00783774  e8b73cc9ff                CALL 0x00417430
00783779  84c0                      TEST AL,AL
0078377b  0f8497000000              JZ 0x00783818
00783781  6800000004                PUSH 0x4000000
00783786  6a00                      PUSH 0x0
00783788  8bcf                      MOV ECX,EDI
0078378a  e8713cc9ff                CALL 0x00417400
0078378f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783795  e846d3c9ff                CALL 0x00420ae0
0078379a  8bc8                      MOV ECX,EAX
0078379c  e88fb60a00                CALL 0x0082ee30
007837a1  84c0                      TEST AL,AL
007837a3  7573                      JNZ 0x00783818
007837a5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007837ab  e8a053caff                CALL 0x00428b50
007837b0  8bc8                      MOV ECX,EAX
007837b2  e879b60a00                CALL 0x0082ee30
007837b7  84c0                      TEST AL,AL
007837b9  755d                      JNZ 0x00783818
007837bb  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
007837c2  c6871004000001            MOV byte ptr [EDI + 0x410],0x1
007837c9  754d                      JNZ 0x00783818
007837cb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007837d1  6a04                      PUSH 0x4
007837d3  e898fef7ff                CALL 0x00703670
007837d8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007837e0  51                        PUSH ECX
007837e1  c704240000803f            MOV dword ptr [ESP],0x3f800000
007837e8  8bcf                      MOV ECX,EDI
007837ea  6a00                      PUSH 0x0
007837ec  6a02                      PUSH 0x2
007837ee  68f3010000                PUSH 0x1f3
007837f3  e8782cf3ff                CALL 0x006b6470
007837f8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00783800  51                        PUSH ECX
00783801  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783808  8bcf                      MOV ECX,EDI
0078380a  6a00                      PUSH 0x0
0078380c  6a02                      PUSH 0x2
0078380e  68d3010000                PUSH 0x1d3
00783813  e8582cf3ff                CALL 0x006b6470
00783818  f30f102504a3ba00          MOVSS XMM4,dword ptr [0x00baa304]
00783820  0f57d2                    XORPS XMM2,XMM2
00783823  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
0078382a  f30f101d30a6ba00          MOVSS XMM3,dword ptr [0x00baa630]
00783832  754f                      JNZ 0x00783883
00783834  f30f108f8c1f0000          MOVSS XMM1,dword ptr [EDI + 0x1f8c]
0078383c  0f28c1                    MOVAPS XMM0,XMM1
0078383f  f30f5887881f0000          ADDSS XMM0,dword ptr [EDI + 0x1f88]
00783847  0f2fc2                    COMISS XMM0,XMM2
0078384a  f30f1187881f0000          MOVSS dword ptr [EDI + 0x1f88],XMM0
00783852  7223                      JC 0x00783877
00783854  0f2fca                    COMISS XMM1,XMM2
00783857  c787881f000000000000      MOV dword ptr [EDI + 0x1f88],0x0
00783861  7614                      JBE 0x00783877
00783863  0f2fd9                    COMISS XMM3,XMM1
00783866  7605                      JBE 0x0078386d
00783868  0f57c9                    XORPS XMM1,XMM1
0078386b  eb0e                      JMP 0x0078387b
0078386d  f30f590d28adba00          MULSS XMM1,dword ptr [0x00baad28]
00783875  eb04                      JMP 0x0078387b
00783877  f30f58cc                  ADDSS XMM1,XMM4
0078387b  f30f118f8c1f0000          MOVSS dword ptr [EDI + 0x1f8c],XMM1
00783883  6a00                      PUSH 0x0
00783885  6800400000                PUSH 0x4000
0078388a  8bcf                      MOV ECX,EDI
0078388c  e89f3bc9ff                CALL 0x00417430
00783891  84c0                      TEST AL,AL
00783893  0f852c060000              JNZ 0x00783ec5
00783899  8d4d9c                    LEA ECX,[EBP + -0x64]
0078389c  e8cf23cbff                CALL 0x00435c70
007838a1  6a00                      PUSH 0x0
007838a3  6878020000                PUSH 0x278
007838a8  8bcf                      MOV ECX,EDI
007838aa  e831cefeff                CALL 0x007706e0
007838af  84c0                      TEST AL,AL
007838b1  7519                      JNZ 0x007838cc
007838b3  8d8f08150000              LEA ECX,[EDI + 0x1508]
007838b9  6878020000                PUSH 0x278
007838be  e82dcd1a00                CALL 0x009305f0
007838c3  84c0                      TEST AL,AL
007838c5  7505                      JNZ 0x007838cc
007838c7  8b471c                    MOV EAX,dword ptr [EDI + 0x1c]
007838ca  eb0d                      JMP 0x007838d9
007838cc  8b471c                    MOV EAX,dword ptr [EDI + 0x1c]
007838cf  816718ff7fffff            AND dword ptr [EDI + 0x18],0xffff7fff
007838d6  89471c                    MOV dword ptr [EDI + 0x1c],EAX
007838d9  8b4f18                    MOV ECX,dword ptr [EDI + 0x18]
007838dc  81e100800000              AND ECX,0x8000
007838e2  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
007838e8  83c900                    OR ECX,0x0
007838eb  0f8491010000              JZ 0x00783a82
007838f1  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
007838f7  c685c4feffff00            MOV byte ptr [EBP + 0xfffffec4],0x0
007838fe  8d7708                    LEA ESI,[EDI + 0x8]
00783901  50                        PUSH EAX
00783902  8bce                      MOV ECX,ESI
00783904  e89728cdff                CALL 0x004561a0
00783909  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078390f  8bce                      MOV ECX,ESI
00783911  50                        PUSH EAX
00783912  e87928cdff                CALL 0x00456190
00783917  50                        PUSH EAX
00783918  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0078391e  e8ed8dcaff                CALL 0x0042c710
00783923  84c0                      TEST AL,AL
00783925  0f84da000000              JZ 0x00783a05
0078392b  bf01000000                MOV EDI,0x1
00783930  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
00783936  e8658ac8ff                CALL 0x0040c3a0
0078393b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0078393f  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
00783946  9f                        LAHF
00783947  f6c444                    TEST AH,0x44
0078394a  0f8a82000000              JP 0x007839d2
00783950  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
00783956  e8458ac8ff                CALL 0x0040c3a0
0078395b  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
0078395e  2500800000                AND EAX,0x8000
00783963  83c800                    OR EAX,0x0
00783966  746a                      JZ 0x007839d2
00783968  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0078396e  e82d8ac8ff                CALL 0x0040c3a0
00783973  83781000                  CMP dword ptr [EAX + 0x10],0x0
00783977  7417                      JZ 0x00783990
00783979  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0078397f  e81c8ac8ff                CALL 0x0040c3a0
00783984  83c010                    ADD EAX,0x10
00783987  8d4d9c                    LEA ECX,[EBP + -0x64]
0078398a  50                        PUSH EAX
0078398b  e8d05fd1ff                CALL 0x00499960
00783990  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
00783996  e8058ac8ff                CALL 0x0040c3a0
0078399b  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
007839a1  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
007839a7  0fb6c9                    MOVZX ECX,CL
007839aa  817818b6030000            CMP dword ptr [EAX + 0x18],0x3b6
007839b1  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
007839b7  50                        PUSH EAX
007839b8  0f44cf                    CMOVZ ECX,EDI
007839bb  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
007839c1  8bce                      MOV ECX,ESI
007839c3  e8c858d1ff                CALL 0x00499290
007839c8  8b00                      MOV EAX,dword ptr [EAX]
007839ca  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
007839d0  eb0b                      JMP 0x007839dd
007839d2  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
007839d8  e8d3d7d1ff                CALL 0x004a11b0
007839dd  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007839e3  8bce                      MOV ECX,ESI
007839e5  50                        PUSH EAX
007839e6  e8a527cdff                CALL 0x00456190
007839eb  50                        PUSH EAX
007839ec  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
007839f2  e8198dcaff                CALL 0x0042c710
007839f7  84c0                      TEST AL,AL
007839f9  0f8531ffffff              JNZ 0x00783930
007839ff  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00783a05  816718ff7fffff            AND dword ptr [EDI + 0x18],0xffff7fff
00783a0c  ff87a81e0000              INC dword ptr [EDI + 0x1ea8]
00783a12  80bdc4feffff00            CMP byte ptr [EBP + 0xfffffec4],0x0
00783a19  8b471c                    MOV EAX,dword ptr [EDI + 0x1c]
00783a1c  89471c                    MOV dword ptr [EDI + 0x1c],EAX
00783a1f  0f8596000000              JNZ 0x00783abb
00783a25  6a00                      PUSH 0x0
00783a27  6a40                      PUSH 0x40
00783a29  8bcf                      MOV ECX,EDI
00783a2b  e8b039c9ff                CALL 0x004173e0
00783a30  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00783a36  e8b5d0c9ff                CALL 0x00420af0
00783a3b  684e020000                PUSH 0x24e
00783a40  8bc8                      MOV ECX,EAX
00783a42  e819ab1a00                CALL 0x0092e560
00783a47  84c0                      TEST AL,AL
00783a49  7570                      JNZ 0x00783abb
00783a4b  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00783a51  e89ad0c9ff                CALL 0x00420af0
00783a56  83ec08                    SUB ESP,0x8
00783a59  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00783a61  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783a68  6a00                      PUSH 0x0
00783a6a  6a01                      PUSH 0x1
00783a6c  51                        PUSH ECX
00783a6d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783a74  8bc8                      MOV ECX,EAX
00783a76  684e020000                PUSH 0x24e
00783a7b  e8b0a11a00                CALL 0x0092dc30
00783a80  eb39                      JMP 0x00783abb
00783a82  83bfa81e000000            CMP dword ptr [EDI + 0x1ea8],0x0
00783a89  7e30                      JLE 0x00783abb
00783a8b  6a00                      PUSH 0x0
00783a8d  6a03                      PUSH 0x3
00783a8f  8bcf                      MOV ECX,EDI
00783a91  e87a8cf2ff                CALL 0x006ac710
00783a96  84c0                      TEST AL,AL
00783a98  7421                      JZ 0x00783abb
00783a9a  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00783aa0  c787a81e000000000000      MOV dword ptr [EDI + 0x1ea8],0x0
00783aaa  e841d0c9ff                CALL 0x00420af0
00783aaf  684e020000                PUSH 0x24e
00783ab4  8bc8                      MOV ECX,EAX
00783ab6  e875a71a00                CALL 0x0092e230
00783abb  8b87a81e0000              MOV EAX,dword ptr [EDI + 0x1ea8]
00783ac1  85c0                      TEST EAX,EAX
00783ac3  0f8e4a030000              JLE 0x00783e13
00783ac9  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00783ad0  0f853d030000              JNZ 0x00783e13
00783ad6  660f6ec0                  MOVD XMM0,EAX
00783ada  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
00783ae0  0f5bc0                    CVTDQ2PS XMM0,XMM0
00783ae3  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
00783ae9  c785b8feffff0000803f      MOV dword ptr [EBP + 0xfffffeb8],0x3f800000
00783af3  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
00783afb  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
00783b03  e8788cc8ff                CALL 0x0040c780
00783b08  6a00                      PUSH 0x0
00783b0a  6a40                      PUSH 0x40
00783b0c  8bcf                      MOV ECX,EDI
00783b0e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00783b12  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00783b1a  e81139c9ff                CALL 0x00417430
00783b1f  8b0f                      MOV ECX,dword ptr [EDI]
00783b21  0f57c9                    XORPS XMM1,XMM1
00783b24  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00783b2c  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
00783b2f  84c0                      TEST AL,AL
00783b31  0f84c4000000              JZ 0x00783bfb
00783b37  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00783b3f  51                        PUSH ECX
00783b40  32c9                      XOR CL,CL
00783b42  c7042400000000            MOV dword ptr [ESP],0x0
00783b49  e8721a2900                CALL 0x00a155c0
00783b4e  83ec1c                    SUB ESP,0x1c
00783b51  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00783b57  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00783b5d  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00783b65  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
00783b6d  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00783b73  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00783b7b  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00783b83  0f28d8                    MOVAPS XMM3,XMM0
00783b86  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
00783b8e  0f28d0                    MOVAPS XMM2,XMM0
00783b91  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00783b99  0f28c8                    MOVAPS XMM1,XMM0
00783b9c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783ba3  e8a81fcbff                CALL 0x00435b50
00783ba8  6a01                      PUSH 0x1
00783baa  6a00                      PUSH 0x0
00783bac  6a00                      PUSH 0x0
00783bae  6a02                      PUSH 0x2
00783bb0  50                        PUSH EAX
00783bb1  8bcf                      MOV ECX,EDI
00783bb3  ffd6                      CALL ESI
00783bb5  83bfa81e000014            CMP dword ptr [EDI + 0x1ea8],0x14
00783bbc  0f8e90010000              JLE 0x00783d52
00783bc2  6a00                      PUSH 0x0
00783bc4  6a02                      PUSH 0x2
00783bc6  8bcf                      MOV ECX,EDI
00783bc8  e8438bf2ff                CALL 0x006ac710
00783bcd  84c0                      TEST AL,AL
00783bcf  0f847d010000              JZ 0x00783d52
00783bd5  83ec20                    SUB ESP,0x20
00783bd8  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00783bde  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
00783be6  c74424180000803f          MOV dword ptr [ESP + 0x18],0x3f800000
00783bee  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
00783bf6  e908010000                JMP 0x00783d03
00783bfb  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
00783c03  32c9                      XOR CL,CL
00783c05  e8b6192900                CALL 0x00a155c0
00783c0a  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00783c12  32c9                      XOR CL,CL
00783c14  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00783c1c  0f57c9                    XORPS XMM1,XMM1
00783c1f  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00783c27  e894192900                CALL 0x00a155c0
00783c2c  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00783c34  32c9                      XOR CL,CL
00783c36  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
00783c3e  0f57c9                    XORPS XMM1,XMM1
00783c41  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00783c49  e872192900                CALL 0x00a155c0
00783c4e  f30f108db8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb8]
00783c56  8d4dc4                    LEA ECX,[EBP + -0x3c]
00783c59  83ec20                    SUB ESP,0x20
00783c5c  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
00783c62  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
00783c6a  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00783c70  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00783c76  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00783c7e  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00783c84  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00783c8c  c744240ccdcc4c3f          MOV dword ptr [ESP + 0xc],0x3f4ccccd
00783c94  0f28d8                    MOVAPS XMM3,XMM0
00783c97  c7442408cdcccc3f          MOV dword ptr [ESP + 0x8],0x3fcccccd
00783c9f  0f28d0                    MOVAPS XMM2,XMM0
00783ca2  c7442404cdcccc3f          MOV dword ptr [ESP + 0x4],0x3fcccccd
00783caa  0f28c8                    MOVAPS XMM1,XMM0
00783cad  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783cb4  e8971ecbff                CALL 0x00435b50
00783cb9  6a01                      PUSH 0x1
00783cbb  6a00                      PUSH 0x0
00783cbd  6a00                      PUSH 0x0
00783cbf  6a02                      PUSH 0x2
00783cc1  50                        PUSH EAX
00783cc2  8bcf                      MOV ECX,EDI
00783cc4  ffd6                      CALL ESI
00783cc6  83bfa81e000014            CMP dword ptr [EDI + 0x1ea8],0x14
00783ccd  0f8e7f000000              JLE 0x00783d52
00783cd3  6a00                      PUSH 0x0
00783cd5  6a02                      PUSH 0x2
00783cd7  8bcf                      MOV ECX,EDI
00783cd9  e8328af2ff                CALL 0x006ac710
00783cde  84c0                      TEST AL,AL
00783ce0  7470                      JZ 0x00783d52
00783ce2  83ec20                    SUB ESP,0x20
00783ce5  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00783ceb  c744241c9a99193f          MOV dword ptr [ESP + 0x1c],0x3f19999a
00783cf3  c74424180000803f          MOV dword ptr [ESP + 0x18],0x3f800000
00783cfb  c74424140000803f          MOV dword ptr [ESP + 0x14],0x3f800000
00783d03  8b07                      MOV EAX,dword ptr [EDI]
00783d05  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00783d0d  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
00783d15  0f28d8                    MOVAPS XMM3,XMM0
00783d18  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00783d20  0f28d0                    MOVAPS XMM2,XMM0
00783d23  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00783d26  0f28c8                    MOVAPS XMM1,XMM0
00783d29  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00783d31  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00783d39  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783d40  e80b1ecbff                CALL 0x00435b50
00783d45  6a01                      PUSH 0x1
00783d47  6a01                      PUSH 0x1
00783d49  6aff                      PUSH -0x1
00783d4b  6a03                      PUSH 0x3
00783d4d  50                        PUSH EAX
00783d4e  8bcf                      MOV ECX,EDI
00783d50  ffd6                      CALL ESI
00783d52  8b87a81e0000              MOV EAX,dword ptr [EDI + 0x1ea8]
00783d58  83f81e                    CMP EAX,0x1e
00783d5b  0f8eb2000000              JLE 0x00783e13
00783d61  6a00                      PUSH 0x0
00783d63  83c0e2                    ADD EAX,-0x1e
00783d66  c787bc13000000000000      MOV dword ptr [EDI + 0x13bc],0x0
00783d70  6a40                      PUSH 0x40
00783d72  8bcf                      MOV ECX,EDI
00783d74  8987a81e0000              MOV dword ptr [EDI + 0x1ea8],EAX
00783d7a  e8b136c9ff                CALL 0x00417430
00783d7f  84c0                      TEST AL,AL
00783d81  743b                      JZ 0x00783dbe
00783d83  8b07                      MOV EAX,dword ptr [EDI]
00783d85  8d4d9c                    LEA ECX,[EBP + -0x64]
00783d88  6a1e                      PUSH 0x1e
00783d8a  51                        PUSH ECX
00783d8b  6a00                      PUSH 0x0
00783d8d  6a00                      PUSH 0x0
00783d8f  51                        PUSH ECX
00783d90  8bcf                      MOV ECX,EDI
00783d92  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783d99  ff5020                    CALL dword ptr [EAX + 0x20]
00783d9c  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00783da4  51                        PUSH ECX
00783da5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783dac  8bcf                      MOV ECX,EDI
00783dae  6a00                      PUSH 0x0
00783db0  6a02                      PUSH 0x2
00783db2  684f020000                PUSH 0x24f
00783db7  e8b426f3ff                CALL 0x006b6470
00783dbc  eb55                      JMP 0x00783e13
00783dbe  e89db1f6ff                CALL 0x006eef60
00783dc3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783dc9  50                        PUSH EAX
00783dca  6a00                      PUSH 0x0
00783dcc  6a00                      PUSH 0x0
00783dce  6840b6c700                PUSH 0xc7b640
00783dd3  8d873c030000              LEA EAX,[EDI + 0x33c]
00783dd9  50                        PUSH EAX
00783dda  6a13                      PUSH 0x13
00783ddc  68e8030000                PUSH 0x3e8
00783de1  e83a4dcaff                CALL 0x00428b20
00783de6  ff75a4                    PUSH dword ptr [EBP + -0x5c]
00783de9  8bf0                      MOV ESI,EAX
00783deb  8bce                      MOV ECX,ESI
00783ded  e8bed8caff                CALL 0x004316b0
00783df2  ff75a8                    PUSH dword ptr [EBP + -0x58]
00783df5  8bce                      MOV ECX,ESI
00783df7  e87432d3ff                CALL 0x004b7070
00783dfc  8bce                      MOV ECX,ESI
00783dfe  e8cd1fcbff                CALL 0x00435dd0
00783e03  6a03                      PUSH 0x3
00783e05  8bc8                      MOV ECX,EAX
00783e07  e81469c8ff                CALL 0x0040a720
00783e0c  8b06                      MOV EAX,dword ptr [ESI]
00783e0e  8bce                      MOV ECX,ESI
00783e10  ff500c                    CALL dword ptr [EAX + 0xc]
00783e13  83bf1c03000000            CMP dword ptr [EDI + 0x31c],0x0
00783e1a  7e70                      JLE 0x00783e8c
00783e1c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783e22  e8293ac9ff                CALL 0x00417850
00783e27  8bc8                      MOV ECX,EAX
00783e29  e82257caff                CALL 0x00429550
00783e2e  84c0                      TEST AL,AL
00783e30  745a                      JZ 0x00783e8c
00783e32  6683bfd22e000000          CMP word ptr [EDI + 0x2ed2],0x0
00783e3a  7550                      JNZ 0x00783e8c
00783e3c  8b07                      MOV EAX,dword ptr [EDI]
00783e3e  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00783e44  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00783e4c  83ec10                    SUB ESP,0x10
00783e4f  0f28d8                    MOVAPS XMM3,XMM0
00783e52  0f28d0                    MOVAPS XMM2,XMM0
00783e55  0f28c8                    MOVAPS XMM1,XMM0
00783e58  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00783e5b  c744240ccdcccc3e          MOV dword ptr [ESP + 0xc],0x3ecccccd
00783e63  c7442408cdcccc3e          MOV dword ptr [ESP + 0x8],0x3ecccccd
00783e6b  c7442404cdcccc3e          MOV dword ptr [ESP + 0x4],0x3ecccccd
00783e73  c704240000803f            MOV dword ptr [ESP],0x3f800000
00783e7a  e86192c8ff                CALL 0x0040d0e0
00783e7f  6a01                      PUSH 0x1
00783e81  6a01                      PUSH 0x1
00783e83  6aff                      PUSH -0x1
00783e85  6a03                      PUSH 0x3
00783e87  50                        PUSH EAX
00783e88  8bcf                      MOV ECX,EDI
00783e8a  ffd6                      CALL ESI
00783e8c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783e92  e8b939c9ff                CALL 0x00417850
00783e97  8bc8                      MOV ECX,EAX
00783e99  e8b256caff                CALL 0x00429550
00783e9e  84c0                      TEST AL,AL
00783ea0  7523                      JNZ 0x00783ec5
00783ea2  6a00                      PUSH 0x0
00783ea4  6a40                      PUSH 0x40
00783ea6  8bcf                      MOV ECX,EDI
00783ea8  e88335c9ff                CALL 0x00417430
00783ead  84c0                      TEST AL,AL
00783eaf  7414                      JZ 0x00783ec5
00783eb1  83bfa81e000000            CMP dword ptr [EDI + 0x1ea8],0x0
00783eb8  7f0b                      JG 0x00783ec5
00783eba  6a00                      PUSH 0x0
00783ebc  6a40                      PUSH 0x40
00783ebe  8bcf                      MOV ECX,EDI
00783ec0  e83b35c9ff                CALL 0x00417400
00783ec5  8bcf                      MOV ECX,EDI
00783ec7  e854a9f2ff                CALL 0x006ae820
00783ecc  6a00                      PUSH 0x0
00783ece  6800400000                PUSH 0x4000
00783ed3  8bcf                      MOV ECX,EDI
00783ed5  e85635c9ff                CALL 0x00417430
00783eda  84c0                      TEST AL,AL
00783edc  0f85fb000000              JNZ 0x00783fdd
00783ee2  8d8f1c040000              LEA ECX,[EDI + 0x41c]
00783ee8  e81352c8ff                CALL 0x00409100
00783eed  8d7748                    LEA ESI,[EDI + 0x48]
00783ef0  68a44bb600                PUSH 0xb64ba4
00783ef5  8bce                      MOV ECX,ESI
00783ef7  e83471c8ff                CALL 0x0040b030
00783efc  84c0                      TEST AL,AL
00783efe  0f84d9000000              JZ 0x00783fdd
00783f04  e857b0f6ff                CALL 0x006eef60
00783f09  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783f0f  50                        PUSH EAX
00783f10  6a0a                      PUSH 0xa
00783f12  6a00                      PUSH 0x0
00783f14  6840b6c700                PUSH 0xc7b640
00783f19  8d873c030000              LEA EAX,[EDI + 0x33c]
00783f1f  50                        PUSH EAX
00783f20  6a0c                      PUSH 0xc
00783f22  68e8030000                PUSH 0x3e8
00783f27  e8f44bcaff                CALL 0x00428b20
00783f2c  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
00783f32  8bf8                      MOV EDI,EAX
00783f34  51                        PUSH ECX
00783f35  8bcf                      MOV ECX,EDI
00783f37  e87425cdff                CALL 0x004564b0
00783f3c  51                        PUSH ECX
00783f3d  8bcf                      MOV ECX,EDI
00783f3f  c70424000020c1            MOV dword ptr [ESP],0xc1200000
00783f46  e8a51dcbff                CALL 0x00435cf0
00783f4b  8bce                      MOV ECX,ESI
00783f4d  e8ae32c9ff                CALL 0x00417200
00783f52  50                        PUSH EAX
00783f53  8bcf                      MOV ECX,EDI
00783f55  e8569acaff                CALL 0x0042d9b0
00783f5a  8bcf                      MOV ECX,EDI
00783f5c  e8bf33c9ff                CALL 0x00417320
00783f61  f30f1015ecadba00          MOVSS XMM2,dword ptr [0x00baadec]
00783f69  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00783f6f  0f57c9                    XORPS XMM1,XMM1
00783f72  8bf0                      MOV ESI,EAX
00783f74  e817bf2800                CALL 0x00a0fe90
00783f79  50                        PUSH EAX
00783f7a  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00783f80  8bce                      MOV ECX,ESI
00783f82  50                        PUSH EAX
00783f83  e888c52800                CALL 0x00a10510
00783f88  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
00783f8e  8bf0                      MOV ESI,EAX
00783f90  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00783f96  50                        PUSH EAX
00783f97  e894e6ffff                CALL 0x00782630
00783f9c  50                        PUSH EAX
00783f9d  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
00783fa3  8bce                      MOV ECX,ESI
00783fa5  50                        PUSH EAX
00783fa6  e875c42800                CALL 0x00a10420
00783fab  50                        PUSH EAX
00783fac  8bcf                      MOV ECX,EDI
00783fae  e80d24cdff                CALL 0x004563c0
00783fb3  6800100000                PUSH 0x1000
00783fb8  6a00                      PUSH 0x0
00783fba  8bcf                      MOV ECX,EDI
00783fbc  e81f34c9ff                CALL 0x004173e0
00783fc1  8b07                      MOV EAX,dword ptr [EDI]
00783fc3  8bcf                      MOV ECX,EDI
00783fc5  ff500c                    CALL dword ptr [EAX + 0xc]
00783fc8  51                        PUSH ECX
00783fc9  8bcf                      MOV ECX,EDI
00783fcb  c7042400000000            MOV dword ptr [ESP],0x0
00783fd2  e8d91ecbff                CALL 0x00435eb0
00783fd7  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00783fdd  ffb718160000              PUSH dword ptr [EDI + 0x1618]
00783fe3  b9187bc500                MOV ECX,0xc57b18
00783fe8  e8b3c52900                CALL 0x00a205a0
00783fed  84c0                      TEST AL,AL
00783fef  0f85d0000000              JNZ 0x007840c5
00783ff5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00783ffb  e8504bcaff                CALL 0x00428b50
00784000  8bc8                      MOV ECX,EAX
00784002  e829ae0a00                CALL 0x0082ee30
00784007  84c0                      TEST AL,AL
00784009  0f85b6000000              JNZ 0x007840c5
0078400f  ffb718160000              PUSH dword ptr [EDI + 0x1618]
00784015  68fcafb600                PUSH 0xb6affc
0078401a  6a01                      PUSH 0x1
0078401c  e89fd22800                CALL 0x00a112c0
00784021  83c40c                    ADD ESP,0xc
00784024  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00784028  0f8480000000              JZ 0x007840ae
0078402e  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00784035  7577                      JNZ 0x007840ae
00784037  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078403d  e81e38c9ff                CALL 0x00417860
00784042  6a00                      PUSH 0x0
00784044  57                        PUSH EDI
00784045  8bc8                      MOV ECX,EAX
00784047  e8b45f2300                CALL 0x009ba000
0078404c  e80faff6ff                CALL 0x006eef60
00784051  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
00784057  8bf8                      MOV EDI,EAX
00784059  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
0078405f  50                        PUSH EAX
00784060  e82b32c9ff                CALL 0x00417290
00784065  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
0078406d  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00784073  0f57c9                    XORPS XMM1,XMM1
00784076  8bf0                      MOV ESI,EAX
00784078  e813be2800                CALL 0x00a0fe90
0078407d  50                        PUSH EAX
0078407e  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00784084  8bce                      MOV ECX,ESI
00784086  50                        PUSH EAX
00784087  e894c32800                CALL 0x00a10420
0078408c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00784092  57                        PUSH EDI
00784093  6a00                      PUSH 0x0
00784095  6a00                      PUSH 0x0
00784097  6840b6c700                PUSH 0xc7b640
0078409c  50                        PUSH EAX
0078409d  6a0f                      PUSH 0xf
0078409f  68e8030000                PUSH 0x3e8
007840a4  e8774acaff                CALL 0x00428b20
007840a9  e9c4710000                JMP 0x0078b272
007840ae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007840b4  e837fcfcff                CALL 0x00753cf0
007840b9  8bc8                      MOV ECX,EAX
007840bb  e8c0352300                CALL 0x009b7680
007840c0  e9ad710000                JMP 0x0078b272
007840c5  80bf9813000000            CMP byte ptr [EDI + 0x1398],0x0
007840cc  7418                      JZ 0x007840e6
007840ce  8d4f48                    LEA ECX,[EDI + 0x48]
007840d1  68eca4b100                PUSH 0xb1a4ec
007840d6  e87564c8ff                CALL 0x0040a550
007840db  84c0                      TEST AL,AL
007840dd  7407                      JZ 0x007840e6
007840df  c6879813000000            MOV byte ptr [EDI + 0x1398],0x0
007840e6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007840ec  e85f37c9ff                CALL 0x00417850
007840f1  8bc8                      MOV ECX,EAX
007840f3  e85854caff                CALL 0x00429550
007840f8  84c0                      TEST AL,AL
007840fa  741a                      JZ 0x00784116
007840fc  8d4f48                    LEA ECX,[EDI + 0x48]
007840ff  68bcafb600                PUSH 0xb6afbc
00784104  e84764c8ff                CALL 0x0040a550
00784109  84c0                      TEST AL,AL
0078410b  7409                      JZ 0x00784116
0078410d  6a00                      PUSH 0x0
0078410f  8bcf                      MOV ECX,EDI
00784111  e87a7eccff                CALL 0x0044bf90
00784116  80bf9913000000            CMP byte ptr [EDI + 0x1399],0x0
0078411d  0f845d010000              JZ 0x00784280
00784123  80bf9813000000            CMP byte ptr [EDI + 0x1398],0x0
0078412a  0f8550010000              JNZ 0x00784280
00784130  6a00                      PUSH 0x0
00784132  683f020000                PUSH 0x23f
00784137  8bcf                      MOV ECX,EDI
00784139  c6879913000000            MOV byte ptr [EDI + 0x1399],0x0
00784140  e89bc5feff                CALL 0x007706e0
00784145  84c0                      TEST AL,AL
00784147  0f8433010000              JZ 0x00784280
0078414d  8d8f08150000              LEA ECX,[EDI + 0x1508]
00784153  6a37                      PUSH 0x37
00784155  e826c51a00                CALL 0x00930680
0078415a  84c0                      TEST AL,AL
0078415c  0f851e010000              JNZ 0x00784280
00784162  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
0078416a  8d95e4feffff              LEA EDX,[EBP + 0xfffffee4]
00784170  f30f5c876c150000          SUBSS XMM0,dword ptr [EDI + 0x156c]
00784178  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
0078417e  c785b8feffff01000000      MOV dword ptr [EBP + 0xfffffeb8],0x1
00784188  f30f2cc0                  CVTTSS2SI EAX,XMM0
0078418c  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
00784192  e8e989c9ff                CALL 0x0041cb80
00784197  83bf4413000001            CMP dword ptr [EDI + 0x1344],0x1
0078419e  8d8f70170000              LEA ECX,[EDI + 0x1770]
007841a4  683f020000                PUSH 0x23f
007841a9  8b30                      MOV ESI,dword ptr [EAX]
007841ab  b801000000                MOV EAX,0x1
007841b0  0f4ef0                    CMOVLE ESI,EAX
007841b3  e8487be4ff                CALL 0x005cbd00
007841b8  56                        PUSH ESI
007841b9  8bc8                      MOV ECX,EAX
007841bb  e8604e0600                CALL 0x007e9020
007841c0  85c0                      TEST EAX,EAX
007841c2  0f85b8000000              JNZ 0x00784280
007841c8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007841d0  51                        PUSH ECX
007841d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
007841d8  8bcf                      MOV ECX,EDI
007841da  50                        PUSH EAX
007841db  6a14                      PUSH 0x14
007841dd  68b5000000                PUSH 0xb5
007841e2  e88922f3ff                CALL 0x006b6470
007841e7  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007841ef  51                        PUSH ECX
007841f0  c704240000803f            MOV dword ptr [ESP],0x3f800000
007841f7  8bcf                      MOV ECX,EDI
007841f9  6a00                      PUSH 0x0
007841fb  6a02                      PUSH 0x2
007841fd  6a1e                      PUSH 0x1e
007841ff  e86c22f3ff                CALL 0x006b6470
00784204  51                        PUSH ECX
00784205  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078420c  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00784212  6840b6c700                PUSH 0xc7b640
00784217  e8542fc8ff                CALL 0x00407170
0078421c  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00784224  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0078422a  50                        PUSH EAX
0078422b  57                        PUSH EDI
0078422c  6894bcb600                PUSH 0xb6bc94
00784231  ba0e000000                MOV EDX,0xe
00784236  e875eff2ff                CALL 0x006b31b0
0078423b  83c414                    ADD ESP,0x14
0078423e  b903000000                MOV ECX,0x3
00784243  e8c8adefff                CALL 0x0067f010
00784248  8d7001                    LEA ESI,[EAX + 0x1]
0078424b  85f6                      TEST ESI,ESI
0078424d  7e19                      JLE 0x00784268
0078424f  90                        NOP
00784250  6840b6c700                PUSH 0xc7b640
00784255  8d873c030000              LEA EAX,[EDI + 0x33c]
0078425b  8bcf                      MOV ECX,EDI
0078425d  50                        PUSH EAX
0078425e  e8ddb30300                CALL 0x007bf640
00784263  83ee01                    SUB ESI,0x1
00784266  75e8                      JNZ 0x00784250
00784268  6a01                      PUSH 0x1
0078426a  6a01                      PUSH 0x1
0078426c  6a37                      PUSH 0x37
0078426e  8d8f08150000              LEA ECX,[EDI + 0x1508]
00784274  e817c11a00                CALL 0x00930390
00784279  8bcf                      MOV ECX,EDI
0078427b  e8f0f2fdff                CALL 0x00763570
00784280  6a00                      PUSH 0x0
00784282  6800400000                PUSH 0x4000
00784287  8bcf                      MOV ECX,EDI
00784289  e8a231c9ff                CALL 0x00417430
0078428e  84c0                      TEST AL,AL
00784290  0f8555030000              JNZ 0x007845eb
00784296  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078429c  e8df31c8ff                CALL 0x00407480
007842a1  6a00                      PUSH 0x0
007842a3  6881020000                PUSH 0x281
007842a8  8bcf                      MOV ECX,EDI
007842aa  8bf0                      MOV ESI,EAX
007842ac  e82fc4feff                CALL 0x007706e0
007842b1  84c0                      TEST AL,AL
007842b3  0f8432030000              JZ 0x007845eb
007842b9  8bce                      MOV ECX,ESI
007842bb  e8f023cdff                CALL 0x004566b0
007842c0  85c0                      TEST EAX,EAX
007842c2  0f8e23030000              JLE 0x007845eb
007842c8  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
007842d0  0f57d2                    XORPS XMM2,XMM2
007842d3  8bcf                      MOV ECX,EDI
007842d5  e88684f2ff                CALL 0x006ac760
007842da  85c0                      TEST EAX,EAX
007842dc  0f8409030000              JZ 0x007845eb
007842e2  8bce                      MOV ECX,ESI
007842e4  e86747caff                CALL 0x00428a50
007842e9  8bc8                      MOV ECX,EAX
007842eb  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
007842f1  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
007842fb  33f6                      XOR ESI,ESI
007842fd  e8ee33c9ff                CALL 0x004176f0
00784302  85c0                      TEST EAX,EAX
00784304  0f8480000000              JZ 0x0078438a
0078430a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00784310  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
00784316  56                        PUSH ESI
00784317  e80433c9ff                CALL 0x00417620
0078431c  8b08                      MOV ECX,dword ptr [EAX]
0078431e  e81d1bcbff                CALL 0x00435e40
00784323  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
00784329  85c0                      TEST EAX,EAX
0078432b  7440                      JZ 0x0078436d
0078432d  681048c300                PUSH 0xc34810
00784332  8d4de0                    LEA ECX,[EBP + -0x20]
00784335  51                        PUSH ECX
00784336  8bc8                      MOV ECX,EAX
00784338  e88334c9ff                CALL 0x004177c0
0078433d  8bd0                      MOV EDX,EAX
0078433f  8d8d64feffff              LEA ECX,[EBP + 0xfffffe64]
00784345  e8262ec9ff                CALL 0x00417170
0078434a  83c404                    ADD ESP,0x4
0078434d  8bc8                      MOV ECX,EAX
0078434f  e85c2ec9ff                CALL 0x004171b0
00784354  84c0                      TEST AL,AL
00784356  7415                      JZ 0x0078436d
00784358  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
0078435e  e8fd5ecaff                CALL 0x0042a260
00784363  3bc7                      CMP EAX,EDI
00784365  7506                      JNZ 0x0078436d
00784367  ff85c4feffff              INC dword ptr [EBP + 0xfffffec4]
0078436d  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
00784373  46                        INC ESI
00784374  e87733c9ff                CALL 0x004176f0
00784379  3bf0                      CMP ESI,EAX
0078437b  7293                      JC 0x00784310
0078437d  8bb5c4feffff              MOV ESI,dword ptr [EBP + 0xfffffec4]
00784383  83fe0c                    CMP ESI,0xc
00784386  7312                      JNC 0x0078439a
00784388  eb02                      JMP 0x0078438c
0078438a  33f6                      XOR ESI,ESI
0078438c  b902000000                MOV ECX,0x2
00784391  e87aacefff                CALL 0x0067f010
00784396  85c0                      TEST EAX,EAX
00784398  741b                      JZ 0x007843b5
0078439a  83fe14                    CMP ESI,0x14
0078439d  0f8348020000              JNC 0x007845eb
007843a3  b905000000                MOV ECX,0x5
007843a8  e863acefff                CALL 0x0067f010
007843ad  85c0                      TEST EAX,EAX
007843af  0f8536020000              JNZ 0x007845eb
007843b5  8b9724160000              MOV EDX,dword ptr [EDI + 0x1624]
007843bb  83faff                    CMP EDX,-0x1
007843be  740d                      JZ 0x007843cd
007843c0  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
007843c6  e805aeefff                CALL 0x0067f1d0
007843cb  eb16                      JMP 0x007843e3
007843cd  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007843d5  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
007843db  0f57c9                    XORPS XMM1,XMM1
007843de  e8adba2800                CALL 0x00a0fe90
007843e3  8bc8                      MOV ECX,EAX
007843e5  8b01                      MOV EAX,dword ptr [ECX]
007843e7  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
007843ea  898598feffff              MOV dword ptr [EBP + 0xfffffe98],EAX
007843f0  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
007843f6  e865abf6ff                CALL 0x006eef60
007843fb  8bb5d0feffff              MOV ESI,dword ptr [EBP + 0xfffffed0]
00784401  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00784407  8bf8                      MOV EDI,EAX
00784409  c785e4feffff00004040      MOV dword ptr [EBP + 0xfffffee4],0x40400000
00784413  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784419  50                        PUSH EAX
0078441a  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00784420  50                        PUSH EAX
00784421  e8bac02800                CALL 0x00a104e0
00784426  50                        PUSH EAX
00784427  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
0078442d  50                        PUSH EAX
0078442e  8d8e60030000              LEA ECX,[ESI + 0x360]
00784434  e8e7bf2800                CALL 0x00a10420
00784439  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078443f  57                        PUSH EDI
00784440  6a00                      PUSH 0x0
00784442  8bfe                      MOV EDI,ESI
00784444  57                        PUSH EDI
00784445  50                        PUSH EAX
00784446  8d873c030000              LEA EAX,[EDI + 0x33c]
0078444c  50                        PUSH EAX
0078444d  6a01                      PUSH 0x1
0078444f  6a02                      PUSH 0x2
00784451  e8ca46caff                CALL 0x00428b20
00784456  8bf0                      MOV ESI,EAX
00784458  6a01                      PUSH 0x1
0078445a  8bce                      MOV ECX,ESI
0078445c  89b5d4feffff              MOV dword ptr [EBP + 0xfffffed4],ESI
00784462  e8b9f2fcff                CALL 0x00753720
00784467  f30f108720030000          MOVSS XMM0,dword ptr [EDI + 0x320]
0078446f  f30f5c0530a7ba00          SUBSS XMM0,dword ptr [0x00baa730]
00784477  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0078447e  7213                      JC 0x00784493
00784480  f30f58c0                  ADDSS XMM0,XMM0
00784484  e8d7cdcaff                CALL 0x00431260
00784489  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00784491  eb1c                      JMP 0x007844af
00784493  f30f5905c0adba00          MULSS XMM0,dword ptr [0x00baadc0]
0078449b  e8c0cdcaff                CALL 0x00431260
007844a0  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
007844a7  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
007844af  f30f580530a7ba00          ADDSS XMM0,dword ptr [0x00baa730]
007844b7  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
007844bd  c785b8feffff0000803f      MOV dword ptr [EBP + 0xfffffeb8],0x3f800000
007844c7  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
007844cd  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
007844d5  e89686c9ff                CALL 0x0041cb70
007844da  8b06                      MOV EAX,dword ptr [ESI]
007844dc  51                        PUSH ECX
007844dd  8bce                      MOV ECX,ESI
007844df  c7042400006040            MOV dword ptr [ESP],0x40600000
007844e6  ff5040                    CALL dword ptr [EAX + 0x40]
007844e9  68b04bc300                PUSH 0xc34bb0
007844ee  ba1048c300                MOV EDX,0xc34810
007844f3  8d4de0                    LEA ECX,[EBP + -0x20]
007844f6  e82517cbff                CALL 0x00435c20
007844fb  83ec0c                    SUB ESP,0xc
007844fe  8bcc                      MOV ECX,ESP
00784500  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00784503  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00784506  8bce                      MOV ECX,ESI
00784508  e8431cefff                CALL 0x00676150
0078450d  57                        PUSH EDI
0078450e  8bce                      MOV ECX,ESI
00784510  e88b4df2ff                CALL 0x006a92a0
00784515  e8c6aaefff                CALL 0x0067efe0
0078451a  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00784522  51                        PUSH ECX
00784523  8bce                      MOV ECX,ESI
00784525  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0078452d  f30f110424                MOVSS dword ptr [ESP],XMM0
00784532  e8e91befff                CALL 0x00676120
00784537  51                        PUSH ECX
00784538  8bce                      MOV ECX,ESI
0078453a  c704240000c0c0            MOV dword ptr [ESP],0xc0c00000
00784541  e87a1aefff                CALL 0x00675fc0
00784546  51                        PUSH ECX
00784547  8bce                      MOV ECX,ESI
00784549  c7042400000000            MOV dword ptr [ESP],0x0
00784550  e81b07ccff                CALL 0x00444c70
00784555  51                        PUSH ECX
00784556  8bce                      MOV ECX,ESI
00784558  c704248fc2f5bc            MOV dword ptr [ESP],0xbcf5c28f
0078455f  e82c07ccff                CALL 0x00444c90
00784564  8b06                      MOV EAX,dword ptr [ESI]
00784566  83ec0c                    SUB ESP,0xc
00784569  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
0078456c  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00784574  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0078457c  c7042400000000            MOV dword ptr [ESP],0x0
00784583  e858aaefff                CALL 0x0067efe0
00784588  83ec14                    SUB ESP,0x14
0078458b  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00784591  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00784597  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0078459f  c744240ccdcccc3f          MOV dword ptr [ESP + 0xc],0x3fcccccd
007845a7  0f28d8                    MOVAPS XMM3,XMM0
007845aa  c7442408cdcccc3f          MOV dword ptr [ESP + 0x8],0x3fcccccd
007845b2  0f28d0                    MOVAPS XMM2,XMM0
007845b5  c7442404cdcc2c40          MOV dword ptr [ESP + 0x4],0x402ccccd
007845bd  0f28c8                    MOVAPS XMM1,XMM0
007845c0  c704240000803f            MOV dword ptr [ESP],0x3f800000
007845c7  e88415cbff                CALL 0x00435b50
007845cc  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
007845d2  6a01                      PUSH 0x1
007845d4  6a00                      PUSH 0x0
007845d6  68ff000000                PUSH 0xff
007845db  6aff                      PUSH -0x1
007845dd  50                        PUSH EAX
007845de  ffd6                      CALL ESI
007845e0  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
007845e6  8b01                      MOV EAX,dword ptr [ECX]
007845e8  ff500c                    CALL dword ptr [EAX + 0xc]
007845eb  80bf9a13000000            CMP byte ptr [EDI + 0x139a],0x0
007845f2  7444                      JZ 0x00784638
007845f4  68eca4b100                PUSH 0xb1a4ec
007845f9  8d8f1c040000              LEA ECX,[EDI + 0x41c]
007845ff  e84c5fc8ff                CALL 0x0040a550
00784604  84c0                      TEST AL,AL
00784606  7430                      JZ 0x00784638
00784608  68282bb600                PUSH 0xb62b28
0078460d  8d8f1c040000              LEA ECX,[EDI + 0x41c]
00784613  e8385fc8ff                CALL 0x0040a550
00784618  84c0                      TEST AL,AL
0078461a  751c                      JNZ 0x00784638
0078461c  8d8f1c040000              LEA ECX,[EDI + 0x41c]
00784622  88879a130000              MOV byte ptr [EDI + 0x139a],AL
00784628  e8e338c8ff                CALL 0x00407f10
0078462d  8d8ff80f0000              LEA ECX,[EDI + 0xff8]
00784633  e8d838c8ff                CALL 0x00407f10
00784638  8bcf                      MOV ECX,EDI
0078463a  e811550300                CALL 0x007b9b50
0078463f  6a00                      PUSH 0x0
00784641  6800400000                PUSH 0x4000
00784646  8bcf                      MOV ECX,EDI
00784648  e8e32dc9ff                CALL 0x00417430
0078464d  84c0                      TEST AL,AL
0078464f  7507                      JNZ 0x00784658
00784651  8bcf                      MOV ECX,EDI
00784653  e838fd0400                CALL 0x007d4390
00784658  6a00                      PUSH 0x0
0078465a  6800400000                PUSH 0x4000
0078465f  8bcf                      MOV ECX,EDI
00784661  e8ca2dc9ff                CALL 0x00417430
00784666  84c0                      TEST AL,AL
00784668  0f85fa0e0000              JNZ 0x00785568
0078466e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00784674  e867c4c9ff                CALL 0x00420ae0
00784679  8bc8                      MOV ECX,EAX
0078467b  e8b0a70a00                CALL 0x0082ee30
00784680  84c0                      TEST AL,AL
00784682  0f85e00e0000              JNZ 0x00785568
00784688  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078468e  e8bd44caff                CALL 0x00428b50
00784693  8bc8                      MOV ECX,EAX
00784695  e896a70a00                CALL 0x0082ee30
0078469a  84c0                      TEST AL,AL
0078469c  0f85c60e0000              JNZ 0x00785568
007846a2  3887b6130000              CMP byte ptr [EDI + 0x13b6],AL
007846a8  7444                      JZ 0x007846ee
007846aa  6a04                      PUSH 0x4
007846ac  8bcf                      MOV ECX,EDI
007846ae  e82d700400                CALL 0x007cb6e0
007846b3  6a00                      PUSH 0x0
007846b5  6aff                      PUSH -0x1
007846b7  8bcf                      MOV ECX,EDI
007846b9  660f6ec0                  MOVD XMM0,EAX
007846bd  8d85defeffff              LEA EAX,[EBP + 0xfffffede]
007846c3  0f5bc0                    CVTDQ2PS XMM0,XMM0
007846c6  6a01                      PUSH 0x1
007846c8  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
007846cf  7610                      JBE 0x007846e1
007846d1  68a3010000                PUSH 0x1a3
007846d6  50                        PUSH EAX
007846d7  e8f4f2e2ff                CALL 0x005b39d0
007846dc  e9760e0000                JMP 0x00785557
007846e1  6a2c                      PUSH 0x2c
007846e3  50                        PUSH EAX
007846e4  e8e7f2e2ff                CALL 0x005b39d0
007846e9  e9690e0000                JMP 0x00785557
007846ee  83bfb813000000            CMP dword ptr [EDI + 0x13b8],0x0
007846f5  0f845c0e0000              JZ 0x00785557
007846fb  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00784701  e80afec9ff                CALL 0x00424510
00784706  8d8f7c170000              LEA ECX,[EDI + 0x177c]
0078470c  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
00784713  68ac000000                PUSH 0xac
00784718  e8e375e4ff                CALL 0x005cbd00
0078471d  8d4de4                    LEA ECX,[EBP + -0x1c]
00784720  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
00784726  e8e5fdc9ff                CALL 0x00424510
0078472b  32c9                      XOR CL,CL
0078472d  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
00784731  888ddbfeffff              MOV byte ptr [EBP + 0xfffffedb],CL
00784737  33f6                      XOR ESI,ESI
00784739  888de2feffff              MOV byte ptr [EBP + 0xfffffee2],CL
0078473f  8bcf                      MOV ECX,EDI
00784741  68ac000000                PUSH 0xac
00784746  e8956f0400                CALL 0x007cb6e0
0078474b  83e802                    SUB EAX,0x2
0078474e  740a                      JZ 0x0078475a
00784750  83e801                    SUB EAX,0x1
00784753  750a                      JNZ 0x0078475f
00784755  8d7032                    LEA ESI,[EAX + 0x32]
00784758  eb05                      JMP 0x0078475f
0078475a  be19000000                MOV ESI,0x19
0078475f  8b87b8130000              MOV EAX,dword ptr [EDI + 0x13b8]
00784765  83f801                    CMP EAX,0x1
00784768  0f85bb010000              JNZ 0x00784929
0078476e  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00784774  6a64                      PUSH 0x64
00784776  e8a5480600                CALL 0x007e9020
0078477b  8d4e32                    LEA ECX,[ESI + 0x32]
0078477e  c785e4feffff01000000      MOV dword ptr [EBP + 0xfffffee4],0x1
00784788  3bc1                      CMP EAX,ECX
0078478a  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784790  8d4de4                    LEA ECX,[EBP + -0x1c]
00784793  50                        PUSH EAX
00784794  0f827e010000              JC 0x00784918
0078479a  c685e2feffff01            MOV byte ptr [EBP + 0xfffffee2],0x1
007847a1  e87a7e0500                CALL 0x007dc620
007847a6  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007847ac  c785e4feffff02000000      MOV dword ptr [EBP + 0xfffffee4],0x2
007847b6  50                        PUSH EAX
007847b7  8d4de4                    LEA ECX,[EBP + -0x1c]
007847ba  e8617e0500                CALL 0x007dc620
007847bf  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007847c5  c785e4feffff04000000      MOV dword ptr [EBP + 0xfffffee4],0x4
007847cf  50                        PUSH EAX
007847d0  8d4de4                    LEA ECX,[EBP + -0x1c]
007847d3  e8487e0500                CALL 0x007dc620
007847d8  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007847de  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
007847e8  50                        PUSH EAX
007847e9  8d4de4                    LEA ECX,[EBP + -0x1c]
007847ec  e82f7e0500                CALL 0x007dc620
007847f1  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007847f7  c785e4feffff06000000      MOV dword ptr [EBP + 0xfffffee4],0x6
00784801  50                        PUSH EAX
00784802  8d4de4                    LEA ECX,[EBP + -0x1c]
00784805  e8167e0500                CALL 0x007dc620
0078480a  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784810  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
0078481a  50                        PUSH EAX
0078481b  8d4de4                    LEA ECX,[EBP + -0x1c]
0078481e  e8fd7d0500                CALL 0x007dc620
00784823  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784829  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00784833  50                        PUSH EAX
00784834  8d4de4                    LEA ECX,[EBP + -0x1c]
00784837  e8e47d0500                CALL 0x007dc620
0078483c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784842  c785e4feffff09000000      MOV dword ptr [EBP + 0xfffffee4],0x9
0078484c  50                        PUSH EAX
0078484d  8d4de4                    LEA ECX,[EBP + -0x1c]
00784850  e8cb7d0500                CALL 0x007dc620
00784855  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078485b  c785e4feffff0b000000      MOV dword ptr [EBP + 0xfffffee4],0xb
00784865  50                        PUSH EAX
00784866  8d4de4                    LEA ECX,[EBP + -0x1c]
00784869  e8b27d0500                CALL 0x007dc620
0078486e  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784874  c785e4feffff0c000000      MOV dword ptr [EBP + 0xfffffee4],0xc
0078487e  50                        PUSH EAX
0078487f  8d4de4                    LEA ECX,[EBP + -0x1c]
00784882  e8997d0500                CALL 0x007dc620
00784887  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078488d  c785e4feffff0d000000      MOV dword ptr [EBP + 0xfffffee4],0xd
00784897  50                        PUSH EAX
00784898  8d4de4                    LEA ECX,[EBP + -0x1c]
0078489b  e8807d0500                CALL 0x007dc620
007848a0  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007848a6  c785e4feffff14000000      MOV dword ptr [EBP + 0xfffffee4],0x14
007848b0  50                        PUSH EAX
007848b1  8d4de4                    LEA ECX,[EBP + -0x1c]
007848b4  e8677d0500                CALL 0x007dc620
007848b9  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007848bf  c785e4feffff15000000      MOV dword ptr [EBP + 0xfffffee4],0x15
007848c9  50                        PUSH EAX
007848ca  8d4de4                    LEA ECX,[EBP + -0x1c]
007848cd  e84e7d0500                CALL 0x007dc620
007848d2  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007848d8  c785e4feffff16000000      MOV dword ptr [EBP + 0xfffffee4],0x16
007848e2  50                        PUSH EAX
007848e3  8d4de4                    LEA ECX,[EBP + -0x1c]
007848e6  e8357d0500                CALL 0x007dc620
007848eb  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007848f1  c785e4feffff18000000      MOV dword ptr [EBP + 0xfffffee4],0x18
007848fb  50                        PUSH EAX
007848fc  8d4de4                    LEA ECX,[EBP + -0x1c]
007848ff  e81c7d0500                CALL 0x007dc620
00784904  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078490a  c785e4feffff12000000      MOV dword ptr [EBP + 0xfffffee4],0x12
00784914  50                        PUSH EAX
00784915  8d4de4                    LEA ECX,[EBP + -0x1c]
00784918  e8037d0500                CALL 0x007dc620
0078491d  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00784924  e989090000                JMP 0x007852b2
00784929  83f802                    CMP EAX,0x2
0078492c  0f8598010000              JNZ 0x00784aca
00784932  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00784938  6a64                      PUSH 0x64
0078493a  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00784941  c685e2feffff01            MOV byte ptr [EBP + 0xfffffee2],0x1
00784948  e8d3460600                CALL 0x007e9020
0078494d  8d4e32                    LEA ECX,[ESI + 0x32]
00784950  3bc1                      CMP EAX,ECX
00784952  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784958  8d4de4                    LEA ECX,[EBP + -0x1c]
0078495b  50                        PUSH EAX
0078495c  0f8382000000              JNC 0x007849e4
00784962  c785e4feffff02000000      MOV dword ptr [EBP + 0xfffffee4],0x2
0078496c  e8af7c0500                CALL 0x007dc620
00784971  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784977  c785e4feffff04000000      MOV dword ptr [EBP + 0xfffffee4],0x4
00784981  50                        PUSH EAX
00784982  8d4de4                    LEA ECX,[EBP + -0x1c]
00784985  e8967c0500                CALL 0x007dc620
0078498a  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784990  c785e4feffff09000000      MOV dword ptr [EBP + 0xfffffee4],0x9
0078499a  50                        PUSH EAX
0078499b  8d4de4                    LEA ECX,[EBP + -0x1c]
0078499e  e87d7c0500                CALL 0x007dc620
007849a3  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007849a9  c785e4feffff0b000000      MOV dword ptr [EBP + 0xfffffee4],0xb
007849b3  50                        PUSH EAX
007849b4  8d4de4                    LEA ECX,[EBP + -0x1c]
007849b7  e8647c0500                CALL 0x007dc620
007849bc  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007849c2  c785e4feffff0c000000      MOV dword ptr [EBP + 0xfffffee4],0xc
007849cc  50                        PUSH EAX
007849cd  8d4de4                    LEA ECX,[EBP + -0x1c]
007849d0  e84b7c0500                CALL 0x007dc620
007849d5  c785e4feffff18000000      MOV dword ptr [EBP + 0xfffffee4],0x18
007849df  e9bf080000                JMP 0x007852a3
007849e4  c785e4feffff01000000      MOV dword ptr [EBP + 0xfffffee4],0x1
007849ee  e82d7c0500                CALL 0x007dc620
007849f3  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007849f9  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
00784a03  50                        PUSH EAX
00784a04  8d4de4                    LEA ECX,[EBP + -0x1c]
00784a07  e8147c0500                CALL 0x007dc620
00784a0c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784a12  c785e4feffff06000000      MOV dword ptr [EBP + 0xfffffee4],0x6
00784a1c  50                        PUSH EAX
00784a1d  8d4de4                    LEA ECX,[EBP + -0x1c]
00784a20  e8fb7b0500                CALL 0x007dc620
00784a25  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784a2b  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
00784a35  50                        PUSH EAX
00784a36  8d4de4                    LEA ECX,[EBP + -0x1c]
00784a39  e8e27b0500                CALL 0x007dc620
00784a3e  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784a44  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00784a4e  50                        PUSH EAX
00784a4f  8d4de4                    LEA ECX,[EBP + -0x1c]
00784a52  e8c97b0500                CALL 0x007dc620
00784a57  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784a5d  c785e4feffff0d000000      MOV dword ptr [EBP + 0xfffffee4],0xd
00784a67  50                        PUSH EAX
00784a68  8d4de4                    LEA ECX,[EBP + -0x1c]
00784a6b  e8b07b0500                CALL 0x007dc620
00784a70  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784a76  c785e4feffff14000000      MOV dword ptr [EBP + 0xfffffee4],0x14
00784a80  50                        PUSH EAX
00784a81  8d4de4                    LEA ECX,[EBP + -0x1c]
00784a84  e8977b0500                CALL 0x007dc620
00784a89  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784a8f  c785e4feffff15000000      MOV dword ptr [EBP + 0xfffffee4],0x15
00784a99  50                        PUSH EAX
00784a9a  8d4de4                    LEA ECX,[EBP + -0x1c]
00784a9d  e87e7b0500                CALL 0x007dc620
00784aa2  c785e4feffff16000000      MOV dword ptr [EBP + 0xfffffee4],0x16
00784aac  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784ab2  50                        PUSH EAX
00784ab3  8d4de4                    LEA ECX,[EBP + -0x1c]
00784ab6  e8657b0500                CALL 0x007dc620
00784abb  c785e4feffff12000000      MOV dword ptr [EBP + 0xfffffee4],0x12
00784ac5  e9d9070000                JMP 0x007852a3
00784aca  83f803                    CMP EAX,0x3
00784acd  0f8551020000              JNZ 0x00784d24
00784ad3  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00784ad9  6a64                      PUSH 0x64
00784adb  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00784ae2  c685e2feffff01            MOV byte ptr [EBP + 0xfffffee2],0x1
00784ae9  e832450600                CALL 0x007e9020
00784aee  8d4e19                    LEA ECX,[ESI + 0x19]
00784af1  3bc1                      CMP EAX,ECX
00784af3  0f837a000000              JNC 0x00784b73
00784af9  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00784aff  6a64                      PUSH 0x64
00784b01  e81a450600                CALL 0x007e9020
00784b06  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00784b0c  83f832                    CMP EAX,0x32
00784b0f  7331                      JNC 0x00784b42
00784b11  e81afac9ff                CALL 0x00424530
00784b16  6a00                      PUSH 0x0
00784b18  6a01                      PUSH 0x1
00784b1a  8bc8                      MOV ECX,EAX
00784b1c  e87f4efcff                CALL 0x007499a0
00784b21  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784b27  c785e4feffffffffffff      MOV dword ptr [EBP + 0xfffffee4],0xffffffff
00784b31  50                        PUSH EAX
00784b32  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00784b38  e8137dcaff                CALL 0x0042c850
00784b3d  e970070000                JMP 0x007852b2
00784b42  e8e9f9c9ff                CALL 0x00424530
00784b47  6a01                      PUSH 0x1
00784b49  6a00                      PUSH 0x0
00784b4b  8bc8                      MOV ECX,EAX
00784b4d  e84e4efcff                CALL 0x007499a0
00784b52  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784b58  c785e4feffffffffffff      MOV dword ptr [EBP + 0xfffffee4],0xffffffff
00784b62  50                        PUSH EAX
00784b63  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00784b69  e8e27ccaff                CALL 0x0042c850
00784b6e  e93f070000                JMP 0x007852b2
00784b73  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784b79  c785e4feffff01000000      MOV dword ptr [EBP + 0xfffffee4],0x1
00784b83  50                        PUSH EAX
00784b84  8d4de4                    LEA ECX,[EBP + -0x1c]
00784b87  e8947a0500                CALL 0x007dc620
00784b8c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784b92  c785e4feffff02000000      MOV dword ptr [EBP + 0xfffffee4],0x2
00784b9c  50                        PUSH EAX
00784b9d  8d4de4                    LEA ECX,[EBP + -0x1c]
00784ba0  e87b7a0500                CALL 0x007dc620
00784ba5  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784bab  c785e4feffff04000000      MOV dword ptr [EBP + 0xfffffee4],0x4
00784bb5  50                        PUSH EAX
00784bb6  8d4de4                    LEA ECX,[EBP + -0x1c]
00784bb9  e8627a0500                CALL 0x007dc620
00784bbe  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784bc4  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
00784bce  50                        PUSH EAX
00784bcf  8d4de4                    LEA ECX,[EBP + -0x1c]
00784bd2  e8497a0500                CALL 0x007dc620
00784bd7  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784bdd  c785e4feffff06000000      MOV dword ptr [EBP + 0xfffffee4],0x6
00784be7  50                        PUSH EAX
00784be8  8d4de4                    LEA ECX,[EBP + -0x1c]
00784beb  e8307a0500                CALL 0x007dc620
00784bf0  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784bf6  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
00784c00  50                        PUSH EAX
00784c01  8d4de4                    LEA ECX,[EBP + -0x1c]
00784c04  e8177a0500                CALL 0x007dc620
00784c09  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784c0f  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00784c19  50                        PUSH EAX
00784c1a  8d4de4                    LEA ECX,[EBP + -0x1c]
00784c1d  e8fe790500                CALL 0x007dc620
00784c22  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784c28  c785e4feffff09000000      MOV dword ptr [EBP + 0xfffffee4],0x9
00784c32  50                        PUSH EAX
00784c33  8d4de4                    LEA ECX,[EBP + -0x1c]
00784c36  e8e5790500                CALL 0x007dc620
00784c3b  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784c41  c785e4feffff0a000000      MOV dword ptr [EBP + 0xfffffee4],0xa
00784c4b  50                        PUSH EAX
00784c4c  8d4de4                    LEA ECX,[EBP + -0x1c]
00784c4f  e8cc790500                CALL 0x007dc620
00784c54  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784c5a  c785e4feffff0b000000      MOV dword ptr [EBP + 0xfffffee4],0xb
00784c64  50                        PUSH EAX
00784c65  8d4de4                    LEA ECX,[EBP + -0x1c]
00784c68  e8b3790500                CALL 0x007dc620
00784c6d  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784c73  c785e4feffff0c000000      MOV dword ptr [EBP + 0xfffffee4],0xc
00784c7d  50                        PUSH EAX
00784c7e  8d4de4                    LEA ECX,[EBP + -0x1c]
00784c81  e89a790500                CALL 0x007dc620
00784c86  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784c8c  c785e4feffff0d000000      MOV dword ptr [EBP + 0xfffffee4],0xd
00784c96  50                        PUSH EAX
00784c97  8d4de4                    LEA ECX,[EBP + -0x1c]
00784c9a  e881790500                CALL 0x007dc620
00784c9f  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784ca5  c785e4feffff14000000      MOV dword ptr [EBP + 0xfffffee4],0x14
00784caf  50                        PUSH EAX
00784cb0  8d4de4                    LEA ECX,[EBP + -0x1c]
00784cb3  e868790500                CALL 0x007dc620
00784cb8  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784cbe  c785e4feffff15000000      MOV dword ptr [EBP + 0xfffffee4],0x15
00784cc8  50                        PUSH EAX
00784cc9  8d4de4                    LEA ECX,[EBP + -0x1c]
00784ccc  e84f790500                CALL 0x007dc620
00784cd1  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784cd7  c785e4feffff18000000      MOV dword ptr [EBP + 0xfffffee4],0x18
00784ce1  50                        PUSH EAX
00784ce2  8d4de4                    LEA ECX,[EBP + -0x1c]
00784ce5  e836790500                CALL 0x007dc620
00784cea  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784cf0  c785e4feffff12000000      MOV dword ptr [EBP + 0xfffffee4],0x12
00784cfa  50                        PUSH EAX
00784cfb  8d4de4                    LEA ECX,[EBP + -0x1c]
00784cfe  e81d790500                CALL 0x007dc620
00784d03  c785e4fefffffeffffff      MOV dword ptr [EBP + 0xfffffee4],0xfffffffe
00784d0d  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784d13  50                        PUSH EAX
00784d14  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00784d1a  e8317bcaff                CALL 0x0042c850
00784d1f  e928050000                JMP 0x0078524c
00784d24  83f805                    CMP EAX,0x5
00784d27  0f8594010000              JNZ 0x00784ec1
00784d2d  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00784d33  6a64                      PUSH 0x64
00784d35  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00784d3c  c685e2feffff01            MOV byte ptr [EBP + 0xfffffee2],0x1
00784d43  e8d8420600                CALL 0x007e9020
00784d48  8d4e32                    LEA ECX,[ESI + 0x32]
00784d4b  3bc1                      CMP EAX,ECX
00784d4d  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784d53  8d4de4                    LEA ECX,[EBP + -0x1c]
00784d56  50                        PUSH EAX
00784d57  731e                      JNC 0x00784d77
00784d59  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
00784d63  e8b8780500                CALL 0x007dc620
00784d68  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00784d72  e92c050000                JMP 0x007852a3
00784d77  c785e4feffff01000000      MOV dword ptr [EBP + 0xfffffee4],0x1
00784d81  e89a780500                CALL 0x007dc620
00784d86  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784d8c  c785e4feffff02000000      MOV dword ptr [EBP + 0xfffffee4],0x2
00784d96  50                        PUSH EAX
00784d97  8d4de4                    LEA ECX,[EBP + -0x1c]
00784d9a  e881780500                CALL 0x007dc620
00784d9f  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784da5  c785e4feffff04000000      MOV dword ptr [EBP + 0xfffffee4],0x4
00784daf  50                        PUSH EAX
00784db0  8d4de4                    LEA ECX,[EBP + -0x1c]
00784db3  e868780500                CALL 0x007dc620
00784db8  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784dbe  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
00784dc8  50                        PUSH EAX
00784dc9  8d4de4                    LEA ECX,[EBP + -0x1c]
00784dcc  e84f780500                CALL 0x007dc620
00784dd1  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784dd7  c785e4feffff06000000      MOV dword ptr [EBP + 0xfffffee4],0x6
00784de1  50                        PUSH EAX
00784de2  8d4de4                    LEA ECX,[EBP + -0x1c]
00784de5  e836780500                CALL 0x007dc620
00784dea  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784df0  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
00784dfa  50                        PUSH EAX
00784dfb  8d4de4                    LEA ECX,[EBP + -0x1c]
00784dfe  e81d780500                CALL 0x007dc620
00784e03  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784e09  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00784e13  50                        PUSH EAX
00784e14  8d4de4                    LEA ECX,[EBP + -0x1c]
00784e17  e804780500                CALL 0x007dc620
00784e1c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784e22  c785e4feffff09000000      MOV dword ptr [EBP + 0xfffffee4],0x9
00784e2c  50                        PUSH EAX
00784e2d  8d4de4                    LEA ECX,[EBP + -0x1c]
00784e30  e8eb770500                CALL 0x007dc620
00784e35  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784e3b  c785e4feffff0b000000      MOV dword ptr [EBP + 0xfffffee4],0xb
00784e45  50                        PUSH EAX
00784e46  8d4de4                    LEA ECX,[EBP + -0x1c]
00784e49  e8d2770500                CALL 0x007dc620
00784e4e  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784e54  c785e4feffff0c000000      MOV dword ptr [EBP + 0xfffffee4],0xc
00784e5e  50                        PUSH EAX
00784e5f  8d4de4                    LEA ECX,[EBP + -0x1c]
00784e62  e8b9770500                CALL 0x007dc620
00784e67  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784e6d  c785e4feffff0d000000      MOV dword ptr [EBP + 0xfffffee4],0xd
00784e77  50                        PUSH EAX
00784e78  8d4de4                    LEA ECX,[EBP + -0x1c]
00784e7b  e8a0770500                CALL 0x007dc620
00784e80  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784e86  c785e4feffff14000000      MOV dword ptr [EBP + 0xfffffee4],0x14
00784e90  50                        PUSH EAX
00784e91  8d4de4                    LEA ECX,[EBP + -0x1c]
00784e94  e887770500                CALL 0x007dc620
00784e99  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784e9f  c785e4feffff15000000      MOV dword ptr [EBP + 0xfffffee4],0x15
00784ea9  50                        PUSH EAX
00784eaa  8d4de4                    LEA ECX,[EBP + -0x1c]
00784ead  e86e770500                CALL 0x007dc620
00784eb2  c785e4feffff18000000      MOV dword ptr [EBP + 0xfffffee4],0x18
00784ebc  e963030000                JMP 0x00785224
00784ec1  83f804                    CMP EAX,0x4
00784ec4  0f8594010000              JNZ 0x0078505e
00784eca  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00784ed0  6a64                      PUSH 0x64
00784ed2  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00784ed9  c685e2feffff01            MOV byte ptr [EBP + 0xfffffee2],0x1
00784ee0  e83b410600                CALL 0x007e9020
00784ee5  8d4e32                    LEA ECX,[ESI + 0x32]
00784ee8  3bc1                      CMP EAX,ECX
00784eea  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784ef0  8d4de4                    LEA ECX,[EBP + -0x1c]
00784ef3  50                        PUSH EAX
00784ef4  731e                      JNC 0x00784f14
00784ef6  c785e4feffff14000000      MOV dword ptr [EBP + 0xfffffee4],0x14
00784f00  e81b770500                CALL 0x007dc620
00784f05  c785e4feffff15000000      MOV dword ptr [EBP + 0xfffffee4],0x15
00784f0f  e998fbffff                JMP 0x00784aac
00784f14  c785e4feffff01000000      MOV dword ptr [EBP + 0xfffffee4],0x1
00784f1e  e8fd760500                CALL 0x007dc620
00784f23  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784f29  c785e4feffff02000000      MOV dword ptr [EBP + 0xfffffee4],0x2
00784f33  50                        PUSH EAX
00784f34  8d4de4                    LEA ECX,[EBP + -0x1c]
00784f37  e8e4760500                CALL 0x007dc620
00784f3c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784f42  c785e4feffff04000000      MOV dword ptr [EBP + 0xfffffee4],0x4
00784f4c  50                        PUSH EAX
00784f4d  8d4de4                    LEA ECX,[EBP + -0x1c]
00784f50  e8cb760500                CALL 0x007dc620
00784f55  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784f5b  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
00784f65  50                        PUSH EAX
00784f66  8d4de4                    LEA ECX,[EBP + -0x1c]
00784f69  e8b2760500                CALL 0x007dc620
00784f6e  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784f74  c785e4feffff06000000      MOV dword ptr [EBP + 0xfffffee4],0x6
00784f7e  50                        PUSH EAX
00784f7f  8d4de4                    LEA ECX,[EBP + -0x1c]
00784f82  e899760500                CALL 0x007dc620
00784f87  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784f8d  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
00784f97  50                        PUSH EAX
00784f98  8d4de4                    LEA ECX,[EBP + -0x1c]
00784f9b  e880760500                CALL 0x007dc620
00784fa0  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784fa6  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00784fb0  50                        PUSH EAX
00784fb1  8d4de4                    LEA ECX,[EBP + -0x1c]
00784fb4  e867760500                CALL 0x007dc620
00784fb9  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784fbf  c785e4feffff09000000      MOV dword ptr [EBP + 0xfffffee4],0x9
00784fc9  50                        PUSH EAX
00784fca  8d4de4                    LEA ECX,[EBP + -0x1c]
00784fcd  e84e760500                CALL 0x007dc620
00784fd2  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784fd8  c785e4feffff0b000000      MOV dword ptr [EBP + 0xfffffee4],0xb
00784fe2  50                        PUSH EAX
00784fe3  8d4de4                    LEA ECX,[EBP + -0x1c]
00784fe6  e835760500                CALL 0x007dc620
00784feb  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00784ff1  c785e4feffff0c000000      MOV dword ptr [EBP + 0xfffffee4],0xc
00784ffb  50                        PUSH EAX
00784ffc  8d4de4                    LEA ECX,[EBP + -0x1c]
00784fff  e81c760500                CALL 0x007dc620
00785004  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078500a  c785e4feffff0d000000      MOV dword ptr [EBP + 0xfffffee4],0xd
00785014  50                        PUSH EAX
00785015  8d4de4                    LEA ECX,[EBP + -0x1c]
00785018  e803760500                CALL 0x007dc620
0078501d  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785023  c785e4feffff18000000      MOV dword ptr [EBP + 0xfffffee4],0x18
0078502d  50                        PUSH EAX
0078502e  8d4de4                    LEA ECX,[EBP + -0x1c]
00785031  e8ea750500                CALL 0x007dc620
00785036  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078503c  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
00785046  50                        PUSH EAX
00785047  8d4de4                    LEA ECX,[EBP + -0x1c]
0078504a  e8d1750500                CALL 0x007dc620
0078504f  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00785059  e9df010000                JMP 0x0078523d
0078505e  83f807                    CMP EAX,0x7
00785061  0f8503020000              JNZ 0x0078526a
00785067  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
0078506d  6a64                      PUSH 0x64
0078506f  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00785076  c685e2feffff01            MOV byte ptr [EBP + 0xfffffee2],0x1
0078507d  e89e3f0600                CALL 0x007e9020
00785082  8d4e0a                    LEA ECX,[ESI + 0xa]
00785085  3bc1                      CMP EAX,ECX
00785087  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078508d  50                        PUSH EAX
0078508e  731a                      JNC 0x007850aa
00785090  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00785096  c785e4fefffffeffffff      MOV dword ptr [EBP + 0xfffffee4],0xfffffffe
007850a0  e8ab77caff                CALL 0x0042c850
007850a5  e908020000                JMP 0x007852b2
007850aa  8d4de4                    LEA ECX,[EBP + -0x1c]
007850ad  c785e4feffff01000000      MOV dword ptr [EBP + 0xfffffee4],0x1
007850b7  e864750500                CALL 0x007dc620
007850bc  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007850c2  c785e4feffff02000000      MOV dword ptr [EBP + 0xfffffee4],0x2
007850cc  50                        PUSH EAX
007850cd  8d4de4                    LEA ECX,[EBP + -0x1c]
007850d0  e84b750500                CALL 0x007dc620
007850d5  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007850db  c785e4feffff04000000      MOV dword ptr [EBP + 0xfffffee4],0x4
007850e5  50                        PUSH EAX
007850e6  8d4de4                    LEA ECX,[EBP + -0x1c]
007850e9  e832750500                CALL 0x007dc620
007850ee  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007850f4  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
007850fe  50                        PUSH EAX
007850ff  8d4de4                    LEA ECX,[EBP + -0x1c]
00785102  e819750500                CALL 0x007dc620
00785107  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078510d  c785e4feffff06000000      MOV dword ptr [EBP + 0xfffffee4],0x6
00785117  50                        PUSH EAX
00785118  8d4de4                    LEA ECX,[EBP + -0x1c]
0078511b  e800750500                CALL 0x007dc620
00785120  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785126  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
00785130  50                        PUSH EAX
00785131  8d4de4                    LEA ECX,[EBP + -0x1c]
00785134  e8e7740500                CALL 0x007dc620
00785139  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078513f  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
00785149  50                        PUSH EAX
0078514a  8d4de4                    LEA ECX,[EBP + -0x1c]
0078514d  e8ce740500                CALL 0x007dc620
00785152  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785158  c785e4feffff09000000      MOV dword ptr [EBP + 0xfffffee4],0x9
00785162  50                        PUSH EAX
00785163  8d4de4                    LEA ECX,[EBP + -0x1c]
00785166  e8b5740500                CALL 0x007dc620
0078516b  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785171  c785e4feffff0b000000      MOV dword ptr [EBP + 0xfffffee4],0xb
0078517b  50                        PUSH EAX
0078517c  8d4de4                    LEA ECX,[EBP + -0x1c]
0078517f  e89c740500                CALL 0x007dc620
00785184  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078518a  c785e4feffff0c000000      MOV dword ptr [EBP + 0xfffffee4],0xc
00785194  50                        PUSH EAX
00785195  8d4de4                    LEA ECX,[EBP + -0x1c]
00785198  e883740500                CALL 0x007dc620
0078519d  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007851a3  c785e4feffff0d000000      MOV dword ptr [EBP + 0xfffffee4],0xd
007851ad  50                        PUSH EAX
007851ae  8d4de4                    LEA ECX,[EBP + -0x1c]
007851b1  e86a740500                CALL 0x007dc620
007851b6  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007851bc  c785e4feffff18000000      MOV dword ptr [EBP + 0xfffffee4],0x18
007851c6  50                        PUSH EAX
007851c7  8d4de4                    LEA ECX,[EBP + -0x1c]
007851ca  e851740500                CALL 0x007dc620
007851cf  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007851d5  c785e4feffff07000000      MOV dword ptr [EBP + 0xfffffee4],0x7
007851df  50                        PUSH EAX
007851e0  8d4de4                    LEA ECX,[EBP + -0x1c]
007851e3  e838740500                CALL 0x007dc620
007851e8  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007851ee  c785e4feffff08000000      MOV dword ptr [EBP + 0xfffffee4],0x8
007851f8  50                        PUSH EAX
007851f9  8d4de4                    LEA ECX,[EBP + -0x1c]
007851fc  e81f740500                CALL 0x007dc620
00785201  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785207  c785e4feffff14000000      MOV dword ptr [EBP + 0xfffffee4],0x14
00785211  50                        PUSH EAX
00785212  8d4de4                    LEA ECX,[EBP + -0x1c]
00785215  e806740500                CALL 0x007dc620
0078521a  c785e4feffff15000000      MOV dword ptr [EBP + 0xfffffee4],0x15
00785224  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078522a  50                        PUSH EAX
0078522b  8d4de4                    LEA ECX,[EBP + -0x1c]
0078522e  e8ed730500                CALL 0x007dc620
00785233  c785e4feffff12000000      MOV dword ptr [EBP + 0xfffffee4],0x12
0078523d  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785243  50                        PUSH EAX
00785244  8d4de4                    LEA ECX,[EBP + -0x1c]
00785247  e8d4730500                CALL 0x007dc620
0078524c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785252  c785e4fefffffaffffff      MOV dword ptr [EBP + 0xfffffee4],0xfffffffa
0078525c  50                        PUSH EAX
0078525d  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00785263  e8e875caff                CALL 0x0042c850
00785268  eb48                      JMP 0x007852b2
0078526a  83f806                    CMP EAX,0x6
0078526d  7543                      JNZ 0x007852b2
0078526f  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00785275  6a64                      PUSH 0x64
00785277  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
0078527e  c685e2feffff01            MOV byte ptr [EBP + 0xfffffee2],0x1
00785285  e8963d0600                CALL 0x007e9020
0078528a  c785e4feffff0a000000      MOV dword ptr [EBP + 0xfffffee4],0xa
00785294  83f832                    CMP EAX,0x32
00785297  720a                      JC 0x007852a3
00785299  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
007852a3  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007852a9  50                        PUSH EAX
007852aa  8d4de4                    LEA ECX,[EBP + -0x1c]
007852ad  e86e730500                CALL 0x007dc620
007852b2  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
007852b8  e8636be4ff                CALL 0x005cbe20
007852bd  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
007852c1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007852c7  c785b0feffff00000000      MOV dword ptr [EBP + 0xfffffeb0],0x0
007852d1  e85af2c9ff                CALL 0x00424530
007852d6  8bc8                      MOV ECX,EAX
007852d8  e8a3acdeff                CALL 0x0056ff80
007852dd  85c0                      TEST EAX,EAX
007852df  0f8e7a010000              JLE 0x0078545f
007852e5  33ff                      XOR EDI,EDI
007852e7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
007852f0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007852f6  e835f2c9ff                CALL 0x00424530
007852fb  8bc8                      MOV ECX,EAX
007852fd  e8fec4c9ff                CALL 0x00421800
00785302  837c071000                CMP dword ptr [EDI + EAX*0x1 + 0x10],0x0
00785307  8d3407                    LEA ESI,[EDI + EAX*0x1]
0078530a  89b5d4feffff              MOV dword ptr [EBP + 0xfffffed4],ESI
00785310  0f8416010000              JZ 0x0078542c
00785316  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078531c  e80ff2c9ff                CALL 0x00424530
00785321  8bc8                      MOV ECX,EAX
00785323  e80836d7ff                CALL 0x004f8930
00785328  39460c                    CMP dword ptr [ESI + 0xc],EAX
0078532b  0f85fb000000              JNZ 0x0078542c
00785331  8d4de4                    LEA ECX,[EBP + -0x1c]
00785334  33f6                      XOR ESI,ESI
00785336  e80525c9ff                CALL 0x00417840
0078533b  85c0                      TEST EAX,EAX
0078533d  0f84e9000000              JZ 0x0078542c
00785343  56                        PUSH ESI
00785344  8d4de4                    LEA ECX,[EBP + -0x1c]
00785347  e8c474caff                CALL 0x0042c810
0078534c  8b95d4feffff              MOV EDX,dword ptr [EBP + 0xfffffed4]
00785352  8b4a10                    MOV ECX,dword ptr [EDX + 0x10]
00785355  8b4908                    MOV ECX,dword ptr [ECX + 0x8]
00785358  3b08                      CMP ECX,dword ptr [EAX]
0078535a  7412                      JZ 0x0078536e
0078535c  8d4de4                    LEA ECX,[EBP + -0x1c]
0078535f  46                        INC ESI
00785360  e8db24c9ff                CALL 0x00417840
00785365  3bf0                      CMP ESI,EAX
00785367  72da                      JC 0x00785343
00785369  e9be000000                JMP 0x0078542c
0078536e  8b02                      MOV EAX,dword ptr [EDX]
00785370  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00785376  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
0078537c  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00785382  50                        PUSH EAX
00785383  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00785389  50                        PUSH EAX
0078538a  e87127ddff                CALL 0x00557b00
0078538f  8bf0                      MOV ESI,EAX
00785391  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00785397  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078539d  50                        PUSH EAX
0078539e  e8fd0dcdff                CALL 0x004561a0
007853a3  50                        PUSH EAX
007853a4  8bce                      MOV ECX,ESI
007853a6  e80528ddff                CALL 0x00557bb0
007853ab  84c0                      TEST AL,AL
007853ad  0f8479000000              JZ 0x0078542c
007853b3  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
007853b9  50                        PUSH EAX
007853ba  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
007853c0  50                        PUSH EAX
007853c1  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
007853c7  e8f4f1d5ff                CALL 0x004e45c0
007853cc  8bb5d4feffff              MOV ESI,dword ptr [EBP + 0xfffffed4]
007853d2  8bce                      MOV ECX,ESI
007853d4  e8370ccbff                CALL 0x00436010
007853d9  84c0                      TEST AL,AL
007853db  740a                      JZ 0x007853e7
007853dd  8a8de2feffff              MOV CL,byte ptr [EBP + 0xfffffee2]
007853e3  84c9                      TEST CL,CL
007853e5  7527                      JNZ 0x0078540e
007853e7  8bce                      MOV ECX,ESI
007853e9  e8220ccbff                CALL 0x00436010
007853ee  84c0                      TEST AL,AL
007853f0  753a                      JNZ 0x0078542c
007853f2  8a85dbfeffff              MOV AL,byte ptr [EBP + 0xfffffedb]
007853f8  84c0                      TEST AL,AL
007853fa  7430                      JZ 0x0078542c
007853fc  8a8de2feffff              MOV CL,byte ptr [EBP + 0xfffffee2]
00785402  837e4000                  CMP dword ptr [ESI + 0x40],0x0
00785406  750e                      JNZ 0x00785416
00785408  84c0                      TEST AL,AL
0078540a  750e                      JNZ 0x0078541a
0078540c  eb1e                      JMP 0x0078542c
0078540e  8a85dbfeffff              MOV AL,byte ptr [EBP + 0xfffffedb]
00785414  ebec                      JMP 0x00785402
00785416  84c9                      TEST CL,CL
00785418  7412                      JZ 0x0078542c
0078541a  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00785420  50                        PUSH EAX
00785421  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00785427  e82474caff                CALL 0x0042c850
0078542c  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
00785432  81c7b8000000              ADD EDI,0xb8
00785438  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078543e  46                        INC ESI
0078543f  89b5b0feffff              MOV dword ptr [EBP + 0xfffffeb0],ESI
00785445  e8e6f0c9ff                CALL 0x00424530
0078544a  8bc8                      MOV ECX,EAX
0078544c  e82fabdeff                CALL 0x0056ff80
00785451  3bf0                      CMP ESI,EAX
00785453  0f8c97feffff              JL 0x007852f0
00785459  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
0078545f  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00785465  33f6                      XOR ESI,ESI
00785467  e8d423c9ff                CALL 0x00417840
0078546c  85c0                      TEST EAX,EAX
0078546e  7425                      JZ 0x00785495
00785470  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00785476  e8c523c9ff                CALL 0x00417840
0078547b  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
00785481  50                        PUSH EAX
00785482  e8993b0600                CALL 0x007e9020
00785487  50                        PUSH EAX
00785488  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
0078548e  e87d73caff                CALL 0x0042c810
00785493  8b30                      MOV ESI,dword ptr [EAX]
00785495  83bfb813000006            CMP dword ptr [EDI + 0x13b8],0x6
0078549c  7531                      JNZ 0x007854cf
0078549e  6a00                      PUSH 0x0
007854a0  8d4de4                    LEA ECX,[EBP + -0x1c]
007854a3  e86873caff                CALL 0x0042c810
007854a8  83380a                    CMP dword ptr [EAX],0xa
007854ab  7522                      JNZ 0x007854cf
007854ad  85f6                      TEST ESI,ESI
007854af  7522                      JNZ 0x007854d3
007854b1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007854b7  e874f0c9ff                CALL 0x00424530
007854bc  56                        PUSH ESI
007854bd  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
007854c3  8bc8                      MOV ECX,EAX
007854c5  56                        PUSH ESI
007854c6  6a05                      PUSH 0x5
007854c8  e8f32ffcff                CALL 0x007484c0
007854cd  8bf0                      MOV ESI,EAX
007854cf  85f6                      TEST ESI,ESI
007854d1  7429                      JZ 0x007854fc
007854d3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007854d9  e852f0c9ff                CALL 0x00424530
007854de  6aff                      PUSH -0x1
007854e0  8bc8                      MOV ECX,EAX
007854e2  e8f935caff                CALL 0x00428ae0
007854e7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007854ed  6aff                      PUSH -0x1
007854ef  57                        PUSH EDI
007854f0  6a03                      PUSH 0x3
007854f2  6aff                      PUSH -0x1
007854f4  56                        PUSH ESI
007854f5  e8c682f7ff                CALL 0x006fd7c0
007854fa  eb36                      JMP 0x00785532
007854fc  6a04                      PUSH 0x4
007854fe  8bcf                      MOV ECX,EDI
00785500  e8db610400                CALL 0x007cb6e0
00785505  6a00                      PUSH 0x0
00785507  6aff                      PUSH -0x1
00785509  8bcf                      MOV ECX,EDI
0078550b  660f6ec0                  MOVD XMM0,EAX
0078550f  8d85defeffff              LEA EAX,[EBP + 0xfffffede]
00785515  0f5bc0                    CVTDQ2PS XMM0,XMM0
00785518  6a01                      PUSH 0x1
0078551a  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00785521  7607                      JBE 0x0078552a
00785523  68a3010000                PUSH 0x1a3
00785528  eb02                      JMP 0x0078552c
0078552a  6a2c                      PUSH 0x2c
0078552c  50                        PUSH EAX
0078552d  e89ee4e2ff                CALL 0x005b39d0
00785532  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00785538  e8e3eec9ff                CALL 0x00424420
0078553d  8d4de4                    LEA ECX,[EBP + -0x1c]
00785540  e88bf4c8ff                CALL 0x004149d0
00785545  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
0078554b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00785552  e829f0c8ff                CALL 0x00414580
00785557  c687b613000000            MOV byte ptr [EDI + 0x13b6],0x0
0078555e  c787b813000000000000      MOV dword ptr [EDI + 0x13b8],0x0
00785568  83bfa015000000            CMP dword ptr [EDI + 0x15a0],0x0
0078556f  8db7a0150000              LEA ESI,[EDI + 0x15a0]
00785575  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
0078557b  0f84ef000000              JZ 0x00785670
00785581  6a00                      PUSH 0x0
00785583  6816020000                PUSH 0x216
00785588  8bcf                      MOV ECX,EDI
0078558a  e851b1feff                CALL 0x007706e0
0078558f  84c0                      TEST AL,AL
00785591  0f85d9000000              JNZ 0x00785670
00785597  8bcf                      MOV ECX,EDI
00785599  e8824dcaff                CALL 0x0042a320
0078559e  84c0                      TEST AL,AL
007855a0  0f85ca000000              JNZ 0x00785670
007855a6  b101                      MOV CL,0x1
007855a8  e823c4e2ff                CALL 0x005b19d0
007855ad  ff36                      PUSH dword ptr [ESI]
007855af  8d8f70170000              LEA ECX,[EDI + 0x1770]
007855b5  e84667e4ff                CALL 0x005cbd00
007855ba  8bc8                      MOV ECX,EAX
007855bc  e82f3b0600                CALL 0x007e90f0
007855c1  8bbde4feffff              MOV EDI,dword ptr [EBP + 0xfffffee4]
007855c7  8bf0                      MOV ESI,EAX
007855c9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007855cf  8b3f                      MOV EDI,dword ptr [EDI]
007855d1  e8aa1ec8ff                CALL 0x00407480
007855d6  6a00                      PUSH 0x0
007855d8  6a00                      PUSH 0x0
007855da  6a00                      PUSH 0x0
007855dc  51                        PUSH ECX
007855dd  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
007855e3  81c13c030000              ADD ECX,0x33c
007855e9  c7042400002042            MOV dword ptr [ESP],0x42200000
007855f0  51                        PUSH ECX
007855f1  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
007855f7  51                        PUSH ECX
007855f8  8bc8                      MOV ECX,EAX
007855fa  e821df0800                CALL 0x00813520
007855ff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785605  6a00                      PUSH 0x0
00785607  68d4d7c500                PUSH 0xc5d7d4
0078560c  68dcd5c500                PUSH 0xc5d5dc
00785611  6a00                      PUSH 0x0
00785613  56                        PUSH ESI
00785614  57                        PUSH EDI
00785615  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
0078561b  57                        PUSH EDI
0078561c  6840b6c700                PUSH 0xc7b640
00785621  50                        PUSH EAX
00785622  6a64                      PUSH 0x64
00785624  6a05                      PUSH 0x5
00785626  e8f534caff                CALL 0x00428b20
0078562b  50                        PUSH EAX
0078562c  e880b23600                CALL 0x00af08b1
00785631  83c414                    ADD ESP,0x14
00785634  8bf0                      MOV ESI,EAX
00785636  8bce                      MOV ECX,ESI
00785638  ffb7a4150000              PUSH dword ptr [EDI + 0x15a4]
0078563e  e84dc3e2ff                CALL 0x005b1990
00785643  ffb7a8150000              PUSH dword ptr [EDI + 0x15a8]
00785649  8bce                      MOV ECX,ESI
0078564b  e8d0c2e2ff                CALL 0x005b1920
00785650  6a01                      PUSH 0x1
00785652  6a01                      PUSH 0x1
00785654  6a00                      PUSH 0x0
00785656  ffb7a0150000              PUSH dword ptr [EDI + 0x15a0]
0078565c  8db7a0150000              LEA ESI,[EDI + 0x15a0]
00785662  8bcf                      MOV ECX,EDI
00785664  e8d7a10000                CALL 0x0078f840
00785669  32c9                      XOR CL,CL
0078566b  e860c3e2ff                CALL 0x005b19d0
00785670  6a00                      PUSH 0x0
00785672  6a3b                      PUSH 0x3b
00785674  8bcf                      MOV ECX,EDI
00785676  e865b0feff                CALL 0x007706e0
0078567b  84c0                      TEST AL,AL
0078567d  7470                      JZ 0x007856ef
0078567f  8bcf                      MOV ECX,EDI
00785681  e8ea500500                CALL 0x007da770
00785686  84c0                      TEST AL,AL
00785688  7565                      JNZ 0x007856ef
0078568a  8d87c8160000              LEA EAX,[EDI + 0x16c8]
00785690  6a3b                      PUSH 0x3b
00785692  8bc8                      MOV ECX,EAX
00785694  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0078569a  e87171caff                CALL 0x0042c810
0078569f  8bbde4feffff              MOV EDI,dword ptr [EBP + 0xfffffee4]
007856a5  c70000000000              MOV dword ptr [EAX],0x0
007856ab  b801000000                MOV EAX,0x1
007856b0  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
007856b6  833e3b                    CMP dword ptr [ESI],0x3b
007856b9  7517                      JNZ 0x007856d2
007856bb  6a22                      PUSH 0x22
007856bd  8bcf                      MOV ECX,EDI
007856bf  c70622000000              MOV dword ptr [ESI],0x22
007856c5  e84671caff                CALL 0x0042c810
007856ca  ff00                      INC dword ptr [EAX]
007856cc  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
007856d2  48                        DEC EAX
007856d3  83ee20                    SUB ESI,0x20
007856d6  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
007856dc  85c0                      TEST EAX,EAX
007856de  79d6                      JNS 0x007856b6
007856e0  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
007856e6  8bcf                      MOV ECX,EDI
007856e8  6a00                      PUSH 0x0
007856ea  e811db0400                CALL 0x007d3200
007856ef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007856f5  e85621c9ff                CALL 0x00417850
007856fa  8bc8                      MOV ECX,EAX
007856fc  e84f3ecaff                CALL 0x00429550
00785701  84c0                      TEST AL,AL
00785703  0f84ef000000              JZ 0x007857f8
00785709  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0078570d  0f85e5000000              JNZ 0x007857f8
00785713  6a00                      PUSH 0x0
00785715  68f1010000                PUSH 0x1f1
0078571a  8bcf                      MOV ECX,EDI
0078571c  e8bfaffeff                CALL 0x007706e0
00785721  84c0                      TEST AL,AL
00785723  0f84cf000000              JZ 0x007857f8
00785729  8d8f08150000              LEA ECX,[EDI + 0x1508]
0078572f  68f1010000                PUSH 0x1f1
00785734  e8b7ae1a00                CALL 0x009305f0
00785739  84c0                      TEST AL,AL
0078573b  0f85b7000000              JNZ 0x007857f8
00785741  e8ca032900                CALL 0x00a15b10
00785746  8bf0                      MOV ESI,EAX
00785748  8bca                      MOV ECX,EDX
0078574a  8b87901f0000              MOV EAX,dword ptr [EDI + 0x1f90]
00785750  99                        CDQ
00785751  2bf0                      SUB ESI,EAX
00785753  1bca                      SBB ECX,EDX
00785755  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
0078575b  750c                      JNZ 0x00785769
0078575d  81fe983a0000              CMP ESI,0x3a98
00785763  0f868f000000              JBE 0x007857f8
00785769  6a01                      PUSH 0x1
0078576b  6a01                      PUSH 0x1
0078576d  68f1010000                PUSH 0x1f1
00785772  8d8f08150000              LEA ECX,[EDI + 0x1508]
00785778  e863ab1a00                CALL 0x009302e0
0078577d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785783  33f6                      XOR ESI,ESI
00785785  e8d620c9ff                CALL 0x00417860
0078578a  8bc8                      MOV ECX,EAX
0078578c  e8af20c9ff                CALL 0x00417840
00785791  85c0                      TEST EAX,EAX
00785793  7463                      JZ 0x007857f8
00785795  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078579b  e8c020c9ff                CALL 0x00417860
007857a0  56                        PUSH ESI
007857a1  8bc8                      MOV ECX,EAX
007857a3  e8183b2300                CALL 0x009b92c0
007857a8  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
007857ae  3bc7                      CMP EAX,EDI
007857b0  742f                      JZ 0x007857e1
007857b2  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
007857b8  e8e36bc8ff                CALL 0x0040c3a0
007857bd  3985d4feffff              CMP dword ptr [EBP + 0xfffffed4],EAX
007857c3  741c                      JZ 0x007857e1
007857c5  57                        PUSH EDI
007857c6  8d4d9c                    LEA ECX,[EBP + -0x64]
007857c9  e842bbcaff                CALL 0x00431310
007857ce  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
007857d4  8d459c                    LEA EAX,[EBP + -0x64]
007857d7  6a00                      PUSH 0x0
007857d9  6a5a                      PUSH 0x5a
007857db  50                        PUSH EAX
007857dc  e88f85f2ff                CALL 0x006add70
007857e1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007857e7  46                        INC ESI
007857e8  e87320c9ff                CALL 0x00417860
007857ed  8bc8                      MOV ECX,EAX
007857ef  e84c20c9ff                CALL 0x00417840
007857f4  3bf0                      CMP ESI,EAX
007857f6  729d                      JC 0x00785795
007857f8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007857fe  6a34                      PUSH 0x34
00785800  e85b04eeff                CALL 0x00665c60
00785805  84c0                      TEST AL,AL
00785807  740e                      JZ 0x00785817
00785809  6a00                      PUSH 0x0
0078580b  6800000008                PUSH 0x8000000
00785810  8bcf                      MOV ECX,EDI
00785812  e8c91bc9ff                CALL 0x004173e0
00785817  6a00                      PUSH 0x0
00785819  6800000008                PUSH 0x8000000
0078581e  8bcf                      MOV ECX,EDI
00785820  e80b1cc9ff                CALL 0x00417430
00785825  84c0                      TEST AL,AL
00785827  740c                      JZ 0x00785835
00785829  c7875c1600003c000000      MOV dword ptr [EDI + 0x165c],0x3c
00785833  eb14                      JMP 0x00785849
00785835  8b875c160000              MOV EAX,dword ptr [EDI + 0x165c]
0078583b  33c9                      XOR ECX,ECX
0078583d  83c0ff                    ADD EAX,-0x1
00785840  0f48c1                    CMOVS EAX,ECX
00785843  89875c160000              MOV dword ptr [EDI + 0x165c],EAX
00785849  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00785850  c7877813000000000000      MOV dword ptr [EDI + 0x1378],0x0
0078585a  0f85e40f0000              JNZ 0x00786844
00785860  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00785864  0f85b6000000              JNZ 0x00785920
0078586a  80bf181b000000            CMP byte ptr [EDI + 0x1b18],0x0
00785871  0f84a9000000              JZ 0x00785920
00785877  8bcf                      MOV ECX,EDI
00785879  e892580200                CALL 0x007ab110
0078587e  84c0                      TEST AL,AL
00785880  0f849a000000              JZ 0x00785920
00785886  8d4f48                    LEA ECX,[EDI + 0x48]
00785889  be98d5b100                MOV ESI,0xb1d598
0078588e  e8cd8bc9ff                CALL 0x0041e460
00785893  8bc8                      MOV ECX,EAX
00785895  e8e61ac8ff                CALL 0x00407380
0078589a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
007858a0  8a08                      MOV CL,byte ptr [EAX]
007858a2  3a0e                      CMP CL,byte ptr [ESI]
007858a4  751a                      JNZ 0x007858c0
007858a6  84c9                      TEST CL,CL
007858a8  7412                      JZ 0x007858bc
007858aa  8a4801                    MOV CL,byte ptr [EAX + 0x1]
007858ad  3a4e01                    CMP CL,byte ptr [ESI + 0x1]
007858b0  750e                      JNZ 0x007858c0
007858b2  83c002                    ADD EAX,0x2
007858b5  83c602                    ADD ESI,0x2
007858b8  84c9                      TEST CL,CL
007858ba  75e4                      JNZ 0x007858a0
007858bc  33c0                      XOR EAX,EAX
007858be  eb05                      JMP 0x007858c5
007858c0  1bc0                      SBB EAX,EAX
007858c2  83c801                    OR EAX,0x1
007858c5  85c0                      TEST EAX,EAX
007858c7  750e                      JNZ 0x007858d7
007858c9  6834aeb600                PUSH 0xb6ae34
007858ce  8bcf                      MOV ECX,EDI
007858d0  e84b650200                CALL 0x007abe20
007858d5  eb49                      JMP 0x00785920
007858d7  8d4f48                    LEA ECX,[EDI + 0x48]
007858da  be34aeb600                MOV ESI,0xb6ae34
007858df  e87c8bc9ff                CALL 0x0041e460
007858e4  8bc8                      MOV ECX,EAX
007858e6  e8951ac8ff                CALL 0x00407380
007858eb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
007858f0  8a08                      MOV CL,byte ptr [EAX]
007858f2  3a0e                      CMP CL,byte ptr [ESI]
007858f4  751a                      JNZ 0x00785910
007858f6  84c9                      TEST CL,CL
007858f8  7412                      JZ 0x0078590c
007858fa  8a4801                    MOV CL,byte ptr [EAX + 0x1]
007858fd  3a4e01                    CMP CL,byte ptr [ESI + 0x1]
00785900  750e                      JNZ 0x00785910
00785902  83c002                    ADD EAX,0x2
00785905  83c602                    ADD ESI,0x2
00785908  84c9                      TEST CL,CL
0078590a  75e4                      JNZ 0x007858f0
0078590c  33c0                      XOR EAX,EAX
0078590e  eb05                      JMP 0x00785915
00785910  1bc0                      SBB EAX,EAX
00785912  83c801                    OR EAX,0x1
00785915  85c0                      TEST EAX,EAX
00785917  7507                      JNZ 0x00785920
00785919  8bcf                      MOV ECX,EDI
0078591b  e820970300                CALL 0x007bf040
00785920  8b8f10140000              MOV ECX,dword ptr [EDI + 0x1410]
00785926  85c9                      TEST ECX,ECX
00785928  0f847f000000              JZ 0x007859ad
0078592e  8d873c030000              LEA EAX,[EDI + 0x33c]
00785934  50                        PUSH EAX
00785935  e8b62fcaff                CALL 0x004288f0
0078593a  8b8f10140000              MOV ECX,dword ptr [EDI + 0x1410]
00785940  8d8760030000              LEA EAX,[EDI + 0x360]
00785946  50                        PUSH EAX
00785947  e8c42fcaff                CALL 0x00428910
0078594c  8b8f10140000              MOV ECX,dword ptr [EDI + 0x1410]
00785952  e8591ac9ff                CALL 0x004173b0
00785957  84c0                      TEST AL,AL
00785959  7452                      JZ 0x007859ad
0078595b  8bb710140000              MOV ESI,dword ptr [EDI + 0x1410]
00785961  8d8f1c040000              LEA ECX,[EDI + 0x41c]
00785967  6a00                      PUSH 0x0
00785969  e83258c8ff                CALL 0x0040b1a0
0078596e  85c0                      TEST EAX,EAX
00785970  7516                      JNZ 0x00785988
00785972  83bf2c1f000002            CMP dword ptr [EDI + 0x1f2c],0x2
00785979  7c32                      JL 0x007859ad
0078597b  8d4f48                    LEA ECX,[EDI + 0x48]
0078597e  50                        PUSH EAX
0078597f  e81c58c8ff                CALL 0x0040b1a0
00785984  85c0                      TEST EAX,EAX
00785986  7425                      JZ 0x007859ad
00785988  8bd0                      MOV EDX,EAX
0078598a  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00785990  e84b99efff                CALL 0x0067f2e0
00785995  f30f10859cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe9c]
0078599d  f30f5987f4140000          MULSS XMM0,dword ptr [EDI + 0x14f4]
007859a5  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
007859ad  8db708150000              LEA ESI,[EDI + 0x1508]
007859b3  68f1010000                PUSH 0x1f1
007859b8  8bce                      MOV ECX,ESI
007859ba  e831ac1a00                CALL 0x009305f0
007859bf  84c0                      TEST AL,AL
007859c1  0f849b010000              JZ 0x00785b62
007859c7  6a00                      PUSH 0x0
007859c9  ffb718160000              PUSH dword ptr [EDI + 0x1618]
007859cf  b9187bc500                MOV ECX,0xc57b18
007859d4  6a04                      PUSH 0x4
007859d6  e845af2900                CALL 0x00a20920
007859db  84c0                      TEST AL,AL
007859dd  754f                      JNZ 0x00785a2e
007859df  6a00                      PUSH 0x0
007859e1  ffb718160000              PUSH dword ptr [EDI + 0x1618]
007859e7  b9187bc500                MOV ECX,0xc57b18
007859ec  6a06                      PUSH 0x6
007859ee  e82daf2900                CALL 0x00a20920
007859f3  84c0                      TEST AL,AL
007859f5  7537                      JNZ 0x00785a2e
007859f7  6a00                      PUSH 0x0
007859f9  ffb718160000              PUSH dword ptr [EDI + 0x1618]
007859ff  b9187bc500                MOV ECX,0xc57b18
00785a04  6a05                      PUSH 0x5
00785a06  e815af2900                CALL 0x00a20920
00785a0b  84c0                      TEST AL,AL
00785a0d  751f                      JNZ 0x00785a2e
00785a0f  6a00                      PUSH 0x0
00785a11  ffb718160000              PUSH dword ptr [EDI + 0x1618]
00785a17  b9187bc500                MOV ECX,0xc57b18
00785a1c  6a07                      PUSH 0x7
00785a1e  e8fdae2900                CALL 0x00a20920
00785a23  c685e3feffff00            MOV byte ptr [EBP + 0xfffffee3],0x0
00785a2a  84c0                      TEST AL,AL
00785a2c  7407                      JZ 0x00785a35
00785a2e  c685e3feffff01            MOV byte ptr [EBP + 0xfffffee3],0x1
00785a35  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00785a3b  e8c01ec9ff                CALL 0x00417900
00785a40  8bc8                      MOV ECX,EAX
00785a42  e889defcff                CALL 0x007538d0
00785a47  84c0                      TEST AL,AL
00785a49  742c                      JZ 0x00785a77
00785a4b  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00785a51  e82aa42800                CALL 0x00a0fe80
00785a56  6a00                      PUSH 0x0
00785a58  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00785a5e  8bcf                      MOV ECX,EDI
00785a60  50                        PUSH EAX
00785a61  e8fa440300                CALL 0x007b9f60
00785a66  84c0                      TEST AL,AL
00785a68  751a                      JNZ 0x00785a84
00785a6a  3885e3feffff              CMP byte ptr [EBP + 0xfffffee3],AL
00785a70  7512                      JNZ 0x00785a84
00785a72  e9eb000000                JMP 0x00785b62
00785a77  80bde3feffff00            CMP byte ptr [EBP + 0xfffffee3],0x0
00785a7e  0f84de000000              JZ 0x00785b62
00785a84  6a01                      PUSH 0x1
00785a86  68f1010000                PUSH 0x1f1
00785a8b  8bce                      MOV ECX,ESI
00785a8d  e80eaa1a00                CALL 0x009304a0
00785a92  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785a98  e8e319c8ff                CALL 0x00407480
00785a9d  8bc8                      MOV ECX,EAX
00785a9f  e83ce20800                CALL 0x00813ce0
00785aa4  83f806                    CMP EAX,0x6
00785aa7  0f8eb5000000              JLE 0x00785b62
00785aad  6aff                      PUSH -0x1
00785aaf  6a30                      PUSH 0x30
00785ab1  8bce                      MOV ECX,ESI
00785ab3  e898aa1a00                CALL 0x00930550
00785ab8  6a1e                      PUSH 0x1e
00785aba  6a00                      PUSH 0x0
00785abc  6a30                      PUSH 0x30
00785abe  8bce                      MOV ECX,ESI
00785ac0  e8cba81a00                CALL 0x00930390
00785ac5  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00785acd  51                        PUSH ECX
00785ace  c704240000803f            MOV dword ptr [ESP],0x3f800000
00785ad5  8bcf                      MOV ECX,EDI
00785ad7  6a00                      PUSH 0x0
00785ad9  6a02                      PUSH 0x2
00785adb  6a50                      PUSH 0x50
00785add  e88e09f3ff                CALL 0x006b6470
00785ae2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785ae8  6a0a                      PUSH 0xa
00785aea  e881dbf7ff                CALL 0x00703670
00785aef  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00785af5  e87616c8ff                CALL 0x00407170
00785afa  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00785b02  8bcf                      MOV ECX,EDI
00785b04  50                        PUSH EAX
00785b05  e8960bf3ff                CALL 0x006b66a0
00785b0a  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
00785b11  83ec10                    SUB ESP,0x10
00785b14  f30f101da0a9ba00          MOVSS XMM3,dword ptr [0x00baa9a0]
00785b1c  8bc4                      MOV EAX,ESP
00785b1e  f30f101554a8ba00          MOVSS XMM2,dword ptr [0x00baa854]
00785b26  51                        PUSH ECX
00785b27  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785b2d  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00785b30  c7042400004842            MOV dword ptr [ESP],0x42480000
00785b37  8d873c030000              LEA EAX,[EDI + 0x33c]
00785b3d  6a00                      PUSH 0x0
00785b3f  6a00                      PUSH 0x0
00785b41  6a00                      PUSH 0x0
00785b43  6a00                      PUSH 0x0
00785b45  57                        PUSH EDI
00785b46  50                        PUSH EAX
00785b47  e81492f7ff                CALL 0x006fed60
00785b4c  8b06                      MOV EAX,dword ptr [ESI]
00785b4e  8bcf                      MOV ECX,EDI
00785b50  098774150000              OR dword ptr [EDI + 0x1574],EAX
00785b56  e815dafdff                CALL 0x00763570
00785b5b  8bce                      MOV ECX,ESI
00785b5d  e82edcfcff                CALL 0x00753790
00785b62  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785b68  e8e31cc9ff                CALL 0x00417850
00785b6d  8bc8                      MOV ECX,EAX
00785b6f  e8dc39caff                CALL 0x00429550
00785b74  84c0                      TEST AL,AL
00785b76  7448                      JZ 0x00785bc0
00785b78  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785b7e  8bb718020000              MOV ESI,dword ptr [EDI + 0x218]
00785b84  e8f718c8ff                CALL 0x00407480
00785b89  8bc8                      MOV ECX,EAX
00785b8b  e84005cbff                CALL 0x004360d0
00785b90  68de010000                PUSH 0x1de
00785b95  8bc8                      MOV ECX,EAX
00785b97  e854aa1a00                CALL 0x009305f0
00785b9c  84c0                      TEST AL,AL
00785b9e  740a                      JZ 0x00785baa
00785ba0  6683bfd22e000000          CMP word ptr [EDI + 0x2ed2],0x0
00785ba8  7404                      JZ 0x00785bae
00785baa  85f6                      TEST ESI,ESI
00785bac  7412                      JZ 0x00785bc0
00785bae  6840b6c700                PUSH 0xc7b640
00785bb3  8d8f60030000              LEA ECX,[EDI + 0x360]
00785bb9  e8f2770500                CALL 0x007dd3b0
00785bbe  eb2c                      JMP 0x00785bec
00785bc0  8bcf                      MOV ECX,EDI
00785bc2  e8793fffff                CALL 0x00779b40
00785bc7  8bcf                      MOV ECX,EDI
00785bc9  e872b3ffff                CALL 0x00780f40
00785bce  6a00                      PUSH 0x0
00785bd0  8bcf                      MOV ECX,EDI
00785bd2  e869be0000                CALL 0x00791a40
00785bd7  8bcf                      MOV ECX,EDI
00785bd9  e852e10100                CALL 0x007a3d30
00785bde  8bcf                      MOV ECX,EDI
00785be0  e83b54ffff                CALL 0x0077b020
00785be5  8bcf                      MOV ECX,EDI
00785be7  e8c4e60100                CALL 0x007a42b0
00785bec  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00785bf2  e8a941d1ff                CALL 0x00499da0
00785bf7  8bf0                      MOV ESI,EAX
00785bf9  8bcf                      MOV ECX,EDI
00785bfb  89b5b0feffff              MOV dword ptr [EBP + 0xfffffeb0],ESI
00785c01  e8fa5a0500                CALL 0x007db700
00785c06  84c0                      TEST AL,AL
00785c08  7413                      JZ 0x00785c1d
00785c0a  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00785c10  e88b67c8ff                CALL 0x0040c3a0
00785c15  8bf0                      MOV ESI,EAX
00785c17  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
00785c1d  85f6                      TEST ESI,ESI
00785c1f  0f8498010000              JZ 0x00785dbd
00785c25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785c2b  e8202fcaff                CALL 0x00428b50
00785c30  8bc8                      MOV ECX,EAX
00785c32  e8f9910a00                CALL 0x0082ee30
00785c37  84c0                      TEST AL,AL
00785c39  0f857e010000              JNZ 0x00785dbd
00785c3f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785c45  e896aec9ff                CALL 0x00420ae0
00785c4a  8bc8                      MOV ECX,EAX
00785c4c  e8df910a00                CALL 0x0082ee30
00785c51  84c0                      TEST AL,AL
00785c53  0f8564010000              JNZ 0x00785dbd
00785c59  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00785c5f  e81ca22800                CALL 0x00a0fe80
00785c64  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785c6a  33f6                      XOR ESI,ESI
00785c6c  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
00785c72  e8591cc9ff                CALL 0x004178d0
00785c77  85c0                      TEST EAX,EAX
00785c79  0f84f9000000              JZ 0x00785d78
00785c7f  90                        NOP
00785c80  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785c86  56                        PUSH ESI
00785c87  e8e41bc9ff                CALL 0x00417870
00785c8c  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
00785c92  3bc7                      CMP EAX,EDI
00785c94  0f84c4000000              JZ 0x00785d5e
00785c9a  3b85b0feffff              CMP EAX,dword ptr [EBP + 0xfffffeb0]
00785ca0  7419                      JZ 0x00785cbb
00785ca2  8bc8                      MOV ECX,EAX
00785ca4  e8b745caff                CALL 0x0042a260
00785ca9  3b85b0feffff              CMP EAX,dword ptr [EBP + 0xfffffeb0]
00785caf  0f85a9000000              JNZ 0x00785d5e
00785cb5  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
00785cbb  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00785cc1  51                        PUSH ECX
00785cc2  8bc8                      MOV ECX,EAX
00785cc4  e8c715c9ff                CALL 0x00417290
00785cc9  50                        PUSH EAX
00785cca  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00785cd0  50                        PUSH EAX
00785cd1  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00785cd7  e8a4a72800                CALL 0x00a10480
00785cdc  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00785ce2  e8e9a12800                CALL 0x00a0fed0
00785ce7  6840b6c700                PUSH 0xc7b640
00785cec  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00785cf2  d99dd4feffff              FSTP dword ptr [EBP + 0xfffffed4]
00785cf8  e833a92800                CALL 0x00a10630
00785cfd  84c0                      TEST AL,AL
00785cff  7457                      JZ 0x00785d58
00785d01  f30f100538aaba00          MOVSS XMM0,dword ptr [0x00baaa38]
00785d09  0f2f85d4feffff            COMISS XMM0,dword ptr [EBP + 0xfffffed4]
00785d10  7646                      JBE 0x00785d58
00785d12  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00785d18  c785b8feffff0000003f      MOV dword ptr [EBP + 0xfffffeb8],0x3f000000
00785d22  50                        PUSH EAX
00785d23  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
00785d29  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00785d2f  e89c14c9ff                CALL 0x004171d0
00785d34  83c404                    ADD ESP,0x4
00785d37  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
00785d3d  51                        PUSH ECX
00785d3e  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00785d44  51                        PUSH ECX
00785d45  8bc8                      MOV ECX,EAX
00785d47  e854a82800                CALL 0x00a105a0
00785d4c  50                        PUSH EAX
00785d4d  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00785d53  e8f8a62800                CALL 0x00a10450
00785d58  8bb5c4feffff              MOV ESI,dword ptr [EBP + 0xfffffec4]
00785d5e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785d64  46                        INC ESI
00785d65  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
00785d6b  e8601bc9ff                CALL 0x004178d0
00785d70  3bf0                      CMP ESI,EAX
00785d72  0f8208ffffff              JC 0x00785c80
00785d78  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00785d7e  e81da12800                CALL 0x00a0fea0
00785d83  d99de4feffff              FSTP dword ptr [EBP + 0xfffffee4]
00785d89  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00785d91  0f2f0530a6ba00            COMISS XMM0,dword ptr [0x00baa630]
00785d98  7613                      JBE 0x00785dad
00785d9a  51                        PUSH ECX
00785d9b  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00785da1  c7042400000040            MOV dword ptr [ESP],0x40000000
00785da8  e803a32800                CALL 0x00a100b0
00785dad  6a00                      PUSH 0x0
00785daf  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00785db5  8bcf                      MOV ECX,EDI
00785db7  50                        PUSH EAX
00785db8  e893b6caff                CALL 0x00431450
00785dbd  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00785dc1  0f85fa020000              JNZ 0x007860c1
00785dc7  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
00785dce  0f85ed020000              JNZ 0x007860c1
00785dd4  6a00                      PUSH 0x0
00785dd6  688d010000                PUSH 0x18d
00785ddb  8bcf                      MOV ECX,EDI
00785ddd  e8fea8feff                CALL 0x007706e0
00785de2  84c0                      TEST AL,AL
00785de4  0f84f1010000              JZ 0x00785fdb
00785dea  8b8fe0130000              MOV ECX,dword ptr [EDI + 0x13e0]
00785df0  85c9                      TEST ECX,ECX
00785df2  0f84e3010000              JZ 0x00785fdb
00785df8  8b01                      MOV EAX,dword ptr [ECX]
00785dfa  8b4034                    MOV EAX,dword ptr [EAX + 0x34]
00785dfd  ffd0                      CALL EAX
00785dff  84c0                      TEST AL,AL
00785e01  0f84d4010000              JZ 0x00785fdb
00785e07  f30f108730160000          MOVSS XMM0,dword ptr [EDI + 0x1630]
00785e0f  8bcf                      MOV ECX,EDI
00785e11  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
00785e19  f30f108734160000          MOVSS XMM0,dword ptr [EDI + 0x1634]
00785e21  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00785e29  e892c8ffff                CALL 0x007826c0
00785e2e  85c0                      TEST EAX,EAX
00785e30  7545                      JNZ 0x00785e77
00785e32  6840b6c700                PUSH 0xc7b640
00785e37  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00785e3d  e8bea72800                CALL 0x00a10600
00785e42  84c0                      TEST AL,AL
00785e44  7512                      JNZ 0x00785e58
00785e46  6a00                      PUSH 0x0
00785e48  68d1010000                PUSH 0x1d1
00785e4d  8bcf                      MOV ECX,EDI
00785e4f  e88ca8feff                CALL 0x007706e0
00785e54  84c0                      TEST AL,AL
00785e56  751f                      JNZ 0x00785e77
00785e58  8b9728160000              MOV EDX,dword ptr [EDI + 0x1628]
00785e5e  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00785e64  e86793efff                CALL 0x0067f1d0
00785e69  50                        PUSH EAX
00785e6a  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00785e70  e83b750500                CALL 0x007dd3b0
00785e75  eb0b                      JMP 0x00785e82
00785e77  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00785e7d  e83ea12800                CALL 0x00a0ffc0
00785e82  6a00                      PUSH 0x0
00785e84  6840d7c500                PUSH 0xc5d740
00785e89  68dcd5c500                PUSH 0xc5d5dc
00785e8e  6a00                      PUSH 0x0
00785e90  ffb730140000              PUSH dword ptr [EDI + 0x1430]
00785e96  e816aa3600                CALL 0x00af08b1
00785e9b  83c414                    ADD ESP,0x14
00785e9e  8bf0                      MOV ESI,EAX
00785ea0  83bf3014000000            CMP dword ptr [EDI + 0x1430],0x0
00785ea7  7559                      JNZ 0x00785f02
00785ea9  e8b290f6ff                CALL 0x006eef60
00785eae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00785eb4  6a00                      PUSH 0x0
00785eb6  6840d7c500                PUSH 0xc5d740
00785ebb  68dcd5c500                PUSH 0xc5d5dc
00785ec0  6a00                      PUSH 0x0
00785ec2  50                        PUSH EAX
00785ec3  6a00                      PUSH 0x0
00785ec5  57                        PUSH EDI
00785ec6  6840b6c700                PUSH 0xc7b640
00785ecb  8d873c030000              LEA EAX,[EDI + 0x33c]
00785ed1  50                        PUSH EAX
00785ed2  6a07                      PUSH 0x7
00785ed4  6a07                      PUSH 0x7
00785ed6  e8452ccaff                CALL 0x00428b20
00785edb  50                        PUSH EAX
00785edc  e8d0a93600                CALL 0x00af08b1
00785ee1  83c414                    ADD ESP,0x14
00785ee4  8bf0                      MOV ESI,EAX
00785ee6  8bce                      MOV ECX,ESI
00785ee8  57                        PUSH EDI
00785ee9  e8b233f2ff                CALL 0x006a92a0
00785eee  8b06                      MOV EAX,dword ptr [ESI]
00785ef0  8bce                      MOV ECX,ESI
00785ef2  ff500c                    CALL dword ptr [EAX + 0xc]
00785ef5  8bd6                      MOV EDX,ESI
00785ef7  8d8f30140000              LEA ECX,[EDI + 0x1430]
00785efd  e84efcf2ff                CALL 0x006b5b50
00785f02  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00785f08  c785e4feffff00004041      MOV dword ptr [EBP + 0xfffffee4],0x41400000
00785f12  50                        PUSH EAX
00785f13  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00785f19  50                        PUSH EAX
00785f1a  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00785f20  e8bba52800                CALL 0x00a104e0
00785f25  50                        PUSH EAX
00785f26  6a06                      PUSH 0x6
00785f28  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00785f2e  8bcf                      MOV ECX,EDI
00785f30  50                        PUSH EAX
00785f31  e81a490200                CALL 0x007aa850
00785f36  50                        PUSH EAX
00785f37  8bce                      MOV ECX,ESI
00785f39  e8b213c9ff                CALL 0x004172f0
00785f3e  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00785f44  e847a42800                CALL 0x00a10390
00785f49  d99de4feffff              FSTP dword ptr [EBP + 0xfffffee4]
00785f4f  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00785f57  e8e4c7efff                CALL 0x00682740
00785f5c  51                        PUSH ECX
00785f5d  8bce                      MOV ECX,ESI
00785f5f  f30f110424                MOVSS dword ptr [ESP],XMM0
00785f64  e8276f1e00                CALL 0x0096ce90
00785f69  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00785f71  0f2f052cadba00            COMISS XMM0,dword ptr [0x00baad2c]
00785f78  51                        PUSH ECX
00785f79  8bce                      MOV ECX,ESI
00785f7b  7609                      JBE 0x00785f86
00785f7d  c7042400803b45            MOV dword ptr [ESP],0x453b8000
00785f84  eb07                      JMP 0x00785f8d
00785f86  c70424000020c1            MOV dword ptr [ESP],0xc1200000
00785f8d  e85efdcaff                CALL 0x00435cf0
00785f92  8bcf                      MOV ECX,EDI
00785f94  e877510200                CALL 0x007ab110
00785f99  84c0                      TEST AL,AL
00785f9b  740f                      JZ 0x00785fac
00785f9d  8bcf                      MOV ECX,EDI
00785f9f  e8ec940300                CALL 0x007bf490
00785fa4  84c0                      TEST AL,AL
00785fa6  7504                      JNZ 0x00785fac
00785fa8  b001                      MOV AL,0x1
00785faa  eb02                      JMP 0x00785fae
00785fac  32c0                      XOR AL,AL
00785fae  50                        PUSH EAX
00785faf  8bce                      MOV ECX,ESI
00785fb1  e8da5fccff                CALL 0x0044bf90
00785fb6  8d95e4feffff              LEA EDX,[EBP + 0xfffffee4]
00785fbc  c785e4feffff05000000      MOV dword ptr [EBP + 0xfffffee4],0x5
00785fc6  8d8f38130000              LEA ECX,[EDI + 0x1338]
00785fcc  e8af6bc9ff                CALL 0x0041cb80
00785fd1  8b00                      MOV EAX,dword ptr [EAX]
00785fd3  898738130000              MOV dword ptr [EDI + 0x1338],EAX
00785fd9  eb0f                      JMP 0x00785fea
00785fdb  8b8f30140000              MOV ECX,dword ptr [EDI + 0x1430]
00785fe1  85c9                      TEST ECX,ECX
00785fe3  7405                      JZ 0x00785fea
00785fe5  8b01                      MOV EAX,dword ptr [ECX]
00785fe7  ff5028                    CALL dword ptr [EAX + 0x28]
00785fea  6a00                      PUSH 0x0
00785fec  6800400000                PUSH 0x4000
00785ff1  8bcf                      MOV ECX,EDI
00785ff3  c685c4feffff00            MOV byte ptr [EBP + 0xfffffec4],0x0
00785ffa  e83114c9ff                CALL 0x00417430
00785fff  84c0                      TEST AL,AL
00786001  7544                      JNZ 0x00786047
00786003  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786009  e84218c9ff                CALL 0x00417850
0078600e  8bc8                      MOV ECX,EAX
00786010  e83b35caff                CALL 0x00429550
00786015  84c0                      TEST AL,AL
00786017  742e                      JZ 0x00786047
00786019  0fb787d22e0000            MOVZX EAX,word ptr [EDI + 0x2ed2]
00786020  6685c0                    TEST AX,AX
00786023  7422                      JZ 0x00786047
00786025  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
0078602b  48                        DEC EAX
0078602c  6685c0                    TEST AX,AX
0078602f  668987d22e0000            MOV word ptr [EDI + 0x2ed2],AX
00786036  0fb6c9                    MOVZX ECX,CL
00786039  b801000000                MOV EAX,0x1
0078603e  0f44c8                    CMOVZ ECX,EAX
00786041  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
00786047  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078604d  e82e14c8ff                CALL 0x00407480
00786052  8bc8                      MOV ECX,EAX
00786054  e87700cbff                CALL 0x004360d0
00786059  68de010000                PUSH 0x1de
0078605e  8bc8                      MOV ECX,EAX
00786060  e88ba51a00                CALL 0x009305f0
00786065  84c0                      TEST AL,AL
00786067  7412                      JZ 0x0078607b
00786069  83bf2c160000ff            CMP dword ptr [EDI + 0x162c],-0x1
00786070  7512                      JNZ 0x00786084
00786072  f6877813000004            TEST byte ptr [EDI + 0x1378],0x4
00786079  7509                      JNZ 0x00786084
0078607b  80bdc4feffff00            CMP byte ptr [EBP + 0xfffffec4],0x0
00786082  743d                      JZ 0x007860c1
00786084  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078608a  e8f113c8ff                CALL 0x00407480
0078608f  8bc8                      MOV ECX,EAX
00786091  e83a00cbff                CALL 0x004360d0
00786096  6a01                      PUSH 0x1
00786098  68de010000                PUSH 0x1de
0078609d  8bc8                      MOV ECX,EAX
0078609f  e8fca31a00                CALL 0x009304a0
007860a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007860aa  e8d113c8ff                CALL 0x00407480
007860af  6a00                      PUSH 0x0
007860b1  8bc8                      MOV ECX,EAX
007860b3  e888b80900                CALL 0x00821940
007860b8  33c0                      XOR EAX,EAX
007860ba  668987d22e0000            MOV word ptr [EDI + 0x2ed2],AX
007860c1  83bf24160000ff            CMP dword ptr [EDI + 0x1624],-0x1
007860c8  7407                      JZ 0x007860d1
007860ca  838f7813000002            OR dword ptr [EDI + 0x1378],0x2
007860d1  83bf2c160000ff            CMP dword ptr [EDI + 0x162c],-0x1
007860d8  7407                      JZ 0x007860e1
007860da  838f7813000004            OR dword ptr [EDI + 0x1378],0x4
007860e1  6a00                      PUSH 0x0
007860e3  68d2000000                PUSH 0xd2
007860e8  8bcf                      MOV ECX,EDI
007860ea  e8f1a5feff                CALL 0x007706e0
007860ef  84c0                      TEST AL,AL
007860f1  0f848c010000              JZ 0x00786283
007860f7  83bf7813000000            CMP dword ptr [EDI + 0x1378],0x0
007860fe  0f857f010000              JNZ 0x00786283
00786104  8b8f74130000              MOV ECX,dword ptr [EDI + 0x1374]
0078610a  8d4101                    LEA EAX,[ECX + 0x1]
0078610d  898774130000              MOV dword ptr [EDI + 0x1374],EAX
00786113  83f93c                    CMP ECX,0x3c
00786116  0f8eb1010000              JLE 0x007862cd
0078611c  f30f10877c030000          MOVSS XMM0,dword ptr [EDI + 0x37c]
00786124  0f2e05c4abba00            UCOMISS XMM0,dword ptr [0x00baabc4]
0078612b  9f                        LAHF
0078612c  f6c444                    TEST AH,0x44
0078612f  0f8beb000000              JNP 0x00786220
00786135  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0078613d  51                        PUSH ECX
0078613e  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00786144  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078614b  6a00                      PUSH 0x0
0078614d  6a02                      PUSH 0x2
0078614f  685a030000                PUSH 0x35a
00786154  e887071d00                CALL 0x009568e0
00786159  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078615f  e89c68caff                CALL 0x0042ca00
00786164  6a00                      PUSH 0x0
00786166  6a04                      PUSH 0x4
00786168  8bc8                      MOV ECX,EAX
0078616a  e8319cfaff                CALL 0x0072fda0
0078616f  50                        PUSH EAX
00786170  8bcf                      MOV ECX,EDI
00786172  e85970fdff                CALL 0x0075d1d0
00786177  c7877c03000000007a44      MOV dword ptr [EDI + 0x37c],0x447a0000
00786181  e8da8df6ff                CALL 0x006eef60
00786186  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078618c  6a00                      PUSH 0x0
0078618e  68acd5c500                PUSH 0xc5d5ac
00786193  68dcd5c500                PUSH 0xc5d5dc
00786198  6a00                      PUSH 0x0
0078619a  50                        PUSH EAX
0078619b  6a02                      PUSH 0x2
0078619d  57                        PUSH EDI
0078619e  6840b6c700                PUSH 0xc7b640
007861a3  8d873c030000              LEA EAX,[EDI + 0x33c]
007861a9  50                        PUSH EAX
007861aa  6a0f                      PUSH 0xf
007861ac  68e8030000                PUSH 0x3e8
007861b1  e86a29caff                CALL 0x00428b20
007861b6  50                        PUSH EAX
007861b7  e8f5a63600                CALL 0x00af08b1
007861bc  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
007861c4  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
007861ca  8bb5d0feffff              MOV ESI,dword ptr [EBP + 0xfffffed0]
007861d0  83c414                    ADD ESP,0x14
007861d3  0f57c9                    XORPS XMM1,XMM1
007861d6  8bf8                      MOV EDI,EAX
007861d8  e8b39c2800                CALL 0x00a0fe90
007861dd  50                        PUSH EAX
007861de  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
007861e4  50                        PUSH EAX
007861e5  8d8e4c030000              LEA ECX,[ESI + 0x34c]
007861eb  e830a22800                CALL 0x00a10420
007861f0  50                        PUSH EAX
007861f1  8bcf                      MOV ECX,EDI
007861f3  e8f810c9ff                CALL 0x004172f0
007861f8  8bc6                      MOV EAX,ESI
007861fa  51                        PUSH ECX
007861fb  8bcf                      MOV ECX,EDI
007861fd  f30f108050030000          MOVSS XMM0,dword ptr [EAX + 0x350]
00786205  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0078620d  f30f110424                MOVSS dword ptr [ESP],XMM0
00786212  e8d9facaff                CALL 0x00435cf0
00786217  8b07                      MOV EAX,dword ptr [EDI]
00786219  8bcf                      MOV ECX,EDI
0078621b  ff500c                    CALL dword ptr [EAX + 0xc]
0078621e  8bfe                      MOV EDI,ESI
00786220  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00786224  740d                      JZ 0x00786233
00786226  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
0078622d  0f849a000000              JZ 0x007862cd
00786233  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00786239  e8320fc8ff                CALL 0x00407170
0078623e  83ec10                    SUB ESP,0x10
00786241  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00786247  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
0078624f  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
00786257  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
0078625f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00786266  e845cdefff                CALL 0x00682fb0
0078626b  8b07                      MOV EAX,dword ptr [EDI]
0078626d  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00786273  6a01                      PUSH 0x1
00786275  6a00                      PUSH 0x0
00786277  6a00                      PUSH 0x0
00786279  6a02                      PUSH 0x2
0078627b  51                        PUSH ECX
0078627c  8bcf                      MOV ECX,EDI
0078627e  ff503c                    CALL dword ptr [EAX + 0x3c]
00786281  eb4a                      JMP 0x007862cd
00786283  f30f10877c030000          MOVSS XMM0,dword ptr [EDI + 0x37c]
0078628b  0f2e05c4abba00            UCOMISS XMM0,dword ptr [0x00baabc4]
00786292  9f                        LAHF
00786293  f6c444                    TEST AH,0x44
00786296  7a2b                      JP 0x007862c3
00786298  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078629e  e85d67caff                CALL 0x0042ca00
007862a3  6a04                      PUSH 0x4
007862a5  8bc8                      MOV ECX,EAX
007862a7  e8f49afaff                CALL 0x0072fda0
007862ac  50                        PUSH EAX
007862ad  8bcf                      MOV ECX,EDI
007862af  e89c75fdff                CALL 0x0075d850
007862b4  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
007862ba  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
007862bd  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
007862c3  c7877413000000000000      MOV dword ptr [EDI + 0x1374],0x0
007862cd  f30f10877c030000          MOVSS XMM0,dword ptr [EDI + 0x37c]
007862d5  0f2e05c4abba00            UCOMISS XMM0,dword ptr [0x00baabc4]
007862dc  9f                        LAHF
007862dd  f6c444                    TEST AH,0x44
007862e0  7b0f                      JNP 0x007862f1
007862e2  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
007862e8  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
007862eb  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
007862f1  8db708150000              LEA ESI,[EDI + 0x1508]
007862f7  6851020000                PUSH 0x251
007862fc  8bce                      MOV ECX,ESI
007862fe  e8eda21a00                CALL 0x009305f0
00786303  84c0                      TEST AL,AL
00786305  7529                      JNZ 0x00786330
00786307  83bf8818000000            CMP dword ptr [EDI + 0x1888],0x0
0078630e  7f20                      JG 0x00786330
00786310  68ca020000                PUSH 0x2ca
00786315  8bce                      MOV ECX,ESI
00786317  e8d4a21a00                CALL 0x009305f0
0078631c  84c0                      TEST AL,AL
0078631e  7510                      JNZ 0x00786330
00786320  6a00                      PUSH 0x0
00786322  6800000040                PUSH 0x40000000
00786327  8bcf                      MOV ECX,EDI
00786329  e8d210c9ff                CALL 0x00417400
0078632e  eb0e                      JMP 0x0078633e
00786330  6a00                      PUSH 0x0
00786332  6800000040                PUSH 0x40000000
00786337  8bcf                      MOV ECX,EDI
00786339  e8a210c9ff                CALL 0x004173e0
0078633e  8bce                      MOV ECX,ESI
00786340  e83bd4fcff                CALL 0x00753780
00786345  84c0                      TEST AL,AL
00786347  740f                      JZ 0x00786358
00786349  8b06                      MOV EAX,dword ptr [ESI]
0078634b  8bcf                      MOV ECX,EDI
0078634d  098774150000              OR dword ptr [EDI + 0x1574],EAX
00786353  e818d2fdff                CALL 0x00763570
00786358  8bce                      MOV ECX,ESI
0078635a  e831d4fcff                CALL 0x00753790
0078635f  6a00                      PUSH 0x0
00786361  6800400000                PUSH 0x4000
00786366  8bcf                      MOV ECX,EDI
00786368  e8c310c9ff                CALL 0x00417430
0078636d  84c0                      TEST AL,AL
0078636f  750e                      JNZ 0x0078637f
00786371  8bce                      MOV ECX,ESI
00786373  e8a8a41a00                CALL 0x00930820
00786378  8bcf                      MOV ECX,EDI
0078637a  e8d1ea0000                CALL 0x00794e50
0078637f  8b8fe41e0000              MOV ECX,dword ptr [EDI + 0x1ee4]
00786385  85c9                      TEST ECX,ECX
00786387  0f84b7040000              JZ 0x00786844
0078638d  e85efacaff                CALL 0x00435df0
00786392  8bf0                      MOV ESI,EAX
00786394  85f6                      TEST ESI,ESI
00786396  0f84a8040000              JZ 0x00786844
0078639c  8bce                      MOV ECX,ESI
0078639e  e8bd7f0d00                CALL 0x0085e360
007863a3  51                        PUSH ECX
007863a4  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007863aa  d91c24                    FSTP dword ptr [ESP]
007863ad  50                        PUSH EAX
007863ae  e89d9f2800                CALL 0x00a10350
007863b3  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007863b9  c785e4feffff000060c1      MOV dword ptr [EBP + 0xfffffee4],0xc1600000
007863c3  50                        PUSH EAX
007863c4  8d95e4feffff              LEA EDX,[EBP + 0xfffffee4]
007863ca  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
007863d0  e8fb0dc9ff                CALL 0x004171d0
007863d5  83c40c                    ADD ESP,0xc
007863d8  8bce                      MOV ECX,ESI
007863da  50                        PUSH EAX
007863db  e870d3fcff                CALL 0x00753750
007863e0  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007863e6  8bcf                      MOV ECX,EDI
007863e8  50                        PUSH EAX
007863e9  6aff                      PUSH -0x1
007863eb  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
007863f1  50                        PUSH EAX
007863f2  e859440200                CALL 0x007aa850
007863f7  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007863fd  c785e4feffff00005041      MOV dword ptr [EBP + 0xfffffee4],0x41500000
00786407  50                        PUSH EAX
00786408  8d95e4feffff              LEA EDX,[EBP + 0xfffffee4]
0078640e  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00786414  e8b70dc9ff                CALL 0x004171d0
00786419  83c404                    ADD ESP,0x4
0078641c  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00786422  50                        PUSH EAX
00786423  e828a02800                CALL 0x00a10450
00786428  f30f108ffc140000          MOVSS XMM1,dword ptr [EDI + 0x14fc]
00786430  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
00786436  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
0078643e  8bce                      MOV ECX,ESI
00786440  50                        PUSH EAX
00786441  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00786449  f30f5cc1                  SUBSS XMM0,XMM1
0078644d  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00786455  e8960ec9ff                CALL 0x004172f0
0078645a  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
00786462  0f2f052cadba00            COMISS XMM0,dword ptr [0x00baad2c]
00786469  51                        PUSH ECX
0078646a  8bce                      MOV ECX,ESI
0078646c  7609                      JBE 0x00786477
0078646e  c7042400803b45            MOV dword ptr [ESP],0x453b8000
00786475  eb07                      JMP 0x0078647e
00786477  c70424000020c2            MOV dword ptr [ESP],0xc2200000
0078647e  e86df8caff                CALL 0x00435cf0
00786483  6a00                      PUSH 0x0
00786485  6800400000                PUSH 0x4000
0078648a  8bcf                      MOV ECX,EDI
0078648c  e89f0fc9ff                CALL 0x00417430
00786491  84c0                      TEST AL,AL
00786493  0f85ab030000              JNZ 0x00786844
00786499  e8c28af6ff                CALL 0x006eef60
0078649e  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
007864a4  e8378befff                CALL 0x0067efe0
007864a9  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
007864b1  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
007864b7  51                        PUSH ECX
007864b8  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
007864be  f30f5c0510a9ba00          SUBSS XMM0,dword ptr [0x00baa910]
007864c6  f30f110424                MOVSS dword ptr [ESP],XMM0
007864cb  50                        PUSH EAX
007864cc  e80f9e2800                CALL 0x00a102e0
007864d1  8bf0                      MOV ESI,EAX
007864d3  e8088befff                CALL 0x0067efe0
007864d8  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
007864e0  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
007864e6  50                        PUSH EAX
007864e7  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
007864ed  8bce                      MOV ECX,ESI
007864ef  50                        PUSH EAX
007864f0  f30f5805a4a7ba00          ADDSS XMM0,dword ptr [0x00baa7a4]
007864f8  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00786500  e8db9f2800                CALL 0x00a104e0
00786505  8bf8                      MOV EDI,EAX
00786507  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
0078650d  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
00786513  51                        PUSH ECX
00786514  053c030000                ADD EAX,0x33c
00786519  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
0078651f  51                        PUSH ECX
00786520  8bc8                      MOV ECX,EAX
00786522  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
00786528  e8f39e2800                CALL 0x00a10420
0078652d  8bf0                      MOV ESI,EAX
0078652f  c785b8feffff00006041      MOV dword ptr [EBP + 0xfffffeb8],0x41600000
00786539  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0078653f  50                        PUSH EAX
00786540  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
00786546  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0078654c  e87f0cc9ff                CALL 0x004171d0
00786551  83c404                    ADD ESP,0x4
00786554  8bce                      MOV ECX,ESI
00786556  50                        PUSH EAX
00786557  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
0078655d  50                        PUSH EAX
0078655e  e81d9f2800                CALL 0x00a10480
00786563  ffb5a4feffff              PUSH dword ptr [EBP + 0xfffffea4]
00786569  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078656f  6a01                      PUSH 0x1
00786571  6a00                      PUSH 0x0
00786573  57                        PUSH EDI
00786574  50                        PUSH EAX
00786575  6a63                      PUSH 0x63
00786577  68e8030000                PUSH 0x3e8
0078657c  e89f25caff                CALL 0x00428b20
00786581  8bf8                      MOV EDI,EAX
00786583  8bcf                      MOV ECX,EDI
00786585  e8960dc9ff                CALL 0x00417320
0078658a  8bf0                      MOV ESI,EAX
0078658c  e84f8aefff                CALL 0x0067efe0
00786591  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00786599  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0078659f  50                        PUSH EAX
007865a0  8d8574feffff              LEA EAX,[EBP + 0xfffffe74]
007865a6  8bce                      MOV ECX,ESI
007865a8  50                        PUSH EAX
007865a9  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
007865b1  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
007865b9  e8229f2800                CALL 0x00a104e0
007865be  50                        PUSH EAX
007865bf  8bcf                      MOV ECX,EDI
007865c1  e8ea73caff                CALL 0x0042d9b0
007865c6  8bcf                      MOV ECX,EDI
007865c8  e803f8caff                CALL 0x00435dd0
007865cd  f30f101dd8a1ba00          MOVSS XMM3,dword ptr [0x00baa1d8]
007865d5  8bf0                      MOV ESI,EAX
007865d7  f30f101538a2ba00          MOVSS XMM2,dword ptr [0x00baa238]
007865df  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
007865e7  51                        PUSH ECX
007865e8  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
007865ee  c704240000803f            MOV dword ptr [ESP],0x3f800000
007865f5  e8f6d2c9ff                CALL 0x004238f0
007865fa  50                        PUSH EAX
007865fb  8bce                      MOV ECX,ESI
007865fd  e8ce0dc8ff                CALL 0x004073d0
00786602  51                        PUSH ECX
00786603  8bcf                      MOV ECX,EDI
00786605  c704240000a041            MOV dword ptr [ESP],0x41a00000
0078660c  e8dff6caff                CALL 0x00435cf0
00786611  8b07                      MOV EAX,dword ptr [EDI]
00786613  8bcf                      MOV ECX,EDI
00786615  ff500c                    CALL dword ptr [EAX + 0xc]
00786618  b905000000                MOV ECX,0x5
0078661d  e8ee89efff                CALL 0x0067f010
00786622  85c0                      TEST EAX,EAX
00786624  0f85e2000000              JNZ 0x0078670c
0078662a  e83189f6ff                CALL 0x006eef60
0078662f  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
00786635  e8a689efff                CALL 0x0067efe0
0078663a  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00786642  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00786648  51                        PUSH ECX
00786649  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0078664f  f30f5c0510a9ba00          SUBSS XMM0,dword ptr [0x00baa910]
00786657  f30f110424                MOVSS dword ptr [ESP],XMM0
0078665c  50                        PUSH EAX
0078665d  e87e9c2800                CALL 0x00a102e0
00786662  8bf0                      MOV ESI,EAX
00786664  e87789efff                CALL 0x0067efe0
00786669  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00786671  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00786677  50                        PUSH EAX
00786678  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
0078667e  8bce                      MOV ECX,ESI
00786680  50                        PUSH EAX
00786681  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00786689  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00786691  e84a9e2800                CALL 0x00a104e0
00786696  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
0078669c  8bf8                      MOV EDI,EAX
0078669e  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
007866a4  50                        PUSH EAX
007866a5  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
007866ab  50                        PUSH EAX
007866ac  e86f9d2800                CALL 0x00a10420
007866b1  8bf0                      MOV ESI,EAX
007866b3  c785b8feffff00006041      MOV dword ptr [EBP + 0xfffffeb8],0x41600000
007866bd  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007866c3  50                        PUSH EAX
007866c4  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
007866ca  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
007866d0  e8fb0ac9ff                CALL 0x004171d0
007866d5  83c404                    ADD ESP,0x4
007866d8  8bce                      MOV ECX,ESI
007866da  50                        PUSH EAX
007866db  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
007866e1  50                        PUSH EAX
007866e2  e8999d2800                CALL 0x00a10480
007866e7  ffb5a4feffff              PUSH dword ptr [EBP + 0xfffffea4]
007866ed  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007866f3  6a00                      PUSH 0x0
007866f5  6a00                      PUSH 0x0
007866f7  57                        PUSH EDI
007866f8  50                        PUSH EAX
007866f9  6a3a                      PUSH 0x3a
007866fb  68e8030000                PUSH 0x3e8
00786700  e81b24caff                CALL 0x00428b20
00786705  8bc8                      MOV ECX,EAX
00786707  8b10                      MOV EDX,dword ptr [EAX]
00786709  ff520c                    CALL dword ptr [EDX + 0xc]
0078670c  b905000000                MOV ECX,0x5
00786711  e8fa88efff                CALL 0x0067f010
00786716  85c0                      TEST EAX,EAX
00786718  0f8520010000              JNZ 0x0078683e
0078671e  e83d88f6ff                CALL 0x006eef60
00786723  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
00786729  e8b288efff                CALL 0x0067efe0
0078672e  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
00786736  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
0078673c  51                        PUSH ECX
0078673d  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00786743  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
0078674b  f30f110424                MOVSS dword ptr [ESP],XMM0
00786750  50                        PUSH EAX
00786751  e88a9b2800                CALL 0x00a102e0
00786756  8bf0                      MOV ESI,EAX
00786758  e88388efff                CALL 0x0067efe0
0078675d  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00786765  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0078676b  50                        PUSH EAX
0078676c  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00786772  8bce                      MOV ECX,ESI
00786774  50                        PUSH EAX
00786775  f30f5805a4a7ba00          ADDSS XMM0,dword ptr [0x00baa7a4]
0078677d  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00786785  e8569d2800                CALL 0x00a104e0
0078678a  f30f108d90feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe90]
00786792  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00786798  0f57d2                    XORPS XMM2,XMM2
0078679b  8bf8                      MOV EDI,EAX
0078679d  e8ee962800                CALL 0x00a0fe90
007867a2  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
007867a8  50                        PUSH EAX
007867a9  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
007867af  50                        PUSH EAX
007867b0  e86b9c2800                CALL 0x00a10420
007867b5  8bf0                      MOV ESI,EAX
007867b7  c785b8feffff00006041      MOV dword ptr [EBP + 0xfffffeb8],0x41600000
007867c1  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
007867c7  50                        PUSH EAX
007867c8  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
007867ce  8d8dacfeffff              LEA ECX,[EBP + 0xfffffeac]
007867d4  e8f709c9ff                CALL 0x004171d0
007867d9  83c404                    ADD ESP,0x4
007867dc  8bce                      MOV ECX,ESI
007867de  50                        PUSH EAX
007867df  8d8574feffff              LEA EAX,[EBP + 0xfffffe74]
007867e5  50                        PUSH EAX
007867e6  e8959c2800                CALL 0x00a10480
007867eb  ffb5a4feffff              PUSH dword ptr [EBP + 0xfffffea4]
007867f1  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
007867f7  6a00                      PUSH 0x0
007867f9  51                        PUSH ECX
007867fa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786800  57                        PUSH EDI
00786801  50                        PUSH EAX
00786802  6a05                      PUSH 0x5
00786804  6a09                      PUSH 0x9
00786806  e81523caff                CALL 0x00428b20
0078680b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786811  8bf0                      MOV ESI,EAX
00786813  bf80000000                MOV EDI,0x80
00786818  e83310c9ff                CALL 0x00417850
0078681d  8bc8                      MOV ECX,EAX
0078681f  e82c2dcaff                CALL 0x00429550
00786824  84c0                      TEST AL,AL
00786826  7505                      JNZ 0x0078682d
00786828  bf80000080                MOV EDI,0x80000080
0078682d  6a00                      PUSH 0x0
0078682f  57                        PUSH EDI
00786830  8bce                      MOV ECX,ESI
00786832  e8090fccff                CALL 0x00447740
00786837  8b06                      MOV EAX,dword ptr [ESI]
00786839  8bce                      MOV ECX,ESI
0078683b  ff500c                    CALL dword ptr [EAX + 0xc]
0078683e  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00786844  6a00                      PUSH 0x0
00786846  6800400000                PUSH 0x4000
0078684b  8bcf                      MOV ECX,EDI
0078684d  e8de0bc9ff                CALL 0x00417430
00786852  84c0                      TEST AL,AL
00786854  754f                      JNZ 0x007868a5
00786856  8d8ff80f0000              LEA ECX,[EDI + 0xff8]
0078685c  e89f28c8ff                CALL 0x00409100
00786861  8d8f30050000              LEA ECX,[EDI + 0x530]
00786867  e89428c8ff                CALL 0x00409100
0078686c  8d8f44060000              LEA ECX,[EDI + 0x644]
00786872  e88928c8ff                CALL 0x00409100
00786877  8db758070000              LEA ESI,[EDI + 0x758]
0078687d  bf07000000                MOV EDI,0x7
00786882  8bce                      MOV ECX,ESI
00786884  e87728c8ff                CALL 0x00409100
00786889  81c614010000              ADD ESI,0x114
0078688f  83ef01                    SUB EDI,0x1
00786892  75ee                      JNZ 0x00786882
00786894  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
0078689a  8d8fe40e0000              LEA ECX,[EDI + 0xee4]
007868a0  e85b28c8ff                CALL 0x00409100
007868a5  8d4748                    LEA EAX,[EDI + 0x48]
007868a8  8bc8                      MOV ECX,EAX
007868aa  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
007868b0  e84b09c9ff                CALL 0x00417200
007868b5  50                        PUSH EAX
007868b6  8d8f30050000              LEA ECX,[EDI + 0x530]
007868bc  e8af98c9ff                CALL 0x00420170
007868c1  8d4f48                    LEA ECX,[EDI + 0x48]
007868c4  e83709c9ff                CALL 0x00417200
007868c9  50                        PUSH EAX
007868ca  8d8f44060000              LEA ECX,[EDI + 0x644]
007868d0  e89b98c9ff                CALL 0x00420170
007868d5  8d4f48                    LEA ECX,[EDI + 0x48]
007868d8  e82309c9ff                CALL 0x00417200
007868dd  50                        PUSH EAX
007868de  8d8fe40e0000              LEA ECX,[EDI + 0xee4]
007868e4  e88798c9ff                CALL 0x00420170
007868e9  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
007868ed  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
007868f5  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
007868fd  0f85cb160000              JNZ 0x00787fce
00786903  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
0078690a  0f85be160000              JNZ 0x00787fce
00786910  8d87f0140000              LEA EAX,[EDI + 0x14f0]
00786916  50                        PUSH EAX
00786917  8d4f48                    LEA ECX,[EDI + 0x48]
0078691a  e85198c9ff                CALL 0x00420170
0078691f  8d8f1c040000              LEA ECX,[EDI + 0x41c]
00786925  e83698c9ff                CALL 0x00420160
0078692a  84c0                      TEST AL,AL
0078692c  744d                      JZ 0x0078697b
0078692e  68eca4b100                PUSH 0xb1a4ec
00786933  8d8f1c040000              LEA ECX,[EDI + 0x41c]
00786939  e8923bc8ff                CALL 0x0040a4d0
0078693e  84c0                      TEST AL,AL
00786940  7439                      JZ 0x0078697b
00786942  68b0afb600                PUSH 0xb6afb0
00786947  8d8f1c040000              LEA ECX,[EDI + 0x41c]
0078694d  e87e48c8ff                CALL 0x0040b1d0
00786952  8bf0                      MOV ESI,EAX
00786954  85f6                      TEST ESI,ESI
00786956  7423                      JZ 0x0078697b
00786958  8d4f48                    LEA ECX,[EDI + 0x48]
0078695b  e8a008c9ff                CALL 0x00417200
00786960  8d4e10                    LEA ECX,[ESI + 0x10]
00786963  51                        PUSH ECX
00786964  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0078696a  51                        PUSH ECX
0078696b  8bc8                      MOV ECX,EAX
0078696d  e89e9b2800                CALL 0x00a10510
00786972  50                        PUSH EAX
00786973  8d4f48                    LEA ECX,[EDI + 0x48]
00786976  e8f597c9ff                CALL 0x00420170
0078697b  a13c79c300                MOV EAX,[0x00c3793c]
00786980  8b0d4079c300              MOV ECX,dword ptr [0x00c37940]
00786986  898598feffff              MOV dword ptr [EBP + 0xfffffe98],EAX
0078698c  8b876c120000              MOV EAX,dword ptr [EDI + 0x126c]
00786992  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
00786998  85c0                      TEST EAX,EAX
0078699a  0f88da000000              JS 0x00786a7a
007869a0  50                        PUSH EAX
007869a1  8d8f20120000              LEA ECX,[EDI + 0x1220]
007869a7  e86453e4ff                CALL 0x005cbd10
007869ac  83b81401000000            CMP dword ptr [EAX + 0x114],0x0
007869b3  7448                      JZ 0x007869fd
007869b5  ffb76c120000              PUSH dword ptr [EDI + 0x126c]
007869bb  8d8f20120000              LEA ECX,[EDI + 0x1220]
007869c1  e84a53e4ff                CALL 0x005cbd10
007869c6  8b8014010000              MOV EAX,dword ptr [EAX + 0x114]
007869cc  81780456020000            CMP dword ptr [EAX + 0x4],0x256
007869d3  0f84a1000000              JZ 0x00786a7a
007869d9  ffb76c120000              PUSH dword ptr [EDI + 0x126c]
007869df  8d8f20120000              LEA ECX,[EDI + 0x1220]
007869e5  e82653e4ff                CALL 0x005cbd10
007869ea  8b8014010000              MOV EAX,dword ptr [EAX + 0x114]
007869f0  817804b0020000            CMP dword ptr [EAX + 0x4],0x2b0
007869f7  0f847d000000              JZ 0x00786a7a
007869fd  ffb76c120000              PUSH dword ptr [EDI + 0x126c]
00786a03  8d8f20120000              LEA ECX,[EDI + 0x1220]
00786a09  e80253e4ff                CALL 0x005cbd10
00786a0e  8bf0                      MOV ESI,EAX
00786a10  8bce                      MOV ECX,ESI
00786a12  e8497ac9ff                CALL 0x0041e460
00786a17  8bc8                      MOV ECX,EAX
00786a19  e88209c8ff                CALL 0x004073a0
00786a1e  84c0                      TEST AL,AL
00786a20  7558                      JNZ 0x00786a7a
00786a22  8bce                      MOV ECX,ESI
00786a24  e8377ac9ff                CALL 0x0041e460
00786a29  ffb770120000              PUSH dword ptr [EDI + 0x1270]
00786a2f  8bc8                      MOV ECX,EAX
00786a31  e8ea37c8ff                CALL 0x0040a220
00786a36  8bf0                      MOV ESI,EAX
00786a38  85f6                      TEST ESI,ESI
00786a3a  743e                      JZ 0x00786a7a
00786a3c  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
00786a41  e8ca6ac9ff                CALL 0x0041d510
00786a46  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
00786a4e  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
00786a53  e8b86ac9ff                CALL 0x0041d510
00786a58  f30f1095a4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea4]
00786a60  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00786a66  0f28c8                    MOVAPS XMM1,XMM0
00786a69  e822942800                CALL 0x00a0fe90
00786a6e  50                        PUSH EAX
00786a6f  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00786a75  e836690500                CALL 0x007dd3b0
00786a7a  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00786a82  8bcf                      MOV ECX,EDI
00786a84  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00786a8c  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00786a94  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
00786a9c  0f57c0                    XORPS XMM0,XMM0
00786a9f  6a00                      PUSH 0x0
00786aa1  68ed010000                PUSH 0x1ed
00786aa6  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
00786aae  f30f118d78feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM1
00786ab6  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00786abe  e81d9cfeff                CALL 0x007706e0
00786ac3  84c0                      TEST AL,AL
00786ac5  7518                      JNZ 0x00786adf
00786ac7  8d8f08150000              LEA ECX,[EDI + 0x1508]
00786acd  68ed010000                PUSH 0x1ed
00786ad2  e8199b1a00                CALL 0x009305f0
00786ad7  84c0                      TEST AL,AL
00786ad9  0f84b5020000              JZ 0x00786d94
00786adf  8bcf                      MOV ECX,EDI
00786ae1  e82a460200                CALL 0x007ab110
00786ae6  84c0                      TEST AL,AL
00786ae8  0f84a6020000              JZ 0x00786d94
00786aee  8b87881d0000              MOV EAX,dword ptr [EDI + 0x1d88]
00786af4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786afa  03c0                      ADD EAX,EAX
00786afc  2b8744130000              SUB EAX,dword ptr [EDI + 0x1344]
00786b02  038740130000              ADD EAX,dword ptr [EDI + 0x1340]
00786b08  99                        CDQ
00786b09  2bc2                      SUB EAX,EDX
00786b0b  8bf0                      MOV ESI,EAX
00786b0d  d1fe                      SAR ESI,0x1
00786b0f  e83c0dc9ff                CALL 0x00417850
00786b14  8bc8                      MOV ECX,EAX
00786b16  e8352acaff                CALL 0x00429550
00786b1b  84c0                      TEST AL,AL
00786b1d  7403                      JZ 0x00786b22
00786b1f  c1ee02                    SHR ESI,0x2
00786b22  0f57c9                    XORPS XMM1,XMM1
00786b25  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00786b2d  f30f2ace                  CVTSI2SS XMM1,ESI
00786b31  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786b37  0f28c3                    MOVAPS XMM0,XMM3
00786b3a  0f28d3                    MOVAPS XMM2,XMM3
00786b3d  f30f5e0d9ca8ba00          DIVSS XMM1,dword ptr [0x00baa89c]
00786b45  f30f5cc1                  SUBSS XMM0,XMM1
00786b49  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
00786b51  f30f59c0                  MULSS XMM0,XMM0
00786b55  f30f5cd0                  SUBSS XMM2,XMM0
00786b59  0f28c1                    MOVAPS XMM0,XMM1
00786b5c  f30f590504a8ba00          MULSS XMM0,dword ptr [0x00baa804]
00786b64  f30f59c1                  MULSS XMM0,XMM1
00786b68  f30f119578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM2
00786b70  f30f58c3                  ADDSS XMM0,XMM3
00786b74  f30f58c0                  ADDSS XMM0,XMM0
00786b78  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00786b80  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
00786b88  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00786b90  e81b09c8ff                CALL 0x004074b0
00786b95  f30f108d78feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe78]
00786b9d  0f57c0                    XORPS XMM0,XMM0
00786ba0  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00786ba8  f30f2ac0                  CVTSI2SS XMM0,EAX
00786bac  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
00786bb4  f30f5985c4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffec4]
00786bbc  e88f05c9ff                CALL 0x00417150
00786bc1  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00786bc9  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00786bd1  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00786bd9  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00786be1  e85aefd7ff                CALL 0x00505b40
00786be6  f30f5c0598a1ba00          SUBSS XMM0,dword ptr [0x00baa198]
00786bee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786bf4  f30f5985d4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffed4]
00786bfc  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00786c04  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00786c0c  e89f08c8ff                CALL 0x004074b0
00786c11  83e803                    SUB EAX,0x3
00786c14  0f57c0                    XORPS XMM0,XMM0
00786c17  f30f2ac0                  CVTSI2SS XMM0,EAX
00786c1b  f30f5985c4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffec4]
00786c23  e82805c9ff                CALL 0x00417150
00786c28  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00786c30  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00786c38  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00786c40  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00786c48  e8f3eed7ff                CALL 0x00505b40
00786c4d  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
00786c55  0f28d0                    MOVAPS XMM2,XMM0
00786c58  f30f5c1598a1ba00          SUBSS XMM2,dword ptr [0x00baa198]
00786c60  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00786c68  f30f59c9                  MULSS XMM1,XMM1
00786c6c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786c72  f30f59d1                  MULSS XMM2,XMM1
00786c76  0f28cb                    MOVAPS XMM1,XMM3
00786c79  f30f5e8db0feffff          DIVSS XMM1,dword ptr [EBP + 0xfffffeb0]
00786c81  f30f5ccb                  SUBSS XMM1,XMM3
00786c85  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00786c8d  f30f58cb                  ADDSS XMM1,XMM3
00786c91  f30f58ca                  ADDSS XMM1,XMM2
00786c95  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00786c9d  f30f5895b0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffeb0]
00786ca5  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00786cad  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
00786cb5  e8f607c8ff                CALL 0x004074b0
00786cba  83c00a                    ADD EAX,0xa
00786cbd  0f57c0                    XORPS XMM0,XMM0
00786cc0  f30f2ac0                  CVTSI2SS XMM0,EAX
00786cc4  f30f5985c4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffec4]
00786ccc  e87f04c9ff                CALL 0x00417150
00786cd1  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00786cd9  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00786ce1  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00786ce9  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00786cf1  e84aeed7ff                CALL 0x00505b40
00786cf6  f30f5c0598a1ba00          SUBSS XMM0,dword ptr [0x00baa198]
00786cfe  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786d04  f30f5985d4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffed4]
00786d0c  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00786d14  e89707c8ff                CALL 0x004074b0
00786d19  83c014                    ADD EAX,0x14
00786d1c  0f57c0                    XORPS XMM0,XMM0
00786d1f  f30f2ac0                  CVTSI2SS XMM0,EAX
00786d23  f30f5985c4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffec4]
00786d2b  e82004c9ff                CALL 0x00417150
00786d30  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00786d38  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00786d40  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00786d48  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00786d50  e8ebedd7ff                CALL 0x00505b40
00786d55  0f28c8                    MOVAPS XMM1,XMM0
00786d58  f30f108578feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe78]
00786d60  f30f5c0d98a1ba00          SUBSS XMM1,dword ptr [0x00baa198]
00786d68  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00786d70  f30f59c8                  MULSS XMM1,XMM0
00786d74  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00786d7c  f30f58c8                  ADDSS XMM1,XMM0
00786d80  f30f5ec1                  DIVSS XMM0,XMM1
00786d84  f30f118d78feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM1
00786d8c  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
00786d94  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00786d9c  a13c79c300                MOV EAX,[0x00c3793c]
00786da1  8b0d4079c300              MOV ECX,dword ptr [0x00c37940]
00786da7  898580feffff              MOV dword ptr [EBP + 0xfffffe80],EAX
00786dad  8b873c120000              MOV EAX,dword ptr [EDI + 0x123c]
00786db3  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
00786dbb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00786dc3  898d84feffff              MOV dword ptr [EBP + 0xfffffe84],ECX
00786dc9  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00786dd1  85c0                      TEST EAX,EAX
00786dd3  0f8884000000              JS 0x00786e5d
00786dd9  8d8f20120000              LEA ECX,[EDI + 0x1220]
00786ddf  50                        PUSH EAX
00786de0  e82b4fe4ff                CALL 0x005cbd10
00786de5  68d4afb600                PUSH 0xb6afd4
00786dea  8bc8                      MOV ECX,EAX
00786dec  e8df43c8ff                CALL 0x0040b1d0
00786df1  8bf0                      MOV ESI,EAX
00786df3  85f6                      TEST ESI,ESI
00786df5  7466                      JZ 0x00786e5d
00786df7  807e0c00                  CMP byte ptr [ESI + 0xc],0x0
00786dfb  7460                      JZ 0x00786e5d
00786dfd  56                        PUSH ESI
00786dfe  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00786e04  e8a7650500                CALL 0x007dd3b0
00786e09  8d4610                    LEA EAX,[ESI + 0x10]
00786e0c  50                        PUSH EAX
00786e0d  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00786e13  e898650500                CALL 0x007dd3b0
00786e18  83bfc013000020            CMP dword ptr [EDI + 0x13c0],0x20
00786e1f  753c                      JNZ 0x00786e5d
00786e21  8bcf                      MOV ECX,EDI
00786e23  33f6                      XOR ESI,ESI
00786e25  e81662caff                CALL 0x0042d040
00786e2a  85c0                      TEST EAX,EAX
00786e2c  7410                      JZ 0x00786e3e
00786e2e  8bcf                      MOV ECX,EDI
00786e30  e80b62caff                CALL 0x0042d040
00786e35  8bc8                      MOV ECX,EAX
00786e37  e87481efff                CALL 0x0067efb0
00786e3c  8bf0                      MOV ESI,EAX
00786e3e  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00786e46  660f6ece                  MOVD XMM1,ESI
00786e4a  0f5bc9                    CVTDQ2PS XMM1,XMM1
00786e4d  f30f58c9                  ADDSS XMM1,XMM1
00786e51  f30f5cc1                  SUBSS XMM0,XMM1
00786e55  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00786e5d  6a08                      PUSH 0x8
00786e5f  8d4f48                    LEA ECX,[EDI + 0x48]
00786e62  e8f965e4ff                CALL 0x005cd460
00786e67  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00786e6d  e8fe02c8ff                CALL 0x00407170
00786e72  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00786e78  e8f302c8ff                CALL 0x00407170
00786e7d  6a00                      PUSH 0x0
00786e7f  68ca000000                PUSH 0xca
00786e84  8bcf                      MOV ECX,EDI
00786e86  e85598feff                CALL 0x007706e0
00786e8b  84c0                      TEST AL,AL
00786e8d  7471                      JZ 0x00786f00
00786e8f  6a00                      PUSH 0x0
00786e91  68d2000000                PUSH 0xd2
00786e96  8bcf                      MOV ECX,EDI
00786e98  e84398feff                CALL 0x007706e0
00786e9d  84c0                      TEST AL,AL
00786e9f  7415                      JZ 0x00786eb6
00786ea1  f30f10877c030000          MOVSS XMM0,dword ptr [EDI + 0x37c]
00786ea9  0f2e05c4abba00            UCOMISS XMM0,dword ptr [0x00baabc4]
00786eb0  9f                        LAHF
00786eb1  f6c444                    TEST AH,0x44
00786eb4  7b11                      JNP 0x00786ec7
00786eb6  8d8f08150000              LEA ECX,[EDI + 0x1508]
00786ebc  6a3b                      PUSH 0x3b
00786ebe  e8bd971a00                CALL 0x00930680
00786ec3  84c0                      TEST AL,AL
00786ec5  7439                      JZ 0x00786f00
00786ec7  64a12c000000              MOV EAX,FS:[0x2c]
00786ecd  8b08                      MOV ECX,dword ptr [EAX]
00786ecf  a1c811c800                MOV EAX,[0x00c811c8]
00786ed4  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
00786eda  0f8fad430000              JG 0x0078b28d
00786ee0  68cc11c800                PUSH 0xc811cc
00786ee5  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00786eeb  e8d0c2efff                CALL 0x006831c0
00786ef0  68cc11c800                PUSH 0xc811cc
00786ef5  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00786efb  e8c0c2efff                CALL 0x006831c0
00786f00  8b8f00190000              MOV ECX,dword ptr [EDI + 0x1900]
00786f06  85c9                      TEST ECX,ECX
00786f08  0f8e7b000000              JLE 0x00786f89
00786f0e  8b8704190000              MOV EAX,dword ptr [EDI + 0x1904]
00786f14  660f6ec9                  MOVD XMM1,ECX
00786f18  0f5bc9                    CVTDQ2PS XMM1,XMM1
00786f1b  660f6ec0                  MOVD XMM0,EAX
00786f1f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00786f22  f30f5ec8                  DIVSS XMM1,XMM0
00786f26  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
00786f2e  3bc8                      CMP ECX,EAX
00786f30  7c3b                      JL 0x00786f6d
00786f32  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786f38  e87305c8ff                CALL 0x004074b0
00786f3d  660f6ec0                  MOVD XMM0,EAX
00786f41  0f5bc0                    CVTDQ2PS XMM0,XMM0
00786f44  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00786f4c  e80f02c9ff                CALL 0x00417160
00786f51  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00786f59  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
00786f61  f30f580580a3ba00          ADDSS XMM0,dword ptr [0x00baa380]
00786f69  f30f59c8                  MULSS XMM1,XMM0
00786f6d  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00786f75  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00786f7b  f30f5cd1                  SUBSS XMM2,XMM1
00786f7f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00786f87  eb72                      JMP 0x00786ffb
00786f89  f30f1087a4200000          MOVSS XMM0,dword ptr [EDI + 0x20a4]
00786f91  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00786f98  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
00786fa0  766d                      JBE 0x0078700f
00786fa2  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00786faa  0f2fc1                    COMISS XMM0,XMM1
00786fad  723f                      JC 0x00786fee
00786faf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00786fb5  e8f604c8ff                CALL 0x004074b0
00786fba  660f6ec0                  MOVD XMM0,EAX
00786fbe  0f5bc0                    CVTDQ2PS XMM0,XMM0
00786fc1  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00786fc9  e89201c9ff                CALL 0x00417160
00786fce  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00786fd6  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00786fde  f30f580580a3ba00          ADDSS XMM0,dword ptr [0x00baa380]
00786fe6  f30f5985a4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffea4]
00786fee  0f28d1                    MOVAPS XMM2,XMM1
00786ff1  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00786ff7  f30f5cd0                  SUBSS XMM2,XMM0
00786ffb  0f28da                    MOVAPS XMM3,XMM2
00786ffe  e87deacaff                CALL 0x00435a80
00787003  50                        PUSH EAX
00787004  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0078700a  e8b1c1efff                CALL 0x006831c0
0078700f  83bfe81a000000            CMP dword ptr [EDI + 0x1ae8],0x0
00787016  7f15                      JG 0x0078702d
00787018  8d8f08150000              LEA ECX,[EDI + 0x1508]
0078701e  68bb020000                PUSH 0x2bb
00787023  e8489a1a00                CALL 0x00930a70
00787028  83f804                    CMP EAX,0x4
0078702b  7561                      JNZ 0x0078708e
0078702d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00787033  e87804c8ff                CALL 0x004074b0
00787038  660f6ec0                  MOVD XMM0,EAX
0078703c  0f5bc0                    CVTDQ2PS XMM0,XMM0
0078703f  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00787047  e81401c9ff                CALL 0x00417160
0078704c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00787054  8d4d98                    LEA ECX,[EBP + -0x68]
00787057  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0078705f  0f28d9                    MOVAPS XMM3,XMM1
00787062  0f28d1                    MOVAPS XMM2,XMM1
00787065  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0078706d  f30f5cd8                  SUBSS XMM3,XMM0
00787071  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
00787079  f30f5cd0                  SUBSS XMM2,XMM0
0078707d  e8fee9caff                CALL 0x00435a80
00787082  50                        PUSH EAX
00787083  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00787089  e832c1efff                CALL 0x006831c0
0078708e  83bff81e000000            CMP dword ptr [EDI + 0x1ef8],0x0
00787095  0f8edd000000              JLE 0x00787178
0078709b  6a00                      PUSH 0x0
0078709d  6800400000                PUSH 0x4000
007870a2  8bcf                      MOV ECX,EDI
007870a4  e88703c9ff                CALL 0x00417430
007870a9  84c0                      TEST AL,AL
007870ab  7506                      JNZ 0x007870b3
007870ad  ff8ff81e0000              DEC dword ptr [EDI + 0x1ef8]
007870b3  8b8ff81e0000              MOV ECX,dword ptr [EDI + 0x1ef8]
007870b9  8d95a4feffff              LEA EDX,[EBP + 0xfffffea4]
007870bf  b808000000                MOV EAX,0x8
007870c4  c785d4feffff06000000      MOV dword ptr [EBP + 0xfffffed4],0x6
007870ce  2bc1                      SUB EAX,ECX
007870d0  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
007870d6  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
007870dc  e87f5ac9ff                CALL 0x0041cb60
007870e1  8bd0                      MOV EDX,EAX
007870e3  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
007870ed  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
007870f3  e8885ac9ff                CALL 0x0041cb80
007870f8  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00787100  8b00                      MOV EAX,dword ptr [EAX]
00787102  f30f10148598bcb600        MOVSS XMM2,dword ptr [EAX*0x4 + 0xb6bc98]
0078710b  f30f5cca                  SUBSS XMM1,XMM2
0078710f  0f28c1                    MOVAPS XMM0,XMM1
00787112  f30f598d7cfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffe7c]
0078711a  f30f5985bcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffebc]
00787122  f30f118d7cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM1
0078712a  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00787132  0f28c2                    MOVAPS XMM0,XMM2
00787135  f30f5985dcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffedc]
0078713d  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00787145  0f28c2                    MOVAPS XMM0,XMM2
00787148  f30f5c1554a4ba00          SUBSS XMM2,dword ptr [0x00baa454]
00787150  f30f598578feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe78]
00787158  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
00787160  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
00787168  f30f5895b0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffeb0]
00787170  f30f1195b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM2
00787178  f30f1087fc1e0000          MOVSS XMM0,dword ptr [EDI + 0x1efc]
00787180  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00787187  0f8655010000              JBE 0x007872e2
0078718d  f30f5c879c030000          SUBSS XMM0,dword ptr [EDI + 0x39c]
00787195  8d95a4feffff              LEA EDX,[EBP + 0xfffffea4]
0078719b  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
007871a5  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
007871ab  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
007871b3  e8b859c9ff                CALL 0x0041cb70
007871b8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
007871bc  f30f1187fc1e0000          MOVSS dword ptr [EDI + 0x1efc],XMM0
007871c4  f30f58c0                  ADDSS XMM0,XMM0
007871c8  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
007871d0  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
007871d8  e883ffc8ff                CALL 0x00417160
007871dd  f30f1097fc1e0000          MOVSS XMM2,dword ptr [EDI + 0x1efc]
007871e5  0f28ca                    MOVAPS XMM1,XMM2
007871e8  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
007871f0  f30f581554a4ba00          ADDSS XMM2,dword ptr [0x00baa454]
007871f8  f30f5e0d7ca8ba00          DIVSS XMM1,dword ptr [0x00baa87c]
00787200  f30f58d2                  ADDSS XMM2,XMM2
00787204  f30f59c8                  MULSS XMM1,XMM0
00787208  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00787210  f30f591508a7ba00          MULSS XMM2,dword ptr [0x00baa708]
00787218  f30f5cc1                  SUBSS XMM0,XMM1
0078721c  f30f5e151ca8ba00          DIVSS XMM2,dword ptr [0x00baa81c]
00787224  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
0078722c  0f28c2                    MOVAPS XMM0,XMM2
0078722f  e82cffc8ff                CALL 0x00417160
00787234  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0078723c  f30f108ffc1e0000          MOVSS XMM1,dword ptr [EDI + 0x1efc]
00787244  0f28d3                    MOVAPS XMM2,XMM3
00787247  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0078724f  f30f58cb                  ADDSS XMM1,XMM3
00787253  f30f5e0d7ca8ba00          DIVSS XMM1,dword ptr [0x00baa87c]
0078725b  f30f59c8                  MULSS XMM1,XMM0
0078725f  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00787267  f30f5cd1                  SUBSS XMM2,XMM1
0078726b  f30f108da4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea4]
00787273  f30f5cc1                  SUBSS XMM0,XMM1
00787277  f30f598ddcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffedc]
0078727f  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
00787287  f30f5985bcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffebc]
0078728f  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00787297  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0078729f  f30f5cc2                  SUBSS XMM0,XMM2
007872a3  f30f59857cfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffe7c]
007872ab  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
007872b3  0f28c2                    MOVAPS XMM0,XMM2
007872b6  f30f598578feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe78]
007872be  f30f5cd3                  SUBSS XMM2,XMM3
007872c2  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
007872ca  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
007872d2  f30f5895b0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffeb0]
007872da  f30f1195b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM2
007872e2  6a00                      PUSH 0x0
007872e4  6851020000                PUSH 0x251
007872e9  8bcf                      MOV ECX,EDI
007872eb  e8f093feff                CALL 0x007706e0
007872f0  84c0                      TEST AL,AL
007872f2  7469                      JZ 0x0078735d
007872f4  83bf901e000000            CMP dword ptr [EDI + 0x1e90],0x0
007872fb  7f60                      JG 0x0078735d
007872fd  8bcf                      MOV ECX,EDI
007872ff  e80c29f2ff                CALL 0x006a9c10
00787304  99                        CDQ
00787305  b91e000000                MOV ECX,0x1e
0078730a  f7f9                      IDIV ECX
0078730c  83fa02                    CMP EDX,0x2
0078730f  7d4c                      JGE 0x0078735d
00787311  f30f101da4a3ba00          MOVSS XMM3,dword ptr [0x00baa3a4]
00787319  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0078731f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00787327  83ec10                    SUB ESP,0x10
0078732a  0f28d3                    MOVAPS XMM2,XMM3
0078732d  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00787335  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0078733d  c74424049a99993e          MOV dword ptr [ESP + 0x4],0x3e99999a
00787345  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078734c  e88f5dc8ff                CALL 0x0040d0e0
00787351  50                        PUSH EAX
00787352  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00787358  e863beefff                CALL 0x006831c0
0078735d  8db708150000              LEA ESI,[EDI + 0x1508]
00787363  6a3f                      PUSH 0x3f
00787365  8bce                      MOV ECX,ESI
00787367  e8c4961a00                CALL 0x00930a30
0078736c  85c0                      TEST EAX,EAX
0078736e  0f84d6000000              JZ 0x0078744a
00787374  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
00787377  83fa5a                    CMP EDX,0x5a
0078737a  0f8dca000000              JGE 0x0078744a
00787380  8bc2                      MOV EAX,EDX
00787382  250f000080                AND EAX,0x8000000f
00787387  7905                      JNS 0x0078738e
00787389  48                        DEC EAX
0078738a  83c8f0                    OR EAX,0xfffffff0
0078738d  40                        INC EAX
0078738e  8bca                      MOV ECX,EDX
00787390  81e107000080              AND ECX,0x80000007
00787396  7905                      JNS 0x0078739d
00787398  49                        DEC ECX
00787399  83c9f8                    OR ECX,0xfffffff8
0078739c  41                        INC ECX
0078739d  83fa18                    CMP EDX,0x18
007873a0  0f4dc8                    CMOVGE ECX,EAX
007873a3  898da4feffff              MOV dword ptr [EBP + 0xfffffea4],ECX
007873a9  83f904                    CMP ECX,0x4
007873ac  0f8f98000000              JG 0x0078744a
007873b2  f30f101d04a3ba00          MOVSS XMM3,dword ptr [0x00baa304]
007873ba  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
007873c0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
007873c8  83ec10                    SUB ESP,0x10
007873cb  0f28d3                    MOVAPS XMM2,XMM3
007873ce  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
007873d6  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
007873de  c74424049a99993e          MOV dword ptr [ESP + 0x4],0x3e99999a
007873e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
007873ed  e8ee5cc8ff                CALL 0x0040d0e0
007873f2  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
007873f8  8bf0                      MOV ESI,EAX
007873fa  e871fdc7ff                CALL 0x00407170
007873ff  660f6e85a4feffff          MOVD XMM0,dword ptr [EBP + 0xfffffea4]
00787407  0f5bc0                    CVTDQ2PS XMM0,XMM0
0078740a  51                        PUSH ECX
0078740b  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00787413  f30f110424                MOVSS dword ptr [ESP],XMM0
00787418  56                        PUSH ESI
00787419  50                        PUSH EAX
0078741a  8d4598                    LEA EAX,[EBP + -0x68]
0078741d  50                        PUSH EAX
0078741e  e8bdbeefff                CALL 0x006832e0
00787423  83c410                    ADD ESP,0x10
00787426  8d4598                    LEA EAX,[EBP + -0x68]
00787429  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0078742f  50                        PUSH EAX
00787430  e88bbdefff                CALL 0x006831c0
00787435  8d4598                    LEA EAX,[EBP + -0x68]
00787438  50                        PUSH EAX
00787439  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
0078743f  e87cbdefff                CALL 0x006831c0
00787444  8db708150000              LEA ESI,[EDI + 0x1508]
0078744a  83bfd01e000001            CMP dword ptr [EDI + 0x1ed0],0x1
00787451  8d97d01e0000              LEA EDX,[EDI + 0x1ed0]
00787457  0f57c0                    XORPS XMM0,XMM0
0078745a  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
00787462  7e45                      JLE 0x007874a9
00787464  0f280560bcba00            MOVAPS XMM0,xmmword ptr [0x00babc60]
0078746b  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
00787471  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
00787475  c745b800000040            MOV dword ptr [EBP + -0x48],0x40000000
0078747c  c745bc0000803f            MOV dword ptr [EBP + -0x44],0x3f800000
00787483  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
0078748a  c785a4feffff06000000      MOV dword ptr [EBP + 0xfffffea4],0x6
00787494  e8c756c9ff                CALL 0x0041cb60
00787499  8b00                      MOV EAX,dword ptr [EAX]
0078749b  f30f104485a8              MOVSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
007874a1  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
007874a9  68c0020000                PUSH 0x2c0
007874ae  8bce                      MOV ECX,ESI
007874b0  e83b911a00                CALL 0x009305f0
007874b5  84c0                      TEST AL,AL
007874b7  0f84dd000000              JZ 0x0078759a
007874bd  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
007874c5  f30f59054ca5ba00          MULSS XMM0,dword ptr [0x00baa54c]
007874cd  e88efcc8ff                CALL 0x00417160
007874d2  f30f588590feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe90]
007874da  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
007874e2  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
007874ea  f30f5905c4a4ba00          MULSS XMM0,dword ptr [0x00baa4c4]
007874f2  e869fcc8ff                CALL 0x00417160
007874f7  0f28c8                    MOVAPS XMM1,XMM0
007874fa  8d4d98                    LEA ECX,[EBP + -0x68]
007874fd  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00787505  83ec20                    SUB ESP,0x20
00787508  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00787510  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
00787518  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
00787520  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00787528  f30f5cc1                  SUBSS XMM0,XMM1
0078752c  0f28d1                    MOVAPS XMM2,XMM1
0078752f  f30f5915f8a1ba00          MULSS XMM2,dword ptr [0x00baa1f8]
00787537  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0078753f  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00787547  0f28da                    MOVAPS XMM3,XMM2
0078754a  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00787550  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
00787558  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00787560  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00787568  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00787570  c704240000803f            MOV dword ptr [ESP],0x3f800000
00787577  e8d4e5caff                CALL 0x00435b50
0078757c  8d4598                    LEA EAX,[EBP + -0x68]
0078757f  50                        PUSH EAX
00787580  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00787586  e835bcefff                CALL 0x006831c0
0078758b  8d4598                    LEA EAX,[EBP + -0x68]
0078758e  50                        PUSH EAX
0078758f  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00787595  e826bcefff                CALL 0x006831c0
0078759a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007875a0  e8cba1c9ff                CALL 0x00421770
007875a5  83f82a                    CMP EAX,0x2a
007875a8  0f859f020000              JNZ 0x0078784d
007875ae  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
007875b5  0f85b3020000              JNZ 0x0078786e
007875bb  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007875c1  e83a54caff                CALL 0x0042ca00
007875c6  6a6a                      PUSH 0x6a
007875c8  8bc8                      MOV ECX,EAX
007875ca  e8d187faff                CALL 0x0072fda0
007875cf  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
007875d5  8db72c120000              LEA ESI,[EDI + 0x122c]
007875db  33c0                      XOR EAX,EAX
007875dd  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
007875e3  8b16                      MOV EDX,dword ptr [ESI]
007875e5  85d2                      TEST EDX,EDX
007875e7  782c                      JS 0x00787615
007875e9  807e0c00                  CMP byte ptr [ESI + 0xc],0x0
007875ed  7526                      JNZ 0x00787615
007875ef  8d8f20120000              LEA ECX,[EDI + 0x1220]
007875f5  52                        PUSH EDX
007875f6  e81547e4ff                CALL 0x005cbd10
007875fb  8b8dccfeffff              MOV ECX,dword ptr [EBP + 0xfffffecc]
00787601  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
00787607  398814010000              CMP dword ptr [EAX + 0x114],ECX
0078760d  741a                      JZ 0x00787629
0078760f  8b85a4feffff              MOV EAX,dword ptr [EBP + 0xfffffea4]
00787615  40                        INC EAX
00787616  83c610                    ADD ESI,0x10
00787619  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
0078761f  83f80f                    CMP EAX,0xf
00787622  72bf                      JC 0x007875e3
00787624  e924020000                JMP 0x0078784d
00787629  8bc8                      MOV ECX,EAX
0078762b  e8406ec9ff                CALL 0x0041e470
00787630  8bc8                      MOV ECX,EAX
00787632  e869fdc7ff                CALL 0x004073a0
00787637  84c0                      TEST AL,AL
00787639  7417                      JZ 0x00787652
0078763b  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
00787641  6a00                      PUSH 0x0
00787643  682cd5b100                PUSH 0xb1d52c
00787648  e8f332c8ff                CALL 0x0040a940
0078764d  e992010000                JMP 0x007877e4
00787652  80bf9813000000            CMP byte ptr [EDI + 0x1398],0x0
00787659  0f857a010000              JNZ 0x007877d9
0078765f  80bf9a13000000            CMP byte ptr [EDI + 0x139a],0x0
00787666  0f856d010000              JNZ 0x007877d9
0078766c  8bb5c4feffff              MOV ESI,dword ptr [EBP + 0xfffffec4]
00787672  8bce                      MOV ECX,ESI
00787674  68eca4b100                PUSH 0xb1a4ec
00787679  e8f233c8ff                CALL 0x0040aa70
0078767e  84c0                      TEST AL,AL
00787680  0f845e010000              JZ 0x007877e4
00787686  6a01                      PUSH 0x1
00787688  682cd5b100                PUSH 0xb1d52c
0078768d  8bce                      MOV ECX,ESI
0078768f  e8ac32c8ff                CALL 0x0040a940
00787694  6a00                      PUSH 0x0
00787696  8d45e0                    LEA EAX,[EBP + -0x20]
00787699  8bcf                      MOV ECX,EDI
0078769b  50                        PUSH EAX
0078769c  e8bf8effff                CALL 0x00780560
007876a1  6a00                      PUSH 0x0
007876a3  83ec10                    SUB ESP,0x10
007876a6  8bcc                      MOV ECX,ESP
007876a8  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
007876ab  6a00                      PUSH 0x0
007876ad  6a00                      PUSH 0x0
007876af  0f1145e0                  MOVUPS xmmword ptr [EBP + -0x20],XMM0
007876b3  e808e5caff                CALL 0x00435bc0
007876b8  8bcf                      MOV ECX,EDI
007876ba  e8f197ffff                CALL 0x00780eb0
007876bf  83ec10                    SUB ESP,0x10
007876c2  8bcc                      MOV ECX,ESP
007876c4  6a00                      PUSH 0x0
007876c6  6a00                      PUSH 0x0
007876c8  e8f3e4caff                CALL 0x00435bc0
007876cd  8bcf                      MOV ECX,EDI
007876cf  e8ec97ffff                CALL 0x00780ec0
007876d4  0f2f0528a5ba00            COMISS XMM0,dword ptr [0x00baa528]
007876db  7210                      JC 0x007876ed
007876dd  f30f1005eca9ba00          MOVSS XMM0,dword ptr [0x00baa9ec]
007876e5  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
007876ed  8bcf                      MOV ECX,EDI
007876ef  e86ce4d7ff                CALL 0x00505b60
007876f4  8bb5d0feffff              MOV ESI,dword ptr [EBP + 0xfffffed0]
007876fa  8bf8                      MOV EDI,EAX
007876fc  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00787702  50                        PUSH EAX
00787703  e86879efff                CALL 0x0067f070
00787708  83c404                    ADD ESP,0x4
0078770b  8d8e3c030000              LEA ECX,[ESI + 0x33c]
00787711  50                        PUSH EAX
00787712  8d85a0feffff              LEA EAX,[EBP + 0xfffffea0]
00787718  50                        PUSH EAX
00787719  e8028d2800                CALL 0x00a10420
0078771e  0f1045e0                  MOVUPS XMM0,xmmword ptr [EBP + -0x20]
00787722  6a01                      PUSH 0x1
00787724  6a00                      PUSH 0x0
00787726  6a04                      PUSH 0x4
00787728  6a01                      PUSH 0x1
0078772a  8bc8                      MOV ECX,EAX
0078772c  51                        PUSH ECX
0078772d  c704240000a03f            MOV dword ptr [ESP],0x3fa00000
00787734  56                        PUSH ESI
00787735  57                        PUSH EDI
00787736  83ec10                    SUB ESP,0x10
00787739  8bc4                      MOV EAX,ESP
0078773b  51                        PUSH ECX
0078773c  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0078773f  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
00787747  f30f110424                MOVSS dword ptr [ESP],XMM0
0078774c  51                        PUSH ECX
0078774d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00787753  e80889f7ff                CALL 0x00700060
00787758  6840b6c700                PUSH 0xc7b640
0078775d  8d8e60030000              LEA ECX,[ESI + 0x360]
00787763  e8485c0500                CALL 0x007dd3b0
00787768  8b06                      MOV EAX,dword ptr [ESI]
0078776a  8b7854                    MOV EDI,dword ptr [EAX + 0x54]
0078776d  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
00787773  50                        PUSH EAX
00787774  e8f778efff                CALL 0x0067f070
00787779  83c404                    ADD ESP,0x4
0078777c  8bf0                      MOV ESI,EAX
0078777e  e85d78efff                CALL 0x0067efe0
00787783  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0078778b  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00787791  50                        PUSH EAX
00787792  8d85a0feffff              LEA EAX,[EBP + 0xfffffea0]
00787798  8bce                      MOV ECX,ESI
0078779a  50                        PUSH EAX
0078779b  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
007877a3  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
007877ab  e8308d2800                CALL 0x00a104e0
007877b0  6a00                      PUSH 0x0
007877b2  8d4d9c                    LEA ECX,[EBP + -0x64]
007877b5  8bf0                      MOV ESI,EAX
007877b7  e8549bcaff                CALL 0x00431310
007877bc  51                        PUSH ECX
007877bd  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
007877c3  8d459c                    LEA EAX,[EBP + -0x64]
007877c6  c7042400000041            MOV dword ptr [ESP],0x41000000
007877cd  56                        PUSH ESI
007877ce  50                        PUSH EAX
007877cf  ffd7                      CALL EDI
007877d1  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
007877d7  eb0b                      JMP 0x007877e4
007877d9  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
007877df  e87c34c8ff                CALL 0x0040ac60
007877e4  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
007877ea  e8816cc9ff                CALL 0x0041e470
007877ef  8bc8                      MOV ECX,EAX
007877f1  e8aafbc7ff                CALL 0x004073a0
007877f6  84c0                      TEST AL,AL
007877f8  7553                      JNZ 0x0078784d
007877fa  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
00787800  e86b6cc9ff                CALL 0x0041e470
00787805  68c8afb600                PUSH 0xb6afc8
0078780a  8bc8                      MOV ECX,EAX
0078780c  e8cf34c8ff                CALL 0x0040ace0
00787811  8bf0                      MOV ESI,EAX
00787813  85f6                      TEST ESI,ESI
00787815  7436                      JZ 0x0078784d
00787817  8d4e10                    LEA ECX,[ESI + 0x10]
0078781a  51                        PUSH ECX
0078781b  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00787821  e84a8d2800                CALL 0x00a10570
00787826  56                        PUSH ESI
00787827  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
0078782d  e81e8c2800                CALL 0x00a10450
00787832  83c618                    ADD ESI,0x18
00787835  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0078783b  56                        PUSH ESI
0078783c  e87fb9efff                CALL 0x006831c0
00787841  56                        PUSH ESI
00787842  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00787848  e873b9efff                CALL 0x006831c0
0078784d  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
00787854  7518                      JNZ 0x0078786e
00787856  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
0078785e  f30f5887881f0000          ADDSS XMM0,dword ptr [EDI + 0x1f88]
00787866  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
0078786e  6a04                      PUSH 0x4
00787870  6a00                      PUSH 0x0
00787872  8bcf                      MOV ECX,EDI
00787874  e8b7fbc8ff                CALL 0x00417430
00787879  84c0                      TEST AL,AL
0078787b  745d                      JZ 0x007878da
0078787d  39bf8c020000              CMP dword ptr [EDI + 0x28c],EDI
00787883  7555                      JNZ 0x007878da
00787885  8b878c130000              MOV EAX,dword ptr [EDI + 0x138c]
0078788b  3d96000000                CMP EAX,0x96
00787890  7d48                      JGE 0x007878da
00787892  660f6ed0                  MOVD XMM2,EAX
00787896  0f5bd2                    CVTDQ2PS XMM2,XMM2
00787899  51                        PUSH ECX
0078789a  8d4d98                    LEA ECX,[EBP + -0x68]
0078789d  c704240000803f            MOV dword ptr [ESP],0x3f800000
007878a4  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
007878ac  f30f5e1544aaba00          DIVSS XMM2,dword ptr [0x00baaa44]
007878b4  0f28da                    MOVAPS XMM3,XMM2
007878b7  e834c0c9ff                CALL 0x004238f0
007878bc  8d4598                    LEA EAX,[EBP + -0x68]
007878bf  50                        PUSH EAX
007878c0  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
007878c6  e8f5b8efff                CALL 0x006831c0
007878cb  8d4598                    LEA EAX,[EBP + -0x68]
007878ce  50                        PUSH EAX
007878cf  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
007878d5  e8e6b8efff                CALL 0x006831c0
007878da  8bcf                      MOV ECX,EDI
007878dc  e8df7f0400                CALL 0x007cf8c0
007878e1  84c0                      TEST AL,AL
007878e3  755a                      JNZ 0x0078793f
007878e5  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007878eb  e81000c9ff                CALL 0x00417900
007878f0  8bc8                      MOV ECX,EAX
007878f2  e8f9e41900                CALL 0x00925df0
007878f7  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
007878fd  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00787905  e866f9c7ff                CALL 0x00407270
0078790a  d88db8feffff              FMUL dword ptr [EBP + 0xfffffeb8]
00787910  51                        PUSH ECX
00787911  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00787917  d91c24                    FSTP dword ptr [ESP]
0078791a  e861f9c7ff                CALL 0x00407280
0078791f  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00787925  e846f9c7ff                CALL 0x00407270
0078792a  d88db8feffff              FMUL dword ptr [EBP + 0xfffffeb8]
00787930  51                        PUSH ECX
00787931  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00787937  d91c24                    FSTP dword ptr [ESP]
0078793a  e841f9c7ff                CALL 0x00407280
0078793f  80bf9813000000            CMP byte ptr [EDI + 0x1398],0x0
00787946  7419                      JZ 0x00787961
00787948  6aff                      PUSH -0x1
0078794a  6871020000                PUSH 0x271
0078794f  8bcf                      MOV ECX,EDI
00787951  e86a60fdff                CALL 0x0075d9c0
00787956  c685e3feffff01            MOV byte ptr [EBP + 0xfffffee3],0x1
0078795d  84c0                      TEST AL,AL
0078795f  7407                      JZ 0x00787968
00787961  c685e3feffff00            MOV byte ptr [EBP + 0xfffffee3],0x0
00787968  8d4748                    LEA EAX,[EDI + 0x48]
0078796b  33f6                      XOR ESI,ESI
0078796d  8d8f38120000              LEA ECX,[EDI + 0x1238]
00787973  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
00787979  898db8feffff              MOV dword ptr [EBP + 0xfffffeb8],ECX
0078797f  eb03                      JMP 0x00787984
00787981  8d4748                    LEA EAX,[EDI + 0x48]
00787984  803900                    CMP byte ptr [ECX],0x0
00787987  0f847a000000              JZ 0x00787a07
0078798d  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
00787993  51                        PUSH ECX
00787994  56                        PUSH ESI
00787995  8bc8                      MOV ECX,EAX
00787997  e86438c8ff                CALL 0x0040b200
0078799c  8d4848                    LEA ECX,[EAX + 0x48]
0078799f  e84cf8c7ff                CALL 0x004071f0
007879a4  8d87f8140000              LEA EAX,[EDI + 0x14f8]
007879aa  50                        PUSH EAX
007879ab  56                        PUSH ESI
007879ac  8d4f48                    LEA ECX,[EDI + 0x48]
007879af  e84c38c8ff                CALL 0x0040b200
007879b4  8d4834                    LEA ECX,[EAX + 0x34]
007879b7  e8f4590500                CALL 0x007dd3b0
007879bc  80bde3feffff00            CMP byte ptr [EBP + 0xfffffee3],0x0
007879c3  8d4f48                    LEA ECX,[EDI + 0x48]
007879c6  7407                      JZ 0x007879cf
007879c8  683c79c300                PUSH 0xc3793c
007879cd  eb62                      JMP 0x00787a31
007879cf  56                        PUSH ESI
007879d0  e82b38c8ff                CALL 0x0040b200
007879d5  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
007879dd  8d4f48                    LEA ECX,[EDI + 0x48]
007879e0  56                        PUSH ESI
007879e1  f30f594034                MULSS XMM0,dword ptr [EAX + 0x34]
007879e6  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
007879eb  e81038c8ff                CALL 0x0040b200
007879f0  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
007879f8  f30f594038                MULSS XMM0,dword ptr [EAX + 0x38]
007879fd  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
00787a02  e940010000                JMP 0x00787b47
00787a07  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00787a0d  51                        PUSH ECX
00787a0e  56                        PUSH ESI
00787a0f  8bc8                      MOV ECX,EAX
00787a11  e8ea37c8ff                CALL 0x0040b200
00787a16  8d4848                    LEA ECX,[EAX + 0x48]
00787a19  e8d2f7c7ff                CALL 0x004071f0
00787a1e  80bde3feffff00            CMP byte ptr [EBP + 0xfffffee3],0x0
00787a25  8d8700150000              LEA EAX,[EDI + 0x1500]
00787a2b  742d                      JZ 0x00787a5a
00787a2d  50                        PUSH EAX
00787a2e  8d4f48                    LEA ECX,[EDI + 0x48]
00787a31  56                        PUSH ESI
00787a32  e8c937c8ff                CALL 0x0040b200
00787a37  8d4834                    LEA ECX,[EAX + 0x34]
00787a3a  e871590500                CALL 0x007dd3b0
00787a3f  6840b6c700                PUSH 0xc7b640
00787a44  56                        PUSH ESI
00787a45  8d4f48                    LEA ECX,[EDI + 0x48]
00787a48  e8b337c8ff                CALL 0x0040b200
00787a4d  8d4840                    LEA ECX,[EAX + 0x40]
00787a50  e85b590500                CALL 0x007dd3b0
00787a55  e903010000                JMP 0x00787b5d
00787a5a  8d87f8140000              LEA EAX,[EDI + 0x14f8]
00787a60  50                        PUSH EAX
00787a61  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00787a67  50                        PUSH EAX
00787a68  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00787a6e  e89d8a2800                CALL 0x00a10510
00787a73  50                        PUSH EAX
00787a74  56                        PUSH ESI
00787a75  8d4f48                    LEA ECX,[EDI + 0x48]
00787a78  e88337c8ff                CALL 0x0040b200
00787a7d  8d4840                    LEA ECX,[EAX + 0x40]
00787a80  e82b590500                CALL 0x007dd3b0
00787a85  8d8700150000              LEA EAX,[EDI + 0x1500]
00787a8b  50                        PUSH EAX
00787a8c  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
00787a92  50                        PUSH EAX
00787a93  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00787a99  e8728a2800                CALL 0x00a10510
00787a9e  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00787aa4  51                        PUSH ECX
00787aa5  8d4de8                    LEA ECX,[EBP + -0x18]
00787aa8  51                        PUSH ECX
00787aa9  8bc8                      MOV ECX,EAX
00787aab  e8608a2800                CALL 0x00a10510
00787ab0  50                        PUSH EAX
00787ab1  56                        PUSH ESI
00787ab2  8d4f48                    LEA ECX,[EDI + 0x48]
00787ab5  e84637c8ff                CALL 0x0040b200
00787aba  8d4834                    LEA ECX,[EAX + 0x34]
00787abd  e8ee580500                CALL 0x007dd3b0
00787ac2  56                        PUSH ESI
00787ac3  8d4f48                    LEA ECX,[EDI + 0x48]
00787ac6  e83537c8ff                CALL 0x0040b200
00787acb  f30f10857cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe7c]
00787ad3  8d4f48                    LEA ECX,[EDI + 0x48]
00787ad6  56                        PUSH ESI
00787ad7  f30f594034                MULSS XMM0,dword ptr [EAX + 0x34]
00787adc  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
00787ae1  e81a37c8ff                CALL 0x0040b200
00787ae6  f30f108578feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe78]
00787aee  8d4f48                    LEA ECX,[EDI + 0x48]
00787af1  56                        PUSH ESI
00787af2  f30f594038                MULSS XMM0,dword ptr [EAX + 0x38]
00787af7  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
00787afc  f30f108f04150000          MOVSS XMM1,dword ptr [EDI + 0x1504]
00787b04  f30f5c8ffc140000          SUBSS XMM1,dword ptr [EDI + 0x14fc]
00787b0c  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
00787b14  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
00787b1c  f30f590dbca6ba00          MULSS XMM1,dword ptr [0x00baa6bc]
00787b24  f30f58c8                  ADDSS XMM1,XMM0
00787b28  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
00787b30  e8cb36c8ff                CALL 0x0040b200
00787b35  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
00787b3d  f30f584044                ADDSS XMM0,dword ptr [EAX + 0x44]
00787b42  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
00787b47  56                        PUSH ESI
00787b48  8d4f48                    LEA ECX,[EDI + 0x48]
00787b4b  e8b036c8ff                CALL 0x0040b200
00787b50  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
00787b58  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
00787b5d  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
00787b63  46                        INC ESI
00787b64  83c110                    ADD ECX,0x10
00787b67  898db8feffff              MOV dword ptr [EBP + 0xfffffeb8],ECX
00787b6d  83fe0f                    CMP ESI,0xf
00787b70  0f8c0bfeffff              JL 0x00787981
00787b76  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00787b7c  e89f42e4ff                CALL 0x005cbe20
00787b81  33c0                      XOR EAX,EAX
00787b83  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
00787b8a  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
00787b90  c1e004                    SHL EAX,0x4
00787b93  052c120000                ADD EAX,0x122c
00787b98  03c7                      ADD EAX,EDI
00787b9a  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
00787ba0  8b10                      MOV EDX,dword ptr [EAX]
00787ba2  85d2                      TEST EDX,EDX
00787ba4  0f8820020000              JS 0x00787dca
00787baa  80780c00                  CMP byte ptr [EAX + 0xc],0x0
00787bae  8d8f20120000              LEA ECX,[EDI + 0x1220]
00787bb4  52                        PUSH EDX
00787bb5  7427                      JZ 0x00787bde
00787bb7  e85441e4ff                CALL 0x005cbd10
00787bbc  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
00787bc2  83ec2c                    SUB ESP,0x2c
00787bc5  8bf8                      MOV EDI,EAX
00787bc7  8bf4                      MOV ESI,ESP
00787bc9  e842f8c7ff                CALL 0x00407410
00787bce  50                        PUSH EAX
00787bcf  8bce                      MOV ECX,ESI
00787bd1  e8eaf5c7ff                CALL 0x004071c0
00787bd6  8d956cffffff              LEA EDX,[EBP + 0xffffff6c]
00787bdc  eb42                      JMP 0x00787c20
00787bde  e82d41e4ff                CALL 0x005cbd10
00787be3  83bdb0feffff04            CMP dword ptr [EBP + 0xfffffeb0],0x4
00787bea  7314                      JNC 0x00787c00
00787bec  8d4f48                    LEA ECX,[EDI + 0x48]
00787bef  8bf0                      MOV ESI,EAX
00787bf1  e81af8c7ff                CALL 0x00407410
00787bf6  50                        PUSH EAX
00787bf7  8bce                      MOV ECX,ESI
00787bf9  e8d2f7c7ff                CALL 0x004073d0
00787bfe  eb3c                      JMP 0x00787c3c
00787c00  8b8da4feffff              MOV ECX,dword ptr [EBP + 0xfffffea4]
00787c06  83ec2c                    SUB ESP,0x2c
00787c09  8bf8                      MOV EDI,EAX
00787c0b  8bf4                      MOV ESI,ESP
00787c0d  e8fef7c7ff                CALL 0x00407410
00787c12  50                        PUSH EAX
00787c13  8bce                      MOV ECX,ESI
00787c15  e8a6f5c7ff                CALL 0x004071c0
00787c1a  8d9514ffffff              LEA EDX,[EBP + 0xffffff14]
00787c20  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00787c26  e8b5f6c7ff                CALL 0x004072e0
00787c2b  83c42c                    ADD ESP,0x2c
00787c2e  8bcf                      MOV ECX,EDI
00787c30  50                        PUSH EAX
00787c31  e89af7c7ff                CALL 0x004073d0
00787c36  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00787c3c  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
00787c42  8d8f20120000              LEA ECX,[EDI + 0x1220]
00787c48  ff30                      PUSH dword ptr [EAX]
00787c4a  e8c140e4ff                CALL 0x005cbd10
00787c4f  8d4f48                    LEA ECX,[EDI + 0x48]
00787c52  8bf0                      MOV ESI,EAX
00787c54  e8a7f5c8ff                CALL 0x00417200
00787c59  50                        PUSH EAX
00787c5a  8bce                      MOV ECX,ESI
00787c5c  e80f85c9ff                CALL 0x00420170
00787c61  8bb5d4feffff              MOV ESI,dword ptr [EBP + 0xfffffed4]
00787c67  8d8f20120000              LEA ECX,[EDI + 0x1220]
00787c6d  ff36                      PUSH dword ptr [ESI]
00787c6f  e89c40e4ff                CALL 0x005cbd10
00787c74  ff7604                    PUSH dword ptr [ESI + 0x4]
00787c77  8bc8                      MOV ECX,EAX
00787c79  e88235c8ff                CALL 0x0040b200
00787c7e  ffb5b0feffff              PUSH dword ptr [EBP + 0xfffffeb0]
00787c84  8d4f48                    LEA ECX,[EDI + 0x48]
00787c87  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
00787c8d  e86e35c8ff                CALL 0x0040b200
00787c92  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
00787c98  83c034                    ADD EAX,0x34
00787c9b  50                        PUSH EAX
00787c9c  83c134                    ADD ECX,0x34
00787c9f  e80c570500                CALL 0x007dd3b0
00787ca4  ffb5b0feffff              PUSH dword ptr [EBP + 0xfffffeb0]
00787caa  8d4f48                    LEA ECX,[EDI + 0x48]
00787cad  e84e35c8ff                CALL 0x0040b200
00787cb2  8bb5b8feffff              MOV ESI,dword ptr [EBP + 0xfffffeb8]
00787cb8  83c040                    ADD EAX,0x40
00787cbb  50                        PUSH EAX
00787cbc  8d4e40                    LEA ECX,[ESI + 0x40]
00787cbf  e8ec560500                CALL 0x007dd3b0
00787cc4  83bdb0feffff00            CMP dword ptr [EBP + 0xfffffeb0],0x0
00787ccb  7507                      JNZ 0x00787cd4
00787ccd  838e8c00000001            OR dword ptr [ESI + 0x8c],0x1
00787cd4  8bb5d4feffff              MOV ESI,dword ptr [EBP + 0xfffffed4]
00787cda  8d45e8                    LEA EAX,[EBP + -0x18]
00787cdd  56                        PUSH ESI
00787cde  50                        PUSH EAX
00787cdf  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00787ce5  e8d6c8d5ff                CALL 0x004e45c0
00787cea  807e0c00                  CMP byte ptr [ESI + 0xc],0x0
00787cee  0f84d6000000              JZ 0x00787dca
00787cf4  ff36                      PUSH dword ptr [ESI]
00787cf6  8d8f20120000              LEA ECX,[EDI + 0x1220]
00787cfc  e80f40e4ff                CALL 0x005cbd10
00787d01  83b81401000000            CMP dword ptr [EAX + 0x114],0x0
00787d08  0f84bc000000              JZ 0x00787dca
00787d0e  ff36                      PUSH dword ptr [ESI]
00787d10  8d8f20120000              LEA ECX,[EDI + 0x1220]
00787d16  e8f53fe4ff                CALL 0x005cbd10
00787d1b  8b8014010000              MOV EAX,dword ptr [EAX + 0x114]
00787d21  833800                    CMP dword ptr [EAX],0x0
00787d24  0f85a0000000              JNZ 0x00787dca
00787d2a  ff36                      PUSH dword ptr [ESI]
00787d2c  8d8f20120000              LEA ECX,[EDI + 0x1220]
00787d32  e8d93fe4ff                CALL 0x005cbd10
00787d37  8b8014010000              MOV EAX,dword ptr [EAX + 0x114]
00787d3d  8378045a                  CMP dword ptr [EAX + 0x4],0x5a
00787d41  0f8583000000              JNZ 0x00787dca
00787d47  33c9                      XOR ECX,ECX
00787d49  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
00787d4f  8bcf                      MOV ECX,EDI
00787d51  e8ea52caff                CALL 0x0042d040
00787d56  85c0                      TEST EAX,EAX
00787d58  7414                      JZ 0x00787d6e
00787d5a  8bcf                      MOV ECX,EDI
00787d5c  e8df52caff                CALL 0x0042d040
00787d61  8bc8                      MOV ECX,EAX
00787d63  e84872efff                CALL 0x0067efb0
00787d68  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
00787d6e  8bcf                      MOV ECX,EDI
00787d70  e81b770300                CALL 0x007bf490
00787d75  ff36                      PUSH dword ptr [ESI]
00787d77  33c9                      XOR ECX,ECX
00787d79  84c0                      TEST AL,AL
00787d7b  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
00787d81  0f45c1                    CMOVNZ EAX,ECX
00787d84  8d8f20120000              LEA ECX,[EDI + 0x1220]
00787d8a  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
00787d90  e87b3fe4ff                CALL 0x005cbd10
00787d95  660f6e85c4feffff          MOVD XMM0,dword ptr [EBP + 0xfffffec4]
00787d9d  8bc8                      MOV ECX,EAX
00787d9f  ff7604                    PUSH dword ptr [ESI + 0x4]
00787da2  0f5bc0                    CVTDQ2PS XMM0,XMM0
00787da5  f30f5905c4a9ba00          MULSS XMM0,dword ptr [0x00baa9c4]
00787dad  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00787db5  e84634c8ff                CALL 0x0040b200
00787dba  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
00787dc2  f30f118094000000          MOVSS dword ptr [EAX + 0x94],XMM0
00787dca  8b85b0feffff              MOV EAX,dword ptr [EBP + 0xfffffeb0]
00787dd0  40                        INC EAX
00787dd1  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
00787dd7  83f80f                    CMP EAX,0xf
00787dda  0f82b0fdffff              JC 0x00787b90
00787de0  6a00                      PUSH 0x0
00787de2  6800400000                PUSH 0x4000
00787de7  8bcf                      MOV ECX,EDI
00787de9  e842f6c8ff                CALL 0x00417430
00787dee  84c0                      TEST AL,AL
00787df0  0f85c6010000              JNZ 0x00787fbc
00787df6  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00787dfc  50                        PUSH EAX
00787dfd  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00787e03  e86849caff                CALL 0x0042c770
00787e08  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00787e0e  50                        PUSH EAX
00787e0f  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00787e15  e886e3ccff                CALL 0x004561a0
00787e1a  50                        PUSH EAX
00787e1b  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
00787e21  e8ea48caff                CALL 0x0042c710
00787e26  84c0                      TEST AL,AL
00787e28  0f848e010000              JZ 0x00787fbc
00787e2e  8db720120000              LEA ESI,[EDI + 0x1220]
00787e34  89b5a4feffff              MOV dword ptr [EBP + 0xfffffea4],ESI
00787e3a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00787e40  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
00787e46  e8e53be4ff                CALL 0x005cba30
00787e4b  8bce                      MOV ECX,ESI
00787e4d  ff30                      PUSH dword ptr [EAX]
00787e4f  e8bc3ee4ff                CALL 0x005cbd10
00787e54  8bf0                      MOV ESI,EAX
00787e56  6a08                      PUSH 0x8
00787e58  8bce                      MOV ECX,ESI
00787e5a  89b5ccfeffff              MOV dword ptr [EBP + 0xfffffecc],ESI
00787e60  e8fb55e4ff                CALL 0x005cd460
00787e65  8bce                      MOV ECX,ESI
00787e67  e89412c8ff                CALL 0x00409100
00787e6c  8bce                      MOV ECX,ESI
00787e6e  e8fd65c9ff                CALL 0x0041e470
00787e73  8bc8                      MOV ECX,EAX
00787e75  e826f5c7ff                CALL 0x004073a0
00787e7a  84c0                      TEST AL,AL
00787e7c  7546                      JNZ 0x00787ec4
00787e7e  8bce                      MOV ECX,ESI
00787e80  e8eb65c9ff                CALL 0x0041e470
00787e85  8d4dac                    LEA ECX,[EBP + -0x54]
00787e88  51                        PUSH ECX
00787e89  8bc8                      MOV ECX,EAX
00787e8b  e860adccff                CALL 0x00452bf0
00787e90  c645fc08                  MOV byte ptr [EBP + -0x4],0x8
00787e94  8b8da8feffff              MOV ECX,dword ptr [EBP + 0xfffffea8]
00787e9a  83c901                    OR ECX,0x1
00787e9d  6840abb600                PUSH 0xb6ab40
00787ea2  6a07                      PUSH 0x7
00787ea4  898da8feffff              MOV dword ptr [EBP + 0xfffffea8],ECX
00787eaa  898db0feffff              MOV dword ptr [EBP + 0xfffffeb0],ECX
00787eb0  8bc8                      MOV ECX,EAX
00787eb2  6a00                      PUSH 0x0
00787eb4  e81729f5ff                CALL 0x006da7d0
00787eb9  c685dffeffff01            MOV byte ptr [EBP + 0xfffffedf],0x1
00787ec0  85c0                      TEST EAX,EAX
00787ec2  7407                      JZ 0x00787ecb
00787ec4  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
00787ecb  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
00787ed2  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
00787ed8  a801                      TEST AL,0x1
00787eda  7411                      JZ 0x00787eed
00787edc  83e0fe                    AND EAX,0xfffffffe
00787edf  8d4dac                    LEA ECX,[EBP + -0x54]
00787ee2  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
00787ee8  e83340c8ff                CALL 0x0040bf20
00787eed  80bddffeffff00            CMP byte ptr [EBP + 0xfffffedf],0x0
00787ef4  0f847c000000              JZ 0x00787f76
00787efa  8bce                      MOV ECX,ESI
00787efc  e86f65c9ff                CALL 0x0041e470
00787f01  8bc8                      MOV ECX,EAX
00787f03  e8b8f4c7ff                CALL 0x004073c0
00787f08  85c0                      TEST EAX,EAX
00787f0a  0f8466000000              JZ 0x00787f76
00787f10  8bbdccfeffff              MOV EDI,dword ptr [EBP + 0xfffffecc]
00787f16  33f6                      XOR ESI,ESI
00787f18  8bcf                      MOV ECX,EDI
00787f1a  e8218fcbff                CALL 0x00440e40
00787f1f  85c0                      TEST EAX,EAX
00787f21  7453                      JZ 0x00787f76
00787f23  8bcf                      MOV ECX,EDI
00787f25  e84665c9ff                CALL 0x0041e470
00787f2a  56                        PUSH ESI
00787f2b  8bc8                      MOV ECX,EAX
00787f2d  e8ee22c8ff                CALL 0x0040a220
00787f32  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
00787f38  85c0                      TEST EAX,EAX
00787f3a  742e                      JZ 0x00787f6a
00787f3c  50                        PUSH EAX
00787f3d  56                        PUSH ESI
00787f3e  8bcf                      MOV ECX,EDI
00787f40  e8bb32c8ff                CALL 0x0040b200
00787f45  8d8890000000              LEA ECX,[EAX + 0x90]
00787f4b  e860540500                CALL 0x007dd3b0
00787f50  8b85ccfeffff              MOV EAX,dword ptr [EBP + 0xfffffecc]
00787f56  8bcf                      MOV ECX,EDI
00787f58  83c018                    ADD EAX,0x18
00787f5b  50                        PUSH EAX
00787f5c  56                        PUSH ESI
00787f5d  e89e32c8ff                CALL 0x0040b200
00787f62  8d4834                    LEA ECX,[EAX + 0x34]
00787f65  e806862800                CALL 0x00a10570
00787f6a  8bcf                      MOV ECX,EDI
00787f6c  46                        INC ESI
00787f6d  e8ce8ecbff                CALL 0x00440e40
00787f72  3bf0                      CMP ESI,EAX
00787f74  72ad                      JC 0x00787f23
00787f76  6a00                      PUSH 0x0
00787f78  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
00787f7e  50                        PUSH EAX
00787f7f  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
00787f85  e86699ecff                CALL 0x006518f0
00787f8a  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00787f90  50                        PUSH EAX
00787f91  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00787f97  e804e2ccff                CALL 0x004561a0
00787f9c  50                        PUSH EAX
00787f9d  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
00787fa3  e86847caff                CALL 0x0042c710
00787fa8  8bb5a4feffff              MOV ESI,dword ptr [EBP + 0xfffffea4]
00787fae  84c0                      TEST AL,AL
00787fb0  0f858afeffff              JNZ 0x00787e40
00787fb6  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00787fbc  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00787fc2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00787fc9  e852c4c9ff                CALL 0x00424420
00787fce  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
00787fd4  84c0                      TEST AL,AL
00787fd6  0f8513150000              JNZ 0x007894ef
00787fdc  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00787fe0  0f8563070000              JNZ 0x00788749
00787fe6  3887a9200000              CMP byte ptr [EDI + 0x20a9],AL
00787fec  0f8557070000              JNZ 0x00788749
00787ff2  8d8f08150000              LEA ECX,[EDI + 0x1508]
00787ff8  681a010000                PUSH 0x11a
00787ffd  e87e891a00                CALL 0x00930980
00788002  8bf0                      MOV ESI,EAX
00788004  85f6                      TEST ESI,ESI
00788006  0f8460010000              JZ 0x0078816c
0078800c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00788012  e8e949caff                CALL 0x0042ca00
00788017  681a010000                PUSH 0x11a
0078801c  8bc8                      MOV ECX,EAX
0078801e  e8ed7cfaff                CALL 0x0072fd10
00788023  6a00                      PUSH 0x0
00788025  0f57c0                    XORPS XMM0,XMM0
00788028  8bcf                      MOV ECX,EDI
0078802a  6800400000                PUSH 0x4000
0078802f  8b4078                    MOV EAX,dword ptr [EAX + 0x78]
00788032  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
00788038  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00788040  e8ebf3c8ff                CALL 0x00417430
00788045  84c0                      TEST AL,AL
00788047  740a                      JZ 0x00788053
00788049  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00788051  eb08                      JMP 0x0078805b
00788053  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0078805b  660f6e4e08                MOVD XMM1,dword ptr [ESI + 0x8]
00788060  8d873c030000              LEA EAX,[EDI + 0x33c]
00788066  0f5bc9                    CVTDQ2PS XMM1,XMM1
00788069  50                        PUSH EAX
0078806a  8d45e8                    LEA EAX,[EBP + -0x18]
0078806d  8d8f34030000              LEA ECX,[EDI + 0x334]
00788073  50                        PUSH EAX
00788074  f30f5cc8                  SUBSS XMM1,XMM0
00788078  660f6e85a4feffff          MOVD XMM0,dword ptr [EBP + 0xfffffea4]
00788080  0f5bc0                    CVTDQ2PS XMM0,XMM0
00788083  f30f5c0d54a4ba00          SUBSS XMM1,dword ptr [0x00baa454]
0078808b  f30f5c0530a6ba00          SUBSS XMM0,dword ptr [0x00baa630]
00788093  f30f5ec8                  DIVSS XMM1,XMM0
00788097  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0078809f  f30f5cc1                  SUBSS XMM0,XMM1
007880a3  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
007880ab  e8d0832800                CALL 0x00a10480
007880b0  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
007880b6  51                        PUSH ECX
007880b7  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
007880bd  51                        PUSH ECX
007880be  8bc8                      MOV ECX,EAX
007880c0  e81b842800                CALL 0x00a104e0
007880c5  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
007880cb  51                        PUSH ECX
007880cc  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
007880d2  51                        PUSH ECX
007880d3  8bc8                      MOV ECX,EAX
007880d5  e806842800                CALL 0x00a104e0
007880da  50                        PUSH EAX
007880db  8d8f3c030000              LEA ECX,[EDI + 0x33c]
007880e1  e86a832800                CALL 0x00a10450
007880e6  6840b6c700                PUSH 0xc7b640
007880eb  8d8f60030000              LEA ECX,[EDI + 0x360]
007880f1  e8ba520500                CALL 0x007dd3b0
007880f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007880fc  e87f96c9ff                CALL 0x00421780
00788101  8bc8                      MOV ECX,EAX
00788103  e8e8f5c8ff                CALL 0x004176f0
00788108  83f821                    CMP EAX,0x21
0078810b  755f                      JNZ 0x0078816c
0078810d  837e0801                  CMP dword ptr [ESI + 0x8],0x1
00788111  7559                      JNZ 0x0078816c
00788113  e8486ef6ff                CALL 0x006eef60
00788118  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078811e  50                        PUSH EAX
0078811f  6a00                      PUSH 0x0
00788121  57                        PUSH EDI
00788122  6840b6c700                PUSH 0xc7b640
00788127  8d873c030000              LEA EAX,[EDI + 0x33c]
0078812d  50                        PUSH EAX
0078812e  6a3d                      PUSH 0x3d
00788130  68e8030000                PUSH 0x3e8
00788135  e8e609caff                CALL 0x00428b20
0078813a  8bf0                      MOV ESI,EAX
0078813c  57                        PUSH EDI
0078813d  8bce                      MOV ECX,ESI
0078813f  e85c11f2ff                CALL 0x006a92a0
00788144  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0078814c  83ec08                    SUB ESP,0x8
0078814f  8bce                      MOV ECX,ESI
00788151  c74424040000b442          MOV dword ptr [ESP + 0x4],0x42b40000
00788159  f30f110424                MOVSS dword ptr [ESP],XMM0
0078815e  e88dddcaff                CALL 0x00435ef0
00788163  6a0a                      PUSH 0xa
00788165  8bce                      MOV ECX,ESI
00788167  e824ddcaff                CALL 0x00435e90
0078816c  8db708150000              LEA ESI,[EDI + 0x1508]
00788172  6846010000                PUSH 0x146
00788177  8bce                      MOV ECX,ESI
00788179  e872841a00                CALL 0x009305f0
0078817e  6a00                      PUSH 0x0
00788180  6a3b                      PUSH 0x3b
00788182  8bcf                      MOV ECX,EDI
00788184  8885dffeffff              MOV byte ptr [EBP + 0xfffffedf],AL
0078818a  e85185feff                CALL 0x007706e0
0078818f  84c0                      TEST AL,AL
00788191  0f8430050000              JZ 0x007886c7
00788197  681a010000                PUSH 0x11a
0078819c  8bce                      MOV ECX,ESI
0078819e  e84d841a00                CALL 0x009305f0
007881a3  84c0                      TEST AL,AL
007881a5  750c                      JNZ 0x007881b3
007881a7  3885dffeffff              CMP byte ptr [EBP + 0xfffffedf],AL
007881ad  0f8414050000              JZ 0x007886c7
007881b3  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
007881bb  0f57d2                    XORPS XMM2,XMM2
007881be  8bcf                      MOV ECX,EDI
007881c0  e89b45f2ff                CALL 0x006ac760
007881c5  85c0                      TEST EAX,EAX
007881c7  0f8472000000              JZ 0x0078823f
007881cd  8b07                      MOV EAX,dword ptr [EDI]
007881cf  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
007881d5  f30f101da4a3ba00          MOVSS XMM3,dword ptr [0x00baa3a4]
007881dd  83ec20                    SUB ESP,0x20
007881e0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
007881e8  0f28d3                    MOVAPS XMM2,XMM3
007881eb  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
007881ee  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
007881f6  c7442418cdcccc3e          MOV dword ptr [ESP + 0x18],0x3ecccccd
007881fe  c7442414cdcc4c3f          MOV dword ptr [ESP + 0x14],0x3f4ccccd
00788206  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
0078820e  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00788216  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0078821e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00788226  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078822d  e81ed9caff                CALL 0x00435b50
00788232  6a01                      PUSH 0x1
00788234  6a01                      PUSH 0x1
00788236  6a01                      PUSH 0x1
00788238  6a04                      PUSH 0x4
0078823a  50                        PUSH EAX
0078823b  8bcf                      MOV ECX,EDI
0078823d  ffd6                      CALL ESI
0078823f  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00788247  0f57d2                    XORPS XMM2,XMM2
0078824a  8bcf                      MOV ECX,EDI
0078824c  e80f45f2ff                CALL 0x006ac760
00788251  85c0                      TEST EAX,EAX
00788253  0f846d020000              JZ 0x007884c6
00788259  8d874c030000              LEA EAX,[EDI + 0x34c]
0078825f  50                        PUSH EAX
00788260  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00788266  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0078826c  50                        PUSH EAX
0078826d  e8ae812800                CALL 0x00a10420
00788272  6894b0b600                PUSH 0xb6b094
00788277  8d4f48                    LEA ECX,[EDI + 0x48]
0078827a  e8b131c8ff                CALL 0x0040b430
0078827f  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
00788285  85c0                      TEST EAX,EAX
00788287  0f8474000000              JZ 0x00788301
0078828d  8d4f48                    LEA ECX,[EDI + 0x48]
00788290  e8cb61c9ff                CALL 0x0041e460
00788295  8b8dccfeffff              MOV ECX,dword ptr [EBP + 0xfffffecc]
0078829b  8bf0                      MOV ESI,EAX
0078829d  e83ea9ccff                CALL 0x00452be0
007882a2  50                        PUSH EAX
007882a3  8bce                      MOV ECX,ESI
007882a5  e8761fc8ff                CALL 0x0040a220
007882aa  85c0                      TEST EAX,EAX
007882ac  7453                      JZ 0x00788301
007882ae  8d5010                    LEA EDX,[EAX + 0x10]
007882b1  8d4de8                    LEA ECX,[EBP + -0x18]
007882b4  e82770efff                CALL 0x0067f2e0
007882b9  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
007882c1  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
007882c7  0f57c9                    XORPS XMM1,XMM1
007882ca  8bf0                      MOV ESI,EAX
007882cc  e8bf7b2800                CALL 0x00a0fe90
007882d1  50                        PUSH EAX
007882d2  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
007882d8  8bce                      MOV ECX,ESI
007882da  50                        PUSH EAX
007882db  e840812800                CALL 0x00a10420
007882e0  8d8ff0140000              LEA ECX,[EDI + 0x14f0]
007882e6  51                        PUSH ECX
007882e7  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
007882ed  51                        PUSH ECX
007882ee  8bc8                      MOV ECX,EAX
007882f0  e81b822800                CALL 0x00a10510
007882f5  50                        PUSH EAX
007882f6  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
007882fc  e84f812800                CALL 0x00a10450
00788301  e85a6cf6ff                CALL 0x006eef60
00788306  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
0078830c  8bf8                      MOV EDI,EAX
0078830e  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00788314  c785ccfeffffcdcccc3d      MOV dword ptr [EBP + 0xfffffecc],0x3dcccccd
0078831e  50                        PUSH EAX
0078831f  8d45e8                    LEA EAX,[EBP + -0x18]
00788322  8d8960030000              LEA ECX,[ECX + 0x360]
00788328  50                        PUSH EAX
00788329  e8b2812800                CALL 0x00a104e0
0078832e  8bf0                      MOV ESI,EAX
00788330  e8ab6cefff                CALL 0x0067efe0
00788335  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0078833d  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
00788343  f30f101574adba00          MOVSS XMM2,dword ptr [0x00baad74]
0078834b  0f57c9                    XORPS XMM1,XMM1
0078834e  f30f5cd0                  SUBSS XMM2,XMM0
00788352  e8397b2800                CALL 0x00a0fe90
00788357  50                        PUSH EAX
00788358  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
0078835e  8bce                      MOV ECX,ESI
00788360  50                        PUSH EAX
00788361  e8ba802800                CALL 0x00a10420
00788366  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078836c  57                        PUSH EDI
0078836d  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00788373  6a00                      PUSH 0x0
00788375  57                        PUSH EDI
00788376  50                        PUSH EAX
00788377  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
0078837d  50                        PUSH EAX
0078837e  6a3b                      PUSH 0x3b
00788380  68e8030000                PUSH 0x3e8
00788385  e89607caff                CALL 0x00428b20
0078838a  6a00                      PUSH 0x0
0078838c  8bf0                      MOV ESI,EAX
0078838e  8d4db0                    LEA ECX,[EBP + -0x50]
00788391  6a02                      PUSH 0x2
00788393  89b5a4feffff              MOV dword ptr [EBP + 0xfffffea4],ESI
00788399  e832912800                CALL 0x00a114d0
0078839e  8bce                      MOV ECX,ESI
007883a0  e82bdacaff                CALL 0x00435dd0
007883a5  8d4db0                    LEA ECX,[EBP + -0x50]
007883a8  51                        PUSH ECX
007883a9  6a00                      PUSH 0x0
007883ab  8bc8                      MOV ECX,EAX
007883ad  e84e2ec8ff                CALL 0x0040b200
007883b2  8d4878                    LEA ECX,[EAX + 0x78]
007883b5  e806922800                CALL 0x00a115c0
007883ba  83bf9418000006            CMP dword ptr [EDI + 0x1894],0x6
007883c1  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
007883c9  51                        PUSH ECX
007883ca  c704240000803f            MOV dword ptr [ESP],0x3f800000
007883d1  7518                      JNZ 0x007883eb
007883d3  f30f101daca1ba00          MOVSS XMM3,dword ptr [0x00baa1ac]
007883db  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
007883e1  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
007883e9  eb16                      JMP 0x00788401
007883eb  f30f101d98a1ba00          MOVSS XMM3,dword ptr [0x00baa198]
007883f3  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
007883f9  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00788401  e8eab4c9ff                CALL 0x004238f0
00788406  8bce                      MOV ECX,ESI
00788408  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
0078840e  e8bdd9caff                CALL 0x00435dd0
00788413  ffb5b8feffff              PUSH dword ptr [EBP + 0xfffffeb8]
00788419  8bc8                      MOV ECX,EAX
0078841b  6a00                      PUSH 0x0
0078841d  e8de2dc8ff                CALL 0x0040b200
00788422  8d4848                    LEA ECX,[EAX + 0x48]
00788425  e8c6edc7ff                CALL 0x004071f0
0078842a  e8b16befff                CALL 0x0067efe0
0078842f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00788437  51                        PUSH ECX
00788438  8bce                      MOV ECX,ESI
0078843a  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00788442  f30f110424                MOVSS dword ptr [ESP],XMM0
00788447  e864dacaff                CALL 0x00435eb0
0078844c  b90a000000                MOV ECX,0xa
00788451  e8ba6befff                CALL 0x0067f010
00788456  83c00a                    ADD EAX,0xa
00788459  8bce                      MOV ECX,ESI
0078845b  50                        PUSH EAX
0078845c  e82fdacaff                CALL 0x00435e90
00788461  e87a6befff                CALL 0x0067efe0
00788466  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0078846e  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00788474  50                        PUSH EAX
00788475  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
0078847b  50                        PUSH EAX
0078847c  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
00788484  8d8ff0140000              LEA ECX,[EDI + 0x14f0]
0078848a  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00788492  e849802800                CALL 0x00a104e0
00788497  683c79c300                PUSH 0xc3793c
0078849c  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
007884a2  51                        PUSH ECX
007884a3  8bc8                      MOV ECX,EAX
007884a5  e866802800                CALL 0x00a10510
007884aa  8b8da4feffff              MOV ECX,dword ptr [EBP + 0xfffffea4]
007884b0  50                        PUSH EAX
007884b1  e8fa54caff                CALL 0x0042d9b0
007884b6  8b8da4feffff              MOV ECX,dword ptr [EBP + 0xfffffea4]
007884bc  6830f8ffff                PUSH 0xfffff830
007884c1  e8ca89cbff                CALL 0x00440e90
007884c6  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
007884ce  0f57d2                    XORPS XMM2,XMM2
007884d1  8bcf                      MOV ECX,EDI
007884d3  e88842f2ff                CALL 0x006ac760
007884d8  85c0                      TEST EAX,EAX
007884da  0f84e1010000              JZ 0x007886c1
007884e0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007884e6  e845c0c9ff                CALL 0x00424530
007884eb  8bc8                      MOV ECX,EAX
007884ed  e8fedbcaff                CALL 0x004360f0
007884f2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007884f8  660f6ec0                  MOVD XMM0,EAX
007884fc  0f5bc0                    CVTDQ2PS XMM0,XMM0
007884ff  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00788507  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0078850f  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00788517  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0078851f  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
00788527  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
0078852f  e84cefc7ff                CALL 0x00407480
00788534  8bc8                      MOV ECX,EAX
00788536  e82505caff                CALL 0x00428a60
0078853b  f30f109dccfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffecc]
00788543  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00788549  6a0a                      PUSH 0xa
0078854b  51                        PUSH ECX
0078854c  8d4de0                    LEA ECX,[EBP + -0x20]
0078854f  51                        PUSH ECX
00788550  8bc8                      MOV ECX,EAX
00788552  e83922c9ff                CALL 0x0041a790
00788557  c745fc09000000            MOV dword ptr [EBP + -0x4],0x9
0078855e  8d4de0                    LEA ECX,[EBP + -0x20]
00788561  33f6                      XOR ESI,ESI
00788563  89b5d4feffff              MOV dword ptr [EBP + 0xfffffed4],ESI
00788569  e882f1c8ff                CALL 0x004176f0
0078856e  85c0                      TEST EAX,EAX
00788570  0f843c010000              JZ 0x007886b2
00788576  56                        PUSH ESI
00788577  8d4de0                    LEA ECX,[EBP + -0x20]
0078857a  e8a1f0c8ff                CALL 0x00417620
0078857f  6a00                      PUSH 0x0
00788581  8b08                      MOV ECX,dword ptr [EAX]
00788583  e8d83ff2ff                CALL 0x006ac560
00788588  84c0                      TEST AL,AL
0078858a  0f84ae000000              JZ 0x0078863e
00788590  56                        PUSH ESI
00788591  8d4de0                    LEA ECX,[EBP + -0x20]
00788594  e887f0c8ff                CALL 0x00417620
00788599  3938                      CMP dword ptr [EAX],EDI
0078859b  0f849d000000              JZ 0x0078863e
007885a1  56                        PUSH ESI
007885a2  8d4de0                    LEA ECX,[EBP + -0x20]
007885a5  e876f0c8ff                CALL 0x00417620
007885aa  6a00                      PUSH 0x0
007885ac  6800000020                PUSH 0x20000000
007885b1  8b08                      MOV ECX,dword ptr [EAX]
007885b3  e878eec8ff                CALL 0x00417430
007885b8  84c0                      TEST AL,AL
007885ba  0f857e000000              JNZ 0x0078863e
007885c0  56                        PUSH ESI
007885c1  8d4de0                    LEA ECX,[EBP + -0x20]
007885c4  e857f0c8ff                CALL 0x00417620
007885c9  ffb5d0feffff              PUSH dword ptr [EBP + 0xfffffed0]
007885cf  8d4d9c                    LEA ECX,[EBP + -0x64]
007885d2  8b38                      MOV EDI,dword ptr [EAX]
007885d4  8b07                      MOV EAX,dword ptr [EDI]
007885d6  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
007885d9  e8328dcaff                CALL 0x00431310
007885de  f30f1085b8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb8]
007885e6  8d459c                    LEA EAX,[EBP + -0x64]
007885e9  6a1e                      PUSH 0x1e
007885eb  50                        PUSH EAX
007885ec  6a00                      PUSH 0x0
007885ee  6800000040                PUSH 0x40000000
007885f3  51                        PUSH ECX
007885f4  8bcf                      MOV ECX,EDI
007885f6  f30f110424                MOVSS dword ptr [ESP],XMM0
007885fb  ffd6                      CALL ESI
007885fd  ffb5d4feffff              PUSH dword ptr [EBP + 0xfffffed4]
00788603  8d4de0                    LEA ECX,[EBP + -0x20]
00788606  e815f0c8ff                CALL 0x00417620
0078860b  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00788611  8d4d9c                    LEA ECX,[EBP + -0x64]
00788614  57                        PUSH EDI
00788615  8b30                      MOV ESI,dword ptr [EAX]
00788617  e8f48ccaff                CALL 0x00431310
0078861c  6a00                      PUSH 0x0
0078861e  51                        PUSH ECX
0078861f  c7042400000000            MOV dword ptr [ESP],0x0
00788626  8d459c                    LEA EAX,[EBP + -0x64]
00788629  6896000000                PUSH 0x96
0078862e  50                        PUSH EAX
0078862f  8bce                      MOV ECX,ESI
00788631  e84a5cf2ff                CALL 0x006ae280
00788636  8bb5d4feffff              MOV ESI,dword ptr [EBP + 0xfffffed4]
0078863c  eb5d                      JMP 0x0078869b
0078863e  56                        PUSH ESI
0078863f  8d4de0                    LEA ECX,[EBP + -0x20]
00788642  e8d9efc8ff                CALL 0x00417620
00788647  8b08                      MOV ECX,dword ptr [EAX]
00788649  e8f28ecaff                CALL 0x00431540
0078864e  84c0                      TEST AL,AL
00788650  7449                      JZ 0x0078869b
00788652  80bddffeffff00            CMP byte ptr [EBP + 0xfffffedf],0x0
00788659  7540                      JNZ 0x0078869b
0078865b  56                        PUSH ESI
0078865c  8d4de0                    LEA ECX,[EBP + -0x20]
0078865f  e8bcefc8ff                CALL 0x00417620
00788664  8b08                      MOV ECX,dword ptr [EAX]
00788666  e805eec8ff                CALL 0x00417470
0078866b  84c0                      TEST AL,AL
0078866d  752c                      JNZ 0x0078869b
0078866f  56                        PUSH ESI
00788670  8d4de0                    LEA ECX,[EBP + -0x20]
00788673  e8a8efc8ff                CALL 0x00417620
00788678  8b08                      MOV ECX,dword ptr [EAX]
0078867a  e8b1f1c8ff                CALL 0x00417830
0078867f  2500000080                AND EAX,0x80000000
00788684  33d2                      XOR EDX,EDX
00788686  0bc2                      OR EAX,EDX
00788688  7511                      JNZ 0x0078869b
0078868a  56                        PUSH ESI
0078868b  8d4de0                    LEA ECX,[EBP + -0x20]
0078868e  e88defc8ff                CALL 0x00417620
00788693  57                        PUSH EDI
00788694  8b08                      MOV ECX,dword ptr [EAX]
00788696  e8e5a8ecff                CALL 0x00652f80
0078869b  46                        INC ESI
0078869c  8d4de0                    LEA ECX,[EBP + -0x20]
0078869f  89b5d4feffff              MOV dword ptr [EBP + 0xfffffed4],ESI
007886a5  e846f0c8ff                CALL 0x004176f0
007886aa  3bf0                      CMP ESI,EAX
007886ac  0f82c4feffff              JC 0x00788576
007886b2  8d4de0                    LEA ECX,[EBP + -0x20]
007886b5  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
007886bc  e8efeec8ff                CALL 0x004175b0
007886c1  8db708150000              LEA ESI,[EDI + 0x1508]
007886c7  68c1020000                PUSH 0x2c1
007886cc  8bce                      MOV ECX,ESI
007886ce  e81d7f1a00                CALL 0x009305f0
007886d3  84c0                      TEST AL,AL
007886d5  0f846e000000              JZ 0x00788749
007886db  6a00                      PUSH 0x0
007886dd  ffb718160000              PUSH dword ptr [EDI + 0x1618]
007886e3  b9187bc500                MOV ECX,0xc57b18
007886e8  6a04                      PUSH 0x4
007886ea  e8d1822900                CALL 0x00a209c0
007886ef  84c0                      TEST AL,AL
007886f1  7548                      JNZ 0x0078873b
007886f3  6a00                      PUSH 0x0
007886f5  ffb718160000              PUSH dword ptr [EDI + 0x1618]
007886fb  b9187bc500                MOV ECX,0xc57b18
00788700  6a06                      PUSH 0x6
00788702  e8b9822900                CALL 0x00a209c0
00788707  84c0                      TEST AL,AL
00788709  7530                      JNZ 0x0078873b
0078870b  6a00                      PUSH 0x0
0078870d  ffb718160000              PUSH dword ptr [EDI + 0x1618]
00788713  b9187bc500                MOV ECX,0xc57b18
00788718  6a05                      PUSH 0x5
0078871a  e8a1822900                CALL 0x00a209c0
0078871f  84c0                      TEST AL,AL
00788721  7518                      JNZ 0x0078873b
00788723  6a00                      PUSH 0x0
00788725  ffb718160000              PUSH dword ptr [EDI + 0x1618]
0078872b  b9187bc500                MOV ECX,0xc57b18
00788730  6a07                      PUSH 0x7
00788732  e889822900                CALL 0x00a209c0
00788737  84c0                      TEST AL,AL
00788739  740e                      JZ 0x00788749
0078873b  6aff                      PUSH -0x1
0078873d  68c1020000                PUSH 0x2c1
00788742  8bce                      MOV ECX,ESI
00788744  e8577d1a00                CALL 0x009304a0
00788749  8bcf                      MOV ECX,EDI
0078874b  e8706c0100                CALL 0x0079f3c0
00788750  8b87bc130000              MOV EAX,dword ptr [EDI + 0x13bc]
00788756  85c0                      TEST EAX,EAX
00788758  7e07                      JLE 0x00788761
0078875a  48                        DEC EAX
0078875b  8987bc130000              MOV dword ptr [EDI + 0x13bc],EAX
00788761  8b8714040000              MOV EAX,dword ptr [EDI + 0x414]
00788767  85c0                      TEST EAX,EAX
00788769  7e07                      JLE 0x00788772
0078876b  48                        DEC EAX
0078876c  898714040000              MOV dword ptr [EDI + 0x414],EAX
00788772  8b8718040000              MOV EAX,dword ptr [EDI + 0x418]
00788778  85c0                      TEST EAX,EAX
0078877a  7e07                      JLE 0x00788783
0078877c  48                        DEC EAX
0078877d  898718040000              MOV dword ptr [EDI + 0x418],EAX
00788783  8b8784180000              MOV EAX,dword ptr [EDI + 0x1884]
00788789  85c0                      TEST EAX,EAX
0078878b  7e07                      JLE 0x00788794
0078878d  48                        DEC EAX
0078878e  898784180000              MOV dword ptr [EDI + 0x1884],EAX
00788794  6a00                      PUSH 0x0
00788796  6800400000                PUSH 0x4000
0078879b  8bcf                      MOV ECX,EDI
0078879d  e88eecc8ff                CALL 0x00417430
007887a2  84c0                      TEST AL,AL
007887a4  0f857e000000              JNZ 0x00788828
007887aa  8b87cc2e0000              MOV EAX,dword ptr [EDI + 0x2ecc]
007887b0  85c0                      TEST EAX,EAX
007887b2  7407                      JZ 0x007887bb
007887b4  48                        DEC EAX
007887b5  8987cc2e0000              MOV dword ptr [EDI + 0x2ecc],EAX
007887bb  0fb787c82e0000            MOVZX EAX,word ptr [EDI + 0x2ec8]
007887c2  6685c0                    TEST AX,AX
007887c5  7961                      JNS 0x00788828
007887c7  40                        INC EAX
007887c8  668987c82e0000            MOV word ptr [EDI + 0x2ec8],AX
007887cf  6685c0                    TEST AX,AX
007887d2  7554                      JNZ 0x00788828
007887d4  6897010000                PUSH 0x197
007887d9  8bcf                      MOV ECX,EDI
007887db  e8e08fe2ff                CALL 0x005b17c0
007887e0  6a04                      PUSH 0x4
007887e2  8bc8                      MOV ECX,EAX
007887e4  e837080600                CALL 0x007e9020
007887e9  6a01                      PUSH 0x1
007887eb  6a01                      PUSH 0x1
007887ed  8d8f08150000              LEA ECX,[EDI + 0x1508]
007887f3  89872c190000              MOV dword ptr [EDI + 0x192c],EAX
007887f9  6897010000                PUSH 0x197
007887fe  e8dd7a1a00                CALL 0x009302e0
00788803  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00788809  e8f241caff                CALL 0x0042ca00
0078880e  6a00                      PUSH 0x0
00788810  6a11                      PUSH 0x11
00788812  8bc8                      MOV ECX,EAX
00788814  e88775faff                CALL 0x0072fda0
00788819  50                        PUSH EAX
0078881a  8bcf                      MOV ECX,EDI
0078881c  e8af49fdff                CALL 0x0075d1d0
00788821  8bcf                      MOV ECX,EDI
00788823  e838f40300                CALL 0x007c7c60
00788828  8b87e81a0000              MOV EAX,dword ptr [EDI + 0x1ae8]
0078882e  85c0                      TEST EAX,EAX
00788830  7e07                      JLE 0x00788839
00788832  48                        DEC EAX
00788833  8987e81a0000              MOV dword ptr [EDI + 0x1ae8],EAX
00788839  8b87c0180000              MOV EAX,dword ptr [EDI + 0x18c0]
0078883f  85c0                      TEST EAX,EAX
00788841  7e19                      JLE 0x0078885c
00788843  83c0ff                    ADD EAX,-0x1
00788846  8987c0180000              MOV dword ptr [EDI + 0x18c0],EAX
0078884c  750e                      JNZ 0x0078885c
0078884e  838f7415000001            OR dword ptr [EDI + 0x1574],0x1
00788855  8bcf                      MOV ECX,EDI
00788857  e814adfdff                CALL 0x00763570
0078885c  8b87c4180000              MOV EAX,dword ptr [EDI + 0x18c4]
00788862  85c0                      TEST EAX,EAX
00788864  7e19                      JLE 0x0078887f
00788866  83c0ff                    ADD EAX,-0x1
00788869  8987c4180000              MOV dword ptr [EDI + 0x18c4],EAX
0078886f  750e                      JNZ 0x0078887f
00788871  838f7415000002            OR dword ptr [EDI + 0x1574],0x2
00788878  8bcf                      MOV ECX,EDI
0078887a  e8f1acfdff                CALL 0x00763570
0078887f  8b87c8180000              MOV EAX,dword ptr [EDI + 0x18c8]
00788885  85c0                      TEST EAX,EAX
00788887  7e19                      JLE 0x007888a2
00788889  83c0ff                    ADD EAX,-0x1
0078888c  8987c8180000              MOV dword ptr [EDI + 0x18c8],EAX
00788892  750e                      JNZ 0x007888a2
00788894  838f7415000010            OR dword ptr [EDI + 0x1574],0x10
0078889b  8bcf                      MOV ECX,EDI
0078889d  e8ceacfdff                CALL 0x00763570
007888a2  8b87cc180000              MOV EAX,dword ptr [EDI + 0x18cc]
007888a8  85c0                      TEST EAX,EAX
007888aa  7e19                      JLE 0x007888c5
007888ac  83c0ff                    ADD EAX,-0x1
007888af  8987cc180000              MOV dword ptr [EDI + 0x18cc],EAX
007888b5  750e                      JNZ 0x007888c5
007888b7  838f741500000c            OR dword ptr [EDI + 0x1574],0xc
007888be  8bcf                      MOV ECX,EDI
007888c0  e8abacfdff                CALL 0x00763570
007888c5  8b87d0180000              MOV EAX,dword ptr [EDI + 0x18d0]
007888cb  85c0                      TEST EAX,EAX
007888cd  7e1c                      JLE 0x007888eb
007888cf  83c0ff                    ADD EAX,-0x1
007888d2  8987d0180000              MOV dword ptr [EDI + 0x18d0],EAX
007888d8  7511                      JNZ 0x007888eb
007888da  818f7415000000040000      OR dword ptr [EDI + 0x1574],0x400
007888e4  8bcf                      MOV ECX,EDI
007888e6  e885acfdff                CALL 0x00763570
007888eb  8b87d4180000              MOV EAX,dword ptr [EDI + 0x18d4]
007888f1  85c0                      TEST EAX,EAX
007888f3  7e1c                      JLE 0x00788911
007888f5  83c0ff                    ADD EAX,-0x1
007888f8  8987d4180000              MOV dword ptr [EDI + 0x18d4],EAX
007888fe  7511                      JNZ 0x00788911
00788900  818f7415000000080000      OR dword ptr [EDI + 0x1574],0x800
0078890a  8bcf                      MOV ECX,EDI
0078890c  e85facfdff                CALL 0x00763570
00788911  8b87d8180000              MOV EAX,dword ptr [EDI + 0x18d8]
00788917  85c0                      TEST EAX,EAX
00788919  7e1c                      JLE 0x00788937
0078891b  83c0ff                    ADD EAX,-0x1
0078891e  8987d8180000              MOV dword ptr [EDI + 0x18d8],EAX
00788924  7511                      JNZ 0x00788937
00788926  818f7415000000080000      OR dword ptr [EDI + 0x1574],0x800
00788930  8bcf                      MOV ECX,EDI
00788932  e839acfdff                CALL 0x00763570
00788937  8b87dc180000              MOV EAX,dword ptr [EDI + 0x18dc]
0078893d  85c0                      TEST EAX,EAX
0078893f  7e07                      JLE 0x00788948
00788941  48                        DEC EAX
00788942  8987dc180000              MOV dword ptr [EDI + 0x18dc],EAX
00788948  8b87e0180000              MOV EAX,dword ptr [EDI + 0x18e0]
0078894e  85c0                      TEST EAX,EAX
00788950  7e07                      JLE 0x00788959
00788952  48                        DEC EAX
00788953  8987e0180000              MOV dword ptr [EDI + 0x18e0],EAX
00788959  8bcf                      MOV ECX,EDI
0078895b  c685e2feffff00            MOV byte ptr [EBP + 0xfffffee2],0x0
00788962  e8296b0300                CALL 0x007bf490
00788967  84c0                      TEST AL,AL
00788969  0f84c3000000              JZ 0x00788a32
0078896f  8d8f1c040000              LEA ECX,[EDI + 0x41c]
00788975  6a00                      PUSH 0x0
00788977  e82428c8ff                CALL 0x0040b1a0
0078897c  8985b8feffff              MOV dword ptr [EBP + 0xfffffeb8],EAX
00788982  85c0                      TEST EAX,EAX
00788984  0f8477000000              JZ 0x00788a01
0078898a  8a400c                    MOV AL,byte ptr [EAX + 0xc]
0078898d  33f6                      XOR ESI,ESI
0078898f  8885e2feffff              MOV byte ptr [EBP + 0xfffffee2],AL
00788995  8d87f80f0000              LEA EAX,[EDI + 0xff8]
0078899b  8bc8                      MOV ECX,EAX
0078899d  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
007889a3  e89884cbff                CALL 0x00440e40
007889a8  85c0                      TEST EAX,EAX
007889aa  7455                      JZ 0x00788a01
007889ac  8bbdccfeffff              MOV EDI,dword ptr [EBP + 0xfffffecc]
007889b2  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
007889b8  e843e8c8ff                CALL 0x00417200
007889bd  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
007889c3  50                        PUSH EAX
007889c4  8d45e8                    LEA EAX,[EBP + -0x18]
007889c7  50                        PUSH EAX
007889c8  e8437b2800                CALL 0x00a10510
007889cd  50                        PUSH EAX
007889ce  56                        PUSH ESI
007889cf  8bcf                      MOV ECX,EDI
007889d1  e82a28c8ff                CALL 0x0040b200
007889d6  8d4840                    LEA ECX,[EAX + 0x40]
007889d9  e8d2490500                CALL 0x007dd3b0
007889de  56                        PUSH ESI
007889df  8bcf                      MOV ECX,EDI
007889e1  e81a28c8ff                CALL 0x0040b200
007889e6  8a8de2feffff              MOV CL,byte ptr [EBP + 0xfffffee2]
007889ec  46                        INC ESI
007889ed  884874                    MOV byte ptr [EAX + 0x74],CL
007889f0  8bcf                      MOV ECX,EDI
007889f2  e84984cbff                CALL 0x00440e40
007889f7  3bf0                      CMP ESI,EAX
007889f9  72b7                      JC 0x007889b2
007889fb  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00788a01  80bfd817000000            CMP byte ptr [EDI + 0x17d8],0x0
00788a08  7409                      JZ 0x00788a13
00788a0a  80bde2feffff00            CMP byte ptr [EBP + 0xfffffee2],0x0
00788a11  7416                      JZ 0x00788a29
00788a13  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00788a19  e862eac7ff                CALL 0x00407480
00788a1e  8bc8                      MOV ECX,EAX
00788a20  e8bbb20800                CALL 0x00813ce0
00788a25  85c0                      TEST EAX,EAX
00788a27  7524                      JNZ 0x00788a4d
00788a29  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00788a30  eb22                      JMP 0x00788a54
00788a32  80bddafeffff00            CMP byte ptr [EBP + 0xfffffeda],0x0
00788a39  7512                      JNZ 0x00788a4d
00788a3b  8bcf                      MOV ECX,EDI
00788a3d  e8ce260200                CALL 0x007ab110
00788a42  c685dbfeffff01            MOV byte ptr [EBP + 0xfffffedb],0x1
00788a49  84c0                      TEST AL,AL
00788a4b  7507                      JNZ 0x00788a54
00788a4d  c685dbfeffff00            MOV byte ptr [EBP + 0xfffffedb],0x0
00788a54  8bcf                      MOV ECX,EDI
00788a56  e8b5260200                CALL 0x007ab110
00788a5b  84c0                      TEST AL,AL
00788a5d  7512                      JNZ 0x00788a71
00788a5f  8bcf                      MOV ECX,EDI
00788a61  e82a6a0300                CALL 0x007bf490
00788a66  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
00788a6d  84c0                      TEST AL,AL
00788a6f  7407                      JZ 0x00788a78
00788a71  c685dffeffff01            MOV byte ptr [EBP + 0xfffffedf],0x1
00788a78  8a8770150000              MOV AL,byte ptr [EDI + 0x1570]
00788a7e  8bcf                      MOV ECX,EDI
00788a80  6a01                      PUSH 0x1
00788a82  6871020000                PUSH 0x271
00788a87  c685e3feffff01            MOV byte ptr [EBP + 0xfffffee3],0x1
00788a8e  8885dafeffff              MOV byte ptr [EBP + 0xfffffeda],AL
00788a94  e8274ffdff                CALL 0x0075d9c0
00788a99  84c0                      TEST AL,AL
00788a9b  7456                      JZ 0x00788af3
00788a9d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00788aa3  c685dffeffff01            MOV byte ptr [EBP + 0xfffffedf],0x1
00788aaa  c685dafeffff00            MOV byte ptr [EBP + 0xfffffeda],0x0
00788ab1  e82a80c9ff                CALL 0x00420ae0
00788ab6  8bc8                      MOV ECX,EAX
00788ab8  e873630a00                CALL 0x0082ee30
00788abd  84c0                      TEST AL,AL
00788abf  751d                      JNZ 0x00788ade
00788ac1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00788ac7  e88400caff                CALL 0x00428b50
00788acc  8bc8                      MOV ECX,EAX
00788ace  e85d630a00                CALL 0x0082ee30
00788ad3  c685e3feffff01            MOV byte ptr [EBP + 0xfffffee3],0x1
00788ada  84c0                      TEST AL,AL
00788adc  7407                      JZ 0x00788ae5
00788ade  c685e3feffff00            MOV byte ptr [EBP + 0xfffffee3],0x0
00788ae5  c685e2feffff00            MOV byte ptr [EBP + 0xfffffee2],0x0
00788aec  c6879813000000            MOV byte ptr [EDI + 0x1398],0x0
00788af3  6a00                      PUSH 0x0
00788af5  6800400000                PUSH 0x4000
00788afa  8bcf                      MOV ECX,EDI
00788afc  e82fe9c8ff                CALL 0x00417430
00788b01  84c0                      TEST AL,AL
00788b03  0f85c8060000              JNZ 0x007891d1
00788b09  3885dffeffff              CMP byte ptr [EBP + 0xfffffedf],AL
00788b0f  0f84bc060000              JZ 0x007891d1
00788b15  3885dbfeffff              CMP byte ptr [EBP + 0xfffffedb],AL
00788b1b  7407                      JZ 0x00788b24
00788b1d  8bcf                      MOV ECX,EDI
00788b1f  e8ac56fdff                CALL 0x0075e1d0
00788b24  80bde2feffff00            CMP byte ptr [EBP + 0xfffffee2],0x0
00788b2b  b844e0b100                MOV EAX,0xb1e044
00788b30  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00788b38  be84b0b600                MOV ESI,0xb6b084
00788b3d  0f45c6                    CMOVNZ EAX,ESI
00788b40  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00788b48  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00788b4e  8bcf                      MOV ECX,EDI
00788b50  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
00788b56  50                        PUSH EAX
00788b57  e8a40dffff                CALL 0x00779900
00788b5c  6840b6c700                PUSH 0xc7b640
00788b61  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00788b67  e8947a2800                CALL 0x00a10600
00788b6c  84c0                      TEST AL,AL
00788b6e  0f847e020000              JZ 0x00788df2
00788b74  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00788b78  7546                      JNZ 0x00788bc0
00788b7a  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
00788b81  753d                      JNZ 0x00788bc0
00788b83  80bde3feffff00            CMP byte ptr [EBP + 0xfffffee3],0x0
00788b8a  7434                      JZ 0x00788bc0
00788b8c  80bddafeffff00            CMP byte ptr [EBP + 0xfffffeda],0x0
00788b93  741b                      JZ 0x00788bb0
00788b95  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
00788b9c  7412                      JZ 0x00788bb0
00788b9e  6a00                      PUSH 0x0
00788ba0  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00788ba6  8d4f48                    LEA ECX,[EDI + 0x48]
00788ba9  e8d217c8ff                CALL 0x0040a380
00788bae  eb10                      JMP 0x00788bc0
00788bb0  6a00                      PUSH 0x0
00788bb2  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00788bb8  8d4f48                    LEA ECX,[EDI + 0x48]
00788bbb  e8201bc8ff                CALL 0x0040a6e0
00788bc0  8d8738120000              LEA EAX,[EDI + 0x1238]
00788bc6  ba0f000000                MOV EDX,0xf
00788bcb  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
00788bd1  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
00788bd7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00788be0  8b40f4                    MOV EAX,dword ptr [EAX + -0xc]
00788be3  85c0                      TEST EAX,EAX
00788be5  0f88e4010000              JS 0x00788dcf
00788beb  8b8dd4feffff              MOV ECX,dword ptr [EBP + 0xfffffed4]
00788bf1  803900                    CMP byte ptr [ECX],0x0
00788bf4  0f84d5010000              JZ 0x00788dcf
00788bfa  8d8f20120000              LEA ECX,[EDI + 0x1220]
00788c00  50                        PUSH EAX
00788c01  e80a31e4ff                CALL 0x005cbd10
00788c06  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00788c0a  8bf0                      MOV ESI,EAX
00788c0c  0f84b7010000              JZ 0x00788dc9
00788c12  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
00788c19  0f85aa010000              JNZ 0x00788dc9
00788c1f  8b8e14010000              MOV ECX,dword ptr [ESI + 0x114]
00788c25  85c9                      TEST ECX,ECX
00788c27  7429                      JZ 0x00788c52
00788c29  e852a0f9ff                CALL 0x00722c80
00788c2e  84c0                      TEST AL,AL
00788c30  7420                      JZ 0x00788c52
00788c32  8b8614010000              MOV EAX,dword ptr [ESI + 0x114]
00788c38  8378044c                  CMP dword ptr [EAX + 0x4],0x4c
00788c3c  7514                      JNZ 0x00788c52
00788c3e  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
00788c46  f30f58c0                  ADDSS XMM0,XMM0
00788c4a  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00788c52  80be1c01000000            CMP byte ptr [ESI + 0x11c],0x0
00788c59  0f856a010000              JNZ 0x00788dc9
00788c5f  80bde2feffff00            CMP byte ptr [EBP + 0xfffffee2],0x0
00788c66  7427                      JZ 0x00788c8f
00788c68  8b8e14010000              MOV ECX,dword ptr [ESI + 0x114]
00788c6e  e80da0f9ff                CALL 0x00722c80
00788c73  84c0                      TEST AL,AL
00788c75  740c                      JZ 0x00788c83
00788c77  8b8614010000              MOV EAX,dword ptr [ESI + 0x114]
00788c7d  8378045a                  CMP dword ptr [EAX + 0x4],0x5a
00788c81  740c                      JZ 0x00788c8f
00788c83  8bce                      MOV ECX,ESI
00788c85  e8861cc8ff                CALL 0x0040a910
00788c8a  e93a010000                JMP 0x00788dc9
00788c8f  8b8614010000              MOV EAX,dword ptr [ESI + 0x114]
00788c95  833803                    CMP dword ptr [EAX],0x3
00788c98  751c                      JNZ 0x00788cb6
00788c9a  81780471020000            CMP dword ptr [EAX + 0x4],0x271
00788ca1  7513                      JNZ 0x00788cb6
00788ca3  6a00                      PUSH 0x0
00788ca5  68401fb600                PUSH 0xb61f40
00788caa  8bce                      MOV ECX,ESI
00788cac  e82f1ac8ff                CALL 0x0040a6e0
00788cb1  e913010000                JMP 0x00788dc9
00788cb6  80bddafeffff00            CMP byte ptr [EBP + 0xfffffeda],0x0
00788cbd  7414                      JZ 0x00788cd3
00788cbf  6a00                      PUSH 0x0
00788cc1  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00788cc7  8bce                      MOV ECX,ESI
00788cc9  e8b216c8ff                CALL 0x0040a380
00788cce  e96b000000                JMP 0x00788d3e
00788cd3  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00788cd9  8d4dd8                    LEA ECX,[EBP + -0x28]
00788cdc  e85f36c8ff                CALL 0x0040c340
00788ce1  68f4afb600                PUSH 0xb6aff4
00788ce6  8bd0                      MOV EDX,EAX
00788ce8  c745fc0a000000            MOV dword ptr [EBP + -0x4],0xa
00788cef  8d4dac                    LEA ECX,[EBP + -0x54]
00788cf2  e8993ae8ff                CALL 0x0060c790
00788cf7  83c404                    ADD ESP,0x4
00788cfa  8d4dd8                    LEA ECX,[EBP + -0x28]
00788cfd  c645fc0c                  MOV byte ptr [EBP + -0x4],0xc
00788d01  e81a32c8ff                CALL 0x0040bf20
00788d06  8d45ac                    LEA EAX,[EBP + -0x54]
00788d09  8bce                      MOV ECX,ESI
00788d0b  50                        PUSH EAX
00788d0c  e89f2fc8ff                CALL 0x0040bcb0
00788d11  8bce                      MOV ECX,ESI
00788d13  6a00                      PUSH 0x0
00788d15  85c0                      TEST EAX,EAX
00788d17  740b                      JZ 0x00788d24
00788d19  8d45ac                    LEA EAX,[EBP + -0x54]
00788d1c  50                        PUSH EAX
00788d1d  e83e16c8ff                CALL 0x0040a360
00788d22  eb0b                      JMP 0x00788d2f
00788d24  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00788d2a  e8b119c8ff                CALL 0x0040a6e0
00788d2f  8d4dac                    LEA ECX,[EBP + -0x54]
00788d32  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00788d39  e8e231c8ff                CALL 0x0040bf20
00788d3e  80be1e01000000            CMP byte ptr [ESI + 0x11e],0x0
00788d45  0f847e000000              JZ 0x00788dc9
00788d4b  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00788d51  8d4dd8                    LEA ECX,[EBP + -0x28]
00788d54  e8e735c8ff                CALL 0x0040c340
00788d59  80bddafeffff00            CMP byte ptr [EBP + 0xfffffeda],0x0
00788d60  7429                      JZ 0x00788d8b
00788d62  686caab600                PUSH 0xb6aa6c
00788d67  8bd0                      MOV EDX,EAX
00788d69  c745fc0d000000            MOV dword ptr [EBP + -0x4],0xd
00788d70  8d4dac                    LEA ECX,[EBP + -0x54]
00788d73  e8183ae8ff                CALL 0x0060c790
00788d78  83c404                    ADD ESP,0x4
00788d7b  6a00                      PUSH 0x0
00788d7d  50                        PUSH EAX
00788d7e  8bce                      MOV ECX,ESI
00788d80  c645fc0e                  MOV byte ptr [EBP + -0x4],0xe
00788d84  e8971bc8ff                CALL 0x0040a920
00788d89  eb27                      JMP 0x00788db2
00788d8b  686caab600                PUSH 0xb6aa6c
00788d90  8bd0                      MOV EDX,EAX
00788d92  c745fc0f000000            MOV dword ptr [EBP + -0x4],0xf
00788d99  8d4dac                    LEA ECX,[EBP + -0x54]
00788d9c  e8ef39e8ff                CALL 0x0060c790
00788da1  83c404                    ADD ESP,0x4
00788da4  6a00                      PUSH 0x0
00788da6  50                        PUSH EAX
00788da7  8bce                      MOV ECX,ESI
00788da9  c645fc10                  MOV byte ptr [EBP + -0x4],0x10
00788dad  e8de18c8ff                CALL 0x0040a690
00788db2  8d4dac                    LEA ECX,[EBP + -0x54]
00788db5  e86631c8ff                CALL 0x0040bf20
00788dba  8d4dd8                    LEA ECX,[EBP + -0x28]
00788dbd  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00788dc4  e85731c8ff                CALL 0x0040bf20
00788dc9  8b95dcfeffff              MOV EDX,dword ptr [EBP + 0xfffffedc]
00788dcf  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
00788dd5  83c010                    ADD EAX,0x10
00788dd8  83ea01                    SUB EDX,0x1
00788ddb  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
00788de1  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
00788de7  0f85f3fdffff              JNZ 0x00788be0
00788ded  e917020000                JMP 0x00789009
00788df2  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00788dfa  e81147c9ff                CALL 0x0041d510
00788dff  80bde2feffff00            CMP byte ptr [EBP + 0xfffffee2],0x0
00788e06  743d                      JZ 0x00788e45
00788e08  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00788e10  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00788e18  e8f346c9ff                CALL 0x0041d510
00788e1d  f30f108dccfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffecc]
00788e25  0f2fc8                    COMISS XMM1,XMM0
00788e28  7614                      JBE 0x00788e3e
00788e2a  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00788e32  beacb0b600                MOV ESI,0xb6b0ac
00788e37  b89cb0b600                MOV EAX,0xb6b09c
00788e3c  eb4f                      JMP 0x00788e8d
00788e3e  b834b0b600                MOV EAX,0xb6b034
00788e43  eb40                      JMP 0x00788e85
00788e45  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00788e4d  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00788e55  e8b646c9ff                CALL 0x0041d510
00788e5a  f30f108dccfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffecc]
00788e62  0f2fc8                    COMISS XMM1,XMM0
00788e65  7614                      JBE 0x00788e7b
00788e67  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00788e6f  bec0dab100                MOV ESI,0xb1dac0
00788e74  b888dab100                MOV EAX,0xb1da88
00788e79  eb12                      JMP 0x00788e8d
00788e7b  be44e0b100                MOV ESI,0xb1e044
00788e80  b820e0b100                MOV EAX,0xb1e020
00788e85  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00788e8d  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00788e94  0f46f0                    CMOVBE ESI,EAX
00788e97  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00788e9b  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
00788ea1  751d                      JNZ 0x00788ec0
00788ea3  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
00788eaa  7514                      JNZ 0x00788ec0
00788eac  80bde3feffff00            CMP byte ptr [EBP + 0xfffffee3],0x0
00788eb3  740b                      JZ 0x00788ec0
00788eb5  6a00                      PUSH 0x0
00788eb7  56                        PUSH ESI
00788eb8  8d4f48                    LEA ECX,[EDI + 0x48]
00788ebb  e8c014c8ff                CALL 0x0040a380
00788ec0  8d8738120000              LEA EAX,[EDI + 0x1238]
00788ec6  c785e4feffff0f000000      MOV dword ptr [EBP + 0xfffffee4],0xf
00788ed0  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00788ed6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00788ee0  8b50f4                    MOV EDX,dword ptr [EAX + -0xc]
00788ee3  85d2                      TEST EDX,EDX
00788ee5  0f8808010000              JS 0x00788ff3
00788eeb  803800                    CMP byte ptr [EAX],0x0
00788eee  0f84ff000000              JZ 0x00788ff3
00788ef4  8d8f20120000              LEA ECX,[EDI + 0x1220]
00788efa  52                        PUSH EDX
00788efb  e8102ee4ff                CALL 0x005cbd10
00788f00  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00788f04  8bf0                      MOV ESI,EAX
00788f06  0f84e1000000              JZ 0x00788fed
00788f0c  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
00788f13  0f85d4000000              JNZ 0x00788fed
00788f19  8b8e14010000              MOV ECX,dword ptr [ESI + 0x114]
00788f1f  85c9                      TEST ECX,ECX
00788f21  7429                      JZ 0x00788f4c
00788f23  e8589df9ff                CALL 0x00722c80
00788f28  84c0                      TEST AL,AL
00788f2a  7420                      JZ 0x00788f4c
00788f2c  8b8614010000              MOV EAX,dword ptr [ESI + 0x114]
00788f32  8378044c                  CMP dword ptr [EAX + 0x4],0x4c
00788f36  7514                      JNZ 0x00788f4c
00788f38  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
00788f40  f30f58c0                  ADDSS XMM0,XMM0
00788f44  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00788f4c  80bde2feffff00            CMP byte ptr [EBP + 0xfffffee2],0x0
00788f53  7427                      JZ 0x00788f7c
00788f55  8b8e14010000              MOV ECX,dword ptr [ESI + 0x114]
00788f5b  e8209df9ff                CALL 0x00722c80
00788f60  84c0                      TEST AL,AL
00788f62  740c                      JZ 0x00788f70
00788f64  8b8614010000              MOV EAX,dword ptr [ESI + 0x114]
00788f6a  8378045a                  CMP dword ptr [EAX + 0x4],0x5a
00788f6e  740c                      JZ 0x00788f7c
00788f70  8bce                      MOV ECX,ESI
00788f72  e89919c8ff                CALL 0x0040a910
00788f77  e971000000                JMP 0x00788fed
00788f7c  80be1c01000000            CMP byte ptr [ESI + 0x11c],0x0
00788f83  0f8564000000              JNZ 0x00788fed
00788f89  6a00                      PUSH 0x0
00788f8b  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
00788f91  8bce                      MOV ECX,ESI
00788f93  e8e813c8ff                CALL 0x0040a380
00788f98  80be1e01000000            CMP byte ptr [ESI + 0x11e],0x0
00788f9f  744c                      JZ 0x00788fed
00788fa1  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
00788fa7  8d4dd8                    LEA ECX,[EBP + -0x28]
00788faa  e89133c8ff                CALL 0x0040c340
00788faf  686caab600                PUSH 0xb6aa6c
00788fb4  8bd0                      MOV EDX,EAX
00788fb6  c745fc11000000            MOV dword ptr [EBP + -0x4],0x11
00788fbd  8d4dac                    LEA ECX,[EBP + -0x54]
00788fc0  e8cb37e8ff                CALL 0x0060c790
00788fc5  83c404                    ADD ESP,0x4
00788fc8  6a00                      PUSH 0x0
00788fca  50                        PUSH EAX
00788fcb  8bce                      MOV ECX,ESI
00788fcd  c645fc12                  MOV byte ptr [EBP + -0x4],0x12
00788fd1  e84a19c8ff                CALL 0x0040a920
00788fd6  8d4dac                    LEA ECX,[EBP + -0x54]
00788fd9  e8422fc8ff                CALL 0x0040bf20
00788fde  8d4dd8                    LEA ECX,[EBP + -0x28]
00788fe1  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00788fe8  e8332fc8ff                CALL 0x0040bf20
00788fed  8b85bcfeffff              MOV EAX,dword ptr [EBP + 0xfffffebc]
00788ff3  83c010                    ADD EAX,0x10
00788ff6  83ade4feffff01            SUB dword ptr [EBP + 0xfffffee4],0x1
00788ffd  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00789003  0f85d7feffff              JNZ 0x00788ee0
00789009  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00789011  8d4f48                    LEA ECX,[EDI + 0x48]
00789014  68eca4b100                PUSH 0xb1a4ec
00789019  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00789021  e8aa14c8ff                CALL 0x0040a4d0
00789026  84c0                      TEST AL,AL
00789028  0f8426010000              JZ 0x00789154
0078902e  8d8f60030000              LEA ECX,[EDI + 0x360]
00789034  e8676e2800                CALL 0x00a0fea0
00789039  f30f1015a4a6ba00          MOVSS XMM2,dword ptr [0x00baa6a4]
00789041  d99de4feffff              FSTP dword ptr [EBP + 0xfffffee4]
00789047  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
0078904f  0f2fd0                    COMISS XMM2,XMM0
00789052  762f                      JBE 0x00789083
00789054  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
0078905c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00789064  51                        PUSH ECX
00789065  b101                      MOV CL,0x1
00789067  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078906e  e8cdc52800                CALL 0x00a15640
00789073  0f28c8                    MOVAPS XMM1,XMM0
00789076  83c404                    ADD ESP,0x4
00789079  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00789081  eb08                      JMP 0x0078908b
00789083  f30f108dc4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec4]
0078908b  f30f1025a4a7ba00          MOVSS XMM4,dword ptr [0x00baa7a4]
00789093  0f2fc4                    COMISS XMM0,XMM4
00789096  7628                      JBE 0x007890c0
00789098  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
007890a0  0f28cc                    MOVAPS XMM1,XMM4
007890a3  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
007890ab  51                        PUSH ECX
007890ac  b101                      MOV CL,0x1
007890ae  c7042400000040            MOV dword ptr [ESP],0x40000000
007890b5  e886c52800                CALL 0x00a15640
007890ba  83c404                    ADD ESP,0x4
007890bd  0f28c8                    MOVAPS XMM1,XMM0
007890c0  83bf5c16000000            CMP dword ptr [EDI + 0x165c],0x0
007890c7  0f8e8f000000              JLE 0x0078915c
007890cd  51                        PUSH ECX
007890ce  8d8760030000              LEA EAX,[EDI + 0x360]
007890d4  c704240000803f            MOV dword ptr [ESP],0x3f800000
007890db  50                        PUSH EAX
007890dc  8d8f54160000              LEA ECX,[EDI + 0x1654]
007890e2  e899702800                CALL 0x00a10180
007890e7  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
007890ef  b101                      MOV CL,0x1
007890f1  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
007890f9  f30f100d84adba00          MOVSS XMM1,dword ptr [0x00baad84]
00789101  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
00789107  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0078910f  e82cc52800                CALL 0x00a15640
00789114  83c404                    ADD ESP,0x4
00789117  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
0078911f  8d8f54160000              LEA ECX,[EDI + 0x1654]
00789125  e8766d2800                CALL 0x00a0fea0
0078912a  d88dccfeffff              FMUL dword ptr [EBP + 0xfffffecc]
00789130  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00789138  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00789140  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
00789146  f30f5f85ccfeffff          MAXSS XMM0,dword ptr [EBP + 0xfffffecc]
0078914e  f30f5dc8                  MINSS XMM1,XMM0
00789152  eb08                      JMP 0x0078915c
00789154  f30f108dc4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec4]
0078915c  f30f598db0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffeb0]
00789164  51                        PUSH ECX
00789165  8d4f48                    LEA ECX,[EDI + 0x48]
00789168  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
00789170  f30f110c24                MOVSS dword ptr [ESP],XMM1
00789175  e8d67ccbff                CALL 0x00440e50
0078917a  b90f000000                MOV ECX,0xf
0078917f  8db738120000              LEA ESI,[EDI + 0x1238]
00789185  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
0078918b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00789190  8b46f4                    MOV EAX,dword ptr [ESI + -0xc]
00789193  85c0                      TEST EAX,EAX
00789195  782c                      JS 0x007891c3
00789197  803e00                    CMP byte ptr [ESI],0x0
0078919a  7427                      JZ 0x007891c3
0078919c  8d8f20120000              LEA ECX,[EDI + 0x1220]
007891a2  50                        PUSH EAX
007891a3  e8682be4ff                CALL 0x005cbd10
007891a8  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
007891b0  51                        PUSH ECX
007891b1  8bc8                      MOV ECX,EAX
007891b3  f30f110424                MOVSS dword ptr [ESP],XMM0
007891b8  e8937ccbff                CALL 0x00440e50
007891bd  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
007891c3  83c610                    ADD ESI,0x10
007891c6  83e901                    SUB ECX,0x1
007891c9  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
007891cf  75bf                      JNZ 0x00789190
007891d1  8d8f9c130000              LEA ECX,[EDI + 0x139c]
007891d7  e8f430c8ff                CALL 0x0040c2d0
007891dc  84c0                      TEST AL,AL
007891de  7529                      JNZ 0x00789209
007891e0  8bcf                      MOV ECX,EDI
007891e2  e8291f0200                CALL 0x007ab110
007891e7  84c0                      TEST AL,AL
007891e9  741e                      JZ 0x00789209
007891eb  8d8f9c130000              LEA ECX,[EDI + 0x139c]
007891f1  e8ca3ec8ff                CALL 0x0040d0c0
007891f6  50                        PUSH EAX
007891f7  8bcf                      MOV ECX,EDI
007891f9  e8222c0200                CALL 0x007abe20
007891fe  8d8f9c130000              LEA ECX,[EDI + 0x139c]
00789204  e8e730c8ff                CALL 0x0040c2f0
00789209  8db708150000              LEA ESI,[EDI + 0x1508]
0078920f  6a4d                      PUSH 0x4d
00789211  8bce                      MOV ECX,ESI
00789213  89b5b8feffff              MOV dword ptr [EBP + 0xfffffeb8],ESI
00789219  e8d2731a00                CALL 0x009305f0
0078921e  84c0                      TEST AL,AL
00789220  7537                      JNZ 0x00789259
00789222  6a5d                      PUSH 0x5d
00789224  8bce                      MOV ECX,ESI
00789226  e8c5731a00                CALL 0x009305f0
0078922b  84c0                      TEST AL,AL
0078922d  752a                      JNZ 0x00789259
0078922f  682b010000                PUSH 0x12b
00789234  8bce                      MOV ECX,ESI
00789236  e8b5731a00                CALL 0x009305f0
0078923b  84c0                      TEST AL,AL
0078923d  0f84c1000000              JZ 0x00789304
00789243  682b010000                PUSH 0x12b
00789248  8bce                      MOV ECX,ESI
0078924a  e831771a00                CALL 0x00930980
0078924f  83780800                  CMP dword ptr [EAX + 0x8],0x0
00789253  0f84ab000000              JZ 0x00789304
00789259  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078925f  e81ce2c7ff                CALL 0x00407480
00789264  8bf8                      MOV EDI,EAX
00789266  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
0078926c  8db03c030000              LEA ESI,[EAX + 0x33c]
00789272  8d8860030000              LEA ECX,[EAX + 0x360]
00789278  8d45e8                    LEA EAX,[EBP + -0x18]
0078927b  50                        PUSH EAX
0078927c  e8af6d2800                CALL 0x00a10030
00789281  8d8dccfeffff              LEA ECX,[EBP + 0xfffffecc]
00789287  c785ccfeffff00002042      MOV dword ptr [EBP + 0xfffffecc],0x42200000
00789291  51                        PUSH ECX
00789292  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
00789298  51                        PUSH ECX
00789299  8bc8                      MOV ECX,EAX
0078929b  e840722800                CALL 0x00a104e0
007892a0  50                        PUSH EAX
007892a1  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
007892a7  8bce                      MOV ECX,ESI
007892a9  50                        PUSH EAX
007892aa  e871712800                CALL 0x00a10420
007892af  50                        PUSH EAX
007892b0  8bcf                      MOV ECX,EDI
007892b2  e8d9990800                CALL 0x00812c90
007892b7  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
007892bd  85c0                      TEST EAX,EAX
007892bf  7837                      JS 0x007892f8
007892c1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007892c7  e8b4e1c7ff                CALL 0x00407480
007892cc  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
007892d2  8d4d9c                    LEA ECX,[EBP + -0x64]
007892d5  57                        PUSH EDI
007892d6  8bf0                      MOV ESI,EAX
007892d8  e83380caff                CALL 0x00431310
007892dd  8d459c                    LEA EAX,[EBP + -0x64]
007892e0  8bce                      MOV ECX,ESI
007892e2  50                        PUSH EAX
007892e3  6a01                      PUSH 0x1
007892e5  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
007892eb  e840a80800                CALL 0x00813b30
007892f0  8db708150000              LEA ESI,[EDI + 0x1508]
007892f6  eb0c                      JMP 0x00789304
007892f8  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
007892fe  8bb5b8feffff              MOV ESI,dword ptr [EBP + 0xfffffeb8]
00789304  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0078930a  2580000000                AND EAX,0x80
0078930f  83c800                    OR EAX,0x0
00789312  741d                      JZ 0x00789331
00789314  f30f1087ac030000          MOVSS XMM0,dword ptr [EDI + 0x3ac]
0078931c  e83f7fcaff                CALL 0x00431260
00789321  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
00789329  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00789331  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789337  e844e1c7ff                CALL 0x00407480
0078933c  8bc8                      MOV ECX,EAX
0078933e  e8dd5bcbff                CALL 0x0043ef20
00789343  83f837                    CMP EAX,0x37
00789346  0f85db000000              JNZ 0x00789427
0078934c  f30f100514abba00          MOVSS XMM0,dword ptr [0x00baab14]
00789354  0f2f8740030000            COMISS XMM0,dword ptr [EDI + 0x340]
0078935b  0f86c6000000              JBE 0x00789427
00789361  6851020000                PUSH 0x251
00789366  8bce                      MOV ECX,ESI
00789368  c787400300000000a043      MOV dword ptr [EDI + 0x340],0x43a00000
00789372  e879721a00                CALL 0x009305f0
00789377  84c0                      TEST AL,AL
00789379  743c                      JZ 0x007893b7
0078937b  6aff                      PUSH -0x1
0078937d  6851020000                PUSH 0x251
00789382  8bce                      MOV ECX,ESI
00789384  e817711a00                CALL 0x009304a0
00789389  8bcf                      MOV ECX,EDI
0078938b  c787941e0000ffffffff      MOV dword ptr [EDI + 0x1e94],0xffffffff
00789395  e8a6ee0300                CALL 0x007c8240
0078939a  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
007893a2  8d4de8                    LEA ECX,[EBP + -0x18]
007893a5  6a00                      PUSH 0x0
007893a7  0f57c9                    XORPS XMM1,XMM1
007893aa  e8e16a2800                CALL 0x00a0fe90
007893af  50                        PUSH EAX
007893b0  8bcf                      MOV ECX,EDI
007893b2  e89980caff                CALL 0x00431450
007893b7  6882000000                PUSH 0x82
007893bc  8bce                      MOV ECX,ESI
007893be  e82d721a00                CALL 0x009305f0
007893c3  84c0                      TEST AL,AL
007893c5  7510                      JNZ 0x007893d7
007893c7  68b5000000                PUSH 0xb5
007893cc  8bce                      MOV ECX,ESI
007893ce  e81d721a00                CALL 0x009305f0
007893d3  84c0                      TEST AL,AL
007893d5  7450                      JZ 0x00789427
007893d7  6aff                      PUSH -0x1
007893d9  6882000000                PUSH 0x82
007893de  8bce                      MOV ECX,ESI
007893e0  c7878818000000000000      MOV dword ptr [EDI + 0x1888],0x0
007893ea  e8b1701a00                CALL 0x009304a0
007893ef  6aff                      PUSH -0x1
007893f1  68b5000000                PUSH 0xb5
007893f6  8bce                      MOV ECX,ESI
007893f8  e8a3701a00                CALL 0x009304a0
007893fd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789403  6a08                      PUSH 0x8
00789405  e866a2f7ff                CALL 0x00703670
0078940a  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
00789412  8d4de8                    LEA ECX,[EBP + -0x18]
00789415  6a00                      PUSH 0x0
00789417  0f57c9                    XORPS XMM1,XMM1
0078941a  e8716a2800                CALL 0x00a0fe90
0078941f  50                        PUSH EAX
00789420  8bcf                      MOV ECX,EDI
00789422  e82980caff                CALL 0x00431450
00789427  6840b6c700                PUSH 0xc7b640
0078942c  8d8f54160000              LEA ECX,[EDI + 0x1654]
00789432  e8f9712800                CALL 0x00a10630
00789437  84c0                      TEST AL,AL
00789439  0f849b000000              JZ 0x007894da
0078943f  8d8f60030000              LEA ECX,[EDI + 0x360]
00789445  c785b8feffff00000040      MOV dword ptr [EBP + 0xfffffeb8],0x40000000
0078944f  e84c6a2800                CALL 0x00a0fea0
00789454  8d95ccfeffff              LEA EDX,[EBP + 0xfffffecc]
0078945a  c785e4feffff0000803f      MOV dword ptr [EBP + 0xfffffee4],0x3f800000
00789464  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0078946a  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
00789470  e8fb36c9ff                CALL 0x0041cb70
00789475  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
0078947b  8bc8                      MOV ECX,EAX
0078947d  e8fe32c8ff                CALL 0x0040c780
00789482  8d8f54160000              LEA ECX,[EDI + 0x1654]
00789488  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0078948c  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
00789492  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0078949a  50                        PUSH EAX
0078949b  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
007894a3  e898702800                CALL 0x00a10540
007894a8  8d8f54160000              LEA ECX,[EDI + 0x1654]
007894ae  e81d6a2800                CALL 0x00a0fed0
007894b3  f30f10056ca0ba00          MOVSS XMM0,dword ptr [0x00baa06c]
007894bb  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
007894c1  0f2f85ccfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffecc]
007894c8  7610                      JBE 0x007894da
007894ca  6840b6c700                PUSH 0xc7b640
007894cf  8d8f54160000              LEA ECX,[EDI + 0x1654]
007894d5  e8d63e0500                CALL 0x007dd3b0
007894da  8bcf                      MOV ECX,EDI
007894dc  e8bf050300                CALL 0x007b9aa0
007894e1  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
007894e7  84c0                      TEST AL,AL
007894e9  0f84c60b0000              JZ 0x0078a0b5
007894ef  8bcf                      MOV ECX,EDI
007894f1  e8fa93ffff                CALL 0x007828f0
007894f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007894fc  8bf0                      MOV ESI,EAX
007894fe  89b5c4feffff              MOV dword ptr [EBP + 0xfffffec4],ESI
00789504  e8d775c9ff                CALL 0x00420ae0
00789509  8bc8                      MOV ECX,EAX
0078950b  e820590a00                CALL 0x0082ee30
00789510  84c0                      TEST AL,AL
00789512  0f852b020000              JNZ 0x00789743
00789518  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078951e  e82df6c9ff                CALL 0x00428b50
00789523  8bc8                      MOV ECX,EAX
00789525  e806590a00                CALL 0x0082ee30
0078952a  84c0                      TEST AL,AL
0078952c  0f8511020000              JNZ 0x00789743
00789532  8d4f48                    LEA ECX,[EDI + 0x48]
00789535  8885dafeffff              MOV byte ptr [EBP + 0xfffffeda],AL
0078953b  e8204fc9ff                CALL 0x0041e460
00789540  8bc8                      MOV ECX,EAX
00789542  e839dec7ff                CALL 0x00407380
00789547  8a08                      MOV CL,byte ptr [EAX]
00789549  3a0e                      CMP CL,byte ptr [ESI]
0078954b  751a                      JNZ 0x00789567
0078954d  84c9                      TEST CL,CL
0078954f  7412                      JZ 0x00789563
00789551  8a4801                    MOV CL,byte ptr [EAX + 0x1]
00789554  3a4e01                    CMP CL,byte ptr [ESI + 0x1]
00789557  750e                      JNZ 0x00789567
00789559  83c002                    ADD EAX,0x2
0078955c  83c602                    ADD ESI,0x2
0078955f  84c9                      TEST CL,CL
00789561  75e4                      JNZ 0x00789547
00789563  33c0                      XOR EAX,EAX
00789565  eb05                      JMP 0x0078956c
00789567  1bc0                      SBB EAX,EAX
00789569  83c801                    OR EAX,0x1
0078956c  85c0                      TEST EAX,EAX
0078956e  0f84d6010000              JZ 0x0078974a
00789574  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
0078957a  8bcf                      MOV ECX,EDI
0078957c  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00789583  e898280200                CALL 0x007abe20
00789588  6a15                      PUSH 0x15
0078958a  8bcf                      MOV ECX,EDI
0078958c  e84f210400                CALL 0x007cb6e0
00789591  85c0                      TEST EAX,EAX
00789593  7e1c                      JLE 0x007895b1
00789595  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078959b  e810dfc7ff                CALL 0x004074b0
007895a0  2503000080                AND EAX,0x80000003
007895a5  7905                      JNS 0x007895ac
007895a7  48                        DEC EAX
007895a8  83c8fc                    OR EAX,0xfffffffc
007895ab  40                        INC EAX
007895ac  83f803                    CMP EAX,0x3
007895af  742a                      JZ 0x007895db
007895b1  6a15                      PUSH 0x15
007895b3  8bcf                      MOV ECX,EDI
007895b5  e826210400                CALL 0x007cb6e0
007895ba  83f801                    CMP EAX,0x1
007895bd  7e2d                      JLE 0x007895ec
007895bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007895c5  e8e6dec7ff                CALL 0x004074b0
007895ca  2503000080                AND EAX,0x80000003
007895cf  7905                      JNS 0x007895d6
007895d1  48                        DEC EAX
007895d2  83c8fc                    OR EAX,0xfffffffc
007895d5  40                        INC EAX
007895d6  83f802                    CMP EAX,0x2
007895d9  7511                      JNZ 0x007895ec
007895db  6a01                      PUSH 0x1
007895dd  6a01                      PUSH 0x1
007895df  8d8f08150000              LEA ECX,[EDI + 0x1508]
007895e5  6a17                      PUSH 0x17
007895e7  e8446d1a00                CALL 0x00930330
007895ec  6840b6c700                PUSH 0xc7b640
007895f1  8bcf                      MOV ECX,EDI
007895f3  e8788e0400                CALL 0x007d2470
007895f8  68046bb600                PUSH 0xb66b04
007895fd  8d4f48                    LEA ECX,[EDI + 0x48]
00789600  e82b1ec8ff                CALL 0x0040b430
00789605  85c0                      TEST EAX,EAX
00789607  7404                      JZ 0x0078960d
00789609  c6407401                  MOV byte ptr [EAX + 0x74],0x1
0078960d  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00789614  0f85d7000000              JNZ 0x007896f1
0078961a  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0078961e  0f85cd000000              JNZ 0x007896f1
00789624  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
0078962b  0f85c0000000              JNZ 0x007896f1
00789631  8bcf                      MOV ECX,EDI
00789633  e828250400                CALL 0x007cbb60
00789638  84c0                      TEST AL,AL
0078963a  0f85b1000000              JNZ 0x007896f1
00789640  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789646  33f6                      XOR ESI,ESI
00789648  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
0078964e  e87de2c8ff                CALL 0x004178d0
00789653  85c0                      TEST EAX,EAX
00789655  0f846a000000              JZ 0x007896c5
0078965b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00789660  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789666  56                        PUSH ESI
00789667  e804e2c8ff                CALL 0x00417870
0078966c  8bf0                      MOV ESI,EAX
0078966e  3bf7                      CMP ESI,EDI
00789670  7437                      JZ 0x007896a9
00789672  8bcf                      MOV ECX,EDI
00789674  e8a7e1c8ff                CALL 0x00417820
00789679  3bf0                      CMP ESI,EAX
0078967b  742c                      JZ 0x007896a9
0078967d  8bce                      MOV ECX,ESI
0078967f  e8dc0bcaff                CALL 0x0042a260
00789684  85c0                      TEST EAX,EAX
00789686  7521                      JNZ 0x007896a9
00789688  8bce                      MOV ECX,ESI
0078968a  e8e1dbc8ff                CALL 0x00417270
0078968f  85c0                      TEST EAX,EAX
00789691  7516                      JNZ 0x007896a9
00789693  8bce                      MOV ECX,ESI
00789695  e8d6ddc8ff                CALL 0x00417470
0078969a  84c0                      TEST AL,AL
0078969c  7453                      JZ 0x007896f1
0078969e  8bce                      MOV ECX,ESI
007896a0  e8bb240400                CALL 0x007cbb60
007896a5  84c0                      TEST AL,AL
007896a7  7548                      JNZ 0x007896f1
007896a9  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
007896af  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007896b5  46                        INC ESI
007896b6  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
007896bc  e80fe2c8ff                CALL 0x004178d0
007896c1  3bf0                      CMP ESI,EAX
007896c3  729b                      JC 0x00789660
007896c5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007896cb  e880e1c8ff                CALL 0x00417850
007896d0  8bc8                      MOV ECX,EAX
007896d2  e879fec9ff                CALL 0x00429550
007896d7  84c0                      TEST AL,AL
007896d9  7516                      JNZ 0x007896f1
007896db  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007896e1  e84afa1c00                CALL 0x00959130
007896e6  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007896ec  e88f0f1d00                CALL 0x0095a680
007896f1  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
007896f5  753a                      JNZ 0x00789731
007896f7  8bcf                      MOV ECX,EDI
007896f9  e80217f5ff                CALL 0x006dae00
007896fe  83f83b                    CMP EAX,0x3b
00789701  752e                      JNZ 0x00789731
00789703  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00789709  85c9                      TEST ECX,ECX
0078970b  7424                      JZ 0x00789731
0078970d  e89edcc8ff                CALL 0x004173b0
00789712  84c0                      TEST AL,AL
00789714  741b                      JZ 0x00789731
00789716  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0078971c  e89fcacaff                CALL 0x004361c0
00789721  6a01                      PUSH 0x1
00789723  6a01                      PUSH 0x1
00789725  68b4000000                PUSH 0xb4
0078972a  8bc8                      MOV ECX,EAX
0078972c  e8ff6b1a00                CALL 0x00930330
00789731  6840b6c700                PUSH 0xc7b640
00789736  8d8f60030000              LEA ECX,[EDI + 0x360]
0078973c  e86f3c0500                CALL 0x007dd3b0
00789741  eb07                      JMP 0x0078974a
00789743  c685dafeffff01            MOV byte ptr [EBP + 0xfffffeda],0x1
0078974a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00789752  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0078975a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00789762  8b87c0130000              MOV EAX,dword ptr [EDI + 0x13c0]
00789768  83f813                    CMP EAX,0x13
0078976b  7405                      JZ 0x00789772
0078976d  83f814                    CMP EAX,0x14
00789770  7512                      JNZ 0x00789784
00789772  8bcf                      MOV ECX,EDI
00789774  e8c768f6ff                CALL 0x006f0040
00789779  c685e3feffff01            MOV byte ptr [EBP + 0xfffffee3],0x1
00789780  84c0                      TEST AL,AL
00789782  7507                      JNZ 0x0078978b
00789784  c685e3feffff00            MOV byte ptr [EBP + 0xfffffee3],0x0
0078978b  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00789791  e86ae1c8ff                CALL 0x00417900
00789796  8bc8                      MOV ECX,EAX
00789798  e843a1fcff                CALL 0x007538e0
0078979d  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007897a3  85c0                      TEST EAX,EAX
007897a5  0f9485dffeffff            SETZ byte ptr [EBP + 0xfffffedf]
007897ac  e8afa1c9ff                CALL 0x00423960
007897b1  84c0                      TEST AL,AL
007897b3  7425                      JZ 0x007897da
007897b5  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
007897bb  e860e1c8ff                CALL 0x00417920
007897c0  57                        PUSH EDI
007897c1  8bc8                      MOV ECX,EAX
007897c3  e8a8141800                CALL 0x0090ac70
007897c8  85c0                      TEST EAX,EAX
007897ca  740e                      JZ 0x007897da
007897cc  8bc8                      MOV ECX,EAX
007897ce  e87da5fcff                CALL 0x00753d50
007897d3  85c0                      TEST EAX,EAX
007897d5  0f94c0                    SETZ AL
007897d8  eb06                      JMP 0x007897e0
007897da  8a85dffeffff              MOV AL,byte ptr [EBP + 0xfffffedf]
007897e0  80bde3feffff00            CMP byte ptr [EBP + 0xfffffee3],0x0
007897e7  7409                      JZ 0x007897f2
007897e9  be0a000000                MOV ESI,0xa
007897ee  84c0                      TEST AL,AL
007897f0  7505                      JNZ 0x007897f7
007897f2  be09000000                MOV ESI,0x9
007897f7  81bf801500008d020000      CMP dword ptr [EDI + 0x1580],0x28d
00789801  0f854d020000              JNZ 0x00789a54
00789807  68eca4b100                PUSH 0xb1a4ec
0078980c  8d4f48                    LEA ECX,[EDI + 0x48]
0078980f  e8bc0cc8ff                CALL 0x0040a4d0
00789814  84c0                      TEST AL,AL
00789816  0f8438020000              JZ 0x00789a54
0078981c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00789822  6a00                      PUSH 0x0
00789824  6a00                      PUSH 0x0
00789826  ffb718160000              PUSH dword ptr [EDI + 0x1618]
0078982c  56                        PUSH ESI
0078982d  e8aec91c00                CALL 0x009561e0
00789832  84c0                      TEST AL,AL
00789834  0f841a020000              JZ 0x00789a54
0078983a  68046bb600                PUSH 0xb66b04
0078983f  8d4f48                    LEA ECX,[EDI + 0x48]
00789842  e8e91bc8ff                CALL 0x0040b430
00789847  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
0078984d  85c0                      TEST EAX,EAX
0078984f  0f84ff010000              JZ 0x00789a54
00789855  833800                    CMP dword ptr [EAX],0x0
00789858  0f84f6010000              JZ 0x00789a54
0078985e  80787400                  CMP byte ptr [EAX + 0x74],0x0
00789862  0f84ec010000              JZ 0x00789a54
00789868  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
0078986e  e80d662800                CALL 0x00a0fe80
00789873  8d4f48                    LEA ECX,[EDI + 0x48]
00789876  e8e54bc9ff                CALL 0x0041e460
0078987b  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
00789881  8bf0                      MOV ESI,EAX
00789883  e85893ccff                CALL 0x00452be0
00789888  50                        PUSH EAX
00789889  8bce                      MOV ECX,ESI
0078988b  e89009c8ff                CALL 0x0040a220
00789890  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
00789896  85c0                      TEST EAX,EAX
00789898  0f84b6010000              JZ 0x00789a54
0078989e  80782c00                  CMP byte ptr [EAX + 0x2c],0x0
007898a2  0f84ac010000              JZ 0x00789a54
007898a8  8d4f48                    LEA ECX,[EDI + 0x48]
007898ab  e8b04bc9ff                CALL 0x0041e460
007898b0  8bc8                      MOV ECX,EAX
007898b2  e809dbc7ff                CALL 0x004073c0
007898b7  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
007898bd  8bf0                      MOV ESI,EAX
007898bf  e81c93ccff                CALL 0x00452be0
007898c4  8b748638                  MOV ESI,dword ptr [ESI + EAX*0x4 + 0x38]
007898c8  85f6                      TEST ESI,ESI
007898ca  0f8890000000              JS 0x00789960
007898d0  8d4f48                    LEA ECX,[EDI + 0x48]
007898d3  e8884bc9ff                CALL 0x0041e460
007898d8  8bc8                      MOV ECX,EAX
007898da  e8e1dac7ff                CALL 0x004073c0
007898df  c1e604                    SHL ESI,0x4
007898e2  037018                    ADD ESI,dword ptr [EAX + 0x18]
007898e5  8d4748                    LEA EAX,[EDI + 0x48]
007898e8  50                        PUSH EAX
007898e9  6840b6c700                PUSH 0xc7b640
007898ee  6840b6c700                PUSH 0xc7b640
007898f3  ffb5b0feffff              PUSH dword ptr [EBP + 0xfffffeb0]
007898f9  8d85dcfdffff              LEA EAX,[EBP + 0xfffffddc]
007898ff  8bce                      MOV ECX,ESI
00789901  ffb5ccfeffff              PUSH dword ptr [EBP + 0xfffffecc]
00789907  6840b6c700                PUSH 0xc7b640
0078990c  50                        PUSH EAX
0078990d  e89e03c8ff                CALL 0x00409cb0
00789912  8d85f4fdffff              LEA EAX,[EBP + 0xfffffdf4]
00789918  50                        PUSH EAX
00789919  8d45e8                    LEA EAX,[EBP + -0x18]
0078991c  50                        PUSH EAX
0078991d  8d8ddcfdffff              LEA ECX,[EBP + 0xfffffddc]
00789923  e8f86a2800                CALL 0x00a10420
00789928  8d8dccfeffff              LEA ECX,[EBP + 0xfffffecc]
0078992e  c785ccfeffff0000003f      MOV dword ptr [EBP + 0xfffffecc],0x3f000000
00789938  51                        PUSH ECX
00789939  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
0078993f  51                        PUSH ECX
00789940  8bc8                      MOV ECX,EAX
00789942  e8996b2800                CALL 0x00a104e0
00789947  8bd0                      MOV EDX,EAX
00789949  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
0078994f  e88c59efff                CALL 0x0067f2e0
00789954  50                        PUSH EAX
00789955  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
0078995b  e8503a0500                CALL 0x007dd3b0
00789960  e8fb55f6ff                CALL 0x006eef60
00789965  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078996b  50                        PUSH EAX
0078996c  6a02                      PUSH 0x2
0078996e  6a00                      PUSH 0x0
00789970  6840b6c700                PUSH 0xc7b640
00789975  8d873c030000              LEA EAX,[EDI + 0x33c]
0078997b  50                        PUSH EAX
0078997c  6890000000                PUSH 0x90
00789981  68e8030000                PUSH 0x3e8
00789986  e895f1c9ff                CALL 0x00428b20
0078998b  8bf8                      MOV EDI,EAX
0078998d  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00789993  50                        PUSH EAX
00789994  8bcf                      MOV ECX,EDI
00789996  e855d9c8ff                CALL 0x004172f0
0078999b  8bcf                      MOV ECX,EDI
0078999d  e82ec4caff                CALL 0x00435dd0
007899a2  8bf0                      MOV ESI,EAX
007899a4  e83756efff                CALL 0x0067efe0
007899a9  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
007899b1  51                        PUSH ECX
007899b2  8bce                      MOV ECX,ESI
007899b4  f30f110424                MOVSS dword ptr [ESP],XMM0
007899b9  e8c254cbff                CALL 0x0043ee80
007899be  8bcf                      MOV ECX,EDI
007899c0  e80bc4caff                CALL 0x00435dd0
007899c5  8bf0                      MOV ESI,EAX
007899c7  c785ccfeffff0000c03f      MOV dword ptr [EBP + 0xfffffecc],0x3fc00000
007899d1  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
007899d7  b93c79c300                MOV ECX,0xc3793c
007899dc  50                        PUSH EAX
007899dd  8d45e8                    LEA EAX,[EBP + -0x18]
007899e0  50                        PUSH EAX
007899e1  e8fa6a2800                CALL 0x00a104e0
007899e6  50                        PUSH EAX
007899e7  8bce                      MOV ECX,ESI
007899e9  e88267c9ff                CALL 0x00420170
007899ee  8b07                      MOV EAX,dword ptr [EDI]
007899f0  51                        PUSH ECX
007899f1  8bcf                      MOV ECX,EDI
007899f3  c7042400004843            MOV dword ptr [ESP],0x43480000
007899fa  ff5040                    CALL dword ptr [EAX + 0x40]
007899fd  8b07                      MOV EAX,dword ptr [EDI]
007899ff  8bcf                      MOV ECX,EDI
00789a01  ff500c                    CALL dword ptr [EAX + 0xc]
00789a04  e8d755efff                CALL 0x0067efe0
00789a09  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00789a11  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00789a17  f30f1015c0a4ba00          MOVSS XMM2,dword ptr [0x00baa4c0]
00789a1f  51                        PUSH ECX
00789a20  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
00789a28  8bcf                      MOV ECX,EDI
00789a2a  f30f110424                MOVSS dword ptr [ESP],XMM0
00789a2f  6a00                      PUSH 0x0
00789a31  6a02                      PUSH 0x2
00789a33  68dd010000                PUSH 0x1dd
00789a38  e833caf2ff                CALL 0x006b6470
00789a3d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789a43  6a0e                      PUSH 0xe
00789a45  e8269cf7ff                CALL 0x00703670
00789a4a  8b85b0feffff              MOV EAX,dword ptr [EBP + 0xfffffeb0]
00789a50  c6407400                  MOV byte ptr [EAX + 0x74],0x0
00789a54  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
00789a5b  8d7748                    LEA ESI,[EDI + 0x48]
00789a5e  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
00789a64  89b578feffff              MOV dword ptr [EBP + 0xfffffe78],ESI
00789a6a  8bce                      MOV ECX,ESI
00789a6c  0f852d010000              JNZ 0x00789b9f
00789a72  e8590ac8ff                CALL 0x0040a4d0
00789a77  84c0                      TEST AL,AL
00789a79  0f8489040000              JZ 0x00789f08
00789a7f  8bce                      MOV ECX,ESI
00789a81  e8fa0cc8ff                CALL 0x0040a780
00789a86  83f813                    CMP EAX,0x13
00789a89  0f8579040000              JNZ 0x00789f08
00789a8f  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00789a95  e88605caff                CALL 0x0042a020
00789a9a  6a01                      PUSH 0x1
00789a9c  6a01                      PUSH 0x1
00789a9e  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00789aa4  e8273ff1ff                CALL 0x0069d9d0
00789aa9  6a01                      PUSH 0x1
00789aab  6a0c                      PUSH 0xc
00789aad  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00789ab3  e8183ff1ff                CALL 0x0069d9d0
00789ab8  6a01                      PUSH 0x1
00789aba  6a0a                      PUSH 0xa
00789abc  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00789ac2  e8093ff1ff                CALL 0x0069d9d0
00789ac7  33f6                      XOR ESI,ESI
00789ac9  0f1f8000000000            NOP dword ptr [EAX]
00789ad0  8d8ee0130000              LEA ECX,[ESI + 0x13e0]
00789ad6  03cf                      ADD ECX,EDI
00789ad8  e873f52600                CALL 0x009f9050
00789add  83c604                    ADD ESI,0x4
00789ae0  83fe10                    CMP ESI,0x10
00789ae3  72eb                      JC 0x00789ad0
00789ae5  8d8fdc130000              LEA ECX,[EDI + 0x13dc]
00789aeb  e860f52600                CALL 0x009f9050
00789af0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789af6  8db73c030000              LEA ESI,[EDI + 0x33c]
00789afc  e86f7cc9ff                CALL 0x00421770
00789b01  83f82a                    CMP EAX,0x2a
00789b04  7545                      JNZ 0x00789b4b
00789b06  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00789b0c  e85fd6c7ff                CALL 0x00407170
00789b11  0f1005d047c300            MOVUPS XMM0,xmmword ptr [0x00c347d0]
00789b18  6a01                      PUSH 0x1
00789b1a  6a00                      PUSH 0x0
00789b1c  6a04                      PUSH 0x4
00789b1e  6a01                      PUSH 0x1
00789b20  51                        PUSH ECX
00789b21  c704240000803f            MOV dword ptr [ESP],0x3f800000
00789b28  57                        PUSH EDI
00789b29  50                        PUSH EAX
00789b2a  83ec10                    SUB ESP,0x10
00789b2d  8bc4                      MOV EAX,ESP
00789b2f  51                        PUSH ECX
00789b30  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789b36  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00789b39  c7042400007042            MOV dword ptr [ESP],0x42700000
00789b40  56                        PUSH ESI
00789b41  e81a65f7ff                CALL 0x00700060
00789b46  e9ba030000                JMP 0x00789f05
00789b4b  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00789b53  8d87b8010000              LEA EAX,[EDI + 0x1b8]
00789b59  51                        PUSH ECX
00789b5a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00789b61  ba06000000                MOV EDX,0x6
00789b66  6840b6c700                PUSH 0xc7b640
00789b6b  50                        PUSH EAX
00789b6c  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
00789b72  8bce                      MOV ECX,ESI
00789b74  57                        PUSH EDI
00789b75  50                        PUSH EAX
00789b76  e83596f2ff                CALL 0x006b31b0
00789b7b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00789b83  83c410                    ADD ESP,0x10
00789b86  8bcf                      MOV ECX,EDI
00789b88  c704240000803f            MOV dword ptr [ESP],0x3f800000
00789b8f  6a00                      PUSH 0x0
00789b91  6a02                      PUSH 0x2
00789b93  6a1b                      PUSH 0x1b
00789b95  e8d6c8f2ff                CALL 0x006b6470
00789b9a  e966030000                JMP 0x00789f05
00789b9f  e82c09c8ff                CALL 0x0040a4d0
00789ba4  84c0                      TEST AL,AL
00789ba6  0f845c030000              JZ 0x00789f08
00789bac  68bc38b600                PUSH 0xb638bc
00789bb1  8bce                      MOV ECX,ESI
00789bb3  e87814c8ff                CALL 0x0040b030
00789bb8  84c0                      TEST AL,AL
00789bba  0f8448030000              JZ 0x00789f08
00789bc0  8bcf                      MOV ECX,EDI
00789bc2  e8391b0500                CALL 0x007db700
00789bc7  84c0                      TEST AL,AL
00789bc9  7525                      JNZ 0x00789bf0
00789bcb  8bcf                      MOV ECX,EDI
00789bcd  e8fefe0300                CALL 0x007c9ad0
00789bd2  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00789bda  51                        PUSH ECX
00789bdb  f30f110424                MOVSS dword ptr [ESP],XMM0
00789be0  8bcf                      MOV ECX,EDI
00789be2  6a00                      PUSH 0x0
00789be4  6a02                      PUSH 0x2
00789be6  68d9000000                PUSH 0xd9
00789beb  e880c8f2ff                CALL 0x006b6470
00789bf0  83bfc013000019            CMP dword ptr [EDI + 0x13c0],0x19
00789bf7  0f850b030000              JNZ 0x00789f08
00789bfd  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00789c05  8db73c030000              LEA ESI,[EDI + 0x33c]
00789c0b  0f57d2                    XORPS XMM2,XMM2
00789c0e  89b5b8feffff              MOV dword ptr [EBP + 0xfffffeb8],ESI
00789c14  8d4de8                    LEA ECX,[EBP + -0x18]
00789c17  e874622800                CALL 0x00a0fe90
00789c1c  50                        PUSH EAX
00789c1d  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
00789c23  8bce                      MOV ECX,ESI
00789c25  50                        PUSH EAX
00789c26  e855682800                CALL 0x00a10480
00789c2b  6a00                      PUSH 0x0
00789c2d  6a01                      PUSH 0x1
00789c2f  57                        PUSH EDI
00789c30  51                        PUSH ECX
00789c31  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789c37  c704240000f042            MOV dword ptr [ESP],0x42f00000
00789c3e  50                        PUSH EAX
00789c3f  e81ca7f7ff                CALL 0x00704360
00789c44  e81753f6ff                CALL 0x006eef60
00789c49  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00789c51  8d4de8                    LEA ECX,[EBP + -0x18]
00789c54  0f57d2                    XORPS XMM2,XMM2
00789c57  8bf0                      MOV ESI,EAX
00789c59  e832622800                CALL 0x00a0fe90
00789c5e  50                        PUSH EAX
00789c5f  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
00789c65  50                        PUSH EAX
00789c66  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00789c6c  e80f682800                CALL 0x00a10480
00789c71  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789c77  56                        PUSH ESI
00789c78  6a00                      PUSH 0x0
00789c7a  6a00                      PUSH 0x0
00789c7c  6840b6c700                PUSH 0xc7b640
00789c81  50                        PUSH EAX
00789c82  6a00                      PUSH 0x0
00789c84  68f5000000                PUSH 0xf5
00789c89  e892eec9ff                CALL 0x00428b20
00789c8e  c785e4feffff06000000      MOV dword ptr [EBP + 0xfffffee4],0x6
00789c98  e8c352f6ff                CALL 0x006eef60
00789c9d  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00789ca5  8d4de8                    LEA ECX,[EBP + -0x18]
00789ca8  0f57d2                    XORPS XMM2,XMM2
00789cab  8bf8                      MOV EDI,EAX
00789cad  e8de612800                CALL 0x00a0fe90
00789cb2  8bf0                      MOV ESI,EAX
00789cb4  e82753efff                CALL 0x0067efe0
00789cb9  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00789cc1  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
00789cc7  51                        PUSH ECX
00789cc8  8bce                      MOV ECX,ESI
00789cca  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00789cd2  f30f110424                MOVSS dword ptr [ESP],XMM0
00789cd7  50                        PUSH EAX
00789cd8  e803662800                CALL 0x00a102e0
00789cdd  8bf0                      MOV ESI,EAX
00789cdf  e8fc52efff                CALL 0x0067efe0
00789ce4  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00789cec  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00789cf2  50                        PUSH EAX
00789cf3  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00789cf9  8bce                      MOV ECX,ESI
00789cfb  50                        PUSH EAX
00789cfc  f30f5805a4a7ba00          ADDSS XMM0,dword ptr [0x00baa7a4]
00789d04  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00789d0c  e8cf672800                CALL 0x00a104e0
00789d11  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00789d19  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00789d1f  0f57d2                    XORPS XMM2,XMM2
00789d22  8bf0                      MOV ESI,EAX
00789d24  e867612800                CALL 0x00a0fe90
00789d29  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
00789d2f  50                        PUSH EAX
00789d30  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00789d36  50                        PUSH EAX
00789d37  e844672800                CALL 0x00a10480
00789d3c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789d42  57                        PUSH EDI
00789d43  6a01                      PUSH 0x1
00789d45  6a00                      PUSH 0x0
00789d47  56                        PUSH ESI
00789d48  50                        PUSH EAX
00789d49  6a63                      PUSH 0x63
00789d4b  68e8030000                PUSH 0x3e8
00789d50  e8cbedc9ff                CALL 0x00428b20
00789d55  8bf8                      MOV EDI,EAX
00789d57  8bcf                      MOV ECX,EDI
00789d59  e8c2d5c8ff                CALL 0x00417320
00789d5e  8bf0                      MOV ESI,EAX
00789d60  e87b52efff                CALL 0x0067efe0
00789d65  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
00789d6d  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
00789d73  50                        PUSH EAX
00789d74  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
00789d7a  8bce                      MOV ECX,ESI
00789d7c  50                        PUSH EAX
00789d7d  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00789d85  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
00789d8d  e84e672800                CALL 0x00a104e0
00789d92  50                        PUSH EAX
00789d93  8bcf                      MOV ECX,EDI
00789d95  e8163ccaff                CALL 0x0042d9b0
00789d9a  8bcf                      MOV ECX,EDI
00789d9c  e82fc0caff                CALL 0x00435dd0
00789da1  f30f101dd4a1ba00          MOVSS XMM3,dword ptr [0x00baa1d4]
00789da9  8bf0                      MOV ESI,EAX
00789dab  f30f101520a2ba00          MOVSS XMM2,dword ptr [0x00baa220]
00789db3  f30f100d80a2ba00          MOVSS XMM1,dword ptr [0x00baa280]
00789dbb  51                        PUSH ECX
00789dbc  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00789dc2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00789dc9  e8229bc9ff                CALL 0x004238f0
00789dce  50                        PUSH EAX
00789dcf  8bce                      MOV ECX,ESI
00789dd1  e8fad5c7ff                CALL 0x004073d0
00789dd6  8b07                      MOV EAX,dword ptr [EDI]
00789dd8  8bcf                      MOV ECX,EDI
00789dda  ff500c                    CALL dword ptr [EAX + 0xc]
00789ddd  83ade4feffff01            SUB dword ptr [EBP + 0xfffffee4],0x1
00789de4  0f85aefeffff              JNZ 0x00789c98
00789dea  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00789df0  33c0                      XOR EAX,EAX
00789df2  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
00789df8  3987541f0000              CMP dword ptr [EDI + 0x1f54],EAX
00789dfe  0f8e01010000              JLE 0x00789f05
00789e04  83f813                    CMP EAX,0x13
00789e07  0f8df8000000              JGE 0x00789f05
00789e0d  e84e51f6ff                CALL 0x006eef60
00789e12  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00789e1a  8d4de8                    LEA ECX,[EBP + -0x18]
00789e1d  0f57d2                    XORPS XMM2,XMM2
00789e20  8bf8                      MOV EDI,EAX
00789e22  e869602800                CALL 0x00a0fe90
00789e27  8bf0                      MOV ESI,EAX
00789e29  e8b251efff                CALL 0x0067efe0
00789e2e  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00789e36  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
00789e3c  51                        PUSH ECX
00789e3d  8bce                      MOV ECX,ESI
00789e3f  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00789e47  f30f110424                MOVSS dword ptr [ESP],XMM0
00789e4c  50                        PUSH EAX
00789e4d  e88e642800                CALL 0x00a102e0
00789e52  8bf0                      MOV ESI,EAX
00789e54  e88751efff                CALL 0x0067efe0
00789e59  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00789e61  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00789e67  50                        PUSH EAX
00789e68  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00789e6e  8bce                      MOV ECX,ESI
00789e70  50                        PUSH EAX
00789e71  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
00789e79  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
00789e81  e85a662800                CALL 0x00a104e0
00789e86  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00789e8e  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00789e94  0f57d2                    XORPS XMM2,XMM2
00789e97  8bf0                      MOV ESI,EAX
00789e99  e8f25f2800                CALL 0x00a0fe90
00789e9e  8b8db8feffff              MOV ECX,dword ptr [EBP + 0xfffffeb8]
00789ea4  50                        PUSH EAX
00789ea5  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00789eab  50                        PUSH EAX
00789eac  e8cf652800                CALL 0x00a10480
00789eb1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789eb7  57                        PUSH EDI
00789eb8  6a00                      PUSH 0x0
00789eba  6a00                      PUSH 0x0
00789ebc  56                        PUSH ESI
00789ebd  50                        PUSH EAX
00789ebe  6a2a                      PUSH 0x2a
00789ec0  6a05                      PUSH 0x5
00789ec2  e859ecc9ff                CALL 0x00428b20
00789ec7  ffb5d4feffff              PUSH dword ptr [EBP + 0xfffffed4]
00789ecd  8bf0                      MOV ESI,EAX
00789ecf  8bce                      MOV ECX,ESI
00789ed1  e81a7be2ff                CALL 0x005b19f0
00789ed6  8b16                      MOV EDX,dword ptr [ESI]
00789ed8  8bce                      MOV ECX,ESI
00789eda  ff520c                    CALL dword ptr [EDX + 0xc]
00789edd  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00789ee3  8bcf                      MOV ECX,EDI
00789ee5  6aff                      PUSH -0x1
00789ee7  e8f4c60400                CALL 0x007d65e0
00789eec  8b85d4feffff              MOV EAX,dword ptr [EBP + 0xfffffed4]
00789ef2  40                        INC EAX
00789ef3  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
00789ef9  3b87541f0000              CMP EAX,dword ptr [EDI + 0x1f54]
00789eff  0f8cfffeffff              JL 0x00789e04
00789f05  8d7748                    LEA ESI,[EDI + 0x48]
00789f08  80bddafeffff00            CMP byte ptr [EBP + 0xfffffeda],0x0
00789f0f  0f857e010000              JNZ 0x0078a093
00789f15  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
00789f1b  8bce                      MOV ECX,ESI
00789f1d  e8ae05c8ff                CALL 0x0040a4d0
00789f22  84c0                      TEST AL,AL
00789f24  7415                      JZ 0x00789f3b
00789f26  8bce                      MOV ECX,ESI
00789f28  e85308c8ff                CALL 0x0040a780
00789f2d  83f808                    CMP EAX,0x8
00789f30  7d1d                      JGE 0x00789f4f
00789f32  83bfc013000023            CMP dword ptr [EDI + 0x13c0],0x23
00789f39  7414                      JZ 0x00789f4f
00789f3b  68eca4b100                PUSH 0xb1a4ec
00789f40  8bce                      MOV ECX,ESI
00789f42  e80906c8ff                CALL 0x0040a550
00789f47  84c0                      TEST AL,AL
00789f49  0f8444010000              JZ 0x0078a093
00789f4f  8db7681e0000              LEA ESI,[EDI + 0x1e68]
00789f55  8bce                      MOV ECX,ESI
00789f57  89b5b0feffff              MOV dword ptr [EBP + 0xfffffeb0],ESI
00789f5d  e83e24c8ff                CALL 0x0040c3a0
00789f62  85c0                      TEST EAX,EAX
00789f64  0f8429010000              JZ 0x0078a093
00789f6a  8bce                      MOV ECX,ESI
00789f6c  e82f24c8ff                CALL 0x0040c3a0
00789f71  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
00789f78  0f8515010000              JNZ 0x0078a093
00789f7e  8bce                      MOV ECX,ESI
00789f80  e81b24c8ff                CALL 0x0040c3a0
00789f85  8d8f681e0000              LEA ECX,[EDI + 0x1e68]
00789f8b  8bf0                      MOV ESI,EAX
00789f8d  e80e24c8ff                CALL 0x0040c3a0
00789f92  8bc8                      MOV ECX,EAX
00789f94  e85789ffff                CALL 0x007828f0
00789f99  50                        PUSH EAX
00789f9a  8d4e48                    LEA ECX,[ESI + 0x48]
00789f9d  e82e05c8ff                CALL 0x0040a4d0
00789fa2  84c0                      TEST AL,AL
00789fa4  0f85e9000000              JNZ 0x0078a093
00789faa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00789fb0  e8abd8c8ff                CALL 0x00417860
00789fb5  8bc8                      MOV ECX,EAX
00789fb7  e8d4592300                CALL 0x009bf990
00789fbc  84c0                      TEST AL,AL
00789fbe  743c                      JZ 0x00789ffc
00789fc0  8bb5b0feffff              MOV ESI,dword ptr [EBP + 0xfffffeb0]
00789fc6  8bce                      MOV ECX,ESI
00789fc8  e8d323c8ff                CALL 0x0040c3a0
00789fcd  8bc8                      MOV ECX,EAX
00789fcf  e84c03caff                CALL 0x0042a320
00789fd4  84c0                      TEST AL,AL
00789fd6  0f85b7000000              JNZ 0x0078a093
00789fdc  8bce                      MOV ECX,ESI
00789fde  e8bd23c8ff                CALL 0x0040c3a0
00789fe3  8bf8                      MOV EDI,EAX
00789fe5  8b0f                      MOV ECX,dword ptr [EDI]
00789fe7  8b7124                    MOV ESI,dword ptr [ECX + 0x24]
00789fea  8d4d9c                    LEA ECX,[EBP + -0x64]
00789fed  e87ebccaff                CALL 0x00435c70
00789ff2  50                        PUSH EAX
00789ff3  8bcf                      MOV ECX,EDI
00789ff5  ffd6                      CALL ESI
00789ff7  e997000000                JMP 0x0078a093
00789ffc  8bb7a8160000              MOV ESI,dword ptr [EDI + 0x16a8]
0078a002  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
0078a008  8bbfac160000              MOV EDI,dword ptr [EDI + 0x16ac]
0078a00e  e88d23c8ff                CALL 0x0040c3a0
0078a013  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
0078a019  89b0a8160000              MOV dword ptr [EAX + 0x16a8],ESI
0078a01f  89b8ac160000              MOV dword ptr [EAX + 0x16ac],EDI
0078a025  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
0078a02b  057c160000                ADD EAX,0x167c
0078a030  50                        PUSH EAX
0078a031  e86a23c8ff                CALL 0x0040c3a0
0078a036  8d887c160000              LEA ECX,[EAX + 0x167c]
0078a03c  e81ff9d0ff                CALL 0x00499960
0078a041  8b8db0feffff              MOV ECX,dword ptr [EBP + 0xfffffeb0]
0078a047  e85423c8ff                CALL 0x0040c3a0
0078a04c  8bf8                      MOV EDI,EAX
0078a04e  8b0f                      MOV ECX,dword ptr [EDI]
0078a050  8b7124                    MOV ESI,dword ptr [ECX + 0x24]
0078a053  8d4d9c                    LEA ECX,[EBP + -0x64]
0078a056  e815bccaff                CALL 0x00435c70
0078a05b  50                        PUSH EAX
0078a05c  8bcf                      MOV ECX,EDI
0078a05e  ffd6                      CALL ESI
0078a060  8bbdb0feffff              MOV EDI,dword ptr [EBP + 0xfffffeb0]
0078a066  8bcf                      MOV ECX,EDI
0078a068  e83323c8ff                CALL 0x0040c3a0
0078a06d  8bcf                      MOV ECX,EDI
0078a06f  c6807101000001            MOV byte ptr [EAX + 0x171],0x1
0078a076  e82523c8ff                CALL 0x0040c3a0
0078a07b  8bcf                      MOV ECX,EDI
0078a07d  8bf0                      MOV ESI,EAX
0078a07f  e81c23c8ff                CALL 0x0040c3a0
0078a084  8bc8                      MOV ECX,EAX
0078a086  e86588ffff                CALL 0x007828f0
0078a08b  50                        PUSH EAX
0078a08c  8bce                      MOV ECX,ESI
0078a08e  e88d1d0200                CALL 0x007abe20
0078a093  ffb5c4feffff              PUSH dword ptr [EBP + 0xfffffec4]
0078a099  8b8d78feffff              MOV ECX,dword ptr [EBP + 0xfffffe78]
0078a09f  e8ac04c8ff                CALL 0x0040a550
0078a0a4  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
0078a0aa  84c0                      TEST AL,AL
0078a0ac  7407                      JZ 0x0078a0b5
0078a0ae  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0078a0b5  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0078a0bb  2500400000                AND EAX,0x4000
0078a0c0  83c800                    OR EAX,0x0
0078a0c3  0f85c7010000              JNZ 0x0078a290
0078a0c9  50                        PUSH EAX
0078a0ca  6877010000                PUSH 0x177
0078a0cf  8bcf                      MOV ECX,EDI
0078a0d1  e80a66feff                CALL 0x007706e0
0078a0d6  84c0                      TEST AL,AL
0078a0d8  7444                      JZ 0x0078a11e
0078a0da  68eca4b100                PUSH 0xb1a4ec
0078a0df  8d4dac                    LEA ECX,[EBP + -0x54]
0078a0e2  e85922c8ff                CALL 0x0040c340
0078a0e7  c745fc13000000            MOV dword ptr [EBP + -0x4],0x13
0078a0ee  8bcf                      MOV ECX,EDI
0078a0f0  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0078a0f6  83c802                    OR EAX,0x2
0078a0f9  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0078a0ff  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
0078a105  8d45ac                    LEA EAX,[EBP + -0x54]
0078a108  50                        PUSH EAX
0078a109  6877010000                PUSH 0x177
0078a10e  e86d350200                CALL 0x007ad680
0078a113  c685dffeffff01            MOV byte ptr [EBP + 0xfffffedf],0x1
0078a11a  84c0                      TEST AL,AL
0078a11c  7507                      JNZ 0x0078a125
0078a11e  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
0078a125  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0078a12c  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0078a132  a802                      TEST AL,0x2
0078a134  7411                      JZ 0x0078a147
0078a136  83e0fd                    AND EAX,0xfffffffd
0078a139  8d4dac                    LEA ECX,[EBP + -0x54]
0078a13c  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0078a142  e8d91dc8ff                CALL 0x0040bf20
0078a147  80bddffeffff00            CMP byte ptr [EBP + 0xfffffedf],0x0
0078a14e  740c                      JZ 0x0078a15c
0078a150  6877010000                PUSH 0x177
0078a155  8bcf                      MOV ECX,EDI
0078a157  e844340200                CALL 0x007ad5a0
0078a15c  6a00                      PUSH 0x0
0078a15e  688f010000                PUSH 0x18f
0078a163  8bcf                      MOV ECX,EDI
0078a165  e87665feff                CALL 0x007706e0
0078a16a  84c0                      TEST AL,AL
0078a16c  7444                      JZ 0x0078a1b2
0078a16e  68eca4b100                PUSH 0xb1a4ec
0078a173  8d4dac                    LEA ECX,[EBP + -0x54]
0078a176  e8c521c8ff                CALL 0x0040c340
0078a17b  c745fc14000000            MOV dword ptr [EBP + -0x4],0x14
0078a182  8bcf                      MOV ECX,EDI
0078a184  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0078a18a  83c804                    OR EAX,0x4
0078a18d  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0078a193  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
0078a199  8d45ac                    LEA EAX,[EBP + -0x54]
0078a19c  50                        PUSH EAX
0078a19d  688f010000                PUSH 0x18f
0078a1a2  e8d9340200                CALL 0x007ad680
0078a1a7  c685dffeffff01            MOV byte ptr [EBP + 0xfffffedf],0x1
0078a1ae  84c0                      TEST AL,AL
0078a1b0  7507                      JNZ 0x0078a1b9
0078a1b2  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
0078a1b9  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0078a1c0  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0078a1c6  a804                      TEST AL,0x4
0078a1c8  7411                      JZ 0x0078a1db
0078a1ca  83e0fb                    AND EAX,0xfffffffb
0078a1cd  8d4dac                    LEA ECX,[EBP + -0x54]
0078a1d0  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0078a1d6  e8451dc8ff                CALL 0x0040bf20
0078a1db  80bddffeffff00            CMP byte ptr [EBP + 0xfffffedf],0x0
0078a1e2  740c                      JZ 0x0078a1f0
0078a1e4  688f010000                PUSH 0x18f
0078a1e9  8bcf                      MOV ECX,EDI
0078a1eb  e8b0330200                CALL 0x007ad5a0
0078a1f0  8d8f08150000              LEA ECX,[EDI + 0x1508]
0078a1f6  6a75                      PUSH 0x75
0078a1f8  e883641a00                CALL 0x00930680
0078a1fd  84c0                      TEST AL,AL
0078a1ff  7441                      JZ 0x0078a242
0078a201  68eca4b100                PUSH 0xb1a4ec
0078a206  8d4dac                    LEA ECX,[EBP + -0x54]
0078a209  e83221c8ff                CALL 0x0040c340
0078a20e  c745fc15000000            MOV dword ptr [EBP + -0x4],0x15
0078a215  8bcf                      MOV ECX,EDI
0078a217  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0078a21d  83c808                    OR EAX,0x8
0078a220  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0078a226  8985b0feffff              MOV dword ptr [EBP + 0xfffffeb0],EAX
0078a22c  8d45ac                    LEA EAX,[EBP + -0x54]
0078a22f  50                        PUSH EAX
0078a230  6a75                      PUSH 0x75
0078a232  e8e9340200                CALL 0x007ad720
0078a237  c685dffeffff01            MOV byte ptr [EBP + 0xfffffedf],0x1
0078a23e  84c0                      TEST AL,AL
0078a240  7507                      JNZ 0x0078a249
0078a242  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
0078a249  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0078a250  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0078a256  a808                      TEST AL,0x8
0078a258  7408                      JZ 0x0078a262
0078a25a  8d4dac                    LEA ECX,[EBP + -0x54]
0078a25d  e8be1cc8ff                CALL 0x0040bf20
0078a262  80bddffeffff00            CMP byte ptr [EBP + 0xfffffedf],0x0
0078a269  7425                      JZ 0x0078a290
0078a26b  6a75                      PUSH 0x75
0078a26d  8bcf                      MOV ECX,EDI
0078a26f  e89c330200                CALL 0x007ad610
0078a274  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078a27a  e88127caff                CALL 0x0042ca00
0078a27f  6a75                      PUSH 0x75
0078a281  8bc8                      MOV ECX,EAX
0078a283  e8185bfaff                CALL 0x0072fda0
0078a288  50                        PUSH EAX
0078a289  8bcf                      MOV ECX,EDI
0078a28b  e8c035fdff                CALL 0x0075d850
0078a290  8bcf                      MOV ECX,EDI
0078a292  e819ea0200                CALL 0x007b8cb0
0078a297  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0078a29b  7409                      JZ 0x0078a2a6
0078a29d  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
0078a2a4  7407                      JZ 0x0078a2ad
0078a2a6  8bcf                      MOV ECX,EDI
0078a2a8  e803000300                CALL 0x007ba2b0
0078a2ad  8b872c1b0000              MOV EAX,dword ptr [EDI + 0x1b2c]
0078a2b3  85c0                      TEST EAX,EAX
0078a2b5  7e3a                      JLE 0x0078a2f1
0078a2b7  83c0ff                    ADD EAX,-0x1
0078a2ba  89872c1b0000              MOV dword ptr [EDI + 0x1b2c],EAX
0078a2c0  752f                      JNZ 0x0078a2f1
0078a2c2  f30f1097281b0000          MOVSS XMM2,dword ptr [EDI + 0x1b28]
0078a2ca  51                        PUSH ECX
0078a2cb  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078a2d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a2d8  6a00                      PUSH 0x0
0078a2da  6a02                      PUSH 0x2
0078a2dc  ffb7241b0000              PUSH dword ptr [EDI + 0x1b24]
0078a2e2  e8f9c51c00                CALL 0x009568e0
0078a2e7  c787241b000000000000      MOV dword ptr [EDI + 0x1b24],0x0
0078a2f1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a2f7  6a07                      PUSH 0x7
0078a2f9  e86274caff                CALL 0x00431760
0078a2fe  84c0                      TEST AL,AL
0078a300  7446                      JZ 0x0078a348
0078a302  33c0                      XOR EAX,EAX
0078a304  8db788150000              LEA ESI,[EDI + 0x1588]
0078a30a  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0078a310  837ef800                  CMP dword ptr [ESI + -0x8],0x0
0078a314  7410                      JZ 0x0078a326
0078a316  50                        PUSH EAX
0078a317  8bcf                      MOV ECX,EDI
0078a319  e802700000                CALL 0x00791320
0078a31e  8906                      MOV dword ptr [ESI],EAX
0078a320  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
0078a326  40                        INC EAX
0078a327  83c620                    ADD ESI,0x20
0078a32a  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0078a330  83f804                    CMP EAX,0x4
0078a333  72db                      JC 0x0078a310
0078a335  83bfc013000019            CMP dword ptr [EDI + 0x13c0],0x19
0078a33c  750a                      JNZ 0x0078a348
0078a33e  c787541f000009000000      MOV dword ptr [EDI + 0x1f54],0x9
0078a348  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a34e  6a01                      PUSH 0x1
0078a350  e80bb9edff                CALL 0x00665c60
0078a355  84c0                      TEST AL,AL
0078a357  7445                      JZ 0x0078a39e
0078a359  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0078a35d  753f                      JNZ 0x0078a39e
0078a35f  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078a365  e866e9c9ff                CALL 0x00428cd0
0078a36a  8d8f60030000              LEA ECX,[EDI + 0x360]
0078a370  8bf0                      MOV ESI,EAX
0078a372  e8295b2800                CALL 0x00a0fea0
0078a377  d80d20a1ba00              FMUL dword ptr [0x00baa120]
0078a37d  51                        PUSH ECX
0078a37e  8bce                      MOV ECX,ESI
0078a380  d805d0a2ba00              FADD dword ptr [0x00baa2d0]
0078a386  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
0078a38c  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0078a394  f30f110424                MOVSS dword ptr [ESP],XMM0
0078a399  e822810500                CALL 0x007e24c0
0078a39e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a3a4  6a02                      PUSH 0x2
0078a3a6  e8b5b8edff                CALL 0x00665c60
0078a3ab  84c0                      TEST AL,AL
0078a3ad  7443                      JZ 0x0078a3f2
0078a3af  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0078a3b3  753d                      JNZ 0x0078a3f2
0078a3b5  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078a3bb  e810e9c9ff                CALL 0x00428cd0
0078a3c0  8b8f4c130000              MOV ECX,dword ptr [EDI + 0x134c]
0078a3c6  0f57c0                    XORPS XMM0,XMM0
0078a3c9  038f44130000              ADD ECX,dword ptr [EDI + 0x1344]
0078a3cf  8bf0                      MOV ESI,EAX
0078a3d1  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
0078a3d9  660f6ed1                  MOVD XMM2,ECX
0078a3dd  0f5bd2                    CVTDQ2PS XMM2,XMM2
0078a3e0  e80bb22800                CALL 0x00a155f0
0078a3e5  51                        PUSH ECX
0078a3e6  8bce                      MOV ECX,ESI
0078a3e8  f30f110424                MOVSS dword ptr [ESP],XMM0
0078a3ed  e8ce800500                CALL 0x007e24c0
0078a3f2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a3f8  6a25                      PUSH 0x25
0078a3fa  e861b8edff                CALL 0x00665c60
0078a3ff  84c0                      TEST AL,AL
0078a401  0f848e000000              JZ 0x0078a495
0078a407  8b07                      MOV EAX,dword ptr [EDI]
0078a409  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0078a40f  83ec10                    SUB ESP,0x10
0078a412  0f57db                    XORPS XMM3,XMM3
0078a415  0f57d2                    XORPS XMM2,XMM2
0078a418  0f57c9                    XORPS XMM1,XMM1
0078a41b  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
0078a41e  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
0078a426  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0078a42e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0078a436  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a43d  e89e2cc8ff                CALL 0x0040d0e0
0078a442  6a01                      PUSH 0x1
0078a444  6a00                      PUSH 0x0
0078a446  68ff000000                PUSH 0xff
0078a44b  6aff                      PUSH -0x1
0078a44d  50                        PUSH EAX
0078a44e  8bcf                      MOV ECX,EDI
0078a450  ffd6                      CALL ESI
0078a452  83ec10                    SUB ESP,0x10
0078a455  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0078a45b  0f57db                    XORPS XMM3,XMM3
0078a45e  0f57d2                    XORPS XMM2,XMM2
0078a461  0f57c9                    XORPS XMM1,XMM1
0078a464  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
0078a46c  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0078a474  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0078a47c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a483  e8582cc8ff                CALL 0x0040d0e0
0078a488  8d7748                    LEA ESI,[EDI + 0x48]
0078a48b  50                        PUSH EAX
0078a48c  8bce                      MOV ECX,ESI
0078a48e  e83dcfc7ff                CALL 0x004073d0
0078a493  eb03                      JMP 0x0078a498
0078a495  8d7748                    LEA ESI,[EDI + 0x48]
0078a498  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a49e  6a0e                      PUSH 0xe
0078a4a0  e8bbb7edff                CALL 0x00665c60
0078a4a5  84c0                      TEST AL,AL
0078a4a7  0f848c000000              JZ 0x0078a539
0078a4ad  8b07                      MOV EAX,dword ptr [EDI]
0078a4af  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0078a4b5  83ec10                    SUB ESP,0x10
0078a4b8  0f57db                    XORPS XMM3,XMM3
0078a4bb  0f57d2                    XORPS XMM2,XMM2
0078a4be  0f57c9                    XORPS XMM1,XMM1
0078a4c1  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
0078a4c4  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
0078a4cc  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0078a4d4  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0078a4dc  c7042400000000            MOV dword ptr [ESP],0x0
0078a4e3  e8f82bc8ff                CALL 0x0040d0e0
0078a4e8  6a01                      PUSH 0x1
0078a4ea  6a00                      PUSH 0x0
0078a4ec  68ff000000                PUSH 0xff
0078a4f1  6aff                      PUSH -0x1
0078a4f3  50                        PUSH EAX
0078a4f4  8bcf                      MOV ECX,EDI
0078a4f6  ffd6                      CALL ESI
0078a4f8  83ec10                    SUB ESP,0x10
0078a4fb  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0078a501  0f57db                    XORPS XMM3,XMM3
0078a504  0f57d2                    XORPS XMM2,XMM2
0078a507  0f57c9                    XORPS XMM1,XMM1
0078a50a  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
0078a512  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0078a51a  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0078a522  c7042400000000            MOV dword ptr [ESP],0x0
0078a529  e8b22bc8ff                CALL 0x0040d0e0
0078a52e  8d7748                    LEA ESI,[EDI + 0x48]
0078a531  50                        PUSH EAX
0078a532  8bce                      MOV ECX,ESI
0078a534  e897cec7ff                CALL 0x004073d0
0078a539  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a53f  6a35                      PUSH 0x35
0078a541  e81ab7edff                CALL 0x00665c60
0078a546  84c0                      TEST AL,AL
0078a548  0f845f000000              JZ 0x0078a5ad
0078a54e  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
0078a554  e817ccc7ff                CALL 0x00407170
0078a559  83ec10                    SUB ESP,0x10
0078a55c  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
0078a562  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
0078a56a  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
0078a572  c74424040000803f          MOV dword ptr [ESP + 0x4],0x3f800000
0078a57a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a581  e82a8aefff                CALL 0x00682fb0
0078a586  8b07                      MOV EAX,dword ptr [EDI]
0078a588  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
0078a58e  6a01                      PUSH 0x1
0078a590  6a00                      PUSH 0x0
0078a592  68ff000000                PUSH 0xff
0078a597  6aff                      PUSH -0x1
0078a599  51                        PUSH ECX
0078a59a  8bcf                      MOV ECX,EDI
0078a59c  ff503c                    CALL dword ptr [EAX + 0x3c]
0078a59f  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0078a5a5  8bce                      MOV ECX,ESI
0078a5a7  50                        PUSH EAX
0078a5a8  e823cec7ff                CALL 0x004073d0
0078a5ad  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a5b3  6a18                      PUSH 0x18
0078a5b5  e8a6b6edff                CALL 0x00665c60
0078a5ba  84c0                      TEST AL,AL
0078a5bc  0f8499010000              JZ 0x0078a75b
0078a5c2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a5c8  e8b3cec7ff                CALL 0x00407480
0078a5cd  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0078a5d3  51                        PUSH ECX
0078a5d4  8bc8                      MOV ECX,EAX
0078a5d6  e8b5860800                CALL 0x00812c90
0078a5db  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a5e1  8bf0                      MOV ESI,EAX
0078a5e3  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
0078a5e9  e892cec7ff                CALL 0x00407480
0078a5ee  56                        PUSH ESI
0078a5ef  8bc8                      MOV ECX,EAX
0078a5f1  e86abacaff                CALL 0x00436060
0078a5f6  8bf0                      MOV ESI,EAX
0078a5f8  85f6                      TEST ESI,ESI
0078a5fa  0f846b000000              JZ 0x0078a66b
0078a600  8bce                      MOV ECX,ESI
0078a602  e8b9cdc7ff                CALL 0x004073c0
0078a607  83f80e                    CMP EAX,0xe
0078a60a  0f94c0                    SETZ AL
0078a60d  8885dafeffff              MOV byte ptr [EBP + 0xfffffeda],AL
0078a613  84c0                      TEST AL,AL
0078a615  7421                      JZ 0x0078a638
0078a617  8bce                      MOV ECX,ESI
0078a619  e8d2d0c8ff                CALL 0x004176f0
0078a61e  3de8030000                CMP EAX,0x3e8
0078a623  8a85dafeffff              MOV AL,byte ptr [EBP + 0xfffffeda]
0078a629  8885dafeffff              MOV byte ptr [EBP + 0xfffffeda],AL
0078a62f  0f9485dffeffff            SETZ byte ptr [EBP + 0xfffffedf]
0078a636  eb12                      JMP 0x0078a64a
0078a638  c685e3feffff00            MOV byte ptr [EBP + 0xfffffee3],0x0
0078a63f  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
0078a646  85f6                      TEST ESI,ESI
0078a648  7436                      JZ 0x0078a680
0078a64a  8bce                      MOV ECX,ESI
0078a64c  e86fcdc7ff                CALL 0x004073c0
0078a651  83f801                    CMP EAX,0x1
0078a654  740c                      JZ 0x0078a662
0078a656  8bce                      MOV ECX,ESI
0078a658  e863cdc7ff                CALL 0x004073c0
0078a65d  83f80a                    CMP EAX,0xa
0078a660  7517                      JNZ 0x0078a679
0078a662  c685e3feffff01            MOV byte ptr [EBP + 0xfffffee3],0x1
0078a669  eb15                      JMP 0x0078a680
0078a66b  c685dafeffff00            MOV byte ptr [EBP + 0xfffffeda],0x0
0078a672  c685dffeffff00            MOV byte ptr [EBP + 0xfffffedf],0x0
0078a679  c685e3feffff00            MOV byte ptr [EBP + 0xfffffee3],0x0
0078a680  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a686  e8f5cdc7ff                CALL 0x00407480
0078a68b  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
0078a691  8d4de8                    LEA ECX,[EBP + -0x18]
0078a694  51                        PUSH ECX
0078a695  8bc8                      MOV ECX,EAX
0078a697  e864880800                CALL 0x00812f00
0078a69c  8bd0                      MOV EDX,EAX
0078a69e  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0078a6a4  e857582800                CALL 0x00a0ff00
0078a6a9  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
0078a6b1  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0078a6b9  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
0078a6c1  f30f5cd1                  SUBSS XMM2,XMM1
0078a6c5  0f2fd0                    COMISS XMM2,XMM0
0078a6c8  0f97c0                    SETA AL
0078a6cb  84c0                      TEST AL,AL
0078a6cd  0f8488000000              JZ 0x0078a75b
0078a6d3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a6d9  e8a2cdc7ff                CALL 0x00407480
0078a6de  8bc8                      MOV ECX,EAX
0078a6e0  e8abfa0500                CALL 0x007ea190
0078a6e5  84c0                      TEST AL,AL
0078a6e7  0f856e000000              JNZ 0x0078a75b
0078a6ed  85f6                      TEST ESI,ESI
0078a6ef  7418                      JZ 0x0078a709
0078a6f1  3885dffeffff              CMP byte ptr [EBP + 0xfffffedf],AL
0078a6f7  7510                      JNZ 0x0078a709
0078a6f9  3885e3feffff              CMP byte ptr [EBP + 0xfffffee3],AL
0078a6ff  745a                      JZ 0x0078a75b
0078a701  3885dafeffff              CMP byte ptr [EBP + 0xfffffeda],AL
0078a707  7552                      JNZ 0x0078a75b
0078a709  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a70f  e86ccdc7ff                CALL 0x00407480
0078a714  8d8f70170000              LEA ECX,[EDI + 0x1770]
0078a71a  8bf0                      MOV ESI,EAX
0078a71c  6a24                      PUSH 0x24
0078a71e  e8dd15e4ff                CALL 0x005cbd00
0078a723  8bc8                      MOV ECX,EAX
0078a725  e8c6e90500                CALL 0x007e90f0
0078a72a  6a00                      PUSH 0x0
0078a72c  50                        PUSH EAX
0078a72d  6a00                      PUSH 0x0
0078a72f  6a0e                      PUSH 0xe
0078a731  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
0078a737  8bce                      MOV ECX,ESI
0078a739  e862150600                CALL 0x007ebca0
0078a73e  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
0078a746  51                        PUSH ECX
0078a747  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a74e  8bcf                      MOV ECX,EDI
0078a750  6a00                      PUSH 0x0
0078a752  6a02                      PUSH 0x2
0078a754  6a25                      PUSH 0x25
0078a756  e815bdf2ff                CALL 0x006b6470
0078a75b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a761  6a1a                      PUSH 0x1a
0078a763  e8f8b4edff                CALL 0x00665c60
0078a768  84c0                      TEST AL,AL
0078a76a  0f8404010000              JZ 0x0078a874
0078a770  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a776  e835cdc7ff                CALL 0x004074b0
0078a77b  83f83c                    CMP EAX,0x3c
0078a77e  0f8ef0000000              JLE 0x0078a874
0078a784  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a78a  e8f1ccc7ff                CALL 0x00407480
0078a78f  8bc8                      MOV ECX,EAX
0078a791  e84a950800                CALL 0x00813ce0
0078a796  83f80a                    CMP EAX,0xa
0078a799  0f8ed5000000              JLE 0x0078a874
0078a79f  8bcf                      MOV ECX,EDI
0078a7a1  e86a090200                CALL 0x007ab110
0078a7a6  84c0                      TEST AL,AL
0078a7a8  0f84c6000000              JZ 0x0078a874
0078a7ae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a7b4  e82763c9ff                CALL 0x00420ae0
0078a7b9  8bc8                      MOV ECX,EAX
0078a7bb  e870460a00                CALL 0x0082ee30
0078a7c0  84c0                      TEST AL,AL
0078a7c2  0f85ac000000              JNZ 0x0078a874
0078a7c8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a7ce  e87de3c9ff                CALL 0x00428b50
0078a7d3  8bc8                      MOV ECX,EAX
0078a7d5  e856460a00                CALL 0x0082ee30
0078a7da  84c0                      TEST AL,AL
0078a7dc  0f8592000000              JNZ 0x0078a874
0078a7e2  8d8f60160000              LEA ECX,[EDI + 0x1660]
0078a7e8  e8b3562800                CALL 0x00a0fea0
0078a7ed  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
0078a7f5  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
0078a7fb  0f2f85ccfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffecc]
0078a802  7622                      JBE 0x0078a826
0078a804  8d8f54160000              LEA ECX,[EDI + 0x1654]
0078a80a  e891562800                CALL 0x00a0fea0
0078a80f  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
0078a817  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
0078a81d  0f2f85ccfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffecc]
0078a824  772b                      JA 0x0078a851
0078a826  8d8f60160000              LEA ECX,[EDI + 0x1660]
0078a82c  e86f562800                CALL 0x00a0fea0
0078a831  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
0078a839  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
0078a83f  0f2f85ccfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffecc]
0078a846  762c                      JBE 0x0078a874
0078a848  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0078a84f  7423                      JZ 0x0078a874
0078a851  8b07                      MOV EAX,dword ptr [EDI]
0078a853  8d4d9c                    LEA ECX,[EBP + -0x64]
0078a856  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0078a859  e812b4caff                CALL 0x00435c70
0078a85e  6a1e                      PUSH 0x1e
0078a860  50                        PUSH EAX
0078a861  6a00                      PUSH 0x0
0078a863  6800000200                PUSH 0x20000
0078a868  51                        PUSH ECX
0078a869  8bcf                      MOV ECX,EDI
0078a86b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a872  ffd6                      CALL ESI
0078a874  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a87a  6a1b                      PUSH 0x1b
0078a87c  e8dfb3edff                CALL 0x00665c60
0078a881  84c0                      TEST AL,AL
0078a883  0f84e7000000              JZ 0x0078a970
0078a889  6a00                      PUSH 0x0
0078a88b  6800400000                PUSH 0x4000
0078a890  8bcf                      MOV ECX,EDI
0078a892  e899cbc8ff                CALL 0x00417430
0078a897  84c0                      TEST AL,AL
0078a899  0f85d1000000              JNZ 0x0078a970
0078a89f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a8a5  e806ccc7ff                CALL 0x004074b0
0078a8aa  99                        CDQ
0078a8ab  b946050000                MOV ECX,0x546
0078a8b0  f7f9                      IDIV ECX
0078a8b2  be45050000                MOV ESI,0x545
0078a8b7  2bf2                      SUB ESI,EDX
0078a8b9  7538                      JNZ 0x0078a8f3
0078a8bb  8b07                      MOV EAX,dword ptr [EDI]
0078a8bd  8d4d9c                    LEA ECX,[EBP + -0x64]
0078a8c0  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0078a8c3  e8a8b3caff                CALL 0x00435c70
0078a8c8  6a1e                      PUSH 0x1e
0078a8ca  50                        PUSH EAX
0078a8cb  6a00                      PUSH 0x0
0078a8cd  6800000200                PUSH 0x20000
0078a8d2  51                        PUSH ECX
0078a8d3  8bcf                      MOV ECX,EDI
0078a8d5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a8dc  ffd6                      CALL ESI
0078a8de  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0078a8e6  51                        PUSH ECX
0078a8e7  c7042400000041            MOV dword ptr [ESP],0x41000000
0078a8ee  e96c000000                JMP 0x0078a95f
0078a8f3  b889888888                MOV EAX,0x88888889
0078a8f8  f7ee                      IMUL ESI
0078a8fa  03d6                      ADD EDX,ESI
0078a8fc  c1fa04                    SAR EDX,0x4
0078a8ff  8bc2                      MOV EAX,EDX
0078a901  c1e81f                    SHR EAX,0x1f
0078a904  03c2                      ADD EAX,EDX
0078a906  8bc8                      MOV ECX,EAX
0078a908  c1e104                    SHL ECX,0x4
0078a90b  2bc8                      SUB ECX,EAX
0078a90d  8bc6                      MOV EAX,ESI
0078a90f  03c9                      ADD ECX,ECX
0078a911  2bc1                      SUB EAX,ECX
0078a913  7512                      JNZ 0x0078a927
0078a915  81fe96000000              CMP ESI,0x96
0078a91b  7f0a                      JG 0x0078a927
0078a91d  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0078a925  eb30                      JMP 0x0078a957
0078a927  b889888888                MOV EAX,0x88888889
0078a92c  f7ee                      IMUL ESI
0078a92e  03d6                      ADD EDX,ESI
0078a930  c1fa03                    SAR EDX,0x3
0078a933  8bc2                      MOV EAX,EDX
0078a935  c1e81f                    SHR EAX,0x1f
0078a938  03c2                      ADD EAX,EDX
0078a93a  8bc8                      MOV ECX,EAX
0078a93c  c1e104                    SHL ECX,0x4
0078a93f  2bc8                      SUB ECX,EAX
0078a941  8bc6                      MOV EAX,ESI
0078a943  2bc1                      SUB EAX,ECX
0078a945  7529                      JNZ 0x0078a970
0078a947  81fe96000000              CMP ESI,0x96
0078a94d  7f21                      JG 0x0078a970
0078a94f  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
0078a957  51                        PUSH ECX
0078a958  c7042400008040            MOV dword ptr [ESP],0x40800000
0078a95f  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078a965  6a00                      PUSH 0x0
0078a967  6a00                      PUSH 0x0
0078a969  6a23                      PUSH 0x23
0078a96b  e870bf1c00                CALL 0x009568e0
0078a970  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a976  6a1c                      PUSH 0x1c
0078a978  e8e3b2edff                CALL 0x00665c60
0078a97d  84c0                      TEST AL,AL
0078a97f  0f84f4000000              JZ 0x0078aa79
0078a985  6a00                      PUSH 0x0
0078a987  6800400000                PUSH 0x4000
0078a98c  8bcf                      MOV ECX,EDI
0078a98e  e89dcac8ff                CALL 0x00417430
0078a993  84c0                      TEST AL,AL
0078a995  0f85de000000              JNZ 0x0078aa79
0078a99b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078a9a1  e80acbc7ff                CALL 0x004074b0
0078a9a6  beefd20000                MOV ESI,0xd2ef
0078a9ab  2bf0                      SUB ESI,EAX
0078a9ad  85f6                      TEST ESI,ESI
0078a9af  7f4b                      JG 0x0078a9fc
0078a9b1  8bcf                      MOV ECX,EDI
0078a9b3  e858070200                CALL 0x007ab110
0078a9b8  84c0                      TEST AL,AL
0078a9ba  7440                      JZ 0x0078a9fc
0078a9bc  8b07                      MOV EAX,dword ptr [EDI]
0078a9be  8d4d9c                    LEA ECX,[EBP + -0x64]
0078a9c1  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0078a9c4  e8a7b2caff                CALL 0x00435c70
0078a9c9  6a1e                      PUSH 0x1e
0078a9cb  50                        PUSH EAX
0078a9cc  6a00                      PUSH 0x0
0078a9ce  6800000200                PUSH 0x20000
0078a9d3  51                        PUSH ECX
0078a9d4  8bcf                      MOV ECX,EDI
0078a9d6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078a9dd  ffd6                      CALL ESI
0078a9df  84c0                      TEST AL,AL
0078a9e1  0f8492000000              JZ 0x0078aa79
0078a9e7  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0078a9ef  51                        PUSH ECX
0078a9f0  c7042400000041            MOV dword ptr [ESP],0x41000000
0078a9f7  e96c000000                JMP 0x0078aa68
0078a9fc  b889888888                MOV EAX,0x88888889
0078aa01  f7ee                      IMUL ESI
0078aa03  03d6                      ADD EDX,ESI
0078aa05  c1fa04                    SAR EDX,0x4
0078aa08  8bc2                      MOV EAX,EDX
0078aa0a  c1e81f                    SHR EAX,0x1f
0078aa0d  03c2                      ADD EAX,EDX
0078aa0f  8bc8                      MOV ECX,EAX
0078aa11  c1e104                    SHL ECX,0x4
0078aa14  2bc8                      SUB ECX,EAX
0078aa16  8bc6                      MOV EAX,ESI
0078aa18  03c9                      ADD ECX,ECX
0078aa1a  2bc1                      SUB EAX,ECX
0078aa1c  7512                      JNZ 0x0078aa30
0078aa1e  81fe84030000              CMP ESI,0x384
0078aa24  7f0a                      JG 0x0078aa30
0078aa26  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0078aa2e  eb30                      JMP 0x0078aa60
0078aa30  b889888888                MOV EAX,0x88888889
0078aa35  f7ee                      IMUL ESI
0078aa37  03d6                      ADD EDX,ESI
0078aa39  c1fa03                    SAR EDX,0x3
0078aa3c  8bc2                      MOV EAX,EDX
0078aa3e  c1e81f                    SHR EAX,0x1f
0078aa41  03c2                      ADD EAX,EDX
0078aa43  8bc8                      MOV ECX,EAX
0078aa45  c1e104                    SHL ECX,0x4
0078aa48  2bc8                      SUB ECX,EAX
0078aa4a  8bc6                      MOV EAX,ESI
0078aa4c  2bc1                      SUB EAX,ECX
0078aa4e  7529                      JNZ 0x0078aa79
0078aa50  81fe2c010000              CMP ESI,0x12c
0078aa56  7f21                      JG 0x0078aa79
0078aa58  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
0078aa60  51                        PUSH ECX
0078aa61  c7042400008040            MOV dword ptr [ESP],0x40800000
0078aa68  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078aa6e  6a00                      PUSH 0x0
0078aa70  6a00                      PUSH 0x0
0078aa72  6a23                      PUSH 0x23
0078aa74  e867be1c00                CALL 0x009568e0
0078aa79  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0078aa7f  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0078aa85  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
0078aa8b  8bc1                      MOV EAX,ECX
0078aa8d  2500400000                AND EAX,0x4000
0078aa92  83c800                    OR EAX,0x0
0078aa95  7420                      JZ 0x0078aab7
0078aa97  6a00                      PUSH 0x0
0078aa99  6800800000                PUSH 0x8000
0078aa9e  8bcf                      MOV ECX,EDI
0078aaa0  e85bc9c8ff                CALL 0x00417400
0078aaa5  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0078aaab  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0078aab1  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
0078aab7  81e100400000              AND ECX,0x4000
0078aabd  83c900                    OR ECX,0x0
0078aac0  0f851e020000              JNZ 0x0078ace4
0078aac6  51                        PUSH ECX
0078aac7  6800000008                PUSH 0x8000000
0078aacc  8bcf                      MOV ECX,EDI
0078aace  e82dc9c8ff                CALL 0x00417400
0078aad3  6a04                      PUSH 0x4
0078aad5  6a00                      PUSH 0x0
0078aad7  8bcf                      MOV ECX,EDI
0078aad9  e852c9c8ff                CALL 0x00417430
0078aade  84c0                      TEST AL,AL
0078aae0  0f8437010000              JZ 0x0078ac1d
0078aae6  39bf8c020000              CMP dword ptr [EDI + 0x28c],EDI
0078aaec  0f852b010000              JNZ 0x0078ac1d
0078aaf2  8bb744130000              MOV ESI,dword ptr [EDI + 0x1344]
0078aaf8  2bb7a41d0000              SUB ESI,dword ptr [EDI + 0x1da4]
0078aafe  85f6                      TEST ESI,ESI
0078ab00  0f8e02010000              JLE 0x0078ac08
0078ab06  83bf4c13000000            CMP dword ptr [EDI + 0x134c],0x0
0078ab0d  7f27                      JG 0x0078ab36
0078ab0f  83bf881d000000            CMP dword ptr [EDI + 0x1d88],0x0
0078ab16  7f1e                      JG 0x0078ab36
0078ab18  8bcf                      MOV ECX,EDI
0078ab1a  e8c1040400                CALL 0x007cafe0
0078ab1f  83e803                    SUB EAX,0x3
0078ab22  f7d8                      NEG EAX
0078ab24  1bc0                      SBB EAX,EAX
0078ab26  8d4802                    LEA ECX,[EAX + 0x2]
0078ab29  e852280500                CALL 0x007dd380
0078ab2e  3bf0                      CMP ESI,EAX
0078ab30  0f8ed2000000              JLE 0x0078ac08
0078ab36  8bcf                      MOV ECX,EDI
0078ab38  e8730b0500                CALL 0x007db6b0
0078ab3d  84c0                      TEST AL,AL
0078ab3f  0f85c3000000              JNZ 0x0078ac08
0078ab45  8bcf                      MOV ECX,EDI
0078ab47  e864b2caff                CALL 0x00435db0
0078ab4c  8b8f8c130000              MOV ECX,dword ptr [EDI + 0x138c]
0078ab52  2bc8                      SUB ECX,EAX
0078ab54  898f8c130000              MOV dword ptr [EDI + 0x138c],ECX
0078ab5a  85c9                      TEST ECX,ECX
0078ab5c  7f49                      JG 0x0078aba7
0078ab5e  8b07                      MOV EAX,dword ptr [EDI]
0078ab60  8d4d9c                    LEA ECX,[EBP + -0x64]
0078ab63  c7878c13000058020000      MOV dword ptr [EDI + 0x138c],0x258
0078ab6d  8b7820                    MOV EDI,dword ptr [EAX + 0x20]
0078ab70  e8fbb0caff                CALL 0x00435c70
0078ab75  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0078ab7d  8bf0                      MOV ESI,EAX
0078ab7f  e8acaeedff                CALL 0x00665a30
0078ab84  6a1e                      PUSH 0x1e
0078ab86  56                        PUSH ESI
0078ab87  6a00                      PUSH 0x0
0078ab89  6820200402                PUSH 0x2042020
0078ab8e  51                        PUSH ECX
0078ab8f  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
0078ab95  f30f110424                MOVSS dword ptr [ESP],XMM0
0078ab9a  ffd7                      CALL EDI
0078ab9c  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
0078aba2  e976000000                JMP 0x0078ac1d
0078aba7  83f91e                    CMP ECX,0x1e
0078abaa  0f8d6d000000              JGE 0x0078ac1d
0078abb0  81e103000080              AND ECX,0x80000003
0078abb6  7907                      JNS 0x0078abbf
0078abb8  49                        DEC ECX
0078abb9  83c9fc                    OR ECX,0xfffffffc
0078abbc  83c101                    ADD ECX,0x1
0078abbf  755c                      JNZ 0x0078ac1d
0078abc1  8b07                      MOV EAX,dword ptr [EDI]
0078abc3  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0078abc9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0078abd1  83ec0c                    SUB ESP,0xc
0078abd4  0f57db                    XORPS XMM3,XMM3
0078abd7  0f57d2                    XORPS XMM2,XMM2
0078abda  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
0078abdd  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0078abe5  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0078abed  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078abf4  e8d723caff                CALL 0x0042cfd0
0078abf9  6a01                      PUSH 0x1
0078abfb  6a01                      PUSH 0x1
0078abfd  6a02                      PUSH 0x2
0078abff  6a04                      PUSH 0x4
0078ac01  50                        PUSH EAX
0078ac02  8bcf                      MOV ECX,EDI
0078ac04  ffd6                      CALL ESI
0078ac06  eb15                      JMP 0x0078ac1d
0078ac08  6a04                      PUSH 0x4
0078ac0a  6a00                      PUSH 0x0
0078ac0c  8bcf                      MOV ECX,EDI
0078ac0e  e8edc7c8ff                CALL 0x00417400
0078ac13  c7878c13000000000000      MOV dword ptr [EDI + 0x138c],0x0
0078ac1d  83bfc013000016            CMP dword ptr [EDI + 0x13c0],0x16
0078ac24  0f85b0000000              JNZ 0x0078acda
0078ac2a  8bb744130000              MOV ESI,dword ptr [EDI + 0x1344]
0078ac30  8bcf                      MOV ECX,EDI
0078ac32  e8e9960400                CALL 0x007d4320
0078ac37  3bf0                      CMP ESI,EAX
0078ac39  7f1f                      JG 0x0078ac5a
0078ac3b  83bf4c13000001            CMP dword ptr [EDI + 0x134c],0x1
0078ac42  7f16                      JG 0x0078ac5a
0078ac44  0f8590000000              JNZ 0x0078acda
0078ac4a  8b87881d0000              MOV EAX,dword ptr [EDI + 0x1d88]
0078ac50  03c6                      ADD EAX,ESI
0078ac52  85c0                      TEST EAX,EAX
0078ac54  0f8e80000000              JLE 0x0078acda
0078ac5a  8b87f41e0000              MOV EAX,dword ptr [EDI + 0x1ef4]
0078ac60  85c0                      TEST EAX,EAX
0078ac62  750f                      JNZ 0x0078ac73
0078ac64  c787f41e00002c010000      MOV dword ptr [EDI + 0x1ef4],0x12c
0078ac6e  e971000000                JMP 0x0078ace4
0078ac73  48                        DEC EAX
0078ac74  8987f41e0000              MOV dword ptr [EDI + 0x1ef4],EAX
0078ac7a  85c0                      TEST EAX,EAX
0078ac7c  0f8f62000000              JG 0x0078ace4
0078ac82  8bb744130000              MOV ESI,dword ptr [EDI + 0x1344]
0078ac88  8bcf                      MOV ECX,EDI
0078ac8a  e891960400                CALL 0x007d4320
0078ac8f  3bf0                      CMP ESI,EAX
0078ac91  7e19                      JLE 0x0078acac
0078ac93  6a00                      PUSH 0x0
0078ac95  6a00                      PUSH 0x0
0078ac97  6aff                      PUSH -0x1
0078ac99  8bcf                      MOV ECX,EDI
0078ac9b  e8d0ddfcff                CALL 0x00758a70
0078aca0  c787f41e00002c010000      MOV dword ptr [EDI + 0x1ef4],0x12c
0078acaa  eb38                      JMP 0x0078ace4
0078acac  83bf4c13000001            CMP dword ptr [EDI + 0x134c],0x1
0078acb3  7f0e                      JG 0x0078acc3
0078acb5  7517                      JNZ 0x0078acce
0078acb7  8b87881d0000              MOV EAX,dword ptr [EDI + 0x1d88]
0078acbd  03c6                      ADD EAX,ESI
0078acbf  85c0                      TEST EAX,EAX
0078acc1  7e0b                      JLE 0x0078acce
0078acc3  6a00                      PUSH 0x0
0078acc5  6aff                      PUSH -0x1
0078acc7  8bcf                      MOV ECX,EDI
0078acc9  e832e0fcff                CALL 0x00758d00
0078acce  c787f41e00002c010000      MOV dword ptr [EDI + 0x1ef4],0x12c
0078acd8  eb0a                      JMP 0x0078ace4
0078acda  c787f41e000000000000      MOV dword ptr [EDI + 0x1ef4],0x0
0078ace4  8bcf                      MOV ECX,EDI
0078ace6  e8d5480300                CALL 0x007bf5c0
0078aceb  8db71c1b0000              LEA ESI,[EDI + 0x1b1c]
0078acf1  8887d8170000              MOV byte ptr [EDI + 0x17d8],AL
0078acf7  6840b6c700                PUSH 0xc7b640
0078acfc  8bce                      MOV ECX,ESI
0078acfe  e82d592800                CALL 0x00a10630
0078ad03  84c0                      TEST AL,AL
0078ad05  0f847f000000              JZ 0x0078ad8a
0078ad0b  8d873c030000              LEA EAX,[EDI + 0x33c]
0078ad11  8bce                      MOV ECX,ESI
0078ad13  50                        PUSH EAX
0078ad14  8d45e8                    LEA EAX,[EBP + -0x18]
0078ad17  50                        PUSH EAX
0078ad18  e863572800                CALL 0x00a10480
0078ad1d  8bc8                      MOV ECX,EAX
0078ad1f  e87c512800                CALL 0x00a0fea0
0078ad24  d99dccfeffff              FSTP dword ptr [EBP + 0xfffffecc]
0078ad2a  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0078ad32  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0078ad39  7647                      JBE 0x0078ad82
0078ad3b  8d873c030000              LEA EAX,[EDI + 0x33c]
0078ad41  8bce                      MOV ECX,ESI
0078ad43  50                        PUSH EAX
0078ad44  8d45e8                    LEA EAX,[EBP + -0x18]
0078ad47  50                        PUSH EAX
0078ad48  e833572800                CALL 0x00a10480
0078ad4d  8d8dccfeffff              LEA ECX,[EBP + 0xfffffecc]
0078ad53  c785ccfeffffec51383e      MOV dword ptr [EBP + 0xfffffecc],0x3e3851ec
0078ad5d  51                        PUSH ECX
0078ad5e  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
0078ad64  51                        PUSH ECX
0078ad65  8bc8                      MOV ECX,EAX
0078ad67  e874572800                CALL 0x00a104e0
0078ad6c  50                        PUSH EAX
0078ad6d  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
0078ad73  50                        PUSH EAX
0078ad74  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0078ad7a  e8a1562800                CALL 0x00a10420
0078ad7f  50                        PUSH EAX
0078ad80  eb01                      JMP 0x0078ad83
0078ad82  56                        PUSH ESI
0078ad83  8bcf                      MOV ECX,EDI
0078ad85  e866dbc9ff                CALL 0x004288f0
0078ad8a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078ad90  e88bd3f6ff                CALL 0x006f8120
0078ad95  84c0                      TEST AL,AL
0078ad97  0f857e000000              JNZ 0x0078ae1b
0078ad9d  8b874c130000              MOV EAX,dword ptr [EDI + 0x134c]
0078ada3  038744130000              ADD EAX,dword ptr [EDI + 0x1344]
0078ada9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078adaf  83f801                    CMP EAX,0x1
0078adb2  7e1a                      JLE 0x0078adce
0078adb4  e87797c9ff                CALL 0x00424530
0078adb9  8bc8                      MOV ECX,EAX
0078adbb  e8e015c8ff                CALL 0x0040c3a0
0078adc0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078adc6  50                        PUSH EAX
0078adc7  e8b48efcff                CALL 0x00753c80
0078adcc  eb4d                      JMP 0x0078ae1b
0078adce  e8dd8efcff                CALL 0x00753cb0
0078add3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078add9  8bf0                      MOV ESI,EAX
0078addb  e85097c9ff                CALL 0x00424530
0078ade0  8bc8                      MOV ECX,EAX
0078ade2  e8b915c8ff                CALL 0x0040c3a0
0078ade7  8bc8                      MOV ECX,EAX
0078ade9  2bc6                      SUB EAX,ESI
0078adeb  83f909                    CMP ECX,0x9
0078adee  7e0f                      JLE 0x0078adff
0078adf0  83f90c                    CMP ECX,0xc
0078adf3  7d03                      JGE 0x0078adf8
0078adf5  48                        DEC EAX
0078adf6  eb07                      JMP 0x0078adff
0078adf8  b80a000000                MOV EAX,0xa
0078adfd  2bc6                      SUB EAX,ESI
0078adff  83f802                    CMP EAX,0x2
0078ae02  7e17                      JLE 0x0078ae1b
0078ae04  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0078ae0a  e8f169c9ff                CALL 0x00421800
0078ae0f  6849010000                PUSH 0x149
0078ae14  8bc8                      MOV ECX,EAX
0078ae16  e805ec1900                CALL 0x00929a20
0078ae1b  6a00                      PUSH 0x0
0078ae1d  6800400000                PUSH 0x4000
0078ae22  8bcf                      MOV ECX,EDI
0078ae24  e807c6c8ff                CALL 0x00417430
0078ae29  84c0                      TEST AL,AL
0078ae2b  0f85bf020000              JNZ 0x0078b0f0
0078ae31  8bcf                      MOV ECX,EDI
0078ae33  e838c6c8ff                CALL 0x00417470
0078ae38  84c0                      TEST AL,AL
0078ae3a  0f85b0020000              JNZ 0x0078b0f0
0078ae40  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0078ae46  8bc1                      MOV EAX,ECX
0078ae48  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0078ae4e  2500010000                AND EAX,0x100
0078ae53  83c800                    OR EAX,0x0
0078ae56  740f                      JZ 0x0078ae67
0078ae58  c785a8feffff3076b600      MOV dword ptr [EBP + 0xfffffea8],0xb67630
0078ae62  e9ee000000                JMP 0x0078af55
0078ae67  8bc1                      MOV EAX,ECX
0078ae69  2500020000                AND EAX,0x200
0078ae6e  83c800                    OR EAX,0x0
0078ae71  740f                      JZ 0x0078ae82
0078ae73  c785a8feffff1076b600      MOV dword ptr [EBP + 0xfffffea8],0xb67610
0078ae7d  e9d3000000                JMP 0x0078af55
0078ae82  8bc1                      MOV EAX,ECX
0078ae84  2500100000                AND EAX,0x1000
0078ae89  83c800                    OR EAX,0x0
0078ae8c  740f                      JZ 0x0078ae9d
0078ae8e  c785a8feffff1876b600      MOV dword ptr [EBP + 0xfffffea8],0xb67618
0078ae98  e9b8000000                JMP 0x0078af55
0078ae9d  8bc1                      MOV EAX,ECX
0078ae9f  83e040                    AND EAX,0x40
0078aea2  83c800                    OR EAX,0x0
0078aea5  740f                      JZ 0x0078aeb6
0078aea7  c785a8feffff2076b600      MOV dword ptr [EBP + 0xfffffea8],0xb67620
0078aeb1  e99f000000                JMP 0x0078af55
0078aeb6  8bc1                      MOV EAX,ECX
0078aeb8  2500080000                AND EAX,0x800
0078aebd  83c800                    OR EAX,0x0
0078aec0  740f                      JZ 0x0078aed1
0078aec2  c785a8feffff2876b600      MOV dword ptr [EBP + 0xfffffea8],0xb67628
0078aecc  e984000000                JMP 0x0078af55
0078aed1  83e204                    AND EDX,0x4
0078aed4  33c0                      XOR EAX,EAX
0078aed6  0bc2                      OR EAX,EDX
0078aed8  740f                      JZ 0x0078aee9
0078aeda  c785a8feffff9076b600      MOV dword ptr [EBP + 0xfffffea8],0xb67690
0078aee4  e96c000000                JMP 0x0078af55
0078aee9  81e180000000              AND ECX,0x80
0078aeef  83c900                    OR ECX,0x0
0078aef2  7422                      JZ 0x0078af16
0078aef4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078aefa  e851c9c8ff                CALL 0x00417850
0078aeff  8bc8                      MOV ECX,EAX
0078af01  e84ae6c9ff                CALL 0x00429550
0078af06  84c0                      TEST AL,AL
0078af08  740c                      JZ 0x0078af16
0078af0a  c785a8feffff9c76b600      MOV dword ptr [EBP + 0xfffffea8],0xb6769c
0078af14  eb3f                      JMP 0x0078af55
0078af16  83bf1c03000000            CMP dword ptr [EDI + 0x31c],0x0
0078af1d  0f8e9b000000              JLE 0x0078afbe
0078af23  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078af29  e822c9c8ff                CALL 0x00417850
0078af2e  8bc8                      MOV ECX,EAX
0078af30  e81be6c9ff                CALL 0x00429550
0078af35  84c0                      TEST AL,AL
0078af37  0f8481000000              JZ 0x0078afbe
0078af3d  6683bfd22e000000          CMP word ptr [EDI + 0x2ed2],0x0
0078af45  0f8573000000              JNZ 0x0078afbe
0078af4b  c785a8feffff2cb0b600      MOV dword ptr [EBP + 0xfffffea8],0xb6b02c
0078af55  8db70c110000              LEA ESI,[EDI + 0x110c]
0078af5b  8bce                      MOV ECX,ESI
0078af5d  e8fe51c9ff                CALL 0x00420160
0078af62  84c0                      TEST AL,AL
0078af64  7530                      JNZ 0x0078af96
0078af66  685c76b600                PUSH 0xb6765c
0078af6b  8d4dac                    LEA ECX,[EBP + -0x54]
0078af6e  e8cd13c8ff                CALL 0x0040c340
0078af73  6a01                      PUSH 0x1
0078af75  8d45ac                    LEA EAX,[EBP + -0x54]
0078af78  c745fc16000000            MOV dword ptr [EBP + -0x4],0x16
0078af7f  50                        PUSH EAX
0078af80  8bce                      MOV ECX,ESI
0078af82  e8c90dc8ff                CALL 0x0040bd50
0078af87  8d4dac                    LEA ECX,[EBP + -0x54]
0078af8a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0078af91  e88a0fc8ff                CALL 0x0040bf20
0078af96  68eca4b100                PUSH 0xb1a4ec
0078af9b  8bce                      MOV ECX,ESI
0078af9d  e82ef5c7ff                CALL 0x0040a4d0
0078afa2  84c0                      TEST AL,AL
0078afa4  7407                      JZ 0x0078afad
0078afa6  8bce                      MOV ECX,ESI
0078afa8  e853e1c7ff                CALL 0x00409100
0078afad  6a00                      PUSH 0x0
0078afaf  ffb5a8feffff              PUSH dword ptr [EBP + 0xfffffea8]
0078afb5  8bce                      MOV ECX,ESI
0078afb7  e8c4f3c7ff                CALL 0x0040a380
0078afbc  eb0b                      JMP 0x0078afc9
0078afbe  8d8f0c110000              LEA ECX,[EDI + 0x110c]
0078afc4  e847f9c7ff                CALL 0x0040a910
0078afc9  8d4f48                    LEA ECX,[EDI + 0x48]
0078afcc  e88f34c9ff                CALL 0x0041e460
0078afd1  8bc8                      MOV ECX,EAX
0078afd3  e8b80cc8ff                CALL 0x0040bc90
0078afd8  8bcf                      MOV ECX,EDI
0078afda  8985ccfeffff              MOV dword ptr [EBP + 0xfffffecc],EAX
0078afe0  e82b010200                CALL 0x007ab110
0078afe5  84c0                      TEST AL,AL
0078afe7  7417                      JZ 0x0078b000
0078afe9  8d4f48                    LEA ECX,[EDI + 0x48]
0078afec  e87f34c9ff                CALL 0x0041e470
0078aff1  8bc8                      MOV ECX,EAX
0078aff3  e8980cc8ff                CALL 0x0040bc90
0078aff8  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0078affe  eb0a                      JMP 0x0078b00a
0078b000  c785e4feffffffffffff      MOV dword ptr [EBP + 0xfffffee4],0xffffffff
0078b00a  8d4f48                    LEA ECX,[EDI + 0x48]
0078b00d  e83efcc7ff                CALL 0x0040ac50
0078b012  8d4f48                    LEA ECX,[EDI + 0x48]
0078b015  8bf0                      MOV ESI,EAX
0078b017  e864f7c7ff                CALL 0x0040a780
0078b01c  56                        PUSH ESI
0078b01d  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
0078b023  8d4da4                    LEA ECX,[EBP + -0x5c]
0078b026  50                        PUSH EAX
0078b027  ffb5ccfeffff              PUSH dword ptr [EBP + 0xfffffecc]
0078b02d  8d8760030000              LEA EAX,[EDI + 0x360]
0078b033  50                        PUSH EAX
0078b034  8d873c030000              LEA EAX,[EDI + 0x33c]
0078b03a  50                        PUSH EAX
0078b03b  e8f087fcff                CALL 0x00753830
0078b040  50                        PUSH EAX
0078b041  8d8f341b0000              LEA ECX,[EDI + 0x1b34]
0078b047  e8f4e70a00                CALL 0x00839840
0078b04c  8d8f581c0000              LEA ECX,[EDI + 0x1c58]
0078b052  e869f2c9ff                CALL 0x0042a2c0
0078b057  84c0                      TEST AL,AL
0078b059  0f8468000000              JZ 0x0078b0c7
0078b05f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b065  e8c694c9ff                CALL 0x00424530
0078b06a  8bc8                      MOV ECX,EAX
0078b06c  e82f13c8ff                CALL 0x0040c3a0
0078b071  83f80c                    CMP EAX,0xc
0078b074  7551                      JNZ 0x0078b0c7
0078b076  6a00                      PUSH 0x0
0078b078  6896000000                PUSH 0x96
0078b07d  8bcf                      MOV ECX,EDI
0078b07f  e88c16f2ff                CALL 0x006ac710
0078b084  84c0                      TEST AL,AL
0078b086  743f                      JZ 0x0078b0c7
0078b088  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b08e  e8edc3c7ff                CALL 0x00407480
0078b093  8bc8                      MOV ECX,EAX
0078b095  e84687fcff                CALL 0x007537e0
0078b09a  6bc869                    IMUL ECX,EAX,0x69
0078b09d  83c14b                    ADD ECX,0x4b
0078b0a0  e86b3fefff                CALL 0x0067f010
0078b0a5  85c0                      TEST EAX,EAX
0078b0a7  751e                      JNZ 0x0078b0c7
0078b0a9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b0af  e84cacd1ff                CALL 0x004a5d00
0078b0b4  84c0                      TEST AL,AL
0078b0b6  750f                      JNZ 0x0078b0c7
0078b0b8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b0be  6a3f                      PUSH 0x3f
0078b0c0  6a1e                      PUSH 0x1e
0078b0c2  e829a9f7ff                CALL 0x007059f0
0078b0c7  8d8f581c0000              LEA ECX,[EDI + 0x1c58]
0078b0cd  e8eef1c9ff                CALL 0x0042a2c0
0078b0d2  84c0                      TEST AL,AL
0078b0d4  741a                      JZ 0x0078b0f0
0078b0d6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b0dc  e81facd1ff                CALL 0x004a5d00
0078b0e1  84c0                      TEST AL,AL
0078b0e3  740b                      JZ 0x0078b0f0
0078b0e5  8d8f581c0000              LEA ECX,[EDI + 0x1c58]
0078b0eb  e840e70a00                CALL 0x00839830
0078b0f0  6a00                      PUSH 0x0
0078b0f2  6800400000                PUSH 0x4000
0078b0f7  8bcf                      MOV ECX,EDI
0078b0f9  e832c3c8ff                CALL 0x00417430
0078b0fe  84c0                      TEST AL,AL
0078b100  0f85cc000000              JNZ 0x0078b1d2
0078b106  8bcf                      MOV ECX,EDI
0078b108  e863c3c8ff                CALL 0x00417470
0078b10d  84c0                      TEST AL,AL
0078b10f  740b                      JZ 0x0078b11c
0078b111  8d8f541e0000              LEA ECX,[EDI + 0x1e54]
0078b117  e8a4150500                CALL 0x007dc6c0
0078b11c  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0078b122  50                        PUSH EAX
0078b123  8d8f541e0000              LEA ECX,[EDI + 0x1e54]
0078b129  e83214e8ff                CALL 0x0060c560
0078b12e  8d45e4                    LEA EAX,[EBP + -0x1c]
0078b131  50                        PUSH EAX
0078b132  8d8f541e0000              LEA ECX,[EDI + 0x1e54]
0078b138  e833e1d0ff                CALL 0x00499270
0078b13d  50                        PUSH EAX
0078b13e  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0078b144  e80713e8ff                CALL 0x0060c450
0078b149  84c0                      TEST AL,AL
0078b14b  0f8478000000              JZ 0x0078b1c9
0078b151  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0078b157  e8c412e8ff                CALL 0x0060c420
0078b15c  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0078b162  ff08                      DEC dword ptr [EAX]
0078b164  e8b712e8ff                CALL 0x0060c420
0078b169  833800                    CMP dword ptr [EAX],0x0
0078b16c  7f31                      JG 0x0078b19f
0078b16e  83ec0c                    SUB ESP,0xc
0078b171  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0078b177  8bcc                      MOV ECX,ESP
0078b179  50                        PUSH EAX
0078b17a  e8d1ebceff                CALL 0x00479d50
0078b17f  8d854cfeffff              LEA EAX,[EBP + 0xfffffe4c]
0078b185  50                        PUSH EAX
0078b186  8d8f541e0000              LEA ECX,[EDI + 0x1e54]
0078b18c  e83f150500                CALL 0x007dc6d0
0078b191  50                        PUSH EAX
0078b192  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0078b198  e893010000                CALL 0x0078b330
0078b19d  eb0b                      JMP 0x0078b1aa
0078b19f  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0078b1a5  e86612e8ff                CALL 0x0060c410
0078b1aa  8d45e4                    LEA EAX,[EBP + -0x1c]
0078b1ad  50                        PUSH EAX
0078b1ae  8d8f541e0000              LEA ECX,[EDI + 0x1e54]
0078b1b4  e8b7e0d0ff                CALL 0x00499270
0078b1b9  50                        PUSH EAX
0078b1ba  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0078b1c0  e88b12e8ff                CALL 0x0060c450
0078b1c5  84c0                      TEST AL,AL
0078b1c7  7588                      JNZ 0x0078b151
0078b1c9  33c0                      XOR EAX,EAX
0078b1cb  668987941d0000            MOV word ptr [EDI + 0x1d94],AX
0078b1d2  80bfa920000000            CMP byte ptr [EDI + 0x20a9],0x0
0078b1d9  742a                      JZ 0x0078b205
0078b1db  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b1e1  e86ac6c8ff                CALL 0x00417850
0078b1e6  8bc8                      MOV ECX,EAX
0078b1e8  e863e3c9ff                CALL 0x00429550
0078b1ed  84c0                      TEST AL,AL
0078b1ef  740a                      JZ 0x0078b1fb
0078b1f1  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0078b1fb  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0078b205  8bcf                      MOV ECX,EDI
0078b207  e8f4040500                CALL 0x007db700
0078b20c  84c0                      TEST AL,AL
0078b20e  740a                      JZ 0x0078b21a
0078b210  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0078b21a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b220  e82bc6c8ff                CALL 0x00417850
0078b225  8bc8                      MOV ECX,EAX
0078b227  e824e3c9ff                CALL 0x00429550
0078b22c  84c0                      TEST AL,AL
0078b22e  741a                      JZ 0x0078b24a
0078b230  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0078b236  e815c6c8ff                CALL 0x00417850
0078b23b  8bc8                      MOV ECX,EAX
0078b23d  e8aec4c8ff                CALL 0x004176f0
0078b242  57                        PUSH EDI
0078b243  8bc8                      MOV ECX,EAX
0078b245  8b10                      MOV EDX,dword ptr [EAX]
0078b247  ff5258                    CALL dword ptr [EDX + 0x58]
0078b24a  6a00                      PUSH 0x0
0078b24c  6800400000                PUSH 0x4000
0078b251  8bcf                      MOV ECX,EDI
0078b253  e8d8c1c8ff                CALL 0x00417430
0078b258  84c0                      TEST AL,AL
0078b25a  750a                      JNZ 0x0078b266
0078b25c  c787b816000000000000      MOV dword ptr [EDI + 0x16b8],0x0
0078b266  8b0d9016c700              MOV ECX,dword ptr [0x00c71690]
0078b26c  57                        PUSH EDI
0078b26d  e8be8e0d00                CALL 0x00864130
0078b272  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0078b275  64890d00000000            MOV dword ptr FS:[0x0],ECX
0078b27c  59                        POP ECX
0078b27d  5f                        POP EDI
0078b27e  5e                        POP ESI
0078b27f  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0078b282  33cd                      XOR ECX,EBP
0078b284  e8a23e3600                CALL 0x00aef12b
0078b289  8be5                      MOV ESP,EBP
0078b28b  5d                        POP EBP
0078b28c  c3                        RET
0078b28d  68c811c800                PUSH 0xc811c8
0078b292  e806403600                CALL 0x00aef29d
0078b297  83c404                    ADD ESP,0x4
0078b29a  833dc811c800ff            CMP dword ptr [0x00c811c8],-0x1
0078b2a1  0f8539bcffff              JNZ 0x00786ee0
0078b2a7  83ec20                    SUB ESP,0x20
0078b2aa  c745fc06000000            MOV dword ptr [EBP + -0x4],0x6
0078b2b1  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0078b2b9  b9cc11c800                MOV ECX,0xc811cc
0078b2be  0f28d8                    MOVAPS XMM3,XMM0
0078b2c1  0f28d0                    MOVAPS XMM2,XMM0
0078b2c4  0f28c8                    MOVAPS XMM1,XMM0
0078b2c7  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
0078b2cf  c74424180ad7a33c          MOV dword ptr [ESP + 0x18],0x3ca3d70a
0078b2d7  c7442414cdcccc3d          MOV dword ptr [ESP + 0x14],0x3dcccccd
0078b2df  c74424100000803f          MOV dword ptr [ESP + 0x10],0x3f800000
0078b2e7  c744240ccdcccc3d          MOV dword ptr [ESP + 0xc],0x3dcccccd
0078b2ef  c74424080000c03f          MOV dword ptr [ESP + 0x8],0x3fc00000
0078b2f7  c744240400000040          MOV dword ptr [ESP + 0x4],0x40000000
0078b2ff  c704240000803f            MOV dword ptr [ESP],0x3f800000
0078b306  e845a8caff                CALL 0x00435b50
0078b30b  68c811c800                PUSH 0xc811c8
0078b310  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0078b317  e8373f3600                CALL 0x00aef253
0078b31c  83c404                    ADD ESP,0x4
0078b31f  e9bcbbffff                JMP 0x00786ee0
