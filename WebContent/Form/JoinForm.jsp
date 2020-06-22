<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WILL SUNG</title>
    <style>
        h1 {
            text-align: center;
            font-size: 36px;
        }
        .sign_up {
            margin: 80px auto;
            width: 450px;
        }
        .sign_up .input_box::after {
            display: block;
            clear: both;
            content: '';
        }
        .sign_up .input_box + .input_box {
            margin-top: 10px;
        }
        .sign_up .input_box input {
            width: 100%;
            height: 36px;
            box-sizing: border-box;
        }
        .sign_up .input_box .btn_box input {
            float: left;
            margin-right: 10px;
            width: calc(70% - 10px);
        }
        .sign_up .input_box .btn_box button {
            float: left;
            display: block;
            width: 30%;
            height: 36px;
            box-sizing: border-box;
        }
        .sign_up .input_box .radio_box {
            float: left;
            width: calc(50% - 5px);
        }
        .sign_up .input_box .radio_box input {
            display: none;
        }
        .sign_up .input_box .radio_box input + label {
            display: block;
            border: 1px solid #000;
            width: 100%;
            height: 36px;
            color: #000;
            line-height: 34px;
            text-align: center;
            cursor: pointer;
        }
        .sign_up .input_box .radio_box input:checked + label {
            background: #000;
            color: #fff;
        }
        .sign_up .input_box .radio_box + .radio_box {
            margin-left: 10px;
        }
        .sign_up .input_box .birth input,
        .sign_up .input_box .phone input {
            float: left;
            margin-right: 5px;
            width: calc(33.333% - 3.333px);
        }
        .sign_up .input_box .birth input:last-child,
        .sign_up .input_box .phone input:last-child {
            margin-right: 0;
        }
        .sign_up .input_box .address > div::after {
            display: block;
            clear: both;
            content: '';
        }
        .sign_up .input_box .address > input {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <div class="container">
            <div class="sign_up">
                <h1>회원 가입</h1>
                
                <form name="joinForm" action="../Proc/joinPro.jsp" method="POST" enctype="multipart/formdata">
                    <div class="input_box">
                        <div class="btn_box">
                            <input type="number" name="userId" maxlength="8" placeholder="학번 8자리" >
                            <button type="button">중복확인</button>
                        </div>
                    </div>
                    <div class="input_box">
                        <input type="password" name="passwd" maxlength="20" autocomplete="off" placeholder="패스워드">
                    </div>
                    <div class="input_box">
                        <input type="password" name="passwdCk" maxlength="20" autocomplete="off" placeholder="패스워드 확인">
                    </div>
                    <div class="input_box">
                       <input type="text" name="userName" maxlength="20" placeholder="이름"></div>
                    <div class="input_box">
                        <div class="radio_box">
                            <input type="radio" name="gender" id="male" value="M" checked>
                            <label for="male">남</label>
                        </div>
                        <div class="radio_box">
                            <input type="radio" name="gender" id="female" value="F">
                            <label for="female">여</label>
                        </div>
                    </div>
                    <div class="input_box">
                       <div class="birth">
                            <input type="text" name="birthYear" id="year" maxlength="4" placeholder="YYYY">
                            <input type="text" name="birthMonth" id="month" maxlength="2" placeholder="MM">
                            <input type="text" name="birthDay" id="day" maxlength="2" placeholder="DD">
                       </div>
                    </div>
                    <div class="input_box">
                        <div class="phone">
                        <input type="number" id="phone1" name="phone1" maxlength="0" placeholder="010">
                            <input type="number" id="phone2" name="phone2" maxlength="4" placeholder="1234">
                            <input type="number" id="phone3" name="phone3" maxlength="4" placeholder="5678">
                        </div>
                    </div>
                    <div class="input_box">
                        <div class="radio_box">
                            <input type="reset" value="cancle">
                            <label for="cancle">취소</label>
                        </div>
                        <div class="radio_box">
                              <input type="submit" value="join" >
                            <label for="submit">확인</label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>