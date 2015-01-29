class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.date :date
      t.float :weight

      t.timestamps null: false
    end
  end
end
