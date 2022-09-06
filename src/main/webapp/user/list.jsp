<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 9/6/2022
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <style>
        table, tr, td {
            padding: 5px;
            border-collapse: collapse;
        }
    </style>
</head>
<body>

<h1>User List</h1>

<p>
    <a href="${pageContext.request.contextPath}/users?action=create">Create new user</a>
</p>

<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Country</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${requestScope['userList']}" var="user">
        <tr>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
            <td><a href="${pageContext.request.contextPath}/users?action=edit&id=${user.getId()}">
                <button>Edit</button>
            </a></td>
            <td><a href="${pageContext.request.contextPath}/users?action=delete&id=${user.getId()}">
                <button>Delete</button>
            </a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
