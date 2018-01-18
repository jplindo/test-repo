<html>
<head>
    <title>Assignment 11 - Problem 01</title>
</head>
<body>
    <h1>Janus Lindo</h1>
    <h2>DateTime: <%= Now() %></h2>
    <h2>Server IP: <%= Request.ServerVariables("server_name") %></h2>
    <h2>Local IP: <%= Request.ServerVariables("local_addr") %></h2>
</body>
</html>
