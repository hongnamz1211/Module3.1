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
<c:url value="/home" var="myUrl">
    <c:if test="${customer != null}">
        <c:param name="action" value="editPost"></c:param>
    </c:if>
    <c:if test="${customer == null}">
        <c:param name="action" value="createPost"></c:param>
    </c:if>
</c:url>
<form action="${myUrl}" method="post">
    <label>Id:
        <input
                <c:if test="${customer != null}">value="${customer.getId()}"</c:if> type="text" name="id">
    </label>
    <label>Name:
        <input
                <c:if test="${customer != null}">value="${customer.getName()}"</c:if> type="text" name="name">
    </label>
    <label>Email:
        <input
                <c:if test="${customer != null}">value="${customer.getEmail()}"</c:if> type="text" name="email">
    </label>
    <label>Address:
        <select name="address">
            <c:forEach items="${adds}" var="add">
                <option value="${add}">${add}</option>
            </c:forEach>
        </select>
    </label>
    <input type="submit"
           <c:if test="${customer != null}">value="Edit"</c:if>
           <c:if test="${customer == null}">value="Create"</c:if>>
</form>
</body>
</html>
