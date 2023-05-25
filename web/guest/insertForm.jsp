<%--
  Created by IntelliJ IDEA.
  User: gimmingyu
  Date: 2023/05/24
  Time: 10:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>insertForm</title>
</head>
<body>
<div class="container">
    <form action="insert.jsp" method="post">
        <label for="writer"></label>
        <input type="text" id="writer" name="writer" placeholder="작가"> <br>
        <label for="content"></label>
        <textarea id="content" name="content" placeholder="내용을 입력하세요." style="width: 147px; height: 125px"></textarea> <br>
        <label for="pwd"></label>
        <input type="password" id="pwd" name="pwd" placeholder="비밀번호"> <br>
        <input type="submit" value="저장">
    </form>
</div>
</body>
</html>
