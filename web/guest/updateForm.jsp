<%@ page import="guest.dto.GuestDto" %>
<%@ page import="guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: gimmingyu
  Date: 2023/05/24
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));
    GuestDto dto = GuestDao.getInstance().getData(num);
%>
<html>
<head>
    <title>updateForm</title>
</head>
<body>
<div class="container">
    <form action="update.jsp" method="post">
        <label for="num"></label>
        <input type="text" id="num" name="num" value="<%= dto.getNum() %>" readonly> <br>
        <label for="writer"></label>
        <input type="text" id="writer" name="writer" value="<%= dto.getWriter() %>" readonly> <br>
        <label for="content"></label>
        <textarea id="content" name="content" style="width: 147px; height: 125px"><%= dto.getContent() %></textarea> <br>
        <label for="pwd"></label>
        <input type="password" id="pwd" name="pwd" placeholder="비밀번호"> <br>
        <input type="submit" value="저장">
    </form>
</div>
</body>
</html>
