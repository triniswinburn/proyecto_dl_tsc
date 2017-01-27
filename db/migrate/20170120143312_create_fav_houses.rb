class CreateFavHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :fav_houses do |t|
      t.integer :house_id
      t.integer :user_id

      t.timestamps
    end
  end
end
