class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.date :timePerformed
      t.integer :steps

      t.timestamps null: false
    end
  end
end
