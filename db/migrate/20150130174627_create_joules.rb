class CreateJoules < ActiveRecord::Migration
  def change
    create_table :joules do |t|
      t.integer :consumed_joules
      t.date :added_on

      t.timestamps null: false
    end
  end
end
