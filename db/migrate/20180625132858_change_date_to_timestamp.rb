class ChangeDateToTimestamp < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :start_time, :timestamp
    change_column :events, :end_time, :timestamp
  end
end
