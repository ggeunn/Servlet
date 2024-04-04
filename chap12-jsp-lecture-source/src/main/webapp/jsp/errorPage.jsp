<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2024-04-03
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true"  %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String exceptionType = exception.getClass().getName();
    String exceptionMessage = exception.getMessage();
%>

<h1><%= exceptionType %>
</h1>
<hr>
<h1><%= exceptionMessage %>
</h1>
</body>
</html>
