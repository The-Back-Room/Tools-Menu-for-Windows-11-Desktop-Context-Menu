@ECHO OFF
REM - End Apps & Services that MAY be using shell32.dll....
cd\
taskkill /f /IM explorer.exe
taskkill /f /IM nvvsvc.exe
taskkill /f /IM WLIDSVCM.EXE
taskkill /f /IM dllhost.exe
REM Stopping Software Protection Services
NET stop "Software Protection" /y
NET STOP SuperFetch
SET FILE98=*.db
SET PATH98=%SYSTEMDRIVE%\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\
SET FILE99=IconCache.db
SET PATH99=%SYSTEMDRIVE%\Users\%USERNAME%\AppData\Local
REM - Delete the IconCache.db and thumbnail caches...
CD /d %userprofile%\AppData\Local
DEL IconCache.db /a
IF EXIST %FILE99% (
        attrib -H "%PATH99%\%FILE99%"
	del "%PATH99%\%FILE99%" )
IF EXIST %FILE98% (
        attrib -H "%PATH98%\%FILE98%"
	del "%PATH98%\%FILE98%" )
IF EXIST IconCache.db (
DEL IconCache.db /a )
CD /d %userprofile%\AppData\Local\Microsoft\Windows
del /f /s /q Explorer\*.*
del /f /s /q Explorer\iconcache*.*
del /f /s /q Explorer\thumbcache*.*
DEL /f /s /q Explorer\thumbcache*.* /a
REM Start Software Protection
NET START "Software Protection"
START %windir%\"explorer.exe"
EXIT