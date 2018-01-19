# Download db script and execute to create TestDB database on this machine
Invoke-WebRequest -Uri https://raw.githubusercontent.com/jplindo/test-repo/master/TestDB.sql -OutFile .\TestDB.sql
Invoke-Sqlcmd -InputFile .\TestDB.sql -HostName "localhost"

# Change to Mixed Mode Authentication
$DbServer = New-Object ("Microsoft.SqlServer.Management.Smo.Server") "localhost"
$DbServer.Settings.LoginMode = [Microsoft.SqlServer.Management.SMO.ServerLoginMode]::Mixed
$DbServer.Alter()

# Restart SQL Instance
Restart-Service -Force MSSQLSERVER

# Open Firewall Port
New-NetFirewallRule -DisplayName "MSSQLSERVER Inbound TCP Port" -Direction Inbound -LocalPort 1433 -Protocol TCP -Action Allow


