class AddFoodToCaloriesConsumeds < ActiveRecord::Migration
  def change
    add_column :calories_consumeds, :food, :string
  end
end
