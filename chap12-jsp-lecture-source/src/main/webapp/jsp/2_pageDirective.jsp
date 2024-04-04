<%@ page import="java.util.Date" errorPage="errorPage.jsp" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2024-04-03
  Time: 오전 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Date date = new Date();
        System.out.println("date = " + date);

        String str = null;
        char ch = str.charAt(0);    //NullPiinterException 고의 발생
    %>
</body>
</html>
