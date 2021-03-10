class Meal < ActiveRecord::Base
    has_many :mealplans
    has_many :users, through: :mealplans




    
end