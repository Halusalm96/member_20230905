<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<%@include file="component/footer.jsp"%>
<h2>memberMain.jsp</h2>
로그인이메일: ${sessionScope.loginEmail} <br>
model에 담은 이메일: ${email} <br>
<a href="/logout">로그아웃</a>
<a href="/">index로 이동</a>
</body>
</html>