class RemoveEventTimeToEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :event_time
  end
end
