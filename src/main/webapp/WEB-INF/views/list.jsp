<%--
  Created by IntelliJ IDEA.
  User: halu_
  Date: 2023-09-05
  Time: 오후 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list</title>
</head>
<body>
<h2> list </h2>
<table>
    <tr>
        <td>이메일</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>생년월일</td>
        <td>전화번호</td>
    </tr>
    <c:forEach items="${memberList}" var="memberlist">
        <tr>
            <td>${memberlist.memberEmail}</td>
            <td>${memberlist.memberPassword}</td>
            <td>${memberlist.memberName}</td>
            <td>${memberlist.memberBirth}</td>
            <td>${memberlist.memberMobile}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
