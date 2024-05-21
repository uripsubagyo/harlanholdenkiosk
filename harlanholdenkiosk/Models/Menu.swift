//
//  Menu.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 21/05/24.
//
import Foundation

enum MenuType {
    case sets,coffee, drinks, bottle, snacks, gift
}

struct Menu : Identifiable{
    var id : Int
    var type : MenuType
    var name : String
    var image : String
    var basePrice: Int
    var deskription : String
}

let menuData : [Menu] = [
    Menu(id: 1, type:MenuType.sets, name: "sea salt latte + sourdough cheeseteak", image: "sets_sea_salt_sourdough", basePrice: 120000, deskription: "best-selling sea salt latte with sourdough cheesesteak snack"),
    Menu(id: 2, type:MenuType.sets, name: "sea salt latte + grilled cheese", image: "sea_salt_grilled", basePrice: 94000, deskription: "our favorite sea salt latte paired with our grilled cheese snack"),
    Menu(id: 3, type:MenuType.sets, name: "iced madagascar + grilled cheese", image: "madagascar_grilled", basePrice: 85000, deskription: "iced madagascar + grilled cheese"),
    
    
//
//    Menu(id: 4, type:MenuType.coffee, name: "spanish cold brew", image: "spanishcoldbrew", basePrice: 43000, deskription: "coffee brewed cold for 12-hours with enough cane sugar and heavy cream"),
//    Menu(id: 5, type:MenuType.coffee, name: "long black", image: "longblack", basePrice: 30000, deskription: "a double shot of espresso poured over water"),
//    Menu(id: 6, type:MenuType.coffee, name: "cortado", image: "cortado", basePrice: 38000, deskription: "a 5oz drink of double shot espresso with the same amount of milk. it's like a small latte."),
//    Menu(id: 7, type:MenuType.coffee, name: "pandan latte", image: "pandanlatte", basePrice: 43000, deskription: "our best selling latte with fresh pandan and cane sugar"),
//    Menu(id: 8, type:MenuType.coffee, name: "brown sugar latte", image: "brownsugarlatte", basePrice: 43000, deskription: "a latte with brown sugar molasses syrup. it has a little dark caramel sweetness."),
//    Menu(id: 9, type:MenuType.coffee, name: "latte", image: "latte", basePrice: 40000, deskription: "a double shot of espresso with milk, microfoam, and 1cm wet foam"),
//    Menu(id: 10, type:MenuType.coffee, name: "spanish latte", image: "spanishlatte", basePrice: 43000, deskription: "a latte with sweetened milk. it has a little creamy sweetness."),
//    Menu(id: 11, type:MenuType.coffee, name: "madagascar", image: "madagascar", basePrice: 45000, deskription: "best selling latte lightly sweetened with pure vanilla bean"),
//    Menu(id: 12, type:MenuType.coffee, name: "cappuccino", image: "cappucino", basePrice: 40000, deskription: "a double shot of espresso with milk, microfoam, and 1.5cm wet foam"),
//    Menu(id: 13, type:MenuType.coffee, name: "espresso macchiato", image: "espressomacchiato", basePrice: 30000, deskription: "a double shot of espresso with a teaspoon of wet foam"),
//    Menu(id: 14, type:MenuType.coffee, name: "cappuccino", image: "cappucino", basePrice: 40000, deskription: "a double shot of espresso with milk, microfoam, and 1.5cm wet foam"),
//    Menu(id: 15, type:MenuType.coffee, name: "espresso cup", image: "espressocup", basePrice: 30000, deskription: "a double shot"),
//    Menu(id: 16, type:MenuType.coffee, name: "peanut butter latte", image: "peanutbutterlatte", basePrice: 56000, deskription: "a flat white with sweet and salty ground peanuts, topped with cookie crumble"),
//    Menu(id: 17, type:MenuType.coffee, name: "campfire coffee", image: "campfirecoffe", basePrice: 60000, deskription: "espresso and thick, rich and luscious double chocolate drink topped with toasted vanilla marshmallow creme"),
//    Menu(id: 18, type:MenuType.coffee, name: "butterscotch latte", image: "butterscothchlatte", basePrice: 55000, deskription: "lightly caramel sweetened latte with hints of sea salt, rounded with cookie crumble"),
//    Menu(id: 19, type:MenuType.coffee, name: "sea salt latte", image: "seasaltlatte", basePrice: 58000, deskription: "a brown sugar latte topped with a sea salt cream."),
//    Menu(id: 20, type:MenuType.coffee, name: "hazelnut latte", image: "hazelnutlatte", basePrice: 58000, deskription: "creamy latte topped with heavy roasted hazelnut cream"),
//
//
//    Menu(id: 21, type:MenuType.drinks, name: "mixed berries iced tea", image: "mixberriesicedtea", basePrice: 35000, deskription: "A fresh blend of hibiscus, blueberry, raspberry and blackberry sweetened with cane sugar"),
//    Menu(id: 22, type:MenuType.drinks, name: "orange cinnamon iced tea", image: "", basePrice: 56000, deskription: "a seasonal blend of sweet zesty orange, cinnamon and cloves sweetened with cane sugar"),
//    Menu(id: 23, type:MenuType.drinks, name: "matcha latte", image: "matchalatte", basePrice: 38000, deskription: "green tea with milk, microfoam, and 1cm wet foam"),
//    Menu(id: 25, type:MenuType.drinks, name: "chocolate milk", image: "chcholatemilk", basePrice:35000 , deskription: "dark chocolate with milk"),
//    Menu(id: 26, type:MenuType.drinks, name: "campfire chocolate", image: "campfirechocolate", basePrice: 68000, deskription: "thick, rich and luscious double chocolate drink topped with toasted vanilla marshmallow creme"),
//
//
//    Menu(id: 27, type:MenuType.bottle, name: "mixed berries iced tea bottle", image: "mixedberrieteabottle", basePrice: 40000, deskription: "A fresh blend of hibiscus, blueberry, raspberry and blackberry sweetened with cane sugar shelf life: 5 days in the chiller"),
//    Menu(id: 28, type:MenuType.bottle, name: "matcha latte bottle", image: "matchalattebotle", basePrice: 48000, deskription: "green tea with milk, microfoam, and 1cm wet foam shelf life: 5 days in the chiller"),
//    Menu(id: 29, type:MenuType.bottle, name: "madagascar bottle", image: "madagascarbottle", basePrice: 60000, deskription: "best selling latte lightly sweetened with pure vanilla bean shelf life: 3 days in the chiller"),
//    Menu(id: 30, type:MenuType.bottle, name: "spanish latte bottle", image: "spanishlattebotle", basePrice: 53000, deskription: "a latte with sweetened milk. it has a little creamy sweetness. shelf life: 3 days in the chiller"),
//    Menu(id: 31, type:MenuType.bottle, name: "brown sugar latte bottle", image: "brownsugarlattebottle", basePrice: 53000, deskription: "a latte with brown sugar molasses syrup. it has a little dark caramel sweetness. shelf life: 3 days in the chiller"),
//    Menu(id: 32, type:MenuType.bottle, name: "pandan latte bottle", image: "pandanlattebottle", basePrice: 58000, deskription: "our best selling latte with fresh pandan and cane sugar"),
//    Menu(id: 33, type:MenuType.bottle, name: "latte bottle", image: "lattebotle", basePrice: 50000, deskription: "a double shot of espresso with milk, microfoam, and 1cm wet foam shelf life: 3 days in the chiller"),
//
//
//    Menu(id: 34, type:MenuType.snacks, name: "orange butter cake", image: "orangebuttercake", basePrice: 28000, deskription: "english butter pound cake flavoured with real fresh navel orange shelf life: 3 days in chiller"),
//    Menu(id: 35, type:MenuType.snacks, name: "swiss chocolate fudge", image: "swisschocolate", basePrice: 30000, deskription: "sticky chocolate frosting on gooey fudgy chocolate cake shelf life: 3 days in chiller"),
//    Menu(id: 36, type:MenuType.snacks, name: "grilled cheese", image: "grilledcheese", basePrice: 38000, deskription: "pressed pullman with cheese, cheese and cheese"),
//    Menu(id:37, type:MenuType.snacks, name: "chocolate chip walnut cookie", image: "chcholate chip", basePrice: 30000, deskription: "toasted walnuts and dark chocolate in a crunchy chewy cookie"),
//    Menu(id: 38, type:MenuType.snacks, name: "sea salt butter cookie", image: "seasaltbutter", basePrice: 33000, deskription: "crisp and soft butter cookie dough with sea salt flakes and cookie butter spread"),
//    Menu(id: 39, type:MenuType.snacks, name: "is banana cake a fruit?", image: "isbananacakeafruit", basePrice: 28000, deskription: "moist banana cake topped with cinnamon oat crumble"),
//    Menu(id: 40, type:MenuType.snacks, name: "butterscotch dates cake", image: "butterschotchdates", basePrice: 33000, deskription: "moist dates cake with salted caramel sauce shelf life: 3 days in chiller"),
//    Menu(id: 41, type:MenuType.snacks, name: "sourdough cheesesteak", image: "sourdoughcheesesteak", basePrice: 62000, deskription: "thinly sliced prime roast beef brisket, cheddar cheese, aioli and parmesan butter in sourdough bread"),
//    Menu(id: 42, type:MenuType.snacks, name: "pecan sticky bun", image: "pecanstickybun", basePrice: 33000, deskription: "sticky cinnamon brioche with chopped roasted pecans"),
//
//    
//    Menu(id: 43, type:MenuType.gift, name: "harlan reusable cup 12oz (dark grey)", image: "harlan_reusable", basePrice: 99000, deskription: "harlan + holden's new dark grey cup in reusable plastic version."),
//    Menu(id: 44, type:MenuType.gift, name: "AGTFT steel cup (black)", image: "", basePrice: 56000, deskription: "Keep your drinks hot or cold for 6 hrs with this doubled walled steel cup."),
//    Menu(id: 45, type:MenuType.gift, name: "AGTFT beige cap", image: "beigecap", basePrice: 249000, deskription: "AIN'T GOT TIME FOR THAT. Put on a cap and get on with your day."),
//    Menu(id: 46, type:MenuType.gift, name: "AGTFT demitasse cup (4oz)", image: "demitasse", basePrice: 149000, deskription: "An espresso a day; keeps depresso away. Double walled 4oz coffee cup."),
//    Menu(id: 47, type:MenuType.gift, name: "big box", image: "bigbox", basePrice: 24000, deskription: "use this box for 12 pastries of your choice, or 6 specialty drinks. box only, no contents included."),
//    Menu(id: 48, type:MenuType.gift, name: "harlan + holden gift bag", image: "giftbag", basePrice: 7000, deskription: "harlan + holden gift bag"),
]


