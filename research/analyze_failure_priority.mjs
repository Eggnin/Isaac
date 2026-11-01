import { createHash } from 'node:crypto';
import { readFileSync, writeFileSync } from 'node:fs';
import { basename, resolve } from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';

const researchRoot = fileURLToPath(new URL('./', import.meta.url));

export const DEFAULT_INPUTS = Object.freeze([
  'monster-random-coverage-final.json',
  'mixed-reachhold.json',
  'mixed-reachhold-holdout.json',
  'enemy-coverage-current-3.json',
  'current-default-v13-bosscheck.json',
  'native-policy-mechanisms-v10-seed1.json',
  'native-policy-mechanisms-v10-seed2.json',
  'native-policy-mechanisms-v10-seed3.json',
]);

const BASE_FAMILY = Object.freeze({
  roll: 'contact',
  charge: 'contact',
  'hop-contact': 'contact',
  'explosive-projectile': 'projectile',
});

function unique(values) {
  return [...new Set(values.filter(Boolean))];
}

function eventHealthDamage(event) {
  const value = Number(event.healthDamage ?? event.amount ?? 0);
  return Number.isFinite(value) ? Math.max(0, value) : 0;
}

function projectileHasExplosion(hazard) {
  const raw = hazard.projectile_flags ?? hazard.projectileFlags;
  if (raw === undefined || raw === null) return false;
  try {
    const value = typeof raw === 'string'
      ? BigInt(raw.startsWith('0x') ? raw : `0x${raw}`)
      : BigInt(raw);
    return (value & 2n) !== 0n;
  } catch {
    return false;
  }
}

export function hazardFamily(hazard) {
  const kinds = Array.isArray(hazard.kinds) ? hazard.kinds : [];
  const animation = String(hazard.animation ?? '').toLowerCase();
  if (kinds.includes('contact')) {
    if (hazard.type === 265 && hazard.state === 8 && animation.includes('roll')) return 'roll';
    if ((hazard.type === 63 || hazard.type === 99) && hazard.state === 8 &&
        /(attack|charge|slide|roll)/.test(animation)) return 'charge';
    if (hazard.type === 29 && animation.includes('hop')) return 'hop-contact';
    return 'contact';
  }
  if (kinds.includes('explosive-projectile') ||
      (kinds.includes('projectile') && projectileHasExplosion(hazard))) {
    return 'explosive-projectile';
  }
  const preferred = [
    'cage-rock-wave',
    'cage-landing-creep',
    'projectile-burst',
    'falling-impact',
    'jump-landing',
    'laser-warning',
    'unknown-laser-axis',
    'monstro-landing',
    'explosive-npc',
    'projectile',
    'laser',
    'creep',
    'stomp',
    'bomb',
  ];
  return preferred.find(kind => kinds.includes(kind)) ?? kinds[0] ?? 'unknown';
}

export function hazardFamilies(event) {
  const hazards = [
    ...(Array.isArray(event.hazards) ? event.hazards : []),
    ...(Array.isArray(event.beforeHazards) ? event.beforeHazards : []),
  ];
  const actual = unique(hazards.map(hazardFamily));
  if (actual.length) return actual;
  return unique((event.lastDecision?.threat_kinds ?? []).map(kind =>
    BASE_FAMILY[kind] ?? kind
  )).concat(!event.lastDecision?.threat_kinds?.length ? ['unknown'] : []);
}

function baseFamily(family) {
  return BASE_FAMILY[family] ?? family;
}

export function classifyFailure(event, families = hazardFamilies(event)) {
  const decision = event.lastDecision;
  const healthDamage = eventHealthDamage(event);
  if (!decision || decision.valid === false) return 'evidence-incomplete';
  const predicted = new Set((decision.threat_kinds ?? []).map(baseFamily));
  const missing = families.filter(family => !predicted.has(baseFamily(family)));
  if (missing.length) return `missing-prediction:${missing.join('+')}`;
  if (healthDamage > 0 && decision.safe === true) return 'optimistic-safe';
  if (healthDamage > 0 && (decision.analysis?.zero_hit_final ?? 0) > 0)
    return 'safe-route-available-not-ranked';
  if (healthDamage > 0 && (decision.analysis?.pruned_zero_hit ?? 0) > 0)
    return 'beam-pruned-safe-route';
  if (healthDamage > 0 && (decision.analysis?.valid_final ?? 0) > 0)
    return 'no-zero-risk-route-in-search';
  if (healthDamage > 0 && decision.analysis?.cause === 'no-traversable-path')
    return 'terrain-or-search-exhausted';
  if (healthDamage > 0 && decision.safe === false) return 'no-predicted-zero-risk-route';
  if (healthDamage > 0) return 'damage-without-safe-flag';
  if (decision.safe === false) return 'observed-hit-without-health-damage';
  return 'observed-hit-with-optimistic-safe';
}

