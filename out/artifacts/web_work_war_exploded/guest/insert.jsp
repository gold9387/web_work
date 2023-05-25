<%@ page import="guest.dto.GuestDto" %>
<%@ page import="guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: gimmingyu
  Date: 2023/05/24
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String writer = request.getParameter("writer");
    String content = request.getParameter("content");
    String pwd = request.getParameter("pwd");
    GuestDto dto = new GuestDto();
    dto.setWriter(writer);
    dto.setContent(content);
    dto.setPwd(pwd);
    GuestDao dao = GuestDao.getInstance();
    boolean isSuccess = dao.insert(dto);
%>
<html>
<head>
    <title>insert</title>
</head>
<body>
<div class="container">
    <% if (isSuccess) { %>
    <p><strong><%= writer %></strong>님 게시물이 저장되었습니다.</p>
    <a href="list.jsp">확인</a>
    <%} else { %>
    <p><strong><%= writer %></strong>님 게시물이 저장이 실패되었습니다.</p>
    <a href="insertForm.jsp">확인</a>
    <%} %>
</div>
</body>
</html>
