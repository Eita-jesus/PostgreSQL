@Echo off

Title Limpando Cache

@echo.
@echo          ********************************************
@echo           *                                        *
@echo  ***********         Limpando Cache do IE...    ***********
@echo           *                                        *
@echo          ********************************************
@echo.

@rem Clear IE cache - (Deletes Temporary Internet Files Only)
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"