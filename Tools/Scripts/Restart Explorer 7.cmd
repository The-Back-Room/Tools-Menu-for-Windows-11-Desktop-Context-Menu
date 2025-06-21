@echo off

set INSTALL_DIR=C:\Tools\Explorer7

mode CON COLS=45 LINES=7
color 1F
title Applying
echo :::::::::::::::::::::::::::::::::::::::::::::
echo ::          Restarting Explorer 7          ::
echo :::::::::::::::::::::::::::::::::::::::::::::
echo.
taskkill /F /IM explorer.exe >nul
start %INSTALL_DIR%\explorer.exe
echo :::::::::::::::::::::::::::::::::::::::::::::
echo ::                Success                 ::
echo :::::::::::::::::::::::::::::::::::::::::::::
echo.
echo You can now close this window. It will close automatically in 5 seconds.
timeout /t 5 >nul
EXIT