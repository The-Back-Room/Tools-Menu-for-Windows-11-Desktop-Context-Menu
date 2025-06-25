@ECHO OFF

SET ICONCACHE=%LOCALAPPDATA%\IconCache.db
SET ICONCACHE_X=%LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache*
SET THUMBCACHE=%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache*

MODE CON COLS=45 LINES=7
COLOR 1F
TITLE Applying
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::          Refreshing Icon Cache          ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO Attempting to delete IconCache and ThumbCache DB files...
TASKKILL /F /IM explorer.exe >NUL
ie4uinit.exe -show
TIMEOUT /T 2 >NUL
IF EXIST "%ICONCACHE%" DEL /A /F /Q "%ICONCACHE%" >NUL
IF EXIST "%ICONCACHE_X%" DEL /A /F /Q "%ICONCACHE_X%" >NUL
IF EXIST "%THUMBCACHE%" DEL /A /F /Q "%THUMBCACHE%" >NUL
START explorer.exe >NUL
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                Success                 ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO You can now close this window. It will close automatically in 5 seconds.
TIMEOUT /T 5 >NUL
EXIT /B
