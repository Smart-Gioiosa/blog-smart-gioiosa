class AddEventTimeToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :event_time, :string
  end
end
