class ChangeDateTimeToDate < ActiveRecord::Migration
  def change
    add_column :weights, :recorded_on, :date
  end
end
