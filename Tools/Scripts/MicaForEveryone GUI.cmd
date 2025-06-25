@ECHO off
MODE CON COLS=45 LINES=7
COLOR 1F
wmic process where "name='MicaForEveryone.App.exe'" get ProcessID | find /i "ProcessId" > nul

IF ERRORLEVEL 1 (
	GOTO FAILED
)

IF ERRORLEVEL 2 (
	START /min MicaForEveryone
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