<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <link rel="stylesheet" href="homepage_style.css">
    <script src="homepage_script.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
</head>

<body>
<header class="w-100">
    <img src="референсы/header.jpg" alt="" style="z-index: -1000;">
    <div class="container-fluid" id="header">
        <div class="row">
            <img src="референсы/ejzshomoqb1ze4mw.png" alt="homepage.html" id="name">
            <div class="profile_basket" id="profile_basket">
                <img src="референсы/headshot.png" alt="" id="profile">
                <div>
                    <img src="референсы/basket.png" alt="" id="basket">
                    <div id="basket_count">
                        <h6 id="num">0</h6>
                    </div>
                </div>
            </div>
            <div id="menu-smartphone">
                <img src="референсы/menu-smartphone.png" alt="">
            </div>
        </div>

        <div class="parent">
            <div class="child">
                <nav class="row navbar navbar-expand-lg navbar-dark" id="navbar_example2"
                     style="margin-top: 137px;">

                    <div class="collapse navbar-collapse" id="main_nav" style="justify-content: center;">
                        <ul class="navbar-nav nav">
                            <li class="nav-item dropdown big">
                                <a class="nav-link  dropdown-toggle" href="#cold_snacks" data-bs-toggle="dropdown"
                                   aria-expanded="false">Холодные закуски</a>
                                <ul class="dropdown-menu" style="background-color: #292B31;">
                                    <li><a class="dropdown-item" href="#cold_fish" style="color: white;">Рыбные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#cold_meat" style="color: white;">Мясные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#cold_veg " style="color: white;">Овощные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown big">
                                <a class="nav-link  dropdown-toggle" href="#salads" data-bs-toggle="dropdown">Салаты</a>
                                <ul class="dropdown-menu" style="background-color: #1f2025;">
                                    <li><a class="dropdown-item" href="#salads_fish"
                                           style="color: white;">Рыбные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#salads_meat"
                                           style="color: white;">Мясные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#salads_veg"
                                           style="color: white;">Овощные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown big">
                                <a class="nav-link  dropdown-toggle" href="#hot_snacks" data-bs-toggle="dropdown">Горячие
                                    закуски</a>
                                <ul class="dropdown-menu" style="background-color: #292B31;">
                                    <li><a class="dropdown-item" href="#hot_fish" style="color: white;">Рыбные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#hot_meat" style="color: white;">Мясные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown big">
                                <a class="nav-link  dropdown-toggle" href="#first_courses" data-bs-toggle="dropdown">Первые
                                    блюда</a>
                                <ul class="dropdown-menu" style="background-color: #292B31;">
                                    <li><a class="dropdown-item" href="#first_courses_1"
                                           style="color: white;">Бульоны</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#first_courses_2"
                                           style="color: white;">Заправочные
                                            супы</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#first_courses_3"
                                           style="color: white;">Пюреобразные
                                            супы</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown big">
                                <a class="nav-link  dropdown-toggle" href="#second_courses" data-bs-toggle="dropdown">Вторые
                                    блюда</a>
                                <ul class="dropdown-menu" style="background-color: #292B31;">
                                    <li><a class="dropdown-item" href="#first_courses_fish"
                                           style="color: white;">Рыбные
                                            основные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#first_courses_meat"
                                           style="color: white;">Мясные
                                            основные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#first_courses_veg"
                                           style="color: white;">Овощные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item big"><a class="nav-link" href="#side_dishes">Гарниры</a></li>
                            <li class="nav-item big"><a class="nav-link" href="#desserts">Десерты</a></li>
                            <li class="nav-item dropdown big">
                                <a class="nav-link  dropdown-toggle" href="#drinks" data-bs-toggle="dropdown">Напитки</a>
                                <ul class="dropdown-menu" style="background-color: #292B31;">
                                    <li><a class="dropdown-item" href="#cold_drinks"
                                           style="color: white;">Холодные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#hot_drinks"
                                           style="color: white;">Горячие</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#alk_drinks"
                                           style="color: white;">Алкогольные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="profile_bar">
                                <div id="porfile_basket_menu">
                                    <img src="референсы/headshot.png" alt="" id="profile"
                                         style="height: 30px; width: 30px; float: left; margin-left: 5px;">
                                    <img src="референсы/basket.png" alt="" id="basket"
                                         style="height: 40px; width: 40px;">
                                    <div id="basket_count_profile_bar">
                                        <h6 id="num_profile_bar">0</h6>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>

                </nav>
            </div>

        </div>

    </div>
