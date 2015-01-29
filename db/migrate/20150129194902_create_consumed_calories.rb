class CreateConsumedCalories < ActiveRecord::Migration
  def change
    create_table :consumed_calories do |t|
      t.integer :calorie_amount
      t.string :meal_type
      t.date :consumed_on

      t.timestamps null: false
    end
  end
end
