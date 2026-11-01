const {default:createPolicy}=await import(process.env.BOSS_POLICY_MODULE??'./planner_policy.mjs');
import { toPlannerFrame } from './planner_frame.mjs';
const vectors = [[0,0],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]];
const fires = ['none','up','right','down','left'];
export async function createCorePolicy(parameters={}) {
  const policy = await createPolicy();
  let maxInputBytes=0;
  const call=(name,value)=>{
    // Frames with many native death effects exceed ccall's stack-string budget.
    // Own the input on the heap; the returned string is owned by the C++ bridge.
    const bytes=new TextEncoder().encode(JSON.stringify(value));
    maxInputBytes=Math.max(maxInputBytes,bytes.length);
    const pointer=policy._malloc(bytes.length+1);
    if(!pointer)throw new Error('planner input allocation failed');
    try{
      policy.HEAPU8.set(bytes,pointer);policy.HEAPU8[pointer+bytes.length]=0;
      return JSON.parse(policy.ccall(name,'string',['number'],[pointer]));
    }finally{policy._free(pointer);}
  };
  const configure = parameters => {
    const result=call('planner_configure',parameters);
    if(result.error)throw new Error(result.error);
    return result;
  };
  configure(parameters);
  return {
    configure,
    get maxInputBytes(){return maxInputBytes;},
    decide(module,observation,attack=true,eventBossTypes=[]) {
      const frame=toPlannerFrame(module,observation,attack);
      frame.encounter_active=observation.entities.some(e=>eventBossTypes.includes(e.type)&&e.exists!==false&&!e.dead&&e.hp>0);
      const decision=call('planner_decide',frame);
      if(decision.error)throw new Error(decision.error);
      const [x,y]=vectors[decision.move??0];
      return { action:{moveX:x,moveY:y,fire:decision.stop?'none':fires[decision.fire??0]}, decision, frame };
    },
  };
}
