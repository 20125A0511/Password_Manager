<!DOCTYPE html>
<html>
<head>
    <title>Add Password</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e7dcd4;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        form {
            margin-top: 20px;
            background-color: #fef9cc;
            padding: 20px;
            border-radius: 8px;
            display: inline-block;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        input[type="password"],
        input[type="submit"],
        select,
        button {
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
        button {
            background-color: #007BFF;
            color: #ffffff;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        select {
            width: 100%;
        }
    </style>
    <script>
        function generatePassword() {
            var length = document.getElementById("length").value;
            fetch("/generate?length=" + length)
                .then(response => response.text())
                .then(data => {
                    document.getElementById("password").value = data;
                });
        }
    </script>
</head>
<body>
    <h2>Add Password</h2>
    <form action="/add" method="post">
        Website: <input type="text" name="website"><br>
        Username: <input type="text" name="username"><br>
        Password: <input type="password" id="password" name="password"><br>
        Password Length: 
        <select id="length">
            <option value="8">8</option>
            <option value="12">12</option>
            <option value="16">16</option>
            <option value="20">20</option>
        </select>
        <button type="button" onclick="generatePassword()">Generate Password</button><br>
        <input type="submit" value="Add">
    </form>
</body>
</html>
