<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <style>
        #section {
            margin: auto;
        }
    </style>
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<%@include file="component/footer.jsp"%>
<div id="section">
    <form action="/save" method="post">
        <input class="form-control" type="text" name="memberEmail" id="memberEmail" placeholder="이메일"  onkeyup="save_fn()"> <br>
        <p id="emailInput"></p>
        <input type="text" name="memberPassword" placeholder="비밀번호"> <br>
        <input type="text" name="memberName" placeholder="이름"> <br>
        <input type="text" name="memberBirth" placeholder="생년월일(YYYYMMDD)"> <br>
        <input type="text" name="memberMobile" placeholder="전화번호"> <br>
        <input type="submit" value="회원가입">
    </form>
</div>
</body>
<script>
    const save_fn = () => {
        const memberEmailInput = document.getElementById("memberEmail").value;
        const emailInput = document.getElementById("emailInput");
        $.ajax({
            type: "post",
            url : "/memberSave",
            data: {memberEmail:memberEmailInput},
            success: function (input) {
                console.log(input.memberEmail);
                const email = input.memberEmail;
                if (memberEmailInput == email) {
                    emailInput.innerHTML = "중복된 이메일 입니다.";
                }else {
                    emailInput.innerHTML = "사용가능한 이메일 입니다.";
                }
            },
            error : function () {
                console.log("실패");
            }
        })

    }
</script>
<script>
    const email_dup_check = () => {
        const email = document.getElementById("member-email").value;
        const result = document.getElementById("email-dup-check-result");
        $.ajax({
            type: "post",
            url: "/duplicate-check",
            data: {
                memberEmail: email
            },
            success: function () {
                result.innerHTML = "사용가능한 이메일입니다.";
                result.style.color = "green";
            },
            error: function () {
                result.innerHTML = "이미 사용 중인 이메일입니다.";
                result.style.color = "red";
            }
        });
    }
</script>
</html>