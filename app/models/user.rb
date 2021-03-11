class User < ActiveRecord::Base
    has_many :mealplans
    has_many :meals, through: :mealplans

    def self.login_helper_class_method
        puts "What is your username?"
        username = STDIN.gets.chomp
        puts "What is your password?"
        pass = STDIN.gets.chomp
        user_inst = User.find_by(username: username, password: pass)

        until user_inst 
            sleep 1
            system 'clear'
            puts "Incorrect username or password"
            user_inst = User.login_helper_class_method
        end

        user_inst
    end

    # def view_plan
    #     @user.mealplans
    # end


    
    # def create_plan
    #     TTY::Prompt.new.select 

    #     Meal.all
    #     Mealplan.create("")
    #     @user.
        
    # end

    # def edit_plan
    #     TTY::Prompt.new.select "What day would you like to edit?" do |menu|
    #         # menu.choice "Monday", -> { mon_helper }
    #         # menu.choice "Tuesday", -> {tue_helper}
    #         # menu.choice "Wednesday", -> {wed_helper}
    #         # menu.choice "Thursday", -> {thur_helper}
    #         # menu.choice "Friday", -> {fri_helper}
    #     end
    # end

    def self.register_method
        puts "Please select a username"
        username = STDIN.gets.chomp
        puts "Please select a password"
        pass = STDIN.gets.chomp
        user_inst = User.create(username: username, password: pass)
        until user_inst 
            sleep 1
            system 'clear'
            puts "Incorrect username or password"
            user_inst = User.register_method
        end
        user_inst
    end

end
    

    # def self.weekday_hash
    #     {:weekdays => [{:Breakfast => "a",:Lunch => "b",:Dinner => "c"},
    #                {:Breakfast => "r", :Lunch => "g",:Dinner => "x"},
    #                {:Breakfast => "p", :Lunch => "l",:Dinner => "i"},
    #                {:Breakfast => "y", :Lunch => "m",:Dinner => "h"},
    #                {:Breakfast => "e", :Lunch => "q",:Dinner => "s"}]
    # }
    # end


    # def create_plan
    #     #starts @ monday, user can't skip around unless they exit and go to edit 

    # end


    # def display_plans
    #     #display "Weekdays" hash for specific user
    # end

# end