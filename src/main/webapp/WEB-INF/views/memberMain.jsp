<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<%@include file="component/footer.jsp"%>
<h2>memberMain.jsp</h2>
로그인이메일: ${sessionScope.loginEmail} <br>
model에 담은 이메일: ${email} <br>
<button class="btn btn-primary" onclick="update_fn()">회원정보수정</button>
<c:if test="${sessionScope.loginEmail == 'admin'}">
    <a href="/members">회원록목</a>
</c:if>
<a href="/logout">로그아웃</a>
<a href="/">index로 이동</a>
</body>
<script>
    const update_fn = () => {
        location.href("/update")
    }
</script>
</html>