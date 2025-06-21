@echo off
mode CON COLS=45 LINES=7
color 1F
title Applying
taskkill.exe /F /FI "status eq NOT RESPONDING"
timeout /t 3 >nul
EXIT