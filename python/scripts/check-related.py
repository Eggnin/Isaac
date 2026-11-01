"""Run only explicitly named offline checks; never discover the full suite."""
import os,sys,unittest
from pathlib import Path
project=Path(__file__).resolve().parents[1]
if len(sys.argv)<2:raise SystemExit('Name related unittest modules/classes/methods explicitly.')
for path in (project/'src',project/'tests',project/'tools/python-packages'):sys.path.insert(0,str(path))
suite=unittest.defaultTestLoader.loadTestsFromNames(sys.argv[1:])
raise SystemExit(not unittest.TextTestRunner(verbosity=1).run(suite).wasSuccessful())
