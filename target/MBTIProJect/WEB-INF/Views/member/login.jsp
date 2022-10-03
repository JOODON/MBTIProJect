<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="">
    <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/41cdbb121d.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <title>로그인</title>

</head>
<body>
    <c:if test =  "${result == 2}">
<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
    </c:if>
<section>
    <div id="img-form">
        <div id="img-container">
            <h1>로그인</h1>
            <img src="img/그림1.png" alt="이미지">
        </div>
    </div>

    <div id="login-form">
        <div id="login-container">
            <form method="post" action="login">
                <h1>로그인</h1>
                <div class="textBox">
                    <label>
                        <p id="idLabel">아이디</p>
                        <div class="idBox">
                            <i class="fa-solid fa-user"></i>
                            <input type="text" id="memberid" name="memberid" size="100" required
                                   oninvalid="this.setCustomValidity('아이디를 입력해주세요.')" oninput="this.setCustomValidity('')">
                        </div>
                    </label>
                </div>

                <div class="textBox">
                    <label>
                        <p id="pwLabel">비밀번호</p>
                        <div class="pwBox">
                            <i class="fa-solid fa-lock"></i>
                            <input type="password" id="memberPassword" name="memberPassword" required
                                   oninvalid="this.setCustomValidity('비밀번호를 입력해주세요.')" oninput="this.setCustomValidity('')">
                        </div>
                    </label>
                </div>

                <div id="but">
                    <input type="submit" value="로그인" id="signBut">
                </div>

                <div id="link">
                    <a href="sign_up.html" id="sginUp"> &nbsp; 회원가입 &nbsp;</a>
                    <a href="" id="findIdPw">아이디/비밀번호 찾기 &nbsp;</a>
                </div>
            </form>
        </div>
    </div>
    </div>
</section>


</body>
</html>