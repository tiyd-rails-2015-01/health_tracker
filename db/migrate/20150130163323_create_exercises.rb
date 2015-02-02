class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.date :logged_on
      t.string :exercise_performed
      t.integer :time_in_minutes

      t.timestamps null: false
    end
  end
end
