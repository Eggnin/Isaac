export const HIT_COOLDOWN_RESET_FRAMES = 60;
export const DEFAULT_COOLDOWN_CALIBRATION = Object.freeze({
  minCooldown: HIT_COOLDOWN_RESET_FRAMES - 4,
  minIncrease: 3,
});

export function isCooldownHit(previous, current, calibration = DEFAULT_COOLDOWN_CALIBRATION) {
  const minCooldown = calibration?.minCooldown ?? DEFAULT_COOLDOWN_CALIBRATION.minCooldown;
  const minIncrease = calibration?.minIncrease ?? DEFAULT_COOLDOWN_CALIBRATION.minIncrease;
  return Number.isFinite(previous) && Number.isFinite(current) &&
    current >= minCooldown && current - previous >= minIncrease;
}
