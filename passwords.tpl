<!DOCTYPE html>
<html>
<head>
    <title>Passwords</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e7dcd4;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        table {
            margin-top: 20px;
            background-color: #fef9cc;
            width: 80%;
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            display: inline-block;
            margin-top: 10px;
            margin-right: 10px;
            text-decoration: none;
            color: #007BFF;
            transition: color 0.3s ease-in-out;
        }
        a:hover {
            color: #0056b3;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #007BFF;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .center-container {
            text-align: center;
        }
    </style>
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

    <div class="center-container">
        <a href="/add" class="button">Add Password</a>
        <a href="/generate" class="button">Generate Password</a>
        <a href="/logout" class="button">Logout</a>
    </div>

</body>
</html>
