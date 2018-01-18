# Grab a copy of our index file and put it in the default web root directory
$IndexPage = "https://raw.githubusercontent.com/jplindo/test-repo/master/index.asp";
$OutputFile = "C:\\inetpub\wwwroot\\index.asp";
Invoke-WebRequest -Uri $IndexPage -OutFile $OutputFile
