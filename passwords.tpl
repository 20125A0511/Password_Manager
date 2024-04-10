<!DOCTYPE html>
<html>
<head>
    <title>Passwords</title>
</head>
<body>
    <h2>Passwords</h2>
    <table border="1">
        <tr>
            <th>Website</th>
            <th>Username</th>
            <th>Password</th>
        </tr>
        % for row in passwords:
        <tr>
            <td>{{row[1]}}</td>
            <td>{{row[2]}}</td>
            <td>{{row[3]}}</td>
        </tr>
        % end
    </table>
    <a href="/add">Add Password</a>
    <a href="/generate">Generate Password</a>
    <a href="/logout">Logout</a>
</body>
</html>
