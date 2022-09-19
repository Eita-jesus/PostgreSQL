Echo off
cls
echo. Atencao este procedimento requer que o PostgreSQL esteja sendo executado com privilegios de administrador!
echo. 
echo. Ativando o Firewall do Windows
netsh advfirewall set currentprofile state on
echo. Liberando as Portas Utilizadas pelo Sistema no Firewall
netsh advfirewall firewall add rule name="Postgre TCP" dir=in action=allow protocol=TCP localport=5432
netsh advfirewall firewall add rule name="Postgre TCP" dir=out action=allow protocol=TCP localport=5432
netsh advfirewall firewall add rule name="Postgre UDP" dir=in action=allow protocol=UDP localport=5432
netsh advfirewall firewall add rule name="Postgre UDP" dir=out action=allow protocol=UDP localport=5432
echo. Liberando o PostgreSQL no Firewall
netsh advfirewall firewall add rule name="postgres.exe" dir=in action=allow program="c:\Arquivos de Programas\PostgreSQL\9.0\bin\postgres.exe" enable=yes
netsh advfirewall firewall add rule name="postgres.exe" dir=out action=allow program="c:\Arquivos de Programas\PostgreSQL\9.0\bin\postgres.exe" enable=yes
netsh advfirewall firewall add rule name="pg_ctl.exe" dir=in action=allow program="c:\Arquivos de Programas\PostgreSQL\9.0\bin\pg_ctl.exe" enable=yes
netsh advfirewall firewall add rule name="pg_ctl.exe" dir=out action=allow program="c:\Arquivos de Programas\PostgreSQL\9.0\bin\pg_ctl.exe" enable=yes

pause