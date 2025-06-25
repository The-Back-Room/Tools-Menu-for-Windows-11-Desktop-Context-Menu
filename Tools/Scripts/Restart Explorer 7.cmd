@ECHO off

set INSTALL_DIR=C:\Tools\Explorer7

MODE CON COLS=45 LINES=7
COLOR 1F
TITLE Applying
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::         Switching explorer shell        ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO Stopping exoplorer.exe and starting:
ECHO - %INSTALL_DIR%\explorer.exe
TIMEOUT /T 5 >NUL
TASKKILL /F /IM explorer.exe >NUL
start %INSTALL_DIR%\explorer.exe
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                Success                 ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO You can now close this window. It will close automatically in 5 seconds.
TIMEOUT /T 5 >NUL
EXIT