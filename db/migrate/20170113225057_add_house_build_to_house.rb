class AddHouseBuildToHouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :houses, :house_build, foreign_key: true
  end
end
