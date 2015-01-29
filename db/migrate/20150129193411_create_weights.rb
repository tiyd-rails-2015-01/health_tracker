class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.float :weight_amount
      t.date :weight_on

      t.timestamps null: false
    end
  end
end
