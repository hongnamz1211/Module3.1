<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/25/2022
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h2>Currency Converter</h2>
<form action="converter.jsp" method="post">
    <label>Rate: <br>
        <input type="text" name="rate" placeholder="RATE" value="22000">
    </label> <br>
    <label>Usd: <br>
        <input type="text" name="usd" placeholder="USD" value="0">
    </label> <br>
    <input type="submit" value="Converter">
</form>
</body>
</html>
