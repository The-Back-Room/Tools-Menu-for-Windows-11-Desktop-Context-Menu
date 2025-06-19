@echo off

set INSTALL_DIR=C:\Tools\ExplorerBlurMica

title Asking for administrator access
mode CON COLS=41 LINES=7
color 1F
echo :::::::::::::::::::::::::::::::::::::::::
echo ::   Requesting administrator access   ::
echo :::::::::::::::::::::::::::::::::::::::::
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %Apply%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
color
cls

title Uninstalling
call :isAdmin
if %errorlevel% == 0 (
	regsvr32 /u %INSTALL_DIR%\ExplorerBlurMica.dll
    echo.
) else (
	echo Please run as Administrator
)

echo :::::::::::::::::::::::::::::::::::::::::
echo ::         Restarting explorer         ::
echo :::::::::::::::::::::::::::::::::::::::::
taskkill /F /IM explorer.exe >nul
start explorer.exe
echo :::::::::::::::::::::::::::::::::::::::::
echo ::               Success               ::
echo :::::::::::::::::::::::::::::::::::::::::
echo.
echo You can now close this window. It will close automatically in 5 seconds.
timeout /t 5 >nul
EXIT

:isAdmin
fsutil dirty query %systemdrive% >nul
exit /b %errorlevel%