class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.date :date
      t.string :type_of_exercise
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
