class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.datetime :created_at
      t.float :weight

      t.timestamps null: false
    end
  end
end
