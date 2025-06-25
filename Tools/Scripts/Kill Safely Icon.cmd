@echo off
mode CON COLS=45 LINES=7
color 1F
title Applying
echo :::::::::::::::::::::::::::::::::::::::::::::
echo ::        Stopping safelyicon.exe          ::
echo :::::::::::::::::::::::::::::::::::::::::::::
taskkill /f /im safelyicon.exe >nul
echo :::::::::::::::::::::::::::::::::::::::::::::
echo ::                Success                  ::
echo :::::::::::::::::::::::::::::::::::::::::::::
echo.
echo You can now close this window. It will close automatically in 5 seconds.
timeout /t 5 >nul
EXIT