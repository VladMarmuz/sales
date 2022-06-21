<!DOCTYPE html>
<html>
<head>
    <title>MYSELL</title>
</head>
<body>
<h1>MYSELL</h1>
<h4>Login</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="login"/>
</form>
<a href="/registration">Register</a>
</body>
</html>