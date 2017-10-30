class AddSlugToSmartphoto < ActiveRecord::Migration[5.1]
  def change
    add_column :smartphotos, :slug, :string
    add_index :smartphotos, :slug, unique: true
  end
end
