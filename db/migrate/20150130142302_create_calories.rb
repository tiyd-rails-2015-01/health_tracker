class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.date :entered_on
      t.integer :calorie

      t.timestamps null: false
    end
  end
end
