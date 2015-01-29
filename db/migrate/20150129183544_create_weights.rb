class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.date :entered_on
      t.decimal :weight, precision:4, scale:1

      t.timestamps null: false
    end
  end
end
