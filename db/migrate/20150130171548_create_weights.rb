class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :user_weight
      t.date :added_on
    end
  end
end
