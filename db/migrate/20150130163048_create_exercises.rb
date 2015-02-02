class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.date :entered_on
      t.string :exercise

      t.timestamps null: false
    end
  end
end
