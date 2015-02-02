class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.date :timePerformed
      t.string :description
      t.integer :calories

      t.timestamps null: false
    end
  end
end
