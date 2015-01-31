class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.date :weighed_on
      t.integer :weight
    end
  end
end
