class Mealplan < ActiveRecord::Base
    belongs_to :user
    belongs_to :meal

    attr_accessor :day, :time



end