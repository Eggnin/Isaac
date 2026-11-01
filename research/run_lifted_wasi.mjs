import { WASI } from 'node:wasi';
import { readFile } from 'node:fs/promises';
const path = new URL('./wasm-lift-smoke-check.wasm', import.meta.url);
const wasi = new WASI({ version: 'preview1', args: ['lift-smoke'], env: {}, preopens: {} });
const module = await WebAssembly.compile(await readFile(path));
const instance = await WebAssembly.instantiate(module, wasi.getImportObject());
wasi.start(instance);
