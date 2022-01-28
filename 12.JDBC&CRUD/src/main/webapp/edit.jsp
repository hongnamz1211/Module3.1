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
<h1>User Management</h1>
<h2>
    <a href="home?action=home">List All Users</a>
</h2>
<form action="home?action=editPost" method="post">
    <table>
        <caption>
            <h2>
                Edit User
            </h2>
        </caption>
        <c:if test="${user != null}">
            <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>
        </c:if>
        <tr>
            <th>User Name:</th>
            <td>
                <input type="text" name="name" size="45"
                       value="<c:out value='${user.name}' />"
                />
            </td>
        </tr>
        <tr>
            <th>User Email:</th>
            <td>
                <input type="text" name="email" size="45"
                       value="<c:out value='${user.email}' />"
                />
            </td>
        </tr>
        <tr>
            <th>Country:</th>
            <td>
                <input type="text" name="country" size="15"
                       value="<c:out value='${user.country}' />"
                />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Save"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
