class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.datetime :performed_on
      t.string :exercise_type
      t.decimals :exercise_duration
      t.integer :calorie_burn

      t.timestamps null: false
    end
  end
end
