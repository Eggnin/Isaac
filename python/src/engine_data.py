"""Version-pinned numeric definitions bundled from the installed engine."""
import json
from pathlib import Path
ENUMS=json.loads((Path(__file__).resolve().parent/'engine_enums.json').read_text(encoding='utf-8'))
