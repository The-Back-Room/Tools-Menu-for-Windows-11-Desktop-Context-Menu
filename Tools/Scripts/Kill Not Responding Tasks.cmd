@ECHO off
MODE CON COLS=45 LINES=7
COLOR 1F
TITLE Applying
TASKKILL /F /FI "status eq NOT RESPONDING"
TIMEOUT /T 3 >NUL
EXIT