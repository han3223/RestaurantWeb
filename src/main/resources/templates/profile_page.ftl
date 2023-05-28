<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">
    <style>
        <#include "homepage_style.css">
        <#include "profile_style.css">
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
    <script src="https://unpkg.com/tooltipster@4.2.8/dist/js/tooltipster.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/tooltipster@4.2.8/dist/css/tooltipster.bundle.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/tooltipster@4.2.8/dist/css/plugins/tooltipster/sideTip/themes/tooltipster-sideTip-shadow.min.css" />

</head>

<body style="background-image: url(/static/drawable/background.png);">
<header class="w-100 head" style="top: 0">
    <img src="/static/header.jpg" alt="" style="z-index: -1000; height: 150px;" id="test">
    <div class="container-fluid" id="header">
        <div class="row">
            <a href="/bonappetit" style="width: 30%; float: left">
                <img src="/static/logo.png" alt="" id="name_logo">
            </a>
            <div class="profile_basket" id="profile_basket">
                <img src="/static/headshot.png" alt="" id="profile" class="profile">

                <div>
                    <img src="/static/basket.png" alt="" id="basket" class="basket">
                    <div id="basket_count">
                        <h6 id="num">${count}</h6>
                    </div>
                </div>
            </div>
            <div id="menu-smartphone">
                <img src="/static/menu-smartphone.png" alt="">
            </div>
        </div>
    </div>
</header>

<div class="container">
    <div class="container_login" id="auth">
        <form action="" class="form_reg" id="forgot_form">

            <div class="prev">x</div>
            <h3>Forgot Password</h3>
            <div class="container_long_input_log">
                <label for="tel">Введите номер телефона:</label>
                <input type="tel" placeholder="+7(9__)-___-____">
            </div>
            <input type="submit" value="Прислать код">
        </form>
        <form action="" class="form_reg" id="login_form">
            <h3>LogIn</h3>
            <div class="container_long_input_log">
                <label for="tel_email">Тел/Email:</label>
                <input type="text" name="tel_email" placeholder="+7(9__)-___-____">
                <label for="password">Пароль:</label>
                <input type="password" name="password" placeholder="Пароль">
            </div>
            <input type="submit" value="Войти">
            <div class="container_additional_function">
                <h4 id="forgot">Forgot password?</h4>
                <h4 id="reg">SignUp</h4>
            </div>
        </form>
        <form action="" class="form_reg" id="registration_form">
            <div class="prev">x</div>
            <h3>SignUp</h3>
            <div class="form_name">
                <div>
                    <label for="last_name">Фамилия*:</label>
                    <input id="surname" type="text" name="last_name" placeholder="Иванов"
                           pattern="[A-Za-zА-Яа-яЁё\s]+">
                </div>
                <div>
                    <label for="first_name">Имя*:</label>
                    <input id="firstname" type="text" name="first_name" placeholder="Иван" pattern="[A-Za-zА-Яа-яЁё\s]+">
                </div>

            </div>
            <div class="container_long_input">
                <div>
                    <label for="tel">Телефон*:</label>
                    <input type="tel" name="tel" id="phone" placeholder="+7(___)-___-____" minlength="16">
                </div>
                <div>
                    <label for="email">E-mail*:</label>
                    <input type="" id="email" name="email" placeholder="Email">
                </div>
                <div>
                    <label for="password">Пароль*:</label>
                    <input type="password" data-tooltip-content="#tooltip_content" placeholder="Пароль" id="pass"
                           name="password">
                </div>
                <div>
                    <label for="more_password">Повторите пароль:</label>
                    <input id="pass-confirm" type="password" name="more_password" placeholder="Повторите пароль">
                </div>

            </div>
            <input id="sub" type="submit" value="Зарегистрироваться">
        </form>

    </div>
</div>

<div class="tooltip_templates">
        <span id="tooltip_content">
            <img class="error" src="../static/krestik.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <img class="sucsess" src="../static/galka001.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <strong>Символы в нижнем регистре</strong><br>
            <img class="error" src="../static/krestik.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <img class="sucsess" src="../static/galka001.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <strong>Символы в верхнем регистре</strong><br>
            <img class="error" src="../static/krestik.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <img class="sucsess" src="../static/galka001.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <strong>Хотя бы одна цифра</strong><br>
            <img class="error" src="../static/krestik.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <img class="sucsess" src="../static/galka001.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <strong>Специальные символы</strong><br>
            <img class="error" src="../static/krestik.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <img class="sucsess" src="../static/galka001.png" style="width: 15px; aspect-ratio: 1/1;"/>
            <strong>Длина не менее 8 символов</strong><br>
        </span>
</div>
<#--<footer class="w-100">-->

<#--</footer>-->

<script>
    <#include "homepage_script.js">
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

</body>

</html>