let menuSetsData = [
    Menu(id: 1, type:MenuType.sets, name: "sea salt latte + sourdough cheeseteak", image: "sets_sea_salt_sourdough", basePrice: 120000, deskription: "best-selling sea salt latte with sourdough cheesesteak snack"),
    Menu(id: 2, type:MenuType.sets, name: "sea salt latte + grilled cheese", image: "sea_salt_grilled", basePrice: 94000, deskription: "our favorite sea salt latte paired with our grilled cheese snack"),
    Menu(id: 3, type:MenuType.sets, name: "iced madagascar + grilled cheese", image: "madagascar_grilled", basePrice: 85000, deskription: "iced madagascar + grilled cheese")
]

let menuCoffeeData = [
        Menu(id: 4, type:MenuType.coffee, name: "spanish cold brew", image: "spanishcoldbrew", basePrice: 43000, deskription: "coffee brewed cold for 12-hours with enough cane sugar and heavy cream"),
        Menu(id: 5, type:MenuType.coffee, name: "long black", image: "longblack", basePrice: 30000, deskription: "a double shot of espresso poured over water"),
        Menu(id: 6, type:MenuType.coffee, name: "cortado", image: "cortado", basePrice: 38000, deskription: "a 5oz drink of double shot espresso with the same amount of milk. it's like a small latte."),
        Menu(id: 7, type:MenuType.coffee, name: "pandan latte", image: "pandanlatte", basePrice: 43000, deskription: "our best selling latte with fresh pandan and cane sugar"),
        Menu(id: 8, type:MenuType.coffee, name: "brown sugar latte", image: "brownsugarlatte", basePrice: 43000, deskription: "a latte with brown sugar molasses syrup. it has a little dark caramel sweetness."),
        Menu(id: 9, type:MenuType.coffee, name: "latte", image: "latte", basePrice: 40000, deskription: "a double shot of espresso with milk, microfoam, and 1cm wet foam"),
        Menu(id: 10, type:MenuType.coffee, name: "spanish latte", image: "spanishlatte", basePrice: 43000, deskription: "a latte with sweetened milk. it has a little creamy sweetness."),
        Menu(id: 11, type:MenuType.coffee, name: "madagascar", image: "madagascar", basePrice: 45000, deskription: "best selling latte lightly sweetened with pure vanilla bean"),
        Menu(id: 12, type:MenuType.coffee, name: "cappuccino", image: "cappucino", basePrice: 40000, deskription: "a double shot of espresso with milk, microfoam, and 1.5cm wet foam"),
        Menu(id: 13, type:MenuType.coffee, name: "espresso macchiato", image: "espressomacchiato", basePrice: 30000, deskription: "a double shot of espresso with a teaspoon of wet foam"),
        Menu(id: 14, type:MenuType.coffee, name: "cappuccino", image: "cappucino", basePrice: 40000, deskription: "a double shot of espresso with milk, microfoam, and 1.5cm wet foam"),
        Menu(id: 15, type:MenuType.coffee, name: "espresso cup", image: "espressocup", basePrice: 30000, deskription: "a double shot"),
        Menu(id: 16, type:MenuType.coffee, name: "peanut butter latte", image: "peanutbutterlatte", basePrice: 56000, deskription: "a flat white with sweet and salty ground peanuts, topped with cookie crumble"),
        Menu(id: 17, type:MenuType.coffee, name: "campfire coffee", image: "campfirecoffe", basePrice: 60000, deskription: "espresso and thick, rich and luscious double chocolate drink topped with toasted vanilla marshmallow creme"),
        Menu(id: 18, type:MenuType.coffee, name: "butterscotch latte", image: "butterscothchlatte", basePrice: 55000, deskription: "lightly caramel sweetened latte with hints of sea salt, rounded with cookie crumble"),
        Menu(id: 19, type:MenuType.coffee, name: "sea salt latte", image: "seasaltlatte", basePrice: 58000, deskription: "a brown sugar latte topped with a sea salt cream."),
        Menu(id: 20, type:MenuType.coffee, name: "hazelnut latte", image: "hazelnutlatte", basePrice: 58000, deskription: "creamy latte topped with heavy roasted hazelnut cream"),
]


