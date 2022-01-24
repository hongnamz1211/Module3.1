<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/24/2022
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
    .login {
        height: 230px;
        width: 280px;
        margin: 0;
        padding: 10px;
        border: 1px #CCC solid;
    }
    .login input {
        padding: 5px;
        margin: 5px;
    }

</style>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="/login" method="get">
    <div class="login">
        <h2>Login</h2>
        <label>
            <input type="text" name="user-name" size="30" placeholder="username">
        </label>
        <label>
            <input type="password" name="password" size="30" placeholder="password">
        </label>
        <input type="submit" value="Sign in">
    </div>
</form>
</body>
</html>
