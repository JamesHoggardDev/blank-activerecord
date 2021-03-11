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

            puts "#{mealplan_inst.day} "+- "#{mealplan_inst.time} "+- "#{ meal.name}"
            
        end 
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

    def edit_helper
        edit_plan
    end

    def edit_plan
        puts "Please enter a meal to be removed" 
        answer = STDIN.gets.chomp
        meal = Meal.find_by(name: answer)
        meal_id = meal.id
        @user.mealplans.meal_id.destroy
        puts "Let's continue"
        main_menu
    end

    def run
        ready
        ask_for_login_or_registration
        main_menu
    end

end

