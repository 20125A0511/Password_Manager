<!DOCTYPE html>
<html>
<head>
    <title>Add Password</title>
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
