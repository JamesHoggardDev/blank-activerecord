class Interface

    attr_accessor :user 
    attr_reader :prompt 

    def initialize
        @prompt = TTY::Prompt.new
    end

    def ready 
        puts "Ready to plan out your week?"
    end

    def ask_for_login_or_registration
         puts "Login or register today?"
         # Asking for user input 
         answer = STDIN.gets.chomp
        if answer == "login"
            login_helper
         elsif answer == "register"
            register_helper
         else
            error_message
         end
    end

    

    def login_helper
        puts "Let's login"
        @user = User.login_helper_class_method
    end

    def register_helper
        puts "Let's proceed with registration"
        @user = User.register_method
    end

    def error_message
        puts "Not an option, please try again"
    end


    def main_menu
        @user.reload
        system 'clear'
        sleep 1
        puts "Welcome, #{@user.username}"
        prompt.select "What do you want to do today?" do |menu|
            menu.choice "View My Plan", -> {view_helper}
            menu.choice "Create Meal Plan", -> {create_helper}
            menu.choice "Edit Meal Plan", -> { edit_helper}
            menu.choice "Exit", -> {}
        end
    end

    def view_helper
      
        @user.mealplans.map do |mealplan_inst|
      
            meal = Meal.find(mealplan_inst.meal_id)

            puts "#{mealplan_inst.day}"+- "#{mealplan_inst.time}"+- "#{meal.name}"
            
        end
        #         Tuesdays - Breakfast - Crepes
        # puts  #{}+- #{}+- #{}+- #{} "
        
    end

    def create_helper

       
        list = Meal.all.map do |meal_inst|       
        meal_inst.name
        end   
        puts list
        
        puts "Please enter a meal" 
        answer = STDIN.gets.chomp
        meal = Meal.find_by(name: answer) 
        puts "What day would you like to have this meal?"
        day = STDIN.gets.chomp
        puts "What time of day would you like to have this meal at?"
        time = STDIN.gets.chomp
        Mealplan.create(user_id: @user.id, meal_id: meal.id, day: day, time: time)
        main_menu    
    end

    # def create_plan        ##MUST MAKE NEW INSTANCE OF mealplan
    #     #newplan = Mealplan.create(day: ,time: arr2.sample, user_id:, meal_id:)
    #      @food_names = []
    #     while @food_names.length < 15 do                                    # USE LAter # while @user.mealplans.length < 15 do
    #     #IT WANTS THE MEALPLAN OBJECT 
       
    #     # @user.mealplans = {} or [] << #self, you can transform it later

    #     # if @food_names.length == 3

    #     #   puts "Monday's plan is complete, what about Tuesday?"  
    #     # elsif @food_names.length == 6
    #     #   puts "Tuesday's plan is complete, what about Wednesday?"
    #     # elsif @food_names.length == 9
    #     #   puts "What about Thursday?"             
    #     # elsif @food_names.length == 12
    #     #   puts "Great, and Friday?" 
    #     # elsif @food_names.length == 15
    #     #   puts "Excellent, looks like you're set for the coming week." 
    #       ##turn array into hash
    #     #   main_menu
        
        
    #     prompt.select "Please select a meal" do |menu|
    #         menu.choice "Scrambled Eggs & Toast", -> { (food_names<< ("Scrambled Eggs & Toast"))}

    #         menu.choice "Oatmeal", -> {(food_names<< ("Oatmeal"))}
    #         menu.choice "Bagel & Cream Cheese with Toppings", -> {(food_names<< ("Bagel & Cream Cheese with Toppings"))} 
    #         menu.choice "Strawberry Banana Smoothie", -> {(food_names<< ("Strawberry Banana Smoothie"))}
    #         menu.choice "Crepes", -> {(food_names<< ("Crepes"))}
    #         menu.choice "Ham & Cheese Sandwich", -> {(food_names<< ("Ham & Cheese Sandwich"))}
    #         menu.choice "Tomato Feta Soup", -> {(food_names<< ("Tomato Feta Soup"))}
    #         menu.choice "Caesar Salad", -> {(food_names<< ("Caesar Salad"))}
    #         menu.choice "Toasted Peanut Butter &* Jelly Sandwich", -> {(food_names<< ("Toasted Peanut Butter &* Jelly Sandwich"))}
    #         menu.choice "Fresh Spring Rolls", -> {(food_names<< ("Fresh Spring Rolls"))}
    #         menu.choice "Broccoli Pesto Pasta", -> {(food_names<< ("Broccoli Pesto Pasta"))}
    #         menu.choice "Fish and Chips", -> {(food_names<< ("Fish and Chips"))}
    #         menu.choice "Honey Garlic Chicken", -> {(food_names<< ("Honey Garlic Chicken"))}
    #         menu.choice "Shrimp Scampi", -> {(food_names<< ("Shrimp Scampi"))}
    #         menu.choice "Roasted Red Pepper Pasta", -> {(food_names<< ("Roasted Red Pepper Pasta"))}
    #         end
    #     end
    #     puts "You're all set"

    #     meal_ids = []
        #  @food_names.map do |index|
        # #  meal_ids << index.find_by(meal_id:) 
        # # end
        # create_planstep2
        #create new Mealplan instances from returned meal_ids
    # end

    # def create_planstep2

    #     # meal_ids.each do |id|
    #     #     Mealplan.create(day: , time: , user_id:, meal_id:)
    #     # end

    # end

    def edit_helper
        @user.edit_plan
    end

    def edit_plan
        puts "Please enter a meal to be removed" 
        answer = STDIN.gets.chomp
        meal = Meal.find_by(name: answer)
        @user.mealplans.destroy(meal.id)
        puts "Let's continue"
        main_menu
    end

    def run
        ready
        ask_for_login_or_registration
        main_menu
    end

