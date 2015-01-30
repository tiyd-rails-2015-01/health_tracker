class CreateExercisesPerformeds < ActiveRecord::Migration
  def change
    create_table :exercises_performeds do |t|
      t.date :date
      t.string :exercise_name
      t.integer :reps_performed
      t.float :distance
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
