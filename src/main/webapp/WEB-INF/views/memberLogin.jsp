<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<%@include file="component/footer.jsp"%>
<form action="/login" method="post">
    <input type="text" name="memberEmail" placeholder="이메일 입력하세요"> <br>
    <input type="text" name="memberPassword" placeholder="비밀번호 입력하세요"> <br>
    <input type="submit" value="로그인">
</form>
</body>
</html>