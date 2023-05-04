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
    <img src="/static/header.jpg" alt="" style="z-index: -1000; height: 150px;" id="test">
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
    <section id="profile_section" class="col-md-4 col-sm-8"
             style="margin: auto;background-color: #1f2025cc; border-radius: 25px;">
        <div class="container-fluid">
            <div class="row" id="">
                <div class="w-100" style="margin: 20px auto">
                    <h4 style="float: left; width: 70%">Важенин Иван Анатольевич</h4>
                    <img src="../static/headshot.jpg" class="w-25" alt=""
                         style="float: right; aspect-ratio: 1/1; border-radius: 15px">
                </div>
                <div class="w-100" style="margin: auto">
                    <h5>Тел: 89116172604</h5>
                    <h5>Email: ivan.vazhenin34@gmail.com</h5>
                    <h5>Адрес: ул.Коровникова, д.12, кв.101</h5>
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