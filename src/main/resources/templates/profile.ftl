<#assign auth = auth>

<div class="container">
    <div class="container_login" id="auth">
        <#if !auth>
            <form action="" class="form_reg" id="forgot_form">
                <div class="prev">x</div>
                <h3>Forgot Password</h3>
                <div class="container_long_input_log">
                    <label for="tel">Введите номер телефона:</label>
                    <input type="tel" id="phone" placeholder="+7(9__)-___-____">
                </div>
                <input type="submit" value="Прислать код">
            </form>
            <form action="/profile/login" method="post" class="form_reg" id="login_form">
                <h3>LogIn</h3>
                <div class="container_long_input_log">
                    <label for="tel_email">Тел/Email:</label>
                    <input type="text" id="phone" name="tel" placeholder="+7(9__)-___-____">
                    <label for="password">Пароль:</label>
                    <input type="password" name="password" placeholder="Пароль">
                </div>
                <input type="submit" value="Войти">
                <div class="container_additional_function">
                    <h4 id="forgot">Forgot password?</h4>
                    <h4 id="reg">SignUp</h4>
                </div>
            </form>
            <form action="/profile/registration" method="post" class="form_reg" id="registration_form">
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
                        <input type="email" id="email" name="email" placeholder="Email">
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
        <#else>
            <div class="profile_box">
                <form action="">
                    <div class="global_info">
                        <div>
                            <h3>${profile.FIO}</h3>
                        </div>
                        <img src="../static/headshot.jpg" alt="">
                    </div>
                    <label for="tel">Телефон:</label>
                    <input type="tel" name="tel" value="${profile.telephoneNumber}">
                    <label for="email">Email:</label>
                    <input type="email" name="email" value="${profile.email}">
                    <label for="address">Адрес:</label>
                    <input type="text" name="address" value="${profile.address}">
                </form>

            </div>
        </#if>
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

<script>
    $(document).ready(function () {
        $('.container_login').animate({scrollLeft: $('.container_login').width()}, 1);
    });
</script>