class CreateCalorieConsumptions < ActiveRecord::Migration
  def change
    create_table :calorie_consumptions do |t|
      t.datetime :consumed_on
      t.string :food
      t.integer :calorie_intake

      t.timestamps null: false
    end
  end
end
