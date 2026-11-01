
D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe:	file format coff-i386

Disassembly of section .text:

0040c200 <epoxy_handle_external_wglMakeCurrent>:
  782af0: 55                           	push	ebp
  782af1: 8b ec                        	mov	ebp, esp
  782af3: 6a ff                        	push	-0x1
  782af5: 68 34 f5 af 00               	push	0xaff534
  782afa: 64 a1 00 00 00 00            	mov	eax, dword ptr fs:[0x0]
  782b00: 50                           	push	eax
  782b01: 81 ec 18 02 00 00            	sub	esp, 0x218
  782b07: a1 b4 93 bf 00               	mov	eax, dword ptr [0xbf93b4]
  782b0c: 33 c5                        	xor	eax, ebp
  782b0e: 89 45 f0                     	mov	dword ptr [ebp - 0x10], eax
  782b11: 56                           	push	esi
  782b12: 57                           	push	edi
  782b13: 50                           	push	eax
  782b14: 8d 45 f4                     	lea	eax, [ebp - 0xc]
  782b17: 64 a3 00 00 00 00            	mov	dword ptr fs:[0x0], eax
  782b1d: 8b f9                        	mov	edi, ecx
  782b1f: 89 bd d0 fe ff ff            	mov	dword ptr [ebp - 0x130], edi
  782b25: 33 c0                        	xor	eax, eax
  782b27: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  782b2d: 89 85 a8 fe ff ff            	mov	dword ptr [ebp - 0x158], eax
  782b33: 39 87 bc 03 00 00            	cmp	dword ptr [edi + 0x3bc], eax
  782b39: 74 4b                        	je	0x782b86 <epoxy_handle_external_wglMakeCurrent+0x376986>
  782b3b: 39 47 2c                     	cmp	dword ptr [edi + 0x2c], eax
  782b3e: 75 46                        	jne	0x782b86 <epoxy_handle_external_wglMakeCurrent+0x376986>
  782b40: 39 87 d4 20 00 00            	cmp	dword ptr [edi + 0x20d4], eax
  782b46: 75 3e                        	jne	0x782b86 <epoxy_handle_external_wglMakeCurrent+0x376986>
  782b48: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  782b4e: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  782b54: 57                           	push	edi
  782b55: 50                           	push	eax
  782b56: 8d 89 04 da 01 00            	lea	ecx, [ecx + 0x1da04]
  782b5c: e8 9f 59 22 00               	call	0x9a8500 <epoxy_handle_external_wglMakeCurrent+0x59c300>
  782b61: 50                           	push	eax
  782b62: 8d 8f d4 20 00 00            	lea	ecx, [edi + 0x20d4]
  782b68: c7 45 fc 00 00 00 00         	mov	dword ptr [ebp - 0x4], 0x0
  782b6f: e8 5c a8 05 00               	call	0x7dd3d0 <epoxy_handle_external_wglMakeCurrent+0x3d11d0>
  782b74: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  782b7a: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  782b81: e8 da 9a 05 00               	call	0x7dc660 <epoxy_handle_external_wglMakeCurrent+0x3d0460>
  782b86: 8b 8f d4 20 00 00            	mov	ecx, dword ptr [edi + 0x20d4]
  782b8c: 85 c9                        	test	ecx, ecx
  782b8e: 74 05                        	je	0x782b95 <epoxy_handle_external_wglMakeCurrent+0x376995>
  782b90: e8 9b f6 0b 00               	call	0x842230 <epoxy_handle_external_wglMakeCurrent+0x436030>
  782b95: 8d 8f d8 26 00 00            	lea	ecx, [edi + 0x26d8]
  782b9b: e8 40 d8 ca ff               	call	0x4303e0 <epoxy_handle_external_wglMakeCurrent+0x241e0>
  782ba0: 8b b7 80 1e 00 00            	mov	esi, dword ptr [edi + 0x1e80]
  782ba6: 85 f6                        	test	esi, esi
  782ba8: 0f 84 80 00 00 00            	je	0x782c2e <epoxy_handle_external_wglMakeCurrent+0x376a2e>
  782bae: 8b cf                        	mov	ecx, edi
  782bb0: e8 8b 17 05 00               	call	0x7d4340 <epoxy_handle_external_wglMakeCurrent+0x3c8140>
  782bb5: f3 0f 59 05 b0 a4 ba 00      	mulss	xmm0, dword ptr [0xbaa4b0]
  782bbd: f3 0f 11 86 78 04 00 00      	movss	dword ptr [esi + 0x478], xmm0
  782bc5: 8b 87 80 1e 00 00            	mov	eax, dword ptr [edi + 0x1e80]
  782bcb: c7 80 4c 03 00 00 00 00 00 00	mov	dword ptr [eax + 0x34c], 0x0
  782bd5: c7 80 50 03 00 00 00 00 70 c1	mov	dword ptr [eax + 0x350], 0xc1700000
  782bdf: 8b 87 68 01 00 00            	mov	eax, dword ptr [edi + 0x168]
  782be5: 8b 8f 80 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e80]
  782beb: 25 00 40 00 00               	and	eax, 0x4000
  782bf0: 83 c8 00                     	or	eax, 0x0
  782bf3: 74 0a                        	je	0x782bff <epoxy_handle_external_wglMakeCurrent+0x3769ff>
  782bf5: f3 0f 10 0d d0 a2 ba 00      	movss	xmm1, dword ptr [0xbaa2d0]
  782bfd: eb 03                        	jmp	0x782c02 <epoxy_handle_external_wglMakeCurrent+0x376a02>
  782bff: 0f 57 c9                     	xorps	xmm1, xmm1
  782c02: a1 78 16 c7 00               	mov	eax, dword ptr [0xc71678]
  782c07: be 68 01 00 00               	mov	esi, 0x168
  782c0c: 8b 80 f8 64 02 00            	mov	eax, dword ptr [eax + 0x264f8]
  782c12: 2b 87 28 03 00 00            	sub	eax, dword ptr [edi + 0x328]
  782c18: 99                           	cdq
  782c19: f7 fe                        	idiv	esi
  782c1b: 66 0f 6e c2                  	movd	xmm0, edx
  782c1f: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  782c22: f3 0f 58 c1                  	addss	xmm0, xmm1
  782c26: f3 0f 11 81 ec 00 00 00      	movss	dword ptr [ecx + 0xec], xmm0
  782c2e: 8b 87 c0 13 00 00            	mov	eax, dword ptr [edi + 0x13c0]
  782c34: 83 f8 1d                     	cmp	eax, 0x1d
  782c37: 74 09                        	je	0x782c42 <epoxy_handle_external_wglMakeCurrent+0x376a42>
  782c39: 83 f8 26                     	cmp	eax, 0x26
  782c3c: 0f 85 03 04 00 00            	jne	0x783045 <epoxy_handle_external_wglMakeCurrent+0x376e45>
  782c42: 8b 87 6c 1e 00 00            	mov	eax, dword ptr [edi + 0x1e6c]
  782c48: 85 c0                        	test	eax, eax
  782c4a: 0f 84 5e 02 00 00            	je	0x782eae <epoxy_handle_external_wglMakeCurrent+0x376cae>
  782c50: 8a 80 70 01 00 00            	mov	al, byte ptr [eax + 0x170]
  782c56: 84 c0                        	test	al, al
  782c58: 0f 85 50 02 00 00            	jne	0x782eae <epoxy_handle_external_wglMakeCurrent+0x376cae>
  782c5e: 6a 00                        	push	0x0
  782c60: 68 6b 02 00 00               	push	0x26b
  782c65: 8b cf                        	mov	ecx, edi
  782c67: e8 74 da fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  782c6c: 84 c0                        	test	al, al
  782c6e: 75 1a                        	jne	0x782c8a <epoxy_handle_external_wglMakeCurrent+0x376a8a>
  782c70: 8b 8f 6c 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e6c]
  782c76: 6a 00                        	push	0x0
  782c78: 68 6b 02 00 00               	push	0x26b
  782c7d: e8 5e da fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  782c82: 84 c0                        	test	al, al
  782c84: 0f 84 24 02 00 00            	je	0x782eae <epoxy_handle_external_wglMakeCurrent+0x376cae>
  782c8a: ff b7 6c 1e 00 00            	push	dword ptr [edi + 0x1e6c]
  782c90: 8d b7 68 1e 00 00            	lea	esi, [edi + 0x1e68]
  782c96: 8b ce                        	mov	ecx, esi
  782c98: 89 b5 b8 fe ff ff            	mov	dword ptr [ebp - 0x148], esi
  782c9e: e8 2d c5 d4 ff               	call	0x4cf1d0 <epoxy_handle_external_wglMakeCurrent+0xc2fd0>
  782ca3: 8b 8f 6c 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e6c]
  782ca9: 57                           	push	edi
  782caa: 81 c1 68 1e 00 00            	add	ecx, 0x1e68
  782cb0: e8 1b c5 d4 ff               	call	0x4cf1d0 <epoxy_handle_external_wglMakeCurrent+0xc2fd0>
  782cb5: 8b 87 6c 1e 00 00            	mov	eax, dword ptr [edi + 0x1e6c]
  782cbb: 8b ce                        	mov	ecx, esi
  782cbd: c7 80 6c 1e 00 00 00 00 00 00	mov	dword ptr [eax + 0x1e6c], 0x0
  782cc7: 8b 87 18 16 00 00            	mov	eax, dword ptr [edi + 0x1618]
  782ccd: c7 87 6c 1e 00 00 00 00 00 00	mov	dword ptr [edi + 0x1e6c], 0x0
  782cd7: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  782cdd: e8 be 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782ce2: 80 b8 e8 20 00 00 00         	cmp	byte ptr [eax + 0x20e8], 0x0
  782ce9: 74 5a                        	je	0x782d45 <epoxy_handle_external_wglMakeCurrent+0x376b45>
  782ceb: 8b ce                        	mov	ecx, esi
  782ced: e8 ae 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782cf2: 8d 8f 68 1e 00 00            	lea	ecx, [edi + 0x1e68]
  782cf8: 8b f0                        	mov	esi, eax
  782cfa: e8 a1 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782cff: 05 ec 20 00 00               	add	eax, 0x20ec
  782d04: 8b ce                        	mov	ecx, esi
  782d06: 50                           	push	eax
  782d07: e8 a4 b7 02 00               	call	0x7ae4b0 <epoxy_handle_external_wglMakeCurrent+0x3a22b0>
  782d0c: 8d 8f 68 1e 00 00            	lea	ecx, [edi + 0x1e68]
  782d12: e8 89 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782d17: 8d 8f 68 1e 00 00            	lea	ecx, [edi + 0x1e68]
  782d1d: 8b f0                        	mov	esi, eax
  782d1f: e8 7c 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782d24: 05 ec 20 00 00               	add	eax, 0x20ec
  782d29: 8b ce                        	mov	ecx, esi
  782d2b: 50                           	push	eax
  782d2c: e8 3f d3 02 00               	call	0x7b0070 <epoxy_handle_external_wglMakeCurrent+0x3a3e70>
  782d31: 8d b7 68 1e 00 00            	lea	esi, [edi + 0x1e68]
  782d37: 8b ce                        	mov	ecx, esi
  782d39: e8 62 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782d3e: c6 80 e8 20 00 00 00         	mov	byte ptr [eax + 0x20e8], 0x0
  782d45: 6a 01                        	push	0x1
  782d47: ff b5 e4 fe ff ff            	push	dword ptr [ebp - 0x11c]
  782d4d: 8b cf                        	mov	ecx, edi
  782d4f: e8 fc 36 02 00               	call	0x7a6450 <epoxy_handle_external_wglMakeCurrent+0x39a250>
  782d54: 8b ce                        	mov	ecx, esi
  782d56: e8 45 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782d5b: 80 b8 24 18 00 00 00         	cmp	byte ptr [eax + 0x1824], 0x0
  782d62: 75 0e                        	jne	0x782d72 <epoxy_handle_external_wglMakeCurrent+0x376b72>
  782d64: 8b ce                        	mov	ecx, esi
  782d66: e8 35 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782d6b: 8b c8                        	mov	ecx, eax
  782d6d: e8 ce 99 03 00               	call	0x7bc740 <epoxy_handle_external_wglMakeCurrent+0x3b0540>
  782d72: 8b ce                        	mov	ecx, esi
  782d74: e8 27 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782d79: 8b ce                        	mov	ecx, esi
  782d7b: c6 80 72 01 00 00 01         	mov	byte ptr [eax + 0x172], 0x1
  782d82: e8 19 96 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782d87: 8b b5 d0 fe ff ff            	mov	esi, dword ptr [ebp - 0x130]
  782d8d: 8b f8                        	mov	edi, eax
  782d8f: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  782d95: 50                           	push	eax
  782d96: e8 d5 c2 ef ff               	call	0x67f070 <epoxy_handle_external_wglMakeCurrent+0x272e70>
  782d9b: 50                           	push	eax
  782d9c: 8d 95 e4 fe ff ff            	lea	edx, [ebp - 0x11c]
  782da2: c7 85 e4 fe ff ff 00 00 70 41	mov	dword ptr [ebp - 0x11c], 0x41700000
  782dac: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  782db2: e8 19 44 c9 ff               	call	0x4171d0 <epoxy_handle_external_wglMakeCurrent+0xafd0>
  782db7: 83 c4 08                     	add	esp, 0x8
  782dba: 8d 8e 3c 03 00 00            	lea	ecx, [esi + 0x33c]
  782dc0: 50                           	push	eax
  782dc1: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  782dc7: 50                           	push	eax
  782dc8: e8 53 d6 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  782dcd: 50                           	push	eax
  782dce: 8b cf                        	mov	ecx, edi
  782dd0: e8 1b 5b ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  782dd5: 8b 8d b8 fe ff ff            	mov	ecx, dword ptr [ebp - 0x148]
  782ddb: e8 c0 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782de0: 8b fe                        	mov	edi, esi
  782de2: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  782de8: 51                           	push	ecx
  782de9: 8b c8                        	mov	ecx, eax
  782deb: e8 20 5b ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  782df0: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  782df6: e8 65 4a c9 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  782dfb: 8d 8f 68 1e 00 00            	lea	ecx, [edi + 0x1e68]
  782e01: 8b f0                        	mov	esi, eax
  782e03: e8 98 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e08: 50                           	push	eax
  782e09: 8b ce                        	mov	ecx, esi
  782e0b: e8 50 71 23 00               	call	0x9b9f60 <epoxy_handle_external_wglMakeCurrent+0x5add60>
  782e10: 8d b7 68 1e 00 00            	lea	esi, [edi + 0x1e68]
  782e16: 6a ff                        	push	-0x1
  782e18: 8b ce                        	mov	ecx, esi
  782e1a: e8 81 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e1f: 50                           	push	eax
  782e20: 8b cf                        	mov	ecx, edi
  782e22: e8 79 68 fd ff               	call	0x7596a0 <epoxy_handle_external_wglMakeCurrent+0x34d4a0>
  782e27: 8b ce                        	mov	ecx, esi
  782e29: e8 72 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e2e: 0f 57 c0                     	xorps	xmm0, xmm0
  782e31: 8b ce                        	mov	ecx, esi
  782e33: 0f 11 80 f0 13 00 00         	movups	xmmword ptr [eax + 0x13f0], xmm0
  782e3a: c6 80 00 14 00 00 00         	mov	byte ptr [eax + 0x1400], 0x0
  782e41: e8 5a 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e46: 8b ce                        	mov	ecx, esi
  782e48: c7 80 74 15 00 00 ff ff 00 00	mov	dword ptr [eax + 0x1574], 0xffff
  782e52: e8 49 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e57: 8b c8                        	mov	ecx, eax
  782e59: e8 12 07 fe ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  782e5e: 8b ce                        	mov	ecx, esi
  782e60: e8 3b 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e65: 8b ce                        	mov	ecx, esi
  782e67: c6 80 10 04 00 00 01         	mov	byte ptr [eax + 0x410], 0x1
  782e6e: e8 2d 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e73: 8d 88 1c 04 00 00            	lea	ecx, [eax + 0x41c]
  782e79: e8 92 50 c8 ff               	call	0x407f10 <.text+0x6f10>
  782e7e: 8b ce                        	mov	ecx, esi
  782e80: e8 1b 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e85: 8b ce                        	mov	ecx, esi
  782e87: c6 80 9a 13 00 00 00         	mov	byte ptr [eax + 0x139a], 0x0
  782e8e: e8 0d 95 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782e93: 8d 48 48                     	lea	ecx, [eax + 0x48]
  782e96: e8 c5 78 c8 ff               	call	0x40a760 <.text+0x9760>
  782e9b: 8b ce                        	mov	ecx, esi
  782e9d: e8 fe 94 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782ea2: c6 80 98 13 00 00 00         	mov	byte ptr [eax + 0x1398], 0x0
  782ea9: e9 97 01 00 00               	jmp	0x783045 <epoxy_handle_external_wglMakeCurrent+0x376e45>
  782eae: 8d b7 68 1e 00 00            	lea	esi, [edi + 0x1e68]
  782eb4: 8b ce                        	mov	ecx, esi
  782eb6: e8 e5 94 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782ebb: 85 c0                        	test	eax, eax
  782ebd: 0f 84 82 01 00 00            	je	0x783045 <epoxy_handle_external_wglMakeCurrent+0x376e45>
  782ec3: 6a 00                        	push	0x0
  782ec5: 68 6b 02 00 00               	push	0x26b
  782eca: 8b cf                        	mov	ecx, edi
  782ecc: e8 0f d8 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  782ed1: 84 c0                        	test	al, al
  782ed3: 0f 85 6c 01 00 00            	jne	0x783045 <epoxy_handle_external_wglMakeCurrent+0x376e45>
  782ed9: 8b ce                        	mov	ecx, esi
  782edb: e8 c0 94 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782ee0: 6a 00                        	push	0x0
  782ee2: 68 6b 02 00 00               	push	0x26b
  782ee7: 8b c8                        	mov	ecx, eax
  782ee9: e8 f2 d7 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  782eee: 84 c0                        	test	al, al
  782ef0: 0f 85 4f 01 00 00            	jne	0x783045 <epoxy_handle_external_wglMakeCurrent+0x376e45>
  782ef6: 8b cf                        	mov	ecx, edi
  782ef8: e8 03 88 05 00               	call	0x7db700 <epoxy_handle_external_wglMakeCurrent+0x3cf500>
  782efd: 84 c0                        	test	al, al
  782eff: 0f 85 40 01 00 00            	jne	0x783045 <epoxy_handle_external_wglMakeCurrent+0x376e45>
  782f05: 8b ce                        	mov	ecx, esi
  782f07: e8 94 94 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782f0c: 8b ce                        	mov	ecx, esi
  782f0e: 89 87 6c 1e 00 00            	mov	dword ptr [edi + 0x1e6c], eax
  782f14: e8 87 94 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782f19: 6a 00                        	push	0x0
  782f1b: 8b ce                        	mov	ecx, esi
  782f1d: 89 b8 6c 1e 00 00            	mov	dword ptr [eax + 0x1e6c], edi
  782f23: e8 78 94 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  782f28: 8d 88 68 1e 00 00            	lea	ecx, [eax + 0x1e68]
  782f2e: e8 9d c2 d4 ff               	call	0x4cf1d0 <epoxy_handle_external_wglMakeCurrent+0xc2fd0>
  782f33: 6a 00                        	push	0x0
  782f35: 8b ce                        	mov	ecx, esi
  782f37: e8 94 c2 d4 ff               	call	0x4cf1d0 <epoxy_handle_external_wglMakeCurrent+0xc2fd0>
  782f3c: 8b 8f 6c 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e6c]
  782f42: 6a 00                        	push	0x0
  782f44: e8 37 37 02 00               	call	0x7a6680 <epoxy_handle_external_wglMakeCurrent+0x39a480>
  782f49: 8b 8f 6c 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e6c]
  782f4f: 6a 00                        	push	0x0
  782f51: e8 4a 44 c9 ff               	call	0x4173a0 <epoxy_handle_external_wglMakeCurrent+0xb1a0>
  782f56: 8b 87 6c 1e 00 00            	mov	eax, dword ptr [edi + 0x1e6c]
  782f5c: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  782f62: c6 80 72 01 00 00 00         	mov	byte ptr [eax + 0x172], 0x0
  782f69: 8b 87 6c 1e 00 00            	mov	eax, dword ptr [edi + 0x1e6c]
  782f6f: c7 80 1c 16 00 00 ff ff ff ff	mov	dword ptr [eax + 0x161c], 0xffffffff
  782f79: e8 02 45 c8 ff               	call	0x407480 <.text+0x6480>
  782f7e: 8b c8                        	mov	ecx, eax
  782f80: e8 db 5a ca ff               	call	0x428a60 <epoxy_handle_external_wglMakeCurrent+0x1c860>
  782f85: 6a 00                        	push	0x0
  782f87: 6a 00                        	push	0x0
  782f89: 6a ff                        	push	-0x1
  782f8b: 6a ff                        	push	-0x1
  782f8d: 6a 03                        	push	0x3
  782f8f: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  782f92: 51                           	push	ecx
  782f93: 8b c8                        	mov	ecx, eax
  782f95: e8 c6 7f c9 ff               	call	0x41af60 <epoxy_handle_external_wglMakeCurrent+0xed60>
  782f9a: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  782f9d: c7 45 fc 01 00 00 00         	mov	dword ptr [ebp - 0x4], 0x1
  782fa4: 33 f6                        	xor	esi, esi
  782fa6: e8 45 47 c9 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  782fab: 85 c0                        	test	eax, eax
  782fad: 74 39                        	je	0x782fe8 <epoxy_handle_external_wglMakeCurrent+0x376de8>
  782faf: 90                           	nop
  782fb0: 56                           	push	esi
  782fb1: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  782fb4: e8 67 46 c9 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  782fb9: 8b 00                        	mov	eax, dword ptr [eax]
  782fbb: 8b c8                        	mov	ecx, eax
  782fbd: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  782fc3: e8 28 32 cb ff               	call	0x4361f0 <epoxy_handle_external_wglMakeCurrent+0x29ff0>
  782fc8: 3b 87 6c 1e 00 00            	cmp	eax, dword ptr [edi + 0x1e6c]
  782fce: 75 0b                        	jne	0x782fdb <epoxy_handle_external_wglMakeCurrent+0x376ddb>
  782fd0: 8b 8d e4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x11c]
  782fd6: 8b 01                        	mov	eax, dword ptr [ecx]
  782fd8: ff 50 28                     	call	dword ptr [eax + 0x28]
  782fdb: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  782fde: 46                           	inc	esi
  782fdf: e8 0c 47 c9 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  782fe4: 3b f0                        	cmp	esi, eax
  782fe6: 72 c8                        	jb	0x782fb0 <epoxy_handle_external_wglMakeCurrent+0x376db0>
  782fe8: e8 73 bf f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  782fed: 8b 8f 6c 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e6c]
  782ff3: 8b f0                        	mov	esi, eax
  782ff5: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  782ffb: 50                           	push	eax
  782ffc: e8 8f 42 c9 ff               	call	0x417290 <epoxy_handle_external_wglMakeCurrent+0xb090>
  783001: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783007: 56                           	push	esi
  783008: 6a 00                        	push	0x0
  78300a: 6a 00                        	push	0x0
  78300c: 68 40 b6 c7 00               	push	0xc7b640
  783011: 50                           	push	eax
  783012: 6a 0f                        	push	0xf
  783014: 68 e8 03 00 00               	push	0x3e8
  783019: e8 02 5b ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  78301e: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783024: e8 37 48 c9 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  783029: ff b7 6c 1e 00 00            	push	dword ptr [edi + 0x1e6c]
  78302f: 8b c8                        	mov	ecx, eax
  783031: e8 8a 6f 23 00               	call	0x9b9fc0 <epoxy_handle_external_wglMakeCurrent+0x5addc0>
  783036: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  783039: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  783040: e8 6b 45 c9 ff               	call	0x4175b0 <epoxy_handle_external_wglMakeCurrent+0xb3b0>
  783045: 6a 00                        	push	0x0
  783047: 68 00 40 00 00               	push	0x4000
  78304c: 8b cf                        	mov	ecx, edi
  78304e: e8 dd 43 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783053: 84 c0                        	test	al, al
  783055: 75 71                        	jne	0x7830c8 <epoxy_handle_external_wglMakeCurrent+0x376ec8>
  783057: 0f b7 87 94 1d 00 00         	movzx	eax, word ptr [edi + 0x1d94]
  78305e: 66 3b 87 96 1d 00 00         	cmp	ax, word ptr [edi + 0x1d96]
  783065: 74 19                        	je	0x783080 <epoxy_handle_external_wglMakeCurrent+0x376e80>
  783067: 83 8f 74 15 00 00 01         	or	dword ptr [edi + 0x1574], 0x1
  78306e: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  783074: 66 89 87 96 1d 00 00         	mov	word ptr [edi + 0x1d96], ax
  78307b: e8 30 2f cb ff               	call	0x435fb0 <epoxy_handle_external_wglMakeCurrent+0x29db0>
  783080: 8b cf                        	mov	ecx, edi
  783082: e8 09 43 c9 ff               	call	0x417390 <epoxy_handle_external_wglMakeCurrent+0xb190>
  783087: 84 c0                        	test	al, al
  783089: 74 3d                        	je	0x7830c8 <epoxy_handle_external_wglMakeCurrent+0x376ec8>
  78308b: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783091: e8 4a da c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  783096: 8b c8                        	mov	ecx, eax
  783098: e8 93 bd 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  78309d: 84 c0                        	test	al, al
  78309f: 75 27                        	jne	0x7830c8 <epoxy_handle_external_wglMakeCurrent+0x376ec8>
  7830a1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7830a7: e8 a4 5a ca ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  7830ac: 8b c8                        	mov	ecx, eax
  7830ae: e8 7d bd 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  7830b3: 84 c0                        	test	al, al
  7830b5: 75 11                        	jne	0x7830c8 <epoxy_handle_external_wglMakeCurrent+0x376ec8>
  7830b7: 38 87 c4 1f 00 00            	cmp	byte ptr [edi + 0x1fc4], al
  7830bd: 74 09                        	je	0x7830c8 <epoxy_handle_external_wglMakeCurrent+0x376ec8>
  7830bf: 6a 01                        	push	0x1
  7830c1: 8b cf                        	mov	ecx, edi
  7830c3: e8 d8 1a 02 00               	call	0x7a4ba0 <epoxy_handle_external_wglMakeCurrent+0x3989a0>
  7830c8: 8b cf                        	mov	ecx, edi
  7830ca: e8 c1 42 c9 ff               	call	0x417390 <epoxy_handle_external_wglMakeCurrent+0xb190>
  7830cf: 84 c0                        	test	al, al
  7830d1: 75 2c                        	jne	0x7830ff <epoxy_handle_external_wglMakeCurrent+0x376eff>
  7830d3: 81 7f 34 88 03 00 00         	cmp	dword ptr [edi + 0x34], 0x388
  7830da: 75 23                        	jne	0x7830ff <epoxy_handle_external_wglMakeCurrent+0x376eff>
  7830dc: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  7830e2: e8 79 d0 c9 ff               	call	0x420160 <epoxy_handle_external_wglMakeCurrent+0x13f60>
  7830e7: 84 c0                        	test	al, al
  7830e9: 0f 84 83 81 00 00            	je	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  7830ef: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  7830f5: e8 06 60 c8 ff               	call	0x409100 <.text+0x8100>
  7830fa: e9 73 81 00 00               	jmp	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  7830ff: 6a 00                        	push	0x0
  783101: 68 00 40 00 00               	push	0x4000
  783106: 8b cf                        	mov	ecx, edi
  783108: e8 23 43 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78310d: 84 c0                        	test	al, al
  78310f: 75 58                        	jne	0x783169 <epoxy_handle_external_wglMakeCurrent+0x376f69>
  783111: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783117: e8 c4 d9 c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  78311c: 8b c8                        	mov	ecx, eax
  78311e: e8 0d bd 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  783123: 84 c0                        	test	al, al
  783125: 75 42                        	jne	0x783169 <epoxy_handle_external_wglMakeCurrent+0x376f69>
  783127: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78312d: e8 1e 5a ca ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  783132: 8b c8                        	mov	ecx, eax
  783134: e8 f7 bc 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  783139: 84 c0                        	test	al, al
  78313b: 75 2c                        	jne	0x783169 <epoxy_handle_external_wglMakeCurrent+0x376f69>
  78313d: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783143: e8 38 43 c8 ff               	call	0x407480 <.text+0x6480>
  783148: 8b c8                        	mov	ecx, eax
  78314a: e8 61 4a 0a 00               	call	0x827bb0 <epoxy_handle_external_wglMakeCurrent+0x41b9b0>
  78314f: 3a 87 2c 20 00 00            	cmp	al, byte ptr [edi + 0x202c]
  783155: 74 12                        	je	0x783169 <epoxy_handle_external_wglMakeCurrent+0x376f69>
  783157: 8b cf                        	mov	ecx, edi
  783159: 84 c0                        	test	al, al
  78315b: 74 07                        	je	0x783164 <epoxy_handle_external_wglMakeCurrent+0x376f64>
  78315d: e8 1e 58 05 00               	call	0x7d8980 <epoxy_handle_external_wglMakeCurrent+0x3cc780>
  783162: eb 05                        	jmp	0x783169 <epoxy_handle_external_wglMakeCurrent+0x376f69>
  783164: e8 b7 5b 05 00               	call	0x7d8d20 <epoxy_handle_external_wglMakeCurrent+0x3ccb20>
  783169: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  78316d: 0f 85 9a 00 00 00            	jne	0x78320d <epoxy_handle_external_wglMakeCurrent+0x37700d>
  783173: 8b cf                        	mov	ecx, edi
  783175: e8 f6 42 c9 ff               	call	0x417470 <epoxy_handle_external_wglMakeCurrent+0xb270>
  78317a: 84 c0                        	test	al, al
  78317c: 0f 85 8b 00 00 00            	jne	0x78320d <epoxy_handle_external_wglMakeCurrent+0x37700d>
  783182: 6a 00                        	push	0x0
  783184: 6a 67                        	push	0x67
  783186: 8b cf                        	mov	ecx, edi
  783188: e8 c3 e3 fe ff               	call	0x771550 <epoxy_handle_external_wglMakeCurrent+0x365350>
  78318d: 84 c0                        	test	al, al
  78318f: 74 4c                        	je	0x7831dd <epoxy_handle_external_wglMakeCurrent+0x376fdd>
  783191: 8b cf                        	mov	ecx, edi
  783193: e8 98 9d ed ff               	call	0x65cf30 <epoxy_handle_external_wglMakeCurrent+0x250d30>
  783198: 8b cf                        	mov	ecx, edi
  78319a: 8b f0                        	mov	esi, eax
  78319c: e8 2f 6c d1 ff               	call	0x499dd0 <epoxy_handle_external_wglMakeCurrent+0x8dbd0>
  7831a1: 3b f0                        	cmp	esi, eax
  7831a3: 75 38                        	jne	0x7831dd <epoxy_handle_external_wglMakeCurrent+0x376fdd>
  7831a5: 8b cf                        	mov	ecx, edi
  7831a7: e8 24 6c d1 ff               	call	0x499dd0 <epoxy_handle_external_wglMakeCurrent+0x8dbd0>
  7831ac: 8b cf                        	mov	ecx, edi
  7831ae: 8b f0                        	mov	esi, eax
  7831b0: e8 ab e5 e2 ff               	call	0x5b1760 <epoxy_handle_external_wglMakeCurrent+0x1a5560>
  7831b5: 3b f0                        	cmp	esi, eax
  7831b7: 75 24                        	jne	0x7831dd <epoxy_handle_external_wglMakeCurrent+0x376fdd>
  7831b9: 6a 67                        	push	0x67
  7831bb: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  7831c1: e8 7a d4 1a 00               	call	0x930640 <epoxy_handle_external_wglMakeCurrent+0x524440>
  7831c6: 84 c0                        	test	al, al
  7831c8: 75 43                        	jne	0x78320d <epoxy_handle_external_wglMakeCurrent+0x37700d>
  7831ca: 6a 01                        	push	0x1
  7831cc: 6a 01                        	push	0x1
  7831ce: 6a 67                        	push	0x67
  7831d0: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  7831d6: e8 55 d1 1a 00               	call	0x930330 <epoxy_handle_external_wglMakeCurrent+0x524130>
  7831db: eb 20                        	jmp	0x7831fd <epoxy_handle_external_wglMakeCurrent+0x376ffd>
  7831dd: 6a 67                        	push	0x67
  7831df: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  7831e5: e8 56 d4 1a 00               	call	0x930640 <epoxy_handle_external_wglMakeCurrent+0x524440>
  7831ea: 84 c0                        	test	al, al
  7831ec: 74 1f                        	je	0x78320d <epoxy_handle_external_wglMakeCurrent+0x37700d>
  7831ee: 6a 01                        	push	0x1
  7831f0: 6a 67                        	push	0x67
  7831f2: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  7831f8: e8 f3 d2 1a 00               	call	0x9304f0 <epoxy_handle_external_wglMakeCurrent+0x5242f0>
  7831fd: 6a 02                        	push	0x2
  7831ff: 8b cf                        	mov	ecx, edi
  783201: e8 5a 2f cb ff               	call	0x436160 <epoxy_handle_external_wglMakeCurrent+0x29f60>
  783206: 8b cf                        	mov	ecx, edi
  783208: e8 63 03 fe ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  78320d: 83 7f 2c 02                  	cmp	dword ptr [edi + 0x2c], 0x2
  783211: 0f 85 fd 01 00 00            	jne	0x783414 <epoxy_handle_external_wglMakeCurrent+0x377214>
  783217: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78321d: e8 fe 46 c9 ff               	call	0x417920 <epoxy_handle_external_wglMakeCurrent+0xb720>
  783222: 8b c8                        	mov	ecx, eax
  783224: e8 c7 46 c9 ff               	call	0x4178f0 <epoxy_handle_external_wglMakeCurrent+0xb6f0>
  783229: 84 c0                        	test	al, al
  78322b: 74 5d                        	je	0x78328a <epoxy_handle_external_wglMakeCurrent+0x37708a>
  78322d: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  783233: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  783239: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  78323e: 50                           	push	eax
  78323f: e8 4c d1 29 00               	call	0xa20390 <epoxy_handle_external_wglMakeCurrent+0x614190>
  783244: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  78324a: c7 45 fc 02 00 00 00         	mov	dword ptr [ebp - 0x4], 0x2
  783251: e8 4a 91 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  783256: 85 c0                        	test	eax, eax
  783258: 0f 84 e0 00 00 00            	je	0x78333e <epoxy_handle_external_wglMakeCurrent+0x37713e>
  78325e: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  783264: e8 37 91 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  783269: 8b c8                        	mov	ecx, eax
  78326b: e8 80 06 fd ff               	call	0x7538f0 <epoxy_handle_external_wglMakeCurrent+0x3476f0>
  783270: 84 c0                        	test	al, al
  783272: 0f 84 c6 00 00 00            	je	0x78333e <epoxy_handle_external_wglMakeCurrent+0x37713e>
  783278: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  78327e: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  783285: e8 26 10 ca ff               	call	0x4242b0 <epoxy_handle_external_wglMakeCurrent+0x180b0>
  78328a: 6a 00                        	push	0x0
  78328c: 68 00 40 00 00               	push	0x4000
  783291: 8b cf                        	mov	ecx, edi
  783293: e8 98 41 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783298: 83 bf c4 03 00 00 00         	cmp	dword ptr [edi + 0x3c4], 0x0
  78329f: 0f 84 be 00 00 00            	je	0x783363 <epoxy_handle_external_wglMakeCurrent+0x377163>
  7832a5: f3 0f 10 87 34 03 00 00      	movss	xmm0, dword ptr [edi + 0x334]
  7832ad: 8d 95 e4 fe ff ff            	lea	edx, [ebp - 0x11c]
  7832b3: f3 0f 58 05 20 a1 ba 00      	addss	xmm0, dword ptr [0xbaa120]
  7832bb: 8d 8d b8 fe ff ff            	lea	ecx, [ebp - 0x148]
  7832c1: c7 85 e4 fe ff ff 00 00 80 3f	mov	dword ptr [ebp - 0x11c], 0x3f800000
  7832cb: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  7832d3: e8 a8 94 c8 ff               	call	0x40c780 <epoxy_handle_external_wglMakeCurrent+0x580>
  7832d8: 8b 8f c4 03 00 00            	mov	ecx, dword ptr [edi + 0x3c4]
  7832de: f3 0f 10 00                  	movss	xmm0, dword ptr [eax]
  7832e2: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  7832e8: 50                           	push	eax
  7832e9: f3 0f 11 85 e4 fe ff ff      	movss	dword ptr [ebp - 0x11c], xmm0
  7832f1: f3 0f 11 87 34 03 00 00      	movss	dword ptr [edi + 0x334], xmm0
  7832f9: e8 92 3f c9 ff               	call	0x417290 <epoxy_handle_external_wglMakeCurrent+0xb090>
  7832fe: f3 0f 10 9d e4 fe ff ff      	movss	xmm3, dword ptr [ebp - 0x11c]
  783306: 8d 97 3c 03 00 00            	lea	edx, [edi + 0x33c]
  78330c: 6a 00                        	push	0x0
  78330e: 50                           	push	eax
  78330f: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  783315: e8 a6 ce 28 00               	call	0xa101c0 <epoxy_handle_external_wglMakeCurrent+0x603fc0>
  78331a: 83 c4 08                     	add	esp, 0x8
  78331d: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  783323: 50                           	push	eax
  783324: e8 87 a0 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  783329: 68 40 b6 c7 00               	push	0xc7b640
  78332e: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  783334: e8 77 a0 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  783339: e9 34 7f 00 00               	jmp	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  78333e: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783344: e8 17 45 c9 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  783349: 6a 00                        	push	0x0
  78334b: 57                           	push	edi
  78334c: 8b c8                        	mov	ecx, eax
  78334e: e8 ad 6c 23 00               	call	0x9ba000 <epoxy_handle_external_wglMakeCurrent+0x5ade00>
  783353: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  783359: e8 52 0f ca ff               	call	0x4242b0 <epoxy_handle_external_wglMakeCurrent+0x180b0>
  78335e: e9 0f 7f 00 00               	jmp	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  783363: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783369: e8 12 41 c8 ff               	call	0x407480 <.text+0x6480>
  78336e: 8b c8                        	mov	ecx, eax
  783370: e8 db 56 ca ff               	call	0x428a50 <epoxy_handle_external_wglMakeCurrent+0x1c850>
  783375: 8b c8                        	mov	ecx, eax
  783377: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  78337d: 33 f6                        	xor	esi, esi
  78337f: e8 6c 43 c9 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  783384: 85 c0                        	test	eax, eax
  783386: 0f 84 e6 7e 00 00            	je	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  78338c: 0f 1f 40 00                  	nop	dword ptr [eax]
  783390: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  783396: 56                           	push	esi
  783397: e8 74 42 c9 ff               	call	0x417610 <epoxy_handle_external_wglMakeCurrent+0xb410>
  78339c: 8b c8                        	mov	ecx, eax
  78339e: e8 5d 2a cb ff               	call	0x435e00 <epoxy_handle_external_wglMakeCurrent+0x29c00>
  7833a3: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  7833a9: 85 c0                        	test	eax, eax
  7833ab: 74 0b                        	je	0x7833b8 <epoxy_handle_external_wglMakeCurrent+0x3771b8>
  7833ad: 8b c8                        	mov	ecx, eax
  7833af: e8 dc 55 f5 ff               	call	0x6d8990 <epoxy_handle_external_wglMakeCurrent+0x2cc790>
  7833b4: 84 c0                        	test	al, al
  7833b6: 75 15                        	jne	0x7833cd <epoxy_handle_external_wglMakeCurrent+0x3771cd>
  7833b8: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  7833be: 46                           	inc	esi
  7833bf: e8 2c 43 c9 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  7833c4: 3b f0                        	cmp	esi, eax
  7833c6: 72 c8                        	jb	0x783390 <epoxy_handle_external_wglMakeCurrent+0x377190>
  7833c8: e9 a5 7e 00 00               	jmp	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  7833cd: 8b b5 e4 fe ff ff            	mov	esi, dword ptr [ebp - 0x11c]
  7833d3: 8b cf                        	mov	ecx, edi
  7833d5: 56                           	push	esi
  7833d6: e8 45 5f f2 ff               	call	0x6a9320 <epoxy_handle_external_wglMakeCurrent+0x29d120>
  7833db: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  7833e1: 8b ce                        	mov	ecx, esi
  7833e3: 50                           	push	eax
  7833e4: e8 a7 3e c9 ff               	call	0x417290 <epoxy_handle_external_wglMakeCurrent+0xb090>
  7833e9: 50                           	push	eax
  7833ea: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  7833f0: e8 bb 9f 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  7833f5: 68 40 b6 c7 00               	push	0xc7b640
  7833fa: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  783400: e8 ab 9f 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  783405: c7 87 34 03 00 00 00 00 80 3f	mov	dword ptr [edi + 0x334], 0x3f800000
  78340f: e9 5e 7e 00 00               	jmp	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  783414: 6a 00                        	push	0x0
  783416: 68 00 40 00 00               	push	0x4000
  78341b: 8b cf                        	mov	ecx, edi
  78341d: c6 87 d8 1d 00 00 00         	mov	byte ptr [edi + 0x1dd8], 0x0
  783424: e8 07 40 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783429: 84 c0                        	test	al, al
  78342b: 75 21                        	jne	0x78344e <epoxy_handle_external_wglMakeCurrent+0x37724e>
  78342d: 38 87 d4 26 00 00            	cmp	byte ptr [edi + 0x26d4], al
  783433: 75 0c                        	jne	0x783441 <epoxy_handle_external_wglMakeCurrent+0x377241>
  783435: c7 87 d0 26 00 00 00 00 00 00	mov	dword ptr [edi + 0x26d0], 0x0
  78343f: eb 06                        	jmp	0x783447 <epoxy_handle_external_wglMakeCurrent+0x377247>
  783441: ff 87 d0 26 00 00            	inc	dword ptr [edi + 0x26d0]
  783447: c6 87 d4 26 00 00 00         	mov	byte ptr [edi + 0x26d4], 0x0
  78344e: 80 bf 72 01 00 00 00         	cmp	byte ptr [edi + 0x172], 0x0
  783455: 0f 84 17 7e 00 00            	je	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  78345b: 80 bf 1c 13 00 00 00         	cmp	byte ptr [edi + 0x131c], 0x0
  783462: 74 07                        	je	0x78346b <epoxy_handle_external_wglMakeCurrent+0x37726b>
  783464: 8b cf                        	mov	ecx, edi
  783466: e8 35 f5 ff ff               	call	0x7829a0 <epoxy_handle_external_wglMakeCurrent+0x3767a0>
  78346b: 8b 8f 3c 14 00 00            	mov	ecx, dword ptr [edi + 0x143c]
  783471: 8d b7 3c 03 00 00            	lea	esi, [edi + 0x33c]
  783477: 85 c9                        	test	ecx, ecx
  783479: 74 16                        	je	0x783491 <epoxy_handle_external_wglMakeCurrent+0x377291>
  78347b: 56                           	push	esi
  78347c: e8 6f 54 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  783481: 8b 8f 3c 14 00 00            	mov	ecx, dword ptr [edi + 0x143c]
  783487: 68 40 b6 c7 00               	push	0xc7b640
  78348c: e8 7f 54 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  783491: 8b 8f 40 14 00 00            	mov	ecx, dword ptr [edi + 0x1440]
  783497: 85 c9                        	test	ecx, ecx
  783499: 74 16                        	je	0x7834b1 <epoxy_handle_external_wglMakeCurrent+0x3772b1>
  78349b: 56                           	push	esi
  78349c: e8 4f 54 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  7834a1: 8b 8f 40 14 00 00            	mov	ecx, dword ptr [edi + 0x1440]
  7834a7: 68 40 b6 c7 00               	push	0xc7b640
  7834ac: e8 5f 54 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  7834b1: 8b 87 44 14 00 00            	mov	eax, dword ptr [edi + 0x1444]
  7834b7: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  7834bd: 85 c0                        	test	eax, eax
  7834bf: 74 3e                        	je	0x7834ff <epoxy_handle_external_wglMakeCurrent+0x3772ff>
  7834c1: f3 0f 10 15 d8 ad ba 00      	movss	xmm2, dword ptr [0xbaadd8]
  7834c9: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  7834cf: 0f 57 c9                     	xorps	xmm1, xmm1
  7834d2: e8 b9 c9 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  7834d7: 8b 8d e4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x11c]
  7834dd: 50                           	push	eax
  7834de: e8 0d 3e c9 ff               	call	0x4172f0 <epoxy_handle_external_wglMakeCurrent+0xb0f0>
  7834e3: 8b 8f 44 14 00 00            	mov	ecx, dword ptr [edi + 0x1444]
  7834e9: 56                           	push	esi
  7834ea: e8 01 54 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  7834ef: 8b 8f 44 14 00 00            	mov	ecx, dword ptr [edi + 0x1444]
  7834f5: 68 40 b6 c7 00               	push	0xc7b640
  7834fa: e8 11 54 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  7834ff: 8b 8f 78 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e78]
  783505: 85 c9                        	test	ecx, ecx
  783507: 74 16                        	je	0x78351f <epoxy_handle_external_wglMakeCurrent+0x37731f>
  783509: 56                           	push	esi
  78350a: e8 e1 53 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  78350f: 8b 8f 78 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e78]
  783515: 68 40 b6 c7 00               	push	0xc7b640
  78351a: e8 f1 53 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  78351f: 8b 8f 7c 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e7c]
  783525: 85 c9                        	test	ecx, ecx
  783527: 74 16                        	je	0x78353f <epoxy_handle_external_wglMakeCurrent+0x37733f>
  783529: 56                           	push	esi
  78352a: e8 c1 53 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  78352f: 8b 8f 7c 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e7c]
  783535: 68 40 b6 c7 00               	push	0xc7b640
  78353a: e8 d1 53 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  78353f: 8b 8f 80 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e80]
  783545: 85 c9                        	test	ecx, ecx
  783547: 74 16                        	je	0x78355f <epoxy_handle_external_wglMakeCurrent+0x37735f>
  783549: 56                           	push	esi
  78354a: e8 a1 53 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  78354f: 8b 8f 80 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e80]
  783555: 68 40 b6 c7 00               	push	0xc7b640
  78355a: e8 b1 53 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  78355f: 8d 8f 84 1e 00 00            	lea	ecx, [edi + 0x1e84]
  783565: e8 36 8e c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78356a: 85 c0                        	test	eax, eax
  78356c: 74 42                        	je	0x7835b0 <epoxy_handle_external_wglMakeCurrent+0x3773b0>
  78356e: 8d 8f 84 1e 00 00            	lea	ecx, [edi + 0x1e84]
  783574: e8 27 8e c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  783579: 8b c8                        	mov	ecx, eax
  78357b: e8 00 3b d3 ff               	call	0x4b7080 <epoxy_handle_external_wglMakeCurrent+0xaae80>
  783580: 3b c7                        	cmp	eax, edi
  783582: 75 2c                        	jne	0x7835b0 <epoxy_handle_external_wglMakeCurrent+0x3773b0>
  783584: 8d 8f 84 1e 00 00            	lea	ecx, [edi + 0x1e84]
  78358a: e8 11 8e c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78358f: 56                           	push	esi
  783590: 8b c8                        	mov	ecx, eax
  783592: e8 59 53 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  783597: 8d 8f 84 1e 00 00            	lea	ecx, [edi + 0x1e84]
  78359d: e8 fe 8d c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  7835a2: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  7835a8: 51                           	push	ecx
  7835a9: 8b c8                        	mov	ecx, eax
  7835ab: e8 60 53 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  7835b0: 8b 8f 88 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e88]
  7835b6: 85 c9                        	test	ecx, ecx
  7835b8: 74 16                        	je	0x7835d0 <epoxy_handle_external_wglMakeCurrent+0x3773d0>
  7835ba: 56                           	push	esi
  7835bb: e8 30 53 ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  7835c0: 8b 8f 88 1e 00 00            	mov	ecx, dword ptr [edi + 0x1e88]
  7835c6: 68 40 b6 c7 00               	push	0xc7b640
  7835cb: e8 40 53 ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  7835d0: 8b cf                        	mov	ecx, edi
  7835d2: e8 39 44 fd ff               	call	0x757a10 <epoxy_handle_external_wglMakeCurrent+0x34b810>
  7835d7: 8b cf                        	mov	ecx, edi
  7835d9: f3 0f 11 87 9c 03 00 00      	movss	dword ptr [edi + 0x39c], xmm0
  7835e1: e8 2a 7b 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  7835e6: 68 00 00 00 02               	push	0x2000000
  7835eb: 6a 00                        	push	0x0
  7835ed: 8b cf                        	mov	ecx, edi
  7835ef: 88 85 da fe ff ff            	mov	byte ptr [ebp - 0x126], al
  7835f5: e8 36 3e c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  7835fa: f3 0f 10 05 98 a1 ba 00      	movss	xmm0, dword ptr [0xbaa198]
  783602: 0f 57 d2                     	xorps	xmm2, xmm2
  783605: f3 0f 10 25 04 a3 ba 00      	movss	xmm4, dword ptr [0xbaa304]
  78360d: 84 c0                        	test	al, al
  78360f: 74 0f                        	je	0x783620 <epoxy_handle_external_wglMakeCurrent+0x377420>
  783611: c7 87 70 1e 00 00 00 00 00 00	mov	dword ptr [edi + 0x1e70], 0x0
  78361b: e9 03 02 00 00               	jmp	0x783823 <epoxy_handle_external_wglMakeCurrent+0x377623>
  783620: 0f 2f 97 50 03 00 00         	comiss	xmm2, dword ptr [edi + 0x350]
  783627: 77 0d                        	ja	0x783636 <epoxy_handle_external_wglMakeCurrent+0x377436>
  783629: 0f 2f 97 70 1e 00 00         	comiss	xmm2, dword ptr [edi + 0x1e70]
  783630: 0f 86 ed 01 00 00            	jbe	0x783823 <epoxy_handle_external_wglMakeCurrent+0x377623>
  783636: 80 bf 70 15 00 00 00         	cmp	byte ptr [edi + 0x1570], 0x0
  78363d: 75 09                        	jne	0x783648 <epoxy_handle_external_wglMakeCurrent+0x377448>
  78363f: 83 bf 84 01 00 00 05         	cmp	dword ptr [edi + 0x184], 0x5
  783646: 74 33                        	je	0x78367b <epoxy_handle_external_wglMakeCurrent+0x37747b>
  783648: 68 00 00 00 04               	push	0x4000000
  78364d: 6a 00                        	push	0x0
  78364f: 8b cf                        	mov	ecx, edi
  783651: e8 da 3d c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783656: 84 c0                        	test	al, al
  783658: 75 19                        	jne	0x783673 <epoxy_handle_external_wglMakeCurrent+0x377473>
  78365a: c7 87 50 03 00 00 00 00 00 00	mov	dword ptr [edi + 0x350], 0x0
  783664: c7 87 70 1e 00 00 00 00 00 00	mov	dword ptr [edi + 0x1e70], 0x0
  78366e: e9 a5 01 00 00               	jmp	0x783818 <epoxy_handle_external_wglMakeCurrent+0x377618>
  783673: f3 0f 10 05 98 a1 ba 00      	movss	xmm0, dword ptr [0xbaa198]
  78367b: f3 0f 10 8f 88 1f 00 00      	movss	xmm1, dword ptr [edi + 0x1f88]
  783683: f3 0f 10 97 70 1e 00 00      	movss	xmm2, dword ptr [edi + 0x1e70]
  78368b: f3 0f 5c ca                  	subss	xmm1, xmm2
  78368f: 0f 2f 0d e4 9f ba 00         	comiss	xmm1, dword ptr [0xba9fe4]
  783696: f3 0f 11 8f 88 1f 00 00      	movss	dword ptr [edi + 0x1f88], xmm1
  78369e: 76 18                        	jbe	0x7836b8 <epoxy_handle_external_wglMakeCurrent+0x3774b8>
  7836a0: f3 0f 59 c8                  	mulss	xmm1, xmm0
  7836a4: f3 0f 10 87 8c 1f 00 00      	movss	xmm0, dword ptr [edi + 0x1f8c]
  7836ac: f3 0f 5c c1                  	subss	xmm0, xmm1
  7836b0: f3 0f 11 87 8c 1f 00 00      	movss	dword ptr [edi + 0x1f8c], xmm0
  7836b8: f3 0f 58 97 50 03 00 00      	addss	xmm2, dword ptr [edi + 0x350]
  7836c0: 68 00 00 00 04               	push	0x4000000
  7836c5: 6a 00                        	push	0x0
  7836c7: 8b cf                        	mov	ecx, edi
  7836c9: f3 0f 11 97 50 03 00 00      	movss	dword ptr [edi + 0x350], xmm2
  7836d1: e8 5a 3d c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  7836d6: f3 0f 10 87 70 1e 00 00      	movss	xmm0, dword ptr [edi + 0x1e70]
  7836de: 0f 57 d2                     	xorps	xmm2, xmm2
  7836e1: f3 0f 10 25 04 a3 ba 00      	movss	xmm4, dword ptr [0xbaa304]
  7836e9: 84 c0                        	test	al, al
  7836eb: 74 49                        	je	0x783736 <epoxy_handle_external_wglMakeCurrent+0x377536>
  7836ed: f3 0f 58 c4                  	addss	xmm0, xmm4
  7836f1: 0f 2f d0                     	comiss	xmm2, xmm0
  7836f4: f3 0f 11 87 70 1e 00 00      	movss	dword ptr [edi + 0x1e70], xmm0
  7836fc: 77 2b                        	ja	0x783729 <epoxy_handle_external_wglMakeCurrent+0x377529>
  7836fe: f3 0f 10 05 04 ae ba 00      	movss	xmm0, dword ptr [0xbaae04]
  783706: 0f 2f 87 50 03 00 00         	comiss	xmm0, dword ptr [edi + 0x350]
  78370d: 77 1a                        	ja	0x783729 <epoxy_handle_external_wglMakeCurrent+0x377529>
  78370f: 33 c0                        	xor	eax, eax
  783711: 38 87 70 15 00 00            	cmp	byte ptr [edi + 0x1570], al
  783717: 0f 94 c0                     	sete	al
  78371a: 8d 04 45 03 00 00 00         	lea	eax, [2*eax + 0x3]
  783721: 89 87 84 01 00 00            	mov	dword ptr [edi + 0x184], eax
  783727: eb 1d                        	jmp	0x783746 <epoxy_handle_external_wglMakeCurrent+0x377546>
  783729: b8 03 00 00 00               	mov	eax, 0x3
  78372e: 89 87 84 01 00 00            	mov	dword ptr [edi + 0x184], eax
  783734: eb 10                        	jmp	0x783746 <epoxy_handle_external_wglMakeCurrent+0x377546>
  783736: f3 0f 58 05 90 a4 ba 00      	addss	xmm0, dword ptr [0xbaa490]
  78373e: f3 0f 11 87 70 1e 00 00      	movss	dword ptr [edi + 0x1e70], xmm0
  783746: f3 0f 10 87 50 03 00 00      	movss	xmm0, dword ptr [edi + 0x350]
  78374e: 0f 2f c2                     	comiss	xmm0, xmm2
  783751: 0f 86 cc 00 00 00            	jbe	0x783823 <epoxy_handle_external_wglMakeCurrent+0x377623>
  783757: 68 00 00 00 04               	push	0x4000000
  78375c: 6a 00                        	push	0x0
  78375e: 8b cf                        	mov	ecx, edi
  783760: c7 87 50 03 00 00 00 00 00 00	mov	dword ptr [edi + 0x350], 0x0
  78376a: c7 87 70 1e 00 00 00 00 00 00	mov	dword ptr [edi + 0x1e70], 0x0
  783774: e8 b7 3c c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783779: 84 c0                        	test	al, al
  78377b: 0f 84 97 00 00 00            	je	0x783818 <epoxy_handle_external_wglMakeCurrent+0x377618>
  783781: 68 00 00 00 04               	push	0x4000000
  783786: 6a 00                        	push	0x0
  783788: 8b cf                        	mov	ecx, edi
  78378a: e8 71 3c c9 ff               	call	0x417400 <epoxy_handle_external_wglMakeCurrent+0xb200>
  78378f: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783795: e8 46 d3 c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  78379a: 8b c8                        	mov	ecx, eax
  78379c: e8 8f b6 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  7837a1: 84 c0                        	test	al, al
  7837a3: 75 73                        	jne	0x783818 <epoxy_handle_external_wglMakeCurrent+0x377618>
  7837a5: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7837ab: e8 a0 53 ca ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  7837b0: 8b c8                        	mov	ecx, eax
  7837b2: e8 79 b6 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  7837b7: 84 c0                        	test	al, al
  7837b9: 75 5d                        	jne	0x783818 <epoxy_handle_external_wglMakeCurrent+0x377618>
  7837bb: 83 bf c0 13 00 00 23         	cmp	dword ptr [edi + 0x13c0], 0x23
  7837c2: c6 87 10 04 00 00 01         	mov	byte ptr [edi + 0x410], 0x1
  7837c9: 75 4d                        	jne	0x783818 <epoxy_handle_external_wglMakeCurrent+0x377618>
  7837cb: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7837d1: 6a 04                        	push	0x4
  7837d3: e8 98 fe f7 ff               	call	0x703670 <epoxy_handle_external_wglMakeCurrent+0x2f7470>
  7837d8: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  7837e0: 51                           	push	ecx
  7837e1: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7837e8: 8b cf                        	mov	ecx, edi
  7837ea: 6a 00                        	push	0x0
  7837ec: 6a 02                        	push	0x2
  7837ee: 68 f3 01 00 00               	push	0x1f3
  7837f3: e8 78 2c f3 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  7837f8: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  783800: 51                           	push	ecx
  783801: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783808: 8b cf                        	mov	ecx, edi
  78380a: 6a 00                        	push	0x0
  78380c: 6a 02                        	push	0x2
  78380e: 68 d3 01 00 00               	push	0x1d3
  783813: e8 58 2c f3 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  783818: f3 0f 10 25 04 a3 ba 00      	movss	xmm4, dword ptr [0xbaa304]
  783820: 0f 57 d2                     	xorps	xmm2, xmm2
  783823: 83 bf c0 13 00 00 23         	cmp	dword ptr [edi + 0x13c0], 0x23
  78382a: f3 0f 10 1d 30 a6 ba 00      	movss	xmm3, dword ptr [0xbaa630]
  783832: 75 4f                        	jne	0x783883 <epoxy_handle_external_wglMakeCurrent+0x377683>
  783834: f3 0f 10 8f 8c 1f 00 00      	movss	xmm1, dword ptr [edi + 0x1f8c]
  78383c: 0f 28 c1                     	movaps	xmm0, xmm1
  78383f: f3 0f 58 87 88 1f 00 00      	addss	xmm0, dword ptr [edi + 0x1f88]
  783847: 0f 2f c2                     	comiss	xmm0, xmm2
  78384a: f3 0f 11 87 88 1f 00 00      	movss	dword ptr [edi + 0x1f88], xmm0
  783852: 72 23                        	jb	0x783877 <epoxy_handle_external_wglMakeCurrent+0x377677>
  783854: 0f 2f ca                     	comiss	xmm1, xmm2
  783857: c7 87 88 1f 00 00 00 00 00 00	mov	dword ptr [edi + 0x1f88], 0x0
  783861: 76 14                        	jbe	0x783877 <epoxy_handle_external_wglMakeCurrent+0x377677>
  783863: 0f 2f d9                     	comiss	xmm3, xmm1
  783866: 76 05                        	jbe	0x78386d <epoxy_handle_external_wglMakeCurrent+0x37766d>
  783868: 0f 57 c9                     	xorps	xmm1, xmm1
  78386b: eb 0e                        	jmp	0x78387b <epoxy_handle_external_wglMakeCurrent+0x37767b>
  78386d: f3 0f 59 0d 28 ad ba 00      	mulss	xmm1, dword ptr [0xbaad28]
  783875: eb 04                        	jmp	0x78387b <epoxy_handle_external_wglMakeCurrent+0x37767b>
  783877: f3 0f 58 cc                  	addss	xmm1, xmm4
  78387b: f3 0f 11 8f 8c 1f 00 00      	movss	dword ptr [edi + 0x1f8c], xmm1
  783883: 6a 00                        	push	0x0
  783885: 68 00 40 00 00               	push	0x4000
  78388a: 8b cf                        	mov	ecx, edi
  78388c: e8 9f 3b c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783891: 84 c0                        	test	al, al
  783893: 0f 85 2c 06 00 00            	jne	0x783ec5 <epoxy_handle_external_wglMakeCurrent+0x377cc5>
  783899: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  78389c: e8 cf 23 cb ff               	call	0x435c70 <epoxy_handle_external_wglMakeCurrent+0x29a70>
  7838a1: 6a 00                        	push	0x0
  7838a3: 68 78 02 00 00               	push	0x278
  7838a8: 8b cf                        	mov	ecx, edi
  7838aa: e8 31 ce fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  7838af: 84 c0                        	test	al, al
  7838b1: 75 19                        	jne	0x7838cc <epoxy_handle_external_wglMakeCurrent+0x3776cc>
  7838b3: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  7838b9: 68 78 02 00 00               	push	0x278
  7838be: e8 2d cd 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  7838c3: 84 c0                        	test	al, al
  7838c5: 75 05                        	jne	0x7838cc <epoxy_handle_external_wglMakeCurrent+0x3776cc>
  7838c7: 8b 47 1c                     	mov	eax, dword ptr [edi + 0x1c]
  7838ca: eb 0d                        	jmp	0x7838d9 <epoxy_handle_external_wglMakeCurrent+0x3776d9>
  7838cc: 8b 47 1c                     	mov	eax, dword ptr [edi + 0x1c]
  7838cf: 81 67 18 ff 7f ff ff         	and	dword ptr [edi + 0x18], 0xffff7fff
  7838d6: 89 47 1c                     	mov	dword ptr [edi + 0x1c], eax
  7838d9: 8b 4f 18                     	mov	ecx, dword ptr [edi + 0x18]
  7838dc: 81 e1 00 80 00 00            	and	ecx, 0x8000
  7838e2: 89 85 9c fe ff ff            	mov	dword ptr [ebp - 0x164], eax
  7838e8: 83 c9 00                     	or	ecx, 0x0
  7838eb: 0f 84 91 01 00 00            	je	0x783a82 <epoxy_handle_external_wglMakeCurrent+0x377882>
  7838f1: 8d 85 dc fe ff ff            	lea	eax, [ebp - 0x124]
  7838f7: c6 85 c4 fe ff ff 00         	mov	byte ptr [ebp - 0x13c], 0x0
  7838fe: 8d 77 08                     	lea	esi, [edi + 0x8]
  783901: 50                           	push	eax
  783902: 8b ce                        	mov	ecx, esi
  783904: e8 97 28 cd ff               	call	0x4561a0 <epoxy_handle_external_wglMakeCurrent+0x49fa0>
  783909: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78390f: 8b ce                        	mov	ecx, esi
  783911: 50                           	push	eax
  783912: e8 79 28 cd ff               	call	0x456190 <epoxy_handle_external_wglMakeCurrent+0x49f90>
  783917: 50                           	push	eax
  783918: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  78391e: e8 ed 8d ca ff               	call	0x42c710 <epoxy_handle_external_wglMakeCurrent+0x20510>
  783923: 84 c0                        	test	al, al
  783925: 0f 84 da 00 00 00            	je	0x783a05 <epoxy_handle_external_wglMakeCurrent+0x377805>
  78392b: bf 01 00 00 00               	mov	edi, 0x1
  783930: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  783936: e8 65 8a c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78393b: f3 0f 10 00                  	movss	xmm0, dword ptr [eax]
  78393f: 0f 2e 05 e4 9f ba 00         	ucomiss	xmm0, dword ptr [0xba9fe4]
  783946: 9f                           	lahf
  783947: f6 c4 44                     	test	ah, 0x44
  78394a: 0f 8a 82 00 00 00            	jp	0x7839d2 <epoxy_handle_external_wglMakeCurrent+0x3777d2>
  783950: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  783956: e8 45 8a c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78395b: 8b 40 08                     	mov	eax, dword ptr [eax + 0x8]
  78395e: 25 00 80 00 00               	and	eax, 0x8000
  783963: 83 c8 00                     	or	eax, 0x0
  783966: 74 6a                        	je	0x7839d2 <epoxy_handle_external_wglMakeCurrent+0x3777d2>
  783968: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  78396e: e8 2d 8a c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  783973: 83 78 10 00                  	cmp	dword ptr [eax + 0x10], 0x0
  783977: 74 17                        	je	0x783990 <epoxy_handle_external_wglMakeCurrent+0x377790>
  783979: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  78397f: e8 1c 8a c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  783984: 83 c0 10                     	add	eax, 0x10
  783987: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  78398a: 50                           	push	eax
  78398b: e8 d0 5f d1 ff               	call	0x499960 <epoxy_handle_external_wglMakeCurrent+0x8d760>
  783990: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  783996: e8 05 8a c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78399b: 8b 8d c4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x13c]
  7839a1: ff b5 dc fe ff ff            	push	dword ptr [ebp - 0x124]
  7839a7: 0f b6 c9                     	movzx	ecx, cl
  7839aa: 81 78 18 b6 03 00 00         	cmp	dword ptr [eax + 0x18], 0x3b6
  7839b1: 8d 85 cc fe ff ff            	lea	eax, [ebp - 0x134]
  7839b7: 50                           	push	eax
  7839b8: 0f 44 cf                     	cmove	ecx, edi
  7839bb: 89 8d c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], ecx
  7839c1: 8b ce                        	mov	ecx, esi
  7839c3: e8 c8 58 d1 ff               	call	0x499290 <epoxy_handle_external_wglMakeCurrent+0x8d090>
  7839c8: 8b 00                        	mov	eax, dword ptr [eax]
  7839ca: 89 85 dc fe ff ff            	mov	dword ptr [ebp - 0x124], eax
  7839d0: eb 0b                        	jmp	0x7839dd <epoxy_handle_external_wglMakeCurrent+0x3777dd>
  7839d2: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  7839d8: e8 d3 d7 d1 ff               	call	0x4a11b0 <epoxy_handle_external_wglMakeCurrent+0x94fb0>
  7839dd: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7839e3: 8b ce                        	mov	ecx, esi
  7839e5: 50                           	push	eax
  7839e6: e8 a5 27 cd ff               	call	0x456190 <epoxy_handle_external_wglMakeCurrent+0x49f90>
  7839eb: 50                           	push	eax
  7839ec: 8d 8d dc fe ff ff            	lea	ecx, [ebp - 0x124]
  7839f2: e8 19 8d ca ff               	call	0x42c710 <epoxy_handle_external_wglMakeCurrent+0x20510>
  7839f7: 84 c0                        	test	al, al
  7839f9: 0f 85 31 ff ff ff            	jne	0x783930 <epoxy_handle_external_wglMakeCurrent+0x377730>
  7839ff: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  783a05: 81 67 18 ff 7f ff ff         	and	dword ptr [edi + 0x18], 0xffff7fff
  783a0c: ff 87 a8 1e 00 00            	inc	dword ptr [edi + 0x1ea8]
  783a12: 80 bd c4 fe ff ff 00         	cmp	byte ptr [ebp - 0x13c], 0x0
  783a19: 8b 47 1c                     	mov	eax, dword ptr [edi + 0x1c]
  783a1c: 89 47 1c                     	mov	dword ptr [edi + 0x1c], eax
  783a1f: 0f 85 96 00 00 00            	jne	0x783abb <epoxy_handle_external_wglMakeCurrent+0x3778bb>
  783a25: 6a 00                        	push	0x0
  783a27: 6a 40                        	push	0x40
  783a29: 8b cf                        	mov	ecx, edi
  783a2b: e8 b0 39 c9 ff               	call	0x4173e0 <epoxy_handle_external_wglMakeCurrent+0xb1e0>
  783a30: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  783a36: e8 b5 d0 c9 ff               	call	0x420af0 <epoxy_handle_external_wglMakeCurrent+0x148f0>
  783a3b: 68 4e 02 00 00               	push	0x24e
  783a40: 8b c8                        	mov	ecx, eax
  783a42: e8 19 ab 1a 00               	call	0x92e560 <epoxy_handle_external_wglMakeCurrent+0x522360>
  783a47: 84 c0                        	test	al, al
  783a49: 75 70                        	jne	0x783abb <epoxy_handle_external_wglMakeCurrent+0x3778bb>
  783a4b: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  783a51: e8 9a d0 c9 ff               	call	0x420af0 <epoxy_handle_external_wglMakeCurrent+0x148f0>
  783a56: 83 ec 08                     	sub	esp, 0x8
  783a59: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  783a61: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783a68: 6a 00                        	push	0x0
  783a6a: 6a 01                        	push	0x1
  783a6c: 51                           	push	ecx
  783a6d: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783a74: 8b c8                        	mov	ecx, eax
  783a76: 68 4e 02 00 00               	push	0x24e
  783a7b: e8 b0 a1 1a 00               	call	0x92dc30 <epoxy_handle_external_wglMakeCurrent+0x521a30>
  783a80: eb 39                        	jmp	0x783abb <epoxy_handle_external_wglMakeCurrent+0x3778bb>
  783a82: 83 bf a8 1e 00 00 00         	cmp	dword ptr [edi + 0x1ea8], 0x0
  783a89: 7e 30                        	jle	0x783abb <epoxy_handle_external_wglMakeCurrent+0x3778bb>
  783a8b: 6a 00                        	push	0x0
  783a8d: 6a 03                        	push	0x3
  783a8f: 8b cf                        	mov	ecx, edi
  783a91: e8 7a 8c f2 ff               	call	0x6ac710 <epoxy_handle_external_wglMakeCurrent+0x2a0510>
  783a96: 84 c0                        	test	al, al
  783a98: 74 21                        	je	0x783abb <epoxy_handle_external_wglMakeCurrent+0x3778bb>
  783a9a: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  783aa0: c7 87 a8 1e 00 00 00 00 00 00	mov	dword ptr [edi + 0x1ea8], 0x0
  783aaa: e8 41 d0 c9 ff               	call	0x420af0 <epoxy_handle_external_wglMakeCurrent+0x148f0>
  783aaf: 68 4e 02 00 00               	push	0x24e
  783ab4: 8b c8                        	mov	ecx, eax
  783ab6: e8 75 a7 1a 00               	call	0x92e230 <epoxy_handle_external_wglMakeCurrent+0x522030>
  783abb: 8b 87 a8 1e 00 00            	mov	eax, dword ptr [edi + 0x1ea8]
  783ac1: 85 c0                        	test	eax, eax
  783ac3: 0f 8e 4a 03 00 00            	jle	0x783e13 <epoxy_handle_external_wglMakeCurrent+0x377c13>
  783ac9: 80 bf 73 01 00 00 00         	cmp	byte ptr [edi + 0x173], 0x0
  783ad0: 0f 85 3d 03 00 00            	jne	0x783e13 <epoxy_handle_external_wglMakeCurrent+0x377c13>
  783ad6: 66 0f 6e c0                  	movd	xmm0, eax
  783ada: 8d 95 b8 fe ff ff            	lea	edx, [ebp - 0x148]
  783ae0: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  783ae3: 8d 8d a4 fe ff ff            	lea	ecx, [ebp - 0x15c]
  783ae9: c7 85 b8 fe ff ff 00 00 80 3f	mov	dword ptr [ebp - 0x148], 0x3f800000
  783af3: f3 0f 5e 05 d0 a8 ba 00      	divss	xmm0, dword ptr [0xbaa8d0]
  783afb: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  783b03: e8 78 8c c8 ff               	call	0x40c780 <epoxy_handle_external_wglMakeCurrent+0x580>
  783b08: 6a 00                        	push	0x0
  783b0a: 6a 40                        	push	0x40
  783b0c: 8b cf                        	mov	ecx, edi
  783b0e: f3 0f 10 00                  	movss	xmm0, dword ptr [eax]
  783b12: f3 0f 11 85 bc fe ff ff      	movss	dword ptr [ebp - 0x144], xmm0
  783b1a: e8 11 39 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783b1f: 8b 0f                        	mov	ecx, dword ptr [edi]
  783b21: 0f 57 c9                     	xorps	xmm1, xmm1
  783b24: f3 0f 10 85 bc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x144]
  783b2c: 8b 71 3c                     	mov	esi, dword ptr [ecx + 0x3c]
  783b2f: 84 c0                        	test	al, al
  783b31: 0f 84 c4 00 00 00            	je	0x783bfb <epoxy_handle_external_wglMakeCurrent+0x3779fb>
  783b37: f3 0f 10 15 d0 a2 ba 00      	movss	xmm2, dword ptr [0xbaa2d0]
  783b3f: 51                           	push	ecx
  783b40: 32 c9                        	xor	cl, cl
  783b42: c7 04 24 00 00 00 00         	mov	dword ptr [esp], 0x0
  783b49: e8 72 1a 29 00               	call	0xa155c0 <epoxy_handle_external_wglMakeCurrent+0x6093c0>
  783b4e: 83 ec 1c                     	sub	esp, 0x1c
  783b51: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  783b57: f3 0f 11 44 24 18            	movss	dword ptr [esp + 0x18], xmm0
  783b5d: f3 0f 10 85 bc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x144]
  783b65: c7 44 24 14 00 00 00 00      	mov	dword ptr [esp + 0x14], 0x0
  783b6d: f3 0f 11 44 24 10            	movss	dword ptr [esp + 0x10], xmm0
  783b73: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  783b7b: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  783b83: 0f 28 d8                     	movaps	xmm3, xmm0
  783b86: c7 44 24 08 00 00 80 3f      	mov	dword ptr [esp + 0x8], 0x3f800000
  783b8e: 0f 28 d0                     	movaps	xmm2, xmm0
  783b91: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  783b99: 0f 28 c8                     	movaps	xmm1, xmm0
  783b9c: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783ba3: e8 a8 1f cb ff               	call	0x435b50 <epoxy_handle_external_wglMakeCurrent+0x29950>
  783ba8: 6a 01                        	push	0x1
  783baa: 6a 00                        	push	0x0
  783bac: 6a 00                        	push	0x0
  783bae: 6a 02                        	push	0x2
  783bb0: 50                           	push	eax
  783bb1: 8b cf                        	mov	ecx, edi
  783bb3: ff d6                        	call	esi
  783bb5: 83 bf a8 1e 00 00 14         	cmp	dword ptr [edi + 0x1ea8], 0x14
  783bbc: 0f 8e 90 01 00 00            	jle	0x783d52 <epoxy_handle_external_wglMakeCurrent+0x377b52>
  783bc2: 6a 00                        	push	0x0
  783bc4: 6a 02                        	push	0x2
  783bc6: 8b cf                        	mov	ecx, edi
  783bc8: e8 43 8b f2 ff               	call	0x6ac710 <epoxy_handle_external_wglMakeCurrent+0x2a0510>
  783bcd: 84 c0                        	test	al, al
  783bcf: 0f 84 7d 01 00 00            	je	0x783d52 <epoxy_handle_external_wglMakeCurrent+0x377b52>
  783bd5: 83 ec 20                     	sub	esp, 0x20
  783bd8: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  783bde: c7 44 24 1c 00 00 00 00      	mov	dword ptr [esp + 0x1c], 0x0
  783be6: c7 44 24 18 00 00 80 3f      	mov	dword ptr [esp + 0x18], 0x3f800000
  783bee: c7 44 24 14 00 00 00 00      	mov	dword ptr [esp + 0x14], 0x0
  783bf6: e9 08 01 00 00               	jmp	0x783d03 <epoxy_handle_external_wglMakeCurrent+0x377b03>
  783bfb: f3 0f 10 15 98 a1 ba 00      	movss	xmm2, dword ptr [0xbaa198]
  783c03: 32 c9                        	xor	cl, cl
  783c05: e8 b6 19 29 00               	call	0xa155c0 <epoxy_handle_external_wglMakeCurrent+0x6093c0>
  783c0a: f3 0f 10 15 d0 a2 ba 00      	movss	xmm2, dword ptr [0xbaa2d0]
  783c12: 32 c9                        	xor	cl, cl
  783c14: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  783c1c: 0f 57 c9                     	xorps	xmm1, xmm1
  783c1f: f3 0f 10 85 bc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x144]
  783c27: e8 94 19 29 00               	call	0xa155c0 <epoxy_handle_external_wglMakeCurrent+0x6093c0>
  783c2c: f3 0f 10 15 d0 a2 ba 00      	movss	xmm2, dword ptr [0xbaa2d0]
  783c34: 32 c9                        	xor	cl, cl
  783c36: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  783c3e: 0f 57 c9                     	xorps	xmm1, xmm1
  783c41: f3 0f 10 85 bc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x144]
  783c49: e8 72 19 29 00               	call	0xa155c0 <epoxy_handle_external_wglMakeCurrent+0x6093c0>
  783c4e: f3 0f 10 8d b8 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x148]
  783c56: 8d 4d c4                     	lea	ecx, [ebp - 0x3c]
  783c59: 83 ec 20                     	sub	esp, 0x20
  783c5c: f3 0f 11 4c 24 1c            	movss	dword ptr [esp + 0x1c], xmm1
  783c62: f3 0f 10 8d a4 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x15c]
  783c6a: f3 0f 11 4c 24 18            	movss	dword ptr [esp + 0x18], xmm1
  783c70: f3 0f 11 44 24 14            	movss	dword ptr [esp + 0x14], xmm0
  783c76: f3 0f 10 85 bc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x144]
  783c7e: f3 0f 11 44 24 10            	movss	dword ptr [esp + 0x10], xmm0
  783c84: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  783c8c: c7 44 24 0c cd cc 4c 3f      	mov	dword ptr [esp + 0xc], 0x3f4ccccd
  783c94: 0f 28 d8                     	movaps	xmm3, xmm0
  783c97: c7 44 24 08 cd cc cc 3f      	mov	dword ptr [esp + 0x8], 0x3fcccccd
  783c9f: 0f 28 d0                     	movaps	xmm2, xmm0
  783ca2: c7 44 24 04 cd cc cc 3f      	mov	dword ptr [esp + 0x4], 0x3fcccccd
  783caa: 0f 28 c8                     	movaps	xmm1, xmm0
  783cad: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783cb4: e8 97 1e cb ff               	call	0x435b50 <epoxy_handle_external_wglMakeCurrent+0x29950>
  783cb9: 6a 01                        	push	0x1
  783cbb: 6a 00                        	push	0x0
  783cbd: 6a 00                        	push	0x0
  783cbf: 6a 02                        	push	0x2
  783cc1: 50                           	push	eax
  783cc2: 8b cf                        	mov	ecx, edi
  783cc4: ff d6                        	call	esi
  783cc6: 83 bf a8 1e 00 00 14         	cmp	dword ptr [edi + 0x1ea8], 0x14
  783ccd: 0f 8e 7f 00 00 00            	jle	0x783d52 <epoxy_handle_external_wglMakeCurrent+0x377b52>
  783cd3: 6a 00                        	push	0x0
  783cd5: 6a 02                        	push	0x2
  783cd7: 8b cf                        	mov	ecx, edi
  783cd9: e8 32 8a f2 ff               	call	0x6ac710 <epoxy_handle_external_wglMakeCurrent+0x2a0510>
  783cde: 84 c0                        	test	al, al
  783ce0: 74 70                        	je	0x783d52 <epoxy_handle_external_wglMakeCurrent+0x377b52>
  783ce2: 83 ec 20                     	sub	esp, 0x20
  783ce5: 8d 8d e8 fe ff ff            	lea	ecx, [ebp - 0x118]
  783ceb: c7 44 24 1c 9a 99 19 3f      	mov	dword ptr [esp + 0x1c], 0x3f19999a
  783cf3: c7 44 24 18 00 00 80 3f      	mov	dword ptr [esp + 0x18], 0x3f800000
  783cfb: c7 44 24 14 00 00 80 3f      	mov	dword ptr [esp + 0x14], 0x3f800000
  783d03: 8b 07                        	mov	eax, dword ptr [edi]
  783d05: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  783d0d: c7 44 24 10 00 00 00 00      	mov	dword ptr [esp + 0x10], 0x0
  783d15: 0f 28 d8                     	movaps	xmm3, xmm0
  783d18: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  783d20: 0f 28 d0                     	movaps	xmm2, xmm0
  783d23: 8b 70 3c                     	mov	esi, dword ptr [eax + 0x3c]
  783d26: 0f 28 c8                     	movaps	xmm1, xmm0
  783d29: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  783d31: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  783d39: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783d40: e8 0b 1e cb ff               	call	0x435b50 <epoxy_handle_external_wglMakeCurrent+0x29950>
  783d45: 6a 01                        	push	0x1
  783d47: 6a 01                        	push	0x1
  783d49: 6a ff                        	push	-0x1
  783d4b: 6a 03                        	push	0x3
  783d4d: 50                           	push	eax
  783d4e: 8b cf                        	mov	ecx, edi
  783d50: ff d6                        	call	esi
  783d52: 8b 87 a8 1e 00 00            	mov	eax, dword ptr [edi + 0x1ea8]
  783d58: 83 f8 1e                     	cmp	eax, 0x1e
  783d5b: 0f 8e b2 00 00 00            	jle	0x783e13 <epoxy_handle_external_wglMakeCurrent+0x377c13>
  783d61: 6a 00                        	push	0x0
  783d63: 83 c0 e2                     	add	eax, -0x1e
  783d66: c7 87 bc 13 00 00 00 00 00 00	mov	dword ptr [edi + 0x13bc], 0x0
  783d70: 6a 40                        	push	0x40
  783d72: 8b cf                        	mov	ecx, edi
  783d74: 89 87 a8 1e 00 00            	mov	dword ptr [edi + 0x1ea8], eax
  783d7a: e8 b1 36 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783d7f: 84 c0                        	test	al, al
  783d81: 74 3b                        	je	0x783dbe <epoxy_handle_external_wglMakeCurrent+0x377bbe>
  783d83: 8b 07                        	mov	eax, dword ptr [edi]
  783d85: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  783d88: 6a 1e                        	push	0x1e
  783d8a: 51                           	push	ecx
  783d8b: 6a 00                        	push	0x0
  783d8d: 6a 00                        	push	0x0
  783d8f: 51                           	push	ecx
  783d90: 8b cf                        	mov	ecx, edi
  783d92: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783d99: ff 50 20                     	call	dword ptr [eax + 0x20]
  783d9c: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  783da4: 51                           	push	ecx
  783da5: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783dac: 8b cf                        	mov	ecx, edi
  783dae: 6a 00                        	push	0x0
  783db0: 6a 02                        	push	0x2
  783db2: 68 4f 02 00 00               	push	0x24f
  783db7: e8 b4 26 f3 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  783dbc: eb 55                        	jmp	0x783e13 <epoxy_handle_external_wglMakeCurrent+0x377c13>
  783dbe: e8 9d b1 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  783dc3: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783dc9: 50                           	push	eax
  783dca: 6a 00                        	push	0x0
  783dcc: 6a 00                        	push	0x0
  783dce: 68 40 b6 c7 00               	push	0xc7b640
  783dd3: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  783dd9: 50                           	push	eax
  783dda: 6a 13                        	push	0x13
  783ddc: 68 e8 03 00 00               	push	0x3e8
  783de1: e8 3a 4d ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  783de6: ff 75 a4                     	push	dword ptr [ebp - 0x5c]
  783de9: 8b f0                        	mov	esi, eax
  783deb: 8b ce                        	mov	ecx, esi
  783ded: e8 be d8 ca ff               	call	0x4316b0 <epoxy_handle_external_wglMakeCurrent+0x254b0>
  783df2: ff 75 a8                     	push	dword ptr [ebp - 0x58]
  783df5: 8b ce                        	mov	ecx, esi
  783df7: e8 74 32 d3 ff               	call	0x4b7070 <epoxy_handle_external_wglMakeCurrent+0xaae70>
  783dfc: 8b ce                        	mov	ecx, esi
  783dfe: e8 cd 1f cb ff               	call	0x435dd0 <epoxy_handle_external_wglMakeCurrent+0x29bd0>
  783e03: 6a 03                        	push	0x3
  783e05: 8b c8                        	mov	ecx, eax
  783e07: e8 14 69 c8 ff               	call	0x40a720 <.text+0x9720>
  783e0c: 8b 06                        	mov	eax, dword ptr [esi]
  783e0e: 8b ce                        	mov	ecx, esi
  783e10: ff 50 0c                     	call	dword ptr [eax + 0xc]
  783e13: 83 bf 1c 03 00 00 00         	cmp	dword ptr [edi + 0x31c], 0x0
  783e1a: 7e 70                        	jle	0x783e8c <epoxy_handle_external_wglMakeCurrent+0x377c8c>
  783e1c: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783e22: e8 29 3a c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  783e27: 8b c8                        	mov	ecx, eax
  783e29: e8 22 57 ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  783e2e: 84 c0                        	test	al, al
  783e30: 74 5a                        	je	0x783e8c <epoxy_handle_external_wglMakeCurrent+0x377c8c>
  783e32: 66 83 bf d2 2e 00 00 00      	cmp	word ptr [edi + 0x2ed2], 0x0
  783e3a: 75 50                        	jne	0x783e8c <epoxy_handle_external_wglMakeCurrent+0x377c8c>
  783e3c: 8b 07                        	mov	eax, dword ptr [edi]
  783e3e: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  783e44: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  783e4c: 83 ec 10                     	sub	esp, 0x10
  783e4f: 0f 28 d8                     	movaps	xmm3, xmm0
  783e52: 0f 28 d0                     	movaps	xmm2, xmm0
  783e55: 0f 28 c8                     	movaps	xmm1, xmm0
  783e58: 8b 70 3c                     	mov	esi, dword ptr [eax + 0x3c]
  783e5b: c7 44 24 0c cd cc cc 3e      	mov	dword ptr [esp + 0xc], 0x3ecccccd
  783e63: c7 44 24 08 cd cc cc 3e      	mov	dword ptr [esp + 0x8], 0x3ecccccd
  783e6b: c7 44 24 04 cd cc cc 3e      	mov	dword ptr [esp + 0x4], 0x3ecccccd
  783e73: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  783e7a: e8 61 92 c8 ff               	call	0x40d0e0 <epoxy_handle_external_wglMakeCurrent+0xee0>
  783e7f: 6a 01                        	push	0x1
  783e81: 6a 01                        	push	0x1
  783e83: 6a ff                        	push	-0x1
  783e85: 6a 03                        	push	0x3
  783e87: 50                           	push	eax
  783e88: 8b cf                        	mov	ecx, edi
  783e8a: ff d6                        	call	esi
  783e8c: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783e92: e8 b9 39 c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  783e97: 8b c8                        	mov	ecx, eax
  783e99: e8 b2 56 ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  783e9e: 84 c0                        	test	al, al
  783ea0: 75 23                        	jne	0x783ec5 <epoxy_handle_external_wglMakeCurrent+0x377cc5>
  783ea2: 6a 00                        	push	0x0
  783ea4: 6a 40                        	push	0x40
  783ea6: 8b cf                        	mov	ecx, edi
  783ea8: e8 83 35 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783ead: 84 c0                        	test	al, al
  783eaf: 74 14                        	je	0x783ec5 <epoxy_handle_external_wglMakeCurrent+0x377cc5>
  783eb1: 83 bf a8 1e 00 00 00         	cmp	dword ptr [edi + 0x1ea8], 0x0
  783eb8: 7f 0b                        	jg	0x783ec5 <epoxy_handle_external_wglMakeCurrent+0x377cc5>
  783eba: 6a 00                        	push	0x0
  783ebc: 6a 40                        	push	0x40
  783ebe: 8b cf                        	mov	ecx, edi
  783ec0: e8 3b 35 c9 ff               	call	0x417400 <epoxy_handle_external_wglMakeCurrent+0xb200>
  783ec5: 8b cf                        	mov	ecx, edi
  783ec7: e8 54 a9 f2 ff               	call	0x6ae820 <epoxy_handle_external_wglMakeCurrent+0x2a2620>
  783ecc: 6a 00                        	push	0x0
  783ece: 68 00 40 00 00               	push	0x4000
  783ed3: 8b cf                        	mov	ecx, edi
  783ed5: e8 56 35 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  783eda: 84 c0                        	test	al, al
  783edc: 0f 85 fb 00 00 00            	jne	0x783fdd <epoxy_handle_external_wglMakeCurrent+0x377ddd>
  783ee2: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  783ee8: e8 13 52 c8 ff               	call	0x409100 <.text+0x8100>
  783eed: 8d 77 48                     	lea	esi, [edi + 0x48]
  783ef0: 68 a4 4b b6 00               	push	0xb64ba4
  783ef5: 8b ce                        	mov	ecx, esi
  783ef7: e8 34 71 c8 ff               	call	0x40b030 <.text+0xa030>
  783efc: 84 c0                        	test	al, al
  783efe: 0f 84 d9 00 00 00            	je	0x783fdd <epoxy_handle_external_wglMakeCurrent+0x377ddd>
  783f04: e8 57 b0 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  783f09: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783f0f: 50                           	push	eax
  783f10: 6a 0a                        	push	0xa
  783f12: 6a 00                        	push	0x0
  783f14: 68 40 b6 c7 00               	push	0xc7b640
  783f19: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  783f1f: 50                           	push	eax
  783f20: 6a 0c                        	push	0xc
  783f22: 68 e8 03 00 00               	push	0x3e8
  783f27: e8 f4 4b ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  783f2c: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  783f32: 8b f8                        	mov	edi, eax
  783f34: 51                           	push	ecx
  783f35: 8b cf                        	mov	ecx, edi
  783f37: e8 74 25 cd ff               	call	0x4564b0 <epoxy_handle_external_wglMakeCurrent+0x4a2b0>
  783f3c: 51                           	push	ecx
  783f3d: 8b cf                        	mov	ecx, edi
  783f3f: c7 04 24 00 00 20 c1         	mov	dword ptr [esp], 0xc1200000
  783f46: e8 a5 1d cb ff               	call	0x435cf0 <epoxy_handle_external_wglMakeCurrent+0x29af0>
  783f4b: 8b ce                        	mov	ecx, esi
  783f4d: e8 ae 32 c9 ff               	call	0x417200 <epoxy_handle_external_wglMakeCurrent+0xb000>
  783f52: 50                           	push	eax
  783f53: 8b cf                        	mov	ecx, edi
  783f55: e8 56 9a ca ff               	call	0x42d9b0 <epoxy_handle_external_wglMakeCurrent+0x217b0>
  783f5a: 8b cf                        	mov	ecx, edi
  783f5c: e8 bf 33 c9 ff               	call	0x417320 <epoxy_handle_external_wglMakeCurrent+0xb120>
  783f61: f3 0f 10 15 ec ad ba 00      	movss	xmm2, dword ptr [0xbaadec]
  783f69: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  783f6f: 0f 57 c9                     	xorps	xmm1, xmm1
  783f72: 8b f0                        	mov	esi, eax
  783f74: e8 17 bf 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  783f79: 50                           	push	eax
  783f7a: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  783f80: 8b ce                        	mov	ecx, esi
  783f82: 50                           	push	eax
  783f83: e8 88 c5 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  783f88: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  783f8e: 8b f0                        	mov	esi, eax
  783f90: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  783f96: 50                           	push	eax
  783f97: e8 94 e6 ff ff               	call	0x782630 <epoxy_handle_external_wglMakeCurrent+0x376430>
  783f9c: 50                           	push	eax
  783f9d: 8d 85 90 fe ff ff            	lea	eax, [ebp - 0x170]
  783fa3: 8b ce                        	mov	ecx, esi
  783fa5: 50                           	push	eax
  783fa6: e8 75 c4 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  783fab: 50                           	push	eax
  783fac: 8b cf                        	mov	ecx, edi
  783fae: e8 0d 24 cd ff               	call	0x4563c0 <epoxy_handle_external_wglMakeCurrent+0x4a1c0>
  783fb3: 68 00 10 00 00               	push	0x1000
  783fb8: 6a 00                        	push	0x0
  783fba: 8b cf                        	mov	ecx, edi
  783fbc: e8 1f 34 c9 ff               	call	0x4173e0 <epoxy_handle_external_wglMakeCurrent+0xb1e0>
  783fc1: 8b 07                        	mov	eax, dword ptr [edi]
  783fc3: 8b cf                        	mov	ecx, edi
  783fc5: ff 50 0c                     	call	dword ptr [eax + 0xc]
  783fc8: 51                           	push	ecx
  783fc9: 8b cf                        	mov	ecx, edi
  783fcb: c7 04 24 00 00 00 00         	mov	dword ptr [esp], 0x0
  783fd2: e8 d9 1e cb ff               	call	0x435eb0 <epoxy_handle_external_wglMakeCurrent+0x29cb0>
  783fd7: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  783fdd: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  783fe3: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  783fe8: e8 b3 c5 29 00               	call	0xa205a0 <epoxy_handle_external_wglMakeCurrent+0x6143a0>
  783fed: 84 c0                        	test	al, al
  783fef: 0f 85 d0 00 00 00            	jne	0x7840c5 <epoxy_handle_external_wglMakeCurrent+0x377ec5>
  783ff5: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  783ffb: e8 50 4b ca ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  784000: 8b c8                        	mov	ecx, eax
  784002: e8 29 ae 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  784007: 84 c0                        	test	al, al
  784009: 0f 85 b6 00 00 00            	jne	0x7840c5 <epoxy_handle_external_wglMakeCurrent+0x377ec5>
  78400f: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  784015: 68 fc af b6 00               	push	0xb6affc
  78401a: 6a 01                        	push	0x1
  78401c: e8 9f d2 28 00               	call	0xa112c0 <epoxy_handle_external_wglMakeCurrent+0x6050c0>
  784021: 83 c4 0c                     	add	esp, 0xc
  784024: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  784028: 0f 84 80 00 00 00            	je	0x7840ae <epoxy_handle_external_wglMakeCurrent+0x377eae>
  78402e: 83 bf bc 03 00 00 00         	cmp	dword ptr [edi + 0x3bc], 0x0
  784035: 75 77                        	jne	0x7840ae <epoxy_handle_external_wglMakeCurrent+0x377eae>
  784037: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78403d: e8 1e 38 c9 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  784042: 6a 00                        	push	0x0
  784044: 57                           	push	edi
  784045: 8b c8                        	mov	ecx, eax
  784047: e8 b4 5f 23 00               	call	0x9ba000 <epoxy_handle_external_wglMakeCurrent+0x5ade00>
  78404c: e8 0f af f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  784051: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  784057: 8b f8                        	mov	edi, eax
  784059: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  78405f: 50                           	push	eax
  784060: e8 2b 32 c9 ff               	call	0x417290 <epoxy_handle_external_wglMakeCurrent+0xb090>
  784065: f3 0f 10 15 c0 ad ba 00      	movss	xmm2, dword ptr [0xbaadc0]
  78406d: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  784073: 0f 57 c9                     	xorps	xmm1, xmm1
  784076: 8b f0                        	mov	esi, eax
  784078: e8 13 be 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  78407d: 50                           	push	eax
  78407e: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  784084: 8b ce                        	mov	ecx, esi
  784086: 50                           	push	eax
  784087: e8 94 c3 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  78408c: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  784092: 57                           	push	edi
  784093: 6a 00                        	push	0x0
  784095: 6a 00                        	push	0x0
  784097: 68 40 b6 c7 00               	push	0xc7b640
  78409c: 50                           	push	eax
  78409d: 6a 0f                        	push	0xf
  78409f: 68 e8 03 00 00               	push	0x3e8
  7840a4: e8 77 4a ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  7840a9: e9 c4 71 00 00               	jmp	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  7840ae: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7840b4: e8 37 fc fc ff               	call	0x753cf0 <epoxy_handle_external_wglMakeCurrent+0x347af0>
  7840b9: 8b c8                        	mov	ecx, eax
  7840bb: e8 c0 35 23 00               	call	0x9b7680 <epoxy_handle_external_wglMakeCurrent+0x5ab480>
  7840c0: e9 ad 71 00 00               	jmp	0x78b272 <epoxy_handle_external_wglMakeCurrent+0x37f072>
  7840c5: 80 bf 98 13 00 00 00         	cmp	byte ptr [edi + 0x1398], 0x0
  7840cc: 74 18                        	je	0x7840e6 <epoxy_handle_external_wglMakeCurrent+0x377ee6>
  7840ce: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7840d1: 68 ec a4 b1 00               	push	0xb1a4ec
  7840d6: e8 75 64 c8 ff               	call	0x40a550 <.text+0x9550>
  7840db: 84 c0                        	test	al, al
  7840dd: 74 07                        	je	0x7840e6 <epoxy_handle_external_wglMakeCurrent+0x377ee6>
  7840df: c6 87 98 13 00 00 00         	mov	byte ptr [edi + 0x1398], 0x0
  7840e6: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7840ec: e8 5f 37 c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  7840f1: 8b c8                        	mov	ecx, eax
  7840f3: e8 58 54 ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  7840f8: 84 c0                        	test	al, al
  7840fa: 74 1a                        	je	0x784116 <epoxy_handle_external_wglMakeCurrent+0x377f16>
  7840fc: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7840ff: 68 bc af b6 00               	push	0xb6afbc
  784104: e8 47 64 c8 ff               	call	0x40a550 <.text+0x9550>
  784109: 84 c0                        	test	al, al
  78410b: 74 09                        	je	0x784116 <epoxy_handle_external_wglMakeCurrent+0x377f16>
  78410d: 6a 00                        	push	0x0
  78410f: 8b cf                        	mov	ecx, edi
  784111: e8 7a 7e cc ff               	call	0x44bf90 <epoxy_handle_external_wglMakeCurrent+0x3fd90>
  784116: 80 bf 99 13 00 00 00         	cmp	byte ptr [edi + 0x1399], 0x0
  78411d: 0f 84 5d 01 00 00            	je	0x784280 <epoxy_handle_external_wglMakeCurrent+0x378080>
  784123: 80 bf 98 13 00 00 00         	cmp	byte ptr [edi + 0x1398], 0x0
  78412a: 0f 85 50 01 00 00            	jne	0x784280 <epoxy_handle_external_wglMakeCurrent+0x378080>
  784130: 6a 00                        	push	0x0
  784132: 68 3f 02 00 00               	push	0x23f
  784137: 8b cf                        	mov	ecx, edi
  784139: c6 87 99 13 00 00 00         	mov	byte ptr [edi + 0x1399], 0x0
  784140: e8 9b c5 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  784145: 84 c0                        	test	al, al
  784147: 0f 84 33 01 00 00            	je	0x784280 <epoxy_handle_external_wglMakeCurrent+0x378080>
  78414d: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  784153: 6a 37                        	push	0x37
  784155: e8 26 c5 1a 00               	call	0x930680 <epoxy_handle_external_wglMakeCurrent+0x524480>
  78415a: 84 c0                        	test	al, al
  78415c: 0f 85 1e 01 00 00            	jne	0x784280 <epoxy_handle_external_wglMakeCurrent+0x378080>
  784162: f3 0f 10 05 84 a7 ba 00      	movss	xmm0, dword ptr [0xbaa784]
  78416a: 8d 95 e4 fe ff ff            	lea	edx, [ebp - 0x11c]
  784170: f3 0f 5c 87 6c 15 00 00      	subss	xmm0, dword ptr [edi + 0x156c]
  784178: 8d 8d b8 fe ff ff            	lea	ecx, [ebp - 0x148]
  78417e: c7 85 b8 fe ff ff 01 00 00 00	mov	dword ptr [ebp - 0x148], 0x1
  784188: f3 0f 2c c0                  	cvttss2si	eax, xmm0
  78418c: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  784192: e8 e9 89 c9 ff               	call	0x41cb80 <epoxy_handle_external_wglMakeCurrent+0x10980>
  784197: 83 bf 44 13 00 00 01         	cmp	dword ptr [edi + 0x1344], 0x1
  78419e: 8d 8f 70 17 00 00            	lea	ecx, [edi + 0x1770]
  7841a4: 68 3f 02 00 00               	push	0x23f
  7841a9: 8b 30                        	mov	esi, dword ptr [eax]
  7841ab: b8 01 00 00 00               	mov	eax, 0x1
  7841b0: 0f 4e f0                     	cmovle	esi, eax
  7841b3: e8 48 7b e4 ff               	call	0x5cbd00 <epoxy_handle_external_wglMakeCurrent+0x1bfb00>
  7841b8: 56                           	push	esi
  7841b9: 8b c8                        	mov	ecx, eax
  7841bb: e8 60 4e 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  7841c0: 85 c0                        	test	eax, eax
  7841c2: 0f 85 b8 00 00 00            	jne	0x784280 <epoxy_handle_external_wglMakeCurrent+0x378080>
  7841c8: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  7841d0: 51                           	push	ecx
  7841d1: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7841d8: 8b cf                        	mov	ecx, edi
  7841da: 50                           	push	eax
  7841db: 6a 14                        	push	0x14
  7841dd: 68 b5 00 00 00               	push	0xb5
  7841e2: e8 89 22 f3 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  7841e7: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  7841ef: 51                           	push	ecx
  7841f0: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7841f7: 8b cf                        	mov	ecx, edi
  7841f9: 6a 00                        	push	0x0
  7841fb: 6a 02                        	push	0x2
  7841fd: 6a 1e                        	push	0x1e
  7841ff: e8 6c 22 f3 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  784204: 51                           	push	ecx
  784205: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78420c: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  784212: 68 40 b6 c7 00               	push	0xc7b640
  784217: e8 54 2f c8 ff               	call	0x407170 <.text+0x6170>
  78421c: f3 0f 10 1d 04 a9 ba 00      	movss	xmm3, dword ptr [0xbaa904]
  784224: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  78422a: 50                           	push	eax
  78422b: 57                           	push	edi
  78422c: 68 94 bc b6 00               	push	0xb6bc94
  784231: ba 0e 00 00 00               	mov	edx, 0xe
  784236: e8 75 ef f2 ff               	call	0x6b31b0 <epoxy_handle_external_wglMakeCurrent+0x2a6fb0>
  78423b: 83 c4 14                     	add	esp, 0x14
  78423e: b9 03 00 00 00               	mov	ecx, 0x3
  784243: e8 c8 ad ef ff               	call	0x67f010 <epoxy_handle_external_wglMakeCurrent+0x272e10>
  784248: 8d 70 01                     	lea	esi, [eax + 0x1]
  78424b: 85 f6                        	test	esi, esi
  78424d: 7e 19                        	jle	0x784268 <epoxy_handle_external_wglMakeCurrent+0x378068>
  78424f: 90                           	nop
  784250: 68 40 b6 c7 00               	push	0xc7b640
  784255: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  78425b: 8b cf                        	mov	ecx, edi
  78425d: 50                           	push	eax
  78425e: e8 dd b3 03 00               	call	0x7bf640 <epoxy_handle_external_wglMakeCurrent+0x3b3440>
  784263: 83 ee 01                     	sub	esi, 0x1
  784266: 75 e8                        	jne	0x784250 <epoxy_handle_external_wglMakeCurrent+0x378050>
  784268: 6a 01                        	push	0x1
  78426a: 6a 01                        	push	0x1
  78426c: 6a 37                        	push	0x37
  78426e: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  784274: e8 17 c1 1a 00               	call	0x930390 <epoxy_handle_external_wglMakeCurrent+0x524190>
  784279: 8b cf                        	mov	ecx, edi
  78427b: e8 f0 f2 fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  784280: 6a 00                        	push	0x0
  784282: 68 00 40 00 00               	push	0x4000
  784287: 8b cf                        	mov	ecx, edi
  784289: e8 a2 31 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78428e: 84 c0                        	test	al, al
  784290: 0f 85 55 03 00 00            	jne	0x7845eb <epoxy_handle_external_wglMakeCurrent+0x3783eb>
  784296: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78429c: e8 df 31 c8 ff               	call	0x407480 <.text+0x6480>
  7842a1: 6a 00                        	push	0x0
  7842a3: 68 81 02 00 00               	push	0x281
  7842a8: 8b cf                        	mov	ecx, edi
  7842aa: 8b f0                        	mov	esi, eax
  7842ac: e8 2f c4 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  7842b1: 84 c0                        	test	al, al
  7842b3: 0f 84 32 03 00 00            	je	0x7845eb <epoxy_handle_external_wglMakeCurrent+0x3783eb>
  7842b9: 8b ce                        	mov	ecx, esi
  7842bb: e8 f0 23 cd ff               	call	0x4566b0 <epoxy_handle_external_wglMakeCurrent+0x4a4b0>
  7842c0: 85 c0                        	test	eax, eax
  7842c2: 0f 8e 23 03 00 00            	jle	0x7845eb <epoxy_handle_external_wglMakeCurrent+0x3783eb>
  7842c8: f3 0f 10 0d fc a6 ba 00      	movss	xmm1, dword ptr [0xbaa6fc]
  7842d0: 0f 57 d2                     	xorps	xmm2, xmm2
  7842d3: 8b cf                        	mov	ecx, edi
  7842d5: e8 86 84 f2 ff               	call	0x6ac760 <epoxy_handle_external_wglMakeCurrent+0x2a0560>
  7842da: 85 c0                        	test	eax, eax
  7842dc: 0f 84 09 03 00 00            	je	0x7845eb <epoxy_handle_external_wglMakeCurrent+0x3783eb>
  7842e2: 8b ce                        	mov	ecx, esi
  7842e4: e8 67 47 ca ff               	call	0x428a50 <epoxy_handle_external_wglMakeCurrent+0x1c850>
  7842e9: 8b c8                        	mov	ecx, eax
  7842eb: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  7842f1: c7 85 c4 fe ff ff 00 00 00 00	mov	dword ptr [ebp - 0x13c], 0x0
  7842fb: 33 f6                        	xor	esi, esi
  7842fd: e8 ee 33 c9 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  784302: 85 c0                        	test	eax, eax
  784304: 0f 84 80 00 00 00            	je	0x78438a <epoxy_handle_external_wglMakeCurrent+0x37818a>
  78430a: 66 0f 1f 44 00 00            	nop	word ptr [eax + eax]
  784310: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  784316: 56                           	push	esi
  784317: e8 04 33 c9 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  78431c: 8b 08                        	mov	ecx, dword ptr [eax]
  78431e: e8 1d 1b cb ff               	call	0x435e40 <epoxy_handle_external_wglMakeCurrent+0x29c40>
  784323: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  784329: 85 c0                        	test	eax, eax
  78432b: 74 40                        	je	0x78436d <epoxy_handle_external_wglMakeCurrent+0x37816d>
  78432d: 68 10 48 c3 00               	push	0xc34810
  784332: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  784335: 51                           	push	ecx
  784336: 8b c8                        	mov	ecx, eax
  784338: e8 83 34 c9 ff               	call	0x4177c0 <epoxy_handle_external_wglMakeCurrent+0xb5c0>
  78433d: 8b d0                        	mov	edx, eax
  78433f: 8d 8d 64 fe ff ff            	lea	ecx, [ebp - 0x19c]
  784345: e8 26 2e c9 ff               	call	0x417170 <epoxy_handle_external_wglMakeCurrent+0xaf70>
  78434a: 83 c4 04                     	add	esp, 0x4
  78434d: 8b c8                        	mov	ecx, eax
  78434f: e8 5c 2e c9 ff               	call	0x4171b0 <epoxy_handle_external_wglMakeCurrent+0xafb0>
  784354: 84 c0                        	test	al, al
  784356: 74 15                        	je	0x78436d <epoxy_handle_external_wglMakeCurrent+0x37816d>
  784358: 8b 8d e4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x11c]
  78435e: e8 fd 5e ca ff               	call	0x42a260 <epoxy_handle_external_wglMakeCurrent+0x1e060>
  784363: 3b c7                        	cmp	eax, edi
  784365: 75 06                        	jne	0x78436d <epoxy_handle_external_wglMakeCurrent+0x37816d>
  784367: ff 85 c4 fe ff ff            	inc	dword ptr [ebp - 0x13c]
  78436d: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  784373: 46                           	inc	esi
  784374: e8 77 33 c9 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  784379: 3b f0                        	cmp	esi, eax
  78437b: 72 93                        	jb	0x784310 <epoxy_handle_external_wglMakeCurrent+0x378110>
  78437d: 8b b5 c4 fe ff ff            	mov	esi, dword ptr [ebp - 0x13c]
  784383: 83 fe 0c                     	cmp	esi, 0xc
  784386: 73 12                        	jae	0x78439a <epoxy_handle_external_wglMakeCurrent+0x37819a>
  784388: eb 02                        	jmp	0x78438c <epoxy_handle_external_wglMakeCurrent+0x37818c>
  78438a: 33 f6                        	xor	esi, esi
  78438c: b9 02 00 00 00               	mov	ecx, 0x2
  784391: e8 7a ac ef ff               	call	0x67f010 <epoxy_handle_external_wglMakeCurrent+0x272e10>
  784396: 85 c0                        	test	eax, eax
  784398: 74 1b                        	je	0x7843b5 <epoxy_handle_external_wglMakeCurrent+0x3781b5>
  78439a: 83 fe 14                     	cmp	esi, 0x14
  78439d: 0f 83 48 02 00 00            	jae	0x7845eb <epoxy_handle_external_wglMakeCurrent+0x3783eb>
  7843a3: b9 05 00 00 00               	mov	ecx, 0x5
  7843a8: e8 63 ac ef ff               	call	0x67f010 <epoxy_handle_external_wglMakeCurrent+0x272e10>
  7843ad: 85 c0                        	test	eax, eax
  7843af: 0f 85 36 02 00 00            	jne	0x7845eb <epoxy_handle_external_wglMakeCurrent+0x3783eb>
  7843b5: 8b 97 24 16 00 00            	mov	edx, dword ptr [edi + 0x1624]
  7843bb: 83 fa ff                     	cmp	edx, -0x1
  7843be: 74 0d                        	je	0x7843cd <epoxy_handle_external_wglMakeCurrent+0x3781cd>
  7843c0: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  7843c6: e8 05 ae ef ff               	call	0x67f1d0 <epoxy_handle_external_wglMakeCurrent+0x272fd0>
  7843cb: eb 16                        	jmp	0x7843e3 <epoxy_handle_external_wglMakeCurrent+0x3781e3>
  7843cd: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  7843d5: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  7843db: 0f 57 c9                     	xorps	xmm1, xmm1
  7843de: e8 ad ba 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  7843e3: 8b c8                        	mov	ecx, eax
  7843e5: 8b 01                        	mov	eax, dword ptr [ecx]
  7843e7: 8b 49 04                     	mov	ecx, dword ptr [ecx + 0x4]
  7843ea: 89 85 98 fe ff ff            	mov	dword ptr [ebp - 0x168], eax
  7843f0: 89 8d 9c fe ff ff            	mov	dword ptr [ebp - 0x164], ecx
  7843f6: e8 65 ab f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  7843fb: 8b b5 d0 fe ff ff            	mov	esi, dword ptr [ebp - 0x130]
  784401: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  784407: 8b f8                        	mov	edi, eax
  784409: c7 85 e4 fe ff ff 00 00 40 40	mov	dword ptr [ebp - 0x11c], 0x40400000
  784413: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784419: 50                           	push	eax
  78441a: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  784420: 50                           	push	eax
  784421: e8 ba c0 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  784426: 50                           	push	eax
  784427: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  78442d: 50                           	push	eax
  78442e: 8d 8e 60 03 00 00            	lea	ecx, [esi + 0x360]
  784434: e8 e7 bf 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  784439: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78443f: 57                           	push	edi
  784440: 6a 00                        	push	0x0
  784442: 8b fe                        	mov	edi, esi
  784444: 57                           	push	edi
  784445: 50                           	push	eax
  784446: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  78444c: 50                           	push	eax
  78444d: 6a 01                        	push	0x1
  78444f: 6a 02                        	push	0x2
  784451: e8 ca 46 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  784456: 8b f0                        	mov	esi, eax
  784458: 6a 01                        	push	0x1
  78445a: 8b ce                        	mov	ecx, esi
  78445c: 89 b5 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], esi
  784462: e8 b9 f2 fc ff               	call	0x753720 <epoxy_handle_external_wglMakeCurrent+0x347520>
  784467: f3 0f 10 87 20 03 00 00      	movss	xmm0, dword ptr [edi + 0x320]
  78446f: f3 0f 5c 05 30 a7 ba 00      	subss	xmm0, dword ptr [0xbaa730]
  784477: 0f 2f 05 e4 9f ba 00         	comiss	xmm0, dword ptr [0xba9fe4]
  78447e: 72 13                        	jb	0x784493 <epoxy_handle_external_wglMakeCurrent+0x378293>
  784480: f3 0f 58 c0                  	addss	xmm0, xmm0
  784484: e8 d7 cd ca ff               	call	0x431260 <epoxy_handle_external_wglMakeCurrent+0x25060>
  784489: f3 0f 59 05 d0 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa2d0]
  784491: eb 1c                        	jmp	0x7844af <epoxy_handle_external_wglMakeCurrent+0x3782af>
  784493: f3 0f 59 05 c0 ad ba 00      	mulss	xmm0, dword ptr [0xbaadc0]
  78449b: e8 c0 cd ca ff               	call	0x431260 <epoxy_handle_external_wglMakeCurrent+0x25060>
  7844a0: 0f 57 05 70 cb ba 00         	xorps	xmm0, xmmword ptr [0xbacb70]
  7844a7: f3 0f 5e 05 1c a8 ba 00      	divss	xmm0, dword ptr [0xbaa81c]
  7844af: f3 0f 58 05 30 a7 ba 00      	addss	xmm0, dword ptr [0xbaa730]
  7844b7: 8d 95 b8 fe ff ff            	lea	edx, [ebp - 0x148]
  7844bd: c7 85 b8 fe ff ff 00 00 80 3f	mov	dword ptr [ebp - 0x148], 0x3f800000
  7844c7: 8d 8d a4 fe ff ff            	lea	ecx, [ebp - 0x15c]
  7844cd: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  7844d5: e8 96 86 c9 ff               	call	0x41cb70 <epoxy_handle_external_wglMakeCurrent+0x10970>
  7844da: 8b 06                        	mov	eax, dword ptr [esi]
  7844dc: 51                           	push	ecx
  7844dd: 8b ce                        	mov	ecx, esi
  7844df: c7 04 24 00 00 60 40         	mov	dword ptr [esp], 0x40600000
  7844e6: ff 50 40                     	call	dword ptr [eax + 0x40]
  7844e9: 68 b0 4b c3 00               	push	0xc34bb0
  7844ee: ba 10 48 c3 00               	mov	edx, 0xc34810
  7844f3: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  7844f6: e8 25 17 cb ff               	call	0x435c20 <epoxy_handle_external_wglMakeCurrent+0x29a20>
  7844fb: 83 ec 0c                     	sub	esp, 0xc
  7844fe: 8b cc                        	mov	ecx, esp
  784500: 0f 10 00                     	movups	xmm0, xmmword ptr [eax]
  784503: 0f 11 01                     	movups	xmmword ptr [ecx], xmm0
  784506: 8b ce                        	mov	ecx, esi
  784508: e8 43 1c ef ff               	call	0x676150 <epoxy_handle_external_wglMakeCurrent+0x269f50>
  78450d: 57                           	push	edi
  78450e: 8b ce                        	mov	ecx, esi
  784510: e8 8b 4d f2 ff               	call	0x6a92a0 <epoxy_handle_external_wglMakeCurrent+0x29d0a0>
  784515: e8 c6 aa ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  78451a: f3 0f 59 05 98 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa198]
  784522: 51                           	push	ecx
  784523: 8b ce                        	mov	ecx, esi
  784525: f3 0f 58 05 e0 a3 ba 00      	addss	xmm0, dword ptr [0xbaa3e0]
  78452d: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  784532: e8 e9 1b ef ff               	call	0x676120 <epoxy_handle_external_wglMakeCurrent+0x269f20>
  784537: 51                           	push	ecx
  784538: 8b ce                        	mov	ecx, esi
  78453a: c7 04 24 00 00 c0 c0         	mov	dword ptr [esp], 0xc0c00000
  784541: e8 7a 1a ef ff               	call	0x675fc0 <epoxy_handle_external_wglMakeCurrent+0x269dc0>
  784546: 51                           	push	ecx
  784547: 8b ce                        	mov	ecx, esi
  784549: c7 04 24 00 00 00 00         	mov	dword ptr [esp], 0x0
  784550: e8 1b 07 cc ff               	call	0x444c70 <epoxy_handle_external_wglMakeCurrent+0x38a70>
  784555: 51                           	push	ecx
  784556: 8b ce                        	mov	ecx, esi
  784558: c7 04 24 8f c2 f5 bc         	mov	dword ptr [esp], 0xbcf5c28f
  78455f: e8 2c 07 cc ff               	call	0x444c90 <epoxy_handle_external_wglMakeCurrent+0x38a90>
  784564: 8b 06                        	mov	eax, dword ptr [esi]
  784566: 83 ec 0c                     	sub	esp, 0xc
  784569: 8b 70 3c                     	mov	esi, dword ptr [eax + 0x3c]
  78456c: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  784574: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  78457c: c7 04 24 00 00 00 00         	mov	dword ptr [esp], 0x0
  784583: e8 58 aa ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  784588: 83 ec 14                     	sub	esp, 0x14
  78458b: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  784591: f3 0f 11 44 24 10            	movss	dword ptr [esp + 0x10], xmm0
  784597: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  78459f: c7 44 24 0c cd cc cc 3f      	mov	dword ptr [esp + 0xc], 0x3fcccccd
  7845a7: 0f 28 d8                     	movaps	xmm3, xmm0
  7845aa: c7 44 24 08 cd cc cc 3f      	mov	dword ptr [esp + 0x8], 0x3fcccccd
  7845b2: 0f 28 d0                     	movaps	xmm2, xmm0
  7845b5: c7 44 24 04 cd cc 2c 40      	mov	dword ptr [esp + 0x4], 0x402ccccd
  7845bd: 0f 28 c8                     	movaps	xmm1, xmm0
  7845c0: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7845c7: e8 84 15 cb ff               	call	0x435b50 <epoxy_handle_external_wglMakeCurrent+0x29950>
  7845cc: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  7845d2: 6a 01                        	push	0x1
  7845d4: 6a 00                        	push	0x0
  7845d6: 68 ff 00 00 00               	push	0xff
  7845db: 6a ff                        	push	-0x1
  7845dd: 50                           	push	eax
  7845de: ff d6                        	call	esi
  7845e0: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  7845e6: 8b 01                        	mov	eax, dword ptr [ecx]
  7845e8: ff 50 0c                     	call	dword ptr [eax + 0xc]
  7845eb: 80 bf 9a 13 00 00 00         	cmp	byte ptr [edi + 0x139a], 0x0
  7845f2: 74 44                        	je	0x784638 <epoxy_handle_external_wglMakeCurrent+0x378438>
  7845f4: 68 ec a4 b1 00               	push	0xb1a4ec
  7845f9: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  7845ff: e8 4c 5f c8 ff               	call	0x40a550 <.text+0x9550>
  784604: 84 c0                        	test	al, al
  784606: 74 30                        	je	0x784638 <epoxy_handle_external_wglMakeCurrent+0x378438>
  784608: 68 28 2b b6 00               	push	0xb62b28
  78460d: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  784613: e8 38 5f c8 ff               	call	0x40a550 <.text+0x9550>
  784618: 84 c0                        	test	al, al
  78461a: 75 1c                        	jne	0x784638 <epoxy_handle_external_wglMakeCurrent+0x378438>
  78461c: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  784622: 88 87 9a 13 00 00            	mov	byte ptr [edi + 0x139a], al
  784628: e8 e3 38 c8 ff               	call	0x407f10 <.text+0x6f10>
  78462d: 8d 8f f8 0f 00 00            	lea	ecx, [edi + 0xff8]
  784633: e8 d8 38 c8 ff               	call	0x407f10 <.text+0x6f10>
  784638: 8b cf                        	mov	ecx, edi
  78463a: e8 11 55 03 00               	call	0x7b9b50 <epoxy_handle_external_wglMakeCurrent+0x3ad950>
  78463f: 6a 00                        	push	0x0
  784641: 68 00 40 00 00               	push	0x4000
  784646: 8b cf                        	mov	ecx, edi
  784648: e8 e3 2d c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78464d: 84 c0                        	test	al, al
  78464f: 75 07                        	jne	0x784658 <epoxy_handle_external_wglMakeCurrent+0x378458>
  784651: 8b cf                        	mov	ecx, edi
  784653: e8 38 fd 04 00               	call	0x7d4390 <epoxy_handle_external_wglMakeCurrent+0x3c8190>
  784658: 6a 00                        	push	0x0
  78465a: 68 00 40 00 00               	push	0x4000
  78465f: 8b cf                        	mov	ecx, edi
  784661: e8 ca 2d c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  784666: 84 c0                        	test	al, al
  784668: 0f 85 fa 0e 00 00            	jne	0x785568 <epoxy_handle_external_wglMakeCurrent+0x379368>
  78466e: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  784674: e8 67 c4 c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  784679: 8b c8                        	mov	ecx, eax
  78467b: e8 b0 a7 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  784680: 84 c0                        	test	al, al
  784682: 0f 85 e0 0e 00 00            	jne	0x785568 <epoxy_handle_external_wglMakeCurrent+0x379368>
  784688: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78468e: e8 bd 44 ca ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  784693: 8b c8                        	mov	ecx, eax
  784695: e8 96 a7 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  78469a: 84 c0                        	test	al, al
  78469c: 0f 85 c6 0e 00 00            	jne	0x785568 <epoxy_handle_external_wglMakeCurrent+0x379368>
  7846a2: 38 87 b6 13 00 00            	cmp	byte ptr [edi + 0x13b6], al
  7846a8: 74 44                        	je	0x7846ee <epoxy_handle_external_wglMakeCurrent+0x3784ee>
  7846aa: 6a 04                        	push	0x4
  7846ac: 8b cf                        	mov	ecx, edi
  7846ae: e8 2d 70 04 00               	call	0x7cb6e0 <epoxy_handle_external_wglMakeCurrent+0x3bf4e0>
  7846b3: 6a 00                        	push	0x0
  7846b5: 6a ff                        	push	-0x1
  7846b7: 8b cf                        	mov	ecx, edi
  7846b9: 66 0f 6e c0                  	movd	xmm0, eax
  7846bd: 8d 85 de fe ff ff            	lea	eax, [ebp - 0x122]
  7846c3: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  7846c6: 6a 01                        	push	0x1
  7846c8: 0f 2f 05 54 a4 ba 00         	comiss	xmm0, dword ptr [0xbaa454]
  7846cf: 76 10                        	jbe	0x7846e1 <epoxy_handle_external_wglMakeCurrent+0x3784e1>
  7846d1: 68 a3 01 00 00               	push	0x1a3
  7846d6: 50                           	push	eax
  7846d7: e8 f4 f2 e2 ff               	call	0x5b39d0 <epoxy_handle_external_wglMakeCurrent+0x1a77d0>
  7846dc: e9 76 0e 00 00               	jmp	0x785557 <epoxy_handle_external_wglMakeCurrent+0x379357>
  7846e1: 6a 2c                        	push	0x2c
  7846e3: 50                           	push	eax
  7846e4: e8 e7 f2 e2 ff               	call	0x5b39d0 <epoxy_handle_external_wglMakeCurrent+0x1a77d0>
  7846e9: e9 69 0e 00 00               	jmp	0x785557 <epoxy_handle_external_wglMakeCurrent+0x379357>
  7846ee: 83 bf b8 13 00 00 00         	cmp	dword ptr [edi + 0x13b8], 0x0
  7846f5: 0f 84 5c 0e 00 00            	je	0x785557 <epoxy_handle_external_wglMakeCurrent+0x379357>
  7846fb: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  784701: e8 0a fe c9 ff               	call	0x424510 <epoxy_handle_external_wglMakeCurrent+0x18310>
  784706: 8d 8f 7c 17 00 00            	lea	ecx, [edi + 0x177c]
  78470c: c7 45 fc 03 00 00 00         	mov	dword ptr [ebp - 0x4], 0x3
  784713: 68 ac 00 00 00               	push	0xac
  784718: e8 e3 75 e4 ff               	call	0x5cbd00 <epoxy_handle_external_wglMakeCurrent+0x1bfb00>
  78471d: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784720: 89 85 dc fe ff ff            	mov	dword ptr [ebp - 0x124], eax
  784726: e8 e5 fd c9 ff               	call	0x424510 <epoxy_handle_external_wglMakeCurrent+0x18310>
  78472b: 32 c9                        	xor	cl, cl
  78472d: c6 45 fc 04                  	mov	byte ptr [ebp - 0x4], 0x4
  784731: 88 8d db fe ff ff            	mov	byte ptr [ebp - 0x125], cl
  784737: 33 f6                        	xor	esi, esi
  784739: 88 8d e2 fe ff ff            	mov	byte ptr [ebp - 0x11e], cl
  78473f: 8b cf                        	mov	ecx, edi
  784741: 68 ac 00 00 00               	push	0xac
  784746: e8 95 6f 04 00               	call	0x7cb6e0 <epoxy_handle_external_wglMakeCurrent+0x3bf4e0>
  78474b: 83 e8 02                     	sub	eax, 0x2
  78474e: 74 0a                        	je	0x78475a <epoxy_handle_external_wglMakeCurrent+0x37855a>
  784750: 83 e8 01                     	sub	eax, 0x1
  784753: 75 0a                        	jne	0x78475f <epoxy_handle_external_wglMakeCurrent+0x37855f>
  784755: 8d 70 32                     	lea	esi, [eax + 0x32]
  784758: eb 05                        	jmp	0x78475f <epoxy_handle_external_wglMakeCurrent+0x37855f>
  78475a: be 19 00 00 00               	mov	esi, 0x19
  78475f: 8b 87 b8 13 00 00            	mov	eax, dword ptr [edi + 0x13b8]
  784765: 83 f8 01                     	cmp	eax, 0x1
  784768: 0f 85 bb 01 00 00            	jne	0x784929 <epoxy_handle_external_wglMakeCurrent+0x378729>
  78476e: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  784774: 6a 64                        	push	0x64
  784776: e8 a5 48 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  78477b: 8d 4e 32                     	lea	ecx, [esi + 0x32]
  78477e: c7 85 e4 fe ff ff 01 00 00 00	mov	dword ptr [ebp - 0x11c], 0x1
  784788: 3b c1                        	cmp	eax, ecx
  78478a: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784790: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784793: 50                           	push	eax
  784794: 0f 82 7e 01 00 00            	jb	0x784918 <epoxy_handle_external_wglMakeCurrent+0x378718>
  78479a: c6 85 e2 fe ff ff 01         	mov	byte ptr [ebp - 0x11e], 0x1
  7847a1: e8 7a 7e 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7847a6: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7847ac: c7 85 e4 fe ff ff 02 00 00 00	mov	dword ptr [ebp - 0x11c], 0x2
  7847b6: 50                           	push	eax
  7847b7: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7847ba: e8 61 7e 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7847bf: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7847c5: c7 85 e4 fe ff ff 04 00 00 00	mov	dword ptr [ebp - 0x11c], 0x4
  7847cf: 50                           	push	eax
  7847d0: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7847d3: e8 48 7e 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7847d8: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7847de: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  7847e8: 50                           	push	eax
  7847e9: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7847ec: e8 2f 7e 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7847f1: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7847f7: c7 85 e4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x11c], 0x6
  784801: 50                           	push	eax
  784802: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784805: e8 16 7e 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78480a: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784810: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  78481a: 50                           	push	eax
  78481b: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78481e: e8 fd 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784823: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784829: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  784833: 50                           	push	eax
  784834: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784837: e8 e4 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78483c: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784842: c7 85 e4 fe ff ff 09 00 00 00	mov	dword ptr [ebp - 0x11c], 0x9
  78484c: 50                           	push	eax
  78484d: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784850: e8 cb 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784855: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78485b: c7 85 e4 fe ff ff 0b 00 00 00	mov	dword ptr [ebp - 0x11c], 0xb
  784865: 50                           	push	eax
  784866: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784869: e8 b2 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78486e: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784874: c7 85 e4 fe ff ff 0c 00 00 00	mov	dword ptr [ebp - 0x11c], 0xc
  78487e: 50                           	push	eax
  78487f: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784882: e8 99 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784887: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78488d: c7 85 e4 fe ff ff 0d 00 00 00	mov	dword ptr [ebp - 0x11c], 0xd
  784897: 50                           	push	eax
  784898: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78489b: e8 80 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7848a0: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7848a6: c7 85 e4 fe ff ff 14 00 00 00	mov	dword ptr [ebp - 0x11c], 0x14
  7848b0: 50                           	push	eax
  7848b1: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7848b4: e8 67 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7848b9: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7848bf: c7 85 e4 fe ff ff 15 00 00 00	mov	dword ptr [ebp - 0x11c], 0x15
  7848c9: 50                           	push	eax
  7848ca: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7848cd: e8 4e 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7848d2: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7848d8: c7 85 e4 fe ff ff 16 00 00 00	mov	dword ptr [ebp - 0x11c], 0x16
  7848e2: 50                           	push	eax
  7848e3: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7848e6: e8 35 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7848eb: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7848f1: c7 85 e4 fe ff ff 18 00 00 00	mov	dword ptr [ebp - 0x11c], 0x18
  7848fb: 50                           	push	eax
  7848fc: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7848ff: e8 1c 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784904: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78490a: c7 85 e4 fe ff ff 12 00 00 00	mov	dword ptr [ebp - 0x11c], 0x12
  784914: 50                           	push	eax
  784915: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784918: e8 03 7d 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78491d: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  784924: e9 89 09 00 00               	jmp	0x7852b2 <epoxy_handle_external_wglMakeCurrent+0x3790b2>
  784929: 83 f8 02                     	cmp	eax, 0x2
  78492c: 0f 85 98 01 00 00            	jne	0x784aca <epoxy_handle_external_wglMakeCurrent+0x3788ca>
  784932: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  784938: 6a 64                        	push	0x64
  78493a: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  784941: c6 85 e2 fe ff ff 01         	mov	byte ptr [ebp - 0x11e], 0x1
  784948: e8 d3 46 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  78494d: 8d 4e 32                     	lea	ecx, [esi + 0x32]
  784950: 3b c1                        	cmp	eax, ecx
  784952: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784958: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78495b: 50                           	push	eax
  78495c: 0f 83 82 00 00 00            	jae	0x7849e4 <epoxy_handle_external_wglMakeCurrent+0x3787e4>
  784962: c7 85 e4 fe ff ff 02 00 00 00	mov	dword ptr [ebp - 0x11c], 0x2
  78496c: e8 af 7c 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784971: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784977: c7 85 e4 fe ff ff 04 00 00 00	mov	dword ptr [ebp - 0x11c], 0x4
  784981: 50                           	push	eax
  784982: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784985: e8 96 7c 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78498a: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784990: c7 85 e4 fe ff ff 09 00 00 00	mov	dword ptr [ebp - 0x11c], 0x9
  78499a: 50                           	push	eax
  78499b: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78499e: e8 7d 7c 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7849a3: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7849a9: c7 85 e4 fe ff ff 0b 00 00 00	mov	dword ptr [ebp - 0x11c], 0xb
  7849b3: 50                           	push	eax
  7849b4: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7849b7: e8 64 7c 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7849bc: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7849c2: c7 85 e4 fe ff ff 0c 00 00 00	mov	dword ptr [ebp - 0x11c], 0xc
  7849cc: 50                           	push	eax
  7849cd: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7849d0: e8 4b 7c 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7849d5: c7 85 e4 fe ff ff 18 00 00 00	mov	dword ptr [ebp - 0x11c], 0x18
  7849df: e9 bf 08 00 00               	jmp	0x7852a3 <epoxy_handle_external_wglMakeCurrent+0x3790a3>
  7849e4: c7 85 e4 fe ff ff 01 00 00 00	mov	dword ptr [ebp - 0x11c], 0x1
  7849ee: e8 2d 7c 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7849f3: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7849f9: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  784a03: 50                           	push	eax
  784a04: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784a07: e8 14 7c 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784a0c: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784a12: c7 85 e4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x11c], 0x6
  784a1c: 50                           	push	eax
  784a1d: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784a20: e8 fb 7b 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784a25: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784a2b: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  784a35: 50                           	push	eax
  784a36: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784a39: e8 e2 7b 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784a3e: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784a44: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  784a4e: 50                           	push	eax
  784a4f: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784a52: e8 c9 7b 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784a57: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784a5d: c7 85 e4 fe ff ff 0d 00 00 00	mov	dword ptr [ebp - 0x11c], 0xd
  784a67: 50                           	push	eax
  784a68: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784a6b: e8 b0 7b 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784a70: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784a76: c7 85 e4 fe ff ff 14 00 00 00	mov	dword ptr [ebp - 0x11c], 0x14
  784a80: 50                           	push	eax
  784a81: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784a84: e8 97 7b 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784a89: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784a8f: c7 85 e4 fe ff ff 15 00 00 00	mov	dword ptr [ebp - 0x11c], 0x15
  784a99: 50                           	push	eax
  784a9a: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784a9d: e8 7e 7b 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784aa2: c7 85 e4 fe ff ff 16 00 00 00	mov	dword ptr [ebp - 0x11c], 0x16
  784aac: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784ab2: 50                           	push	eax
  784ab3: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784ab6: e8 65 7b 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784abb: c7 85 e4 fe ff ff 12 00 00 00	mov	dword ptr [ebp - 0x11c], 0x12
  784ac5: e9 d9 07 00 00               	jmp	0x7852a3 <epoxy_handle_external_wglMakeCurrent+0x3790a3>
  784aca: 83 f8 03                     	cmp	eax, 0x3
  784acd: 0f 85 51 02 00 00            	jne	0x784d24 <epoxy_handle_external_wglMakeCurrent+0x378b24>
  784ad3: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  784ad9: 6a 64                        	push	0x64
  784adb: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  784ae2: c6 85 e2 fe ff ff 01         	mov	byte ptr [ebp - 0x11e], 0x1
  784ae9: e8 32 45 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  784aee: 8d 4e 19                     	lea	ecx, [esi + 0x19]
  784af1: 3b c1                        	cmp	eax, ecx
  784af3: 0f 83 7a 00 00 00            	jae	0x784b73 <epoxy_handle_external_wglMakeCurrent+0x378973>
  784af9: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  784aff: 6a 64                        	push	0x64
  784b01: e8 1a 45 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  784b06: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  784b0c: 83 f8 32                     	cmp	eax, 0x32
  784b0f: 73 31                        	jae	0x784b42 <epoxy_handle_external_wglMakeCurrent+0x378942>
  784b11: e8 1a fa c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  784b16: 6a 00                        	push	0x0
  784b18: 6a 01                        	push	0x1
  784b1a: 8b c8                        	mov	ecx, eax
  784b1c: e8 7f 4e fc ff               	call	0x7499a0 <epoxy_handle_external_wglMakeCurrent+0x33d7a0>
  784b21: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784b27: c7 85 e4 fe ff ff ff ff ff ff	mov	dword ptr [ebp - 0x11c], 0xffffffff
  784b31: 50                           	push	eax
  784b32: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  784b38: e8 13 7d ca ff               	call	0x42c850 <epoxy_handle_external_wglMakeCurrent+0x20650>
  784b3d: e9 70 07 00 00               	jmp	0x7852b2 <epoxy_handle_external_wglMakeCurrent+0x3790b2>
  784b42: e8 e9 f9 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  784b47: 6a 01                        	push	0x1
  784b49: 6a 00                        	push	0x0
  784b4b: 8b c8                        	mov	ecx, eax
  784b4d: e8 4e 4e fc ff               	call	0x7499a0 <epoxy_handle_external_wglMakeCurrent+0x33d7a0>
  784b52: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784b58: c7 85 e4 fe ff ff ff ff ff ff	mov	dword ptr [ebp - 0x11c], 0xffffffff
  784b62: 50                           	push	eax
  784b63: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  784b69: e8 e2 7c ca ff               	call	0x42c850 <epoxy_handle_external_wglMakeCurrent+0x20650>
  784b6e: e9 3f 07 00 00               	jmp	0x7852b2 <epoxy_handle_external_wglMakeCurrent+0x3790b2>
  784b73: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784b79: c7 85 e4 fe ff ff 01 00 00 00	mov	dword ptr [ebp - 0x11c], 0x1
  784b83: 50                           	push	eax
  784b84: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784b87: e8 94 7a 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784b8c: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784b92: c7 85 e4 fe ff ff 02 00 00 00	mov	dword ptr [ebp - 0x11c], 0x2
  784b9c: 50                           	push	eax
  784b9d: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784ba0: e8 7b 7a 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784ba5: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784bab: c7 85 e4 fe ff ff 04 00 00 00	mov	dword ptr [ebp - 0x11c], 0x4
  784bb5: 50                           	push	eax
  784bb6: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784bb9: e8 62 7a 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784bbe: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784bc4: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  784bce: 50                           	push	eax
  784bcf: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784bd2: e8 49 7a 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784bd7: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784bdd: c7 85 e4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x11c], 0x6
  784be7: 50                           	push	eax
  784be8: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784beb: e8 30 7a 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784bf0: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784bf6: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  784c00: 50                           	push	eax
  784c01: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784c04: e8 17 7a 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784c09: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784c0f: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  784c19: 50                           	push	eax
  784c1a: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784c1d: e8 fe 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784c22: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784c28: c7 85 e4 fe ff ff 09 00 00 00	mov	dword ptr [ebp - 0x11c], 0x9
  784c32: 50                           	push	eax
  784c33: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784c36: e8 e5 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784c3b: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784c41: c7 85 e4 fe ff ff 0a 00 00 00	mov	dword ptr [ebp - 0x11c], 0xa
  784c4b: 50                           	push	eax
  784c4c: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784c4f: e8 cc 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784c54: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784c5a: c7 85 e4 fe ff ff 0b 00 00 00	mov	dword ptr [ebp - 0x11c], 0xb
  784c64: 50                           	push	eax
  784c65: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784c68: e8 b3 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784c6d: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784c73: c7 85 e4 fe ff ff 0c 00 00 00	mov	dword ptr [ebp - 0x11c], 0xc
  784c7d: 50                           	push	eax
  784c7e: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784c81: e8 9a 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784c86: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784c8c: c7 85 e4 fe ff ff 0d 00 00 00	mov	dword ptr [ebp - 0x11c], 0xd
  784c96: 50                           	push	eax
  784c97: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784c9a: e8 81 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784c9f: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784ca5: c7 85 e4 fe ff ff 14 00 00 00	mov	dword ptr [ebp - 0x11c], 0x14
  784caf: 50                           	push	eax
  784cb0: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784cb3: e8 68 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784cb8: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784cbe: c7 85 e4 fe ff ff 15 00 00 00	mov	dword ptr [ebp - 0x11c], 0x15
  784cc8: 50                           	push	eax
  784cc9: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784ccc: e8 4f 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784cd1: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784cd7: c7 85 e4 fe ff ff 18 00 00 00	mov	dword ptr [ebp - 0x11c], 0x18
  784ce1: 50                           	push	eax
  784ce2: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784ce5: e8 36 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784cea: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784cf0: c7 85 e4 fe ff ff 12 00 00 00	mov	dword ptr [ebp - 0x11c], 0x12
  784cfa: 50                           	push	eax
  784cfb: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784cfe: e8 1d 79 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784d03: c7 85 e4 fe ff ff fe ff ff ff	mov	dword ptr [ebp - 0x11c], 0xfffffffe
  784d0d: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784d13: 50                           	push	eax
  784d14: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  784d1a: e8 31 7b ca ff               	call	0x42c850 <epoxy_handle_external_wglMakeCurrent+0x20650>
  784d1f: e9 28 05 00 00               	jmp	0x78524c <epoxy_handle_external_wglMakeCurrent+0x37904c>
  784d24: 83 f8 05                     	cmp	eax, 0x5
  784d27: 0f 85 94 01 00 00            	jne	0x784ec1 <epoxy_handle_external_wglMakeCurrent+0x378cc1>
  784d2d: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  784d33: 6a 64                        	push	0x64
  784d35: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  784d3c: c6 85 e2 fe ff ff 01         	mov	byte ptr [ebp - 0x11e], 0x1
  784d43: e8 d8 42 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  784d48: 8d 4e 32                     	lea	ecx, [esi + 0x32]
  784d4b: 3b c1                        	cmp	eax, ecx
  784d4d: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784d53: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784d56: 50                           	push	eax
  784d57: 73 1e                        	jae	0x784d77 <epoxy_handle_external_wglMakeCurrent+0x378b77>
  784d59: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  784d63: e8 b8 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784d68: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  784d72: e9 2c 05 00 00               	jmp	0x7852a3 <epoxy_handle_external_wglMakeCurrent+0x3790a3>
  784d77: c7 85 e4 fe ff ff 01 00 00 00	mov	dword ptr [ebp - 0x11c], 0x1
  784d81: e8 9a 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784d86: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784d8c: c7 85 e4 fe ff ff 02 00 00 00	mov	dword ptr [ebp - 0x11c], 0x2
  784d96: 50                           	push	eax
  784d97: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784d9a: e8 81 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784d9f: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784da5: c7 85 e4 fe ff ff 04 00 00 00	mov	dword ptr [ebp - 0x11c], 0x4
  784daf: 50                           	push	eax
  784db0: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784db3: e8 68 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784db8: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784dbe: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  784dc8: 50                           	push	eax
  784dc9: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784dcc: e8 4f 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784dd1: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784dd7: c7 85 e4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x11c], 0x6
  784de1: 50                           	push	eax
  784de2: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784de5: e8 36 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784dea: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784df0: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  784dfa: 50                           	push	eax
  784dfb: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784dfe: e8 1d 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784e03: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784e09: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  784e13: 50                           	push	eax
  784e14: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784e17: e8 04 78 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784e1c: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784e22: c7 85 e4 fe ff ff 09 00 00 00	mov	dword ptr [ebp - 0x11c], 0x9
  784e2c: 50                           	push	eax
  784e2d: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784e30: e8 eb 77 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784e35: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784e3b: c7 85 e4 fe ff ff 0b 00 00 00	mov	dword ptr [ebp - 0x11c], 0xb
  784e45: 50                           	push	eax
  784e46: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784e49: e8 d2 77 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784e4e: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784e54: c7 85 e4 fe ff ff 0c 00 00 00	mov	dword ptr [ebp - 0x11c], 0xc
  784e5e: 50                           	push	eax
  784e5f: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784e62: e8 b9 77 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784e67: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784e6d: c7 85 e4 fe ff ff 0d 00 00 00	mov	dword ptr [ebp - 0x11c], 0xd
  784e77: 50                           	push	eax
  784e78: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784e7b: e8 a0 77 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784e80: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784e86: c7 85 e4 fe ff ff 14 00 00 00	mov	dword ptr [ebp - 0x11c], 0x14
  784e90: 50                           	push	eax
  784e91: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784e94: e8 87 77 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784e99: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784e9f: c7 85 e4 fe ff ff 15 00 00 00	mov	dword ptr [ebp - 0x11c], 0x15
  784ea9: 50                           	push	eax
  784eaa: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784ead: e8 6e 77 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784eb2: c7 85 e4 fe ff ff 18 00 00 00	mov	dword ptr [ebp - 0x11c], 0x18
  784ebc: e9 63 03 00 00               	jmp	0x785224 <epoxy_handle_external_wglMakeCurrent+0x379024>
  784ec1: 83 f8 04                     	cmp	eax, 0x4
  784ec4: 0f 85 94 01 00 00            	jne	0x78505e <epoxy_handle_external_wglMakeCurrent+0x378e5e>
  784eca: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  784ed0: 6a 64                        	push	0x64
  784ed2: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  784ed9: c6 85 e2 fe ff ff 01         	mov	byte ptr [ebp - 0x11e], 0x1
  784ee0: e8 3b 41 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  784ee5: 8d 4e 32                     	lea	ecx, [esi + 0x32]
  784ee8: 3b c1                        	cmp	eax, ecx
  784eea: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784ef0: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784ef3: 50                           	push	eax
  784ef4: 73 1e                        	jae	0x784f14 <epoxy_handle_external_wglMakeCurrent+0x378d14>
  784ef6: c7 85 e4 fe ff ff 14 00 00 00	mov	dword ptr [ebp - 0x11c], 0x14
  784f00: e8 1b 77 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784f05: c7 85 e4 fe ff ff 15 00 00 00	mov	dword ptr [ebp - 0x11c], 0x15
  784f0f: e9 98 fb ff ff               	jmp	0x784aac <epoxy_handle_external_wglMakeCurrent+0x3788ac>
  784f14: c7 85 e4 fe ff ff 01 00 00 00	mov	dword ptr [ebp - 0x11c], 0x1
  784f1e: e8 fd 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784f23: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784f29: c7 85 e4 fe ff ff 02 00 00 00	mov	dword ptr [ebp - 0x11c], 0x2
  784f33: 50                           	push	eax
  784f34: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784f37: e8 e4 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784f3c: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784f42: c7 85 e4 fe ff ff 04 00 00 00	mov	dword ptr [ebp - 0x11c], 0x4
  784f4c: 50                           	push	eax
  784f4d: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784f50: e8 cb 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784f55: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784f5b: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  784f65: 50                           	push	eax
  784f66: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784f69: e8 b2 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784f6e: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784f74: c7 85 e4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x11c], 0x6
  784f7e: 50                           	push	eax
  784f7f: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784f82: e8 99 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784f87: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784f8d: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  784f97: 50                           	push	eax
  784f98: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784f9b: e8 80 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784fa0: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784fa6: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  784fb0: 50                           	push	eax
  784fb1: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784fb4: e8 67 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784fb9: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784fbf: c7 85 e4 fe ff ff 09 00 00 00	mov	dword ptr [ebp - 0x11c], 0x9
  784fc9: 50                           	push	eax
  784fca: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784fcd: e8 4e 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784fd2: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784fd8: c7 85 e4 fe ff ff 0b 00 00 00	mov	dword ptr [ebp - 0x11c], 0xb
  784fe2: 50                           	push	eax
  784fe3: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784fe6: e8 35 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  784feb: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  784ff1: c7 85 e4 fe ff ff 0c 00 00 00	mov	dword ptr [ebp - 0x11c], 0xc
  784ffb: 50                           	push	eax
  784ffc: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  784fff: e8 1c 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785004: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78500a: c7 85 e4 fe ff ff 0d 00 00 00	mov	dword ptr [ebp - 0x11c], 0xd
  785014: 50                           	push	eax
  785015: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785018: e8 03 76 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78501d: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785023: c7 85 e4 fe ff ff 18 00 00 00	mov	dword ptr [ebp - 0x11c], 0x18
  78502d: 50                           	push	eax
  78502e: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785031: e8 ea 75 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785036: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78503c: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  785046: 50                           	push	eax
  785047: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78504a: e8 d1 75 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78504f: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  785059: e9 df 01 00 00               	jmp	0x78523d <epoxy_handle_external_wglMakeCurrent+0x37903d>
  78505e: 83 f8 07                     	cmp	eax, 0x7
  785061: 0f 85 03 02 00 00            	jne	0x78526a <epoxy_handle_external_wglMakeCurrent+0x37906a>
  785067: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  78506d: 6a 64                        	push	0x64
  78506f: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  785076: c6 85 e2 fe ff ff 01         	mov	byte ptr [ebp - 0x11e], 0x1
  78507d: e8 9e 3f 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  785082: 8d 4e 0a                     	lea	ecx, [esi + 0xa]
  785085: 3b c1                        	cmp	eax, ecx
  785087: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78508d: 50                           	push	eax
  78508e: 73 1a                        	jae	0x7850aa <epoxy_handle_external_wglMakeCurrent+0x378eaa>
  785090: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  785096: c7 85 e4 fe ff ff fe ff ff ff	mov	dword ptr [ebp - 0x11c], 0xfffffffe
  7850a0: e8 ab 77 ca ff               	call	0x42c850 <epoxy_handle_external_wglMakeCurrent+0x20650>
  7850a5: e9 08 02 00 00               	jmp	0x7852b2 <epoxy_handle_external_wglMakeCurrent+0x3790b2>
  7850aa: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7850ad: c7 85 e4 fe ff ff 01 00 00 00	mov	dword ptr [ebp - 0x11c], 0x1
  7850b7: e8 64 75 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7850bc: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7850c2: c7 85 e4 fe ff ff 02 00 00 00	mov	dword ptr [ebp - 0x11c], 0x2
  7850cc: 50                           	push	eax
  7850cd: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7850d0: e8 4b 75 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7850d5: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7850db: c7 85 e4 fe ff ff 04 00 00 00	mov	dword ptr [ebp - 0x11c], 0x4
  7850e5: 50                           	push	eax
  7850e6: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7850e9: e8 32 75 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7850ee: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7850f4: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  7850fe: 50                           	push	eax
  7850ff: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785102: e8 19 75 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785107: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78510d: c7 85 e4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x11c], 0x6
  785117: 50                           	push	eax
  785118: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78511b: e8 00 75 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785120: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785126: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  785130: 50                           	push	eax
  785131: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785134: e8 e7 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785139: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78513f: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  785149: 50                           	push	eax
  78514a: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78514d: e8 ce 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785152: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785158: c7 85 e4 fe ff ff 09 00 00 00	mov	dword ptr [ebp - 0x11c], 0x9
  785162: 50                           	push	eax
  785163: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785166: e8 b5 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78516b: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785171: c7 85 e4 fe ff ff 0b 00 00 00	mov	dword ptr [ebp - 0x11c], 0xb
  78517b: 50                           	push	eax
  78517c: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78517f: e8 9c 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785184: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78518a: c7 85 e4 fe ff ff 0c 00 00 00	mov	dword ptr [ebp - 0x11c], 0xc
  785194: 50                           	push	eax
  785195: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785198: e8 83 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78519d: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7851a3: c7 85 e4 fe ff ff 0d 00 00 00	mov	dword ptr [ebp - 0x11c], 0xd
  7851ad: 50                           	push	eax
  7851ae: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7851b1: e8 6a 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7851b6: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7851bc: c7 85 e4 fe ff ff 18 00 00 00	mov	dword ptr [ebp - 0x11c], 0x18
  7851c6: 50                           	push	eax
  7851c7: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7851ca: e8 51 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7851cf: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7851d5: c7 85 e4 fe ff ff 07 00 00 00	mov	dword ptr [ebp - 0x11c], 0x7
  7851df: 50                           	push	eax
  7851e0: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7851e3: e8 38 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7851e8: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7851ee: c7 85 e4 fe ff ff 08 00 00 00	mov	dword ptr [ebp - 0x11c], 0x8
  7851f8: 50                           	push	eax
  7851f9: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7851fc: e8 1f 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785201: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785207: c7 85 e4 fe ff ff 14 00 00 00	mov	dword ptr [ebp - 0x11c], 0x14
  785211: 50                           	push	eax
  785212: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785215: e8 06 74 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78521a: c7 85 e4 fe ff ff 15 00 00 00	mov	dword ptr [ebp - 0x11c], 0x15
  785224: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78522a: 50                           	push	eax
  78522b: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78522e: e8 ed 73 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  785233: c7 85 e4 fe ff ff 12 00 00 00	mov	dword ptr [ebp - 0x11c], 0x12
  78523d: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785243: 50                           	push	eax
  785244: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785247: e8 d4 73 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  78524c: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785252: c7 85 e4 fe ff ff fa ff ff ff	mov	dword ptr [ebp - 0x11c], 0xfffffffa
  78525c: 50                           	push	eax
  78525d: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  785263: e8 e8 75 ca ff               	call	0x42c850 <epoxy_handle_external_wglMakeCurrent+0x20650>
  785268: eb 48                        	jmp	0x7852b2 <epoxy_handle_external_wglMakeCurrent+0x3790b2>
  78526a: 83 f8 06                     	cmp	eax, 0x6
  78526d: 75 43                        	jne	0x7852b2 <epoxy_handle_external_wglMakeCurrent+0x3790b2>
  78526f: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  785275: 6a 64                        	push	0x64
  785277: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  78527e: c6 85 e2 fe ff ff 01         	mov	byte ptr [ebp - 0x11e], 0x1
  785285: e8 96 3d 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  78528a: c7 85 e4 fe ff ff 0a 00 00 00	mov	dword ptr [ebp - 0x11c], 0xa
  785294: 83 f8 32                     	cmp	eax, 0x32
  785297: 72 0a                        	jb	0x7852a3 <epoxy_handle_external_wglMakeCurrent+0x3790a3>
  785299: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  7852a3: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7852a9: 50                           	push	eax
  7852aa: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7852ad: e8 6e 73 05 00               	call	0x7dc620 <epoxy_handle_external_wglMakeCurrent+0x3d0420>
  7852b2: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  7852b8: e8 63 6b e4 ff               	call	0x5cbe20 <epoxy_handle_external_wglMakeCurrent+0x1bfc20>
  7852bd: c6 45 fc 05                  	mov	byte ptr [ebp - 0x4], 0x5
  7852c1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7852c7: c7 85 b0 fe ff ff 00 00 00 00	mov	dword ptr [ebp - 0x150], 0x0
  7852d1: e8 5a f2 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  7852d6: 8b c8                        	mov	ecx, eax
  7852d8: e8 a3 ac de ff               	call	0x56ff80 <epoxy_handle_external_wglMakeCurrent+0x163d80>
  7852dd: 85 c0                        	test	eax, eax
  7852df: 0f 8e 7a 01 00 00            	jle	0x78545f <epoxy_handle_external_wglMakeCurrent+0x37925f>
  7852e5: 33 ff                        	xor	edi, edi
  7852e7: 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [eax + eax]
  7852f0: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7852f6: e8 35 f2 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  7852fb: 8b c8                        	mov	ecx, eax
  7852fd: e8 fe c4 c9 ff               	call	0x421800 <epoxy_handle_external_wglMakeCurrent+0x15600>
  785302: 83 7c 07 10 00               	cmp	dword ptr [edi + eax + 0x10], 0x0
  785307: 8d 34 07                     	lea	esi, [edi + eax]
  78530a: 89 b5 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], esi
  785310: 0f 84 16 01 00 00            	je	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  785316: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78531c: e8 0f f2 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  785321: 8b c8                        	mov	ecx, eax
  785323: e8 08 36 d7 ff               	call	0x4f8930 <epoxy_handle_external_wglMakeCurrent+0xec730>
  785328: 39 46 0c                     	cmp	dword ptr [esi + 0xc], eax
  78532b: 0f 85 fb 00 00 00            	jne	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  785331: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785334: 33 f6                        	xor	esi, esi
  785336: e8 05 25 c9 ff               	call	0x417840 <epoxy_handle_external_wglMakeCurrent+0xb640>
  78533b: 85 c0                        	test	eax, eax
  78533d: 0f 84 e9 00 00 00            	je	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  785343: 56                           	push	esi
  785344: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785347: e8 c4 74 ca ff               	call	0x42c810 <epoxy_handle_external_wglMakeCurrent+0x20610>
  78534c: 8b 95 d4 fe ff ff            	mov	edx, dword ptr [ebp - 0x12c]
  785352: 8b 4a 10                     	mov	ecx, dword ptr [edx + 0x10]
  785355: 8b 49 08                     	mov	ecx, dword ptr [ecx + 0x8]
  785358: 3b 08                        	cmp	ecx, dword ptr [eax]
  78535a: 74 12                        	je	0x78536e <epoxy_handle_external_wglMakeCurrent+0x37916e>
  78535c: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  78535f: 46                           	inc	esi
  785360: e8 db 24 c9 ff               	call	0x417840 <epoxy_handle_external_wglMakeCurrent+0xb640>
  785365: 3b f0                        	cmp	esi, eax
  785367: 72 da                        	jb	0x785343 <epoxy_handle_external_wglMakeCurrent+0x379143>
  785369: e9 be 00 00 00               	jmp	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  78536e: 8b 02                        	mov	eax, dword ptr [edx]
  785370: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  785376: 89 85 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], eax
  78537c: 8d 85 c4 fe ff ff            	lea	eax, [ebp - 0x13c]
  785382: 50                           	push	eax
  785383: 8d 85 cc fe ff ff            	lea	eax, [ebp - 0x134]
  785389: 50                           	push	eax
  78538a: e8 71 27 dd ff               	call	0x557b00 <epoxy_handle_external_wglMakeCurrent+0x14b900>
  78538f: 8b f0                        	mov	esi, eax
  785391: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  785397: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78539d: 50                           	push	eax
  78539e: e8 fd 0d cd ff               	call	0x4561a0 <epoxy_handle_external_wglMakeCurrent+0x49fa0>
  7853a3: 50                           	push	eax
  7853a4: 8b ce                        	mov	ecx, esi
  7853a6: e8 05 28 dd ff               	call	0x557bb0 <epoxy_handle_external_wglMakeCurrent+0x14b9b0>
  7853ab: 84 c0                        	test	al, al
  7853ad: 0f 84 79 00 00 00            	je	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  7853b3: 8d 85 c4 fe ff ff            	lea	eax, [ebp - 0x13c]
  7853b9: 50                           	push	eax
  7853ba: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  7853c0: 50                           	push	eax
  7853c1: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  7853c7: e8 f4 f1 d5 ff               	call	0x4e45c0 <epoxy_handle_external_wglMakeCurrent+0xd83c0>
  7853cc: 8b b5 d4 fe ff ff            	mov	esi, dword ptr [ebp - 0x12c]
  7853d2: 8b ce                        	mov	ecx, esi
  7853d4: e8 37 0c cb ff               	call	0x436010 <epoxy_handle_external_wglMakeCurrent+0x29e10>
  7853d9: 84 c0                        	test	al, al
  7853db: 74 0a                        	je	0x7853e7 <epoxy_handle_external_wglMakeCurrent+0x3791e7>
  7853dd: 8a 8d e2 fe ff ff            	mov	cl, byte ptr [ebp - 0x11e]
  7853e3: 84 c9                        	test	cl, cl
  7853e5: 75 27                        	jne	0x78540e <epoxy_handle_external_wglMakeCurrent+0x37920e>
  7853e7: 8b ce                        	mov	ecx, esi
  7853e9: e8 22 0c cb ff               	call	0x436010 <epoxy_handle_external_wglMakeCurrent+0x29e10>
  7853ee: 84 c0                        	test	al, al
  7853f0: 75 3a                        	jne	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  7853f2: 8a 85 db fe ff ff            	mov	al, byte ptr [ebp - 0x125]
  7853f8: 84 c0                        	test	al, al
  7853fa: 74 30                        	je	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  7853fc: 8a 8d e2 fe ff ff            	mov	cl, byte ptr [ebp - 0x11e]
  785402: 83 7e 40 00                  	cmp	dword ptr [esi + 0x40], 0x0
  785406: 75 0e                        	jne	0x785416 <epoxy_handle_external_wglMakeCurrent+0x379216>
  785408: 84 c0                        	test	al, al
  78540a: 75 0e                        	jne	0x78541a <epoxy_handle_external_wglMakeCurrent+0x37921a>
  78540c: eb 1e                        	jmp	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  78540e: 8a 85 db fe ff ff            	mov	al, byte ptr [ebp - 0x125]
  785414: eb ec                        	jmp	0x785402 <epoxy_handle_external_wglMakeCurrent+0x379202>
  785416: 84 c9                        	test	cl, cl
  785418: 74 12                        	je	0x78542c <epoxy_handle_external_wglMakeCurrent+0x37922c>
  78541a: 8d 85 c4 fe ff ff            	lea	eax, [ebp - 0x13c]
  785420: 50                           	push	eax
  785421: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  785427: e8 24 74 ca ff               	call	0x42c850 <epoxy_handle_external_wglMakeCurrent+0x20650>
  78542c: 8b b5 b0 fe ff ff            	mov	esi, dword ptr [ebp - 0x150]
  785432: 81 c7 b8 00 00 00            	add	edi, 0xb8
  785438: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78543e: 46                           	inc	esi
  78543f: 89 b5 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], esi
  785445: e8 e6 f0 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  78544a: 8b c8                        	mov	ecx, eax
  78544c: e8 2f ab de ff               	call	0x56ff80 <epoxy_handle_external_wglMakeCurrent+0x163d80>
  785451: 3b f0                        	cmp	esi, eax
  785453: 0f 8c 97 fe ff ff            	jl	0x7852f0 <epoxy_handle_external_wglMakeCurrent+0x3790f0>
  785459: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  78545f: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  785465: 33 f6                        	xor	esi, esi
  785467: e8 d4 23 c9 ff               	call	0x417840 <epoxy_handle_external_wglMakeCurrent+0xb640>
  78546c: 85 c0                        	test	eax, eax
  78546e: 74 25                        	je	0x785495 <epoxy_handle_external_wglMakeCurrent+0x379295>
  785470: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  785476: e8 c5 23 c9 ff               	call	0x417840 <epoxy_handle_external_wglMakeCurrent+0xb640>
  78547b: 8b 8d dc fe ff ff            	mov	ecx, dword ptr [ebp - 0x124]
  785481: 50                           	push	eax
  785482: e8 99 3b 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  785487: 50                           	push	eax
  785488: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  78548e: e8 7d 73 ca ff               	call	0x42c810 <epoxy_handle_external_wglMakeCurrent+0x20610>
  785493: 8b 30                        	mov	esi, dword ptr [eax]
  785495: 83 bf b8 13 00 00 06         	cmp	dword ptr [edi + 0x13b8], 0x6
  78549c: 75 31                        	jne	0x7854cf <epoxy_handle_external_wglMakeCurrent+0x3792cf>
  78549e: 6a 00                        	push	0x0
  7854a0: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  7854a3: e8 68 73 ca ff               	call	0x42c810 <epoxy_handle_external_wglMakeCurrent+0x20610>
  7854a8: 83 38 0a                     	cmp	dword ptr [eax], 0xa
  7854ab: 75 22                        	jne	0x7854cf <epoxy_handle_external_wglMakeCurrent+0x3792cf>
  7854ad: 85 f6                        	test	esi, esi
  7854af: 75 22                        	jne	0x7854d3 <epoxy_handle_external_wglMakeCurrent+0x3792d3>
  7854b1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7854b7: e8 74 f0 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  7854bc: 56                           	push	esi
  7854bd: ff b5 dc fe ff ff            	push	dword ptr [ebp - 0x124]
  7854c3: 8b c8                        	mov	ecx, eax
  7854c5: 56                           	push	esi
  7854c6: 6a 05                        	push	0x5
  7854c8: e8 f3 2f fc ff               	call	0x7484c0 <epoxy_handle_external_wglMakeCurrent+0x33c2c0>
  7854cd: 8b f0                        	mov	esi, eax
  7854cf: 85 f6                        	test	esi, esi
  7854d1: 74 29                        	je	0x7854fc <epoxy_handle_external_wglMakeCurrent+0x3792fc>
  7854d3: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7854d9: e8 52 f0 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  7854de: 6a ff                        	push	-0x1
  7854e0: 8b c8                        	mov	ecx, eax
  7854e2: e8 f9 35 ca ff               	call	0x428ae0 <epoxy_handle_external_wglMakeCurrent+0x1c8e0>
  7854e7: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7854ed: 6a ff                        	push	-0x1
  7854ef: 57                           	push	edi
  7854f0: 6a 03                        	push	0x3
  7854f2: 6a ff                        	push	-0x1
  7854f4: 56                           	push	esi
  7854f5: e8 c6 82 f7 ff               	call	0x6fd7c0 <epoxy_handle_external_wglMakeCurrent+0x2f15c0>
  7854fa: eb 36                        	jmp	0x785532 <epoxy_handle_external_wglMakeCurrent+0x379332>
  7854fc: 6a 04                        	push	0x4
  7854fe: 8b cf                        	mov	ecx, edi
  785500: e8 db 61 04 00               	call	0x7cb6e0 <epoxy_handle_external_wglMakeCurrent+0x3bf4e0>
  785505: 6a 00                        	push	0x0
  785507: 6a ff                        	push	-0x1
  785509: 8b cf                        	mov	ecx, edi
  78550b: 66 0f 6e c0                  	movd	xmm0, eax
  78550f: 8d 85 de fe ff ff            	lea	eax, [ebp - 0x122]
  785515: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  785518: 6a 01                        	push	0x1
  78551a: 0f 2f 05 54 a4 ba 00         	comiss	xmm0, dword ptr [0xbaa454]
  785521: 76 07                        	jbe	0x78552a <epoxy_handle_external_wglMakeCurrent+0x37932a>
  785523: 68 a3 01 00 00               	push	0x1a3
  785528: eb 02                        	jmp	0x78552c <epoxy_handle_external_wglMakeCurrent+0x37932c>
  78552a: 6a 2c                        	push	0x2c
  78552c: 50                           	push	eax
  78552d: e8 9e e4 e2 ff               	call	0x5b39d0 <epoxy_handle_external_wglMakeCurrent+0x1a77d0>
  785532: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  785538: e8 e3 ee c9 ff               	call	0x424420 <epoxy_handle_external_wglMakeCurrent+0x18220>
  78553d: 8d 4d e4                     	lea	ecx, [ebp - 0x1c]
  785540: e8 8b f4 c8 ff               	call	0x4149d0 <epoxy_handle_external_wglMakeCurrent+0x87d0>
  785545: 8d 8d 68 fe ff ff            	lea	ecx, [ebp - 0x198]
  78554b: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  785552: e8 29 f0 c8 ff               	call	0x414580 <epoxy_handle_external_wglMakeCurrent+0x8380>
  785557: c6 87 b6 13 00 00 00         	mov	byte ptr [edi + 0x13b6], 0x0
  78555e: c7 87 b8 13 00 00 00 00 00 00	mov	dword ptr [edi + 0x13b8], 0x0
  785568: 83 bf a0 15 00 00 00         	cmp	dword ptr [edi + 0x15a0], 0x0
  78556f: 8d b7 a0 15 00 00            	lea	esi, [edi + 0x15a0]
  785575: 89 b5 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], esi
  78557b: 0f 84 ef 00 00 00            	je	0x785670 <epoxy_handle_external_wglMakeCurrent+0x379470>
  785581: 6a 00                        	push	0x0
  785583: 68 16 02 00 00               	push	0x216
  785588: 8b cf                        	mov	ecx, edi
  78558a: e8 51 b1 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  78558f: 84 c0                        	test	al, al
  785591: 0f 85 d9 00 00 00            	jne	0x785670 <epoxy_handle_external_wglMakeCurrent+0x379470>
  785597: 8b cf                        	mov	ecx, edi
  785599: e8 82 4d ca ff               	call	0x42a320 <epoxy_handle_external_wglMakeCurrent+0x1e120>
  78559e: 84 c0                        	test	al, al
  7855a0: 0f 85 ca 00 00 00            	jne	0x785670 <epoxy_handle_external_wglMakeCurrent+0x379470>
  7855a6: b1 01                        	mov	cl, 0x1
  7855a8: e8 23 c4 e2 ff               	call	0x5b19d0 <epoxy_handle_external_wglMakeCurrent+0x1a57d0>
  7855ad: ff 36                        	push	dword ptr [esi]
  7855af: 8d 8f 70 17 00 00            	lea	ecx, [edi + 0x1770]
  7855b5: e8 46 67 e4 ff               	call	0x5cbd00 <epoxy_handle_external_wglMakeCurrent+0x1bfb00>
  7855ba: 8b c8                        	mov	ecx, eax
  7855bc: e8 2f 3b 06 00               	call	0x7e90f0 <epoxy_handle_external_wglMakeCurrent+0x3dcef0>
  7855c1: 8b bd e4 fe ff ff            	mov	edi, dword ptr [ebp - 0x11c]
  7855c7: 8b f0                        	mov	esi, eax
  7855c9: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7855cf: 8b 3f                        	mov	edi, dword ptr [edi]
  7855d1: e8 aa 1e c8 ff               	call	0x407480 <.text+0x6480>
  7855d6: 6a 00                        	push	0x0
  7855d8: 6a 00                        	push	0x0
  7855da: 6a 00                        	push	0x0
  7855dc: 51                           	push	ecx
  7855dd: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  7855e3: 81 c1 3c 03 00 00            	add	ecx, 0x33c
  7855e9: c7 04 24 00 00 20 42         	mov	dword ptr [esp], 0x42200000
  7855f0: 51                           	push	ecx
  7855f1: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  7855f7: 51                           	push	ecx
  7855f8: 8b c8                        	mov	ecx, eax
  7855fa: e8 21 df 08 00               	call	0x813520 <epoxy_handle_external_wglMakeCurrent+0x407320>
  7855ff: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785605: 6a 00                        	push	0x0
  785607: 68 d4 d7 c5 00               	push	0xc5d7d4
  78560c: 68 dc d5 c5 00               	push	0xc5d5dc
  785611: 6a 00                        	push	0x0
  785613: 56                           	push	esi
  785614: 57                           	push	edi
  785615: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  78561b: 57                           	push	edi
  78561c: 68 40 b6 c7 00               	push	0xc7b640
  785621: 50                           	push	eax
  785622: 6a 64                        	push	0x64
  785624: 6a 05                        	push	0x5
  785626: e8 f5 34 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  78562b: 50                           	push	eax
  78562c: e8 80 b2 36 00               	call	0xaf08b1 <epoxy_has_wgl_extension+0x42ba1>
  785631: 83 c4 14                     	add	esp, 0x14
  785634: 8b f0                        	mov	esi, eax
  785636: 8b ce                        	mov	ecx, esi
  785638: ff b7 a4 15 00 00            	push	dword ptr [edi + 0x15a4]
  78563e: e8 4d c3 e2 ff               	call	0x5b1990 <epoxy_handle_external_wglMakeCurrent+0x1a5790>
  785643: ff b7 a8 15 00 00            	push	dword ptr [edi + 0x15a8]
  785649: 8b ce                        	mov	ecx, esi
  78564b: e8 d0 c2 e2 ff               	call	0x5b1920 <epoxy_handle_external_wglMakeCurrent+0x1a5720>
  785650: 6a 01                        	push	0x1
  785652: 6a 01                        	push	0x1
  785654: 6a 00                        	push	0x0
  785656: ff b7 a0 15 00 00            	push	dword ptr [edi + 0x15a0]
  78565c: 8d b7 a0 15 00 00            	lea	esi, [edi + 0x15a0]
  785662: 8b cf                        	mov	ecx, edi
  785664: e8 d7 a1 00 00               	call	0x78f840 <epoxy_handle_external_wglMakeCurrent+0x383640>
  785669: 32 c9                        	xor	cl, cl
  78566b: e8 60 c3 e2 ff               	call	0x5b19d0 <epoxy_handle_external_wglMakeCurrent+0x1a57d0>
  785670: 6a 00                        	push	0x0
  785672: 6a 3b                        	push	0x3b
  785674: 8b cf                        	mov	ecx, edi
  785676: e8 65 b0 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  78567b: 84 c0                        	test	al, al
  78567d: 74 70                        	je	0x7856ef <epoxy_handle_external_wglMakeCurrent+0x3794ef>
  78567f: 8b cf                        	mov	ecx, edi
  785681: e8 ea 50 05 00               	call	0x7da770 <epoxy_handle_external_wglMakeCurrent+0x3ce570>
  785686: 84 c0                        	test	al, al
  785688: 75 65                        	jne	0x7856ef <epoxy_handle_external_wglMakeCurrent+0x3794ef>
  78568a: 8d 87 c8 16 00 00            	lea	eax, [edi + 0x16c8]
  785690: 6a 3b                        	push	0x3b
  785692: 8b c8                        	mov	ecx, eax
  785694: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  78569a: e8 71 71 ca ff               	call	0x42c810 <epoxy_handle_external_wglMakeCurrent+0x20610>
  78569f: 8b bd e4 fe ff ff            	mov	edi, dword ptr [ebp - 0x11c]
  7856a5: c7 00 00 00 00 00            	mov	dword ptr [eax], 0x0
  7856ab: b8 01 00 00 00               	mov	eax, 0x1
  7856b0: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  7856b6: 83 3e 3b                     	cmp	dword ptr [esi], 0x3b
  7856b9: 75 17                        	jne	0x7856d2 <epoxy_handle_external_wglMakeCurrent+0x3794d2>
  7856bb: 6a 22                        	push	0x22
  7856bd: 8b cf                        	mov	ecx, edi
  7856bf: c7 06 22 00 00 00            	mov	dword ptr [esi], 0x22
  7856c5: e8 46 71 ca ff               	call	0x42c810 <epoxy_handle_external_wglMakeCurrent+0x20610>
  7856ca: ff 00                        	inc	dword ptr [eax]
  7856cc: 8b 85 d4 fe ff ff            	mov	eax, dword ptr [ebp - 0x12c]
  7856d2: 48                           	dec	eax
  7856d3: 83 ee 20                     	sub	esi, 0x20
  7856d6: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  7856dc: 85 c0                        	test	eax, eax
  7856de: 79 d6                        	jns	0x7856b6 <epoxy_handle_external_wglMakeCurrent+0x3794b6>
  7856e0: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  7856e6: 8b cf                        	mov	ecx, edi
  7856e8: 6a 00                        	push	0x0
  7856ea: e8 11 db 04 00               	call	0x7d3200 <epoxy_handle_external_wglMakeCurrent+0x3c7000>
  7856ef: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7856f5: e8 56 21 c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  7856fa: 8b c8                        	mov	ecx, eax
  7856fc: e8 4f 3e ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  785701: 84 c0                        	test	al, al
  785703: 0f 84 ef 00 00 00            	je	0x7857f8 <epoxy_handle_external_wglMakeCurrent+0x3795f8>
  785709: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  78570d: 0f 85 e5 00 00 00            	jne	0x7857f8 <epoxy_handle_external_wglMakeCurrent+0x3795f8>
  785713: 6a 00                        	push	0x0
  785715: 68 f1 01 00 00               	push	0x1f1
  78571a: 8b cf                        	mov	ecx, edi
  78571c: e8 bf af fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  785721: 84 c0                        	test	al, al
  785723: 0f 84 cf 00 00 00            	je	0x7857f8 <epoxy_handle_external_wglMakeCurrent+0x3795f8>
  785729: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  78572f: 68 f1 01 00 00               	push	0x1f1
  785734: e8 b7 ae 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  785739: 84 c0                        	test	al, al
  78573b: 0f 85 b7 00 00 00            	jne	0x7857f8 <epoxy_handle_external_wglMakeCurrent+0x3795f8>
  785741: e8 ca 03 29 00               	call	0xa15b10 <epoxy_handle_external_wglMakeCurrent+0x609910>
  785746: 8b f0                        	mov	esi, eax
  785748: 8b ca                        	mov	ecx, edx
  78574a: 8b 87 90 1f 00 00            	mov	eax, dword ptr [edi + 0x1f90]
  785750: 99                           	cdq
  785751: 2b f0                        	sub	esi, eax
  785753: 1b ca                        	sbb	ecx, edx
  785755: 89 8d 9c fe ff ff            	mov	dword ptr [ebp - 0x164], ecx
  78575b: 75 0c                        	jne	0x785769 <epoxy_handle_external_wglMakeCurrent+0x379569>
  78575d: 81 fe 98 3a 00 00            	cmp	esi, 0x3a98
  785763: 0f 86 8f 00 00 00            	jbe	0x7857f8 <epoxy_handle_external_wglMakeCurrent+0x3795f8>
  785769: 6a 01                        	push	0x1
  78576b: 6a 01                        	push	0x1
  78576d: 68 f1 01 00 00               	push	0x1f1
  785772: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  785778: e8 63 ab 1a 00               	call	0x9302e0 <epoxy_handle_external_wglMakeCurrent+0x5240e0>
  78577d: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785783: 33 f6                        	xor	esi, esi
  785785: e8 d6 20 c9 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  78578a: 8b c8                        	mov	ecx, eax
  78578c: e8 af 20 c9 ff               	call	0x417840 <epoxy_handle_external_wglMakeCurrent+0xb640>
  785791: 85 c0                        	test	eax, eax
  785793: 74 63                        	je	0x7857f8 <epoxy_handle_external_wglMakeCurrent+0x3795f8>
  785795: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78579b: e8 c0 20 c9 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  7857a0: 56                           	push	esi
  7857a1: 8b c8                        	mov	ecx, eax
  7857a3: e8 18 3b 23 00               	call	0x9b92c0 <epoxy_handle_external_wglMakeCurrent+0x5ad0c0>
  7857a8: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  7857ae: 3b c7                        	cmp	eax, edi
  7857b0: 74 2f                        	je	0x7857e1 <epoxy_handle_external_wglMakeCurrent+0x3795e1>
  7857b2: 8d 8f 68 1e 00 00            	lea	ecx, [edi + 0x1e68]
  7857b8: e8 e3 6b c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  7857bd: 39 85 d4 fe ff ff            	cmp	dword ptr [ebp - 0x12c], eax
  7857c3: 74 1c                        	je	0x7857e1 <epoxy_handle_external_wglMakeCurrent+0x3795e1>
  7857c5: 57                           	push	edi
  7857c6: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  7857c9: e8 42 bb ca ff               	call	0x431310 <epoxy_handle_external_wglMakeCurrent+0x25110>
  7857ce: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  7857d4: 8d 45 9c                     	lea	eax, [ebp - 0x64]
  7857d7: 6a 00                        	push	0x0
  7857d9: 6a 5a                        	push	0x5a
  7857db: 50                           	push	eax
  7857dc: e8 8f 85 f2 ff               	call	0x6add70 <epoxy_handle_external_wglMakeCurrent+0x2a1b70>
  7857e1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7857e7: 46                           	inc	esi
  7857e8: e8 73 20 c9 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  7857ed: 8b c8                        	mov	ecx, eax
  7857ef: e8 4c 20 c9 ff               	call	0x417840 <epoxy_handle_external_wglMakeCurrent+0xb640>
  7857f4: 3b f0                        	cmp	esi, eax
  7857f6: 72 9d                        	jb	0x785795 <epoxy_handle_external_wglMakeCurrent+0x379595>
  7857f8: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7857fe: 6a 34                        	push	0x34
  785800: e8 5b 04 ee ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  785805: 84 c0                        	test	al, al
  785807: 74 0e                        	je	0x785817 <epoxy_handle_external_wglMakeCurrent+0x379617>
  785809: 6a 00                        	push	0x0
  78580b: 68 00 00 00 08               	push	0x8000000
  785810: 8b cf                        	mov	ecx, edi
  785812: e8 c9 1b c9 ff               	call	0x4173e0 <epoxy_handle_external_wglMakeCurrent+0xb1e0>
  785817: 6a 00                        	push	0x0
  785819: 68 00 00 00 08               	push	0x8000000
  78581e: 8b cf                        	mov	ecx, edi
  785820: e8 0b 1c c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  785825: 84 c0                        	test	al, al
  785827: 74 0c                        	je	0x785835 <epoxy_handle_external_wglMakeCurrent+0x379635>
  785829: c7 87 5c 16 00 00 3c 00 00 00	mov	dword ptr [edi + 0x165c], 0x3c
  785833: eb 14                        	jmp	0x785849 <epoxy_handle_external_wglMakeCurrent+0x379649>
  785835: 8b 87 5c 16 00 00            	mov	eax, dword ptr [edi + 0x165c]
  78583b: 33 c9                        	xor	ecx, ecx
  78583d: 83 c0 ff                     	add	eax, -0x1
  785840: 0f 48 c1                     	cmovs	eax, ecx
  785843: 89 87 5c 16 00 00            	mov	dword ptr [edi + 0x165c], eax
  785849: 80 bf 73 01 00 00 00         	cmp	byte ptr [edi + 0x173], 0x0
  785850: c7 87 78 13 00 00 00 00 00 00	mov	dword ptr [edi + 0x1378], 0x0
  78585a: 0f 85 e4 0f 00 00            	jne	0x786844 <epoxy_handle_external_wglMakeCurrent+0x37a644>
  785860: 83 7f 2c 01                  	cmp	dword ptr [edi + 0x2c], 0x1
  785864: 0f 85 b6 00 00 00            	jne	0x785920 <epoxy_handle_external_wglMakeCurrent+0x379720>
  78586a: 80 bf 18 1b 00 00 00         	cmp	byte ptr [edi + 0x1b18], 0x0
  785871: 0f 84 a9 00 00 00            	je	0x785920 <epoxy_handle_external_wglMakeCurrent+0x379720>
  785877: 8b cf                        	mov	ecx, edi
  785879: e8 92 58 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  78587e: 84 c0                        	test	al, al
  785880: 0f 84 9a 00 00 00            	je	0x785920 <epoxy_handle_external_wglMakeCurrent+0x379720>
  785886: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  785889: be 98 d5 b1 00               	mov	esi, 0xb1d598
  78588e: e8 cd 8b c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  785893: 8b c8                        	mov	ecx, eax
  785895: e8 e6 1a c8 ff               	call	0x407380 <.text+0x6380>
  78589a: 66 0f 1f 44 00 00            	nop	word ptr [eax + eax]
  7858a0: 8a 08                        	mov	cl, byte ptr [eax]
  7858a2: 3a 0e                        	cmp	cl, byte ptr [esi]
  7858a4: 75 1a                        	jne	0x7858c0 <epoxy_handle_external_wglMakeCurrent+0x3796c0>
  7858a6: 84 c9                        	test	cl, cl
  7858a8: 74 12                        	je	0x7858bc <epoxy_handle_external_wglMakeCurrent+0x3796bc>
  7858aa: 8a 48 01                     	mov	cl, byte ptr [eax + 0x1]
  7858ad: 3a 4e 01                     	cmp	cl, byte ptr [esi + 0x1]
  7858b0: 75 0e                        	jne	0x7858c0 <epoxy_handle_external_wglMakeCurrent+0x3796c0>
  7858b2: 83 c0 02                     	add	eax, 0x2
  7858b5: 83 c6 02                     	add	esi, 0x2
  7858b8: 84 c9                        	test	cl, cl
  7858ba: 75 e4                        	jne	0x7858a0 <epoxy_handle_external_wglMakeCurrent+0x3796a0>
  7858bc: 33 c0                        	xor	eax, eax
  7858be: eb 05                        	jmp	0x7858c5 <epoxy_handle_external_wglMakeCurrent+0x3796c5>
  7858c0: 1b c0                        	sbb	eax, eax
  7858c2: 83 c8 01                     	or	eax, 0x1
  7858c5: 85 c0                        	test	eax, eax
  7858c7: 75 0e                        	jne	0x7858d7 <epoxy_handle_external_wglMakeCurrent+0x3796d7>
  7858c9: 68 34 ae b6 00               	push	0xb6ae34
  7858ce: 8b cf                        	mov	ecx, edi
  7858d0: e8 4b 65 02 00               	call	0x7abe20 <epoxy_handle_external_wglMakeCurrent+0x39fc20>
  7858d5: eb 49                        	jmp	0x785920 <epoxy_handle_external_wglMakeCurrent+0x379720>
  7858d7: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7858da: be 34 ae b6 00               	mov	esi, 0xb6ae34
  7858df: e8 7c 8b c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  7858e4: 8b c8                        	mov	ecx, eax
  7858e6: e8 95 1a c8 ff               	call	0x407380 <.text+0x6380>
  7858eb: 0f 1f 44 00 00               	nop	dword ptr [eax + eax]
  7858f0: 8a 08                        	mov	cl, byte ptr [eax]
  7858f2: 3a 0e                        	cmp	cl, byte ptr [esi]
  7858f4: 75 1a                        	jne	0x785910 <epoxy_handle_external_wglMakeCurrent+0x379710>
  7858f6: 84 c9                        	test	cl, cl
  7858f8: 74 12                        	je	0x78590c <epoxy_handle_external_wglMakeCurrent+0x37970c>
  7858fa: 8a 48 01                     	mov	cl, byte ptr [eax + 0x1]
  7858fd: 3a 4e 01                     	cmp	cl, byte ptr [esi + 0x1]
  785900: 75 0e                        	jne	0x785910 <epoxy_handle_external_wglMakeCurrent+0x379710>
  785902: 83 c0 02                     	add	eax, 0x2
  785905: 83 c6 02                     	add	esi, 0x2
  785908: 84 c9                        	test	cl, cl
  78590a: 75 e4                        	jne	0x7858f0 <epoxy_handle_external_wglMakeCurrent+0x3796f0>
  78590c: 33 c0                        	xor	eax, eax
  78590e: eb 05                        	jmp	0x785915 <epoxy_handle_external_wglMakeCurrent+0x379715>
  785910: 1b c0                        	sbb	eax, eax
  785912: 83 c8 01                     	or	eax, 0x1
  785915: 85 c0                        	test	eax, eax
  785917: 75 07                        	jne	0x785920 <epoxy_handle_external_wglMakeCurrent+0x379720>
  785919: 8b cf                        	mov	ecx, edi
  78591b: e8 20 97 03 00               	call	0x7bf040 <epoxy_handle_external_wglMakeCurrent+0x3b2e40>
  785920: 8b 8f 10 14 00 00            	mov	ecx, dword ptr [edi + 0x1410]
  785926: 85 c9                        	test	ecx, ecx
  785928: 0f 84 7f 00 00 00            	je	0x7859ad <epoxy_handle_external_wglMakeCurrent+0x3797ad>
  78592e: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  785934: 50                           	push	eax
  785935: e8 b6 2f ca ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  78593a: 8b 8f 10 14 00 00            	mov	ecx, dword ptr [edi + 0x1410]
  785940: 8d 87 60 03 00 00            	lea	eax, [edi + 0x360]
  785946: 50                           	push	eax
  785947: e8 c4 2f ca ff               	call	0x428910 <epoxy_handle_external_wglMakeCurrent+0x1c710>
  78594c: 8b 8f 10 14 00 00            	mov	ecx, dword ptr [edi + 0x1410]
  785952: e8 59 1a c9 ff               	call	0x4173b0 <epoxy_handle_external_wglMakeCurrent+0xb1b0>
  785957: 84 c0                        	test	al, al
  785959: 74 52                        	je	0x7859ad <epoxy_handle_external_wglMakeCurrent+0x3797ad>
  78595b: 8b b7 10 14 00 00            	mov	esi, dword ptr [edi + 0x1410]
  785961: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  785967: 6a 00                        	push	0x0
  785969: e8 32 58 c8 ff               	call	0x40b1a0 <.text+0xa1a0>
  78596e: 85 c0                        	test	eax, eax
  785970: 75 16                        	jne	0x785988 <epoxy_handle_external_wglMakeCurrent+0x379788>
  785972: 83 bf 2c 1f 00 00 02         	cmp	dword ptr [edi + 0x1f2c], 0x2
  785979: 7c 32                        	jl	0x7859ad <epoxy_handle_external_wglMakeCurrent+0x3797ad>
  78597b: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78597e: 50                           	push	eax
  78597f: e8 1c 58 c8 ff               	call	0x40b1a0 <.text+0xa1a0>
  785984: 85 c0                        	test	eax, eax
  785986: 74 25                        	je	0x7859ad <epoxy_handle_external_wglMakeCurrent+0x3797ad>
  785988: 8b d0                        	mov	edx, eax
  78598a: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  785990: e8 4b 99 ef ff               	call	0x67f2e0 <epoxy_handle_external_wglMakeCurrent+0x2730e0>
  785995: f3 0f 10 85 9c fe ff ff      	movss	xmm0, dword ptr [ebp - 0x164]
  78599d: f3 0f 59 87 f4 14 00 00      	mulss	xmm0, dword ptr [edi + 0x14f4]
  7859a5: f3 0f 11 86 50 03 00 00      	movss	dword ptr [esi + 0x350], xmm0
  7859ad: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  7859b3: 68 f1 01 00 00               	push	0x1f1
  7859b8: 8b ce                        	mov	ecx, esi
  7859ba: e8 31 ac 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  7859bf: 84 c0                        	test	al, al
  7859c1: 0f 84 9b 01 00 00            	je	0x785b62 <epoxy_handle_external_wglMakeCurrent+0x379962>
  7859c7: 6a 00                        	push	0x0
  7859c9: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  7859cf: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  7859d4: 6a 04                        	push	0x4
  7859d6: e8 45 af 29 00               	call	0xa20920 <epoxy_handle_external_wglMakeCurrent+0x614720>
  7859db: 84 c0                        	test	al, al
  7859dd: 75 4f                        	jne	0x785a2e <epoxy_handle_external_wglMakeCurrent+0x37982e>
  7859df: 6a 00                        	push	0x0
  7859e1: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  7859e7: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  7859ec: 6a 06                        	push	0x6
  7859ee: e8 2d af 29 00               	call	0xa20920 <epoxy_handle_external_wglMakeCurrent+0x614720>
  7859f3: 84 c0                        	test	al, al
  7859f5: 75 37                        	jne	0x785a2e <epoxy_handle_external_wglMakeCurrent+0x37982e>
  7859f7: 6a 00                        	push	0x0
  7859f9: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  7859ff: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  785a04: 6a 05                        	push	0x5
  785a06: e8 15 af 29 00               	call	0xa20920 <epoxy_handle_external_wglMakeCurrent+0x614720>
  785a0b: 84 c0                        	test	al, al
  785a0d: 75 1f                        	jne	0x785a2e <epoxy_handle_external_wglMakeCurrent+0x37982e>
  785a0f: 6a 00                        	push	0x0
  785a11: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  785a17: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  785a1c: 6a 07                        	push	0x7
  785a1e: e8 fd ae 29 00               	call	0xa20920 <epoxy_handle_external_wglMakeCurrent+0x614720>
  785a23: c6 85 e3 fe ff ff 00         	mov	byte ptr [ebp - 0x11d], 0x0
  785a2a: 84 c0                        	test	al, al
  785a2c: 74 07                        	je	0x785a35 <epoxy_handle_external_wglMakeCurrent+0x379835>
  785a2e: c6 85 e3 fe ff ff 01         	mov	byte ptr [ebp - 0x11d], 0x1
  785a35: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  785a3b: e8 c0 1e c9 ff               	call	0x417900 <epoxy_handle_external_wglMakeCurrent+0xb700>
  785a40: 8b c8                        	mov	ecx, eax
  785a42: e8 89 de fc ff               	call	0x7538d0 <epoxy_handle_external_wglMakeCurrent+0x3476d0>
  785a47: 84 c0                        	test	al, al
  785a49: 74 2c                        	je	0x785a77 <epoxy_handle_external_wglMakeCurrent+0x379877>
  785a4b: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  785a51: e8 2a a4 28 00               	call	0xa0fe80 <epoxy_handle_external_wglMakeCurrent+0x603c80>
  785a56: 6a 00                        	push	0x0
  785a58: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  785a5e: 8b cf                        	mov	ecx, edi
  785a60: 50                           	push	eax
  785a61: e8 fa 44 03 00               	call	0x7b9f60 <epoxy_handle_external_wglMakeCurrent+0x3add60>
  785a66: 84 c0                        	test	al, al
  785a68: 75 1a                        	jne	0x785a84 <epoxy_handle_external_wglMakeCurrent+0x379884>
  785a6a: 38 85 e3 fe ff ff            	cmp	byte ptr [ebp - 0x11d], al
  785a70: 75 12                        	jne	0x785a84 <epoxy_handle_external_wglMakeCurrent+0x379884>
  785a72: e9 eb 00 00 00               	jmp	0x785b62 <epoxy_handle_external_wglMakeCurrent+0x379962>
  785a77: 80 bd e3 fe ff ff 00         	cmp	byte ptr [ebp - 0x11d], 0x0
  785a7e: 0f 84 de 00 00 00            	je	0x785b62 <epoxy_handle_external_wglMakeCurrent+0x379962>
  785a84: 6a 01                        	push	0x1
  785a86: 68 f1 01 00 00               	push	0x1f1
  785a8b: 8b ce                        	mov	ecx, esi
  785a8d: e8 0e aa 1a 00               	call	0x9304a0 <epoxy_handle_external_wglMakeCurrent+0x5242a0>
  785a92: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785a98: e8 e3 19 c8 ff               	call	0x407480 <.text+0x6480>
  785a9d: 8b c8                        	mov	ecx, eax
  785a9f: e8 3c e2 08 00               	call	0x813ce0 <epoxy_handle_external_wglMakeCurrent+0x407ae0>
  785aa4: 83 f8 06                     	cmp	eax, 0x6
  785aa7: 0f 8e b5 00 00 00            	jle	0x785b62 <epoxy_handle_external_wglMakeCurrent+0x379962>
  785aad: 6a ff                        	push	-0x1
  785aaf: 6a 30                        	push	0x30
  785ab1: 8b ce                        	mov	ecx, esi
  785ab3: e8 98 aa 1a 00               	call	0x930550 <epoxy_handle_external_wglMakeCurrent+0x524350>
  785ab8: 6a 1e                        	push	0x1e
  785aba: 6a 00                        	push	0x0
  785abc: 6a 30                        	push	0x30
  785abe: 8b ce                        	mov	ecx, esi
  785ac0: e8 cb a8 1a 00               	call	0x930390 <epoxy_handle_external_wglMakeCurrent+0x524190>
  785ac5: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  785acd: 51                           	push	ecx
  785ace: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  785ad5: 8b cf                        	mov	ecx, edi
  785ad7: 6a 00                        	push	0x0
  785ad9: 6a 02                        	push	0x2
  785adb: 6a 50                        	push	0x50
  785add: e8 8e 09 f3 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  785ae2: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785ae8: 6a 0a                        	push	0xa
  785aea: e8 81 db f7 ff               	call	0x703670 <epoxy_handle_external_wglMakeCurrent+0x2f7470>
  785aef: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  785af5: e8 76 16 c8 ff               	call	0x407170 <.text+0x6170>
  785afa: f3 0f 10 0d a4 a3 ba 00      	movss	xmm1, dword ptr [0xbaa3a4]
  785b02: 8b cf                        	mov	ecx, edi
  785b04: 50                           	push	eax
  785b05: e8 96 0b f3 ff               	call	0x6b66a0 <epoxy_handle_external_wglMakeCurrent+0x2aa4a0>
  785b0a: 0f 10 05 00 91 c7 00         	movups	xmm0, xmmword ptr [0xc79100]
  785b11: 83 ec 10                     	sub	esp, 0x10
  785b14: f3 0f 10 1d a0 a9 ba 00      	movss	xmm3, dword ptr [0xbaa9a0]
  785b1c: 8b c4                        	mov	eax, esp
  785b1e: f3 0f 10 15 54 a8 ba 00      	movss	xmm2, dword ptr [0xbaa854]
  785b26: 51                           	push	ecx
  785b27: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785b2d: 0f 11 00                     	movups	xmmword ptr [eax], xmm0
  785b30: c7 04 24 00 00 48 42         	mov	dword ptr [esp], 0x42480000
  785b37: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  785b3d: 6a 00                        	push	0x0
  785b3f: 6a 00                        	push	0x0
  785b41: 6a 00                        	push	0x0
  785b43: 6a 00                        	push	0x0
  785b45: 57                           	push	edi
  785b46: 50                           	push	eax
  785b47: e8 14 92 f7 ff               	call	0x6fed60 <epoxy_handle_external_wglMakeCurrent+0x2f2b60>
  785b4c: 8b 06                        	mov	eax, dword ptr [esi]
  785b4e: 8b cf                        	mov	ecx, edi
  785b50: 09 87 74 15 00 00            	or	dword ptr [edi + 0x1574], eax
  785b56: e8 15 da fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  785b5b: 8b ce                        	mov	ecx, esi
  785b5d: e8 2e dc fc ff               	call	0x753790 <epoxy_handle_external_wglMakeCurrent+0x347590>
  785b62: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785b68: e8 e3 1c c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  785b6d: 8b c8                        	mov	ecx, eax
  785b6f: e8 dc 39 ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  785b74: 84 c0                        	test	al, al
  785b76: 74 48                        	je	0x785bc0 <epoxy_handle_external_wglMakeCurrent+0x3799c0>
  785b78: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785b7e: 8b b7 18 02 00 00            	mov	esi, dword ptr [edi + 0x218]
  785b84: e8 f7 18 c8 ff               	call	0x407480 <.text+0x6480>
  785b89: 8b c8                        	mov	ecx, eax
  785b8b: e8 40 05 cb ff               	call	0x4360d0 <epoxy_handle_external_wglMakeCurrent+0x29ed0>
  785b90: 68 de 01 00 00               	push	0x1de
  785b95: 8b c8                        	mov	ecx, eax
  785b97: e8 54 aa 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  785b9c: 84 c0                        	test	al, al
  785b9e: 74 0a                        	je	0x785baa <epoxy_handle_external_wglMakeCurrent+0x3799aa>
  785ba0: 66 83 bf d2 2e 00 00 00      	cmp	word ptr [edi + 0x2ed2], 0x0
  785ba8: 74 04                        	je	0x785bae <epoxy_handle_external_wglMakeCurrent+0x3799ae>
  785baa: 85 f6                        	test	esi, esi
  785bac: 74 12                        	je	0x785bc0 <epoxy_handle_external_wglMakeCurrent+0x3799c0>
  785bae: 68 40 b6 c7 00               	push	0xc7b640
  785bb3: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  785bb9: e8 f2 77 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  785bbe: eb 2c                        	jmp	0x785bec <epoxy_handle_external_wglMakeCurrent+0x3799ec>
  785bc0: 8b cf                        	mov	ecx, edi
  785bc2: e8 79 3f ff ff               	call	0x779b40 <epoxy_handle_external_wglMakeCurrent+0x36d940>
  785bc7: 8b cf                        	mov	ecx, edi
  785bc9: e8 72 b3 ff ff               	call	0x780f40 <epoxy_handle_external_wglMakeCurrent+0x374d40>
  785bce: 6a 00                        	push	0x0
  785bd0: 8b cf                        	mov	ecx, edi
  785bd2: e8 69 be 00 00               	call	0x791a40 <epoxy_handle_external_wglMakeCurrent+0x385840>
  785bd7: 8b cf                        	mov	ecx, edi
  785bd9: e8 52 e1 01 00               	call	0x7a3d30 <epoxy_handle_external_wglMakeCurrent+0x397b30>
  785bde: 8b cf                        	mov	ecx, edi
  785be0: e8 3b 54 ff ff               	call	0x77b020 <epoxy_handle_external_wglMakeCurrent+0x36ee20>
  785be5: 8b cf                        	mov	ecx, edi
  785be7: e8 c4 e6 01 00               	call	0x7a42b0 <epoxy_handle_external_wglMakeCurrent+0x3980b0>
  785bec: 8b 8f bc 03 00 00            	mov	ecx, dword ptr [edi + 0x3bc]
  785bf2: e8 a9 41 d1 ff               	call	0x499da0 <epoxy_handle_external_wglMakeCurrent+0x8dba0>
  785bf7: 8b f0                        	mov	esi, eax
  785bf9: 8b cf                        	mov	ecx, edi
  785bfb: 89 b5 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], esi
  785c01: e8 fa 5a 05 00               	call	0x7db700 <epoxy_handle_external_wglMakeCurrent+0x3cf500>
  785c06: 84 c0                        	test	al, al
  785c08: 74 13                        	je	0x785c1d <epoxy_handle_external_wglMakeCurrent+0x379a1d>
  785c0a: 8d 8f 68 1e 00 00            	lea	ecx, [edi + 0x1e68]
  785c10: e8 8b 67 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  785c15: 8b f0                        	mov	esi, eax
  785c17: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  785c1d: 85 f6                        	test	esi, esi
  785c1f: 0f 84 98 01 00 00            	je	0x785dbd <epoxy_handle_external_wglMakeCurrent+0x379bbd>
  785c25: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785c2b: e8 20 2f ca ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  785c30: 8b c8                        	mov	ecx, eax
  785c32: e8 f9 91 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  785c37: 84 c0                        	test	al, al
  785c39: 0f 85 7e 01 00 00            	jne	0x785dbd <epoxy_handle_external_wglMakeCurrent+0x379bbd>
  785c3f: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785c45: e8 96 ae c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  785c4a: 8b c8                        	mov	ecx, eax
  785c4c: e8 df 91 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  785c51: 84 c0                        	test	al, al
  785c53: 0f 85 64 01 00 00            	jne	0x785dbd <epoxy_handle_external_wglMakeCurrent+0x379bbd>
  785c59: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  785c5f: e8 1c a2 28 00               	call	0xa0fe80 <epoxy_handle_external_wglMakeCurrent+0x603c80>
  785c64: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785c6a: 33 f6                        	xor	esi, esi
  785c6c: 89 b5 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], esi
  785c72: e8 59 1c c9 ff               	call	0x4178d0 <epoxy_handle_external_wglMakeCurrent+0xb6d0>
  785c77: 85 c0                        	test	eax, eax
  785c79: 0f 84 f9 00 00 00            	je	0x785d78 <epoxy_handle_external_wglMakeCurrent+0x379b78>
  785c7f: 90                           	nop
  785c80: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785c86: 56                           	push	esi
  785c87: e8 e4 1b c9 ff               	call	0x417870 <epoxy_handle_external_wglMakeCurrent+0xb670>
  785c8c: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  785c92: 3b c7                        	cmp	eax, edi
  785c94: 0f 84 c4 00 00 00            	je	0x785d5e <epoxy_handle_external_wglMakeCurrent+0x379b5e>
  785c9a: 3b 85 b0 fe ff ff            	cmp	eax, dword ptr [ebp - 0x150]
  785ca0: 74 19                        	je	0x785cbb <epoxy_handle_external_wglMakeCurrent+0x379abb>
  785ca2: 8b c8                        	mov	ecx, eax
  785ca4: e8 b7 45 ca ff               	call	0x42a260 <epoxy_handle_external_wglMakeCurrent+0x1e060>
  785ca9: 3b 85 b0 fe ff ff            	cmp	eax, dword ptr [ebp - 0x150]
  785caf: 0f 85 a9 00 00 00            	jne	0x785d5e <epoxy_handle_external_wglMakeCurrent+0x379b5e>
  785cb5: 8b 85 e4 fe ff ff            	mov	eax, dword ptr [ebp - 0x11c]
  785cbb: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  785cc1: 51                           	push	ecx
  785cc2: 8b c8                        	mov	ecx, eax
  785cc4: e8 c7 15 c9 ff               	call	0x417290 <epoxy_handle_external_wglMakeCurrent+0xb090>
  785cc9: 50                           	push	eax
  785cca: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  785cd0: 50                           	push	eax
  785cd1: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  785cd7: e8 a4 a7 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  785cdc: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  785ce2: e8 e9 a1 28 00               	call	0xa0fed0 <epoxy_handle_external_wglMakeCurrent+0x603cd0>
  785ce7: 68 40 b6 c7 00               	push	0xc7b640
  785cec: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  785cf2: d9 9d d4 fe ff ff            	fstp	dword ptr [ebp - 0x12c]
  785cf8: e8 33 a9 28 00               	call	0xa10630 <epoxy_handle_external_wglMakeCurrent+0x604430>
  785cfd: 84 c0                        	test	al, al
  785cff: 74 57                        	je	0x785d58 <epoxy_handle_external_wglMakeCurrent+0x379b58>
  785d01: f3 0f 10 05 38 aa ba 00      	movss	xmm0, dword ptr [0xbaaa38]
  785d09: 0f 2f 85 d4 fe ff ff         	comiss	xmm0, dword ptr [ebp - 0x12c]
  785d10: 76 46                        	jbe	0x785d58 <epoxy_handle_external_wglMakeCurrent+0x379b58>
  785d12: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  785d18: c7 85 b8 fe ff ff 00 00 00 3f	mov	dword ptr [ebp - 0x148], 0x3f000000
  785d22: 50                           	push	eax
  785d23: 8d 95 b8 fe ff ff            	lea	edx, [ebp - 0x148]
  785d29: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  785d2f: e8 9c 14 c9 ff               	call	0x4171d0 <epoxy_handle_external_wglMakeCurrent+0xafd0>
  785d34: 83 c4 04                     	add	esp, 0x4
  785d37: 8d 8d d4 fe ff ff            	lea	ecx, [ebp - 0x12c]
  785d3d: 51                           	push	ecx
  785d3e: 8d 8d c8 fe ff ff            	lea	ecx, [ebp - 0x138]
  785d44: 51                           	push	ecx
  785d45: 8b c8                        	mov	ecx, eax
  785d47: e8 54 a8 28 00               	call	0xa105a0 <epoxy_handle_external_wglMakeCurrent+0x6043a0>
  785d4c: 50                           	push	eax
  785d4d: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  785d53: e8 f8 a6 28 00               	call	0xa10450 <epoxy_handle_external_wglMakeCurrent+0x604250>
  785d58: 8b b5 c4 fe ff ff            	mov	esi, dword ptr [ebp - 0x13c]
  785d5e: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785d64: 46                           	inc	esi
  785d65: 89 b5 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], esi
  785d6b: e8 60 1b c9 ff               	call	0x4178d0 <epoxy_handle_external_wglMakeCurrent+0xb6d0>
  785d70: 3b f0                        	cmp	esi, eax
  785d72: 0f 82 08 ff ff ff            	jb	0x785c80 <epoxy_handle_external_wglMakeCurrent+0x379a80>
  785d78: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  785d7e: e8 1d a1 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  785d83: d9 9d e4 fe ff ff            	fstp	dword ptr [ebp - 0x11c]
  785d89: f3 0f 10 85 e4 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x11c]
  785d91: 0f 2f 05 30 a6 ba 00         	comiss	xmm0, dword ptr [0xbaa630]
  785d98: 76 13                        	jbe	0x785dad <epoxy_handle_external_wglMakeCurrent+0x379bad>
  785d9a: 51                           	push	ecx
  785d9b: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  785da1: c7 04 24 00 00 00 40         	mov	dword ptr [esp], 0x40000000
  785da8: e8 03 a3 28 00               	call	0xa100b0 <epoxy_handle_external_wglMakeCurrent+0x603eb0>
  785dad: 6a 00                        	push	0x0
  785daf: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  785db5: 8b cf                        	mov	ecx, edi
  785db7: 50                           	push	eax
  785db8: e8 93 b6 ca ff               	call	0x431450 <epoxy_handle_external_wglMakeCurrent+0x25250>
  785dbd: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  785dc1: 0f 85 fa 02 00 00            	jne	0x7860c1 <epoxy_handle_external_wglMakeCurrent+0x379ec1>
  785dc7: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  785dce: 0f 85 ed 02 00 00            	jne	0x7860c1 <epoxy_handle_external_wglMakeCurrent+0x379ec1>
  785dd4: 6a 00                        	push	0x0
  785dd6: 68 8d 01 00 00               	push	0x18d
  785ddb: 8b cf                        	mov	ecx, edi
  785ddd: e8 fe a8 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  785de2: 84 c0                        	test	al, al
  785de4: 0f 84 f1 01 00 00            	je	0x785fdb <epoxy_handle_external_wglMakeCurrent+0x379ddb>
  785dea: 8b 8f e0 13 00 00            	mov	ecx, dword ptr [edi + 0x13e0]
  785df0: 85 c9                        	test	ecx, ecx
  785df2: 0f 84 e3 01 00 00            	je	0x785fdb <epoxy_handle_external_wglMakeCurrent+0x379ddb>
  785df8: 8b 01                        	mov	eax, dword ptr [ecx]
  785dfa: 8b 40 34                     	mov	eax, dword ptr [eax + 0x34]
  785dfd: ff d0                        	call	eax
  785dff: 84 c0                        	test	al, al
  785e01: 0f 84 d4 01 00 00            	je	0x785fdb <epoxy_handle_external_wglMakeCurrent+0x379ddb>
  785e07: f3 0f 10 87 30 16 00 00      	movss	xmm0, dword ptr [edi + 0x1630]
  785e0f: 8b cf                        	mov	ecx, edi
  785e11: f3 0f 11 85 90 fe ff ff      	movss	dword ptr [ebp - 0x170], xmm0
  785e19: f3 0f 10 87 34 16 00 00      	movss	xmm0, dword ptr [edi + 0x1634]
  785e21: f3 0f 11 85 94 fe ff ff      	movss	dword ptr [ebp - 0x16c], xmm0
  785e29: e8 92 c8 ff ff               	call	0x7826c0 <epoxy_handle_external_wglMakeCurrent+0x3764c0>
  785e2e: 85 c0                        	test	eax, eax
  785e30: 75 45                        	jne	0x785e77 <epoxy_handle_external_wglMakeCurrent+0x379c77>
  785e32: 68 40 b6 c7 00               	push	0xc7b640
  785e37: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  785e3d: e8 be a7 28 00               	call	0xa10600 <epoxy_handle_external_wglMakeCurrent+0x604400>
  785e42: 84 c0                        	test	al, al
  785e44: 75 12                        	jne	0x785e58 <epoxy_handle_external_wglMakeCurrent+0x379c58>
  785e46: 6a 00                        	push	0x0
  785e48: 68 d1 01 00 00               	push	0x1d1
  785e4d: 8b cf                        	mov	ecx, edi
  785e4f: e8 8c a8 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  785e54: 84 c0                        	test	al, al
  785e56: 75 1f                        	jne	0x785e77 <epoxy_handle_external_wglMakeCurrent+0x379c77>
  785e58: 8b 97 28 16 00 00            	mov	edx, dword ptr [edi + 0x1628]
  785e5e: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  785e64: e8 67 93 ef ff               	call	0x67f1d0 <epoxy_handle_external_wglMakeCurrent+0x272fd0>
  785e69: 50                           	push	eax
  785e6a: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  785e70: e8 3b 75 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  785e75: eb 0b                        	jmp	0x785e82 <epoxy_handle_external_wglMakeCurrent+0x379c82>
  785e77: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  785e7d: e8 3e a1 28 00               	call	0xa0ffc0 <epoxy_handle_external_wglMakeCurrent+0x603dc0>
  785e82: 6a 00                        	push	0x0
  785e84: 68 40 d7 c5 00               	push	0xc5d740
  785e89: 68 dc d5 c5 00               	push	0xc5d5dc
  785e8e: 6a 00                        	push	0x0
  785e90: ff b7 30 14 00 00            	push	dword ptr [edi + 0x1430]
  785e96: e8 16 aa 36 00               	call	0xaf08b1 <epoxy_has_wgl_extension+0x42ba1>
  785e9b: 83 c4 14                     	add	esp, 0x14
  785e9e: 8b f0                        	mov	esi, eax
  785ea0: 83 bf 30 14 00 00 00         	cmp	dword ptr [edi + 0x1430], 0x0
  785ea7: 75 59                        	jne	0x785f02 <epoxy_handle_external_wglMakeCurrent+0x379d02>
  785ea9: e8 b2 90 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  785eae: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  785eb4: 6a 00                        	push	0x0
  785eb6: 68 40 d7 c5 00               	push	0xc5d740
  785ebb: 68 dc d5 c5 00               	push	0xc5d5dc
  785ec0: 6a 00                        	push	0x0
  785ec2: 50                           	push	eax
  785ec3: 6a 00                        	push	0x0
  785ec5: 57                           	push	edi
  785ec6: 68 40 b6 c7 00               	push	0xc7b640
  785ecb: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  785ed1: 50                           	push	eax
  785ed2: 6a 07                        	push	0x7
  785ed4: 6a 07                        	push	0x7
  785ed6: e8 45 2c ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  785edb: 50                           	push	eax
  785edc: e8 d0 a9 36 00               	call	0xaf08b1 <epoxy_has_wgl_extension+0x42ba1>
  785ee1: 83 c4 14                     	add	esp, 0x14
  785ee4: 8b f0                        	mov	esi, eax
  785ee6: 8b ce                        	mov	ecx, esi
  785ee8: 57                           	push	edi
  785ee9: e8 b2 33 f2 ff               	call	0x6a92a0 <epoxy_handle_external_wglMakeCurrent+0x29d0a0>
  785eee: 8b 06                        	mov	eax, dword ptr [esi]
  785ef0: 8b ce                        	mov	ecx, esi
  785ef2: ff 50 0c                     	call	dword ptr [eax + 0xc]
  785ef5: 8b d6                        	mov	edx, esi
  785ef7: 8d 8f 30 14 00 00            	lea	ecx, [edi + 0x1430]
  785efd: e8 4e fc f2 ff               	call	0x6b5b50 <epoxy_handle_external_wglMakeCurrent+0x2a9950>
  785f02: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  785f08: c7 85 e4 fe ff ff 00 00 40 41	mov	dword ptr [ebp - 0x11c], 0x41400000
  785f12: 50                           	push	eax
  785f13: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  785f19: 50                           	push	eax
  785f1a: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  785f20: e8 bb a5 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  785f25: 50                           	push	eax
  785f26: 6a 06                        	push	0x6
  785f28: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  785f2e: 8b cf                        	mov	ecx, edi
  785f30: 50                           	push	eax
  785f31: e8 1a 49 02 00               	call	0x7aa850 <epoxy_handle_external_wglMakeCurrent+0x39e650>
  785f36: 50                           	push	eax
  785f37: 8b ce                        	mov	ecx, esi
  785f39: e8 b2 13 c9 ff               	call	0x4172f0 <epoxy_handle_external_wglMakeCurrent+0xb0f0>
  785f3e: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  785f44: e8 47 a4 28 00               	call	0xa10390 <epoxy_handle_external_wglMakeCurrent+0x604190>
  785f49: d9 9d e4 fe ff ff            	fstp	dword ptr [ebp - 0x11c]
  785f4f: f3 0f 10 85 e4 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x11c]
  785f57: e8 e4 c7 ef ff               	call	0x682740 <epoxy_handle_external_wglMakeCurrent+0x276540>
  785f5c: 51                           	push	ecx
  785f5d: 8b ce                        	mov	ecx, esi
  785f5f: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  785f64: e8 27 6f 1e 00               	call	0x96ce90 <epoxy_handle_external_wglMakeCurrent+0x560c90>
  785f69: f3 0f 10 85 94 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x16c]
  785f71: 0f 2f 05 2c ad ba 00         	comiss	xmm0, dword ptr [0xbaad2c]
  785f78: 51                           	push	ecx
  785f79: 8b ce                        	mov	ecx, esi
  785f7b: 76 09                        	jbe	0x785f86 <epoxy_handle_external_wglMakeCurrent+0x379d86>
  785f7d: c7 04 24 00 80 3b 45         	mov	dword ptr [esp], 0x453b8000
  785f84: eb 07                        	jmp	0x785f8d <epoxy_handle_external_wglMakeCurrent+0x379d8d>
  785f86: c7 04 24 00 00 20 c1         	mov	dword ptr [esp], 0xc1200000
  785f8d: e8 5e fd ca ff               	call	0x435cf0 <epoxy_handle_external_wglMakeCurrent+0x29af0>
  785f92: 8b cf                        	mov	ecx, edi
  785f94: e8 77 51 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  785f99: 84 c0                        	test	al, al
  785f9b: 74 0f                        	je	0x785fac <epoxy_handle_external_wglMakeCurrent+0x379dac>
  785f9d: 8b cf                        	mov	ecx, edi
  785f9f: e8 ec 94 03 00               	call	0x7bf490 <epoxy_handle_external_wglMakeCurrent+0x3b3290>
  785fa4: 84 c0                        	test	al, al
  785fa6: 75 04                        	jne	0x785fac <epoxy_handle_external_wglMakeCurrent+0x379dac>
  785fa8: b0 01                        	mov	al, 0x1
  785faa: eb 02                        	jmp	0x785fae <epoxy_handle_external_wglMakeCurrent+0x379dae>
  785fac: 32 c0                        	xor	al, al
  785fae: 50                           	push	eax
  785faf: 8b ce                        	mov	ecx, esi
  785fb1: e8 da 5f cc ff               	call	0x44bf90 <epoxy_handle_external_wglMakeCurrent+0x3fd90>
  785fb6: 8d 95 e4 fe ff ff            	lea	edx, [ebp - 0x11c]
  785fbc: c7 85 e4 fe ff ff 05 00 00 00	mov	dword ptr [ebp - 0x11c], 0x5
  785fc6: 8d 8f 38 13 00 00            	lea	ecx, [edi + 0x1338]
  785fcc: e8 af 6b c9 ff               	call	0x41cb80 <epoxy_handle_external_wglMakeCurrent+0x10980>
  785fd1: 8b 00                        	mov	eax, dword ptr [eax]
  785fd3: 89 87 38 13 00 00            	mov	dword ptr [edi + 0x1338], eax
  785fd9: eb 0f                        	jmp	0x785fea <epoxy_handle_external_wglMakeCurrent+0x379dea>
  785fdb: 8b 8f 30 14 00 00            	mov	ecx, dword ptr [edi + 0x1430]
  785fe1: 85 c9                        	test	ecx, ecx
  785fe3: 74 05                        	je	0x785fea <epoxy_handle_external_wglMakeCurrent+0x379dea>
  785fe5: 8b 01                        	mov	eax, dword ptr [ecx]
  785fe7: ff 50 28                     	call	dword ptr [eax + 0x28]
  785fea: 6a 00                        	push	0x0
  785fec: 68 00 40 00 00               	push	0x4000
  785ff1: 8b cf                        	mov	ecx, edi
  785ff3: c6 85 c4 fe ff ff 00         	mov	byte ptr [ebp - 0x13c], 0x0
  785ffa: e8 31 14 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  785fff: 84 c0                        	test	al, al
  786001: 75 44                        	jne	0x786047 <epoxy_handle_external_wglMakeCurrent+0x379e47>
  786003: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786009: e8 42 18 c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  78600e: 8b c8                        	mov	ecx, eax
  786010: e8 3b 35 ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  786015: 84 c0                        	test	al, al
  786017: 74 2e                        	je	0x786047 <epoxy_handle_external_wglMakeCurrent+0x379e47>
  786019: 0f b7 87 d2 2e 00 00         	movzx	eax, word ptr [edi + 0x2ed2]
  786020: 66 85 c0                     	test	ax, ax
  786023: 74 22                        	je	0x786047 <epoxy_handle_external_wglMakeCurrent+0x379e47>
  786025: 8b 8d c4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x13c]
  78602b: 48                           	dec	eax
  78602c: 66 85 c0                     	test	ax, ax
  78602f: 66 89 87 d2 2e 00 00         	mov	word ptr [edi + 0x2ed2], ax
  786036: 0f b6 c9                     	movzx	ecx, cl
  786039: b8 01 00 00 00               	mov	eax, 0x1
  78603e: 0f 44 c8                     	cmove	ecx, eax
  786041: 89 8d c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], ecx
  786047: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78604d: e8 2e 14 c8 ff               	call	0x407480 <.text+0x6480>
  786052: 8b c8                        	mov	ecx, eax
  786054: e8 77 00 cb ff               	call	0x4360d0 <epoxy_handle_external_wglMakeCurrent+0x29ed0>
  786059: 68 de 01 00 00               	push	0x1de
  78605e: 8b c8                        	mov	ecx, eax
  786060: e8 8b a5 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  786065: 84 c0                        	test	al, al
  786067: 74 12                        	je	0x78607b <epoxy_handle_external_wglMakeCurrent+0x379e7b>
  786069: 83 bf 2c 16 00 00 ff         	cmp	dword ptr [edi + 0x162c], -0x1
  786070: 75 12                        	jne	0x786084 <epoxy_handle_external_wglMakeCurrent+0x379e84>
  786072: f6 87 78 13 00 00 04         	test	byte ptr [edi + 0x1378], 0x4
  786079: 75 09                        	jne	0x786084 <epoxy_handle_external_wglMakeCurrent+0x379e84>
  78607b: 80 bd c4 fe ff ff 00         	cmp	byte ptr [ebp - 0x13c], 0x0
  786082: 74 3d                        	je	0x7860c1 <epoxy_handle_external_wglMakeCurrent+0x379ec1>
  786084: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78608a: e8 f1 13 c8 ff               	call	0x407480 <.text+0x6480>
  78608f: 8b c8                        	mov	ecx, eax
  786091: e8 3a 00 cb ff               	call	0x4360d0 <epoxy_handle_external_wglMakeCurrent+0x29ed0>
  786096: 6a 01                        	push	0x1
  786098: 68 de 01 00 00               	push	0x1de
  78609d: 8b c8                        	mov	ecx, eax
  78609f: e8 fc a3 1a 00               	call	0x9304a0 <epoxy_handle_external_wglMakeCurrent+0x5242a0>
  7860a4: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7860aa: e8 d1 13 c8 ff               	call	0x407480 <.text+0x6480>
  7860af: 6a 00                        	push	0x0
  7860b1: 8b c8                        	mov	ecx, eax
  7860b3: e8 88 b8 09 00               	call	0x821940 <epoxy_handle_external_wglMakeCurrent+0x415740>
  7860b8: 33 c0                        	xor	eax, eax
  7860ba: 66 89 87 d2 2e 00 00         	mov	word ptr [edi + 0x2ed2], ax
  7860c1: 83 bf 24 16 00 00 ff         	cmp	dword ptr [edi + 0x1624], -0x1
  7860c8: 74 07                        	je	0x7860d1 <epoxy_handle_external_wglMakeCurrent+0x379ed1>
  7860ca: 83 8f 78 13 00 00 02         	or	dword ptr [edi + 0x1378], 0x2
  7860d1: 83 bf 2c 16 00 00 ff         	cmp	dword ptr [edi + 0x162c], -0x1
  7860d8: 74 07                        	je	0x7860e1 <epoxy_handle_external_wglMakeCurrent+0x379ee1>
  7860da: 83 8f 78 13 00 00 04         	or	dword ptr [edi + 0x1378], 0x4
  7860e1: 6a 00                        	push	0x0
  7860e3: 68 d2 00 00 00               	push	0xd2
  7860e8: 8b cf                        	mov	ecx, edi
  7860ea: e8 f1 a5 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  7860ef: 84 c0                        	test	al, al
  7860f1: 0f 84 8c 01 00 00            	je	0x786283 <epoxy_handle_external_wglMakeCurrent+0x37a083>
  7860f7: 83 bf 78 13 00 00 00         	cmp	dword ptr [edi + 0x1378], 0x0
  7860fe: 0f 85 7f 01 00 00            	jne	0x786283 <epoxy_handle_external_wglMakeCurrent+0x37a083>
  786104: 8b 8f 74 13 00 00            	mov	ecx, dword ptr [edi + 0x1374]
  78610a: 8d 41 01                     	lea	eax, [ecx + 0x1]
  78610d: 89 87 74 13 00 00            	mov	dword ptr [edi + 0x1374], eax
  786113: 83 f9 3c                     	cmp	ecx, 0x3c
  786116: 0f 8e b1 01 00 00            	jle	0x7862cd <epoxy_handle_external_wglMakeCurrent+0x37a0cd>
  78611c: f3 0f 10 87 7c 03 00 00      	movss	xmm0, dword ptr [edi + 0x37c]
  786124: 0f 2e 05 c4 ab ba 00         	ucomiss	xmm0, dword ptr [0xbaabc4]
  78612b: 9f                           	lahf
  78612c: f6 c4 44                     	test	ah, 0x44
  78612f: 0f 8b eb 00 00 00            	jnp	0x786220 <epoxy_handle_external_wglMakeCurrent+0x37a020>
  786135: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  78613d: 51                           	push	ecx
  78613e: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  786144: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78614b: 6a 00                        	push	0x0
  78614d: 6a 02                        	push	0x2
  78614f: 68 5a 03 00 00               	push	0x35a
  786154: e8 87 07 1d 00               	call	0x9568e0 <epoxy_handle_external_wglMakeCurrent+0x54a6e0>
  786159: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78615f: e8 9c 68 ca ff               	call	0x42ca00 <epoxy_handle_external_wglMakeCurrent+0x20800>
  786164: 6a 00                        	push	0x0
  786166: 6a 04                        	push	0x4
  786168: 8b c8                        	mov	ecx, eax
  78616a: e8 31 9c fa ff               	call	0x72fda0 <epoxy_handle_external_wglMakeCurrent+0x323ba0>
  78616f: 50                           	push	eax
  786170: 8b cf                        	mov	ecx, edi
  786172: e8 59 70 fd ff               	call	0x75d1d0 <epoxy_handle_external_wglMakeCurrent+0x350fd0>
  786177: c7 87 7c 03 00 00 00 00 7a 44	mov	dword ptr [edi + 0x37c], 0x447a0000
  786181: e8 da 8d f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  786186: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78618c: 6a 00                        	push	0x0
  78618e: 68 ac d5 c5 00               	push	0xc5d5ac
  786193: 68 dc d5 c5 00               	push	0xc5d5dc
  786198: 6a 00                        	push	0x0
  78619a: 50                           	push	eax
  78619b: 6a 02                        	push	0x2
  78619d: 57                           	push	edi
  78619e: 68 40 b6 c7 00               	push	0xc7b640
  7861a3: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  7861a9: 50                           	push	eax
  7861aa: 6a 0f                        	push	0xf
  7861ac: 68 e8 03 00 00               	push	0x3e8
  7861b1: e8 6a 29 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  7861b6: 50                           	push	eax
  7861b7: e8 f5 a6 36 00               	call	0xaf08b1 <epoxy_has_wgl_extension+0x42ba1>
  7861bc: f3 0f 10 15 c0 ad ba 00      	movss	xmm2, dword ptr [0xbaadc0]
  7861c4: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  7861ca: 8b b5 d0 fe ff ff            	mov	esi, dword ptr [ebp - 0x130]
  7861d0: 83 c4 14                     	add	esp, 0x14
  7861d3: 0f 57 c9                     	xorps	xmm1, xmm1
  7861d6: 8b f8                        	mov	edi, eax
  7861d8: e8 b3 9c 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  7861dd: 50                           	push	eax
  7861de: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  7861e4: 50                           	push	eax
  7861e5: 8d 8e 4c 03 00 00            	lea	ecx, [esi + 0x34c]
  7861eb: e8 30 a2 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  7861f0: 50                           	push	eax
  7861f1: 8b cf                        	mov	ecx, edi
  7861f3: e8 f8 10 c9 ff               	call	0x4172f0 <epoxy_handle_external_wglMakeCurrent+0xb0f0>
  7861f8: 8b c6                        	mov	eax, esi
  7861fa: 51                           	push	ecx
  7861fb: 8b cf                        	mov	ecx, edi
  7861fd: f3 0f 10 80 50 03 00 00      	movss	xmm0, dword ptr [eax + 0x350]
  786205: f3 0f 58 05 54 a4 ba 00      	addss	xmm0, dword ptr [0xbaa454]
  78620d: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  786212: e8 d9 fa ca ff               	call	0x435cf0 <epoxy_handle_external_wglMakeCurrent+0x29af0>
  786217: 8b 07                        	mov	eax, dword ptr [edi]
  786219: 8b cf                        	mov	ecx, edi
  78621b: ff 50 0c                     	call	dword ptr [eax + 0xc]
  78621e: 8b fe                        	mov	edi, esi
  786220: 83 7f 2c 01                  	cmp	dword ptr [edi + 0x2c], 0x1
  786224: 74 0d                        	je	0x786233 <epoxy_handle_external_wglMakeCurrent+0x37a033>
  786226: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  78622d: 0f 84 9a 00 00 00            	je	0x7862cd <epoxy_handle_external_wglMakeCurrent+0x37a0cd>
  786233: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  786239: e8 32 0f c8 ff               	call	0x407170 <.text+0x6170>
  78623e: 83 ec 10                     	sub	esp, 0x10
  786241: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  786247: c7 44 24 0c 00 00 80 3f      	mov	dword ptr [esp + 0xc], 0x3f800000
  78624f: c7 44 24 08 00 00 80 3f      	mov	dword ptr [esp + 0x8], 0x3f800000
  786257: c7 44 24 04 00 00 80 3f      	mov	dword ptr [esp + 0x4], 0x3f800000
  78625f: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  786266: e8 45 cd ef ff               	call	0x682fb0 <epoxy_handle_external_wglMakeCurrent+0x276db0>
  78626b: 8b 07                        	mov	eax, dword ptr [edi]
  78626d: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  786273: 6a 01                        	push	0x1
  786275: 6a 00                        	push	0x0
  786277: 6a 00                        	push	0x0
  786279: 6a 02                        	push	0x2
  78627b: 51                           	push	ecx
  78627c: 8b cf                        	mov	ecx, edi
  78627e: ff 50 3c                     	call	dword ptr [eax + 0x3c]
  786281: eb 4a                        	jmp	0x7862cd <epoxy_handle_external_wglMakeCurrent+0x37a0cd>
  786283: f3 0f 10 87 7c 03 00 00      	movss	xmm0, dword ptr [edi + 0x37c]
  78628b: 0f 2e 05 c4 ab ba 00         	ucomiss	xmm0, dword ptr [0xbaabc4]
  786292: 9f                           	lahf
  786293: f6 c4 44                     	test	ah, 0x44
  786296: 7a 2b                        	jp	0x7862c3 <epoxy_handle_external_wglMakeCurrent+0x37a0c3>
  786298: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78629e: e8 5d 67 ca ff               	call	0x42ca00 <epoxy_handle_external_wglMakeCurrent+0x20800>
  7862a3: 6a 04                        	push	0x4
  7862a5: 8b c8                        	mov	ecx, eax
  7862a7: e8 f4 9a fa ff               	call	0x72fda0 <epoxy_handle_external_wglMakeCurrent+0x323ba0>
  7862ac: 50                           	push	eax
  7862ad: 8b cf                        	mov	ecx, edi
  7862af: e8 9c 75 fd ff               	call	0x75d850 <epoxy_handle_external_wglMakeCurrent+0x351650>
  7862b4: 8b 87 30 03 00 00            	mov	eax, dword ptr [edi + 0x330]
  7862ba: 8b 40 44                     	mov	eax, dword ptr [eax + 0x44]
  7862bd: 89 87 7c 03 00 00            	mov	dword ptr [edi + 0x37c], eax
  7862c3: c7 87 74 13 00 00 00 00 00 00	mov	dword ptr [edi + 0x1374], 0x0
  7862cd: f3 0f 10 87 7c 03 00 00      	movss	xmm0, dword ptr [edi + 0x37c]
  7862d5: 0f 2e 05 c4 ab ba 00         	ucomiss	xmm0, dword ptr [0xbaabc4]
  7862dc: 9f                           	lahf
  7862dd: f6 c4 44                     	test	ah, 0x44
  7862e0: 7b 0f                        	jnp	0x7862f1 <epoxy_handle_external_wglMakeCurrent+0x37a0f1>
  7862e2: 8b 87 30 03 00 00            	mov	eax, dword ptr [edi + 0x330]
  7862e8: 8b 40 44                     	mov	eax, dword ptr [eax + 0x44]
  7862eb: 89 87 7c 03 00 00            	mov	dword ptr [edi + 0x37c], eax
  7862f1: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  7862f7: 68 51 02 00 00               	push	0x251
  7862fc: 8b ce                        	mov	ecx, esi
  7862fe: e8 ed a2 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  786303: 84 c0                        	test	al, al
  786305: 75 29                        	jne	0x786330 <epoxy_handle_external_wglMakeCurrent+0x37a130>
  786307: 83 bf 88 18 00 00 00         	cmp	dword ptr [edi + 0x1888], 0x0
  78630e: 7f 20                        	jg	0x786330 <epoxy_handle_external_wglMakeCurrent+0x37a130>
  786310: 68 ca 02 00 00               	push	0x2ca
  786315: 8b ce                        	mov	ecx, esi
  786317: e8 d4 a2 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  78631c: 84 c0                        	test	al, al
  78631e: 75 10                        	jne	0x786330 <epoxy_handle_external_wglMakeCurrent+0x37a130>
  786320: 6a 00                        	push	0x0
  786322: 68 00 00 00 40               	push	0x40000000
  786327: 8b cf                        	mov	ecx, edi
  786329: e8 d2 10 c9 ff               	call	0x417400 <epoxy_handle_external_wglMakeCurrent+0xb200>
  78632e: eb 0e                        	jmp	0x78633e <epoxy_handle_external_wglMakeCurrent+0x37a13e>
  786330: 6a 00                        	push	0x0
  786332: 68 00 00 00 40               	push	0x40000000
  786337: 8b cf                        	mov	ecx, edi
  786339: e8 a2 10 c9 ff               	call	0x4173e0 <epoxy_handle_external_wglMakeCurrent+0xb1e0>
  78633e: 8b ce                        	mov	ecx, esi
  786340: e8 3b d4 fc ff               	call	0x753780 <epoxy_handle_external_wglMakeCurrent+0x347580>
  786345: 84 c0                        	test	al, al
  786347: 74 0f                        	je	0x786358 <epoxy_handle_external_wglMakeCurrent+0x37a158>
  786349: 8b 06                        	mov	eax, dword ptr [esi]
  78634b: 8b cf                        	mov	ecx, edi
  78634d: 09 87 74 15 00 00            	or	dword ptr [edi + 0x1574], eax
  786353: e8 18 d2 fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  786358: 8b ce                        	mov	ecx, esi
  78635a: e8 31 d4 fc ff               	call	0x753790 <epoxy_handle_external_wglMakeCurrent+0x347590>
  78635f: 6a 00                        	push	0x0
  786361: 68 00 40 00 00               	push	0x4000
  786366: 8b cf                        	mov	ecx, edi
  786368: e8 c3 10 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78636d: 84 c0                        	test	al, al
  78636f: 75 0e                        	jne	0x78637f <epoxy_handle_external_wglMakeCurrent+0x37a17f>
  786371: 8b ce                        	mov	ecx, esi
  786373: e8 a8 a4 1a 00               	call	0x930820 <epoxy_handle_external_wglMakeCurrent+0x524620>
  786378: 8b cf                        	mov	ecx, edi
  78637a: e8 d1 ea 00 00               	call	0x794e50 <epoxy_handle_external_wglMakeCurrent+0x388c50>
  78637f: 8b 8f e4 1e 00 00            	mov	ecx, dword ptr [edi + 0x1ee4]
  786385: 85 c9                        	test	ecx, ecx
  786387: 0f 84 b7 04 00 00            	je	0x786844 <epoxy_handle_external_wglMakeCurrent+0x37a644>
  78638d: e8 5e fa ca ff               	call	0x435df0 <epoxy_handle_external_wglMakeCurrent+0x29bf0>
  786392: 8b f0                        	mov	esi, eax
  786394: 85 f6                        	test	esi, esi
  786396: 0f 84 a8 04 00 00            	je	0x786844 <epoxy_handle_external_wglMakeCurrent+0x37a644>
  78639c: 8b ce                        	mov	ecx, esi
  78639e: e8 bd 7f 0d 00               	call	0x85e360 <epoxy_handle_external_wglMakeCurrent+0x452160>
  7863a3: 51                           	push	ecx
  7863a4: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  7863aa: d9 1c 24                     	fstp	dword ptr [esp]
  7863ad: 50                           	push	eax
  7863ae: e8 9d 9f 28 00               	call	0xa10350 <epoxy_handle_external_wglMakeCurrent+0x604150>
  7863b3: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  7863b9: c7 85 e4 fe ff ff 00 00 60 c1	mov	dword ptr [ebp - 0x11c], 0xc1600000
  7863c3: 50                           	push	eax
  7863c4: 8d 95 e4 fe ff ff            	lea	edx, [ebp - 0x11c]
  7863ca: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  7863d0: e8 fb 0d c9 ff               	call	0x4171d0 <epoxy_handle_external_wglMakeCurrent+0xafd0>
  7863d5: 83 c4 0c                     	add	esp, 0xc
  7863d8: 8b ce                        	mov	ecx, esi
  7863da: 50                           	push	eax
  7863db: e8 70 d3 fc ff               	call	0x753750 <epoxy_handle_external_wglMakeCurrent+0x347550>
  7863e0: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  7863e6: 8b cf                        	mov	ecx, edi
  7863e8: 50                           	push	eax
  7863e9: 6a ff                        	push	-0x1
  7863eb: 8d 85 90 fe ff ff            	lea	eax, [ebp - 0x170]
  7863f1: 50                           	push	eax
  7863f2: e8 59 44 02 00               	call	0x7aa850 <epoxy_handle_external_wglMakeCurrent+0x39e650>
  7863f7: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  7863fd: c7 85 e4 fe ff ff 00 00 50 41	mov	dword ptr [ebp - 0x11c], 0x41500000
  786407: 50                           	push	eax
  786408: 8d 95 e4 fe ff ff            	lea	edx, [ebp - 0x11c]
  78640e: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  786414: e8 b7 0d c9 ff               	call	0x4171d0 <epoxy_handle_external_wglMakeCurrent+0xafd0>
  786419: 83 c4 04                     	add	esp, 0x4
  78641c: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  786422: 50                           	push	eax
  786423: e8 28 a0 28 00               	call	0xa10450 <epoxy_handle_external_wglMakeCurrent+0x604250>
  786428: f3 0f 10 8f fc 14 00 00      	movss	xmm1, dword ptr [edi + 0x14fc]
  786430: 8d 85 90 fe ff ff            	lea	eax, [ebp - 0x170]
  786436: f3 0f 59 0d 5c a7 ba 00      	mulss	xmm1, dword ptr [0xbaa75c]
  78643e: 8b ce                        	mov	ecx, esi
  786440: 50                           	push	eax
  786441: f3 0f 10 85 94 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x16c]
  786449: f3 0f 5c c1                  	subss	xmm0, xmm1
  78644d: f3 0f 11 85 94 fe ff ff      	movss	dword ptr [ebp - 0x16c], xmm0
  786455: e8 96 0e c9 ff               	call	0x4172f0 <epoxy_handle_external_wglMakeCurrent+0xb0f0>
  78645a: f3 0f 10 85 cc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x134]
  786462: 0f 2f 05 2c ad ba 00         	comiss	xmm0, dword ptr [0xbaad2c]
  786469: 51                           	push	ecx
  78646a: 8b ce                        	mov	ecx, esi
  78646c: 76 09                        	jbe	0x786477 <epoxy_handle_external_wglMakeCurrent+0x37a277>
  78646e: c7 04 24 00 80 3b 45         	mov	dword ptr [esp], 0x453b8000
  786475: eb 07                        	jmp	0x78647e <epoxy_handle_external_wglMakeCurrent+0x37a27e>
  786477: c7 04 24 00 00 20 c2         	mov	dword ptr [esp], 0xc2200000
  78647e: e8 6d f8 ca ff               	call	0x435cf0 <epoxy_handle_external_wglMakeCurrent+0x29af0>
  786483: 6a 00                        	push	0x0
  786485: 68 00 40 00 00               	push	0x4000
  78648a: 8b cf                        	mov	ecx, edi
  78648c: e8 9f 0f c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  786491: 84 c0                        	test	al, al
  786493: 0f 85 ab 03 00 00            	jne	0x786844 <epoxy_handle_external_wglMakeCurrent+0x37a644>
  786499: e8 c2 8a f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  78649e: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  7864a4: e8 37 8b ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  7864a9: f3 0f 59 05 b4 a9 ba 00      	mulss	xmm0, dword ptr [0xbaa9b4]
  7864b1: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  7864b7: 51                           	push	ecx
  7864b8: 8d 8d c8 fe ff ff            	lea	ecx, [ebp - 0x138]
  7864be: f3 0f 5c 05 10 a9 ba 00      	subss	xmm0, dword ptr [0xbaa910]
  7864c6: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  7864cb: 50                           	push	eax
  7864cc: e8 0f 9e 28 00               	call	0xa102e0 <epoxy_handle_external_wglMakeCurrent+0x6040e0>
  7864d1: 8b f0                        	mov	esi, eax
  7864d3: e8 08 8b ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  7864d8: f3 0f 59 05 1c a8 ba 00      	mulss	xmm0, dword ptr [0xbaa81c]
  7864e0: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  7864e6: 50                           	push	eax
  7864e7: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  7864ed: 8b ce                        	mov	ecx, esi
  7864ef: 50                           	push	eax
  7864f0: f3 0f 58 05 a4 a7 ba 00      	addss	xmm0, dword ptr [0xbaa7a4]
  7864f8: f3 0f 11 85 e4 fe ff ff      	movss	dword ptr [ebp - 0x11c], xmm0
  786500: e8 db 9f 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  786505: 8b f8                        	mov	edi, eax
  786507: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  78650d: 8b 85 d0 fe ff ff            	mov	eax, dword ptr [ebp - 0x130]
  786513: 51                           	push	ecx
  786514: 05 3c 03 00 00               	add	eax, 0x33c
  786519: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  78651f: 51                           	push	ecx
  786520: 8b c8                        	mov	ecx, eax
  786522: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  786528: e8 f3 9e 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  78652d: 8b f0                        	mov	esi, eax
  78652f: c7 85 b8 fe ff ff 00 00 60 41	mov	dword ptr [ebp - 0x148], 0x41600000
  786539: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  78653f: 50                           	push	eax
  786540: 8d 95 b8 fe ff ff            	lea	edx, [ebp - 0x148]
  786546: 8d 8d c0 fe ff ff            	lea	ecx, [ebp - 0x140]
  78654c: e8 7f 0c c9 ff               	call	0x4171d0 <epoxy_handle_external_wglMakeCurrent+0xafd0>
  786551: 83 c4 04                     	add	esp, 0x4
  786554: 8b ce                        	mov	ecx, esi
  786556: 50                           	push	eax
  786557: 8d 85 ac fe ff ff            	lea	eax, [ebp - 0x154]
  78655d: 50                           	push	eax
  78655e: e8 1d 9f 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  786563: ff b5 a4 fe ff ff            	push	dword ptr [ebp - 0x15c]
  786569: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78656f: 6a 01                        	push	0x1
  786571: 6a 00                        	push	0x0
  786573: 57                           	push	edi
  786574: 50                           	push	eax
  786575: 6a 63                        	push	0x63
  786577: 68 e8 03 00 00               	push	0x3e8
  78657c: e8 9f 25 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  786581: 8b f8                        	mov	edi, eax
  786583: 8b cf                        	mov	ecx, edi
  786585: e8 96 0d c9 ff               	call	0x417320 <epoxy_handle_external_wglMakeCurrent+0xb120>
  78658a: 8b f0                        	mov	esi, eax
  78658c: e8 4f 8a ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  786591: f3 0f 59 05 28 a5 ba 00      	mulss	xmm0, dword ptr [0xbaa528]
  786599: 8d 85 a4 fe ff ff            	lea	eax, [ebp - 0x15c]
  78659f: 50                           	push	eax
  7865a0: 8d 85 74 fe ff ff            	lea	eax, [ebp - 0x18c]
  7865a6: 8b ce                        	mov	ecx, esi
  7865a8: 50                           	push	eax
  7865a9: f3 0f 58 05 54 a4 ba 00      	addss	xmm0, dword ptr [0xbaa454]
  7865b1: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  7865b9: e8 22 9f 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  7865be: 50                           	push	eax
  7865bf: 8b cf                        	mov	ecx, edi
  7865c1: e8 ea 73 ca ff               	call	0x42d9b0 <epoxy_handle_external_wglMakeCurrent+0x217b0>
  7865c6: 8b cf                        	mov	ecx, edi
  7865c8: e8 03 f8 ca ff               	call	0x435dd0 <epoxy_handle_external_wglMakeCurrent+0x29bd0>
  7865cd: f3 0f 10 1d d8 a1 ba 00      	movss	xmm3, dword ptr [0xbaa1d8]
  7865d5: 8b f0                        	mov	esi, eax
  7865d7: f3 0f 10 15 38 a2 ba 00      	movss	xmm2, dword ptr [0xbaa238]
  7865df: f3 0f 10 0d 04 a3 ba 00      	movss	xmm1, dword ptr [0xbaa304]
  7865e7: 51                           	push	ecx
  7865e8: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  7865ee: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7865f5: e8 f6 d2 c9 ff               	call	0x4238f0 <epoxy_handle_external_wglMakeCurrent+0x176f0>
  7865fa: 50                           	push	eax
  7865fb: 8b ce                        	mov	ecx, esi
  7865fd: e8 ce 0d c8 ff               	call	0x4073d0 <.text+0x63d0>
  786602: 51                           	push	ecx
  786603: 8b cf                        	mov	ecx, edi
  786605: c7 04 24 00 00 a0 41         	mov	dword ptr [esp], 0x41a00000
  78660c: e8 df f6 ca ff               	call	0x435cf0 <epoxy_handle_external_wglMakeCurrent+0x29af0>
  786611: 8b 07                        	mov	eax, dword ptr [edi]
  786613: 8b cf                        	mov	ecx, edi
  786615: ff 50 0c                     	call	dword ptr [eax + 0xc]
  786618: b9 05 00 00 00               	mov	ecx, 0x5
  78661d: e8 ee 89 ef ff               	call	0x67f010 <epoxy_handle_external_wglMakeCurrent+0x272e10>
  786622: 85 c0                        	test	eax, eax
  786624: 0f 85 e2 00 00 00            	jne	0x78670c <epoxy_handle_external_wglMakeCurrent+0x37a50c>
  78662a: e8 31 89 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  78662f: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  786635: e8 a6 89 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  78663a: f3 0f 59 05 b4 a9 ba 00      	mulss	xmm0, dword ptr [0xbaa9b4]
  786642: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  786648: 51                           	push	ecx
  786649: 8d 8d c8 fe ff ff            	lea	ecx, [ebp - 0x138]
  78664f: f3 0f 5c 05 10 a9 ba 00      	subss	xmm0, dword ptr [0xbaa910]
  786657: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  78665c: 50                           	push	eax
  78665d: e8 7e 9c 28 00               	call	0xa102e0 <epoxy_handle_external_wglMakeCurrent+0x6040e0>
  786662: 8b f0                        	mov	esi, eax
  786664: e8 77 89 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  786669: f3 0f 59 05 fc a6 ba 00      	mulss	xmm0, dword ptr [0xbaa6fc]
  786671: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  786677: 50                           	push	eax
  786678: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  78667e: 8b ce                        	mov	ecx, esi
  786680: 50                           	push	eax
  786681: f3 0f 58 05 30 a6 ba 00      	addss	xmm0, dword ptr [0xbaa630]
  786689: f3 0f 11 85 e4 fe ff ff      	movss	dword ptr [ebp - 0x11c], xmm0
  786691: e8 4a 9e 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  786696: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  78669c: 8b f8                        	mov	edi, eax
  78669e: 8d 85 90 fe ff ff            	lea	eax, [ebp - 0x170]
  7866a4: 50                           	push	eax
  7866a5: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  7866ab: 50                           	push	eax
  7866ac: e8 6f 9d 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  7866b1: 8b f0                        	mov	esi, eax
  7866b3: c7 85 b8 fe ff ff 00 00 60 41	mov	dword ptr [ebp - 0x148], 0x41600000
  7866bd: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  7866c3: 50                           	push	eax
  7866c4: 8d 95 b8 fe ff ff            	lea	edx, [ebp - 0x148]
  7866ca: 8d 8d c0 fe ff ff            	lea	ecx, [ebp - 0x140]
  7866d0: e8 fb 0a c9 ff               	call	0x4171d0 <epoxy_handle_external_wglMakeCurrent+0xafd0>
  7866d5: 83 c4 04                     	add	esp, 0x4
  7866d8: 8b ce                        	mov	ecx, esi
  7866da: 50                           	push	eax
  7866db: 8d 85 ac fe ff ff            	lea	eax, [ebp - 0x154]
  7866e1: 50                           	push	eax
  7866e2: e8 99 9d 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  7866e7: ff b5 a4 fe ff ff            	push	dword ptr [ebp - 0x15c]
  7866ed: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7866f3: 6a 00                        	push	0x0
  7866f5: 6a 00                        	push	0x0
  7866f7: 57                           	push	edi
  7866f8: 50                           	push	eax
  7866f9: 6a 3a                        	push	0x3a
  7866fb: 68 e8 03 00 00               	push	0x3e8
  786700: e8 1b 24 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  786705: 8b c8                        	mov	ecx, eax
  786707: 8b 10                        	mov	edx, dword ptr [eax]
  786709: ff 52 0c                     	call	dword ptr [edx + 0xc]
  78670c: b9 05 00 00 00               	mov	ecx, 0x5
  786711: e8 fa 88 ef ff               	call	0x67f010 <epoxy_handle_external_wglMakeCurrent+0x272e10>
  786716: 85 c0                        	test	eax, eax
  786718: 0f 85 20 01 00 00            	jne	0x78683e <epoxy_handle_external_wglMakeCurrent+0x37a63e>
  78671e: e8 3d 88 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  786723: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  786729: e8 b2 88 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  78672e: f3 0f 59 05 d0 a8 ba 00      	mulss	xmm0, dword ptr [0xbaa8d0]
  786736: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  78673c: 51                           	push	ecx
  78673d: 8d 8d c8 fe ff ff            	lea	ecx, [ebp - 0x138]
  786743: f3 0f 5c 05 54 a8 ba 00      	subss	xmm0, dword ptr [0xbaa854]
  78674b: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  786750: 50                           	push	eax
  786751: e8 8a 9b 28 00               	call	0xa102e0 <epoxy_handle_external_wglMakeCurrent+0x6040e0>
  786756: 8b f0                        	mov	esi, eax
  786758: e8 83 88 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  78675d: f3 0f 59 05 84 a7 ba 00      	mulss	xmm0, dword ptr [0xbaa784]
  786765: 8d 85 e4 fe ff ff            	lea	eax, [ebp - 0x11c]
  78676b: 50                           	push	eax
  78676c: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  786772: 8b ce                        	mov	ecx, esi
  786774: 50                           	push	eax
  786775: f3 0f 58 05 a4 a7 ba 00      	addss	xmm0, dword ptr [0xbaa7a4]
  78677d: f3 0f 11 85 e4 fe ff ff      	movss	dword ptr [ebp - 0x11c], xmm0
  786785: e8 56 9d 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  78678a: f3 0f 10 8d 90 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x170]
  786792: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  786798: 0f 57 d2                     	xorps	xmm2, xmm2
  78679b: 8b f8                        	mov	edi, eax
  78679d: e8 ee 96 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  7867a2: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  7867a8: 50                           	push	eax
  7867a9: 8d 85 c0 fe ff ff            	lea	eax, [ebp - 0x140]
  7867af: 50                           	push	eax
  7867b0: e8 6b 9c 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  7867b5: 8b f0                        	mov	esi, eax
  7867b7: c7 85 b8 fe ff ff 00 00 60 41	mov	dword ptr [ebp - 0x148], 0x41600000
  7867c1: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  7867c7: 50                           	push	eax
  7867c8: 8d 95 b8 fe ff ff            	lea	edx, [ebp - 0x148]
  7867ce: 8d 8d ac fe ff ff            	lea	ecx, [ebp - 0x154]
  7867d4: e8 f7 09 c9 ff               	call	0x4171d0 <epoxy_handle_external_wglMakeCurrent+0xafd0>
  7867d9: 83 c4 04                     	add	esp, 0x4
  7867dc: 8b ce                        	mov	ecx, esi
  7867de: 50                           	push	eax
  7867df: 8d 85 74 fe ff ff            	lea	eax, [ebp - 0x18c]
  7867e5: 50                           	push	eax
  7867e6: e8 95 9c 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  7867eb: ff b5 a4 fe ff ff            	push	dword ptr [ebp - 0x15c]
  7867f1: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  7867f7: 6a 00                        	push	0x0
  7867f9: 51                           	push	ecx
  7867fa: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786800: 57                           	push	edi
  786801: 50                           	push	eax
  786802: 6a 05                        	push	0x5
  786804: 6a 09                        	push	0x9
  786806: e8 15 23 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  78680b: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786811: 8b f0                        	mov	esi, eax
  786813: bf 80 00 00 00               	mov	edi, 0x80
  786818: e8 33 10 c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  78681d: 8b c8                        	mov	ecx, eax
  78681f: e8 2c 2d ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  786824: 84 c0                        	test	al, al
  786826: 75 05                        	jne	0x78682d <epoxy_handle_external_wglMakeCurrent+0x37a62d>
  786828: bf 80 00 00 80               	mov	edi, 0x80000080
  78682d: 6a 00                        	push	0x0
  78682f: 57                           	push	edi
  786830: 8b ce                        	mov	ecx, esi
  786832: e8 09 0f cc ff               	call	0x447740 <epoxy_handle_external_wglMakeCurrent+0x3b540>
  786837: 8b 06                        	mov	eax, dword ptr [esi]
  786839: 8b ce                        	mov	ecx, esi
  78683b: ff 50 0c                     	call	dword ptr [eax + 0xc]
  78683e: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  786844: 6a 00                        	push	0x0
  786846: 68 00 40 00 00               	push	0x4000
  78684b: 8b cf                        	mov	ecx, edi
  78684d: e8 de 0b c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  786852: 84 c0                        	test	al, al
  786854: 75 4f                        	jne	0x7868a5 <epoxy_handle_external_wglMakeCurrent+0x37a6a5>
  786856: 8d 8f f8 0f 00 00            	lea	ecx, [edi + 0xff8]
  78685c: e8 9f 28 c8 ff               	call	0x409100 <.text+0x8100>
  786861: 8d 8f 30 05 00 00            	lea	ecx, [edi + 0x530]
  786867: e8 94 28 c8 ff               	call	0x409100 <.text+0x8100>
  78686c: 8d 8f 44 06 00 00            	lea	ecx, [edi + 0x644]
  786872: e8 89 28 c8 ff               	call	0x409100 <.text+0x8100>
  786877: 8d b7 58 07 00 00            	lea	esi, [edi + 0x758]
  78687d: bf 07 00 00 00               	mov	edi, 0x7
  786882: 8b ce                        	mov	ecx, esi
  786884: e8 77 28 c8 ff               	call	0x409100 <.text+0x8100>
  786889: 81 c6 14 01 00 00            	add	esi, 0x114
  78688f: 83 ef 01                     	sub	edi, 0x1
  786892: 75 ee                        	jne	0x786882 <epoxy_handle_external_wglMakeCurrent+0x37a682>
  786894: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  78689a: 8d 8f e4 0e 00 00            	lea	ecx, [edi + 0xee4]
  7868a0: e8 5b 28 c8 ff               	call	0x409100 <.text+0x8100>
  7868a5: 8d 47 48                     	lea	eax, [edi + 0x48]
  7868a8: 8b c8                        	mov	ecx, eax
  7868aa: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  7868b0: e8 4b 09 c9 ff               	call	0x417200 <epoxy_handle_external_wglMakeCurrent+0xb000>
  7868b5: 50                           	push	eax
  7868b6: 8d 8f 30 05 00 00            	lea	ecx, [edi + 0x530]
  7868bc: e8 af 98 c9 ff               	call	0x420170 <epoxy_handle_external_wglMakeCurrent+0x13f70>
  7868c1: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7868c4: e8 37 09 c9 ff               	call	0x417200 <epoxy_handle_external_wglMakeCurrent+0xb000>
  7868c9: 50                           	push	eax
  7868ca: 8d 8f 44 06 00 00            	lea	ecx, [edi + 0x644]
  7868d0: e8 9b 98 c9 ff               	call	0x420170 <epoxy_handle_external_wglMakeCurrent+0x13f70>
  7868d5: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7868d8: e8 23 09 c9 ff               	call	0x417200 <epoxy_handle_external_wglMakeCurrent+0xb000>
  7868dd: 50                           	push	eax
  7868de: 8d 8f e4 0e 00 00            	lea	ecx, [edi + 0xee4]
  7868e4: e8 87 98 c9 ff               	call	0x420170 <epoxy_handle_external_wglMakeCurrent+0x13f70>
  7868e9: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  7868ed: f3 0f 10 05 50 a9 ba 00      	movss	xmm0, dword ptr [0xbaa950]
  7868f5: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  7868fd: 0f 85 cb 16 00 00            	jne	0x787fce <epoxy_handle_external_wglMakeCurrent+0x37bdce>
  786903: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  78690a: 0f 85 be 16 00 00            	jne	0x787fce <epoxy_handle_external_wglMakeCurrent+0x37bdce>
  786910: 8d 87 f0 14 00 00            	lea	eax, [edi + 0x14f0]
  786916: 50                           	push	eax
  786917: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78691a: e8 51 98 c9 ff               	call	0x420170 <epoxy_handle_external_wglMakeCurrent+0x13f70>
  78691f: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  786925: e8 36 98 c9 ff               	call	0x420160 <epoxy_handle_external_wglMakeCurrent+0x13f60>
  78692a: 84 c0                        	test	al, al
  78692c: 74 4d                        	je	0x78697b <epoxy_handle_external_wglMakeCurrent+0x37a77b>
  78692e: 68 ec a4 b1 00               	push	0xb1a4ec
  786933: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  786939: e8 92 3b c8 ff               	call	0x40a4d0 <.text+0x94d0>
  78693e: 84 c0                        	test	al, al
  786940: 74 39                        	je	0x78697b <epoxy_handle_external_wglMakeCurrent+0x37a77b>
  786942: 68 b0 af b6 00               	push	0xb6afb0
  786947: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  78694d: e8 7e 48 c8 ff               	call	0x40b1d0 <.text+0xa1d0>
  786952: 8b f0                        	mov	esi, eax
  786954: 85 f6                        	test	esi, esi
  786956: 74 23                        	je	0x78697b <epoxy_handle_external_wglMakeCurrent+0x37a77b>
  786958: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78695b: e8 a0 08 c9 ff               	call	0x417200 <epoxy_handle_external_wglMakeCurrent+0xb000>
  786960: 8d 4e 10                     	lea	ecx, [esi + 0x10]
  786963: 51                           	push	ecx
  786964: 8d 8d c8 fe ff ff            	lea	ecx, [ebp - 0x138]
  78696a: 51                           	push	ecx
  78696b: 8b c8                        	mov	ecx, eax
  78696d: e8 9e 9b 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  786972: 50                           	push	eax
  786973: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  786976: e8 f5 97 c9 ff               	call	0x420170 <epoxy_handle_external_wglMakeCurrent+0x13f70>
  78697b: a1 3c 79 c3 00               	mov	eax, dword ptr [0xc3793c]
  786980: 8b 0d 40 79 c3 00            	mov	ecx, dword ptr [0xc37940]
  786986: 89 85 98 fe ff ff            	mov	dword ptr [ebp - 0x168], eax
  78698c: 8b 87 6c 12 00 00            	mov	eax, dword ptr [edi + 0x126c]
  786992: 89 8d 9c fe ff ff            	mov	dword ptr [ebp - 0x164], ecx
  786998: 85 c0                        	test	eax, eax
  78699a: 0f 88 da 00 00 00            	js	0x786a7a <epoxy_handle_external_wglMakeCurrent+0x37a87a>
  7869a0: 50                           	push	eax
  7869a1: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  7869a7: e8 64 53 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  7869ac: 83 b8 14 01 00 00 00         	cmp	dword ptr [eax + 0x114], 0x0
  7869b3: 74 48                        	je	0x7869fd <epoxy_handle_external_wglMakeCurrent+0x37a7fd>
  7869b5: ff b7 6c 12 00 00            	push	dword ptr [edi + 0x126c]
  7869bb: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  7869c1: e8 4a 53 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  7869c6: 8b 80 14 01 00 00            	mov	eax, dword ptr [eax + 0x114]
  7869cc: 81 78 04 56 02 00 00         	cmp	dword ptr [eax + 0x4], 0x256
  7869d3: 0f 84 a1 00 00 00            	je	0x786a7a <epoxy_handle_external_wglMakeCurrent+0x37a87a>
  7869d9: ff b7 6c 12 00 00            	push	dword ptr [edi + 0x126c]
  7869df: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  7869e5: e8 26 53 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  7869ea: 8b 80 14 01 00 00            	mov	eax, dword ptr [eax + 0x114]
  7869f0: 81 78 04 b0 02 00 00         	cmp	dword ptr [eax + 0x4], 0x2b0
  7869f7: 0f 84 7d 00 00 00            	je	0x786a7a <epoxy_handle_external_wglMakeCurrent+0x37a87a>
  7869fd: ff b7 6c 12 00 00            	push	dword ptr [edi + 0x126c]
  786a03: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  786a09: e8 02 53 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  786a0e: 8b f0                        	mov	esi, eax
  786a10: 8b ce                        	mov	ecx, esi
  786a12: e8 49 7a c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  786a17: 8b c8                        	mov	ecx, eax
  786a19: e8 82 09 c8 ff               	call	0x4073a0 <.text+0x63a0>
  786a1e: 84 c0                        	test	al, al
  786a20: 75 58                        	jne	0x786a7a <epoxy_handle_external_wglMakeCurrent+0x37a87a>
  786a22: 8b ce                        	mov	ecx, esi
  786a24: e8 37 7a c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  786a29: ff b7 70 12 00 00            	push	dword ptr [edi + 0x1270]
  786a2f: 8b c8                        	mov	ecx, eax
  786a31: e8 ea 37 c8 ff               	call	0x40a220 <.text+0x9220>
  786a36: 8b f0                        	mov	esi, eax
  786a38: 85 f6                        	test	esi, esi
  786a3a: 74 3e                        	je	0x786a7a <epoxy_handle_external_wglMakeCurrent+0x37a87a>
  786a3c: f3 0f 10 46 1c               	movss	xmm0, dword ptr [esi + 0x1c]
  786a41: e8 ca 6a c9 ff               	call	0x41d510 <epoxy_handle_external_wglMakeCurrent+0x11310>
  786a46: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  786a4e: f3 0f 10 46 18               	movss	xmm0, dword ptr [esi + 0x18]
  786a53: e8 b8 6a c9 ff               	call	0x41d510 <epoxy_handle_external_wglMakeCurrent+0x11310>
  786a58: f3 0f 10 95 a4 fe ff ff      	movss	xmm2, dword ptr [ebp - 0x15c]
  786a60: 8d 8d c8 fe ff ff            	lea	ecx, [ebp - 0x138]
  786a66: 0f 28 c8                     	movaps	xmm1, xmm0
  786a69: e8 22 94 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  786a6e: 50                           	push	eax
  786a6f: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  786a75: e8 36 69 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  786a7a: f3 0f 10 05 3c 79 c3 00      	movss	xmm0, dword ptr [0xc3793c]
  786a82: 8b cf                        	mov	ecx, edi
  786a84: f3 0f 10 0d 40 79 c3 00      	movss	xmm1, dword ptr [0xc37940]
  786a8c: f3 0f 11 85 bc fe ff ff      	movss	dword ptr [ebp - 0x144], xmm0
  786a94: f3 0f 11 85 7c fe ff ff      	movss	dword ptr [ebp - 0x184], xmm0
  786a9c: 0f 57 c0                     	xorps	xmm0, xmm0
  786a9f: 6a 00                        	push	0x0
  786aa1: 68 ed 01 00 00               	push	0x1ed
  786aa6: f3 0f 11 8d dc fe ff ff      	movss	dword ptr [ebp - 0x124], xmm1
  786aae: f3 0f 11 8d 78 fe ff ff      	movss	dword ptr [ebp - 0x188], xmm1
  786ab6: f3 0f 11 85 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm0
  786abe: e8 1d 9c fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  786ac3: 84 c0                        	test	al, al
  786ac5: 75 18                        	jne	0x786adf <epoxy_handle_external_wglMakeCurrent+0x37a8df>
  786ac7: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  786acd: 68 ed 01 00 00               	push	0x1ed
  786ad2: e8 19 9b 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  786ad7: 84 c0                        	test	al, al
  786ad9: 0f 84 b5 02 00 00            	je	0x786d94 <epoxy_handle_external_wglMakeCurrent+0x37ab94>
  786adf: 8b cf                        	mov	ecx, edi
  786ae1: e8 2a 46 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  786ae6: 84 c0                        	test	al, al
  786ae8: 0f 84 a6 02 00 00            	je	0x786d94 <epoxy_handle_external_wglMakeCurrent+0x37ab94>
  786aee: 8b 87 88 1d 00 00            	mov	eax, dword ptr [edi + 0x1d88]
  786af4: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786afa: 03 c0                        	add	eax, eax
  786afc: 2b 87 44 13 00 00            	sub	eax, dword ptr [edi + 0x1344]
  786b02: 03 87 40 13 00 00            	add	eax, dword ptr [edi + 0x1340]
  786b08: 99                           	cdq
  786b09: 2b c2                        	sub	eax, edx
  786b0b: 8b f0                        	mov	esi, eax
  786b0d: d1 fe                        	sar	esi
  786b0f: e8 3c 0d c9 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  786b14: 8b c8                        	mov	ecx, eax
  786b16: e8 35 2a ca ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  786b1b: 84 c0                        	test	al, al
  786b1d: 74 03                        	je	0x786b22 <epoxy_handle_external_wglMakeCurrent+0x37a922>
  786b1f: c1 ee 02                     	shr	esi, 0x2
  786b22: 0f 57 c9                     	xorps	xmm1, xmm1
  786b25: f3 0f 10 1d 54 a4 ba 00      	movss	xmm3, dword ptr [0xbaa454]
  786b2d: f3 0f 2a ce                  	cvtsi2ss	xmm1, esi
  786b31: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786b37: 0f 28 c3                     	movaps	xmm0, xmm3
  786b3a: 0f 28 d3                     	movaps	xmm2, xmm3
  786b3d: f3 0f 5e 0d 9c a8 ba 00      	divss	xmm1, dword ptr [0xbaa89c]
  786b45: f3 0f 5c c1                  	subss	xmm0, xmm1
  786b49: f3 0f 11 8d a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm1
  786b51: f3 0f 59 c0                  	mulss	xmm0, xmm0
  786b55: f3 0f 5c d0                  	subss	xmm2, xmm0
  786b59: 0f 28 c1                     	movaps	xmm0, xmm1
  786b5c: f3 0f 59 05 04 a8 ba 00      	mulss	xmm0, dword ptr [0xbaa804]
  786b64: f3 0f 59 c1                  	mulss	xmm0, xmm1
  786b68: f3 0f 11 95 78 fe ff ff      	movss	dword ptr [ebp - 0x188], xmm2
  786b70: f3 0f 58 c3                  	addss	xmm0, xmm3
  786b74: f3 0f 58 c0                  	addss	xmm0, xmm0
  786b78: f3 0f 59 05 08 a7 ba 00      	mulss	xmm0, dword ptr [0xbaa708]
  786b80: f3 0f 5e 05 d0 a8 ba 00      	divss	xmm0, dword ptr [0xbaa8d0]
  786b88: f3 0f 11 85 c4 fe ff ff      	movss	dword ptr [ebp - 0x13c], xmm0
  786b90: e8 1b 09 c8 ff               	call	0x4074b0 <.text+0x64b0>
  786b95: f3 0f 10 8d 78 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x188]
  786b9d: 0f 57 c0                     	xorps	xmm0, xmm0
  786ba0: f3 0f 59 0d d0 a2 ba 00      	mulss	xmm1, dword ptr [0xbaa2d0]
  786ba8: f3 0f 2a c0                  	cvtsi2ss	xmm0, eax
  786bac: f3 0f 11 8d d4 fe ff ff      	movss	dword ptr [ebp - 0x12c], xmm1
  786bb4: f3 0f 59 85 c4 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x13c]
  786bbc: e8 8f 05 c9 ff               	call	0x417150 <epoxy_handle_external_wglMakeCurrent+0xaf50>
  786bc1: f3 0f 59 05 d0 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa2d0]
  786bc9: f3 0f 10 0d 30 a6 ba 00      	movss	xmm1, dword ptr [0xbaa630]
  786bd1: f3 0f 58 05 d0 a2 ba 00      	addss	xmm0, dword ptr [0xbaa2d0]
  786bd9: f3 0f 59 05 b0 a4 ba 00      	mulss	xmm0, dword ptr [0xbaa4b0]
  786be1: e8 5a ef d7 ff               	call	0x505b40 <epoxy_handle_external_wglMakeCurrent+0xf9940>
  786be6: f3 0f 5c 05 98 a1 ba 00      	subss	xmm0, dword ptr [0xbaa198]
  786bee: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786bf4: f3 0f 59 85 d4 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x12c]
  786bfc: f3 0f 58 05 54 a4 ba 00      	addss	xmm0, dword ptr [0xbaa454]
  786c04: f3 0f 11 85 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm0
  786c0c: e8 9f 08 c8 ff               	call	0x4074b0 <.text+0x64b0>
  786c11: 83 e8 03                     	sub	eax, 0x3
  786c14: 0f 57 c0                     	xorps	xmm0, xmm0
  786c17: f3 0f 2a c0                  	cvtsi2ss	xmm0, eax
  786c1b: f3 0f 59 85 c4 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x13c]
  786c23: e8 28 05 c9 ff               	call	0x417150 <epoxy_handle_external_wglMakeCurrent+0xaf50>
  786c28: f3 0f 59 05 d0 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa2d0]
  786c30: f3 0f 10 0d 30 a6 ba 00      	movss	xmm1, dword ptr [0xbaa630]
  786c38: f3 0f 58 05 d0 a2 ba 00      	addss	xmm0, dword ptr [0xbaa2d0]
  786c40: f3 0f 59 05 b0 a4 ba 00      	mulss	xmm0, dword ptr [0xbaa4b0]
  786c48: e8 f3 ee d7 ff               	call	0x505b40 <epoxy_handle_external_wglMakeCurrent+0xf9940>
  786c4d: f3 0f 10 8d a4 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x15c]
  786c55: 0f 28 d0                     	movaps	xmm2, xmm0
  786c58: f3 0f 5c 15 98 a1 ba 00      	subss	xmm2, dword ptr [0xbaa198]
  786c60: f3 0f 10 1d 54 a4 ba 00      	movss	xmm3, dword ptr [0xbaa454]
  786c68: f3 0f 59 c9                  	mulss	xmm1, xmm1
  786c6c: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786c72: f3 0f 59 d1                  	mulss	xmm2, xmm1
  786c76: 0f 28 cb                     	movaps	xmm1, xmm3
  786c79: f3 0f 5e 8d b0 fe ff ff      	divss	xmm1, dword ptr [ebp - 0x150]
  786c81: f3 0f 5c cb                  	subss	xmm1, xmm3
  786c85: f3 0f 59 0d d0 a2 ba 00      	mulss	xmm1, dword ptr [0xbaa2d0]
  786c8d: f3 0f 58 cb                  	addss	xmm1, xmm3
  786c91: f3 0f 58 ca                  	addss	xmm1, xmm2
  786c95: f3 0f 59 15 d0 a2 ba 00      	mulss	xmm2, dword ptr [0xbaa2d0]
  786c9d: f3 0f 58 95 b0 fe ff ff      	addss	xmm2, dword ptr [ebp - 0x150]
  786ca5: f3 0f 11 8d bc fe ff ff      	movss	dword ptr [ebp - 0x144], xmm1
  786cad: f3 0f 11 95 dc fe ff ff      	movss	dword ptr [ebp - 0x124], xmm2
  786cb5: e8 f6 07 c8 ff               	call	0x4074b0 <.text+0x64b0>
  786cba: 83 c0 0a                     	add	eax, 0xa
  786cbd: 0f 57 c0                     	xorps	xmm0, xmm0
  786cc0: f3 0f 2a c0                  	cvtsi2ss	xmm0, eax
  786cc4: f3 0f 59 85 c4 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x13c]
  786ccc: e8 7f 04 c9 ff               	call	0x417150 <epoxy_handle_external_wglMakeCurrent+0xaf50>
  786cd1: f3 0f 59 05 d0 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa2d0]
  786cd9: f3 0f 10 0d 30 a6 ba 00      	movss	xmm1, dword ptr [0xbaa630]
  786ce1: f3 0f 58 05 d0 a2 ba 00      	addss	xmm0, dword ptr [0xbaa2d0]
  786ce9: f3 0f 59 05 b0 a4 ba 00      	mulss	xmm0, dword ptr [0xbaa4b0]
  786cf1: e8 4a ee d7 ff               	call	0x505b40 <epoxy_handle_external_wglMakeCurrent+0xf9940>
  786cf6: f3 0f 5c 05 98 a1 ba 00      	subss	xmm0, dword ptr [0xbaa198]
  786cfe: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786d04: f3 0f 59 85 d4 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x12c]
  786d0c: f3 0f 11 85 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm0
  786d14: e8 97 07 c8 ff               	call	0x4074b0 <.text+0x64b0>
  786d19: 83 c0 14                     	add	eax, 0x14
  786d1c: 0f 57 c0                     	xorps	xmm0, xmm0
  786d1f: f3 0f 2a c0                  	cvtsi2ss	xmm0, eax
  786d23: f3 0f 59 85 c4 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x13c]
  786d2b: e8 20 04 c9 ff               	call	0x417150 <epoxy_handle_external_wglMakeCurrent+0xaf50>
  786d30: f3 0f 59 05 d0 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa2d0]
  786d38: f3 0f 10 0d 30 a6 ba 00      	movss	xmm1, dword ptr [0xbaa630]
  786d40: f3 0f 58 05 d0 a2 ba 00      	addss	xmm0, dword ptr [0xbaa2d0]
  786d48: f3 0f 59 05 b0 a4 ba 00      	mulss	xmm0, dword ptr [0xbaa4b0]
  786d50: e8 eb ed d7 ff               	call	0x505b40 <epoxy_handle_external_wglMakeCurrent+0xf9940>
  786d55: 0f 28 c8                     	movaps	xmm1, xmm0
  786d58: f3 0f 10 85 78 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x188]
  786d60: f3 0f 5c 0d 98 a1 ba 00      	subss	xmm1, dword ptr [0xbaa198]
  786d68: f3 0f 59 05 20 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa120]
  786d70: f3 0f 59 c8                  	mulss	xmm1, xmm0
  786d74: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  786d7c: f3 0f 58 c8                  	addss	xmm1, xmm0
  786d80: f3 0f 5e c1                  	divss	xmm0, xmm1
  786d84: f3 0f 11 8d 78 fe ff ff      	movss	dword ptr [ebp - 0x188], xmm1
  786d8c: f3 0f 11 85 7c fe ff ff      	movss	dword ptr [ebp - 0x184], xmm0
  786d94: f3 0f 10 05 40 b6 c7 00      	movss	xmm0, dword ptr [0xc7b640]
  786d9c: a1 3c 79 c3 00               	mov	eax, dword ptr [0xc3793c]
  786da1: 8b 0d 40 79 c3 00            	mov	ecx, dword ptr [0xc37940]
  786da7: 89 85 80 fe ff ff            	mov	dword ptr [ebp - 0x180], eax
  786dad: 8b 87 3c 12 00 00            	mov	eax, dword ptr [edi + 0x123c]
  786db3: f3 0f 11 85 90 fe ff ff      	movss	dword ptr [ebp - 0x170], xmm0
  786dbb: f3 0f 10 05 44 b6 c7 00      	movss	xmm0, dword ptr [0xc7b644]
  786dc3: 89 8d 84 fe ff ff            	mov	dword ptr [ebp - 0x17c], ecx
  786dc9: f3 0f 11 85 94 fe ff ff      	movss	dword ptr [ebp - 0x16c], xmm0
  786dd1: 85 c0                        	test	eax, eax
  786dd3: 0f 88 84 00 00 00            	js	0x786e5d <epoxy_handle_external_wglMakeCurrent+0x37ac5d>
  786dd9: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  786ddf: 50                           	push	eax
  786de0: e8 2b 4f e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  786de5: 68 d4 af b6 00               	push	0xb6afd4
  786dea: 8b c8                        	mov	ecx, eax
  786dec: e8 df 43 c8 ff               	call	0x40b1d0 <.text+0xa1d0>
  786df1: 8b f0                        	mov	esi, eax
  786df3: 85 f6                        	test	esi, esi
  786df5: 74 66                        	je	0x786e5d <epoxy_handle_external_wglMakeCurrent+0x37ac5d>
  786df7: 80 7e 0c 00                  	cmp	byte ptr [esi + 0xc], 0x0
  786dfb: 74 60                        	je	0x786e5d <epoxy_handle_external_wglMakeCurrent+0x37ac5d>
  786dfd: 56                           	push	esi
  786dfe: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  786e04: e8 a7 65 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  786e09: 8d 46 10                     	lea	eax, [esi + 0x10]
  786e0c: 50                           	push	eax
  786e0d: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  786e13: e8 98 65 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  786e18: 83 bf c0 13 00 00 20         	cmp	dword ptr [edi + 0x13c0], 0x20
  786e1f: 75 3c                        	jne	0x786e5d <epoxy_handle_external_wglMakeCurrent+0x37ac5d>
  786e21: 8b cf                        	mov	ecx, edi
  786e23: 33 f6                        	xor	esi, esi
  786e25: e8 16 62 ca ff               	call	0x42d040 <epoxy_handle_external_wglMakeCurrent+0x20e40>
  786e2a: 85 c0                        	test	eax, eax
  786e2c: 74 10                        	je	0x786e3e <epoxy_handle_external_wglMakeCurrent+0x37ac3e>
  786e2e: 8b cf                        	mov	ecx, edi
  786e30: e8 0b 62 ca ff               	call	0x42d040 <epoxy_handle_external_wglMakeCurrent+0x20e40>
  786e35: 8b c8                        	mov	ecx, eax
  786e37: e8 74 81 ef ff               	call	0x67efb0 <epoxy_handle_external_wglMakeCurrent+0x272db0>
  786e3c: 8b f0                        	mov	esi, eax
  786e3e: f3 0f 10 85 94 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x16c]
  786e46: 66 0f 6e ce                  	movd	xmm1, esi
  786e4a: 0f 5b c9                     	cvtdq2ps	xmm1, xmm1
  786e4d: f3 0f 58 c9                  	addss	xmm1, xmm1
  786e51: f3 0f 5c c1                  	subss	xmm0, xmm1
  786e55: f3 0f 11 85 94 fe ff ff      	movss	dword ptr [ebp - 0x16c], xmm0
  786e5d: 6a 08                        	push	0x8
  786e5f: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  786e62: e8 f9 65 e4 ff               	call	0x5cd460 <epoxy_handle_external_wglMakeCurrent+0x1c1260>
  786e67: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  786e6d: e8 fe 02 c8 ff               	call	0x407170 <.text+0x6170>
  786e72: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  786e78: e8 f3 02 c8 ff               	call	0x407170 <.text+0x6170>
  786e7d: 6a 00                        	push	0x0
  786e7f: 68 ca 00 00 00               	push	0xca
  786e84: 8b cf                        	mov	ecx, edi
  786e86: e8 55 98 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  786e8b: 84 c0                        	test	al, al
  786e8d: 74 71                        	je	0x786f00 <epoxy_handle_external_wglMakeCurrent+0x37ad00>
  786e8f: 6a 00                        	push	0x0
  786e91: 68 d2 00 00 00               	push	0xd2
  786e96: 8b cf                        	mov	ecx, edi
  786e98: e8 43 98 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  786e9d: 84 c0                        	test	al, al
  786e9f: 74 15                        	je	0x786eb6 <epoxy_handle_external_wglMakeCurrent+0x37acb6>
  786ea1: f3 0f 10 87 7c 03 00 00      	movss	xmm0, dword ptr [edi + 0x37c]
  786ea9: 0f 2e 05 c4 ab ba 00         	ucomiss	xmm0, dword ptr [0xbaabc4]
  786eb0: 9f                           	lahf
  786eb1: f6 c4 44                     	test	ah, 0x44
  786eb4: 7b 11                        	jnp	0x786ec7 <epoxy_handle_external_wglMakeCurrent+0x37acc7>
  786eb6: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  786ebc: 6a 3b                        	push	0x3b
  786ebe: e8 bd 97 1a 00               	call	0x930680 <epoxy_handle_external_wglMakeCurrent+0x524480>
  786ec3: 84 c0                        	test	al, al
  786ec5: 74 39                        	je	0x786f00 <epoxy_handle_external_wglMakeCurrent+0x37ad00>
  786ec7: 64 a1 2c 00 00 00            	mov	eax, dword ptr fs:[0x2c]
  786ecd: 8b 08                        	mov	ecx, dword ptr [eax]
  786ecf: a1 c8 11 c8 00               	mov	eax, dword ptr [0xc811c8]
  786ed4: 3b 81 0c 00 00 00            	cmp	eax, dword ptr [ecx + 0xc]
  786eda: 0f 8f ad 43 00 00            	jg	0x78b28d <epoxy_handle_external_wglMakeCurrent+0x37f08d>
  786ee0: 68 cc 11 c8 00               	push	0xc811cc
  786ee5: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  786eeb: e8 d0 c2 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  786ef0: 68 cc 11 c8 00               	push	0xc811cc
  786ef5: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  786efb: e8 c0 c2 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  786f00: 8b 8f 00 19 00 00            	mov	ecx, dword ptr [edi + 0x1900]
  786f06: 85 c9                        	test	ecx, ecx
  786f08: 0f 8e 7b 00 00 00            	jle	0x786f89 <epoxy_handle_external_wglMakeCurrent+0x37ad89>
  786f0e: 8b 87 04 19 00 00            	mov	eax, dword ptr [edi + 0x1904]
  786f14: 66 0f 6e c9                  	movd	xmm1, ecx
  786f18: 0f 5b c9                     	cvtdq2ps	xmm1, xmm1
  786f1b: 66 0f 6e c0                  	movd	xmm0, eax
  786f1f: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  786f22: f3 0f 5e c8                  	divss	xmm1, xmm0
  786f26: f3 0f 11 8d a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm1
  786f2e: 3b c8                        	cmp	ecx, eax
  786f30: 7c 3b                        	jl	0x786f6d <epoxy_handle_external_wglMakeCurrent+0x37ad6d>
  786f32: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786f38: e8 73 05 c8 ff               	call	0x4074b0 <.text+0x64b0>
  786f3d: 66 0f 6e c0                  	movd	xmm0, eax
  786f41: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  786f44: f3 0f 59 05 98 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa198]
  786f4c: e8 0f 02 c9 ff               	call	0x417160 <epoxy_handle_external_wglMakeCurrent+0xaf60>
  786f51: f3 0f 59 05 d4 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa1d4]
  786f59: f3 0f 10 8d a4 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x15c]
  786f61: f3 0f 58 05 80 a3 ba 00      	addss	xmm0, dword ptr [0xbaa380]
  786f69: f3 0f 59 c8                  	mulss	xmm1, xmm0
  786f6d: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  786f75: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  786f7b: f3 0f 5c d1                  	subss	xmm2, xmm1
  786f7f: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  786f87: eb 72                        	jmp	0x786ffb <epoxy_handle_external_wglMakeCurrent+0x37adfb>
  786f89: f3 0f 10 87 a4 20 00 00      	movss	xmm0, dword ptr [edi + 0x20a4]
  786f91: 0f 2f 05 e4 9f ba 00         	comiss	xmm0, dword ptr [0xba9fe4]
  786f98: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  786fa0: 76 6d                        	jbe	0x78700f <epoxy_handle_external_wglMakeCurrent+0x37ae0f>
  786fa2: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  786faa: 0f 2f c1                     	comiss	xmm0, xmm1
  786fad: 72 3f                        	jb	0x786fee <epoxy_handle_external_wglMakeCurrent+0x37adee>
  786faf: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  786fb5: e8 f6 04 c8 ff               	call	0x4074b0 <.text+0x64b0>
  786fba: 66 0f 6e c0                  	movd	xmm0, eax
  786fbe: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  786fc1: f3 0f 59 05 98 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa198]
  786fc9: e8 92 01 c9 ff               	call	0x417160 <epoxy_handle_external_wglMakeCurrent+0xaf60>
  786fce: f3 0f 59 05 d4 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa1d4]
  786fd6: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  786fde: f3 0f 58 05 80 a3 ba 00      	addss	xmm0, dword ptr [0xbaa380]
  786fe6: f3 0f 59 85 a4 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x15c]
  786fee: 0f 28 d1                     	movaps	xmm2, xmm1
  786ff1: 8d 8d e8 fe ff ff            	lea	ecx, [ebp - 0x118]
  786ff7: f3 0f 5c d0                  	subss	xmm2, xmm0
  786ffb: 0f 28 da                     	movaps	xmm3, xmm2
  786ffe: e8 7d ea ca ff               	call	0x435a80 <epoxy_handle_external_wglMakeCurrent+0x29880>
  787003: 50                           	push	eax
  787004: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  78700a: e8 b1 c1 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  78700f: 83 bf e8 1a 00 00 00         	cmp	dword ptr [edi + 0x1ae8], 0x0
  787016: 7f 15                        	jg	0x78702d <epoxy_handle_external_wglMakeCurrent+0x37ae2d>
  787018: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  78701e: 68 bb 02 00 00               	push	0x2bb
  787023: e8 48 9a 1a 00               	call	0x930a70 <epoxy_handle_external_wglMakeCurrent+0x524870>
  787028: 83 f8 04                     	cmp	eax, 0x4
  78702b: 75 61                        	jne	0x78708e <epoxy_handle_external_wglMakeCurrent+0x37ae8e>
  78702d: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  787033: e8 78 04 c8 ff               	call	0x4074b0 <.text+0x64b0>
  787038: 66 0f 6e c0                  	movd	xmm0, eax
  78703c: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  78703f: f3 0f 59 05 98 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa198]
  787047: e8 14 01 c9 ff               	call	0x417160 <epoxy_handle_external_wglMakeCurrent+0xaf60>
  78704c: f3 0f 59 05 d0 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa2d0]
  787054: 8d 4d 98                     	lea	ecx, [ebp - 0x68]
  787057: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  78705f: 0f 28 d9                     	movaps	xmm3, xmm1
  787062: 0f 28 d1                     	movaps	xmm2, xmm1
  787065: f3 0f 58 05 d0 a2 ba 00      	addss	xmm0, dword ptr [0xbaa2d0]
  78706d: f3 0f 5c d8                  	subss	xmm3, xmm0
  787071: f3 0f 59 05 80 a3 ba 00      	mulss	xmm0, dword ptr [0xbaa380]
  787079: f3 0f 5c d0                  	subss	xmm2, xmm0
  78707d: e8 fe e9 ca ff               	call	0x435a80 <epoxy_handle_external_wglMakeCurrent+0x29880>
  787082: 50                           	push	eax
  787083: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  787089: e8 32 c1 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  78708e: 83 bf f8 1e 00 00 00         	cmp	dword ptr [edi + 0x1ef8], 0x0
  787095: 0f 8e dd 00 00 00            	jle	0x787178 <epoxy_handle_external_wglMakeCurrent+0x37af78>
  78709b: 6a 00                        	push	0x0
  78709d: 68 00 40 00 00               	push	0x4000
  7870a2: 8b cf                        	mov	ecx, edi
  7870a4: e8 87 03 c9 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  7870a9: 84 c0                        	test	al, al
  7870ab: 75 06                        	jne	0x7870b3 <epoxy_handle_external_wglMakeCurrent+0x37aeb3>
  7870ad: ff 8f f8 1e 00 00            	dec	dword ptr [edi + 0x1ef8]
  7870b3: 8b 8f f8 1e 00 00            	mov	ecx, dword ptr [edi + 0x1ef8]
  7870b9: 8d 95 a4 fe ff ff            	lea	edx, [ebp - 0x15c]
  7870bf: b8 08 00 00 00               	mov	eax, 0x8
  7870c4: c7 85 d4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x12c], 0x6
  7870ce: 2b c1                        	sub	eax, ecx
  7870d0: 8d 8d d4 fe ff ff            	lea	ecx, [ebp - 0x12c]
  7870d6: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  7870dc: e8 7f 5a c9 ff               	call	0x41cb60 <epoxy_handle_external_wglMakeCurrent+0x10960>
  7870e1: 8b d0                        	mov	edx, eax
  7870e3: c7 85 c4 fe ff ff 00 00 00 00	mov	dword ptr [ebp - 0x13c], 0x0
  7870ed: 8d 8d c4 fe ff ff            	lea	ecx, [ebp - 0x13c]
  7870f3: e8 88 5a c9 ff               	call	0x41cb80 <epoxy_handle_external_wglMakeCurrent+0x10980>
  7870f8: f3 0f 10 0d 30 a6 ba 00      	movss	xmm1, dword ptr [0xbaa630]
  787100: 8b 00                        	mov	eax, dword ptr [eax]
  787102: f3 0f 10 14 85 98 bc b6 00   	movss	xmm2, dword ptr [4*eax + 0xb6bc98]
  78710b: f3 0f 5c ca                  	subss	xmm1, xmm2
  78710f: 0f 28 c1                     	movaps	xmm0, xmm1
  787112: f3 0f 59 8d 7c fe ff ff      	mulss	xmm1, dword ptr [ebp - 0x184]
  78711a: f3 0f 59 85 bc fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x144]
  787122: f3 0f 11 8d 7c fe ff ff      	movss	dword ptr [ebp - 0x184], xmm1
  78712a: f3 0f 11 85 bc fe ff ff      	movss	dword ptr [ebp - 0x144], xmm0
  787132: 0f 28 c2                     	movaps	xmm0, xmm2
  787135: f3 0f 59 85 dc fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x124]
  78713d: f3 0f 11 85 dc fe ff ff      	movss	dword ptr [ebp - 0x124], xmm0
  787145: 0f 28 c2                     	movaps	xmm0, xmm2
  787148: f3 0f 5c 15 54 a4 ba 00      	subss	xmm2, dword ptr [0xbaa454]
  787150: f3 0f 59 85 78 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x188]
  787158: f3 0f 59 15 5c a7 ba 00      	mulss	xmm2, dword ptr [0xbaa75c]
  787160: f3 0f 11 85 78 fe ff ff      	movss	dword ptr [ebp - 0x188], xmm0
  787168: f3 0f 58 95 b0 fe ff ff      	addss	xmm2, dword ptr [ebp - 0x150]
  787170: f3 0f 11 95 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm2
  787178: f3 0f 10 87 fc 1e 00 00      	movss	xmm0, dword ptr [edi + 0x1efc]
  787180: 0f 2f 05 e4 9f ba 00         	comiss	xmm0, dword ptr [0xba9fe4]
  787187: 0f 86 55 01 00 00            	jbe	0x7872e2 <epoxy_handle_external_wglMakeCurrent+0x37b0e2>
  78718d: f3 0f 5c 87 9c 03 00 00      	subss	xmm0, dword ptr [edi + 0x39c]
  787195: 8d 95 a4 fe ff ff            	lea	edx, [ebp - 0x15c]
  78719b: c7 85 d4 fe ff ff 00 00 00 00	mov	dword ptr [ebp - 0x12c], 0x0
  7871a5: 8d 8d d4 fe ff ff            	lea	ecx, [ebp - 0x12c]
  7871ab: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  7871b3: e8 b8 59 c9 ff               	call	0x41cb70 <epoxy_handle_external_wglMakeCurrent+0x10970>
  7871b8: f3 0f 10 00                  	movss	xmm0, dword ptr [eax]
  7871bc: f3 0f 11 87 fc 1e 00 00      	movss	dword ptr [edi + 0x1efc], xmm0
  7871c4: f3 0f 58 c0                  	addss	xmm0, xmm0
  7871c8: f3 0f 59 05 08 a7 ba 00      	mulss	xmm0, dword ptr [0xbaa708]
  7871d0: f3 0f 5e 05 1c a8 ba 00      	divss	xmm0, dword ptr [0xbaa81c]
  7871d8: e8 83 ff c8 ff               	call	0x417160 <epoxy_handle_external_wglMakeCurrent+0xaf60>
  7871dd: f3 0f 10 97 fc 1e 00 00      	movss	xmm2, dword ptr [edi + 0x1efc]
  7871e5: 0f 28 ca                     	movaps	xmm1, xmm2
  7871e8: f3 0f 59 05 80 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa280]
  7871f0: f3 0f 58 15 54 a4 ba 00      	addss	xmm2, dword ptr [0xbaa454]
  7871f8: f3 0f 5e 0d 7c a8 ba 00      	divss	xmm1, dword ptr [0xbaa87c]
  787200: f3 0f 58 d2                  	addss	xmm2, xmm2
  787204: f3 0f 59 c8                  	mulss	xmm1, xmm0
  787208: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  787210: f3 0f 59 15 08 a7 ba 00      	mulss	xmm2, dword ptr [0xbaa708]
  787218: f3 0f 5c c1                  	subss	xmm0, xmm1
  78721c: f3 0f 5e 15 1c a8 ba 00      	divss	xmm2, dword ptr [0xbaa81c]
  787224: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  78722c: 0f 28 c2                     	movaps	xmm0, xmm2
  78722f: e8 2c ff c8 ff               	call	0x417160 <epoxy_handle_external_wglMakeCurrent+0xaf60>
  787234: f3 0f 10 1d 54 a4 ba 00      	movss	xmm3, dword ptr [0xbaa454]
  78723c: f3 0f 10 8f fc 1e 00 00      	movss	xmm1, dword ptr [edi + 0x1efc]
  787244: 0f 28 d3                     	movaps	xmm2, xmm3
  787247: f3 0f 59 05 80 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa280]
  78724f: f3 0f 58 cb                  	addss	xmm1, xmm3
  787253: f3 0f 5e 0d 7c a8 ba 00      	divss	xmm1, dword ptr [0xbaa87c]
  78725b: f3 0f 59 c8                  	mulss	xmm1, xmm0
  78725f: f3 0f 10 05 30 a6 ba 00      	movss	xmm0, dword ptr [0xbaa630]
  787267: f3 0f 5c d1                  	subss	xmm2, xmm1
  78726b: f3 0f 10 8d a4 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x15c]
  787273: f3 0f 5c c1                  	subss	xmm0, xmm1
  787277: f3 0f 59 8d dc fe ff ff      	mulss	xmm1, dword ptr [ebp - 0x124]
  78727f: f3 0f 11 8d dc fe ff ff      	movss	dword ptr [ebp - 0x124], xmm1
  787287: f3 0f 59 85 bc fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x144]
  78728f: f3 0f 11 85 bc fe ff ff      	movss	dword ptr [ebp - 0x144], xmm0
  787297: f3 0f 10 05 30 a6 ba 00      	movss	xmm0, dword ptr [0xbaa630]
  78729f: f3 0f 5c c2                  	subss	xmm0, xmm2
  7872a3: f3 0f 59 85 7c fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x184]
  7872ab: f3 0f 11 85 7c fe ff ff      	movss	dword ptr [ebp - 0x184], xmm0
  7872b3: 0f 28 c2                     	movaps	xmm0, xmm2
  7872b6: f3 0f 59 85 78 fe ff ff      	mulss	xmm0, dword ptr [ebp - 0x188]
  7872be: f3 0f 5c d3                  	subss	xmm2, xmm3
  7872c2: f3 0f 11 85 78 fe ff ff      	movss	dword ptr [ebp - 0x188], xmm0
  7872ca: f3 0f 59 15 fc a6 ba 00      	mulss	xmm2, dword ptr [0xbaa6fc]
  7872d2: f3 0f 58 95 b0 fe ff ff      	addss	xmm2, dword ptr [ebp - 0x150]
  7872da: f3 0f 11 95 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm2
  7872e2: 6a 00                        	push	0x0
  7872e4: 68 51 02 00 00               	push	0x251
  7872e9: 8b cf                        	mov	ecx, edi
  7872eb: e8 f0 93 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  7872f0: 84 c0                        	test	al, al
  7872f2: 74 69                        	je	0x78735d <epoxy_handle_external_wglMakeCurrent+0x37b15d>
  7872f4: 83 bf 90 1e 00 00 00         	cmp	dword ptr [edi + 0x1e90], 0x0
  7872fb: 7f 60                        	jg	0x78735d <epoxy_handle_external_wglMakeCurrent+0x37b15d>
  7872fd: 8b cf                        	mov	ecx, edi
  7872ff: e8 0c 29 f2 ff               	call	0x6a9c10 <epoxy_handle_external_wglMakeCurrent+0x29da10>
  787304: 99                           	cdq
  787305: b9 1e 00 00 00               	mov	ecx, 0x1e
  78730a: f7 f9                        	idiv	ecx
  78730c: 83 fa 02                     	cmp	edx, 0x2
  78730f: 7d 4c                        	jge	0x78735d <epoxy_handle_external_wglMakeCurrent+0x37b15d>
  787311: f3 0f 10 1d a4 a3 ba 00      	movss	xmm3, dword ptr [0xbaa3a4]
  787319: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  78731f: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  787327: 83 ec 10                     	sub	esp, 0x10
  78732a: 0f 28 d3                     	movaps	xmm2, xmm3
  78732d: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  787335: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  78733d: c7 44 24 04 9a 99 99 3e      	mov	dword ptr [esp + 0x4], 0x3e99999a
  787345: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78734c: e8 8f 5d c8 ff               	call	0x40d0e0 <epoxy_handle_external_wglMakeCurrent+0xee0>
  787351: 50                           	push	eax
  787352: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  787358: e8 63 be ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  78735d: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  787363: 6a 3f                        	push	0x3f
  787365: 8b ce                        	mov	ecx, esi
  787367: e8 c4 96 1a 00               	call	0x930a30 <epoxy_handle_external_wglMakeCurrent+0x524830>
  78736c: 85 c0                        	test	eax, eax
  78736e: 0f 84 d6 00 00 00            	je	0x78744a <epoxy_handle_external_wglMakeCurrent+0x37b24a>
  787374: 8b 50 08                     	mov	edx, dword ptr [eax + 0x8]
  787377: 83 fa 5a                     	cmp	edx, 0x5a
  78737a: 0f 8d ca 00 00 00            	jge	0x78744a <epoxy_handle_external_wglMakeCurrent+0x37b24a>
  787380: 8b c2                        	mov	eax, edx
  787382: 25 0f 00 00 80               	and	eax, 0x8000000f
  787387: 79 05                        	jns	0x78738e <epoxy_handle_external_wglMakeCurrent+0x37b18e>
  787389: 48                           	dec	eax
  78738a: 83 c8 f0                     	or	eax, -0x10
  78738d: 40                           	inc	eax
  78738e: 8b ca                        	mov	ecx, edx
  787390: 81 e1 07 00 00 80            	and	ecx, 0x80000007
  787396: 79 05                        	jns	0x78739d <epoxy_handle_external_wglMakeCurrent+0x37b19d>
  787398: 49                           	dec	ecx
  787399: 83 c9 f8                     	or	ecx, -0x8
  78739c: 41                           	inc	ecx
  78739d: 83 fa 18                     	cmp	edx, 0x18
  7873a0: 0f 4d c8                     	cmovge	ecx, eax
  7873a3: 89 8d a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], ecx
  7873a9: 83 f9 04                     	cmp	ecx, 0x4
  7873ac: 0f 8f 98 00 00 00            	jg	0x78744a <epoxy_handle_external_wglMakeCurrent+0x37b24a>
  7873b2: f3 0f 10 1d 04 a3 ba 00      	movss	xmm3, dword ptr [0xbaa304]
  7873ba: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  7873c0: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  7873c8: 83 ec 10                     	sub	esp, 0x10
  7873cb: 0f 28 d3                     	movaps	xmm2, xmm3
  7873ce: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  7873d6: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  7873de: c7 44 24 04 9a 99 99 3e      	mov	dword ptr [esp + 0x4], 0x3e99999a
  7873e6: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7873ed: e8 ee 5c c8 ff               	call	0x40d0e0 <epoxy_handle_external_wglMakeCurrent+0xee0>
  7873f2: 8d 8d e8 fe ff ff            	lea	ecx, [ebp - 0x118]
  7873f8: 8b f0                        	mov	esi, eax
  7873fa: e8 71 fd c7 ff               	call	0x407170 <.text+0x6170>
  7873ff: 66 0f 6e 85 a4 fe ff ff      	movd	xmm0, dword ptr [ebp - 0x15c]
  787407: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  78740a: 51                           	push	ecx
  78740b: f3 0f 59 05 d4 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa1d4]
  787413: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  787418: 56                           	push	esi
  787419: 50                           	push	eax
  78741a: 8d 45 98                     	lea	eax, [ebp - 0x68]
  78741d: 50                           	push	eax
  78741e: e8 bd be ef ff               	call	0x6832e0 <epoxy_handle_external_wglMakeCurrent+0x2770e0>
  787423: 83 c4 10                     	add	esp, 0x10
  787426: 8d 45 98                     	lea	eax, [ebp - 0x68]
  787429: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  78742f: 50                           	push	eax
  787430: e8 8b bd ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  787435: 8d 45 98                     	lea	eax, [ebp - 0x68]
  787438: 50                           	push	eax
  787439: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  78743f: e8 7c bd ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  787444: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  78744a: 83 bf d0 1e 00 00 01         	cmp	dword ptr [edi + 0x1ed0], 0x1
  787451: 8d 97 d0 1e 00 00            	lea	edx, [edi + 0x1ed0]
  787457: 0f 57 c0                     	xorps	xmm0, xmm0
  78745a: f3 0f 11 85 d4 fe ff ff      	movss	dword ptr [ebp - 0x12c], xmm0
  787462: 7e 45                        	jle	0x7874a9 <epoxy_handle_external_wglMakeCurrent+0x37b2a9>
  787464: 0f 28 05 60 bc ba 00         	movaps	xmm0, xmmword ptr [0xbabc60]
  78746b: 8d 8d a4 fe ff ff            	lea	ecx, [ebp - 0x15c]
  787471: 0f 11 45 a8                  	movups	xmmword ptr [ebp - 0x58], xmm0
  787475: c7 45 b8 00 00 00 40         	mov	dword ptr [ebp - 0x48], 0x40000000
  78747c: c7 45 bc 00 00 80 3f         	mov	dword ptr [ebp - 0x44], 0x3f800000
  787483: c7 45 c0 00 00 00 00         	mov	dword ptr [ebp - 0x40], 0x0
  78748a: c7 85 a4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x15c], 0x6
  787494: e8 c7 56 c9 ff               	call	0x41cb60 <epoxy_handle_external_wglMakeCurrent+0x10960>
  787499: 8b 00                        	mov	eax, dword ptr [eax]
  78749b: f3 0f 10 44 85 a8            	movss	xmm0, dword ptr [ebp + 4*eax - 0x58]
  7874a1: f3 0f 11 85 d4 fe ff ff      	movss	dword ptr [ebp - 0x12c], xmm0
  7874a9: 68 c0 02 00 00               	push	0x2c0
  7874ae: 8b ce                        	mov	ecx, esi
  7874b0: e8 3b 91 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  7874b5: 84 c0                        	test	al, al
  7874b7: 0f 84 dd 00 00 00            	je	0x78759a <epoxy_handle_external_wglMakeCurrent+0x37b39a>
  7874bd: f3 0f 10 87 a4 03 00 00      	movss	xmm0, dword ptr [edi + 0x3a4]
  7874c5: f3 0f 59 05 4c a5 ba 00      	mulss	xmm0, dword ptr [0xbaa54c]
  7874cd: e8 8e fc c8 ff               	call	0x417160 <epoxy_handle_external_wglMakeCurrent+0xaf60>
  7874d2: f3 0f 58 85 90 fe ff ff      	addss	xmm0, dword ptr [ebp - 0x170]
  7874da: f3 0f 11 85 90 fe ff ff      	movss	dword ptr [ebp - 0x170], xmm0
  7874e2: f3 0f 10 87 a4 03 00 00      	movss	xmm0, dword ptr [edi + 0x3a4]
  7874ea: f3 0f 59 05 c4 a4 ba 00      	mulss	xmm0, dword ptr [0xbaa4c4]
  7874f2: e8 69 fc c8 ff               	call	0x417160 <epoxy_handle_external_wglMakeCurrent+0xaf60>
  7874f7: 0f 28 c8                     	movaps	xmm1, xmm0
  7874fa: 8d 4d 98                     	lea	ecx, [ebp - 0x68]
  7874fd: f3 0f 59 0d d0 a2 ba 00      	mulss	xmm1, dword ptr [0xbaa2d0]
  787505: 83 ec 20                     	sub	esp, 0x20
  787508: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  787510: f3 0f 58 0d d0 a2 ba 00      	addss	xmm1, dword ptr [0xbaa2d0]
  787518: c7 44 24 1c 00 00 00 00      	mov	dword ptr [esp + 0x1c], 0x0
  787520: c7 44 24 18 00 00 00 00      	mov	dword ptr [esp + 0x18], 0x0
  787528: f3 0f 5c c1                  	subss	xmm0, xmm1
  78752c: 0f 28 d1                     	movaps	xmm2, xmm1
  78752f: f3 0f 59 15 f8 a1 ba 00      	mulss	xmm2, dword ptr [0xbaa1f8]
  787537: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  78753f: f3 0f 59 05 80 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa280]
  787547: 0f 28 da                     	movaps	xmm3, xmm2
  78754a: f3 0f 11 44 24 14            	movss	dword ptr [esp + 0x14], xmm0
  787550: c7 44 24 10 00 00 00 00      	mov	dword ptr [esp + 0x10], 0x0
  787558: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  787560: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  787568: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  787570: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  787577: e8 d4 e5 ca ff               	call	0x435b50 <epoxy_handle_external_wglMakeCurrent+0x29950>
  78757c: 8d 45 98                     	lea	eax, [ebp - 0x68]
  78757f: 50                           	push	eax
  787580: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  787586: e8 35 bc ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  78758b: 8d 45 98                     	lea	eax, [ebp - 0x68]
  78758e: 50                           	push	eax
  78758f: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  787595: e8 26 bc ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  78759a: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7875a0: e8 cb a1 c9 ff               	call	0x421770 <epoxy_handle_external_wglMakeCurrent+0x15570>
  7875a5: 83 f8 2a                     	cmp	eax, 0x2a
  7875a8: 0f 85 9f 02 00 00            	jne	0x78784d <epoxy_handle_external_wglMakeCurrent+0x37b64d>
  7875ae: 83 bf c0 13 00 00 23         	cmp	dword ptr [edi + 0x13c0], 0x23
  7875b5: 0f 85 b3 02 00 00            	jne	0x78786e <epoxy_handle_external_wglMakeCurrent+0x37b66e>
  7875bb: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  7875c1: e8 3a 54 ca ff               	call	0x42ca00 <epoxy_handle_external_wglMakeCurrent+0x20800>
  7875c6: 6a 6a                        	push	0x6a
  7875c8: 8b c8                        	mov	ecx, eax
  7875ca: e8 d1 87 fa ff               	call	0x72fda0 <epoxy_handle_external_wglMakeCurrent+0x323ba0>
  7875cf: 89 85 cc fe ff ff            	mov	dword ptr [ebp - 0x134], eax
  7875d5: 8d b7 2c 12 00 00            	lea	esi, [edi + 0x122c]
  7875db: 33 c0                        	xor	eax, eax
  7875dd: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  7875e3: 8b 16                        	mov	edx, dword ptr [esi]
  7875e5: 85 d2                        	test	edx, edx
  7875e7: 78 2c                        	js	0x787615 <epoxy_handle_external_wglMakeCurrent+0x37b415>
  7875e9: 80 7e 0c 00                  	cmp	byte ptr [esi + 0xc], 0x0
  7875ed: 75 26                        	jne	0x787615 <epoxy_handle_external_wglMakeCurrent+0x37b415>
  7875ef: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  7875f5: 52                           	push	edx
  7875f6: e8 15 47 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  7875fb: 8b 8d cc fe ff ff            	mov	ecx, dword ptr [ebp - 0x134]
  787601: 89 85 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], eax
  787607: 39 88 14 01 00 00            	cmp	dword ptr [eax + 0x114], ecx
  78760d: 74 1a                        	je	0x787629 <epoxy_handle_external_wglMakeCurrent+0x37b429>
  78760f: 8b 85 a4 fe ff ff            	mov	eax, dword ptr [ebp - 0x15c]
  787615: 40                           	inc	eax
  787616: 83 c6 10                     	add	esi, 0x10
  787619: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  78761f: 83 f8 0f                     	cmp	eax, 0xf
  787622: 72 bf                        	jb	0x7875e3 <epoxy_handle_external_wglMakeCurrent+0x37b3e3>
  787624: e9 24 02 00 00               	jmp	0x78784d <epoxy_handle_external_wglMakeCurrent+0x37b64d>
  787629: 8b c8                        	mov	ecx, eax
  78762b: e8 40 6e c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  787630: 8b c8                        	mov	ecx, eax
  787632: e8 69 fd c7 ff               	call	0x4073a0 <.text+0x63a0>
  787637: 84 c0                        	test	al, al
  787639: 74 17                        	je	0x787652 <epoxy_handle_external_wglMakeCurrent+0x37b452>
  78763b: 8b 8d c4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x13c]
  787641: 6a 00                        	push	0x0
  787643: 68 2c d5 b1 00               	push	0xb1d52c
  787648: e8 f3 32 c8 ff               	call	0x40a940 <.text+0x9940>
  78764d: e9 92 01 00 00               	jmp	0x7877e4 <epoxy_handle_external_wglMakeCurrent+0x37b5e4>
  787652: 80 bf 98 13 00 00 00         	cmp	byte ptr [edi + 0x1398], 0x0
  787659: 0f 85 7a 01 00 00            	jne	0x7877d9 <epoxy_handle_external_wglMakeCurrent+0x37b5d9>
  78765f: 80 bf 9a 13 00 00 00         	cmp	byte ptr [edi + 0x139a], 0x0
  787666: 0f 85 6d 01 00 00            	jne	0x7877d9 <epoxy_handle_external_wglMakeCurrent+0x37b5d9>
  78766c: 8b b5 c4 fe ff ff            	mov	esi, dword ptr [ebp - 0x13c]
  787672: 8b ce                        	mov	ecx, esi
  787674: 68 ec a4 b1 00               	push	0xb1a4ec
  787679: e8 f2 33 c8 ff               	call	0x40aa70 <.text+0x9a70>
  78767e: 84 c0                        	test	al, al
  787680: 0f 84 5e 01 00 00            	je	0x7877e4 <epoxy_handle_external_wglMakeCurrent+0x37b5e4>
  787686: 6a 01                        	push	0x1
  787688: 68 2c d5 b1 00               	push	0xb1d52c
  78768d: 8b ce                        	mov	ecx, esi
  78768f: e8 ac 32 c8 ff               	call	0x40a940 <.text+0x9940>
  787694: 6a 00                        	push	0x0
  787696: 8d 45 e0                     	lea	eax, [ebp - 0x20]
  787699: 8b cf                        	mov	ecx, edi
  78769b: 50                           	push	eax
  78769c: e8 bf 8e ff ff               	call	0x780560 <epoxy_handle_external_wglMakeCurrent+0x374360>
  7876a1: 6a 00                        	push	0x0
  7876a3: 83 ec 10                     	sub	esp, 0x10
  7876a6: 8b cc                        	mov	ecx, esp
  7876a8: 0f 10 00                     	movups	xmm0, xmmword ptr [eax]
  7876ab: 6a 00                        	push	0x0
  7876ad: 6a 00                        	push	0x0
  7876af: 0f 11 45 e0                  	movups	xmmword ptr [ebp - 0x20], xmm0
  7876b3: e8 08 e5 ca ff               	call	0x435bc0 <epoxy_handle_external_wglMakeCurrent+0x299c0>
  7876b8: 8b cf                        	mov	ecx, edi
  7876ba: e8 f1 97 ff ff               	call	0x780eb0 <epoxy_handle_external_wglMakeCurrent+0x374cb0>
  7876bf: 83 ec 10                     	sub	esp, 0x10
  7876c2: 8b cc                        	mov	ecx, esp
  7876c4: 6a 00                        	push	0x0
  7876c6: 6a 00                        	push	0x0
  7876c8: e8 f3 e4 ca ff               	call	0x435bc0 <epoxy_handle_external_wglMakeCurrent+0x299c0>
  7876cd: 8b cf                        	mov	ecx, edi
  7876cf: e8 ec 97 ff ff               	call	0x780ec0 <epoxy_handle_external_wglMakeCurrent+0x374cc0>
  7876d4: 0f 2f 05 28 a5 ba 00         	comiss	xmm0, dword ptr [0xbaa528]
  7876db: 72 10                        	jb	0x7876ed <epoxy_handle_external_wglMakeCurrent+0x37b4ed>
  7876dd: f3 0f 10 05 ec a9 ba 00      	movss	xmm0, dword ptr [0xbaa9ec]
  7876e5: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  7876ed: 8b cf                        	mov	ecx, edi
  7876ef: e8 6c e4 d7 ff               	call	0x505b60 <epoxy_handle_external_wglMakeCurrent+0xf9960>
  7876f4: 8b b5 d0 fe ff ff            	mov	esi, dword ptr [ebp - 0x130]
  7876fa: 8b f8                        	mov	edi, eax
  7876fc: 8d 85 c8 fe ff ff            	lea	eax, [ebp - 0x138]
  787702: 50                           	push	eax
  787703: e8 68 79 ef ff               	call	0x67f070 <epoxy_handle_external_wglMakeCurrent+0x272e70>
  787708: 83 c4 04                     	add	esp, 0x4
  78770b: 8d 8e 3c 03 00 00            	lea	ecx, [esi + 0x33c]
  787711: 50                           	push	eax
  787712: 8d 85 a0 fe ff ff            	lea	eax, [ebp - 0x160]
  787718: 50                           	push	eax
  787719: e8 02 8d 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  78771e: 0f 10 45 e0                  	movups	xmm0, xmmword ptr [ebp - 0x20]
  787722: 6a 01                        	push	0x1
  787724: 6a 00                        	push	0x0
  787726: 6a 04                        	push	0x4
  787728: 6a 01                        	push	0x1
  78772a: 8b c8                        	mov	ecx, eax
  78772c: 51                           	push	ecx
  78772d: c7 04 24 00 00 a0 3f         	mov	dword ptr [esp], 0x3fa00000
  787734: 56                           	push	esi
  787735: 57                           	push	edi
  787736: 83 ec 10                     	sub	esp, 0x10
  787739: 8b c4                        	mov	eax, esp
  78773b: 51                           	push	ecx
  78773c: 0f 11 00                     	movups	xmmword ptr [eax], xmm0
  78773f: f3 0f 10 85 b8 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x148]
  787747: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  78774c: 51                           	push	ecx
  78774d: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  787753: e8 08 89 f7 ff               	call	0x700060 <epoxy_handle_external_wglMakeCurrent+0x2f3e60>
  787758: 68 40 b6 c7 00               	push	0xc7b640
  78775d: 8d 8e 60 03 00 00            	lea	ecx, [esi + 0x360]
  787763: e8 48 5c 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787768: 8b 06                        	mov	eax, dword ptr [esi]
  78776a: 8b 78 54                     	mov	edi, dword ptr [eax + 0x54]
  78776d: 8d 85 b4 fe ff ff            	lea	eax, [ebp - 0x14c]
  787773: 50                           	push	eax
  787774: e8 f7 78 ef ff               	call	0x67f070 <epoxy_handle_external_wglMakeCurrent+0x272e70>
  787779: 83 c4 04                     	add	esp, 0x4
  78777c: 8b f0                        	mov	esi, eax
  78777e: e8 5d 78 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  787783: f3 0f 59 05 fc a6 ba 00      	mulss	xmm0, dword ptr [0xbaa6fc]
  78778b: 8d 85 cc fe ff ff            	lea	eax, [ebp - 0x134]
  787791: 50                           	push	eax
  787792: 8d 85 a0 fe ff ff            	lea	eax, [ebp - 0x160]
  787798: 8b ce                        	mov	ecx, esi
  78779a: 50                           	push	eax
  78779b: f3 0f 58 05 30 a6 ba 00      	addss	xmm0, dword ptr [0xbaa630]
  7877a3: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  7877ab: e8 30 8d 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  7877b0: 6a 00                        	push	0x0
  7877b2: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  7877b5: 8b f0                        	mov	esi, eax
  7877b7: e8 54 9b ca ff               	call	0x431310 <epoxy_handle_external_wglMakeCurrent+0x25110>
  7877bc: 51                           	push	ecx
  7877bd: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  7877c3: 8d 45 9c                     	lea	eax, [ebp - 0x64]
  7877c6: c7 04 24 00 00 00 41         	mov	dword ptr [esp], 0x41000000
  7877cd: 56                           	push	esi
  7877ce: 50                           	push	eax
  7877cf: ff d7                        	call	edi
  7877d1: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  7877d7: eb 0b                        	jmp	0x7877e4 <epoxy_handle_external_wglMakeCurrent+0x37b5e4>
  7877d9: 8b 8d c4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x13c]
  7877df: e8 7c 34 c8 ff               	call	0x40ac60 <.text+0x9c60>
  7877e4: 8b 8d c4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x13c]
  7877ea: e8 81 6c c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  7877ef: 8b c8                        	mov	ecx, eax
  7877f1: e8 aa fb c7 ff               	call	0x4073a0 <.text+0x63a0>
  7877f6: 84 c0                        	test	al, al
  7877f8: 75 53                        	jne	0x78784d <epoxy_handle_external_wglMakeCurrent+0x37b64d>
  7877fa: 8b 8d c4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x13c]
  787800: e8 6b 6c c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  787805: 68 c8 af b6 00               	push	0xb6afc8
  78780a: 8b c8                        	mov	ecx, eax
  78780c: e8 cf 34 c8 ff               	call	0x40ace0 <.text+0x9ce0>
  787811: 8b f0                        	mov	esi, eax
  787813: 85 f6                        	test	esi, esi
  787815: 74 36                        	je	0x78784d <epoxy_handle_external_wglMakeCurrent+0x37b64d>
  787817: 8d 4e 10                     	lea	ecx, [esi + 0x10]
  78781a: 51                           	push	ecx
  78781b: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  787821: e8 4a 8d 28 00               	call	0xa10570 <epoxy_handle_external_wglMakeCurrent+0x604370>
  787826: 56                           	push	esi
  787827: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  78782d: e8 1e 8c 28 00               	call	0xa10450 <epoxy_handle_external_wglMakeCurrent+0x604250>
  787832: 83 c6 18                     	add	esi, 0x18
  787835: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  78783b: 56                           	push	esi
  78783c: e8 7f b9 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  787841: 56                           	push	esi
  787842: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  787848: e8 73 b9 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  78784d: 83 bf c0 13 00 00 23         	cmp	dword ptr [edi + 0x13c0], 0x23
  787854: 75 18                        	jne	0x78786e <epoxy_handle_external_wglMakeCurrent+0x37b66e>
  787856: f3 0f 10 85 94 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x16c]
  78785e: f3 0f 58 87 88 1f 00 00      	addss	xmm0, dword ptr [edi + 0x1f88]
  787866: f3 0f 11 85 94 fe ff ff      	movss	dword ptr [ebp - 0x16c], xmm0
  78786e: 6a 04                        	push	0x4
  787870: 6a 00                        	push	0x0
  787872: 8b cf                        	mov	ecx, edi
  787874: e8 b7 fb c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  787879: 84 c0                        	test	al, al
  78787b: 74 5d                        	je	0x7878da <epoxy_handle_external_wglMakeCurrent+0x37b6da>
  78787d: 39 bf 8c 02 00 00            	cmp	dword ptr [edi + 0x28c], edi
  787883: 75 55                        	jne	0x7878da <epoxy_handle_external_wglMakeCurrent+0x37b6da>
  787885: 8b 87 8c 13 00 00            	mov	eax, dword ptr [edi + 0x138c]
  78788b: 3d 96 00 00 00               	cmp	eax, 0x96
  787890: 7d 48                        	jge	0x7878da <epoxy_handle_external_wglMakeCurrent+0x37b6da>
  787892: 66 0f 6e d0                  	movd	xmm2, eax
  787896: 0f 5b d2                     	cvtdq2ps	xmm2, xmm2
  787899: 51                           	push	ecx
  78789a: 8d 4d 98                     	lea	ecx, [ebp - 0x68]
  78789d: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7878a4: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  7878ac: f3 0f 5e 15 44 aa ba 00      	divss	xmm2, dword ptr [0xbaaa44]
  7878b4: 0f 28 da                     	movaps	xmm3, xmm2
  7878b7: e8 34 c0 c9 ff               	call	0x4238f0 <epoxy_handle_external_wglMakeCurrent+0x176f0>
  7878bc: 8d 45 98                     	lea	eax, [ebp - 0x68]
  7878bf: 50                           	push	eax
  7878c0: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  7878c6: e8 f5 b8 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  7878cb: 8d 45 98                     	lea	eax, [ebp - 0x68]
  7878ce: 50                           	push	eax
  7878cf: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  7878d5: e8 e6 b8 ef ff               	call	0x6831c0 <epoxy_handle_external_wglMakeCurrent+0x276fc0>
  7878da: 8b cf                        	mov	ecx, edi
  7878dc: e8 df 7f 04 00               	call	0x7cf8c0 <epoxy_handle_external_wglMakeCurrent+0x3c36c0>
  7878e1: 84 c0                        	test	al, al
  7878e3: 75 5a                        	jne	0x78793f <epoxy_handle_external_wglMakeCurrent+0x37b73f>
  7878e5: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  7878eb: e8 10 00 c9 ff               	call	0x417900 <epoxy_handle_external_wglMakeCurrent+0xb700>
  7878f0: 8b c8                        	mov	ecx, eax
  7878f2: e8 f9 e4 19 00               	call	0x925df0 <epoxy_handle_external_wglMakeCurrent+0x519bf0>
  7878f7: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  7878fd: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  787905: e8 66 f9 c7 ff               	call	0x407270 <.text+0x6270>
  78790a: d8 8d b8 fe ff ff            	fmul	dword ptr [ebp - 0x148]
  787910: 51                           	push	ecx
  787911: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  787917: d9 1c 24                     	fstp	dword ptr [esp]
  78791a: e8 61 f9 c7 ff               	call	0x407280 <.text+0x6280>
  78791f: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  787925: e8 46 f9 c7 ff               	call	0x407270 <.text+0x6270>
  78792a: d8 8d b8 fe ff ff            	fmul	dword ptr [ebp - 0x148]
  787930: 51                           	push	ecx
  787931: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  787937: d9 1c 24                     	fstp	dword ptr [esp]
  78793a: e8 41 f9 c7 ff               	call	0x407280 <.text+0x6280>
  78793f: 80 bf 98 13 00 00 00         	cmp	byte ptr [edi + 0x1398], 0x0
  787946: 74 19                        	je	0x787961 <epoxy_handle_external_wglMakeCurrent+0x37b761>
  787948: 6a ff                        	push	-0x1
  78794a: 68 71 02 00 00               	push	0x271
  78794f: 8b cf                        	mov	ecx, edi
  787951: e8 6a 60 fd ff               	call	0x75d9c0 <epoxy_handle_external_wglMakeCurrent+0x3517c0>
  787956: c6 85 e3 fe ff ff 01         	mov	byte ptr [ebp - 0x11d], 0x1
  78795d: 84 c0                        	test	al, al
  78795f: 74 07                        	je	0x787968 <epoxy_handle_external_wglMakeCurrent+0x37b768>
  787961: c6 85 e3 fe ff ff 00         	mov	byte ptr [ebp - 0x11d], 0x0
  787968: 8d 47 48                     	lea	eax, [edi + 0x48]
  78796b: 33 f6                        	xor	esi, esi
  78796d: 8d 8f 38 12 00 00            	lea	ecx, [edi + 0x1238]
  787973: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  787979: 89 8d b8 fe ff ff            	mov	dword ptr [ebp - 0x148], ecx
  78797f: eb 03                        	jmp	0x787984 <epoxy_handle_external_wglMakeCurrent+0x37b784>
  787981: 8d 47 48                     	lea	eax, [edi + 0x48]
  787984: 80 39 00                     	cmp	byte ptr [ecx], 0x0
  787987: 0f 84 7a 00 00 00            	je	0x787a07 <epoxy_handle_external_wglMakeCurrent+0x37b807>
  78798d: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  787993: 51                           	push	ecx
  787994: 56                           	push	esi
  787995: 8b c8                        	mov	ecx, eax
  787997: e8 64 38 c8 ff               	call	0x40b200 <.text+0xa200>
  78799c: 8d 48 48                     	lea	ecx, [eax + 0x48]
  78799f: e8 4c f8 c7 ff               	call	0x4071f0 <.text+0x61f0>
  7879a4: 8d 87 f8 14 00 00            	lea	eax, [edi + 0x14f8]
  7879aa: 50                           	push	eax
  7879ab: 56                           	push	esi
  7879ac: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7879af: e8 4c 38 c8 ff               	call	0x40b200 <.text+0xa200>
  7879b4: 8d 48 34                     	lea	ecx, [eax + 0x34]
  7879b7: e8 f4 59 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  7879bc: 80 bd e3 fe ff ff 00         	cmp	byte ptr [ebp - 0x11d], 0x0
  7879c3: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7879c6: 74 07                        	je	0x7879cf <epoxy_handle_external_wglMakeCurrent+0x37b7cf>
  7879c8: 68 3c 79 c3 00               	push	0xc3793c
  7879cd: eb 62                        	jmp	0x787a31 <epoxy_handle_external_wglMakeCurrent+0x37b831>
  7879cf: 56                           	push	esi
  7879d0: e8 2b 38 c8 ff               	call	0x40b200 <.text+0xa200>
  7879d5: f3 0f 10 85 bc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x144]
  7879dd: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7879e0: 56                           	push	esi
  7879e1: f3 0f 59 40 34               	mulss	xmm0, dword ptr [eax + 0x34]
  7879e6: f3 0f 11 40 34               	movss	dword ptr [eax + 0x34], xmm0
  7879eb: e8 10 38 c8 ff               	call	0x40b200 <.text+0xa200>
  7879f0: f3 0f 10 85 dc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x124]
  7879f8: f3 0f 59 40 38               	mulss	xmm0, dword ptr [eax + 0x38]
  7879fd: f3 0f 11 40 38               	movss	dword ptr [eax + 0x38], xmm0
  787a02: e9 40 01 00 00               	jmp	0x787b47 <epoxy_handle_external_wglMakeCurrent+0x37b947>
  787a07: 8d 8d 14 ff ff ff            	lea	ecx, [ebp - 0xec]
  787a0d: 51                           	push	ecx
  787a0e: 56                           	push	esi
  787a0f: 8b c8                        	mov	ecx, eax
  787a11: e8 ea 37 c8 ff               	call	0x40b200 <.text+0xa200>
  787a16: 8d 48 48                     	lea	ecx, [eax + 0x48]
  787a19: e8 d2 f7 c7 ff               	call	0x4071f0 <.text+0x61f0>
  787a1e: 80 bd e3 fe ff ff 00         	cmp	byte ptr [ebp - 0x11d], 0x0
  787a25: 8d 87 00 15 00 00            	lea	eax, [edi + 0x1500]
  787a2b: 74 2d                        	je	0x787a5a <epoxy_handle_external_wglMakeCurrent+0x37b85a>
  787a2d: 50                           	push	eax
  787a2e: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787a31: 56                           	push	esi
  787a32: e8 c9 37 c8 ff               	call	0x40b200 <.text+0xa200>
  787a37: 8d 48 34                     	lea	ecx, [eax + 0x34]
  787a3a: e8 71 59 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787a3f: 68 40 b6 c7 00               	push	0xc7b640
  787a44: 56                           	push	esi
  787a45: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787a48: e8 b3 37 c8 ff               	call	0x40b200 <.text+0xa200>
  787a4d: 8d 48 40                     	lea	ecx, [eax + 0x40]
  787a50: e8 5b 59 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787a55: e9 03 01 00 00               	jmp	0x787b5d <epoxy_handle_external_wglMakeCurrent+0x37b95d>
  787a5a: 8d 87 f8 14 00 00            	lea	eax, [edi + 0x14f8]
  787a60: 50                           	push	eax
  787a61: 8d 85 c0 fe ff ff            	lea	eax, [ebp - 0x140]
  787a67: 50                           	push	eax
  787a68: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  787a6e: e8 9d 8a 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  787a73: 50                           	push	eax
  787a74: 56                           	push	esi
  787a75: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787a78: e8 83 37 c8 ff               	call	0x40b200 <.text+0xa200>
  787a7d: 8d 48 40                     	lea	ecx, [eax + 0x40]
  787a80: e8 2b 59 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787a85: 8d 87 00 15 00 00            	lea	eax, [edi + 0x1500]
  787a8b: 50                           	push	eax
  787a8c: 8d 85 6c fe ff ff            	lea	eax, [ebp - 0x194]
  787a92: 50                           	push	eax
  787a93: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  787a99: e8 72 8a 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  787a9e: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  787aa4: 51                           	push	ecx
  787aa5: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  787aa8: 51                           	push	ecx
  787aa9: 8b c8                        	mov	ecx, eax
  787aab: e8 60 8a 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  787ab0: 50                           	push	eax
  787ab1: 56                           	push	esi
  787ab2: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787ab5: e8 46 37 c8 ff               	call	0x40b200 <.text+0xa200>
  787aba: 8d 48 34                     	lea	ecx, [eax + 0x34]
  787abd: e8 ee 58 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787ac2: 56                           	push	esi
  787ac3: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787ac6: e8 35 37 c8 ff               	call	0x40b200 <.text+0xa200>
  787acb: f3 0f 10 85 7c fe ff ff      	movss	xmm0, dword ptr [ebp - 0x184]
  787ad3: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787ad6: 56                           	push	esi
  787ad7: f3 0f 59 40 34               	mulss	xmm0, dword ptr [eax + 0x34]
  787adc: f3 0f 11 40 34               	movss	dword ptr [eax + 0x34], xmm0
  787ae1: e8 1a 37 c8 ff               	call	0x40b200 <.text+0xa200>
  787ae6: f3 0f 10 85 78 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x188]
  787aee: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787af1: 56                           	push	esi
  787af2: f3 0f 59 40 38               	mulss	xmm0, dword ptr [eax + 0x38]
  787af7: f3 0f 11 40 38               	movss	dword ptr [eax + 0x38], xmm0
  787afc: f3 0f 10 8f 04 15 00 00      	movss	xmm1, dword ptr [edi + 0x1504]
  787b04: f3 0f 5c 8f fc 14 00 00      	subss	xmm1, dword ptr [edi + 0x14fc]
  787b0c: f3 0f 10 85 b0 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x150]
  787b14: f3 0f 59 05 e8 a7 ba 00      	mulss	xmm0, dword ptr [0xbaa7e8]
  787b1c: f3 0f 59 0d bc a6 ba 00      	mulss	xmm1, dword ptr [0xbaa6bc]
  787b24: f3 0f 58 c8                  	addss	xmm1, xmm0
  787b28: f3 0f 11 8d cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm1
  787b30: e8 cb 36 c8 ff               	call	0x40b200 <.text+0xa200>
  787b35: f3 0f 10 85 cc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x134]
  787b3d: f3 0f 58 40 44               	addss	xmm0, dword ptr [eax + 0x44]
  787b42: f3 0f 11 40 44               	movss	dword ptr [eax + 0x44], xmm0
  787b47: 56                           	push	esi
  787b48: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787b4b: e8 b0 36 c8 ff               	call	0x40b200 <.text+0xa200>
  787b50: f3 0f 10 85 d4 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x12c]
  787b58: f3 0f 11 40 40               	movss	dword ptr [eax + 0x40], xmm0
  787b5d: 8b 8d b8 fe ff ff            	mov	ecx, dword ptr [ebp - 0x148]
  787b63: 46                           	inc	esi
  787b64: 83 c1 10                     	add	ecx, 0x10
  787b67: 89 8d b8 fe ff ff            	mov	dword ptr [ebp - 0x148], ecx
  787b6d: 83 fe 0f                     	cmp	esi, 0xf
  787b70: 0f 8c 0b fe ff ff            	jl	0x787981 <epoxy_handle_external_wglMakeCurrent+0x37b781>
  787b76: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  787b7c: e8 9f 42 e4 ff               	call	0x5cbe20 <epoxy_handle_external_wglMakeCurrent+0x1bfc20>
  787b81: 33 c0                        	xor	eax, eax
  787b83: c7 45 fc 07 00 00 00         	mov	dword ptr [ebp - 0x4], 0x7
  787b8a: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  787b90: c1 e0 04                     	shl	eax, 0x4
  787b93: 05 2c 12 00 00               	add	eax, 0x122c
  787b98: 03 c7                        	add	eax, edi
  787b9a: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  787ba0: 8b 10                        	mov	edx, dword ptr [eax]
  787ba2: 85 d2                        	test	edx, edx
  787ba4: 0f 88 20 02 00 00            	js	0x787dca <epoxy_handle_external_wglMakeCurrent+0x37bbca>
  787baa: 80 78 0c 00                  	cmp	byte ptr [eax + 0xc], 0x0
  787bae: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  787bb4: 52                           	push	edx
  787bb5: 74 27                        	je	0x787bde <epoxy_handle_external_wglMakeCurrent+0x37b9de>
  787bb7: e8 54 41 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787bbc: 8b 8d e4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x11c]
  787bc2: 83 ec 2c                     	sub	esp, 0x2c
  787bc5: 8b f8                        	mov	edi, eax
  787bc7: 8b f4                        	mov	esi, esp
  787bc9: e8 42 f8 c7 ff               	call	0x407410 <.text+0x6410>
  787bce: 50                           	push	eax
  787bcf: 8b ce                        	mov	ecx, esi
  787bd1: e8 ea f5 c7 ff               	call	0x4071c0 <.text+0x61c0>
  787bd6: 8d 95 6c ff ff ff            	lea	edx, [ebp - 0x94]
  787bdc: eb 42                        	jmp	0x787c20 <epoxy_handle_external_wglMakeCurrent+0x37ba20>
  787bde: e8 2d 41 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787be3: 83 bd b0 fe ff ff 04         	cmp	dword ptr [ebp - 0x150], 0x4
  787bea: 73 14                        	jae	0x787c00 <epoxy_handle_external_wglMakeCurrent+0x37ba00>
  787bec: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787bef: 8b f0                        	mov	esi, eax
  787bf1: e8 1a f8 c7 ff               	call	0x407410 <.text+0x6410>
  787bf6: 50                           	push	eax
  787bf7: 8b ce                        	mov	ecx, esi
  787bf9: e8 d2 f7 c7 ff               	call	0x4073d0 <.text+0x63d0>
  787bfe: eb 3c                        	jmp	0x787c3c <epoxy_handle_external_wglMakeCurrent+0x37ba3c>
  787c00: 8b 8d a4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x15c]
  787c06: 83 ec 2c                     	sub	esp, 0x2c
  787c09: 8b f8                        	mov	edi, eax
  787c0b: 8b f4                        	mov	esi, esp
  787c0d: e8 fe f7 c7 ff               	call	0x407410 <.text+0x6410>
  787c12: 50                           	push	eax
  787c13: 8b ce                        	mov	ecx, esi
  787c15: e8 a6 f5 c7 ff               	call	0x4071c0 <.text+0x61c0>
  787c1a: 8d 95 14 ff ff ff            	lea	edx, [ebp - 0xec]
  787c20: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  787c26: e8 b5 f6 c7 ff               	call	0x4072e0 <.text+0x62e0>
  787c2b: 83 c4 2c                     	add	esp, 0x2c
  787c2e: 8b cf                        	mov	ecx, edi
  787c30: 50                           	push	eax
  787c31: e8 9a f7 c7 ff               	call	0x4073d0 <.text+0x63d0>
  787c36: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  787c3c: 8b 85 d4 fe ff ff            	mov	eax, dword ptr [ebp - 0x12c]
  787c42: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  787c48: ff 30                        	push	dword ptr [eax]
  787c4a: e8 c1 40 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787c4f: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787c52: 8b f0                        	mov	esi, eax
  787c54: e8 a7 f5 c8 ff               	call	0x417200 <epoxy_handle_external_wglMakeCurrent+0xb000>
  787c59: 50                           	push	eax
  787c5a: 8b ce                        	mov	ecx, esi
  787c5c: e8 0f 85 c9 ff               	call	0x420170 <epoxy_handle_external_wglMakeCurrent+0x13f70>
  787c61: 8b b5 d4 fe ff ff            	mov	esi, dword ptr [ebp - 0x12c]
  787c67: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  787c6d: ff 36                        	push	dword ptr [esi]
  787c6f: e8 9c 40 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787c74: ff 76 04                     	push	dword ptr [esi + 0x4]
  787c77: 8b c8                        	mov	ecx, eax
  787c79: e8 82 35 c8 ff               	call	0x40b200 <.text+0xa200>
  787c7e: ff b5 b0 fe ff ff            	push	dword ptr [ebp - 0x150]
  787c84: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787c87: 89 85 b8 fe ff ff            	mov	dword ptr [ebp - 0x148], eax
  787c8d: e8 6e 35 c8 ff               	call	0x40b200 <.text+0xa200>
  787c92: 8b 8d b8 fe ff ff            	mov	ecx, dword ptr [ebp - 0x148]
  787c98: 83 c0 34                     	add	eax, 0x34
  787c9b: 50                           	push	eax
  787c9c: 83 c1 34                     	add	ecx, 0x34
  787c9f: e8 0c 57 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787ca4: ff b5 b0 fe ff ff            	push	dword ptr [ebp - 0x150]
  787caa: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  787cad: e8 4e 35 c8 ff               	call	0x40b200 <.text+0xa200>
  787cb2: 8b b5 b8 fe ff ff            	mov	esi, dword ptr [ebp - 0x148]
  787cb8: 83 c0 40                     	add	eax, 0x40
  787cbb: 50                           	push	eax
  787cbc: 8d 4e 40                     	lea	ecx, [esi + 0x40]
  787cbf: e8 ec 56 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787cc4: 83 bd b0 fe ff ff 00         	cmp	dword ptr [ebp - 0x150], 0x0
  787ccb: 75 07                        	jne	0x787cd4 <epoxy_handle_external_wglMakeCurrent+0x37bad4>
  787ccd: 83 8e 8c 00 00 00 01         	or	dword ptr [esi + 0x8c], 0x1
  787cd4: 8b b5 d4 fe ff ff            	mov	esi, dword ptr [ebp - 0x12c]
  787cda: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  787cdd: 56                           	push	esi
  787cde: 50                           	push	eax
  787cdf: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  787ce5: e8 d6 c8 d5 ff               	call	0x4e45c0 <epoxy_handle_external_wglMakeCurrent+0xd83c0>
  787cea: 80 7e 0c 00                  	cmp	byte ptr [esi + 0xc], 0x0
  787cee: 0f 84 d6 00 00 00            	je	0x787dca <epoxy_handle_external_wglMakeCurrent+0x37bbca>
  787cf4: ff 36                        	push	dword ptr [esi]
  787cf6: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  787cfc: e8 0f 40 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787d01: 83 b8 14 01 00 00 00         	cmp	dword ptr [eax + 0x114], 0x0
  787d08: 0f 84 bc 00 00 00            	je	0x787dca <epoxy_handle_external_wglMakeCurrent+0x37bbca>
  787d0e: ff 36                        	push	dword ptr [esi]
  787d10: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  787d16: e8 f5 3f e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787d1b: 8b 80 14 01 00 00            	mov	eax, dword ptr [eax + 0x114]
  787d21: 83 38 00                     	cmp	dword ptr [eax], 0x0
  787d24: 0f 85 a0 00 00 00            	jne	0x787dca <epoxy_handle_external_wglMakeCurrent+0x37bbca>
  787d2a: ff 36                        	push	dword ptr [esi]
  787d2c: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  787d32: e8 d9 3f e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787d37: 8b 80 14 01 00 00            	mov	eax, dword ptr [eax + 0x114]
  787d3d: 83 78 04 5a                  	cmp	dword ptr [eax + 0x4], 0x5a
  787d41: 0f 85 83 00 00 00            	jne	0x787dca <epoxy_handle_external_wglMakeCurrent+0x37bbca>
  787d47: 33 c9                        	xor	ecx, ecx
  787d49: 89 8d c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], ecx
  787d4f: 8b cf                        	mov	ecx, edi
  787d51: e8 ea 52 ca ff               	call	0x42d040 <epoxy_handle_external_wglMakeCurrent+0x20e40>
  787d56: 85 c0                        	test	eax, eax
  787d58: 74 14                        	je	0x787d6e <epoxy_handle_external_wglMakeCurrent+0x37bb6e>
  787d5a: 8b cf                        	mov	ecx, edi
  787d5c: e8 df 52 ca ff               	call	0x42d040 <epoxy_handle_external_wglMakeCurrent+0x20e40>
  787d61: 8b c8                        	mov	ecx, eax
  787d63: e8 48 72 ef ff               	call	0x67efb0 <epoxy_handle_external_wglMakeCurrent+0x272db0>
  787d68: 89 85 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], eax
  787d6e: 8b cf                        	mov	ecx, edi
  787d70: e8 1b 77 03 00               	call	0x7bf490 <epoxy_handle_external_wglMakeCurrent+0x3b3290>
  787d75: ff 36                        	push	dword ptr [esi]
  787d77: 33 c9                        	xor	ecx, ecx
  787d79: 84 c0                        	test	al, al
  787d7b: 8b 85 c4 fe ff ff            	mov	eax, dword ptr [ebp - 0x13c]
  787d81: 0f 45 c1                     	cmovne	eax, ecx
  787d84: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  787d8a: 89 85 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], eax
  787d90: e8 7b 3f e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787d95: 66 0f 6e 85 c4 fe ff ff      	movd	xmm0, dword ptr [ebp - 0x13c]
  787d9d: 8b c8                        	mov	ecx, eax
  787d9f: ff 76 04                     	push	dword ptr [esi + 0x4]
  787da2: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  787da5: f3 0f 59 05 c4 a9 ba 00      	mulss	xmm0, dword ptr [0xbaa9c4]
  787dad: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  787db5: e8 46 34 c8 ff               	call	0x40b200 <.text+0xa200>
  787dba: f3 0f 10 85 cc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x134]
  787dc2: f3 0f 11 80 94 00 00 00      	movss	dword ptr [eax + 0x94], xmm0
  787dca: 8b 85 b0 fe ff ff            	mov	eax, dword ptr [ebp - 0x150]
  787dd0: 40                           	inc	eax
  787dd1: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  787dd7: 83 f8 0f                     	cmp	eax, 0xf
  787dda: 0f 82 b0 fd ff ff            	jb	0x787b90 <epoxy_handle_external_wglMakeCurrent+0x37b990>
  787de0: 6a 00                        	push	0x0
  787de2: 68 00 40 00 00               	push	0x4000
  787de7: 8b cf                        	mov	ecx, edi
  787de9: e8 42 f6 c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  787dee: 84 c0                        	test	al, al
  787df0: 0f 85 c6 01 00 00            	jne	0x787fbc <epoxy_handle_external_wglMakeCurrent+0x37bdbc>
  787df6: 8d 85 c4 fe ff ff            	lea	eax, [ebp - 0x13c]
  787dfc: 50                           	push	eax
  787dfd: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  787e03: e8 68 49 ca ff               	call	0x42c770 <epoxy_handle_external_wglMakeCurrent+0x20570>
  787e08: 8d 85 b8 fe ff ff            	lea	eax, [ebp - 0x148]
  787e0e: 50                           	push	eax
  787e0f: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  787e15: e8 86 e3 cc ff               	call	0x4561a0 <epoxy_handle_external_wglMakeCurrent+0x49fa0>
  787e1a: 50                           	push	eax
  787e1b: 8d 8d c4 fe ff ff            	lea	ecx, [ebp - 0x13c]
  787e21: e8 ea 48 ca ff               	call	0x42c710 <epoxy_handle_external_wglMakeCurrent+0x20510>
  787e26: 84 c0                        	test	al, al
  787e28: 0f 84 8e 01 00 00            	je	0x787fbc <epoxy_handle_external_wglMakeCurrent+0x37bdbc>
  787e2e: 8d b7 20 12 00 00            	lea	esi, [edi + 0x1220]
  787e34: 89 b5 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], esi
  787e3a: 66 0f 1f 44 00 00            	nop	word ptr [eax + eax]
  787e40: 8d 8d c4 fe ff ff            	lea	ecx, [ebp - 0x13c]
  787e46: e8 e5 3b e4 ff               	call	0x5cba30 <epoxy_handle_external_wglMakeCurrent+0x1bf830>
  787e4b: 8b ce                        	mov	ecx, esi
  787e4d: ff 30                        	push	dword ptr [eax]
  787e4f: e8 bc 3e e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  787e54: 8b f0                        	mov	esi, eax
  787e56: 6a 08                        	push	0x8
  787e58: 8b ce                        	mov	ecx, esi
  787e5a: 89 b5 cc fe ff ff            	mov	dword ptr [ebp - 0x134], esi
  787e60: e8 fb 55 e4 ff               	call	0x5cd460 <epoxy_handle_external_wglMakeCurrent+0x1c1260>
  787e65: 8b ce                        	mov	ecx, esi
  787e67: e8 94 12 c8 ff               	call	0x409100 <.text+0x8100>
  787e6c: 8b ce                        	mov	ecx, esi
  787e6e: e8 fd 65 c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  787e73: 8b c8                        	mov	ecx, eax
  787e75: e8 26 f5 c7 ff               	call	0x4073a0 <.text+0x63a0>
  787e7a: 84 c0                        	test	al, al
  787e7c: 75 46                        	jne	0x787ec4 <epoxy_handle_external_wglMakeCurrent+0x37bcc4>
  787e7e: 8b ce                        	mov	ecx, esi
  787e80: e8 eb 65 c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  787e85: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  787e88: 51                           	push	ecx
  787e89: 8b c8                        	mov	ecx, eax
  787e8b: e8 60 ad cc ff               	call	0x452bf0 <epoxy_handle_external_wglMakeCurrent+0x469f0>
  787e90: c6 45 fc 08                  	mov	byte ptr [ebp - 0x4], 0x8
  787e94: 8b 8d a8 fe ff ff            	mov	ecx, dword ptr [ebp - 0x158]
  787e9a: 83 c9 01                     	or	ecx, 0x1
  787e9d: 68 40 ab b6 00               	push	0xb6ab40
  787ea2: 6a 07                        	push	0x7
  787ea4: 89 8d a8 fe ff ff            	mov	dword ptr [ebp - 0x158], ecx
  787eaa: 89 8d b0 fe ff ff            	mov	dword ptr [ebp - 0x150], ecx
  787eb0: 8b c8                        	mov	ecx, eax
  787eb2: 6a 00                        	push	0x0
  787eb4: e8 17 29 f5 ff               	call	0x6da7d0 <epoxy_handle_external_wglMakeCurrent+0x2ce5d0>
  787eb9: c6 85 df fe ff ff 01         	mov	byte ptr [ebp - 0x121], 0x1
  787ec0: 85 c0                        	test	eax, eax
  787ec2: 74 07                        	je	0x787ecb <epoxy_handle_external_wglMakeCurrent+0x37bccb>
  787ec4: c6 85 df fe ff ff 00         	mov	byte ptr [ebp - 0x121], 0x0
  787ecb: c7 45 fc 07 00 00 00         	mov	dword ptr [ebp - 0x4], 0x7
  787ed2: 8b 85 a8 fe ff ff            	mov	eax, dword ptr [ebp - 0x158]
  787ed8: a8 01                        	test	al, 0x1
  787eda: 74 11                        	je	0x787eed <epoxy_handle_external_wglMakeCurrent+0x37bced>
  787edc: 83 e0 fe                     	and	eax, -0x2
  787edf: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  787ee2: 89 85 a8 fe ff ff            	mov	dword ptr [ebp - 0x158], eax
  787ee8: e8 33 40 c8 ff               	call	0x40bf20 <.text+0xaf20>
  787eed: 80 bd df fe ff ff 00         	cmp	byte ptr [ebp - 0x121], 0x0
  787ef4: 0f 84 7c 00 00 00            	je	0x787f76 <epoxy_handle_external_wglMakeCurrent+0x37bd76>
  787efa: 8b ce                        	mov	ecx, esi
  787efc: e8 6f 65 c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  787f01: 8b c8                        	mov	ecx, eax
  787f03: e8 b8 f4 c7 ff               	call	0x4073c0 <.text+0x63c0>
  787f08: 85 c0                        	test	eax, eax
  787f0a: 0f 84 66 00 00 00            	je	0x787f76 <epoxy_handle_external_wglMakeCurrent+0x37bd76>
  787f10: 8b bd cc fe ff ff            	mov	edi, dword ptr [ebp - 0x134]
  787f16: 33 f6                        	xor	esi, esi
  787f18: 8b cf                        	mov	ecx, edi
  787f1a: e8 21 8f cb ff               	call	0x440e40 <epoxy_handle_external_wglMakeCurrent+0x34c40>
  787f1f: 85 c0                        	test	eax, eax
  787f21: 74 53                        	je	0x787f76 <epoxy_handle_external_wglMakeCurrent+0x37bd76>
  787f23: 8b cf                        	mov	ecx, edi
  787f25: e8 46 65 c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  787f2a: 56                           	push	esi
  787f2b: 8b c8                        	mov	ecx, eax
  787f2d: e8 ee 22 c8 ff               	call	0x40a220 <.text+0x9220>
  787f32: 89 85 cc fe ff ff            	mov	dword ptr [ebp - 0x134], eax
  787f38: 85 c0                        	test	eax, eax
  787f3a: 74 2e                        	je	0x787f6a <epoxy_handle_external_wglMakeCurrent+0x37bd6a>
  787f3c: 50                           	push	eax
  787f3d: 56                           	push	esi
  787f3e: 8b cf                        	mov	ecx, edi
  787f40: e8 bb 32 c8 ff               	call	0x40b200 <.text+0xa200>
  787f45: 8d 88 90 00 00 00            	lea	ecx, [eax + 0x90]
  787f4b: e8 60 54 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  787f50: 8b 85 cc fe ff ff            	mov	eax, dword ptr [ebp - 0x134]
  787f56: 8b cf                        	mov	ecx, edi
  787f58: 83 c0 18                     	add	eax, 0x18
  787f5b: 50                           	push	eax
  787f5c: 56                           	push	esi
  787f5d: e8 9e 32 c8 ff               	call	0x40b200 <.text+0xa200>
  787f62: 8d 48 34                     	lea	ecx, [eax + 0x34]
  787f65: e8 06 86 28 00               	call	0xa10570 <epoxy_handle_external_wglMakeCurrent+0x604370>
  787f6a: 8b cf                        	mov	ecx, edi
  787f6c: 46                           	inc	esi
  787f6d: e8 ce 8e cb ff               	call	0x440e40 <epoxy_handle_external_wglMakeCurrent+0x34c40>
  787f72: 3b f0                        	cmp	esi, eax
  787f74: 72 ad                        	jb	0x787f23 <epoxy_handle_external_wglMakeCurrent+0x37bd23>
  787f76: 6a 00                        	push	0x0
  787f78: 8d 85 d4 fe ff ff            	lea	eax, [ebp - 0x12c]
  787f7e: 50                           	push	eax
  787f7f: 8d 8d c4 fe ff ff            	lea	ecx, [ebp - 0x13c]
  787f85: e8 66 99 ec ff               	call	0x6518f0 <epoxy_handle_external_wglMakeCurrent+0x2456f0>
  787f8a: 8d 85 b8 fe ff ff            	lea	eax, [ebp - 0x148]
  787f90: 50                           	push	eax
  787f91: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  787f97: e8 04 e2 cc ff               	call	0x4561a0 <epoxy_handle_external_wglMakeCurrent+0x49fa0>
  787f9c: 50                           	push	eax
  787f9d: 8d 8d c4 fe ff ff            	lea	ecx, [ebp - 0x13c]
  787fa3: e8 68 47 ca ff               	call	0x42c710 <epoxy_handle_external_wglMakeCurrent+0x20510>
  787fa8: 8b b5 a4 fe ff ff            	mov	esi, dword ptr [ebp - 0x15c]
  787fae: 84 c0                        	test	al, al
  787fb0: 0f 85 8a fe ff ff            	jne	0x787e40 <epoxy_handle_external_wglMakeCurrent+0x37bc40>
  787fb6: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  787fbc: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  787fc2: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  787fc9: e8 52 c4 c9 ff               	call	0x424420 <epoxy_handle_external_wglMakeCurrent+0x18220>
  787fce: 8a 87 73 01 00 00            	mov	al, byte ptr [edi + 0x173]
  787fd4: 84 c0                        	test	al, al
  787fd6: 0f 85 13 15 00 00            	jne	0x7894ef <epoxy_handle_external_wglMakeCurrent+0x37d2ef>
  787fdc: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  787fe0: 0f 85 63 07 00 00            	jne	0x788749 <epoxy_handle_external_wglMakeCurrent+0x37c549>
  787fe6: 38 87 a9 20 00 00            	cmp	byte ptr [edi + 0x20a9], al
  787fec: 0f 85 57 07 00 00            	jne	0x788749 <epoxy_handle_external_wglMakeCurrent+0x37c549>
  787ff2: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  787ff8: 68 1a 01 00 00               	push	0x11a
  787ffd: e8 7e 89 1a 00               	call	0x930980 <epoxy_handle_external_wglMakeCurrent+0x524780>
  788002: 8b f0                        	mov	esi, eax
  788004: 85 f6                        	test	esi, esi
  788006: 0f 84 60 01 00 00            	je	0x78816c <epoxy_handle_external_wglMakeCurrent+0x37bf6c>
  78800c: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  788012: e8 e9 49 ca ff               	call	0x42ca00 <epoxy_handle_external_wglMakeCurrent+0x20800>
  788017: 68 1a 01 00 00               	push	0x11a
  78801c: 8b c8                        	mov	ecx, eax
  78801e: e8 ed 7c fa ff               	call	0x72fd10 <epoxy_handle_external_wglMakeCurrent+0x323b10>
  788023: 6a 00                        	push	0x0
  788025: 0f 57 c0                     	xorps	xmm0, xmm0
  788028: 8b cf                        	mov	ecx, edi
  78802a: 68 00 40 00 00               	push	0x4000
  78802f: 8b 40 78                     	mov	eax, dword ptr [eax + 0x78]
  788032: 89 85 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], eax
  788038: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  788040: e8 eb f3 c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  788045: 84 c0                        	test	al, al
  788047: 74 0a                        	je	0x788053 <epoxy_handle_external_wglMakeCurrent+0x37be53>
  788049: f3 0f 10 05 d0 a2 ba 00      	movss	xmm0, dword ptr [0xbaa2d0]
  788051: eb 08                        	jmp	0x78805b <epoxy_handle_external_wglMakeCurrent+0x37be5b>
  788053: f3 0f 10 85 cc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x134]
  78805b: 66 0f 6e 4e 08               	movd	xmm1, dword ptr [esi + 0x8]
  788060: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  788066: 0f 5b c9                     	cvtdq2ps	xmm1, xmm1
  788069: 50                           	push	eax
  78806a: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  78806d: 8d 8f 34 03 00 00            	lea	ecx, [edi + 0x334]
  788073: 50                           	push	eax
  788074: f3 0f 5c c8                  	subss	xmm1, xmm0
  788078: 66 0f 6e 85 a4 fe ff ff      	movd	xmm0, dword ptr [ebp - 0x15c]
  788080: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  788083: f3 0f 5c 0d 54 a4 ba 00      	subss	xmm1, dword ptr [0xbaa454]
  78808b: f3 0f 5c 05 30 a6 ba 00      	subss	xmm0, dword ptr [0xbaa630]
  788093: f3 0f 5e c8                  	divss	xmm1, xmm0
  788097: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  78809f: f3 0f 5c c1                  	subss	xmm0, xmm1
  7880a3: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  7880ab: e8 d0 83 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  7880b0: 8d 8d b8 fe ff ff            	lea	ecx, [ebp - 0x148]
  7880b6: 51                           	push	ecx
  7880b7: 8d 8d 6c fe ff ff            	lea	ecx, [ebp - 0x194]
  7880bd: 51                           	push	ecx
  7880be: 8b c8                        	mov	ecx, eax
  7880c0: e8 1b 84 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  7880c5: 8d 8d b8 fe ff ff            	lea	ecx, [ebp - 0x148]
  7880cb: 51                           	push	ecx
  7880cc: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  7880d2: 51                           	push	ecx
  7880d3: 8b c8                        	mov	ecx, eax
  7880d5: e8 06 84 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  7880da: 50                           	push	eax
  7880db: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  7880e1: e8 6a 83 28 00               	call	0xa10450 <epoxy_handle_external_wglMakeCurrent+0x604250>
  7880e6: 68 40 b6 c7 00               	push	0xc7b640
  7880eb: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  7880f1: e8 ba 52 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  7880f6: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7880fc: e8 7f 96 c9 ff               	call	0x421780 <epoxy_handle_external_wglMakeCurrent+0x15580>
  788101: 8b c8                        	mov	ecx, eax
  788103: e8 e8 f5 c8 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  788108: 83 f8 21                     	cmp	eax, 0x21
  78810b: 75 5f                        	jne	0x78816c <epoxy_handle_external_wglMakeCurrent+0x37bf6c>
  78810d: 83 7e 08 01                  	cmp	dword ptr [esi + 0x8], 0x1
  788111: 75 59                        	jne	0x78816c <epoxy_handle_external_wglMakeCurrent+0x37bf6c>
  788113: e8 48 6e f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  788118: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78811e: 50                           	push	eax
  78811f: 6a 00                        	push	0x0
  788121: 57                           	push	edi
  788122: 68 40 b6 c7 00               	push	0xc7b640
  788127: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  78812d: 50                           	push	eax
  78812e: 6a 3d                        	push	0x3d
  788130: 68 e8 03 00 00               	push	0x3e8
  788135: e8 e6 09 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  78813a: 8b f0                        	mov	esi, eax
  78813c: 57                           	push	edi
  78813d: 8b ce                        	mov	ecx, esi
  78813f: e8 5c 11 f2 ff               	call	0x6a92a0 <epoxy_handle_external_wglMakeCurrent+0x29d0a0>
  788144: f3 0f 10 87 70 03 00 00      	movss	xmm0, dword ptr [edi + 0x370]
  78814c: 83 ec 08                     	sub	esp, 0x8
  78814f: 8b ce                        	mov	ecx, esi
  788151: c7 44 24 04 00 00 b4 42      	mov	dword ptr [esp + 0x4], 0x42b40000
  788159: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  78815e: e8 8d dd ca ff               	call	0x435ef0 <epoxy_handle_external_wglMakeCurrent+0x29cf0>
  788163: 6a 0a                        	push	0xa
  788165: 8b ce                        	mov	ecx, esi
  788167: e8 24 dd ca ff               	call	0x435e90 <epoxy_handle_external_wglMakeCurrent+0x29c90>
  78816c: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  788172: 68 46 01 00 00               	push	0x146
  788177: 8b ce                        	mov	ecx, esi
  788179: e8 72 84 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  78817e: 6a 00                        	push	0x0
  788180: 6a 3b                        	push	0x3b
  788182: 8b cf                        	mov	ecx, edi
  788184: 88 85 df fe ff ff            	mov	byte ptr [ebp - 0x121], al
  78818a: e8 51 85 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  78818f: 84 c0                        	test	al, al
  788191: 0f 84 30 05 00 00            	je	0x7886c7 <epoxy_handle_external_wglMakeCurrent+0x37c4c7>
  788197: 68 1a 01 00 00               	push	0x11a
  78819c: 8b ce                        	mov	ecx, esi
  78819e: e8 4d 84 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  7881a3: 84 c0                        	test	al, al
  7881a5: 75 0c                        	jne	0x7881b3 <epoxy_handle_external_wglMakeCurrent+0x37bfb3>
  7881a7: 38 85 df fe ff ff            	cmp	byte ptr [ebp - 0x121], al
  7881ad: 0f 84 14 05 00 00            	je	0x7886c7 <epoxy_handle_external_wglMakeCurrent+0x37c4c7>
  7881b3: f3 0f 10 0d 5c a7 ba 00      	movss	xmm1, dword ptr [0xbaa75c]
  7881bb: 0f 57 d2                     	xorps	xmm2, xmm2
  7881be: 8b cf                        	mov	ecx, edi
  7881c0: e8 9b 45 f2 ff               	call	0x6ac760 <epoxy_handle_external_wglMakeCurrent+0x2a0560>
  7881c5: 85 c0                        	test	eax, eax
  7881c7: 0f 84 72 00 00 00            	je	0x78823f <epoxy_handle_external_wglMakeCurrent+0x37c03f>
  7881cd: 8b 07                        	mov	eax, dword ptr [edi]
  7881cf: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  7881d5: f3 0f 10 1d a4 a3 ba 00      	movss	xmm3, dword ptr [0xbaa3a4]
  7881dd: 83 ec 20                     	sub	esp, 0x20
  7881e0: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  7881e8: 0f 28 d3                     	movaps	xmm2, xmm3
  7881eb: 8b 70 3c                     	mov	esi, dword ptr [eax + 0x3c]
  7881ee: c7 44 24 1c 00 00 00 00      	mov	dword ptr [esp + 0x1c], 0x0
  7881f6: c7 44 24 18 cd cc cc 3e      	mov	dword ptr [esp + 0x18], 0x3ecccccd
  7881fe: c7 44 24 14 cd cc 4c 3f      	mov	dword ptr [esp + 0x14], 0x3f4ccccd
  788206: c7 44 24 10 00 00 00 00      	mov	dword ptr [esp + 0x10], 0x0
  78820e: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  788216: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  78821e: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  788226: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78822d: e8 1e d9 ca ff               	call	0x435b50 <epoxy_handle_external_wglMakeCurrent+0x29950>
  788232: 6a 01                        	push	0x1
  788234: 6a 01                        	push	0x1
  788236: 6a 01                        	push	0x1
  788238: 6a 04                        	push	0x4
  78823a: 50                           	push	eax
  78823b: 8b cf                        	mov	ecx, edi
  78823d: ff d6                        	call	esi
  78823f: f3 0f 10 0d 30 a6 ba 00      	movss	xmm1, dword ptr [0xbaa630]
  788247: 0f 57 d2                     	xorps	xmm2, xmm2
  78824a: 8b cf                        	mov	ecx, edi
  78824c: e8 0f 45 f2 ff               	call	0x6ac760 <epoxy_handle_external_wglMakeCurrent+0x2a0560>
  788251: 85 c0                        	test	eax, eax
  788253: 0f 84 6d 02 00 00            	je	0x7884c6 <epoxy_handle_external_wglMakeCurrent+0x37c2c6>
  788259: 8d 87 4c 03 00 00            	lea	eax, [edi + 0x34c]
  78825f: 50                           	push	eax
  788260: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  788266: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  78826c: 50                           	push	eax
  78826d: e8 ae 81 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  788272: 68 94 b0 b6 00               	push	0xb6b094
  788277: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78827a: e8 b1 31 c8 ff               	call	0x40b430 <.text+0xa430>
  78827f: 89 85 cc fe ff ff            	mov	dword ptr [ebp - 0x134], eax
  788285: 85 c0                        	test	eax, eax
  788287: 0f 84 74 00 00 00            	je	0x788301 <epoxy_handle_external_wglMakeCurrent+0x37c101>
  78828d: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  788290: e8 cb 61 c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  788295: 8b 8d cc fe ff ff            	mov	ecx, dword ptr [ebp - 0x134]
  78829b: 8b f0                        	mov	esi, eax
  78829d: e8 3e a9 cc ff               	call	0x452be0 <epoxy_handle_external_wglMakeCurrent+0x469e0>
  7882a2: 50                           	push	eax
  7882a3: 8b ce                        	mov	ecx, esi
  7882a5: e8 76 1f c8 ff               	call	0x40a220 <.text+0x9220>
  7882aa: 85 c0                        	test	eax, eax
  7882ac: 74 53                        	je	0x788301 <epoxy_handle_external_wglMakeCurrent+0x37c101>
  7882ae: 8d 50 10                     	lea	edx, [eax + 0x10]
  7882b1: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  7882b4: e8 27 70 ef ff               	call	0x67f2e0 <epoxy_handle_external_wglMakeCurrent+0x2730e0>
  7882b9: f3 0f 10 15 c0 ad ba 00      	movss	xmm2, dword ptr [0xbaadc0]
  7882c1: 8d 8d 6c fe ff ff            	lea	ecx, [ebp - 0x194]
  7882c7: 0f 57 c9                     	xorps	xmm1, xmm1
  7882ca: 8b f0                        	mov	esi, eax
  7882cc: e8 bf 7b 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  7882d1: 50                           	push	eax
  7882d2: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  7882d8: 8b ce                        	mov	ecx, esi
  7882da: 50                           	push	eax
  7882db: e8 40 81 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  7882e0: 8d 8f f0 14 00 00            	lea	ecx, [edi + 0x14f0]
  7882e6: 51                           	push	ecx
  7882e7: 8d 8d 88 fe ff ff            	lea	ecx, [ebp - 0x178]
  7882ed: 51                           	push	ecx
  7882ee: 8b c8                        	mov	ecx, eax
  7882f0: e8 1b 82 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  7882f5: 50                           	push	eax
  7882f6: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  7882fc: e8 4f 81 28 00               	call	0xa10450 <epoxy_handle_external_wglMakeCurrent+0x604250>
  788301: e8 5a 6c f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  788306: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  78830c: 8b f8                        	mov	edi, eax
  78830e: 8d 85 cc fe ff ff            	lea	eax, [ebp - 0x134]
  788314: c7 85 cc fe ff ff cd cc cc 3d	mov	dword ptr [ebp - 0x134], 0x3dcccccd
  78831e: 50                           	push	eax
  78831f: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  788322: 8d 89 60 03 00 00            	lea	ecx, [ecx + 0x360]
  788328: 50                           	push	eax
  788329: e8 b2 81 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  78832e: 8b f0                        	mov	esi, eax
  788330: e8 ab 6c ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  788335: f3 0f 59 05 a4 a7 ba 00      	mulss	xmm0, dword ptr [0xbaa7a4]
  78833d: 8d 8d 6c fe ff ff            	lea	ecx, [ebp - 0x194]
  788343: f3 0f 10 15 74 ad ba 00      	movss	xmm2, dword ptr [0xbaad74]
  78834b: 0f 57 c9                     	xorps	xmm1, xmm1
  78834e: f3 0f 5c d0                  	subss	xmm2, xmm0
  788352: e8 39 7b 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  788357: 50                           	push	eax
  788358: 8d 85 80 fe ff ff            	lea	eax, [ebp - 0x180]
  78835e: 8b ce                        	mov	ecx, esi
  788360: 50                           	push	eax
  788361: e8 ba 80 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  788366: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78836c: 57                           	push	edi
  78836d: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  788373: 6a 00                        	push	0x0
  788375: 57                           	push	edi
  788376: 50                           	push	eax
  788377: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  78837d: 50                           	push	eax
  78837e: 6a 3b                        	push	0x3b
  788380: 68 e8 03 00 00               	push	0x3e8
  788385: e8 96 07 ca ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  78838a: 6a 00                        	push	0x0
  78838c: 8b f0                        	mov	esi, eax
  78838e: 8d 4d b0                     	lea	ecx, [ebp - 0x50]
  788391: 6a 02                        	push	0x2
  788393: 89 b5 a4 fe ff ff            	mov	dword ptr [ebp - 0x15c], esi
  788399: e8 32 91 28 00               	call	0xa114d0 <epoxy_handle_external_wglMakeCurrent+0x6052d0>
  78839e: 8b ce                        	mov	ecx, esi
  7883a0: e8 2b da ca ff               	call	0x435dd0 <epoxy_handle_external_wglMakeCurrent+0x29bd0>
  7883a5: 8d 4d b0                     	lea	ecx, [ebp - 0x50]
  7883a8: 51                           	push	ecx
  7883a9: 6a 00                        	push	0x0
  7883ab: 8b c8                        	mov	ecx, eax
  7883ad: e8 4e 2e c8 ff               	call	0x40b200 <.text+0xa200>
  7883b2: 8d 48 78                     	lea	ecx, [eax + 0x78]
  7883b5: e8 06 92 28 00               	call	0xa115c0 <epoxy_handle_external_wglMakeCurrent+0x6053c0>
  7883ba: 83 bf 94 18 00 00 06         	cmp	dword ptr [edi + 0x1894], 0x6
  7883c1: f3 0f 10 0d 84 a7 ba 00      	movss	xmm1, dword ptr [0xbaa784]
  7883c9: 51                           	push	ecx
  7883ca: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7883d1: 75 18                        	jne	0x7883eb <epoxy_handle_external_wglMakeCurrent+0x37c1eb>
  7883d3: f3 0f 10 1d ac a1 ba 00      	movss	xmm3, dword ptr [0xbaa1ac]
  7883db: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  7883e1: f3 0f 10 15 98 a1 ba 00      	movss	xmm2, dword ptr [0xbaa198]
  7883e9: eb 16                        	jmp	0x788401 <epoxy_handle_external_wglMakeCurrent+0x37c201>
  7883eb: f3 0f 10 1d 98 a1 ba 00      	movss	xmm3, dword ptr [0xbaa198]
  7883f3: 8d 8d e8 fe ff ff            	lea	ecx, [ebp - 0x118]
  7883f9: f3 0f 10 15 d0 a2 ba 00      	movss	xmm2, dword ptr [0xbaa2d0]
  788401: e8 ea b4 c9 ff               	call	0x4238f0 <epoxy_handle_external_wglMakeCurrent+0x176f0>
  788406: 8b ce                        	mov	ecx, esi
  788408: 89 85 b8 fe ff ff            	mov	dword ptr [ebp - 0x148], eax
  78840e: e8 bd d9 ca ff               	call	0x435dd0 <epoxy_handle_external_wglMakeCurrent+0x29bd0>
  788413: ff b5 b8 fe ff ff            	push	dword ptr [ebp - 0x148]
  788419: 8b c8                        	mov	ecx, eax
  78841b: 6a 00                        	push	0x0
  78841d: e8 de 2d c8 ff               	call	0x40b200 <.text+0xa200>
  788422: 8d 48 48                     	lea	ecx, [eax + 0x48]
  788425: e8 c6 ed c7 ff               	call	0x4071f0 <.text+0x61f0>
  78842a: e8 b1 6b ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  78842f: f3 0f 59 05 1c a8 ba 00      	mulss	xmm0, dword ptr [0xbaa81c]
  788437: 51                           	push	ecx
  788438: 8b ce                        	mov	ecx, esi
  78843a: f3 0f 58 05 30 a6 ba 00      	addss	xmm0, dword ptr [0xbaa630]
  788442: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  788447: e8 64 da ca ff               	call	0x435eb0 <epoxy_handle_external_wglMakeCurrent+0x29cb0>
  78844c: b9 0a 00 00 00               	mov	ecx, 0xa
  788451: e8 ba 6b ef ff               	call	0x67f010 <epoxy_handle_external_wglMakeCurrent+0x272e10>
  788456: 83 c0 0a                     	add	eax, 0xa
  788459: 8b ce                        	mov	ecx, esi
  78845b: 50                           	push	eax
  78845c: e8 2f da ca ff               	call	0x435e90 <epoxy_handle_external_wglMakeCurrent+0x29c90>
  788461: e8 7a 6b ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  788466: f3 0f 59 05 f8 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa1f8]
  78846e: 8d 85 b8 fe ff ff            	lea	eax, [ebp - 0x148]
  788474: 50                           	push	eax
  788475: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  78847b: 50                           	push	eax
  78847c: f3 0f 58 05 80 a2 ba 00      	addss	xmm0, dword ptr [0xbaa280]
  788484: 8d 8f f0 14 00 00            	lea	ecx, [edi + 0x14f0]
  78848a: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  788492: e8 49 80 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  788497: 68 3c 79 c3 00               	push	0xc3793c
  78849c: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  7884a2: 51                           	push	ecx
  7884a3: 8b c8                        	mov	ecx, eax
  7884a5: e8 66 80 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  7884aa: 8b 8d a4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x15c]
  7884b0: 50                           	push	eax
  7884b1: e8 fa 54 ca ff               	call	0x42d9b0 <epoxy_handle_external_wglMakeCurrent+0x217b0>
  7884b6: 8b 8d a4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x15c]
  7884bc: 68 30 f8 ff ff               	push	0xfffff830
  7884c1: e8 ca 89 cb ff               	call	0x440e90 <epoxy_handle_external_wglMakeCurrent+0x34c90>
  7884c6: f3 0f 10 0d 30 a6 ba 00      	movss	xmm1, dword ptr [0xbaa630]
  7884ce: 0f 57 d2                     	xorps	xmm2, xmm2
  7884d1: 8b cf                        	mov	ecx, edi
  7884d3: e8 88 42 f2 ff               	call	0x6ac760 <epoxy_handle_external_wglMakeCurrent+0x2a0560>
  7884d8: 85 c0                        	test	eax, eax
  7884da: 0f 84 e1 01 00 00            	je	0x7886c1 <epoxy_handle_external_wglMakeCurrent+0x37c4c1>
  7884e0: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7884e6: e8 45 c0 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  7884eb: 8b c8                        	mov	ecx, eax
  7884ed: e8 fe db ca ff               	call	0x4360f0 <epoxy_handle_external_wglMakeCurrent+0x29ef0>
  7884f2: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7884f8: 66 0f 6e c0                  	movd	xmm0, eax
  7884fc: 0f 5b c0                     	cvtdq2ps	xmm0, xmm0
  7884ff: f3 0f 59 05 98 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa198]
  788507: f3 0f 58 05 30 a6 ba 00      	addss	xmm0, dword ptr [0xbaa630]
  78850f: f3 0f 11 85 b8 fe ff ff      	movss	dword ptr [ebp - 0x148], xmm0
  788517: f3 0f 10 87 70 03 00 00      	movss	xmm0, dword ptr [edi + 0x370]
  78851f: f3 0f 58 05 04 a9 ba 00      	addss	xmm0, dword ptr [0xbaa904]
  788527: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  78852f: e8 4c ef c7 ff               	call	0x407480 <.text+0x6480>
  788534: 8b c8                        	mov	ecx, eax
  788536: e8 25 05 ca ff               	call	0x428a60 <epoxy_handle_external_wglMakeCurrent+0x1c860>
  78853b: f3 0f 10 9d cc fe ff ff      	movss	xmm3, dword ptr [ebp - 0x134]
  788543: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  788549: 6a 0a                        	push	0xa
  78854b: 51                           	push	ecx
  78854c: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  78854f: 51                           	push	ecx
  788550: 8b c8                        	mov	ecx, eax
  788552: e8 39 22 c9 ff               	call	0x41a790 <epoxy_handle_external_wglMakeCurrent+0xe590>
  788557: c7 45 fc 09 00 00 00         	mov	dword ptr [ebp - 0x4], 0x9
  78855e: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  788561: 33 f6                        	xor	esi, esi
  788563: 89 b5 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], esi
  788569: e8 82 f1 c8 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  78856e: 85 c0                        	test	eax, eax
  788570: 0f 84 3c 01 00 00            	je	0x7886b2 <epoxy_handle_external_wglMakeCurrent+0x37c4b2>
  788576: 56                           	push	esi
  788577: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  78857a: e8 a1 f0 c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  78857f: 6a 00                        	push	0x0
  788581: 8b 08                        	mov	ecx, dword ptr [eax]
  788583: e8 d8 3f f2 ff               	call	0x6ac560 <epoxy_handle_external_wglMakeCurrent+0x2a0360>
  788588: 84 c0                        	test	al, al
  78858a: 0f 84 ae 00 00 00            	je	0x78863e <epoxy_handle_external_wglMakeCurrent+0x37c43e>
  788590: 56                           	push	esi
  788591: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  788594: e8 87 f0 c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  788599: 39 38                        	cmp	dword ptr [eax], edi
  78859b: 0f 84 9d 00 00 00            	je	0x78863e <epoxy_handle_external_wglMakeCurrent+0x37c43e>
  7885a1: 56                           	push	esi
  7885a2: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  7885a5: e8 76 f0 c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  7885aa: 6a 00                        	push	0x0
  7885ac: 68 00 00 00 20               	push	0x20000000
  7885b1: 8b 08                        	mov	ecx, dword ptr [eax]
  7885b3: e8 78 ee c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  7885b8: 84 c0                        	test	al, al
  7885ba: 0f 85 7e 00 00 00            	jne	0x78863e <epoxy_handle_external_wglMakeCurrent+0x37c43e>
  7885c0: 56                           	push	esi
  7885c1: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  7885c4: e8 57 f0 c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  7885c9: ff b5 d0 fe ff ff            	push	dword ptr [ebp - 0x130]
  7885cf: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  7885d2: 8b 38                        	mov	edi, dword ptr [eax]
  7885d4: 8b 07                        	mov	eax, dword ptr [edi]
  7885d6: 8b 70 20                     	mov	esi, dword ptr [eax + 0x20]
  7885d9: e8 32 8d ca ff               	call	0x431310 <epoxy_handle_external_wglMakeCurrent+0x25110>
  7885de: f3 0f 10 85 b8 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x148]
  7885e6: 8d 45 9c                     	lea	eax, [ebp - 0x64]
  7885e9: 6a 1e                        	push	0x1e
  7885eb: 50                           	push	eax
  7885ec: 6a 00                        	push	0x0
  7885ee: 68 00 00 00 40               	push	0x40000000
  7885f3: 51                           	push	ecx
  7885f4: 8b cf                        	mov	ecx, edi
  7885f6: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  7885fb: ff d6                        	call	esi
  7885fd: ff b5 d4 fe ff ff            	push	dword ptr [ebp - 0x12c]
  788603: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  788606: e8 15 f0 c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  78860b: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  788611: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  788614: 57                           	push	edi
  788615: 8b 30                        	mov	esi, dword ptr [eax]
  788617: e8 f4 8c ca ff               	call	0x431310 <epoxy_handle_external_wglMakeCurrent+0x25110>
  78861c: 6a 00                        	push	0x0
  78861e: 51                           	push	ecx
  78861f: c7 04 24 00 00 00 00         	mov	dword ptr [esp], 0x0
  788626: 8d 45 9c                     	lea	eax, [ebp - 0x64]
  788629: 68 96 00 00 00               	push	0x96
  78862e: 50                           	push	eax
  78862f: 8b ce                        	mov	ecx, esi
  788631: e8 4a 5c f2 ff               	call	0x6ae280 <epoxy_handle_external_wglMakeCurrent+0x2a2080>
  788636: 8b b5 d4 fe ff ff            	mov	esi, dword ptr [ebp - 0x12c]
  78863c: eb 5d                        	jmp	0x78869b <epoxy_handle_external_wglMakeCurrent+0x37c49b>
  78863e: 56                           	push	esi
  78863f: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  788642: e8 d9 ef c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  788647: 8b 08                        	mov	ecx, dword ptr [eax]
  788649: e8 f2 8e ca ff               	call	0x431540 <epoxy_handle_external_wglMakeCurrent+0x25340>
  78864e: 84 c0                        	test	al, al
  788650: 74 49                        	je	0x78869b <epoxy_handle_external_wglMakeCurrent+0x37c49b>
  788652: 80 bd df fe ff ff 00         	cmp	byte ptr [ebp - 0x121], 0x0
  788659: 75 40                        	jne	0x78869b <epoxy_handle_external_wglMakeCurrent+0x37c49b>
  78865b: 56                           	push	esi
  78865c: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  78865f: e8 bc ef c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  788664: 8b 08                        	mov	ecx, dword ptr [eax]
  788666: e8 05 ee c8 ff               	call	0x417470 <epoxy_handle_external_wglMakeCurrent+0xb270>
  78866b: 84 c0                        	test	al, al
  78866d: 75 2c                        	jne	0x78869b <epoxy_handle_external_wglMakeCurrent+0x37c49b>
  78866f: 56                           	push	esi
  788670: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  788673: e8 a8 ef c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  788678: 8b 08                        	mov	ecx, dword ptr [eax]
  78867a: e8 b1 f1 c8 ff               	call	0x417830 <epoxy_handle_external_wglMakeCurrent+0xb630>
  78867f: 25 00 00 00 80               	and	eax, 0x80000000
  788684: 33 d2                        	xor	edx, edx
  788686: 0b c2                        	or	eax, edx
  788688: 75 11                        	jne	0x78869b <epoxy_handle_external_wglMakeCurrent+0x37c49b>
  78868a: 56                           	push	esi
  78868b: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  78868e: e8 8d ef c8 ff               	call	0x417620 <epoxy_handle_external_wglMakeCurrent+0xb420>
  788693: 57                           	push	edi
  788694: 8b 08                        	mov	ecx, dword ptr [eax]
  788696: e8 e5 a8 ec ff               	call	0x652f80 <epoxy_handle_external_wglMakeCurrent+0x246d80>
  78869b: 46                           	inc	esi
  78869c: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  78869f: 89 b5 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], esi
  7886a5: e8 46 f0 c8 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  7886aa: 3b f0                        	cmp	esi, eax
  7886ac: 0f 82 c4 fe ff ff            	jb	0x788576 <epoxy_handle_external_wglMakeCurrent+0x37c376>
  7886b2: 8d 4d e0                     	lea	ecx, [ebp - 0x20]
  7886b5: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  7886bc: e8 ef ee c8 ff               	call	0x4175b0 <epoxy_handle_external_wglMakeCurrent+0xb3b0>
  7886c1: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  7886c7: 68 c1 02 00 00               	push	0x2c1
  7886cc: 8b ce                        	mov	ecx, esi
  7886ce: e8 1d 7f 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  7886d3: 84 c0                        	test	al, al
  7886d5: 0f 84 6e 00 00 00            	je	0x788749 <epoxy_handle_external_wglMakeCurrent+0x37c549>
  7886db: 6a 00                        	push	0x0
  7886dd: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  7886e3: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  7886e8: 6a 04                        	push	0x4
  7886ea: e8 d1 82 29 00               	call	0xa209c0 <epoxy_handle_external_wglMakeCurrent+0x6147c0>
  7886ef: 84 c0                        	test	al, al
  7886f1: 75 48                        	jne	0x78873b <epoxy_handle_external_wglMakeCurrent+0x37c53b>
  7886f3: 6a 00                        	push	0x0
  7886f5: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  7886fb: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  788700: 6a 06                        	push	0x6
  788702: e8 b9 82 29 00               	call	0xa209c0 <epoxy_handle_external_wglMakeCurrent+0x6147c0>
  788707: 84 c0                        	test	al, al
  788709: 75 30                        	jne	0x78873b <epoxy_handle_external_wglMakeCurrent+0x37c53b>
  78870b: 6a 00                        	push	0x0
  78870d: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  788713: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  788718: 6a 05                        	push	0x5
  78871a: e8 a1 82 29 00               	call	0xa209c0 <epoxy_handle_external_wglMakeCurrent+0x6147c0>
  78871f: 84 c0                        	test	al, al
  788721: 75 18                        	jne	0x78873b <epoxy_handle_external_wglMakeCurrent+0x37c53b>
  788723: 6a 00                        	push	0x0
  788725: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  78872b: b9 18 7b c5 00               	mov	ecx, 0xc57b18
  788730: 6a 07                        	push	0x7
  788732: e8 89 82 29 00               	call	0xa209c0 <epoxy_handle_external_wglMakeCurrent+0x6147c0>
  788737: 84 c0                        	test	al, al
  788739: 74 0e                        	je	0x788749 <epoxy_handle_external_wglMakeCurrent+0x37c549>
  78873b: 6a ff                        	push	-0x1
  78873d: 68 c1 02 00 00               	push	0x2c1
  788742: 8b ce                        	mov	ecx, esi
  788744: e8 57 7d 1a 00               	call	0x9304a0 <epoxy_handle_external_wglMakeCurrent+0x5242a0>
  788749: 8b cf                        	mov	ecx, edi
  78874b: e8 70 6c 01 00               	call	0x79f3c0 <epoxy_handle_external_wglMakeCurrent+0x3931c0>
  788750: 8b 87 bc 13 00 00            	mov	eax, dword ptr [edi + 0x13bc]
  788756: 85 c0                        	test	eax, eax
  788758: 7e 07                        	jle	0x788761 <epoxy_handle_external_wglMakeCurrent+0x37c561>
  78875a: 48                           	dec	eax
  78875b: 89 87 bc 13 00 00            	mov	dword ptr [edi + 0x13bc], eax
  788761: 8b 87 14 04 00 00            	mov	eax, dword ptr [edi + 0x414]
  788767: 85 c0                        	test	eax, eax
  788769: 7e 07                        	jle	0x788772 <epoxy_handle_external_wglMakeCurrent+0x37c572>
  78876b: 48                           	dec	eax
  78876c: 89 87 14 04 00 00            	mov	dword ptr [edi + 0x414], eax
  788772: 8b 87 18 04 00 00            	mov	eax, dword ptr [edi + 0x418]
  788778: 85 c0                        	test	eax, eax
  78877a: 7e 07                        	jle	0x788783 <epoxy_handle_external_wglMakeCurrent+0x37c583>
  78877c: 48                           	dec	eax
  78877d: 89 87 18 04 00 00            	mov	dword ptr [edi + 0x418], eax
  788783: 8b 87 84 18 00 00            	mov	eax, dword ptr [edi + 0x1884]
  788789: 85 c0                        	test	eax, eax
  78878b: 7e 07                        	jle	0x788794 <epoxy_handle_external_wglMakeCurrent+0x37c594>
  78878d: 48                           	dec	eax
  78878e: 89 87 84 18 00 00            	mov	dword ptr [edi + 0x1884], eax
  788794: 6a 00                        	push	0x0
  788796: 68 00 40 00 00               	push	0x4000
  78879b: 8b cf                        	mov	ecx, edi
  78879d: e8 8e ec c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  7887a2: 84 c0                        	test	al, al
  7887a4: 0f 85 7e 00 00 00            	jne	0x788828 <epoxy_handle_external_wglMakeCurrent+0x37c628>
  7887aa: 8b 87 cc 2e 00 00            	mov	eax, dword ptr [edi + 0x2ecc]
  7887b0: 85 c0                        	test	eax, eax
  7887b2: 74 07                        	je	0x7887bb <epoxy_handle_external_wglMakeCurrent+0x37c5bb>
  7887b4: 48                           	dec	eax
  7887b5: 89 87 cc 2e 00 00            	mov	dword ptr [edi + 0x2ecc], eax
  7887bb: 0f b7 87 c8 2e 00 00         	movzx	eax, word ptr [edi + 0x2ec8]
  7887c2: 66 85 c0                     	test	ax, ax
  7887c5: 79 61                        	jns	0x788828 <epoxy_handle_external_wglMakeCurrent+0x37c628>
  7887c7: 40                           	inc	eax
  7887c8: 66 89 87 c8 2e 00 00         	mov	word ptr [edi + 0x2ec8], ax
  7887cf: 66 85 c0                     	test	ax, ax
  7887d2: 75 54                        	jne	0x788828 <epoxy_handle_external_wglMakeCurrent+0x37c628>
  7887d4: 68 97 01 00 00               	push	0x197
  7887d9: 8b cf                        	mov	ecx, edi
  7887db: e8 e0 8f e2 ff               	call	0x5b17c0 <epoxy_handle_external_wglMakeCurrent+0x1a55c0>
  7887e0: 6a 04                        	push	0x4
  7887e2: 8b c8                        	mov	ecx, eax
  7887e4: e8 37 08 06 00               	call	0x7e9020 <epoxy_handle_external_wglMakeCurrent+0x3dce20>
  7887e9: 6a 01                        	push	0x1
  7887eb: 6a 01                        	push	0x1
  7887ed: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  7887f3: 89 87 2c 19 00 00            	mov	dword ptr [edi + 0x192c], eax
  7887f9: 68 97 01 00 00               	push	0x197
  7887fe: e8 dd 7a 1a 00               	call	0x9302e0 <epoxy_handle_external_wglMakeCurrent+0x5240e0>
  788803: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  788809: e8 f2 41 ca ff               	call	0x42ca00 <epoxy_handle_external_wglMakeCurrent+0x20800>
  78880e: 6a 00                        	push	0x0
  788810: 6a 11                        	push	0x11
  788812: 8b c8                        	mov	ecx, eax
  788814: e8 87 75 fa ff               	call	0x72fda0 <epoxy_handle_external_wglMakeCurrent+0x323ba0>
  788819: 50                           	push	eax
  78881a: 8b cf                        	mov	ecx, edi
  78881c: e8 af 49 fd ff               	call	0x75d1d0 <epoxy_handle_external_wglMakeCurrent+0x350fd0>
  788821: 8b cf                        	mov	ecx, edi
  788823: e8 38 f4 03 00               	call	0x7c7c60 <epoxy_handle_external_wglMakeCurrent+0x3bba60>
  788828: 8b 87 e8 1a 00 00            	mov	eax, dword ptr [edi + 0x1ae8]
  78882e: 85 c0                        	test	eax, eax
  788830: 7e 07                        	jle	0x788839 <epoxy_handle_external_wglMakeCurrent+0x37c639>
  788832: 48                           	dec	eax
  788833: 89 87 e8 1a 00 00            	mov	dword ptr [edi + 0x1ae8], eax
  788839: 8b 87 c0 18 00 00            	mov	eax, dword ptr [edi + 0x18c0]
  78883f: 85 c0                        	test	eax, eax
  788841: 7e 19                        	jle	0x78885c <epoxy_handle_external_wglMakeCurrent+0x37c65c>
  788843: 83 c0 ff                     	add	eax, -0x1
  788846: 89 87 c0 18 00 00            	mov	dword ptr [edi + 0x18c0], eax
  78884c: 75 0e                        	jne	0x78885c <epoxy_handle_external_wglMakeCurrent+0x37c65c>
  78884e: 83 8f 74 15 00 00 01         	or	dword ptr [edi + 0x1574], 0x1
  788855: 8b cf                        	mov	ecx, edi
  788857: e8 14 ad fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  78885c: 8b 87 c4 18 00 00            	mov	eax, dword ptr [edi + 0x18c4]
  788862: 85 c0                        	test	eax, eax
  788864: 7e 19                        	jle	0x78887f <epoxy_handle_external_wglMakeCurrent+0x37c67f>
  788866: 83 c0 ff                     	add	eax, -0x1
  788869: 89 87 c4 18 00 00            	mov	dword ptr [edi + 0x18c4], eax
  78886f: 75 0e                        	jne	0x78887f <epoxy_handle_external_wglMakeCurrent+0x37c67f>
  788871: 83 8f 74 15 00 00 02         	or	dword ptr [edi + 0x1574], 0x2
  788878: 8b cf                        	mov	ecx, edi
  78887a: e8 f1 ac fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  78887f: 8b 87 c8 18 00 00            	mov	eax, dword ptr [edi + 0x18c8]
  788885: 85 c0                        	test	eax, eax
  788887: 7e 19                        	jle	0x7888a2 <epoxy_handle_external_wglMakeCurrent+0x37c6a2>
  788889: 83 c0 ff                     	add	eax, -0x1
  78888c: 89 87 c8 18 00 00            	mov	dword ptr [edi + 0x18c8], eax
  788892: 75 0e                        	jne	0x7888a2 <epoxy_handle_external_wglMakeCurrent+0x37c6a2>
  788894: 83 8f 74 15 00 00 10         	or	dword ptr [edi + 0x1574], 0x10
  78889b: 8b cf                        	mov	ecx, edi
  78889d: e8 ce ac fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  7888a2: 8b 87 cc 18 00 00            	mov	eax, dword ptr [edi + 0x18cc]
  7888a8: 85 c0                        	test	eax, eax
  7888aa: 7e 19                        	jle	0x7888c5 <epoxy_handle_external_wglMakeCurrent+0x37c6c5>
  7888ac: 83 c0 ff                     	add	eax, -0x1
  7888af: 89 87 cc 18 00 00            	mov	dword ptr [edi + 0x18cc], eax
  7888b5: 75 0e                        	jne	0x7888c5 <epoxy_handle_external_wglMakeCurrent+0x37c6c5>
  7888b7: 83 8f 74 15 00 00 0c         	or	dword ptr [edi + 0x1574], 0xc
  7888be: 8b cf                        	mov	ecx, edi
  7888c0: e8 ab ac fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  7888c5: 8b 87 d0 18 00 00            	mov	eax, dword ptr [edi + 0x18d0]
  7888cb: 85 c0                        	test	eax, eax
  7888cd: 7e 1c                        	jle	0x7888eb <epoxy_handle_external_wglMakeCurrent+0x37c6eb>
  7888cf: 83 c0 ff                     	add	eax, -0x1
  7888d2: 89 87 d0 18 00 00            	mov	dword ptr [edi + 0x18d0], eax
  7888d8: 75 11                        	jne	0x7888eb <epoxy_handle_external_wglMakeCurrent+0x37c6eb>
  7888da: 81 8f 74 15 00 00 00 04 00 00	or	dword ptr [edi + 0x1574], 0x400
  7888e4: 8b cf                        	mov	ecx, edi
  7888e6: e8 85 ac fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  7888eb: 8b 87 d4 18 00 00            	mov	eax, dword ptr [edi + 0x18d4]
  7888f1: 85 c0                        	test	eax, eax
  7888f3: 7e 1c                        	jle	0x788911 <epoxy_handle_external_wglMakeCurrent+0x37c711>
  7888f5: 83 c0 ff                     	add	eax, -0x1
  7888f8: 89 87 d4 18 00 00            	mov	dword ptr [edi + 0x18d4], eax
  7888fe: 75 11                        	jne	0x788911 <epoxy_handle_external_wglMakeCurrent+0x37c711>
  788900: 81 8f 74 15 00 00 00 08 00 00	or	dword ptr [edi + 0x1574], 0x800
  78890a: 8b cf                        	mov	ecx, edi
  78890c: e8 5f ac fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  788911: 8b 87 d8 18 00 00            	mov	eax, dword ptr [edi + 0x18d8]
  788917: 85 c0                        	test	eax, eax
  788919: 7e 1c                        	jle	0x788937 <epoxy_handle_external_wglMakeCurrent+0x37c737>
  78891b: 83 c0 ff                     	add	eax, -0x1
  78891e: 89 87 d8 18 00 00            	mov	dword ptr [edi + 0x18d8], eax
  788924: 75 11                        	jne	0x788937 <epoxy_handle_external_wglMakeCurrent+0x37c737>
  788926: 81 8f 74 15 00 00 00 08 00 00	or	dword ptr [edi + 0x1574], 0x800
  788930: 8b cf                        	mov	ecx, edi
  788932: e8 39 ac fd ff               	call	0x763570 <epoxy_handle_external_wglMakeCurrent+0x357370>
  788937: 8b 87 dc 18 00 00            	mov	eax, dword ptr [edi + 0x18dc]
  78893d: 85 c0                        	test	eax, eax
  78893f: 7e 07                        	jle	0x788948 <epoxy_handle_external_wglMakeCurrent+0x37c748>
  788941: 48                           	dec	eax
  788942: 89 87 dc 18 00 00            	mov	dword ptr [edi + 0x18dc], eax
  788948: 8b 87 e0 18 00 00            	mov	eax, dword ptr [edi + 0x18e0]
  78894e: 85 c0                        	test	eax, eax
  788950: 7e 07                        	jle	0x788959 <epoxy_handle_external_wglMakeCurrent+0x37c759>
  788952: 48                           	dec	eax
  788953: 89 87 e0 18 00 00            	mov	dword ptr [edi + 0x18e0], eax
  788959: 8b cf                        	mov	ecx, edi
  78895b: c6 85 e2 fe ff ff 00         	mov	byte ptr [ebp - 0x11e], 0x0
  788962: e8 29 6b 03 00               	call	0x7bf490 <epoxy_handle_external_wglMakeCurrent+0x3b3290>
  788967: 84 c0                        	test	al, al
  788969: 0f 84 c3 00 00 00            	je	0x788a32 <epoxy_handle_external_wglMakeCurrent+0x37c832>
  78896f: 8d 8f 1c 04 00 00            	lea	ecx, [edi + 0x41c]
  788975: 6a 00                        	push	0x0
  788977: e8 24 28 c8 ff               	call	0x40b1a0 <.text+0xa1a0>
  78897c: 89 85 b8 fe ff ff            	mov	dword ptr [ebp - 0x148], eax
  788982: 85 c0                        	test	eax, eax
  788984: 0f 84 77 00 00 00            	je	0x788a01 <epoxy_handle_external_wglMakeCurrent+0x37c801>
  78898a: 8a 40 0c                     	mov	al, byte ptr [eax + 0xc]
  78898d: 33 f6                        	xor	esi, esi
  78898f: 88 85 e2 fe ff ff            	mov	byte ptr [ebp - 0x11e], al
  788995: 8d 87 f8 0f 00 00            	lea	eax, [edi + 0xff8]
  78899b: 8b c8                        	mov	ecx, eax
  78899d: 89 85 cc fe ff ff            	mov	dword ptr [ebp - 0x134], eax
  7889a3: e8 98 84 cb ff               	call	0x440e40 <epoxy_handle_external_wglMakeCurrent+0x34c40>
  7889a8: 85 c0                        	test	eax, eax
  7889aa: 74 55                        	je	0x788a01 <epoxy_handle_external_wglMakeCurrent+0x37c801>
  7889ac: 8b bd cc fe ff ff            	mov	edi, dword ptr [ebp - 0x134]
  7889b2: 8b 8d e4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x11c]
  7889b8: e8 43 e8 c8 ff               	call	0x417200 <epoxy_handle_external_wglMakeCurrent+0xb000>
  7889bd: 8b 8d b8 fe ff ff            	mov	ecx, dword ptr [ebp - 0x148]
  7889c3: 50                           	push	eax
  7889c4: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  7889c7: 50                           	push	eax
  7889c8: e8 43 7b 28 00               	call	0xa10510 <epoxy_handle_external_wglMakeCurrent+0x604310>
  7889cd: 50                           	push	eax
  7889ce: 56                           	push	esi
  7889cf: 8b cf                        	mov	ecx, edi
  7889d1: e8 2a 28 c8 ff               	call	0x40b200 <.text+0xa200>
  7889d6: 8d 48 40                     	lea	ecx, [eax + 0x40]
  7889d9: e8 d2 49 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  7889de: 56                           	push	esi
  7889df: 8b cf                        	mov	ecx, edi
  7889e1: e8 1a 28 c8 ff               	call	0x40b200 <.text+0xa200>
  7889e6: 8a 8d e2 fe ff ff            	mov	cl, byte ptr [ebp - 0x11e]
  7889ec: 46                           	inc	esi
  7889ed: 88 48 74                     	mov	byte ptr [eax + 0x74], cl
  7889f0: 8b cf                        	mov	ecx, edi
  7889f2: e8 49 84 cb ff               	call	0x440e40 <epoxy_handle_external_wglMakeCurrent+0x34c40>
  7889f7: 3b f0                        	cmp	esi, eax
  7889f9: 72 b7                        	jb	0x7889b2 <epoxy_handle_external_wglMakeCurrent+0x37c7b2>
  7889fb: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  788a01: 80 bf d8 17 00 00 00         	cmp	byte ptr [edi + 0x17d8], 0x0
  788a08: 74 09                        	je	0x788a13 <epoxy_handle_external_wglMakeCurrent+0x37c813>
  788a0a: 80 bd e2 fe ff ff 00         	cmp	byte ptr [ebp - 0x11e], 0x0
  788a11: 74 16                        	je	0x788a29 <epoxy_handle_external_wglMakeCurrent+0x37c829>
  788a13: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  788a19: e8 62 ea c7 ff               	call	0x407480 <.text+0x6480>
  788a1e: 8b c8                        	mov	ecx, eax
  788a20: e8 bb b2 08 00               	call	0x813ce0 <epoxy_handle_external_wglMakeCurrent+0x407ae0>
  788a25: 85 c0                        	test	eax, eax
  788a27: 75 24                        	jne	0x788a4d <epoxy_handle_external_wglMakeCurrent+0x37c84d>
  788a29: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  788a30: eb 22                        	jmp	0x788a54 <epoxy_handle_external_wglMakeCurrent+0x37c854>
  788a32: 80 bd da fe ff ff 00         	cmp	byte ptr [ebp - 0x126], 0x0
  788a39: 75 12                        	jne	0x788a4d <epoxy_handle_external_wglMakeCurrent+0x37c84d>
  788a3b: 8b cf                        	mov	ecx, edi
  788a3d: e8 ce 26 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  788a42: c6 85 db fe ff ff 01         	mov	byte ptr [ebp - 0x125], 0x1
  788a49: 84 c0                        	test	al, al
  788a4b: 75 07                        	jne	0x788a54 <epoxy_handle_external_wglMakeCurrent+0x37c854>
  788a4d: c6 85 db fe ff ff 00         	mov	byte ptr [ebp - 0x125], 0x0
  788a54: 8b cf                        	mov	ecx, edi
  788a56: e8 b5 26 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  788a5b: 84 c0                        	test	al, al
  788a5d: 75 12                        	jne	0x788a71 <epoxy_handle_external_wglMakeCurrent+0x37c871>
  788a5f: 8b cf                        	mov	ecx, edi
  788a61: e8 2a 6a 03 00               	call	0x7bf490 <epoxy_handle_external_wglMakeCurrent+0x3b3290>
  788a66: c6 85 df fe ff ff 00         	mov	byte ptr [ebp - 0x121], 0x0
  788a6d: 84 c0                        	test	al, al
  788a6f: 74 07                        	je	0x788a78 <epoxy_handle_external_wglMakeCurrent+0x37c878>
  788a71: c6 85 df fe ff ff 01         	mov	byte ptr [ebp - 0x121], 0x1
  788a78: 8a 87 70 15 00 00            	mov	al, byte ptr [edi + 0x1570]
  788a7e: 8b cf                        	mov	ecx, edi
  788a80: 6a 01                        	push	0x1
  788a82: 68 71 02 00 00               	push	0x271
  788a87: c6 85 e3 fe ff ff 01         	mov	byte ptr [ebp - 0x11d], 0x1
  788a8e: 88 85 da fe ff ff            	mov	byte ptr [ebp - 0x126], al
  788a94: e8 27 4f fd ff               	call	0x75d9c0 <epoxy_handle_external_wglMakeCurrent+0x3517c0>
  788a99: 84 c0                        	test	al, al
  788a9b: 74 56                        	je	0x788af3 <epoxy_handle_external_wglMakeCurrent+0x37c8f3>
  788a9d: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  788aa3: c6 85 df fe ff ff 01         	mov	byte ptr [ebp - 0x121], 0x1
  788aaa: c6 85 da fe ff ff 00         	mov	byte ptr [ebp - 0x126], 0x0
  788ab1: e8 2a 80 c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  788ab6: 8b c8                        	mov	ecx, eax
  788ab8: e8 73 63 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  788abd: 84 c0                        	test	al, al
  788abf: 75 1d                        	jne	0x788ade <epoxy_handle_external_wglMakeCurrent+0x37c8de>
  788ac1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  788ac7: e8 84 00 ca ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  788acc: 8b c8                        	mov	ecx, eax
  788ace: e8 5d 63 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  788ad3: c6 85 e3 fe ff ff 01         	mov	byte ptr [ebp - 0x11d], 0x1
  788ada: 84 c0                        	test	al, al
  788adc: 74 07                        	je	0x788ae5 <epoxy_handle_external_wglMakeCurrent+0x37c8e5>
  788ade: c6 85 e3 fe ff ff 00         	mov	byte ptr [ebp - 0x11d], 0x0
  788ae5: c6 85 e2 fe ff ff 00         	mov	byte ptr [ebp - 0x11e], 0x0
  788aec: c6 87 98 13 00 00 00         	mov	byte ptr [edi + 0x1398], 0x0
  788af3: 6a 00                        	push	0x0
  788af5: 68 00 40 00 00               	push	0x4000
  788afa: 8b cf                        	mov	ecx, edi
  788afc: e8 2f e9 c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  788b01: 84 c0                        	test	al, al
  788b03: 0f 85 c8 06 00 00            	jne	0x7891d1 <epoxy_handle_external_wglMakeCurrent+0x37cfd1>
  788b09: 38 85 df fe ff ff            	cmp	byte ptr [ebp - 0x121], al
  788b0f: 0f 84 bc 06 00 00            	je	0x7891d1 <epoxy_handle_external_wglMakeCurrent+0x37cfd1>
  788b15: 38 85 db fe ff ff            	cmp	byte ptr [ebp - 0x125], al
  788b1b: 74 07                        	je	0x788b24 <epoxy_handle_external_wglMakeCurrent+0x37c924>
  788b1d: 8b cf                        	mov	ecx, edi
  788b1f: e8 ac 56 fd ff               	call	0x75e1d0 <epoxy_handle_external_wglMakeCurrent+0x351fd0>
  788b24: 80 bd e2 fe ff ff 00         	cmp	byte ptr [ebp - 0x11e], 0x0
  788b2b: b8 44 e0 b1 00               	mov	eax, 0xb1e044
  788b30: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  788b38: be 84 b0 b6 00               	mov	esi, 0xb6b084
  788b3d: 0f 45 c6                     	cmovne	eax, esi
  788b40: f3 0f 11 85 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm0
  788b48: 89 85 bc fe ff ff            	mov	dword ptr [ebp - 0x144], eax
  788b4e: 8b cf                        	mov	ecx, edi
  788b50: 8d 85 90 fe ff ff            	lea	eax, [ebp - 0x170]
  788b56: 50                           	push	eax
  788b57: e8 a4 0d ff ff               	call	0x779900 <epoxy_handle_external_wglMakeCurrent+0x36d700>
  788b5c: 68 40 b6 c7 00               	push	0xc7b640
  788b61: 8d 8d 90 fe ff ff            	lea	ecx, [ebp - 0x170]
  788b67: e8 94 7a 28 00               	call	0xa10600 <epoxy_handle_external_wglMakeCurrent+0x604400>
  788b6c: 84 c0                        	test	al, al
  788b6e: 0f 84 7e 02 00 00            	je	0x788df2 <epoxy_handle_external_wglMakeCurrent+0x37cbf2>
  788b74: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  788b78: 75 46                        	jne	0x788bc0 <epoxy_handle_external_wglMakeCurrent+0x37c9c0>
  788b7a: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  788b81: 75 3d                        	jne	0x788bc0 <epoxy_handle_external_wglMakeCurrent+0x37c9c0>
  788b83: 80 bd e3 fe ff ff 00         	cmp	byte ptr [ebp - 0x11d], 0x0
  788b8a: 74 34                        	je	0x788bc0 <epoxy_handle_external_wglMakeCurrent+0x37c9c0>
  788b8c: 80 bd da fe ff ff 00         	cmp	byte ptr [ebp - 0x126], 0x0
  788b93: 74 1b                        	je	0x788bb0 <epoxy_handle_external_wglMakeCurrent+0x37c9b0>
  788b95: 83 bf c0 13 00 00 23         	cmp	dword ptr [edi + 0x13c0], 0x23
  788b9c: 74 12                        	je	0x788bb0 <epoxy_handle_external_wglMakeCurrent+0x37c9b0>
  788b9e: 6a 00                        	push	0x0
  788ba0: ff b5 bc fe ff ff            	push	dword ptr [ebp - 0x144]
  788ba6: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  788ba9: e8 d2 17 c8 ff               	call	0x40a380 <.text+0x9380>
  788bae: eb 10                        	jmp	0x788bc0 <epoxy_handle_external_wglMakeCurrent+0x37c9c0>
  788bb0: 6a 00                        	push	0x0
  788bb2: ff b5 bc fe ff ff            	push	dword ptr [ebp - 0x144]
  788bb8: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  788bbb: e8 20 1b c8 ff               	call	0x40a6e0 <.text+0x96e0>
  788bc0: 8d 87 38 12 00 00            	lea	eax, [edi + 0x1238]
  788bc6: ba 0f 00 00 00               	mov	edx, 0xf
  788bcb: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  788bd1: 89 95 dc fe ff ff            	mov	dword ptr [ebp - 0x124], edx
  788bd7: 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [eax + eax]
  788be0: 8b 40 f4                     	mov	eax, dword ptr [eax - 0xc]
  788be3: 85 c0                        	test	eax, eax
  788be5: 0f 88 e4 01 00 00            	js	0x788dcf <epoxy_handle_external_wglMakeCurrent+0x37cbcf>
  788beb: 8b 8d d4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x12c]
  788bf1: 80 39 00                     	cmp	byte ptr [ecx], 0x0
  788bf4: 0f 84 d5 01 00 00            	je	0x788dcf <epoxy_handle_external_wglMakeCurrent+0x37cbcf>
  788bfa: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  788c00: 50                           	push	eax
  788c01: e8 0a 31 e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  788c06: 83 7f 2c 01                  	cmp	dword ptr [edi + 0x2c], 0x1
  788c0a: 8b f0                        	mov	esi, eax
  788c0c: 0f 84 b7 01 00 00            	je	0x788dc9 <epoxy_handle_external_wglMakeCurrent+0x37cbc9>
  788c12: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  788c19: 0f 85 aa 01 00 00            	jne	0x788dc9 <epoxy_handle_external_wglMakeCurrent+0x37cbc9>
  788c1f: 8b 8e 14 01 00 00            	mov	ecx, dword ptr [esi + 0x114]
  788c25: 85 c9                        	test	ecx, ecx
  788c27: 74 29                        	je	0x788c52 <epoxy_handle_external_wglMakeCurrent+0x37ca52>
  788c29: e8 52 a0 f9 ff               	call	0x722c80 <epoxy_handle_external_wglMakeCurrent+0x316a80>
  788c2e: 84 c0                        	test	al, al
  788c30: 74 20                        	je	0x788c52 <epoxy_handle_external_wglMakeCurrent+0x37ca52>
  788c32: 8b 86 14 01 00 00            	mov	eax, dword ptr [esi + 0x114]
  788c38: 83 78 04 4c                  	cmp	dword ptr [eax + 0x4], 0x4c
  788c3c: 75 14                        	jne	0x788c52 <epoxy_handle_external_wglMakeCurrent+0x37ca52>
  788c3e: f3 0f 10 85 b0 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x150]
  788c46: f3 0f 58 c0                  	addss	xmm0, xmm0
  788c4a: f3 0f 11 85 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm0
  788c52: 80 be 1c 01 00 00 00         	cmp	byte ptr [esi + 0x11c], 0x0
  788c59: 0f 85 6a 01 00 00            	jne	0x788dc9 <epoxy_handle_external_wglMakeCurrent+0x37cbc9>
  788c5f: 80 bd e2 fe ff ff 00         	cmp	byte ptr [ebp - 0x11e], 0x0
  788c66: 74 27                        	je	0x788c8f <epoxy_handle_external_wglMakeCurrent+0x37ca8f>
  788c68: 8b 8e 14 01 00 00            	mov	ecx, dword ptr [esi + 0x114]
  788c6e: e8 0d a0 f9 ff               	call	0x722c80 <epoxy_handle_external_wglMakeCurrent+0x316a80>
  788c73: 84 c0                        	test	al, al
  788c75: 74 0c                        	je	0x788c83 <epoxy_handle_external_wglMakeCurrent+0x37ca83>
  788c77: 8b 86 14 01 00 00            	mov	eax, dword ptr [esi + 0x114]
  788c7d: 83 78 04 5a                  	cmp	dword ptr [eax + 0x4], 0x5a
  788c81: 74 0c                        	je	0x788c8f <epoxy_handle_external_wglMakeCurrent+0x37ca8f>
  788c83: 8b ce                        	mov	ecx, esi
  788c85: e8 86 1c c8 ff               	call	0x40a910 <.text+0x9910>
  788c8a: e9 3a 01 00 00               	jmp	0x788dc9 <epoxy_handle_external_wglMakeCurrent+0x37cbc9>
  788c8f: 8b 86 14 01 00 00            	mov	eax, dword ptr [esi + 0x114]
  788c95: 83 38 03                     	cmp	dword ptr [eax], 0x3
  788c98: 75 1c                        	jne	0x788cb6 <epoxy_handle_external_wglMakeCurrent+0x37cab6>
  788c9a: 81 78 04 71 02 00 00         	cmp	dword ptr [eax + 0x4], 0x271
  788ca1: 75 13                        	jne	0x788cb6 <epoxy_handle_external_wglMakeCurrent+0x37cab6>
  788ca3: 6a 00                        	push	0x0
  788ca5: 68 40 1f b6 00               	push	0xb61f40
  788caa: 8b ce                        	mov	ecx, esi
  788cac: e8 2f 1a c8 ff               	call	0x40a6e0 <.text+0x96e0>
  788cb1: e9 13 01 00 00               	jmp	0x788dc9 <epoxy_handle_external_wglMakeCurrent+0x37cbc9>
  788cb6: 80 bd da fe ff ff 00         	cmp	byte ptr [ebp - 0x126], 0x0
  788cbd: 74 14                        	je	0x788cd3 <epoxy_handle_external_wglMakeCurrent+0x37cad3>
  788cbf: 6a 00                        	push	0x0
  788cc1: ff b5 bc fe ff ff            	push	dword ptr [ebp - 0x144]
  788cc7: 8b ce                        	mov	ecx, esi
  788cc9: e8 b2 16 c8 ff               	call	0x40a380 <.text+0x9380>
  788cce: e9 6b 00 00 00               	jmp	0x788d3e <epoxy_handle_external_wglMakeCurrent+0x37cb3e>
  788cd3: ff b5 bc fe ff ff            	push	dword ptr [ebp - 0x144]
  788cd9: 8d 4d d8                     	lea	ecx, [ebp - 0x28]
  788cdc: e8 5f 36 c8 ff               	call	0x40c340 <epoxy_handle_external_wglMakeCurrent+0x140>
  788ce1: 68 f4 af b6 00               	push	0xb6aff4
  788ce6: 8b d0                        	mov	edx, eax
  788ce8: c7 45 fc 0a 00 00 00         	mov	dword ptr [ebp - 0x4], 0xa
  788cef: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  788cf2: e8 99 3a e8 ff               	call	0x60c790 <epoxy_handle_external_wglMakeCurrent+0x200590>
  788cf7: 83 c4 04                     	add	esp, 0x4
  788cfa: 8d 4d d8                     	lea	ecx, [ebp - 0x28]
  788cfd: c6 45 fc 0c                  	mov	byte ptr [ebp - 0x4], 0xc
  788d01: e8 1a 32 c8 ff               	call	0x40bf20 <.text+0xaf20>
  788d06: 8d 45 ac                     	lea	eax, [ebp - 0x54]
  788d09: 8b ce                        	mov	ecx, esi
  788d0b: 50                           	push	eax
  788d0c: e8 9f 2f c8 ff               	call	0x40bcb0 <.text+0xacb0>
  788d11: 8b ce                        	mov	ecx, esi
  788d13: 6a 00                        	push	0x0
  788d15: 85 c0                        	test	eax, eax
  788d17: 74 0b                        	je	0x788d24 <epoxy_handle_external_wglMakeCurrent+0x37cb24>
  788d19: 8d 45 ac                     	lea	eax, [ebp - 0x54]
  788d1c: 50                           	push	eax
  788d1d: e8 3e 16 c8 ff               	call	0x40a360 <.text+0x9360>
  788d22: eb 0b                        	jmp	0x788d2f <epoxy_handle_external_wglMakeCurrent+0x37cb2f>
  788d24: ff b5 bc fe ff ff            	push	dword ptr [ebp - 0x144]
  788d2a: e8 b1 19 c8 ff               	call	0x40a6e0 <.text+0x96e0>
  788d2f: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  788d32: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  788d39: e8 e2 31 c8 ff               	call	0x40bf20 <.text+0xaf20>
  788d3e: 80 be 1e 01 00 00 00         	cmp	byte ptr [esi + 0x11e], 0x0
  788d45: 0f 84 7e 00 00 00            	je	0x788dc9 <epoxy_handle_external_wglMakeCurrent+0x37cbc9>
  788d4b: ff b5 bc fe ff ff            	push	dword ptr [ebp - 0x144]
  788d51: 8d 4d d8                     	lea	ecx, [ebp - 0x28]
  788d54: e8 e7 35 c8 ff               	call	0x40c340 <epoxy_handle_external_wglMakeCurrent+0x140>
  788d59: 80 bd da fe ff ff 00         	cmp	byte ptr [ebp - 0x126], 0x0
  788d60: 74 29                        	je	0x788d8b <epoxy_handle_external_wglMakeCurrent+0x37cb8b>
  788d62: 68 6c aa b6 00               	push	0xb6aa6c
  788d67: 8b d0                        	mov	edx, eax
  788d69: c7 45 fc 0d 00 00 00         	mov	dword ptr [ebp - 0x4], 0xd
  788d70: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  788d73: e8 18 3a e8 ff               	call	0x60c790 <epoxy_handle_external_wglMakeCurrent+0x200590>
  788d78: 83 c4 04                     	add	esp, 0x4
  788d7b: 6a 00                        	push	0x0
  788d7d: 50                           	push	eax
  788d7e: 8b ce                        	mov	ecx, esi
  788d80: c6 45 fc 0e                  	mov	byte ptr [ebp - 0x4], 0xe
  788d84: e8 97 1b c8 ff               	call	0x40a920 <.text+0x9920>
  788d89: eb 27                        	jmp	0x788db2 <epoxy_handle_external_wglMakeCurrent+0x37cbb2>
  788d8b: 68 6c aa b6 00               	push	0xb6aa6c
  788d90: 8b d0                        	mov	edx, eax
  788d92: c7 45 fc 0f 00 00 00         	mov	dword ptr [ebp - 0x4], 0xf
  788d99: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  788d9c: e8 ef 39 e8 ff               	call	0x60c790 <epoxy_handle_external_wglMakeCurrent+0x200590>
  788da1: 83 c4 04                     	add	esp, 0x4
  788da4: 6a 00                        	push	0x0
  788da6: 50                           	push	eax
  788da7: 8b ce                        	mov	ecx, esi
  788da9: c6 45 fc 10                  	mov	byte ptr [ebp - 0x4], 0x10
  788dad: e8 de 18 c8 ff               	call	0x40a690 <.text+0x9690>
  788db2: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  788db5: e8 66 31 c8 ff               	call	0x40bf20 <.text+0xaf20>
  788dba: 8d 4d d8                     	lea	ecx, [ebp - 0x28]
  788dbd: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  788dc4: e8 57 31 c8 ff               	call	0x40bf20 <.text+0xaf20>
  788dc9: 8b 95 dc fe ff ff            	mov	edx, dword ptr [ebp - 0x124]
  788dcf: 8b 85 d4 fe ff ff            	mov	eax, dword ptr [ebp - 0x12c]
  788dd5: 83 c0 10                     	add	eax, 0x10
  788dd8: 83 ea 01                     	sub	edx, 0x1
  788ddb: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  788de1: 89 95 dc fe ff ff            	mov	dword ptr [ebp - 0x124], edx
  788de7: 0f 85 f3 fd ff ff            	jne	0x788be0 <epoxy_handle_external_wglMakeCurrent+0x37c9e0>
  788ded: e9 17 02 00 00               	jmp	0x789009 <epoxy_handle_external_wglMakeCurrent+0x37ce09>
  788df2: f3 0f 10 85 90 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x170]
  788dfa: e8 11 47 c9 ff               	call	0x41d510 <epoxy_handle_external_wglMakeCurrent+0x11310>
  788dff: 80 bd e2 fe ff ff 00         	cmp	byte ptr [ebp - 0x11e], 0x0
  788e06: 74 3d                        	je	0x788e45 <epoxy_handle_external_wglMakeCurrent+0x37cc45>
  788e08: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  788e10: f3 0f 10 85 94 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x16c]
  788e18: e8 f3 46 c9 ff               	call	0x41d510 <epoxy_handle_external_wglMakeCurrent+0x11310>
  788e1d: f3 0f 10 8d cc fe ff ff      	movss	xmm1, dword ptr [ebp - 0x134]
  788e25: 0f 2f c8                     	comiss	xmm1, xmm0
  788e28: 76 14                        	jbe	0x788e3e <epoxy_handle_external_wglMakeCurrent+0x37cc3e>
  788e2a: f3 0f 10 85 90 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x170]
  788e32: be ac b0 b6 00               	mov	esi, 0xb6b0ac
  788e37: b8 9c b0 b6 00               	mov	eax, 0xb6b09c
  788e3c: eb 4f                        	jmp	0x788e8d <epoxy_handle_external_wglMakeCurrent+0x37cc8d>
  788e3e: b8 34 b0 b6 00               	mov	eax, 0xb6b034
  788e43: eb 40                        	jmp	0x788e85 <epoxy_handle_external_wglMakeCurrent+0x37cc85>
  788e45: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  788e4d: f3 0f 10 85 94 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x16c]
  788e55: e8 b6 46 c9 ff               	call	0x41d510 <epoxy_handle_external_wglMakeCurrent+0x11310>
  788e5a: f3 0f 10 8d cc fe ff ff      	movss	xmm1, dword ptr [ebp - 0x134]
  788e62: 0f 2f c8                     	comiss	xmm1, xmm0
  788e65: 76 14                        	jbe	0x788e7b <epoxy_handle_external_wglMakeCurrent+0x37cc7b>
  788e67: f3 0f 10 85 90 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x170]
  788e6f: be c0 da b1 00               	mov	esi, 0xb1dac0
  788e74: b8 88 da b1 00               	mov	eax, 0xb1da88
  788e79: eb 12                        	jmp	0x788e8d <epoxy_handle_external_wglMakeCurrent+0x37cc8d>
  788e7b: be 44 e0 b1 00               	mov	esi, 0xb1e044
  788e80: b8 20 e0 b1 00               	mov	eax, 0xb1e020
  788e85: f3 0f 10 85 94 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x16c]
  788e8d: 0f 2f 05 e4 9f ba 00         	comiss	xmm0, dword ptr [0xba9fe4]
  788e94: 0f 46 f0                     	cmovbe	esi, eax
  788e97: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  788e9b: 89 b5 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], esi
  788ea1: 75 1d                        	jne	0x788ec0 <epoxy_handle_external_wglMakeCurrent+0x37ccc0>
  788ea3: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  788eaa: 75 14                        	jne	0x788ec0 <epoxy_handle_external_wglMakeCurrent+0x37ccc0>
  788eac: 80 bd e3 fe ff ff 00         	cmp	byte ptr [ebp - 0x11d], 0x0
  788eb3: 74 0b                        	je	0x788ec0 <epoxy_handle_external_wglMakeCurrent+0x37ccc0>
  788eb5: 6a 00                        	push	0x0
  788eb7: 56                           	push	esi
  788eb8: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  788ebb: e8 c0 14 c8 ff               	call	0x40a380 <.text+0x9380>
  788ec0: 8d 87 38 12 00 00            	lea	eax, [edi + 0x1238]
  788ec6: c7 85 e4 fe ff ff 0f 00 00 00	mov	dword ptr [ebp - 0x11c], 0xf
  788ed0: 89 85 bc fe ff ff            	mov	dword ptr [ebp - 0x144], eax
  788ed6: 66 66 0f 1f 84 00 00 00 00 00	nop	word ptr [eax + eax]
  788ee0: 8b 50 f4                     	mov	edx, dword ptr [eax - 0xc]
  788ee3: 85 d2                        	test	edx, edx
  788ee5: 0f 88 08 01 00 00            	js	0x788ff3 <epoxy_handle_external_wglMakeCurrent+0x37cdf3>
  788eeb: 80 38 00                     	cmp	byte ptr [eax], 0x0
  788eee: 0f 84 ff 00 00 00            	je	0x788ff3 <epoxy_handle_external_wglMakeCurrent+0x37cdf3>
  788ef4: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  788efa: 52                           	push	edx
  788efb: e8 10 2e e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  788f00: 83 7f 2c 01                  	cmp	dword ptr [edi + 0x2c], 0x1
  788f04: 8b f0                        	mov	esi, eax
  788f06: 0f 84 e1 00 00 00            	je	0x788fed <epoxy_handle_external_wglMakeCurrent+0x37cded>
  788f0c: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  788f13: 0f 85 d4 00 00 00            	jne	0x788fed <epoxy_handle_external_wglMakeCurrent+0x37cded>
  788f19: 8b 8e 14 01 00 00            	mov	ecx, dword ptr [esi + 0x114]
  788f1f: 85 c9                        	test	ecx, ecx
  788f21: 74 29                        	je	0x788f4c <epoxy_handle_external_wglMakeCurrent+0x37cd4c>
  788f23: e8 58 9d f9 ff               	call	0x722c80 <epoxy_handle_external_wglMakeCurrent+0x316a80>
  788f28: 84 c0                        	test	al, al
  788f2a: 74 20                        	je	0x788f4c <epoxy_handle_external_wglMakeCurrent+0x37cd4c>
  788f2c: 8b 86 14 01 00 00            	mov	eax, dword ptr [esi + 0x114]
  788f32: 83 78 04 4c                  	cmp	dword ptr [eax + 0x4], 0x4c
  788f36: 75 14                        	jne	0x788f4c <epoxy_handle_external_wglMakeCurrent+0x37cd4c>
  788f38: f3 0f 10 85 b0 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x150]
  788f40: f3 0f 58 c0                  	addss	xmm0, xmm0
  788f44: f3 0f 11 85 b0 fe ff ff      	movss	dword ptr [ebp - 0x150], xmm0
  788f4c: 80 bd e2 fe ff ff 00         	cmp	byte ptr [ebp - 0x11e], 0x0
  788f53: 74 27                        	je	0x788f7c <epoxy_handle_external_wglMakeCurrent+0x37cd7c>
  788f55: 8b 8e 14 01 00 00            	mov	ecx, dword ptr [esi + 0x114]
  788f5b: e8 20 9d f9 ff               	call	0x722c80 <epoxy_handle_external_wglMakeCurrent+0x316a80>
  788f60: 84 c0                        	test	al, al
  788f62: 74 0c                        	je	0x788f70 <epoxy_handle_external_wglMakeCurrent+0x37cd70>
  788f64: 8b 86 14 01 00 00            	mov	eax, dword ptr [esi + 0x114]
  788f6a: 83 78 04 5a                  	cmp	dword ptr [eax + 0x4], 0x5a
  788f6e: 74 0c                        	je	0x788f7c <epoxy_handle_external_wglMakeCurrent+0x37cd7c>
  788f70: 8b ce                        	mov	ecx, esi
  788f72: e8 99 19 c8 ff               	call	0x40a910 <.text+0x9910>
  788f77: e9 71 00 00 00               	jmp	0x788fed <epoxy_handle_external_wglMakeCurrent+0x37cded>
  788f7c: 80 be 1c 01 00 00 00         	cmp	byte ptr [esi + 0x11c], 0x0
  788f83: 0f 85 64 00 00 00            	jne	0x788fed <epoxy_handle_external_wglMakeCurrent+0x37cded>
  788f89: 6a 00                        	push	0x0
  788f8b: ff b5 c4 fe ff ff            	push	dword ptr [ebp - 0x13c]
  788f91: 8b ce                        	mov	ecx, esi
  788f93: e8 e8 13 c8 ff               	call	0x40a380 <.text+0x9380>
  788f98: 80 be 1e 01 00 00 00         	cmp	byte ptr [esi + 0x11e], 0x0
  788f9f: 74 4c                        	je	0x788fed <epoxy_handle_external_wglMakeCurrent+0x37cded>
  788fa1: ff b5 c4 fe ff ff            	push	dword ptr [ebp - 0x13c]
  788fa7: 8d 4d d8                     	lea	ecx, [ebp - 0x28]
  788faa: e8 91 33 c8 ff               	call	0x40c340 <epoxy_handle_external_wglMakeCurrent+0x140>
  788faf: 68 6c aa b6 00               	push	0xb6aa6c
  788fb4: 8b d0                        	mov	edx, eax
  788fb6: c7 45 fc 11 00 00 00         	mov	dword ptr [ebp - 0x4], 0x11
  788fbd: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  788fc0: e8 cb 37 e8 ff               	call	0x60c790 <epoxy_handle_external_wglMakeCurrent+0x200590>
  788fc5: 83 c4 04                     	add	esp, 0x4
  788fc8: 6a 00                        	push	0x0
  788fca: 50                           	push	eax
  788fcb: 8b ce                        	mov	ecx, esi
  788fcd: c6 45 fc 12                  	mov	byte ptr [ebp - 0x4], 0x12
  788fd1: e8 4a 19 c8 ff               	call	0x40a920 <.text+0x9920>
  788fd6: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  788fd9: e8 42 2f c8 ff               	call	0x40bf20 <.text+0xaf20>
  788fde: 8d 4d d8                     	lea	ecx, [ebp - 0x28]
  788fe1: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  788fe8: e8 33 2f c8 ff               	call	0x40bf20 <.text+0xaf20>
  788fed: 8b 85 bc fe ff ff            	mov	eax, dword ptr [ebp - 0x144]
  788ff3: 83 c0 10                     	add	eax, 0x10
  788ff6: 83 ad e4 fe ff ff 01         	sub	dword ptr [ebp - 0x11c], 0x1
  788ffd: 89 85 bc fe ff ff            	mov	dword ptr [ebp - 0x144], eax
  789003: 0f 85 d7 fe ff ff            	jne	0x788ee0 <epoxy_handle_external_wglMakeCurrent+0x37cce0>
  789009: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  789011: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  789014: 68 ec a4 b1 00               	push	0xb1a4ec
  789019: f3 0f 11 85 c4 fe ff ff      	movss	dword ptr [ebp - 0x13c], xmm0
  789021: e8 aa 14 c8 ff               	call	0x40a4d0 <.text+0x94d0>
  789026: 84 c0                        	test	al, al
  789028: 0f 84 26 01 00 00            	je	0x789154 <epoxy_handle_external_wglMakeCurrent+0x37cf54>
  78902e: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  789034: e8 67 6e 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  789039: f3 0f 10 15 a4 a6 ba 00      	movss	xmm2, dword ptr [0xbaa6a4]
  789041: d9 9d e4 fe ff ff            	fstp	dword ptr [ebp - 0x11c]
  789047: f3 0f 10 85 e4 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x11c]
  78904f: 0f 2f d0                     	comiss	xmm2, xmm0
  789052: 76 2f                        	jbe	0x789083 <epoxy_handle_external_wglMakeCurrent+0x37ce83>
  789054: f3 0f 10 1d d0 a2 ba 00      	movss	xmm3, dword ptr [0xbaa2d0]
  78905c: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  789064: 51                           	push	ecx
  789065: b1 01                        	mov	cl, 0x1
  789067: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78906e: e8 cd c5 28 00               	call	0xa15640 <epoxy_handle_external_wglMakeCurrent+0x609440>
  789073: 0f 28 c8                     	movaps	xmm1, xmm0
  789076: 83 c4 04                     	add	esp, 0x4
  789079: f3 0f 10 85 e4 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x11c]
  789081: eb 08                        	jmp	0x78908b <epoxy_handle_external_wglMakeCurrent+0x37ce8b>
  789083: f3 0f 10 8d c4 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x13c]
  78908b: f3 0f 10 25 a4 a7 ba 00      	movss	xmm4, dword ptr [0xbaa7a4]
  789093: 0f 2f c4                     	comiss	xmm0, xmm4
  789096: 76 28                        	jbe	0x7890c0 <epoxy_handle_external_wglMakeCurrent+0x37cec0>
  789098: f3 0f 10 1d 54 a4 ba 00      	movss	xmm3, dword ptr [0xbaa454]
  7890a0: 0f 28 cc                     	movaps	xmm1, xmm4
  7890a3: f3 0f 10 15 1c a8 ba 00      	movss	xmm2, dword ptr [0xbaa81c]
  7890ab: 51                           	push	ecx
  7890ac: b1 01                        	mov	cl, 0x1
  7890ae: c7 04 24 00 00 00 40         	mov	dword ptr [esp], 0x40000000
  7890b5: e8 86 c5 28 00               	call	0xa15640 <epoxy_handle_external_wglMakeCurrent+0x609440>
  7890ba: 83 c4 04                     	add	esp, 0x4
  7890bd: 0f 28 c8                     	movaps	xmm1, xmm0
  7890c0: 83 bf 5c 16 00 00 00         	cmp	dword ptr [edi + 0x165c], 0x0
  7890c7: 0f 8e 8f 00 00 00            	jle	0x78915c <epoxy_handle_external_wglMakeCurrent+0x37cf5c>
  7890cd: 51                           	push	ecx
  7890ce: 8d 87 60 03 00 00            	lea	eax, [edi + 0x360]
  7890d4: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  7890db: 50                           	push	eax
  7890dc: 8d 8f 54 16 00 00            	lea	ecx, [edi + 0x1654]
  7890e2: e8 99 70 28 00               	call	0xa10180 <epoxy_handle_external_wglMakeCurrent+0x603f80>
  7890e7: f3 0f 10 1d fc a6 ba 00      	movss	xmm3, dword ptr [0xbaa6fc]
  7890ef: b1 01                        	mov	cl, 0x1
  7890f1: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  7890f9: f3 0f 10 0d 84 ad ba 00      	movss	xmm1, dword ptr [0xbaad84]
  789101: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  789107: f3 0f 10 85 cc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x134]
  78910f: e8 2c c5 28 00               	call	0xa15640 <epoxy_handle_external_wglMakeCurrent+0x609440>
  789114: 83 c4 04                     	add	esp, 0x4
  789117: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  78911f: 8d 8f 54 16 00 00            	lea	ecx, [edi + 0x1654]
  789125: e8 76 6d 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  78912a: d8 8d cc fe ff ff            	fmul	dword ptr [ebp - 0x134]
  789130: f3 0f 10 05 d0 a2 ba 00      	movss	xmm0, dword ptr [0xbaa2d0]
  789138: f3 0f 10 0d 5c a7 ba 00      	movss	xmm1, dword ptr [0xbaa75c]
  789140: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  789146: f3 0f 5f 85 cc fe ff ff      	maxss	xmm0, dword ptr [ebp - 0x134]
  78914e: f3 0f 5d c8                  	minss	xmm1, xmm0
  789152: eb 08                        	jmp	0x78915c <epoxy_handle_external_wglMakeCurrent+0x37cf5c>
  789154: f3 0f 10 8d c4 fe ff ff      	movss	xmm1, dword ptr [ebp - 0x13c]
  78915c: f3 0f 59 8d b0 fe ff ff      	mulss	xmm1, dword ptr [ebp - 0x150]
  789164: 51                           	push	ecx
  789165: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  789168: f3 0f 11 8d c4 fe ff ff      	movss	dword ptr [ebp - 0x13c], xmm1
  789170: f3 0f 11 0c 24               	movss	dword ptr [esp], xmm1
  789175: e8 d6 7c cb ff               	call	0x440e50 <epoxy_handle_external_wglMakeCurrent+0x34c50>
  78917a: b9 0f 00 00 00               	mov	ecx, 0xf
  78917f: 8d b7 38 12 00 00            	lea	esi, [edi + 0x1238]
  789185: 89 8d e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], ecx
  78918b: 0f 1f 44 00 00               	nop	dword ptr [eax + eax]
  789190: 8b 46 f4                     	mov	eax, dword ptr [esi - 0xc]
  789193: 85 c0                        	test	eax, eax
  789195: 78 2c                        	js	0x7891c3 <epoxy_handle_external_wglMakeCurrent+0x37cfc3>
  789197: 80 3e 00                     	cmp	byte ptr [esi], 0x0
  78919a: 74 27                        	je	0x7891c3 <epoxy_handle_external_wglMakeCurrent+0x37cfc3>
  78919c: 8d 8f 20 12 00 00            	lea	ecx, [edi + 0x1220]
  7891a2: 50                           	push	eax
  7891a3: e8 68 2b e4 ff               	call	0x5cbd10 <epoxy_handle_external_wglMakeCurrent+0x1bfb10>
  7891a8: f3 0f 10 85 c4 fe ff ff      	movss	xmm0, dword ptr [ebp - 0x13c]
  7891b0: 51                           	push	ecx
  7891b1: 8b c8                        	mov	ecx, eax
  7891b3: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  7891b8: e8 93 7c cb ff               	call	0x440e50 <epoxy_handle_external_wglMakeCurrent+0x34c50>
  7891bd: 8b 8d e4 fe ff ff            	mov	ecx, dword ptr [ebp - 0x11c]
  7891c3: 83 c6 10                     	add	esi, 0x10
  7891c6: 83 e9 01                     	sub	ecx, 0x1
  7891c9: 89 8d e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], ecx
  7891cf: 75 bf                        	jne	0x789190 <epoxy_handle_external_wglMakeCurrent+0x37cf90>
  7891d1: 8d 8f 9c 13 00 00            	lea	ecx, [edi + 0x139c]
  7891d7: e8 f4 30 c8 ff               	call	0x40c2d0 <epoxy_handle_external_wglMakeCurrent+0xd0>
  7891dc: 84 c0                        	test	al, al
  7891de: 75 29                        	jne	0x789209 <epoxy_handle_external_wglMakeCurrent+0x37d009>
  7891e0: 8b cf                        	mov	ecx, edi
  7891e2: e8 29 1f 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  7891e7: 84 c0                        	test	al, al
  7891e9: 74 1e                        	je	0x789209 <epoxy_handle_external_wglMakeCurrent+0x37d009>
  7891eb: 8d 8f 9c 13 00 00            	lea	ecx, [edi + 0x139c]
  7891f1: e8 ca 3e c8 ff               	call	0x40d0c0 <epoxy_handle_external_wglMakeCurrent+0xec0>
  7891f6: 50                           	push	eax
  7891f7: 8b cf                        	mov	ecx, edi
  7891f9: e8 22 2c 02 00               	call	0x7abe20 <epoxy_handle_external_wglMakeCurrent+0x39fc20>
  7891fe: 8d 8f 9c 13 00 00            	lea	ecx, [edi + 0x139c]
  789204: e8 e7 30 c8 ff               	call	0x40c2f0 <epoxy_handle_external_wglMakeCurrent+0xf0>
  789209: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  78920f: 6a 4d                        	push	0x4d
  789211: 8b ce                        	mov	ecx, esi
  789213: 89 b5 b8 fe ff ff            	mov	dword ptr [ebp - 0x148], esi
  789219: e8 d2 73 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  78921e: 84 c0                        	test	al, al
  789220: 75 37                        	jne	0x789259 <epoxy_handle_external_wglMakeCurrent+0x37d059>
  789222: 6a 5d                        	push	0x5d
  789224: 8b ce                        	mov	ecx, esi
  789226: e8 c5 73 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  78922b: 84 c0                        	test	al, al
  78922d: 75 2a                        	jne	0x789259 <epoxy_handle_external_wglMakeCurrent+0x37d059>
  78922f: 68 2b 01 00 00               	push	0x12b
  789234: 8b ce                        	mov	ecx, esi
  789236: e8 b5 73 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  78923b: 84 c0                        	test	al, al
  78923d: 0f 84 c1 00 00 00            	je	0x789304 <epoxy_handle_external_wglMakeCurrent+0x37d104>
  789243: 68 2b 01 00 00               	push	0x12b
  789248: 8b ce                        	mov	ecx, esi
  78924a: e8 31 77 1a 00               	call	0x930980 <epoxy_handle_external_wglMakeCurrent+0x524780>
  78924f: 83 78 08 00                  	cmp	dword ptr [eax + 0x8], 0x0
  789253: 0f 84 ab 00 00 00            	je	0x789304 <epoxy_handle_external_wglMakeCurrent+0x37d104>
  789259: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78925f: e8 1c e2 c7 ff               	call	0x407480 <.text+0x6480>
  789264: 8b f8                        	mov	edi, eax
  789266: 8b 85 d0 fe ff ff            	mov	eax, dword ptr [ebp - 0x130]
  78926c: 8d b0 3c 03 00 00            	lea	esi, [eax + 0x33c]
  789272: 8d 88 60 03 00 00            	lea	ecx, [eax + 0x360]
  789278: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  78927b: 50                           	push	eax
  78927c: e8 af 6d 28 00               	call	0xa10030 <epoxy_handle_external_wglMakeCurrent+0x603e30>
  789281: 8d 8d cc fe ff ff            	lea	ecx, [ebp - 0x134]
  789287: c7 85 cc fe ff ff 00 00 20 42	mov	dword ptr [ebp - 0x134], 0x42200000
  789291: 51                           	push	ecx
  789292: 8d 8d 6c fe ff ff            	lea	ecx, [ebp - 0x194]
  789298: 51                           	push	ecx
  789299: 8b c8                        	mov	ecx, eax
  78929b: e8 40 72 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  7892a0: 50                           	push	eax
  7892a1: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  7892a7: 8b ce                        	mov	ecx, esi
  7892a9: 50                           	push	eax
  7892aa: e8 71 71 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  7892af: 50                           	push	eax
  7892b0: 8b cf                        	mov	ecx, edi
  7892b2: e8 d9 99 08 00               	call	0x812c90 <epoxy_handle_external_wglMakeCurrent+0x406a90>
  7892b7: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  7892bd: 85 c0                        	test	eax, eax
  7892bf: 78 37                        	js	0x7892f8 <epoxy_handle_external_wglMakeCurrent+0x37d0f8>
  7892c1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7892c7: e8 b4 e1 c7 ff               	call	0x407480 <.text+0x6480>
  7892cc: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  7892d2: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  7892d5: 57                           	push	edi
  7892d6: 8b f0                        	mov	esi, eax
  7892d8: e8 33 80 ca ff               	call	0x431310 <epoxy_handle_external_wglMakeCurrent+0x25110>
  7892dd: 8d 45 9c                     	lea	eax, [ebp - 0x64]
  7892e0: 8b ce                        	mov	ecx, esi
  7892e2: 50                           	push	eax
  7892e3: 6a 01                        	push	0x1
  7892e5: ff b5 e4 fe ff ff            	push	dword ptr [ebp - 0x11c]
  7892eb: e8 40 a8 08 00               	call	0x813b30 <epoxy_handle_external_wglMakeCurrent+0x407930>
  7892f0: 8d b7 08 15 00 00            	lea	esi, [edi + 0x1508]
  7892f6: eb 0c                        	jmp	0x789304 <epoxy_handle_external_wglMakeCurrent+0x37d104>
  7892f8: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  7892fe: 8b b5 b8 fe ff ff            	mov	esi, dword ptr [ebp - 0x148]
  789304: 8b 87 68 01 00 00            	mov	eax, dword ptr [edi + 0x168]
  78930a: 25 80 00 00 00               	and	eax, 0x80
  78930f: 83 c8 00                     	or	eax, 0x0
  789312: 74 1d                        	je	0x789331 <epoxy_handle_external_wglMakeCurrent+0x37d131>
  789314: f3 0f 10 87 ac 03 00 00      	movss	xmm0, dword ptr [edi + 0x3ac]
  78931c: e8 3f 7f ca ff               	call	0x431260 <epoxy_handle_external_wglMakeCurrent+0x25060>
  789321: f3 0f 59 87 6c 03 00 00      	mulss	xmm0, dword ptr [edi + 0x36c]
  789329: f3 0f 11 87 6c 03 00 00      	movss	dword ptr [edi + 0x36c], xmm0
  789331: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789337: e8 44 e1 c7 ff               	call	0x407480 <.text+0x6480>
  78933c: 8b c8                        	mov	ecx, eax
  78933e: e8 dd 5b cb ff               	call	0x43ef20 <epoxy_handle_external_wglMakeCurrent+0x32d20>
  789343: 83 f8 37                     	cmp	eax, 0x37
  789346: 0f 85 db 00 00 00            	jne	0x789427 <epoxy_handle_external_wglMakeCurrent+0x37d227>
  78934c: f3 0f 10 05 14 ab ba 00      	movss	xmm0, dword ptr [0xbaab14]
  789354: 0f 2f 87 40 03 00 00         	comiss	xmm0, dword ptr [edi + 0x340]
  78935b: 0f 86 c6 00 00 00            	jbe	0x789427 <epoxy_handle_external_wglMakeCurrent+0x37d227>
  789361: 68 51 02 00 00               	push	0x251
  789366: 8b ce                        	mov	ecx, esi
  789368: c7 87 40 03 00 00 00 00 a0 43	mov	dword ptr [edi + 0x340], 0x43a00000
  789372: e8 79 72 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  789377: 84 c0                        	test	al, al
  789379: 74 3c                        	je	0x7893b7 <epoxy_handle_external_wglMakeCurrent+0x37d1b7>
  78937b: 6a ff                        	push	-0x1
  78937d: 68 51 02 00 00               	push	0x251
  789382: 8b ce                        	mov	ecx, esi
  789384: e8 17 71 1a 00               	call	0x9304a0 <epoxy_handle_external_wglMakeCurrent+0x5242a0>
  789389: 8b cf                        	mov	ecx, edi
  78938b: c7 87 94 1e 00 00 ff ff ff ff	mov	dword ptr [edi + 0x1e94], 0xffffffff
  789395: e8 a6 ee 03 00               	call	0x7c8240 <epoxy_handle_external_wglMakeCurrent+0x3bc040>
  78939a: f3 0f 10 15 c0 ad ba 00      	movss	xmm2, dword ptr [0xbaadc0]
  7893a2: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  7893a5: 6a 00                        	push	0x0
  7893a7: 0f 57 c9                     	xorps	xmm1, xmm1
  7893aa: e8 e1 6a 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  7893af: 50                           	push	eax
  7893b0: 8b cf                        	mov	ecx, edi
  7893b2: e8 99 80 ca ff               	call	0x431450 <epoxy_handle_external_wglMakeCurrent+0x25250>
  7893b7: 68 82 00 00 00               	push	0x82
  7893bc: 8b ce                        	mov	ecx, esi
  7893be: e8 2d 72 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  7893c3: 84 c0                        	test	al, al
  7893c5: 75 10                        	jne	0x7893d7 <epoxy_handle_external_wglMakeCurrent+0x37d1d7>
  7893c7: 68 b5 00 00 00               	push	0xb5
  7893cc: 8b ce                        	mov	ecx, esi
  7893ce: e8 1d 72 1a 00               	call	0x9305f0 <epoxy_handle_external_wglMakeCurrent+0x5243f0>
  7893d3: 84 c0                        	test	al, al
  7893d5: 74 50                        	je	0x789427 <epoxy_handle_external_wglMakeCurrent+0x37d227>
  7893d7: 6a ff                        	push	-0x1
  7893d9: 68 82 00 00 00               	push	0x82
  7893de: 8b ce                        	mov	ecx, esi
  7893e0: c7 87 88 18 00 00 00 00 00 00	mov	dword ptr [edi + 0x1888], 0x0
  7893ea: e8 b1 70 1a 00               	call	0x9304a0 <epoxy_handle_external_wglMakeCurrent+0x5242a0>
  7893ef: 6a ff                        	push	-0x1
  7893f1: 68 b5 00 00 00               	push	0xb5
  7893f6: 8b ce                        	mov	ecx, esi
  7893f8: e8 a3 70 1a 00               	call	0x9304a0 <epoxy_handle_external_wglMakeCurrent+0x5242a0>
  7893fd: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789403: 6a 08                        	push	0x8
  789405: e8 66 a2 f7 ff               	call	0x703670 <epoxy_handle_external_wglMakeCurrent+0x2f7470>
  78940a: f3 0f 10 15 c0 ad ba 00      	movss	xmm2, dword ptr [0xbaadc0]
  789412: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  789415: 6a 00                        	push	0x0
  789417: 0f 57 c9                     	xorps	xmm1, xmm1
  78941a: e8 71 6a 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  78941f: 50                           	push	eax
  789420: 8b cf                        	mov	ecx, edi
  789422: e8 29 80 ca ff               	call	0x431450 <epoxy_handle_external_wglMakeCurrent+0x25250>
  789427: 68 40 b6 c7 00               	push	0xc7b640
  78942c: 8d 8f 54 16 00 00            	lea	ecx, [edi + 0x1654]
  789432: e8 f9 71 28 00               	call	0xa10630 <epoxy_handle_external_wglMakeCurrent+0x604430>
  789437: 84 c0                        	test	al, al
  789439: 0f 84 9b 00 00 00            	je	0x7894da <epoxy_handle_external_wglMakeCurrent+0x37d2da>
  78943f: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  789445: c7 85 b8 fe ff ff 00 00 00 40	mov	dword ptr [ebp - 0x148], 0x40000000
  78944f: e8 4c 6a 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  789454: 8d 95 cc fe ff ff            	lea	edx, [ebp - 0x134]
  78945a: c7 85 e4 fe ff ff 00 00 80 3f	mov	dword ptr [ebp - 0x11c], 0x3f800000
  789464: 8d 8d e4 fe ff ff            	lea	ecx, [ebp - 0x11c]
  78946a: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  789470: e8 fb 36 c9 ff               	call	0x41cb70 <epoxy_handle_external_wglMakeCurrent+0x10970>
  789475: 8d 95 b8 fe ff ff            	lea	edx, [ebp - 0x148]
  78947b: 8b c8                        	mov	ecx, eax
  78947d: e8 fe 32 c8 ff               	call	0x40c780 <epoxy_handle_external_wglMakeCurrent+0x580>
  789482: 8d 8f 54 16 00 00            	lea	ecx, [edi + 0x1654]
  789488: f3 0f 10 00                  	movss	xmm0, dword ptr [eax]
  78948c: 8d 85 a4 fe ff ff            	lea	eax, [ebp - 0x15c]
  789492: f3 0f 59 05 d0 a2 ba 00      	mulss	xmm0, dword ptr [0xbaa2d0]
  78949a: 50                           	push	eax
  78949b: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  7894a3: e8 98 70 28 00               	call	0xa10540 <epoxy_handle_external_wglMakeCurrent+0x604340>
  7894a8: 8d 8f 54 16 00 00            	lea	ecx, [edi + 0x1654]
  7894ae: e8 1d 6a 28 00               	call	0xa0fed0 <epoxy_handle_external_wglMakeCurrent+0x603cd0>
  7894b3: f3 0f 10 05 6c a0 ba 00      	movss	xmm0, dword ptr [0xbaa06c]
  7894bb: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  7894c1: 0f 2f 85 cc fe ff ff         	comiss	xmm0, dword ptr [ebp - 0x134]
  7894c8: 76 10                        	jbe	0x7894da <epoxy_handle_external_wglMakeCurrent+0x37d2da>
  7894ca: 68 40 b6 c7 00               	push	0xc7b640
  7894cf: 8d 8f 54 16 00 00            	lea	ecx, [edi + 0x1654]
  7894d5: e8 d6 3e 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  7894da: 8b cf                        	mov	ecx, edi
  7894dc: e8 bf 05 03 00               	call	0x7b9aa0 <epoxy_handle_external_wglMakeCurrent+0x3ad8a0>
  7894e1: 8a 87 73 01 00 00            	mov	al, byte ptr [edi + 0x173]
  7894e7: 84 c0                        	test	al, al
  7894e9: 0f 84 c6 0b 00 00            	je	0x78a0b5 <epoxy_handle_external_wglMakeCurrent+0x37deb5>
  7894ef: 8b cf                        	mov	ecx, edi
  7894f1: e8 fa 93 ff ff               	call	0x7828f0 <epoxy_handle_external_wglMakeCurrent+0x3766f0>
  7894f6: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7894fc: 8b f0                        	mov	esi, eax
  7894fe: 89 b5 c4 fe ff ff            	mov	dword ptr [ebp - 0x13c], esi
  789504: e8 d7 75 c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  789509: 8b c8                        	mov	ecx, eax
  78950b: e8 20 59 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  789510: 84 c0                        	test	al, al
  789512: 0f 85 2b 02 00 00            	jne	0x789743 <epoxy_handle_external_wglMakeCurrent+0x37d543>
  789518: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78951e: e8 2d f6 c9 ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  789523: 8b c8                        	mov	ecx, eax
  789525: e8 06 59 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  78952a: 84 c0                        	test	al, al
  78952c: 0f 85 11 02 00 00            	jne	0x789743 <epoxy_handle_external_wglMakeCurrent+0x37d543>
  789532: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  789535: 88 85 da fe ff ff            	mov	byte ptr [ebp - 0x126], al
  78953b: e8 20 4f c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  789540: 8b c8                        	mov	ecx, eax
  789542: e8 39 de c7 ff               	call	0x407380 <.text+0x6380>
  789547: 8a 08                        	mov	cl, byte ptr [eax]
  789549: 3a 0e                        	cmp	cl, byte ptr [esi]
  78954b: 75 1a                        	jne	0x789567 <epoxy_handle_external_wglMakeCurrent+0x37d367>
  78954d: 84 c9                        	test	cl, cl
  78954f: 74 12                        	je	0x789563 <epoxy_handle_external_wglMakeCurrent+0x37d363>
  789551: 8a 48 01                     	mov	cl, byte ptr [eax + 0x1]
  789554: 3a 4e 01                     	cmp	cl, byte ptr [esi + 0x1]
  789557: 75 0e                        	jne	0x789567 <epoxy_handle_external_wglMakeCurrent+0x37d367>
  789559: 83 c0 02                     	add	eax, 0x2
  78955c: 83 c6 02                     	add	esi, 0x2
  78955f: 84 c9                        	test	cl, cl
  789561: 75 e4                        	jne	0x789547 <epoxy_handle_external_wglMakeCurrent+0x37d347>
  789563: 33 c0                        	xor	eax, eax
  789565: eb 05                        	jmp	0x78956c <epoxy_handle_external_wglMakeCurrent+0x37d36c>
  789567: 1b c0                        	sbb	eax, eax
  789569: 83 c8 01                     	or	eax, 0x1
  78956c: 85 c0                        	test	eax, eax
  78956e: 0f 84 d6 01 00 00            	je	0x78974a <epoxy_handle_external_wglMakeCurrent+0x37d54a>
  789574: ff b5 c4 fe ff ff            	push	dword ptr [ebp - 0x13c]
  78957a: 8b cf                        	mov	ecx, edi
  78957c: c6 87 71 01 00 00 01         	mov	byte ptr [edi + 0x171], 0x1
  789583: e8 98 28 02 00               	call	0x7abe20 <epoxy_handle_external_wglMakeCurrent+0x39fc20>
  789588: 6a 15                        	push	0x15
  78958a: 8b cf                        	mov	ecx, edi
  78958c: e8 4f 21 04 00               	call	0x7cb6e0 <epoxy_handle_external_wglMakeCurrent+0x3bf4e0>
  789591: 85 c0                        	test	eax, eax
  789593: 7e 1c                        	jle	0x7895b1 <epoxy_handle_external_wglMakeCurrent+0x37d3b1>
  789595: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78959b: e8 10 df c7 ff               	call	0x4074b0 <.text+0x64b0>
  7895a0: 25 03 00 00 80               	and	eax, 0x80000003
  7895a5: 79 05                        	jns	0x7895ac <epoxy_handle_external_wglMakeCurrent+0x37d3ac>
  7895a7: 48                           	dec	eax
  7895a8: 83 c8 fc                     	or	eax, -0x4
  7895ab: 40                           	inc	eax
  7895ac: 83 f8 03                     	cmp	eax, 0x3
  7895af: 74 2a                        	je	0x7895db <epoxy_handle_external_wglMakeCurrent+0x37d3db>
  7895b1: 6a 15                        	push	0x15
  7895b3: 8b cf                        	mov	ecx, edi
  7895b5: e8 26 21 04 00               	call	0x7cb6e0 <epoxy_handle_external_wglMakeCurrent+0x3bf4e0>
  7895ba: 83 f8 01                     	cmp	eax, 0x1
  7895bd: 7e 2d                        	jle	0x7895ec <epoxy_handle_external_wglMakeCurrent+0x37d3ec>
  7895bf: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7895c5: e8 e6 de c7 ff               	call	0x4074b0 <.text+0x64b0>
  7895ca: 25 03 00 00 80               	and	eax, 0x80000003
  7895cf: 79 05                        	jns	0x7895d6 <epoxy_handle_external_wglMakeCurrent+0x37d3d6>
  7895d1: 48                           	dec	eax
  7895d2: 83 c8 fc                     	or	eax, -0x4
  7895d5: 40                           	inc	eax
  7895d6: 83 f8 02                     	cmp	eax, 0x2
  7895d9: 75 11                        	jne	0x7895ec <epoxy_handle_external_wglMakeCurrent+0x37d3ec>
  7895db: 6a 01                        	push	0x1
  7895dd: 6a 01                        	push	0x1
  7895df: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  7895e5: 6a 17                        	push	0x17
  7895e7: e8 44 6d 1a 00               	call	0x930330 <epoxy_handle_external_wglMakeCurrent+0x524130>
  7895ec: 68 40 b6 c7 00               	push	0xc7b640
  7895f1: 8b cf                        	mov	ecx, edi
  7895f3: e8 78 8e 04 00               	call	0x7d2470 <epoxy_handle_external_wglMakeCurrent+0x3c6270>
  7895f8: 68 04 6b b6 00               	push	0xb66b04
  7895fd: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  789600: e8 2b 1e c8 ff               	call	0x40b430 <.text+0xa430>
  789605: 85 c0                        	test	eax, eax
  789607: 74 04                        	je	0x78960d <epoxy_handle_external_wglMakeCurrent+0x37d40d>
  789609: c6 40 74 01                  	mov	byte ptr [eax + 0x74], 0x1
  78960d: 83 bf bc 03 00 00 00         	cmp	dword ptr [edi + 0x3bc], 0x0
  789614: 0f 85 d7 00 00 00            	jne	0x7896f1 <epoxy_handle_external_wglMakeCurrent+0x37d4f1>
  78961a: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  78961e: 0f 85 cd 00 00 00            	jne	0x7896f1 <epoxy_handle_external_wglMakeCurrent+0x37d4f1>
  789624: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  78962b: 0f 85 c0 00 00 00            	jne	0x7896f1 <epoxy_handle_external_wglMakeCurrent+0x37d4f1>
  789631: 8b cf                        	mov	ecx, edi
  789633: e8 28 25 04 00               	call	0x7cbb60 <epoxy_handle_external_wglMakeCurrent+0x3bf960>
  789638: 84 c0                        	test	al, al
  78963a: 0f 85 b1 00 00 00            	jne	0x7896f1 <epoxy_handle_external_wglMakeCurrent+0x37d4f1>
  789640: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789646: 33 f6                        	xor	esi, esi
  789648: 89 b5 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], esi
  78964e: e8 7d e2 c8 ff               	call	0x4178d0 <epoxy_handle_external_wglMakeCurrent+0xb6d0>
  789653: 85 c0                        	test	eax, eax
  789655: 0f 84 6a 00 00 00            	je	0x7896c5 <epoxy_handle_external_wglMakeCurrent+0x37d4c5>
  78965b: 0f 1f 44 00 00               	nop	dword ptr [eax + eax]
  789660: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789666: 56                           	push	esi
  789667: e8 04 e2 c8 ff               	call	0x417870 <epoxy_handle_external_wglMakeCurrent+0xb670>
  78966c: 8b f0                        	mov	esi, eax
  78966e: 3b f7                        	cmp	esi, edi
  789670: 74 37                        	je	0x7896a9 <epoxy_handle_external_wglMakeCurrent+0x37d4a9>
  789672: 8b cf                        	mov	ecx, edi
  789674: e8 a7 e1 c8 ff               	call	0x417820 <epoxy_handle_external_wglMakeCurrent+0xb620>
  789679: 3b f0                        	cmp	esi, eax
  78967b: 74 2c                        	je	0x7896a9 <epoxy_handle_external_wglMakeCurrent+0x37d4a9>
  78967d: 8b ce                        	mov	ecx, esi
  78967f: e8 dc 0b ca ff               	call	0x42a260 <epoxy_handle_external_wglMakeCurrent+0x1e060>
  789684: 85 c0                        	test	eax, eax
  789686: 75 21                        	jne	0x7896a9 <epoxy_handle_external_wglMakeCurrent+0x37d4a9>
  789688: 8b ce                        	mov	ecx, esi
  78968a: e8 e1 db c8 ff               	call	0x417270 <epoxy_handle_external_wglMakeCurrent+0xb070>
  78968f: 85 c0                        	test	eax, eax
  789691: 75 16                        	jne	0x7896a9 <epoxy_handle_external_wglMakeCurrent+0x37d4a9>
  789693: 8b ce                        	mov	ecx, esi
  789695: e8 d6 dd c8 ff               	call	0x417470 <epoxy_handle_external_wglMakeCurrent+0xb270>
  78969a: 84 c0                        	test	al, al
  78969c: 74 53                        	je	0x7896f1 <epoxy_handle_external_wglMakeCurrent+0x37d4f1>
  78969e: 8b ce                        	mov	ecx, esi
  7896a0: e8 bb 24 04 00               	call	0x7cbb60 <epoxy_handle_external_wglMakeCurrent+0x3bf960>
  7896a5: 84 c0                        	test	al, al
  7896a7: 75 48                        	jne	0x7896f1 <epoxy_handle_external_wglMakeCurrent+0x37d4f1>
  7896a9: 8b b5 e4 fe ff ff            	mov	esi, dword ptr [ebp - 0x11c]
  7896af: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7896b5: 46                           	inc	esi
  7896b6: 89 b5 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], esi
  7896bc: e8 0f e2 c8 ff               	call	0x4178d0 <epoxy_handle_external_wglMakeCurrent+0xb6d0>
  7896c1: 3b f0                        	cmp	esi, eax
  7896c3: 72 9b                        	jb	0x789660 <epoxy_handle_external_wglMakeCurrent+0x37d460>
  7896c5: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  7896cb: e8 80 e1 c8 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  7896d0: 8b c8                        	mov	ecx, eax
  7896d2: e8 79 fe c9 ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  7896d7: 84 c0                        	test	al, al
  7896d9: 75 16                        	jne	0x7896f1 <epoxy_handle_external_wglMakeCurrent+0x37d4f1>
  7896db: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  7896e1: e8 4a fa 1c 00               	call	0x959130 <epoxy_handle_external_wglMakeCurrent+0x54cf30>
  7896e6: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  7896ec: e8 8f 0f 1d 00               	call	0x95a680 <epoxy_handle_external_wglMakeCurrent+0x54e480>
  7896f1: 83 7f 2c 01                  	cmp	dword ptr [edi + 0x2c], 0x1
  7896f5: 75 3a                        	jne	0x789731 <epoxy_handle_external_wglMakeCurrent+0x37d531>
  7896f7: 8b cf                        	mov	ecx, edi
  7896f9: e8 02 17 f5 ff               	call	0x6dae00 <epoxy_handle_external_wglMakeCurrent+0x2cec00>
  7896fe: 83 f8 3b                     	cmp	eax, 0x3b
  789701: 75 2e                        	jne	0x789731 <epoxy_handle_external_wglMakeCurrent+0x37d531>
  789703: 8b 8f bc 03 00 00            	mov	ecx, dword ptr [edi + 0x3bc]
  789709: 85 c9                        	test	ecx, ecx
  78970b: 74 24                        	je	0x789731 <epoxy_handle_external_wglMakeCurrent+0x37d531>
  78970d: e8 9e dc c8 ff               	call	0x4173b0 <epoxy_handle_external_wglMakeCurrent+0xb1b0>
  789712: 84 c0                        	test	al, al
  789714: 74 1b                        	je	0x789731 <epoxy_handle_external_wglMakeCurrent+0x37d531>
  789716: 8b 8f bc 03 00 00            	mov	ecx, dword ptr [edi + 0x3bc]
  78971c: e8 9f ca ca ff               	call	0x4361c0 <epoxy_handle_external_wglMakeCurrent+0x29fc0>
  789721: 6a 01                        	push	0x1
  789723: 6a 01                        	push	0x1
  789725: 68 b4 00 00 00               	push	0xb4
  78972a: 8b c8                        	mov	ecx, eax
  78972c: e8 ff 6b 1a 00               	call	0x930330 <epoxy_handle_external_wglMakeCurrent+0x524130>
  789731: 68 40 b6 c7 00               	push	0xc7b640
  789736: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  78973c: e8 6f 3c 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  789741: eb 07                        	jmp	0x78974a <epoxy_handle_external_wglMakeCurrent+0x37d54a>
  789743: c6 85 da fe ff ff 01         	mov	byte ptr [ebp - 0x126], 0x1
  78974a: f3 0f 10 87 6c 03 00 00      	movss	xmm0, dword ptr [edi + 0x36c]
  789752: f3 0f 59 05 04 a3 ba 00      	mulss	xmm0, dword ptr [0xbaa304]
  78975a: f3 0f 11 87 6c 03 00 00      	movss	dword ptr [edi + 0x36c], xmm0
  789762: 8b 87 c0 13 00 00            	mov	eax, dword ptr [edi + 0x13c0]
  789768: 83 f8 13                     	cmp	eax, 0x13
  78976b: 74 05                        	je	0x789772 <epoxy_handle_external_wglMakeCurrent+0x37d572>
  78976d: 83 f8 14                     	cmp	eax, 0x14
  789770: 75 12                        	jne	0x789784 <epoxy_handle_external_wglMakeCurrent+0x37d584>
  789772: 8b cf                        	mov	ecx, edi
  789774: e8 c7 68 f6 ff               	call	0x6f0040 <epoxy_handle_external_wglMakeCurrent+0x2e3e40>
  789779: c6 85 e3 fe ff ff 01         	mov	byte ptr [ebp - 0x11d], 0x1
  789780: 84 c0                        	test	al, al
  789782: 75 07                        	jne	0x78978b <epoxy_handle_external_wglMakeCurrent+0x37d58b>
  789784: c6 85 e3 fe ff ff 00         	mov	byte ptr [ebp - 0x11d], 0x0
  78978b: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  789791: e8 6a e1 c8 ff               	call	0x417900 <epoxy_handle_external_wglMakeCurrent+0xb700>
  789796: 8b c8                        	mov	ecx, eax
  789798: e8 43 a1 fc ff               	call	0x7538e0 <epoxy_handle_external_wglMakeCurrent+0x3476e0>
  78979d: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  7897a3: 85 c0                        	test	eax, eax
  7897a5: 0f 94 85 df fe ff ff         	sete	byte ptr [ebp - 0x121]
  7897ac: e8 af a1 c9 ff               	call	0x423960 <epoxy_handle_external_wglMakeCurrent+0x17760>
  7897b1: 84 c0                        	test	al, al
  7897b3: 74 25                        	je	0x7897da <epoxy_handle_external_wglMakeCurrent+0x37d5da>
  7897b5: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  7897bb: e8 60 e1 c8 ff               	call	0x417920 <epoxy_handle_external_wglMakeCurrent+0xb720>
  7897c0: 57                           	push	edi
  7897c1: 8b c8                        	mov	ecx, eax
  7897c3: e8 a8 14 18 00               	call	0x90ac70 <epoxy_handle_external_wglMakeCurrent+0x4fea70>
  7897c8: 85 c0                        	test	eax, eax
  7897ca: 74 0e                        	je	0x7897da <epoxy_handle_external_wglMakeCurrent+0x37d5da>
  7897cc: 8b c8                        	mov	ecx, eax
  7897ce: e8 7d a5 fc ff               	call	0x753d50 <epoxy_handle_external_wglMakeCurrent+0x347b50>
  7897d3: 85 c0                        	test	eax, eax
  7897d5: 0f 94 c0                     	sete	al
  7897d8: eb 06                        	jmp	0x7897e0 <epoxy_handle_external_wglMakeCurrent+0x37d5e0>
  7897da: 8a 85 df fe ff ff            	mov	al, byte ptr [ebp - 0x121]
  7897e0: 80 bd e3 fe ff ff 00         	cmp	byte ptr [ebp - 0x11d], 0x0
  7897e7: 74 09                        	je	0x7897f2 <epoxy_handle_external_wglMakeCurrent+0x37d5f2>
  7897e9: be 0a 00 00 00               	mov	esi, 0xa
  7897ee: 84 c0                        	test	al, al
  7897f0: 75 05                        	jne	0x7897f7 <epoxy_handle_external_wglMakeCurrent+0x37d5f7>
  7897f2: be 09 00 00 00               	mov	esi, 0x9
  7897f7: 81 bf 80 15 00 00 8d 02 00 00	cmp	dword ptr [edi + 0x1580], 0x28d
  789801: 0f 85 4d 02 00 00            	jne	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  789807: 68 ec a4 b1 00               	push	0xb1a4ec
  78980c: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78980f: e8 bc 0c c8 ff               	call	0x40a4d0 <.text+0x94d0>
  789814: 84 c0                        	test	al, al
  789816: 0f 84 38 02 00 00            	je	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  78981c: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  789822: 6a 00                        	push	0x0
  789824: 6a 00                        	push	0x0
  789826: ff b7 18 16 00 00            	push	dword ptr [edi + 0x1618]
  78982c: 56                           	push	esi
  78982d: e8 ae c9 1c 00               	call	0x9561e0 <epoxy_handle_external_wglMakeCurrent+0x549fe0>
  789832: 84 c0                        	test	al, al
  789834: 0f 84 1a 02 00 00            	je	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  78983a: 68 04 6b b6 00               	push	0xb66b04
  78983f: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  789842: e8 e9 1b c8 ff               	call	0x40b430 <.text+0xa430>
  789847: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  78984d: 85 c0                        	test	eax, eax
  78984f: 0f 84 ff 01 00 00            	je	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  789855: 83 38 00                     	cmp	dword ptr [eax], 0x0
  789858: 0f 84 f6 01 00 00            	je	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  78985e: 80 78 74 00                  	cmp	byte ptr [eax + 0x74], 0x0
  789862: 0f 84 ec 01 00 00            	je	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  789868: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  78986e: e8 0d 66 28 00               	call	0xa0fe80 <epoxy_handle_external_wglMakeCurrent+0x603c80>
  789873: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  789876: e8 e5 4b c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  78987b: 8b 8d b0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x150]
  789881: 8b f0                        	mov	esi, eax
  789883: e8 58 93 cc ff               	call	0x452be0 <epoxy_handle_external_wglMakeCurrent+0x469e0>
  789888: 50                           	push	eax
  789889: 8b ce                        	mov	ecx, esi
  78988b: e8 90 09 c8 ff               	call	0x40a220 <.text+0x9220>
  789890: 89 85 cc fe ff ff            	mov	dword ptr [ebp - 0x134], eax
  789896: 85 c0                        	test	eax, eax
  789898: 0f 84 b6 01 00 00            	je	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  78989e: 80 78 2c 00                  	cmp	byte ptr [eax + 0x2c], 0x0
  7898a2: 0f 84 ac 01 00 00            	je	0x789a54 <epoxy_handle_external_wglMakeCurrent+0x37d854>
  7898a8: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7898ab: e8 b0 4b c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  7898b0: 8b c8                        	mov	ecx, eax
  7898b2: e8 09 db c7 ff               	call	0x4073c0 <.text+0x63c0>
  7898b7: 8b 8d b0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x150]
  7898bd: 8b f0                        	mov	esi, eax
  7898bf: e8 1c 93 cc ff               	call	0x452be0 <epoxy_handle_external_wglMakeCurrent+0x469e0>
  7898c4: 8b 74 86 38                  	mov	esi, dword ptr [esi + 4*eax + 0x38]
  7898c8: 85 f6                        	test	esi, esi
  7898ca: 0f 88 90 00 00 00            	js	0x789960 <epoxy_handle_external_wglMakeCurrent+0x37d760>
  7898d0: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  7898d3: e8 88 4b c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  7898d8: 8b c8                        	mov	ecx, eax
  7898da: e8 e1 da c7 ff               	call	0x4073c0 <.text+0x63c0>
  7898df: c1 e6 04                     	shl	esi, 0x4
  7898e2: 03 70 18                     	add	esi, dword ptr [eax + 0x18]
  7898e5: 8d 47 48                     	lea	eax, [edi + 0x48]
  7898e8: 50                           	push	eax
  7898e9: 68 40 b6 c7 00               	push	0xc7b640
  7898ee: 68 40 b6 c7 00               	push	0xc7b640
  7898f3: ff b5 b0 fe ff ff            	push	dword ptr [ebp - 0x150]
  7898f9: 8d 85 dc fd ff ff            	lea	eax, [ebp - 0x224]
  7898ff: 8b ce                        	mov	ecx, esi
  789901: ff b5 cc fe ff ff            	push	dword ptr [ebp - 0x134]
  789907: 68 40 b6 c7 00               	push	0xc7b640
  78990c: 50                           	push	eax
  78990d: e8 9e 03 c8 ff               	call	0x409cb0 <.text+0x8cb0>
  789912: 8d 85 f4 fd ff ff            	lea	eax, [ebp - 0x20c]
  789918: 50                           	push	eax
  789919: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  78991c: 50                           	push	eax
  78991d: 8d 8d dc fd ff ff            	lea	ecx, [ebp - 0x224]
  789923: e8 f8 6a 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  789928: 8d 8d cc fe ff ff            	lea	ecx, [ebp - 0x134]
  78992e: c7 85 cc fe ff ff 00 00 00 3f	mov	dword ptr [ebp - 0x134], 0x3f000000
  789938: 51                           	push	ecx
  789939: 8d 8d 6c fe ff ff            	lea	ecx, [ebp - 0x194]
  78993f: 51                           	push	ecx
  789940: 8b c8                        	mov	ecx, eax
  789942: e8 99 6b 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  789947: 8b d0                        	mov	edx, eax
  789949: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  78994f: e8 8c 59 ef ff               	call	0x67f2e0 <epoxy_handle_external_wglMakeCurrent+0x2730e0>
  789954: 50                           	push	eax
  789955: 8d 8d 98 fe ff ff            	lea	ecx, [ebp - 0x168]
  78995b: e8 50 3a 05 00               	call	0x7dd3b0 <epoxy_handle_external_wglMakeCurrent+0x3d11b0>
  789960: e8 fb 55 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  789965: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78996b: 50                           	push	eax
  78996c: 6a 02                        	push	0x2
  78996e: 6a 00                        	push	0x0
  789970: 68 40 b6 c7 00               	push	0xc7b640
  789975: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  78997b: 50                           	push	eax
  78997c: 68 90 00 00 00               	push	0x90
  789981: 68 e8 03 00 00               	push	0x3e8
  789986: e8 95 f1 c9 ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  78998b: 8b f8                        	mov	edi, eax
  78998d: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  789993: 50                           	push	eax
  789994: 8b cf                        	mov	ecx, edi
  789996: e8 55 d9 c8 ff               	call	0x4172f0 <epoxy_handle_external_wglMakeCurrent+0xb0f0>
  78999b: 8b cf                        	mov	ecx, edi
  78999d: e8 2e c4 ca ff               	call	0x435dd0 <epoxy_handle_external_wglMakeCurrent+0x29bd0>
  7899a2: 8b f0                        	mov	esi, eax
  7899a4: e8 37 56 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  7899a9: f3 0f 59 05 30 ab ba 00      	mulss	xmm0, dword ptr [0xbaab30]
  7899b1: 51                           	push	ecx
  7899b2: 8b ce                        	mov	ecx, esi
  7899b4: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  7899b9: e8 c2 54 cb ff               	call	0x43ee80 <epoxy_handle_external_wglMakeCurrent+0x32c80>
  7899be: 8b cf                        	mov	ecx, edi
  7899c0: e8 0b c4 ca ff               	call	0x435dd0 <epoxy_handle_external_wglMakeCurrent+0x29bd0>
  7899c5: 8b f0                        	mov	esi, eax
  7899c7: c7 85 cc fe ff ff 00 00 c0 3f	mov	dword ptr [ebp - 0x134], 0x3fc00000
  7899d1: 8d 85 cc fe ff ff            	lea	eax, [ebp - 0x134]
  7899d7: b9 3c 79 c3 00               	mov	ecx, 0xc3793c
  7899dc: 50                           	push	eax
  7899dd: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  7899e0: 50                           	push	eax
  7899e1: e8 fa 6a 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  7899e6: 50                           	push	eax
  7899e7: 8b ce                        	mov	ecx, esi
  7899e9: e8 82 67 c9 ff               	call	0x420170 <epoxy_handle_external_wglMakeCurrent+0x13f70>
  7899ee: 8b 07                        	mov	eax, dword ptr [edi]
  7899f0: 51                           	push	ecx
  7899f1: 8b cf                        	mov	ecx, edi
  7899f3: c7 04 24 00 00 48 43         	mov	dword ptr [esp], 0x43480000
  7899fa: ff 50 40                     	call	dword ptr [eax + 0x40]
  7899fd: 8b 07                        	mov	eax, dword ptr [edi]
  7899ff: 8b cf                        	mov	ecx, edi
  789a01: ff 50 0c                     	call	dword ptr [eax + 0xc]
  789a04: e8 d7 55 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  789a09: f3 0f 59 05 98 a1 ba 00      	mulss	xmm0, dword ptr [0xbaa198]
  789a11: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  789a17: f3 0f 10 15 c0 a4 ba 00      	movss	xmm2, dword ptr [0xbaa4c0]
  789a1f: 51                           	push	ecx
  789a20: f3 0f 58 05 e0 a3 ba 00      	addss	xmm0, dword ptr [0xbaa3e0]
  789a28: 8b cf                        	mov	ecx, edi
  789a2a: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  789a2f: 6a 00                        	push	0x0
  789a31: 6a 02                        	push	0x2
  789a33: 68 dd 01 00 00               	push	0x1dd
  789a38: e8 33 ca f2 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  789a3d: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789a43: 6a 0e                        	push	0xe
  789a45: e8 26 9c f7 ff               	call	0x703670 <epoxy_handle_external_wglMakeCurrent+0x2f7470>
  789a4a: 8b 85 b0 fe ff ff            	mov	eax, dword ptr [ebp - 0x150]
  789a50: c6 40 74 00                  	mov	byte ptr [eax + 0x74], 0x0
  789a54: 83 bf c0 13 00 00 23         	cmp	dword ptr [edi + 0x13c0], 0x23
  789a5b: 8d 77 48                     	lea	esi, [edi + 0x48]
  789a5e: ff b5 c4 fe ff ff            	push	dword ptr [ebp - 0x13c]
  789a64: 89 b5 78 fe ff ff            	mov	dword ptr [ebp - 0x188], esi
  789a6a: 8b ce                        	mov	ecx, esi
  789a6c: 0f 85 2d 01 00 00            	jne	0x789b9f <epoxy_handle_external_wglMakeCurrent+0x37d99f>
  789a72: e8 59 0a c8 ff               	call	0x40a4d0 <.text+0x94d0>
  789a77: 84 c0                        	test	al, al
  789a79: 0f 84 89 04 00 00            	je	0x789f08 <epoxy_handle_external_wglMakeCurrent+0x37dd08>
  789a7f: 8b ce                        	mov	ecx, esi
  789a81: e8 fa 0c c8 ff               	call	0x40a780 <.text+0x9780>
  789a86: 83 f8 13                     	cmp	eax, 0x13
  789a89: 0f 85 79 04 00 00            	jne	0x789f08 <epoxy_handle_external_wglMakeCurrent+0x37dd08>
  789a8f: 8d 8d b0 fe ff ff            	lea	ecx, [ebp - 0x150]
  789a95: e8 86 05 ca ff               	call	0x42a020 <epoxy_handle_external_wglMakeCurrent+0x1de20>
  789a9a: 6a 01                        	push	0x1
  789a9c: 6a 01                        	push	0x1
  789a9e: 8d 8d b0 fe ff ff            	lea	ecx, [ebp - 0x150]
  789aa4: e8 27 3f f1 ff               	call	0x69d9d0 <epoxy_handle_external_wglMakeCurrent+0x2917d0>
  789aa9: 6a 01                        	push	0x1
  789aab: 6a 0c                        	push	0xc
  789aad: 8d 8d b0 fe ff ff            	lea	ecx, [ebp - 0x150]
  789ab3: e8 18 3f f1 ff               	call	0x69d9d0 <epoxy_handle_external_wglMakeCurrent+0x2917d0>
  789ab8: 6a 01                        	push	0x1
  789aba: 6a 0a                        	push	0xa
  789abc: 8d 8d b0 fe ff ff            	lea	ecx, [ebp - 0x150]
  789ac2: e8 09 3f f1 ff               	call	0x69d9d0 <epoxy_handle_external_wglMakeCurrent+0x2917d0>
  789ac7: 33 f6                        	xor	esi, esi
  789ac9: 0f 1f 80 00 00 00 00         	nop	dword ptr [eax]
  789ad0: 8d 8e e0 13 00 00            	lea	ecx, [esi + 0x13e0]
  789ad6: 03 cf                        	add	ecx, edi
  789ad8: e8 73 f5 26 00               	call	0x9f9050 <epoxy_handle_external_wglMakeCurrent+0x5ece50>
  789add: 83 c6 04                     	add	esi, 0x4
  789ae0: 83 fe 10                     	cmp	esi, 0x10
  789ae3: 72 eb                        	jb	0x789ad0 <epoxy_handle_external_wglMakeCurrent+0x37d8d0>
  789ae5: 8d 8f dc 13 00 00            	lea	ecx, [edi + 0x13dc]
  789aeb: e8 60 f5 26 00               	call	0x9f9050 <epoxy_handle_external_wglMakeCurrent+0x5ece50>
  789af0: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789af6: 8d b7 3c 03 00 00            	lea	esi, [edi + 0x33c]
  789afc: e8 6f 7c c9 ff               	call	0x421770 <epoxy_handle_external_wglMakeCurrent+0x15570>
  789b01: 83 f8 2a                     	cmp	eax, 0x2a
  789b04: 75 45                        	jne	0x789b4b <epoxy_handle_external_wglMakeCurrent+0x37d94b>
  789b06: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  789b0c: e8 5f d6 c7 ff               	call	0x407170 <.text+0x6170>
  789b11: 0f 10 05 d0 47 c3 00         	movups	xmm0, xmmword ptr [0xc347d0]
  789b18: 6a 01                        	push	0x1
  789b1a: 6a 00                        	push	0x0
  789b1c: 6a 04                        	push	0x4
  789b1e: 6a 01                        	push	0x1
  789b20: 51                           	push	ecx
  789b21: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  789b28: 57                           	push	edi
  789b29: 50                           	push	eax
  789b2a: 83 ec 10                     	sub	esp, 0x10
  789b2d: 8b c4                        	mov	eax, esp
  789b2f: 51                           	push	ecx
  789b30: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789b36: 0f 11 00                     	movups	xmmword ptr [eax], xmm0
  789b39: c7 04 24 00 00 70 42         	mov	dword ptr [esp], 0x42700000
  789b40: 56                           	push	esi
  789b41: e8 1a 65 f7 ff               	call	0x700060 <epoxy_handle_external_wglMakeCurrent+0x2f3e60>
  789b46: e9 ba 03 00 00               	jmp	0x789f05 <epoxy_handle_external_wglMakeCurrent+0x37dd05>
  789b4b: f3 0f 10 1d 04 a9 ba 00      	movss	xmm3, dword ptr [0xbaa904]
  789b53: 8d 87 b8 01 00 00            	lea	eax, [edi + 0x1b8]
  789b59: 51                           	push	ecx
  789b5a: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  789b61: ba 06 00 00 00               	mov	edx, 0x6
  789b66: 68 40 b6 c7 00               	push	0xc7b640
  789b6b: 50                           	push	eax
  789b6c: 8d 85 b0 fe ff ff            	lea	eax, [ebp - 0x150]
  789b72: 8b ce                        	mov	ecx, esi
  789b74: 57                           	push	edi
  789b75: 50                           	push	eax
  789b76: e8 35 96 f2 ff               	call	0x6b31b0 <epoxy_handle_external_wglMakeCurrent+0x2a6fb0>
  789b7b: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  789b83: 83 c4 10                     	add	esp, 0x10
  789b86: 8b cf                        	mov	ecx, edi
  789b88: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  789b8f: 6a 00                        	push	0x0
  789b91: 6a 02                        	push	0x2
  789b93: 6a 1b                        	push	0x1b
  789b95: e8 d6 c8 f2 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  789b9a: e9 66 03 00 00               	jmp	0x789f05 <epoxy_handle_external_wglMakeCurrent+0x37dd05>
  789b9f: e8 2c 09 c8 ff               	call	0x40a4d0 <.text+0x94d0>
  789ba4: 84 c0                        	test	al, al
  789ba6: 0f 84 5c 03 00 00            	je	0x789f08 <epoxy_handle_external_wglMakeCurrent+0x37dd08>
  789bac: 68 bc 38 b6 00               	push	0xb638bc
  789bb1: 8b ce                        	mov	ecx, esi
  789bb3: e8 78 14 c8 ff               	call	0x40b030 <.text+0xa030>
  789bb8: 84 c0                        	test	al, al
  789bba: 0f 84 48 03 00 00            	je	0x789f08 <epoxy_handle_external_wglMakeCurrent+0x37dd08>
  789bc0: 8b cf                        	mov	ecx, edi
  789bc2: e8 39 1b 05 00               	call	0x7db700 <epoxy_handle_external_wglMakeCurrent+0x3cf500>
  789bc7: 84 c0                        	test	al, al
  789bc9: 75 25                        	jne	0x789bf0 <epoxy_handle_external_wglMakeCurrent+0x37d9f0>
  789bcb: 8b cf                        	mov	ecx, edi
  789bcd: e8 fe fe 03 00               	call	0x7c9ad0 <epoxy_handle_external_wglMakeCurrent+0x3bd8d0>
  789bd2: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  789bda: 51                           	push	ecx
  789bdb: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  789be0: 8b cf                        	mov	ecx, edi
  789be2: 6a 00                        	push	0x0
  789be4: 6a 02                        	push	0x2
  789be6: 68 d9 00 00 00               	push	0xd9
  789beb: e8 80 c8 f2 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  789bf0: 83 bf c0 13 00 00 19         	cmp	dword ptr [edi + 0x13c0], 0x19
  789bf7: 0f 85 0b 03 00 00            	jne	0x789f08 <epoxy_handle_external_wglMakeCurrent+0x37dd08>
  789bfd: f3 0f 10 0d 1c a8 ba 00      	movss	xmm1, dword ptr [0xbaa81c]
  789c05: 8d b7 3c 03 00 00            	lea	esi, [edi + 0x33c]
  789c0b: 0f 57 d2                     	xorps	xmm2, xmm2
  789c0e: 89 b5 b8 fe ff ff            	mov	dword ptr [ebp - 0x148], esi
  789c14: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  789c17: e8 74 62 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  789c1c: 50                           	push	eax
  789c1d: 8d 85 6c fe ff ff            	lea	eax, [ebp - 0x194]
  789c23: 8b ce                        	mov	ecx, esi
  789c25: 50                           	push	eax
  789c26: e8 55 68 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  789c2b: 6a 00                        	push	0x0
  789c2d: 6a 01                        	push	0x1
  789c2f: 57                           	push	edi
  789c30: 51                           	push	ecx
  789c31: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789c37: c7 04 24 00 00 f0 42         	mov	dword ptr [esp], 0x42f00000
  789c3e: 50                           	push	eax
  789c3f: e8 1c a7 f7 ff               	call	0x704360 <epoxy_handle_external_wglMakeCurrent+0x2f8160>
  789c44: e8 17 53 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  789c49: f3 0f 10 0d 1c a8 ba 00      	movss	xmm1, dword ptr [0xbaa81c]
  789c51: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  789c54: 0f 57 d2                     	xorps	xmm2, xmm2
  789c57: 8b f0                        	mov	esi, eax
  789c59: e8 32 62 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  789c5e: 50                           	push	eax
  789c5f: 8d 85 6c fe ff ff            	lea	eax, [ebp - 0x194]
  789c65: 50                           	push	eax
  789c66: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  789c6c: e8 0f 68 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  789c71: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789c77: 56                           	push	esi
  789c78: 6a 00                        	push	0x0
  789c7a: 6a 00                        	push	0x0
  789c7c: 68 40 b6 c7 00               	push	0xc7b640
  789c81: 50                           	push	eax
  789c82: 6a 00                        	push	0x0
  789c84: 68 f5 00 00 00               	push	0xf5
  789c89: e8 92 ee c9 ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  789c8e: c7 85 e4 fe ff ff 06 00 00 00	mov	dword ptr [ebp - 0x11c], 0x6
  789c98: e8 c3 52 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  789c9d: f3 0f 10 0d 50 ad ba 00      	movss	xmm1, dword ptr [0xbaad50]
  789ca5: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  789ca8: 0f 57 d2                     	xorps	xmm2, xmm2
  789cab: 8b f8                        	mov	edi, eax
  789cad: e8 de 61 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  789cb2: 8b f0                        	mov	esi, eax
  789cb4: e8 27 53 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  789cb9: f3 0f 59 05 04 a9 ba 00      	mulss	xmm0, dword ptr [0xbaa904]
  789cc1: 8d 85 6c fe ff ff            	lea	eax, [ebp - 0x194]
  789cc7: 51                           	push	ecx
  789cc8: 8b ce                        	mov	ecx, esi
  789cca: f3 0f 5c 05 7c a8 ba 00      	subss	xmm0, dword ptr [0xbaa87c]
  789cd2: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  789cd7: 50                           	push	eax
  789cd8: e8 03 66 28 00               	call	0xa102e0 <epoxy_handle_external_wglMakeCurrent+0x6040e0>
  789cdd: 8b f0                        	mov	esi, eax
  789cdf: e8 fc 52 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  789ce4: f3 0f 59 05 7c a8 ba 00      	mulss	xmm0, dword ptr [0xbaa87c]
  789cec: 8d 85 cc fe ff ff            	lea	eax, [ebp - 0x134]
  789cf2: 50                           	push	eax
  789cf3: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  789cf9: 8b ce                        	mov	ecx, esi
  789cfb: 50                           	push	eax
  789cfc: f3 0f 58 05 a4 a7 ba 00      	addss	xmm0, dword ptr [0xbaa7a4]
  789d04: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  789d0c: e8 cf 67 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  789d11: f3 0f 10 0d 5c a7 ba 00      	movss	xmm1, dword ptr [0xbaa75c]
  789d19: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  789d1f: 0f 57 d2                     	xorps	xmm2, xmm2
  789d22: 8b f0                        	mov	esi, eax
  789d24: e8 67 61 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  789d29: 8b 8d b8 fe ff ff            	mov	ecx, dword ptr [ebp - 0x148]
  789d2f: 50                           	push	eax
  789d30: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  789d36: 50                           	push	eax
  789d37: e8 44 67 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  789d3c: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789d42: 57                           	push	edi
  789d43: 6a 01                        	push	0x1
  789d45: 6a 00                        	push	0x0
  789d47: 56                           	push	esi
  789d48: 50                           	push	eax
  789d49: 6a 63                        	push	0x63
  789d4b: 68 e8 03 00 00               	push	0x3e8
  789d50: e8 cb ed c9 ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  789d55: 8b f8                        	mov	edi, eax
  789d57: 8b cf                        	mov	ecx, edi
  789d59: e8 c2 d5 c8 ff               	call	0x417320 <epoxy_handle_external_wglMakeCurrent+0xb120>
  789d5e: 8b f0                        	mov	esi, eax
  789d60: e8 7b 52 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  789d65: f3 0f 59 05 28 a5 ba 00      	mulss	xmm0, dword ptr [0xbaa528]
  789d6d: 8d 85 a4 fe ff ff            	lea	eax, [ebp - 0x15c]
  789d73: 50                           	push	eax
  789d74: 8d 85 90 fe ff ff            	lea	eax, [ebp - 0x170]
  789d7a: 8b ce                        	mov	ecx, esi
  789d7c: 50                           	push	eax
  789d7d: f3 0f 58 05 54 a4 ba 00      	addss	xmm0, dword ptr [0xbaa454]
  789d85: f3 0f 11 85 a4 fe ff ff      	movss	dword ptr [ebp - 0x15c], xmm0
  789d8d: e8 4e 67 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  789d92: 50                           	push	eax
  789d93: 8b cf                        	mov	ecx, edi
  789d95: e8 16 3c ca ff               	call	0x42d9b0 <epoxy_handle_external_wglMakeCurrent+0x217b0>
  789d9a: 8b cf                        	mov	ecx, edi
  789d9c: e8 2f c0 ca ff               	call	0x435dd0 <epoxy_handle_external_wglMakeCurrent+0x29bd0>
  789da1: f3 0f 10 1d d4 a1 ba 00      	movss	xmm3, dword ptr [0xbaa1d4]
  789da9: 8b f0                        	mov	esi, eax
  789dab: f3 0f 10 15 20 a2 ba 00      	movss	xmm2, dword ptr [0xbaa220]
  789db3: f3 0f 10 0d 80 a2 ba 00      	movss	xmm1, dword ptr [0xbaa280]
  789dbb: 51                           	push	ecx
  789dbc: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  789dc2: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  789dc9: e8 22 9b c9 ff               	call	0x4238f0 <epoxy_handle_external_wglMakeCurrent+0x176f0>
  789dce: 50                           	push	eax
  789dcf: 8b ce                        	mov	ecx, esi
  789dd1: e8 fa d5 c7 ff               	call	0x4073d0 <.text+0x63d0>
  789dd6: 8b 07                        	mov	eax, dword ptr [edi]
  789dd8: 8b cf                        	mov	ecx, edi
  789dda: ff 50 0c                     	call	dword ptr [eax + 0xc]
  789ddd: 83 ad e4 fe ff ff 01         	sub	dword ptr [ebp - 0x11c], 0x1
  789de4: 0f 85 ae fe ff ff            	jne	0x789c98 <epoxy_handle_external_wglMakeCurrent+0x37da98>
  789dea: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  789df0: 33 c0                        	xor	eax, eax
  789df2: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  789df8: 39 87 54 1f 00 00            	cmp	dword ptr [edi + 0x1f54], eax
  789dfe: 0f 8e 01 01 00 00            	jle	0x789f05 <epoxy_handle_external_wglMakeCurrent+0x37dd05>
  789e04: 83 f8 13                     	cmp	eax, 0x13
  789e07: 0f 8d f8 00 00 00            	jge	0x789f05 <epoxy_handle_external_wglMakeCurrent+0x37dd05>
  789e0d: e8 4e 51 f6 ff               	call	0x6eef60 <epoxy_handle_external_wglMakeCurrent+0x2e2d60>
  789e12: f3 0f 10 0d 50 ad ba 00      	movss	xmm1, dword ptr [0xbaad50]
  789e1a: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  789e1d: 0f 57 d2                     	xorps	xmm2, xmm2
  789e20: 8b f8                        	mov	edi, eax
  789e22: e8 69 60 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  789e27: 8b f0                        	mov	esi, eax
  789e29: e8 b2 51 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  789e2e: f3 0f 59 05 04 a9 ba 00      	mulss	xmm0, dword ptr [0xbaa904]
  789e36: 8d 85 6c fe ff ff            	lea	eax, [ebp - 0x194]
  789e3c: 51                           	push	ecx
  789e3d: 8b ce                        	mov	ecx, esi
  789e3f: f3 0f 5c 05 7c a8 ba 00      	subss	xmm0, dword ptr [0xbaa87c]
  789e47: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  789e4c: 50                           	push	eax
  789e4d: e8 8e 64 28 00               	call	0xa102e0 <epoxy_handle_external_wglMakeCurrent+0x6040e0>
  789e52: 8b f0                        	mov	esi, eax
  789e54: e8 87 51 ef ff               	call	0x67efe0 <epoxy_handle_external_wglMakeCurrent+0x272de0>
  789e59: f3 0f 59 05 a4 a7 ba 00      	mulss	xmm0, dword ptr [0xbaa7a4]
  789e61: 8d 85 cc fe ff ff            	lea	eax, [ebp - 0x134]
  789e67: 50                           	push	eax
  789e68: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  789e6e: 8b ce                        	mov	ecx, esi
  789e70: 50                           	push	eax
  789e71: f3 0f 58 05 fc a6 ba 00      	addss	xmm0, dword ptr [0xbaa6fc]
  789e79: f3 0f 11 85 cc fe ff ff      	movss	dword ptr [ebp - 0x134], xmm0
  789e81: e8 5a 66 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  789e86: f3 0f 10 0d 5c a7 ba 00      	movss	xmm1, dword ptr [0xbaa75c]
  789e8e: 8d 8d 80 fe ff ff            	lea	ecx, [ebp - 0x180]
  789e94: 0f 57 d2                     	xorps	xmm2, xmm2
  789e97: 8b f0                        	mov	esi, eax
  789e99: e8 f2 5f 28 00               	call	0xa0fe90 <epoxy_handle_external_wglMakeCurrent+0x603c90>
  789e9e: 8b 8d b8 fe ff ff            	mov	ecx, dword ptr [ebp - 0x148]
  789ea4: 50                           	push	eax
  789ea5: 8d 85 88 fe ff ff            	lea	eax, [ebp - 0x178]
  789eab: 50                           	push	eax
  789eac: e8 cf 65 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  789eb1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789eb7: 57                           	push	edi
  789eb8: 6a 00                        	push	0x0
  789eba: 6a 00                        	push	0x0
  789ebc: 56                           	push	esi
  789ebd: 50                           	push	eax
  789ebe: 6a 2a                        	push	0x2a
  789ec0: 6a 05                        	push	0x5
  789ec2: e8 59 ec c9 ff               	call	0x428b20 <epoxy_handle_external_wglMakeCurrent+0x1c920>
  789ec7: ff b5 d4 fe ff ff            	push	dword ptr [ebp - 0x12c]
  789ecd: 8b f0                        	mov	esi, eax
  789ecf: 8b ce                        	mov	ecx, esi
  789ed1: e8 1a 7b e2 ff               	call	0x5b19f0 <epoxy_handle_external_wglMakeCurrent+0x1a57f0>
  789ed6: 8b 16                        	mov	edx, dword ptr [esi]
  789ed8: 8b ce                        	mov	ecx, esi
  789eda: ff 52 0c                     	call	dword ptr [edx + 0xc]
  789edd: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  789ee3: 8b cf                        	mov	ecx, edi
  789ee5: 6a ff                        	push	-0x1
  789ee7: e8 f4 c6 04 00               	call	0x7d65e0 <epoxy_handle_external_wglMakeCurrent+0x3ca3e0>
  789eec: 8b 85 d4 fe ff ff            	mov	eax, dword ptr [ebp - 0x12c]
  789ef2: 40                           	inc	eax
  789ef3: 89 85 d4 fe ff ff            	mov	dword ptr [ebp - 0x12c], eax
  789ef9: 3b 87 54 1f 00 00            	cmp	eax, dword ptr [edi + 0x1f54]
  789eff: 0f 8c ff fe ff ff            	jl	0x789e04 <epoxy_handle_external_wglMakeCurrent+0x37dc04>
  789f05: 8d 77 48                     	lea	esi, [edi + 0x48]
  789f08: 80 bd da fe ff ff 00         	cmp	byte ptr [ebp - 0x126], 0x0
  789f0f: 0f 85 7e 01 00 00            	jne	0x78a093 <epoxy_handle_external_wglMakeCurrent+0x37de93>
  789f15: ff b5 c4 fe ff ff            	push	dword ptr [ebp - 0x13c]
  789f1b: 8b ce                        	mov	ecx, esi
  789f1d: e8 ae 05 c8 ff               	call	0x40a4d0 <.text+0x94d0>
  789f22: 84 c0                        	test	al, al
  789f24: 74 15                        	je	0x789f3b <epoxy_handle_external_wglMakeCurrent+0x37dd3b>
  789f26: 8b ce                        	mov	ecx, esi
  789f28: e8 53 08 c8 ff               	call	0x40a780 <.text+0x9780>
  789f2d: 83 f8 08                     	cmp	eax, 0x8
  789f30: 7d 1d                        	jge	0x789f4f <epoxy_handle_external_wglMakeCurrent+0x37dd4f>
  789f32: 83 bf c0 13 00 00 23         	cmp	dword ptr [edi + 0x13c0], 0x23
  789f39: 74 14                        	je	0x789f4f <epoxy_handle_external_wglMakeCurrent+0x37dd4f>
  789f3b: 68 ec a4 b1 00               	push	0xb1a4ec
  789f40: 8b ce                        	mov	ecx, esi
  789f42: e8 09 06 c8 ff               	call	0x40a550 <.text+0x9550>
  789f47: 84 c0                        	test	al, al
  789f49: 0f 84 44 01 00 00            	je	0x78a093 <epoxy_handle_external_wglMakeCurrent+0x37de93>
  789f4f: 8d b7 68 1e 00 00            	lea	esi, [edi + 0x1e68]
  789f55: 8b ce                        	mov	ecx, esi
  789f57: 89 b5 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], esi
  789f5d: e8 3e 24 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  789f62: 85 c0                        	test	eax, eax
  789f64: 0f 84 29 01 00 00            	je	0x78a093 <epoxy_handle_external_wglMakeCurrent+0x37de93>
  789f6a: 8b ce                        	mov	ecx, esi
  789f6c: e8 2f 24 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  789f71: 80 b8 73 01 00 00 00         	cmp	byte ptr [eax + 0x173], 0x0
  789f78: 0f 85 15 01 00 00            	jne	0x78a093 <epoxy_handle_external_wglMakeCurrent+0x37de93>
  789f7e: 8b ce                        	mov	ecx, esi
  789f80: e8 1b 24 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  789f85: 8d 8f 68 1e 00 00            	lea	ecx, [edi + 0x1e68]
  789f8b: 8b f0                        	mov	esi, eax
  789f8d: e8 0e 24 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  789f92: 8b c8                        	mov	ecx, eax
  789f94: e8 57 89 ff ff               	call	0x7828f0 <epoxy_handle_external_wglMakeCurrent+0x3766f0>
  789f99: 50                           	push	eax
  789f9a: 8d 4e 48                     	lea	ecx, [esi + 0x48]
  789f9d: e8 2e 05 c8 ff               	call	0x40a4d0 <.text+0x94d0>
  789fa2: 84 c0                        	test	al, al
  789fa4: 0f 85 e9 00 00 00            	jne	0x78a093 <epoxy_handle_external_wglMakeCurrent+0x37de93>
  789faa: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  789fb0: e8 ab d8 c8 ff               	call	0x417860 <epoxy_handle_external_wglMakeCurrent+0xb660>
  789fb5: 8b c8                        	mov	ecx, eax
  789fb7: e8 d4 59 23 00               	call	0x9bf990 <epoxy_handle_external_wglMakeCurrent+0x5b3790>
  789fbc: 84 c0                        	test	al, al
  789fbe: 74 3c                        	je	0x789ffc <epoxy_handle_external_wglMakeCurrent+0x37ddfc>
  789fc0: 8b b5 b0 fe ff ff            	mov	esi, dword ptr [ebp - 0x150]
  789fc6: 8b ce                        	mov	ecx, esi
  789fc8: e8 d3 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  789fcd: 8b c8                        	mov	ecx, eax
  789fcf: e8 4c 03 ca ff               	call	0x42a320 <epoxy_handle_external_wglMakeCurrent+0x1e120>
  789fd4: 84 c0                        	test	al, al
  789fd6: 0f 85 b7 00 00 00            	jne	0x78a093 <epoxy_handle_external_wglMakeCurrent+0x37de93>
  789fdc: 8b ce                        	mov	ecx, esi
  789fde: e8 bd 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  789fe3: 8b f8                        	mov	edi, eax
  789fe5: 8b 0f                        	mov	ecx, dword ptr [edi]
  789fe7: 8b 71 24                     	mov	esi, dword ptr [ecx + 0x24]
  789fea: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  789fed: e8 7e bc ca ff               	call	0x435c70 <epoxy_handle_external_wglMakeCurrent+0x29a70>
  789ff2: 50                           	push	eax
  789ff3: 8b cf                        	mov	ecx, edi
  789ff5: ff d6                        	call	esi
  789ff7: e9 97 00 00 00               	jmp	0x78a093 <epoxy_handle_external_wglMakeCurrent+0x37de93>
  789ffc: 8b b7 a8 16 00 00            	mov	esi, dword ptr [edi + 0x16a8]
  78a002: 8b 8d b0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x150]
  78a008: 8b bf ac 16 00 00            	mov	edi, dword ptr [edi + 0x16ac]
  78a00e: e8 8d 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78a013: 8b 8d b0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x150]
  78a019: 89 b0 a8 16 00 00            	mov	dword ptr [eax + 0x16a8], esi
  78a01f: 89 b8 ac 16 00 00            	mov	dword ptr [eax + 0x16ac], edi
  78a025: 8b 85 d0 fe ff ff            	mov	eax, dword ptr [ebp - 0x130]
  78a02b: 05 7c 16 00 00               	add	eax, 0x167c
  78a030: 50                           	push	eax
  78a031: e8 6a 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78a036: 8d 88 7c 16 00 00            	lea	ecx, [eax + 0x167c]
  78a03c: e8 1f f9 d0 ff               	call	0x499960 <epoxy_handle_external_wglMakeCurrent+0x8d760>
  78a041: 8b 8d b0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x150]
  78a047: e8 54 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78a04c: 8b f8                        	mov	edi, eax
  78a04e: 8b 0f                        	mov	ecx, dword ptr [edi]
  78a050: 8b 71 24                     	mov	esi, dword ptr [ecx + 0x24]
  78a053: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  78a056: e8 15 bc ca ff               	call	0x435c70 <epoxy_handle_external_wglMakeCurrent+0x29a70>
  78a05b: 50                           	push	eax
  78a05c: 8b cf                        	mov	ecx, edi
  78a05e: ff d6                        	call	esi
  78a060: 8b bd b0 fe ff ff            	mov	edi, dword ptr [ebp - 0x150]
  78a066: 8b cf                        	mov	ecx, edi
  78a068: e8 33 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78a06d: 8b cf                        	mov	ecx, edi
  78a06f: c6 80 71 01 00 00 01         	mov	byte ptr [eax + 0x171], 0x1
  78a076: e8 25 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78a07b: 8b cf                        	mov	ecx, edi
  78a07d: 8b f0                        	mov	esi, eax
  78a07f: e8 1c 23 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78a084: 8b c8                        	mov	ecx, eax
  78a086: e8 65 88 ff ff               	call	0x7828f0 <epoxy_handle_external_wglMakeCurrent+0x3766f0>
  78a08b: 50                           	push	eax
  78a08c: 8b ce                        	mov	ecx, esi
  78a08e: e8 8d 1d 02 00               	call	0x7abe20 <epoxy_handle_external_wglMakeCurrent+0x39fc20>
  78a093: ff b5 c4 fe ff ff            	push	dword ptr [ebp - 0x13c]
  78a099: 8b 8d 78 fe ff ff            	mov	ecx, dword ptr [ebp - 0x188]
  78a09f: e8 ac 04 c8 ff               	call	0x40a550 <.text+0x9550>
  78a0a4: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  78a0aa: 84 c0                        	test	al, al
  78a0ac: 74 07                        	je	0x78a0b5 <epoxy_handle_external_wglMakeCurrent+0x37deb5>
  78a0ae: c6 87 71 01 00 00 00         	mov	byte ptr [edi + 0x171], 0x0
  78a0b5: 8b 87 68 01 00 00            	mov	eax, dword ptr [edi + 0x168]
  78a0bb: 25 00 40 00 00               	and	eax, 0x4000
  78a0c0: 83 c8 00                     	or	eax, 0x0
  78a0c3: 0f 85 c7 01 00 00            	jne	0x78a290 <epoxy_handle_external_wglMakeCurrent+0x37e090>
  78a0c9: 50                           	push	eax
  78a0ca: 68 77 01 00 00               	push	0x177
  78a0cf: 8b cf                        	mov	ecx, edi
  78a0d1: e8 0a 66 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  78a0d6: 84 c0                        	test	al, al
  78a0d8: 74 44                        	je	0x78a11e <epoxy_handle_external_wglMakeCurrent+0x37df1e>
  78a0da: 68 ec a4 b1 00               	push	0xb1a4ec
  78a0df: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78a0e2: e8 59 22 c8 ff               	call	0x40c340 <epoxy_handle_external_wglMakeCurrent+0x140>
  78a0e7: c7 45 fc 13 00 00 00         	mov	dword ptr [ebp - 0x4], 0x13
  78a0ee: 8b cf                        	mov	ecx, edi
  78a0f0: 8b 85 a8 fe ff ff            	mov	eax, dword ptr [ebp - 0x158]
  78a0f6: 83 c8 02                     	or	eax, 0x2
  78a0f9: 89 85 a8 fe ff ff            	mov	dword ptr [ebp - 0x158], eax
  78a0ff: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  78a105: 8d 45 ac                     	lea	eax, [ebp - 0x54]
  78a108: 50                           	push	eax
  78a109: 68 77 01 00 00               	push	0x177
  78a10e: e8 6d 35 02 00               	call	0x7ad680 <epoxy_handle_external_wglMakeCurrent+0x3a1480>
  78a113: c6 85 df fe ff ff 01         	mov	byte ptr [ebp - 0x121], 0x1
  78a11a: 84 c0                        	test	al, al
  78a11c: 75 07                        	jne	0x78a125 <epoxy_handle_external_wglMakeCurrent+0x37df25>
  78a11e: c6 85 df fe ff ff 00         	mov	byte ptr [ebp - 0x121], 0x0
  78a125: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  78a12c: 8b 85 a8 fe ff ff            	mov	eax, dword ptr [ebp - 0x158]
  78a132: a8 02                        	test	al, 0x2
  78a134: 74 11                        	je	0x78a147 <epoxy_handle_external_wglMakeCurrent+0x37df47>
  78a136: 83 e0 fd                     	and	eax, -0x3
  78a139: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78a13c: 89 85 a8 fe ff ff            	mov	dword ptr [ebp - 0x158], eax
  78a142: e8 d9 1d c8 ff               	call	0x40bf20 <.text+0xaf20>
  78a147: 80 bd df fe ff ff 00         	cmp	byte ptr [ebp - 0x121], 0x0
  78a14e: 74 0c                        	je	0x78a15c <epoxy_handle_external_wglMakeCurrent+0x37df5c>
  78a150: 68 77 01 00 00               	push	0x177
  78a155: 8b cf                        	mov	ecx, edi
  78a157: e8 44 34 02 00               	call	0x7ad5a0 <epoxy_handle_external_wglMakeCurrent+0x3a13a0>
  78a15c: 6a 00                        	push	0x0
  78a15e: 68 8f 01 00 00               	push	0x18f
  78a163: 8b cf                        	mov	ecx, edi
  78a165: e8 76 65 fe ff               	call	0x7706e0 <epoxy_handle_external_wglMakeCurrent+0x3644e0>
  78a16a: 84 c0                        	test	al, al
  78a16c: 74 44                        	je	0x78a1b2 <epoxy_handle_external_wglMakeCurrent+0x37dfb2>
  78a16e: 68 ec a4 b1 00               	push	0xb1a4ec
  78a173: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78a176: e8 c5 21 c8 ff               	call	0x40c340 <epoxy_handle_external_wglMakeCurrent+0x140>
  78a17b: c7 45 fc 14 00 00 00         	mov	dword ptr [ebp - 0x4], 0x14
  78a182: 8b cf                        	mov	ecx, edi
  78a184: 8b 85 a8 fe ff ff            	mov	eax, dword ptr [ebp - 0x158]
  78a18a: 83 c8 04                     	or	eax, 0x4
  78a18d: 89 85 a8 fe ff ff            	mov	dword ptr [ebp - 0x158], eax
  78a193: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  78a199: 8d 45 ac                     	lea	eax, [ebp - 0x54]
  78a19c: 50                           	push	eax
  78a19d: 68 8f 01 00 00               	push	0x18f
  78a1a2: e8 d9 34 02 00               	call	0x7ad680 <epoxy_handle_external_wglMakeCurrent+0x3a1480>
  78a1a7: c6 85 df fe ff ff 01         	mov	byte ptr [ebp - 0x121], 0x1
  78a1ae: 84 c0                        	test	al, al
  78a1b0: 75 07                        	jne	0x78a1b9 <epoxy_handle_external_wglMakeCurrent+0x37dfb9>
  78a1b2: c6 85 df fe ff ff 00         	mov	byte ptr [ebp - 0x121], 0x0
  78a1b9: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  78a1c0: 8b 85 a8 fe ff ff            	mov	eax, dword ptr [ebp - 0x158]
  78a1c6: a8 04                        	test	al, 0x4
  78a1c8: 74 11                        	je	0x78a1db <epoxy_handle_external_wglMakeCurrent+0x37dfdb>
  78a1ca: 83 e0 fb                     	and	eax, -0x5
  78a1cd: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78a1d0: 89 85 a8 fe ff ff            	mov	dword ptr [ebp - 0x158], eax
  78a1d6: e8 45 1d c8 ff               	call	0x40bf20 <.text+0xaf20>
  78a1db: 80 bd df fe ff ff 00         	cmp	byte ptr [ebp - 0x121], 0x0
  78a1e2: 74 0c                        	je	0x78a1f0 <epoxy_handle_external_wglMakeCurrent+0x37dff0>
  78a1e4: 68 8f 01 00 00               	push	0x18f
  78a1e9: 8b cf                        	mov	ecx, edi
  78a1eb: e8 b0 33 02 00               	call	0x7ad5a0 <epoxy_handle_external_wglMakeCurrent+0x3a13a0>
  78a1f0: 8d 8f 08 15 00 00            	lea	ecx, [edi + 0x1508]
  78a1f6: 6a 75                        	push	0x75
  78a1f8: e8 83 64 1a 00               	call	0x930680 <epoxy_handle_external_wglMakeCurrent+0x524480>
  78a1fd: 84 c0                        	test	al, al
  78a1ff: 74 41                        	je	0x78a242 <epoxy_handle_external_wglMakeCurrent+0x37e042>
  78a201: 68 ec a4 b1 00               	push	0xb1a4ec
  78a206: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78a209: e8 32 21 c8 ff               	call	0x40c340 <epoxy_handle_external_wglMakeCurrent+0x140>
  78a20e: c7 45 fc 15 00 00 00         	mov	dword ptr [ebp - 0x4], 0x15
  78a215: 8b cf                        	mov	ecx, edi
  78a217: 8b 85 a8 fe ff ff            	mov	eax, dword ptr [ebp - 0x158]
  78a21d: 83 c8 08                     	or	eax, 0x8
  78a220: 89 85 a8 fe ff ff            	mov	dword ptr [ebp - 0x158], eax
  78a226: 89 85 b0 fe ff ff            	mov	dword ptr [ebp - 0x150], eax
  78a22c: 8d 45 ac                     	lea	eax, [ebp - 0x54]
  78a22f: 50                           	push	eax
  78a230: 6a 75                        	push	0x75
  78a232: e8 e9 34 02 00               	call	0x7ad720 <epoxy_handle_external_wglMakeCurrent+0x3a1520>
  78a237: c6 85 df fe ff ff 01         	mov	byte ptr [ebp - 0x121], 0x1
  78a23e: 84 c0                        	test	al, al
  78a240: 75 07                        	jne	0x78a249 <epoxy_handle_external_wglMakeCurrent+0x37e049>
  78a242: c6 85 df fe ff ff 00         	mov	byte ptr [ebp - 0x121], 0x0
  78a249: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  78a250: 8b 85 a8 fe ff ff            	mov	eax, dword ptr [ebp - 0x158]
  78a256: a8 08                        	test	al, 0x8
  78a258: 74 08                        	je	0x78a262 <epoxy_handle_external_wglMakeCurrent+0x37e062>
  78a25a: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78a25d: e8 be 1c c8 ff               	call	0x40bf20 <.text+0xaf20>
  78a262: 80 bd df fe ff ff 00         	cmp	byte ptr [ebp - 0x121], 0x0
  78a269: 74 25                        	je	0x78a290 <epoxy_handle_external_wglMakeCurrent+0x37e090>
  78a26b: 6a 75                        	push	0x75
  78a26d: 8b cf                        	mov	ecx, edi
  78a26f: e8 9c 33 02 00               	call	0x7ad610 <epoxy_handle_external_wglMakeCurrent+0x3a1410>
  78a274: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78a27a: e8 81 27 ca ff               	call	0x42ca00 <epoxy_handle_external_wglMakeCurrent+0x20800>
  78a27f: 6a 75                        	push	0x75
  78a281: 8b c8                        	mov	ecx, eax
  78a283: e8 18 5b fa ff               	call	0x72fda0 <epoxy_handle_external_wglMakeCurrent+0x323ba0>
  78a288: 50                           	push	eax
  78a289: 8b cf                        	mov	ecx, edi
  78a28b: e8 c0 35 fd ff               	call	0x75d850 <epoxy_handle_external_wglMakeCurrent+0x351650>
  78a290: 8b cf                        	mov	ecx, edi
  78a292: e8 19 ea 02 00               	call	0x7b8cb0 <epoxy_handle_external_wglMakeCurrent+0x3acab0>
  78a297: 83 7f 2c 01                  	cmp	dword ptr [edi + 0x2c], 0x1
  78a29b: 74 09                        	je	0x78a2a6 <epoxy_handle_external_wglMakeCurrent+0x37e0a6>
  78a29d: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  78a2a4: 74 07                        	je	0x78a2ad <epoxy_handle_external_wglMakeCurrent+0x37e0ad>
  78a2a6: 8b cf                        	mov	ecx, edi
  78a2a8: e8 03 00 03 00               	call	0x7ba2b0 <epoxy_handle_external_wglMakeCurrent+0x3ae0b0>
  78a2ad: 8b 87 2c 1b 00 00            	mov	eax, dword ptr [edi + 0x1b2c]
  78a2b3: 85 c0                        	test	eax, eax
  78a2b5: 7e 3a                        	jle	0x78a2f1 <epoxy_handle_external_wglMakeCurrent+0x37e0f1>
  78a2b7: 83 c0 ff                     	add	eax, -0x1
  78a2ba: 89 87 2c 1b 00 00            	mov	dword ptr [edi + 0x1b2c], eax
  78a2c0: 75 2f                        	jne	0x78a2f1 <epoxy_handle_external_wglMakeCurrent+0x37e0f1>
  78a2c2: f3 0f 10 97 28 1b 00 00      	movss	xmm2, dword ptr [edi + 0x1b28]
  78a2ca: 51                           	push	ecx
  78a2cb: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78a2d1: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a2d8: 6a 00                        	push	0x0
  78a2da: 6a 02                        	push	0x2
  78a2dc: ff b7 24 1b 00 00            	push	dword ptr [edi + 0x1b24]
  78a2e2: e8 f9 c5 1c 00               	call	0x9568e0 <epoxy_handle_external_wglMakeCurrent+0x54a6e0>
  78a2e7: c7 87 24 1b 00 00 00 00 00 00	mov	dword ptr [edi + 0x1b24], 0x0
  78a2f1: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a2f7: 6a 07                        	push	0x7
  78a2f9: e8 62 74 ca ff               	call	0x431760 <epoxy_handle_external_wglMakeCurrent+0x25560>
  78a2fe: 84 c0                        	test	al, al
  78a300: 74 46                        	je	0x78a348 <epoxy_handle_external_wglMakeCurrent+0x37e148>
  78a302: 33 c0                        	xor	eax, eax
  78a304: 8d b7 88 15 00 00            	lea	esi, [edi + 0x1588]
  78a30a: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  78a310: 83 7e f8 00                  	cmp	dword ptr [esi - 0x8], 0x0
  78a314: 74 10                        	je	0x78a326 <epoxy_handle_external_wglMakeCurrent+0x37e126>
  78a316: 50                           	push	eax
  78a317: 8b cf                        	mov	ecx, edi
  78a319: e8 02 70 00 00               	call	0x791320 <epoxy_handle_external_wglMakeCurrent+0x385120>
  78a31e: 89 06                        	mov	dword ptr [esi], eax
  78a320: 8b 85 e4 fe ff ff            	mov	eax, dword ptr [ebp - 0x11c]
  78a326: 40                           	inc	eax
  78a327: 83 c6 20                     	add	esi, 0x20
  78a32a: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  78a330: 83 f8 04                     	cmp	eax, 0x4
  78a333: 72 db                        	jb	0x78a310 <epoxy_handle_external_wglMakeCurrent+0x37e110>
  78a335: 83 bf c0 13 00 00 19         	cmp	dword ptr [edi + 0x13c0], 0x19
  78a33c: 75 0a                        	jne	0x78a348 <epoxy_handle_external_wglMakeCurrent+0x37e148>
  78a33e: c7 87 54 1f 00 00 09 00 00 00	mov	dword ptr [edi + 0x1f54], 0x9
  78a348: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a34e: 6a 01                        	push	0x1
  78a350: e8 0b b9 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a355: 84 c0                        	test	al, al
  78a357: 74 45                        	je	0x78a39e <epoxy_handle_external_wglMakeCurrent+0x37e19e>
  78a359: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  78a35d: 75 3f                        	jne	0x78a39e <epoxy_handle_external_wglMakeCurrent+0x37e19e>
  78a35f: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78a365: e8 66 e9 c9 ff               	call	0x428cd0 <epoxy_handle_external_wglMakeCurrent+0x1cad0>
  78a36a: 8d 8f 60 03 00 00            	lea	ecx, [edi + 0x360]
  78a370: 8b f0                        	mov	esi, eax
  78a372: e8 29 5b 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  78a377: d8 0d 20 a1 ba 00            	fmul	dword ptr [0xbaa120]
  78a37d: 51                           	push	ecx
  78a37e: 8b ce                        	mov	ecx, esi
  78a380: d8 05 d0 a2 ba 00            	fadd	dword ptr [0xbaa2d0]
  78a386: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  78a38c: f3 0f 10 85 cc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x134]
  78a394: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  78a399: e8 22 81 05 00               	call	0x7e24c0 <epoxy_handle_external_wglMakeCurrent+0x3d62c0>
  78a39e: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a3a4: 6a 02                        	push	0x2
  78a3a6: e8 b5 b8 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a3ab: 84 c0                        	test	al, al
  78a3ad: 74 43                        	je	0x78a3f2 <epoxy_handle_external_wglMakeCurrent+0x37e1f2>
  78a3af: 83 7f 2c 00                  	cmp	dword ptr [edi + 0x2c], 0x0
  78a3b3: 75 3d                        	jne	0x78a3f2 <epoxy_handle_external_wglMakeCurrent+0x37e1f2>
  78a3b5: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78a3bb: e8 10 e9 c9 ff               	call	0x428cd0 <epoxy_handle_external_wglMakeCurrent+0x1cad0>
  78a3c0: 8b 8f 4c 13 00 00            	mov	ecx, dword ptr [edi + 0x134c]
  78a3c6: 0f 57 c0                     	xorps	xmm0, xmm0
  78a3c9: 03 8f 44 13 00 00            	add	ecx, dword ptr [edi + 0x1344]
  78a3cf: 8b f0                        	mov	esi, eax
  78a3d1: f3 0f 10 0d a4 a7 ba 00      	movss	xmm1, dword ptr [0xbaa7a4]
  78a3d9: 66 0f 6e d1                  	movd	xmm2, ecx
  78a3dd: 0f 5b d2                     	cvtdq2ps	xmm2, xmm2
  78a3e0: e8 0b b2 28 00               	call	0xa155f0 <epoxy_handle_external_wglMakeCurrent+0x6093f0>
  78a3e5: 51                           	push	ecx
  78a3e6: 8b ce                        	mov	ecx, esi
  78a3e8: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  78a3ed: e8 ce 80 05 00               	call	0x7e24c0 <epoxy_handle_external_wglMakeCurrent+0x3d62c0>
  78a3f2: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a3f8: 6a 25                        	push	0x25
  78a3fa: e8 61 b8 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a3ff: 84 c0                        	test	al, al
  78a401: 0f 84 8e 00 00 00            	je	0x78a495 <epoxy_handle_external_wglMakeCurrent+0x37e295>
  78a407: 8b 07                        	mov	eax, dword ptr [edi]
  78a409: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  78a40f: 83 ec 10                     	sub	esp, 0x10
  78a412: 0f 57 db                     	xorps	xmm3, xmm3
  78a415: 0f 57 d2                     	xorps	xmm2, xmm2
  78a418: 0f 57 c9                     	xorps	xmm1, xmm1
  78a41b: 8b 70 3c                     	mov	esi, dword ptr [eax + 0x3c]
  78a41e: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  78a426: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  78a42e: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  78a436: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a43d: e8 9e 2c c8 ff               	call	0x40d0e0 <epoxy_handle_external_wglMakeCurrent+0xee0>
  78a442: 6a 01                        	push	0x1
  78a444: 6a 00                        	push	0x0
  78a446: 68 ff 00 00 00               	push	0xff
  78a44b: 6a ff                        	push	-0x1
  78a44d: 50                           	push	eax
  78a44e: 8b cf                        	mov	ecx, edi
  78a450: ff d6                        	call	esi
  78a452: 83 ec 10                     	sub	esp, 0x10
  78a455: 8d 8d e8 fe ff ff            	lea	ecx, [ebp - 0x118]
  78a45b: 0f 57 db                     	xorps	xmm3, xmm3
  78a45e: 0f 57 d2                     	xorps	xmm2, xmm2
  78a461: 0f 57 c9                     	xorps	xmm1, xmm1
  78a464: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  78a46c: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  78a474: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  78a47c: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a483: e8 58 2c c8 ff               	call	0x40d0e0 <epoxy_handle_external_wglMakeCurrent+0xee0>
  78a488: 8d 77 48                     	lea	esi, [edi + 0x48]
  78a48b: 50                           	push	eax
  78a48c: 8b ce                        	mov	ecx, esi
  78a48e: e8 3d cf c7 ff               	call	0x4073d0 <.text+0x63d0>
  78a493: eb 03                        	jmp	0x78a498 <epoxy_handle_external_wglMakeCurrent+0x37e298>
  78a495: 8d 77 48                     	lea	esi, [edi + 0x48]
  78a498: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a49e: 6a 0e                        	push	0xe
  78a4a0: e8 bb b7 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a4a5: 84 c0                        	test	al, al
  78a4a7: 0f 84 8c 00 00 00            	je	0x78a539 <epoxy_handle_external_wglMakeCurrent+0x37e339>
  78a4ad: 8b 07                        	mov	eax, dword ptr [edi]
  78a4af: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  78a4b5: 83 ec 10                     	sub	esp, 0x10
  78a4b8: 0f 57 db                     	xorps	xmm3, xmm3
  78a4bb: 0f 57 d2                     	xorps	xmm2, xmm2
  78a4be: 0f 57 c9                     	xorps	xmm1, xmm1
  78a4c1: 8b 70 3c                     	mov	esi, dword ptr [eax + 0x3c]
  78a4c4: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  78a4cc: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  78a4d4: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  78a4dc: c7 04 24 00 00 00 00         	mov	dword ptr [esp], 0x0
  78a4e3: e8 f8 2b c8 ff               	call	0x40d0e0 <epoxy_handle_external_wglMakeCurrent+0xee0>
  78a4e8: 6a 01                        	push	0x1
  78a4ea: 6a 00                        	push	0x0
  78a4ec: 68 ff 00 00 00               	push	0xff
  78a4f1: 6a ff                        	push	-0x1
  78a4f3: 50                           	push	eax
  78a4f4: 8b cf                        	mov	ecx, edi
  78a4f6: ff d6                        	call	esi
  78a4f8: 83 ec 10                     	sub	esp, 0x10
  78a4fb: 8d 8d e8 fe ff ff            	lea	ecx, [ebp - 0x118]
  78a501: 0f 57 db                     	xorps	xmm3, xmm3
  78a504: 0f 57 d2                     	xorps	xmm2, xmm2
  78a507: 0f 57 c9                     	xorps	xmm1, xmm1
  78a50a: c7 44 24 0c 00 00 00 00      	mov	dword ptr [esp + 0xc], 0x0
  78a512: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  78a51a: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  78a522: c7 04 24 00 00 00 00         	mov	dword ptr [esp], 0x0
  78a529: e8 b2 2b c8 ff               	call	0x40d0e0 <epoxy_handle_external_wglMakeCurrent+0xee0>
  78a52e: 8d 77 48                     	lea	esi, [edi + 0x48]
  78a531: 50                           	push	eax
  78a532: 8b ce                        	mov	ecx, esi
  78a534: e8 97 ce c7 ff               	call	0x4073d0 <.text+0x63d0>
  78a539: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a53f: 6a 35                        	push	0x35
  78a541: e8 1a b7 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a546: 84 c0                        	test	al, al
  78a548: 0f 84 5f 00 00 00            	je	0x78a5ad <epoxy_handle_external_wglMakeCurrent+0x37e3ad>
  78a54e: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  78a554: e8 17 cc c7 ff               	call	0x407170 <.text+0x6170>
  78a559: 83 ec 10                     	sub	esp, 0x10
  78a55c: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  78a562: c7 44 24 0c 00 00 80 3f      	mov	dword ptr [esp + 0xc], 0x3f800000
  78a56a: c7 44 24 08 00 00 80 3f      	mov	dword ptr [esp + 0x8], 0x3f800000
  78a572: c7 44 24 04 00 00 80 3f      	mov	dword ptr [esp + 0x4], 0x3f800000
  78a57a: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a581: e8 2a 8a ef ff               	call	0x682fb0 <epoxy_handle_external_wglMakeCurrent+0x276db0>
  78a586: 8b 07                        	mov	eax, dword ptr [edi]
  78a588: 8d 8d 6c ff ff ff            	lea	ecx, [ebp - 0x94]
  78a58e: 6a 01                        	push	0x1
  78a590: 6a 00                        	push	0x0
  78a592: 68 ff 00 00 00               	push	0xff
  78a597: 6a ff                        	push	-0x1
  78a599: 51                           	push	ecx
  78a59a: 8b cf                        	mov	ecx, edi
  78a59c: ff 50 3c                     	call	dword ptr [eax + 0x3c]
  78a59f: 8d 85 6c ff ff ff            	lea	eax, [ebp - 0x94]
  78a5a5: 8b ce                        	mov	ecx, esi
  78a5a7: 50                           	push	eax
  78a5a8: e8 23 ce c7 ff               	call	0x4073d0 <.text+0x63d0>
  78a5ad: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a5b3: 6a 18                        	push	0x18
  78a5b5: e8 a6 b6 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a5ba: 84 c0                        	test	al, al
  78a5bc: 0f 84 99 01 00 00            	je	0x78a75b <epoxy_handle_external_wglMakeCurrent+0x37e55b>
  78a5c2: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a5c8: e8 b3 ce c7 ff               	call	0x407480 <.text+0x6480>
  78a5cd: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  78a5d3: 51                           	push	ecx
  78a5d4: 8b c8                        	mov	ecx, eax
  78a5d6: e8 b5 86 08 00               	call	0x812c90 <epoxy_handle_external_wglMakeCurrent+0x406a90>
  78a5db: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a5e1: 8b f0                        	mov	esi, eax
  78a5e3: 89 b5 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], esi
  78a5e9: e8 92 ce c7 ff               	call	0x407480 <.text+0x6480>
  78a5ee: 56                           	push	esi
  78a5ef: 8b c8                        	mov	ecx, eax
  78a5f1: e8 6a ba ca ff               	call	0x436060 <epoxy_handle_external_wglMakeCurrent+0x29e60>
  78a5f6: 8b f0                        	mov	esi, eax
  78a5f8: 85 f6                        	test	esi, esi
  78a5fa: 0f 84 6b 00 00 00            	je	0x78a66b <epoxy_handle_external_wglMakeCurrent+0x37e46b>
  78a600: 8b ce                        	mov	ecx, esi
  78a602: e8 b9 cd c7 ff               	call	0x4073c0 <.text+0x63c0>
  78a607: 83 f8 0e                     	cmp	eax, 0xe
  78a60a: 0f 94 c0                     	sete	al
  78a60d: 88 85 da fe ff ff            	mov	byte ptr [ebp - 0x126], al
  78a613: 84 c0                        	test	al, al
  78a615: 74 21                        	je	0x78a638 <epoxy_handle_external_wglMakeCurrent+0x37e438>
  78a617: 8b ce                        	mov	ecx, esi
  78a619: e8 d2 d0 c8 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  78a61e: 3d e8 03 00 00               	cmp	eax, 0x3e8
  78a623: 8a 85 da fe ff ff            	mov	al, byte ptr [ebp - 0x126]
  78a629: 88 85 da fe ff ff            	mov	byte ptr [ebp - 0x126], al
  78a62f: 0f 94 85 df fe ff ff         	sete	byte ptr [ebp - 0x121]
  78a636: eb 12                        	jmp	0x78a64a <epoxy_handle_external_wglMakeCurrent+0x37e44a>
  78a638: c6 85 e3 fe ff ff 00         	mov	byte ptr [ebp - 0x11d], 0x0
  78a63f: c6 85 df fe ff ff 00         	mov	byte ptr [ebp - 0x121], 0x0
  78a646: 85 f6                        	test	esi, esi
  78a648: 74 36                        	je	0x78a680 <epoxy_handle_external_wglMakeCurrent+0x37e480>
  78a64a: 8b ce                        	mov	ecx, esi
  78a64c: e8 6f cd c7 ff               	call	0x4073c0 <.text+0x63c0>
  78a651: 83 f8 01                     	cmp	eax, 0x1
  78a654: 74 0c                        	je	0x78a662 <epoxy_handle_external_wglMakeCurrent+0x37e462>
  78a656: 8b ce                        	mov	ecx, esi
  78a658: e8 63 cd c7 ff               	call	0x4073c0 <.text+0x63c0>
  78a65d: 83 f8 0a                     	cmp	eax, 0xa
  78a660: 75 17                        	jne	0x78a679 <epoxy_handle_external_wglMakeCurrent+0x37e479>
  78a662: c6 85 e3 fe ff ff 01         	mov	byte ptr [ebp - 0x11d], 0x1
  78a669: eb 15                        	jmp	0x78a680 <epoxy_handle_external_wglMakeCurrent+0x37e480>
  78a66b: c6 85 da fe ff ff 00         	mov	byte ptr [ebp - 0x126], 0x0
  78a672: c6 85 df fe ff ff 00         	mov	byte ptr [ebp - 0x121], 0x0
  78a679: c6 85 e3 fe ff ff 00         	mov	byte ptr [ebp - 0x11d], 0x0
  78a680: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a686: e8 f5 cd c7 ff               	call	0x407480 <.text+0x6480>
  78a68b: ff b5 e4 fe ff ff            	push	dword ptr [ebp - 0x11c]
  78a691: 8d 4d e8                     	lea	ecx, [ebp - 0x18]
  78a694: 51                           	push	ecx
  78a695: 8b c8                        	mov	ecx, eax
  78a697: e8 64 88 08 00               	call	0x812f00 <epoxy_handle_external_wglMakeCurrent+0x406d00>
  78a69c: 8b d0                        	mov	edx, eax
  78a69e: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  78a6a4: e8 57 58 28 00               	call	0xa0ff00 <epoxy_handle_external_wglMakeCurrent+0x603d00>
  78a6a9: f3 0f 10 8f 70 03 00 00      	movss	xmm1, dword ptr [edi + 0x370]
  78a6b1: f3 0f 59 0d d0 a2 ba 00      	mulss	xmm1, dword ptr [0xbaa2d0]
  78a6b9: f3 0f 10 15 7c a8 ba 00      	movss	xmm2, dword ptr [0xbaa87c]
  78a6c1: f3 0f 5c d1                  	subss	xmm2, xmm1
  78a6c5: 0f 2f d0                     	comiss	xmm2, xmm0
  78a6c8: 0f 97 c0                     	seta	al
  78a6cb: 84 c0                        	test	al, al
  78a6cd: 0f 84 88 00 00 00            	je	0x78a75b <epoxy_handle_external_wglMakeCurrent+0x37e55b>
  78a6d3: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a6d9: e8 a2 cd c7 ff               	call	0x407480 <.text+0x6480>
  78a6de: 8b c8                        	mov	ecx, eax
  78a6e0: e8 ab fa 05 00               	call	0x7ea190 <epoxy_handle_external_wglMakeCurrent+0x3ddf90>
  78a6e5: 84 c0                        	test	al, al
  78a6e7: 0f 85 6e 00 00 00            	jne	0x78a75b <epoxy_handle_external_wglMakeCurrent+0x37e55b>
  78a6ed: 85 f6                        	test	esi, esi
  78a6ef: 74 18                        	je	0x78a709 <epoxy_handle_external_wglMakeCurrent+0x37e509>
  78a6f1: 38 85 df fe ff ff            	cmp	byte ptr [ebp - 0x121], al
  78a6f7: 75 10                        	jne	0x78a709 <epoxy_handle_external_wglMakeCurrent+0x37e509>
  78a6f9: 38 85 e3 fe ff ff            	cmp	byte ptr [ebp - 0x11d], al
  78a6ff: 74 5a                        	je	0x78a75b <epoxy_handle_external_wglMakeCurrent+0x37e55b>
  78a701: 38 85 da fe ff ff            	cmp	byte ptr [ebp - 0x126], al
  78a707: 75 52                        	jne	0x78a75b <epoxy_handle_external_wglMakeCurrent+0x37e55b>
  78a709: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a70f: e8 6c cd c7 ff               	call	0x407480 <.text+0x6480>
  78a714: 8d 8f 70 17 00 00            	lea	ecx, [edi + 0x1770]
  78a71a: 8b f0                        	mov	esi, eax
  78a71c: 6a 24                        	push	0x24
  78a71e: e8 dd 15 e4 ff               	call	0x5cbd00 <epoxy_handle_external_wglMakeCurrent+0x1bfb00>
  78a723: 8b c8                        	mov	ecx, eax
  78a725: e8 c6 e9 05 00               	call	0x7e90f0 <epoxy_handle_external_wglMakeCurrent+0x3dcef0>
  78a72a: 6a 00                        	push	0x0
  78a72c: 50                           	push	eax
  78a72d: 6a 00                        	push	0x0
  78a72f: 6a 0e                        	push	0xe
  78a731: ff b5 e4 fe ff ff            	push	dword ptr [ebp - 0x11c]
  78a737: 8b ce                        	mov	ecx, esi
  78a739: e8 62 15 06 00               	call	0x7ebca0 <epoxy_handle_external_wglMakeCurrent+0x3dfaa0>
  78a73e: f3 0f 10 15 f8 a1 ba 00      	movss	xmm2, dword ptr [0xbaa1f8]
  78a746: 51                           	push	ecx
  78a747: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a74e: 8b cf                        	mov	ecx, edi
  78a750: 6a 00                        	push	0x0
  78a752: 6a 02                        	push	0x2
  78a754: 6a 25                        	push	0x25
  78a756: e8 15 bd f2 ff               	call	0x6b6470 <epoxy_handle_external_wglMakeCurrent+0x2aa270>
  78a75b: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a761: 6a 1a                        	push	0x1a
  78a763: e8 f8 b4 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a768: 84 c0                        	test	al, al
  78a76a: 0f 84 04 01 00 00            	je	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a770: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a776: e8 35 cd c7 ff               	call	0x4074b0 <.text+0x64b0>
  78a77b: 83 f8 3c                     	cmp	eax, 0x3c
  78a77e: 0f 8e f0 00 00 00            	jle	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a784: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a78a: e8 f1 cc c7 ff               	call	0x407480 <.text+0x6480>
  78a78f: 8b c8                        	mov	ecx, eax
  78a791: e8 4a 95 08 00               	call	0x813ce0 <epoxy_handle_external_wglMakeCurrent+0x407ae0>
  78a796: 83 f8 0a                     	cmp	eax, 0xa
  78a799: 0f 8e d5 00 00 00            	jle	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a79f: 8b cf                        	mov	ecx, edi
  78a7a1: e8 6a 09 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  78a7a6: 84 c0                        	test	al, al
  78a7a8: 0f 84 c6 00 00 00            	je	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a7ae: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a7b4: e8 27 63 c9 ff               	call	0x420ae0 <epoxy_handle_external_wglMakeCurrent+0x148e0>
  78a7b9: 8b c8                        	mov	ecx, eax
  78a7bb: e8 70 46 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  78a7c0: 84 c0                        	test	al, al
  78a7c2: 0f 85 ac 00 00 00            	jne	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a7c8: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a7ce: e8 7d e3 c9 ff               	call	0x428b50 <epoxy_handle_external_wglMakeCurrent+0x1c950>
  78a7d3: 8b c8                        	mov	ecx, eax
  78a7d5: e8 56 46 0a 00               	call	0x82ee30 <epoxy_handle_external_wglMakeCurrent+0x422c30>
  78a7da: 84 c0                        	test	al, al
  78a7dc: 0f 85 92 00 00 00            	jne	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a7e2: 8d 8f 60 16 00 00            	lea	ecx, [edi + 0x1660]
  78a7e8: e8 b3 56 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  78a7ed: f3 0f 10 05 98 a1 ba 00      	movss	xmm0, dword ptr [0xbaa198]
  78a7f5: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  78a7fb: 0f 2f 85 cc fe ff ff         	comiss	xmm0, dword ptr [ebp - 0x134]
  78a802: 76 22                        	jbe	0x78a826 <epoxy_handle_external_wglMakeCurrent+0x37e626>
  78a804: 8d 8f 54 16 00 00            	lea	ecx, [edi + 0x1654]
  78a80a: e8 91 56 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  78a80f: f3 0f 10 05 20 a1 ba 00      	movss	xmm0, dword ptr [0xbaa120]
  78a817: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  78a81d: 0f 2f 85 cc fe ff ff         	comiss	xmm0, dword ptr [ebp - 0x134]
  78a824: 77 2b                        	ja	0x78a851 <epoxy_handle_external_wglMakeCurrent+0x37e651>
  78a826: 8d 8f 60 16 00 00            	lea	ecx, [edi + 0x1660]
  78a82c: e8 6f 56 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  78a831: f3 0f 10 05 98 a1 ba 00      	movss	xmm0, dword ptr [0xbaa198]
  78a839: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  78a83f: 0f 2f 85 cc fe ff ff         	comiss	xmm0, dword ptr [ebp - 0x134]
  78a846: 76 2c                        	jbe	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a848: 80 bf 90 01 00 00 00         	cmp	byte ptr [edi + 0x190], 0x0
  78a84f: 74 23                        	je	0x78a874 <epoxy_handle_external_wglMakeCurrent+0x37e674>
  78a851: 8b 07                        	mov	eax, dword ptr [edi]
  78a853: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  78a856: 8b 70 20                     	mov	esi, dword ptr [eax + 0x20]
  78a859: e8 12 b4 ca ff               	call	0x435c70 <epoxy_handle_external_wglMakeCurrent+0x29a70>
  78a85e: 6a 1e                        	push	0x1e
  78a860: 50                           	push	eax
  78a861: 6a 00                        	push	0x0
  78a863: 68 00 00 02 00               	push	0x20000
  78a868: 51                           	push	ecx
  78a869: 8b cf                        	mov	ecx, edi
  78a86b: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a872: ff d6                        	call	esi
  78a874: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a87a: 6a 1b                        	push	0x1b
  78a87c: e8 df b3 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a881: 84 c0                        	test	al, al
  78a883: 0f 84 e7 00 00 00            	je	0x78a970 <epoxy_handle_external_wglMakeCurrent+0x37e770>
  78a889: 6a 00                        	push	0x0
  78a88b: 68 00 40 00 00               	push	0x4000
  78a890: 8b cf                        	mov	ecx, edi
  78a892: e8 99 cb c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78a897: 84 c0                        	test	al, al
  78a899: 0f 85 d1 00 00 00            	jne	0x78a970 <epoxy_handle_external_wglMakeCurrent+0x37e770>
  78a89f: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a8a5: e8 06 cc c7 ff               	call	0x4074b0 <.text+0x64b0>
  78a8aa: 99                           	cdq
  78a8ab: b9 46 05 00 00               	mov	ecx, 0x546
  78a8b0: f7 f9                        	idiv	ecx
  78a8b2: be 45 05 00 00               	mov	esi, 0x545
  78a8b7: 2b f2                        	sub	esi, edx
  78a8b9: 75 38                        	jne	0x78a8f3 <epoxy_handle_external_wglMakeCurrent+0x37e6f3>
  78a8bb: 8b 07                        	mov	eax, dword ptr [edi]
  78a8bd: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  78a8c0: 8b 70 20                     	mov	esi, dword ptr [eax + 0x20]
  78a8c3: e8 a8 b3 ca ff               	call	0x435c70 <epoxy_handle_external_wglMakeCurrent+0x29a70>
  78a8c8: 6a 1e                        	push	0x1e
  78a8ca: 50                           	push	eax
  78a8cb: 6a 00                        	push	0x0
  78a8cd: 68 00 00 02 00               	push	0x20000
  78a8d2: 51                           	push	ecx
  78a8d3: 8b cf                        	mov	ecx, edi
  78a8d5: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a8dc: ff d6                        	call	esi
  78a8de: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  78a8e6: 51                           	push	ecx
  78a8e7: c7 04 24 00 00 00 41         	mov	dword ptr [esp], 0x41000000
  78a8ee: e9 6c 00 00 00               	jmp	0x78a95f <epoxy_handle_external_wglMakeCurrent+0x37e75f>
  78a8f3: b8 89 88 88 88               	mov	eax, 0x88888889
  78a8f8: f7 ee                        	imul	esi
  78a8fa: 03 d6                        	add	edx, esi
  78a8fc: c1 fa 04                     	sar	edx, 0x4
  78a8ff: 8b c2                        	mov	eax, edx
  78a901: c1 e8 1f                     	shr	eax, 0x1f
  78a904: 03 c2                        	add	eax, edx
  78a906: 8b c8                        	mov	ecx, eax
  78a908: c1 e1 04                     	shl	ecx, 0x4
  78a90b: 2b c8                        	sub	ecx, eax
  78a90d: 8b c6                        	mov	eax, esi
  78a90f: 03 c9                        	add	ecx, ecx
  78a911: 2b c1                        	sub	eax, ecx
  78a913: 75 12                        	jne	0x78a927 <epoxy_handle_external_wglMakeCurrent+0x37e727>
  78a915: 81 fe 96 00 00 00            	cmp	esi, 0x96
  78a91b: 7f 0a                        	jg	0x78a927 <epoxy_handle_external_wglMakeCurrent+0x37e727>
  78a91d: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  78a925: eb 30                        	jmp	0x78a957 <epoxy_handle_external_wglMakeCurrent+0x37e757>
  78a927: b8 89 88 88 88               	mov	eax, 0x88888889
  78a92c: f7 ee                        	imul	esi
  78a92e: 03 d6                        	add	edx, esi
  78a930: c1 fa 03                     	sar	edx, 0x3
  78a933: 8b c2                        	mov	eax, edx
  78a935: c1 e8 1f                     	shr	eax, 0x1f
  78a938: 03 c2                        	add	eax, edx
  78a93a: 8b c8                        	mov	ecx, eax
  78a93c: c1 e1 04                     	shl	ecx, 0x4
  78a93f: 2b c8                        	sub	ecx, eax
  78a941: 8b c6                        	mov	eax, esi
  78a943: 2b c1                        	sub	eax, ecx
  78a945: 75 29                        	jne	0x78a970 <epoxy_handle_external_wglMakeCurrent+0x37e770>
  78a947: 81 fe 96 00 00 00            	cmp	esi, 0x96
  78a94d: 7f 21                        	jg	0x78a970 <epoxy_handle_external_wglMakeCurrent+0x37e770>
  78a94f: f3 0f 10 15 a4 a3 ba 00      	movss	xmm2, dword ptr [0xbaa3a4]
  78a957: 51                           	push	ecx
  78a958: c7 04 24 00 00 80 40         	mov	dword ptr [esp], 0x40800000
  78a95f: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78a965: 6a 00                        	push	0x0
  78a967: 6a 00                        	push	0x0
  78a969: 6a 23                        	push	0x23
  78a96b: e8 70 bf 1c 00               	call	0x9568e0 <epoxy_handle_external_wglMakeCurrent+0x54a6e0>
  78a970: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a976: 6a 1c                        	push	0x1c
  78a978: e8 e3 b2 ed ff               	call	0x665c60 <epoxy_handle_external_wglMakeCurrent+0x259a60>
  78a97d: 84 c0                        	test	al, al
  78a97f: 0f 84 f4 00 00 00            	je	0x78aa79 <epoxy_handle_external_wglMakeCurrent+0x37e879>
  78a985: 6a 00                        	push	0x0
  78a987: 68 00 40 00 00               	push	0x4000
  78a98c: 8b cf                        	mov	ecx, edi
  78a98e: e8 9d ca c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78a993: 84 c0                        	test	al, al
  78a995: 0f 85 de 00 00 00            	jne	0x78aa79 <epoxy_handle_external_wglMakeCurrent+0x37e879>
  78a99b: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78a9a1: e8 0a cb c7 ff               	call	0x4074b0 <.text+0x64b0>
  78a9a6: be ef d2 00 00               	mov	esi, 0xd2ef
  78a9ab: 2b f0                        	sub	esi, eax
  78a9ad: 85 f6                        	test	esi, esi
  78a9af: 7f 4b                        	jg	0x78a9fc <epoxy_handle_external_wglMakeCurrent+0x37e7fc>
  78a9b1: 8b cf                        	mov	ecx, edi
  78a9b3: e8 58 07 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  78a9b8: 84 c0                        	test	al, al
  78a9ba: 74 40                        	je	0x78a9fc <epoxy_handle_external_wglMakeCurrent+0x37e7fc>
  78a9bc: 8b 07                        	mov	eax, dword ptr [edi]
  78a9be: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  78a9c1: 8b 70 20                     	mov	esi, dword ptr [eax + 0x20]
  78a9c4: e8 a7 b2 ca ff               	call	0x435c70 <epoxy_handle_external_wglMakeCurrent+0x29a70>
  78a9c9: 6a 1e                        	push	0x1e
  78a9cb: 50                           	push	eax
  78a9cc: 6a 00                        	push	0x0
  78a9ce: 68 00 00 02 00               	push	0x20000
  78a9d3: 51                           	push	ecx
  78a9d4: 8b cf                        	mov	ecx, edi
  78a9d6: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78a9dd: ff d6                        	call	esi
  78a9df: 84 c0                        	test	al, al
  78a9e1: 0f 84 92 00 00 00            	je	0x78aa79 <epoxy_handle_external_wglMakeCurrent+0x37e879>
  78a9e7: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  78a9ef: 51                           	push	ecx
  78a9f0: c7 04 24 00 00 00 41         	mov	dword ptr [esp], 0x41000000
  78a9f7: e9 6c 00 00 00               	jmp	0x78aa68 <epoxy_handle_external_wglMakeCurrent+0x37e868>
  78a9fc: b8 89 88 88 88               	mov	eax, 0x88888889
  78aa01: f7 ee                        	imul	esi
  78aa03: 03 d6                        	add	edx, esi
  78aa05: c1 fa 04                     	sar	edx, 0x4
  78aa08: 8b c2                        	mov	eax, edx
  78aa0a: c1 e8 1f                     	shr	eax, 0x1f
  78aa0d: 03 c2                        	add	eax, edx
  78aa0f: 8b c8                        	mov	ecx, eax
  78aa11: c1 e1 04                     	shl	ecx, 0x4
  78aa14: 2b c8                        	sub	ecx, eax
  78aa16: 8b c6                        	mov	eax, esi
  78aa18: 03 c9                        	add	ecx, ecx
  78aa1a: 2b c1                        	sub	eax, ecx
  78aa1c: 75 12                        	jne	0x78aa30 <epoxy_handle_external_wglMakeCurrent+0x37e830>
  78aa1e: 81 fe 84 03 00 00            	cmp	esi, 0x384
  78aa24: 7f 0a                        	jg	0x78aa30 <epoxy_handle_external_wglMakeCurrent+0x37e830>
  78aa26: f3 0f 10 15 54 a4 ba 00      	movss	xmm2, dword ptr [0xbaa454]
  78aa2e: eb 30                        	jmp	0x78aa60 <epoxy_handle_external_wglMakeCurrent+0x37e860>
  78aa30: b8 89 88 88 88               	mov	eax, 0x88888889
  78aa35: f7 ee                        	imul	esi
  78aa37: 03 d6                        	add	edx, esi
  78aa39: c1 fa 03                     	sar	edx, 0x3
  78aa3c: 8b c2                        	mov	eax, edx
  78aa3e: c1 e8 1f                     	shr	eax, 0x1f
  78aa41: 03 c2                        	add	eax, edx
  78aa43: 8b c8                        	mov	ecx, eax
  78aa45: c1 e1 04                     	shl	ecx, 0x4
  78aa48: 2b c8                        	sub	ecx, eax
  78aa4a: 8b c6                        	mov	eax, esi
  78aa4c: 2b c1                        	sub	eax, ecx
  78aa4e: 75 29                        	jne	0x78aa79 <epoxy_handle_external_wglMakeCurrent+0x37e879>
  78aa50: 81 fe 2c 01 00 00            	cmp	esi, 0x12c
  78aa56: 7f 21                        	jg	0x78aa79 <epoxy_handle_external_wglMakeCurrent+0x37e879>
  78aa58: f3 0f 10 15 a4 a3 ba 00      	movss	xmm2, dword ptr [0xbaa3a4]
  78aa60: 51                           	push	ecx
  78aa61: c7 04 24 00 00 80 40         	mov	dword ptr [esp], 0x40800000
  78aa68: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78aa6e: 6a 00                        	push	0x0
  78aa70: 6a 00                        	push	0x0
  78aa72: 6a 23                        	push	0x23
  78aa74: e8 67 be 1c 00               	call	0x9568e0 <epoxy_handle_external_wglMakeCurrent+0x54a6e0>
  78aa79: 8b 87 6c 01 00 00            	mov	eax, dword ptr [edi + 0x16c]
  78aa7f: 8b 8f 68 01 00 00            	mov	ecx, dword ptr [edi + 0x168]
  78aa85: 89 85 9c fe ff ff            	mov	dword ptr [ebp - 0x164], eax
  78aa8b: 8b c1                        	mov	eax, ecx
  78aa8d: 25 00 40 00 00               	and	eax, 0x4000
  78aa92: 83 c8 00                     	or	eax, 0x0
  78aa95: 74 20                        	je	0x78aab7 <epoxy_handle_external_wglMakeCurrent+0x37e8b7>
  78aa97: 6a 00                        	push	0x0
  78aa99: 68 00 80 00 00               	push	0x8000
  78aa9e: 8b cf                        	mov	ecx, edi
  78aaa0: e8 5b c9 c8 ff               	call	0x417400 <epoxy_handle_external_wglMakeCurrent+0xb200>
  78aaa5: 8b 87 6c 01 00 00            	mov	eax, dword ptr [edi + 0x16c]
  78aaab: 8b 8f 68 01 00 00            	mov	ecx, dword ptr [edi + 0x168]
  78aab1: 89 85 9c fe ff ff            	mov	dword ptr [ebp - 0x164], eax
  78aab7: 81 e1 00 40 00 00            	and	ecx, 0x4000
  78aabd: 83 c9 00                     	or	ecx, 0x0
  78aac0: 0f 85 1e 02 00 00            	jne	0x78ace4 <epoxy_handle_external_wglMakeCurrent+0x37eae4>
  78aac6: 51                           	push	ecx
  78aac7: 68 00 00 00 08               	push	0x8000000
  78aacc: 8b cf                        	mov	ecx, edi
  78aace: e8 2d c9 c8 ff               	call	0x417400 <epoxy_handle_external_wglMakeCurrent+0xb200>
  78aad3: 6a 04                        	push	0x4
  78aad5: 6a 00                        	push	0x0
  78aad7: 8b cf                        	mov	ecx, edi
  78aad9: e8 52 c9 c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78aade: 84 c0                        	test	al, al
  78aae0: 0f 84 37 01 00 00            	je	0x78ac1d <epoxy_handle_external_wglMakeCurrent+0x37ea1d>
  78aae6: 39 bf 8c 02 00 00            	cmp	dword ptr [edi + 0x28c], edi
  78aaec: 0f 85 2b 01 00 00            	jne	0x78ac1d <epoxy_handle_external_wglMakeCurrent+0x37ea1d>
  78aaf2: 8b b7 44 13 00 00            	mov	esi, dword ptr [edi + 0x1344]
  78aaf8: 2b b7 a4 1d 00 00            	sub	esi, dword ptr [edi + 0x1da4]
  78aafe: 85 f6                        	test	esi, esi
  78ab00: 0f 8e 02 01 00 00            	jle	0x78ac08 <epoxy_handle_external_wglMakeCurrent+0x37ea08>
  78ab06: 83 bf 4c 13 00 00 00         	cmp	dword ptr [edi + 0x134c], 0x0
  78ab0d: 7f 27                        	jg	0x78ab36 <epoxy_handle_external_wglMakeCurrent+0x37e936>
  78ab0f: 83 bf 88 1d 00 00 00         	cmp	dword ptr [edi + 0x1d88], 0x0
  78ab16: 7f 1e                        	jg	0x78ab36 <epoxy_handle_external_wglMakeCurrent+0x37e936>
  78ab18: 8b cf                        	mov	ecx, edi
  78ab1a: e8 c1 04 04 00               	call	0x7cafe0 <epoxy_handle_external_wglMakeCurrent+0x3bede0>
  78ab1f: 83 e8 03                     	sub	eax, 0x3
  78ab22: f7 d8                        	neg	eax
  78ab24: 1b c0                        	sbb	eax, eax
  78ab26: 8d 48 02                     	lea	ecx, [eax + 0x2]
  78ab29: e8 52 28 05 00               	call	0x7dd380 <epoxy_handle_external_wglMakeCurrent+0x3d1180>
  78ab2e: 3b f0                        	cmp	esi, eax
  78ab30: 0f 8e d2 00 00 00            	jle	0x78ac08 <epoxy_handle_external_wglMakeCurrent+0x37ea08>
  78ab36: 8b cf                        	mov	ecx, edi
  78ab38: e8 73 0b 05 00               	call	0x7db6b0 <epoxy_handle_external_wglMakeCurrent+0x3cf4b0>
  78ab3d: 84 c0                        	test	al, al
  78ab3f: 0f 85 c3 00 00 00            	jne	0x78ac08 <epoxy_handle_external_wglMakeCurrent+0x37ea08>
  78ab45: 8b cf                        	mov	ecx, edi
  78ab47: e8 64 b2 ca ff               	call	0x435db0 <epoxy_handle_external_wglMakeCurrent+0x29bb0>
  78ab4c: 8b 8f 8c 13 00 00            	mov	ecx, dword ptr [edi + 0x138c]
  78ab52: 2b c8                        	sub	ecx, eax
  78ab54: 89 8f 8c 13 00 00            	mov	dword ptr [edi + 0x138c], ecx
  78ab5a: 85 c9                        	test	ecx, ecx
  78ab5c: 7f 49                        	jg	0x78aba7 <epoxy_handle_external_wglMakeCurrent+0x37e9a7>
  78ab5e: 8b 07                        	mov	eax, dword ptr [edi]
  78ab60: 8d 4d 9c                     	lea	ecx, [ebp - 0x64]
  78ab63: c7 87 8c 13 00 00 58 02 00 00	mov	dword ptr [edi + 0x138c], 0x258
  78ab6d: 8b 78 20                     	mov	edi, dword ptr [eax + 0x20]
  78ab70: e8 fb b0 ca ff               	call	0x435c70 <epoxy_handle_external_wglMakeCurrent+0x29a70>
  78ab75: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  78ab7d: 8b f0                        	mov	esi, eax
  78ab7f: e8 ac ae ed ff               	call	0x665a30 <epoxy_handle_external_wglMakeCurrent+0x259830>
  78ab84: 6a 1e                        	push	0x1e
  78ab86: 56                           	push	esi
  78ab87: 6a 00                        	push	0x0
  78ab89: 68 20 20 04 02               	push	0x2042020
  78ab8e: 51                           	push	ecx
  78ab8f: 8b 8d d0 fe ff ff            	mov	ecx, dword ptr [ebp - 0x130]
  78ab95: f3 0f 11 04 24               	movss	dword ptr [esp], xmm0
  78ab9a: ff d7                        	call	edi
  78ab9c: 8b bd d0 fe ff ff            	mov	edi, dword ptr [ebp - 0x130]
  78aba2: e9 76 00 00 00               	jmp	0x78ac1d <epoxy_handle_external_wglMakeCurrent+0x37ea1d>
  78aba7: 83 f9 1e                     	cmp	ecx, 0x1e
  78abaa: 0f 8d 6d 00 00 00            	jge	0x78ac1d <epoxy_handle_external_wglMakeCurrent+0x37ea1d>
  78abb0: 81 e1 03 00 00 80            	and	ecx, 0x80000003
  78abb6: 79 07                        	jns	0x78abbf <epoxy_handle_external_wglMakeCurrent+0x37e9bf>
  78abb8: 49                           	dec	ecx
  78abb9: 83 c9 fc                     	or	ecx, -0x4
  78abbc: 83 c1 01                     	add	ecx, 0x1
  78abbf: 75 5c                        	jne	0x78ac1d <epoxy_handle_external_wglMakeCurrent+0x37ea1d>
  78abc1: 8b 07                        	mov	eax, dword ptr [edi]
  78abc3: 8d 8d 40 ff ff ff            	lea	ecx, [ebp - 0xc0]
  78abc9: f3 0f 10 0d 54 a4 ba 00      	movss	xmm1, dword ptr [0xbaa454]
  78abd1: 83 ec 0c                     	sub	esp, 0xc
  78abd4: 0f 57 db                     	xorps	xmm3, xmm3
  78abd7: 0f 57 d2                     	xorps	xmm2, xmm2
  78abda: 8b 70 3c                     	mov	esi, dword ptr [eax + 0x3c]
  78abdd: c7 44 24 08 00 00 00 00      	mov	dword ptr [esp + 0x8], 0x0
  78abe5: c7 44 24 04 00 00 00 00      	mov	dword ptr [esp + 0x4], 0x0
  78abed: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78abf4: e8 d7 23 ca ff               	call	0x42cfd0 <epoxy_handle_external_wglMakeCurrent+0x20dd0>
  78abf9: 6a 01                        	push	0x1
  78abfb: 6a 01                        	push	0x1
  78abfd: 6a 02                        	push	0x2
  78abff: 6a 04                        	push	0x4
  78ac01: 50                           	push	eax
  78ac02: 8b cf                        	mov	ecx, edi
  78ac04: ff d6                        	call	esi
  78ac06: eb 15                        	jmp	0x78ac1d <epoxy_handle_external_wglMakeCurrent+0x37ea1d>
  78ac08: 6a 04                        	push	0x4
  78ac0a: 6a 00                        	push	0x0
  78ac0c: 8b cf                        	mov	ecx, edi
  78ac0e: e8 ed c7 c8 ff               	call	0x417400 <epoxy_handle_external_wglMakeCurrent+0xb200>
  78ac13: c7 87 8c 13 00 00 00 00 00 00	mov	dword ptr [edi + 0x138c], 0x0
  78ac1d: 83 bf c0 13 00 00 16         	cmp	dword ptr [edi + 0x13c0], 0x16
  78ac24: 0f 85 b0 00 00 00            	jne	0x78acda <epoxy_handle_external_wglMakeCurrent+0x37eada>
  78ac2a: 8b b7 44 13 00 00            	mov	esi, dword ptr [edi + 0x1344]
  78ac30: 8b cf                        	mov	ecx, edi
  78ac32: e8 e9 96 04 00               	call	0x7d4320 <epoxy_handle_external_wglMakeCurrent+0x3c8120>
  78ac37: 3b f0                        	cmp	esi, eax
  78ac39: 7f 1f                        	jg	0x78ac5a <epoxy_handle_external_wglMakeCurrent+0x37ea5a>
  78ac3b: 83 bf 4c 13 00 00 01         	cmp	dword ptr [edi + 0x134c], 0x1
  78ac42: 7f 16                        	jg	0x78ac5a <epoxy_handle_external_wglMakeCurrent+0x37ea5a>
  78ac44: 0f 85 90 00 00 00            	jne	0x78acda <epoxy_handle_external_wglMakeCurrent+0x37eada>
  78ac4a: 8b 87 88 1d 00 00            	mov	eax, dword ptr [edi + 0x1d88]
  78ac50: 03 c6                        	add	eax, esi
  78ac52: 85 c0                        	test	eax, eax
  78ac54: 0f 8e 80 00 00 00            	jle	0x78acda <epoxy_handle_external_wglMakeCurrent+0x37eada>
  78ac5a: 8b 87 f4 1e 00 00            	mov	eax, dword ptr [edi + 0x1ef4]
  78ac60: 85 c0                        	test	eax, eax
  78ac62: 75 0f                        	jne	0x78ac73 <epoxy_handle_external_wglMakeCurrent+0x37ea73>
  78ac64: c7 87 f4 1e 00 00 2c 01 00 00	mov	dword ptr [edi + 0x1ef4], 0x12c
  78ac6e: e9 71 00 00 00               	jmp	0x78ace4 <epoxy_handle_external_wglMakeCurrent+0x37eae4>
  78ac73: 48                           	dec	eax
  78ac74: 89 87 f4 1e 00 00            	mov	dword ptr [edi + 0x1ef4], eax
  78ac7a: 85 c0                        	test	eax, eax
  78ac7c: 0f 8f 62 00 00 00            	jg	0x78ace4 <epoxy_handle_external_wglMakeCurrent+0x37eae4>
  78ac82: 8b b7 44 13 00 00            	mov	esi, dword ptr [edi + 0x1344]
  78ac88: 8b cf                        	mov	ecx, edi
  78ac8a: e8 91 96 04 00               	call	0x7d4320 <epoxy_handle_external_wglMakeCurrent+0x3c8120>
  78ac8f: 3b f0                        	cmp	esi, eax
  78ac91: 7e 19                        	jle	0x78acac <epoxy_handle_external_wglMakeCurrent+0x37eaac>
  78ac93: 6a 00                        	push	0x0
  78ac95: 6a 00                        	push	0x0
  78ac97: 6a ff                        	push	-0x1
  78ac99: 8b cf                        	mov	ecx, edi
  78ac9b: e8 d0 dd fc ff               	call	0x758a70 <epoxy_handle_external_wglMakeCurrent+0x34c870>
  78aca0: c7 87 f4 1e 00 00 2c 01 00 00	mov	dword ptr [edi + 0x1ef4], 0x12c
  78acaa: eb 38                        	jmp	0x78ace4 <epoxy_handle_external_wglMakeCurrent+0x37eae4>
  78acac: 83 bf 4c 13 00 00 01         	cmp	dword ptr [edi + 0x134c], 0x1
  78acb3: 7f 0e                        	jg	0x78acc3 <epoxy_handle_external_wglMakeCurrent+0x37eac3>
  78acb5: 75 17                        	jne	0x78acce <epoxy_handle_external_wglMakeCurrent+0x37eace>
  78acb7: 8b 87 88 1d 00 00            	mov	eax, dword ptr [edi + 0x1d88]
  78acbd: 03 c6                        	add	eax, esi
  78acbf: 85 c0                        	test	eax, eax
  78acc1: 7e 0b                        	jle	0x78acce <epoxy_handle_external_wglMakeCurrent+0x37eace>
  78acc3: 6a 00                        	push	0x0
  78acc5: 6a ff                        	push	-0x1
  78acc7: 8b cf                        	mov	ecx, edi
  78acc9: e8 32 e0 fc ff               	call	0x758d00 <epoxy_handle_external_wglMakeCurrent+0x34cb00>
  78acce: c7 87 f4 1e 00 00 2c 01 00 00	mov	dword ptr [edi + 0x1ef4], 0x12c
  78acd8: eb 0a                        	jmp	0x78ace4 <epoxy_handle_external_wglMakeCurrent+0x37eae4>
  78acda: c7 87 f4 1e 00 00 00 00 00 00	mov	dword ptr [edi + 0x1ef4], 0x0
  78ace4: 8b cf                        	mov	ecx, edi
  78ace6: e8 d5 48 03 00               	call	0x7bf5c0 <epoxy_handle_external_wglMakeCurrent+0x3b33c0>
  78aceb: 8d b7 1c 1b 00 00            	lea	esi, [edi + 0x1b1c]
  78acf1: 88 87 d8 17 00 00            	mov	byte ptr [edi + 0x17d8], al
  78acf7: 68 40 b6 c7 00               	push	0xc7b640
  78acfc: 8b ce                        	mov	ecx, esi
  78acfe: e8 2d 59 28 00               	call	0xa10630 <epoxy_handle_external_wglMakeCurrent+0x604430>
  78ad03: 84 c0                        	test	al, al
  78ad05: 0f 84 7f 00 00 00            	je	0x78ad8a <epoxy_handle_external_wglMakeCurrent+0x37eb8a>
  78ad0b: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  78ad11: 8b ce                        	mov	ecx, esi
  78ad13: 50                           	push	eax
  78ad14: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  78ad17: 50                           	push	eax
  78ad18: e8 63 57 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  78ad1d: 8b c8                        	mov	ecx, eax
  78ad1f: e8 7c 51 28 00               	call	0xa0fea0 <epoxy_handle_external_wglMakeCurrent+0x603ca0>
  78ad24: d9 9d cc fe ff ff            	fstp	dword ptr [ebp - 0x134]
  78ad2a: f3 0f 10 85 cc fe ff ff      	movss	xmm0, dword ptr [ebp - 0x134]
  78ad32: 0f 2f 05 54 a4 ba 00         	comiss	xmm0, dword ptr [0xbaa454]
  78ad39: 76 47                        	jbe	0x78ad82 <epoxy_handle_external_wglMakeCurrent+0x37eb82>
  78ad3b: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  78ad41: 8b ce                        	mov	ecx, esi
  78ad43: 50                           	push	eax
  78ad44: 8d 45 e8                     	lea	eax, [ebp - 0x18]
  78ad47: 50                           	push	eax
  78ad48: e8 33 57 28 00               	call	0xa10480 <epoxy_handle_external_wglMakeCurrent+0x604280>
  78ad4d: 8d 8d cc fe ff ff            	lea	ecx, [ebp - 0x134]
  78ad53: c7 85 cc fe ff ff ec 51 38 3e	mov	dword ptr [ebp - 0x134], 0x3e3851ec
  78ad5d: 51                           	push	ecx
  78ad5e: 8d 8d 6c fe ff ff            	lea	ecx, [ebp - 0x194]
  78ad64: 51                           	push	ecx
  78ad65: 8b c8                        	mov	ecx, eax
  78ad67: e8 74 57 28 00               	call	0xa104e0 <epoxy_handle_external_wglMakeCurrent+0x6042e0>
  78ad6c: 50                           	push	eax
  78ad6d: 8d 85 98 fe ff ff            	lea	eax, [ebp - 0x168]
  78ad73: 50                           	push	eax
  78ad74: 8d 8f 3c 03 00 00            	lea	ecx, [edi + 0x33c]
  78ad7a: e8 a1 56 28 00               	call	0xa10420 <epoxy_handle_external_wglMakeCurrent+0x604220>
  78ad7f: 50                           	push	eax
  78ad80: eb 01                        	jmp	0x78ad83 <epoxy_handle_external_wglMakeCurrent+0x37eb83>
  78ad82: 56                           	push	esi
  78ad83: 8b cf                        	mov	ecx, edi
  78ad85: e8 66 db c9 ff               	call	0x4288f0 <epoxy_handle_external_wglMakeCurrent+0x1c6f0>
  78ad8a: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78ad90: e8 8b d3 f6 ff               	call	0x6f8120 <epoxy_handle_external_wglMakeCurrent+0x2ebf20>
  78ad95: 84 c0                        	test	al, al
  78ad97: 0f 85 7e 00 00 00            	jne	0x78ae1b <epoxy_handle_external_wglMakeCurrent+0x37ec1b>
  78ad9d: 8b 87 4c 13 00 00            	mov	eax, dword ptr [edi + 0x134c]
  78ada3: 03 87 44 13 00 00            	add	eax, dword ptr [edi + 0x1344]
  78ada9: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78adaf: 83 f8 01                     	cmp	eax, 0x1
  78adb2: 7e 1a                        	jle	0x78adce <epoxy_handle_external_wglMakeCurrent+0x37ebce>
  78adb4: e8 77 97 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  78adb9: 8b c8                        	mov	ecx, eax
  78adbb: e8 e0 15 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78adc0: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78adc6: 50                           	push	eax
  78adc7: e8 b4 8e fc ff               	call	0x753c80 <epoxy_handle_external_wglMakeCurrent+0x347a80>
  78adcc: eb 4d                        	jmp	0x78ae1b <epoxy_handle_external_wglMakeCurrent+0x37ec1b>
  78adce: e8 dd 8e fc ff               	call	0x753cb0 <epoxy_handle_external_wglMakeCurrent+0x347ab0>
  78add3: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78add9: 8b f0                        	mov	esi, eax
  78addb: e8 50 97 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  78ade0: 8b c8                        	mov	ecx, eax
  78ade2: e8 b9 15 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78ade7: 8b c8                        	mov	ecx, eax
  78ade9: 2b c6                        	sub	eax, esi
  78adeb: 83 f9 09                     	cmp	ecx, 0x9
  78adee: 7e 0f                        	jle	0x78adff <epoxy_handle_external_wglMakeCurrent+0x37ebff>
  78adf0: 83 f9 0c                     	cmp	ecx, 0xc
  78adf3: 7d 03                        	jge	0x78adf8 <epoxy_handle_external_wglMakeCurrent+0x37ebf8>
  78adf5: 48                           	dec	eax
  78adf6: eb 07                        	jmp	0x78adff <epoxy_handle_external_wglMakeCurrent+0x37ebff>
  78adf8: b8 0a 00 00 00               	mov	eax, 0xa
  78adfd: 2b c6                        	sub	eax, esi
  78adff: 83 f8 02                     	cmp	eax, 0x2
  78ae02: 7e 17                        	jle	0x78ae1b <epoxy_handle_external_wglMakeCurrent+0x37ec1b>
  78ae04: 8b 0d 9c 16 c7 00            	mov	ecx, dword ptr [0xc7169c]
  78ae0a: e8 f1 69 c9 ff               	call	0x421800 <epoxy_handle_external_wglMakeCurrent+0x15600>
  78ae0f: 68 49 01 00 00               	push	0x149
  78ae14: 8b c8                        	mov	ecx, eax
  78ae16: e8 05 ec 19 00               	call	0x929a20 <epoxy_handle_external_wglMakeCurrent+0x51d820>
  78ae1b: 6a 00                        	push	0x0
  78ae1d: 68 00 40 00 00               	push	0x4000
  78ae22: 8b cf                        	mov	ecx, edi
  78ae24: e8 07 c6 c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78ae29: 84 c0                        	test	al, al
  78ae2b: 0f 85 bf 02 00 00            	jne	0x78b0f0 <epoxy_handle_external_wglMakeCurrent+0x37eef0>
  78ae31: 8b cf                        	mov	ecx, edi
  78ae33: e8 38 c6 c8 ff               	call	0x417470 <epoxy_handle_external_wglMakeCurrent+0xb270>
  78ae38: 84 c0                        	test	al, al
  78ae3a: 0f 85 b0 02 00 00            	jne	0x78b0f0 <epoxy_handle_external_wglMakeCurrent+0x37eef0>
  78ae40: 8b 8f 68 01 00 00            	mov	ecx, dword ptr [edi + 0x168]
  78ae46: 8b c1                        	mov	eax, ecx
  78ae48: 8b 97 6c 01 00 00            	mov	edx, dword ptr [edi + 0x16c]
  78ae4e: 25 00 01 00 00               	and	eax, 0x100
  78ae53: 83 c8 00                     	or	eax, 0x0
  78ae56: 74 0f                        	je	0x78ae67 <epoxy_handle_external_wglMakeCurrent+0x37ec67>
  78ae58: c7 85 a8 fe ff ff 30 76 b6 00	mov	dword ptr [ebp - 0x158], 0xb67630
  78ae62: e9 ee 00 00 00               	jmp	0x78af55 <epoxy_handle_external_wglMakeCurrent+0x37ed55>
  78ae67: 8b c1                        	mov	eax, ecx
  78ae69: 25 00 02 00 00               	and	eax, 0x200
  78ae6e: 83 c8 00                     	or	eax, 0x0
  78ae71: 74 0f                        	je	0x78ae82 <epoxy_handle_external_wglMakeCurrent+0x37ec82>
  78ae73: c7 85 a8 fe ff ff 10 76 b6 00	mov	dword ptr [ebp - 0x158], 0xb67610
  78ae7d: e9 d3 00 00 00               	jmp	0x78af55 <epoxy_handle_external_wglMakeCurrent+0x37ed55>
  78ae82: 8b c1                        	mov	eax, ecx
  78ae84: 25 00 10 00 00               	and	eax, 0x1000
  78ae89: 83 c8 00                     	or	eax, 0x0
  78ae8c: 74 0f                        	je	0x78ae9d <epoxy_handle_external_wglMakeCurrent+0x37ec9d>
  78ae8e: c7 85 a8 fe ff ff 18 76 b6 00	mov	dword ptr [ebp - 0x158], 0xb67618
  78ae98: e9 b8 00 00 00               	jmp	0x78af55 <epoxy_handle_external_wglMakeCurrent+0x37ed55>
  78ae9d: 8b c1                        	mov	eax, ecx
  78ae9f: 83 e0 40                     	and	eax, 0x40
  78aea2: 83 c8 00                     	or	eax, 0x0
  78aea5: 74 0f                        	je	0x78aeb6 <epoxy_handle_external_wglMakeCurrent+0x37ecb6>
  78aea7: c7 85 a8 fe ff ff 20 76 b6 00	mov	dword ptr [ebp - 0x158], 0xb67620
  78aeb1: e9 9f 00 00 00               	jmp	0x78af55 <epoxy_handle_external_wglMakeCurrent+0x37ed55>
  78aeb6: 8b c1                        	mov	eax, ecx
  78aeb8: 25 00 08 00 00               	and	eax, 0x800
  78aebd: 83 c8 00                     	or	eax, 0x0
  78aec0: 74 0f                        	je	0x78aed1 <epoxy_handle_external_wglMakeCurrent+0x37ecd1>
  78aec2: c7 85 a8 fe ff ff 28 76 b6 00	mov	dword ptr [ebp - 0x158], 0xb67628
  78aecc: e9 84 00 00 00               	jmp	0x78af55 <epoxy_handle_external_wglMakeCurrent+0x37ed55>
  78aed1: 83 e2 04                     	and	edx, 0x4
  78aed4: 33 c0                        	xor	eax, eax
  78aed6: 0b c2                        	or	eax, edx
  78aed8: 74 0f                        	je	0x78aee9 <epoxy_handle_external_wglMakeCurrent+0x37ece9>
  78aeda: c7 85 a8 fe ff ff 90 76 b6 00	mov	dword ptr [ebp - 0x158], 0xb67690
  78aee4: e9 6c 00 00 00               	jmp	0x78af55 <epoxy_handle_external_wglMakeCurrent+0x37ed55>
  78aee9: 81 e1 80 00 00 00            	and	ecx, 0x80
  78aeef: 83 c9 00                     	or	ecx, 0x0
  78aef2: 74 22                        	je	0x78af16 <epoxy_handle_external_wglMakeCurrent+0x37ed16>
  78aef4: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78aefa: e8 51 c9 c8 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  78aeff: 8b c8                        	mov	ecx, eax
  78af01: e8 4a e6 c9 ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  78af06: 84 c0                        	test	al, al
  78af08: 74 0c                        	je	0x78af16 <epoxy_handle_external_wglMakeCurrent+0x37ed16>
  78af0a: c7 85 a8 fe ff ff 9c 76 b6 00	mov	dword ptr [ebp - 0x158], 0xb6769c
  78af14: eb 3f                        	jmp	0x78af55 <epoxy_handle_external_wglMakeCurrent+0x37ed55>
  78af16: 83 bf 1c 03 00 00 00         	cmp	dword ptr [edi + 0x31c], 0x0
  78af1d: 0f 8e 9b 00 00 00            	jle	0x78afbe <epoxy_handle_external_wglMakeCurrent+0x37edbe>
  78af23: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78af29: e8 22 c9 c8 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  78af2e: 8b c8                        	mov	ecx, eax
  78af30: e8 1b e6 c9 ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  78af35: 84 c0                        	test	al, al
  78af37: 0f 84 81 00 00 00            	je	0x78afbe <epoxy_handle_external_wglMakeCurrent+0x37edbe>
  78af3d: 66 83 bf d2 2e 00 00 00      	cmp	word ptr [edi + 0x2ed2], 0x0
  78af45: 0f 85 73 00 00 00            	jne	0x78afbe <epoxy_handle_external_wglMakeCurrent+0x37edbe>
  78af4b: c7 85 a8 fe ff ff 2c b0 b6 00	mov	dword ptr [ebp - 0x158], 0xb6b02c
  78af55: 8d b7 0c 11 00 00            	lea	esi, [edi + 0x110c]
  78af5b: 8b ce                        	mov	ecx, esi
  78af5d: e8 fe 51 c9 ff               	call	0x420160 <epoxy_handle_external_wglMakeCurrent+0x13f60>
  78af62: 84 c0                        	test	al, al
  78af64: 75 30                        	jne	0x78af96 <epoxy_handle_external_wglMakeCurrent+0x37ed96>
  78af66: 68 5c 76 b6 00               	push	0xb6765c
  78af6b: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78af6e: e8 cd 13 c8 ff               	call	0x40c340 <epoxy_handle_external_wglMakeCurrent+0x140>
  78af73: 6a 01                        	push	0x1
  78af75: 8d 45 ac                     	lea	eax, [ebp - 0x54]
  78af78: c7 45 fc 16 00 00 00         	mov	dword ptr [ebp - 0x4], 0x16
  78af7f: 50                           	push	eax
  78af80: 8b ce                        	mov	ecx, esi
  78af82: e8 c9 0d c8 ff               	call	0x40bd50 <.text+0xad50>
  78af87: 8d 4d ac                     	lea	ecx, [ebp - 0x54]
  78af8a: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  78af91: e8 8a 0f c8 ff               	call	0x40bf20 <.text+0xaf20>
  78af96: 68 ec a4 b1 00               	push	0xb1a4ec
  78af9b: 8b ce                        	mov	ecx, esi
  78af9d: e8 2e f5 c7 ff               	call	0x40a4d0 <.text+0x94d0>
  78afa2: 84 c0                        	test	al, al
  78afa4: 74 07                        	je	0x78afad <epoxy_handle_external_wglMakeCurrent+0x37edad>
  78afa6: 8b ce                        	mov	ecx, esi
  78afa8: e8 53 e1 c7 ff               	call	0x409100 <.text+0x8100>
  78afad: 6a 00                        	push	0x0
  78afaf: ff b5 a8 fe ff ff            	push	dword ptr [ebp - 0x158]
  78afb5: 8b ce                        	mov	ecx, esi
  78afb7: e8 c4 f3 c7 ff               	call	0x40a380 <.text+0x9380>
  78afbc: eb 0b                        	jmp	0x78afc9 <epoxy_handle_external_wglMakeCurrent+0x37edc9>
  78afbe: 8d 8f 0c 11 00 00            	lea	ecx, [edi + 0x110c]
  78afc4: e8 47 f9 c7 ff               	call	0x40a910 <.text+0x9910>
  78afc9: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78afcc: e8 8f 34 c9 ff               	call	0x41e460 <epoxy_handle_external_wglMakeCurrent+0x12260>
  78afd1: 8b c8                        	mov	ecx, eax
  78afd3: e8 b8 0c c8 ff               	call	0x40bc90 <.text+0xac90>
  78afd8: 8b cf                        	mov	ecx, edi
  78afda: 89 85 cc fe ff ff            	mov	dword ptr [ebp - 0x134], eax
  78afe0: e8 2b 01 02 00               	call	0x7ab110 <epoxy_handle_external_wglMakeCurrent+0x39ef10>
  78afe5: 84 c0                        	test	al, al
  78afe7: 74 17                        	je	0x78b000 <epoxy_handle_external_wglMakeCurrent+0x37ee00>
  78afe9: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78afec: e8 7f 34 c9 ff               	call	0x41e470 <epoxy_handle_external_wglMakeCurrent+0x12270>
  78aff1: 8b c8                        	mov	ecx, eax
  78aff3: e8 98 0c c8 ff               	call	0x40bc90 <.text+0xac90>
  78aff8: 89 85 e4 fe ff ff            	mov	dword ptr [ebp - 0x11c], eax
  78affe: eb 0a                        	jmp	0x78b00a <epoxy_handle_external_wglMakeCurrent+0x37ee0a>
  78b000: c7 85 e4 fe ff ff ff ff ff ff	mov	dword ptr [ebp - 0x11c], 0xffffffff
  78b00a: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78b00d: e8 3e fc c7 ff               	call	0x40ac50 <.text+0x9c50>
  78b012: 8d 4f 48                     	lea	ecx, [edi + 0x48]
  78b015: 8b f0                        	mov	esi, eax
  78b017: e8 64 f7 c7 ff               	call	0x40a780 <.text+0x9780>
  78b01c: 56                           	push	esi
  78b01d: ff b5 e4 fe ff ff            	push	dword ptr [ebp - 0x11c]
  78b023: 8d 4d a4                     	lea	ecx, [ebp - 0x5c]
  78b026: 50                           	push	eax
  78b027: ff b5 cc fe ff ff            	push	dword ptr [ebp - 0x134]
  78b02d: 8d 87 60 03 00 00            	lea	eax, [edi + 0x360]
  78b033: 50                           	push	eax
  78b034: 8d 87 3c 03 00 00            	lea	eax, [edi + 0x33c]
  78b03a: 50                           	push	eax
  78b03b: e8 f0 87 fc ff               	call	0x753830 <epoxy_handle_external_wglMakeCurrent+0x347630>
  78b040: 50                           	push	eax
  78b041: 8d 8f 34 1b 00 00            	lea	ecx, [edi + 0x1b34]
  78b047: e8 f4 e7 0a 00               	call	0x839840 <epoxy_handle_external_wglMakeCurrent+0x42d640>
  78b04c: 8d 8f 58 1c 00 00            	lea	ecx, [edi + 0x1c58]
  78b052: e8 69 f2 c9 ff               	call	0x42a2c0 <epoxy_handle_external_wglMakeCurrent+0x1e0c0>
  78b057: 84 c0                        	test	al, al
  78b059: 0f 84 68 00 00 00            	je	0x78b0c7 <epoxy_handle_external_wglMakeCurrent+0x37eec7>
  78b05f: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b065: e8 c6 94 c9 ff               	call	0x424530 <epoxy_handle_external_wglMakeCurrent+0x18330>
  78b06a: 8b c8                        	mov	ecx, eax
  78b06c: e8 2f 13 c8 ff               	call	0x40c3a0 <epoxy_handle_external_wglMakeCurrent+0x1a0>
  78b071: 83 f8 0c                     	cmp	eax, 0xc
  78b074: 75 51                        	jne	0x78b0c7 <epoxy_handle_external_wglMakeCurrent+0x37eec7>
  78b076: 6a 00                        	push	0x0
  78b078: 68 96 00 00 00               	push	0x96
  78b07d: 8b cf                        	mov	ecx, edi
  78b07f: e8 8c 16 f2 ff               	call	0x6ac710 <epoxy_handle_external_wglMakeCurrent+0x2a0510>
  78b084: 84 c0                        	test	al, al
  78b086: 74 3f                        	je	0x78b0c7 <epoxy_handle_external_wglMakeCurrent+0x37eec7>
  78b088: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b08e: e8 ed c3 c7 ff               	call	0x407480 <.text+0x6480>
  78b093: 8b c8                        	mov	ecx, eax
  78b095: e8 46 87 fc ff               	call	0x7537e0 <epoxy_handle_external_wglMakeCurrent+0x3475e0>
  78b09a: 6b c8 69                     	imul	ecx, eax, 0x69
  78b09d: 83 c1 4b                     	add	ecx, 0x4b
  78b0a0: e8 6b 3f ef ff               	call	0x67f010 <epoxy_handle_external_wglMakeCurrent+0x272e10>
  78b0a5: 85 c0                        	test	eax, eax
  78b0a7: 75 1e                        	jne	0x78b0c7 <epoxy_handle_external_wglMakeCurrent+0x37eec7>
  78b0a9: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b0af: e8 4c ac d1 ff               	call	0x4a5d00 <epoxy_handle_external_wglMakeCurrent+0x99b00>
  78b0b4: 84 c0                        	test	al, al
  78b0b6: 75 0f                        	jne	0x78b0c7 <epoxy_handle_external_wglMakeCurrent+0x37eec7>
  78b0b8: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b0be: 6a 3f                        	push	0x3f
  78b0c0: 6a 1e                        	push	0x1e
  78b0c2: e8 29 a9 f7 ff               	call	0x7059f0 <epoxy_handle_external_wglMakeCurrent+0x2f97f0>
  78b0c7: 8d 8f 58 1c 00 00            	lea	ecx, [edi + 0x1c58]
  78b0cd: e8 ee f1 c9 ff               	call	0x42a2c0 <epoxy_handle_external_wglMakeCurrent+0x1e0c0>
  78b0d2: 84 c0                        	test	al, al
  78b0d4: 74 1a                        	je	0x78b0f0 <epoxy_handle_external_wglMakeCurrent+0x37eef0>
  78b0d6: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b0dc: e8 1f ac d1 ff               	call	0x4a5d00 <epoxy_handle_external_wglMakeCurrent+0x99b00>
  78b0e1: 84 c0                        	test	al, al
  78b0e3: 74 0b                        	je	0x78b0f0 <epoxy_handle_external_wglMakeCurrent+0x37eef0>
  78b0e5: 8d 8f 58 1c 00 00            	lea	ecx, [edi + 0x1c58]
  78b0eb: e8 40 e7 0a 00               	call	0x839830 <epoxy_handle_external_wglMakeCurrent+0x42d630>
  78b0f0: 6a 00                        	push	0x0
  78b0f2: 68 00 40 00 00               	push	0x4000
  78b0f7: 8b cf                        	mov	ecx, edi
  78b0f9: e8 32 c3 c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78b0fe: 84 c0                        	test	al, al
  78b100: 0f 85 cc 00 00 00            	jne	0x78b1d2 <epoxy_handle_external_wglMakeCurrent+0x37efd2>
  78b106: 8b cf                        	mov	ecx, edi
  78b108: e8 63 c3 c8 ff               	call	0x417470 <epoxy_handle_external_wglMakeCurrent+0xb270>
  78b10d: 84 c0                        	test	al, al
  78b10f: 74 0b                        	je	0x78b11c <epoxy_handle_external_wglMakeCurrent+0x37ef1c>
  78b111: 8d 8f 54 1e 00 00            	lea	ecx, [edi + 0x1e54]
  78b117: e8 a4 15 05 00               	call	0x7dc6c0 <epoxy_handle_external_wglMakeCurrent+0x3d04c0>
  78b11c: 8d 85 58 fe ff ff            	lea	eax, [ebp - 0x1a8]
  78b122: 50                           	push	eax
  78b123: 8d 8f 54 1e 00 00            	lea	ecx, [edi + 0x1e54]
  78b129: e8 32 14 e8 ff               	call	0x60c560 <epoxy_handle_external_wglMakeCurrent+0x200360>
  78b12e: 8d 45 e4                     	lea	eax, [ebp - 0x1c]
  78b131: 50                           	push	eax
  78b132: 8d 8f 54 1e 00 00            	lea	ecx, [edi + 0x1e54]
  78b138: e8 33 e1 d0 ff               	call	0x499270 <epoxy_handle_external_wglMakeCurrent+0x8d070>
  78b13d: 50                           	push	eax
  78b13e: 8d 8d 58 fe ff ff            	lea	ecx, [ebp - 0x1a8]
  78b144: e8 07 13 e8 ff               	call	0x60c450 <epoxy_handle_external_wglMakeCurrent+0x200250>
  78b149: 84 c0                        	test	al, al
  78b14b: 0f 84 78 00 00 00            	je	0x78b1c9 <epoxy_handle_external_wglMakeCurrent+0x37efc9>
  78b151: 8d 8d 58 fe ff ff            	lea	ecx, [ebp - 0x1a8]
  78b157: e8 c4 12 e8 ff               	call	0x60c420 <epoxy_handle_external_wglMakeCurrent+0x200220>
  78b15c: 8d 8d 58 fe ff ff            	lea	ecx, [ebp - 0x1a8]
  78b162: ff 08                        	dec	dword ptr [eax]
  78b164: e8 b7 12 e8 ff               	call	0x60c420 <epoxy_handle_external_wglMakeCurrent+0x200220>
  78b169: 83 38 00                     	cmp	dword ptr [eax], 0x0
  78b16c: 7f 31                        	jg	0x78b19f <epoxy_handle_external_wglMakeCurrent+0x37ef9f>
  78b16e: 83 ec 0c                     	sub	esp, 0xc
  78b171: 8d 85 58 fe ff ff            	lea	eax, [ebp - 0x1a8]
  78b177: 8b cc                        	mov	ecx, esp
  78b179: 50                           	push	eax
  78b17a: e8 d1 eb ce ff               	call	0x479d50 <epoxy_handle_external_wglMakeCurrent+0x6db50>
  78b17f: 8d 85 4c fe ff ff            	lea	eax, [ebp - 0x1b4]
  78b185: 50                           	push	eax
  78b186: 8d 8f 54 1e 00 00            	lea	ecx, [edi + 0x1e54]
  78b18c: e8 3f 15 05 00               	call	0x7dc6d0 <epoxy_handle_external_wglMakeCurrent+0x3d04d0>
  78b191: 50                           	push	eax
  78b192: 8d 8d 58 fe ff ff            	lea	ecx, [ebp - 0x1a8]
  78b198: e8 93 01 00 00               	call	0x78b330 <epoxy_handle_external_wglMakeCurrent+0x37f130>
  78b19d: eb 0b                        	jmp	0x78b1aa <epoxy_handle_external_wglMakeCurrent+0x37efaa>
  78b19f: 8d 8d 58 fe ff ff            	lea	ecx, [ebp - 0x1a8]
  78b1a5: e8 66 12 e8 ff               	call	0x60c410 <epoxy_handle_external_wglMakeCurrent+0x200210>
  78b1aa: 8d 45 e4                     	lea	eax, [ebp - 0x1c]
  78b1ad: 50                           	push	eax
  78b1ae: 8d 8f 54 1e 00 00            	lea	ecx, [edi + 0x1e54]
  78b1b4: e8 b7 e0 d0 ff               	call	0x499270 <epoxy_handle_external_wglMakeCurrent+0x8d070>
  78b1b9: 50                           	push	eax
  78b1ba: 8d 8d 58 fe ff ff            	lea	ecx, [ebp - 0x1a8]
  78b1c0: e8 8b 12 e8 ff               	call	0x60c450 <epoxy_handle_external_wglMakeCurrent+0x200250>
  78b1c5: 84 c0                        	test	al, al
  78b1c7: 75 88                        	jne	0x78b151 <epoxy_handle_external_wglMakeCurrent+0x37ef51>
  78b1c9: 33 c0                        	xor	eax, eax
  78b1cb: 66 89 87 94 1d 00 00         	mov	word ptr [edi + 0x1d94], ax
  78b1d2: 80 bf a9 20 00 00 00         	cmp	byte ptr [edi + 0x20a9], 0x0
  78b1d9: 74 2a                        	je	0x78b205 <epoxy_handle_external_wglMakeCurrent+0x37f005>
  78b1db: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b1e1: e8 6a c6 c8 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  78b1e6: 8b c8                        	mov	ecx, eax
  78b1e8: e8 63 e3 c9 ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  78b1ed: 84 c0                        	test	al, al
  78b1ef: 74 0a                        	je	0x78b1fb <epoxy_handle_external_wglMakeCurrent+0x37effb>
  78b1f1: c7 87 88 01 00 00 00 00 00 00	mov	dword ptr [edi + 0x188], 0x0
  78b1fb: c7 87 84 01 00 00 03 00 00 00	mov	dword ptr [edi + 0x184], 0x3
  78b205: 8b cf                        	mov	ecx, edi
  78b207: e8 f4 04 05 00               	call	0x7db700 <epoxy_handle_external_wglMakeCurrent+0x3cf500>
  78b20c: 84 c0                        	test	al, al
  78b20e: 74 0a                        	je	0x78b21a <epoxy_handle_external_wglMakeCurrent+0x37f01a>
  78b210: c7 87 88 01 00 00 00 00 00 00	mov	dword ptr [edi + 0x188], 0x0
  78b21a: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b220: e8 2b c6 c8 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  78b225: 8b c8                        	mov	ecx, eax
  78b227: e8 24 e3 c9 ff               	call	0x429550 <epoxy_handle_external_wglMakeCurrent+0x1d350>
  78b22c: 84 c0                        	test	al, al
  78b22e: 74 1a                        	je	0x78b24a <epoxy_handle_external_wglMakeCurrent+0x37f04a>
  78b230: 8b 0d 78 16 c7 00            	mov	ecx, dword ptr [0xc71678]
  78b236: e8 15 c6 c8 ff               	call	0x417850 <epoxy_handle_external_wglMakeCurrent+0xb650>
  78b23b: 8b c8                        	mov	ecx, eax
  78b23d: e8 ae c4 c8 ff               	call	0x4176f0 <epoxy_handle_external_wglMakeCurrent+0xb4f0>
  78b242: 57                           	push	edi
  78b243: 8b c8                        	mov	ecx, eax
  78b245: 8b 10                        	mov	edx, dword ptr [eax]
  78b247: ff 52 58                     	call	dword ptr [edx + 0x58]
  78b24a: 6a 00                        	push	0x0
  78b24c: 68 00 40 00 00               	push	0x4000
  78b251: 8b cf                        	mov	ecx, edi
  78b253: e8 d8 c1 c8 ff               	call	0x417430 <epoxy_handle_external_wglMakeCurrent+0xb230>
  78b258: 84 c0                        	test	al, al
  78b25a: 75 0a                        	jne	0x78b266 <epoxy_handle_external_wglMakeCurrent+0x37f066>
  78b25c: c7 87 b8 16 00 00 00 00 00 00	mov	dword ptr [edi + 0x16b8], 0x0
  78b266: 8b 0d 90 16 c7 00            	mov	ecx, dword ptr [0xc71690]
  78b26c: 57                           	push	edi
  78b26d: e8 be 8e 0d 00               	call	0x864130 <epoxy_handle_external_wglMakeCurrent+0x457f30>
  78b272: 8b 4d f4                     	mov	ecx, dword ptr [ebp - 0xc]
  78b275: 64 89 0d 00 00 00 00         	mov	dword ptr fs:[0x0], ecx
  78b27c: 59                           	pop	ecx
  78b27d: 5f                           	pop	edi
  78b27e: 5e                           	pop	esi
  78b27f: 8b 4d f0                     	mov	ecx, dword ptr [ebp - 0x10]
  78b282: 33 cd                        	xor	ecx, ebp
  78b284: e8 a2 3e 36 00               	call	0xaef12b <epoxy_has_wgl_extension+0x4141b>
  78b289: 8b e5                        	mov	esp, ebp
  78b28b: 5d                           	pop	ebp
  78b28c: c3                           	ret
  78b28d: 68 c8 11 c8 00               	push	0xc811c8
  78b292: e8 06 40 36 00               	call	0xaef29d <epoxy_has_wgl_extension+0x4158d>
  78b297: 83 c4 04                     	add	esp, 0x4
  78b29a: 83 3d c8 11 c8 00 ff         	cmp	dword ptr [0xc811c8], -0x1
  78b2a1: 0f 85 39 bc ff ff            	jne	0x786ee0 <epoxy_handle_external_wglMakeCurrent+0x37ace0>
  78b2a7: 83 ec 20                     	sub	esp, 0x20
  78b2aa: c7 45 fc 06 00 00 00         	mov	dword ptr [ebp - 0x4], 0x6
  78b2b1: f3 0f 10 05 54 a4 ba 00      	movss	xmm0, dword ptr [0xbaa454]
  78b2b9: b9 cc 11 c8 00               	mov	ecx, 0xc811cc
  78b2be: 0f 28 d8                     	movaps	xmm3, xmm0
  78b2c1: 0f 28 d0                     	movaps	xmm2, xmm0
  78b2c4: 0f 28 c8                     	movaps	xmm1, xmm0
  78b2c7: c7 44 24 1c 00 00 00 00      	mov	dword ptr [esp + 0x1c], 0x0
  78b2cf: c7 44 24 18 0a d7 a3 3c      	mov	dword ptr [esp + 0x18], 0x3ca3d70a
  78b2d7: c7 44 24 14 cd cc cc 3d      	mov	dword ptr [esp + 0x14], 0x3dcccccd
  78b2df: c7 44 24 10 00 00 80 3f      	mov	dword ptr [esp + 0x10], 0x3f800000
  78b2e7: c7 44 24 0c cd cc cc 3d      	mov	dword ptr [esp + 0xc], 0x3dcccccd
  78b2ef: c7 44 24 08 00 00 c0 3f      	mov	dword ptr [esp + 0x8], 0x3fc00000
  78b2f7: c7 44 24 04 00 00 00 40      	mov	dword ptr [esp + 0x4], 0x40000000
  78b2ff: c7 04 24 00 00 80 3f         	mov	dword ptr [esp], 0x3f800000
  78b306: e8 45 a8 ca ff               	call	0x435b50 <epoxy_handle_external_wglMakeCurrent+0x29950>
  78b30b: 68 c8 11 c8 00               	push	0xc811c8
  78b310: c7 45 fc ff ff ff ff         	mov	dword ptr [ebp - 0x4], 0xffffffff
  78b317: e8 37 3f 36 00               	call	0xaef253 <epoxy_has_wgl_extension+0x41543>
  78b31c: 83 c4 04                     	add	esp, 0x4
  78b31f: e9 bc bb ff ff               	jmp	0x786ee0 <epoxy_handle_external_wglMakeCurrent+0x37ace0>
  78b324: cc                           	int3
  78b325: cc                           	int3
  78b326: cc                           	int3
  78b327: cc                           	int3
  78b328: cc                           	int3
  78b329: cc                           	int3
  78b32a: cc                           	int3
  78b32b: cc                           	int3
  78b32c: cc                           	int3
  78b32d: cc                           	int3
  78b32e: cc                           	int3
  78b32f: cc                           	int3
