@ECHO OFF

SET ICONCACHE=%LOCALAPPDATA%\IconCache.db
SET ICONCACHE_X=%LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache*
SET THUMBCACHE=%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache*

MODE CON COLS=45 LINES=7
COLOR 1F
TITLE Applying

IF ERRORLEVEL 1 (
        GOTO FAILED
) ELSE (
        GOTO DELETE
)

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

:FAILED
        ECHO :::::::::::::::::::::::::::::::::::::::::::::
        ECHO ::                 Failed                  ::
        ECHO :::::::::::::::::::::::::::::::::::::::::::::
        TIMEOUT /T 5 >NUL
        GOTO EXIT

:SUCCESS
        ECHO :::::::::::::::::::::::::::::::::::::::::::::
        ECHO ::                Success                 ::
        ECHO :::::::::::::::::::::::::::::::::::::::::::::
        TIMEOUT /T 5 >NUL
        GOTO EXIT

:EXIT
        ECHO.
        ECHO You can now close this window. It will close automatically in 5 seconds.
        TIMEOUT /T 5 >NUL
        EXIT /B
