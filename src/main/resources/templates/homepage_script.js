document.addEventListener("DOMContentLoaded", function () {
    if (window.innerWidth > 1151) {

        document.querySelectorAll('.navbar .nav-item').forEach(function (everyitem) {

            everyitem.addEventListener('mouseover', function (e) {

                let el_link = this.querySelector('a[data-bs-toggle]');

                if (el_link != null) {
                    let nextEl = el_link.nextElementSibling;
                    el_link.classList.add('show');
                    nextEl.classList.add('show');
                }

            });
            everyitem.addEventListener('mouseleave', function (e) {
                let el_link = this.querySelector('a[data-bs-toggle]');

                if (el_link != null) {
                    let nextEl = el_link.nextElementSibling;
                    el_link.classList.remove('show');
                    nextEl.classList.remove('show');
                }


            })
        });

    }
});

$(function () {
    if (window.innerWidth > 1151) {
        var header = $(".profile_bar");
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();

            if (window.location.href === "http://127.0.0.1:8080/bonappetit") {
                if (scroll >= 103) {
                    header.removeClass('profile_bar')
                        .addClass("profile_bar_scroll");

                } else {

                    header.removeClass("profile_bar_scroll")
                        .addClass('profile_bar');
                }
            }
        });
    }

});

$('.container_eat').hover(function () {
    $('.price')[$('.container_eat').index(this)].style.opacity = 0;
}, function () {
    $('.price')[$('.container_eat').index(this)].style.opacity = 1;
});


$(document).on('click', '.back', function () {
    $('.carousel-inner').eq($('.back').index(this)).animate({scrollLeft: '-=280'});
});
$(document).on('click', '.next', function () {
    $('.carousel-inner').eq($('.next').index(this)).animate({scrollLeft: '+=280'});
});
$(document).on('click', '.basket', function () {
    $('#content-test').animate({opacity: 0}, {
        duration: 450, complete: function () {
            $.ajax({
                url: '/bonappetit/basket-ajax', method: 'POST', data: {countEat: product}, success: function (data) {
                    $.getScript('homepage_script.js', function () {
                        // Скрипты разблокированы
                    });
                    // Обновляем содержимое только нужной части страницы
                    $('#content-test').html(data);

                    window.history.pushState(null, null, '/bonappetit/basket');
                }
            });
        }
    });
    $('#content-test').animate({height: 0}, {
        duration: 650, complete: function () {
            $('#content-test').animate({opacity: 1, height: '100vh', marginTop: '140px'}, {
                duration: 450, complete: function () {
                }
            });
        }
    });
    $('.head').animate({top: 0});
    $('.parent').removeClass('parent').empty();
    // $('.parent').eq(0).animate({height: 0}, 500);
    // $('.nav-item').animate({opacity: 0}, 200);
    $('#test').animate({height: 150}, 500);
});
$(document).on('click', '.profile', function () {
    $('#content-test').animate({opacity: 0}, {
        duration: 450, complete: function () {
            $.ajax({
                url: "/bonappetit/profile-ajax", method: "POST", success: function (data) {
                    $.getScript("homepage_script.js", function () {
                        // скрипт выполнится после загрузки
                    });

                    $('#content-test').html(data);

                    window.history.pushState(null, null, '/bonappetit/profile');
                }
            });
        }
    });
    $('#content-test').animate({height: 0}, {
        duration: 650, complete: function () {
            $('#content-test').animate({opacity: 1, height: '100vh', marginTop: '0px'}, {
                duration: 450, complete: function () {
                }
            });
        }
    });
    $('.head').animate({top: 0});
    $('.parent').removeClass('parent').empty();
    // $('.parent').eq(0).animate({height: 0}, 500);
    // $('.nav-item').animate({opacity: 0}, 200);
    $('#test').animate({height: 150}, 500);
});

