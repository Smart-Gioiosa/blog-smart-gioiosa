class AddFacebookEventToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :facebook_event, :string
  end
end
