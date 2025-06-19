@echo off

set INSTALL_DIR=C:\Tools\src\\DWMBlurGlass

mode CON COLS=45 LINES=7
color 1F
echo :::::::::::::::::::::::::::::::::::::::::::::
echo ::        Opening DMWBlurGlass GUI         ::
echo :::::::::::::::::::::::::::::::::::::::::::::
start %INSTALL_DIR%\DWMBlurGlass.exe
echo :::::::::::::::::::::::::::::::::::::::::::::
echo ::                 Success                 ::
echo :::::::::::::::::::::::::::::::::::::::::::::
echo.
echo You can now close this window. It will close automatically in 5 seconds.
timeout /t 5 >nul
EXIT