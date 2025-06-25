@ECHO off
MODE CON COLS=45 LINES=7
COLOR 1F
TITLE Applying
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::         Restarting explorer.exe         ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
TASKKILL /F /IM explorer.exe >NUL
start explorer.exe
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                Success                 ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO You can now close this window. It will close automatically in 5 seconds.
TIMEOUT /T 5 >NUL
EXIT