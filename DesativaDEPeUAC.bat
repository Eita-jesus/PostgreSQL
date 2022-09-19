@echo off
echo ***********************************************
echo ***   Script criado por MATHEUS JESUS       ***
echo ***     para desativar DEP e UAC            ***    
echo ***                                         ***
echo ***********************************************
echo.
echo.
echo ==================== Desativando DEP ==========================
echo.
bcdedit /set {current} nx AlwaysOff
echo.
echo.
echo.
echo ==================== Desativando UAC ==========================
echo.
C:\Windows\System32\cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
echo.



