class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :daily_weight
      t.date :recorded_on

      t.timestamps null: false
    end
  end
end