</header>

<section class="w-100">
    <div class="container-fluid" id="content">
        <div data-bs-spy="scroll" data-bs-target="navbar_example2" data-bs-root-margin="0px 0px -40%"
             data-bs-smooth-scroll="true" class="scrollspy-example p-3 rounded-2" tabindex="0">
            <div class="row" id="cold_snacks">
                <h4 id="chapter" name="">Холодные закуски</h4>
                <img src="референсы/линия.png" alt="" id="line">
                <a id="cold_fish"></a>
                <h5 id="subsection">Рыбные</h5>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Рыбные/Кальмар с пряностями.jpg" alt="..."
                                     class="eat img-fluid">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Рыбные/Рулеты из лосося.jpg" alt="..."
                                     class="eat img-fluid">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Рыбные/Рыбное асорти.jpg" alt="..."
                                     class="eat img-fluid">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Рыбные/Сельдь пряного посола рольмопсы.jpg"
                                     alt="..." class="eat img-fluid">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Мясные</h5>
                <a id="cold_meat"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Мясные/Копчёная нарезка.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Мясные/Мясная нарезка асорти.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Мясные/Ростбив из говядины.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Мясные/Слайсы куриные.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Овощные</h5>
                <a id="cold_veg"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Овощные/ovoshchnoe_assorti.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Овощные/баклажанные рулетики.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Холодные закуски/Овощные/Ролы из зелени.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="salads">
                <h4 id="chapter"><a name="">Салаты</a></h4>
                <img src="референсы/линия.png" alt="" id="line">
                <h5 id="subsection">Рыбные</h5>
                <a id="salads_fish"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <!-- --------------------------------------------------------------------- -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Рыбные/1617265086_1-p-salat-s-semgoi-slabosolenoi-krasivo-1.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Рыбные/1656646047_37-mykaleidoscope-ru-p-salat-s-olivkami-i-sirom-yeda-krasivo-foto-44.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Рыбные/1666420728_59-podacha-blud-com-p-krasivaya-podacha-salatov-s-rakovimi-sheik-62.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Рыбные/salat-olivje-s-lososem-i-kapersami.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Мясные</h5>
                <a id="salads_meat"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Мясные/1627053071_34-p-salat-s-yazikom-podacha-35.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Мясные/1666408202_1-podacha-blud-com-p-kakoi-salat-podat-k-steiku-iz-govyadini-fo-2.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Мясные/1666436301_18-podacha-blud-com-p-restorannaya-podacha-salatov-s-myasom-i-ma-18.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Мясные/b5bb00cf58dc84f28d2cf391c500ba86.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Овощные</h5>
                <a id="salads_veg"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Овощные/1627061936_5-p-podacha-ovoshchnikh-salatov-6.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Овощные/1666468600_61-podacha-blud-com-p-salati-iz-svezhikh-ovoshchei-podacha-v-res-64.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Овощные/f313cc9fba-KW_06_Srodziemnomorska_salatka_1389234908.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Салаты/Овощные/fud07.jpg" class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="hot_snacks">
                <h4 id="chapter">Горячие закуски</h4>
                <img src="референсы/линия.png" alt="" id="line">
                <h5 id="subsection">Рыбные</h5>
                <a id="hot_fish"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <!-- --------------------------------------------------------------------- -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Рыбные/1627872699_35-kartinkin-com-p-krasivaya-podacha-ribi-yeda-krasivo-foto-38.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Рыбные/777acf8e6d8243b766d2fe343022f0e7.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Рыбные/d9ec0e7f9971ff817f14a4946b06feb3.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Рыбные/e986e088620da138a4614d5da78a9ec5.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Рыбные/recepty-prigotovleniya-holodnyh-i-goryachih-zakusok-iz-moreproduktov.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Мясные</h5>
                <a id="hot_meat"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Мясные/22737-2-5d0660dc858ae.jpeg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Мясные/bdd8723ce8c88daaca17e5a0f1be077c.png"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Горячие закуски/Мясные/krasa-21091816483848.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="first_courses">
                <h4 id="chapter">Первые блюда</h4>
                <img src="референсы/линия.png" alt="" id="line">
                <h5 id="subsection">Бульоны</h5>
                <a id="first_courses_1"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <!-- --------------------------------------------------------------------- -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Бульоны/711fbc974b9c65b92b9b188dd031b453.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Бульоны/f7e2a920f518d4f3c2b6ec17fa726aca.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Бульоны/kur-sup.jpg" class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
                <h5 id="subsection">Заправочные супы</h5>
                <a id="first_courses_2"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Заправочные супы/3b9ce53b3026bb9677877ace0b5621df.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Заправочные супы/5840c3952563375869819586991c7750.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Заправочные супы/imagetools0-8.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Заправочные супы/Pikantnyj-syrnyj-sup.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Пюреобразные супы</h5>
                <a id="first_courses_3"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Пюеобразные супы/2017Food_Soup_of_mussels_in_a_soup_cup_112906_.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Пюеобразные супы/58c1e0aaf2111e2062b4b41c2ddde056.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Пюеобразные супы/7549095115d153bf18da1fcef972e869.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Первые блюда/Пюеобразные супы/original.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="second_courses">
                <h4 id="chapter">Вторые блюда</h4>
                <img src="референсы/линия.png" alt="" id="line">
                <h5 id="subsection">Рыбные основные</h5>
                <a id="first_courses_fish"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <!-- --------------------------------------------------------------------- -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Рыбные/1617237852_31-p-goryachie-blyuda-iz-ribi-krasivo-32.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Рыбные/1627062536_36-p-mishlenovskaya-podacha-salatov-38.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Рыбные/1630120080_2-kartinkin-com-p-krasivaya-podacha-zharenoi-ribi-yeda-krasi-2.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Рыбные/1660144046_49-adonius-club-p-krasivie-blyuda-iz-ribi-krasivo-foto-65.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Рыбные/2gdsrds4sxtydt.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Мясные основные</h5>
                <a id="first_courses_meat"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Мясные/1659678104_8-adonius-club-p-krasivaya-podacha-blyud-krasivo-foto-8.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Мясные/da8de15ff2663682afa608e4569560f4.jpeg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Мясные/f985521f5f37155e98b3cc8be9c5f91f.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Мясные/full_bnFTk13O.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Овощные</h5>
                <a id="first_courses_veg"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Овощные/10882.jpg" class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Овощные/1627061931_7-p-podacha-ovoshchnikh-salatov-8.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Овощные/1630254523_32-kartinkin-com-p-banketnaya-podacha-blyud-yeda-krasivo-foto-34.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Овощные/86.jpg" class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Вторые блюда/Овощные/shutterstock_211647583.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="side_dishes">
                <h4 id="chapter">Гарниры</h4>
                <a id="side_dishes"></a>
                <img src="референсы/линия.png" alt="" id="line">
                <!-- --------------------------------------------------------------------- -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Гарниры/1625568041_36-kartinkin-com-p-garnir-k-myasu-yeda-krasivo-foto-38.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Гарниры/1996331743.jpg" alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Гарниры/62cde72ba626115226b154cf593f5620.jpeg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Гарниры/ab69bf79a6fe4636a69f58f52a682214.jpeg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Гарниры/c5bbd3e5a4999c3ffa3d0b6120ff3d06.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="desserts">
                <h4 id="chapter">Десерты</h4>
                <a id="desserts"></a>
                <img src="референсы/линия.png" alt="" id="line">
                <!-- --------------------------------------------------------------------- -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Десерты/1627693419_36-kartinkin-com-p-oformlenie-desertov-yeda-krasivo-foto-39.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Десерты/1645713053_18-o-tendencii-com-p-krasivaya-podacha-desertov-v-restoranakh-f-18.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Десерты/1645713098_29-o-tendencii-com-p-krasivaya-podacha-desertov-v-restoranakh-f-29.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Десерты/1657696764_8-mykaleidoscope-ru-p-krasivaya-podacha-morozhenogo-vkusnyashki-8.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Десерты/1671033331_57-podacha-blud-com-p-krasivaya-yeda-foto-desert-58.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" id="drinks">
                <h4 id="chapter">Напитки</h4>
                <img src="референсы/линия.png" alt="" id="line">
                <h5 id="subsection">Холодные</h5>
                <a id="cold_drinks"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <!-- --------------------------------------------------------------------- -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Холодные/1665872291_29-podacha-blud-com-p-bezalkogolnie-napitki-s-nazvaniyami-krasiv-35.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Холодные/1670198904_50-podacha-blud-com-p-podacha-goryachikh-napitkov-foto-56.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Холодные/2020Food___Drinks_Iced_tea_with_lemon_on_a_table_with_mint_144186_.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Холодные/rsz_dollarphotoclub_63693822.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Горячие</h5>
                <a id="hot_drinks"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Горячте/0964981c67801de927c240b17f12b7c7.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Горячте/1670198922_42-podacha-blud-com-p-podacha-goryachikh-napitkov-foto-46.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Горячте/1670198958_18-podacha-blud-com-p-podacha-goryachikh-napitkov-foto-21.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Горячте/86348_orig.jpg" class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 id="subsection">Алкогольные</h5>
                <a id="alk_drinks"></a>
                <img src="референсы/линия.png" alt="" id="subline">
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner d-flex"
                         style="margin-top: 20px; justify-content: center; gap: 20px;">
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Алкогольные/1670216296_41-podacha-blud-com-p-zhenskie-kokteili-alkogolnie-foto-55.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Алкогольные/1833d5ed87bcb1a25861634651039ff5.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Алкогольные/650283c8a55db5d9be98a233f2359050.jpg"
                                     alt="..." class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="container_eat">
                            <div>
                                <img src="референсы/Еда/Напитки/Алкогольные/maxresdefault.jpg" alt="..."
                                     class="eat">
                            </div>
                            <div class="amount_container">
                                <div class="amount">
                                    <div class="container_count">
                                        <div class="minus">
                                            <img src="референсы/minus.png" alt="" class="sign_minus">
                                        </div>
                                        <div class="count">
                                            <p class="number">0</p>
                                        </div>
                                        <div class="plus">
                                            <img src="референсы/plus.png" alt="" class="sign_plus">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</section>
