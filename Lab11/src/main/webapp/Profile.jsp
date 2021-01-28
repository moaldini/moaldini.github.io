<%--
  Created by IntelliJ IDEA.
  User: mohammedaldini
  Date: 1/27/21
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>:: My Profile ::</title>
</head>
<body>
    <h1>Private Area</h1>
    <h2>Welcome <%= request.getSession().getAttribute("username") %></h2>
    <p><a href="Logout">Logout</a></p>
</body>
</html>
