@echo off
cd /d "%~dp0"
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\Start-Loop-Runs.ps1" -Mode room-test -RoomFixture "%~dp0tests\native-rooms\swarm-four-directions.xml"
pause
