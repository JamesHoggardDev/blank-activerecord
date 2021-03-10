# Seed Your Database 
User.destroy_all
Mealplan.destroy_all
Meal.destroy_all


james = User.create(username: "James", password: "jam123")
zenadia = User.create(username: "Zenadia", password: "zen123")
maggie = User.create(username: "Maggie", password: "mag123")
ralph = User.create(username: "Ralph", password: "ral123")



arr1 = ["Monday","Tuesday","Wednesday", "Thursday", "Friday"]
arr2 = ["Breakfast", "Lunch", "Dinner"]

10.times do 
    mealplan = Mealplan.create(
         day: arr1.sample,
         time: arr2.sample,
         user_id: rand(1..25),
         meal_id: rand(1..40)
     )
 end

scrambled = Meal.create(name: "Scrambled Eggs & Toast", recipe:"Ingredients:\n2 Eggs, 1 tbsp Butter, 1/2 tbsp Milk,\nSalt & Pepper to taste.\n\nInstructions:\nWhisk the eggs, milk, salt, and pepper.\nMelt butter in pan on med/low heat.\nAdd eggs & gently fold for 90 seconds.\nRemove from heat & serve on toast.\nEnjoy!")
oatmeal = Meal.create(name: "Oatmeal", recipe:"Ingredients:\n1/2 cup Oats, 1 cup Milk/Water, Sweetener\nand Toppings of your choice.\n(Fruit and Nuts work great!)\n\nInstructions:\nBring liqiud to boil then reduce heat\nto low.\nPour in oats & allow them to cook\nuntil thickened & all liquid is\nabsorbed. Stir frequently- about 5mins.\n top with sweetner & toppings.\nEnjoy!")
bagel = Meal.create(name: "Bagel & Cream Cheese with Toppings", recipe:"Ingredients:\n1 Bagel- split & toasted\n2 tbsps Cream Cheese\n2 Tomato slices\n1 Red Onion slice- halved\n1/2 Avocado- peeled & sliced.\n1/8 tsps Freshly Ground Black Pepper\n\nInstructions:\nSpread 1tbsp creamcheese over cut side\nof each bagel half.\nTop each half with 1 tomato slice,\nhalf of onion slice,and half of avocado\nslices. Sprinkle with pepper.\nEnjoy!")
smoothie = Meal.create(name: "Strawberry Banana Smoothie", recipe:"Ingredients:\n1 Frozen Banana\n1/2 cups Frozen Strawberries\n1 cup Unsweetened Milk (Nut/Soy/Animal)\n1/2 cup Plain Greek Yogurt (Nut/Soy/Animal)\nHoney or Maple Syrup to taste\n\nInstructions:\nBlend ingredients together until smooth.\nEnjoy!")
crepes = Meal.create(name: "Crepes", recipe:"Ingredients:\n1 cup All-Purpose Flour\n2 Eggs\n1/2 cup Milk\n1/2 cup Water\n1/4 tsps Salt\n2 tbsps Butter, melted\n\nInstructions:\nIn large bowl, whisk together flour & eggs.\nSlowly add in milk and water.\nAdd salt and butter, then beat until smooth.\nHeat lightly oiled pan on med heat.\nPour ~1/4cup of batter per crepe.\nTilt pan in circular motion to coat evenly.\nCook for ~2mins, flip, cook for 1 more min.\nServe hot!\nEnjoy!")
ham_cheese = Meal.create(name: "Ham & Cheese Sandwich", recipe:"Ingredients:\n2 slices of Bread\n1 tbsp Mayonnaise\n1 tbsp Dijon Mustard\n2 tsps Honey\n3 slices Swiss Cheese\n3 slices Ham\n4 slices Dill Pickle\n\nInstructions:\nSpread one side of slices with mayonnaise.\nCombine mustard and honey.\nSpread other side of bread with honey mustard.\nTop honey mustard side with ham,\npickles, then cheese.\nHeat large skillet over med heat\nMayo side out, cook until bread is golden,\n&cheese is melted. ~3min per side.\nEnjoy!")
feta_soup = Meal.create(name: "Tomato Feta Soup", recipe:"Ingredients:\n 2tsps Olive Oil\n1/4 cup chopped Onion\n4 cloves Garlic\n1/2 tsps Salt\n1/8 tsp Black Pepper\n1/2 tsps Dried Oregano\n1 tsp Dried Basil\n10 Tomatoes- skinned, seeded, & chopped\n1 tsp Honey\n3 cups Water\n1/3 cup Heavy Cream\n2/3 cup Feta Cheese- crumbled\n\nInstructions:\nHeat olive oil over med in large pot.\nAdd onions and cook for 2 mins.\nAdd garlic, cook for 1 min. Stir continuously.\nAdd tomatoes, salt, pepper, herbs,\ntomato paste, and water.\nCook on med for 20 mins.\nBlend, then add cream and feta.\nCook for 1 min more.\nSalt to taste. Serve warm.\nEnjoy!")
caesar = Meal.create(name: "Caesar Salad", recipe:"Ingredients:\n1 Small Head of Romaine Lettuce\n2 tsps Dijon Mustard\n1 tsp Worcestershire Sauce\n2 tsps Fresh Lemon Juice\n1 1/2cup Red Wine Vinegar\n1/3 cup Extra Virgin Olive Oil\n1/3 cup Parmesan Cheese- shaved\n3 cloves Chopped Garlic\n\nInstructions:\nTo make salad dressing, whisk together\ngarlic, dijon, Worcestershire,\nlemon juice and red wine vinegar.\nSlowly drizzle in e.v.o.o. while whisking.\nSeason with salt and pepper to taste.\nRinse, dry, and chop romaine into bite-\nsized pieces. Sprinkle with parmesan\n&croutons.\nDrizzle dressing and toss to coat.\nEnjoy!")
pbandj = Meal.create(name: "Toasted Peanut Butter &* Jelly Sandwich", recipe:"Ingredients:\n2 tsps Butter\n2 slices White Bread\n1 tsp Your Fave Peanut Butter\n2 tsps Fave Fruit Jelly (Grape is superior!)\n\nInstructions:\nHeat skillet on med heat.\nSpread butter on unbuttered side of 1 slice.\nSpread jelly on unbuttered side of other slice.\nPlace buttered side down on pan.\nTop with other slice, so that pb & j are in middle.\nCook 4 mins per side/ until golden.\nEnjoy!")
spring_rolls = Meal.create(name: "Fresh Spring Rolls", recipe:"Ingredients:\n1/2tsp Extra Virgin Olive Oil\n1cup Shitake Mushrooms\n1 tsp Tamari\n4 oz cooked Soba Noodles\nPeanut Sauce\nVietnamese Rice Papers\n1 Avocado- sliced\nFresh basil & Mint Leaves\n1/4cup Microgreens\n\nInstructions:\nHeat oil in small skillet over med heat.\nAdd mushrooms and cook til browned & soft. ~5mins.\nToss noodles in peanut sauce until well coated.\nDip rice paper in warm water for 5 secs.\nPlace noodles, shrooms, avocado, herbs, and microgreens\nin center of rice paper. Wrap & tuck sides,\nthen bottom. Carefully roll until as tight as possible.\nServe with extra peanut sauce and tamari for dipping.\nEnjoy!")
pesto_pasta = Meal.create(name: "Broccoli Pesto Pasta", recipe:"Ingredients:\n1lb Cooked Pasta, pasta water reserved\n4cups Broccoli Florets\n2cps Basil Leaves\n2Garlic Cloves\n1/4cup Pine Nuts\n1 cup Extra Virgin Olive Oil\n1/2 tsp Salt\n1 cup Parmigiano-Reggiano- grated\n\nInstructions:\nIn large pot, bring water to boil.\nAdd broccoli. Cook for 2 mins.\nBlend together broccoli, basil, garlic, pine nuts,\nolive oil, salt, and Parmegiano-Regiano until smooth.\nSlowly pour in reserved pasta water until sauce forms.\nToss hot pasta with sauce until completely coated.\nTop with extra parmesan, pine nuts, & chili flakes.\nEnjoy!")
fish_chips = Meal.create(name: "Fish and Chips", recipe:"Ingredients:\n4 Large Potatoes\n1cup AP Flour\n1 tsp Baking Powder\n1 tsp Salt\n1 tsp Ground Black Pepper\n1cup Milk\n1 Egg\n1 qrt Veggie Oil for frying\n1 1/2lbs Cod Fillets\n\nInstructions:\nSoak potatoes cold water.\nMix flour, baking powder, salt, & pepper.\nStir in milk and egg til smooth. Let sit for 20mins.\nPreheat oil in large pot to 350 degrees.\nFry potatoes in oil until tender. Drain on paper towels.\nDredge fish in batter & Fry in hot oil until golden.\nDrain on paper towels.\nFry potatoes again for added crispiness. ~1 to 2 mins\nEnjoy!")
garlic_chicken = Meal.create(name: "Honey Garlic Chicken", recipe:"Ingredients:\n2tspss Olive Oil\n1 1/2 lbs Chicken Breasts- boneless, skinless, cubed\nSalt and Black Pepper\n3 tbsps Honey\n3 tbsps Soy Sauce\n3 cloves Garlic- minced\n1/4 tsps Red Pepper Flakes\n\nInstructions:\nHeat olive oil over med heat.\nLightly season cubed chicken with salt and pepper.\nBrown chicken in pan ~3 to 4 mins.\nWhisk honwy, soy sauce, garlic and red pepper flakes.\nAdd sauce to pan & toss. Cook another 4 to 5 mins.\nServe with sides of your choice.\nEnjoy!")
shrimp = Meal.create(name: "Shrimp Scampi", recipe:"Ingredients:\n2tbsps butter \n2tbsps Extra Virgin Olive Oil\n4 Garlic Cloves- minced\n1/2 cup Dry White Wine or Broth\nSalt and Pepper to taste\nCrushed Red Chili Flakes, also to taste\n1 3/4 lbs Large Shrimp\n1/3 cup Chopped Parsley\nFresh Squeezed Juice of Half a Lemon\nCooked Pasta or Crusty Bread\n\nInstructions:\nIn largeskillet, melt butter with olive oil.\nAdd wine or broth, salt, red pepper, and black pepper.\nLet reduce ~2mins.\nAdd Shrimp and saute until pink, ~2 to 4 mins.\nStir in parsley and lemon juice.\nServe over pasta or with crusty bread.\nEnjoy!")
pepper_pasta = Meal.create(name: "Roasted Red Pepper Pasta", recipe:"Ingredients:\n1 lb Rigatoni\n1/2 cup Stock (Chicken or Veg)\n1 cup Heavy Cream\n8 Fresh Basil Leaves\n12 oz Jar Roasted Red Peppers- liquid drained\nCrushed Red Chili Flakes\nSalt\n1/2 cup Grated Parmesan\n\nInstructions:\nBlend cream, stock, red peppersm vasil salt and flakes.\nCook pasta ~6 mins.\nCookroased redpepper sauce over med-low heat.\nAdd parm and pasta, cook for anot 2mins, stir constantly.\nServe with extra parm and fresh basil.\nEnjoy!")


# 40.times do 
#     Meal.create(
#              name: Faker::Food.dish,
#              ingredients:Faker::Food.dish.description
#          )
# end
 

 