// ________________________________________Profile___________________________________________
function WarningMessage(obj, message, position) {
    $(obj).tooltipster({
        animation: 'fade',
        theme: 'tooltipster-shadow',
        trigger: 'click',
        side: position,
        background: 'white',
        trigger: 'custom',
        functionBefore: function (instance, helper) {
            instance.content(message);
        }
    });
}

function isValidEmail(email) {
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    return emailRegex.test(email);
}

function isValidSurname(surname) {
    var surnameRegex = /^[a-zA-Zа-яА-Я]+$/;
    return surnameRegex.test(surname);
}

$('input').each(function () {
    this.setCustomValidity('');
});

// Валидация фамилии и имени

$(document).on('input', '#surname', function () {
    var surname = $(this).val();
    if (!isValidSurname(surname)) {
        $(this).addClass('invalid');
        $(this).attr('invalid', '');
        WarningMessage(this, "Допускаются только символы из алфавита", "left");
        $(this).tooltipster('show');
    } else {
        $(this).removeClass('invalid');
        $(this).tooltipster('hide');
    }
});
$(document).on('input', '#firstname', function () {
    var surname = $(this).val();
    if (!isValidSurname(surname)) {
        $(this).addClass('invalid');
        $(this).attr('invalid', '');
        WarningMessage(this, "Допускаются только символы из алфавита", "right");
        $(this).tooltipster('show');
    } else {
        $(this).removeClass('invalid');
        $(this).tooltipster('hide');
    }
});
// Валидация телефона
$(document).on('input', '#phone', function() {
    $(this).mask('+7 (999) 999-99-99');
});
$(document).on('input', '#phone', function () {
    var maxLength = 18; // максимальное количество символов
    var currentLength = $(this).val().length; // текущее количество символов
    if (currentLength == maxLength) {
        $('#phone').removeClass('invalid');
        $(this).tooltipster('hide');
    } else {
        $('#phone').addClass('invalid');
        $(this).attr('invalid', '');
        WarningMessage(this, "Поле не заполнено", "right");
        $(this).tooltipster('show');
    }
});
// Валидация электронной почты
$(document).on('input', '#email', function () {
    var email = $(this).val();
    if (!isValidEmail(email)) {
        $(this).addClass('invalid');
        $(this).attr('invalid', '');
        WarningMessage(this, "Адрес электронной почты заполнен не правильно", "right");
        $(this).tooltipster('show');
    } else {
        $(this).removeClass('invalid');
        $(this).tooltipster('hide');
    }
});
// Валидация пароля
$(document).on('keyup', '#pass', function () {
    var value = $(this).val();
    if (/[a-z]/.test(value)) {
        $('.error')[0].style.display = 'none';
        $('.sucsess')[0].style.display = 'inline-block';
    } else {
        $('.error')[0].style.display = 'inline-block';
        $('.sucsess')[0].style.display = 'none';
    }
    if (/[A-Z]/.test(value)) {
        $('.error')[1].style.display = 'none';
        $('.sucsess')[1].style.display = 'inline-block';
    } else {
        $('.error')[1].style.display = 'inline-block';
        $('.sucsess')[1].style.display = 'none';
    }
    if (/[0-9]/.test(value)) {
        $('.error')[2].style.display = 'none';
        $('.sucsess')[2].style.display = 'inline-block';
    } else {
        $('.error')[2].style.display = 'inline-block';
        $('.sucsess')[2].style.display = 'none';
    }
    if (/[!@#$%^&*_=+\-]/.test(value)) {
        $('.error')[3].style.display = 'none';
        $('.sucsess')[3].style.display = 'inline-block';
    } else {
        $('.error')[3].style.display = 'inline-block';
        $('.sucsess')[3].style.display = 'none';
    }
});
$(document).on('input', '#pass', function () {
    var maxLength = 16; // максимальное количество символов
    var minLenght = 8;
    var currentLength = $(this).val().length; // текущее количество символов
    if (currentLength < minLenght) {
        $('.error')[4].style.display = 'inline-block';
        $('.sucsess')[4].style.display = 'none';
    } else {
        $('.error')[4].style.display = 'none';
        $('.sucsess')[4].style.display = 'inline-block'
    }
});
$(document).on('focusin', '#pass', function () {
    $('#pass').tooltipster({
        animation: 'fade', theme: 'tooltipster-shadow', trigger: 'click', side: 'right', background: 'white'
    });
}).on("focusout", "#pass", function () {
    $("#pass").on("keyup", function () {
        var pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+\-]).{8,16}$/;
        var value = $(this).val();
        if (pattern.test(value)) {
            $("#pass").removeClass('invalid');
        } else {
            $("#pass").addClass('invalid');
            $(this).attr('invalid', '');
        }
    });
});
// Валидация повторите пароль
$(document).on('input', '#pass-confirm', function () {
    var password = $('#pass').val();
    var confirmPassword = $(this).val();
    if (password !== confirmPassword) {
        $(this).addClass('invalid');
        $(this).attr('invalid', '');
        WarningMessage(this, "Пароли не совпадают", "left");
        $(this).tooltipster('show');
    } else {
        $(this).removeClass('invalid');
        $(this).tooltipster('hide');
    }
});
$(document).on('click', '#reg', function () {
    $('.container_login').animate({scrollLeft: ($('.container_login').width() * 2)}, 500);
});
$(document).on('click', '#forgot', function () {
    $('.container_login').animate({scrollLeft: '0px'}, 500);
});
$(document).on('click', '.prev', function () {
    $('.container_login').animate({scrollLeft: $('.container_login').width()}, 500);
});