let menuDrinksData = [
        Menu(id: 21, type:MenuType.drinks, name: "mixed berries iced tea", image: "mixberriesicedtea", basePrice: 35000, deskription: "A fresh blend of hibiscus, blueberry, raspberry and blackberry sweetened with cane sugar"),
        Menu(id: 22, type:MenuType.drinks, name: "orange cinnamon iced tea", image: "orangecinnamonicedtea", basePrice: 56000, deskription: "a seasonal blend of sweet zesty orange, cinnamon and cloves sweetened with cane sugar"),
        Menu(id: 23, type:MenuType.drinks, name: "matcha latte", image: "matchalatte", basePrice: 38000, deskription: "green tea with milk, microfoam, and 1cm wet foam"),
        Menu(id: 25, type:MenuType.drinks, name: "chocolate milk", image: "chcholatemilk", basePrice:35000 , deskription: "dark chocolate with milk"),
        Menu(id: 26, type:MenuType.drinks, name: "campfire chocolate", image: "campfirechocolate", basePrice: 68000, deskription: "thick, rich and luscious double chocolate drink topped with toasted vanilla marshmallow creme")
]

let menuBottleData = [
        Menu(id: 27, type:MenuType.bottle, name: "mixed berries iced tea bottle", image: "mixedberrieteabottle", basePrice: 40000, deskription: "A fresh blend of hibiscus, blueberry, raspberry and blackberry sweetened with cane sugar shelf life: 5 days in the chiller"),
        Menu(id: 28, type:MenuType.bottle, name: "matcha latte bottle", image: "matchalattebotle", basePrice: 48000, deskription: "green tea with milk, microfoam, and 1cm wet foam shelf life: 5 days in the chiller"),
        Menu(id: 29, type:MenuType.bottle, name: "madagascar bottle", image: "madagascarbottle", basePrice: 60000, deskription: "best selling latte lightly sweetened with pure vanilla bean shelf life: 3 days in the chiller"),
        Menu(id: 30, type:MenuType.bottle, name: "spanish latte bottle", image: "spanishlattebotle", basePrice: 53000, deskription: "a latte with sweetened milk. it has a little creamy sweetness. shelf life: 3 days in the chiller"),
        Menu(id: 31, type:MenuType.bottle, name: "brown sugar latte bottle", image: "brownsugarlattebottle", basePrice: 53000, deskription: "a latte with brown sugar molasses syrup. it has a little dark caramel sweetness. shelf life: 3 days in the chiller"),
        Menu(id: 32, type:MenuType.bottle, name: "pandan latte bottle", image: "pandanlattebottle", basePrice: 58000, deskription: "our best selling latte with fresh pandan and cane sugar"),
        Menu(id: 33, type:MenuType.bottle, name: "latte bottle", image: "lattebotle", basePrice: 50000, deskription: "a double shot of espresso with milk, microfoam, and 1cm wet foam shelf life: 3 days in the chiller")
]

