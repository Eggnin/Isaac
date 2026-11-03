import {createRequire} from 'node:module';
// Reuse the exact N-API bridge the external-truth path already uses. It only
// reports the address of the live Wasm ArrayBuffer; no game field is read here.
const bridge=createRequire(import.meta.url)('./memory_address.node');
export function captureAddress(module) {
  return {pid: process.pid, host_base: bridge.address(module.HEAPU8.buffer), length: module.HEAPU8.byteLength};
}
