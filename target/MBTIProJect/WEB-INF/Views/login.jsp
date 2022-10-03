<%--
  Created by IntelliJ IDEA.
  User: launc
  Date: 2022-09-29
  Time: 오후 1:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="Login.css">

    <script src="https://kit.fontawesome.com/41cdbb121d.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <style>
        *{margin: 0; padding: 0;}

        html{font-size: 20px;}
        body{font-size: 1rem;}

        body {
            font-family: 'Jua', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #3a3939;

        }

        section {
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 5px 5px 10px #a0a6bb;
            background-color: #e9eff6;
            border-radius: 10px;
            width: 35rem; height: 22.5rem;
        }

        #img-form {
            width: 16rem; height: 20rem;
            margin: 1.25rem;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        #img-container h1 {margin: 5rem 0}

        #img-container img {width: 100%; height: 100%; float: bottom;}

        #login-form {
            background-color: #ffffff;
            border-radius: 10px;
            width: 16rem; height: 20rem;
            margin: 1.25rem;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #login-container {width: 11.5rem;}

        #login-container h1 {
            display: none;
            text-align: center;
            margin-bottom: 2rem;
        }

        .textBox {margin-bottom: 0.75rem; font-size: 0.8rem;}

        .idBox i, .pwBox i {margin-right: 10px;}

        .idBox, .pwBox {
            width: 100%; height: 1.75rem;
            border: 1px solid #a0a6bb;
            border-radius: 5px;
            justify-content: center;
            align-items: center;
            display: flex;
        }

        .textBox input {
            width: 9rem; height: 1.5rem;
            font-family: 'Jua', sans-serif;
            border-radius: 5px;
            border : none;
            outline: none;
        }

        #but {
            margin-top: 1.5rem;
            height: 2.5rem;
        }

        #signBut {
            font-family: 'Jua', sans-serif; font-size: 1.1rem;
            width: 100%; height: 2.25rem;
            border: none;
            background-color: #a0a6bb; color: #fff;
            box-shadow: 2px 2px 5px #a0a6bb;
            border-radius: 5px;
            transition-duration: .05s;
            cursor: pointer;
        }

        #signBut:hover{background-color: #7c8093}

        #signBut:active{
            margin-left: 1.5px;
            margin-top: 1.5px;
            box-shadow: none;
        }

        #link {text-align: center}

        #link a {
            color: #3a3939;
            font-size: 0.6rem;
            text-decoration: none;
        }

        #link a:hover{color: red;}

        @media screen and (max-width: 768px) {
            #img-form { display: none;}
            section {width: 18rem;}
            #login-container h1 {
                display: block;
            }
        }

    </style>

    <title>로그인</title>
</head>
<body>
<section>
    <div id="img-form">
        <div id="img-container">
            <h1>로그인</h1>
            <img src="img/그림1.png" alt="이미지">
        </div>
    </div>

    <div id="login-form">
        <div id="login-container">
            <form method="post" action="loginAction.jsp">
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