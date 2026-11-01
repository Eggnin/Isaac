"""Build upstream's index for the owned, unmodified Steam EXE, under its own hash."""
import importlib.util
from pathlib import Path
import sys

root = Path(__file__).resolve().parent / 'the-browsing-of-isaac'
tool = root / 'scripts/decomp/tools/build-pe-index.py'
sys.path.insert(0, str(tool.parent))
spec = importlib.util.spec_from_file_location('candidate_index', tool)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
original_reader = module.PEImage
module.PEImage = lambda: original_reader(
    Path('D:/Steam/steamapps/common/The Binding of Isaac Rebirth/isaac-ng.exe'),
    verify_hash=False,
)
# This produces a fresh index keyed by the ACTUAL hash, never reuses the port's index.
raise SystemExit(module.main())
