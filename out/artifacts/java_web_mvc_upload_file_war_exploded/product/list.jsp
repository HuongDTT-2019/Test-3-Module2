<%--
  Created by IntelliJ IDEA.
  User: huong
  Date: 21/06/2019
  Time: 09:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product List</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div id="wrapper">
    <h1>Products</h1>
    <p>
        <a href="/products?action=create">Create new product</a>
    </p>

    <form method="post" action="/products?action=search">
        <input type="text" name="search_product" id="search" placeholder="input product nane...">
        <input class="btn" type="submit" value="Search" ><br><br>
    </form>
    <table border="1">
        <tr>
            <td>Name</td>
            <td>Description</td>
            <td>Producer</td>
            <td>Price</td>
            <td>Avatar</td>
            <td>Status</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td>
                    <a href="/products?action=view&id=${product.getId()}">${product.getName()}</a>
                </td>
                <td>
                        ${product.getDescription()}
                </td>
                <td>
                        ${product.getProducer()}
                </td>
                <td>
                        ${product.getPrice()}
                </td>
                <td>
                    <img src="<%request.getServletContext().getRealPath("");%>/images/${product.getAvatar()}" alt="anh sp">
                </td>
                <td>
                        ${product.isStatus()}
                </td>

                <td>
                    <a href="/products?action=edit&id=${product.getId()}">edit</a>
                </td>
                <td>
                    <a href="/products?action=delete&id=${product.getId()}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
