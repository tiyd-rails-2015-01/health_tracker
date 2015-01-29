class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :user_weight
      t.date :added_on

      t.timestamps null: false
    end
  end
end
