<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/27/2022
  Time: 8:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Customer</h1>
<p>Id: ${customer.getId()}</p>
<p>Name: ${customer.getName()}</p>
<p>Email:${customer.getEmail()}</p>
<p>Address: ${customer.getAddress()}</p>
</body>
</html>