export function classifyFamilyFailure(event, family) {
  const decision = event.lastDecision;
  const healthDamage = eventHealthDamage(event);
  if (!decision || decision.valid === false) return 'evidence-incomplete';
  const predicted = new Set((decision.threat_kinds ?? []).map(baseFamily));
  const sawFamily = predicted.has(baseFamily(family));
  if (!sawFamily) return `missing-prediction:${family}`;
  if (healthDamage > 0 && decision.safe === true) return 'optimistic-safe';
  if (healthDamage > 0 && (decision.analysis?.zero_hit_final ?? 0) > 0)
    return 'safe-route-available-not-ranked';
  if (healthDamage > 0 && (decision.analysis?.pruned_zero_hit ?? 0) > 0)
    return 'beam-pruned-safe-route';
  if (healthDamage > 0 && (decision.analysis?.valid_final ?? 0) > 0)
    return 'no-zero-risk-route-in-search';
  if (healthDamage > 0 && decision.analysis?.cause === 'no-traversable-path')
    return 'terrain-or-search-exhausted';
  if (healthDamage > 0 && decision.safe === false) return 'no-predicted-zero-risk-route';
  if (healthDamage > 0) return 'damage-without-safe-flag';
  if (decision.safe === false) return 'observed-hit-without-health-damage';
  return 'observed-hit-with-optimistic-safe';
}

function mergedEvents(result) {
  const merged = new Map();
  const add = (event, source) => {
    const player = event.player?.position ?? {};
    const hasPosition = Number.isFinite(player.x) && Number.isFinite(player.y);
    const key = hasPosition
      ? [event.frame ?? '?', Math.round(player.x * 16), Math.round(player.y * 16)].join('|')
      : [event.frame ?? '?', event.amount ?? event.healthDamage ?? '?', 'no-position'].join('|');
    const prior = merged.get(key);
    if (prior) {
      prior.sources.add(source);
      if (eventHealthDamage(event) > eventHealthDamage(prior.event) ||
          eventHealthDamage(event) === eventHealthDamage(prior.event) && source === 'damageEvents') {
        prior.event = event;
      }
      return;
    }
    merged.set(key, { event, sources: new Set([source]) });
  };
  for (const event of result.hitEvents ?? []) add(event, 'hitEvents');
  for (const event of result.damageEvents ?? []) add(event, 'damageEvents');
  return [...merged.values()];
}

function runIdentity(report, result, index) {
  return [
    report.label,
    result.scenario ?? result.name ?? result.id ?? result.requestedTarget ?? result.target ?? `row-${index}`,
    result.seed ?? '',
    result.debugInvulnerable === undefined ? '' : Number(result.debugInvulnerable),
  ].join('|');
}

function sortedCounterObject(map) {
  return Object.fromEntries([...map.entries()].sort((a, b) =>
    b[1] - a[1] || a[0].localeCompare(b[0])
  ));
}

function increment(map, key, amount = 1) {
  map.set(key, (map.get(key) ?? 0) + amount);
}

function tableCell(value) {
  return String(value).replaceAll('|', '\\|').replaceAll('\n', ' ');
}