end


####USE after food_names FULL
# if @user.mealplans.count == 3

#     puts "Monday's plan is complete, what about Tuesday?"  # && (@user.mealplans.day = Monday) 
#   elsif @user.mealplans.count == 6
#     puts "Tuesday's plan is complete, what about Wednesday?"
#   elsif @user.mealplans.count == 9
#     puts "What about Thursday?"             
#   elsif @user.mealplans.count == 12
#     puts "Great, and Friday?" 
#   elsif @user.mealplans.count == 15
#     puts "Excellent, looks like you're set for the coming week." 
#     ##turn array into hash
#     main_menu
#   end





    # def mon_helper
    #     # puts "What's for breakfast?" 
    #     # #show user Meal.all
    #     # do
            
    #     # end
    #     # # User selected value is then set 
    #     # #as the value of the breakfast key in the monday hash(Part of a bigger "Weekdays" hash)
    #     # puts "What's for lunch?" do
            
    #     # end
    #     # #User selected value is then set 
    #     # #as the value of the lunch key in the monday hash(Part of a bigger "Weekdays" hash)

    # end

# ask Sean
    # do |menu|
    #     menu.choice "Scrambled Eggs & Toast", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Oatmeal", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Bagel & Cream Cheese with Toppings", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan} 
    #     menu.choice "Strawberry Banana Smoothie", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Crepes", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Ham & Cheese Sandwich", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Tomato Feta Soup",er P -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Caesar Salad", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Toasted Peanut Butter &* Jelly Sandwich", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Fresh Spring Rolls", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Broccoli Pesto Pasta", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Fish and Chips", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Honey Garlic Chicken", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Shrimp Scampi", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #     menu.choice "Roasted Red Peppasta", -> {user.mealplans.push("Scrambled Eggs & Toast"); create_plan}
    #  end


   





# def weekday_hash
#     {:weekdays => [[:monday => {:breakfast => "egg",
#                                        :lunch => "sandwich", 
#                                        :dinner => "soup"}],
#                                        binding.pry
#                           [:tuesday => {:breakfast => "egg",
#                                        :lunch => "sandwich", 
#                                        :dinner => "soup"}],
#                          [:wednesday => {:breakfast => "egg",
#                                        :lunch => "sandwich", 
#                                        :dinner => "soup"}],
#                           [:thursday => {:breakfast => "egg",
#                                        :lunch => "sandwich", 
#                                        :dinner => "soup"}],
#                           [:friday => {:breakfast => "egg",
#                                        :lunch => "sandwich", 
#                                        :dinner => "soup"}]]}
                                       
#         end
                   