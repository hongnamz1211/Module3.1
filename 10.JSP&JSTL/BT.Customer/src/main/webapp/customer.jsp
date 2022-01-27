<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/26/2022
  Time: 9:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>Customers</h2>
<table>
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>

    <c:forEach items="${customer}" var="cus">
        <tr>
            <td>${cus.name}</td>
            <td>${cus.dateOfBirth}</td>
            <td>${cus.address}</td>
            <td><img src="${cus.img}" alt="lỗi" width="200px" height="200px"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
