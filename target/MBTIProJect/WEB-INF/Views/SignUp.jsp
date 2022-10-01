<%--
  Created by IntelliJ IDEA.
  User: qhdud
  Date: 2022-09-27
  Time: 오후 10:57
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
    <link rel="stylesheet" type="text/css" href="SignUp.css">
    <%--파일경로 찾는거 나중에 해야댐--%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>


    <title>회원가입</title>
    <style>
        *{margin: 0; padding: 0;}

        body {
            font-family: 'Jua', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #3a3939;
            /*animation-name: move;*/
            /*animation-duration: 1.5s;*/
        }

        /*@keyframes move {*/
        /*    from {*/
        /*        padding-top: 650px;*/
        /*    } to {*/
        /*        padding-top: 0;*/
        /*          }*/
        /*}*/

        section {
            box-shadow: 5px 5px 10px #a0a6bb;
            background-color: #e9eff6;
            border-radius: 10px;
            padding: 25px;
        }

        .textBox {width: 260px; position: relative;}

        #border {
            border-radius: 10px;
            background-color: #ffffff;
            padding: 25px;
            text-align: center;
            width: 300px;

        }

        h1 {margin-bottom: 15px;}

        .textBox input {
            font-family: 'Jua', sans-serif;
            margin: 15px;
            padding: 10px 5px 5px ;
            border:none;
            border-bottom: 1px solid #a0a6bb;
            width: 100%;
            outline: none;
        }

        .textBox label {
            position: absolute; left: 20px; top: 20px;
            transition: all .3s ease;
        }

        .textBox label.warning {
            animation: warning .3s ease;
            animation-iteration-count: 3;
        }

        .textBox input:focus + label,
        .textBox input:valid + label {
            font-size: 12px;
            top: 1px;
            color: #7c8093;
        }

        @keyframes warning {
            0% {transform: translateX(-8px);}
            25% {transform: translateX(8px);}
            50% {transform: translateX(-8px);}
            75% {transform: translateX(8px);}
        }

        .gender {
            text-align: left;
            margin-left: 15px;
            font-size: 15px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .but {
            margin-top: 30px;
            height: 40px;
        }

        #signBut {
            width: 270px;
            height: 40px;
            margin-bottom: 3px;
            border: none;
            background-color: #a0a6bb;
            font-family: 'Jua', sans-serif;
            font-size: 18px;
            color: #fff;
            box-shadow: 2px 2px 5px #a0a6bb;
            border-radius: 5px;
            transition-duration: .05s;
        }

        #signBut:hover{background-color: #7c8093}

        #signBut:active{
            margin-left: 1.5px;
            margin-top: 1.5px;
            box-shadow: none;
        }


    </style>
</head>
<body style="overflow-y: hidden">
<section>
    <div id="border">
        <h1>회원가입</h1>
        <form action="Join" method="post">
            <div class="textBox">
                <input type="text" id="memberName" name="memberName" size="100" required
                       oninvalid="this.setCustomValidity('이름을 입력해주세요.')" oninput="this.setCustomValidity('')">
                <label for="memberName" id="name-text">이름</label>
            </div>

            <div class="textBox">
                <input type="text" id="id" name="memberid" size="100" required
                       oninvalid="this.setCustomValidity('아이디를 입력해주세요.')" oninput="this.setCustomValidity('')">
                <label for="id" id="id-text">아이디</label>
            </div>

            <div class="textBox">
                <input type="password" id="memberPassword" name="memberPassword" size="100" required
                       oninvalid="this.setCustomValidity('비밀번호를 입력해주세요.')" oninput="this.setCustomValidity('')">
                <label for="memberPassword" id="pw-text">비밀번호</label>
            </div>

            <div class="textBox">
                <input type="password" id="rpw" size="100" required
                       oninvalid="this.setCustomValidity('비밀번호 확인을 해주세요.')" oninput="this.setCustomValidity('')">
                <label for="rpw" id="rpw-text">비밀번호 재확인</label>
            </div>

            <div class="textBox">
                <input type="text" id="PhoneNumber" name="PhoneNumber" size="20" required
                       oninvalid="this.setCustomValidity('전화번호를 입력해주세요.')" oninput="this.setCustomValidity('')">
                <label for="PhoneNumber" id="number-text">전화번호</label>
            </div>

            <div class="textBox">
<<<<<<< HEAD
                <input type="email" id="memberEmail" name="memberEmail" size="100" required>
=======
                <input type="text" id="memberEmail" name="memberEmail" size="100" required
                       oninvalid="this.setCustomValidity('이메일을 입력해주세요.')" oninput="this.setCustomValidity('')">
>>>>>>> 661d42e719c73904d5bf044049bab91999ee8088
                <label for="memberEmail" id="mail-text">이메일</label>
            </div>

            <div class="gender">
<<<<<<< HEAD
                <input type="radio" id="m" name="memberGender" checked><label for="m">남자 &nbsp;</label>
                <input type="radio" id="f" name="memberGender"><label for="f">여자</label>
=======
                <input type="radio" id="m" name="memberGender" value="man" checked><label for="m">남자 &nbsp;</label>
                <input type="radio" id="f" name="memberGender" value="woman"><label for="f">여자</label>
>>>>>>> 661d42e719c73904d5bf044049bab91999ee8088
            </div>

            <div class="but">
                <input type="submit" id="signBut" value="가입하기">
            </div>
        </form>
    </div>
</section>

<script>
    let name = $('#memberName');
    let id = $('#id');
    let pw = $('#memberPassword');
    let rpw = $('#rpw');
    let number = $('#PhoneNumber');
    let mail = $('#memberEmail');
    let btu = $('#signBut');

    $(btu).on('click', function () {
        if ($(name).val() == "") {
            $(name).next('label').addClass('warning');
            setTimeout(function () {
                $('label').removeClass('warning');
            }, 1500);
        } else if($(id).val() == "") {
            $(id).next('label').addClass('warning');
            setTimeout(function () {
                $('label').removeClass('warning');
            }, 1500);
        } else if($(pw).val() == "") {
            $(pw).next('label').addClass('warning');
            setTimeout(function () {
                $('label').removeClass('warning');
            }, 1500);
        } else if($(rpw).val() == "") {
            $(rpw).next('label').addClass('warning');
            setTimeout(function () {
                $('label').removeClass('warning');
            }, 1500);
        } else if($(number).val() == "") {
            $(number).next('label').addClass('warning');
            setTimeout(function () {
                $('label').removeClass('warning');
            }, 1500);
        } else if($(mail).val() == "") {
            $(mail).next('label').addClass('warning');
            setTimeout(function () {
                $('label').removeClass('warning');
            }, 1500);
        }
    });
</script>
</body>
</html>
