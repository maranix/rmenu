//
//  MockData.swift
//  RestarauntMenu
//
//  Created by Raman Verma on 23/07/23.
//

import Foundation

final class MockData {
    static let dietOptions: [DietOption] = [
        DietOption(name: Diet.vegetarian, description: "A diet that excludes meat, fish, and poultry. It primarily includes fruits, vegetables, grains, nuts, and seeds. Some vegetarians may consume dairy and eggs."),
        DietOption(name: Diet.vegan, description: "A diet that excludes all animal products, including meat, dairy, eggs, and honey. Vegans rely on plant-based foods and may supplement with fortified foods or supplements to meet nutritional needs."),
        DietOption(name: Diet.glutenFree, description: "A diet that avoids gluten-containing grains like wheat, barley, rye, and their derivatives. It is essential for people with celiac disease or gluten sensitivity."),
        DietOption(name: Diet.dairyFree, description: "A diet that excludes dairy products such as milk, cheese, butter, and yogurt. It is common among individuals with lactose intolerance or dairy allergies."),
        DietOption(name: Diet.paleo, description: "A diet based on the presumed diet of early humans during the Paleolithic era. It includes lean meats, fish, fruits, vegetables, nuts, and seeds, while avoiding processed foods, grains, and legumes."),
        DietOption(name: Diet.ketogenic, description: "A high-fat, low-carb diet that aims to put the body in a state of ketosis. It involves consuming foods like meat, fish, eggs, avocados, and non-starchy vegetables."),
        DietOption(name: Diet.mediterranean, description: "Inspired by the traditional eating patterns of countries bordering the Mediterranean Sea. It emphasizes fruits, vegetables, whole grains, olive oil, fish, nuts, and seeds."),
        DietOption(name: Diet.flexitarian, description: "A mostly vegetarian diet with occasional inclusion of meat or fish. Flexitarians primarily focus on plant-based foods but may choose to eat meat or fish occasionally."),
        DietOption(name: Diet.pescatarian, description: "A vegetarian diet that includes fish but excludes meat. Pescatarians typically avoid land-based animal products while incorporating fish and seafood into their diet."),
        DietOption(name: Diet.lowCarb, description: "A diet that limits carbohydrate intake. It may include foods like meat, fish, eggs, nuts, seeds, and non-starchy vegetables."),
        DietOption(name: Diet.lowFat, description: "A diet that restricts fat consumption. It includes foods like lean meats, poultry, fish, fruits, vegetables, and low-fat dairy products."),
        DietOption(name: Diet.lowSodium, description: "A diet that limits sodium intake to help manage blood pressure and heart health. It involves reducing salt and high-sodium processed foods."),
        DietOption(name: Diet.rawFood, description: "A diet that includes uncooked and unprocessed foods. It typically comprises fruits, vegetables, nuts, seeds, and sprouted grains."),
        DietOption(name: Diet.whole30, description: "A 30-day elimination diet that removes certain foods and additives to reset eating habits. It involves avoiding added sugars, alcohol, grains, legumes, dairy, and processed foods."),
        DietOption(name: Diet.specificCarbDiet, description: "A diet that removes certain carbohydrates to help manage digestive conditions like Crohn's disease and ulcerative colitis. It focuses on easily digestible foods."),
        DietOption(name: Diet.antiInflammatoryDiet, description: "A diet focused on foods that may help reduce inflammation in the body. It includes fruits, vegetables, nuts, seeds, fish, and healthy fats."),
        DietOption(name: Diet.fodmap, description: "A diet that avoids certain fermentable carbohydrates to manage digestive symptoms like bloating, gas, and abdominal pain. It involves eliminating high-FODMAP foods."),
        DietOption(name: Diet.kosher, description: "A diet prepared according to Jewish dietary laws. It includes foods that meet the requirements of kashrut and follows certain rules regarding food preparation and consumption."),
        DietOption(name: Diet.halal, description: "A diet prepared according to Islamic dietary laws. It includes foods that are permissible (halal) and avoids those that are forbidden (haram)."),
        DietOption(name: Diet.organic, description: "A diet that includes food produced without synthetic fertilizers, pesticides, or genetically modified organisms (GMOs). It promotes sustainable and eco-friendly farming practices."),
        DietOption(name: Diet.dashDiet, description: "Dietary Approaches to Stop Hypertension (DASH) diet designed to help lower blood pressure. It includes fruits, vegetables, whole grains, lean proteins, and low-fat dairy."),
        DietOption(name: Diet.weightWatchers, description: "A weight management program that assigns point values to foods based on their nutritional content. It focuses on portion control and encourages healthy eating habits."),
        DietOption(name: Diet.zoneDiet, description: "A diet that balances macronutrients (carbohydrates, proteins, and fats) to promote weight loss and overall health."),
        DietOption(name: Diet.carnivoreDiet, description: "A diet that includes only animal products and excludes all plant-based foods."),
        DietOption(name: Diet.intermittentFasting, description: "A dietary pattern that alternates between periods of eating and fasting."),
        DietOption(name: Diet.theWhole30, description: "A 30-day elimination diet that removes certain foods and additives to reset eating habits."),
        
    ]
    
