// J460 sub_004a9860. These are loop rates, not complete future AI states.
export function deliriumLoopRates(entity) {
  const d=entity.delirium;
  const timer=(d.speedControlLo>>>7)&255;
  const counter=((d.speedControlLo>>>25)|(d.speedControlHi<<7))&1023;
  const ratio=d.maxHP>0?Math.max(0,Math.min(1,Math.fround(entity.hp/d.maxHP))):1;
  const aggression=Math.trunc(Math.fround(3-Math.fround(ratio*3)));
  const loops=timer?3:aggression,active=counter>4*loops;
  return {timer,counter,aggression,loops,active,
    animationRate:1+(d.extraAnimationEnabled?(active?aggression:1):0),
    aiUpdates:active?aggression+1:1};
}
