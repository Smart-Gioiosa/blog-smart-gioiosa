class AddImagePreviewToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :image_preview, :string
  end
end
