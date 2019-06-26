<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: huong
  Date: 24/06/2019
  Time: 09:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting product</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div id="wrapper">
    <h1>Delete product</h1>
    <p>
        <a href="/products">Back to product list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <c:out value='${requestScope["product"].getName()}'>
                        </c:out>
                    </td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td>
                        <c:out value='${requestScope["product"].getDescription()}'>
                        </c:out>
                    </td>
                </tr>
                <tr>
                    <td>Producer:</td>
                    <td>
                        <c:out value='${requestScope["product"].getProducer()}'>
                        </c:out>
                    </td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td>
                        <c:out value='${requestScope["product"].getPrice()}'>
                        </c:out>
                    </td>
                </tr>
                <tr>
                    <td>Avatar:</td>
                    <td><img src="<%request.getServletContext().getRealPath("");%>/images/${product.getAvatar()}" alt="anh sp"></td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td>
                        <c:out value='${requestScope["product"].isStatus()}'>
                        </c:out>
                    </td>
                    <td>
                        <input  class="btn" type="submit" value="Delete product">
                    </td>
                    <td><a href="/products">Back to product list</a></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
