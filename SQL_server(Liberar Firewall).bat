
netsh advfirewall firewall add rule name= SQL_Server_In(1433) dir=in action=allow protocol=TCP localport=1433
Timeout /t 1

netsh advfirewall firewall add rule name= SQL_Server_Out(1433) dir=out action=allow protocol=TCP localport=1433
Timeout /t 1

netsh advfirewall firewall add rule name=SQL_Writer dir=in program="C:\Program Files\Microsoft SQL Server\90\Shared\sqlwriter.exe"  action=allow
Timeout /t 1

netsh advfirewall firewall add rule name=SQL_servr dir=in program="C:\Program Files\Microsoft SQL Server\MSSQL10_50.ALTERDATA\MSSQL\Binn\sqlservr.exe"  action=allow
Timeout /t 1

netsh advfirewall firewall add rule name=SQL_browser dir=in program="C:\Program Files (x86)\Microsoft SQL Server\90\Shared\sqlbrowser.exe"  action=allow