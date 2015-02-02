class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.date :date
      t.string :meal
      t.integer :calories_consumed

      t.timestamps null: false
    end
  end
end