export function aggregateReports(reports) {
  const familyRows = new Map();
  const signatures = new Map();
  const reasonRows = new Map();
  const reportRows = [];
  const runKeys = new Set();
  let totalEvents = 0;
  let damagingEvents = 0;
  let healthDamage = 0;
  let eventsWithoutHazards = 0;

  const familyRow = family => {
    if (!familyRows.has(family)) {
      familyRows.set(family, {
        family,
        observedHitEvents: 0,
        damagingEvents: 0,
        healthDamage: 0,
        runs: new Set(),
        reports: new Set(),
        reasons: new Map(),
        examples: [],
      });
    }
    return familyRows.get(family);
  };

  for (const report of reports) {
    let reportEvents = 0;
    let reportDamagingEvents = 0;
    const reportFamilies = new Set();
    for (const [index, result] of (report.results ?? []).entries()) {
      const run = runIdentity(report, result, index);
      runKeys.add(run);
      for (const { event, sources } of mergedEvents(result)) {
        ++totalEvents;
        ++reportEvents;
        const families = hazardFamilies(event);
        const damage = eventHealthDamage(event);
        if (!(event.hazards?.length || event.beforeHazards?.length)) ++eventsWithoutHazards;
        if (damage > 0) {
          ++damagingEvents;
          ++reportDamagingEvents;
          healthDamage += damage;
        }
        const reason = classifyFailure(event, families);
        increment(reasonRows, reason);
        for (const family of families) {
          const row = familyRow(family);
          ++row.observedHitEvents;
          if (damage > 0) {
            ++row.damagingEvents;
            row.healthDamage += damage;
          }
          row.runs.add(run);
          row.reports.add(report.label);
          const familyReason = classifyFamilyFailure(event, family);
          increment(row.reasons, familyReason);
          reportFamilies.add(family);
          if (row.examples.length < 3 || damage > 0 && row.examples.filter(example => example.healthDamage > 0).length < 3) {
            row.examples.push({
              report: report.label,
              run: result.scenario ?? result.name ?? result.id ?? run,
              seed: result.seed ?? null,
              frame: event.frame ?? null,
              families,
              reason: familyReason,
              healthDamage: damage,
              safe: event.lastDecision?.safe ?? null,
              clearance: event.lastDecision?.clearance ?? null,
              cause: event.lastDecision?.analysis?.cause ?? null,
              zeroHitFinal: event.lastDecision?.analysis?.zero_hit_final ?? null,
              prunedZeroHit: event.lastDecision?.analysis?.pruned_zero_hit ?? null,
              sources: [...sources],
            });
          }
        }
        const signature = [...families].sort().join('+');
        if (!signatures.has(signature)) {
          signatures.set(signature, {
            signature,
            observedHitEvents: 0,
            damagingEvents: 0,
            healthDamage: 0,
            runs: new Set(),
            reports: new Set(),
            reasons: new Map(),
          });
        }
        const signatureRow = signatures.get(signature);
        ++signatureRow.observedHitEvents;
        if (damage > 0) {
          ++signatureRow.damagingEvents;
          signatureRow.healthDamage += damage;
        }
        signatureRow.runs.add(run);
        signatureRow.reports.add(report.label);
        increment(signatureRow.reasons, reason);
      }
    }
    reportRows.push({
      label: report.label,
      path: report.path,
      sha256: report.sha256,
      scope: report.scope ?? null,
      summary: report.summary ?? null,
      runs: (report.results ?? []).length,
      hitEvents: reportEvents,
      damagingEvents: reportDamagingEvents,
      families: [...reportFamilies].sort(),
    });
  }

  const rank = (a, b) =>
    b.damagingEvents - a.damagingEvents ||
    b.healthDamage - a.healthDamage ||
    b.observedHitEvents - a.observedHitEvents ||
    b.runs.size - a.runs.size ||
    a.family.localeCompare(b.family);
  const finish = row => ({
    ...row,
    runs: row.runs.size,
    reports: [...row.reports].sort(),
    reasons: sortedCounterObject(row.reasons),
  });
  const signatureRank = (a, b) =>
    b.damagingEvents - a.damagingEvents ||
    b.healthDamage - a.healthDamage ||
    b.observedHitEvents - a.observedHitEvents ||
    b.runs.size - a.runs.size ||
    a.signature.localeCompare(b.signature);

  return {
    methodology: {
      healthDamageIsPrimary:
        'Primary ranking uses captured health-damage events. Zero-damage collisions remain secondary evidence.',
      nonDamagingHits:
        'Calibrated invulnerable hits are potential failures, not proof of normal-mode damage.',
      classification:
        'optimistic-safe means the decision called the route safe but the event caused damage; no-predicted-zero-risk-route means the model saw the family but found no zero-risk action.',
    },
    totals: {
      inputs: reports.length,
      runs: runKeys.size,
      hitEvents: totalEvents,
      damagingEvents,
      healthDamage,
      eventsWithoutHazards,
    },
    reasons: sortedCounterObject(reasonRows),
    reports: reportRows,
    attackFamilies: [...familyRows.values()].map(finish).sort(rank),
    exactSignatures: [...signatures.values()].map(finish).sort(signatureRank),
  };
}

export function readReports(paths = DEFAULT_INPUTS) {
  return paths.map(item => {
    const path = resolve(researchRoot, item);
    const bytes = readFileSync(path);
    const parsed = JSON.parse(bytes.toString('utf8'));
    return {
      label: basename(path),
      path,
      sha256: createHash('sha256').update(bytes).digest('hex').toUpperCase(),
      scope: parsed.scope,
      summary: parsed.summary,
      results: Array.isArray(parsed.results)
        ? parsed.results
        : parsed.native === true && Number.isFinite(parsed.frames) ? [parsed] : [],
    };
  });
}

