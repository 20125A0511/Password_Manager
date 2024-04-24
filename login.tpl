<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .login-form {
            margin-top: 20px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            display: inline-block;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            padding: 10px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: all 0.3s ease-in-out;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        input[type="submit"]:active {
            transform: scale(0.95);
        }
        .register-link {
            display: inline-block;
            margin-top: 10px;
            margin-left: 10px;
            text-decoration: none;
            color: #007BFF;
            transition: color 0.3s ease-in-out;
        }
        .register-link:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Login</h2>
    <div class="login-form">
        <form action="/login" method="post">
            Username: <input type="text" name="username"><br>
            Password: <input type="password" name="password"><br>
            <input type="submit" value="Login">
        </form>
        <form action="/master_login" method="post">
            <input type="password" name="password" placeholder="Master Password">
            <input type="submit" value="Master Login">
        </form>
    </div>
    <a class="register-link" href="/register">Register</a>
</body>
</html>
