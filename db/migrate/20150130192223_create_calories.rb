class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.date :timePerformed
      t.integer :calories

      t.timestamps null: false
    end
  end
end
