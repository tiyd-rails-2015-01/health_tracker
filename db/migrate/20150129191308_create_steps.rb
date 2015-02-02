class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.date :entered_on
      t.integer :step

      t.timestamps null: false
    end
  end
end
