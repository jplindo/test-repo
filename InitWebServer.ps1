# Grab a copy of our index file
$IndexPage = "https://github.com/jplindo/test-repo/blob/master/index.asp";
$OutputFile = "C:\\inetpub\wwwroot\\index.asp";
Invoke-WebRequest -Uri $IndexPage -OutFile $output
