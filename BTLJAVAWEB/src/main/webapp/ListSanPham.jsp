<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>Danh Sách Sản Phẩm</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Ảnh</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.quantity}</td>
                <td><img src="${product.imagePath}" alt="${product.name}" width="100" /></td>
                <td>
                    <a href="product?action=edit&id=${product.id}">Sửa</a> |
                    <a href="product?action=delete&id=${product.id}">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>