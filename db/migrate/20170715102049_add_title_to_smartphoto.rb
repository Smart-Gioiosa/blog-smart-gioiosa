class AddTitleToSmartphoto < ActiveRecord::Migration[5.0]
  def change
    add_column :smartphotos, :title, :string
  end
end
