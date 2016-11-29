class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :mts
      t.string :description
      t.integer :price
      t.integer :region
      t.string :photo
      t.boolean :fav
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
