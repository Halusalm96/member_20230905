<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="nav">
  <ul class="menu">
    <li class="menu-item">
      <a href="/">index</a>
    </li>
    <li class="menu-item">
      <a href="/save">회원가입</a>
    </li>
    <!--      <li class="menu-item">-->
    <!--        <a href="/login">로그인</a>-->
    <!--      </li>-->
    <li class="menu-item">
      <a href="/members">회원목록</a>
    </li>

    <li class="menu-item" id="login-area">
      <!--        <a href="/logout">로그아웃</a>-->
    </li>
  </ul>
</div>
<script>
  const loginArea = document.getElementById("login-area");
  const loginEmail = '${sessionScope.loginEmail}';
  console.log(loginEmail.length);
  if(loginEmail.length != 0) {
    loginArea.innerHTML = "<a herf='/mypage>" + loginEmail + "님 환영해요!</a>" + "<a href='/logout'>logout</a>";
  } else {
    loginArea.innerHTML = "<a href='/login'>로그인</a>";
  }
</script>