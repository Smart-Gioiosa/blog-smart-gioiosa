class AddFacebookEventToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :facebook_event, :string
  end
end
