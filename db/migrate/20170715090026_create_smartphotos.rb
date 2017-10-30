class CreateSmartphotos < ActiveRecord::Migration[5.1]
  def change
    create_table :smartphotos do |t|
      t.string :name
      t.string :surname
      t.date :birthday
      t.string :birthplace
      t.string :address
      t.string :email
      t.string :telephone
      t.string :category
      t.date :year
      t.string :place
      t.boolean :privacy
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
