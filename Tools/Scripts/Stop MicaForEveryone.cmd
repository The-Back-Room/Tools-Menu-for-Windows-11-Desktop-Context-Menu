@ECHO off
MODE CON COLS=45 LINES=7
COLOR 1F
TITLE Applying
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::        Stopping MicaForEveryone         ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
WMIC process WHERE "name='MicaForEveryone.App.exe'" get ProcessID | FIND /i "ProcessId" >NUL

IF ERRORLEVEL 1 (
	GOTO FAILED
)
	
IF ERRORLEVEL 2 (
	TASKKILL /F /IM MicaForEveryone.App.exe >NUL
	GOTO SUCCESS
)

:SUCCESS
	ECHO :::::::::::::::::::::::::::::::::::::::::::::
	ECHO ::                Success                  ::
	ECHO :::::::::::::::::::::::::::::::::::::::::::::
	GOTO EXIT

:FAILED
	ECHO :::::::::::::::::::::::::::::::::::::::::::::
	ECHO ::        No instance(s) detected          ::
	ECHO :::::::::::::::::::::::::::::::::::::::::::::
	GOTO EXIT

:EXIT
	ECHO.
	ECHO You can now close this window. It will close automatically in 5 seconds.
	TIMEOUT /T 5 >NUL
	EXIT

ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                 Success                 ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO You can now close this window. It will close automatically in 5 seconds.
TIMEOUT /T 5 >NUL
EXIT