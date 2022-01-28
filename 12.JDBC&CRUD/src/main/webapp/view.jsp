<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/28/2022
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List users</h1>
<h2><a href="home?action=createGet">Create user</a></h2>
<form action="home?action=findUser" method="post">
    <input type="text" name="country">
    <input type="submit" value="Find"/>
</form>
<button><a href="home?action=sort">Sắp xếp</a></button>
<table>
    <caption><h2>List of Users</h2></caption>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.email}"/></td>
            <td><c:out value="${user.country}"/></td>
            <td>
                <a href="/home?action=editGet&id=${user.id}">Edit</a>
                <a href="/home?action=delete&id=${user.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
