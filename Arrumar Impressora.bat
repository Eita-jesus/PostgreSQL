@echo off
echo Parando Spool de impress�o.
echo.
net stop spooler
echo Apagando arquivos tempor�rios
echo.
del /Q /F /S C:\Windows\System32\spool\PRINTERS\*.*
echo Iniciando Spool de Impress�o.
echo.
net start spooler