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
<header class="w-100 head">
    <img src="/static/header.jpg" alt="" style="z-index: -1000;" id="test">
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

        <div class="parent">
            <div class="child">
                <nav class="row navbar navbar-expand-lg navbar-dark" id="navbar_example2"
                     style="margin-top: 35px;">

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
                                <a class="nav-link  dropdown-toggle" href="#salads"
                                   data-bs-toggle="dropdown">Салаты</a>
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
                                <a class="nav-link  dropdown-toggle" href="#hot_snacks"
                                   data-bs-toggle="dropdown">Горячие
                                    закуски</a>
                                <ul class="dropdown-menu" style="background-color: #292B31;">
                                    <li><a class="dropdown-item" href="#hot_fish" style="color: white;">Рыбные</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#hot_meat" style="color: white;">Мясные</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown big">
                                <a class="nav-link  dropdown-toggle" href="#first_courses"
                                   data-bs-toggle="dropdown">Первые
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
                                <a class="nav-link  dropdown-toggle" href="#second_courses"
                                   data-bs-toggle="dropdown">Вторые
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
                                <a class="nav-link  dropdown-toggle" href="#drinks"
                                   data-bs-toggle="dropdown">Напитки</a>
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
                                    <img src="/static/headshot.png" alt="" id="profile"
                                         style="height: 30px; width: 30px; float: left; margin-left: 5px;"  class="profile">
                                    <img src="/static/basket.png" alt="" id="basket"
                                         style="height: 40px; width: 40px;" class="basket">
                                    <div id="basket_count_profile_bar">
                                        <h6 id="num_profile_bar">${count}</h6>
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

<#assign index = 0>

<div id="content-test" style="">
    <section class="w-100" id="global_section">
        <div class="container-fluid" id="content">
            <div data-bs-spy="scroll" data-bs-target="navbar_example2" data-bs-root-margin="0px 0px -40%"
                 data-bs-smooth-scroll="true" class="scrollspy-example p-3 rounded-2" tabindex="0">
                <#list categories as category>
                    <div class="row" id="${category.route}" style="flex-direction: column">
                        <h4 id="chapter">${category.category}</h4>
                        <img src="/static/drawable/line.png" alt="" id="line">
                        <#list category.subcategory as subcategory>
                            <a id="${subcategory.route}"></a>
                            <h5 id="subsection">${subcategory.subcategory}</h5>
                            <img src="/static/drawable/line.png" alt="" id="subline">
                            <div id="carouselExample" class="carousel slide">
                                <div class="back"></div>
                                <div class="carousel-inner d-flex" id="carousel_eat">
                                    <#list subcategory.eat as eat>
                                        <div id="container_eat" class="container_eat">
                                            <div>
                                                <img src="${eat.icon}" alt="..." class="eat img-fluid">
                                            </div>
                                            <div id="price" class="price">
                                                <h6 style="color: white">${eat.price}₽</h6>
                                            </div>
                                            <div class="amount_container">
                                                <div class="description" id="description" style="overflow-y: scroll">
                                                    <h4 style="color: white; text-decoration: underline">${eat.title}</h4>
                                                    <h6 style="color: white">${eat.description}</h6>
                                                    <h6 style="color: white; font-size: 0.8rem">${eat.calories}
                                                        ккал</h6>
                                                </div>
                                                <div class="amount">
                                                    <div class="container_count">
                                                        <div class="minus">
                                                            <img src="/static/minus.png" alt="" class="sign_minus">
                                                        </div>
                                                        <div class="count">
                                                            <#list countsEat as num>
                                                                <#if num?index == index>
                                                                    <p class="number">${num}</p>
                                                                </#if>
                                                            </#list>
                                                        </div>
                                                        <div class="plus">
                                                            <img src="/static/plus.png" alt="" class="sign_plus">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <#assign index = index + 1>
                                    </#list>
                                </div>
                                <div class="next"></div>
                            </div>
                        </#list>
                    </div>
                </#list>
            </div>
        </div>
        <div class="basket_mobile" style="display: none;">
            <div class="circle">
                <div class="basket_container">
                    <img src="/static/basket.png" alt="" id="basket">
                    <div id="basket_count">
                        <h6 id="num_mobile">0</h6>
                    </div>
                </div>
            </div>
        </div>
    </section>
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