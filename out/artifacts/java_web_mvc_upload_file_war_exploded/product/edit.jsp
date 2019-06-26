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
    <title>Edit product</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div id="wrapper">
    <h1>Edit product</h1>
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
                    <td>Name:</td>
                    <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><input type="text" name="description" id="description"
                               value="${requestScope["product"].getDescription()}"></td>
                </tr>
                <tr>
                    <td>Producer:</td>
                    <td><select name="producer" id="producer">
                        <option value="sam sung"
                                <c:if test='${requestScope["product"].getProducer()== "sam sung"}'>
                                    <c:out value="selected">
                                    </c:out>
                                </c:if>>sam sung
                        </option>
                        <option value="dell"
                                <c:if test='${requestScope["product"].getProducer()== "dell"}'>
                                    <c:out value="selected">
                                    </c:out>
                                </c:if>>dell
                        </option>
                        <option value="sony"
                                <c:if test='${requestScope["product"].getProducer()== "sony"}'>
                                    <c:out value="selected">
                                    </c:out>
                                </c:if>>sony
                        </option>
                        <option value="apple"
                                <c:if test='${requestScope["product"].getProducer()== "apple"}'>
                                    <c:out value="selected">
                                    </c:out>
                                </c:if>>apple
                        </option>
                    </select>
                    </td>
                </tr>

                <tr>
                    <td>Price:</td>
                    <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
                </tr>
                <tr>
                    <td>Avatar:</td>
                    <td>
                        <img src="<%request.getServletContext().getRealPath("");%>/images/${product.getAvatar()}"
                             alt="anh sp">
                    </td>
                    <td><input type="file" name="file" size="50"/>
                </tr>

                <tr>
                    <td>Status</td>
                    <td><input type="radio" name="status" value="true"
                    <c:if test='${requestScope["product"].isStatus()==true}'>
                    <c:out value="checked">
                    </c:out>
                    </c:if>
                    > true
                    </td>

                    <td>
                        <input type="radio" name="status" value="false"
                        <c:if test='${requestScope["product"].isStatus()==false}'>
                        <c:out value="checked">
                        </c:out>
                        </c:if>
                        > false
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="btn" type="submit" value="Update product"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>