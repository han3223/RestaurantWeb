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

$('.container_eat').hover(
    function () {
        $('.price')[$('.container_eat').index(this)].style.opacity = 0;
    },
    function () {
        $('.price')[$('.container_eat').index(this)].style.opacity = 1;
    }
)

var product =  parseInt($('#num')[0].innerText);

$('.sign_minus').click(function () {

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
            $('#num_profile_bar')[0].innerText = product;
            $('#num_mobile')[0].innerText = product;
        }
    }
});

var listEat = { };

$('.sign_plus').click(function () {
    var eatIndex = $('.sign_plus').index(this).toString();
    if (listEat[eatIndex])
        listEat[eatIndex] += 1;
    else
        $.extend(listEat, { [eatIndex]: 1 });
    product += 1;
    var x = parseInt($('.number')[$('.sign_plus').index(this)].innerText);
    $('.number')[$('.sign_plus').index(this)].innerText = x + 1;
    if (product >= 100) {
        $('#num_profile_bar')[0].innerText = ".."
        $('#num')[0].innerText = "..";
        $('#num_mobile')[0].innerText = "..";
    } else {
        $('#num')[0].innerText = product;
        $('#num_profile_bar')[0].innerText = product;
        $('#num_mobile')[0].innerText = product;
    }
    $.post('add-count-food', { countEat: product, listEat: JSON.stringify(listEat) }, function(data) {});

});

$(document).ready(function () {
    function sleep(milliseconds) {
        var start = new Date().getTime();
        for (var i = 0; i < 1e7; i++) {
            if ((new Date().getTime() - start) > milliseconds) {
                break;
            }
        }
    }

    $('.back').click(function () {
        $('.carousel-inner').eq($('.back').index(this)).animate({scrollLeft: '-=280'});
    });


    $('.next').click(function () {
        $('.carousel-inner').eq($('.next').index(this)).animate({scrollLeft: '+=280'});
    });

    $('.basket').click(function () {
        $('#content-test').animate({opacity: 0}, {
            duration: 450, complete: function () {
                $.ajax({
                    url: '/bonappetit/basket-ajax',
                    method: 'POST',
                    data: {countEat: product},
                    success: function (data) {
                        // Обновляем содержимое только нужной части страницы
                        $('#content-test').html(data);

                        window.history.pushState(null, null, '/bonappetit/basket');
                    }
                });
            }
        });
        $('#content-test').animate({height: 0}, {
            duration: 650, complete: function () {
                $('#content-test').animate({opacity: 1, height: '100vh'}, {
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

    $('.profile').click(function () {
        $('#content-test').animate({opacity: 0}, {
            duration: 450, complete: function () {
                $.ajax({
                    url: '/bonappetit/profile-ajax',
                    method: 'GET',
                    success: function (data) {
                        // Обновляем содержимое только нужной части страницы
                        $('#content-test').html(data);

                        window.history.pushState(null, null, '/bonappetit/profile');
                    }
                });
            }
        });
        $('#content-test').animate({height: 0}, {
            duration: 650, complete: function () {
                $('#content-test').animate({opacity: 1, height: '100vh'}, {
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