<footer>

</footer>

<script>
    $(function () {
        if (window.innerWidth > 1151) {
            var header = $(".profile_bar");
            $(window).scroll(function () {
                var scroll = $(window).scrollTop();

                if (scroll >= 103) {
                    header.removeClass('profile_bar')
                        .addClass("profile_bar_scroll");

                } else {

                    header.removeClass("profile_bar_scroll")
                        .addClass('profile_bar');
                }
            });
        }

    });

    var product = 0

    $('.sign_minus').click(function () {

        var x = parseInt($('.number')[$('.sign_minus').index(this)].innerText);
        if (x <= 0) {

            $('.number')[$('.sign_minus').index(this)].innerText = 0;
        }
        else {
            product -= 1
            $('.number')[$('.sign_minus').index(this)].innerText = x - 1;

            if (product >= 100) {
                $('#num_profile_bar')[0].innerText = ".."
                $('#num')[0].innerText = "..";
            }
            else {
                $('#num')[0].innerText = product;
                $('#num_profile_bar')[0].innerText = product;
            }
        }
    });

    $('.sign_plus').click(function () {
        product += 1
        var x = parseInt($('.number')[$('.sign_plus').index(this)].innerText);
        $('.number')[$('.sign_plus').index(this)].innerText = x + 1;
        if (product >= 100) {
            $('#num_profile_bar')[0].innerText = ".."
            $('#num')[0].innerText = "..";
        }
        else {
            $('#num')[0].innerText = product;
            $('#num_profile_bar')[0].innerText = product;
        }
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

</body>

</html>