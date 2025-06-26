@ECHO OFF
MODE CON COLS=45 LINES=7
COLOR 1F
WMIC process WHERE "name='MicaForEveryone.App.exe'" get ProcessID | FIND /i "ProcessId" >NUL

IF ERRORLEVEL 1 (
	GOTO FAILED
) ELSE (
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