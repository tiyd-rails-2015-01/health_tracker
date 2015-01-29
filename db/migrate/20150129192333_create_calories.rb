class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.date :logged_on
      t.integer :calories_consumed

      t.timestamps null: false
    end
  end
end
