class AddExternalLinkToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :external_link, :string
  end
end
