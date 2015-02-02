class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.integer :calories_consumed
      t.date :calories_on

      t.timestamps null: false
    end
  end
end
