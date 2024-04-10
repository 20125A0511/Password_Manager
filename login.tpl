<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form action="/login" method="post">
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
    <form action="/master_login" method="post">
        <input type="password" name="password" placeholder="Master Password">
        <input type="submit" value="Master Login">
    </form>
    <a href="/register">Register</a>
</body>
</html>
