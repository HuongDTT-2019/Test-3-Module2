<%--
  Created by IntelliJ IDEA.
  User: huong
  Date: 24/06/2019
  Time: 09:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div id="wrapper">
    <h1>Create new product</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/products">Back to product list</a>
    </p>
    <form method="post" enctype="multipart/form-data">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td><input type="text" name="description" id="description"></td>
                </tr>
                <tr>
                    <td>Producer: </td>
                    <td><select name="producer" id="producer">
                        <option value="" selected>Chose producer</option>
                        <option value="sam sung">sam sung</option>
                        <option value="dell">dell</option>
                        <option value="sony">sony</option>
                        <option value="apple">apple</option>
                    </select>
                    </td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><input type="text" name="price" id="price"></td>
                </tr>
                <tr>
                    <td>Avatar: </td>
                    <td> <input type = "file" name = "file" size = "50" />
                </tr>

                <tr>
                    <td>Status</td>
                    <td><input type="radio" name="status" value="true"> true</td>
                    <td><input type="radio" name="status" value="false"> false</td>
                </tr>

                <tr>
                    <td></td>
                    <td><input class="btn" type="submit" value="Create product"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
