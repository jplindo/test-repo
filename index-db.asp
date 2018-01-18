<html>
<head>
    <title>Assignment 11 - Problem 01</title>
</head>
<body>
    <h1>Janus Lindo</h1>
    <h2>DateTime: <%= Now() %></h2>
    <h2>Server IP: <%= Request.ServerVariables("server_name") %></h2>
    <h2>Local IP: <%= Request.ServerVariables("local_addr") %></h2>
	<p>&nbsp;</p>
	 <%
	Set rs = Server.CreateObject("ADODB.Recordset")
	Set conn = Server.CreateObject("ADODB.Connection")

	conn.Open "Provider=sqloledb;Data Source=192.168.20.4;Initial Catalog=TestDB;User Id=testdbuser;Password=Db0000000pwd!;" 

	Set rs = conn.Execute("SELECT * from SampleData")

	Response.Write "<ul>"
	Do While (Not rs.EOF)
		Response.Write "<li>" &  rs(0) & " - " & rs(1) & "</li>"
		rs.MoveNext
	Loop
	Response.Write "</ul>"

	rs.Close
	conn.close

	Set conn = Nothing
	Set rs = Nothing
	%>	
</body>
</html>

