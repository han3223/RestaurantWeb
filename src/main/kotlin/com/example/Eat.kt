package com.example.bonappetitandroid

import com.example.database.dataclass.Subcategory
import kotlinx.serialization.Contextual
import kotlinx.serialization.Serializable

@Serializable
data class Subcategories(val subcategory: String?, val route: String?, val eat: MutableList<Eat>)

@Serializable
data class Category(val category: String, val route: String, val subcategory: List<Subcategories>)

@Serializable
data class ListCategory(val list: List<Category>)

//data class Eat (var route: String?,
//                var icon: String,
//                var title: String,
//                var description: String?,
//                var calories: Int?,
//                var price: Int?,
//                var num: Int?
//                )

@Serializable
open class Eat(
    var route: String?,
    var icon: String,
    var title: String,
    var description: String?,
    var calories: Int?,
    var price: Int?,
    var num: Int?
) {
    @Serializable
    class Food {

        @Serializable
        class ColdSnacks {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Холодные закуски", null, null, 0, null)
            @Serializable
            class Fish {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Рыбные", null, null, null, null)
                object ColdFishSnack1 :
                    Eat(
                        "cold_fish_snack1",
                        "static/drawable/cold_fish_snack1.jpg",
                        "Кольца кальмара",
                        "Кольца, сделанные из кальмара",
                        150,
                        150,
                        0,
                    )

                object ColdFishSnack2 :
                    Eat(
                        "cold_fish_snack2",
                        "static/drawable/cold_fish_snack2.jpg",
                        "Рулетики из семги",
                        "Рулетики из семги с творожным сыром",
                        180,
                        120,
                        0
                    )

                object ColdFishSnack3 :
                    Eat(
                        "cold_fish_snack3",
                        "static/drawable/cold_fish_snack3.jpg",
                        "Рыбное ассорти",
                        "Карпаччо из семги, креветок и палтуса",
                        200,
                        275,
                        0
                    )

                object ColdFishSnack4 :
                    Eat(
                        "cold_fish_snack4",
                        "static/drawable/cold_fish_snack4.jpg",
                        "Рольмопс",
                        "Рулетик из маринованного в уксусе с солью филе сельди с начинкой из корнишонов",
                        110,
                        120,
                        0
                    )

                var item = mutableListOf(
                    ColdFishSnack1,
                    ColdFishSnack2,
                    ColdFishSnack3,
                    ColdFishSnack4
                )
            }
            @Serializable
            class Meat {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Мясные", null, null, null, 0)
                object ColdMeatSnack1 :
                    Eat(
                        "cold_meat_snack1",
                        "static/drawable/cold_meat_snack1.jpg",
                        "Мясное ассорти 1",
                        "Ассорти из различных колбас и бекона",
                        200,
                        230,
                        0
                    )

                object ColdMeatSnack2 :
                    Eat(
                        "cold_meat_snack2",
                        "static/drawable/cold_meat_snack2.jpg",
                        "Мясное ассорти 2",
                        "Мясное ассорти из буженины, ветчины, куриной грудки и карпаччо",
                        230,
                        270,
                        0
                    )

                object ColdMeatSnack3 :
                    Eat(
                        "cold_meat_snack3",
                        "static/drawable/cold_meat_snack3.jpg",
                        "Ростбиф",
                        "Ростбиф из говядины с ароматными травами",
                        370,
                        430,
                        0
                    )

                object ColdMeatSnack4 :
                    Eat(
                        "cold_meat_snack4",
                        "static/drawable/cold_meat_snack4.jpg",
                        "Копченое куриное филе",
                        "Ломтики куриного филе холодного копчения",
                        310,
                        330,
                        0
                    )

                var item = mutableListOf(
                    ColdMeatSnack1,
                    ColdMeatSnack2,
                    ColdMeatSnack3,
                    ColdMeatSnack4
                )
            }
            @Serializable
            class Vegetables {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Овощные", null, null, null, 0)
                object ColdVegSnack1 :
                    Eat(
                        "cold_veg_snack1",
                        "static/drawable/cold_veg_snack1.jpg",
                        "Овощная нарезка",
                        "Нарезка из овощей",
                        70,
                        120,
                        0
                    )

//                object ColdVegSnack2 :
//                    Eat("cold_veg_snack2", "static/drawable/cold_veg_snack2, "Рулетики из баклажана", "", 80, 210, 0)

                object ColdVegSnack3 :
                    Eat(
                        "cold_veg_snack3",
                        "static/drawable/cold_veg_snack3.jpg",
                        "Спанакопита",
                        "Пирог со шпинатом и сыром фета",
                        120,
                        140,
                        0
                    )

                var item = mutableListOf(
                    ColdVegSnack1,
//                    ColdVegSnack2,
                    ColdVegSnack3
                )
            }

            var subcategory = listOf(
                Subcategories(Fish.Line.title, "cold_fish", Fish().item),
                Subcategories(Meat.Line.title, "cold_meat", Meat().item),
                Subcategories(Vegetables.Line.title, "cold_veg", Vegetables().item)
            )
        }

        @Serializable
        class Salads {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Салаты", null, null, 1, null)
            @Serializable
            class Fish {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Рыбные", null, null, null, 0)

                //                object SaladFish1 : Eat("salad_fish1", "static/drawable/salads_fish1, "Оливье", "Оливье с семгой и красной икрой", 130, 210, 0)
                object SaladFish2 : Eat(
                    "salad_fish2",
                    "static/drawable/salads_fish2.jpg",
                    "Салат с семгой и рыбой",
                    "Салат из копченого лосося и семги",
                    150,
                    230,
                    0
                )

                object SaladFish3 : Eat(
                    "salad_fish3",
                    "static/drawable/salads_fish3.jpg",
                    "Салат из авокадо и рыбы",
                    "Непритязательный салат из рыбы и зелени, но необыкновенно вкусный и очень красивый.",
                    170,
                    260,
                    0
                )

                object SaladFish4 : Eat(
                    "salad_fish4",
                    "static/drawable/salads_fish4.jpg",
                    "Цезарь с креветками",
                    "Традиционный салат цезарь с добавлением креветок",
                    230,
                    320,
                    0
                )

                var item = mutableListOf(
//                    SaladFish1,
                    SaladFish2,
                    SaladFish3,
                    SaladFish4,
                )
            }
            @Serializable
            class Meat {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Мясные", null, null, null, 0)

                //                object SaladMeat1 : Eat("salad_meat1", "static/drawable/salads_meat1, "Салат из мяса и овощей ", "Салат из говяжьей вырезки с добавлением баклажана, болгарского перца и цукини", 170, 280, 0)
                object SaladMeat2 : Eat(
                    "salad_meat2",
                    "static/drawable/salads_meat2.jpg",
                    "Салат «Казан»",
                    "Салат из приготовленной в тандыре баранины, баклажанов с добавлением фасоли и красного лука",
                    200,
                    255,
                    0
                )

                object SaladMeat3 : Eat(
                    "salad_meat3",
                    "static/drawable/salads_meat3.jpg",
                    "Мясо с овощами",
                    "Стейк из говядины с добавлением овощей",
                    230,
                    375,
                    0
                )

                object SaladMeat4 : Eat(
                    "salad_meat4",
                    "static/drawable/salads_meat4.jpg",
                    "Салат с языком",
                    "Мясной салат с языком и добавлением огурцов и грибов",
                    210,
                    240,
                    0
                )

                var item = mutableListOf(
//                    SaladMeat1,
                    SaladMeat2,
                    SaladMeat3,
                    SaladMeat4
                )
            }
            @Serializable
            class Vegetables {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Овощные", null, null, null, 0)
                object SaladVeg1 : Eat(
                    "salad_veg1",
                    "static/drawable/salads_veg1.jpg",
                    "Греческий салат",
                    "Традиционный греческий салат с сыром фета, болграсикм перцем, помидорами и оливками",
                    130,
                    230,
                    0
                )

                object SaladVeg2 : Eat(
                    "salad_veg2",
                    "static/drawable/salads_veg2.jpg",
                    "Греческий салат с гренками",
                    "Греческий салат с сыром фета, гренками, помидорками черри и красным луком",
                    150,
                    245,
                    0
                )

                object SaladVeg3 : Eat(
                    "salad_veg3",
                    "static/drawable/salads_veg3.jpg",
                    "Салат руккола",
                    "Салат с добавлением авокадо и манго",
                    130,
                    220,
                    0
                )

                object SaladVeg4 : Eat(
                    "salad_veg4",
                    "static/drawable/salads_veg4.jpg",
                    "Зимний салат",
                    "Салат с добавлением томатов, соленых огурцов и малины",
                    130,
                    270,
                    0
                )

                var item = mutableListOf(
                    SaladVeg1,
                    SaladVeg2,
                    SaladVeg3,
                    SaladVeg4
                )
            }

            var subcategory = listOf(
                Subcategories(Fish.Line.title, "salads_fish", Fish().item),
                Subcategories(Meat.Line.title, "salads_meat", Meat().item),
                Subcategories(Vegetables.Line.title, "salads_veg", Vegetables().item)
            )
        }

        @Serializable
        class HotSnacks {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Горячие закуски", null, null, 2, null)
            @Serializable
            class Fish {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Рыбные", null, null, null, 0)

                //                object HotFishSnack1 :
//                    Eat("hot_fish_snack1", "static/drawable/hot_fish_snack1, "Филе сибаса", "Филе рыбы сибаса с брокколи, яйцом и сыром", 260, 340, 0)
                object HotFishSnack2 :
                    Eat(
                        "hot_fish_snack2",
                        "static/drawable/hot_fish_snack2.jpg",
                        "Креветки на шампуре",
                        "Креветки на шампуре, в гриле и с чесноком",
                        210,
                        290,
                        0
                    )

                object HotFishSnack3 :
                    Eat(
                        "hot_fish_snack3",
                        "static/drawable/hot_fish_snack3.jpg",
                        "Сашими угорь",
                        "Маринованный угорь с добавлением креветок",
                        130,
                        220,
                        0
                    )

                object HotFishSnack4 :
                    Eat(
                        "hot_fish_snack4",
                        "static/drawable/hot_fish_snack4.jpg",
                        "Рыбное ассорти",
                        "Ассорти из креветок, мидий и кальмара во фритюре",
                        210,
                        370,
                        0
                    )

                var item = mutableListOf(
//                    HotFishSnack1,
                    HotFishSnack2,
                    HotFishSnack3,
                    HotFishSnack4
                )
            }
            @Serializable
            class Meat {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Мясные", null, null, null, 0)
                object HotMeatSnack1 :
                    Eat(
                        "hot_meat_snack1",
                        "static/drawable/hot_meat_snack1.png",
                        "Рулетики из индейки",
                        "Рулетики из индейки с беконом и добавление розмарина",
                        280,
                        310,
                        0
                    )

                object HotMeatSnack2 :
                    Eat(
                        "hot_meat_snack2",
                        "static/drawable/hot_meat_snack2.jpg",
                        "Брускетта",
                        "Бутерброды с беконом, болграским перцем и помидорами",
                        210,
                        290,
                        0
                    )

//                object HotMeatSnack3 :
//                    Eat("hot_meat_snack3", "static/drawable/hot_meat_snack3, "Вырезка оленя", "Томленая вырезка оленя с соусом из сосновых шишек", 230, 355, 0)

                var item = mutableListOf(
                    HotMeatSnack1,
                    HotMeatSnack2,
//                    HotMeatSnack3
                )
            }

            var subcategory = listOf(
                Subcategories(Fish.Line.title, "hot_fish", Fish().item),
                Subcategories(Meat.Line.title, "hot_meat", Meat().item),
            )
        }

        @Serializable
        class First {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Первые блюда", null, null, 3, null)
            @Serializable
            class Broth {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Бульоны", null, null, null, 0)

                //                object Broth1 : Eat("broth1", "static/drawable/first_broth1, "Уха", "Рыбный бульон", 130, 410, 0)
                object Broth2 : Eat(
                    "broth2",
                    "static/drawable/first_broth2.jpg",
                    "Гороховый суп",
                    "Гороховый суп с копченой курицей",
                    210,
                    340,
                    0
                )

                object Broth3 :
                    Eat("broth3", "static/drawable/first_broth3.jpg", "Куриный суп", "Куриный бульон", 170, 220, 0)

                var item = mutableListOf(
//                    Broth1,
                    Broth2,
                    Broth3
                )
            }
            @Serializable
            class Filling {
                object Line :
                    Eat("lineSubcategory", "static/drawable/line.png", "Заправочные супы", null, null, null, 0)

                object Filling1 : Eat(
                    "filling1",
                    "static/drawable/first_filling1.jpg",
                    "Солянка",
                    "Солянка с добавлением трёх видов колбас, курицы, маслин и лимоном",
                    240,
                    450,
                    0
                )

                //                object Filling2 : Eat("filling2", "static/drawable/first_filling2, "Борщ", "Традиционный украинский борщ из томатной пасты с мясом", 210, 385, 0)
                object Filling3 :
                    Eat(
                        "filling3",
                        "static/drawable/first_filling3.jpg",
                        "Щи",
                        "Щи с тушенкой и картошкой",
                        230,
                        420,
                        0
                    )

                object Filling4 : Eat(
                    "filling4",
                    "static/drawable/first_filling4.jpg",
                    "Грибной суп",
                    "Суп с грибами, морковкой и зеленью",
                    180,
                    320,
                    0
                )

                var item = mutableListOf(
                    Filling1,
//                    Filling2,
                    Filling3,
                    Filling4
                )
            }
            @Serializable
            class Puree {
                object Line :
                    Eat("lineSubcategory", "static/drawable/line.png", "Пюреобразные супы", null, null, null, 0)

                object Puree1 : Eat(
                    "puree1",
                    "static/drawable/first_puree1.jpg",
                    "Суп из брокколи",
                    "Крем-суп из брокколи с гренками",
                    130,
                    260,
                    0
                )

                object Puree2 : Eat(
                    "broth2",
                    "static/drawable/first_broth2.jpg",
                    "Гороховый суп",
                    "Гороховый суп с копченой курицей",
                    210,
                    340,
                    0
                )

                object Puree3 : Eat(
                    "puree3",
                    "static/drawable/first_puree3.jpg",
                    "Сливочный суп ",
                    "Фирменный сливочный суп с лососем",
                    310,
                    360,
                    0
                )

                object Puree4 :
                    Eat(
                        "puree4",
                        "static/drawable/first_puree4.jpg",
                        "Грибной крем-суп",
                        "Суп-пюре с лисичками",
                        190,
                        385,
                        0
                    )

                var item = mutableListOf(
                    Puree1,
                    Puree2,
                    Puree3,
                    Puree4
                )
            }

            var subcategory = listOf(
                Subcategories(Broth.Line.title, "first_courses_1", Broth().item),
                Subcategories(Filling.Line.title, "first_courses_2", Filling().item),
                Subcategories(Puree.Line.title, "first_courses_3", Puree().item)
            )
        }

        @Serializable
        class Second {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Вторые блюда", null, null, 4, null)
            @Serializable
            class Fish {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Рыбные", null, null, null, 0)
                object SecondFish1 :
                    Eat(
                        "second_fish1",
                        "static/drawable/second_fish1.jpg",
                        "Морской окунь",
                        "Вкусный жаренный окунь. Подается с брокколи",
                        220,
                        460,
                        0
                    )

                object SecondFish2 :
                    Eat(
                        "second_fish2",
                        "static/drawable/second_fish2.jpg",
                        "Форель",
                        "Форель на гриле. Подаётся с помидорами",
                        310,
                        415,
                        0
                    )

                object SecondFish3 :
                    Eat(
                        "second_fish3",
                        "static/drawable/second_fish3.jpg",
                        "Лосось",
                        "Лосось по-норвежски. Подается в теплом виде",
                        240,
                        430,
                        0
                    )

                object SecondFish4 :
                    Eat(
                        "second_fish4",
                        "static/drawable/second_fish4.jpg",
                        "Стейк из лосося",
                        "Стейл из лосося с гарниром из овощей",
                        270,
                        350,
                        0
                    )

                object SecondFish5 :
                    Eat(
                        "second_fish5",
                        "static/drawable/second_fish5.jpg",
                        "Стейк из семги",
                        "Стейл из семги с гарниром из овощей",
                        310,
                        400,
                        0
                    )


                var item = mutableListOf(
                    SecondFish1,
                    SecondFish2,
                    SecondFish3,
                    SecondFish4,
                    SecondFish5
                )
            }
            @Serializable
            class Meat {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Мясные", null, null, null, null)
                object SecondMeat1 :
                    Eat(
                        "second_meat1",
                        "static/drawable/second_meat1.jpg",
                        "Запеченная курица",
                        "Запеченный окорок курицы с баклажанами",
                        310,
                        470,
                        0
                    )

                object SecondMeat2 :
                    Eat(
                        "second_meat2",
                        "static/drawable/second_meat2.jpg",
                        "Стейк из говядины",
                        "Стейк из говядины well done прожарки",
                        330,
                        440,
                        0
                    )

                object SecondMeat3 :
                    Eat(
                        "second_meat3",
                        "static/drawable/second_meat3.jpg",
                        "Рыбный стейк",
                        "Стейк из свинины well done прожарки",
                        300,
                        385,
                        0
                    )

                var item = mutableListOf(
                    SecondMeat1,
                    SecondMeat2,
                    SecondMeat3
                )
            }
            @Serializable
            class Vegetables {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Овощные", null, null, null, 0)
                object SecondVeg1 : Eat(
                    "second_veg1",
                    "static/drawable/second_veg1.jpg",
                    "Фаршированные баклажаны",
                    "Запеченные баклажаны с добавлением говяжьего фарша",
                    240,
                    325,
                    0
                )

                object SecondVeg2 : Eat(
                    "second_veg2",
                    "static/drawable/second_veg2.jpg",
                    "Рулетики сибаса",
                    "Рулетики с запеченными кабачками и перцем",
                    160,
                    270,
                    0
                )

                object SecondVeg3 : Eat(
                    "second_veg3",
                    "static/drawable/second_veg3.jpg",
                    "Рататуй",
                    "Салат из баклажанов, болграского перца и свежего огурца",
                    165,
                    300,
                    0
                )

                object SecondVeg4 : Eat(
                    "second_veg4",
                    "static/drawable/second_veg4.jpg",
                    "Жареный картофель",
                    "Жареный картофель с грибами",
                    230,
                    355,
                    0
                )

                object SecondVeg5 : Eat(
                    "second_veg5",
                    "static/drawable/second_veg5.jpg",
                    "Гриль-салат",
                    "Гриль-салат с цукини, помидорами, болгарксим перцем и баклажанами",
                    130,
                    340,
                    0
                )

                var item = mutableListOf(
                    SecondVeg1,
                    SecondVeg2,
                    SecondVeg3,
                    SecondVeg4,
                    SecondVeg5
                )
            }

            var subcategory = listOf(
                Subcategories(Fish.Line.title, "first_courses_fish", Fish().item),
                Subcategories(Meat.Line.title, "first_courses_meat", Meat().item),
                Subcategories(Vegetables.Line.title, "first_courses_veg", Vegetables().item)
            )
        }

        @Serializable
        class Garnish {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Гарниры", null, null, 5, null)
            object Garnish1 : Eat(
                "garnish1",
                "static/drawable/garnish1.jpg",
                "Мясо по-французски",
                "Свинина, покрытая сыром. Подается с овощами",
                260,
                310,
                0
            )

            //            object Garnish2 : Eat("garnish2", "static/drawable/garnish2, "Запеченные овощи", "Овощи, сделанные на гриле. Подаются в горячем виде", 150, 240, 0)
            object Garnish3 : Eat(
                "garnish3",
                "static/drawable/garnish3.jpg",
                "Печеный картофель",
                "Печеный картофель с соусом песто",
                130,
                220,
                0
            )

            object Garnish4 : Eat(
                "garnish4",
                "static/drawable/garnish4.jpg",
                "Ассорти",
                "Ассорти из печеного картофеля и овощей",
                225,
                265,
                0
            )

            var item = mutableListOf(
                Garnish1,
                Garnish3,
                Garnish4
            )

        }

        @Serializable
        class Desserts {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Десерты", null, null, 6, null)
            object Desserts1 :
                Eat("desserts1", "static/drawable/desserts1.jpg", "Тирамису", "Тирамису, политое мёдом", 150, 200, 0)

            object Desserts2 :
                Eat(
                    "desserts2",
                    "static/drawable/desserts2.jpg",
                    "Мороженое",
                    "Три шарика мороженого на выбор",
                    175,
                    230,
                    0
                )

            object Desserts3 : Eat(
                "desserts3",
                "static/drawable/desserts3.jpg",
                "Шоколадный десерт",
                "Десерт расплавленного шоколада с добавлением карамели",
                130,
                265,
                0
            )

            object Desserts4 : Eat(
                "desserts4",
                "static/drawable/desserts4.jpg",
                "Торт «Сент-Оноре»",
                "Тортик с клубникой, соленой карамелью и мадагаскарской ванилью",
                200,
                230,
                0
            )

            object Desserts5 : Eat(
                "desserts5",
                "static/drawable/desserts5.jpg",
                "Чизкейк",
                "Классический чизкейк, политый шоколадом",
                130,
                240,
                0
            )

            var item = mutableListOf(
                Desserts1,
                Desserts2,
                Desserts3,
                Desserts4,
                Desserts5
            )
        }

        @Serializable
        class Drinks {
            object Line : Eat("lineCategory", "static/drawable/line.png", "Напитки", null, null, 7, null)
            @Serializable
            class Cold {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Холодные", null, null, null, 0)
                object DrinksCold1 :
                    Eat(
                        "drinks_cold1",
                        "static/drawable/drinks_cold1.jpg",
                        "Мохито",
                        "Безалкогольный мохито на выбор",
                        70,
                        230,
                        0
                    )

                object DrinksCold2 :
                    Eat("drinks_cold2", "static/drawable/drinks_cold2.jpg", "Коктейль по-бразильски", "", 80, 200, 0)

                object DrinksCold3 :
                    Eat(
                        "drinks_cold3",
                        "static/drawable/drinks_cold3.jpg",
                        "Молекулярный коктейль",
                        "Легкий летний коктейль",
                        55,
                        250,
                        0
                    )

                object DrinksCold4 :
                    Eat(
                        "drinks_cold4",
                        "static/drawable/drinks_cold4.jpg",
                        "Холодный чай",
                        "Черный холодный чай",
                        40,
                        200,
                        0
                    )

                var item = mutableListOf(
                    DrinksCold1,
                    DrinksCold2,
                    DrinksCold3,
                    DrinksCold4
                )
            }
            @Serializable
            class Hot {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Горячие", null, null, null, 0)
                object DrinksHot1 :
                    Eat(
                        "drinks_hot1",
                        "static/drawable/drinks_hot1.jpg",
                        "Глинтвейн",
                        "Классический глинтвейн",
                        130,
                        240,
                        0
                    )

                object DrinksHot2 : Eat(
                    "drinks_hot2",
                    "static/drawable/drinks_hot2.jpg",
                    "Горячий шоколад",
                    "Горячий шоколад с соленой карамелью",
                    160,
                    270,
                    0
                )

                object DrinksHot3 : Eat(
                    "drinks_hot3",
                    "static/drawable/drinks_hot3.jpg",
                    "Чай",
                    "Чай с добавлением кориандра и корицы",
                    100,
                    120,
                    0
                )

                object DrinksHot4 : Eat("drinks_hot4", "static/drawable/drinks_hot4.jpg", "Латте", "Латте", 130, 240, 0)

                var item = mutableListOf(
                    DrinksHot1,
                    DrinksHot2,
                    DrinksHot3,
                    DrinksHot4
                )
            }
            @Serializable
            class Alcohol {
                object Line : Eat("lineSubcategory", "static/drawable/line.png", "Алкогольные", null, null, null, 0)
                object DrinksAlc1 :
                    Eat("drinks_alc1", "static/drawable/drinks_alc1.jpg", "Виски", "Стакан виски со льдом", 250, 350, 0)

                object DrinksAlc2 :
                    Eat(
                        "drinks_alc2",
                        "static/drawable/drinks_alc2.jpg",
                        "Мартини",
                        "Бокал мартини со льдом",
                        160,
                        330,
                        0
                    )

                object DrinksAlc3 :
                    Eat("drinks_alc3", "static/drawable/drinks_alc3.jpg", "Шоты", "Шоты на основе бейлиз", 130, 150, 0)

                object DrinksAlc4 : Eat(
                    "drinks_alc4",
                    "static/drawable/drinks_alc4.jpg",
                    "Джин-тоник",
                    "Джин-тоник со вкусом на выбор",
                    150,
                    180,
                    0
                )

                var item = mutableListOf(
                    DrinksAlc1,
                    DrinksAlc2,
                    DrinksAlc3,
                    DrinksAlc4
                )
            }

            var subcategory = listOf(
                Subcategories(Cold.Line.title, "cold_drinks", Cold().item),
                Subcategories(Hot.Line.title, "hot_drinks", Hot().item),
                Subcategories(Alcohol.Line.title, "alk_drinks", Alcohol().item)
            )
        }

        val eats = listOf(
            Category(ColdSnacks.Line.title, "cold_snacks", ColdSnacks().subcategory),
            Category(Salads.Line.title, "salads", Salads().subcategory),
            Category(HotSnacks.Line.title, "hot_snacks", HotSnacks().subcategory),
            Category(First.Line.title, "first_courses", First().subcategory),
            Category(Second.Line.title, "second_courses", Second().subcategory),
            Category(Garnish.Line.title, "side_dishes", listOf(Subcategories("", "", Garnish().item))),
            Category(Desserts.Line.title, "desserts", listOf(Subcategories("", "", Desserts().item))),
            Category(Drinks.Line.title, "drinks", Drinks().subcategory)
        )

        val onlyFood = listOf(
            ColdSnacks.Fish().item,
            ColdSnacks.Meat().item,
            ColdSnacks.Vegetables().item,
            Salads.Fish().item,
            Salads.Meat().item,
            Salads.Vegetables().item,
            HotSnacks.Fish().item,
            HotSnacks.Meat().item,
            First.Broth().item,
            First.Filling().item,
            First.Puree().item,
            Second.Fish().item,
            Second.Meat().item,
            Second.Vegetables().item,
            Garnish().item,
            Desserts().item,
            Drinks.Cold().item,
            Drinks.Hot().item,
            Drinks.Alcohol().item
        ).flatten()
    }


}