export function renderMarkdown(report) {
  const lines = [];
  lines.push('# 受伤失败优先级', '');
  lines.push(`输入 ${report.totals.inputs} 份，运行 ${report.totals.runs} 场，碰撞事件 ${report.totals.hitEvents} 次，实际血伤事件 ${report.totals.damagingEvents} 次，累计血伤 ${report.totals.healthDamage}。`, '');
  lines.push('校准无敌模式的零血伤碰撞只作为次级证据，不计入实际掉血主排序。', '');
  lines.push('## 按实际掉血排序', '');
  lines.push('| 攻击族 | 血伤事件 | 血伤量 | 全部碰撞 | 受影响运行 | 原因 |');
  lines.push('| --- | ---: | ---: | ---: | ---: | --- |');
  const damagingFamilies = report.attackFamilies.filter(row => row.damagingEvents > 0);
  for (const row of damagingFamilies.slice(0, 15)) {
    lines.push(`| ${tableCell(row.family)} | ${row.damagingEvents} | ${row.healthDamage} | ${row.observedHitEvents} | ${row.runs} | ${tableCell(Object.entries(row.reasons).map(([key, value]) => `${key}: ${value}`).join('; '))} |`);
  }
  lines.push('', '## 按全部碰撞命中排序', '');
  lines.push('| 攻击族 | 全部碰撞 | 血伤事件 | 受影响运行 |');
  lines.push('| --- | ---: | ---: | ---: |');
  for (const row of report.attackFamilies.slice(0, 15)) {
    lines.push(`| ${tableCell(row.family)} | ${row.observedHitEvents} | ${row.damagingEvents} | ${row.runs} |`);
  }
  lines.push('', '## 失败分类', '');
  lines.push('| 分类 | 事件数 |', '| --- | ---: |');
  for (const [reason, count] of Object.entries(report.reasons)) {
    lines.push(`| ${tableCell(reason)} | ${count} |`);
  }
  lines.push('', '## 高频组合', '');
  lines.push('| 危险组合 | 血伤事件 | 全部碰撞 | 示例 |');
  lines.push('| --- | ---: | ---: | --- |');
  for (const row of report.exactSignatures.slice(0, 12)) {
    lines.push(`| ${tableCell(row.signature)} | ${row.damagingEvents} | ${row.observedHitEvents} | ${row.runs} 场 |`);
  }
  lines.push('', '## 输入记录', '');
  lines.push('| 记录 | 运行 | 碰撞 | 血伤 | SHA-256 |');
  lines.push('| --- | ---: | ---: | ---: | --- |');
  for (const row of report.reports) {
    lines.push(`| ${tableCell(row.label)} | ${row.runs} | ${row.hitEvents} | ${row.damagingEvents} | \`${row.sha256}\` |`);
  }
  return `${lines.join('\n')}\n`;
}

function argument(name, fallback) {
  const prefix = `--${name}=`;
  return process.argv.slice(2).find(value => value.startsWith(prefix))?.slice(prefix.length) ?? fallback;
}

if (import.meta.url === pathToFileURL(process.argv[1] ?? '').href) {
  const positional = process.argv.slice(2).filter(value => !value.startsWith('--'));
  const inputs = positional.length ? positional : DEFAULT_INPUTS;
  const report = aggregateReports(readReports(inputs));
  const jsonOutput = resolve(researchRoot, argument('json', 'failure-priority-20261029.json'));
  const markdownOutput = resolve(researchRoot, argument('markdown', 'FAILURE-PRIORITY-20261029.md'));
  writeFileSync(jsonOutput, `${JSON.stringify(report, null, 2)}\n`);
  writeFileSync(markdownOutput, renderMarkdown(report));
  console.log(JSON.stringify({
    totals: report.totals,
    topDamagingFamilies: report.attackFamilies
      .filter(row => row.damagingEvents > 0)
      .slice(0, 10)
      .map(({ family, damagingEvents, healthDamage, observedHitEvents }) =>
        ({ family, damagingEvents, healthDamage, observedHitEvents })),
    topObservedFamilies: report.attackFamilies.slice(0, 10)
      .map(({ family, damagingEvents, observedHitEvents }) =>
        ({ family, damagingEvents, observedHitEvents })),
    jsonOutput,
    markdownOutput,
  }, null, 2));
}
