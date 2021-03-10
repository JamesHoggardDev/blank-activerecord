class CreateMealplans < ActiveRecord::Migration[5.2]
  def change
    create_table :mealplans do |t|
      t.string :day
      t.string :time
      t.integer :user_id
      t.integer :meal_id
    end
  end
end
