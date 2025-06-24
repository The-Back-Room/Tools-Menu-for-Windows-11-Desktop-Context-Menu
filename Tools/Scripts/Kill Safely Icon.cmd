@echo off
mode CON COLS=45 LINES=7
color 1F
title Applying
echo :::::::::::::::::::::::::::::::::::::::::::::
echo ::          Stopping Safely Icon           ::
echo :::::::::::::::::::::::::::::::::::::::::::::
wmic process where "name='safelyicon.exe'" get ProcessID | find /i "ProcessId" > nul

IF ERRORLEVEL 1 (
	GOTO FAILED
)
	
IF ERRORLEVEL 2 (
	TASKKILL /F /IM safelyicon.exe >nul
	GOTO SUCCESS
)

:SUCCESS
	echo :::::::::::::::::::::::::::::::::::::::::::::
	echo ::                Success                  ::
	echo :::::::::::::::::::::::::::::::::::::::::::::
	GOTO EXIT

:FAILED
	echo :::::::::::::::::::::::::::::::::::::::::::::
	echo ::        No instance(s) detected          ::
	echo :::::::::::::::::::::::::::::::::::::::::::::
	GOTO EXIT

:EXIT
	echo.
	echo You can now close this window. It will close automatically in 5 seconds.
	timeout /t 5 >nul
	EXIT