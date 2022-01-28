<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 1/24/2022
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/Products" method="post">
    <input type="text" name="product-description" placeholder="Nhập mô tả">
    <input type="number" name="price" placeholder="Nhập giá niêm yết">
    <input type="number" name="percent" placeholder="Nhập tỷ lệ chiết khấu (phần trăm)">
    <input type="submit" name="submit" id="submit" value="Calculate Discount">
</form>
</body>
</html>