let menuSnackData = [
        Menu(id: 34, type:MenuType.snacks, name: "orange butter cake", image: "orangebuttercake", basePrice: 28000, deskription: "english butter pound cake flavoured with real fresh navel orange shelf life: 3 days in chiller"),
        Menu(id: 35, type:MenuType.snacks, name: "swiss chocolate fudge", image: "swisschocolate", basePrice: 30000, deskription: "sticky chocolate frosting on gooey fudgy chocolate cake shelf life: 3 days in chiller"),
        Menu(id: 36, type:MenuType.snacks, name: "grilled cheese", image: "grilledcheese", basePrice: 38000, deskription: "pressed pullman with cheese, cheese and cheese"),
        Menu(id:37, type:MenuType.snacks, name: "chocolate chip walnut cookie", image: "chcholate chip", basePrice: 30000, deskription: "toasted walnuts and dark chocolate in a crunchy chewy cookie"),
        Menu(id: 38, type:MenuType.snacks, name: "sea salt butter cookie", image: "seasaltbutter", basePrice: 33000, deskription: "crisp and soft butter cookie dough with sea salt flakes and cookie butter spread"),
        Menu(id: 39, type:MenuType.snacks, name: "is banana cake a fruit?", image: "isbananacakeafruit", basePrice: 28000, deskription: "moist banana cake topped with cinnamon oat crumble"),
        Menu(id: 40, type:MenuType.snacks, name: "butterscotch dates cake", image: "butterschotchdates", basePrice: 33000, deskription: "moist dates cake with salted caramel sauce shelf life: 3 days in chiller"),
        Menu(id: 41, type:MenuType.snacks, name: "sourdough cheesesteak", image: "sourdoughcheesesteak", basePrice: 62000, deskription: "thinly sliced prime roast beef brisket, cheddar cheese, aioli and parmesan butter in sourdough bread"),
        Menu(id: 42, type:MenuType.snacks, name: "pecan sticky bun", image: "pecanstickybun", basePrice: 33000, deskription: "sticky cinnamon brioche with chopped roasted pecans")
]
let menuGiftData = [
        Menu(id: 43, type:MenuType.gift, name: "harlan reusable cup 12oz (dark grey)", image: "harlan_reusable", basePrice: 99000, deskription: "harlan + holden's new dark grey cup in reusable plastic version."),
        Menu(id: 44, type:MenuType.gift, name: "AGTFT steel cup (black)", image: "steelcupblack", basePrice: 56000, deskription: "Keep your drinks hot or cold for 6 hrs with this doubled walled steel cup."),
        Menu(id: 45, type:MenuType.gift, name: "AGTFT beige cap", image: "beigecap", basePrice: 249000, deskription: "AIN'T GOT TIME FOR THAT. Put on a cap and get on with your day."),
        Menu(id: 46, type:MenuType.gift, name: "AGTFT demitasse cup (4oz)", image: "demitasse", basePrice: 149000, deskription: "An espresso a day; keeps depresso away. Double walled 4oz coffee cup."),
        Menu(id: 47, type:MenuType.gift, name: "big box", image: "bigbox", basePrice: 24000, deskription: "use this box for 12 pastries of your choice, or 6 specialty drinks. box only, no contents included."),
        Menu(id: 48, type:MenuType.gift, name: "harlan + holden gift bag", image: "giftbag", basePrice: 7000, deskription: "harlan + holden gift bag")
]
