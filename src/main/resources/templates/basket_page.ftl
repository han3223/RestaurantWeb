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
    <link rel="stylesheet" type="text/css"
          href="https://unpkg.com/tooltipster@4.2.8/dist/css/tooltipster.bundle.min.css"/>
    <link rel="stylesheet"
          href="https://unpkg.com/tooltipster@4.2.8/dist/css/plugins/tooltipster/sideTip/themes/tooltipster-sideTip-shadow.min.css"/>
</head>

<body style="background-image: url(/static/drawable/background.png);">
<header class="w-100 head" style="top: 0">
    <img src="/static/header.jpg" alt="" style="z-index: -1000; height: 150px" id="test">
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
        </div>
    </div>
</header>


<div id="content-test" style="margin-top: 140px">
    <form action="/handler/add-order" method="post">
        <section id="profile_section">
            <div class="container-fluid">
                <div class="box_basket" id="">
                    <div class="row ">
                        <div class="select col-md-4 col-sm-8" style="margin: 0 auto;">
                            <button type="button" id="hall" class="w-50">В зале</button>
                            <button type="button" id="delivery" class="w-50 float-end">Доставка</button>
                            <select class="w-100" name="address" id="select_address" >
                                <option>Большая Санкт-Петербургская д.41</option>
                                <option>Советской армии д.7</option>
                                <option>Псковская д.3</option>
                            </select>
                            <input type="text" name="location" id="location" value="В зале" style="display: none">
                            <input class="w-100" name="address" placeholder="Адрес"  id="input_address" style="padding-left: 10px; display: none"/>
                        </div>
                        <div class="food">
                            <#if eats?has_content>
                                <#list eats as eat>
                                    <div class="col-md-4 col-sm-8 removable check_food" id="${eat.id}" style="margin: 20px auto 0;">
                                        <div class="description col" id="description"
                                             style="border-radius: 25px; position: relative">
                                            <img class="eat img-fluid w-50" src="../${eat.icon}" alt=""
                                                 style="aspect-ratio: 1/1">
                                            <div class="row w-50 float-end ">
                                                <h4 style="color: white; text-decoration: underline">${eat.title}</h4>
                                                <h6 style="color: white">${eat.description}</h6>
                                                <h6 style="color: white; font-size: 0.8rem">${eat.calories}ккал</h6>
                                                <h6 style="color: white; font-size: 0.7rem; margin-top: 20px">${eat.price}p</h6>
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
                                        <#if eat?is_last>
                                            <input type="submit" value="Заказать" class="submit" style="    width: 100px; margin: 30px 0; margin-left: calc(100% - 100px);"/>
                                        </#if>
                                    </div>
                                </#list>
                            <#else>
                                <img src="../static/drawable/order_empty.png" alt=""
                                     style="height: 300px; aspect-ratio: 1/1; object-fit: contain; margin: 50px auto; width: 300px">
                            </#if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
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