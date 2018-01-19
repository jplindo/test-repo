# Download db script and execute to create TestDB database on this machine
Invoke-WebRequest -Uri https://raw.githubusercontent.com/jplindo/test-repo/master/TestDB.sql -OutFile .\TestDB.sql
Invoke-Sqlcmd -InputFile .\TestDB.sql -HostName "localhost"

# Open Firewall Port
New-NetFirewallRule -DisplayName "MSSQLSERVER Inbound TCP Port" -Direction Inbound -LocalPort 1433 -Protocol TCP -Action Allow
