class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.date :logged_on
      t.integer :weight

      t.timestamps null: false
    end
  end
end
