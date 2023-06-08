<#assign allPrice = 0>
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
                                        <button class="submit" style="    width: 100px; margin: 30px 0; margin-left: calc(100% - 100px);">Заказать</button>
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

