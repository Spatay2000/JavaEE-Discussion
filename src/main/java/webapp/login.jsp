<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Login</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<form action="login" method="post">
    <h2 align="center">Login Page</h2>
    <hr>
    <table align="center">
        <tr><td>Username</td><td><input type="text" name="username"/></td>
        <tr><td>Password</td><td><input type="password" name="password"/></td></tr>

        <tr><td></td><td><input type="submit" value="Log in"/></td></tr>
    </table>
</form>
</body>
</html>
