class AddPubblishedToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :pubblished, :boolean, default: true
  end
end
