class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.float :exercise_amount
      t.string :exercise_type
      t.date :exercise_on
      t.integer :calories_consumed

      t.timestamps null: false
    end
  end
end
