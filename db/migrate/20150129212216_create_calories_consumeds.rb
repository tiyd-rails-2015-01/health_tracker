class CreateCaloriesConsumeds < ActiveRecord::Migration
  def change
    create_table :calories_consumeds do |t|
      t.date :date
      t.integer :calories

      t.timestamps null: false
    end
  end
end
