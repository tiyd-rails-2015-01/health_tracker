class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.date :eaten_on
      t.string :description
      t.integer :calories

      t.timestamps null: false
    end
  end
end
