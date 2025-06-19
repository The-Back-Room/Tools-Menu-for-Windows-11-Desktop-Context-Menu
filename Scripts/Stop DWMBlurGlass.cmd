@echo off
mode CON COLS=41 LINES=7
color 1F
echo :::::::::::::::::::::::::::::::::::::::::
echo ::       Stopping DWMBlur Glass        ::
echo :::::::::::::::::::::::::::::::::::::::::
taskkill /F /IM DWMBlurGlass.exe >nul
start explorer.exe
echo :::::::::::::::::::::::::::::::::::::::::
echo ::               Success               ::
echo :::::::::::::::::::::::::::::::::::::::::
echo.
echo You can now close this window. It will close automatically in 5 seconds.
timeout /t 5 >nul
EXIT