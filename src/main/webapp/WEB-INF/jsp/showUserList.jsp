<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: muly
  Date: 2017-03-02
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
</head>
<body>
<table>
<tr>
    <td>id</td>
    <td>userName</td>
    <td>password</td>
    <td>age</td>
    <td>address</td>
</tr>
<tr>
   <c:forEach items="${list}" var="list">
       <tr>
       <td>${list.id}</td>
       <td>${list.userName}</td>
       <td>${list.password}</td>
       <td>${list.age}</td>
       <td>${list.info.address}</td>
       </tr>
   </c:forEach>
</tr>
</table>
</body>
</html>
