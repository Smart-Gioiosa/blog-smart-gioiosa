class CreateTableEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.string :external_link
      t.string :event_time
      t.string :facebook_event
      t.string :event_image
    end
  end
end
