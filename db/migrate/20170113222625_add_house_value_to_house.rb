class AddHouseValueToHouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :houses, :house_value, foreign_key: true
  end
end
