<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/27/2022
  Time: 8:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>Customer</h1>
<a href="">Create new customer</a>
<c:if test="${requestScope['customers'].isEmpty()}">
    <h2 style="color: red">Không có sản phẩm nào</h2>
</c:if>
<c:if test="${requestScope['customers'].isEmpty() == false}">
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th colspan="2">Action</th>
        </tr>
        <c:forEach items="${customers}" var="cus">
            <tr>
                <td>${cus.getId()}</td>
                <td>${cus.getName()}</td>
                <td>${cus.getEmail()}</td>
                <td>${cus.getAddress()}</td>
                <td><a href="/home?action=editGet&id=${cus.getId()}">Edit</a></td>
                <td><a href="/home?action=delete&id=${cus.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
