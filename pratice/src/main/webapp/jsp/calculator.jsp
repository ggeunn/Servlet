<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2024-04-03
  Time: 오후 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int first = (Integer) request.getAttribute("first");
    int second = (Integer) request.getAttribute("second");
    int value = (Integer) request.getAttribute("value");
%>
<h3><%=first%> * <%=second%> = <%=value%></h3>
<a href="jsp/gugudan.jsp">돌아가기</a>
</body>
</html>
