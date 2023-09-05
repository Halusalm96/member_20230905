<%--
  Created by IntelliJ IDEA.
  User: halu_
  Date: 2023-09-05
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <form action="/memberSave" method="post">
        이 메 일 : <input type="text" name="memberEmail"> <br>
        비밀번호 : <input type="text" name="memberPassword"> <br>
        이   름 : <input type="text" name="memberName"> <br>
        생년월일 : <input type="text" name="memberBirth"> <br>
        전화번호 : <input type="text" name="memberMobile"> <br>
        <input type="submit" value="회원가입">
    </form>
</body>
</html>
