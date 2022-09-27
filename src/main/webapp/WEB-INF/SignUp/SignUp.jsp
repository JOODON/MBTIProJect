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
    <link rel="stylesheet" href="sign_up.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

    <title>회원가입</title>
</head>
<body style="overflow-y: hidden">
<section>
    <div id="border">
        <h1>회원가입</h1>
        <form action="">
            <div class="textBox">
                <input type="text" id="memberName" name="memberName" size="100" required
                       oninvalid="this.setCustomValidity('이름을 입력해주세요.')" oninput="this.setCustomValidity('')">
                <label for="memberName" id="name-text">이름</label>
            </div>

            <div class="textBox">
                <input type="text" id="id" name="id" size="100" required
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
                <input type="email" id="memberEmail" name="memberEmail" size="100" required>
                <label for="memberEmail" id="mail-text">이메일</label>
            </div>

            <div class="gender">
                <input type="radio" id="m" name="memberGender" checked><label for="m">남자 &nbsp;</label>
                <input type="radio" id="f" name="memberGender"><label for="f">여자</label>
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
