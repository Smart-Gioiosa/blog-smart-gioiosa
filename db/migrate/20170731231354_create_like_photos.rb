class CreateLikePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :like_photos do |t|
      t.integer :user_id
      t.integer :smartphoto_id

      t.timestamps
    end
  end
end
