"""Optional pure-render gate, retaining the original body for parity checks."""
from pathlib import Path
import sys
root = Path(__file__).resolve().parent
sys.path.insert(0,str(root/'the-browsing-of-isaac/scripts/recomp/lift'))
import lift_patches
lift_patches.WRAP_PATCHES = {0x009555c0: '''void sub_009555c0(CpuState *restrict s) {
  /* WRAP-PATCH sub_009555c0: optional training render bypass; original retained. */
  RECOMP_VA(0x9555c0u);
  extern int isaac_training_skip_render(void);
  if (isaac_training_skip_render()) {
    s->EIP = MEMR32(s->ESP);
    s->ESP += 4;
    return;
  }
  sub_009555c0__lifted(s);
}
'''}
lift_patches.PROBE_PATCHES = {}
changed=lift_patches.apply_wrap_patches(root/'the-browsing-of-isaac/output/recomp/lift/original-j460')
print(f'{len(changed)} render translation unit(s) updated')
