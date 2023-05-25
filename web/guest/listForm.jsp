<%@ page import="guest.dao.GuestDao" %>
<%@ page import="guest.dto.GuestDto" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: gimmingyu
  Date: 2023/05/25
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));
    GuestDao dao = GuestDao.getInstance();
    List<GuestDto> list = dao.oneList(num);
%>
<html>
<head>
    <title>listForm</title>
</head>
<body>
<div class="container">
    <%
        for (GuestDto tmp : list) {
    %>
    <label>
        <input type="text" value="<%= tmp.getNum() %>">
    </label> <br>
    <label>
        <input type="text" value="<%= tmp.getWriter() %>">
    </label> <br>
    <label>
        <textarea style="width: 147px; height: 125px"><%= tmp.getContent() %></textarea>
    </label> <br>
    <button onclick="history.back()">확인</button>
    <%
        }
    %>
</div>
</body>
</html>
