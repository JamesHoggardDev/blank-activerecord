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
        sleep 2
        puts "Welcome, #{@user.username}"
        prompt.select "What do you want to do today?" do |menu|
            menu.choice "View My Plan", -> {view_helper}
            menu.choice "Create Meal Plan", -> {create_helper}
            menu.choice "Edit Meal Plan", -> { edit_helper}
            menu.choice "Exit", -> {}
        end
    end

    def view_helper
        @user.view_plan
        main_menu
    end

    def create_helper
        #call method to iterate over all meals, then select ##
        Meal.all.map do |dish|
        return 
         name= 
        end
        TTY::Prompt.new.select("Please select a meal", Meal.name)
     
    end

    def edit_helper
        @user.edit_plan
    end

    def run
        ready
        ask_for_login_or_registration
        main_menu
    end

end
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
                   