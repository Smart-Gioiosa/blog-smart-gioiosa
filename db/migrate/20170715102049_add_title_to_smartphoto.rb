class AddTitleToSmartphoto < ActiveRecord::Migration[5.1]
  def change
    add_column :smartphotos, :title, :string
  end
end
