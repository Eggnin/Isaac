import { createHash } from 'node:crypto';
export const excludedAllocationKeys = new Set(['address','descriptor','managerPointer','parent','pointer']);
export function canonicalState(value) {
  if(Array.isArray(value))return value.map(canonicalState);
  if(!value||typeof value!=='object')return value;
  return Object.fromEntries(Object.entries(value).filter(([key])=>!excludedAllocationKeys.has(key)).map(([k,v])=>[k,canonicalState(v)]));
}
export const stateHash = value => createHash('sha256').update(JSON.stringify(canonicalState(value))).digest('hex');
