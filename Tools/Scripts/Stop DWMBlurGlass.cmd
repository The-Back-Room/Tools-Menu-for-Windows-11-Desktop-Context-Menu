@ECHO off
MODE CON COLS=45 LINES=7
COLOR 1F
TITLE Applying
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::          Stopping DWMBlurGlass          ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
sudo TASKKILL /F /IM DWMBlurGlass.exe >NUL
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                 Success                 ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO You can now close this window. It will close automatically in 5 seconds.
TIMEOUT /T 5 >NUL
EXIT