class ReAddEventTimeToEvents < ActiveRecord::Migration[5.0]
  def change
     add_column :events, :event_time, :timestampz
  end
end