//_____________________________________Блюда___________________________________________
var product = parseInt($('#num')[0].innerText);

var listEat = {};

$(document).on('click', '.sign_minus', function () {
    // Ваш код обработки нажатия на кнопку здесь
    var x = parseInt($('.number')[$('.sign_minus').index(this)].innerText);
    if (x <= 0) {

        $('.number')[$('.sign_minus').index(this)].innerText = 0;
    } else {
        product -= 1
        $('.number')[$('.sign_minus').index(this)].innerText = x - 1;

        if (product >= 100) {
            $('#num_profile_bar')[0].innerText = ".."
            $('#num')[0].innerText = "..";
            $('#num_mobile')[0].innerText = "..";
        } else {
            $('#num')[0].innerText = product;
            if ($('#num_profile_bar').length) {
                $('#num_profile_bar')[0].innerText = product;
                $('#num_mobile')[0].innerText = product;
            }
        }
    }
    // TODO: дописать удаление из корзины
    var eatIndex = $('.sign_minus').index(this).toString();
    $.post('/handler/remove-count-food', {countEat: product, Index: eatIndex}, function (data) {
    });
    // if ($('.number')[$('.sign_minus').index(this)].innerText == 0)
    //     $('.removable')[$('.sign_minus').index(this)].remove();
});

$(document).on('click', '.sign_plus', function () {

    var eatIndex = $('.sign_plus').index(this).toString();
    product += 1;
    var x = parseInt($('.number')[$('.sign_plus').index(this)].innerText);
    $('.number')[$('.sign_plus').index(this)].innerText = x + 1;
    var indexEat = $('.sign_plus').index(this)
    if (product >= 100) {
        $('#num_profile_bar')[0].innerText = ".."
        $('#num')[0].innerText = "..";
        $('#num_mobile')[0].innerText = "..";
    } else {
        $('#num')[0].innerText = product;
        if ($('#num_profile_bar').length) {
            $('#num_profile_bar')[0].innerText = product;
            $('#num_mobile')[0].innerText = product;
        }
    }

    $.post('/handler/add-count-food', {
        countEat: product,
        Index: indexEat
    }, function (data) {
    });

});

// function next() {
//     var
// }
// function plus() {
//     var num = document.getElementsByClassName('number');
//     var x = parseInt(num[0].innerText, 10);
//     x += 1;
//     num[0].innerText = x;
// }

// --------------------------------------------------------------------------------