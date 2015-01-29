class CreateStepCounts < ActiveRecord::Migration
  def change
    create_table :step_counts do |t|
      t.datetime :taken_on
      t.integer :step_count

      t.timestamps null: false
    end
  end
end
