<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e7dcd4; /* Updated background color */
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .login-form {
            margin-top: 20px;
            background-color: #fef9cc;
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
            background-color: #55eb63;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #ff76d8;
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
        .register-button {
            display: inline-block;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            background-color: #007BFF;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .register-button:hover {
            background-color: #0056b3;
        }

        .center-container {
            text-align: center;
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

    <div class="center-container">
        <a class="register-button" href="/register">Register</a>
    </div>

</body>
</html>
