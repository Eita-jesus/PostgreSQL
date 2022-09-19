@echo off
echo Parando Spool de impressão.
echo.
net stop spooler
echo Apagando arquivos temporários
echo.
del /Q /F /S C:\Windows\System32\spool\PRINTERS\*.*
echo Iniciando Spool de Impressão.
echo.
net start spooler