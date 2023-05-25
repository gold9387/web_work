<%@ page import="member.dao.MemberDao" %>
<%@ page import="member.dto.MemberDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-23
  Time: 오전 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberDao dao = MemberDao.getInstance();
    List<MemberDto> list = dao.getList();
%>
<html>
<head>
    <title>member/list.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        body {
            padding: 1.5em;
            background: #fff;
        }

        table {
            border: 1px #a39485 solid;
            font-size: .9em;
            box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
            width: 100%;
            border-collapse: collapse;
            border-radius: 5px;
            overflow: hidden;
            font-weight: bold;
        }

        th {
            text-align: left;
        }

        thead {
            font-weight: bold;
            color: #fff;
            background: #73685d;
        }

        td, th {
            padding: 1em .5em;
            vertical-align: middle;
        }

        td {
            border-bottom: 1px solid rgba(0, 0, 0, .1);
            background: #fff;
        }

        @media all and (max-width: 768px) {
            table, thead, tbody, th, td, tr {
                display: block;
            }

            th {
                text-align: right;
            }

            table {
                position: relative;
                padding-bottom: 0;
                border: none;
                box-shadow: 0 0 10px rgba(0, 0, 0, .2);
            }

            thead {
                float: left;
                white-space: nowrap;
            }

            tbody {
                overflow-x: auto;
                overflow-y: hidden;
                position: relative;
                white-space: nowrap;
            }

            tr {
                display: inline-block;
                vertical-align: top;
            }

            th {
                border-bottom: 1px solid #a39485;
            }

            td {
                border-bottom: 1px solid #e5e5e5;
            }
        }

        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>회원 목록</h1>
    <div class="text-end">
        <a href="insertForm">회원추가</a>
    </div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>번호</th>
            <th>이름</th>
            <th>주소</th>
            <th>삭제</th>
        </tr>
        </thead>
        <tbody>
        <%for (MemberDto tmp : list) {%>
        <tr>
            <td><%=tmp.getNum()%>
            </td>
            <td><%=tmp.getName()%>
            </td>
            <td><%=tmp.getAddr()%>
            </td>
            <td>
                <a href="delete">삭제</a>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
        integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
        crossorigin="anonymous"></script>
</body>
</html>