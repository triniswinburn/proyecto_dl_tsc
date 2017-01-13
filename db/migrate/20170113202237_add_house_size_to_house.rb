class AddHouseSizeToHouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :houses, :house_size, foreign_key: true
  end
end
