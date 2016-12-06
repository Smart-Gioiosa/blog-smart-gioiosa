class ChangeDateFormatInEvents < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :event_time, :datetime 
  end
end
