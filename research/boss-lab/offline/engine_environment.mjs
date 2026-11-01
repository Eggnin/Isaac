import { fork } from 'node:child_process';
import { mkdirSync, readdirSync, linkSync, copyFileSync, symlinkSync, openSync, closeSync, readFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const research = dirname(dirname(fileURLToPath(import.meta.url)));
let serial = 0;

function linkResources(source, destination) {
  mkdirSync(destination, { recursive: true });
  for (const entry of readdirSync(source, { withFileTypes: true })) {
    const src = join(source, entry.name), dst = join(destination, entry.name);
    if (entry.isDirectory()) linkResources(src, dst);
    else if (entry.isFile()) {
      // These links share the private research copy, never the installed game.
      try { linkSync(src, dst); } catch { copyFileSync(src, dst); }
    }
  }
}

export class EngineEnvironment {
  constructor(options = {}) {
    this.options = { seed: '3JY1 6FLR', room: 's.boss.1010', targetNPC: 20, maxSteps: 3000, ...options };
    this.pending = new Map();
    this.nextId = 1;
    this.probeResults = [];
  }
  async reset(options = {}) {
    await this.close();
    this.options = { ...this.options, ...options };
    this.probeResults = [];
    const run = join(research, 'training-runs', `${Date.now()}-${process.pid}-${serial++}`);
    const instance = join(run, 'instance');
    if(this.options.sharedResources===true) {
      // A directory view avoids per-file link limits and fallback archive copies.
      // Runtime resources are read from the same private research source as above.
      mkdirSync(instance,{recursive:true});
      symlinkSync(join(research,'../runtime-instance/resources'),join(instance,'resources'),'junction');
    }else linkResources(join(research, '../runtime-instance/resources'), join(instance, 'resources'));
    const config = { ...this.options, run, instance, research };
    this.runDirectory = run;
    const log = join(run, 'engine.log');
    const fd = openSync(log, 'w');
    const child = fork(fileURLToPath(new URL('./engine_worker.mjs', import.meta.url)), [], {
      cwd: instance, windowsHide: true, execArgv: ['--no-wasm-tier-up'],
      env: { ...process.env, ISAAC_TRAINING_CONFIG: JSON.stringify(config) },
      stdio: ['ignore', fd, fd, 'ipc'], serialization: 'advanced',
    });
    closeSync(fd);
    this.child = child;
    return await new Promise((resolve, reject) => {
      const timer = setTimeout(() => {
        child.kill(); reject(new Error(`engine setup timeout; see ${log}`));
      }, this.options.setupTimeoutMs??120000);
      child.on('message', message => {
        if (this.child !== child) return;
        if (message.event === 'ready') {
          clearTimeout(timer);
          const text = readFileSync(log, 'utf8');
          const seeds = [...text.matchAll(/RNG Start Seed:\s*([A-Z0-9]{4}) ([A-Z0-9]{4})/g)];
          const actual = seeds.at(-1)?.slice(1).join('');
          if (actual !== this.options.seed.replace(/\s/g, '')) {
            child.kill(); reject(new Error(`native seed not confirmed (${actual}); see ${log}`)); return;
          }
          resolve({ ...message.observation, setup: message.setup ?? null });
        } else if (message.id) {
          const request = this.pending.get(message.id);
          if (request) {
            this.pending.delete(message.id);
            if (message.error) request.reject(new Error(message.error));
            else request.resolve(message.result);
          }
        } else if (message.event === 'probeResult') {
          this.probeResults.push(message.result);
        } else if (message.event === 'fatal') {
          clearTimeout(timer);
          const error = new Error(`${message.error}; see ${log}`);
          reject(error);
          for (const request of this.pending.values()) request.reject(error);
          this.pending.clear();
          child.kill();
        }
      });
      child.on('exit', (code, signal) => {
        clearTimeout(timer);
        if (this.child !== child) return;
        this.child = null;
        const error = new Error(`engine exited (${code ?? signal}); see ${log}`);
        reject(error);
        for (const request of this.pending.values()) request.reject(error);
        this.pending.clear();
      });
      child.on('error', error => { clearTimeout(timer); reject(error); });
    });
  }
  request(command, action) {
    if (!this.child?.connected) return Promise.reject(new Error('reset the environment first'));
    const id = this.nextId++;
    return new Promise((resolve, reject) => {
      this.pending.set(id, { resolve, reject });
      this.child.send({ id, command, action });
    });
  }
  step(action = {}) { return this.request('step', action); }
  rollout(options = {}) { return this.request('rollout', options); }
  probe(options = {}) { return this.request('probe', options); }
  peek() { return this.request('peek'); }
  async close() {
    const child = this.child;
    if (!child) return;
    this.child = null;
    for (const request of this.pending.values()) request.reject(new Error('environment closed'));
    this.pending.clear();
    await new Promise(resolve => {
      child.once('exit', resolve);
      child.kill(); // Only this owned, isolated training worker; never the game.
    });
  }
}
