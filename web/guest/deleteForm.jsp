<%@ page import="guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: gimmingyu
  Date: 2023/05/25
  Time: 12:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));
%>
<html>
<head>
    <title>deleteForm</title>
</head>
<body>
<div class="container">
    <form action="delete.jsp" method="post">
        <label for="num"></label>
        <input type="hidden" id="num" name="num" value="<%= num %>">
        <label for="pwd"></label>
        <input type="password" id="pwd" name="pwd" placeholder="비밀번호">
        <input type="submit" value="삭제">
    </form>
</div>
</body>
</html>