    static let restaurant: Restaurant = Restaurant(
        name: "Gourmet Delights",
        description: """
            Experience the perfect harmony of flavors in our signature dishes like the succulent Grilled Salmon, the indulgent Mushroom Risotto, and the classic Tiramisu for a sweet finish.
            """,
        image: "https://images.pexels.com/photos/2313686/pexels-photo-2313686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        address: "456 Elm Street, Town",
        rating: 4.5,
        menu: menuItems
    )
    
    static let menuItems: [MenuItem] = [
        MenuItem(
            name: "Shrimp Scampi",
            description: "Sautéed shrimp in garlic butter sauce served over linguine.",
            image: "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 18.99,
            category: .mainCourse,
            diet: [.pescatarian]
        ),
        MenuItem(
            name: "Caprese Salad",
            description: "Fresh mozzarella, tomatoes, and basil drizzled with balsamic glaze.",
            image: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            price: 10.99,
            category: .appetizer,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Lobster Bisque",
            description: "Creamy lobster soup with a touch of sherry.",
            image: "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 13.99,
            category: .appetizer,
            diet: [.pescatarian]
        ),
        MenuItem(
            name: "Eggplant Parmesan",
            description: "Breaded eggplant topped with marinara sauce and melted mozzarella.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 16.99,
            category: .mainCourse,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Beef Wellington",
            description: "Tender beef fillet wrapped in puff pastry and served with a red wine reduction.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 24.99,
            category: .mainCourse,
            diet: []
        ),
        MenuItem(
            name: "Caesar Salad",
            description: "Romaine lettuce, croutons, parmesan cheese, and Caesar dressing.",
            image: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            price: 12.99,
            category: .appetizer,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Chicken Alfredo",
            description: "Grilled chicken breast served with creamy Alfredo sauce over fettuccine.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 16.99,
            category: .mainCourse,
            diet: []
        ),
        MenuItem(
            name: "Spring Rolls",
            description: "Crispy vegetable spring rolls served with sweet chili sauce.",
            image: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            price: 8.99,
            category: .appetizer,
            diet: []
        ),
        MenuItem(
            name: "Margherita Pizza",
            description: "Classic pizza with tomato sauce, mozzarella, and fresh basil.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 12.99,
            category: .mainCourse,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Chocolate Lava Cake",
            description: "Warm chocolate cake with a molten chocolate center, served with vanilla ice cream.",
            image: "https://images.pexels.com/photos/2373520/pexels-photo-2373520.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 9.99,
            category: .dessert,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Steak",
            description: "Juicy ribeye steak cooked to perfection, served with mashed potatoes and grilled vegetables.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 22.99,
            category: .mainCourse,
            diet: []
        ),
        MenuItem(
            name: "Spinach and Artichoke Dip",
            description: "Creamy spinach and artichoke dip served with tortilla chips.",
            image: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            price: 10.99,
            category: .appetizer,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Lemon Garlic Shrimp",
            description: "Sautéed shrimp in a lemon garlic butter sauce, served with rice and vegetables.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 18.99,
            category: .mainCourse,
            diet: []
        ),
        MenuItem(
            name: "Tiramisu",
            description: "Classic Italian dessert made with layers of coffee-soaked ladyfingers and mascarpone cheese.",
            image: "https://images.pexels.com/photos/2373520/pexels-photo-2373520.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 7.99,
            category: .dessert,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Sushi Platter",
            description: "Assortment of fresh sushi rolls, nigiri, and sashimi.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 24.99,
            category: .mainCourse,
            diet: []
        ),
        MenuItem(
            name: "Bruschetta",
            description: "Toasted bread topped with diced tomatoes, fresh basil, and balsamic glaze.",
            image: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            price: 8.99,
            category: .appetizer,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Shrimp Pad Thai",
            description: "Traditional Thai stir-fried noodles with shrimp, bean sprouts, peanuts, and lime.",
            image: "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 14.99,
            category: .mainCourse,
            diet: []
        ),
        MenuItem(
            name: "Mushroom Risotto",
            description: "Creamy Arborio rice cooked with mushrooms, white wine, and Parmesan cheese.",
            image: "https://images.pexels.com/photos/14965991/pexels-photo-14965991/free-photo-of-tasty-pizza-on-table.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 15.99,
            category: .mainCourse,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Creme Brulee",
            description: "Classic French dessert with a rich custard base and caramelized sugar topping.",
            image: "https://images.pexels.com/photos/2373520/pexels-photo-2373520.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 8.99,
            category: .dessert,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Grilled Vegetable Platter",
            description: "Assorted grilled vegetables served with balsamic glaze.",
            image: "https://images.pexels.com/photos/1211887/pexels-photo-1211887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            price: 12.99,
            category: .appetizer,
            diet: [.vegetarian]
        ),
        MenuItem(
            name: "Chocolate Fondue",
            description: "Assortment of fruits and marshmallows served with warm melted chocolate for dipping.",
            image: "https://images.pexels.com/photos/2373520/pexels-photo-2373520.jpeg?auto=compress&cs=tinysrgb&w=600",
            price: 9.99,
            category: .dessert,
            diet: [.vegetarian]
        ),
    ]
}
