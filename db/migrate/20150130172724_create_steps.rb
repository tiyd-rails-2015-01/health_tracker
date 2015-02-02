class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.date :date
      t.integer :steps_taken

      t.timestamps null: false
    end
  end
end
