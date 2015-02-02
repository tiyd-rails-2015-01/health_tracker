class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_type
      t.integer :duration
      t.date :added_on

      t.timestamps null: false
    end
  end
end
