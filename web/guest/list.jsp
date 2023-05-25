<%@ page import="guest.dao.GuestDao" %>
<%@ page import="java.util.List" %>
<%@ page import="guest.dto.GuestDto" %><%--
  Created by IntelliJ IDEA.
  User: gimmingyu
  Date: 2023/05/24
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    GuestDao dao = GuestDao.getInstance();
    List<GuestDto> list = dao.getList();
%>
<html>
<head>
    <title>list</title>
</head>
<body>
<div class="container">
    <table border="1">
        <thead>
        <tr>
            <th>번호</th>
            <th>작가</th>
            <th>등록날짜</th>
        </tr>
        </thead>
        <tbody>
        <% for (GuestDto tmp : list) { %>
        <tr>
            <td><%= tmp.getNum() %></td>
            <td><a href="listForm.jsp?num=<%= tmp.getNum() %>"><%= tmp.getWriter() %></a></td>
            <td><%= tmp.getRegDate() %></td>
            <td><a href="updateForm.jsp?num=<%= tmp.getNum() %>">수정</a></td>
            <td><a href="deleteForm.jsp?num=<%= tmp.getNum() %>">삭제</a></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
