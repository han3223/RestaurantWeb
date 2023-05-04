<section class="w-100" id="global_section">
        <div class="container-fluid" id="content">
            <div data-bs-spy="scroll" data-bs-target="navbar_example2" data-bs-root-margin="0px 0px -40%"
                 data-bs-smooth-scroll="true" class="scrollspy-example p-3 rounded-2" tabindex="0">
                <#list categories as category>
                    <div class="row" id="${category.route}">
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
                                                <img src="../${eat.icon}" alt="..." class="eat img-fluid">
                                            </div>
                                            <div id="price" class="price">
                                                <h6 style="color: white">${eat.price}₽</h6>
                                            </div>
                                            <div class="amount_container">
                                                <div class="description" id="description" style="overflow-y: scroll">
                                                    <h4 style="color: white; text-decoration: underline">${eat.title}</h4>
                                                    <h6 style="color: white">${eat.description}</h6>
                                                    <h6 style="color: white; font-size: 0.8rem">${eat.calories} ккал</h6>
                                                </div>
                                                <div class="amount">
                                                    <div class="container_count">
                                                        <div class="minus">
                                                            <img src="/static/minus.png" alt="" class="sign_minus">
                                                        </div>
                                                        <div class="count">
                                                            <p class="number">0</p>
                                                        </div>
                                                        <div class="plus">
                                                            <img src="/static/plus.png" alt="" class="sign_plus">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
