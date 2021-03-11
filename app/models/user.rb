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
    
