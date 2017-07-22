class AddMetaTitleAndMetaDescriptionToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :meta_title, :string
    add_column :posts, :meta_description, :string
  end
end
