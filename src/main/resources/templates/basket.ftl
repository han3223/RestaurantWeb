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
