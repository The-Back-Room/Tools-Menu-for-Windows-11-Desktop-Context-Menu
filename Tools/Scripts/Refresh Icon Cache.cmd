@ECHO OFF

SET ICONCACHE=%LOCALAPPDATA%\IconCache.db
SET ICONCACHE_X=%LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache*
SET THUMBCACHE=%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache*

COLOR 1F
TITLE Applying

IF EXIST "%THUMBCACHE%" GOTO DELETE
ECHO.
ECHO The %LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache*.db files have already been deleted
ECHO.
IF EXIST "%ICONCACHE_X%" GOTO DELETE
ECHO.
ECHO The %LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache_*.db files have already been deleted
ECHO.
IF EXIST "%ICONCACHE%" GOTO DELETE
ECHO.
ECHO The %LOCALAPPDATA%\IconCache.db file has already been deleted
ECHO.

GOTO EXIT

:DELETE
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::          Refreshing Icon Cache          ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO Attempting to delete IconCache and ThumbCache db files ...
TASKKILL /F /IM explorer.exe >NUL
ie4uinit.exe -show
TIMEOUT /T 2 >NUL
DEL /A /F "%ICONCACHE%" >NUL
DEL /A /F /Q "%ICONCACHE_X%" >NUL
DEL /A /F /Q "%THUMBCACHE%" >NUL
START explorer.exe
GOTO SUCCESS

:SUCCESS
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                Success                 ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO Successfully deleted the IconCache and ThumbCache db files
GOTO EXIT

:EXIT
ECHO.
ECHO You can now close this window. It will close automatically in 5 seconds.
ECHO.
TIMEOUT /T 5 >NUL
EXIT /B