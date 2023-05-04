<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">
    <style>
        <#include "homepage_style.css">
    </style>
    <#--	<link rel="stylesheet" href="homepage_style.css">-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
</head>

<body style="background-image: url(/static/drawable/background.png);">
<header class="w-100 head" style="top: 0">
    <img src="/static/header.jpg" alt="" style="z-index: -1000; height: 150px" id="test">
    <div class="container-fluid" id="header">
        <div class="row">
            <a href="/bonappetit" style="width: 30%; float: left">
                <img src="/static/logo.png" alt="" id="name">
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

<div id="content-test" style="height: 100vh;">
    <section id="profile_section">
        <div class="container-fluid">
            <div class="box_basket" id="">
                <div class="row ">
                    <div class="select col-md-4 col-sm-8" style="margin: 0 auto; height: 30px">
                        <button id="hall" class="w-50">В зале</button>
                        <button id="delivery" class="w-50 float-end">Доставка</button>
                        <button class="w-100">Адрес</button>
                    </div>
                    <div class="food">
                        <#if eats??>
                            <#list eats as eat>
                                <div class="col-md-4 col-sm-8" style="margin: 50px auto;">
                                    <div class="description col" id="description"
                                         style="border-radius: 25px; position: relative">
                                        <img class="eat img-fluid w-50" src="../${eat.icon}" alt=""
                                             style="aspect-ratio: 1/1">
                                        <div class="row w-50 float-end ">
                                            <h4 style="color: white; text-decoration: underline">${eat.title}</h4>
                                            <h6 style="color: white">${eat.description}</h6>
                                            <h6 style="color: white; font-size: 0.8rem">${eat.calories}ккал</h6>
                                            <div style="height: 70px; margin-top: 40%">
                                                <div class="container_count"
                                                     style="height: 70px; width: 30%; left: 60%; position: absolute; top: 73%;">
                                                    <div class="minus" style="border-radius: 35px">
                                                        <img src="/static/minus.png" alt="" class="sign_minus">
                                                    </div>
                                                    <div class="count" style="border-radius: 35px">
                                                        <p class="number">${eat.num}</p>
                                                    </div>
                                                    <div class="plus" style="border-radius: 35px">
                                                        <img src="/static/plus.png" alt="" class="sign_plus">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        <#else>
                            <img src="../static/drawable/order_empty.png" alt=""
                                 style="height: 300px; aspect-ratio: 1/1">
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

<footer class="w-100">

</footer>


<script>
    <#include "homepage_script.js">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

</body>

</html>