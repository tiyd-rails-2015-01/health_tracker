class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step_amount
      t.date :step_on

      t.timestamps null: false
    end
  end
end
