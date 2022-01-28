<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/28/2022
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>User Management</h1>
<h2>
    <a href="home?action=home">List All Users</a>
</h2>
<div>
    <form action="home?action=createPost" method="post">
        <table>
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <th>User Email:</th>
                <th>Country:</th>
                <td colspan="2">
            </tr>
            <tr>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
                <td>
                    <input type="text" name="country" id="country" size="15"/>
                </td>
                <td>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
