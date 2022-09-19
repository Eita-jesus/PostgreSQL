
netsh advfirewall firewall add rule name= PostgreSQL_In(5432) dir=in action=allow protocol=TCP localport=5432
Timeout /t 1

netsh advfirewall firewall add rule name= PostgreSQL_Out(5432) dir=out action=allow protocol=TCP localport=5432
Timeout /t 1

netsh advfirewall firewall add rule name= PostgreSQL_In(5432) dir=in action=allow protocol=UDP localport=5432
Timeout /t 1

netsh advfirewall firewall add rule name= PostgreSQL_Out(5432) dir=out action=allow protocol=UDP localport=5432
Timeout /t 1
