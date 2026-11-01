"""Backward-compatible entry point for mining boss logs.

The implementation lives in mine_existing_attacks.py. This wrapper keeps the
previous command name and defaults to role=boss.
"""
from mine_existing_attacks import main


if __name__ == "__main__":
    main()
